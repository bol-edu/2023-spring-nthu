// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1 (64-bit)
// Tool Version Limit: 2022.04
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __dct_mul_mul_17s_13ns_29_4_0__HH__
#define __dct_mul_mul_17s_13ns_29_4_0__HH__
#include "dct_mul_mul_17s_13ns_29_4_0_DSP48_3.h"
#include <systemc>

template<
    int ID,
    int NUM_STAGE,
    int din0_WIDTH,
    int din1_WIDTH,
    int dout_WIDTH>
SC_MODULE(dct_mul_mul_17s_13ns_29_4_0) {
    sc_core::sc_in_clk clk;
    sc_core::sc_in<sc_dt::sc_logic> reset;
    sc_core::sc_in<sc_dt::sc_logic> ce;
    sc_core::sc_in< sc_dt::sc_lv<din0_WIDTH> >   din0;
    sc_core::sc_in< sc_dt::sc_lv<din1_WIDTH> >   din1;
    sc_core::sc_out< sc_dt::sc_lv<dout_WIDTH> >   dout;



    dct_mul_mul_17s_13ns_29_4_0_DSP48_3 dct_mul_mul_17s_13ns_29_4_0_DSP48_3_U;

    SC_CTOR(dct_mul_mul_17s_13ns_29_4_0):  dct_mul_mul_17s_13ns_29_4_0_DSP48_3_U ("dct_mul_mul_17s_13ns_29_4_0_DSP48_3_U") {
        dct_mul_mul_17s_13ns_29_4_0_DSP48_3_U.clk(clk);
        dct_mul_mul_17s_13ns_29_4_0_DSP48_3_U.rst(reset);
        dct_mul_mul_17s_13ns_29_4_0_DSP48_3_U.ce(ce);
        dct_mul_mul_17s_13ns_29_4_0_DSP48_3_U.a(din0);
        dct_mul_mul_17s_13ns_29_4_0_DSP48_3_U.b(din1);
        dct_mul_mul_17s_13ns_29_4_0_DSP48_3_U.p(dout);

    }

};

#endif //
