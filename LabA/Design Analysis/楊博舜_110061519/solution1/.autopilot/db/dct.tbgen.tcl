set moduleName dct
set isTopModule 1
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_chain
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set hasInterrupt 0
set C_modelName {dct}
set C_modelType { void 0 }
set C_modelArgList {
	{ gmem int 512 regular {axi_master 2}  }
	{ input_r int 64 regular {axi_slave 0}  }
	{ output_r int 64 regular {axi_slave 0}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "gmem", "interface" : "axi_master", "bitwidth" : 512, "direction" : "READWRITE", "bitSlice":[ {"cElement": [{"cName": "input_r","offset": { "type": "dynamic","port_name": "input_r","bundle": "control"},"direction": "READONLY"},{"cName": "output_r","offset": { "type": "dynamic","port_name": "output_r","bundle": "control"},"direction": "WRITEONLY"}]}]} , 
 	{ "Name" : "input_r", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":16}, "offset_end" : {"in":27}} , 
 	{ "Name" : "output_r", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":28}, "offset_end" : {"in":39}} ]}
# RTL Port declarations: 
set portNum 65
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst_n sc_in sc_logic 1 reset -1 active_low_sync } 
	{ m_axi_gmem_AWVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem_AWREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem_AWADDR sc_out sc_lv 64 signal 0 } 
	{ m_axi_gmem_AWID sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem_AWLEN sc_out sc_lv 8 signal 0 } 
	{ m_axi_gmem_AWSIZE sc_out sc_lv 3 signal 0 } 
	{ m_axi_gmem_AWBURST sc_out sc_lv 2 signal 0 } 
	{ m_axi_gmem_AWLOCK sc_out sc_lv 2 signal 0 } 
	{ m_axi_gmem_AWCACHE sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem_AWPROT sc_out sc_lv 3 signal 0 } 
	{ m_axi_gmem_AWQOS sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem_AWREGION sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem_AWUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem_WVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem_WREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem_WDATA sc_out sc_lv 512 signal 0 } 
	{ m_axi_gmem_WSTRB sc_out sc_lv 64 signal 0 } 
	{ m_axi_gmem_WLAST sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem_WID sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem_WUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem_ARVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem_ARREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem_ARADDR sc_out sc_lv 64 signal 0 } 
	{ m_axi_gmem_ARID sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem_ARLEN sc_out sc_lv 8 signal 0 } 
	{ m_axi_gmem_ARSIZE sc_out sc_lv 3 signal 0 } 
	{ m_axi_gmem_ARBURST sc_out sc_lv 2 signal 0 } 
	{ m_axi_gmem_ARLOCK sc_out sc_lv 2 signal 0 } 
	{ m_axi_gmem_ARCACHE sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem_ARPROT sc_out sc_lv 3 signal 0 } 
	{ m_axi_gmem_ARQOS sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem_ARREGION sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem_ARUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem_RVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem_RREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem_RDATA sc_in sc_lv 512 signal 0 } 
	{ m_axi_gmem_RLAST sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem_RID sc_in sc_lv 1 signal 0 } 
	{ m_axi_gmem_RUSER sc_in sc_lv 1 signal 0 } 
	{ m_axi_gmem_RRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_gmem_BVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem_BREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem_BRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_gmem_BID sc_in sc_lv 1 signal 0 } 
	{ m_axi_gmem_BUSER sc_in sc_lv 1 signal 0 } 
	{ s_axi_control_AWVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_AWREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_AWADDR sc_in sc_lv 6 signal -1 } 
	{ s_axi_control_WVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_WREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_WDATA sc_in sc_lv 32 signal -1 } 
	{ s_axi_control_WSTRB sc_in sc_lv 4 signal -1 } 
	{ s_axi_control_ARVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_ARREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_ARADDR sc_in sc_lv 6 signal -1 } 
	{ s_axi_control_RVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_RREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_RDATA sc_out sc_lv 32 signal -1 } 
	{ s_axi_control_RRESP sc_out sc_lv 2 signal -1 } 
	{ s_axi_control_BVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_BREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_BRESP sc_out sc_lv 2 signal -1 } 
	{ interrupt sc_out sc_logic 1 signal -1 } 
}
set NewPortList {[ 
	{ "name": "s_axi_control_AWADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "control", "role": "AWADDR" },"address":[{"name":"dct","role":"start","value":"0","valid_bit":"0"},{"name":"dct","role":"continue","value":"0","valid_bit":"4"},{"name":"dct","role":"auto_start","value":"0","valid_bit":"7"},{"name":"input_r","role":"data","value":"16"},{"name":"output_r","role":"data","value":"28"}] },
	{ "name": "s_axi_control_AWVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "AWVALID" } },
	{ "name": "s_axi_control_AWREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "AWREADY" } },
	{ "name": "s_axi_control_WVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "WVALID" } },
	{ "name": "s_axi_control_WREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "WREADY" } },
	{ "name": "s_axi_control_WDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "control", "role": "WDATA" } },
	{ "name": "s_axi_control_WSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "control", "role": "WSTRB" } },
	{ "name": "s_axi_control_ARADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "control", "role": "ARADDR" },"address":[{"name":"dct","role":"start","value":"0","valid_bit":"0"},{"name":"dct","role":"done","value":"0","valid_bit":"1"},{"name":"dct","role":"idle","value":"0","valid_bit":"2"},{"name":"dct","role":"ready","value":"0","valid_bit":"3"},{"name":"dct","role":"auto_start","value":"0","valid_bit":"7"}] },
	{ "name": "s_axi_control_ARVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "ARVALID" } },
	{ "name": "s_axi_control_ARREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "ARREADY" } },
	{ "name": "s_axi_control_RVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "RVALID" } },
	{ "name": "s_axi_control_RREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "RREADY" } },
	{ "name": "s_axi_control_RDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "control", "role": "RDATA" } },
	{ "name": "s_axi_control_RRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "control", "role": "RRESP" } },
	{ "name": "s_axi_control_BVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "BVALID" } },
	{ "name": "s_axi_control_BREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "BREADY" } },
	{ "name": "s_axi_control_BRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "control", "role": "BRESP" } },
	{ "name": "interrupt", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "interrupt" } }, 
 	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst_n", "role": "default" }} , 
 	{ "name": "m_axi_gmem_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "AWVALID" }} , 
 	{ "name": "m_axi_gmem_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "AWREADY" }} , 
 	{ "name": "m_axi_gmem_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem", "role": "AWADDR" }} , 
 	{ "name": "m_axi_gmem_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "AWID" }} , 
 	{ "name": "m_axi_gmem_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "gmem", "role": "AWLEN" }} , 
 	{ "name": "m_axi_gmem_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_gmem_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem", "role": "AWBURST" }} , 
 	{ "name": "m_axi_gmem_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_gmem_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_gmem_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem", "role": "AWPROT" }} , 
 	{ "name": "m_axi_gmem_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem", "role": "AWQOS" }} , 
 	{ "name": "m_axi_gmem_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem", "role": "AWREGION" }} , 
 	{ "name": "m_axi_gmem_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "AWUSER" }} , 
 	{ "name": "m_axi_gmem_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "WVALID" }} , 
 	{ "name": "m_axi_gmem_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "WREADY" }} , 
 	{ "name": "m_axi_gmem_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "gmem", "role": "WDATA" }} , 
 	{ "name": "m_axi_gmem_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem", "role": "WSTRB" }} , 
 	{ "name": "m_axi_gmem_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "WLAST" }} , 
 	{ "name": "m_axi_gmem_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "WID" }} , 
 	{ "name": "m_axi_gmem_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "WUSER" }} , 
 	{ "name": "m_axi_gmem_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "ARVALID" }} , 
 	{ "name": "m_axi_gmem_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "ARREADY" }} , 
 	{ "name": "m_axi_gmem_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem", "role": "ARADDR" }} , 
 	{ "name": "m_axi_gmem_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "ARID" }} , 
 	{ "name": "m_axi_gmem_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "gmem", "role": "ARLEN" }} , 
 	{ "name": "m_axi_gmem_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_gmem_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem", "role": "ARBURST" }} , 
 	{ "name": "m_axi_gmem_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_gmem_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_gmem_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem", "role": "ARPROT" }} , 
 	{ "name": "m_axi_gmem_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem", "role": "ARQOS" }} , 
 	{ "name": "m_axi_gmem_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem", "role": "ARREGION" }} , 
 	{ "name": "m_axi_gmem_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "ARUSER" }} , 
 	{ "name": "m_axi_gmem_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "RVALID" }} , 
 	{ "name": "m_axi_gmem_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "RREADY" }} , 
 	{ "name": "m_axi_gmem_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "gmem", "role": "RDATA" }} , 
 	{ "name": "m_axi_gmem_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "RLAST" }} , 
 	{ "name": "m_axi_gmem_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "RID" }} , 
 	{ "name": "m_axi_gmem_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "RUSER" }} , 
 	{ "name": "m_axi_gmem_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem", "role": "RRESP" }} , 
 	{ "name": "m_axi_gmem_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "BVALID" }} , 
 	{ "name": "m_axi_gmem_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "BREADY" }} , 
 	{ "name": "m_axi_gmem_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem", "role": "BRESP" }} , 
 	{ "name": "m_axi_gmem_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "BID" }} , 
 	{ "name": "m_axi_gmem_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "BUSER" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "23", "33", "35", "45", "47", "49", "50"],
		"CDFG" : "dct",
		"Protocol" : "ap_ctrl_chain",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "444", "EstimateLatencyMax" : "444",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "gmem", "Type" : "MAXI", "Direction" : "IO",
				"BlockSignal" : [
					{"Name" : "gmem_blk_n_AR", "Type" : "RtlSignal"},
					{"Name" : "gmem_blk_n_AW", "Type" : "RtlSignal"},
					{"Name" : "gmem_blk_n_B", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "21", "SubInstance" : "grp_dct_Pipeline_RD_Loop_Row_fu_165", "Port" : "gmem", "Inst_start_state" : "72", "Inst_end_state" : "73"},
					{"ID" : "47", "SubInstance" : "grp_dct_Pipeline_WR_Loop_Row_fu_243", "Port" : "gmem", "Inst_start_state" : "82", "Inst_end_state" : "83"}]},
			{"Name" : "input_r", "Type" : "None", "Direction" : "I"},
			{"Name" : "output_r", "Type" : "None", "Direction" : "I"},
			{"Name" : "dct_coeff_table_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "23", "SubInstance" : "grp_dct_Pipeline_Row_DCT_Loop_DCT_Outer_Loop_fu_180", "Port" : "dct_coeff_table_0", "Inst_start_state" : "74", "Inst_end_state" : "75"},
					{"ID" : "35", "SubInstance" : "grp_dct_Pipeline_Col_DCT_Loop_DCT_Outer_Loop_fu_215", "Port" : "dct_coeff_table_0", "Inst_start_state" : "78", "Inst_end_state" : "79"}]},
			{"Name" : "dct_coeff_table_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "23", "SubInstance" : "grp_dct_Pipeline_Row_DCT_Loop_DCT_Outer_Loop_fu_180", "Port" : "dct_coeff_table_1", "Inst_start_state" : "74", "Inst_end_state" : "75"},
					{"ID" : "35", "SubInstance" : "grp_dct_Pipeline_Col_DCT_Loop_DCT_Outer_Loop_fu_215", "Port" : "dct_coeff_table_1", "Inst_start_state" : "78", "Inst_end_state" : "79"}]},
			{"Name" : "dct_coeff_table_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "23", "SubInstance" : "grp_dct_Pipeline_Row_DCT_Loop_DCT_Outer_Loop_fu_180", "Port" : "dct_coeff_table_2", "Inst_start_state" : "74", "Inst_end_state" : "75"},
					{"ID" : "35", "SubInstance" : "grp_dct_Pipeline_Col_DCT_Loop_DCT_Outer_Loop_fu_215", "Port" : "dct_coeff_table_2", "Inst_start_state" : "78", "Inst_end_state" : "79"}]},
			{"Name" : "dct_coeff_table_3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "23", "SubInstance" : "grp_dct_Pipeline_Row_DCT_Loop_DCT_Outer_Loop_fu_180", "Port" : "dct_coeff_table_3", "Inst_start_state" : "74", "Inst_end_state" : "75"},
					{"ID" : "35", "SubInstance" : "grp_dct_Pipeline_Col_DCT_Loop_DCT_Outer_Loop_fu_215", "Port" : "dct_coeff_table_3", "Inst_start_state" : "78", "Inst_end_state" : "79"}]},
			{"Name" : "dct_coeff_table_4", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "23", "SubInstance" : "grp_dct_Pipeline_Row_DCT_Loop_DCT_Outer_Loop_fu_180", "Port" : "dct_coeff_table_4", "Inst_start_state" : "74", "Inst_end_state" : "75"},
					{"ID" : "35", "SubInstance" : "grp_dct_Pipeline_Col_DCT_Loop_DCT_Outer_Loop_fu_215", "Port" : "dct_coeff_table_4", "Inst_start_state" : "78", "Inst_end_state" : "79"}]},
			{"Name" : "dct_coeff_table_5", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "23", "SubInstance" : "grp_dct_Pipeline_Row_DCT_Loop_DCT_Outer_Loop_fu_180", "Port" : "dct_coeff_table_5", "Inst_start_state" : "74", "Inst_end_state" : "75"},
					{"ID" : "35", "SubInstance" : "grp_dct_Pipeline_Col_DCT_Loop_DCT_Outer_Loop_fu_215", "Port" : "dct_coeff_table_5", "Inst_start_state" : "78", "Inst_end_state" : "79"}]},
			{"Name" : "dct_coeff_table_6", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "23", "SubInstance" : "grp_dct_Pipeline_Row_DCT_Loop_DCT_Outer_Loop_fu_180", "Port" : "dct_coeff_table_6", "Inst_start_state" : "74", "Inst_end_state" : "75"},
					{"ID" : "35", "SubInstance" : "grp_dct_Pipeline_Col_DCT_Loop_DCT_Outer_Loop_fu_215", "Port" : "dct_coeff_table_6", "Inst_start_state" : "78", "Inst_end_state" : "79"}]},
			{"Name" : "dct_coeff_table_7", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "23", "SubInstance" : "grp_dct_Pipeline_Row_DCT_Loop_DCT_Outer_Loop_fu_180", "Port" : "dct_coeff_table_7", "Inst_start_state" : "74", "Inst_end_state" : "75"},
					{"ID" : "35", "SubInstance" : "grp_dct_Pipeline_Col_DCT_Loop_DCT_Outer_Loop_fu_215", "Port" : "dct_coeff_table_7", "Inst_start_state" : "78", "Inst_end_state" : "79"}]}]},
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
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.buf_2d_in_0_U", "Parent" : "0"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.buf_2d_in_1_U", "Parent" : "0"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.buf_2d_in_2_U", "Parent" : "0"},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.buf_2d_in_3_U", "Parent" : "0"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.buf_2d_in_4_U", "Parent" : "0"},
	{"ID" : "17", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.buf_2d_in_5_U", "Parent" : "0"},
	{"ID" : "18", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.buf_2d_in_6_U", "Parent" : "0"},
	{"ID" : "19", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.buf_2d_in_7_U", "Parent" : "0"},
	{"ID" : "20", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.buf_2d_out_U", "Parent" : "0"},
	{"ID" : "21", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_dct_Pipeline_RD_Loop_Row_fu_165", "Parent" : "0", "Child" : ["22"],
		"CDFG" : "dct_Pipeline_RD_Loop_Row",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "11", "EstimateLatencyMax" : "11",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "gmem", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "gmem_blk_n_R", "Type" : "RtlSignal"}]},
			{"Name" : "sext_ln74", "Type" : "None", "Direction" : "I"},
			{"Name" : "buf_2d_in_0", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "buf_2d_in_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "buf_2d_in_2", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "buf_2d_in_3", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "buf_2d_in_4", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "buf_2d_in_5", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "buf_2d_in_6", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "buf_2d_in_7", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "RD_Loop_Row", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "22", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dct_Pipeline_RD_Loop_Row_fu_165.flow_control_loop_pipe_sequential_init_U", "Parent" : "21"},
	{"ID" : "23", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_dct_Pipeline_Row_DCT_Loop_DCT_Outer_Loop_fu_180", "Parent" : "0", "Child" : ["24", "25", "26", "27", "28", "29", "30", "31", "32"],
		"CDFG" : "dct_Pipeline_Row_DCT_Loop_DCT_Outer_Loop",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "70", "EstimateLatencyMax" : "70",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "buf_2d_in_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "buf_2d_in_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "buf_2d_in_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "buf_2d_in_3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "buf_2d_in_4", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "buf_2d_in_5", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "buf_2d_in_6", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "buf_2d_in_7", "Type" : "Memory", "Direction" : "I"},
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
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter5", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter5", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "24", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dct_Pipeline_Row_DCT_Loop_DCT_Outer_Loop_fu_180.mul_mul_16s_15s_29_4_1_U11", "Parent" : "23"},
	{"ID" : "25", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dct_Pipeline_Row_DCT_Loop_DCT_Outer_Loop_fu_180.mul_mul_16s_15s_29_4_1_U12", "Parent" : "23"},
	{"ID" : "26", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dct_Pipeline_Row_DCT_Loop_DCT_Outer_Loop_fu_180.mul_mul_16s_15s_29_4_1_U13", "Parent" : "23"},
	{"ID" : "27", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dct_Pipeline_Row_DCT_Loop_DCT_Outer_Loop_fu_180.mac_muladd_16s_15s_13ns_29_4_1_U14", "Parent" : "23"},
	{"ID" : "28", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dct_Pipeline_Row_DCT_Loop_DCT_Outer_Loop_fu_180.mac_muladd_16s_14ns_29s_29_4_1_U15", "Parent" : "23"},
	{"ID" : "29", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dct_Pipeline_Row_DCT_Loop_DCT_Outer_Loop_fu_180.mac_muladd_16s_15s_29s_29_4_1_U16", "Parent" : "23"},
	{"ID" : "30", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dct_Pipeline_Row_DCT_Loop_DCT_Outer_Loop_fu_180.mac_muladd_16s_15s_29s_29_4_1_U17", "Parent" : "23"},
	{"ID" : "31", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dct_Pipeline_Row_DCT_Loop_DCT_Outer_Loop_fu_180.mac_muladd_16s_15s_29ns_29_4_1_U18", "Parent" : "23"},
	{"ID" : "32", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dct_Pipeline_Row_DCT_Loop_DCT_Outer_Loop_fu_180.flow_control_loop_pipe_sequential_init_U", "Parent" : "23"},
	{"ID" : "33", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_dct_Pipeline_Xpose_Row_Outer_Loop_Xpose_Row_Inner_Loop_fu_209", "Parent" : "0", "Child" : ["34"],
		"CDFG" : "dct_Pipeline_Xpose_Row_Outer_Loop_Xpose_Row_Inner_Loop",
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
			{"Name" : "row_outbuf", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "col_inbuf", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "Xpose_Row_Outer_Loop_Xpose_Row_Inner_Loop", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "34", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dct_Pipeline_Xpose_Row_Outer_Loop_Xpose_Row_Inner_Loop_fu_209.flow_control_loop_pipe_sequential_init_U", "Parent" : "33"},
	{"ID" : "35", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_dct_Pipeline_Col_DCT_Loop_DCT_Outer_Loop_fu_215", "Parent" : "0", "Child" : ["36", "37", "38", "39", "40", "41", "42", "43", "44"],
		"CDFG" : "dct_Pipeline_Col_DCT_Loop_DCT_Outer_Loop",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "70", "EstimateLatencyMax" : "70",
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
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter5", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter5", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "36", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dct_Pipeline_Col_DCT_Loop_DCT_Outer_Loop_fu_215.mul_mul_16s_15s_29_4_1_U43", "Parent" : "35"},
	{"ID" : "37", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dct_Pipeline_Col_DCT_Loop_DCT_Outer_Loop_fu_215.mul_mul_16s_15s_29_4_1_U44", "Parent" : "35"},
	{"ID" : "38", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dct_Pipeline_Col_DCT_Loop_DCT_Outer_Loop_fu_215.mul_mul_16s_15s_29_4_1_U45", "Parent" : "35"},
	{"ID" : "39", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dct_Pipeline_Col_DCT_Loop_DCT_Outer_Loop_fu_215.mac_muladd_16s_15s_13ns_29_4_1_U46", "Parent" : "35"},
	{"ID" : "40", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dct_Pipeline_Col_DCT_Loop_DCT_Outer_Loop_fu_215.mac_muladd_16s_14ns_29s_29_4_1_U47", "Parent" : "35"},
	{"ID" : "41", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dct_Pipeline_Col_DCT_Loop_DCT_Outer_Loop_fu_215.mac_muladd_16s_15s_29s_29_4_1_U48", "Parent" : "35"},
	{"ID" : "42", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dct_Pipeline_Col_DCT_Loop_DCT_Outer_Loop_fu_215.mac_muladd_16s_15s_29s_29_4_1_U49", "Parent" : "35"},
	{"ID" : "43", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dct_Pipeline_Col_DCT_Loop_DCT_Outer_Loop_fu_215.mac_muladd_16s_15s_29ns_29_4_1_U50", "Parent" : "35"},
	{"ID" : "44", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dct_Pipeline_Col_DCT_Loop_DCT_Outer_Loop_fu_215.flow_control_loop_pipe_sequential_init_U", "Parent" : "35"},
	{"ID" : "45", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_dct_Pipeline_Xpose_Col_Outer_Loop_Xpose_Col_Inner_Loop_fu_237", "Parent" : "0", "Child" : ["46"],
		"CDFG" : "dct_Pipeline_Xpose_Col_Outer_Loop_Xpose_Col_Inner_Loop",
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
			{"Name" : "col_outbuf", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "buf_2d_out", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "Xpose_Col_Outer_Loop_Xpose_Col_Inner_Loop", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "46", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dct_Pipeline_Xpose_Col_Outer_Loop_Xpose_Col_Inner_Loop_fu_237.flow_control_loop_pipe_sequential_init_U", "Parent" : "45"},
	{"ID" : "47", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_dct_Pipeline_WR_Loop_Row_fu_243", "Parent" : "0", "Child" : ["48"],
		"CDFG" : "dct_Pipeline_WR_Loop_Row",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "11", "EstimateLatencyMax" : "11",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "gmem", "Type" : "MAXI", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "gmem_blk_n_W", "Type" : "RtlSignal"}]},
			{"Name" : "sext_ln87", "Type" : "None", "Direction" : "I"},
			{"Name" : "buf_2d_out", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "WR_Loop_Row", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "48", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dct_Pipeline_WR_Loop_Row_fu_243.flow_control_loop_pipe_sequential_init_U", "Parent" : "47"},
	{"ID" : "49", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.control_s_axi_U", "Parent" : "0"},
	{"ID" : "50", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.gmem_m_axi_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	dct {
		gmem {Type IO LastRead 83 FirstWrite -1}
		input_r {Type I LastRead 0 FirstWrite -1}
		output_r {Type I LastRead 79 FirstWrite -1}
		dct_coeff_table_0 {Type I LastRead -1 FirstWrite -1}
		dct_coeff_table_1 {Type I LastRead -1 FirstWrite -1}
		dct_coeff_table_2 {Type I LastRead -1 FirstWrite -1}
		dct_coeff_table_3 {Type I LastRead -1 FirstWrite -1}
		dct_coeff_table_4 {Type I LastRead -1 FirstWrite -1}
		dct_coeff_table_5 {Type I LastRead -1 FirstWrite -1}
		dct_coeff_table_6 {Type I LastRead -1 FirstWrite -1}
		dct_coeff_table_7 {Type I LastRead -1 FirstWrite -1}}
	dct_Pipeline_RD_Loop_Row {
		gmem {Type I LastRead 1 FirstWrite -1}
		sext_ln74 {Type I LastRead 0 FirstWrite -1}
		buf_2d_in_0 {Type O LastRead -1 FirstWrite 2}
		buf_2d_in_1 {Type O LastRead -1 FirstWrite 2}
		buf_2d_in_2 {Type O LastRead -1 FirstWrite 2}
		buf_2d_in_3 {Type O LastRead -1 FirstWrite 2}
		buf_2d_in_4 {Type O LastRead -1 FirstWrite 2}
		buf_2d_in_5 {Type O LastRead -1 FirstWrite 2}
		buf_2d_in_6 {Type O LastRead -1 FirstWrite 2}
		buf_2d_in_7 {Type O LastRead -1 FirstWrite 2}}
	dct_Pipeline_Row_DCT_Loop_DCT_Outer_Loop {
		buf_2d_in_0 {Type I LastRead 1 FirstWrite -1}
		buf_2d_in_1 {Type I LastRead 0 FirstWrite -1}
		buf_2d_in_2 {Type I LastRead 0 FirstWrite -1}
		buf_2d_in_3 {Type I LastRead 1 FirstWrite -1}
		buf_2d_in_4 {Type I LastRead 0 FirstWrite -1}
		buf_2d_in_5 {Type I LastRead 1 FirstWrite -1}
		buf_2d_in_6 {Type I LastRead 1 FirstWrite -1}
		buf_2d_in_7 {Type I LastRead 0 FirstWrite -1}
		row_outbuf {Type O LastRead -1 FirstWrite 5}
		dct_coeff_table_0 {Type I LastRead 0 FirstWrite -1}
		dct_coeff_table_1 {Type I LastRead 0 FirstWrite -1}
		dct_coeff_table_2 {Type I LastRead 0 FirstWrite -1}
		dct_coeff_table_3 {Type I LastRead 0 FirstWrite -1}
		dct_coeff_table_4 {Type I LastRead 0 FirstWrite -1}
		dct_coeff_table_5 {Type I LastRead 0 FirstWrite -1}
		dct_coeff_table_6 {Type I LastRead 0 FirstWrite -1}
		dct_coeff_table_7 {Type I LastRead 0 FirstWrite -1}}
	dct_Pipeline_Xpose_Row_Outer_Loop_Xpose_Row_Inner_Loop {
		row_outbuf {Type I LastRead 0 FirstWrite -1}
		col_inbuf {Type O LastRead -1 FirstWrite 1}}
	dct_Pipeline_Col_DCT_Loop_DCT_Outer_Loop {
		col_inbuf {Type I LastRead 1 FirstWrite -1}
		col_outbuf {Type O LastRead -1 FirstWrite 5}
		dct_coeff_table_0 {Type I LastRead 0 FirstWrite -1}
		dct_coeff_table_1 {Type I LastRead 0 FirstWrite -1}
		dct_coeff_table_2 {Type I LastRead 0 FirstWrite -1}
		dct_coeff_table_3 {Type I LastRead 0 FirstWrite -1}
		dct_coeff_table_4 {Type I LastRead 0 FirstWrite -1}
		dct_coeff_table_5 {Type I LastRead 0 FirstWrite -1}
		dct_coeff_table_6 {Type I LastRead 0 FirstWrite -1}
		dct_coeff_table_7 {Type I LastRead 0 FirstWrite -1}}
	dct_Pipeline_Xpose_Col_Outer_Loop_Xpose_Col_Inner_Loop {
		col_outbuf {Type I LastRead 0 FirstWrite -1}
		buf_2d_out {Type O LastRead -1 FirstWrite 1}}
	dct_Pipeline_WR_Loop_Row {
		gmem {Type O LastRead -1 FirstWrite 2}
		sext_ln87 {Type I LastRead 0 FirstWrite -1}
		buf_2d_out {Type I LastRead 1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "444", "Max" : "444"}
	, {"Name" : "Interval", "Min" : "445", "Max" : "445"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	gmem { m_axi {  { m_axi_gmem_AWVALID VALID 1 1 }  { m_axi_gmem_AWREADY READY 0 1 }  { m_axi_gmem_AWADDR ADDR 1 64 }  { m_axi_gmem_AWID ID 1 1 }  { m_axi_gmem_AWLEN SIZE 1 8 }  { m_axi_gmem_AWSIZE BURST 1 3 }  { m_axi_gmem_AWBURST LOCK 1 2 }  { m_axi_gmem_AWLOCK CACHE 1 2 }  { m_axi_gmem_AWCACHE PROT 1 4 }  { m_axi_gmem_AWPROT QOS 1 3 }  { m_axi_gmem_AWQOS REGION 1 4 }  { m_axi_gmem_AWREGION USER 1 4 }  { m_axi_gmem_AWUSER DATA 1 1 }  { m_axi_gmem_WVALID VALID 1 1 }  { m_axi_gmem_WREADY READY 0 1 }  { m_axi_gmem_WDATA FIFONUM 1 512 }  { m_axi_gmem_WSTRB STRB 1 64 }  { m_axi_gmem_WLAST LAST 1 1 }  { m_axi_gmem_WID ID 1 1 }  { m_axi_gmem_WUSER DATA 1 1 }  { m_axi_gmem_ARVALID VALID 1 1 }  { m_axi_gmem_ARREADY READY 0 1 }  { m_axi_gmem_ARADDR ADDR 1 64 }  { m_axi_gmem_ARID ID 1 1 }  { m_axi_gmem_ARLEN SIZE 1 8 }  { m_axi_gmem_ARSIZE BURST 1 3 }  { m_axi_gmem_ARBURST LOCK 1 2 }  { m_axi_gmem_ARLOCK CACHE 1 2 }  { m_axi_gmem_ARCACHE PROT 1 4 }  { m_axi_gmem_ARPROT QOS 1 3 }  { m_axi_gmem_ARQOS REGION 1 4 }  { m_axi_gmem_ARREGION USER 1 4 }  { m_axi_gmem_ARUSER DATA 1 1 }  { m_axi_gmem_RVALID VALID 0 1 }  { m_axi_gmem_RREADY READY 1 1 }  { m_axi_gmem_RDATA FIFONUM 0 512 }  { m_axi_gmem_RLAST LAST 0 1 }  { m_axi_gmem_RID ID 0 1 }  { m_axi_gmem_RUSER DATA 0 1 }  { m_axi_gmem_RRESP RESP 0 2 }  { m_axi_gmem_BVALID VALID 0 1 }  { m_axi_gmem_BREADY READY 1 1 }  { m_axi_gmem_BRESP RESP 0 2 }  { m_axi_gmem_BID ID 0 1 }  { m_axi_gmem_BUSER DATA 0 1 } } }
}

set maxi_interface_dict [dict create]
dict set maxi_interface_dict gmem {NUM_READ_OUTSTANDING 16 NUM_WRITE_OUTSTANDING 16 MAX_READ_BURST_LENGTH 16 MAX_WRITE_BURST_LENGTH 16 READ_WRITE_MODE READ_WRITE}

# RTL port scheduling information:
set fifoSchedulingInfoList { 
}

# RTL bus port read request latency information:
set busReadReqLatencyList { 
	{ gmem 64 }
}

# RTL bus port write response latency information:
set busWriteResLatencyList { 
	{ gmem 64 }
}

# RTL array port load latency information:
set memoryLoadLatencyList { 
}
