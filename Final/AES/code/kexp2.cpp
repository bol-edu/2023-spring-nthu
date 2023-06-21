#include "aes.h"
void kexp2(unsigned char key[16],unsigned char roundkey[176]){
    #pragma HLS ARRAY_PARTITION variable=key complete
    #pragma HLS ARRAY_PARTITION variable=roundkey cyclic factor=16

    unsigned char tempByte[16];
    unsigned char tempByte_tmp[4];
    unsigned char tempByte_sbox[4];
    unsigned char rk_tmp0[4],rk_tmp1[4],rk_tmp2[4],rk_tmp3[4];
	#pragma HLS INTERFACE ap_ctrl_hs port=return
	//#pragma HLS INTERFACE ap_fifo port=roundkey
    unsigned char roundkey_tmp[176];
    //unsigned char roundkey_tmp2[176];

	#pragma HLS ARRAY_PARTITION variable=roundkey_tmp cyclic factor=16


    int i,j;
    //#pragma HLS DATAFLOW
	//#pragma HLS INLINE off

    const unsigned char Rcon[11] =
    {
    //   0     1     2     3      4    5     6     7     8    9     10
        0x00, 0x01, 0x02, 0x04, 0x08, 0x10, 0x20, 0x40, 0x80, 0x1b, 0x36
    };
	#pragma HLS ARRAY_PARTITION variable=Rcon complete

    for ( i = 0;i < 11;i++)
    {
		//#pragma HLS PIPELINE
		#pragma HLS UNROLL
    	#pragma HLS INLINE off
		//#pragma HLS dataflow
    	if(i==0){
    		for (j = 0;j < 16;j++){
				#pragma HLS UNROLL
    			roundkey[j] = key[j];
    			roundkey_tmp[j] = key[j];
			}
    	}
    	else{
			for ( j = 0;j < 16;j++){
				#pragma HLS UNROLL
				tempByte[j] = roundkey_tmp[(i - 1) * 16 + j];
				//tempByte[j] = roundkey_tmp[(i - 1) * 16 + j];
			}
			// RotWord function
			//a0 = tempByte[0];
			tempByte_tmp[0] = tempByte[13];
			tempByte_tmp[1] = tempByte[14];
			tempByte_tmp[2] = tempByte[15];
			tempByte_tmp[3] = tempByte[12];

			// SubWord function XOR Rcon[i]

			tempByte_sbox[0] = sbox(tempByte_tmp[0])^ Rcon[i];
			tempByte_sbox[1] = sbox(tempByte_tmp[1]);
			tempByte_sbox[2] = sbox(tempByte_tmp[2]);
			tempByte_sbox[3] = sbox(tempByte_tmp[3]);


			rk_tmp0[0] = tempByte[0] ^ tempByte_sbox[0];
			rk_tmp0[1] = tempByte[1] ^ tempByte_sbox[1];
			rk_tmp0[2] = tempByte[2] ^ tempByte_sbox[2];
			rk_tmp0[3] = tempByte[3] ^ tempByte_sbox[3];

			rk_tmp1[0] = tempByte[4] ^ rk_tmp0[0];
			rk_tmp1[1] = tempByte[5] ^ rk_tmp0[1];
			rk_tmp1[2] = tempByte[6] ^ rk_tmp0[2];
			rk_tmp1[3] = tempByte[7] ^ rk_tmp0[3];

			rk_tmp2[0] = tempByte[8] ^ rk_tmp1[0];
			rk_tmp2[1] = tempByte[9] ^ rk_tmp1[1];
			rk_tmp2[2] = tempByte[10] ^ rk_tmp1[2];
			rk_tmp2[3] = tempByte[11] ^ rk_tmp1[3];

			rk_tmp3[0] = tempByte[12] ^ rk_tmp2[0];
			rk_tmp3[1] = tempByte[13] ^ rk_tmp2[1];
			rk_tmp3[2] = tempByte[14] ^ rk_tmp2[2];
			rk_tmp3[3] = tempByte[15] ^ rk_tmp2[3];

			roundkey_tmp[i*16 +  0] = rk_tmp0[0];
			roundkey_tmp[i*16 +  1] = rk_tmp0[1];
			roundkey_tmp[i*16 +  2] = rk_tmp0[2];
			roundkey_tmp[i*16 +  3] = rk_tmp0[3];

			roundkey_tmp[i*16 +  4] = rk_tmp1[0];
			roundkey_tmp[i*16 +  5] = rk_tmp1[1];
			roundkey_tmp[i*16 +  6] = rk_tmp1[2];
			roundkey_tmp[i*16 +  7] = rk_tmp1[3];

			roundkey_tmp[i*16 +  8] = rk_tmp2[0];
			roundkey_tmp[i*16 +  9] = rk_tmp2[1];
			roundkey_tmp[i*16 + 10] = rk_tmp2[2];
			roundkey_tmp[i*16 + 11] = rk_tmp2[3];

			roundkey_tmp[i*16 + 12] = rk_tmp3[0];
			roundkey_tmp[i*16 + 13] = rk_tmp3[1];
			roundkey_tmp[i*16 + 14] = rk_tmp3[2];
			roundkey_tmp[i*16 + 15] = rk_tmp3[3];

			roundkey[i*16 +  0] = roundkey_tmp[i*16 +  0];
			roundkey[i*16 +  1] = roundkey_tmp[i*16 +  1];
			roundkey[i*16 +  2] = roundkey_tmp[i*16 +  2];
			roundkey[i*16 +  3] = roundkey_tmp[i*16 +  3];

			roundkey[i*16 +  4] = roundkey_tmp[i*16 +  4];
			roundkey[i*16 +  5] = roundkey_tmp[i*16 +  5];
			roundkey[i*16 +  6] = roundkey_tmp[i*16 +  6];
			roundkey[i*16 +  7] = roundkey_tmp[i*16 +  7];

			roundkey[i*16 +  8] = roundkey_tmp[i*16 +  8];
			roundkey[i*16 +  9] = roundkey_tmp[i*16 +  9];
			roundkey[i*16 + 10] = roundkey_tmp[i*16 + 10];
			roundkey[i*16 + 11] = roundkey_tmp[i*16 + 11];

			roundkey[i*16 + 12] = roundkey_tmp[i*16 + 12];
			roundkey[i*16 + 13] = roundkey_tmp[i*16 + 13];
			roundkey[i*16 + 14] = roundkey_tmp[i*16 + 14];
			roundkey[i*16 + 15] = roundkey_tmp[i*16 + 15];


		}
    }
    /*
    for(i=0;i<176;i++){

		#pragma HLS UNROLL factor=16
		#pragma HLS PIPELINE
    	roundkey[i] = roundkey_tmp2[i];
    }
	*/
}


/*
void kexp(unsigned char key[16],unsigned char roundkey[176]){
    #pragma HLS ARRAY_PARTITION variable=key complete
    #pragma HLS ARRAY_PARTITION variable=roundkey cyclic factor=16

    unsigned char tempByte[16];
    unsigned char tempByte_tmp[4];
    unsigned char tempByte_sbox[4];
    unsigned char rk_tmp0[4],rk_tmp1[4],rk_tmp2[4],rk_tmp3[4];
    unsigned char roundkey_tmp[176];
    unsigned char roundkey_tmp2[176];

	#pragma HLS ARRAY_PARTITION variable=roundkey_tmp dim=0 complete


    int i,j;
    #pragma HLS DATAFLOW
	#pragma HLS INLINE off

    unsigned char Rcon[11] =
    {
    //   0     1     2     3      4    5     6     7     8    9     10
        0x00, 0x01, 0x02, 0x04, 0x08, 0x10, 0x20, 0x40, 0x80, 0x1b, 0x36
    };

    for ( i = 0;i < 11;i++)
    {
		//#pragma HLS PIPELINE
    	#pragma HLS INLINE off
    	if(i==0){
    		for (j = 0;j < 16;j++){
				#pragma HLS UNROLL
    			roundkey_tmp[j] = key[j];
    			//roundkey_tmp2[j] = key[j];
			}
    	}
    	else{
			for ( j = 0;j < 16;j++){
				#pragma HLS UNROLL
				tempByte[j] = roundkey[(i - 1) * 16 + j];
				//tempByte[j] = roundkey_tmp[(i - 1) * 16 + j];
			}
			// RotWord function
			//a0 = tempByte[0];
			tempByte_tmp[0] = tempByte[13];
			tempByte_tmp[1] = tempByte[14];
			tempByte_tmp[2] = tempByte[15];
			tempByte_tmp[3] = tempByte[12];

			// SubWord function XOR Rcon[i]

			tempByte_sbox[0] = sbox(tempByte_tmp[0])^ Rcon[i];
			tempByte_sbox[1] = sbox(tempByte_tmp[1]);
			tempByte_sbox[2] = sbox(tempByte_tmp[2]);
			tempByte_sbox[3] = sbox(tempByte_tmp[3]);


			rk_tmp0[0] = tempByte[0] ^ tempByte_sbox[0];
			rk_tmp0[1] = tempByte[1] ^ tempByte_sbox[1];
			rk_tmp0[2] = tempByte[2] ^ tempByte_sbox[2];
			rk_tmp0[3] = tempByte[3] ^ tempByte_sbox[3];

			rk_tmp1[0] = tempByte[4] ^ rk_tmp0[0];
			rk_tmp1[1] = tempByte[5] ^ rk_tmp0[1];
			rk_tmp1[2] = tempByte[6] ^ rk_tmp0[2];
			rk_tmp1[3] = tempByte[7] ^ rk_tmp0[3];

			rk_tmp2[0] = tempByte[8] ^ rk_tmp1[0];
			rk_tmp2[1] = tempByte[9] ^ rk_tmp1[1];
			rk_tmp2[2] = tempByte[10] ^ rk_tmp1[2];
			rk_tmp2[3] = tempByte[11] ^ rk_tmp1[3];

			rk_tmp3[0] = tempByte[12] ^ rk_tmp2[0];
			rk_tmp3[1] = tempByte[13] ^ rk_tmp2[1];
			rk_tmp3[2] = tempByte[14] ^ rk_tmp2[2];
			rk_tmp3[3] = tempByte[15] ^ rk_tmp2[3];

			roundkey_tmp2[i*16 +  0] = rk_tmp0[0];
			roundkey_tmp2[i*16 +  1] = rk_tmp0[1];
			roundkey_tmp2[i*16 +  2] = rk_tmp0[2];
			roundkey_tmp2[i*16 +  3] = rk_tmp0[3];

			roundkey_tmp2[i*16 +  4] = rk_tmp1[0];
			roundkey_tmp2[i*16 +  5] = rk_tmp1[1];
			roundkey_tmp2[i*16 +  6] = rk_tmp1[2];
			roundkey_tmp2[i*16 +  7] = rk_tmp1[3];

			roundkey_tmp2[i*16 +  8] = rk_tmp2[0];
			roundkey_tmp2[i*16 +  9] = rk_tmp2[1];
			roundkey_tmp2[i*16 + 10] = rk_tmp2[2];
			roundkey_tmp2[i*16 + 11] = rk_tmp2[3];

			roundkey_tmp2[i*16 + 12] = rk_tmp3[0];
			roundkey_tmp2[i*16 + 13] = rk_tmp3[1];
			roundkey_tmp2[i*16 + 14] = rk_tmp3[2];
			roundkey_tmp2[i*16 + 15] = rk_tmp3[3];

		}
    }
    for(i=0;i<176;i++){

		#pragma HLS UNROLL factor=16
		#pragma HLS PIPELINE
    	roundkey[i] = roundkey_tmp2[i];
    }

}
*/
