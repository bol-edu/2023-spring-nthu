set moduleName Loop_Row_DCT_Loop_proc
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
set C_modelName {Loop_Row_DCT_Loop_proc}
set C_modelType { void 0 }
set C_modelArgList {
	{ buf_2d_in int 16 regular {array 8 { 1 3 } 1 1 }  }
	{ buf_2d_in_8 int 16 regular {array 8 { 1 3 } 1 1 }  }
	{ buf_2d_in_9 int 16 regular {array 8 { 1 3 } 1 1 }  }
	{ buf_2d_in_10 int 16 regular {array 8 { 1 3 } 1 1 }  }
	{ buf_2d_in_11 int 16 regular {array 8 { 1 3 } 1 1 }  }
	{ buf_2d_in_12 int 16 regular {array 8 { 1 3 } 1 1 }  }
	{ buf_2d_in_13 int 16 regular {array 8 { 1 3 } 1 1 }  }
	{ buf_2d_in_14 int 16 regular {array 8 { 1 3 } 1 1 }  }
	{ row_outbuf int 16 regular {array 64 { 0 3 } 0 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "buf_2d_in", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "buf_2d_in_8", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "buf_2d_in_9", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "buf_2d_in_10", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "buf_2d_in_11", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "buf_2d_in_12", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "buf_2d_in_13", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "buf_2d_in_14", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "row_outbuf", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 35
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ buf_2d_in_address0 sc_out sc_lv 3 signal 0 } 
	{ buf_2d_in_ce0 sc_out sc_logic 1 signal 0 } 
	{ buf_2d_in_q0 sc_in sc_lv 16 signal 0 } 
	{ buf_2d_in_8_address0 sc_out sc_lv 3 signal 1 } 
	{ buf_2d_in_8_ce0 sc_out sc_logic 1 signal 1 } 
	{ buf_2d_in_8_q0 sc_in sc_lv 16 signal 1 } 
	{ buf_2d_in_9_address0 sc_out sc_lv 3 signal 2 } 
	{ buf_2d_in_9_ce0 sc_out sc_logic 1 signal 2 } 
	{ buf_2d_in_9_q0 sc_in sc_lv 16 signal 2 } 
	{ buf_2d_in_10_address0 sc_out sc_lv 3 signal 3 } 
	{ buf_2d_in_10_ce0 sc_out sc_logic 1 signal 3 } 
	{ buf_2d_in_10_q0 sc_in sc_lv 16 signal 3 } 
	{ buf_2d_in_11_address0 sc_out sc_lv 3 signal 4 } 
	{ buf_2d_in_11_ce0 sc_out sc_logic 1 signal 4 } 
	{ buf_2d_in_11_q0 sc_in sc_lv 16 signal 4 } 
	{ buf_2d_in_12_address0 sc_out sc_lv 3 signal 5 } 
	{ buf_2d_in_12_ce0 sc_out sc_logic 1 signal 5 } 
	{ buf_2d_in_12_q0 sc_in sc_lv 16 signal 5 } 
	{ buf_2d_in_13_address0 sc_out sc_lv 3 signal 6 } 
	{ buf_2d_in_13_ce0 sc_out sc_logic 1 signal 6 } 
	{ buf_2d_in_13_q0 sc_in sc_lv 16 signal 6 } 
	{ buf_2d_in_14_address0 sc_out sc_lv 3 signal 7 } 
	{ buf_2d_in_14_ce0 sc_out sc_logic 1 signal 7 } 
	{ buf_2d_in_14_q0 sc_in sc_lv 16 signal 7 } 
	{ row_outbuf_address0 sc_out sc_lv 6 signal 8 } 
	{ row_outbuf_ce0 sc_out sc_logic 1 signal 8 } 
	{ row_outbuf_we0 sc_out sc_logic 1 signal 8 } 
	{ row_outbuf_d0 sc_out sc_lv 16 signal 8 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "buf_2d_in_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "buf_2d_in", "role": "address0" }} , 
 	{ "name": "buf_2d_in_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buf_2d_in", "role": "ce0" }} , 
 	{ "name": "buf_2d_in_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "buf_2d_in", "role": "q0" }} , 
 	{ "name": "buf_2d_in_8_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "buf_2d_in_8", "role": "address0" }} , 
 	{ "name": "buf_2d_in_8_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buf_2d_in_8", "role": "ce0" }} , 
 	{ "name": "buf_2d_in_8_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "buf_2d_in_8", "role": "q0" }} , 
 	{ "name": "buf_2d_in_9_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "buf_2d_in_9", "role": "address0" }} , 
 	{ "name": "buf_2d_in_9_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buf_2d_in_9", "role": "ce0" }} , 
 	{ "name": "buf_2d_in_9_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "buf_2d_in_9", "role": "q0" }} , 
 	{ "name": "buf_2d_in_10_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "buf_2d_in_10", "role": "address0" }} , 
 	{ "name": "buf_2d_in_10_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buf_2d_in_10", "role": "ce0" }} , 
 	{ "name": "buf_2d_in_10_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "buf_2d_in_10", "role": "q0" }} , 
 	{ "name": "buf_2d_in_11_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "buf_2d_in_11", "role": "address0" }} , 
 	{ "name": "buf_2d_in_11_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buf_2d_in_11", "role": "ce0" }} , 
 	{ "name": "buf_2d_in_11_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "buf_2d_in_11", "role": "q0" }} , 
 	{ "name": "buf_2d_in_12_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "buf_2d_in_12", "role": "address0" }} , 
 	{ "name": "buf_2d_in_12_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buf_2d_in_12", "role": "ce0" }} , 
 	{ "name": "buf_2d_in_12_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "buf_2d_in_12", "role": "q0" }} , 
 	{ "name": "buf_2d_in_13_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "buf_2d_in_13", "role": "address0" }} , 
 	{ "name": "buf_2d_in_13_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buf_2d_in_13", "role": "ce0" }} , 
 	{ "name": "buf_2d_in_13_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "buf_2d_in_13", "role": "q0" }} , 
 	{ "name": "buf_2d_in_14_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "buf_2d_in_14", "role": "address0" }} , 
 	{ "name": "buf_2d_in_14_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buf_2d_in_14", "role": "ce0" }} , 
 	{ "name": "buf_2d_in_14_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "buf_2d_in_14", "role": "q0" }} , 
 	{ "name": "row_outbuf_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "row_outbuf", "role": "address0" }} , 
 	{ "name": "row_outbuf_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "row_outbuf", "role": "ce0" }} , 
 	{ "name": "row_outbuf_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "row_outbuf", "role": "we0" }} , 
 	{ "name": "row_outbuf_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "row_outbuf", "role": "d0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17"],
		"CDFG" : "Loop_Row_DCT_Loop_proc",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "72", "EstimateLatencyMax" : "72",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "buf_2d_in", "Type" : "Memory", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0"},
			{"Name" : "buf_2d_in_8", "Type" : "Memory", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0"},
			{"Name" : "buf_2d_in_9", "Type" : "Memory", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0"},
			{"Name" : "buf_2d_in_10", "Type" : "Memory", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0"},
			{"Name" : "buf_2d_in_11", "Type" : "Memory", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0"},
			{"Name" : "buf_2d_in_12", "Type" : "Memory", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0"},
			{"Name" : "buf_2d_in_13", "Type" : "Memory", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0"},
			{"Name" : "buf_2d_in_14", "Type" : "Memory", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0"},
			{"Name" : "row_outbuf", "Type" : "Memory", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0"},
			{"Name" : "dct_1d_short_short_dct_coeff_table", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "dct_1d_short_short_dct_coeff_table_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "dct_1d_short_short_dct_coeff_table_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "dct_1d_short_short_dct_coeff_table_3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "dct_1d_short_short_dct_coeff_table_4", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "dct_1d_short_short_dct_coeff_table_5", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "dct_1d_short_short_dct_coeff_table_6", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "dct_1d_short_short_dct_coeff_table_7", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "Row_DCT_Loop_DCT_Outer_Loop", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter7", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter7", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "1"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dct_1d_short_short_dct_coeff_table_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dct_1d_short_short_dct_coeff_table_1_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dct_1d_short_short_dct_coeff_table_2_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dct_1d_short_short_dct_coeff_table_3_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dct_1d_short_short_dct_coeff_table_4_U", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dct_1d_short_short_dct_coeff_table_5_U", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dct_1d_short_short_dct_coeff_table_6_U", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dct_1d_short_short_dct_coeff_table_7_U", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_mul_16s_15s_29_4_1_U10", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_15s_13ns_29_4_1_U11", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_mul_16s_14ns_29_4_1_U12", "Parent" : "0"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_mul_16s_15s_29_4_1_U13", "Parent" : "0"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_15s_29s_29_4_1_U14", "Parent" : "0"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_15s_29ns_29_4_1_U15", "Parent" : "0"},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_15s_29s_29_4_1_U16", "Parent" : "0"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_15s_29s_29_4_1_U17", "Parent" : "0"},
	{"ID" : "17", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_delay_pipe_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	Loop_Row_DCT_Loop_proc {
		buf_2d_in {Type I LastRead 1 FirstWrite -1}
		buf_2d_in_8 {Type I LastRead 2 FirstWrite -1}
		buf_2d_in_9 {Type I LastRead 1 FirstWrite -1}
		buf_2d_in_10 {Type I LastRead 2 FirstWrite -1}
		buf_2d_in_11 {Type I LastRead 0 FirstWrite -1}
		buf_2d_in_12 {Type I LastRead 1 FirstWrite -1}
		buf_2d_in_13 {Type I LastRead 1 FirstWrite -1}
		buf_2d_in_14 {Type I LastRead 0 FirstWrite -1}
		row_outbuf {Type O LastRead -1 FirstWrite 7}
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
	{"Name" : "Latency", "Min" : "72", "Max" : "72"}
	, {"Name" : "Interval", "Min" : "72", "Max" : "72"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	buf_2d_in { ap_memory {  { buf_2d_in_address0 mem_address 1 3 }  { buf_2d_in_ce0 mem_ce 1 1 }  { buf_2d_in_q0 in_data 0 16 } } }
	buf_2d_in_8 { ap_memory {  { buf_2d_in_8_address0 mem_address 1 3 }  { buf_2d_in_8_ce0 mem_ce 1 1 }  { buf_2d_in_8_q0 in_data 0 16 } } }
	buf_2d_in_9 { ap_memory {  { buf_2d_in_9_address0 mem_address 1 3 }  { buf_2d_in_9_ce0 mem_ce 1 1 }  { buf_2d_in_9_q0 in_data 0 16 } } }
	buf_2d_in_10 { ap_memory {  { buf_2d_in_10_address0 mem_address 1 3 }  { buf_2d_in_10_ce0 mem_ce 1 1 }  { buf_2d_in_10_q0 in_data 0 16 } } }
	buf_2d_in_11 { ap_memory {  { buf_2d_in_11_address0 mem_address 1 3 }  { buf_2d_in_11_ce0 mem_ce 1 1 }  { buf_2d_in_11_q0 in_data 0 16 } } }
	buf_2d_in_12 { ap_memory {  { buf_2d_in_12_address0 mem_address 1 3 }  { buf_2d_in_12_ce0 mem_ce 1 1 }  { buf_2d_in_12_q0 in_data 0 16 } } }
	buf_2d_in_13 { ap_memory {  { buf_2d_in_13_address0 mem_address 1 3 }  { buf_2d_in_13_ce0 mem_ce 1 1 }  { buf_2d_in_13_q0 in_data 0 16 } } }
	buf_2d_in_14 { ap_memory {  { buf_2d_in_14_address0 mem_address 1 3 }  { buf_2d_in_14_ce0 mem_ce 1 1 }  { buf_2d_in_14_q0 in_data 0 16 } } }
	row_outbuf { ap_memory {  { row_outbuf_address0 mem_address 1 6 }  { row_outbuf_ce0 mem_ce 1 1 }  { row_outbuf_we0 mem_we 1 1 }  { row_outbuf_d0 mem_din 1 16 } } }
}
