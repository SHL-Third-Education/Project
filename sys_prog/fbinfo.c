#include <stdio.h>
#include <fcntl.h>
#include <unistd.h>
#include <linux/fb.h>
#include <sys/ioctl.h>

#define FBDEVICE	"/dev/fb0"

int main(int argc, char **argv)
{
	int fbfd = 0;

	struct fb_var_screeninfo vinfo;
	struct fb_fix_screeninfo finfo;

	fbfd = open(FBDEVICE, O_RDWR);

	if(fbfd < 0)
	{
		perror("Error: Cannot Open Frame Buffer Device");
		return -1;
	}

	printf("FB Device Open Success\n");

	if(ioctl(fbfd, FBIOGET_FSCREENINFO, &finfo) < 0)
	{
		perror("Error: Read Fixed Info");
		return -1;
	}

	if(ioctl(fbfd, FBIOGET_VSCREENINFO, &vinfo) < 0)
	{
		perror("Error: Read Variable Info");
		return -1;
	}

	printf("Resolution: %d%d, %dbpp\n", vinfo.xres, vinfo.yres, vinfo.bits_per_pixel);
	printf("Virtual Resolution: %d x %d\n", vinfo.xres_virtual, vinfo.yres_virtual);
	printf("Length of Frame Buffer Memory: %d\n", finfo.smem_len);

	vinfo.xres = 800;
	vinfo.yres = 600;

	if(ioctl(fbfd, FBIOPUT_VSCREENINFO, &vinfo) < 0)
	{
		perror("fbdev ioctl(PUT)");
		return -1;
	}

	printf("Resolution : %d x %d, %dbpp\n", vinfo.xres, vinfo.yres, vinfo.bits_per_pixel);

	close(fbfd);

	return 0;
}
