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
	{ in_block_0 int 16 regular {array 8 { 1 3 } 1 1 }  }
	{ in_block_1 int 16 regular {array 8 { 1 3 } 1 1 }  }
	{ in_block_2 int 16 regular {array 8 { 1 3 } 1 1 }  }
	{ in_block_3 int 16 regular {array 8 { 1 3 } 1 1 }  }
	{ in_block_4 int 16 regular {array 8 { 1 3 } 1 1 }  }
	{ in_block_5 int 16 regular {array 8 { 1 3 } 1 1 }  }
	{ in_block_6 int 16 regular {array 8 { 1 3 } 1 1 }  }
	{ in_block_7 int 16 regular {array 8 { 1 3 } 1 1 }  }
	{ out_block int 16 regular {array 64 { 0 3 } 0 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "in_block_0", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "in_block_1", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "in_block_2", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "in_block_3", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "in_block_4", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "in_block_5", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "in_block_6", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "in_block_7", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "out_block", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY"} ]}
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
	{ in_block_0_address0 sc_out sc_lv 3 signal 0 } 
	{ in_block_0_ce0 sc_out sc_logic 1 signal 0 } 
	{ in_block_0_q0 sc_in sc_lv 16 signal 0 } 
	{ in_block_1_address0 sc_out sc_lv 3 signal 1 } 
	{ in_block_1_ce0 sc_out sc_logic 1 signal 1 } 
	{ in_block_1_q0 sc_in sc_lv 16 signal 1 } 
	{ in_block_2_address0 sc_out sc_lv 3 signal 2 } 
	{ in_block_2_ce0 sc_out sc_logic 1 signal 2 } 
	{ in_block_2_q0 sc_in sc_lv 16 signal 2 } 
	{ in_block_3_address0 sc_out sc_lv 3 signal 3 } 
	{ in_block_3_ce0 sc_out sc_logic 1 signal 3 } 
	{ in_block_3_q0 sc_in sc_lv 16 signal 3 } 
	{ in_block_4_address0 sc_out sc_lv 3 signal 4 } 
	{ in_block_4_ce0 sc_out sc_logic 1 signal 4 } 
	{ in_block_4_q0 sc_in sc_lv 16 signal 4 } 
	{ in_block_5_address0 sc_out sc_lv 3 signal 5 } 
	{ in_block_5_ce0 sc_out sc_logic 1 signal 5 } 
	{ in_block_5_q0 sc_in sc_lv 16 signal 5 } 
	{ in_block_6_address0 sc_out sc_lv 3 signal 6 } 
	{ in_block_6_ce0 sc_out sc_logic 1 signal 6 } 
	{ in_block_6_q0 sc_in sc_lv 16 signal 6 } 
	{ in_block_7_address0 sc_out sc_lv 3 signal 7 } 
	{ in_block_7_ce0 sc_out sc_logic 1 signal 7 } 
	{ in_block_7_q0 sc_in sc_lv 16 signal 7 } 
	{ out_block_address0 sc_out sc_lv 6 signal 8 } 
	{ out_block_ce0 sc_out sc_logic 1 signal 8 } 
	{ out_block_we0 sc_out sc_logic 1 signal 8 } 
	{ out_block_d0 sc_out sc_lv 16 signal 8 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "in_block_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "in_block_0", "role": "address0" }} , 
 	{ "name": "in_block_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_block_0", "role": "ce0" }} , 
 	{ "name": "in_block_0_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "in_block_0", "role": "q0" }} , 
 	{ "name": "in_block_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "in_block_1", "role": "address0" }} , 
 	{ "name": "in_block_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_block_1", "role": "ce0" }} , 
 	{ "name": "in_block_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "in_block_1", "role": "q0" }} , 
 	{ "name": "in_block_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "in_block_2", "role": "address0" }} , 
 	{ "name": "in_block_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_block_2", "role": "ce0" }} , 
 	{ "name": "in_block_2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "in_block_2", "role": "q0" }} , 
 	{ "name": "in_block_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "in_block_3", "role": "address0" }} , 
 	{ "name": "in_block_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_block_3", "role": "ce0" }} , 
 	{ "name": "in_block_3_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "in_block_3", "role": "q0" }} , 
 	{ "name": "in_block_4_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "in_block_4", "role": "address0" }} , 
 	{ "name": "in_block_4_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_block_4", "role": "ce0" }} , 
 	{ "name": "in_block_4_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "in_block_4", "role": "q0" }} , 
 	{ "name": "in_block_5_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "in_block_5", "role": "address0" }} , 
 	{ "name": "in_block_5_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_block_5", "role": "ce0" }} , 
 	{ "name": "in_block_5_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "in_block_5", "role": "q0" }} , 
 	{ "name": "in_block_6_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "in_block_6", "role": "address0" }} , 
 	{ "name": "in_block_6_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_block_6", "role": "ce0" }} , 
 	{ "name": "in_block_6_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "in_block_6", "role": "q0" }} , 
 	{ "name": "in_block_7_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "in_block_7", "role": "address0" }} , 
 	{ "name": "in_block_7_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_block_7", "role": "ce0" }} , 
 	{ "name": "in_block_7_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "in_block_7", "role": "q0" }} , 
 	{ "name": "out_block_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "out_block", "role": "address0" }} , 
 	{ "name": "out_block_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_block", "role": "ce0" }} , 
 	{ "name": "out_block_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_block", "role": "we0" }} , 
 	{ "name": "out_block_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "out_block", "role": "d0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "13", "31"],
		"CDFG" : "dct_2d",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "442", "EstimateLatencyMax" : "442",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "in_block_0", "Type" : "Memory", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0"},
			{"Name" : "in_block_1", "Type" : "Memory", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0"},
			{"Name" : "in_block_2", "Type" : "Memory", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0"},
			{"Name" : "in_block_3", "Type" : "Memory", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0"},
			{"Name" : "in_block_4", "Type" : "Memory", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0"},
			{"Name" : "in_block_5", "Type" : "Memory", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0"},
			{"Name" : "in_block_6", "Type" : "Memory", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0"},
			{"Name" : "in_block_7", "Type" : "Memory", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0"},
			{"Name" : "out_block", "Type" : "Memory", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0",
				"SubConnect" : [
					{"ID" : "31", "SubInstance" : "grp_dct_2d_Pipeline_Xpose_Col_Outer_Loop_Xpose_Col_Inner_Loop_fu_369", "Port" : "out_block", "Inst_start_state" : "6", "Inst_end_state" : "9"}]},
			{"Name" : "dct_1d_short_short_dct_coeff_table", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "13", "SubInstance" : "grp_dct_1d_fu_323", "Port" : "dct_1d_short_short_dct_coeff_table", "Inst_start_state" : "7", "Inst_end_state" : "8"}]},
			{"Name" : "dct_1d_short_short_dct_coeff_table_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "13", "SubInstance" : "grp_dct_1d_fu_323", "Port" : "dct_1d_short_short_dct_coeff_table_1", "Inst_start_state" : "7", "Inst_end_state" : "8"}]},
			{"Name" : "dct_1d_short_short_dct_coeff_table_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "13", "SubInstance" : "grp_dct_1d_fu_323", "Port" : "dct_1d_short_short_dct_coeff_table_2", "Inst_start_state" : "7", "Inst_end_state" : "8"}]},
			{"Name" : "dct_1d_short_short_dct_coeff_table_3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "13", "SubInstance" : "grp_dct_1d_fu_323", "Port" : "dct_1d_short_short_dct_coeff_table_3", "Inst_start_state" : "7", "Inst_end_state" : "8"}]},
			{"Name" : "dct_1d_short_short_dct_coeff_table_4", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "13", "SubInstance" : "grp_dct_1d_fu_323", "Port" : "dct_1d_short_short_dct_coeff_table_4", "Inst_start_state" : "7", "Inst_end_state" : "8"}]},
			{"Name" : "dct_1d_short_short_dct_coeff_table_5", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "13", "SubInstance" : "grp_dct_1d_fu_323", "Port" : "dct_1d_short_short_dct_coeff_table_5", "Inst_start_state" : "7", "Inst_end_state" : "8"}]},
			{"Name" : "dct_1d_short_short_dct_coeff_table_6", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "13", "SubInstance" : "grp_dct_1d_fu_323", "Port" : "dct_1d_short_short_dct_coeff_table_6", "Inst_start_state" : "7", "Inst_end_state" : "8"}]},
			{"Name" : "dct_1d_short_short_dct_coeff_table_7", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "13", "SubInstance" : "grp_dct_1d_fu_323", "Port" : "dct_1d_short_short_dct_coeff_table_7", "Inst_start_state" : "7", "Inst_end_state" : "8"}]}],
		"Loop" : [
			{"Name" : "Row_DCT_Loop", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "9", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state4"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state5"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "Col_DCT_Loop", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "9", "FirstState" : "ap_ST_fsm_state6", "LastState" : ["ap_ST_fsm_state8"], "QuitState" : ["ap_ST_fsm_state6"], "PreState" : ["ap_ST_fsm_state5"], "PostState" : ["ap_ST_fsm_state9"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.row_outbuf_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.col_outbuf_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.col_inbuf_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.col_inbuf_1_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.col_inbuf_2_U", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.col_inbuf_3_U", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.col_inbuf_4_U", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.col_inbuf_5_U", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.col_inbuf_6_U", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.col_inbuf_7_U", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_dct_2d_Pipeline_Xpose_Row_Outer_Loop_Xpose_Row_Inner_Loop_fu_310", "Parent" : "0", "Child" : ["12"],
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
			{"Name" : "col_inbuf", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "row_outbuf", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "col_inbuf_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "col_inbuf_2", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "col_inbuf_3", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "col_inbuf_4", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "col_inbuf_5", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "col_inbuf_6", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "col_inbuf_7", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "Xpose_Row_Outer_Loop_Xpose_Row_Inner_Loop", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter2", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "12", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dct_2d_Pipeline_Xpose_Row_Outer_Loop_Xpose_Row_Inner_Loop_fu_310.flow_control_loop_pipe_sequential_init_U", "Parent" : "11"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_dct_1d_fu_323", "Parent" : "0", "Child" : ["14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30"],
		"CDFG" : "dct_1d",
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
			{"Name" : "p_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read1", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read2", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read3", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read4", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read5", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read6", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read7", "Type" : "None", "Direction" : "I"},
			{"Name" : "dst", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "dst_offset", "Type" : "None", "Direction" : "I"},
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
	{"ID" : "14", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dct_1d_fu_323.dct_1d_short_short_dct_coeff_table_U", "Parent" : "13"},
	{"ID" : "15", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dct_1d_fu_323.dct_1d_short_short_dct_coeff_table_1_U", "Parent" : "13"},
	{"ID" : "16", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dct_1d_fu_323.dct_1d_short_short_dct_coeff_table_2_U", "Parent" : "13"},
	{"ID" : "17", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dct_1d_fu_323.dct_1d_short_short_dct_coeff_table_3_U", "Parent" : "13"},
	{"ID" : "18", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dct_1d_fu_323.dct_1d_short_short_dct_coeff_table_4_U", "Parent" : "13"},
	{"ID" : "19", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dct_1d_fu_323.dct_1d_short_short_dct_coeff_table_5_U", "Parent" : "13"},
	{"ID" : "20", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dct_1d_fu_323.dct_1d_short_short_dct_coeff_table_6_U", "Parent" : "13"},
	{"ID" : "21", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dct_1d_fu_323.dct_1d_short_short_dct_coeff_table_7_U", "Parent" : "13"},
	{"ID" : "22", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dct_1d_fu_323.mul_mul_16s_15s_29_4_1_U10", "Parent" : "13"},
	{"ID" : "23", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dct_1d_fu_323.mac_muladd_16s_15s_13ns_29_4_1_U11", "Parent" : "13"},
	{"ID" : "24", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dct_1d_fu_323.mul_mul_16s_14ns_29_4_1_U12", "Parent" : "13"},
	{"ID" : "25", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dct_1d_fu_323.mul_mul_16s_15s_29_4_1_U13", "Parent" : "13"},
	{"ID" : "26", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dct_1d_fu_323.mac_muladd_16s_15s_29s_29_4_1_U14", "Parent" : "13"},
	{"ID" : "27", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dct_1d_fu_323.mac_muladd_16s_15s_29ns_29_4_1_U15", "Parent" : "13"},
	{"ID" : "28", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dct_1d_fu_323.mac_muladd_16s_15s_29s_29_4_1_U16", "Parent" : "13"},
	{"ID" : "29", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dct_1d_fu_323.mac_muladd_16s_15s_29s_29_4_1_U17", "Parent" : "13"},
	{"ID" : "30", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dct_1d_fu_323.flow_control_loop_pipe_sequential_init_U", "Parent" : "13"},
	{"ID" : "31", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_dct_2d_Pipeline_Xpose_Col_Outer_Loop_Xpose_Col_Inner_Loop_fu_369", "Parent" : "0", "Child" : ["32"],
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
	{"ID" : "32", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dct_2d_Pipeline_Xpose_Col_Outer_Loop_Xpose_Col_Inner_Loop_fu_369.flow_control_loop_pipe_sequential_init_U", "Parent" : "31"}]}


set ArgLastReadFirstWriteLatency {
	dct_2d {
		in_block_0 {Type I LastRead 1 FirstWrite -1}
		in_block_1 {Type I LastRead 1 FirstWrite -1}
		in_block_2 {Type I LastRead 1 FirstWrite -1}
		in_block_3 {Type I LastRead 1 FirstWrite -1}
		in_block_4 {Type I LastRead 1 FirstWrite -1}
		in_block_5 {Type I LastRead 1 FirstWrite -1}
		in_block_6 {Type I LastRead 1 FirstWrite -1}
		in_block_7 {Type I LastRead 1 FirstWrite -1}
		out_block {Type O LastRead -1 FirstWrite 2}
		dct_1d_short_short_dct_coeff_table {Type I LastRead -1 FirstWrite -1}
		dct_1d_short_short_dct_coeff_table_1 {Type I LastRead -1 FirstWrite -1}
		dct_1d_short_short_dct_coeff_table_2 {Type I LastRead -1 FirstWrite -1}
		dct_1d_short_short_dct_coeff_table_3 {Type I LastRead -1 FirstWrite -1}
		dct_1d_short_short_dct_coeff_table_4 {Type I LastRead -1 FirstWrite -1}
		dct_1d_short_short_dct_coeff_table_5 {Type I LastRead -1 FirstWrite -1}
		dct_1d_short_short_dct_coeff_table_6 {Type I LastRead -1 FirstWrite -1}
		dct_1d_short_short_dct_coeff_table_7 {Type I LastRead -1 FirstWrite -1}}
	dct_2d_Pipeline_Xpose_Row_Outer_Loop_Xpose_Row_Inner_Loop {
		col_inbuf {Type O LastRead -1 FirstWrite 2}
		row_outbuf {Type I LastRead 1 FirstWrite -1}
		col_inbuf_1 {Type O LastRead -1 FirstWrite 2}
		col_inbuf_2 {Type O LastRead -1 FirstWrite 2}
		col_inbuf_3 {Type O LastRead -1 FirstWrite 2}
		col_inbuf_4 {Type O LastRead -1 FirstWrite 2}
		col_inbuf_5 {Type O LastRead -1 FirstWrite 2}
		col_inbuf_6 {Type O LastRead -1 FirstWrite 2}
		col_inbuf_7 {Type O LastRead -1 FirstWrite 2}}
	dct_1d {
		p_read {Type I LastRead 0 FirstWrite -1}
		p_read1 {Type I LastRead 0 FirstWrite -1}
		p_read2 {Type I LastRead 0 FirstWrite -1}
		p_read3 {Type I LastRead 0 FirstWrite -1}
		p_read4 {Type I LastRead 0 FirstWrite -1}
		p_read5 {Type I LastRead 0 FirstWrite -1}
		p_read6 {Type I LastRead 0 FirstWrite -1}
		p_read7 {Type I LastRead 0 FirstWrite -1}
		dst {Type O LastRead -1 FirstWrite 7}
		dst_offset {Type I LastRead 0 FirstWrite -1}
		dct_1d_short_short_dct_coeff_table {Type I LastRead -1 FirstWrite -1}
		dct_1d_short_short_dct_coeff_table_1 {Type I LastRead -1 FirstWrite -1}
		dct_1d_short_short_dct_coeff_table_2 {Type I LastRead -1 FirstWrite -1}
		dct_1d_short_short_dct_coeff_table_3 {Type I LastRead -1 FirstWrite -1}
		dct_1d_short_short_dct_coeff_table_4 {Type I LastRead -1 FirstWrite -1}
		dct_1d_short_short_dct_coeff_table_5 {Type I LastRead -1 FirstWrite -1}
		dct_1d_short_short_dct_coeff_table_6 {Type I LastRead -1 FirstWrite -1}
		dct_1d_short_short_dct_coeff_table_7 {Type I LastRead -1 FirstWrite -1}}
	dct_2d_Pipeline_Xpose_Col_Outer_Loop_Xpose_Col_Inner_Loop {
		out_block {Type O LastRead -1 FirstWrite 2}
		col_outbuf {Type I LastRead 1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "442", "Max" : "442"}
	, {"Name" : "Interval", "Min" : "442", "Max" : "442"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	in_block_0 { ap_memory {  { in_block_0_address0 mem_address 1 3 }  { in_block_0_ce0 mem_ce 1 1 }  { in_block_0_q0 mem_dout 0 16 } } }
	in_block_1 { ap_memory {  { in_block_1_address0 mem_address 1 3 }  { in_block_1_ce0 mem_ce 1 1 }  { in_block_1_q0 mem_dout 0 16 } } }
	in_block_2 { ap_memory {  { in_block_2_address0 mem_address 1 3 }  { in_block_2_ce0 mem_ce 1 1 }  { in_block_2_q0 mem_dout 0 16 } } }
	in_block_3 { ap_memory {  { in_block_3_address0 mem_address 1 3 }  { in_block_3_ce0 mem_ce 1 1 }  { in_block_3_q0 mem_dout 0 16 } } }
	in_block_4 { ap_memory {  { in_block_4_address0 mem_address 1 3 }  { in_block_4_ce0 mem_ce 1 1 }  { in_block_4_q0 mem_dout 0 16 } } }
	in_block_5 { ap_memory {  { in_block_5_address0 mem_address 1 3 }  { in_block_5_ce0 mem_ce 1 1 }  { in_block_5_q0 mem_dout 0 16 } } }
	in_block_6 { ap_memory {  { in_block_6_address0 mem_address 1 3 }  { in_block_6_ce0 mem_ce 1 1 }  { in_block_6_q0 mem_dout 0 16 } } }
	in_block_7 { ap_memory {  { in_block_7_address0 mem_address 1 3 }  { in_block_7_ce0 mem_ce 1 1 }  { in_block_7_q0 mem_dout 0 16 } } }
	out_block { ap_memory {  { out_block_address0 mem_address 1 6 }  { out_block_ce0 mem_ce 1 1 }  { out_block_we0 mem_we 1 1 }  { out_block_d0 mem_din 1 16 } } }
}
