#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/stat.h>
#include <sys/mman.h>
#include <mad.h>
#include <pulse/simple.h>
#include <pulse/error.h>

pa_simple *device = NULL;
int ret = 1;
int error;
struct mad_stream mad_stream;
struct mad_frame mad_frame;
struct mad_synth mad_synth;

void output(struct mad_header const *header, struct mad_pcm *pcm);

int main(int argc, char **argv)
{
    if(argc != 2)
	{
        fprintf(stderr, "Usage: %s [filename.mp3]", argv[0]);
        return 255;
    }

	// 44100 PulseAudio 16-bit Stereo 설정
    static const pa_sample_spec ss = { .format = PA_SAMPLE_S16LE, .rate = 44100, .channels = 2 };
    if(!(device = pa_simple_new(NULL, "MP3 player", PA_STREAM_PLAYBACK, NULL, "playback", &ss, NULL, NULL, &error)))
	{
        printf("pa_simple_new() failed\n");
        return 255;
    }

	// MAD 라이브러리 초기화
    mad_stream_init(&mad_stream);
    mad_synth_init(&mad_synth);
    mad_frame_init(&mad_frame);

    char *filename = argv[1];

    FILE *fp = fopen(filename, "r");
    int fd = fileno(fp);

    struct stat metadata;

    if(fstat(fd, &metadata) >= 0)
        printf("File size %d bytes\n", (int)metadata.st_size);
    else
	{
        printf("Failed to stat %s\n", filename);
        fclose(fp);
        return 254;
    }

	// 커널에게 온갖 빡센 작업은 다 시켜주자(버퍼링과 관련한 DMA 작업)
    char *input_stream = mmap(0, metadata.st_size, PROT_READ, MAP_SHARED, fd, 0);

    // mad_stream 구조체로 포인터와 길이를 복사
    mad_stream_buffer(&mad_stream, input_stream, metadata.st_size);

    // Frame 을 디코딩 하고 루프 동기화
    while(1)
	{

        // Stream 으로부터 Frame 디코딩
        if(mad_frame_decode(&mad_frame, &mad_stream))
		{
            if(MAD_RECOVERABLE(mad_stream.error))
                continue;
            else if(mad_stream.error == MAD_ERROR_BUFLEN)
                continue;
            else
                break;
        }

        // PCM 데이터 동기화
        mad_synth_frame(&mad_synth, &mad_frame);
        output(&mad_frame.header, &mad_synth.pcm);
    }

    fclose(fp);

    mad_synth_finish(&mad_synth);
    mad_frame_finish(&mad_frame);
    mad_stream_finish(&mad_stream);

    // Close PulseAudio output
    if (device)
        pa_simple_free(device);

    return EXIT_SUCCESS;
}

int scale(mad_fixed_t sample)
{
     sample += (1L << (MAD_F_FRACBITS - 16));

     if (sample >= MAD_F_ONE)
         sample = MAD_F_ONE - 1;
     else if (sample < -MAD_F_ONE)
         sample = -MAD_F_ONE;

     return sample >> (MAD_F_FRACBITS + 1 - 16);
}

void output(struct mad_header const *header, struct mad_pcm *pcm)
{
    register int nsamples = pcm->length;
    mad_fixed_t const *left_ch = pcm->samples[0], *right_ch = pcm->samples[1];
    static char stream[1152*4];

    if(pcm->channels == 2)
	{
        while(nsamples--)
		{
            signed int sample;
            sample = scale(*left_ch++);
            stream[(pcm->length-nsamples)*4 ] = ((sample >> 0) & 0xff);
            stream[(pcm->length-nsamples)*4 +1] = ((sample >> 8) & 0xff);
            sample = scale(*right_ch++);
            stream[(pcm->length-nsamples)*4+2 ] = ((sample >> 0) & 0xff);
            stream[(pcm->length-nsamples)*4 +3] = ((sample >> 8) & 0xff);
        }

        if(pa_simple_write(device, stream, (size_t)1152*4, &error) < 0)
		{
            fprintf(stderr, "pa_simple_write() failed: %s\n", pa_strerror(error));
            return;
        }
    }
	else
        printf("Mono not supported!");
}
