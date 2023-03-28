set moduleName dct
set isTopModule 1
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set pipeline_type dataflow
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set hasInterrupt 0
set C_modelName {dct}
set C_modelType { void 0 }
set C_modelArgList {
	{ input_r int 16 regular {array 64 { 1 3 } 1 1 }  }
	{ output_r int 16 regular {array 64 { 0 3 } 0 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "input_r", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "output_r", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 26
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ input_r_address0 sc_out sc_lv 6 signal 0 } 
	{ input_r_ce0 sc_out sc_logic 1 signal 0 } 
	{ input_r_d0 sc_out sc_lv 16 signal 0 } 
	{ input_r_q0 sc_in sc_lv 16 signal 0 } 
	{ input_r_we0 sc_out sc_logic 1 signal 0 } 
	{ input_r_address1 sc_out sc_lv 6 signal 0 } 
	{ input_r_ce1 sc_out sc_logic 1 signal 0 } 
	{ input_r_d1 sc_out sc_lv 16 signal 0 } 
	{ input_r_q1 sc_in sc_lv 16 signal 0 } 
	{ input_r_we1 sc_out sc_logic 1 signal 0 } 
	{ output_r_address0 sc_out sc_lv 6 signal 1 } 
	{ output_r_ce0 sc_out sc_logic 1 signal 1 } 
	{ output_r_d0 sc_out sc_lv 16 signal 1 } 
	{ output_r_q0 sc_in sc_lv 16 signal 1 } 
	{ output_r_we0 sc_out sc_logic 1 signal 1 } 
	{ output_r_address1 sc_out sc_lv 6 signal 1 } 
	{ output_r_ce1 sc_out sc_logic 1 signal 1 } 
	{ output_r_d1 sc_out sc_lv 16 signal 1 } 
	{ output_r_q1 sc_in sc_lv 16 signal 1 } 
	{ output_r_we1 sc_out sc_logic 1 signal 1 } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "input_r_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "input_r", "role": "address0" }} , 
 	{ "name": "input_r_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "input_r", "role": "ce0" }} , 
 	{ "name": "input_r_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "input_r", "role": "d0" }} , 
 	{ "name": "input_r_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "input_r", "role": "q0" }} , 
 	{ "name": "input_r_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "input_r", "role": "we0" }} , 
 	{ "name": "input_r_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "input_r", "role": "address1" }} , 
 	{ "name": "input_r_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "input_r", "role": "ce1" }} , 
 	{ "name": "input_r_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "input_r", "role": "d1" }} , 
 	{ "name": "input_r_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "input_r", "role": "q1" }} , 
 	{ "name": "input_r_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "input_r", "role": "we1" }} , 
 	{ "name": "output_r_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "output_r", "role": "address0" }} , 
 	{ "name": "output_r_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_r", "role": "ce0" }} , 
 	{ "name": "output_r_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "output_r", "role": "d0" }} , 
 	{ "name": "output_r_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "output_r", "role": "q0" }} , 
 	{ "name": "output_r_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_r", "role": "we0" }} , 
 	{ "name": "output_r_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "output_r", "role": "address1" }} , 
 	{ "name": "output_r_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_r", "role": "ce1" }} , 
 	{ "name": "output_r_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "output_r", "role": "d1" }} , 
 	{ "name": "output_r_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "output_r", "role": "q1" }} , 
 	{ "name": "output_r_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_r", "role": "we1" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "12", "45"],
		"CDFG" : "dct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "Dataflow", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "1",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "577", "EstimateLatencyMax" : "577",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "1",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"InputProcess" : [
			{"ID" : "10", "Name" : "read_data_U0"}],
		"OutputProcess" : [
			{"ID" : "45", "Name" : "write_data_U0"}],
		"Port" : [
			{"Name" : "input_r", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "10", "SubInstance" : "read_data_U0", "Port" : "input_r"}]},
			{"Name" : "output_r", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "45", "SubInstance" : "write_data_U0", "Port" : "output_r"}]},
			{"Name" : "dct_1d_short_short_dct_coeff_table", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "12", "SubInstance" : "dct_2d_U0", "Port" : "dct_1d_short_short_dct_coeff_table"}]},
			{"Name" : "dct_1d_short_short_dct_coeff_table_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "12", "SubInstance" : "dct_2d_U0", "Port" : "dct_1d_short_short_dct_coeff_table_1"}]},
			{"Name" : "dct_1d_short_short_dct_coeff_table_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "12", "SubInstance" : "dct_2d_U0", "Port" : "dct_1d_short_short_dct_coeff_table_2"}]},
			{"Name" : "dct_1d_short_short_dct_coeff_table_3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "12", "SubInstance" : "dct_2d_U0", "Port" : "dct_1d_short_short_dct_coeff_table_3"}]},
			{"Name" : "dct_1d_short_short_dct_coeff_table_4", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "12", "SubInstance" : "dct_2d_U0", "Port" : "dct_1d_short_short_dct_coeff_table_4"}]},
			{"Name" : "dct_1d_short_short_dct_coeff_table_5", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "12", "SubInstance" : "dct_2d_U0", "Port" : "dct_1d_short_short_dct_coeff_table_5"}]},
			{"Name" : "dct_1d_short_short_dct_coeff_table_6", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "12", "SubInstance" : "dct_2d_U0", "Port" : "dct_1d_short_short_dct_coeff_table_6"}]},
			{"Name" : "dct_1d_short_short_dct_coeff_table_7", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "12", "SubInstance" : "dct_2d_U0", "Port" : "dct_1d_short_short_dct_coeff_table_7"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.buf_2d_in_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.buf_2d_in_1_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.buf_2d_in_2_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.buf_2d_in_3_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.buf_2d_in_4_U", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.buf_2d_in_5_U", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.buf_2d_in_6_U", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.buf_2d_in_7_U", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.buf_2d_out_U", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.read_data_U0", "Parent" : "0", "Child" : ["11"],
		"CDFG" : "read_data",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "66", "EstimateLatencyMax" : "66",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "input_r", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "buf_0", "Type" : "Memory", "Direction" : "O", "DependentProc" : ["12"], "DependentChan" : "1"},
			{"Name" : "buf_1", "Type" : "Memory", "Direction" : "O", "DependentProc" : ["12"], "DependentChan" : "2"},
			{"Name" : "buf_2", "Type" : "Memory", "Direction" : "O", "DependentProc" : ["12"], "DependentChan" : "3"},
			{"Name" : "buf_3", "Type" : "Memory", "Direction" : "O", "DependentProc" : ["12"], "DependentChan" : "4"},
			{"Name" : "buf_4", "Type" : "Memory", "Direction" : "O", "DependentProc" : ["12"], "DependentChan" : "5"},
			{"Name" : "buf_5", "Type" : "Memory", "Direction" : "O", "DependentProc" : ["12"], "DependentChan" : "6"},
			{"Name" : "buf_6", "Type" : "Memory", "Direction" : "O", "DependentProc" : ["12"], "DependentChan" : "7"},
			{"Name" : "buf_7", "Type" : "Memory", "Direction" : "O", "DependentProc" : ["12"], "DependentChan" : "8"}],
		"Loop" : [
			{"Name" : "RD_Loop_Row_RD_Loop_Col", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "1"}}]},
	{"ID" : "11", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.read_data_U0.flow_control_loop_pipe_U", "Parent" : "10"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dct_2d_U0", "Parent" : "0", "Child" : ["13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "25", "43"],
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
			{"Name" : "in_block_0", "Type" : "Memory", "Direction" : "I", "DependentProc" : ["10"], "DependentChan" : "1"},
			{"Name" : "in_block_1", "Type" : "Memory", "Direction" : "I", "DependentProc" : ["10"], "DependentChan" : "2"},
			{"Name" : "in_block_2", "Type" : "Memory", "Direction" : "I", "DependentProc" : ["10"], "DependentChan" : "3"},
			{"Name" : "in_block_3", "Type" : "Memory", "Direction" : "I", "DependentProc" : ["10"], "DependentChan" : "4"},
			{"Name" : "in_block_4", "Type" : "Memory", "Direction" : "I", "DependentProc" : ["10"], "DependentChan" : "5"},
			{"Name" : "in_block_5", "Type" : "Memory", "Direction" : "I", "DependentProc" : ["10"], "DependentChan" : "6"},
			{"Name" : "in_block_6", "Type" : "Memory", "Direction" : "I", "DependentProc" : ["10"], "DependentChan" : "7"},
			{"Name" : "in_block_7", "Type" : "Memory", "Direction" : "I", "DependentProc" : ["10"], "DependentChan" : "8"},
			{"Name" : "out_block", "Type" : "Memory", "Direction" : "O", "DependentProc" : ["45"], "DependentChan" : "9",
				"SubConnect" : [
					{"ID" : "43", "SubInstance" : "grp_dct_2d_Pipeline_Xpose_Col_Outer_Loop_Xpose_Col_Inner_Loop_fu_369", "Port" : "out_block", "Inst_start_state" : "6", "Inst_end_state" : "9"}]},
			{"Name" : "dct_1d_short_short_dct_coeff_table", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "25", "SubInstance" : "grp_dct_1d_fu_323", "Port" : "dct_1d_short_short_dct_coeff_table", "Inst_start_state" : "7", "Inst_end_state" : "8"}]},
			{"Name" : "dct_1d_short_short_dct_coeff_table_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "25", "SubInstance" : "grp_dct_1d_fu_323", "Port" : "dct_1d_short_short_dct_coeff_table_1", "Inst_start_state" : "7", "Inst_end_state" : "8"}]},
			{"Name" : "dct_1d_short_short_dct_coeff_table_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "25", "SubInstance" : "grp_dct_1d_fu_323", "Port" : "dct_1d_short_short_dct_coeff_table_2", "Inst_start_state" : "7", "Inst_end_state" : "8"}]},
			{"Name" : "dct_1d_short_short_dct_coeff_table_3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "25", "SubInstance" : "grp_dct_1d_fu_323", "Port" : "dct_1d_short_short_dct_coeff_table_3", "Inst_start_state" : "7", "Inst_end_state" : "8"}]},
			{"Name" : "dct_1d_short_short_dct_coeff_table_4", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "25", "SubInstance" : "grp_dct_1d_fu_323", "Port" : "dct_1d_short_short_dct_coeff_table_4", "Inst_start_state" : "7", "Inst_end_state" : "8"}]},
			{"Name" : "dct_1d_short_short_dct_coeff_table_5", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "25", "SubInstance" : "grp_dct_1d_fu_323", "Port" : "dct_1d_short_short_dct_coeff_table_5", "Inst_start_state" : "7", "Inst_end_state" : "8"}]},
			{"Name" : "dct_1d_short_short_dct_coeff_table_6", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "25", "SubInstance" : "grp_dct_1d_fu_323", "Port" : "dct_1d_short_short_dct_coeff_table_6", "Inst_start_state" : "7", "Inst_end_state" : "8"}]},
			{"Name" : "dct_1d_short_short_dct_coeff_table_7", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "25", "SubInstance" : "grp_dct_1d_fu_323", "Port" : "dct_1d_short_short_dct_coeff_table_7", "Inst_start_state" : "7", "Inst_end_state" : "8"}]}],
		"Loop" : [
			{"Name" : "Row_DCT_Loop", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "9", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state4"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state5"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "Col_DCT_Loop", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "9", "FirstState" : "ap_ST_fsm_state6", "LastState" : ["ap_ST_fsm_state8"], "QuitState" : ["ap_ST_fsm_state6"], "PreState" : ["ap_ST_fsm_state5"], "PostState" : ["ap_ST_fsm_state9"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "13", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dct_2d_U0.row_outbuf_U", "Parent" : "12"},
	{"ID" : "14", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dct_2d_U0.col_outbuf_U", "Parent" : "12"},
	{"ID" : "15", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dct_2d_U0.col_inbuf_U", "Parent" : "12"},
	{"ID" : "16", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dct_2d_U0.col_inbuf_1_U", "Parent" : "12"},
	{"ID" : "17", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dct_2d_U0.col_inbuf_2_U", "Parent" : "12"},
	{"ID" : "18", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dct_2d_U0.col_inbuf_3_U", "Parent" : "12"},
	{"ID" : "19", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dct_2d_U0.col_inbuf_4_U", "Parent" : "12"},
	{"ID" : "20", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dct_2d_U0.col_inbuf_5_U", "Parent" : "12"},
	{"ID" : "21", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dct_2d_U0.col_inbuf_6_U", "Parent" : "12"},
	{"ID" : "22", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dct_2d_U0.col_inbuf_7_U", "Parent" : "12"},
	{"ID" : "23", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dct_2d_U0.grp_dct_2d_Pipeline_Xpose_Row_Outer_Loop_Xpose_Row_Inner_Loop_fu_310", "Parent" : "12", "Child" : ["24"],
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
	{"ID" : "24", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dct_2d_U0.grp_dct_2d_Pipeline_Xpose_Row_Outer_Loop_Xpose_Row_Inner_Loop_fu_310.flow_control_loop_pipe_sequential_init_U", "Parent" : "23"},
	{"ID" : "25", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dct_2d_U0.grp_dct_1d_fu_323", "Parent" : "12", "Child" : ["26", "27", "28", "29", "30", "31", "32", "33", "34", "35", "36", "37", "38", "39", "40", "41", "42"],
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
	{"ID" : "26", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dct_2d_U0.grp_dct_1d_fu_323.dct_1d_short_short_dct_coeff_table_U", "Parent" : "25"},
	{"ID" : "27", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dct_2d_U0.grp_dct_1d_fu_323.dct_1d_short_short_dct_coeff_table_1_U", "Parent" : "25"},
	{"ID" : "28", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dct_2d_U0.grp_dct_1d_fu_323.dct_1d_short_short_dct_coeff_table_2_U", "Parent" : "25"},
	{"ID" : "29", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dct_2d_U0.grp_dct_1d_fu_323.dct_1d_short_short_dct_coeff_table_3_U", "Parent" : "25"},
	{"ID" : "30", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dct_2d_U0.grp_dct_1d_fu_323.dct_1d_short_short_dct_coeff_table_4_U", "Parent" : "25"},
	{"ID" : "31", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dct_2d_U0.grp_dct_1d_fu_323.dct_1d_short_short_dct_coeff_table_5_U", "Parent" : "25"},
	{"ID" : "32", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dct_2d_U0.grp_dct_1d_fu_323.dct_1d_short_short_dct_coeff_table_6_U", "Parent" : "25"},
	{"ID" : "33", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dct_2d_U0.grp_dct_1d_fu_323.dct_1d_short_short_dct_coeff_table_7_U", "Parent" : "25"},
	{"ID" : "34", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dct_2d_U0.grp_dct_1d_fu_323.mul_mul_16s_15s_29_4_1_U10", "Parent" : "25"},
	{"ID" : "35", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dct_2d_U0.grp_dct_1d_fu_323.mac_muladd_16s_15s_13ns_29_4_1_U11", "Parent" : "25"},
	{"ID" : "36", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dct_2d_U0.grp_dct_1d_fu_323.mul_mul_16s_14ns_29_4_1_U12", "Parent" : "25"},
	{"ID" : "37", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dct_2d_U0.grp_dct_1d_fu_323.mul_mul_16s_15s_29_4_1_U13", "Parent" : "25"},
	{"ID" : "38", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dct_2d_U0.grp_dct_1d_fu_323.mac_muladd_16s_15s_29s_29_4_1_U14", "Parent" : "25"},
	{"ID" : "39", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dct_2d_U0.grp_dct_1d_fu_323.mac_muladd_16s_15s_29ns_29_4_1_U15", "Parent" : "25"},
	{"ID" : "40", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dct_2d_U0.grp_dct_1d_fu_323.mac_muladd_16s_15s_29s_29_4_1_U16", "Parent" : "25"},
	{"ID" : "41", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dct_2d_U0.grp_dct_1d_fu_323.mac_muladd_16s_15s_29s_29_4_1_U17", "Parent" : "25"},
	{"ID" : "42", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dct_2d_U0.grp_dct_1d_fu_323.flow_control_loop_pipe_sequential_init_U", "Parent" : "25"},
	{"ID" : "43", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dct_2d_U0.grp_dct_2d_Pipeline_Xpose_Col_Outer_Loop_Xpose_Col_Inner_Loop_fu_369", "Parent" : "12", "Child" : ["44"],
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
	{"ID" : "44", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dct_2d_U0.grp_dct_2d_Pipeline_Xpose_Col_Outer_Loop_Xpose_Col_Inner_Loop_fu_369.flow_control_loop_pipe_sequential_init_U", "Parent" : "43"},
	{"ID" : "45", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.write_data_U0", "Parent" : "0", "Child" : ["46"],
		"CDFG" : "write_data",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "67", "EstimateLatencyMax" : "67",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "buf_r", "Type" : "Memory", "Direction" : "I", "DependentProc" : ["12"], "DependentChan" : "9"},
			{"Name" : "output_r", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "WR_Loop_Row_WR_Loop_Col", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter2", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "1"}}]},
	{"ID" : "46", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.write_data_U0.flow_control_loop_pipe_U", "Parent" : "45"}]}


set ArgLastReadFirstWriteLatency {
	dct {
		input_r {Type I LastRead 0 FirstWrite -1}
		output_r {Type O LastRead -1 FirstWrite 2}
		dct_1d_short_short_dct_coeff_table {Type I LastRead -1 FirstWrite -1}
		dct_1d_short_short_dct_coeff_table_1 {Type I LastRead -1 FirstWrite -1}
		dct_1d_short_short_dct_coeff_table_2 {Type I LastRead -1 FirstWrite -1}
		dct_1d_short_short_dct_coeff_table_3 {Type I LastRead -1 FirstWrite -1}
		dct_1d_short_short_dct_coeff_table_4 {Type I LastRead -1 FirstWrite -1}
		dct_1d_short_short_dct_coeff_table_5 {Type I LastRead -1 FirstWrite -1}
		dct_1d_short_short_dct_coeff_table_6 {Type I LastRead -1 FirstWrite -1}
		dct_1d_short_short_dct_coeff_table_7 {Type I LastRead -1 FirstWrite -1}}
	read_data {
		input_r {Type I LastRead 0 FirstWrite -1}
		buf_0 {Type O LastRead -1 FirstWrite 1}
		buf_1 {Type O LastRead -1 FirstWrite 1}
		buf_2 {Type O LastRead -1 FirstWrite 1}
		buf_3 {Type O LastRead -1 FirstWrite 1}
		buf_4 {Type O LastRead -1 FirstWrite 1}
		buf_5 {Type O LastRead -1 FirstWrite 1}
		buf_6 {Type O LastRead -1 FirstWrite 1}
		buf_7 {Type O LastRead -1 FirstWrite 1}}
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
		col_outbuf {Type I LastRead 1 FirstWrite -1}}
	write_data {
		buf_r {Type I LastRead 1 FirstWrite -1}
		output_r {Type O LastRead -1 FirstWrite 2}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "577", "Max" : "577"}
	, {"Name" : "Interval", "Min" : "443", "Max" : "443"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	input_r { ap_memory {  { input_r_address0 mem_address 1 6 }  { input_r_ce0 mem_ce 1 1 }  { input_r_d0 mem_din 1 16 }  { input_r_q0 mem_dout 0 16 }  { input_r_we0 mem_we 1 1 }  { input_r_address1 mem_address 1 6 }  { input_r_ce1 mem_ce 1 1 }  { input_r_d1 mem_din 1 16 }  { input_r_q1 mem_dout 0 16 }  { input_r_we1 mem_we 1 1 } } }
	output_r { ap_memory {  { output_r_address0 mem_address 1 6 }  { output_r_ce0 mem_ce 1 1 }  { output_r_d0 mem_din 1 16 }  { output_r_q0 mem_dout 0 16 }  { output_r_we0 mem_we 1 1 }  { output_r_address1 mem_address 1 6 }  { output_r_ce1 mem_ce 1 1 }  { output_r_d1 mem_din 1 16 }  { output_r_q1 mem_dout 0 16 }  { output_r_we1 mem_we 1 1 } } }
}

set maxi_interface_dict [dict create]

# RTL port scheduling information:
set fifoSchedulingInfoList { 
}

# RTL bus port read request latency information:
set busReadReqLatencyList { 
}

# RTL bus port write response latency information:
set busWriteResLatencyList { 
}

# RTL array port load latency information:
set memoryLoadLatencyList { 
}
