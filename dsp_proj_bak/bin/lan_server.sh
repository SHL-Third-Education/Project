#!/bin/sh

echo "Configuring Routing Table for FPGA"

route add -net 192.168.7.0 netmask 255.255.255.0 dev eth1
route

ifconfig eth1 192.168.7.1
ifconfig eth1
