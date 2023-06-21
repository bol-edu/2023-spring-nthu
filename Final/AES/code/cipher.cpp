#include "aes.h"
#include <hls_vector.h>
#include <hls_stream.h>
#include "assert.h"
#define MEMORY_DWIDTH 512
#define SIZEOF_WORD 4
#define NUM_WORDS 16

#define DATA_SIZE 1024

const int c_size = DATA_SIZE;
static void load_key(unsigned char roundkey_in[176],unsigned char roundkey_out[176]){

    #pragma HLS ARRAY_PARTITION variable=roundkey_in cyclic factor=16
    #pragma HLS ARRAY_PARTITION variable=roundkey_out cyclic factor=16
mem_rd_key:
    for(int i=0;i<176;i++){
        #pragma HLS UNROLL factor=16
        #pragma HLS LOOP_TRIPCOUNT min = 11 max = 11
        roundkey_out[i] = roundkey_in[i];
    }
}

static void load_input(hls::vector<uint8_t, NUM_WORDS>* in,
                       hls::stream<hls::vector<uint8_t, NUM_WORDS> >& inStream) {
mem_rd:
    for (int i = 0; i < DATA_SIZE; i++) {
        #pragma HLS LOOP_TRIPCOUNT min = c_size max = c_size
        inStream << in[i];
    }
}

static void store_result(hls::vector<uint8_t, NUM_WORDS>* out,
                         hls::stream<hls::vector<uint8_t, NUM_WORDS> >& out_stream) {
mem_wr:
    for (int i = 0; i < DATA_SIZE; i++) {
        #pragma HLS LOOP_TRIPCOUNT min = c_size max = c_size
        out[i] = out_stream.read();
    }
}


static void Cipher(unsigned char roundkey[176], hls::stream<hls::vector<uint8_t, NUM_WORDS> >& plain_stream,hls::stream<hls::vector<uint8_t, NUM_WORDS> >& cipher_stream)
{

	for(int r=0;r<DATA_SIZE;r++)
	{
	#pragma HLS LOOP_TRIPCOUNT min = c_size max = c_size
	//#pragma HLS INTERFACE s_axilite port=roundkey bundle=control
	//#pragma HLS INTERFACE s_axilite port=plain    bundle=control
	//#pragma HLS INTERFACE s_axilite port=cipher    bundle=control
	//#pragma HLS INTERFACE s_axilite port=return   bundle=control

	//#pragma HLS INTERFACE m_axi port=roundkey offset=slave bundle=gmem
	//#pragma HLS INTERFACE m_axi port=plain    offset=slave bundle=gmem
	//#pragma HLS INTERFACE m_axi port=cipher    offset=slave bundle=gmem
	hls::vector<uint8_t, NUM_WORDS> plain;
	hls::vector<uint8_t, NUM_WORDS> cipher;
	plain = plain_stream.read();

	#pragma HLS ARRAY_PARTITION variable=roundkey dim=0 complete
	//#pragma HLS ARRAY_PARTITION variable=plain dim=0 complete
	//#pragma HLS ARRAY_PARTITION variable=cipher dim=0 complete


	int round;
	int i,j;
	unsigned char state[4][4];
	#pragma HLS ARRAY_PARTITION variable=state dim=0 complete
	unsigned char state_sftr[4][4];
	#pragma HLS ARRAY_PARTITION variable=state_sftr dim=0 complete
	unsigned char state_mixc[4][4];
	#pragma HLS ARRAY_PARTITION variable=state_mixc dim=0 complete
	/**
	*  [b0 b1 ... b15] -> [b0 b4 b8  b12
	*                      b1 b5 b9  b13
	*                      b2 b6 b10 b14
	*                      b3 b7 b11 b15]
	*/
//#pragma HLS PIPELINE
	for ( i = 0;i < 4;i++){
		#pragma HLS UNROLL
		for ( j = 0;j < 4;j++){
			#pragma HLS UNROLL
			state[j][i] = plain[i * 4 + j];

		}

	}
	// round 0 : add round key
	for ( i = 0;i < 4;i++){
		#pragma HLS UNROLL
		for ( j = 0;j < 4;j++){
			#pragma HLS UNROLL
			state[j][i] ^= roundkey[(i * Nb + j)];

		}

	}

	// Round 1 ~ Nr-1
	for (round = 1;round < Nr;round++){
		//#pragma HLS UNROLL
		for ( i = 0;i < 4;i++){
			#pragma HLS UNROLL
			for ( j = 0;j < 4;j++){
				#pragma HLS UNROLL
				state[j][i] = sbox(state[j][i]);
			}
		}

		ShiftRows(state,state_sftr);
		MixColumns(state_sftr,state_mixc);

		for ( i = 0;i < 4;i++){
			#pragma HLS UNROLL
			for ( j = 0;j < 4;j++){
				#pragma HLS UNROLL
				state[j][i] =state_mixc[j][i] ^ roundkey[(i * Nb + j) + (round * Nb * 4)];
			}
		}

	}

	// Round Nr, no MixColumns()
	for ( i = 0;i < 4;i++){
		#pragma HLS UNROLL
		for ( j = 0;j < 4;j++){
			#pragma HLS UNROLL
			state[j][i] = sbox(state[j][i]);
		}
	}

	ShiftRows(state,state_sftr);
	for ( i = 0;i < 4;i++){
		#pragma HLS UNROLL
		for ( j = 0;j < 4;j++){
			#pragma HLS UNROLL
			state[j][i] =state_sftr[j][i] ^ roundkey[(i * Nb + j) + (round * Nb * 4)];
		}
	}

	/**
	*   [c0 c4 c8  c12
	*    c1 c5 c9  c13    --> [c0 c1 c2 ... c15]
	*    c2 c6 c10 c14
	*    c3 c7 c11 c15]
	*/
	for( i = 0;i < 4;i++) {
		#pragma HLS UNROLL
		for( j = 0;j < 4;j++){
			#pragma HLS UNROLL
			cipher[i * 4 + j]=state[j][i];
		}
	}
	cipher_stream.write(cipher);
	}
}

void Cipher_top(unsigned char roundkey_in[176],hls::vector<uint8_t, NUM_WORDS>* plain, hls::vector<uint8_t, NUM_WORDS>* cipher){
    unsigned char roundkey[176];
    #pragma HLS ARRAY_PARTITION variable=roundkey_in cyclic factor=16
    #pragma HLS ARRAY_PARTITION variable=roundkey cyclic factor=16
    load_key(roundkey_in,roundkey);

    #pragma HLS INTERFACE m_axi port=plain  bundle=gmem1 depth=1024
    #pragma HLS INTERFACE m_axi port=cipher bundle=gmem0 depth=1024
    static hls::stream<hls::vector<uint8_t, NUM_WORDS> >  plain_stream("input_plain_stream");
    static hls::stream<hls::vector<uint8_t, NUM_WORDS> > cipher_stream("output_cipher_stream");

    #pragma HLS dataflow
    load_input(plain,plain_stream);
    Cipher(roundkey,plain_stream,cipher_stream);
    store_result(cipher,cipher_stream);
}

