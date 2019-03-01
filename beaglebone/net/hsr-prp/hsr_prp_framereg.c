/* Copyright 2011-2014 Autronica Fire and Security AS
 *
 * This program is free software; you can redistribute it and/or modify it
 * under the terms of the GNU General Public License as published by the Free
 * Software Foundation; either version 2 of the License, or (at your option)
 * any later version.
 *
 * Author(s):
 *	2011-2014 Arvid Brodin, arvid.brodin@alten.se
 *
 * The HSR spec says never to forward the same frame twice on the same
 * interface. A frame is identified by its source MAC address and its HSR
 * sequence number. This code keeps track of senders and their sequence numbers
 * to allow filtering of duplicate frames, and to detect HSR ring errors.
 */

#include <linux/if_ether.h>
#include <linux/etherdevice.h>
#include <linux/slab.h>
#include <linux/rculist.h>
#include "hsr_prp_main.h"
#include "hsr_prp_framereg.h"
#include "hsr_netlink.h"
#include "prp_netlink.h"

/*	TODO: use hash lists for mac addresses (linux/jhash.h)?    */

/* seq_nr_after(a, b) - return true if a is after (higher in sequence than) b,
 * false otherwise.
 */
static bool seq_nr_after(u16 a, u16 b)
{
	/* Remove inconsistency where
	 * seq_nr_after(a, b) == seq_nr_before(a, b)
	 */
	if ((int)b - a == 32768)
		return false;

	return (((s16)(b - a)) < 0);
}

#define seq_nr_before(a, b)		seq_nr_after((b), (a))
#define seq_nr_after_or_eq(a, b)	(!seq_nr_before((a), (b)))
#define seq_nr_before_or_eq(a, b)	(!seq_nr_after((a), (b)))

bool hsr_prp_addr_is_self(struct hsr_prp_priv *priv, unsigned char *addr)
{
	struct hsr_prp_node *node;

	node = list_first_or_null_rcu(&priv->self_node_db, struct hsr_prp_node,
				      mac_list);
	if (!node) {
		WARN_ONCE(1, "HSR: No self node\n");
		return false;
	}

	if (ether_addr_equal(addr, node->mac_address_a))
		return true;
	if (ether_addr_equal(addr, node->mac_address_b))
		return true;

	return false;
}

/* Search for mac entry. Caller must hold rcu read lock.
 */
static struct hsr_prp_node *
find_node_by_addr_a(struct list_head *node_db,
		    const unsigned char addr[ETH_ALEN])
{
	struct hsr_prp_node *node;

	list_for_each_entry_rcu(node, node_db, mac_list) {
		if (ether_addr_equal(node->mac_address_a, addr))
			return node;
	}

	return NULL;
}

/* Helper for device init; the self_node_db is used in hsr_rcv() to recognize
 * frames from self that's been looped over the HSR ring.
 */
int hsr_prp_create_self_node(struct list_head *self_node_db,
			     unsigned char addr_a[ETH_ALEN],
			     unsigned char addr_b[ETH_ALEN])
{
	struct hsr_prp_node *node, *oldnode;

	node = kmalloc(sizeof(*node), GFP_KERNEL);
	if (!node)
		return -ENOMEM;

	ether_addr_copy(node->mac_address_a, addr_a);
	ether_addr_copy(node->mac_address_b, addr_b);

	rcu_read_lock();
	oldnode = list_first_or_null_rcu(self_node_db,
					 struct hsr_prp_node, mac_list);
	if (oldnode) {
		list_replace_rcu(&oldnode->mac_list, &node->mac_list);
		rcu_read_unlock();
		synchronize_rcu();
		kfree(oldnode);
	} else {
		rcu_read_unlock();
		list_add_tail_rcu(&node->mac_list, self_node_db);
	}

	return 0;
}

/* Allocate an hsr_node and add it to node_db. 'addr' is the node's AddressA;
 * seq_out is used to initialize filtering of outgoing duplicate frames
 * originating from the newly added node.
 */
struct hsr_prp_node *hsr_prp_add_node(struct list_head *node_db,
				      unsigned char addr[],
				      u16 seq_out, bool san,
				      enum hsr_prp_port_type rx_port)
{
	struct hsr_prp_node *node;
	unsigned long now;
	int i;

	node = kzalloc(sizeof(*node), GFP_ATOMIC);
	if (!node)
		return NULL;

	ether_addr_copy(node->mac_address_a, addr);

	/* We are only interested in time diffs here, so use current jiffies
	 * as initialization. (0 could trigger an spurious ring error warning).
	 */
	now = jiffies;
	for (i = 0; i < HSR_PRP_PT_PORTS; i++)
		node->time_in[i] = now;
	for (i = 0; i < HSR_PRP_PT_PORTS; i++)
		node->seq_out[i] = seq_out;
	if (san) {
		/* Mark if the SAN node is over LAN_A or LAN_B */
		if (rx_port == HSR_PRP_PT_SLAVE_A)
			node->san_a = true;
		else if (rx_port == HSR_PRP_PT_SLAVE_B)
			node->san_b = true;
	}

	list_add_tail_rcu(&node->mac_list, node_db);

	return node;
}

/* Get the hsr_node from which 'skb' was sent.
 */
struct hsr_prp_node *hsr_prp_get_node(struct list_head *node_db,
				      struct sk_buff *skb,
				      bool is_sup,
				      enum hsr_prp_port_type rx_port)
{
	struct hsr_prp_node *node;
	struct ethhdr *ethhdr;
	struct prp_rct *rct;
	bool san = false;
	u16 seq_out;

	if (!skb_mac_header_was_set(skb))
		return NULL;

	ethhdr = (struct ethhdr *)skb_mac_header(skb);

	list_for_each_entry_rcu(node, node_db, mac_list) {
		if (ether_addr_equal(node->mac_address_a, ethhdr->h_source))
			return node;
		if (ether_addr_equal(node->mac_address_b, ethhdr->h_source))
			return node;
	}

	/* Everyone may create a node entry, connected node to a HSR device. */
	if (ethhdr->h_proto == htons(ETH_P_PRP) ||
	    ethhdr->h_proto == htons(ETH_P_HSR)) {
		/* Use the existing sequence_nr from the tag as starting point
		 * for filtering duplicate frames.
		 */
		seq_out = hsr_get_skb_sequence_nr(skb) - 1;
	} else {
		rct = skb_get_PRP_rct(skb);
		if (rct && prp_check_lsdu_size(skb, rct, is_sup)) {
			seq_out = prp_get_skb_sequence_nr(rct);
		} else {
			if (rx_port != HSR_PRP_PT_MASTER)
				san = true;
			seq_out = HSR_PRP_SEQNR_START;
		}
	}

	return hsr_prp_add_node(node_db, ethhdr->h_source, seq_out,
				san, rx_port);
}

/* Use the Supervision frame's info about an eventual mac_address_b for merging
 * nodes that has previously had their mac_address_b registered as a separate
 * node.
 */
void hsr_prp_handle_sup_frame(struct sk_buff *skb,
			      struct hsr_prp_node *node_curr,
			      struct hsr_prp_port *port_rcv)
{
	struct ethhdr *ethhdr;
	struct hsr_prp_node *node_real;
	struct hsr_prp_sup_payload *hsr_sp;
	struct list_head *node_db;
	int i;

	ethhdr = (struct ethhdr *)skb_mac_header(skb);

	/* Leave the ethernet header. */
	skb_pull(skb, sizeof(struct ethhdr));

	/* And leave the HSR tag. */
	if (ethhdr->h_proto == htons(ETH_P_HSR))
		skb_pull(skb, sizeof(struct hsr_tag));

	/* And leave the HSR sup tag. */
	skb_pull(skb, sizeof(struct hsr_prp_sup_tag));

	hsr_sp = (struct hsr_prp_sup_payload *)skb->data;

	/* Merge node_curr (registered on mac_address_b) into node_real */
	node_db = &port_rcv->priv->node_db;
	node_real = find_node_by_addr_a(node_db, hsr_sp->mac_address_a);
	if (!node_real)
		/* No frame received from AddrA of this node yet */
		node_real = hsr_prp_add_node(node_db, hsr_sp->mac_address_a,
					     HSR_PRP_SEQNR_START - 1, true,
					     port_rcv->type);
	if (!node_real)
		goto done; /* No mem */
	if (node_real == node_curr)
		/* Node has already been merged */
		goto done;

	ether_addr_copy(node_real->mac_address_b, ethhdr->h_source);
	for (i = 0; i < HSR_PRP_PT_PORTS; i++) {
		if (!node_curr->time_in_stale[i] &&
		    time_after(node_curr->time_in[i], node_real->time_in[i])) {
			node_real->time_in[i] = node_curr->time_in[i];
			node_real->time_in_stale[i] =
				node_curr->time_in_stale[i];
		}
		if (seq_nr_after(node_curr->seq_out[i], node_real->seq_out[i]))
			node_real->seq_out[i] = node_curr->seq_out[i];
	}
	node_real->addr_b_port = port_rcv->type;

	list_del_rcu(&node_curr->mac_list);
	kfree_rcu(node_curr, rcu_head);

done:
	skb_push(skb, sizeof(struct hsrv1_ethhdr_sp));
}

/* 'skb' is a frame meant for this host, that is to be passed to upper layers.
 *
 * If the frame was sent by a node's B interface, replace the source
 * address with that node's "official" address (mac_address_a) so that upper
 * layers recognize where it came from.
 */
void hsr_addr_subst_source(struct hsr_prp_node *node, struct sk_buff *skb)
{
	if (!skb_mac_header_was_set(skb)) {
		WARN_ONCE(1, "%s: Mac header not set\n", __func__);
		return;
	}

	memcpy(&eth_hdr(skb)->h_source, node->mac_address_a, ETH_ALEN);
}

/* 'skb' is a frame meant for another host.
 * 'port' is the outgoing interface
 *
 * Substitute the target (dest) MAC address if necessary, so the it matches the
 * recipient interface MAC address, regardless of whether that is the
 * recipient's A or B interface.
 * This is needed to keep the packets flowing through switches that learn on
 * which "side" the different interfaces are.
 */
void hsr_addr_subst_dest(struct hsr_prp_node *node_src, struct sk_buff *skb,
			 struct hsr_prp_port *port)
{
	struct hsr_prp_node *node_dst;

	if (!skb_mac_header_was_set(skb)) {
		WARN_ONCE(1, "%s: Mac header not set\n", __func__);
		return;
	}

	if (!is_unicast_ether_addr(eth_hdr(skb)->h_dest))
		return;

	node_dst = find_node_by_addr_a(&port->priv->node_db,
				       eth_hdr(skb)->h_dest);
	if (!node_dst) {
		WARN_ONCE(1, "%s: Unknown node\n", __func__);
		return;
	}
	if (port->type != node_dst->addr_b_port)
		return;

	if (is_valid_ether_addr(node_dst->mac_address_b))
		ether_addr_copy(eth_hdr(skb)->h_dest, node_dst->mac_address_b);
	else
		WARN_ONCE(1, "%s: mac address B not valid\n", __func__);
}


void hsr_register_frame_in(struct hsr_prp_node *node, struct hsr_prp_port *port,
			   u16 sequence_nr)
{
	/* Don't register incoming frames without a valid sequence number. This
	 * ensures entries of restarted nodes gets pruned so that they can
	 * re-register and resume communications.
	 */
	if (seq_nr_before(sequence_nr, node->seq_out[port->type]))
		return;

	node->time_in[port->type] = jiffies;
	node->time_in_stale[port->type] = false;
}

/* 'skb' is a HSR Ethernet frame (with a HSR tag inserted), with a valid
 * ethhdr->h_source address and skb->mac_header set.
 *
 * Return:
 *	 1 if frame can be shown to have been sent recently on this interface,
 *	 0 otherwise, or
 *	 negative error code on error
 */
int hsr_register_frame_out(struct hsr_prp_port *port, struct hsr_prp_node *node,
			   u16 sequence_nr)
{
	if (seq_nr_before_or_eq(sequence_nr, node->seq_out[port->type]))
		return 1;

	node->seq_out[port->type] = sequence_nr;
	return 0;
}


static struct hsr_prp_port *get_late_port(struct hsr_prp_priv *priv,
					  struct hsr_prp_node *node)
{
	if (node->time_in_stale[HSR_PRP_PT_SLAVE_A])
		return hsr_prp_get_port(priv, HSR_PRP_PT_SLAVE_A);
	if (node->time_in_stale[HSR_PRP_PT_SLAVE_B])
		return hsr_prp_get_port(priv, HSR_PRP_PT_SLAVE_B);

	if (time_after(node->time_in[HSR_PRP_PT_SLAVE_B],
		       node->time_in[HSR_PRP_PT_SLAVE_A] +
		       msecs_to_jiffies(HSR_PRP_MAX_SLAVE_DIFF)))
		return hsr_prp_get_port(priv, HSR_PRP_PT_SLAVE_A);
	if (time_after(node->time_in[HSR_PRP_PT_SLAVE_A],
		       node->time_in[HSR_PRP_PT_SLAVE_B] +
		       msecs_to_jiffies(HSR_PRP_MAX_SLAVE_DIFF)))
		return hsr_prp_get_port(priv, HSR_PRP_PT_SLAVE_B);

	return NULL;
}

/* Remove stale sequence_nr records. Called by timer every
 * HSR_PRP_LIFE_CHECK_INTERVAL (two seconds or so).
 */
void hsr_prp_prune_nodes(unsigned long data)
{
	struct hsr_prp_priv *priv;
	struct hsr_prp_node *node;
	struct hsr_prp_port *port;
	unsigned long timestamp;
	unsigned long time_a, time_b;

	priv = (struct hsr_prp_priv *)data;

	rcu_read_lock();
	list_for_each_entry_rcu(node, &priv->node_db, mac_list) {
		/* Shorthand */
		time_a = node->time_in[HSR_PRP_PT_SLAVE_A];
		time_b = node->time_in[HSR_PRP_PT_SLAVE_B];

		/* Check for timestamps old enough to risk wrap-around */
		if (time_after(jiffies, time_a + MAX_JIFFY_OFFSET / 2))
			node->time_in_stale[HSR_PRP_PT_SLAVE_A] = true;
		if (time_after(jiffies, time_b + MAX_JIFFY_OFFSET / 2))
			node->time_in_stale[HSR_PRP_PT_SLAVE_B] = true;

		/* Get age of newest frame from node.
		 * At least one time_in is OK here; nodes get pruned long
		 * before both time_ins can get stale
		 */
		timestamp = time_a;
		if (node->time_in_stale[HSR_PRP_PT_SLAVE_A] ||
		    (!node->time_in_stale[HSR_PRP_PT_SLAVE_B] &&
		    time_after(time_b, time_a)))
			timestamp = time_b;

		/* Warn of ring error only as long as we get frames at all */
		if (time_is_after_jiffies(timestamp +
			msecs_to_jiffies(1.5 * HSR_PRP_MAX_SLAVE_DIFF))) {
			rcu_read_lock();
			port = get_late_port(priv, node);
			if (port)
				hsr_nl_ringerror(priv,
						 node->mac_address_a, port);
			rcu_read_unlock();
		}

		/* Prune old entries */
		if (time_is_before_jiffies(timestamp +
		    msecs_to_jiffies(HSR_PRP_NODE_FORGET_TIME))) {
			if (priv->prot_ver <= HSR_V1)
				hsr_nl_nodedown(priv, node->mac_address_a);
			else
				prp_nl_nodedown(priv, node->mac_address_a);
			list_del_rcu(&node->mac_list);
			/* Note that we need to free this entry later: */
			kfree_rcu(node, rcu_head);
		}
	}
	rcu_read_unlock();
}

void *hsr_prp_get_next_node(struct hsr_prp_priv *priv, void *_pos,
			    unsigned char addr[ETH_ALEN])
{
	struct hsr_prp_node *node;

	if (!_pos) {
		node = list_first_or_null_rcu(&priv->node_db,
					      struct hsr_prp_node, mac_list);
		if (node)
			ether_addr_copy(addr, node->mac_address_a);
		return node;
	}

	node = _pos;
	list_for_each_entry_continue_rcu(node, &priv->node_db, mac_list) {
		ether_addr_copy(addr, node->mac_address_a);
		return node;
	}

	return NULL;
}

int hsr_prp_get_node_data(struct hsr_prp_priv *priv,
			  const unsigned char *addr,
			  unsigned char addr_b[ETH_ALEN],
			  unsigned int *addr_b_ifindex,
			  int *if1_age, u16 *if1_seq,
			  int *if2_age, u16 *if2_seq)
{
	struct hsr_prp_node *node;
	struct hsr_prp_port *port;
	unsigned long tdiff;

	rcu_read_lock();
	node = find_node_by_addr_a(&priv->node_db, addr);
	if (!node) {
		rcu_read_unlock();
		return -ENOENT;	/* No such entry */
	}

	ether_addr_copy(addr_b, node->mac_address_b);

	tdiff = jiffies - node->time_in[HSR_PRP_PT_SLAVE_A];
	if (node->time_in_stale[HSR_PRP_PT_SLAVE_A])
		*if1_age = INT_MAX;
#if HZ <= MSEC_PER_SEC
	else if (tdiff > msecs_to_jiffies(INT_MAX))
		*if1_age = INT_MAX;
#endif
	else
		*if1_age = jiffies_to_msecs(tdiff);

	tdiff = jiffies - node->time_in[HSR_PRP_PT_SLAVE_B];
	if (node->time_in_stale[HSR_PRP_PT_SLAVE_B])
		*if2_age = INT_MAX;
#if HZ <= MSEC_PER_SEC
	else if (tdiff > msecs_to_jiffies(INT_MAX))
		*if2_age = INT_MAX;
#endif
	else
		*if2_age = jiffies_to_msecs(tdiff);

	/* Present sequence numbers as if they were incoming on interface */
	*if1_seq = node->seq_out[HSR_PRP_PT_SLAVE_B];
	*if2_seq = node->seq_out[HSR_PRP_PT_SLAVE_A];

	if (node->addr_b_port != HSR_PRP_PT_NONE) {
		port = hsr_prp_get_port(priv, node->addr_b_port);
		*addr_b_ifindex = port->dev->ifindex;
	} else {
		*addr_b_ifindex = -1;
	}

	rcu_read_unlock();

	return 0;
}