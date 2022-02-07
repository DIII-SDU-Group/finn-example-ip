#include "hls_stream.h"
#include "stdint.h"

void fetch_finn(hls::stream<uint32_t> &finn_stream, uint8_t res_out[4]){

#pragma HLS INTERFACE s_axilite port=return bundle=AXI_CPU
#pragma HLS INTERFACE axis port=finn_stream
#pragma HLS INTERFACE s_axilite port=res_out bundle=AXI_CPU

	uint32_t result = finn_stream.read();
	res_out[0] = (uint8_t)((result >> 3*8)&0x000000FF) * 2;
	res_out[1] = (uint8_t)((result >> 2*8)&0x000000FF) * 2;
	res_out[2] = (uint8_t)((result >> 1*8)&0x000000FF) * 2;
	res_out[3] = (uint8_t)((result)&0x000000FF) * 2;

}
