#include <stdio.h>
#include <unistd.h>
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
	int n, msqid;
	struct msg_buf mb;

	key = MQK;

	if((msqid = msgget(key, IPC_CREAT | IPC_EXCL | 0666)) < 0)
	{
		perror("msgget()");
		return -1;
	}

	while((n = msgrcv(msqid, &mb, sizeof(mb), 0, 0)) > 0)
	{
		switch(mb.mtype)
		{
			case 1:
				write(1, mb.mtext, n);
				break;
			case 2:
				if(msgctl(msqid, IPC_RMID, (struct msqid_ds *)0) < 0)
				{
					perror("msgctl()");
					return -1;
				}
				break;
		}
	}

	return 0;
}
