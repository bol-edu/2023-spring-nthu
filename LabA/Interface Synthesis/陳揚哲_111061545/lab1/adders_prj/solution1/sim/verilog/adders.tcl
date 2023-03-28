
log_wave [get_objects -filter {type == in_port || type == out_port || type == inout_port || type == port} /apatb_adders_top/AESL_inst_adders/*]
set designtopgroup [add_wave_group "Design Top Signals"]
set coutputgroup [add_wave_group "C Outputs" -into $designtopgroup]
set return_group [add_wave_group return(wire) -into $coutputgroup]
add_wave /apatb_adders_top/AESL_inst_adders/ap_return -into $return_group -radix hex
set cinputgroup [add_wave_group "C Inputs" -into $designtopgroup]
set return_group [add_wave_group return(wire) -into $cinputgroup]
add_wave /apatb_adders_top/AESL_inst_adders/in3 -into $return_group -radix hex
add_wave /apatb_adders_top/AESL_inst_adders/in2 -into $return_group -radix hex
add_wave /apatb_adders_top/AESL_inst_adders/in1 -into $return_group -radix hex
set blocksiggroup [add_wave_group "Block-level IO Handshake" -into $designtopgroup]
add_wave /apatb_adders_top/AESL_inst_adders/ap_start -into $blocksiggroup
add_wave /apatb_adders_top/AESL_inst_adders/ap_done -into $blocksiggroup
add_wave /apatb_adders_top/AESL_inst_adders/ap_idle -into $blocksiggroup
add_wave /apatb_adders_top/AESL_inst_adders/ap_ready -into $blocksiggroup
set resetgroup [add_wave_group "Reset" -into $designtopgroup]
set clockgroup [add_wave_group "Clock" -into $designtopgroup]
save_wave_config adders.wcfg
run all
quit

