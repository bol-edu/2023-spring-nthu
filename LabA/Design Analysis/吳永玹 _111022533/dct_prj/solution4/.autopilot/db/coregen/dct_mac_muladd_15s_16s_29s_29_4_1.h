// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1 (64-bit)
// Tool Version Limit: 2022.04
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __dct_mac_muladd_15s_16s_29s_29_4_1__HH__
#define __dct_mac_muladd_15s_16s_29s_29_4_1__HH__
#include "dct_mac_muladd_15s_16s_29s_29_4_1_DSP48_3.h"
#include <systemc>

template<
    int ID,
    int NUM_STAGE,
    int din0_WIDTH,
    int din1_WIDTH,
    int din2_WIDTH,
    int dout_WIDTH>
SC_MODULE(dct_mac_muladd_15s_16s_29s_29_4_1) {
    sc_core::sc_in_clk clk;
    sc_core::sc_in<sc_dt::sc_logic> reset;
    sc_core::sc_in<sc_dt::sc_logic> ce;
    sc_core::sc_in< sc_dt::sc_lv<din0_WIDTH> >   din0;
    sc_core::sc_in< sc_dt::sc_lv<din1_WIDTH> >   din1;
    sc_core::sc_in< sc_dt::sc_lv<din2_WIDTH> >   din2;
    sc_core::sc_out< sc_dt::sc_lv<dout_WIDTH> >   dout;



    dct_mac_muladd_15s_16s_29s_29_4_1_DSP48_3 dct_mac_muladd_15s_16s_29s_29_4_1_DSP48_3_U;

    SC_CTOR(dct_mac_muladd_15s_16s_29s_29_4_1):  dct_mac_muladd_15s_16s_29s_29_4_1_DSP48_3_U ("dct_mac_muladd_15s_16s_29s_29_4_1_DSP48_3_U") {
        dct_mac_muladd_15s_16s_29s_29_4_1_DSP48_3_U.clk(clk);
        dct_mac_muladd_15s_16s_29s_29_4_1_DSP48_3_U.rst(reset);
        dct_mac_muladd_15s_16s_29s_29_4_1_DSP48_3_U.ce(ce);
        dct_mac_muladd_15s_16s_29s_29_4_1_DSP48_3_U.in0(din0);
        dct_mac_muladd_15s_16s_29s_29_4_1_DSP48_3_U.in1(din1);
        dct_mac_muladd_15s_16s_29s_29_4_1_DSP48_3_U.in2(din2);
        dct_mac_muladd_15s_16s_29s_29_4_1_DSP48_3_U.dout(dout);

    }

};

#endif //
