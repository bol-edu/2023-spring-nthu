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
