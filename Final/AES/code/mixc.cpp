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
