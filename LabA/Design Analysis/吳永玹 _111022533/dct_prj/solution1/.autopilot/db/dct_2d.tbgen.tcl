set moduleName dct_2d
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set hasInterrupt 0
set C_modelName {dct_2d}
set C_modelType { void 0 }
set C_modelArgList {
	{ in_block int 16 regular {array 64 { 1 1 1 1 1 1 1 1 3 3 3 3 3 3 3 3 3 } 1 1 }  }
	{ out_block int 16 regular {array 64 { 0 3 } 0 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "in_block", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "out_block", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 34
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ in_block_address0 sc_out sc_lv 6 signal 0 } 
	{ in_block_ce0 sc_out sc_logic 1 signal 0 } 
	{ in_block_q0 sc_in sc_lv 16 signal 0 } 
	{ in_block_address1 sc_out sc_lv 6 signal 0 } 
	{ in_block_ce1 sc_out sc_logic 1 signal 0 } 
	{ in_block_q1 sc_in sc_lv 16 signal 0 } 
	{ in_block_address2 sc_out sc_lv 6 signal 0 } 
	{ in_block_ce2 sc_out sc_logic 1 signal 0 } 
	{ in_block_q2 sc_in sc_lv 16 signal 0 } 
	{ in_block_address3 sc_out sc_lv 6 signal 0 } 
	{ in_block_ce3 sc_out sc_logic 1 signal 0 } 
	{ in_block_q3 sc_in sc_lv 16 signal 0 } 
	{ in_block_address4 sc_out sc_lv 6 signal 0 } 
	{ in_block_ce4 sc_out sc_logic 1 signal 0 } 
	{ in_block_q4 sc_in sc_lv 16 signal 0 } 
	{ in_block_address5 sc_out sc_lv 6 signal 0 } 
	{ in_block_ce5 sc_out sc_logic 1 signal 0 } 
	{ in_block_q5 sc_in sc_lv 16 signal 0 } 
	{ in_block_address6 sc_out sc_lv 6 signal 0 } 
	{ in_block_ce6 sc_out sc_logic 1 signal 0 } 
	{ in_block_q6 sc_in sc_lv 16 signal 0 } 
	{ in_block_address7 sc_out sc_lv 6 signal 0 } 
	{ in_block_ce7 sc_out sc_logic 1 signal 0 } 
	{ in_block_q7 sc_in sc_lv 16 signal 0 } 
	{ out_block_address0 sc_out sc_lv 6 signal 1 } 
	{ out_block_ce0 sc_out sc_logic 1 signal 1 } 
	{ out_block_we0 sc_out sc_logic 1 signal 1 } 
	{ out_block_d0 sc_out sc_lv 16 signal 1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "in_block_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "in_block", "role": "address0" }} , 
 	{ "name": "in_block_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_block", "role": "ce0" }} , 
 	{ "name": "in_block_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "in_block", "role": "q0" }} , 
 	{ "name": "in_block_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "in_block", "role": "address1" }} , 
 	{ "name": "in_block_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_block", "role": "ce1" }} , 
 	{ "name": "in_block_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "in_block", "role": "q1" }} , 
 	{ "name": "in_block_address2", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "in_block", "role": "address2" }} , 
 	{ "name": "in_block_ce2", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_block", "role": "ce2" }} , 
 	{ "name": "in_block_q2", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "in_block", "role": "q2" }} , 
 	{ "name": "in_block_address3", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "in_block", "role": "address3" }} , 
 	{ "name": "in_block_ce3", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_block", "role": "ce3" }} , 
 	{ "name": "in_block_q3", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "in_block", "role": "q3" }} , 
 	{ "name": "in_block_address4", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "in_block", "role": "address4" }} , 
 	{ "name": "in_block_ce4", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_block", "role": "ce4" }} , 
 	{ "name": "in_block_q4", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "in_block", "role": "q4" }} , 
 	{ "name": "in_block_address5", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "in_block", "role": "address5" }} , 
 	{ "name": "in_block_ce5", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_block", "role": "ce5" }} , 
 	{ "name": "in_block_q5", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "in_block", "role": "q5" }} , 
 	{ "name": "in_block_address6", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "in_block", "role": "address6" }} , 
 	{ "name": "in_block_ce6", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_block", "role": "ce6" }} , 
 	{ "name": "in_block_q6", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "in_block", "role": "q6" }} , 
 	{ "name": "in_block_address7", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "in_block", "role": "address7" }} , 
 	{ "name": "in_block_ce7", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_block", "role": "ce7" }} , 
 	{ "name": "in_block_q7", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "in_block", "role": "q7" }} , 
 	{ "name": "out_block_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "out_block", "role": "address0" }} , 
 	{ "name": "out_block_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_block", "role": "ce0" }} , 
 	{ "name": "out_block_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_block", "role": "we0" }} , 
 	{ "name": "out_block_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "out_block", "role": "d0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "22", "24", "34"],
		"CDFG" : "dct_2d",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "285", "EstimateLatencyMax" : "285",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "in_block", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "12", "SubInstance" : "grp_dct_2d_Pipeline_Row_DCT_Loop_DCT_Outer_Loop_fu_42", "Port" : "in_block", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "out_block", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "34", "SubInstance" : "grp_dct_2d_Pipeline_Xpose_Col_Outer_Loop_Xpose_Col_Inner_Loop_fu_94", "Port" : "out_block", "Inst_start_state" : "7", "Inst_end_state" : "8"}]},
			{"Name" : "dct_coeff_table_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "12", "SubInstance" : "grp_dct_2d_Pipeline_Row_DCT_Loop_DCT_Outer_Loop_fu_42", "Port" : "dct_coeff_table_0", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "24", "SubInstance" : "grp_dct_2d_Pipeline_Col_DCT_Loop_DCT_Outer_Loop_fu_72", "Port" : "dct_coeff_table_0", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "dct_coeff_table_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "12", "SubInstance" : "grp_dct_2d_Pipeline_Row_DCT_Loop_DCT_Outer_Loop_fu_42", "Port" : "dct_coeff_table_1", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "24", "SubInstance" : "grp_dct_2d_Pipeline_Col_DCT_Loop_DCT_Outer_Loop_fu_72", "Port" : "dct_coeff_table_1", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "dct_coeff_table_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "12", "SubInstance" : "grp_dct_2d_Pipeline_Row_DCT_Loop_DCT_Outer_Loop_fu_42", "Port" : "dct_coeff_table_2", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "24", "SubInstance" : "grp_dct_2d_Pipeline_Col_DCT_Loop_DCT_Outer_Loop_fu_72", "Port" : "dct_coeff_table_2", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "dct_coeff_table_3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "12", "SubInstance" : "grp_dct_2d_Pipeline_Row_DCT_Loop_DCT_Outer_Loop_fu_42", "Port" : "dct_coeff_table_3", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "24", "SubInstance" : "grp_dct_2d_Pipeline_Col_DCT_Loop_DCT_Outer_Loop_fu_72", "Port" : "dct_coeff_table_3", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "dct_coeff_table_4", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "12", "SubInstance" : "grp_dct_2d_Pipeline_Row_DCT_Loop_DCT_Outer_Loop_fu_42", "Port" : "dct_coeff_table_4", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "24", "SubInstance" : "grp_dct_2d_Pipeline_Col_DCT_Loop_DCT_Outer_Loop_fu_72", "Port" : "dct_coeff_table_4", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "dct_coeff_table_5", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "12", "SubInstance" : "grp_dct_2d_Pipeline_Row_DCT_Loop_DCT_Outer_Loop_fu_42", "Port" : "dct_coeff_table_5", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "24", "SubInstance" : "grp_dct_2d_Pipeline_Col_DCT_Loop_DCT_Outer_Loop_fu_72", "Port" : "dct_coeff_table_5", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "dct_coeff_table_6", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "12", "SubInstance" : "grp_dct_2d_Pipeline_Row_DCT_Loop_DCT_Outer_Loop_fu_42", "Port" : "dct_coeff_table_6", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "24", "SubInstance" : "grp_dct_2d_Pipeline_Col_DCT_Loop_DCT_Outer_Loop_fu_72", "Port" : "dct_coeff_table_6", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "dct_coeff_table_7", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "12", "SubInstance" : "grp_dct_2d_Pipeline_Row_DCT_Loop_DCT_Outer_Loop_fu_42", "Port" : "dct_coeff_table_7", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "24", "SubInstance" : "grp_dct_2d_Pipeline_Col_DCT_Loop_DCT_Outer_Loop_fu_72", "Port" : "dct_coeff_table_7", "Inst_start_state" : "5", "Inst_end_state" : "6"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dct_coeff_table_0_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dct_coeff_table_1_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dct_coeff_table_2_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dct_coeff_table_3_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dct_coeff_table_4_U", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dct_coeff_table_5_U", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dct_coeff_table_6_U", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dct_coeff_table_7_U", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.row_outbuf_U", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.col_outbuf_U", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.col_inbuf_U", "Parent" : "0"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_dct_2d_Pipeline_Row_DCT_Loop_DCT_Outer_Loop_fu_42", "Parent" : "0", "Child" : ["13", "14", "15", "16", "17", "18", "19", "20", "21"],
		"CDFG" : "dct_2d_Pipeline_Row_DCT_Loop_DCT_Outer_Loop",
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
			{"Name" : "in_block", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "row_outbuf", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "dct_coeff_table_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "dct_coeff_table_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "dct_coeff_table_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "dct_coeff_table_3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "dct_coeff_table_4", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "dct_coeff_table_5", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "dct_coeff_table_6", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "dct_coeff_table_7", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "Row_DCT_Loop_DCT_Outer_Loop", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter7", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter7", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "13", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dct_2d_Pipeline_Row_DCT_Loop_DCT_Outer_Loop_fu_42.mul_mul_16s_15s_29_4_1_U3", "Parent" : "12"},
	{"ID" : "14", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dct_2d_Pipeline_Row_DCT_Loop_DCT_Outer_Loop_fu_42.mul_mul_16s_15s_29_4_1_U4", "Parent" : "12"},
	{"ID" : "15", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dct_2d_Pipeline_Row_DCT_Loop_DCT_Outer_Loop_fu_42.mul_mul_16s_15s_29_4_1_U5", "Parent" : "12"},
	{"ID" : "16", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dct_2d_Pipeline_Row_DCT_Loop_DCT_Outer_Loop_fu_42.mac_muladd_16s_15s_13ns_29_4_1_U6", "Parent" : "12"},
	{"ID" : "17", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dct_2d_Pipeline_Row_DCT_Loop_DCT_Outer_Loop_fu_42.mac_muladd_16s_14ns_29s_29_4_1_U7", "Parent" : "12"},
	{"ID" : "18", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dct_2d_Pipeline_Row_DCT_Loop_DCT_Outer_Loop_fu_42.mac_muladd_16s_15s_29s_29_4_1_U8", "Parent" : "12"},
	{"ID" : "19", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dct_2d_Pipeline_Row_DCT_Loop_DCT_Outer_Loop_fu_42.mac_muladd_16s_15s_29s_29_4_1_U9", "Parent" : "12"},
	{"ID" : "20", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dct_2d_Pipeline_Row_DCT_Loop_DCT_Outer_Loop_fu_42.mac_muladd_16s_15s_29ns_29_4_1_U10", "Parent" : "12"},
	{"ID" : "21", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dct_2d_Pipeline_Row_DCT_Loop_DCT_Outer_Loop_fu_42.flow_control_loop_pipe_sequential_init_U", "Parent" : "12"},
	{"ID" : "22", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_dct_2d_Pipeline_Xpose_Row_Outer_Loop_Xpose_Row_Inner_Loop_fu_66", "Parent" : "0", "Child" : ["23"],
		"CDFG" : "dct_2d_Pipeline_Xpose_Row_Outer_Loop_Xpose_Row_Inner_Loop",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "67", "EstimateLatencyMax" : "67",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "row_outbuf", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "col_inbuf", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "Xpose_Row_Outer_Loop_Xpose_Row_Inner_Loop", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter2", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "23", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dct_2d_Pipeline_Xpose_Row_Outer_Loop_Xpose_Row_Inner_Loop_fu_66.flow_control_loop_pipe_sequential_init_U", "Parent" : "22"},
	{"ID" : "24", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_dct_2d_Pipeline_Col_DCT_Loop_DCT_Outer_Loop_fu_72", "Parent" : "0", "Child" : ["25", "26", "27", "28", "29", "30", "31", "32", "33"],
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
	{"ID" : "25", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dct_2d_Pipeline_Col_DCT_Loop_DCT_Outer_Loop_fu_72.mul_mul_16s_15s_29_4_1_U28", "Parent" : "24"},
	{"ID" : "26", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dct_2d_Pipeline_Col_DCT_Loop_DCT_Outer_Loop_fu_72.mul_mul_16s_15s_29_4_1_U29", "Parent" : "24"},
	{"ID" : "27", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dct_2d_Pipeline_Col_DCT_Loop_DCT_Outer_Loop_fu_72.mul_mul_16s_15s_29_4_1_U30", "Parent" : "24"},
	{"ID" : "28", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dct_2d_Pipeline_Col_DCT_Loop_DCT_Outer_Loop_fu_72.mac_muladd_16s_15s_13ns_29_4_1_U31", "Parent" : "24"},
	{"ID" : "29", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dct_2d_Pipeline_Col_DCT_Loop_DCT_Outer_Loop_fu_72.mac_muladd_16s_14ns_29s_29_4_1_U32", "Parent" : "24"},
	{"ID" : "30", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dct_2d_Pipeline_Col_DCT_Loop_DCT_Outer_Loop_fu_72.mac_muladd_16s_15s_29s_29_4_1_U33", "Parent" : "24"},
	{"ID" : "31", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dct_2d_Pipeline_Col_DCT_Loop_DCT_Outer_Loop_fu_72.mac_muladd_16s_15s_29s_29_4_1_U34", "Parent" : "24"},
	{"ID" : "32", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dct_2d_Pipeline_Col_DCT_Loop_DCT_Outer_Loop_fu_72.mac_muladd_16s_15s_29ns_29_4_1_U35", "Parent" : "24"},
	{"ID" : "33", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dct_2d_Pipeline_Col_DCT_Loop_DCT_Outer_Loop_fu_72.flow_control_loop_pipe_sequential_init_U", "Parent" : "24"},
	{"ID" : "34", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_dct_2d_Pipeline_Xpose_Col_Outer_Loop_Xpose_Col_Inner_Loop_fu_94", "Parent" : "0", "Child" : ["35"],
		"CDFG" : "dct_2d_Pipeline_Xpose_Col_Outer_Loop_Xpose_Col_Inner_Loop",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "67", "EstimateLatencyMax" : "67",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "out_block", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "col_outbuf", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "Xpose_Col_Outer_Loop_Xpose_Col_Inner_Loop", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter2", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "35", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dct_2d_Pipeline_Xpose_Col_Outer_Loop_Xpose_Col_Inner_Loop_fu_94.flow_control_loop_pipe_sequential_init_U", "Parent" : "34"}]}


set ArgLastReadFirstWriteLatency {
	dct_2d {
		in_block {Type I LastRead 1 FirstWrite -1}
		out_block {Type O LastRead -1 FirstWrite 2}
		dct_coeff_table_0 {Type I LastRead -1 FirstWrite -1}
		dct_coeff_table_1 {Type I LastRead -1 FirstWrite -1}
		dct_coeff_table_2 {Type I LastRead -1 FirstWrite -1}
		dct_coeff_table_3 {Type I LastRead -1 FirstWrite -1}
		dct_coeff_table_4 {Type I LastRead -1 FirstWrite -1}
		dct_coeff_table_5 {Type I LastRead -1 FirstWrite -1}
		dct_coeff_table_6 {Type I LastRead -1 FirstWrite -1}
		dct_coeff_table_7 {Type I LastRead -1 FirstWrite -1}}
	dct_2d_Pipeline_Row_DCT_Loop_DCT_Outer_Loop {
		in_block {Type I LastRead 1 FirstWrite -1}
		row_outbuf {Type O LastRead -1 FirstWrite 7}
		dct_coeff_table_0 {Type I LastRead 0 FirstWrite -1}
		dct_coeff_table_1 {Type I LastRead 0 FirstWrite -1}
		dct_coeff_table_2 {Type I LastRead 0 FirstWrite -1}
		dct_coeff_table_3 {Type I LastRead 0 FirstWrite -1}
		dct_coeff_table_4 {Type I LastRead 0 FirstWrite -1}
		dct_coeff_table_5 {Type I LastRead 0 FirstWrite -1}
		dct_coeff_table_6 {Type I LastRead 0 FirstWrite -1}
		dct_coeff_table_7 {Type I LastRead 0 FirstWrite -1}}
	dct_2d_Pipeline_Xpose_Row_Outer_Loop_Xpose_Row_Inner_Loop {
		row_outbuf {Type I LastRead 1 FirstWrite -1}
		col_inbuf {Type O LastRead -1 FirstWrite 2}}
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
		dct_coeff_table_7 {Type I LastRead 0 FirstWrite -1}}
	dct_2d_Pipeline_Xpose_Col_Outer_Loop_Xpose_Col_Inner_Loop {
		out_block {Type O LastRead -1 FirstWrite 2}
		col_outbuf {Type I LastRead 1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "285", "Max" : "285"}
	, {"Name" : "Interval", "Min" : "285", "Max" : "285"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	in_block { ap_memory {  { in_block_address0 mem_address 1 6 }  { in_block_ce0 mem_ce 1 1 }  { in_block_q0 mem_dout 0 16 }  { in_block_address1 MemPortADDR2 1 6 }  { in_block_ce1 MemPortCE2 1 1 }  { in_block_q1 MemPortDOUT2 0 16 }  { in_block_address2 MemPortADDR2 1 6 }  { in_block_ce2 MemPortCE2 1 1 }  { in_block_q2 MemPortDOUT2 0 16 }  { in_block_address3 MemPortADDR2 1 6 }  { in_block_ce3 MemPortCE2 1 1 }  { in_block_q3 MemPortDOUT2 0 16 }  { in_block_address4 MemPortADDR2 1 6 }  { in_block_ce4 MemPortCE2 1 1 }  { in_block_q4 MemPortDOUT2 0 16 }  { in_block_address5 MemPortADDR2 1 6 }  { in_block_ce5 MemPortCE2 1 1 }  { in_block_q5 MemPortDOUT2 0 16 }  { in_block_address6 MemPortADDR2 1 6 }  { in_block_ce6 MemPortCE2 1 1 }  { in_block_q6 MemPortDOUT2 0 16 }  { in_block_address7 MemPortADDR2 1 6 }  { in_block_ce7 MemPortCE2 1 1 }  { in_block_q7 MemPortDOUT2 0 16 } } }
	out_block { ap_memory {  { out_block_address0 mem_address 1 6 }  { out_block_ce0 mem_ce 1 1 }  { out_block_we0 mem_we 1 1 }  { out_block_d0 mem_din 1 16 } } }
}
