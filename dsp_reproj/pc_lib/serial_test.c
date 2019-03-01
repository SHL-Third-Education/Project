#include "serial.h"

#include <stdio.h>
#include <string.h>

extern char *dev0;

int main(void)
{
	char buf[32] = "test message\r\n";
	int len = strlen(buf);
	int fd, i;

	fd = serial_config(dev0);

	for(i = 0; i < 50; i++)
	{
		send_data(fd, buf, len, 50);
		recv_data(fd);
	}

	close_dev(fd);

	return 0;
}
