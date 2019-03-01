#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <unistd.h>
#include <sys/types.h>
#include <sys/poll.h>
#include <termios.h>                   // B115200, CS8 등 상수 정의
#include <fcntl.h>                     // O_RDWR , O_NOCTTY 등의 상수 정의

void serial_recv(char* dev);

char *dev0 = "/dev/ttyUSB0";

int main( void)
{
    serial_recv(dev0);

    return 0;
}

void serial_recv(char* dev)
{
	int    fd;
	int    ndx;
	int    cnt;
	char tmp[1024] = {0};
	char rx_buf[32] = {0};
	char   buf[1024] = {0};
	char   tx_buf[1024] = {0};
	int tx_cnt;
	struct termios    newtio;
	struct pollfd     poll_events;      // 체크할 event 정보를 갖는 struct
	int    poll_state;
	int i;
	// 시리얼 포트를 open
	//fd = open( dev, O_RDWR | O_NOCTTY | O_NONBLOCK );        // 디바이스를 open 한다.
	fd = open( dev, O_RDWR | O_NOCTTY );

	if ( 0 > fd)
	{
		printf("%s open error\n", dev);
		exit(-1);
	}

	// 시리얼 포트 통신 환경 설정
	memset( &newtio, 0, sizeof(newtio) );
	newtio.c_cflag       = B9600 | CS8 | CLOCAL | CREAD;
	newtio.c_oflag       = 0;
	newtio.c_lflag       = 0;
	newtio.c_cc[VTIME]   = 0;
	newtio.c_cc[VMIN]    = 1;

	tcflush  (fd, TCIFLUSH );
	tcsetattr(fd, TCSANOW, &newtio );
	fcntl(fd, F_SETFL, FNDELAY);

#if 1
	// poll 사용을 위한 준비

	poll_events.fd        = fd;
	poll_events.events    = POLLIN | POLLERR;          // 수신된 자료가 있는지, 에러가 있는지
	poll_events.revents   = 0;

	printf("start\n");
	write(fd, "T=1\r\n", 5);

	printf("msg = \n");
	while(read(fd, tmp, 1) > 0)
		printf("%s", tmp);

	printf("start recieving!\n");

	for(;;)
	{

		poll_state = poll(            // poll()을 호출하여 event 발생 여부 확인
				(struct pollfd*)&poll_events, // event 등록 변수
				1,  // 체크할 pollfd 개수
				1000   // time out 시간
				);

		if ( 0 < poll_state)                      // 발생한 event 가 있음
		{
			if ( poll_events.revents & POLLIN)       // event 가 자료 수신
			{
				usleep(10000);

				cnt = read(fd, rx_buf, 1);

				//printf( "data received - %d (%s)\n", cnt, dev);
#if 0
				for(int i = 0;i < cnt; i++)
					printf("%c ", rx_buf[i]);
				printf("\n");
#endif
				//for(i = 0; i < cnt; i++)
				printf("%s", rx_buf);
			}

			if ( poll_events.revents & POLLERR)      // event 가 에러?
			{
				printf( "통신 라인에 에러가 발생, 프로그램 종료");
				break;
			}
		}
	}
#endif

#if 0
	buf[8] = 1;
	buf[9] = 0;
	buf[10] = 0;
	buf[11] = 0;
	//send data
	while(1)
	{
		buf[9] += 1;
		can_calc_crc(buf, 18);
		//buf[16] += 1;
		if(buf[9] == 10)
		{
			buf[9] = 0;
			//buf[16] = 0x49;
			can_calc_crc(buf, 18);
		}
		usleep(1000000);

		write( fd, buf, cnt);
		//printf("buf = %s\n",buf);

	}
#endif

#if 0
	for(;;)
	{
		int temp;
		temp = read(fd, rx_buf, 21);
		printf("read num = %d\n", temp);
		printf("rx_buf = %s\n", rx_buf);
		printf("atoi(buf[19]) = %d\n", buf[19]);
		printf("atoi(buf[20]) = %d\n", buf[20]);
		sleep(1);
	}
#endif

#if 0
	for(;;)
	{
		int temp;
		read(fd, rx_buf, 21);
		printf("rx_buf = %s\n", rx_buf);
		temp = write(fd, buf, 21);
		printf("write num = %d\n", temp);
		printf("tx_buf = %s\n", buf);
		sleep(1);
	}
#endif

	close( fd);

}
