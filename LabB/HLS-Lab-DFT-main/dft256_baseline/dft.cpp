#include<math.h>
#include "dft.h"
#include"coefficients256.h"

void read(DTYPE real_in[SIZE], DTYPE imag_in[SIZE], DTYPE real_out[SIZE], DTYPE imag_out[SIZE])
{
	int i;

READ_LOOP:
	for (i = 0; i < SIZE; i++) {
		real_out[i] = real_in[i];
		imag_out[i] = imag_in[i];
	}

	return;
}

void dft_compute(DTYPE real_sample[SIZE], DTYPE imag_sample[SIZE], DTYPE Real_freq[SIZE], DTYPE Imag_freq[SIZE])
{
	int k = 0;
	int n = 0;

DFT_OUTER_LOOP:
	for (k = 0; k < SIZE; k++) {
		Real_freq[k] = 0;
		Imag_freq[k] = 0;
DFT_INNER_LOOP:
		for (n = 0; n < SIZE; n++) {
			Real_freq[k] += real_sample[n] * cos(2*M_PI*n*k/SIZE) + imag_sample[n] * sin(2*M_PI*n*k/SIZE);
			Imag_freq[k] += imag_sample[n] * cos(2*M_PI*n*k/SIZE) - real_sample[n] * sin(2*M_PI*n*k/SIZE);
		}
	}

	return;
}

void write(DTYPE real_in[SIZE], DTYPE imag_in[SIZE], DTYPE real_out[SIZE], DTYPE imag_out[SIZE])
{
	int i;

WRITE_LOOP:
	for (i = 0; i < SIZE; i++) {
		real_out[i] = real_in[i];
		imag_out[i] = imag_in[i];
	}

	return;
}

void dft(DTYPE real_sample[SIZE], DTYPE imag_sample[SIZE])
{
	//Write your code here
	DTYPE real_in[SIZE], imag_in[SIZE];
	DTYPE real_out[SIZE], imag_out[SIZE];

	read(real_sample, imag_sample, real_in, imag_in);

	dft_compute(real_in, imag_in, real_out, imag_out);

	write(real_out, imag_out, real_sample, imag_sample);

	return;
}
