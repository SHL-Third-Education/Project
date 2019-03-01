#include <stdio.h>
#include <fcntl.h>
#include <limits.h>
#include <math.h>
#include <sys/ioctl.h>
#include <alsa/asoundlib.h>

#define	BITS		2
#define FRAGMENT	8
#define DURATION	5.0
#define MODE		1
#define	FREQ		44100
#define BUFSIZE		(int)(BITS * FREQ * DURATION * MODE)

int setup_dsp(snd_pcm_t *dev, int buf_size, int format, int sample_rate, int channels)
{
	snd_pcm_hw_params_t *hw_params;
	snd_pcm_uframes_t frames;
	int fragments = FRAGMENT;
	int bits = (format == SND_PCM_FORMAT_S16_LE) ? 2 : 1;

	if(snd_pcm_hw_params_malloc(&hw_params) < 0)
	{
		perror("Can't Alloc Parameter");
		return -1;
	}

	if(snd_pcm_hw_params_any(dev, hw_params) < 0)
	{
		perror("Can't Init Parameter");
		return -1;
	}

	if(snd_pcm_hw_params_set_access(dev, hw_params, SND_PCM_ACCESS_RW_INTERLEAVED) < 0)
	{
		perror("Can't set Access Type");
		return -1;
	}

	if(snd_pcm_hw_params_set_format(dev, hw_params, format) < 0)
	{
		perror("Can't set Sample Format");
		return -1;
	}

	if(snd_pcm_hw_params_set_rate_near(dev, hw_params, &sample_rate, 0) < 0)
	{
		perror("Can't set Sample Rate");
		return -1;
	}

	if(snd_pcm_hw_params_set_channels(dev, hw_params, channels) < 0)
	{
		perror("Can't set Channel Count");
		return -1;
	}

	if(snd_pcm_hw_params_set_periods_near(dev, hw_params, &fragments, 0) < 0)
	{
		perror("Can't set Fragments");
		return -1;
	}

	frames = (buf_size * fragments) / (channels * bits);

	if(snd_pcm_hw_params_set_buffer_size_near(dev, hw_params, &frames) < 0)
	{
		perror("Can't set Buf Size");
		return -1;
	}

	buf_size = frames * channels * bits / fragments;

	if(snd_pcm_hw_params(dev, hw_params) < 0)
	{
		perror("Can't set HW params");
		return -1;
	}

	return 0;
}

int main(int argc, char **argv)
{
	snd_pcm_t *playback_handle;
	double total = DURATION, t;
	int freq = 440;
	int i, frames, count = 1;
	char *snd_dev_out = "plughw:0,0";
	short buf[BUFSIZE];

	if(snd_pcm_open(&playback_handle, snd_dev_out, SND_PCM_STREAM_PLAYBACK, 0) < 0)
	{
		perror("Can't Open Output Audio Dev");
		return -1;
	}

	if(setup_dsp(playback_handle, BUFSIZE, SND_PCM_FORMAT_S16_LE, FREQ, MODE) < 0)
	{
		perror("Can't set Output Aduio Device");
		return -1;
	}

	printf("Make Sine Wave\n");

	for(i = 0; i < BUFSIZE; i++)
	{
		t = (total / BUFSIZE) * i;
		buf[i] = SHRT_MAX * sin((int)(2.0 * M_PI * freq * t));
	}

	frames = BUFSIZE / (MODE * BITS);

	while(count--)
	{
		snd_pcm_prepare(playback_handle);
		snd_pcm_writei(playback_handle, buf, frames);
	}

	snd_pcm_drop(playback_handle);
	snd_pcm_close(playback_handle);

	return 0;
	return 0;
}
