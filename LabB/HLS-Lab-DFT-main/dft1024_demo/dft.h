//#include <ap_int.h>
#include <ap_axi_sdata.h>
#include <hls_stream.h>
//					Sample structure for streaming. You can use this for the demo.
struct DTYPE
{
	float data;
	ap_uint<1> last;
};

typedef hls::stream<DTYPE> stream_t;

#define SIZE 1024 		/* SIZE OF DFT */

void dft(stream_t &real_sample, stream_t &imag_sample, stream_t &Real_freq, stream_t &Imag_freq);
