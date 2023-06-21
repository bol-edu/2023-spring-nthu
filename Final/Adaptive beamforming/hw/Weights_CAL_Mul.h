
#include "hls_stream.h"
#include "complex.h"
#include "ap_int.h"
#include "hls_vector.h"



#define M 10 //number of antennas
#define S 100 //samples

using namespace std;
using namespace hls;


void inhom(hls::stream<complex<double>> &weights, hls::stream<complex<double>> &U, hls::stream<complex<double>> &Vs, hls::stream<complex<double>> &A_instream, hls::stream<complex<double>> &A_outstream);

void Weights_Mul(complex<double> output_result[S], hls::stream<complex<double>> &A_instream, hls::stream<complex<double>> &weights_instream);
