#include "cpu2finn.h"

void streamToFinn(uint8_t image_in[INPUT_SIZE], hls::stream<uint8_t> & stream_finn)
{
#pragma HLS INTERFACE s_axilite port=return bundle=AXI_CPU
#pragma HLS INTERFACE s_axilite port=image_in bundle=AXI_CPU
#pragma HLS INTERFACE axis port=stream_finn

	uint8_t image_buffer[INPUT_SIZE];

	load_CPU(image_in, image_buffer);

	store_FINN(stream_finn, image_buffer); //, wr_ptr);
}

void load_CPU(uint8_t image_in[INPUT_SIZE], uint8_t image_buffer[INPUT_SIZE])
{
	image_in_loop: for (int i = 0; i < INPUT_SIZE; i++)
		image_buffer[i] = image_in[i];
}

void store_FINN(hls::stream<uint8_t> & stream_finn, uint8_t image_buffer[INPUT_SIZE]) //, int &wr_ptr)
{
	stream_FINN_loop: for (int i = 0; i < INPUT_SIZE; i++)
	{
		stream_finn.write(image_buffer[i]);
	}
}

