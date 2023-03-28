set SynModuleInfo {
  {SRCNAME matrixmul_Pipeline_Col MODELNAME matrixmul_Pipeline_Col RTLNAME matrixmul_matrixmul_Pipeline_Col
    SUBMODULES {
      {MODELNAME matrixmul_mul_8s_8s_16_1_1 RTLNAME matrixmul_mul_8s_8s_16_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME matrixmul_mac_muladd_8s_8s_16s_16_4_1 RTLNAME matrixmul_mac_muladd_8s_8s_16s_16_4_1 BINDTYPE op TYPE all IMPL dsp48 LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME matrixmul_mac_muladd_8s_8s_16ns_16_4_1 RTLNAME matrixmul_mac_muladd_8s_8s_16ns_16_4_1 BINDTYPE op TYPE all IMPL dsp48 LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME matrixmul_flow_control_loop_pipe_sequential_init RTLNAME matrixmul_flow_control_loop_pipe_sequential_init BINDTYPE interface TYPE internal_upc_flow_control INSTNAME matrixmul_flow_control_loop_pipe_sequential_init_U}
    }
  }
  {SRCNAME matrixmul MODELNAME matrixmul RTLNAME matrixmul IS_TOP 1}
}
