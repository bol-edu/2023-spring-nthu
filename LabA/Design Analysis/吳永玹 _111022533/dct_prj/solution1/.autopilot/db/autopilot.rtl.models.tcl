set SynModuleInfo {
  {SRCNAME read_data MODELNAME read_data RTLNAME dct_read_data
    SUBMODULES {
      {MODELNAME dct_flow_control_loop_pipe_sequential_init RTLNAME dct_flow_control_loop_pipe_sequential_init BINDTYPE interface TYPE internal_upc_flow_control INSTNAME dct_flow_control_loop_pipe_sequential_init_U}
    }
  }
  {SRCNAME dct_2d_Pipeline_Row_DCT_Loop_DCT_Outer_Loop MODELNAME dct_2d_Pipeline_Row_DCT_Loop_DCT_Outer_Loop RTLNAME dct_dct_2d_Pipeline_Row_DCT_Loop_DCT_Outer_Loop
    SUBMODULES {
      {MODELNAME dct_mul_mul_16s_15s_29_4_1 RTLNAME dct_mul_mul_16s_15s_29_4_1 BINDTYPE op TYPE all IMPL dsp48 LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME dct_mac_muladd_16s_15s_13ns_29_4_1 RTLNAME dct_mac_muladd_16s_15s_13ns_29_4_1 BINDTYPE op TYPE all IMPL dsp48 LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME dct_mac_muladd_16s_14ns_29s_29_4_1 RTLNAME dct_mac_muladd_16s_14ns_29s_29_4_1 BINDTYPE op TYPE all IMPL dsp48 LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME dct_mac_muladd_16s_15s_29s_29_4_1 RTLNAME dct_mac_muladd_16s_15s_29s_29_4_1 BINDTYPE op TYPE all IMPL dsp48 LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME dct_mac_muladd_16s_15s_29ns_29_4_1 RTLNAME dct_mac_muladd_16s_15s_29ns_29_4_1 BINDTYPE op TYPE all IMPL dsp48 LATENCY 3 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME dct_2d_Pipeline_Xpose_Row_Outer_Loop_Xpose_Row_Inner_Loop MODELNAME dct_2d_Pipeline_Xpose_Row_Outer_Loop_Xpose_Row_Inner_Loop RTLNAME dct_dct_2d_Pipeline_Xpose_Row_Outer_Loop_Xpose_Row_Inner_Loop}
  {SRCNAME dct_2d_Pipeline_Col_DCT_Loop_DCT_Outer_Loop MODELNAME dct_2d_Pipeline_Col_DCT_Loop_DCT_Outer_Loop RTLNAME dct_dct_2d_Pipeline_Col_DCT_Loop_DCT_Outer_Loop}
  {SRCNAME dct_2d_Pipeline_Xpose_Col_Outer_Loop_Xpose_Col_Inner_Loop MODELNAME dct_2d_Pipeline_Xpose_Col_Outer_Loop_Xpose_Col_Inner_Loop RTLNAME dct_dct_2d_Pipeline_Xpose_Col_Outer_Loop_Xpose_Col_Inner_Loop}
  {SRCNAME dct_2d MODELNAME dct_2d RTLNAME dct_dct_2d
    SUBMODULES {
      {MODELNAME dct_dct_2d_dct_coeff_table_0_ROM_AUTO_1R RTLNAME dct_dct_2d_dct_coeff_table_0_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME dct_dct_2d_dct_coeff_table_1_ROM_AUTO_1R RTLNAME dct_dct_2d_dct_coeff_table_1_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME dct_dct_2d_dct_coeff_table_2_ROM_AUTO_1R RTLNAME dct_dct_2d_dct_coeff_table_2_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME dct_dct_2d_dct_coeff_table_3_ROM_AUTO_1R RTLNAME dct_dct_2d_dct_coeff_table_3_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME dct_dct_2d_dct_coeff_table_4_ROM_AUTO_1R RTLNAME dct_dct_2d_dct_coeff_table_4_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME dct_dct_2d_dct_coeff_table_5_ROM_AUTO_1R RTLNAME dct_dct_2d_dct_coeff_table_5_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME dct_dct_2d_dct_coeff_table_6_ROM_AUTO_1R RTLNAME dct_dct_2d_dct_coeff_table_6_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME dct_dct_2d_dct_coeff_table_7_ROM_AUTO_1R RTLNAME dct_dct_2d_dct_coeff_table_7_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME dct_dct_2d_row_outbuf_RAM_AUTO_1R1W RTLNAME dct_dct_2d_row_outbuf_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME dct_dct_2d_col_inbuf_RAM_1WNR_AUTO_1R1W RTLNAME dct_dct_2d_col_inbuf_RAM_1WNR_AUTO_1R1W BINDTYPE storage TYPE ram_1wnr IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME write_data MODELNAME write_data RTLNAME dct_write_data}
  {SRCNAME dct MODELNAME dct RTLNAME dct IS_TOP 1
    SUBMODULES {
      {MODELNAME dct_buf_2d_in_RAM_1WNR_AUTO_1R1W RTLNAME dct_buf_2d_in_RAM_1WNR_AUTO_1R1W BINDTYPE storage TYPE ram_1wnr IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME dct_buf_2d_out_RAM_AUTO_1R1W RTLNAME dct_buf_2d_out_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
}
