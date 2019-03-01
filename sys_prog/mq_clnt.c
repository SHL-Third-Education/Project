#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include <sys/types.h>
#include <sys/ipc.h>
#include <sys/msg.h>

#define MQK		1234

struct msg_buf
{
	long mtype;
	char mtext[252];
};

int main(int argc, char **argv)
{
	key_t key;
	int rc, msqid;
	char *msg_text = "hello world\n";
	struct msg_buf *mb;
	mb = (struct msg_buf *)malloc(sizeof(struct msg_buf) + strlen(msg_text));

	key = MQK;

	if((msqid = msgget(key, 0666)) < 0)
	{
		perror("msgget()");
		return -1;
	}

	mb->mtype = 1;
	strcpy(mb->mtext, msg_text);
	rc = msgsnd(msqid, mb, strlen(msg_text) + 1, 0);

	if(rc == -1)
	{
		perror("msgsnd()");
		return -1;
	}

	mb->mtype = 2;
	memset(mb->mtext, 0, sizeof(mb->mtext));

	if(msgsnd(msqid, mb, sizeof(mb->mtext), 0) < 0)
	{
		perror("msgsnd()");
		return -1;
	}

	return 0;
}
