set moduleName dct
set isTopModule 1
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
set portNum 13
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ input_r_address0 sc_out sc_lv 6 signal 0 } 
	{ input_r_ce0 sc_out sc_logic 1 signal 0 } 
	{ input_r_q0 sc_in sc_lv 16 signal 0 } 
	{ output_r_address0 sc_out sc_lv 6 signal 1 } 
	{ output_r_ce0 sc_out sc_logic 1 signal 1 } 
	{ output_r_we0 sc_out sc_logic 1 signal 1 } 
	{ output_r_d0 sc_out sc_lv 16 signal 1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "input_r_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "input_r", "role": "address0" }} , 
 	{ "name": "input_r_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "input_r", "role": "ce0" }} , 
 	{ "name": "input_r_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "input_r", "role": "q0" }} , 
 	{ "name": "output_r_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "output_r", "role": "address0" }} , 
 	{ "name": "output_r_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_r", "role": "ce0" }} , 
 	{ "name": "output_r_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_r", "role": "we0" }} , 
 	{ "name": "output_r_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "output_r", "role": "d0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "5", "41"],
		"CDFG" : "dct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "423", "EstimateLatencyMax" : "423",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "input_r", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_read_data_fu_52", "Port" : "input_r", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "output_r", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "41", "SubInstance" : "grp_write_data_fu_82", "Port" : "output_r", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "dct_coeff_table_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_dct_2d_fu_60", "Port" : "dct_coeff_table_0", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "dct_coeff_table_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_dct_2d_fu_60", "Port" : "dct_coeff_table_1", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "dct_coeff_table_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_dct_2d_fu_60", "Port" : "dct_coeff_table_2", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "dct_coeff_table_3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_dct_2d_fu_60", "Port" : "dct_coeff_table_3", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "dct_coeff_table_4", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_dct_2d_fu_60", "Port" : "dct_coeff_table_4", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "dct_coeff_table_5", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_dct_2d_fu_60", "Port" : "dct_coeff_table_5", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "dct_coeff_table_6", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_dct_2d_fu_60", "Port" : "dct_coeff_table_6", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "dct_coeff_table_7", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_dct_2d_fu_60", "Port" : "dct_coeff_table_7", "Inst_start_state" : "3", "Inst_end_state" : "4"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.buf_2d_in_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.buf_2d_out_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_read_data_fu_52", "Parent" : "0", "Child" : ["4"],
		"CDFG" : "read_data",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "66", "EstimateLatencyMax" : "66",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "input_r", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "buf_r", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "RD_Loop_Row_RD_Loop_Col", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_read_data_fu_52.flow_control_loop_pipe_sequential_init_U", "Parent" : "3"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_dct_2d_fu_60", "Parent" : "0", "Child" : ["6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "27", "29", "39"],
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
					{"ID" : "17", "SubInstance" : "grp_dct_2d_Pipeline_Row_DCT_Loop_DCT_Outer_Loop_fu_42", "Port" : "in_block", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "out_block", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "39", "SubInstance" : "grp_dct_2d_Pipeline_Xpose_Col_Outer_Loop_Xpose_Col_Inner_Loop_fu_94", "Port" : "out_block", "Inst_start_state" : "7", "Inst_end_state" : "8"}]},
			{"Name" : "dct_coeff_table_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "17", "SubInstance" : "grp_dct_2d_Pipeline_Row_DCT_Loop_DCT_Outer_Loop_fu_42", "Port" : "dct_coeff_table_0", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "29", "SubInstance" : "grp_dct_2d_Pipeline_Col_DCT_Loop_DCT_Outer_Loop_fu_72", "Port" : "dct_coeff_table_0", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "dct_coeff_table_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "17", "SubInstance" : "grp_dct_2d_Pipeline_Row_DCT_Loop_DCT_Outer_Loop_fu_42", "Port" : "dct_coeff_table_1", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "29", "SubInstance" : "grp_dct_2d_Pipeline_Col_DCT_Loop_DCT_Outer_Loop_fu_72", "Port" : "dct_coeff_table_1", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "dct_coeff_table_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "17", "SubInstance" : "grp_dct_2d_Pipeline_Row_DCT_Loop_DCT_Outer_Loop_fu_42", "Port" : "dct_coeff_table_2", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "29", "SubInstance" : "grp_dct_2d_Pipeline_Col_DCT_Loop_DCT_Outer_Loop_fu_72", "Port" : "dct_coeff_table_2", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "dct_coeff_table_3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "17", "SubInstance" : "grp_dct_2d_Pipeline_Row_DCT_Loop_DCT_Outer_Loop_fu_42", "Port" : "dct_coeff_table_3", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "29", "SubInstance" : "grp_dct_2d_Pipeline_Col_DCT_Loop_DCT_Outer_Loop_fu_72", "Port" : "dct_coeff_table_3", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "dct_coeff_table_4", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "17", "SubInstance" : "grp_dct_2d_Pipeline_Row_DCT_Loop_DCT_Outer_Loop_fu_42", "Port" : "dct_coeff_table_4", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "29", "SubInstance" : "grp_dct_2d_Pipeline_Col_DCT_Loop_DCT_Outer_Loop_fu_72", "Port" : "dct_coeff_table_4", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "dct_coeff_table_5", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "17", "SubInstance" : "grp_dct_2d_Pipeline_Row_DCT_Loop_DCT_Outer_Loop_fu_42", "Port" : "dct_coeff_table_5", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "29", "SubInstance" : "grp_dct_2d_Pipeline_Col_DCT_Loop_DCT_Outer_Loop_fu_72", "Port" : "dct_coeff_table_5", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "dct_coeff_table_6", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "17", "SubInstance" : "grp_dct_2d_Pipeline_Row_DCT_Loop_DCT_Outer_Loop_fu_42", "Port" : "dct_coeff_table_6", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "29", "SubInstance" : "grp_dct_2d_Pipeline_Col_DCT_Loop_DCT_Outer_Loop_fu_72", "Port" : "dct_coeff_table_6", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "dct_coeff_table_7", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "17", "SubInstance" : "grp_dct_2d_Pipeline_Row_DCT_Loop_DCT_Outer_Loop_fu_42", "Port" : "dct_coeff_table_7", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "29", "SubInstance" : "grp_dct_2d_Pipeline_Col_DCT_Loop_DCT_Outer_Loop_fu_72", "Port" : "dct_coeff_table_7", "Inst_start_state" : "5", "Inst_end_state" : "6"}]}]},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dct_2d_fu_60.dct_coeff_table_0_U", "Parent" : "5"},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dct_2d_fu_60.dct_coeff_table_1_U", "Parent" : "5"},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dct_2d_fu_60.dct_coeff_table_2_U", "Parent" : "5"},
	{"ID" : "9", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dct_2d_fu_60.dct_coeff_table_3_U", "Parent" : "5"},
	{"ID" : "10", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dct_2d_fu_60.dct_coeff_table_4_U", "Parent" : "5"},
	{"ID" : "11", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dct_2d_fu_60.dct_coeff_table_5_U", "Parent" : "5"},
	{"ID" : "12", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dct_2d_fu_60.dct_coeff_table_6_U", "Parent" : "5"},
	{"ID" : "13", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dct_2d_fu_60.dct_coeff_table_7_U", "Parent" : "5"},
	{"ID" : "14", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dct_2d_fu_60.row_outbuf_U", "Parent" : "5"},
	{"ID" : "15", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dct_2d_fu_60.col_outbuf_U", "Parent" : "5"},
	{"ID" : "16", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dct_2d_fu_60.col_inbuf_U", "Parent" : "5"},
	{"ID" : "17", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dct_2d_fu_60.grp_dct_2d_Pipeline_Row_DCT_Loop_DCT_Outer_Loop_fu_42", "Parent" : "5", "Child" : ["18", "19", "20", "21", "22", "23", "24", "25", "26"],
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
	{"ID" : "18", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dct_2d_fu_60.grp_dct_2d_Pipeline_Row_DCT_Loop_DCT_Outer_Loop_fu_42.mul_mul_16s_15s_29_4_1_U3", "Parent" : "17"},
	{"ID" : "19", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dct_2d_fu_60.grp_dct_2d_Pipeline_Row_DCT_Loop_DCT_Outer_Loop_fu_42.mul_mul_16s_15s_29_4_1_U4", "Parent" : "17"},
	{"ID" : "20", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dct_2d_fu_60.grp_dct_2d_Pipeline_Row_DCT_Loop_DCT_Outer_Loop_fu_42.mul_mul_16s_15s_29_4_1_U5", "Parent" : "17"},
	{"ID" : "21", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dct_2d_fu_60.grp_dct_2d_Pipeline_Row_DCT_Loop_DCT_Outer_Loop_fu_42.mac_muladd_16s_15s_13ns_29_4_1_U6", "Parent" : "17"},
	{"ID" : "22", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dct_2d_fu_60.grp_dct_2d_Pipeline_Row_DCT_Loop_DCT_Outer_Loop_fu_42.mac_muladd_16s_14ns_29s_29_4_1_U7", "Parent" : "17"},
	{"ID" : "23", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dct_2d_fu_60.grp_dct_2d_Pipeline_Row_DCT_Loop_DCT_Outer_Loop_fu_42.mac_muladd_16s_15s_29s_29_4_1_U8", "Parent" : "17"},
	{"ID" : "24", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dct_2d_fu_60.grp_dct_2d_Pipeline_Row_DCT_Loop_DCT_Outer_Loop_fu_42.mac_muladd_16s_15s_29s_29_4_1_U9", "Parent" : "17"},
	{"ID" : "25", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dct_2d_fu_60.grp_dct_2d_Pipeline_Row_DCT_Loop_DCT_Outer_Loop_fu_42.mac_muladd_16s_15s_29ns_29_4_1_U10", "Parent" : "17"},
	{"ID" : "26", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dct_2d_fu_60.grp_dct_2d_Pipeline_Row_DCT_Loop_DCT_Outer_Loop_fu_42.flow_control_loop_pipe_sequential_init_U", "Parent" : "17"},
	{"ID" : "27", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dct_2d_fu_60.grp_dct_2d_Pipeline_Xpose_Row_Outer_Loop_Xpose_Row_Inner_Loop_fu_66", "Parent" : "5", "Child" : ["28"],
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
	{"ID" : "28", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dct_2d_fu_60.grp_dct_2d_Pipeline_Xpose_Row_Outer_Loop_Xpose_Row_Inner_Loop_fu_66.flow_control_loop_pipe_sequential_init_U", "Parent" : "27"},
	{"ID" : "29", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dct_2d_fu_60.grp_dct_2d_Pipeline_Col_DCT_Loop_DCT_Outer_Loop_fu_72", "Parent" : "5", "Child" : ["30", "31", "32", "33", "34", "35", "36", "37", "38"],
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
	{"ID" : "30", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dct_2d_fu_60.grp_dct_2d_Pipeline_Col_DCT_Loop_DCT_Outer_Loop_fu_72.mul_mul_16s_15s_29_4_1_U28", "Parent" : "29"},
	{"ID" : "31", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dct_2d_fu_60.grp_dct_2d_Pipeline_Col_DCT_Loop_DCT_Outer_Loop_fu_72.mul_mul_16s_15s_29_4_1_U29", "Parent" : "29"},
	{"ID" : "32", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dct_2d_fu_60.grp_dct_2d_Pipeline_Col_DCT_Loop_DCT_Outer_Loop_fu_72.mul_mul_16s_15s_29_4_1_U30", "Parent" : "29"},
	{"ID" : "33", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dct_2d_fu_60.grp_dct_2d_Pipeline_Col_DCT_Loop_DCT_Outer_Loop_fu_72.mac_muladd_16s_15s_13ns_29_4_1_U31", "Parent" : "29"},
	{"ID" : "34", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dct_2d_fu_60.grp_dct_2d_Pipeline_Col_DCT_Loop_DCT_Outer_Loop_fu_72.mac_muladd_16s_14ns_29s_29_4_1_U32", "Parent" : "29"},
	{"ID" : "35", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dct_2d_fu_60.grp_dct_2d_Pipeline_Col_DCT_Loop_DCT_Outer_Loop_fu_72.mac_muladd_16s_15s_29s_29_4_1_U33", "Parent" : "29"},
	{"ID" : "36", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dct_2d_fu_60.grp_dct_2d_Pipeline_Col_DCT_Loop_DCT_Outer_Loop_fu_72.mac_muladd_16s_15s_29s_29_4_1_U34", "Parent" : "29"},
	{"ID" : "37", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dct_2d_fu_60.grp_dct_2d_Pipeline_Col_DCT_Loop_DCT_Outer_Loop_fu_72.mac_muladd_16s_15s_29ns_29_4_1_U35", "Parent" : "29"},
	{"ID" : "38", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dct_2d_fu_60.grp_dct_2d_Pipeline_Col_DCT_Loop_DCT_Outer_Loop_fu_72.flow_control_loop_pipe_sequential_init_U", "Parent" : "29"},
	{"ID" : "39", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dct_2d_fu_60.grp_dct_2d_Pipeline_Xpose_Col_Outer_Loop_Xpose_Col_Inner_Loop_fu_94", "Parent" : "5", "Child" : ["40"],
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
	{"ID" : "40", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dct_2d_fu_60.grp_dct_2d_Pipeline_Xpose_Col_Outer_Loop_Xpose_Col_Inner_Loop_fu_94.flow_control_loop_pipe_sequential_init_U", "Parent" : "39"},
	{"ID" : "41", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_write_data_fu_82", "Parent" : "0", "Child" : ["42"],
		"CDFG" : "write_data",
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
			{"Name" : "buf_r", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "output_r", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "WR_Loop_Row_WR_Loop_Col", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter2", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "42", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_write_data_fu_82.flow_control_loop_pipe_sequential_init_U", "Parent" : "41"}]}


set ArgLastReadFirstWriteLatency {
	dct {
		input_r {Type I LastRead 0 FirstWrite -1}
		output_r {Type O LastRead -1 FirstWrite 2}
		dct_coeff_table_0 {Type I LastRead -1 FirstWrite -1}
		dct_coeff_table_1 {Type I LastRead -1 FirstWrite -1}
		dct_coeff_table_2 {Type I LastRead -1 FirstWrite -1}
		dct_coeff_table_3 {Type I LastRead -1 FirstWrite -1}
		dct_coeff_table_4 {Type I LastRead -1 FirstWrite -1}
		dct_coeff_table_5 {Type I LastRead -1 FirstWrite -1}
		dct_coeff_table_6 {Type I LastRead -1 FirstWrite -1}
		dct_coeff_table_7 {Type I LastRead -1 FirstWrite -1}}
	read_data {
		input_r {Type I LastRead 0 FirstWrite -1}
		buf_r {Type O LastRead -1 FirstWrite 1}}
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
		col_outbuf {Type I LastRead 1 FirstWrite -1}}
	write_data {
		buf_r {Type I LastRead 1 FirstWrite -1}
		output_r {Type O LastRead -1 FirstWrite 2}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "423", "Max" : "423"}
	, {"Name" : "Interval", "Min" : "424", "Max" : "424"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	input_r { ap_memory {  { input_r_address0 mem_address 1 6 }  { input_r_ce0 mem_ce 1 1 }  { input_r_q0 mem_dout 0 16 } } }
	output_r { ap_memory {  { output_r_address0 mem_address 1 6 }  { output_r_ce0 mem_ce 1 1 }  { output_r_we0 mem_we 1 1 }  { output_r_d0 mem_din 1 16 } } }
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
