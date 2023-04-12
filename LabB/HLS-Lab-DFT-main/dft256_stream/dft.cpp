#include<math.h>
#include<hls_stream.h>
#include "dft.h"
#include"coefficients256.h"

void dft(hls::stream<DTYPE> &real_sample, hls::stream<DTYPE> &imag_sample, hls::stream<DTYPE> &Real_freq, hls::stream<DTYPE> &Imag_freq)
{
	//Write your code here
	int k = 0;
	int n = 0;
	DTYPE Real[SIZE];
	DTYPE Imag[SIZE];
	DTYPE real[SIZE];
	DTYPE imag[SIZE];

DFT_INIT_LOOP:
	for (k = 0; k < SIZE; k++) {
		Real[k] = 0;
		Imag[k] = 0;
		real[k] = real_sample.read();
		imag[k] = imag_sample.read();
	}

DFT_OUTER_LOOP:
	for (n = 0; n < SIZE; n++) {
DFT_INNER_LOOP:
		for (k = 0; k < SIZE; k++) {
			Real[k] += real[n] * cos_coefficients_table[n*k%SIZE] - imag[n] * sin_coefficients_table[n*k%SIZE];
			Imag[k] += imag[n] * cos_coefficients_table[n*k%SIZE] + real[n] * sin_coefficients_table[n*k%SIZE];
		}
	}

DFT_OUTPUT_LOOP:
	for (k = 0; k < SIZE; k++) {
		Real_freq << Real[k];
		Imag_freq << Imag[k];
	}

	return;
}
