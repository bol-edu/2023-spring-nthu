#include "aes.h"
#include <hls_vector.h>
#include <hls_stream.h>
#define MEMORY_DWIDTH 512
#define SIZEOF_WORD 4
#define NUM_WORDS 16

#define DATA_SIZE 1024
#define xtime(x)   ((x << 1) ^ (((x >> 7) & 0x01) * 0x1b))

void MixColumns(unsigned char state[4][4],unsigned char state_mixc[4][4])
{
    #pragma HLS ARRAY_PARTITION variable=state dim=0 complete
	#pragma HLS ARRAY_PARTITION variable=state_mixc dim=0 complete

    #pragma HLS INTERFACE ap_ctrl_none port=return
    //#pragma HLS INTERFACE ap_none port=state
	//#pragma HLS INTERFACE ap_none port=state_mixc

    unsigned char t[4];
    unsigned char Tmp[4],Tm1[4],Tm1_tmp[4];
    unsigned char Tm2[4],Tm2_tmp[4];
    unsigned char Tm3[4],Tm3_tmp[4];
    unsigned char Tm4[4],Tm4_tmp[4];

    int i,j;
    for( i = 0;i < 4;i++)
    {    
        #pragma HLS UNROLL
        t[i]   = state[0][i];
        Tmp[i] = state[0][i] ^ state[1][i] ^ state[2][i] ^ state[3][i];
        Tm1[i]  = state[0][i] ^ state[1][i];
        Tm1_tmp[i] = xtime(Tm1[i]);
        state_mixc[0][i] = state[0][i] ^ Tm1_tmp[i] ^ Tmp[i] ;

        Tm2[i]  = state[1][i] ^ state[2][i];
        Tm2_tmp[i] = xtime(Tm2[i]);
        state_mixc[1][i] = state[1][i] ^ Tm2_tmp[i] ^ Tmp[i] ;

        Tm3[i]  = state[2][i] ^ state[3][i];
        Tm3_tmp[i] = xtime(Tm3[i]);
        state_mixc[2][i] = state[2][i] ^ Tm3_tmp[i] ^ Tmp[i] ;
        
        Tm4[i]  = state[3][i] ^ t[i];
        Tm4_tmp[i] = xtime(Tm4[i]);
        state_mixc[3][i] = state[3][i] ^ Tm4_tmp[i] ^ Tmp[i] ;
    }
}

unsigned char sbox1(unsigned char si){
	const unsigned char S_Box[] =
		{
			//0     1    2      3     4    5     6     7      8    9     A      B    C     D     E     F
			0x63, 0x7c, 0x77, 0x7b, 0xf2, 0x6b, 0x6f, 0xc5, 0x30, 0x01, 0x67, 0x2b, 0xfe, 0xd7, 0xab, 0x76, //0
			0xca, 0x82, 0xc9, 0x7d, 0xfa, 0x59, 0x47, 0xf0, 0xad, 0xd4, 0xa2, 0xaf, 0x9c, 0xa4, 0x72, 0xc0, //1
			0xb7, 0xfd, 0x93, 0x26, 0x36, 0x3f, 0xf7, 0xcc, 0x34, 0xa5, 0xe5, 0xf1, 0x71, 0xd8, 0x31, 0x15, //2
			0x04, 0xc7, 0x23, 0xc3, 0x18, 0x96, 0x05, 0x9a, 0x07, 0x12, 0x80, 0xe2, 0xeb, 0x27, 0xb2, 0x75, //3
			0x09, 0x83, 0x2c, 0x1a, 0x1b, 0x6e, 0x5a, 0xa0, 0x52, 0x3b, 0xd6, 0xb3, 0x29, 0xe3, 0x2f, 0x84, //4
			0x53, 0xd1, 0x00, 0xed, 0x20, 0xfc, 0xb1, 0x5b, 0x6a, 0xcb, 0xbe, 0x39, 0x4a, 0x4c, 0x58, 0xcf, //5
			0xd0, 0xef, 0xaa, 0xfb, 0x43, 0x4d, 0x33, 0x85, 0x45, 0xf9, 0x02, 0x7f, 0x50, 0x3c, 0x9f, 0xa8, //6
			0x51, 0xa3, 0x40, 0x8f, 0x92, 0x9d, 0x38, 0xf5, 0xbc, 0xb6, 0xda, 0x21, 0x10, 0xff, 0xf3, 0xd2, //7
			0xcd, 0x0c, 0x13, 0xec, 0x5f, 0x97, 0x44, 0x17, 0xc4, 0xa7, 0x7e, 0x3d, 0x64, 0x5d, 0x19, 0x73, //8
			0x60, 0x81, 0x4f, 0xdc, 0x22, 0x2a, 0x90, 0x88, 0x46, 0xee, 0xb8, 0x14, 0xde, 0x5e, 0x0b, 0xdb, //9
			0xe0, 0x32, 0x3a, 0x0a, 0x49, 0x06, 0x24, 0x5c, 0xc2, 0xd3, 0xac, 0x62, 0x91, 0x95, 0xe4, 0x79, //A
			0xe7, 0xc8, 0x37, 0x6d, 0x8d, 0xd5, 0x4e, 0xa9, 0x6c, 0x56, 0xf4, 0xea, 0x65, 0x7a, 0xae, 0x08, //B
			0xba, 0x78, 0x25, 0x2e, 0x1c, 0xa6, 0xb4, 0xc6, 0xe8, 0xdd, 0x74, 0x1f, 0x4b, 0xbd, 0x8b, 0x8a, //C
			0x70, 0x3e, 0xb5, 0x66, 0x48, 0x03, 0xf6, 0x0e, 0x61, 0x35, 0x57, 0xb9, 0x86, 0xc1, 0x1d, 0x9e, //D
			0xe1, 0xf8, 0x98, 0x11, 0x69, 0xd9, 0x8e, 0x94, 0x9b, 0x1e, 0x87, 0xe9, 0xce, 0x55, 0x28, 0xdf, //E
			0x8c, 0xa1, 0x89, 0x0d, 0xbf, 0xe6, 0x42, 0x68, 0x41, 0x99, 0x2d, 0x0f, 0xb0, 0x54, 0xbb, 0x16  //F
		};
	#pragma HLS ARRAY_PARTITION variable=S_Box type=complete
    #pragma HLS INTERFACE ap_none port=si
	//#pragma HLS INTERFACE ap_none port=so
	#pragma HLS INTERFACE ap_ctrl_none port=return
//#pragma HLS dataflow
//#pragma HLS INLINE off
	return S_Box[si];
//	*so = bo(si);
}

void ShiftRows(unsigned char state[4][4],unsigned char state_sftr[4][4]){

    #pragma HLS ARRAY_PARTITION variable=state dim=0 complete
    #pragma HLS ARRAY_PARTITION variable=state_sftr dim=0 complete

    #pragma HLS INTERFACE ap_ctrl_none port=return
    //#pragma HLS INTERFACE ap_none port=state
	//#pragma HLS INTERFACE ap_none port=state_sftr

    //unsigned char tempByte1,tempByte2,tempByte3,tempByte4;
    state_sftr[0][0] = state[0][0];
    state_sftr[0][1] = state[0][1];
    state_sftr[0][2] = state[0][2];
    state_sftr[0][3] = state[0][3];

    // 2nd row left Circular Shift 1 byte
    //tempByte1   = state[1][0];
    state_sftr[1][0] = state[1][1];
    state_sftr[1][1] = state[1][2];
    state_sftr[1][2] = state[1][3];
    state_sftr[1][3] = state[1][0];

    // 3th row left Circular Shift 2 byte
    //tempByte2   = state[2][0];
    state_sftr[2][0] = state[2][2];
    state_sftr[2][2] = state[2][0];

    //tempByte3   = state[2][1];
    state_sftr[2][1] = state[2][3];
    state_sftr[2][3] = state[2][1];

    // 4th row left Circular Shift 3 byte
    //tempByte4   = state[3][0];
    state_sftr[3][0] = state[3][3];
    state_sftr[3][3] = state[3][2];
    state_sftr[3][2] = state[3][1];
    state_sftr[3][1] = state[3][0];
}



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
				state[j][i] = sbox1(state[j][i]);
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
			state[j][i] = sbox1(state[j][i]);
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

extern "C"{
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
}
