#ifndef __WAV_H__
#define __WAV_H__

typedef struct wav_header
{
	unsigned char riff_id[4];
	unsigned long riff_len;
	unsigned char wave_id[4];
	unsigned char fmt_id[4];
	unsigned long fmt_len;
	unsigned short fmt_tag;
	unsigned short n_channels;
	unsigned long sample_rate;
	unsigned long avg_byte_per_sec;
	unsigned short n_block_align;
	unsigned short bits_per_sample;
	unsigned char data_id[4];
	unsigned long data_len;
} wav_header;

#endif
