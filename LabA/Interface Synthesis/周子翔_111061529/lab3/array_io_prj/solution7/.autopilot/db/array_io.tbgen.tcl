set moduleName array_io
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
set C_modelName {array_io}
set C_modelType { void 0 }
set C_modelArgList {
	{ d_o_0 int 16 regular {fifo 1 volatile }  }
	{ d_o_1 int 16 regular {fifo 1 volatile }  }
	{ d_o_2 int 16 regular {fifo 1 volatile }  }
	{ d_o_3 int 16 regular {fifo 1 volatile }  }
	{ d_o_4 int 16 regular {fifo 1 volatile }  }
	{ d_o_5 int 16 regular {fifo 1 volatile }  }
	{ d_o_6 int 16 regular {fifo 1 volatile }  }
	{ d_o_7 int 16 regular {fifo 1 volatile }  }
	{ d_i_0 int 16 regular {fifo 0 volatile }  }
	{ d_i_1 int 16 regular {fifo 0 volatile }  }
	{ d_i_2 int 16 regular {fifo 0 volatile }  }
	{ d_i_3 int 16 regular {fifo 0 volatile }  }
	{ d_i_4 int 16 regular {fifo 0 volatile }  }
	{ d_i_5 int 16 regular {fifo 0 volatile }  }
	{ d_i_6 int 16 regular {fifo 0 volatile }  }
	{ d_i_7 int 16 regular {fifo 0 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "d_o_0", "interface" : "fifo", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "d_o_1", "interface" : "fifo", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "d_o_2", "interface" : "fifo", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "d_o_3", "interface" : "fifo", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "d_o_4", "interface" : "fifo", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "d_o_5", "interface" : "fifo", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "d_o_6", "interface" : "fifo", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "d_o_7", "interface" : "fifo", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "d_i_0", "interface" : "fifo", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "d_i_1", "interface" : "fifo", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "d_i_2", "interface" : "fifo", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "d_i_3", "interface" : "fifo", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "d_i_4", "interface" : "fifo", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "d_i_5", "interface" : "fifo", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "d_i_6", "interface" : "fifo", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "d_i_7", "interface" : "fifo", "bitwidth" : 16, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 54
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ d_o_0_din sc_out sc_lv 16 signal 0 } 
	{ d_o_0_full_n sc_in sc_logic 1 signal 0 } 
	{ d_o_0_write sc_out sc_logic 1 signal 0 } 
	{ d_o_1_din sc_out sc_lv 16 signal 1 } 
	{ d_o_1_full_n sc_in sc_logic 1 signal 1 } 
	{ d_o_1_write sc_out sc_logic 1 signal 1 } 
	{ d_o_2_din sc_out sc_lv 16 signal 2 } 
	{ d_o_2_full_n sc_in sc_logic 1 signal 2 } 
	{ d_o_2_write sc_out sc_logic 1 signal 2 } 
	{ d_o_3_din sc_out sc_lv 16 signal 3 } 
	{ d_o_3_full_n sc_in sc_logic 1 signal 3 } 
	{ d_o_3_write sc_out sc_logic 1 signal 3 } 
	{ d_o_4_din sc_out sc_lv 16 signal 4 } 
	{ d_o_4_full_n sc_in sc_logic 1 signal 4 } 
	{ d_o_4_write sc_out sc_logic 1 signal 4 } 
	{ d_o_5_din sc_out sc_lv 16 signal 5 } 
	{ d_o_5_full_n sc_in sc_logic 1 signal 5 } 
	{ d_o_5_write sc_out sc_logic 1 signal 5 } 
	{ d_o_6_din sc_out sc_lv 16 signal 6 } 
	{ d_o_6_full_n sc_in sc_logic 1 signal 6 } 
	{ d_o_6_write sc_out sc_logic 1 signal 6 } 
	{ d_o_7_din sc_out sc_lv 16 signal 7 } 
	{ d_o_7_full_n sc_in sc_logic 1 signal 7 } 
	{ d_o_7_write sc_out sc_logic 1 signal 7 } 
	{ d_i_0_dout sc_in sc_lv 16 signal 8 } 
	{ d_i_0_empty_n sc_in sc_logic 1 signal 8 } 
	{ d_i_0_read sc_out sc_logic 1 signal 8 } 
	{ d_i_1_dout sc_in sc_lv 16 signal 9 } 
	{ d_i_1_empty_n sc_in sc_logic 1 signal 9 } 
	{ d_i_1_read sc_out sc_logic 1 signal 9 } 
	{ d_i_2_dout sc_in sc_lv 16 signal 10 } 
	{ d_i_2_empty_n sc_in sc_logic 1 signal 10 } 
	{ d_i_2_read sc_out sc_logic 1 signal 10 } 
	{ d_i_3_dout sc_in sc_lv 16 signal 11 } 
	{ d_i_3_empty_n sc_in sc_logic 1 signal 11 } 
	{ d_i_3_read sc_out sc_logic 1 signal 11 } 
	{ d_i_4_dout sc_in sc_lv 16 signal 12 } 
	{ d_i_4_empty_n sc_in sc_logic 1 signal 12 } 
	{ d_i_4_read sc_out sc_logic 1 signal 12 } 
	{ d_i_5_dout sc_in sc_lv 16 signal 13 } 
	{ d_i_5_empty_n sc_in sc_logic 1 signal 13 } 
	{ d_i_5_read sc_out sc_logic 1 signal 13 } 
	{ d_i_6_dout sc_in sc_lv 16 signal 14 } 
	{ d_i_6_empty_n sc_in sc_logic 1 signal 14 } 
	{ d_i_6_read sc_out sc_logic 1 signal 14 } 
	{ d_i_7_dout sc_in sc_lv 16 signal 15 } 
	{ d_i_7_empty_n sc_in sc_logic 1 signal 15 } 
	{ d_i_7_read sc_out sc_logic 1 signal 15 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "d_o_0_din", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "d_o_0", "role": "din" }} , 
 	{ "name": "d_o_0_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "d_o_0", "role": "full_n" }} , 
 	{ "name": "d_o_0_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "d_o_0", "role": "write" }} , 
 	{ "name": "d_o_1_din", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "d_o_1", "role": "din" }} , 
 	{ "name": "d_o_1_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "d_o_1", "role": "full_n" }} , 
 	{ "name": "d_o_1_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "d_o_1", "role": "write" }} , 
 	{ "name": "d_o_2_din", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "d_o_2", "role": "din" }} , 
 	{ "name": "d_o_2_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "d_o_2", "role": "full_n" }} , 
 	{ "name": "d_o_2_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "d_o_2", "role": "write" }} , 
 	{ "name": "d_o_3_din", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "d_o_3", "role": "din" }} , 
 	{ "name": "d_o_3_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "d_o_3", "role": "full_n" }} , 
 	{ "name": "d_o_3_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "d_o_3", "role": "write" }} , 
 	{ "name": "d_o_4_din", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "d_o_4", "role": "din" }} , 
 	{ "name": "d_o_4_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "d_o_4", "role": "full_n" }} , 
 	{ "name": "d_o_4_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "d_o_4", "role": "write" }} , 
 	{ "name": "d_o_5_din", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "d_o_5", "role": "din" }} , 
 	{ "name": "d_o_5_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "d_o_5", "role": "full_n" }} , 
 	{ "name": "d_o_5_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "d_o_5", "role": "write" }} , 
 	{ "name": "d_o_6_din", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "d_o_6", "role": "din" }} , 
 	{ "name": "d_o_6_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "d_o_6", "role": "full_n" }} , 
 	{ "name": "d_o_6_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "d_o_6", "role": "write" }} , 
 	{ "name": "d_o_7_din", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "d_o_7", "role": "din" }} , 
 	{ "name": "d_o_7_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "d_o_7", "role": "full_n" }} , 
 	{ "name": "d_o_7_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "d_o_7", "role": "write" }} , 
 	{ "name": "d_i_0_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "d_i_0", "role": "dout" }} , 
 	{ "name": "d_i_0_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "d_i_0", "role": "empty_n" }} , 
 	{ "name": "d_i_0_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "d_i_0", "role": "read" }} , 
 	{ "name": "d_i_1_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "d_i_1", "role": "dout" }} , 
 	{ "name": "d_i_1_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "d_i_1", "role": "empty_n" }} , 
 	{ "name": "d_i_1_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "d_i_1", "role": "read" }} , 
 	{ "name": "d_i_2_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "d_i_2", "role": "dout" }} , 
 	{ "name": "d_i_2_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "d_i_2", "role": "empty_n" }} , 
 	{ "name": "d_i_2_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "d_i_2", "role": "read" }} , 
 	{ "name": "d_i_3_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "d_i_3", "role": "dout" }} , 
 	{ "name": "d_i_3_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "d_i_3", "role": "empty_n" }} , 
 	{ "name": "d_i_3_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "d_i_3", "role": "read" }} , 
 	{ "name": "d_i_4_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "d_i_4", "role": "dout" }} , 
 	{ "name": "d_i_4_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "d_i_4", "role": "empty_n" }} , 
 	{ "name": "d_i_4_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "d_i_4", "role": "read" }} , 
 	{ "name": "d_i_5_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "d_i_5", "role": "dout" }} , 
 	{ "name": "d_i_5_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "d_i_5", "role": "empty_n" }} , 
 	{ "name": "d_i_5_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "d_i_5", "role": "read" }} , 
 	{ "name": "d_i_6_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "d_i_6", "role": "dout" }} , 
 	{ "name": "d_i_6_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "d_i_6", "role": "empty_n" }} , 
 	{ "name": "d_i_6_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "d_i_6", "role": "read" }} , 
 	{ "name": "d_i_7_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "d_i_7", "role": "dout" }} , 
 	{ "name": "d_i_7_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "d_i_7", "role": "empty_n" }} , 
 	{ "name": "d_i_7_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "d_i_7", "role": "read" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "array_io",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "4", "EstimateLatencyMax" : "4",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "d_o_0", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "d_o_0_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "d_o_1", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "d_o_1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "d_o_2", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "d_o_2_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "d_o_3", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "d_o_3_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "d_o_4", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "d_o_4_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "d_o_5", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "d_o_5_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "d_o_6", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "d_o_6_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "d_o_7", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "d_o_7_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "d_i_0", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "d_i_0_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "d_i_1", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "d_i_1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "d_i_2", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "d_i_2_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "d_i_3", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "d_i_3_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "d_i_4", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "d_i_4_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "d_i_5", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "d_i_5_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "d_i_6", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "d_i_6_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "d_i_7", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "d_i_7_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "acc_0", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "acc_1", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "acc_2", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "acc_3", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "acc_4", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "acc_5", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "acc_6", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "acc_7", "Type" : "OVld", "Direction" : "IO"}]}]}


set ArgLastReadFirstWriteLatency {
	array_io {
		d_o_0 {Type O LastRead -1 FirstWrite 1}
		d_o_1 {Type O LastRead -1 FirstWrite 1}
		d_o_2 {Type O LastRead -1 FirstWrite 1}
		d_o_3 {Type O LastRead -1 FirstWrite 1}
		d_o_4 {Type O LastRead -1 FirstWrite 1}
		d_o_5 {Type O LastRead -1 FirstWrite 1}
		d_o_6 {Type O LastRead -1 FirstWrite 1}
		d_o_7 {Type O LastRead -1 FirstWrite 1}
		d_i_0 {Type I LastRead 3 FirstWrite -1}
		d_i_1 {Type I LastRead 3 FirstWrite -1}
		d_i_2 {Type I LastRead 3 FirstWrite -1}
		d_i_3 {Type I LastRead 3 FirstWrite -1}
		d_i_4 {Type I LastRead 3 FirstWrite -1}
		d_i_5 {Type I LastRead 3 FirstWrite -1}
		d_i_6 {Type I LastRead 3 FirstWrite -1}
		d_i_7 {Type I LastRead 3 FirstWrite -1}
		acc_0 {Type IO LastRead -1 FirstWrite -1}
		acc_1 {Type IO LastRead -1 FirstWrite -1}
		acc_2 {Type IO LastRead -1 FirstWrite -1}
		acc_3 {Type IO LastRead -1 FirstWrite -1}
		acc_4 {Type IO LastRead -1 FirstWrite -1}
		acc_5 {Type IO LastRead -1 FirstWrite -1}
		acc_6 {Type IO LastRead -1 FirstWrite -1}
		acc_7 {Type IO LastRead -1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "4", "Max" : "4"}
	, {"Name" : "Interval", "Min" : "5", "Max" : "5"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	d_o_0 { ap_fifo {  { d_o_0_din fifo_port_we 1 16 }  { d_o_0_full_n fifo_status 0 1 }  { d_o_0_write fifo_data 1 1 } } }
	d_o_1 { ap_fifo {  { d_o_1_din fifo_port_we 1 16 }  { d_o_1_full_n fifo_status 0 1 }  { d_o_1_write fifo_data 1 1 } } }
	d_o_2 { ap_fifo {  { d_o_2_din fifo_port_we 1 16 }  { d_o_2_full_n fifo_status 0 1 }  { d_o_2_write fifo_data 1 1 } } }
	d_o_3 { ap_fifo {  { d_o_3_din fifo_port_we 1 16 }  { d_o_3_full_n fifo_status 0 1 }  { d_o_3_write fifo_data 1 1 } } }
	d_o_4 { ap_fifo {  { d_o_4_din fifo_port_we 1 16 }  { d_o_4_full_n fifo_status 0 1 }  { d_o_4_write fifo_data 1 1 } } }
	d_o_5 { ap_fifo {  { d_o_5_din fifo_port_we 1 16 }  { d_o_5_full_n fifo_status 0 1 }  { d_o_5_write fifo_data 1 1 } } }
	d_o_6 { ap_fifo {  { d_o_6_din fifo_port_we 1 16 }  { d_o_6_full_n fifo_status 0 1 }  { d_o_6_write fifo_data 1 1 } } }
	d_o_7 { ap_fifo {  { d_o_7_din fifo_port_we 1 16 }  { d_o_7_full_n fifo_status 0 1 }  { d_o_7_write fifo_data 1 1 } } }
	d_i_0 { ap_fifo {  { d_i_0_dout fifo_port_we 0 16 }  { d_i_0_empty_n fifo_status 0 1 }  { d_i_0_read fifo_data 1 1 } } }
	d_i_1 { ap_fifo {  { d_i_1_dout fifo_port_we 0 16 }  { d_i_1_empty_n fifo_status 0 1 }  { d_i_1_read fifo_data 1 1 } } }
	d_i_2 { ap_fifo {  { d_i_2_dout fifo_port_we 0 16 }  { d_i_2_empty_n fifo_status 0 1 }  { d_i_2_read fifo_data 1 1 } } }
	d_i_3 { ap_fifo {  { d_i_3_dout fifo_port_we 0 16 }  { d_i_3_empty_n fifo_status 0 1 }  { d_i_3_read fifo_data 1 1 } } }
	d_i_4 { ap_fifo {  { d_i_4_dout fifo_port_we 0 16 }  { d_i_4_empty_n fifo_status 0 1 }  { d_i_4_read fifo_data 1 1 } } }
	d_i_5 { ap_fifo {  { d_i_5_dout fifo_port_we 0 16 }  { d_i_5_empty_n fifo_status 0 1 }  { d_i_5_read fifo_data 1 1 } } }
	d_i_6 { ap_fifo {  { d_i_6_dout fifo_port_we 0 16 }  { d_i_6_empty_n fifo_status 0 1 }  { d_i_6_read fifo_data 1 1 } } }
	d_i_7 { ap_fifo {  { d_i_7_dout fifo_port_we 0 16 }  { d_i_7_empty_n fifo_status 0 1 }  { d_i_7_read fifo_data 1 1 } } }
}

set maxi_interface_dict [dict create]

# RTL port scheduling information:
set fifoSchedulingInfoList { 
	d_o_0 { fifo_write 4 no_conditional }
	d_o_1 { fifo_write 4 no_conditional }
	d_o_2 { fifo_write 4 no_conditional }
	d_o_3 { fifo_write 4 no_conditional }
	d_o_4 { fifo_write 4 no_conditional }
	d_o_5 { fifo_write 4 no_conditional }
	d_o_6 { fifo_write 4 no_conditional }
	d_o_7 { fifo_write 4 no_conditional }
	d_i_0 { fifo_read 4 no_conditional }
	d_i_1 { fifo_read 4 no_conditional }
	d_i_2 { fifo_read 4 no_conditional }
	d_i_3 { fifo_read 4 no_conditional }
	d_i_4 { fifo_read 4 no_conditional }
	d_i_5 { fifo_read 4 no_conditional }
	d_i_6 { fifo_read 4 no_conditional }
	d_i_7 { fifo_read 4 no_conditional }
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
