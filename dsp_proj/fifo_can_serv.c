#include <stdio.h>
#include <fcntl.h>
#include <stdlib.h>
#include <unistd.h>
#include <string.h>
#include <termios.h>
#include <sys/poll.h>
#include <sys/types.h>
#include <arpa/inet.h>
#include <sys/socket.h>

#include <signal.h>
#include <sys/wait.h>
#include <sys/stat.h>

#include <pthread.h>

typedef struct sockaddr_in		si;
typedef struct sockaddr *		sp;

#define BUF_SIZE				32

int cam_proc_id;

int serv_sock;
si serv_addr;
si clnt_addr;
socklen_t addr_size;

char sock_buf[BUF_SIZE] = {0};

int fpga_sock;
si fpga_serv_addr;
si fpga_clnt_addr;
socklen_t fpga_addr_size;

char fpga_sock_buf[BUF_SIZE] = {0};

pthread_mutex_t mtx;

#if 0
char can_tx_buf[22] = {'x', '1',
					   32,  32, '1', 32, '2', 32, '3', 32, '7',
					   0,   0,  0,   0,   0,  0,  0,   0,  0,
					   '\r', '\n'};
#endif

char can_tx_buf[18] = {0x2, 0x0, 0x8, 0x40, 0x1, 0x0, 0x0, 0x0,
					   0x0, 0x0, 0x0, 0x0,  0x0, 0x0, 0x0, 0x0,
					   0x0, 0x3};


void err_handler(char *msg)
{
	fputs(msg, stderr);
	fputc('\n', stderr);
	exit(1);
}

void read_cproc(int sig)
{
	pid_t pid;
	int status;
	pid = waitpid(-1, &status, WNOHANG);
	printf("Removed proc id: %d\n", pid);
}

void printf_can_arr(char *buf, int num)
{
	int i;

	printf("can buf = ");

	for(i = 0; i < num; i++)
		printf("%3c", buf[i]);

	printf("\n");
}

void can_calc_crc(char *buf, int num)
{
	int i, sum = 0;

	for(i = 2; i < num - 2; i++)
		sum += buf[i];

	buf[16] = sum;
}

void set_bldc_vcp_tx_buf(char *buf, char *tx_buf, int protocol)
{
	int i;
	char temp[16] = {0};

	//memmove(temp, &buf[2], 4);

	tx_buf[8] = protocol;
	tx_buf[9] = buf[1];
	tx_buf[10] = buf[2];
	tx_buf[11] = buf[3];
	tx_buf[11] = buf[4];

	printf_can_arr(tx_buf, 18);
}

void set_servo_vcp_tx_buf(char *buf, char *tx_buf, int protocol)
{
	int i;
	char temp[16] = {0};

	//memmove(temp, &buf[2], 3);
	//if(atoi(temp))

	tx_buf[8] = protocol;
	tx_buf[9] = buf[1];
	tx_buf[10] = buf[2];
	tx_buf[11] = buf[3];
	tx_buf[12] = buf[4];

	printf_can_arr(tx_buf, 18);
}

void set_winker_vcp_tx_buf(char *buf, char *tx_buf, int protocol)
{
	int i;
	char temp[16] = {0};

	tx_buf[8] = protocol;
	tx_buf[9] = buf[0];

	printf_can_arr(tx_buf, 18);
}

void term_status(int status)
{
	if(WIFEXITED(status))
		printf("(exit)status: 0x%x\n", WEXITSTATUS(status));
	else if(WTERMSIG(status))
		printf("(signal)status: 0x%x, %s\n", status & 0x7f, WCOREDUMP(status) ? "core dumped" : "");
}

void check_status(int signo)
{
	int status;
	while(waitpid(-1, &status, WNOHANG) > 0)
		term_status(status);
}

void serial_config(int fd, struct termios *nt, int nt_size, struct pollfd *pe)
{
	memset(nt, 0, nt_size);
	nt->c_cflag = B921600 | CS8 | CLOCAL | CREAD;
	nt->c_oflag = 0;
	nt->c_lflag = 0;
	nt->c_cc[VTIME] = 0;
	nt->c_cc[VMIN] = 1;

	tcflush(fd, TCIFLUSH);
	tcsetattr(fd, TCSANOW, nt);
	fcntl(fd, F_SETFL, FNDELAY);

	pe->fd = fd;
	pe->events = POLLIN | POLLERR;
	pe->revents = 0;
}

void socket_config(int *sc, si *sa, int sa_size, char *port)
{
	serv_sock = socket(PF_INET, SOCK_STREAM, 0);

	if(serv_sock == -1)
		err_handler("socket() error");

	memset(&serv_addr, 0, sizeof(serv_addr));
	serv_addr.sin_family = AF_INET;
	serv_addr.sin_addr.s_addr = htonl(INADDR_ANY);
	serv_addr.sin_port = htons(atoi(port));

	if(bind(serv_sock, (sp)&serv_addr, sizeof(serv_addr)) == -1)
		err_handler("bind() error");

	if(listen(serv_sock, 1) == -1)
		err_handler("listen() error");

	addr_size = sizeof(clnt_addr);

	pthread_mutex_init(&mtx, NULL);
}

void fpga_sock_config(char *port)
{
	fpga_sock = socket(PF_INET, SOCK_STREAM, 0);

	if(fpga_sock == -1)
		err_handler("socket() error");

	memset(&fpga_serv_addr, 0, sizeof(fpga_serv_addr));
	fpga_serv_addr.sin_family = AF_INET;
	fpga_serv_addr.sin_addr.s_addr = htonl(INADDR_ANY);
	fpga_serv_addr.sin_port = htons(atoi(port));

	if(bind(fpga_sock, (sp)&fpga_serv_addr, sizeof(fpga_serv_addr)) == -1)
		err_handler("bind() error");

	if(listen(fpga_sock, 1) == -1)
		err_handler("listen() error");

	fpga_addr_size = sizeof(fpga_clnt_addr);
}

void *phone_rx(void *fd)
{
	int len;
	char msg[BUF_SIZE] = "Success!\n";

	len = strlen(msg);

	for(;;)
	{
		int clnt_sock = accept(serv_sock, (sp)&clnt_addr, &addr_size);

		if(clnt_sock == -1)
			continue;

		for(;;)
		{
			pthread_mutex_lock(&mtx);

			if((len = read(clnt_sock, (char *)&sock_buf, BUF_SIZE)) != 0)
				write(clnt_sock, msg, len);

			pthread_mutex_unlock(&mtx);

			usleep(1000);
		}
	}
}

void *phone_tx(void *fd)
{
}

void *vcp_can_rx(void *fd)
{
}

void *vcp_can_tx(void *fd)
{
	int usb2can = *((int *)fd);

	char temp[BUF_SIZE] = {0};
	char data[BUF_SIZE] = {0};

	write(usb2can, "T=1\r\n",5);

	for(;;)
	{
		pthread_mutex_lock(&mtx);

		memcpy(temp, sock_buf, 2);
		memcpy(data, &sock_buf[2], 5);

		printf("data = %c, %c, %c, %c, %c\n", data[0], data[1], data[2], data[3], data[4]);

		switch(atoi(temp))
		{
			case 0:
				break;
			case 1:
				break;
			case 7:
			    printf("(7) Winker\n");
			    set_winker_vcp_tx_buf(data, can_tx_buf, 7);
			    write(usb2can, can_tx_buf, 18);
			    memset(&can_tx_buf[8], 0x0, 8);
				break;
			case 12:
				set_servo_vcp_tx_buf(data, can_tx_buf, 12);
				write(usb2can, can_tx_buf, 18);
				printf("(12) Servo\n");
				//printf_can_arr(can_tx_buf, 22);
				memset(&can_tx_buf[8], 0x0, 8);
				break;
			case 13:
				set_bldc_vcp_tx_buf(data, can_tx_buf, 13);
				write(usb2can, can_tx_buf, 18);
				printf("(13) BLDC\n");
				//printf_can_arr(can_tx_buf, 22);
				memset(&can_tx_buf[8], 0x0, 8);
				break;
		}

		pthread_mutex_unlock(&mtx);

		usleep(1000);
	}
}

void *fpga_rx(void *fd)
{
	int len, rlen;
	char msg[BUF_SIZE] = "Success\n";
	char data[BUF_SIZE] = {0};

	len = strlen(msg);

	for(;;)
	{
		if((rlen = read(fpga_sock, data, sizeof(data))) != 0)
			write(fpga_sock, msg, len);

		usleep(1000);
	}
}

int main(int argc, char **argv)
{
	char *dev = "/dev/ttyUSB0";

	pid_t cam_pid = -1;
	pthread_t p_thread[5];

	/* thread 1 = Cell Phone Socket Recv
	   thread 2 = Cell phone Socket Send
	   thread 3 = USB2CAN Recv
	   thread 4 = USB2CAN Send
	   thread 5 = FPGA Lan Socket Recv
	   Camera Proc                       */

	int i, fd, cnt = 0;
	int thread_id, status;

	struct termios newtio;
	struct pollfd poll_events;
	int poll_state;

	int serv_sock, clnt_sock, len, state;
	char tx_buf[BUF_SIZE] = "Success\n";
	int tx_len = strlen(tx_buf);

	socklen_t addr_size;

	struct sigaction act;

	pid_t pid;

	if(argc != 3)
	{
		printf("use: %s <cell phone port> <fpga port>\n", argv[0]);
		exit(1);
	}

	if((fd = open(dev, O_RDWR | O_NOCTTY | O_NONBLOCK)) < 0)
	{
		printf("Open Error\n");
		exit(-1);
	}

	printf("fd = %d\n", fd);

	serial_config(fd, &newtio, sizeof(newtio), &poll_events);

	fpga_sock_config(argv[2]);
	socket_config(&serv_sock, &serv_addr, sizeof(serv_addr), argv[1]);

	thread_id = pthread_create(&p_thread[0], NULL, phone_rx, NULL);
	if(thread_id < 0)
	{
		perror("phone rx thread create error: ");
		exit(0);
	}

#if 0
	thread_id = pthread_create(&p_thread[1], NULL, phone_tx, (void *)phone_clnt_sock);
	if(thread_id < 0)
	{
		perror("phone tx thread create error: ");
		exit(0);
	}
#endif

#if 0
	thread_id = pthread_create(&p_thread[2], NULL, vcp_can_rx, (void *)fd);
	if(thread_id < 0)
	{
		perror("vcp can rx thread create error: ");
		exit(0);
	}
#endif

	thread_id = pthread_create(&p_thread[3], NULL, vcp_can_tx, (void *)&fd);
	if(thread_id < 0)
	{
		perror("vcp can tx thread create error: ");
		exit(0);
	}

	thread_id = pthread_create(&p_thread[4], NULL, fpga_rx, NULL);
	if(thread_id < 0)
	{
		perror("FPGA rx thread create error: ");
		exit(0);
	}

	pthread_join(p_thread[0], (void **)&status);
	pthread_join(p_thread[3], (void **)&status);
	pthread_join(p_thread[4], (void **)&status);

	return 0;
}
