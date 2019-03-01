#define ALSA_PCM_NEW_HW_PARAMS_API
#include <alsa/asoundlib.h>
#include <stdio.h>

#include "wav.h"

wav_header wavh;

int main(int argc, char **argv)
{
	int fd = -1;
	int rc, buf_size, dir;
	int channels, format;
	long loops, count;
	unsigned int val;
	char *buf;

	snd_pcm_t *handle;
	snd_pcm_hw_params_t *params;
	snd_pcm_uframes_t frames;

	if(argc <= 1)
	{
		printf("Usage: %s filename\n", argv[0]);
		return -1;
	}
	else
		printf("Playing File: %s\n", argv[1]);

	if((fd = open(argv[1], O_RDONLY)) == -1)
	{
		printf("Can't open Specified Wav File: %s\n", argv[1]);
		return -1;
	}

	if((count = read(fd, &wavh, sizeof(wav_header))) < 1)
	{
		printf("Can't read wav data\n");
		return -1;
	}

	rc = snd_pcm_open(&handle, "default", SND_PCM_STREAM_PLAYBACK, 0);

	if(rc < 0)
	{
		fprintf(stderr, "Unable to Open PCM Device: %s\n", snd_strerror(rc));
		return -1;
	}

	snd_pcm_hw_params_alloca(&params);
	snd_pcm_hw_params_any(handle, params);

	channels = wavh.n_channels;

	printf("Wav Channel Mode : %s\n", (channels) ? "Stereo" : "Mono");

	snd_pcm_hw_params_set_channels(handle, params, channels);

	printf("Wav Bytes : %d\n", wavh.n_block_align);
	printf("wavh.n_block_align = %d\n", wavh.n_block_align);

	switch(wavh.n_block_align)
	{
		case 1:
			format = SND_PCM_FORMAT_U8;
			break;
		case 2:
			format = (channels == 1) ? SND_PCM_FORMAT_S16_LE : SND_PCM_FORMAT_U8;
			break;
		case 4:
			format = SND_PCM_FORMAT_S16_LE;
			break;
		default:
			printf("Unknown Byte Rate for Sound\n");
			break;
	}

	snd_pcm_hw_params_set_access(handle, params, SND_PCM_ACCESS_RW_INTERLEAVED);
	snd_pcm_hw_params_set_format(handle, params, format);

	printf("Wav Sampling Rate : 0x%lu\n", wavh.sample_rate);

	val = wavh.sample_rate;

	snd_pcm_hw_params_set_rate_near(handle, params, &val, &dir);

	frames = 32;
	snd_pcm_hw_params_set_period_size_near(handle, params, &frames, &dir);

	rc = snd_pcm_hw_params(handle, params);

	if(rc < 0)
	{
		fprintf(stderr, "Unable to set hw parameters: %s\n", snd_strerror(rc));
		return -1;
	}

	snd_pcm_hw_params_get_period_size(params, &frames, &dir);

	buf_size = frames * channels * ((format == SND_PCM_FORMAT_S16_LE) ? 2 : 1);
	buf = (char *)malloc(buf_size);

	snd_pcm_hw_params_get_period_time(params, &val, &dir);

	do
	{
		if((count = read(fd, buf, buf_size)) <= 0)
			break;

		rc = snd_pcm_writei(handle, buf, frames);

		if(rc == -EPIPE)
		{
			fprintf(stderr, "Underrun Occurred\n");
			snd_pcm_prepare(handle);
		}
		else if(rc < 0)
			fprintf(stderr, "error from write: %s\n", snd_strerror(rc));
		else if(rc != (int)frames)
			fprintf(stderr, "short write, write %d frames\n", rc);
	}
	while(count == buf_size);

end:
	close(fd);

	snd_pcm_drain(handle);
	snd_pcm_close(handle);

	free(buf);

	return 0;
}
