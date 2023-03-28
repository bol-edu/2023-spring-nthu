
log_wave -r /
set designtopgroup [add_wave_group "Design Top Signals"]
set coutputgroup [add_wave_group "C Outputs" -into $designtopgroup]
set return_group [add_wave_group return(axis) -into $coutputgroup]
add_wave /apatb_axi_interfaces_top/AESL_inst_axi_interfaces/d_o_7_TVALID -into $return_group -color #ffff00 -radix hex
add_wave /apatb_axi_interfaces_top/AESL_inst_axi_interfaces/d_o_7_TDATA -into $return_group -radix hex
add_wave /apatb_axi_interfaces_top/AESL_inst_axi_interfaces/d_o_6_TVALID -into $return_group -color #ffff00 -radix hex
add_wave /apatb_axi_interfaces_top/AESL_inst_axi_interfaces/d_o_6_TDATA -into $return_group -radix hex
add_wave /apatb_axi_interfaces_top/AESL_inst_axi_interfaces/d_o_5_TVALID -into $return_group -color #ffff00 -radix hex
add_wave /apatb_axi_interfaces_top/AESL_inst_axi_interfaces/d_o_5_TDATA -into $return_group -radix hex
add_wave /apatb_axi_interfaces_top/AESL_inst_axi_interfaces/d_o_4_TVALID -into $return_group -color #ffff00 -radix hex
add_wave /apatb_axi_interfaces_top/AESL_inst_axi_interfaces/d_o_4_TDATA -into $return_group -radix hex
add_wave /apatb_axi_interfaces_top/AESL_inst_axi_interfaces/d_o_3_TVALID -into $return_group -color #ffff00 -radix hex
add_wave /apatb_axi_interfaces_top/AESL_inst_axi_interfaces/d_o_3_TDATA -into $return_group -radix hex
add_wave /apatb_axi_interfaces_top/AESL_inst_axi_interfaces/d_o_2_TVALID -into $return_group -color #ffff00 -radix hex
add_wave /apatb_axi_interfaces_top/AESL_inst_axi_interfaces/d_o_2_TDATA -into $return_group -radix hex
add_wave /apatb_axi_interfaces_top/AESL_inst_axi_interfaces/d_o_1_TVALID -into $return_group -color #ffff00 -radix hex
add_wave /apatb_axi_interfaces_top/AESL_inst_axi_interfaces/d_o_1_TDATA -into $return_group -radix hex
add_wave /apatb_axi_interfaces_top/AESL_inst_axi_interfaces/d_o_0_TVALID -into $return_group -color #ffff00 -radix hex
add_wave /apatb_axi_interfaces_top/AESL_inst_axi_interfaces/d_o_0_TDATA -into $return_group -radix hex
add_wave /apatb_axi_interfaces_top/AESL_inst_axi_interfaces/d_o_7_TREADY -into $return_group -color #ffff00 -radix hex
add_wave /apatb_axi_interfaces_top/AESL_inst_axi_interfaces/d_o_6_TREADY -into $return_group -color #ffff00 -radix hex
add_wave /apatb_axi_interfaces_top/AESL_inst_axi_interfaces/d_o_5_TREADY -into $return_group -color #ffff00 -radix hex
add_wave /apatb_axi_interfaces_top/AESL_inst_axi_interfaces/d_o_4_TREADY -into $return_group -color #ffff00 -radix hex
add_wave /apatb_axi_interfaces_top/AESL_inst_axi_interfaces/d_o_3_TREADY -into $return_group -color #ffff00 -radix hex
add_wave /apatb_axi_interfaces_top/AESL_inst_axi_interfaces/d_o_2_TREADY -into $return_group -color #ffff00 -radix hex
add_wave /apatb_axi_interfaces_top/AESL_inst_axi_interfaces/d_o_1_TREADY -into $return_group -color #ffff00 -radix hex
add_wave /apatb_axi_interfaces_top/AESL_inst_axi_interfaces/d_o_0_TREADY -into $return_group -color #ffff00 -radix hex
set cinputgroup [add_wave_group "C Inputs" -into $designtopgroup]
set return_group [add_wave_group return(axis) -into $cinputgroup]
add_wave /apatb_axi_interfaces_top/AESL_inst_axi_interfaces/d_i_7_TREADY -into $return_group -color #ffff00 -radix hex
add_wave /apatb_axi_interfaces_top/AESL_inst_axi_interfaces/d_i_7_TDATA -into $return_group -radix hex
add_wave /apatb_axi_interfaces_top/AESL_inst_axi_interfaces/d_i_6_TREADY -into $return_group -color #ffff00 -radix hex
add_wave /apatb_axi_interfaces_top/AESL_inst_axi_interfaces/d_i_6_TDATA -into $return_group -radix hex
add_wave /apatb_axi_interfaces_top/AESL_inst_axi_interfaces/d_i_5_TREADY -into $return_group -color #ffff00 -radix hex
add_wave /apatb_axi_interfaces_top/AESL_inst_axi_interfaces/d_i_5_TDATA -into $return_group -radix hex
add_wave /apatb_axi_interfaces_top/AESL_inst_axi_interfaces/d_i_4_TREADY -into $return_group -color #ffff00 -radix hex
add_wave /apatb_axi_interfaces_top/AESL_inst_axi_interfaces/d_i_4_TDATA -into $return_group -radix hex
add_wave /apatb_axi_interfaces_top/AESL_inst_axi_interfaces/d_i_3_TREADY -into $return_group -color #ffff00 -radix hex
add_wave /apatb_axi_interfaces_top/AESL_inst_axi_interfaces/d_i_3_TDATA -into $return_group -radix hex
add_wave /apatb_axi_interfaces_top/AESL_inst_axi_interfaces/d_i_2_TREADY -into $return_group -color #ffff00 -radix hex
add_wave /apatb_axi_interfaces_top/AESL_inst_axi_interfaces/d_i_2_TDATA -into $return_group -radix hex
add_wave /apatb_axi_interfaces_top/AESL_inst_axi_interfaces/d_i_1_TREADY -into $return_group -color #ffff00 -radix hex
add_wave /apatb_axi_interfaces_top/AESL_inst_axi_interfaces/d_i_1_TDATA -into $return_group -radix hex
add_wave /apatb_axi_interfaces_top/AESL_inst_axi_interfaces/d_i_0_TREADY -into $return_group -color #ffff00 -radix hex
add_wave /apatb_axi_interfaces_top/AESL_inst_axi_interfaces/d_i_0_TDATA -into $return_group -radix hex
add_wave /apatb_axi_interfaces_top/AESL_inst_axi_interfaces/d_i_7_TVALID -into $return_group -color #ffff00 -radix hex
add_wave /apatb_axi_interfaces_top/AESL_inst_axi_interfaces/d_i_6_TVALID -into $return_group -color #ffff00 -radix hex
add_wave /apatb_axi_interfaces_top/AESL_inst_axi_interfaces/d_i_5_TVALID -into $return_group -color #ffff00 -radix hex
add_wave /apatb_axi_interfaces_top/AESL_inst_axi_interfaces/d_i_4_TVALID -into $return_group -color #ffff00 -radix hex
add_wave /apatb_axi_interfaces_top/AESL_inst_axi_interfaces/d_i_3_TVALID -into $return_group -color #ffff00 -radix hex
add_wave /apatb_axi_interfaces_top/AESL_inst_axi_interfaces/d_i_2_TVALID -into $return_group -color #ffff00 -radix hex
add_wave /apatb_axi_interfaces_top/AESL_inst_axi_interfaces/d_i_1_TVALID -into $return_group -color #ffff00 -radix hex
add_wave /apatb_axi_interfaces_top/AESL_inst_axi_interfaces/d_i_0_TVALID -into $return_group -color #ffff00 -radix hex
set blocksiggroup [add_wave_group "Block-level IO Handshake" -into $designtopgroup]
add_wave /apatb_axi_interfaces_top/AESL_inst_axi_interfaces/ap_start -into $blocksiggroup
add_wave /apatb_axi_interfaces_top/AESL_inst_axi_interfaces/ap_done -into $blocksiggroup
add_wave /apatb_axi_interfaces_top/AESL_inst_axi_interfaces/ap_idle -into $blocksiggroup
add_wave /apatb_axi_interfaces_top/AESL_inst_axi_interfaces/ap_ready -into $blocksiggroup
set resetgroup [add_wave_group "Reset" -into $designtopgroup]
add_wave /apatb_axi_interfaces_top/AESL_inst_axi_interfaces/ap_rst_n -into $resetgroup
set clockgroup [add_wave_group "Clock" -into $designtopgroup]
add_wave /apatb_axi_interfaces_top/AESL_inst_axi_interfaces/ap_clk -into $clockgroup
set testbenchgroup [add_wave_group "Test Bench Signals"]
set tbinternalsiggroup [add_wave_group "Internal Signals" -into $testbenchgroup]
set tb_simstatus_group [add_wave_group "Simulation Status" -into $tbinternalsiggroup]
set tb_portdepth_group [add_wave_group "Port Depth" -into $tbinternalsiggroup]
add_wave /apatb_axi_interfaces_top/AUTOTB_TRANSACTION_NUM -into $tb_simstatus_group -radix hex
add_wave /apatb_axi_interfaces_top/ready_cnt -into $tb_simstatus_group -radix hex
add_wave /apatb_axi_interfaces_top/done_cnt -into $tb_simstatus_group -radix hex
add_wave /apatb_axi_interfaces_top/LENGTH_d_o_0 -into $tb_portdepth_group -radix hex
add_wave /apatb_axi_interfaces_top/LENGTH_d_o_1 -into $tb_portdepth_group -radix hex
add_wave /apatb_axi_interfaces_top/LENGTH_d_o_2 -into $tb_portdepth_group -radix hex
add_wave /apatb_axi_interfaces_top/LENGTH_d_o_3 -into $tb_portdepth_group -radix hex
add_wave /apatb_axi_interfaces_top/LENGTH_d_o_4 -into $tb_portdepth_group -radix hex
add_wave /apatb_axi_interfaces_top/LENGTH_d_o_5 -into $tb_portdepth_group -radix hex
add_wave /apatb_axi_interfaces_top/LENGTH_d_o_6 -into $tb_portdepth_group -radix hex
add_wave /apatb_axi_interfaces_top/LENGTH_d_o_7 -into $tb_portdepth_group -radix hex
add_wave /apatb_axi_interfaces_top/LENGTH_d_i_0 -into $tb_portdepth_group -radix hex
add_wave /apatb_axi_interfaces_top/LENGTH_d_i_1 -into $tb_portdepth_group -radix hex
add_wave /apatb_axi_interfaces_top/LENGTH_d_i_2 -into $tb_portdepth_group -radix hex
add_wave /apatb_axi_interfaces_top/LENGTH_d_i_3 -into $tb_portdepth_group -radix hex
add_wave /apatb_axi_interfaces_top/LENGTH_d_i_4 -into $tb_portdepth_group -radix hex
add_wave /apatb_axi_interfaces_top/LENGTH_d_i_5 -into $tb_portdepth_group -radix hex
add_wave /apatb_axi_interfaces_top/LENGTH_d_i_6 -into $tb_portdepth_group -radix hex
add_wave /apatb_axi_interfaces_top/LENGTH_d_i_7 -into $tb_portdepth_group -radix hex
set tbcoutputgroup [add_wave_group "C Outputs" -into $testbenchgroup]
set tb_return_group [add_wave_group return(axis) -into $tbcoutputgroup]
add_wave /apatb_axi_interfaces_top/d_o_7_TVALID -into $tb_return_group -color #ffff00 -radix hex
add_wave /apatb_axi_interfaces_top/d_o_7_TDATA -into $tb_return_group -radix hex
add_wave /apatb_axi_interfaces_top/d_o_6_TVALID -into $tb_return_group -color #ffff00 -radix hex
add_wave /apatb_axi_interfaces_top/d_o_6_TDATA -into $tb_return_group -radix hex
add_wave /apatb_axi_interfaces_top/d_o_5_TVALID -into $tb_return_group -color #ffff00 -radix hex
add_wave /apatb_axi_interfaces_top/d_o_5_TDATA -into $tb_return_group -radix hex
add_wave /apatb_axi_interfaces_top/d_o_4_TVALID -into $tb_return_group -color #ffff00 -radix hex
add_wave /apatb_axi_interfaces_top/d_o_4_TDATA -into $tb_return_group -radix hex
add_wave /apatb_axi_interfaces_top/d_o_3_TVALID -into $tb_return_group -color #ffff00 -radix hex
add_wave /apatb_axi_interfaces_top/d_o_3_TDATA -into $tb_return_group -radix hex
add_wave /apatb_axi_interfaces_top/d_o_2_TVALID -into $tb_return_group -color #ffff00 -radix hex
add_wave /apatb_axi_interfaces_top/d_o_2_TDATA -into $tb_return_group -radix hex
add_wave /apatb_axi_interfaces_top/d_o_1_TVALID -into $tb_return_group -color #ffff00 -radix hex
add_wave /apatb_axi_interfaces_top/d_o_1_TDATA -into $tb_return_group -radix hex
add_wave /apatb_axi_interfaces_top/d_o_0_TVALID -into $tb_return_group -color #ffff00 -radix hex
add_wave /apatb_axi_interfaces_top/d_o_0_TDATA -into $tb_return_group -radix hex
add_wave /apatb_axi_interfaces_top/d_o_7_TREADY -into $tb_return_group -color #ffff00 -radix hex
add_wave /apatb_axi_interfaces_top/d_o_6_TREADY -into $tb_return_group -color #ffff00 -radix hex
add_wave /apatb_axi_interfaces_top/d_o_5_TREADY -into $tb_return_group -color #ffff00 -radix hex
add_wave /apatb_axi_interfaces_top/d_o_4_TREADY -into $tb_return_group -color #ffff00 -radix hex
add_wave /apatb_axi_interfaces_top/d_o_3_TREADY -into $tb_return_group -color #ffff00 -radix hex
add_wave /apatb_axi_interfaces_top/d_o_2_TREADY -into $tb_return_group -color #ffff00 -radix hex
add_wave /apatb_axi_interfaces_top/d_o_1_TREADY -into $tb_return_group -color #ffff00 -radix hex
add_wave /apatb_axi_interfaces_top/d_o_0_TREADY -into $tb_return_group -color #ffff00 -radix hex
set tbcinputgroup [add_wave_group "C Inputs" -into $testbenchgroup]
set tb_return_group [add_wave_group return(axis) -into $tbcinputgroup]
add_wave /apatb_axi_interfaces_top/d_i_7_TREADY -into $tb_return_group -color #ffff00 -radix hex
add_wave /apatb_axi_interfaces_top/d_i_7_TDATA -into $tb_return_group -radix hex
add_wave /apatb_axi_interfaces_top/d_i_6_TREADY -into $tb_return_group -color #ffff00 -radix hex
add_wave /apatb_axi_interfaces_top/d_i_6_TDATA -into $tb_return_group -radix hex
add_wave /apatb_axi_interfaces_top/d_i_5_TREADY -into $tb_return_group -color #ffff00 -radix hex
add_wave /apatb_axi_interfaces_top/d_i_5_TDATA -into $tb_return_group -radix hex
add_wave /apatb_axi_interfaces_top/d_i_4_TREADY -into $tb_return_group -color #ffff00 -radix hex
add_wave /apatb_axi_interfaces_top/d_i_4_TDATA -into $tb_return_group -radix hex
add_wave /apatb_axi_interfaces_top/d_i_3_TREADY -into $tb_return_group -color #ffff00 -radix hex
add_wave /apatb_axi_interfaces_top/d_i_3_TDATA -into $tb_return_group -radix hex
add_wave /apatb_axi_interfaces_top/d_i_2_TREADY -into $tb_return_group -color #ffff00 -radix hex
add_wave /apatb_axi_interfaces_top/d_i_2_TDATA -into $tb_return_group -radix hex
add_wave /apatb_axi_interfaces_top/d_i_1_TREADY -into $tb_return_group -color #ffff00 -radix hex
add_wave /apatb_axi_interfaces_top/d_i_1_TDATA -into $tb_return_group -radix hex
add_wave /apatb_axi_interfaces_top/d_i_0_TREADY -into $tb_return_group -color #ffff00 -radix hex
add_wave /apatb_axi_interfaces_top/d_i_0_TDATA -into $tb_return_group -radix hex
add_wave /apatb_axi_interfaces_top/d_i_7_TVALID -into $tb_return_group -color #ffff00 -radix hex
add_wave /apatb_axi_interfaces_top/d_i_6_TVALID -into $tb_return_group -color #ffff00 -radix hex
add_wave /apatb_axi_interfaces_top/d_i_5_TVALID -into $tb_return_group -color #ffff00 -radix hex
add_wave /apatb_axi_interfaces_top/d_i_4_TVALID -into $tb_return_group -color #ffff00 -radix hex
add_wave /apatb_axi_interfaces_top/d_i_3_TVALID -into $tb_return_group -color #ffff00 -radix hex
add_wave /apatb_axi_interfaces_top/d_i_2_TVALID -into $tb_return_group -color #ffff00 -radix hex
add_wave /apatb_axi_interfaces_top/d_i_1_TVALID -into $tb_return_group -color #ffff00 -radix hex
add_wave /apatb_axi_interfaces_top/d_i_0_TVALID -into $tb_return_group -color #ffff00 -radix hex
save_wave_config axi_interfaces.wcfg
run all
quit

