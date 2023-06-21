#ifndef __DUT_TYPE__H__
#define __DUT_TYPE__H__

#include "hls_x_complex.h"
#include <complex>
//typedef hls::x_complex<float> MATRIX_IN_T;
//typedef hls::x_complex<float> MATRIX_OUT_T;
typedef std::complex<double> MATRIX_IN_T;
typedef std::complex<double> MATRIX_OUT_T;
#endif
