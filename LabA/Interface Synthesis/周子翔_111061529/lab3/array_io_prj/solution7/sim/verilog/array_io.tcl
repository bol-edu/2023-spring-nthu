
log_wave -r /
set designtopgroup [add_wave_group "Design Top Signals"]
set coutputgroup [add_wave_group "C Outputs" -into $designtopgroup]
set return_group [add_wave_group return(fifo) -into $coutputgroup]
add_wave /apatb_array_io_top/AESL_inst_array_io/d_o_7_write -into $return_group -color #ffff00 -radix hex
add_wave /apatb_array_io_top/AESL_inst_array_io/d_o_7_full_n -into $return_group -color #ffff00 -radix hex
add_wave /apatb_array_io_top/AESL_inst_array_io/d_o_7_din -into $return_group -radix hex
add_wave /apatb_array_io_top/AESL_inst_array_io/d_o_6_write -into $return_group -color #ffff00 -radix hex
add_wave /apatb_array_io_top/AESL_inst_array_io/d_o_6_full_n -into $return_group -color #ffff00 -radix hex
add_wave /apatb_array_io_top/AESL_inst_array_io/d_o_6_din -into $return_group -radix hex
add_wave /apatb_array_io_top/AESL_inst_array_io/d_o_5_write -into $return_group -color #ffff00 -radix hex
add_wave /apatb_array_io_top/AESL_inst_array_io/d_o_5_full_n -into $return_group -color #ffff00 -radix hex
add_wave /apatb_array_io_top/AESL_inst_array_io/d_o_5_din -into $return_group -radix hex
add_wave /apatb_array_io_top/AESL_inst_array_io/d_o_4_write -into $return_group -color #ffff00 -radix hex
add_wave /apatb_array_io_top/AESL_inst_array_io/d_o_4_full_n -into $return_group -color #ffff00 -radix hex
add_wave /apatb_array_io_top/AESL_inst_array_io/d_o_4_din -into $return_group -radix hex
add_wave /apatb_array_io_top/AESL_inst_array_io/d_o_3_write -into $return_group -color #ffff00 -radix hex
add_wave /apatb_array_io_top/AESL_inst_array_io/d_o_3_full_n -into $return_group -color #ffff00 -radix hex
add_wave /apatb_array_io_top/AESL_inst_array_io/d_o_3_din -into $return_group -radix hex
add_wave /apatb_array_io_top/AESL_inst_array_io/d_o_2_write -into $return_group -color #ffff00 -radix hex
add_wave /apatb_array_io_top/AESL_inst_array_io/d_o_2_full_n -into $return_group -color #ffff00 -radix hex
add_wave /apatb_array_io_top/AESL_inst_array_io/d_o_2_din -into $return_group -radix hex
add_wave /apatb_array_io_top/AESL_inst_array_io/d_o_1_write -into $return_group -color #ffff00 -radix hex
add_wave /apatb_array_io_top/AESL_inst_array_io/d_o_1_full_n -into $return_group -color #ffff00 -radix hex
add_wave /apatb_array_io_top/AESL_inst_array_io/d_o_1_din -into $return_group -radix hex
add_wave /apatb_array_io_top/AESL_inst_array_io/d_o_0_write -into $return_group -color #ffff00 -radix hex
add_wave /apatb_array_io_top/AESL_inst_array_io/d_o_0_full_n -into $return_group -color #ffff00 -radix hex
add_wave /apatb_array_io_top/AESL_inst_array_io/d_o_0_din -into $return_group -radix hex
set cinputgroup [add_wave_group "C Inputs" -into $designtopgroup]
set return_group [add_wave_group return(fifo) -into $cinputgroup]
add_wave /apatb_array_io_top/AESL_inst_array_io/d_i_7_read -into $return_group -color #ffff00 -radix hex
add_wave /apatb_array_io_top/AESL_inst_array_io/d_i_7_empty_n -into $return_group -color #ffff00 -radix hex
add_wave /apatb_array_io_top/AESL_inst_array_io/d_i_7_dout -into $return_group -radix hex
add_wave /apatb_array_io_top/AESL_inst_array_io/d_i_6_read -into $return_group -color #ffff00 -radix hex
add_wave /apatb_array_io_top/AESL_inst_array_io/d_i_6_empty_n -into $return_group -color #ffff00 -radix hex
add_wave /apatb_array_io_top/AESL_inst_array_io/d_i_6_dout -into $return_group -radix hex
add_wave /apatb_array_io_top/AESL_inst_array_io/d_i_5_read -into $return_group -color #ffff00 -radix hex
add_wave /apatb_array_io_top/AESL_inst_array_io/d_i_5_empty_n -into $return_group -color #ffff00 -radix hex
add_wave /apatb_array_io_top/AESL_inst_array_io/d_i_5_dout -into $return_group -radix hex
add_wave /apatb_array_io_top/AESL_inst_array_io/d_i_4_read -into $return_group -color #ffff00 -radix hex
add_wave /apatb_array_io_top/AESL_inst_array_io/d_i_4_empty_n -into $return_group -color #ffff00 -radix hex
add_wave /apatb_array_io_top/AESL_inst_array_io/d_i_4_dout -into $return_group -radix hex
add_wave /apatb_array_io_top/AESL_inst_array_io/d_i_3_read -into $return_group -color #ffff00 -radix hex
add_wave /apatb_array_io_top/AESL_inst_array_io/d_i_3_empty_n -into $return_group -color #ffff00 -radix hex
add_wave /apatb_array_io_top/AESL_inst_array_io/d_i_3_dout -into $return_group -radix hex
add_wave /apatb_array_io_top/AESL_inst_array_io/d_i_2_read -into $return_group -color #ffff00 -radix hex
add_wave /apatb_array_io_top/AESL_inst_array_io/d_i_2_empty_n -into $return_group -color #ffff00 -radix hex
add_wave /apatb_array_io_top/AESL_inst_array_io/d_i_2_dout -into $return_group -radix hex
add_wave /apatb_array_io_top/AESL_inst_array_io/d_i_1_read -into $return_group -color #ffff00 -radix hex
add_wave /apatb_array_io_top/AESL_inst_array_io/d_i_1_empty_n -into $return_group -color #ffff00 -radix hex
add_wave /apatb_array_io_top/AESL_inst_array_io/d_i_1_dout -into $return_group -radix hex
add_wave /apatb_array_io_top/AESL_inst_array_io/d_i_0_read -into $return_group -color #ffff00 -radix hex
add_wave /apatb_array_io_top/AESL_inst_array_io/d_i_0_empty_n -into $return_group -color #ffff00 -radix hex
add_wave /apatb_array_io_top/AESL_inst_array_io/d_i_0_dout -into $return_group -radix hex
set blocksiggroup [add_wave_group "Block-level IO Handshake" -into $designtopgroup]
add_wave /apatb_array_io_top/AESL_inst_array_io/ap_start -into $blocksiggroup
add_wave /apatb_array_io_top/AESL_inst_array_io/ap_done -into $blocksiggroup
add_wave /apatb_array_io_top/AESL_inst_array_io/ap_idle -into $blocksiggroup
add_wave /apatb_array_io_top/AESL_inst_array_io/ap_ready -into $blocksiggroup
set resetgroup [add_wave_group "Reset" -into $designtopgroup]
add_wave /apatb_array_io_top/AESL_inst_array_io/ap_rst -into $resetgroup
set clockgroup [add_wave_group "Clock" -into $designtopgroup]
add_wave /apatb_array_io_top/AESL_inst_array_io/ap_clk -into $clockgroup
set testbenchgroup [add_wave_group "Test Bench Signals"]
set tbinternalsiggroup [add_wave_group "Internal Signals" -into $testbenchgroup]
set tb_simstatus_group [add_wave_group "Simulation Status" -into $tbinternalsiggroup]
set tb_portdepth_group [add_wave_group "Port Depth" -into $tbinternalsiggroup]
add_wave /apatb_array_io_top/AUTOTB_TRANSACTION_NUM -into $tb_simstatus_group -radix hex
add_wave /apatb_array_io_top/ready_cnt -into $tb_simstatus_group -radix hex
add_wave /apatb_array_io_top/done_cnt -into $tb_simstatus_group -radix hex
add_wave /apatb_array_io_top/LENGTH_d_o_0 -into $tb_portdepth_group -radix hex
add_wave /apatb_array_io_top/LENGTH_d_o_1 -into $tb_portdepth_group -radix hex
add_wave /apatb_array_io_top/LENGTH_d_o_2 -into $tb_portdepth_group -radix hex
add_wave /apatb_array_io_top/LENGTH_d_o_3 -into $tb_portdepth_group -radix hex
add_wave /apatb_array_io_top/LENGTH_d_o_4 -into $tb_portdepth_group -radix hex
add_wave /apatb_array_io_top/LENGTH_d_o_5 -into $tb_portdepth_group -radix hex
add_wave /apatb_array_io_top/LENGTH_d_o_6 -into $tb_portdepth_group -radix hex
add_wave /apatb_array_io_top/LENGTH_d_o_7 -into $tb_portdepth_group -radix hex
add_wave /apatb_array_io_top/LENGTH_d_i_0 -into $tb_portdepth_group -radix hex
add_wave /apatb_array_io_top/LENGTH_d_i_1 -into $tb_portdepth_group -radix hex
add_wave /apatb_array_io_top/LENGTH_d_i_2 -into $tb_portdepth_group -radix hex
add_wave /apatb_array_io_top/LENGTH_d_i_3 -into $tb_portdepth_group -radix hex
add_wave /apatb_array_io_top/LENGTH_d_i_4 -into $tb_portdepth_group -radix hex
add_wave /apatb_array_io_top/LENGTH_d_i_5 -into $tb_portdepth_group -radix hex
add_wave /apatb_array_io_top/LENGTH_d_i_6 -into $tb_portdepth_group -radix hex
add_wave /apatb_array_io_top/LENGTH_d_i_7 -into $tb_portdepth_group -radix hex
set tbcoutputgroup [add_wave_group "C Outputs" -into $testbenchgroup]
set tb_return_group [add_wave_group return(fifo) -into $tbcoutputgroup]
add_wave /apatb_array_io_top/d_o_7_write -into $tb_return_group -color #ffff00 -radix hex
add_wave /apatb_array_io_top/d_o_7_full_n -into $tb_return_group -color #ffff00 -radix hex
add_wave /apatb_array_io_top/d_o_7_din -into $tb_return_group -radix hex
add_wave /apatb_array_io_top/d_o_6_write -into $tb_return_group -color #ffff00 -radix hex
add_wave /apatb_array_io_top/d_o_6_full_n -into $tb_return_group -color #ffff00 -radix hex
add_wave /apatb_array_io_top/d_o_6_din -into $tb_return_group -radix hex
add_wave /apatb_array_io_top/d_o_5_write -into $tb_return_group -color #ffff00 -radix hex
add_wave /apatb_array_io_top/d_o_5_full_n -into $tb_return_group -color #ffff00 -radix hex
add_wave /apatb_array_io_top/d_o_5_din -into $tb_return_group -radix hex
add_wave /apatb_array_io_top/d_o_4_write -into $tb_return_group -color #ffff00 -radix hex
add_wave /apatb_array_io_top/d_o_4_full_n -into $tb_return_group -color #ffff00 -radix hex
add_wave /apatb_array_io_top/d_o_4_din -into $tb_return_group -radix hex
add_wave /apatb_array_io_top/d_o_3_write -into $tb_return_group -color #ffff00 -radix hex
add_wave /apatb_array_io_top/d_o_3_full_n -into $tb_return_group -color #ffff00 -radix hex
add_wave /apatb_array_io_top/d_o_3_din -into $tb_return_group -radix hex
add_wave /apatb_array_io_top/d_o_2_write -into $tb_return_group -color #ffff00 -radix hex
add_wave /apatb_array_io_top/d_o_2_full_n -into $tb_return_group -color #ffff00 -radix hex
add_wave /apatb_array_io_top/d_o_2_din -into $tb_return_group -radix hex
add_wave /apatb_array_io_top/d_o_1_write -into $tb_return_group -color #ffff00 -radix hex
add_wave /apatb_array_io_top/d_o_1_full_n -into $tb_return_group -color #ffff00 -radix hex
add_wave /apatb_array_io_top/d_o_1_din -into $tb_return_group -radix hex
add_wave /apatb_array_io_top/d_o_0_write -into $tb_return_group -color #ffff00 -radix hex
add_wave /apatb_array_io_top/d_o_0_full_n -into $tb_return_group -color #ffff00 -radix hex
add_wave /apatb_array_io_top/d_o_0_din -into $tb_return_group -radix hex
set tbcinputgroup [add_wave_group "C Inputs" -into $testbenchgroup]
set tb_return_group [add_wave_group return(fifo) -into $tbcinputgroup]
add_wave /apatb_array_io_top/d_i_7_read -into $tb_return_group -color #ffff00 -radix hex
add_wave /apatb_array_io_top/d_i_7_empty_n -into $tb_return_group -color #ffff00 -radix hex
add_wave /apatb_array_io_top/d_i_7_dout -into $tb_return_group -radix hex
add_wave /apatb_array_io_top/d_i_6_read -into $tb_return_group -color #ffff00 -radix hex
add_wave /apatb_array_io_top/d_i_6_empty_n -into $tb_return_group -color #ffff00 -radix hex
add_wave /apatb_array_io_top/d_i_6_dout -into $tb_return_group -radix hex
add_wave /apatb_array_io_top/d_i_5_read -into $tb_return_group -color #ffff00 -radix hex
add_wave /apatb_array_io_top/d_i_5_empty_n -into $tb_return_group -color #ffff00 -radix hex
add_wave /apatb_array_io_top/d_i_5_dout -into $tb_return_group -radix hex
add_wave /apatb_array_io_top/d_i_4_read -into $tb_return_group -color #ffff00 -radix hex
add_wave /apatb_array_io_top/d_i_4_empty_n -into $tb_return_group -color #ffff00 -radix hex
add_wave /apatb_array_io_top/d_i_4_dout -into $tb_return_group -radix hex
add_wave /apatb_array_io_top/d_i_3_read -into $tb_return_group -color #ffff00 -radix hex
add_wave /apatb_array_io_top/d_i_3_empty_n -into $tb_return_group -color #ffff00 -radix hex
add_wave /apatb_array_io_top/d_i_3_dout -into $tb_return_group -radix hex
add_wave /apatb_array_io_top/d_i_2_read -into $tb_return_group -color #ffff00 -radix hex
add_wave /apatb_array_io_top/d_i_2_empty_n -into $tb_return_group -color #ffff00 -radix hex
add_wave /apatb_array_io_top/d_i_2_dout -into $tb_return_group -radix hex
add_wave /apatb_array_io_top/d_i_1_read -into $tb_return_group -color #ffff00 -radix hex
add_wave /apatb_array_io_top/d_i_1_empty_n -into $tb_return_group -color #ffff00 -radix hex
add_wave /apatb_array_io_top/d_i_1_dout -into $tb_return_group -radix hex
add_wave /apatb_array_io_top/d_i_0_read -into $tb_return_group -color #ffff00 -radix hex
add_wave /apatb_array_io_top/d_i_0_empty_n -into $tb_return_group -color #ffff00 -radix hex
add_wave /apatb_array_io_top/d_i_0_dout -into $tb_return_group -radix hex
save_wave_config array_io.wcfg
run all
quit

