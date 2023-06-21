#include "aes.h"

void Cipher(unsigned char roundkey[176], unsigned char plain[16], unsigned char cipher[16])
{
    //#pragma HLS INTERFACE s_axilite port=roundkey bundle=control
	//#pragma HLS INTERFACE s_axilite port=plain    bundle=control
    //#pragma HLS INTERFACE s_axilite port=cipher    bundle=control
	//#pragma HLS INTERFACE s_axilite port=return   bundle=control

    //#pragma HLS INTERFACE m_axi port=roundkey offset=slave bundle=gmem
    //#pragma HLS INTERFACE m_axi port=plain    offset=slave bundle=gmem
    //#pragma HLS INTERFACE m_axi port=cipher    offset=slave bundle=gmem

    #pragma HLS ARRAY_PARTITION variable=roundkey dim=0 complete
    #pragma HLS ARRAY_PARTITION variable=plain dim=0 complete
    #pragma HLS ARRAY_PARTITION variable=cipher dim=0 complete
    

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
        #pragma HLS UNROLL
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
        
    
}
