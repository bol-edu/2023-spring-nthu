#include "aes.h"
static const unsigned char S_Box[256] =
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
void kexp(unsigned char key[16],unsigned char roundkey[176]){
	//#pragma HLS INTERFACE s_axilite port=key bundle=control
	//#pragma HLS INTERFACE s_axilite port=roundkey bundle=control
	//#pragma HLS INTERFACE s_axilite port=return bundle=control

    //#pragma HLS INTERFACE m_axi port=key       offset=slave bundle=gmem
    //#pragma HLS INTERFACE m_axi port=roundkey  offset=slave bundle=gmem

	#pragma HLS ARRAY_PARTITION variable=S_Box dim=0 complete
    #pragma HLS ARRAY_PARTITION variable=key complete
    #pragma HLS ARRAY_PARTITION variable=roundkey cyclic factor=16


	//#pragma HLS INTERFACE ap_hs port=roundkey
	//#pragma HLS INTERFACE ap_fifo port=roundkey
	//#pragma HLS INTERFACE ap_ctrl_hs port=return
	//

    unsigned char tempByte[16];
    unsigned char tempByte_tmp[4];
    unsigned char tempByte_sbox[4];
    unsigned char rk_tmp0[4],rk_tmp1[4],rk_tmp2[4],rk_tmp3[4];
    unsigned char roundkey_tmp[176],roundkey_tmp2[176];

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
			}
    	}
    	else{
			for ( j = 0;j < 16;j++){
				#pragma HLS UNROLL
				tempByte[j] = roundkey_tmp[(i - 1) * 16 + j];
			}
			// RotWord function
			//a0 = tempByte[0];
			tempByte_tmp[0] = tempByte[13];
			tempByte_tmp[1] = tempByte[14];
			tempByte_tmp[2] = tempByte[15];
			tempByte_tmp[3] = tempByte[12];

			// SubWord function XOR Rcon[i]
			tempByte_sbox[0] = S_Box[tempByte_tmp[0]]^ Rcon[i];
			tempByte_sbox[1] = S_Box[tempByte_tmp[1]];
			tempByte_sbox[2] = S_Box[tempByte_tmp[2]];
			tempByte_sbox[3] = S_Box[tempByte_tmp[3]];
			/*
			tempByte_sbox[0] = sbox(tempByte_tmp[0])^ Rcon[i];
			tempByte_sbox[1] = sbox(tempByte_tmp[1]);
			tempByte_sbox[2] = sbox(tempByte_tmp[2]);
			tempByte_sbox[3] = sbox(tempByte_tmp[3]);
	*/

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

/*
void kexp(unsigned char key[16],unsigned char roundkey[176]){
	#pragma HLS INTERFACE s_axilite port=key bundle=control
	#pragma HLS INTERFACE s_axilite port=roundkey bundle=control
	#pragma HLS INTERFACE s_axilite port=return bundle=control

    #pragma HLS INTERFACE m_axi port=key       offset=slave bundle=gmem
    #pragma HLS INTERFACE m_axi port=roundkey  offset=slave bundle=gmem


    #pragma HLS ARRAY_PARTITION variable=key complete
    #pragma HLS ARRAY_PARTITION variable=roundkey cyclic factor=16


    unsigned char tempByte[4];
    unsigned char tempByte_tmp[4];
    unsigned char tempByte_sbox[4];
    unsigned char a0;
    int i,j;
    #pragma HLS dataflow
    for (i = 0;i < Nb_k;i++){
        #pragma HLS UNROLL
        roundkey[i * 4] = key[i * 4];
        roundkey[i *4 + 1] = key[i * 4 + 1];
        roundkey[i *4 + 2] = key[i * 4 + 2];
        roundkey[i *4 + 3] = key[i * 4 + 3];
    }
    unsigned char Rcon[11] =
    {
    //   0     1     2     3      4    5     6     7     8    9     10
        0x00, 0x01, 0x02, 0x04, 0x08, 0x10, 0x20, 0x40, 0x80, 0x1b, 0x36
    };

    for ( i = Nb_k;i < (Nb * (Nr + 1));i++)
    {
        #pragma HLS UNROLL factor=4
        if (i % Nb_k == 0){
            for ( j = 0;j < 4;j++){
                #pragma HLS UNROLL
                tempByte[j] = roundkey[(i - 1) * 4 + j];
            }
            // RotWord function
            //a0 = tempByte[0];
            tempByte_tmp[0] = tempByte[1];
            tempByte_tmp[1] = tempByte[2];
            tempByte_tmp[2] = tempByte[3];
            tempByte_tmp[3] = tempByte[0];

            // SubWord function
            tempByte_sbox[0] = sbox(tempByte_tmp[0])^ Rcon[i / Nb_k];
            tempByte_sbox[1] = sbox(tempByte_tmp[1]);
            tempByte_sbox[2] = sbox(tempByte_tmp[2]);
            tempByte_sbox[3] = sbox(tempByte_tmp[3]);
            printf("%X %X %X %X\n",tempByte_sbox[0],tempByte_sbox[1],tempByte_sbox[2],tempByte_sbox[3]);
            // XOR Rcon[i/4]
            //tempByte[0] = tempByte[0] ^ Rcon[i / Nb_k];
            roundkey[i * 4 + 0] = roundkey[(i - Nb_k) * 4 + 0] ^ tempByte_sbox[0];
            roundkey[i * 4 + 1] = roundkey[(i - Nb_k) * 4 + 1] ^ tempByte_sbox[1];
            roundkey[i * 4 + 2] = roundkey[(i - Nb_k) * 4 + 2] ^ tempByte_sbox[2];
            roundkey[i * 4 + 3] = roundkey[(i - Nb_k) * 4 + 3] ^ tempByte_sbox[3];
        }
        else{
            for ( j = 0;j < 4;j++){
                #pragma HLS UNROLL
                roundkey[i * 4 + j] = roundkey[(i - Nb_k) * 4 + j] ^ roundkey[(i - 1) * 4 + j];
            }
        }
    }


}
*/
