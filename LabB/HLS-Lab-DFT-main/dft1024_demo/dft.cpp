#include<math.h>
#include "dft.h"
#include"coefficients1024.h"

void dft(stream_t &real_sample, stream_t &imag_sample, stream_t &Real_freq, stream_t &Imag_freq)	//Use pointers while doing the demo for streaming//
{
	//Write your code here
	int k = 0;
	int n = 0;
	float Real[SIZE];
	float Imag[SIZE];
	float real[SIZE];
	float imag[SIZE];
	DTYPE tmp, tmp2;

DFT_INIT_LOOP:
	for (k = 0; k < SIZE; k++) {
		Real[k] = 0;
		Imag[k] = 0;
		tmp = real_sample.read();
		tmp2 = imag_sample.read();
		real[k] = tmp.data;
		imag[k] = tmp2.data;
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
		tmp.data = Real[k];
		tmp.last = (k==SIZE-1) ? 1 : 0;
		tmp2.data = Imag[k];
		tmp2.last = (k==SIZE-1) ? 1 : 0;
		Real_freq.write(tmp);
		Imag_freq.write(tmp2);
	}


	return;
}
