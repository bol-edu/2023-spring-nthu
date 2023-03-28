set moduleName dct_2d_Pipeline_Col_DCT_Loop_DCT_Outer_Loop
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
set C_modelName {dct_2d_Pipeline_Col_DCT_Loop_DCT_Outer_Loop}
set C_modelType { void 0 }
set C_modelArgList {
	{ col_inbuf int 16 regular {array 64 { 1 1 1 1 1 1 1 1 3 3 3 3 3 3 3 3 3 } 1 1 }  }
	{ col_outbuf int 16 regular {array 64 { 0 3 } 0 1 }  }
	{ dct_coeff_table_0 int 14 regular {array 8 { 1 } 1 1 } {global 0}  }
	{ dct_coeff_table_1 int 15 regular {array 8 { 1 } 1 1 } {global 0}  }
	{ dct_coeff_table_2 int 15 regular {array 8 { 1 } 1 1 } {global 0}  }
	{ dct_coeff_table_3 int 15 regular {array 8 { 1 } 1 1 } {global 0}  }
	{ dct_coeff_table_4 int 15 regular {array 8 { 1 } 1 1 } {global 0}  }
	{ dct_coeff_table_5 int 15 regular {array 8 { 1 } 1 1 } {global 0}  }
	{ dct_coeff_table_6 int 15 regular {array 8 { 1 } 1 1 } {global 0}  }
	{ dct_coeff_table_7 int 15 regular {array 8 { 1 } 1 1 } {global 0}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "col_inbuf", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "col_outbuf", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "dct_coeff_table_0", "interface" : "memory", "bitwidth" : 14, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "dct_coeff_table_1", "interface" : "memory", "bitwidth" : 15, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "dct_coeff_table_2", "interface" : "memory", "bitwidth" : 15, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "dct_coeff_table_3", "interface" : "memory", "bitwidth" : 15, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "dct_coeff_table_4", "interface" : "memory", "bitwidth" : 15, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "dct_coeff_table_5", "interface" : "memory", "bitwidth" : 15, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "dct_coeff_table_6", "interface" : "memory", "bitwidth" : 15, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "dct_coeff_table_7", "interface" : "memory", "bitwidth" : 15, "direction" : "READONLY", "extern" : 0} ]}
# RTL Port declarations: 
set portNum 58
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ col_inbuf_address0 sc_out sc_lv 6 signal 0 } 
	{ col_inbuf_ce0 sc_out sc_logic 1 signal 0 } 
	{ col_inbuf_q0 sc_in sc_lv 16 signal 0 } 
	{ col_inbuf_address1 sc_out sc_lv 6 signal 0 } 
	{ col_inbuf_ce1 sc_out sc_logic 1 signal 0 } 
	{ col_inbuf_q1 sc_in sc_lv 16 signal 0 } 
	{ col_inbuf_address2 sc_out sc_lv 6 signal 0 } 
	{ col_inbuf_ce2 sc_out sc_logic 1 signal 0 } 
	{ col_inbuf_q2 sc_in sc_lv 16 signal 0 } 
	{ col_inbuf_address3 sc_out sc_lv 6 signal 0 } 
	{ col_inbuf_ce3 sc_out sc_logic 1 signal 0 } 
	{ col_inbuf_q3 sc_in sc_lv 16 signal 0 } 
	{ col_inbuf_address4 sc_out sc_lv 6 signal 0 } 
	{ col_inbuf_ce4 sc_out sc_logic 1 signal 0 } 
	{ col_inbuf_q4 sc_in sc_lv 16 signal 0 } 
	{ col_inbuf_address5 sc_out sc_lv 6 signal 0 } 
	{ col_inbuf_ce5 sc_out sc_logic 1 signal 0 } 
	{ col_inbuf_q5 sc_in sc_lv 16 signal 0 } 
	{ col_inbuf_address6 sc_out sc_lv 6 signal 0 } 
	{ col_inbuf_ce6 sc_out sc_logic 1 signal 0 } 
	{ col_inbuf_q6 sc_in sc_lv 16 signal 0 } 
	{ col_inbuf_address7 sc_out sc_lv 6 signal 0 } 
	{ col_inbuf_ce7 sc_out sc_logic 1 signal 0 } 
	{ col_inbuf_q7 sc_in sc_lv 16 signal 0 } 
	{ col_outbuf_address0 sc_out sc_lv 6 signal 1 } 
	{ col_outbuf_ce0 sc_out sc_logic 1 signal 1 } 
	{ col_outbuf_we0 sc_out sc_logic 1 signal 1 } 
	{ col_outbuf_d0 sc_out sc_lv 16 signal 1 } 
	{ dct_coeff_table_0_address0 sc_out sc_lv 3 signal 2 } 
	{ dct_coeff_table_0_ce0 sc_out sc_logic 1 signal 2 } 
	{ dct_coeff_table_0_q0 sc_in sc_lv 14 signal 2 } 
	{ dct_coeff_table_1_address0 sc_out sc_lv 3 signal 3 } 
	{ dct_coeff_table_1_ce0 sc_out sc_logic 1 signal 3 } 
	{ dct_coeff_table_1_q0 sc_in sc_lv 15 signal 3 } 
	{ dct_coeff_table_2_address0 sc_out sc_lv 3 signal 4 } 
	{ dct_coeff_table_2_ce0 sc_out sc_logic 1 signal 4 } 
	{ dct_coeff_table_2_q0 sc_in sc_lv 15 signal 4 } 
	{ dct_coeff_table_3_address0 sc_out sc_lv 3 signal 5 } 
	{ dct_coeff_table_3_ce0 sc_out sc_logic 1 signal 5 } 
	{ dct_coeff_table_3_q0 sc_in sc_lv 15 signal 5 } 
	{ dct_coeff_table_4_address0 sc_out sc_lv 3 signal 6 } 
	{ dct_coeff_table_4_ce0 sc_out sc_logic 1 signal 6 } 
	{ dct_coeff_table_4_q0 sc_in sc_lv 15 signal 6 } 
	{ dct_coeff_table_5_address0 sc_out sc_lv 3 signal 7 } 
	{ dct_coeff_table_5_ce0 sc_out sc_logic 1 signal 7 } 
	{ dct_coeff_table_5_q0 sc_in sc_lv 15 signal 7 } 
	{ dct_coeff_table_6_address0 sc_out sc_lv 3 signal 8 } 
	{ dct_coeff_table_6_ce0 sc_out sc_logic 1 signal 8 } 
	{ dct_coeff_table_6_q0 sc_in sc_lv 15 signal 8 } 
	{ dct_coeff_table_7_address0 sc_out sc_lv 3 signal 9 } 
	{ dct_coeff_table_7_ce0 sc_out sc_logic 1 signal 9 } 
	{ dct_coeff_table_7_q0 sc_in sc_lv 15 signal 9 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "col_inbuf_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "col_inbuf", "role": "address0" }} , 
 	{ "name": "col_inbuf_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "col_inbuf", "role": "ce0" }} , 
 	{ "name": "col_inbuf_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "col_inbuf", "role": "q0" }} , 
 	{ "name": "col_inbuf_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "col_inbuf", "role": "address1" }} , 
 	{ "name": "col_inbuf_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "col_inbuf", "role": "ce1" }} , 
 	{ "name": "col_inbuf_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "col_inbuf", "role": "q1" }} , 
 	{ "name": "col_inbuf_address2", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "col_inbuf", "role": "address2" }} , 
 	{ "name": "col_inbuf_ce2", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "col_inbuf", "role": "ce2" }} , 
 	{ "name": "col_inbuf_q2", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "col_inbuf", "role": "q2" }} , 
 	{ "name": "col_inbuf_address3", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "col_inbuf", "role": "address3" }} , 
 	{ "name": "col_inbuf_ce3", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "col_inbuf", "role": "ce3" }} , 
 	{ "name": "col_inbuf_q3", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "col_inbuf", "role": "q3" }} , 
 	{ "name": "col_inbuf_address4", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "col_inbuf", "role": "address4" }} , 
 	{ "name": "col_inbuf_ce4", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "col_inbuf", "role": "ce4" }} , 
 	{ "name": "col_inbuf_q4", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "col_inbuf", "role": "q4" }} , 
 	{ "name": "col_inbuf_address5", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "col_inbuf", "role": "address5" }} , 
 	{ "name": "col_inbuf_ce5", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "col_inbuf", "role": "ce5" }} , 
 	{ "name": "col_inbuf_q5", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "col_inbuf", "role": "q5" }} , 
 	{ "name": "col_inbuf_address6", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "col_inbuf", "role": "address6" }} , 
 	{ "name": "col_inbuf_ce6", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "col_inbuf", "role": "ce6" }} , 
 	{ "name": "col_inbuf_q6", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "col_inbuf", "role": "q6" }} , 
 	{ "name": "col_inbuf_address7", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "col_inbuf", "role": "address7" }} , 
 	{ "name": "col_inbuf_ce7", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "col_inbuf", "role": "ce7" }} , 
 	{ "name": "col_inbuf_q7", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "col_inbuf", "role": "q7" }} , 
 	{ "name": "col_outbuf_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "col_outbuf", "role": "address0" }} , 
 	{ "name": "col_outbuf_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "col_outbuf", "role": "ce0" }} , 
 	{ "name": "col_outbuf_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "col_outbuf", "role": "we0" }} , 
 	{ "name": "col_outbuf_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "col_outbuf", "role": "d0" }} , 
 	{ "name": "dct_coeff_table_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "dct_coeff_table_0", "role": "address0" }} , 
 	{ "name": "dct_coeff_table_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dct_coeff_table_0", "role": "ce0" }} , 
 	{ "name": "dct_coeff_table_0_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "dct_coeff_table_0", "role": "q0" }} , 
 	{ "name": "dct_coeff_table_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "dct_coeff_table_1", "role": "address0" }} , 
 	{ "name": "dct_coeff_table_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dct_coeff_table_1", "role": "ce0" }} , 
 	{ "name": "dct_coeff_table_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "dct_coeff_table_1", "role": "q0" }} , 
 	{ "name": "dct_coeff_table_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "dct_coeff_table_2", "role": "address0" }} , 
 	{ "name": "dct_coeff_table_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dct_coeff_table_2", "role": "ce0" }} , 
 	{ "name": "dct_coeff_table_2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "dct_coeff_table_2", "role": "q0" }} , 
 	{ "name": "dct_coeff_table_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "dct_coeff_table_3", "role": "address0" }} , 
 	{ "name": "dct_coeff_table_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dct_coeff_table_3", "role": "ce0" }} , 
 	{ "name": "dct_coeff_table_3_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "dct_coeff_table_3", "role": "q0" }} , 
 	{ "name": "dct_coeff_table_4_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "dct_coeff_table_4", "role": "address0" }} , 
 	{ "name": "dct_coeff_table_4_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dct_coeff_table_4", "role": "ce0" }} , 
 	{ "name": "dct_coeff_table_4_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "dct_coeff_table_4", "role": "q0" }} , 
 	{ "name": "dct_coeff_table_5_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "dct_coeff_table_5", "role": "address0" }} , 
 	{ "name": "dct_coeff_table_5_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dct_coeff_table_5", "role": "ce0" }} , 
 	{ "name": "dct_coeff_table_5_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "dct_coeff_table_5", "role": "q0" }} , 
 	{ "name": "dct_coeff_table_6_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "dct_coeff_table_6", "role": "address0" }} , 
 	{ "name": "dct_coeff_table_6_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dct_coeff_table_6", "role": "ce0" }} , 
 	{ "name": "dct_coeff_table_6_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "dct_coeff_table_6", "role": "q0" }} , 
 	{ "name": "dct_coeff_table_7_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "dct_coeff_table_7", "role": "address0" }} , 
 	{ "name": "dct_coeff_table_7_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dct_coeff_table_7", "role": "ce0" }} , 
 	{ "name": "dct_coeff_table_7_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "dct_coeff_table_7", "role": "q0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9"],
		"CDFG" : "dct_2d_Pipeline_Col_DCT_Loop_DCT_Outer_Loop",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "72", "EstimateLatencyMax" : "72",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "col_inbuf", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "col_outbuf", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "dct_coeff_table_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "dct_coeff_table_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "dct_coeff_table_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "dct_coeff_table_3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "dct_coeff_table_4", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "dct_coeff_table_5", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "dct_coeff_table_6", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "dct_coeff_table_7", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "Col_DCT_Loop_DCT_Outer_Loop", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter7", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter7", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_mul_16s_15s_29_4_1_U28", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_mul_16s_15s_29_4_1_U29", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_mul_16s_15s_29_4_1_U30", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_15s_13ns_29_4_1_U31", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_14ns_29s_29_4_1_U32", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_15s_29s_29_4_1_U33", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_15s_29s_29_4_1_U34", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_15s_29ns_29_4_1_U35", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	dct_2d_Pipeline_Col_DCT_Loop_DCT_Outer_Loop {
		col_inbuf {Type I LastRead 1 FirstWrite -1}
		col_outbuf {Type O LastRead -1 FirstWrite 7}
		dct_coeff_table_0 {Type I LastRead 0 FirstWrite -1}
		dct_coeff_table_1 {Type I LastRead 0 FirstWrite -1}
		dct_coeff_table_2 {Type I LastRead 0 FirstWrite -1}
		dct_coeff_table_3 {Type I LastRead 0 FirstWrite -1}
		dct_coeff_table_4 {Type I LastRead 0 FirstWrite -1}
		dct_coeff_table_5 {Type I LastRead 0 FirstWrite -1}
		dct_coeff_table_6 {Type I LastRead 0 FirstWrite -1}
		dct_coeff_table_7 {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "72", "Max" : "72"}
	, {"Name" : "Interval", "Min" : "72", "Max" : "72"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	col_inbuf { ap_memory {  { col_inbuf_address0 mem_address 1 6 }  { col_inbuf_ce0 mem_ce 1 1 }  { col_inbuf_q0 in_data 0 16 }  { col_inbuf_address1 MemPortADDR2 1 6 }  { col_inbuf_ce1 MemPortCE2 1 1 }  { col_inbuf_q1 MemPortDOUT2 0 16 }  { col_inbuf_address2 MemPortADDR2 1 6 }  { col_inbuf_ce2 MemPortCE2 1 1 }  { col_inbuf_q2 MemPortDOUT2 0 16 }  { col_inbuf_address3 MemPortADDR2 1 6 }  { col_inbuf_ce3 MemPortCE2 1 1 }  { col_inbuf_q3 in_data 0 16 }  { col_inbuf_address4 MemPortADDR2 1 6 }  { col_inbuf_ce4 MemPortCE2 1 1 }  { col_inbuf_q4 MemPortDOUT2 0 16 }  { col_inbuf_address5 MemPortADDR2 1 6 }  { col_inbuf_ce5 MemPortCE2 1 1 }  { col_inbuf_q5 in_data 0 16 }  { col_inbuf_address6 MemPortADDR2 1 6 }  { col_inbuf_ce6 MemPortCE2 1 1 }  { col_inbuf_q6 in_data 0 16 }  { col_inbuf_address7 MemPortADDR2 1 6 }  { col_inbuf_ce7 MemPortCE2 1 1 }  { col_inbuf_q7 MemPortDOUT2 0 16 } } }
	col_outbuf { ap_memory {  { col_outbuf_address0 mem_address 1 6 }  { col_outbuf_ce0 mem_ce 1 1 }  { col_outbuf_we0 mem_we 1 1 }  { col_outbuf_d0 mem_din 1 16 } } }
	dct_coeff_table_0 { ap_memory {  { dct_coeff_table_0_address0 mem_address 1 3 }  { dct_coeff_table_0_ce0 mem_ce 1 1 }  { dct_coeff_table_0_q0 mem_dout 0 14 } } }
	dct_coeff_table_1 { ap_memory {  { dct_coeff_table_1_address0 mem_address 1 3 }  { dct_coeff_table_1_ce0 mem_ce 1 1 }  { dct_coeff_table_1_q0 in_data 0 15 } } }
	dct_coeff_table_2 { ap_memory {  { dct_coeff_table_2_address0 mem_address 1 3 }  { dct_coeff_table_2_ce0 mem_ce 1 1 }  { dct_coeff_table_2_q0 in_data 0 15 } } }
	dct_coeff_table_3 { ap_memory {  { dct_coeff_table_3_address0 mem_address 1 3 }  { dct_coeff_table_3_ce0 mem_ce 1 1 }  { dct_coeff_table_3_q0 mem_dout 0 15 } } }
	dct_coeff_table_4 { ap_memory {  { dct_coeff_table_4_address0 mem_address 1 3 }  { dct_coeff_table_4_ce0 mem_ce 1 1 }  { dct_coeff_table_4_q0 in_data 0 15 } } }
	dct_coeff_table_5 { ap_memory {  { dct_coeff_table_5_address0 mem_address 1 3 }  { dct_coeff_table_5_ce0 mem_ce 1 1 }  { dct_coeff_table_5_q0 mem_dout 0 15 } } }
	dct_coeff_table_6 { ap_memory {  { dct_coeff_table_6_address0 mem_address 1 3 }  { dct_coeff_table_6_ce0 mem_ce 1 1 }  { dct_coeff_table_6_q0 mem_dout 0 15 } } }
	dct_coeff_table_7 { ap_memory {  { dct_coeff_table_7_address0 mem_address 1 3 }  { dct_coeff_table_7_ce0 mem_ce 1 1 }  { dct_coeff_table_7_q0 in_data 0 15 } } }
}
