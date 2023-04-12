#include<hls_stream.h>
typedef float DTYPE;
#define SIZE 256 		/* SIZE OF DFT */
void dft(hls::stream<DTYPE> &real_sample, hls::stream<DTYPE> &imag_sample, hls::stream<DTYPE> &Real_freq, hls::stream<DTYPE> &Imag_freq);

