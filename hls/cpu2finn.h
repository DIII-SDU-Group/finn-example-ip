#include "hls_stream.h"
#include "hls_streamofblocks.h"

#include <stdint.h>

#define INPUT_SIZE	8*256*3 // rows x cols x channels

void streamToFinn(uint8_t image_in[INPUT_SIZE], hls::stream<uint8_t> & stream_finn);

void load_CPU(uint8_t image_in[INPUT_SIZE], uint8_t image_buffer[INPUT_SIZE]);

void store_FINN(hls::stream<uint8_t> & stream_finn, uint8_t image_buffer[INPUT_SIZE]); //, int &wr_ptr);
