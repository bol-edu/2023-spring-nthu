// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1 (64-bit)
// Tool Version Limit: 2022.04
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __dct_mul_mul_14ns_16s_29_4_1__HH__
#define __dct_mul_mul_14ns_16s_29_4_1__HH__
#include "dct_mul_mul_14ns_16s_29_4_1_DSP48_2.h"
#include <systemc>

template<
    int ID,
    int NUM_STAGE,
    int din0_WIDTH,
    int din1_WIDTH,
    int dout_WIDTH>
SC_MODULE(dct_mul_mul_14ns_16s_29_4_1) {
    sc_core::sc_in_clk clk;
    sc_core::sc_in<sc_dt::sc_logic> reset;
    sc_core::sc_in<sc_dt::sc_logic> ce;
    sc_core::sc_in< sc_dt::sc_lv<din0_WIDTH> >   din0;
    sc_core::sc_in< sc_dt::sc_lv<din1_WIDTH> >   din1;
    sc_core::sc_out< sc_dt::sc_lv<dout_WIDTH> >   dout;



    dct_mul_mul_14ns_16s_29_4_1_DSP48_2 dct_mul_mul_14ns_16s_29_4_1_DSP48_2_U;

    SC_CTOR(dct_mul_mul_14ns_16s_29_4_1):  dct_mul_mul_14ns_16s_29_4_1_DSP48_2_U ("dct_mul_mul_14ns_16s_29_4_1_DSP48_2_U") {
        dct_mul_mul_14ns_16s_29_4_1_DSP48_2_U.clk(clk);
        dct_mul_mul_14ns_16s_29_4_1_DSP48_2_U.rst(reset);
        dct_mul_mul_14ns_16s_29_4_1_DSP48_2_U.ce(ce);
        dct_mul_mul_14ns_16s_29_4_1_DSP48_2_U.a(din0);
        dct_mul_mul_14ns_16s_29_4_1_DSP48_2_U.b(din1);
        dct_mul_mul_14ns_16s_29_4_1_DSP48_2_U.p(dout);

    }

};

#endif //
