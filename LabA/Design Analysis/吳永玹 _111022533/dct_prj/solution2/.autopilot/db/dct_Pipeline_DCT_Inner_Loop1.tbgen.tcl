set moduleName dct_Pipeline_DCT_Inner_Loop1
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set hasInterrupt 0
set C_modelName {dct_Pipeline_DCT_Inner_Loop1}
set C_modelType { void 0 }
set C_modelArgList {
	{ zext_ln21_1 int 6 regular  }
	{ zext_ln24_1 int 6 regular  }
	{ col_inbuf int 16 regular {array 64 { 1 3 } 1 1 }  }
	{ tmp_2_out int 29 regular {pointer 1}  }
	{ dct_coeff_table int 15 regular {array 64 { 1 } 1 1 } {global 0}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "zext_ln21_1", "interface" : "wire", "bitwidth" : 6, "direction" : "READONLY"} , 
 	{ "Name" : "zext_ln24_1", "interface" : "wire", "bitwidth" : 6, "direction" : "READONLY"} , 
 	{ "Name" : "col_inbuf", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "tmp_2_out", "interface" : "wire", "bitwidth" : 29, "direction" : "WRITEONLY"} , 
 	{ "Name" : "dct_coeff_table", "interface" : "memory", "bitwidth" : 15, "direction" : "READONLY", "extern" : 0} ]}
# RTL Port declarations: 
set portNum 16
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ zext_ln21_1 sc_in sc_lv 6 signal 0 } 
	{ zext_ln24_1 sc_in sc_lv 6 signal 1 } 
	{ col_inbuf_address0 sc_out sc_lv 6 signal 2 } 
	{ col_inbuf_ce0 sc_out sc_logic 1 signal 2 } 
	{ col_inbuf_q0 sc_in sc_lv 16 signal 2 } 
	{ tmp_2_out sc_out sc_lv 29 signal 3 } 
	{ tmp_2_out_ap_vld sc_out sc_logic 1 outvld 3 } 
	{ dct_coeff_table_address0 sc_out sc_lv 6 signal 4 } 
	{ dct_coeff_table_ce0 sc_out sc_logic 1 signal 4 } 
	{ dct_coeff_table_q0 sc_in sc_lv 15 signal 4 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "zext_ln21_1", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "zext_ln21_1", "role": "default" }} , 
 	{ "name": "zext_ln24_1", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "zext_ln24_1", "role": "default" }} , 
 	{ "name": "col_inbuf_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "col_inbuf", "role": "address0" }} , 
 	{ "name": "col_inbuf_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "col_inbuf", "role": "ce0" }} , 
 	{ "name": "col_inbuf_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "col_inbuf", "role": "q0" }} , 
 	{ "name": "tmp_2_out", "direction": "out", "datatype": "sc_lv", "bitwidth":29, "type": "signal", "bundle":{"name": "tmp_2_out", "role": "default" }} , 
 	{ "name": "tmp_2_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "tmp_2_out", "role": "ap_vld" }} , 
 	{ "name": "dct_coeff_table_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "dct_coeff_table", "role": "address0" }} , 
 	{ "name": "dct_coeff_table_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dct_coeff_table", "role": "ce0" }} , 
 	{ "name": "dct_coeff_table_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "dct_coeff_table", "role": "q0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2"],
		"CDFG" : "dct_Pipeline_DCT_Inner_Loop1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "13", "EstimateLatencyMax" : "13",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "zext_ln21_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln24_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "col_inbuf", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "tmp_2_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dct_coeff_table", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "DCT_Inner_Loop", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter4", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter3", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_15s_32s_32_4_1_U12", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	dct_Pipeline_DCT_Inner_Loop1 {
		zext_ln21_1 {Type I LastRead 0 FirstWrite -1}
		zext_ln24_1 {Type I LastRead 0 FirstWrite -1}
		col_inbuf {Type I LastRead 0 FirstWrite -1}
		tmp_2_out {Type O LastRead -1 FirstWrite 3}
		dct_coeff_table {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "13", "Max" : "13"}
	, {"Name" : "Interval", "Min" : "13", "Max" : "13"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	zext_ln21_1 { ap_none {  { zext_ln21_1 in_data 0 6 } } }
	zext_ln24_1 { ap_none {  { zext_ln24_1 in_data 0 6 } } }
	col_inbuf { ap_memory {  { col_inbuf_address0 mem_address 1 6 }  { col_inbuf_ce0 mem_ce 1 1 }  { col_inbuf_q0 in_data 0 16 } } }
	tmp_2_out { ap_vld {  { tmp_2_out out_data 1 29 }  { tmp_2_out_ap_vld out_vld 1 1 } } }
	dct_coeff_table { ap_memory {  { dct_coeff_table_address0 mem_address 1 6 }  { dct_coeff_table_ce0 mem_ce 1 1 }  { dct_coeff_table_q0 in_data 0 15 } } }
}
