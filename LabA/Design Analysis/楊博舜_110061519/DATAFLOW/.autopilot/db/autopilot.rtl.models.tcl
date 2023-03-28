set SynModuleInfo {
  {SRCNAME entry_proc MODELNAME entry_proc RTLNAME dct_entry_proc}
  {SRCNAME read_data_Pipeline_RD_Loop_Row MODELNAME read_data_Pipeline_RD_Loop_Row RTLNAME dct_read_data_Pipeline_RD_Loop_Row
    SUBMODULES {
      {MODELNAME dct_flow_control_loop_pipe_sequential_init RTLNAME dct_flow_control_loop_pipe_sequential_init BINDTYPE interface TYPE internal_upc_flow_control INSTNAME dct_flow_control_loop_pipe_sequential_init_U}
    }
  }
  {SRCNAME read_data MODELNAME read_data RTLNAME dct_read_data}
  {SRCNAME dct_1d MODELNAME dct_1d RTLNAME dct_dct_1d
    SUBMODULES {
      {MODELNAME dct_mul_mul_16s_14ns_29_4_0 RTLNAME dct_mul_mul_16s_14ns_29_4_0 BINDTYPE op TYPE all IMPL dsp48 LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME dct_mul_mul_16s_15s_29_4_0 RTLNAME dct_mul_mul_16s_15s_29_4_0 BINDTYPE op TYPE all IMPL dsp48 LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME dct_ama_submuladd_16s_16s_12ns_29s_29_4_0 RTLNAME dct_ama_submuladd_16s_16s_12ns_29s_29_4_0 BINDTYPE op TYPE all IMPL dsp48 LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME dct_mul_mul_17s_13ns_29_4_0 RTLNAME dct_mul_mul_17s_13ns_29_4_0 BINDTYPE op TYPE all IMPL dsp48 LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME dct_mac_muladd_18s_14ns_13ns_29_4_0 RTLNAME dct_mac_muladd_18s_14ns_13ns_29_4_0 BINDTYPE op TYPE all IMPL dsp48 LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME dct_ama_submuladd_16s_16s_13ns_29s_29_4_0 RTLNAME dct_ama_submuladd_16s_16s_13ns_29s_29_4_0 BINDTYPE op TYPE all IMPL dsp48 LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME dct_mac_muladd_16s_15s_29s_29_4_0 RTLNAME dct_mac_muladd_16s_15s_29s_29_4_0 BINDTYPE op TYPE all IMPL dsp48 LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME dct_mul_mul_17s_12ns_29_4_0 RTLNAME dct_mul_mul_17s_12ns_29_4_0 BINDTYPE op TYPE all IMPL dsp48 LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME dct_mac_muladd_18s_13ns_13ns_29_4_0 RTLNAME dct_mac_muladd_18s_13ns_13ns_29_4_0 BINDTYPE op TYPE all IMPL dsp48 LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME dct_mac_muladd_16s_14ns_29s_29_4_0 RTLNAME dct_mac_muladd_16s_14ns_29s_29_4_0 BINDTYPE op TYPE all IMPL dsp48 LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME dct_mac_muladd_16s_14ns_29ns_29_4_0 RTLNAME dct_mac_muladd_16s_14ns_29ns_29_4_0 BINDTYPE op TYPE all IMPL dsp48 LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME dct_mac_muladd_16s_15s_13ns_29_4_0 RTLNAME dct_mac_muladd_16s_15s_13ns_29_4_0 BINDTYPE op TYPE all IMPL dsp48 LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME dct_ama_addmuladd_18s_16s_13ns_29ns_29_4_0 RTLNAME dct_ama_addmuladd_18s_16s_13ns_29ns_29_4_0 BINDTYPE op TYPE all IMPL dsp48 LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME dct_mac_muladd_17s_12ns_29s_29_4_0 RTLNAME dct_mac_muladd_17s_12ns_29s_29_4_0 BINDTYPE op TYPE all IMPL dsp48 LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME dct_mac_muladd_16s_15s_29ns_29_4_0 RTLNAME dct_mac_muladd_16s_15s_29ns_29_4_0 BINDTYPE op TYPE all IMPL dsp48 LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME dct_mac_muladd_17s_13ns_13ns_29_4_0 RTLNAME dct_mac_muladd_17s_13ns_13ns_29_4_0 BINDTYPE op TYPE all IMPL dsp48 LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME dct_ama_submuladd_18s_16s_14ns_29ns_29_4_0 RTLNAME dct_ama_submuladd_18s_16s_14ns_29ns_29_4_0 BINDTYPE op TYPE all IMPL dsp48 LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME dct_mac_muladd_17s_13ns_29s_29_4_0 RTLNAME dct_mac_muladd_17s_13ns_29s_29_4_0 BINDTYPE op TYPE all IMPL dsp48 LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME dct_mac_muladd_17s_12ns_13ns_29_4_0 RTLNAME dct_mac_muladd_17s_12ns_13ns_29_4_0 BINDTYPE op TYPE all IMPL dsp48 LATENCY 3 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME dct_2d MODELNAME dct_2d RTLNAME dct_dct_2d
    SUBMODULES {
      {MODELNAME dct_frp_fifoout RTLNAME dct_frp_fifoout BINDTYPE interface TYPE internal_frp_fifoout}
      {MODELNAME dct_frp_pipeline_valid RTLNAME dct_frp_pipeline_valid BINDTYPE interface TYPE internal_frp_validbits INSTNAME dct_frp_pipeline_valid_U}
    }
  }
  {SRCNAME write_data_Pipeline_WR_Loop_Row MODELNAME write_data_Pipeline_WR_Loop_Row RTLNAME dct_write_data_Pipeline_WR_Loop_Row
    SUBMODULES {
      {MODELNAME dct_mux_84_16_1_1 RTLNAME dct_mux_84_16_1_1 BINDTYPE op TYPE mux IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME write_data MODELNAME write_data RTLNAME dct_write_data}
  {SRCNAME dct MODELNAME dct RTLNAME dct IS_TOP 1
    SUBMODULES {
      {MODELNAME dct_fifo_w64_d9_S RTLNAME dct_fifo_w64_d9_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME {$InstName}}
      {MODELNAME dct_fifo_w16_d2_S RTLNAME dct_fifo_w16_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME {$InstName}}
      {MODELNAME dct_gmem_m_axi RTLNAME dct_gmem_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME dct_control_s_axi RTLNAME dct_control_s_axi BINDTYPE interface TYPE interface_s_axilite}
    }
  }
}
