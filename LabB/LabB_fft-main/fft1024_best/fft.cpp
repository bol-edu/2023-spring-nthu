/*
This is traditional 2-radix DIT FFT algorithm implementation.
INPUT:
	In_R, In_I[]: Real and Imag parts of Complex signal

OUTPUT:
	Out_R, Out_I[]: Real and Imag parts of Complex signal
*/

#include "fft.h"
#include <string.h>
#define fac 2
void bit_reverse(DTYPE X_R[SIZE], DTYPE X_I[SIZE], DTYPE OUT_R[SIZE], DTYPE OUT_I[SIZE]);
void fft_stage_first(DTYPE X_R[SIZE], DTYPE X_I[SIZE], DTYPE OUT_R[SIZE], DTYPE OUT_I[SIZE]);
template <int Stage>
void fft_stages(DTYPE X_R[SIZE], DTYPE X_I[SIZE], int STAGES, DTYPE OUT_R[SIZE], DTYPE OUT_I[SIZE]);
void fft_stage_last(DTYPE X_R[SIZE], DTYPE X_I[SIZE], DTYPE OUT_R[SIZE], DTYPE OUT_I[SIZE]);

void fft(DTYPE X_R[SIZE], DTYPE X_I[SIZE], DTYPE OUT_R[SIZE], DTYPE OUT_I[SIZE])
{

#pragma HLS INTERFACE s_axilite port = return
#pragma HLS INTERFACE m_axi bundle = input_0 port = X_R depth = 1500 offset = slave
#pragma HLS INTERFACE m_axi bundle = input_1 port = X_I depth = 1500 offset = slave
#pragma HLS INTERFACE m_axi bundle = output_0 port = OUT_R depth = 1500 offset = slave
#pragma HLS INTERFACE m_axi bundle = output_1 port = OUT_I depth = 1500 offset = slave

	// Call fft
	DTYPE in_R[SIZE], in_I[SIZE];
	DTYPE Stage0_R[SIZE], Stage0_I[SIZE];
	DTYPE Stage1_R[SIZE], Stage1_I[SIZE];
	DTYPE Stage2_R[SIZE], Stage2_I[SIZE];
	DTYPE Stage3_R[SIZE], Stage3_I[SIZE];
	DTYPE Stage4_R[SIZE], Stage4_I[SIZE];
	DTYPE Stage5_R[SIZE], Stage5_I[SIZE];
	DTYPE Stage6_R[SIZE], Stage6_I[SIZE];
	DTYPE Stage7_R[SIZE], Stage7_I[SIZE];
	DTYPE Stage8_R[SIZE], Stage8_I[SIZE];
	DTYPE Stage9_R[SIZE], Stage9_I[SIZE];
	DTYPE buf_o_R[SIZE], buf_o_I[SIZE];
	const int Factor = fac;

#pragma HLS ARRAY_PARTITION variable = in_R type = cyclic factor = Factor
#pragma HLS ARRAY_PARTITION variable = in_I type = cyclic factor = Factor
#pragma HLS ARRAY_PARTITION variable = Stage0_R type = cyclic factor = Factor
#pragma HLS ARRAY_PARTITION variable = Stage1_R type = cyclic factor = Factor
#pragma HLS ARRAY_PARTITION variable = Stage1_I type = cyclic factor = Factor
#pragma HLS ARRAY_PARTITION variable = Stage2_I type = cyclic factor = Factor
#pragma HLS ARRAY_PARTITION variable = Stage3_R type = cyclic factor = Factor
#pragma HLS ARRAY_PARTITION variable = Stage3_I type = cyclic factor = Factor
#pragma HLS ARRAY_PARTITION variable = Stage4_I type = cyclic factor = Factor
#pragma HLS ARRAY_PARTITION variable = Stage5_R type = cyclic factor = Factor
#pragma HLS ARRAY_PARTITION variable = Stage5_I type = cyclic factor = Factor
#pragma HLS ARRAY_PARTITION variable = Stage6_R type = cyclic factor = Factor
#pragma HLS ARRAY_PARTITION variable = Stage6_I type = cyclic factor = Factor
#pragma HLS ARRAY_PARTITION variable = Stage7_R type = cyclic factor = Factor
#pragma HLS ARRAY_PARTITION variable = Stage7_I type = cyclic factor = Factor
#pragma HLS ARRAY_PARTITION variable = Stage8_R type = cyclic factor = Factor
#pragma HLS ARRAY_PARTITION variable = Stage8_I type = cyclic factor = Factor
#pragma HLS ARRAY_PARTITION variable = Stage9_R type = cyclic factor = Factor
#pragma HLS ARRAY_PARTITION variable = Stage9_I type = cyclic factor = Factor
#pragma HLS ARRAY_PARTITION variable = buf_o_R type = cyclic factor = Factor
#pragma HLS ARRAY_PARTITION variable = buf_o_I type = cyclic factor = Factor

	memcpy(in_R, X_R, sizeof(DTYPE) * SIZE);
	memcpy(in_I, X_I, sizeof(DTYPE) * SIZE);

	bit_reverse(in_R, in_I, Stage0_R, Stage0_I);
	fft_stage_first(Stage0_R, Stage0_I, Stage1_R, Stage1_I);
	fft_stages<2>(Stage1_R, Stage1_I, 2, Stage2_R, Stage2_I);
	fft_stages<3>(Stage2_R, Stage2_I, 3, Stage3_R, Stage3_I);
	fft_stages<4>(Stage3_R, Stage3_I, 4, Stage4_R, Stage4_I);
	fft_stages<5>(Stage4_R, Stage4_I, 5, Stage5_R, Stage5_I);
	fft_stages<6>(Stage5_R, Stage5_I, 6, Stage6_R, Stage6_I);
	fft_stages<7>(Stage6_R, Stage6_I, 7, Stage7_R, Stage7_I);
	fft_stages<8>(Stage7_R, Stage7_I, 8, Stage8_R, Stage8_I);
	fft_stages<9>(Stage8_R, Stage8_I, 9, Stage9_R, Stage9_I);
	fft_stage_last(Stage9_R, Stage9_I, buf_o_R, buf_o_I);

	memcpy(OUT_R, buf_o_R, sizeof(DTYPE) * SIZE);
	memcpy(OUT_I, buf_o_I, sizeof(DTYPE) * SIZE);
}

void bit_reverse(DTYPE X_R[SIZE], DTYPE X_I[SIZE], DTYPE OUT_R[SIZE], DTYPE OUT_I[SIZE])
{
	int i, i_1;
	INTTYPE idx, idx_1;

Reverse_Operation:
	for (i = 0; i < SIZE; i += 2)
	{
#pragma HLS PIPELINE
		i_1 = i + 1;
		idx = LUT_MAP[i];
		idx_1 = LUT_MAP[i_1];

		OUT_R[i] = X_R[idx];
		OUT_I[i] = X_I[idx];
		OUT_R[i_1] = X_R[idx_1];
		OUT_I[i_1] = X_I[idx_1];
	}
}

/*=======================BEGIN: FFT=========================*/
// stage 1
void fft_stage_first(DTYPE X_R[SIZE], DTYPE X_I[SIZE], DTYPE OUT_R[SIZE], DTYPE OUT_I[SIZE])
{

	// Insert your code here
	unsigned short i_lower;
	DTYPE c_twiddle, s_twiddle;
	DTYPE in_R, in_I, in_R_lower, in_I_lower, temp_R, temp_I;

First_stage_loop:
	for (unsigned short i = 0; i < SIZE; i += 2)
	{
#pragma HLS PIPELINE

		i_lower = i + 1;

		c_twiddle = W_real[0];
		s_twiddle = W_imag[0];

		in_R = X_R[i];
		in_I = X_I[i];
		in_R_lower = X_R[i_lower];
		in_I_lower = X_I[i_lower];

		temp_R = in_R_lower * c_twiddle - in_I_lower * s_twiddle;
		temp_I = in_I_lower * c_twiddle + in_R_lower * s_twiddle;

		OUT_R[i_lower] = in_R - temp_R;
		OUT_I[i_lower] = in_I - temp_I;
		OUT_R[i] = in_R + temp_R;
		OUT_I[i] = in_I + temp_I;
	}
}

// stages
template <int Stage>
void fft_stages(DTYPE X_R[SIZE], DTYPE X_I[SIZE], int stage, DTYPE OUT_R[SIZE], DTYPE OUT_I[SIZE])
{
#pragma HLS DEPENDENCE dependent = false type = inter variable = OUT_R
#pragma HLS DEPENDENCE dependent = false type = inter variable = OUT_I
	// Insert your code here

	if (stage == 2)
	{
		unsigned short j, j_lower, k, idx;
		DTYPE c_twiddle, s_twiddle;
		DTYPE in_R, in_I, in_R_lower, in_I_lower, temp_R, temp_I;

	Stage_loop_2:
		for (unsigned short i = 0; i < SIZE2; i++)
		{
#pragma HLS PIPELINE

			k = i & 1;
			idx = k << 8;
			j = i + (i & ~1);
			j_lower = j + 2;

			c_twiddle = W_real[idx];
			s_twiddle = W_imag[idx];

			in_R = X_R[j];
			in_I = X_I[j];
			in_R_lower = X_R[j_lower];
			in_I_lower = X_I[j_lower];

			temp_R = in_R_lower * c_twiddle - in_I_lower * s_twiddle;
			temp_I = in_I_lower * c_twiddle + in_R_lower * s_twiddle;

			OUT_R[j_lower] = in_R - temp_R;
			OUT_I[j_lower] = in_I - temp_I;
			OUT_R[j] = in_R + temp_R;
			OUT_I[j] = in_I + temp_I;
		}
	}
	else if (stage == 3)
	{
		unsigned short j, j_lower, k, idx;
		DTYPE c_twiddle, s_twiddle;
		DTYPE in_R, in_I, in_R_lower, in_I_lower, temp_R, temp_I;

	Stage_loop_3:
		for (unsigned short i = 0; i < SIZE2; i++)
		{
#pragma HLS PIPELINE

			k = i & 3;
			idx = k << 7;
			j = i + (i & ~3);
			j_lower = j + 4;

			c_twiddle = W_real[idx];
			s_twiddle = W_imag[idx];

			in_R = X_R[j];
			in_I = X_I[j];
			in_R_lower = X_R[j_lower];
			in_I_lower = X_I[j_lower];

			temp_R = in_R_lower * c_twiddle - in_I_lower * s_twiddle;
			temp_I = in_I_lower * c_twiddle + in_R_lower * s_twiddle;

			OUT_R[j_lower] = in_R - temp_R;
			OUT_I[j_lower] = in_I - temp_I;
			OUT_R[j] = in_R + temp_R;
			OUT_I[j] = in_I + temp_I;
		}
	}
	else if (stage == 4)
	{
		unsigned short j, j_lower, k, idx;
		DTYPE c_twiddle, s_twiddle;
		DTYPE in_R, in_I, in_R_lower, in_I_lower, temp_R, temp_I;

	Stage_loop_4:
		for (unsigned short i = 0; i < SIZE2; i++)
		{
#pragma HLS PIPELINE

			k = i & 7;
			idx = k << 6;
			j = i + (i & ~7);
			j_lower = j + 8;

			c_twiddle = W_real[idx];
			s_twiddle = W_imag[idx];

			in_R = X_R[j];
			in_I = X_I[j];
			in_R_lower = X_R[j_lower];
			in_I_lower = X_I[j_lower];

			temp_R = in_R_lower * c_twiddle - in_I_lower * s_twiddle;
			temp_I = in_I_lower * c_twiddle + in_R_lower * s_twiddle;

			OUT_R[j_lower] = in_R - temp_R;
			OUT_I[j_lower] = in_I - temp_I;
			OUT_R[j] = in_R + temp_R;
			OUT_I[j] = in_I + temp_I;
		}
	}
	else if (stage == 5)
	{
		unsigned short j, j_lower, k, idx;
		DTYPE c_twiddle, s_twiddle;
		DTYPE in_R, in_I, in_R_lower, in_I_lower, temp_R, temp_I;

	Stage_loop_5:
		for (unsigned short i = 0; i < SIZE2; i++)
		{
#pragma HLS PIPELINE

			k = i & 15;
			idx = k << 5;
			j = i + (i & ~15);
			j_lower = j + 16;

			c_twiddle = W_real[idx];
			s_twiddle = W_imag[idx];

			in_R = X_R[j];
			in_I = X_I[j];
			in_R_lower = X_R[j_lower];
			in_I_lower = X_I[j_lower];

			temp_R = in_R_lower * c_twiddle - in_I_lower * s_twiddle;
			temp_I = in_I_lower * c_twiddle + in_R_lower * s_twiddle;

			OUT_R[j_lower] = in_R - temp_R;
			OUT_I[j_lower] = in_I - temp_I;
			OUT_R[j] = in_R + temp_R;
			OUT_I[j] = in_I + temp_I;
		}
	}
	else if (stage == 6)
	{
		unsigned short j, j_lower, k, idx;
		DTYPE c_twiddle, s_twiddle;
		DTYPE in_R, in_I, in_R_lower, in_I_lower, temp_R, temp_I;

	Stage_loop_6:
		for (unsigned short i = 0; i < SIZE2; i++)
		{
#pragma HLS PIPELINE

			k = i & 31;
			idx = k << 4;
			j = i + (i & ~31);
			j_lower = j + 32;

			c_twiddle = W_real[idx];
			s_twiddle = W_imag[idx];

			in_R = X_R[j];
			in_I = X_I[j];
			in_R_lower = X_R[j_lower];
			in_I_lower = X_I[j_lower];

			temp_R = in_R_lower * c_twiddle - in_I_lower * s_twiddle;
			temp_I = in_I_lower * c_twiddle + in_R_lower * s_twiddle;

			OUT_R[j_lower] = in_R - temp_R;
			OUT_I[j_lower] = in_I - temp_I;
			OUT_R[j] = in_R + temp_R;
			OUT_I[j] = in_I + temp_I;
		}
	}
	else if (stage == 7)
	{
		unsigned short j, j_lower, k, idx;
		DTYPE c_twiddle, s_twiddle;
		DTYPE in_R, in_I, in_R_lower, in_I_lower, temp_R, temp_I;

	Stage_loop_7:
		for (unsigned short i = 0; i < SIZE2; i++)
		{
#pragma HLS PIPELINE

			k = i & 63;
			idx = k << 3;
			j = i + (i & ~63);
			j_lower = j + 64;

			c_twiddle = W_real[idx];
			s_twiddle = W_imag[idx];

			in_R = X_R[j];
			in_I = X_I[j];
			in_R_lower = X_R[j_lower];
			in_I_lower = X_I[j_lower];

			temp_R = in_R_lower * c_twiddle - in_I_lower * s_twiddle;
			temp_I = in_I_lower * c_twiddle + in_R_lower * s_twiddle;

			OUT_R[j_lower] = in_R - temp_R;
			OUT_I[j_lower] = in_I - temp_I;
			OUT_R[j] = in_R + temp_R;
			OUT_I[j] = in_I + temp_I;
		}
	}
	else if (stage == 8)
	{
		unsigned short j, j_lower, k, idx;
		DTYPE c_twiddle, s_twiddle;
		DTYPE in_R, in_I, in_R_lower, in_I_lower, temp_R, temp_I;

	Stage_loop_8:
		for (unsigned short i = 0; i < SIZE2; i++)
		{
#pragma HLS PIPELINE

			k = i & 127;
			idx = k << 2;
			j = i + (i & ~127);
			j_lower = j + 128;

			c_twiddle = W_real[idx];
			s_twiddle = W_imag[idx];

			in_R = X_R[j];
			in_I = X_I[j];
			in_R_lower = X_R[j_lower];
			in_I_lower = X_I[j_lower];

			temp_R = in_R_lower * c_twiddle - in_I_lower * s_twiddle;
			temp_I = in_I_lower * c_twiddle + in_R_lower * s_twiddle;

			OUT_R[j_lower] = in_R - temp_R;
			OUT_I[j_lower] = in_I - temp_I;
			OUT_R[j] = in_R + temp_R;
			OUT_I[j] = in_I + temp_I;
		}
	}
	else if (stage == 9)
	{
		unsigned short j, j_lower, k, idx;
		DTYPE c_twiddle, s_twiddle;
		DTYPE in_R, in_I, in_R_lower, in_I_lower, temp_R, temp_I;

	Stage_loop_9:
		for (unsigned short i = 0; i < SIZE2; i++)
		{
#pragma HLS PIPELINE

			k = i & 255;
			idx = k << 1;
			j = i + (i & ~255);
			j_lower = j + 256;

			c_twiddle = W_real[idx];
			s_twiddle = W_imag[idx];

			in_R = X_R[j];
			in_I = X_I[j];
			in_R_lower = X_R[j_lower];
			in_I_lower = X_I[j_lower];

			temp_R = in_R_lower * c_twiddle - in_I_lower * s_twiddle;
			temp_I = in_I_lower * c_twiddle + in_R_lower * s_twiddle;

			OUT_R[j_lower] = in_R - temp_R;
			OUT_I[j_lower] = in_I - temp_I;
			OUT_R[j] = in_R + temp_R;
			OUT_I[j] = in_I + temp_I;
		}
	}
}

// last stage
void fft_stage_last(DTYPE X_R[SIZE], DTYPE X_I[SIZE], DTYPE OUT_R[SIZE], DTYPE OUT_I[SIZE])
{

	int i, j, j_lower;
	DTYPE c_twiddle, s_twiddle;
	DTYPE in_R, in_I, in_R_lower, in_I_lower, temp_R, temp_I;

last_stage_loop:
	for (i = 0; i < SIZE2; i++)
	{
		j = i + ((i >> 9) << 9);
		j_lower = j + (1 << 9);

		c_twiddle = W_real[i];
		s_twiddle = W_imag[i];

		in_R = X_R[j];
		in_I = X_I[j];
		in_R_lower = X_R[j_lower];
		in_I_lower = X_I[j_lower];

		temp_R = in_R_lower * c_twiddle - in_I_lower * s_twiddle;
		temp_I = in_I_lower * c_twiddle + in_R_lower * s_twiddle;

		OUT_R[j_lower] = in_R - temp_R;
		OUT_I[j_lower] = in_I - temp_I;
		OUT_R[j] = in_R + temp_R;
		OUT_I[j] = in_I + temp_I;
	}
}
/*=======================END: FFT=========================*/
