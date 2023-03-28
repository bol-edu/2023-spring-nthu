set moduleName dct_1d_Pipeline_DCT_Outer_Loop
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
set C_modelName {dct_1d_Pipeline_DCT_Outer_Loop}
set C_modelType { void 0 }
set C_modelArgList {
	{ zext_ln22 int 6 regular  }
	{ dst int 16 regular {array 64 { 0 3 } 0 1 }  }
	{ sext_ln8 int 16 regular  }
	{ sext_ln19 int 16 regular  }
	{ sext_ln19_1 int 16 regular  }
	{ sext_ln19_2 int 16 regular  }
	{ sext_ln19_3 int 16 regular  }
	{ sext_ln19_4 int 16 regular  }
	{ sext_ln19_5 int 16 regular  }
	{ sext_ln22 int 16 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "zext_ln22", "interface" : "wire", "bitwidth" : 6, "direction" : "READONLY"} , 
 	{ "Name" : "dst", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "sext_ln8", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "sext_ln19", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "sext_ln19_1", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "sext_ln19_2", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "sext_ln19_3", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "sext_ln19_4", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "sext_ln19_5", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "sext_ln22", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 19
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ zext_ln22 sc_in sc_lv 6 signal 0 } 
	{ dst_address0 sc_out sc_lv 6 signal 1 } 
	{ dst_ce0 sc_out sc_logic 1 signal 1 } 
	{ dst_we0 sc_out sc_logic 1 signal 1 } 
	{ dst_d0 sc_out sc_lv 16 signal 1 } 
	{ sext_ln8 sc_in sc_lv 16 signal 2 } 
	{ sext_ln19 sc_in sc_lv 16 signal 3 } 
	{ sext_ln19_1 sc_in sc_lv 16 signal 4 } 
	{ sext_ln19_2 sc_in sc_lv 16 signal 5 } 
	{ sext_ln19_3 sc_in sc_lv 16 signal 6 } 
	{ sext_ln19_4 sc_in sc_lv 16 signal 7 } 
	{ sext_ln19_5 sc_in sc_lv 16 signal 8 } 
	{ sext_ln22 sc_in sc_lv 16 signal 9 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "zext_ln22", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "zext_ln22", "role": "default" }} , 
 	{ "name": "dst_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "dst", "role": "address0" }} , 
 	{ "name": "dst_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dst", "role": "ce0" }} , 
 	{ "name": "dst_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dst", "role": "we0" }} , 
 	{ "name": "dst_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "dst", "role": "d0" }} , 
 	{ "name": "sext_ln8", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "sext_ln8", "role": "default" }} , 
 	{ "name": "sext_ln19", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "sext_ln19", "role": "default" }} , 
 	{ "name": "sext_ln19_1", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "sext_ln19_1", "role": "default" }} , 
 	{ "name": "sext_ln19_2", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "sext_ln19_2", "role": "default" }} , 
 	{ "name": "sext_ln19_3", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "sext_ln19_3", "role": "default" }} , 
 	{ "name": "sext_ln19_4", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "sext_ln19_4", "role": "default" }} , 
 	{ "name": "sext_ln19_5", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "sext_ln19_5", "role": "default" }} , 
 	{ "name": "sext_ln22", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "sext_ln22", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17"],
		"CDFG" : "dct_1d_Pipeline_DCT_Outer_Loop",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "16", "EstimateLatencyMax" : "16",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "zext_ln22", "Type" : "None", "Direction" : "I"},
			{"Name" : "dst", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "sext_ln8", "Type" : "None", "Direction" : "I"},
			{"Name" : "sext_ln19", "Type" : "None", "Direction" : "I"},
			{"Name" : "sext_ln19_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "sext_ln19_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "sext_ln19_3", "Type" : "None", "Direction" : "I"},
			{"Name" : "sext_ln19_4", "Type" : "None", "Direction" : "I"},
			{"Name" : "sext_ln19_5", "Type" : "None", "Direction" : "I"},
			{"Name" : "sext_ln22", "Type" : "None", "Direction" : "I"},
			{"Name" : "dct_1d_short_short_dct_coeff_table", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "dct_1d_short_short_dct_coeff_table_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "dct_1d_short_short_dct_coeff_table_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "dct_1d_short_short_dct_coeff_table_3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "dct_1d_short_short_dct_coeff_table_4", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "dct_1d_short_short_dct_coeff_table_5", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "dct_1d_short_short_dct_coeff_table_6", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "dct_1d_short_short_dct_coeff_table_7", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "DCT_Outer_Loop", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter7", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter7", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dct_1d_short_short_dct_coeff_table_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dct_1d_short_short_dct_coeff_table_1_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dct_1d_short_short_dct_coeff_table_2_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dct_1d_short_short_dct_coeff_table_3_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dct_1d_short_short_dct_coeff_table_4_U", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dct_1d_short_short_dct_coeff_table_5_U", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dct_1d_short_short_dct_coeff_table_6_U", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dct_1d_short_short_dct_coeff_table_7_U", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_mul_15s_16s_29_4_1_U3", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_15s_16s_13ns_29_4_1_U4", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_mul_14ns_16s_29_4_1_U5", "Parent" : "0"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_mul_15s_16s_29_4_1_U6", "Parent" : "0"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_15s_16s_29s_29_4_1_U7", "Parent" : "0"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_15s_16s_29ns_29_4_1_U8", "Parent" : "0"},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_15s_16s_29s_29_4_1_U9", "Parent" : "0"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_15s_16s_29s_29_4_1_U10", "Parent" : "0"},
	{"ID" : "17", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	dct_1d_Pipeline_DCT_Outer_Loop {
		zext_ln22 {Type I LastRead 0 FirstWrite -1}
		dst {Type O LastRead -1 FirstWrite 7}
		sext_ln8 {Type I LastRead 0 FirstWrite -1}
		sext_ln19 {Type I LastRead 0 FirstWrite -1}
		sext_ln19_1 {Type I LastRead 0 FirstWrite -1}
		sext_ln19_2 {Type I LastRead 0 FirstWrite -1}
		sext_ln19_3 {Type I LastRead 0 FirstWrite -1}
		sext_ln19_4 {Type I LastRead 0 FirstWrite -1}
		sext_ln19_5 {Type I LastRead 0 FirstWrite -1}
		sext_ln22 {Type I LastRead 0 FirstWrite -1}
		dct_1d_short_short_dct_coeff_table {Type I LastRead -1 FirstWrite -1}
		dct_1d_short_short_dct_coeff_table_1 {Type I LastRead -1 FirstWrite -1}
		dct_1d_short_short_dct_coeff_table_2 {Type I LastRead -1 FirstWrite -1}
		dct_1d_short_short_dct_coeff_table_3 {Type I LastRead -1 FirstWrite -1}
		dct_1d_short_short_dct_coeff_table_4 {Type I LastRead -1 FirstWrite -1}
		dct_1d_short_short_dct_coeff_table_5 {Type I LastRead -1 FirstWrite -1}
		dct_1d_short_short_dct_coeff_table_6 {Type I LastRead -1 FirstWrite -1}
		dct_1d_short_short_dct_coeff_table_7 {Type I LastRead -1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "16", "Max" : "16"}
	, {"Name" : "Interval", "Min" : "16", "Max" : "16"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	zext_ln22 { ap_none {  { zext_ln22 in_data 0 6 } } }
	dst { ap_memory {  { dst_address0 mem_address 1 6 }  { dst_ce0 mem_ce 1 1 }  { dst_we0 mem_we 1 1 }  { dst_d0 mem_din 1 16 } } }
	sext_ln8 { ap_none {  { sext_ln8 in_data 0 16 } } }
	sext_ln19 { ap_none {  { sext_ln19 in_data 0 16 } } }
	sext_ln19_1 { ap_none {  { sext_ln19_1 in_data 0 16 } } }
	sext_ln19_2 { ap_none {  { sext_ln19_2 in_data 0 16 } } }
	sext_ln19_3 { ap_none {  { sext_ln19_3 in_data 0 16 } } }
	sext_ln19_4 { ap_none {  { sext_ln19_4 in_data 0 16 } } }
	sext_ln19_5 { ap_none {  { sext_ln19_5 in_data 0 16 } } }
	sext_ln22 { ap_none {  { sext_ln22 in_data 0 16 } } }
}
