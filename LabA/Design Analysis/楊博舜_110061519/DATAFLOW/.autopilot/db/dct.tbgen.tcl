set moduleName dct
set isTopModule 1
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set pipeline_type dataflow
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
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst_n sc_in sc_logic 1 reset -1 active_low_sync } 
	{ interrupt sc_out sc_logic 1 signal -1 } 
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
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "7", "305", "316", "317", "318", "319", "320", "321", "322", "323", "324", "325", "326", "327", "328", "329", "330", "331", "332", "333", "334", "335", "336", "337", "338", "339", "340", "341", "342", "343", "344", "345", "346", "347", "348", "349", "350", "351", "352", "353", "354", "355", "356", "357", "358", "359", "360", "361", "362", "363", "364", "365", "366", "367", "368", "369", "370", "371", "372", "373", "374", "375", "376", "377", "378", "379", "380", "381", "382", "383", "384", "385", "386", "387", "388", "389", "390", "391", "392", "393", "394", "395", "396", "397", "398", "399", "400", "401", "402", "403", "404", "405", "406", "407", "408", "409", "410", "411", "412", "413", "414", "415", "416", "417", "418", "419", "420", "421", "422", "423", "424", "425", "426", "427", "428", "429", "430", "431", "432", "433", "434", "435", "436", "437", "438", "439", "440", "441", "442", "443", "444"],
		"CDFG" : "dct",
		"Protocol" : "ap_ctrl_chain",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "Dataflow", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "1",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "179", "EstimateLatencyMax" : "179",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "1",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"InputProcess" : [
			{"ID" : "3", "Name" : "entry_proc_U0"},
			{"ID" : "4", "Name" : "read_data_U0"}],
		"OutputProcess" : [
			{"ID" : "305", "Name" : "write_data_U0"}],
		"Port" : [
			{"Name" : "gmem", "Type" : "MAXI", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "305", "SubInstance" : "write_data_U0", "Port" : "gmem"},
					{"ID" : "4", "SubInstance" : "read_data_U0", "Port" : "gmem"}]},
			{"Name" : "input_r", "Type" : "None", "Direction" : "I"},
			{"Name" : "output_r", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.control_s_axi_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.gmem_m_axi_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.entry_proc_U0", "Parent" : "0",
		"CDFG" : "entry_proc",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "output_r", "Type" : "None", "Direction" : "I"},
			{"Name" : "output_r_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["305"], "DependentChan" : "316", "DependentChanDepth" : "9", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "output_r_c_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.read_data_U0", "Parent" : "0", "Child" : ["5"],
		"CDFG" : "read_data",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "83", "EstimateLatencyMax" : "83",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "gmem", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "gmem_blk_n_AR", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_read_data_Pipeline_RD_Loop_Row_fu_309", "Port" : "gmem", "Inst_start_state" : "71", "Inst_end_state" : "72"}]},
			{"Name" : "input_r", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.read_data_U0.grp_read_data_Pipeline_RD_Loop_Row_fu_309", "Parent" : "4", "Child" : ["6"],
		"CDFG" : "read_data_Pipeline_RD_Loop_Row",
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
			{"Name" : "buf_7_7_out_0_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "buf_7_6_out_0_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "buf_7_5_out_0_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "buf_7_4_out_0_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "buf_7_3_out_0_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "buf_7_2_out_0_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "buf_7_1_out_0_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "buf_7_0_out_0_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "buf_6_7_out_0_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "buf_6_6_out_0_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "buf_6_5_out_0_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "buf_6_4_out_0_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "buf_6_3_out_0_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "buf_6_2_out_0_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "buf_6_1_out_0_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "buf_6_0_out_0_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "buf_5_7_out_0_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "buf_5_6_out_0_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "buf_5_5_out_0_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "buf_5_4_out_0_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "buf_5_3_out_0_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "buf_5_2_out_0_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "buf_5_1_out_0_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "buf_5_0_out_0_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "buf_4_7_out_0_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "buf_4_6_out_0_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "buf_4_5_out_0_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "buf_4_4_out_0_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "buf_4_3_out_0_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "buf_4_2_out_0_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "buf_4_1_out_0_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "buf_4_0_out_0_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "buf_3_7_out_0_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "buf_3_6_out_0_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "buf_3_5_out_0_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "buf_3_4_out_0_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "buf_3_3_out_0_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "buf_3_2_out_0_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "buf_3_1_out_0_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "buf_3_0_out_0_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "buf_2_7_out_0_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "buf_2_6_out_0_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "buf_2_5_out_0_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "buf_2_4_out_0_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "buf_2_3_out_0_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "buf_2_2_out_0_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "buf_2_1_out_0_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "buf_2_0_out_0_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "buf_1_7_out_0_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "buf_1_6_out_0_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "buf_1_5_out_0_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "buf_1_4_out_0_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "buf_1_3_out_0_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "buf_1_2_out_0_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "buf_1_1_out_0_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "buf_1_0_out_0_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "buf_0_7_out_0_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "buf_0_6_out_0_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "buf_0_5_out_0_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "buf_0_4_out_0_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "buf_0_3_out_0_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "buf_0_2_out_0_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "buf_0_1_out_0_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "buf_0_0_out_0_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "RD_Loop_Row", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "6", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.read_data_U0.grp_read_data_Pipeline_RD_Loop_Row_fu_309.flow_control_loop_pipe_sequential_init_U", "Parent" : "5"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dct_2d_U0", "Parent" : "0", "Child" : ["8", "37", "66", "95", "124", "153", "182", "211", "240", "241", "242", "243", "244", "245", "246", "247", "248", "249", "250", "251", "252", "253", "254", "255", "256", "257", "258", "259", "260", "261", "262", "263", "264", "265", "266", "267", "268", "269", "270", "271", "272", "273", "274", "275", "276", "277", "278", "279", "280", "281", "282", "283", "284", "285", "286", "287", "288", "289", "290", "291", "292", "293", "294", "295", "296", "297", "298", "299", "300", "301", "302", "303", "304"],
		"CDFG" : "dct_2d",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "2",
		"VariableLatency" : "0", "ExactLatency" : "13", "EstimateLatencyMin" : "13", "EstimateLatencyMax" : "13",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "p_read", "Type" : "None", "Direction" : "I", "DependentProc" : ["4"], "DependentChan" : "317", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read1", "Type" : "None", "Direction" : "I", "DependentProc" : ["4"], "DependentChan" : "318", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read2", "Type" : "None", "Direction" : "I", "DependentProc" : ["4"], "DependentChan" : "319", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read3", "Type" : "None", "Direction" : "I", "DependentProc" : ["4"], "DependentChan" : "320", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read4", "Type" : "None", "Direction" : "I", "DependentProc" : ["4"], "DependentChan" : "321", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read5", "Type" : "None", "Direction" : "I", "DependentProc" : ["4"], "DependentChan" : "322", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read6", "Type" : "None", "Direction" : "I", "DependentProc" : ["4"], "DependentChan" : "323", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read7", "Type" : "None", "Direction" : "I", "DependentProc" : ["4"], "DependentChan" : "324", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read8", "Type" : "None", "Direction" : "I", "DependentProc" : ["4"], "DependentChan" : "325", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read9", "Type" : "None", "Direction" : "I", "DependentProc" : ["4"], "DependentChan" : "326", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read10", "Type" : "None", "Direction" : "I", "DependentProc" : ["4"], "DependentChan" : "327", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read11", "Type" : "None", "Direction" : "I", "DependentProc" : ["4"], "DependentChan" : "328", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read12", "Type" : "None", "Direction" : "I", "DependentProc" : ["4"], "DependentChan" : "329", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read13", "Type" : "None", "Direction" : "I", "DependentProc" : ["4"], "DependentChan" : "330", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read14", "Type" : "None", "Direction" : "I", "DependentProc" : ["4"], "DependentChan" : "331", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read15", "Type" : "None", "Direction" : "I", "DependentProc" : ["4"], "DependentChan" : "332", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read16", "Type" : "None", "Direction" : "I", "DependentProc" : ["4"], "DependentChan" : "333", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read17", "Type" : "None", "Direction" : "I", "DependentProc" : ["4"], "DependentChan" : "334", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read18", "Type" : "None", "Direction" : "I", "DependentProc" : ["4"], "DependentChan" : "335", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read19", "Type" : "None", "Direction" : "I", "DependentProc" : ["4"], "DependentChan" : "336", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read20", "Type" : "None", "Direction" : "I", "DependentProc" : ["4"], "DependentChan" : "337", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read21", "Type" : "None", "Direction" : "I", "DependentProc" : ["4"], "DependentChan" : "338", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read22", "Type" : "None", "Direction" : "I", "DependentProc" : ["4"], "DependentChan" : "339", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read23", "Type" : "None", "Direction" : "I", "DependentProc" : ["4"], "DependentChan" : "340", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read24", "Type" : "None", "Direction" : "I", "DependentProc" : ["4"], "DependentChan" : "341", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read25", "Type" : "None", "Direction" : "I", "DependentProc" : ["4"], "DependentChan" : "342", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read26", "Type" : "None", "Direction" : "I", "DependentProc" : ["4"], "DependentChan" : "343", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read27", "Type" : "None", "Direction" : "I", "DependentProc" : ["4"], "DependentChan" : "344", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read28", "Type" : "None", "Direction" : "I", "DependentProc" : ["4"], "DependentChan" : "345", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read29", "Type" : "None", "Direction" : "I", "DependentProc" : ["4"], "DependentChan" : "346", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read30", "Type" : "None", "Direction" : "I", "DependentProc" : ["4"], "DependentChan" : "347", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read31", "Type" : "None", "Direction" : "I", "DependentProc" : ["4"], "DependentChan" : "348", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read32", "Type" : "None", "Direction" : "I", "DependentProc" : ["4"], "DependentChan" : "349", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read33", "Type" : "None", "Direction" : "I", "DependentProc" : ["4"], "DependentChan" : "350", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read34", "Type" : "None", "Direction" : "I", "DependentProc" : ["4"], "DependentChan" : "351", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read35", "Type" : "None", "Direction" : "I", "DependentProc" : ["4"], "DependentChan" : "352", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read36", "Type" : "None", "Direction" : "I", "DependentProc" : ["4"], "DependentChan" : "353", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read37", "Type" : "None", "Direction" : "I", "DependentProc" : ["4"], "DependentChan" : "354", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read38", "Type" : "None", "Direction" : "I", "DependentProc" : ["4"], "DependentChan" : "355", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read39", "Type" : "None", "Direction" : "I", "DependentProc" : ["4"], "DependentChan" : "356", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read40", "Type" : "None", "Direction" : "I", "DependentProc" : ["4"], "DependentChan" : "357", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read41", "Type" : "None", "Direction" : "I", "DependentProc" : ["4"], "DependentChan" : "358", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read42", "Type" : "None", "Direction" : "I", "DependentProc" : ["4"], "DependentChan" : "359", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read43", "Type" : "None", "Direction" : "I", "DependentProc" : ["4"], "DependentChan" : "360", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read44", "Type" : "None", "Direction" : "I", "DependentProc" : ["4"], "DependentChan" : "361", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read45", "Type" : "None", "Direction" : "I", "DependentProc" : ["4"], "DependentChan" : "362", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read46", "Type" : "None", "Direction" : "I", "DependentProc" : ["4"], "DependentChan" : "363", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read47", "Type" : "None", "Direction" : "I", "DependentProc" : ["4"], "DependentChan" : "364", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read48", "Type" : "None", "Direction" : "I", "DependentProc" : ["4"], "DependentChan" : "365", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read49", "Type" : "None", "Direction" : "I", "DependentProc" : ["4"], "DependentChan" : "366", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read50", "Type" : "None", "Direction" : "I", "DependentProc" : ["4"], "DependentChan" : "367", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read51", "Type" : "None", "Direction" : "I", "DependentProc" : ["4"], "DependentChan" : "368", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read52", "Type" : "None", "Direction" : "I", "DependentProc" : ["4"], "DependentChan" : "369", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read53", "Type" : "None", "Direction" : "I", "DependentProc" : ["4"], "DependentChan" : "370", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read54", "Type" : "None", "Direction" : "I", "DependentProc" : ["4"], "DependentChan" : "371", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read55", "Type" : "None", "Direction" : "I", "DependentProc" : ["4"], "DependentChan" : "372", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read56", "Type" : "None", "Direction" : "I", "DependentProc" : ["4"], "DependentChan" : "373", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read57", "Type" : "None", "Direction" : "I", "DependentProc" : ["4"], "DependentChan" : "374", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read58", "Type" : "None", "Direction" : "I", "DependentProc" : ["4"], "DependentChan" : "375", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read59", "Type" : "None", "Direction" : "I", "DependentProc" : ["4"], "DependentChan" : "376", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read60", "Type" : "None", "Direction" : "I", "DependentProc" : ["4"], "DependentChan" : "377", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read61", "Type" : "None", "Direction" : "I", "DependentProc" : ["4"], "DependentChan" : "378", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read62", "Type" : "None", "Direction" : "I", "DependentProc" : ["4"], "DependentChan" : "379", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read63", "Type" : "None", "Direction" : "I", "DependentProc" : ["4"], "DependentChan" : "380", "DependentChanDepth" : "2", "DependentChanType" : "1"}]},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dct_2d_U0.grp_dct_1d_fu_526", "Parent" : "7", "Child" : ["9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30", "31", "32", "33", "34", "35", "36"],
		"CDFG" : "dct_1d",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "5", "EstimateLatencyMin" : "5", "EstimateLatencyMax" : "5",
		"Combinational" : "0",
		"Datapath" : "1",
		"ClockEnable" : "1",
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
			{"Name" : "p_read7", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "9", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dct_2d_U0.grp_dct_1d_fu_526.mul_mul_16s_14ns_29_4_0_U71", "Parent" : "8"},
	{"ID" : "10", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dct_2d_U0.grp_dct_1d_fu_526.mul_mul_16s_15s_29_4_0_U72", "Parent" : "8"},
	{"ID" : "11", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dct_2d_U0.grp_dct_1d_fu_526.mul_mul_16s_14ns_29_4_0_U73", "Parent" : "8"},
	{"ID" : "12", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dct_2d_U0.grp_dct_1d_fu_526.mul_mul_16s_15s_29_4_0_U74", "Parent" : "8"},
	{"ID" : "13", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dct_2d_U0.grp_dct_1d_fu_526.ama_submuladd_16s_16s_12ns_29s_29_4_0_U75", "Parent" : "8"},
	{"ID" : "14", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dct_2d_U0.grp_dct_1d_fu_526.mul_mul_17s_13ns_29_4_0_U76", "Parent" : "8"},
	{"ID" : "15", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dct_2d_U0.grp_dct_1d_fu_526.mac_muladd_18s_14ns_13ns_29_4_0_U77", "Parent" : "8"},
	{"ID" : "16", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dct_2d_U0.grp_dct_1d_fu_526.mul_mul_16s_14ns_29_4_0_U78", "Parent" : "8"},
	{"ID" : "17", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dct_2d_U0.grp_dct_1d_fu_526.ama_submuladd_16s_16s_13ns_29s_29_4_0_U79", "Parent" : "8"},
	{"ID" : "18", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dct_2d_U0.grp_dct_1d_fu_526.mac_muladd_16s_15s_29s_29_4_0_U80", "Parent" : "8"},
	{"ID" : "19", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dct_2d_U0.grp_dct_1d_fu_526.mul_mul_17s_12ns_29_4_0_U81", "Parent" : "8"},
	{"ID" : "20", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dct_2d_U0.grp_dct_1d_fu_526.mac_muladd_18s_13ns_13ns_29_4_0_U82", "Parent" : "8"},
	{"ID" : "21", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dct_2d_U0.grp_dct_1d_fu_526.mac_muladd_16s_14ns_29s_29_4_0_U83", "Parent" : "8"},
	{"ID" : "22", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dct_2d_U0.grp_dct_1d_fu_526.mul_mul_16s_15s_29_4_0_U84", "Parent" : "8"},
	{"ID" : "23", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dct_2d_U0.grp_dct_1d_fu_526.mac_muladd_16s_14ns_29ns_29_4_0_U85", "Parent" : "8"},
	{"ID" : "24", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dct_2d_U0.grp_dct_1d_fu_526.mac_muladd_16s_15s_29s_29_4_0_U86", "Parent" : "8"},
	{"ID" : "25", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dct_2d_U0.grp_dct_1d_fu_526.mac_muladd_16s_15s_13ns_29_4_0_U87", "Parent" : "8"},
	{"ID" : "26", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dct_2d_U0.grp_dct_1d_fu_526.ama_addmuladd_18s_16s_13ns_29ns_29_4_0_U88", "Parent" : "8"},
	{"ID" : "27", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dct_2d_U0.grp_dct_1d_fu_526.mac_muladd_16s_14ns_29ns_29_4_0_U89", "Parent" : "8"},
	{"ID" : "28", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dct_2d_U0.grp_dct_1d_fu_526.mac_muladd_16s_15s_13ns_29_4_0_U90", "Parent" : "8"},
	{"ID" : "29", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dct_2d_U0.grp_dct_1d_fu_526.mac_muladd_17s_12ns_29s_29_4_0_U91", "Parent" : "8"},
	{"ID" : "30", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dct_2d_U0.grp_dct_1d_fu_526.mac_muladd_16s_15s_29ns_29_4_0_U92", "Parent" : "8"},
	{"ID" : "31", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dct_2d_U0.grp_dct_1d_fu_526.mac_muladd_16s_14ns_29s_29_4_0_U93", "Parent" : "8"},
	{"ID" : "32", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dct_2d_U0.grp_dct_1d_fu_526.mac_muladd_17s_13ns_13ns_29_4_0_U94", "Parent" : "8"},
	{"ID" : "33", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dct_2d_U0.grp_dct_1d_fu_526.ama_submuladd_18s_16s_14ns_29ns_29_4_0_U95", "Parent" : "8"},
	{"ID" : "34", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dct_2d_U0.grp_dct_1d_fu_526.mac_muladd_16s_14ns_29ns_29_4_0_U96", "Parent" : "8"},
	{"ID" : "35", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dct_2d_U0.grp_dct_1d_fu_526.mac_muladd_17s_13ns_29s_29_4_0_U97", "Parent" : "8"},
	{"ID" : "36", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dct_2d_U0.grp_dct_1d_fu_526.mac_muladd_17s_12ns_13ns_29_4_0_U98", "Parent" : "8"},
	{"ID" : "37", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dct_2d_U0.grp_dct_1d_fu_546", "Parent" : "7", "Child" : ["38", "39", "40", "41", "42", "43", "44", "45", "46", "47", "48", "49", "50", "51", "52", "53", "54", "55", "56", "57", "58", "59", "60", "61", "62", "63", "64", "65"],
		"CDFG" : "dct_1d",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "5", "EstimateLatencyMin" : "5", "EstimateLatencyMax" : "5",
		"Combinational" : "0",
		"Datapath" : "1",
		"ClockEnable" : "1",
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
			{"Name" : "p_read7", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "38", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dct_2d_U0.grp_dct_1d_fu_546.mul_mul_16s_14ns_29_4_0_U71", "Parent" : "37"},
	{"ID" : "39", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dct_2d_U0.grp_dct_1d_fu_546.mul_mul_16s_15s_29_4_0_U72", "Parent" : "37"},
	{"ID" : "40", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dct_2d_U0.grp_dct_1d_fu_546.mul_mul_16s_14ns_29_4_0_U73", "Parent" : "37"},
	{"ID" : "41", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dct_2d_U0.grp_dct_1d_fu_546.mul_mul_16s_15s_29_4_0_U74", "Parent" : "37"},
	{"ID" : "42", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dct_2d_U0.grp_dct_1d_fu_546.ama_submuladd_16s_16s_12ns_29s_29_4_0_U75", "Parent" : "37"},
	{"ID" : "43", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dct_2d_U0.grp_dct_1d_fu_546.mul_mul_17s_13ns_29_4_0_U76", "Parent" : "37"},
	{"ID" : "44", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dct_2d_U0.grp_dct_1d_fu_546.mac_muladd_18s_14ns_13ns_29_4_0_U77", "Parent" : "37"},
	{"ID" : "45", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dct_2d_U0.grp_dct_1d_fu_546.mul_mul_16s_14ns_29_4_0_U78", "Parent" : "37"},
	{"ID" : "46", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dct_2d_U0.grp_dct_1d_fu_546.ama_submuladd_16s_16s_13ns_29s_29_4_0_U79", "Parent" : "37"},
	{"ID" : "47", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dct_2d_U0.grp_dct_1d_fu_546.mac_muladd_16s_15s_29s_29_4_0_U80", "Parent" : "37"},
	{"ID" : "48", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dct_2d_U0.grp_dct_1d_fu_546.mul_mul_17s_12ns_29_4_0_U81", "Parent" : "37"},
	{"ID" : "49", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dct_2d_U0.grp_dct_1d_fu_546.mac_muladd_18s_13ns_13ns_29_4_0_U82", "Parent" : "37"},
	{"ID" : "50", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dct_2d_U0.grp_dct_1d_fu_546.mac_muladd_16s_14ns_29s_29_4_0_U83", "Parent" : "37"},
	{"ID" : "51", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dct_2d_U0.grp_dct_1d_fu_546.mul_mul_16s_15s_29_4_0_U84", "Parent" : "37"},
	{"ID" : "52", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dct_2d_U0.grp_dct_1d_fu_546.mac_muladd_16s_14ns_29ns_29_4_0_U85", "Parent" : "37"},
	{"ID" : "53", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dct_2d_U0.grp_dct_1d_fu_546.mac_muladd_16s_15s_29s_29_4_0_U86", "Parent" : "37"},
	{"ID" : "54", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dct_2d_U0.grp_dct_1d_fu_546.mac_muladd_16s_15s_13ns_29_4_0_U87", "Parent" : "37"},
	{"ID" : "55", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dct_2d_U0.grp_dct_1d_fu_546.ama_addmuladd_18s_16s_13ns_29ns_29_4_0_U88", "Parent" : "37"},
	{"ID" : "56", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dct_2d_U0.grp_dct_1d_fu_546.mac_muladd_16s_14ns_29ns_29_4_0_U89", "Parent" : "37"},
	{"ID" : "57", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dct_2d_U0.grp_dct_1d_fu_546.mac_muladd_16s_15s_13ns_29_4_0_U90", "Parent" : "37"},
	{"ID" : "58", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dct_2d_U0.grp_dct_1d_fu_546.mac_muladd_17s_12ns_29s_29_4_0_U91", "Parent" : "37"},
	{"ID" : "59", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dct_2d_U0.grp_dct_1d_fu_546.mac_muladd_16s_15s_29ns_29_4_0_U92", "Parent" : "37"},
	{"ID" : "60", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dct_2d_U0.grp_dct_1d_fu_546.mac_muladd_16s_14ns_29s_29_4_0_U93", "Parent" : "37"},
	{"ID" : "61", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dct_2d_U0.grp_dct_1d_fu_546.mac_muladd_17s_13ns_13ns_29_4_0_U94", "Parent" : "37"},
	{"ID" : "62", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dct_2d_U0.grp_dct_1d_fu_546.ama_submuladd_18s_16s_14ns_29ns_29_4_0_U95", "Parent" : "37"},
	{"ID" : "63", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dct_2d_U0.grp_dct_1d_fu_546.mac_muladd_16s_14ns_29ns_29_4_0_U96", "Parent" : "37"},
	{"ID" : "64", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dct_2d_U0.grp_dct_1d_fu_546.mac_muladd_17s_13ns_29s_29_4_0_U97", "Parent" : "37"},
	{"ID" : "65", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dct_2d_U0.grp_dct_1d_fu_546.mac_muladd_17s_12ns_13ns_29_4_0_U98", "Parent" : "37"},
	{"ID" : "66", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dct_2d_U0.grp_dct_1d_fu_566", "Parent" : "7", "Child" : ["67", "68", "69", "70", "71", "72", "73", "74", "75", "76", "77", "78", "79", "80", "81", "82", "83", "84", "85", "86", "87", "88", "89", "90", "91", "92", "93", "94"],
		"CDFG" : "dct_1d",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "5", "EstimateLatencyMin" : "5", "EstimateLatencyMax" : "5",
		"Combinational" : "0",
		"Datapath" : "1",
		"ClockEnable" : "1",
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
			{"Name" : "p_read7", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "67", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dct_2d_U0.grp_dct_1d_fu_566.mul_mul_16s_14ns_29_4_0_U71", "Parent" : "66"},
	{"ID" : "68", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dct_2d_U0.grp_dct_1d_fu_566.mul_mul_16s_15s_29_4_0_U72", "Parent" : "66"},
	{"ID" : "69", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dct_2d_U0.grp_dct_1d_fu_566.mul_mul_16s_14ns_29_4_0_U73", "Parent" : "66"},
	{"ID" : "70", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dct_2d_U0.grp_dct_1d_fu_566.mul_mul_16s_15s_29_4_0_U74", "Parent" : "66"},
	{"ID" : "71", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dct_2d_U0.grp_dct_1d_fu_566.ama_submuladd_16s_16s_12ns_29s_29_4_0_U75", "Parent" : "66"},
	{"ID" : "72", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dct_2d_U0.grp_dct_1d_fu_566.mul_mul_17s_13ns_29_4_0_U76", "Parent" : "66"},
	{"ID" : "73", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dct_2d_U0.grp_dct_1d_fu_566.mac_muladd_18s_14ns_13ns_29_4_0_U77", "Parent" : "66"},
	{"ID" : "74", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dct_2d_U0.grp_dct_1d_fu_566.mul_mul_16s_14ns_29_4_0_U78", "Parent" : "66"},
	{"ID" : "75", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dct_2d_U0.grp_dct_1d_fu_566.ama_submuladd_16s_16s_13ns_29s_29_4_0_U79", "Parent" : "66"},
	{"ID" : "76", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dct_2d_U0.grp_dct_1d_fu_566.mac_muladd_16s_15s_29s_29_4_0_U80", "Parent" : "66"},
	{"ID" : "77", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dct_2d_U0.grp_dct_1d_fu_566.mul_mul_17s_12ns_29_4_0_U81", "Parent" : "66"},
	{"ID" : "78", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dct_2d_U0.grp_dct_1d_fu_566.mac_muladd_18s_13ns_13ns_29_4_0_U82", "Parent" : "66"},
	{"ID" : "79", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dct_2d_U0.grp_dct_1d_fu_566.mac_muladd_16s_14ns_29s_29_4_0_U83", "Parent" : "66"},
	{"ID" : "80", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dct_2d_U0.grp_dct_1d_fu_566.mul_mul_16s_15s_29_4_0_U84", "Parent" : "66"},
	{"ID" : "81", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dct_2d_U0.grp_dct_1d_fu_566.mac_muladd_16s_14ns_29ns_29_4_0_U85", "Parent" : "66"},
	{"ID" : "82", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dct_2d_U0.grp_dct_1d_fu_566.mac_muladd_16s_15s_29s_29_4_0_U86", "Parent" : "66"},
	{"ID" : "83", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dct_2d_U0.grp_dct_1d_fu_566.mac_muladd_16s_15s_13ns_29_4_0_U87", "Parent" : "66"},
	{"ID" : "84", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dct_2d_U0.grp_dct_1d_fu_566.ama_addmuladd_18s_16s_13ns_29ns_29_4_0_U88", "Parent" : "66"},
	{"ID" : "85", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dct_2d_U0.grp_dct_1d_fu_566.mac_muladd_16s_14ns_29ns_29_4_0_U89", "Parent" : "66"},
	{"ID" : "86", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dct_2d_U0.grp_dct_1d_fu_566.mac_muladd_16s_15s_13ns_29_4_0_U90", "Parent" : "66"},
	{"ID" : "87", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dct_2d_U0.grp_dct_1d_fu_566.mac_muladd_17s_12ns_29s_29_4_0_U91", "Parent" : "66"},
	{"ID" : "88", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dct_2d_U0.grp_dct_1d_fu_566.mac_muladd_16s_15s_29ns_29_4_0_U92", "Parent" : "66"},
	{"ID" : "89", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dct_2d_U0.grp_dct_1d_fu_566.mac_muladd_16s_14ns_29s_29_4_0_U93", "Parent" : "66"},
	{"ID" : "90", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dct_2d_U0.grp_dct_1d_fu_566.mac_muladd_17s_13ns_13ns_29_4_0_U94", "Parent" : "66"},
	{"ID" : "91", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dct_2d_U0.grp_dct_1d_fu_566.ama_submuladd_18s_16s_14ns_29ns_29_4_0_U95", "Parent" : "66"},
	{"ID" : "92", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dct_2d_U0.grp_dct_1d_fu_566.mac_muladd_16s_14ns_29ns_29_4_0_U96", "Parent" : "66"},
	{"ID" : "93", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dct_2d_U0.grp_dct_1d_fu_566.mac_muladd_17s_13ns_29s_29_4_0_U97", "Parent" : "66"},
	{"ID" : "94", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dct_2d_U0.grp_dct_1d_fu_566.mac_muladd_17s_12ns_13ns_29_4_0_U98", "Parent" : "66"},
	{"ID" : "95", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dct_2d_U0.grp_dct_1d_fu_586", "Parent" : "7", "Child" : ["96", "97", "98", "99", "100", "101", "102", "103", "104", "105", "106", "107", "108", "109", "110", "111", "112", "113", "114", "115", "116", "117", "118", "119", "120", "121", "122", "123"],
		"CDFG" : "dct_1d",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "5", "EstimateLatencyMin" : "5", "EstimateLatencyMax" : "5",
		"Combinational" : "0",
		"Datapath" : "1",
		"ClockEnable" : "1",
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
			{"Name" : "p_read7", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "96", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dct_2d_U0.grp_dct_1d_fu_586.mul_mul_16s_14ns_29_4_0_U71", "Parent" : "95"},
	{"ID" : "97", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dct_2d_U0.grp_dct_1d_fu_586.mul_mul_16s_15s_29_4_0_U72", "Parent" : "95"},
	{"ID" : "98", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dct_2d_U0.grp_dct_1d_fu_586.mul_mul_16s_14ns_29_4_0_U73", "Parent" : "95"},
	{"ID" : "99", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dct_2d_U0.grp_dct_1d_fu_586.mul_mul_16s_15s_29_4_0_U74", "Parent" : "95"},
	{"ID" : "100", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dct_2d_U0.grp_dct_1d_fu_586.ama_submuladd_16s_16s_12ns_29s_29_4_0_U75", "Parent" : "95"},
	{"ID" : "101", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dct_2d_U0.grp_dct_1d_fu_586.mul_mul_17s_13ns_29_4_0_U76", "Parent" : "95"},
	{"ID" : "102", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dct_2d_U0.grp_dct_1d_fu_586.mac_muladd_18s_14ns_13ns_29_4_0_U77", "Parent" : "95"},
	{"ID" : "103", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dct_2d_U0.grp_dct_1d_fu_586.mul_mul_16s_14ns_29_4_0_U78", "Parent" : "95"},
	{"ID" : "104", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dct_2d_U0.grp_dct_1d_fu_586.ama_submuladd_16s_16s_13ns_29s_29_4_0_U79", "Parent" : "95"},
	{"ID" : "105", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dct_2d_U0.grp_dct_1d_fu_586.mac_muladd_16s_15s_29s_29_4_0_U80", "Parent" : "95"},
	{"ID" : "106", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dct_2d_U0.grp_dct_1d_fu_586.mul_mul_17s_12ns_29_4_0_U81", "Parent" : "95"},
	{"ID" : "107", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dct_2d_U0.grp_dct_1d_fu_586.mac_muladd_18s_13ns_13ns_29_4_0_U82", "Parent" : "95"},
	{"ID" : "108", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dct_2d_U0.grp_dct_1d_fu_586.mac_muladd_16s_14ns_29s_29_4_0_U83", "Parent" : "95"},
	{"ID" : "109", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dct_2d_U0.grp_dct_1d_fu_586.mul_mul_16s_15s_29_4_0_U84", "Parent" : "95"},
	{"ID" : "110", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dct_2d_U0.grp_dct_1d_fu_586.mac_muladd_16s_14ns_29ns_29_4_0_U85", "Parent" : "95"},
	{"ID" : "111", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dct_2d_U0.grp_dct_1d_fu_586.mac_muladd_16s_15s_29s_29_4_0_U86", "Parent" : "95"},
	{"ID" : "112", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dct_2d_U0.grp_dct_1d_fu_586.mac_muladd_16s_15s_13ns_29_4_0_U87", "Parent" : "95"},
	{"ID" : "113", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dct_2d_U0.grp_dct_1d_fu_586.ama_addmuladd_18s_16s_13ns_29ns_29_4_0_U88", "Parent" : "95"},
	{"ID" : "114", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dct_2d_U0.grp_dct_1d_fu_586.mac_muladd_16s_14ns_29ns_29_4_0_U89", "Parent" : "95"},
	{"ID" : "115", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dct_2d_U0.grp_dct_1d_fu_586.mac_muladd_16s_15s_13ns_29_4_0_U90", "Parent" : "95"},
	{"ID" : "116", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dct_2d_U0.grp_dct_1d_fu_586.mac_muladd_17s_12ns_29s_29_4_0_U91", "Parent" : "95"},
	{"ID" : "117", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dct_2d_U0.grp_dct_1d_fu_586.mac_muladd_16s_15s_29ns_29_4_0_U92", "Parent" : "95"},
	{"ID" : "118", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dct_2d_U0.grp_dct_1d_fu_586.mac_muladd_16s_14ns_29s_29_4_0_U93", "Parent" : "95"},
	{"ID" : "119", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dct_2d_U0.grp_dct_1d_fu_586.mac_muladd_17s_13ns_13ns_29_4_0_U94", "Parent" : "95"},
	{"ID" : "120", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dct_2d_U0.grp_dct_1d_fu_586.ama_submuladd_18s_16s_14ns_29ns_29_4_0_U95", "Parent" : "95"},
	{"ID" : "121", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dct_2d_U0.grp_dct_1d_fu_586.mac_muladd_16s_14ns_29ns_29_4_0_U96", "Parent" : "95"},
	{"ID" : "122", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dct_2d_U0.grp_dct_1d_fu_586.mac_muladd_17s_13ns_29s_29_4_0_U97", "Parent" : "95"},
	{"ID" : "123", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dct_2d_U0.grp_dct_1d_fu_586.mac_muladd_17s_12ns_13ns_29_4_0_U98", "Parent" : "95"},
	{"ID" : "124", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dct_2d_U0.grp_dct_1d_fu_606", "Parent" : "7", "Child" : ["125", "126", "127", "128", "129", "130", "131", "132", "133", "134", "135", "136", "137", "138", "139", "140", "141", "142", "143", "144", "145", "146", "147", "148", "149", "150", "151", "152"],
		"CDFG" : "dct_1d",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "5", "EstimateLatencyMin" : "5", "EstimateLatencyMax" : "5",
		"Combinational" : "0",
		"Datapath" : "1",
		"ClockEnable" : "1",
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
			{"Name" : "p_read7", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "125", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dct_2d_U0.grp_dct_1d_fu_606.mul_mul_16s_14ns_29_4_0_U71", "Parent" : "124"},
	{"ID" : "126", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dct_2d_U0.grp_dct_1d_fu_606.mul_mul_16s_15s_29_4_0_U72", "Parent" : "124"},
	{"ID" : "127", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dct_2d_U0.grp_dct_1d_fu_606.mul_mul_16s_14ns_29_4_0_U73", "Parent" : "124"},
	{"ID" : "128", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dct_2d_U0.grp_dct_1d_fu_606.mul_mul_16s_15s_29_4_0_U74", "Parent" : "124"},
	{"ID" : "129", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dct_2d_U0.grp_dct_1d_fu_606.ama_submuladd_16s_16s_12ns_29s_29_4_0_U75", "Parent" : "124"},
	{"ID" : "130", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dct_2d_U0.grp_dct_1d_fu_606.mul_mul_17s_13ns_29_4_0_U76", "Parent" : "124"},
	{"ID" : "131", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dct_2d_U0.grp_dct_1d_fu_606.mac_muladd_18s_14ns_13ns_29_4_0_U77", "Parent" : "124"},
	{"ID" : "132", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dct_2d_U0.grp_dct_1d_fu_606.mul_mul_16s_14ns_29_4_0_U78", "Parent" : "124"},
	{"ID" : "133", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dct_2d_U0.grp_dct_1d_fu_606.ama_submuladd_16s_16s_13ns_29s_29_4_0_U79", "Parent" : "124"},
	{"ID" : "134", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dct_2d_U0.grp_dct_1d_fu_606.mac_muladd_16s_15s_29s_29_4_0_U80", "Parent" : "124"},
	{"ID" : "135", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dct_2d_U0.grp_dct_1d_fu_606.mul_mul_17s_12ns_29_4_0_U81", "Parent" : "124"},
	{"ID" : "136", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dct_2d_U0.grp_dct_1d_fu_606.mac_muladd_18s_13ns_13ns_29_4_0_U82", "Parent" : "124"},
	{"ID" : "137", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dct_2d_U0.grp_dct_1d_fu_606.mac_muladd_16s_14ns_29s_29_4_0_U83", "Parent" : "124"},
	{"ID" : "138", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dct_2d_U0.grp_dct_1d_fu_606.mul_mul_16s_15s_29_4_0_U84", "Parent" : "124"},
	{"ID" : "139", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dct_2d_U0.grp_dct_1d_fu_606.mac_muladd_16s_14ns_29ns_29_4_0_U85", "Parent" : "124"},
	{"ID" : "140", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dct_2d_U0.grp_dct_1d_fu_606.mac_muladd_16s_15s_29s_29_4_0_U86", "Parent" : "124"},
	{"ID" : "141", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dct_2d_U0.grp_dct_1d_fu_606.mac_muladd_16s_15s_13ns_29_4_0_U87", "Parent" : "124"},
	{"ID" : "142", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dct_2d_U0.grp_dct_1d_fu_606.ama_addmuladd_18s_16s_13ns_29ns_29_4_0_U88", "Parent" : "124"},
	{"ID" : "143", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dct_2d_U0.grp_dct_1d_fu_606.mac_muladd_16s_14ns_29ns_29_4_0_U89", "Parent" : "124"},
	{"ID" : "144", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dct_2d_U0.grp_dct_1d_fu_606.mac_muladd_16s_15s_13ns_29_4_0_U90", "Parent" : "124"},
	{"ID" : "145", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dct_2d_U0.grp_dct_1d_fu_606.mac_muladd_17s_12ns_29s_29_4_0_U91", "Parent" : "124"},
	{"ID" : "146", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dct_2d_U0.grp_dct_1d_fu_606.mac_muladd_16s_15s_29ns_29_4_0_U92", "Parent" : "124"},
	{"ID" : "147", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dct_2d_U0.grp_dct_1d_fu_606.mac_muladd_16s_14ns_29s_29_4_0_U93", "Parent" : "124"},
	{"ID" : "148", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dct_2d_U0.grp_dct_1d_fu_606.mac_muladd_17s_13ns_13ns_29_4_0_U94", "Parent" : "124"},
	{"ID" : "149", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dct_2d_U0.grp_dct_1d_fu_606.ama_submuladd_18s_16s_14ns_29ns_29_4_0_U95", "Parent" : "124"},
	{"ID" : "150", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dct_2d_U0.grp_dct_1d_fu_606.mac_muladd_16s_14ns_29ns_29_4_0_U96", "Parent" : "124"},
	{"ID" : "151", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dct_2d_U0.grp_dct_1d_fu_606.mac_muladd_17s_13ns_29s_29_4_0_U97", "Parent" : "124"},
	{"ID" : "152", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dct_2d_U0.grp_dct_1d_fu_606.mac_muladd_17s_12ns_13ns_29_4_0_U98", "Parent" : "124"},
	{"ID" : "153", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dct_2d_U0.grp_dct_1d_fu_626", "Parent" : "7", "Child" : ["154", "155", "156", "157", "158", "159", "160", "161", "162", "163", "164", "165", "166", "167", "168", "169", "170", "171", "172", "173", "174", "175", "176", "177", "178", "179", "180", "181"],
		"CDFG" : "dct_1d",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "5", "EstimateLatencyMin" : "5", "EstimateLatencyMax" : "5",
		"Combinational" : "0",
		"Datapath" : "1",
		"ClockEnable" : "1",
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
			{"Name" : "p_read7", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "154", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dct_2d_U0.grp_dct_1d_fu_626.mul_mul_16s_14ns_29_4_0_U71", "Parent" : "153"},
	{"ID" : "155", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dct_2d_U0.grp_dct_1d_fu_626.mul_mul_16s_15s_29_4_0_U72", "Parent" : "153"},
	{"ID" : "156", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dct_2d_U0.grp_dct_1d_fu_626.mul_mul_16s_14ns_29_4_0_U73", "Parent" : "153"},
	{"ID" : "157", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dct_2d_U0.grp_dct_1d_fu_626.mul_mul_16s_15s_29_4_0_U74", "Parent" : "153"},
	{"ID" : "158", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dct_2d_U0.grp_dct_1d_fu_626.ama_submuladd_16s_16s_12ns_29s_29_4_0_U75", "Parent" : "153"},
	{"ID" : "159", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dct_2d_U0.grp_dct_1d_fu_626.mul_mul_17s_13ns_29_4_0_U76", "Parent" : "153"},
	{"ID" : "160", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dct_2d_U0.grp_dct_1d_fu_626.mac_muladd_18s_14ns_13ns_29_4_0_U77", "Parent" : "153"},
	{"ID" : "161", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dct_2d_U0.grp_dct_1d_fu_626.mul_mul_16s_14ns_29_4_0_U78", "Parent" : "153"},
	{"ID" : "162", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dct_2d_U0.grp_dct_1d_fu_626.ama_submuladd_16s_16s_13ns_29s_29_4_0_U79", "Parent" : "153"},
	{"ID" : "163", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dct_2d_U0.grp_dct_1d_fu_626.mac_muladd_16s_15s_29s_29_4_0_U80", "Parent" : "153"},
	{"ID" : "164", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dct_2d_U0.grp_dct_1d_fu_626.mul_mul_17s_12ns_29_4_0_U81", "Parent" : "153"},
	{"ID" : "165", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dct_2d_U0.grp_dct_1d_fu_626.mac_muladd_18s_13ns_13ns_29_4_0_U82", "Parent" : "153"},
	{"ID" : "166", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dct_2d_U0.grp_dct_1d_fu_626.mac_muladd_16s_14ns_29s_29_4_0_U83", "Parent" : "153"},
	{"ID" : "167", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dct_2d_U0.grp_dct_1d_fu_626.mul_mul_16s_15s_29_4_0_U84", "Parent" : "153"},
	{"ID" : "168", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dct_2d_U0.grp_dct_1d_fu_626.mac_muladd_16s_14ns_29ns_29_4_0_U85", "Parent" : "153"},
	{"ID" : "169", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dct_2d_U0.grp_dct_1d_fu_626.mac_muladd_16s_15s_29s_29_4_0_U86", "Parent" : "153"},
	{"ID" : "170", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dct_2d_U0.grp_dct_1d_fu_626.mac_muladd_16s_15s_13ns_29_4_0_U87", "Parent" : "153"},
	{"ID" : "171", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dct_2d_U0.grp_dct_1d_fu_626.ama_addmuladd_18s_16s_13ns_29ns_29_4_0_U88", "Parent" : "153"},
	{"ID" : "172", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dct_2d_U0.grp_dct_1d_fu_626.mac_muladd_16s_14ns_29ns_29_4_0_U89", "Parent" : "153"},
	{"ID" : "173", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dct_2d_U0.grp_dct_1d_fu_626.mac_muladd_16s_15s_13ns_29_4_0_U90", "Parent" : "153"},
	{"ID" : "174", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dct_2d_U0.grp_dct_1d_fu_626.mac_muladd_17s_12ns_29s_29_4_0_U91", "Parent" : "153"},
	{"ID" : "175", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dct_2d_U0.grp_dct_1d_fu_626.mac_muladd_16s_15s_29ns_29_4_0_U92", "Parent" : "153"},
	{"ID" : "176", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dct_2d_U0.grp_dct_1d_fu_626.mac_muladd_16s_14ns_29s_29_4_0_U93", "Parent" : "153"},
	{"ID" : "177", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dct_2d_U0.grp_dct_1d_fu_626.mac_muladd_17s_13ns_13ns_29_4_0_U94", "Parent" : "153"},
	{"ID" : "178", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dct_2d_U0.grp_dct_1d_fu_626.ama_submuladd_18s_16s_14ns_29ns_29_4_0_U95", "Parent" : "153"},
	{"ID" : "179", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dct_2d_U0.grp_dct_1d_fu_626.mac_muladd_16s_14ns_29ns_29_4_0_U96", "Parent" : "153"},
	{"ID" : "180", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dct_2d_U0.grp_dct_1d_fu_626.mac_muladd_17s_13ns_29s_29_4_0_U97", "Parent" : "153"},
	{"ID" : "181", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dct_2d_U0.grp_dct_1d_fu_626.mac_muladd_17s_12ns_13ns_29_4_0_U98", "Parent" : "153"},
	{"ID" : "182", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dct_2d_U0.grp_dct_1d_fu_646", "Parent" : "7", "Child" : ["183", "184", "185", "186", "187", "188", "189", "190", "191", "192", "193", "194", "195", "196", "197", "198", "199", "200", "201", "202", "203", "204", "205", "206", "207", "208", "209", "210"],
		"CDFG" : "dct_1d",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "5", "EstimateLatencyMin" : "5", "EstimateLatencyMax" : "5",
		"Combinational" : "0",
		"Datapath" : "1",
		"ClockEnable" : "1",
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
			{"Name" : "p_read7", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "183", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dct_2d_U0.grp_dct_1d_fu_646.mul_mul_16s_14ns_29_4_0_U71", "Parent" : "182"},
	{"ID" : "184", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dct_2d_U0.grp_dct_1d_fu_646.mul_mul_16s_15s_29_4_0_U72", "Parent" : "182"},
	{"ID" : "185", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dct_2d_U0.grp_dct_1d_fu_646.mul_mul_16s_14ns_29_4_0_U73", "Parent" : "182"},
	{"ID" : "186", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dct_2d_U0.grp_dct_1d_fu_646.mul_mul_16s_15s_29_4_0_U74", "Parent" : "182"},
	{"ID" : "187", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dct_2d_U0.grp_dct_1d_fu_646.ama_submuladd_16s_16s_12ns_29s_29_4_0_U75", "Parent" : "182"},
	{"ID" : "188", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dct_2d_U0.grp_dct_1d_fu_646.mul_mul_17s_13ns_29_4_0_U76", "Parent" : "182"},
	{"ID" : "189", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dct_2d_U0.grp_dct_1d_fu_646.mac_muladd_18s_14ns_13ns_29_4_0_U77", "Parent" : "182"},
	{"ID" : "190", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dct_2d_U0.grp_dct_1d_fu_646.mul_mul_16s_14ns_29_4_0_U78", "Parent" : "182"},
	{"ID" : "191", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dct_2d_U0.grp_dct_1d_fu_646.ama_submuladd_16s_16s_13ns_29s_29_4_0_U79", "Parent" : "182"},
	{"ID" : "192", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dct_2d_U0.grp_dct_1d_fu_646.mac_muladd_16s_15s_29s_29_4_0_U80", "Parent" : "182"},
	{"ID" : "193", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dct_2d_U0.grp_dct_1d_fu_646.mul_mul_17s_12ns_29_4_0_U81", "Parent" : "182"},
	{"ID" : "194", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dct_2d_U0.grp_dct_1d_fu_646.mac_muladd_18s_13ns_13ns_29_4_0_U82", "Parent" : "182"},
	{"ID" : "195", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dct_2d_U0.grp_dct_1d_fu_646.mac_muladd_16s_14ns_29s_29_4_0_U83", "Parent" : "182"},
	{"ID" : "196", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dct_2d_U0.grp_dct_1d_fu_646.mul_mul_16s_15s_29_4_0_U84", "Parent" : "182"},
	{"ID" : "197", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dct_2d_U0.grp_dct_1d_fu_646.mac_muladd_16s_14ns_29ns_29_4_0_U85", "Parent" : "182"},
	{"ID" : "198", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dct_2d_U0.grp_dct_1d_fu_646.mac_muladd_16s_15s_29s_29_4_0_U86", "Parent" : "182"},
	{"ID" : "199", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dct_2d_U0.grp_dct_1d_fu_646.mac_muladd_16s_15s_13ns_29_4_0_U87", "Parent" : "182"},
	{"ID" : "200", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dct_2d_U0.grp_dct_1d_fu_646.ama_addmuladd_18s_16s_13ns_29ns_29_4_0_U88", "Parent" : "182"},
	{"ID" : "201", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dct_2d_U0.grp_dct_1d_fu_646.mac_muladd_16s_14ns_29ns_29_4_0_U89", "Parent" : "182"},
	{"ID" : "202", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dct_2d_U0.grp_dct_1d_fu_646.mac_muladd_16s_15s_13ns_29_4_0_U90", "Parent" : "182"},
	{"ID" : "203", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dct_2d_U0.grp_dct_1d_fu_646.mac_muladd_17s_12ns_29s_29_4_0_U91", "Parent" : "182"},
	{"ID" : "204", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dct_2d_U0.grp_dct_1d_fu_646.mac_muladd_16s_15s_29ns_29_4_0_U92", "Parent" : "182"},
	{"ID" : "205", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dct_2d_U0.grp_dct_1d_fu_646.mac_muladd_16s_14ns_29s_29_4_0_U93", "Parent" : "182"},
	{"ID" : "206", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dct_2d_U0.grp_dct_1d_fu_646.mac_muladd_17s_13ns_13ns_29_4_0_U94", "Parent" : "182"},
	{"ID" : "207", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dct_2d_U0.grp_dct_1d_fu_646.ama_submuladd_18s_16s_14ns_29ns_29_4_0_U95", "Parent" : "182"},
	{"ID" : "208", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dct_2d_U0.grp_dct_1d_fu_646.mac_muladd_16s_14ns_29ns_29_4_0_U96", "Parent" : "182"},
	{"ID" : "209", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dct_2d_U0.grp_dct_1d_fu_646.mac_muladd_17s_13ns_29s_29_4_0_U97", "Parent" : "182"},
	{"ID" : "210", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dct_2d_U0.grp_dct_1d_fu_646.mac_muladd_17s_12ns_13ns_29_4_0_U98", "Parent" : "182"},
	{"ID" : "211", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dct_2d_U0.grp_dct_1d_fu_666", "Parent" : "7", "Child" : ["212", "213", "214", "215", "216", "217", "218", "219", "220", "221", "222", "223", "224", "225", "226", "227", "228", "229", "230", "231", "232", "233", "234", "235", "236", "237", "238", "239"],
		"CDFG" : "dct_1d",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "5", "EstimateLatencyMin" : "5", "EstimateLatencyMax" : "5",
		"Combinational" : "0",
		"Datapath" : "1",
		"ClockEnable" : "1",
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
			{"Name" : "p_read7", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "212", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dct_2d_U0.grp_dct_1d_fu_666.mul_mul_16s_14ns_29_4_0_U71", "Parent" : "211"},
	{"ID" : "213", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dct_2d_U0.grp_dct_1d_fu_666.mul_mul_16s_15s_29_4_0_U72", "Parent" : "211"},
	{"ID" : "214", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dct_2d_U0.grp_dct_1d_fu_666.mul_mul_16s_14ns_29_4_0_U73", "Parent" : "211"},
	{"ID" : "215", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dct_2d_U0.grp_dct_1d_fu_666.mul_mul_16s_15s_29_4_0_U74", "Parent" : "211"},
	{"ID" : "216", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dct_2d_U0.grp_dct_1d_fu_666.ama_submuladd_16s_16s_12ns_29s_29_4_0_U75", "Parent" : "211"},
	{"ID" : "217", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dct_2d_U0.grp_dct_1d_fu_666.mul_mul_17s_13ns_29_4_0_U76", "Parent" : "211"},
	{"ID" : "218", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dct_2d_U0.grp_dct_1d_fu_666.mac_muladd_18s_14ns_13ns_29_4_0_U77", "Parent" : "211"},
	{"ID" : "219", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dct_2d_U0.grp_dct_1d_fu_666.mul_mul_16s_14ns_29_4_0_U78", "Parent" : "211"},
	{"ID" : "220", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dct_2d_U0.grp_dct_1d_fu_666.ama_submuladd_16s_16s_13ns_29s_29_4_0_U79", "Parent" : "211"},
	{"ID" : "221", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dct_2d_U0.grp_dct_1d_fu_666.mac_muladd_16s_15s_29s_29_4_0_U80", "Parent" : "211"},
	{"ID" : "222", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dct_2d_U0.grp_dct_1d_fu_666.mul_mul_17s_12ns_29_4_0_U81", "Parent" : "211"},
	{"ID" : "223", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dct_2d_U0.grp_dct_1d_fu_666.mac_muladd_18s_13ns_13ns_29_4_0_U82", "Parent" : "211"},
	{"ID" : "224", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dct_2d_U0.grp_dct_1d_fu_666.mac_muladd_16s_14ns_29s_29_4_0_U83", "Parent" : "211"},
	{"ID" : "225", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dct_2d_U0.grp_dct_1d_fu_666.mul_mul_16s_15s_29_4_0_U84", "Parent" : "211"},
	{"ID" : "226", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dct_2d_U0.grp_dct_1d_fu_666.mac_muladd_16s_14ns_29ns_29_4_0_U85", "Parent" : "211"},
	{"ID" : "227", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dct_2d_U0.grp_dct_1d_fu_666.mac_muladd_16s_15s_29s_29_4_0_U86", "Parent" : "211"},
	{"ID" : "228", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dct_2d_U0.grp_dct_1d_fu_666.mac_muladd_16s_15s_13ns_29_4_0_U87", "Parent" : "211"},
	{"ID" : "229", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dct_2d_U0.grp_dct_1d_fu_666.ama_addmuladd_18s_16s_13ns_29ns_29_4_0_U88", "Parent" : "211"},
	{"ID" : "230", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dct_2d_U0.grp_dct_1d_fu_666.mac_muladd_16s_14ns_29ns_29_4_0_U89", "Parent" : "211"},
	{"ID" : "231", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dct_2d_U0.grp_dct_1d_fu_666.mac_muladd_16s_15s_13ns_29_4_0_U90", "Parent" : "211"},
	{"ID" : "232", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dct_2d_U0.grp_dct_1d_fu_666.mac_muladd_17s_12ns_29s_29_4_0_U91", "Parent" : "211"},
	{"ID" : "233", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dct_2d_U0.grp_dct_1d_fu_666.mac_muladd_16s_15s_29ns_29_4_0_U92", "Parent" : "211"},
	{"ID" : "234", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dct_2d_U0.grp_dct_1d_fu_666.mac_muladd_16s_14ns_29s_29_4_0_U93", "Parent" : "211"},
	{"ID" : "235", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dct_2d_U0.grp_dct_1d_fu_666.mac_muladd_17s_13ns_13ns_29_4_0_U94", "Parent" : "211"},
	{"ID" : "236", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dct_2d_U0.grp_dct_1d_fu_666.ama_submuladd_18s_16s_14ns_29ns_29_4_0_U95", "Parent" : "211"},
	{"ID" : "237", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dct_2d_U0.grp_dct_1d_fu_666.mac_muladd_16s_14ns_29ns_29_4_0_U96", "Parent" : "211"},
	{"ID" : "238", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dct_2d_U0.grp_dct_1d_fu_666.mac_muladd_17s_13ns_29s_29_4_0_U97", "Parent" : "211"},
	{"ID" : "239", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dct_2d_U0.grp_dct_1d_fu_666.mac_muladd_17s_12ns_13ns_29_4_0_U98", "Parent" : "211"},
	{"ID" : "240", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dct_2d_U0.frp_pipeline_valid_U", "Parent" : "7"},
	{"ID" : "241", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dct_2d_U0.pf_ap_return_0_U", "Parent" : "7"},
	{"ID" : "242", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dct_2d_U0.pf_ap_return_1_U", "Parent" : "7"},
	{"ID" : "243", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dct_2d_U0.pf_ap_return_2_U", "Parent" : "7"},
	{"ID" : "244", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dct_2d_U0.pf_ap_return_3_U", "Parent" : "7"},
	{"ID" : "245", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dct_2d_U0.pf_ap_return_4_U", "Parent" : "7"},
	{"ID" : "246", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dct_2d_U0.pf_ap_return_5_U", "Parent" : "7"},
	{"ID" : "247", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dct_2d_U0.pf_ap_return_6_U", "Parent" : "7"},
	{"ID" : "248", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dct_2d_U0.pf_ap_return_7_U", "Parent" : "7"},
	{"ID" : "249", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dct_2d_U0.pf_ap_return_8_U", "Parent" : "7"},
	{"ID" : "250", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dct_2d_U0.pf_ap_return_9_U", "Parent" : "7"},
	{"ID" : "251", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dct_2d_U0.pf_ap_return_10_U", "Parent" : "7"},
	{"ID" : "252", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dct_2d_U0.pf_ap_return_11_U", "Parent" : "7"},
	{"ID" : "253", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dct_2d_U0.pf_ap_return_12_U", "Parent" : "7"},
	{"ID" : "254", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dct_2d_U0.pf_ap_return_13_U", "Parent" : "7"},
	{"ID" : "255", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dct_2d_U0.pf_ap_return_14_U", "Parent" : "7"},
	{"ID" : "256", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dct_2d_U0.pf_ap_return_15_U", "Parent" : "7"},
	{"ID" : "257", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dct_2d_U0.pf_ap_return_16_U", "Parent" : "7"},
	{"ID" : "258", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dct_2d_U0.pf_ap_return_17_U", "Parent" : "7"},
	{"ID" : "259", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dct_2d_U0.pf_ap_return_18_U", "Parent" : "7"},
	{"ID" : "260", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dct_2d_U0.pf_ap_return_19_U", "Parent" : "7"},
	{"ID" : "261", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dct_2d_U0.pf_ap_return_20_U", "Parent" : "7"},
	{"ID" : "262", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dct_2d_U0.pf_ap_return_21_U", "Parent" : "7"},
	{"ID" : "263", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dct_2d_U0.pf_ap_return_22_U", "Parent" : "7"},
	{"ID" : "264", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dct_2d_U0.pf_ap_return_23_U", "Parent" : "7"},
	{"ID" : "265", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dct_2d_U0.pf_ap_return_24_U", "Parent" : "7"},
	{"ID" : "266", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dct_2d_U0.pf_ap_return_25_U", "Parent" : "7"},
	{"ID" : "267", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dct_2d_U0.pf_ap_return_26_U", "Parent" : "7"},
	{"ID" : "268", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dct_2d_U0.pf_ap_return_27_U", "Parent" : "7"},
	{"ID" : "269", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dct_2d_U0.pf_ap_return_28_U", "Parent" : "7"},
	{"ID" : "270", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dct_2d_U0.pf_ap_return_29_U", "Parent" : "7"},
	{"ID" : "271", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dct_2d_U0.pf_ap_return_30_U", "Parent" : "7"},
	{"ID" : "272", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dct_2d_U0.pf_ap_return_31_U", "Parent" : "7"},
	{"ID" : "273", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dct_2d_U0.pf_ap_return_32_U", "Parent" : "7"},
	{"ID" : "274", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dct_2d_U0.pf_ap_return_33_U", "Parent" : "7"},
	{"ID" : "275", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dct_2d_U0.pf_ap_return_34_U", "Parent" : "7"},
	{"ID" : "276", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dct_2d_U0.pf_ap_return_35_U", "Parent" : "7"},
	{"ID" : "277", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dct_2d_U0.pf_ap_return_36_U", "Parent" : "7"},
	{"ID" : "278", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dct_2d_U0.pf_ap_return_37_U", "Parent" : "7"},
	{"ID" : "279", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dct_2d_U0.pf_ap_return_38_U", "Parent" : "7"},
	{"ID" : "280", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dct_2d_U0.pf_ap_return_39_U", "Parent" : "7"},
	{"ID" : "281", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dct_2d_U0.pf_ap_return_40_U", "Parent" : "7"},
	{"ID" : "282", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dct_2d_U0.pf_ap_return_41_U", "Parent" : "7"},
	{"ID" : "283", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dct_2d_U0.pf_ap_return_42_U", "Parent" : "7"},
	{"ID" : "284", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dct_2d_U0.pf_ap_return_43_U", "Parent" : "7"},
	{"ID" : "285", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dct_2d_U0.pf_ap_return_44_U", "Parent" : "7"},
	{"ID" : "286", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dct_2d_U0.pf_ap_return_45_U", "Parent" : "7"},
	{"ID" : "287", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dct_2d_U0.pf_ap_return_46_U", "Parent" : "7"},
	{"ID" : "288", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dct_2d_U0.pf_ap_return_47_U", "Parent" : "7"},
	{"ID" : "289", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dct_2d_U0.pf_ap_return_48_U", "Parent" : "7"},
	{"ID" : "290", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dct_2d_U0.pf_ap_return_49_U", "Parent" : "7"},
	{"ID" : "291", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dct_2d_U0.pf_ap_return_50_U", "Parent" : "7"},
	{"ID" : "292", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dct_2d_U0.pf_ap_return_51_U", "Parent" : "7"},
	{"ID" : "293", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dct_2d_U0.pf_ap_return_52_U", "Parent" : "7"},
	{"ID" : "294", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dct_2d_U0.pf_ap_return_53_U", "Parent" : "7"},
	{"ID" : "295", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dct_2d_U0.pf_ap_return_54_U", "Parent" : "7"},
	{"ID" : "296", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dct_2d_U0.pf_ap_return_55_U", "Parent" : "7"},
	{"ID" : "297", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dct_2d_U0.pf_ap_return_56_U", "Parent" : "7"},
	{"ID" : "298", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dct_2d_U0.pf_ap_return_57_U", "Parent" : "7"},
	{"ID" : "299", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dct_2d_U0.pf_ap_return_58_U", "Parent" : "7"},
	{"ID" : "300", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dct_2d_U0.pf_ap_return_59_U", "Parent" : "7"},
	{"ID" : "301", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dct_2d_U0.pf_ap_return_60_U", "Parent" : "7"},
	{"ID" : "302", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dct_2d_U0.pf_ap_return_61_U", "Parent" : "7"},
	{"ID" : "303", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dct_2d_U0.pf_ap_return_62_U", "Parent" : "7"},
	{"ID" : "304", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dct_2d_U0.pf_ap_return_63_U", "Parent" : "7"},
	{"ID" : "305", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.write_data_U0", "Parent" : "0", "Child" : ["306"],
		"CDFG" : "write_data",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "81", "EstimateLatencyMax" : "81",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "buf_read", "Type" : "None", "Direction" : "I", "DependentProc" : ["7"], "DependentChan" : "381", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "buf_read_255", "Type" : "None", "Direction" : "I", "DependentProc" : ["7"], "DependentChan" : "382", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "buf_read_256", "Type" : "None", "Direction" : "I", "DependentProc" : ["7"], "DependentChan" : "383", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "buf_read_257", "Type" : "None", "Direction" : "I", "DependentProc" : ["7"], "DependentChan" : "384", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "buf_read_258", "Type" : "None", "Direction" : "I", "DependentProc" : ["7"], "DependentChan" : "385", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "buf_read_259", "Type" : "None", "Direction" : "I", "DependentProc" : ["7"], "DependentChan" : "386", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "buf_read_260", "Type" : "None", "Direction" : "I", "DependentProc" : ["7"], "DependentChan" : "387", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "buf_read_261", "Type" : "None", "Direction" : "I", "DependentProc" : ["7"], "DependentChan" : "388", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "buf_read_262", "Type" : "None", "Direction" : "I", "DependentProc" : ["7"], "DependentChan" : "389", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "buf_read_263", "Type" : "None", "Direction" : "I", "DependentProc" : ["7"], "DependentChan" : "390", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "buf_read_264", "Type" : "None", "Direction" : "I", "DependentProc" : ["7"], "DependentChan" : "391", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "buf_read_265", "Type" : "None", "Direction" : "I", "DependentProc" : ["7"], "DependentChan" : "392", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "buf_read_266", "Type" : "None", "Direction" : "I", "DependentProc" : ["7"], "DependentChan" : "393", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "buf_read_267", "Type" : "None", "Direction" : "I", "DependentProc" : ["7"], "DependentChan" : "394", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "buf_read_268", "Type" : "None", "Direction" : "I", "DependentProc" : ["7"], "DependentChan" : "395", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "buf_read_269", "Type" : "None", "Direction" : "I", "DependentProc" : ["7"], "DependentChan" : "396", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "buf_read_270", "Type" : "None", "Direction" : "I", "DependentProc" : ["7"], "DependentChan" : "397", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "buf_read_271", "Type" : "None", "Direction" : "I", "DependentProc" : ["7"], "DependentChan" : "398", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "buf_read_272", "Type" : "None", "Direction" : "I", "DependentProc" : ["7"], "DependentChan" : "399", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "buf_read_273", "Type" : "None", "Direction" : "I", "DependentProc" : ["7"], "DependentChan" : "400", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "buf_read_274", "Type" : "None", "Direction" : "I", "DependentProc" : ["7"], "DependentChan" : "401", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "buf_read_275", "Type" : "None", "Direction" : "I", "DependentProc" : ["7"], "DependentChan" : "402", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "buf_read_276", "Type" : "None", "Direction" : "I", "DependentProc" : ["7"], "DependentChan" : "403", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "buf_read_277", "Type" : "None", "Direction" : "I", "DependentProc" : ["7"], "DependentChan" : "404", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "buf_read_278", "Type" : "None", "Direction" : "I", "DependentProc" : ["7"], "DependentChan" : "405", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "buf_read_279", "Type" : "None", "Direction" : "I", "DependentProc" : ["7"], "DependentChan" : "406", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "buf_read_280", "Type" : "None", "Direction" : "I", "DependentProc" : ["7"], "DependentChan" : "407", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "buf_read_281", "Type" : "None", "Direction" : "I", "DependentProc" : ["7"], "DependentChan" : "408", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "buf_read_282", "Type" : "None", "Direction" : "I", "DependentProc" : ["7"], "DependentChan" : "409", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "buf_read_283", "Type" : "None", "Direction" : "I", "DependentProc" : ["7"], "DependentChan" : "410", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "buf_read_284", "Type" : "None", "Direction" : "I", "DependentProc" : ["7"], "DependentChan" : "411", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "buf_read_285", "Type" : "None", "Direction" : "I", "DependentProc" : ["7"], "DependentChan" : "412", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "buf_read_286", "Type" : "None", "Direction" : "I", "DependentProc" : ["7"], "DependentChan" : "413", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "buf_read_287", "Type" : "None", "Direction" : "I", "DependentProc" : ["7"], "DependentChan" : "414", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "buf_read_288", "Type" : "None", "Direction" : "I", "DependentProc" : ["7"], "DependentChan" : "415", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "buf_read_289", "Type" : "None", "Direction" : "I", "DependentProc" : ["7"], "DependentChan" : "416", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "buf_read_290", "Type" : "None", "Direction" : "I", "DependentProc" : ["7"], "DependentChan" : "417", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "buf_read_291", "Type" : "None", "Direction" : "I", "DependentProc" : ["7"], "DependentChan" : "418", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "buf_read_292", "Type" : "None", "Direction" : "I", "DependentProc" : ["7"], "DependentChan" : "419", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "buf_read_293", "Type" : "None", "Direction" : "I", "DependentProc" : ["7"], "DependentChan" : "420", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "buf_read_294", "Type" : "None", "Direction" : "I", "DependentProc" : ["7"], "DependentChan" : "421", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "buf_read_295", "Type" : "None", "Direction" : "I", "DependentProc" : ["7"], "DependentChan" : "422", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "buf_read_296", "Type" : "None", "Direction" : "I", "DependentProc" : ["7"], "DependentChan" : "423", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "buf_read_297", "Type" : "None", "Direction" : "I", "DependentProc" : ["7"], "DependentChan" : "424", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "buf_read_298", "Type" : "None", "Direction" : "I", "DependentProc" : ["7"], "DependentChan" : "425", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "buf_read_299", "Type" : "None", "Direction" : "I", "DependentProc" : ["7"], "DependentChan" : "426", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "buf_read_300", "Type" : "None", "Direction" : "I", "DependentProc" : ["7"], "DependentChan" : "427", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "buf_read_301", "Type" : "None", "Direction" : "I", "DependentProc" : ["7"], "DependentChan" : "428", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "buf_read_302", "Type" : "None", "Direction" : "I", "DependentProc" : ["7"], "DependentChan" : "429", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "buf_read_303", "Type" : "None", "Direction" : "I", "DependentProc" : ["7"], "DependentChan" : "430", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "buf_read_304", "Type" : "None", "Direction" : "I", "DependentProc" : ["7"], "DependentChan" : "431", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "buf_read_305", "Type" : "None", "Direction" : "I", "DependentProc" : ["7"], "DependentChan" : "432", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "buf_read_306", "Type" : "None", "Direction" : "I", "DependentProc" : ["7"], "DependentChan" : "433", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "buf_read_307", "Type" : "None", "Direction" : "I", "DependentProc" : ["7"], "DependentChan" : "434", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "buf_read_308", "Type" : "None", "Direction" : "I", "DependentProc" : ["7"], "DependentChan" : "435", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "buf_read_309", "Type" : "None", "Direction" : "I", "DependentProc" : ["7"], "DependentChan" : "436", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "buf_read_310", "Type" : "None", "Direction" : "I", "DependentProc" : ["7"], "DependentChan" : "437", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "buf_read_311", "Type" : "None", "Direction" : "I", "DependentProc" : ["7"], "DependentChan" : "438", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "buf_read_312", "Type" : "None", "Direction" : "I", "DependentProc" : ["7"], "DependentChan" : "439", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "buf_read_313", "Type" : "None", "Direction" : "I", "DependentProc" : ["7"], "DependentChan" : "440", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "buf_read_314", "Type" : "None", "Direction" : "I", "DependentProc" : ["7"], "DependentChan" : "441", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "buf_read_315", "Type" : "None", "Direction" : "I", "DependentProc" : ["7"], "DependentChan" : "442", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "buf_read_316", "Type" : "None", "Direction" : "I", "DependentProc" : ["7"], "DependentChan" : "443", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "buf_read_317", "Type" : "None", "Direction" : "I", "DependentProc" : ["7"], "DependentChan" : "444", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "gmem", "Type" : "MAXI", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "gmem_blk_n_AW", "Type" : "RtlSignal"},
					{"Name" : "gmem_blk_n_B", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "306", "SubInstance" : "grp_write_data_Pipeline_WR_Loop_Row_fu_572", "Port" : "gmem", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "output_r", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["3"], "DependentChan" : "316", "DependentChanDepth" : "9", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "output_r_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "306", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.write_data_U0.grp_write_data_Pipeline_WR_Loop_Row_fu_572", "Parent" : "305", "Child" : ["307", "308", "309", "310", "311", "312", "313", "314", "315"],
		"CDFG" : "write_data_Pipeline_WR_Loop_Row",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "10", "EstimateLatencyMax" : "10",
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
			{"Name" : "buf_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "buf_read_71", "Type" : "None", "Direction" : "I"},
			{"Name" : "buf_read_79", "Type" : "None", "Direction" : "I"},
			{"Name" : "buf_read_87", "Type" : "None", "Direction" : "I"},
			{"Name" : "buf_read_95", "Type" : "None", "Direction" : "I"},
			{"Name" : "buf_read_103", "Type" : "None", "Direction" : "I"},
			{"Name" : "buf_read_111", "Type" : "None", "Direction" : "I"},
			{"Name" : "buf_read_119", "Type" : "None", "Direction" : "I"},
			{"Name" : "buf_read_64", "Type" : "None", "Direction" : "I"},
			{"Name" : "buf_read_72", "Type" : "None", "Direction" : "I"},
			{"Name" : "buf_read_80", "Type" : "None", "Direction" : "I"},
			{"Name" : "buf_read_88", "Type" : "None", "Direction" : "I"},
			{"Name" : "buf_read_96", "Type" : "None", "Direction" : "I"},
			{"Name" : "buf_read_104", "Type" : "None", "Direction" : "I"},
			{"Name" : "buf_read_112", "Type" : "None", "Direction" : "I"},
			{"Name" : "buf_read_120", "Type" : "None", "Direction" : "I"},
			{"Name" : "buf_read_65", "Type" : "None", "Direction" : "I"},
			{"Name" : "buf_read_73", "Type" : "None", "Direction" : "I"},
			{"Name" : "buf_read_81", "Type" : "None", "Direction" : "I"},
			{"Name" : "buf_read_89", "Type" : "None", "Direction" : "I"},
			{"Name" : "buf_read_97", "Type" : "None", "Direction" : "I"},
			{"Name" : "buf_read_105", "Type" : "None", "Direction" : "I"},
			{"Name" : "buf_read_113", "Type" : "None", "Direction" : "I"},
			{"Name" : "buf_read_121", "Type" : "None", "Direction" : "I"},
			{"Name" : "buf_read_66", "Type" : "None", "Direction" : "I"},
			{"Name" : "buf_read_74", "Type" : "None", "Direction" : "I"},
			{"Name" : "buf_read_82", "Type" : "None", "Direction" : "I"},
			{"Name" : "buf_read_90", "Type" : "None", "Direction" : "I"},
			{"Name" : "buf_read_98", "Type" : "None", "Direction" : "I"},
			{"Name" : "buf_read_106", "Type" : "None", "Direction" : "I"},
			{"Name" : "buf_read_114", "Type" : "None", "Direction" : "I"},
			{"Name" : "buf_read_122", "Type" : "None", "Direction" : "I"},
			{"Name" : "buf_read_67", "Type" : "None", "Direction" : "I"},
			{"Name" : "buf_read_75", "Type" : "None", "Direction" : "I"},
			{"Name" : "buf_read_83", "Type" : "None", "Direction" : "I"},
			{"Name" : "buf_read_91", "Type" : "None", "Direction" : "I"},
			{"Name" : "buf_read_99", "Type" : "None", "Direction" : "I"},
			{"Name" : "buf_read_107", "Type" : "None", "Direction" : "I"},
			{"Name" : "buf_read_115", "Type" : "None", "Direction" : "I"},
			{"Name" : "buf_read_123", "Type" : "None", "Direction" : "I"},
			{"Name" : "buf_read_68", "Type" : "None", "Direction" : "I"},
			{"Name" : "buf_read_76", "Type" : "None", "Direction" : "I"},
			{"Name" : "buf_read_84", "Type" : "None", "Direction" : "I"},
			{"Name" : "buf_read_92", "Type" : "None", "Direction" : "I"},
			{"Name" : "buf_read_100", "Type" : "None", "Direction" : "I"},
			{"Name" : "buf_read_108", "Type" : "None", "Direction" : "I"},
			{"Name" : "buf_read_116", "Type" : "None", "Direction" : "I"},
			{"Name" : "buf_read_124", "Type" : "None", "Direction" : "I"},
			{"Name" : "buf_read_69", "Type" : "None", "Direction" : "I"},
			{"Name" : "buf_read_77", "Type" : "None", "Direction" : "I"},
			{"Name" : "buf_read_85", "Type" : "None", "Direction" : "I"},
			{"Name" : "buf_read_93", "Type" : "None", "Direction" : "I"},
			{"Name" : "buf_read_101", "Type" : "None", "Direction" : "I"},
			{"Name" : "buf_read_109", "Type" : "None", "Direction" : "I"},
			{"Name" : "buf_read_117", "Type" : "None", "Direction" : "I"},
			{"Name" : "buf_read_125", "Type" : "None", "Direction" : "I"},
			{"Name" : "buf_read_70", "Type" : "None", "Direction" : "I"},
			{"Name" : "buf_read_78", "Type" : "None", "Direction" : "I"},
			{"Name" : "buf_read_86", "Type" : "None", "Direction" : "I"},
			{"Name" : "buf_read_94", "Type" : "None", "Direction" : "I"},
			{"Name" : "buf_read_102", "Type" : "None", "Direction" : "I"},
			{"Name" : "buf_read_110", "Type" : "None", "Direction" : "I"},
			{"Name" : "buf_read_118", "Type" : "None", "Direction" : "I"},
			{"Name" : "buf_read_126", "Type" : "None", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "WR_Loop_Row", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "307", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.write_data_U0.grp_write_data_Pipeline_WR_Loop_Row_fu_572.mux_84_16_1_1_U191", "Parent" : "306"},
	{"ID" : "308", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.write_data_U0.grp_write_data_Pipeline_WR_Loop_Row_fu_572.mux_84_16_1_1_U192", "Parent" : "306"},
	{"ID" : "309", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.write_data_U0.grp_write_data_Pipeline_WR_Loop_Row_fu_572.mux_84_16_1_1_U193", "Parent" : "306"},
	{"ID" : "310", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.write_data_U0.grp_write_data_Pipeline_WR_Loop_Row_fu_572.mux_84_16_1_1_U194", "Parent" : "306"},
	{"ID" : "311", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.write_data_U0.grp_write_data_Pipeline_WR_Loop_Row_fu_572.mux_84_16_1_1_U195", "Parent" : "306"},
	{"ID" : "312", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.write_data_U0.grp_write_data_Pipeline_WR_Loop_Row_fu_572.mux_84_16_1_1_U196", "Parent" : "306"},
	{"ID" : "313", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.write_data_U0.grp_write_data_Pipeline_WR_Loop_Row_fu_572.mux_84_16_1_1_U197", "Parent" : "306"},
	{"ID" : "314", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.write_data_U0.grp_write_data_Pipeline_WR_Loop_Row_fu_572.mux_84_16_1_1_U198", "Parent" : "306"},
	{"ID" : "315", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.write_data_U0.grp_write_data_Pipeline_WR_Loop_Row_fu_572.flow_control_loop_pipe_sequential_init_U", "Parent" : "306"},
	{"ID" : "316", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.output_r_c_U", "Parent" : "0"},
	{"ID" : "317", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.buf_2d_in_U", "Parent" : "0"},
	{"ID" : "318", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.buf_2d_in_1_U", "Parent" : "0"},
	{"ID" : "319", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.buf_2d_in_2_U", "Parent" : "0"},
	{"ID" : "320", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.buf_2d_in_3_U", "Parent" : "0"},
	{"ID" : "321", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.buf_2d_in_4_U", "Parent" : "0"},
	{"ID" : "322", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.buf_2d_in_5_U", "Parent" : "0"},
	{"ID" : "323", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.buf_2d_in_6_U", "Parent" : "0"},
	{"ID" : "324", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.buf_2d_in_7_U", "Parent" : "0"},
	{"ID" : "325", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.buf_2d_in_8_U", "Parent" : "0"},
	{"ID" : "326", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.buf_2d_in_9_U", "Parent" : "0"},
	{"ID" : "327", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.buf_2d_in_10_U", "Parent" : "0"},
	{"ID" : "328", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.buf_2d_in_11_U", "Parent" : "0"},
	{"ID" : "329", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.buf_2d_in_12_U", "Parent" : "0"},
	{"ID" : "330", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.buf_2d_in_13_U", "Parent" : "0"},
	{"ID" : "331", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.buf_2d_in_14_U", "Parent" : "0"},
	{"ID" : "332", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.buf_2d_in_15_U", "Parent" : "0"},
	{"ID" : "333", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.buf_2d_in_16_U", "Parent" : "0"},
	{"ID" : "334", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.buf_2d_in_17_U", "Parent" : "0"},
	{"ID" : "335", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.buf_2d_in_18_U", "Parent" : "0"},
	{"ID" : "336", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.buf_2d_in_19_U", "Parent" : "0"},
	{"ID" : "337", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.buf_2d_in_20_U", "Parent" : "0"},
	{"ID" : "338", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.buf_2d_in_21_U", "Parent" : "0"},
	{"ID" : "339", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.buf_2d_in_22_U", "Parent" : "0"},
	{"ID" : "340", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.buf_2d_in_23_U", "Parent" : "0"},
	{"ID" : "341", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.buf_2d_in_24_U", "Parent" : "0"},
	{"ID" : "342", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.buf_2d_in_25_U", "Parent" : "0"},
	{"ID" : "343", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.buf_2d_in_26_U", "Parent" : "0"},
	{"ID" : "344", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.buf_2d_in_27_U", "Parent" : "0"},
	{"ID" : "345", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.buf_2d_in_28_U", "Parent" : "0"},
	{"ID" : "346", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.buf_2d_in_29_U", "Parent" : "0"},
	{"ID" : "347", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.buf_2d_in_30_U", "Parent" : "0"},
	{"ID" : "348", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.buf_2d_in_31_U", "Parent" : "0"},
	{"ID" : "349", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.buf_2d_in_32_U", "Parent" : "0"},
	{"ID" : "350", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.buf_2d_in_33_U", "Parent" : "0"},
	{"ID" : "351", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.buf_2d_in_34_U", "Parent" : "0"},
	{"ID" : "352", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.buf_2d_in_35_U", "Parent" : "0"},
	{"ID" : "353", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.buf_2d_in_36_U", "Parent" : "0"},
	{"ID" : "354", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.buf_2d_in_37_U", "Parent" : "0"},
	{"ID" : "355", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.buf_2d_in_38_U", "Parent" : "0"},
	{"ID" : "356", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.buf_2d_in_39_U", "Parent" : "0"},
	{"ID" : "357", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.buf_2d_in_40_U", "Parent" : "0"},
	{"ID" : "358", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.buf_2d_in_41_U", "Parent" : "0"},
	{"ID" : "359", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.buf_2d_in_42_U", "Parent" : "0"},
	{"ID" : "360", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.buf_2d_in_43_U", "Parent" : "0"},
	{"ID" : "361", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.buf_2d_in_44_U", "Parent" : "0"},
	{"ID" : "362", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.buf_2d_in_45_U", "Parent" : "0"},
	{"ID" : "363", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.buf_2d_in_46_U", "Parent" : "0"},
	{"ID" : "364", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.buf_2d_in_47_U", "Parent" : "0"},
	{"ID" : "365", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.buf_2d_in_48_U", "Parent" : "0"},
	{"ID" : "366", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.buf_2d_in_49_U", "Parent" : "0"},
	{"ID" : "367", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.buf_2d_in_50_U", "Parent" : "0"},
	{"ID" : "368", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.buf_2d_in_51_U", "Parent" : "0"},
	{"ID" : "369", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.buf_2d_in_52_U", "Parent" : "0"},
	{"ID" : "370", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.buf_2d_in_53_U", "Parent" : "0"},
	{"ID" : "371", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.buf_2d_in_54_U", "Parent" : "0"},
	{"ID" : "372", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.buf_2d_in_55_U", "Parent" : "0"},
	{"ID" : "373", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.buf_2d_in_56_U", "Parent" : "0"},
	{"ID" : "374", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.buf_2d_in_57_U", "Parent" : "0"},
	{"ID" : "375", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.buf_2d_in_58_U", "Parent" : "0"},
	{"ID" : "376", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.buf_2d_in_59_U", "Parent" : "0"},
	{"ID" : "377", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.buf_2d_in_60_U", "Parent" : "0"},
	{"ID" : "378", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.buf_2d_in_61_U", "Parent" : "0"},
	{"ID" : "379", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.buf_2d_in_62_U", "Parent" : "0"},
	{"ID" : "380", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.buf_2d_in_63_U", "Parent" : "0"},
	{"ID" : "381", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.buf_2d_out_U", "Parent" : "0"},
	{"ID" : "382", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.buf_2d_out_1_U", "Parent" : "0"},
	{"ID" : "383", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.buf_2d_out_2_U", "Parent" : "0"},
	{"ID" : "384", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.buf_2d_out_3_U", "Parent" : "0"},
	{"ID" : "385", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.buf_2d_out_4_U", "Parent" : "0"},
	{"ID" : "386", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.buf_2d_out_5_U", "Parent" : "0"},
	{"ID" : "387", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.buf_2d_out_6_U", "Parent" : "0"},
	{"ID" : "388", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.buf_2d_out_7_U", "Parent" : "0"},
	{"ID" : "389", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.buf_2d_out_8_U", "Parent" : "0"},
	{"ID" : "390", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.buf_2d_out_9_U", "Parent" : "0"},
	{"ID" : "391", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.buf_2d_out_10_U", "Parent" : "0"},
	{"ID" : "392", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.buf_2d_out_11_U", "Parent" : "0"},
	{"ID" : "393", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.buf_2d_out_12_U", "Parent" : "0"},
	{"ID" : "394", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.buf_2d_out_13_U", "Parent" : "0"},
	{"ID" : "395", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.buf_2d_out_14_U", "Parent" : "0"},
	{"ID" : "396", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.buf_2d_out_15_U", "Parent" : "0"},
	{"ID" : "397", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.buf_2d_out_16_U", "Parent" : "0"},
	{"ID" : "398", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.buf_2d_out_17_U", "Parent" : "0"},
	{"ID" : "399", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.buf_2d_out_18_U", "Parent" : "0"},
	{"ID" : "400", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.buf_2d_out_19_U", "Parent" : "0"},
	{"ID" : "401", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.buf_2d_out_20_U", "Parent" : "0"},
	{"ID" : "402", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.buf_2d_out_21_U", "Parent" : "0"},
	{"ID" : "403", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.buf_2d_out_22_U", "Parent" : "0"},
	{"ID" : "404", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.buf_2d_out_23_U", "Parent" : "0"},
	{"ID" : "405", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.buf_2d_out_24_U", "Parent" : "0"},
	{"ID" : "406", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.buf_2d_out_25_U", "Parent" : "0"},
	{"ID" : "407", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.buf_2d_out_26_U", "Parent" : "0"},
	{"ID" : "408", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.buf_2d_out_27_U", "Parent" : "0"},
	{"ID" : "409", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.buf_2d_out_28_U", "Parent" : "0"},
	{"ID" : "410", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.buf_2d_out_29_U", "Parent" : "0"},
	{"ID" : "411", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.buf_2d_out_30_U", "Parent" : "0"},
	{"ID" : "412", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.buf_2d_out_31_U", "Parent" : "0"},
	{"ID" : "413", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.buf_2d_out_32_U", "Parent" : "0"},
	{"ID" : "414", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.buf_2d_out_33_U", "Parent" : "0"},
	{"ID" : "415", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.buf_2d_out_34_U", "Parent" : "0"},
	{"ID" : "416", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.buf_2d_out_35_U", "Parent" : "0"},
	{"ID" : "417", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.buf_2d_out_36_U", "Parent" : "0"},
	{"ID" : "418", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.buf_2d_out_37_U", "Parent" : "0"},
	{"ID" : "419", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.buf_2d_out_38_U", "Parent" : "0"},
	{"ID" : "420", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.buf_2d_out_39_U", "Parent" : "0"},
	{"ID" : "421", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.buf_2d_out_40_U", "Parent" : "0"},
	{"ID" : "422", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.buf_2d_out_41_U", "Parent" : "0"},
	{"ID" : "423", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.buf_2d_out_42_U", "Parent" : "0"},
	{"ID" : "424", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.buf_2d_out_43_U", "Parent" : "0"},
	{"ID" : "425", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.buf_2d_out_44_U", "Parent" : "0"},
	{"ID" : "426", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.buf_2d_out_45_U", "Parent" : "0"},
	{"ID" : "427", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.buf_2d_out_46_U", "Parent" : "0"},
	{"ID" : "428", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.buf_2d_out_47_U", "Parent" : "0"},
	{"ID" : "429", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.buf_2d_out_48_U", "Parent" : "0"},
	{"ID" : "430", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.buf_2d_out_49_U", "Parent" : "0"},
	{"ID" : "431", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.buf_2d_out_50_U", "Parent" : "0"},
	{"ID" : "432", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.buf_2d_out_51_U", "Parent" : "0"},
	{"ID" : "433", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.buf_2d_out_52_U", "Parent" : "0"},
	{"ID" : "434", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.buf_2d_out_53_U", "Parent" : "0"},
	{"ID" : "435", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.buf_2d_out_54_U", "Parent" : "0"},
	{"ID" : "436", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.buf_2d_out_55_U", "Parent" : "0"},
	{"ID" : "437", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.buf_2d_out_56_U", "Parent" : "0"},
	{"ID" : "438", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.buf_2d_out_57_U", "Parent" : "0"},
	{"ID" : "439", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.buf_2d_out_58_U", "Parent" : "0"},
	{"ID" : "440", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.buf_2d_out_59_U", "Parent" : "0"},
	{"ID" : "441", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.buf_2d_out_60_U", "Parent" : "0"},
	{"ID" : "442", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.buf_2d_out_61_U", "Parent" : "0"},
	{"ID" : "443", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.buf_2d_out_62_U", "Parent" : "0"},
	{"ID" : "444", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.buf_2d_out_63_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	dct {
		gmem {Type IO LastRead 4 FirstWrite -1}
		input_r {Type I LastRead 0 FirstWrite -1}
		output_r {Type I LastRead 0 FirstWrite -1}}
	entry_proc {
		output_r {Type I LastRead 0 FirstWrite -1}
		output_r_c {Type O LastRead -1 FirstWrite 0}}
	read_data {
		gmem {Type I LastRead 1 FirstWrite -1}
		input_r {Type I LastRead 0 FirstWrite -1}}
	read_data_Pipeline_RD_Loop_Row {
		gmem {Type I LastRead 1 FirstWrite -1}
		sext_ln74 {Type I LastRead 0 FirstWrite -1}
		buf_7_7_out_0_out {Type O LastRead -1 FirstWrite 1}
		buf_7_6_out_0_out {Type O LastRead -1 FirstWrite 1}
		buf_7_5_out_0_out {Type O LastRead -1 FirstWrite 1}
		buf_7_4_out_0_out {Type O LastRead -1 FirstWrite 1}
		buf_7_3_out_0_out {Type O LastRead -1 FirstWrite 1}
		buf_7_2_out_0_out {Type O LastRead -1 FirstWrite 1}
		buf_7_1_out_0_out {Type O LastRead -1 FirstWrite 1}
		buf_7_0_out_0_out {Type O LastRead -1 FirstWrite 1}
		buf_6_7_out_0_out {Type O LastRead -1 FirstWrite 1}
		buf_6_6_out_0_out {Type O LastRead -1 FirstWrite 1}
		buf_6_5_out_0_out {Type O LastRead -1 FirstWrite 1}
		buf_6_4_out_0_out {Type O LastRead -1 FirstWrite 1}
		buf_6_3_out_0_out {Type O LastRead -1 FirstWrite 1}
		buf_6_2_out_0_out {Type O LastRead -1 FirstWrite 1}
		buf_6_1_out_0_out {Type O LastRead -1 FirstWrite 1}
		buf_6_0_out_0_out {Type O LastRead -1 FirstWrite 1}
		buf_5_7_out_0_out {Type O LastRead -1 FirstWrite 1}
		buf_5_6_out_0_out {Type O LastRead -1 FirstWrite 1}
		buf_5_5_out_0_out {Type O LastRead -1 FirstWrite 1}
		buf_5_4_out_0_out {Type O LastRead -1 FirstWrite 1}
		buf_5_3_out_0_out {Type O LastRead -1 FirstWrite 1}
		buf_5_2_out_0_out {Type O LastRead -1 FirstWrite 1}
		buf_5_1_out_0_out {Type O LastRead -1 FirstWrite 1}
		buf_5_0_out_0_out {Type O LastRead -1 FirstWrite 1}
		buf_4_7_out_0_out {Type O LastRead -1 FirstWrite 1}
		buf_4_6_out_0_out {Type O LastRead -1 FirstWrite 1}
		buf_4_5_out_0_out {Type O LastRead -1 FirstWrite 1}
		buf_4_4_out_0_out {Type O LastRead -1 FirstWrite 1}
		buf_4_3_out_0_out {Type O LastRead -1 FirstWrite 1}
		buf_4_2_out_0_out {Type O LastRead -1 FirstWrite 1}
		buf_4_1_out_0_out {Type O LastRead -1 FirstWrite 1}
		buf_4_0_out_0_out {Type O LastRead -1 FirstWrite 1}
		buf_3_7_out_0_out {Type O LastRead -1 FirstWrite 1}
		buf_3_6_out_0_out {Type O LastRead -1 FirstWrite 1}
		buf_3_5_out_0_out {Type O LastRead -1 FirstWrite 1}
		buf_3_4_out_0_out {Type O LastRead -1 FirstWrite 1}
		buf_3_3_out_0_out {Type O LastRead -1 FirstWrite 1}
		buf_3_2_out_0_out {Type O LastRead -1 FirstWrite 1}
		buf_3_1_out_0_out {Type O LastRead -1 FirstWrite 1}
		buf_3_0_out_0_out {Type O LastRead -1 FirstWrite 1}
		buf_2_7_out_0_out {Type O LastRead -1 FirstWrite 1}
		buf_2_6_out_0_out {Type O LastRead -1 FirstWrite 1}
		buf_2_5_out_0_out {Type O LastRead -1 FirstWrite 1}
		buf_2_4_out_0_out {Type O LastRead -1 FirstWrite 1}
		buf_2_3_out_0_out {Type O LastRead -1 FirstWrite 1}
		buf_2_2_out_0_out {Type O LastRead -1 FirstWrite 1}
		buf_2_1_out_0_out {Type O LastRead -1 FirstWrite 1}
		buf_2_0_out_0_out {Type O LastRead -1 FirstWrite 1}
		buf_1_7_out_0_out {Type O LastRead -1 FirstWrite 1}
		buf_1_6_out_0_out {Type O LastRead -1 FirstWrite 1}
		buf_1_5_out_0_out {Type O LastRead -1 FirstWrite 1}
		buf_1_4_out_0_out {Type O LastRead -1 FirstWrite 1}
		buf_1_3_out_0_out {Type O LastRead -1 FirstWrite 1}
		buf_1_2_out_0_out {Type O LastRead -1 FirstWrite 1}
		buf_1_1_out_0_out {Type O LastRead -1 FirstWrite 1}
		buf_1_0_out_0_out {Type O LastRead -1 FirstWrite 1}
		buf_0_7_out_0_out {Type O LastRead -1 FirstWrite 1}
		buf_0_6_out_0_out {Type O LastRead -1 FirstWrite 1}
		buf_0_5_out_0_out {Type O LastRead -1 FirstWrite 1}
		buf_0_4_out_0_out {Type O LastRead -1 FirstWrite 1}
		buf_0_3_out_0_out {Type O LastRead -1 FirstWrite 1}
		buf_0_2_out_0_out {Type O LastRead -1 FirstWrite 1}
		buf_0_1_out_0_out {Type O LastRead -1 FirstWrite 1}
		buf_0_0_out_0_out {Type O LastRead -1 FirstWrite 1}}
	dct_2d {
		p_read {Type I LastRead 0 FirstWrite -1}
		p_read1 {Type I LastRead 0 FirstWrite -1}
		p_read2 {Type I LastRead 0 FirstWrite -1}
		p_read3 {Type I LastRead 0 FirstWrite -1}
		p_read4 {Type I LastRead 0 FirstWrite -1}
		p_read5 {Type I LastRead 0 FirstWrite -1}
		p_read6 {Type I LastRead 0 FirstWrite -1}
		p_read7 {Type I LastRead 0 FirstWrite -1}
		p_read8 {Type I LastRead 0 FirstWrite -1}
		p_read9 {Type I LastRead 0 FirstWrite -1}
		p_read10 {Type I LastRead 0 FirstWrite -1}
		p_read11 {Type I LastRead 0 FirstWrite -1}
		p_read12 {Type I LastRead 0 FirstWrite -1}
		p_read13 {Type I LastRead 0 FirstWrite -1}
		p_read14 {Type I LastRead 0 FirstWrite -1}
		p_read15 {Type I LastRead 0 FirstWrite -1}
		p_read16 {Type I LastRead 0 FirstWrite -1}
		p_read17 {Type I LastRead 0 FirstWrite -1}
		p_read18 {Type I LastRead 0 FirstWrite -1}
		p_read19 {Type I LastRead 0 FirstWrite -1}
		p_read20 {Type I LastRead 0 FirstWrite -1}
		p_read21 {Type I LastRead 0 FirstWrite -1}
		p_read22 {Type I LastRead 0 FirstWrite -1}
		p_read23 {Type I LastRead 0 FirstWrite -1}
		p_read24 {Type I LastRead 0 FirstWrite -1}
		p_read25 {Type I LastRead 0 FirstWrite -1}
		p_read26 {Type I LastRead 0 FirstWrite -1}
		p_read27 {Type I LastRead 0 FirstWrite -1}
		p_read28 {Type I LastRead 0 FirstWrite -1}
		p_read29 {Type I LastRead 0 FirstWrite -1}
		p_read30 {Type I LastRead 0 FirstWrite -1}
		p_read31 {Type I LastRead 0 FirstWrite -1}
		p_read32 {Type I LastRead 0 FirstWrite -1}
		p_read33 {Type I LastRead 0 FirstWrite -1}
		p_read34 {Type I LastRead 0 FirstWrite -1}
		p_read35 {Type I LastRead 0 FirstWrite -1}
		p_read36 {Type I LastRead 0 FirstWrite -1}
		p_read37 {Type I LastRead 0 FirstWrite -1}
		p_read38 {Type I LastRead 0 FirstWrite -1}
		p_read39 {Type I LastRead 0 FirstWrite -1}
		p_read40 {Type I LastRead 0 FirstWrite -1}
		p_read41 {Type I LastRead 0 FirstWrite -1}
		p_read42 {Type I LastRead 0 FirstWrite -1}
		p_read43 {Type I LastRead 0 FirstWrite -1}
		p_read44 {Type I LastRead 0 FirstWrite -1}
		p_read45 {Type I LastRead 0 FirstWrite -1}
		p_read46 {Type I LastRead 0 FirstWrite -1}
		p_read47 {Type I LastRead 0 FirstWrite -1}
		p_read48 {Type I LastRead 0 FirstWrite -1}
		p_read49 {Type I LastRead 0 FirstWrite -1}
		p_read50 {Type I LastRead 0 FirstWrite -1}
		p_read51 {Type I LastRead 0 FirstWrite -1}
		p_read52 {Type I LastRead 0 FirstWrite -1}
		p_read53 {Type I LastRead 0 FirstWrite -1}
		p_read54 {Type I LastRead 0 FirstWrite -1}
		p_read55 {Type I LastRead 0 FirstWrite -1}
		p_read56 {Type I LastRead 0 FirstWrite -1}
		p_read57 {Type I LastRead 0 FirstWrite -1}
		p_read58 {Type I LastRead 0 FirstWrite -1}
		p_read59 {Type I LastRead 0 FirstWrite -1}
		p_read60 {Type I LastRead 0 FirstWrite -1}
		p_read61 {Type I LastRead 0 FirstWrite -1}
		p_read62 {Type I LastRead 0 FirstWrite -1}
		p_read63 {Type I LastRead 0 FirstWrite -1}}
	dct_1d {
		p_read {Type I LastRead 0 FirstWrite -1}
		p_read1 {Type I LastRead 0 FirstWrite -1}
		p_read2 {Type I LastRead 0 FirstWrite -1}
		p_read3 {Type I LastRead 0 FirstWrite -1}
		p_read4 {Type I LastRead 0 FirstWrite -1}
		p_read5 {Type I LastRead 0 FirstWrite -1}
		p_read6 {Type I LastRead 0 FirstWrite -1}
		p_read7 {Type I LastRead 0 FirstWrite -1}}
	dct_1d {
		p_read {Type I LastRead 0 FirstWrite -1}
		p_read1 {Type I LastRead 0 FirstWrite -1}
		p_read2 {Type I LastRead 0 FirstWrite -1}
		p_read3 {Type I LastRead 0 FirstWrite -1}
		p_read4 {Type I LastRead 0 FirstWrite -1}
		p_read5 {Type I LastRead 0 FirstWrite -1}
		p_read6 {Type I LastRead 0 FirstWrite -1}
		p_read7 {Type I LastRead 0 FirstWrite -1}}
	dct_1d {
		p_read {Type I LastRead 0 FirstWrite -1}
		p_read1 {Type I LastRead 0 FirstWrite -1}
		p_read2 {Type I LastRead 0 FirstWrite -1}
		p_read3 {Type I LastRead 0 FirstWrite -1}
		p_read4 {Type I LastRead 0 FirstWrite -1}
		p_read5 {Type I LastRead 0 FirstWrite -1}
		p_read6 {Type I LastRead 0 FirstWrite -1}
		p_read7 {Type I LastRead 0 FirstWrite -1}}
	dct_1d {
		p_read {Type I LastRead 0 FirstWrite -1}
		p_read1 {Type I LastRead 0 FirstWrite -1}
		p_read2 {Type I LastRead 0 FirstWrite -1}
		p_read3 {Type I LastRead 0 FirstWrite -1}
		p_read4 {Type I LastRead 0 FirstWrite -1}
		p_read5 {Type I LastRead 0 FirstWrite -1}
		p_read6 {Type I LastRead 0 FirstWrite -1}
		p_read7 {Type I LastRead 0 FirstWrite -1}}
	dct_1d {
		p_read {Type I LastRead 0 FirstWrite -1}
		p_read1 {Type I LastRead 0 FirstWrite -1}
		p_read2 {Type I LastRead 0 FirstWrite -1}
		p_read3 {Type I LastRead 0 FirstWrite -1}
		p_read4 {Type I LastRead 0 FirstWrite -1}
		p_read5 {Type I LastRead 0 FirstWrite -1}
		p_read6 {Type I LastRead 0 FirstWrite -1}
		p_read7 {Type I LastRead 0 FirstWrite -1}}
	dct_1d {
		p_read {Type I LastRead 0 FirstWrite -1}
		p_read1 {Type I LastRead 0 FirstWrite -1}
		p_read2 {Type I LastRead 0 FirstWrite -1}
		p_read3 {Type I LastRead 0 FirstWrite -1}
		p_read4 {Type I LastRead 0 FirstWrite -1}
		p_read5 {Type I LastRead 0 FirstWrite -1}
		p_read6 {Type I LastRead 0 FirstWrite -1}
		p_read7 {Type I LastRead 0 FirstWrite -1}}
	dct_1d {
		p_read {Type I LastRead 0 FirstWrite -1}
		p_read1 {Type I LastRead 0 FirstWrite -1}
		p_read2 {Type I LastRead 0 FirstWrite -1}
		p_read3 {Type I LastRead 0 FirstWrite -1}
		p_read4 {Type I LastRead 0 FirstWrite -1}
		p_read5 {Type I LastRead 0 FirstWrite -1}
		p_read6 {Type I LastRead 0 FirstWrite -1}
		p_read7 {Type I LastRead 0 FirstWrite -1}}
	dct_1d {
		p_read {Type I LastRead 0 FirstWrite -1}
		p_read1 {Type I LastRead 0 FirstWrite -1}
		p_read2 {Type I LastRead 0 FirstWrite -1}
		p_read3 {Type I LastRead 0 FirstWrite -1}
		p_read4 {Type I LastRead 0 FirstWrite -1}
		p_read5 {Type I LastRead 0 FirstWrite -1}
		p_read6 {Type I LastRead 0 FirstWrite -1}
		p_read7 {Type I LastRead 0 FirstWrite -1}}
	write_data {
		buf_read {Type I LastRead 2 FirstWrite -1}
		buf_read_255 {Type I LastRead 2 FirstWrite -1}
		buf_read_256 {Type I LastRead 2 FirstWrite -1}
		buf_read_257 {Type I LastRead 2 FirstWrite -1}
		buf_read_258 {Type I LastRead 2 FirstWrite -1}
		buf_read_259 {Type I LastRead 2 FirstWrite -1}
		buf_read_260 {Type I LastRead 2 FirstWrite -1}
		buf_read_261 {Type I LastRead 2 FirstWrite -1}
		buf_read_262 {Type I LastRead 2 FirstWrite -1}
		buf_read_263 {Type I LastRead 2 FirstWrite -1}
		buf_read_264 {Type I LastRead 2 FirstWrite -1}
		buf_read_265 {Type I LastRead 2 FirstWrite -1}
		buf_read_266 {Type I LastRead 2 FirstWrite -1}
		buf_read_267 {Type I LastRead 2 FirstWrite -1}
		buf_read_268 {Type I LastRead 2 FirstWrite -1}
		buf_read_269 {Type I LastRead 2 FirstWrite -1}
		buf_read_270 {Type I LastRead 2 FirstWrite -1}
		buf_read_271 {Type I LastRead 2 FirstWrite -1}
		buf_read_272 {Type I LastRead 2 FirstWrite -1}
		buf_read_273 {Type I LastRead 2 FirstWrite -1}
		buf_read_274 {Type I LastRead 2 FirstWrite -1}
		buf_read_275 {Type I LastRead 2 FirstWrite -1}
		buf_read_276 {Type I LastRead 2 FirstWrite -1}
		buf_read_277 {Type I LastRead 2 FirstWrite -1}
		buf_read_278 {Type I LastRead 2 FirstWrite -1}
		buf_read_279 {Type I LastRead 2 FirstWrite -1}
		buf_read_280 {Type I LastRead 2 FirstWrite -1}
		buf_read_281 {Type I LastRead 2 FirstWrite -1}
		buf_read_282 {Type I LastRead 2 FirstWrite -1}
		buf_read_283 {Type I LastRead 2 FirstWrite -1}
		buf_read_284 {Type I LastRead 2 FirstWrite -1}
		buf_read_285 {Type I LastRead 2 FirstWrite -1}
		buf_read_286 {Type I LastRead 2 FirstWrite -1}
		buf_read_287 {Type I LastRead 2 FirstWrite -1}
		buf_read_288 {Type I LastRead 2 FirstWrite -1}
		buf_read_289 {Type I LastRead 2 FirstWrite -1}
		buf_read_290 {Type I LastRead 2 FirstWrite -1}
		buf_read_291 {Type I LastRead 2 FirstWrite -1}
		buf_read_292 {Type I LastRead 2 FirstWrite -1}
		buf_read_293 {Type I LastRead 2 FirstWrite -1}
		buf_read_294 {Type I LastRead 2 FirstWrite -1}
		buf_read_295 {Type I LastRead 2 FirstWrite -1}
		buf_read_296 {Type I LastRead 2 FirstWrite -1}
		buf_read_297 {Type I LastRead 2 FirstWrite -1}
		buf_read_298 {Type I LastRead 2 FirstWrite -1}
		buf_read_299 {Type I LastRead 2 FirstWrite -1}
		buf_read_300 {Type I LastRead 2 FirstWrite -1}
		buf_read_301 {Type I LastRead 2 FirstWrite -1}
		buf_read_302 {Type I LastRead 2 FirstWrite -1}
		buf_read_303 {Type I LastRead 2 FirstWrite -1}
		buf_read_304 {Type I LastRead 2 FirstWrite -1}
		buf_read_305 {Type I LastRead 2 FirstWrite -1}
		buf_read_306 {Type I LastRead 2 FirstWrite -1}
		buf_read_307 {Type I LastRead 2 FirstWrite -1}
		buf_read_308 {Type I LastRead 2 FirstWrite -1}
		buf_read_309 {Type I LastRead 2 FirstWrite -1}
		buf_read_310 {Type I LastRead 2 FirstWrite -1}
		buf_read_311 {Type I LastRead 2 FirstWrite -1}
		buf_read_312 {Type I LastRead 2 FirstWrite -1}
		buf_read_313 {Type I LastRead 2 FirstWrite -1}
		buf_read_314 {Type I LastRead 2 FirstWrite -1}
		buf_read_315 {Type I LastRead 2 FirstWrite -1}
		buf_read_316 {Type I LastRead 2 FirstWrite -1}
		buf_read_317 {Type I LastRead 2 FirstWrite -1}
		gmem {Type O LastRead 4 FirstWrite 1}
		output_r {Type I LastRead 0 FirstWrite -1}}
	write_data_Pipeline_WR_Loop_Row {
		gmem {Type O LastRead -1 FirstWrite 1}
		sext_ln87 {Type I LastRead 0 FirstWrite -1}
		buf_read {Type I LastRead 0 FirstWrite -1}
		buf_read_71 {Type I LastRead 0 FirstWrite -1}
		buf_read_79 {Type I LastRead 0 FirstWrite -1}
		buf_read_87 {Type I LastRead 0 FirstWrite -1}
		buf_read_95 {Type I LastRead 0 FirstWrite -1}
		buf_read_103 {Type I LastRead 0 FirstWrite -1}
		buf_read_111 {Type I LastRead 0 FirstWrite -1}
		buf_read_119 {Type I LastRead 0 FirstWrite -1}
		buf_read_64 {Type I LastRead 0 FirstWrite -1}
		buf_read_72 {Type I LastRead 0 FirstWrite -1}
		buf_read_80 {Type I LastRead 0 FirstWrite -1}
		buf_read_88 {Type I LastRead 0 FirstWrite -1}
		buf_read_96 {Type I LastRead 0 FirstWrite -1}
		buf_read_104 {Type I LastRead 0 FirstWrite -1}
		buf_read_112 {Type I LastRead 0 FirstWrite -1}
		buf_read_120 {Type I LastRead 0 FirstWrite -1}
		buf_read_65 {Type I LastRead 0 FirstWrite -1}
		buf_read_73 {Type I LastRead 0 FirstWrite -1}
		buf_read_81 {Type I LastRead 0 FirstWrite -1}
		buf_read_89 {Type I LastRead 0 FirstWrite -1}
		buf_read_97 {Type I LastRead 0 FirstWrite -1}
		buf_read_105 {Type I LastRead 0 FirstWrite -1}
		buf_read_113 {Type I LastRead 0 FirstWrite -1}
		buf_read_121 {Type I LastRead 0 FirstWrite -1}
		buf_read_66 {Type I LastRead 0 FirstWrite -1}
		buf_read_74 {Type I LastRead 0 FirstWrite -1}
		buf_read_82 {Type I LastRead 0 FirstWrite -1}
		buf_read_90 {Type I LastRead 0 FirstWrite -1}
		buf_read_98 {Type I LastRead 0 FirstWrite -1}
		buf_read_106 {Type I LastRead 0 FirstWrite -1}
		buf_read_114 {Type I LastRead 0 FirstWrite -1}
		buf_read_122 {Type I LastRead 0 FirstWrite -1}
		buf_read_67 {Type I LastRead 0 FirstWrite -1}
		buf_read_75 {Type I LastRead 0 FirstWrite -1}
		buf_read_83 {Type I LastRead 0 FirstWrite -1}
		buf_read_91 {Type I LastRead 0 FirstWrite -1}
		buf_read_99 {Type I LastRead 0 FirstWrite -1}
		buf_read_107 {Type I LastRead 0 FirstWrite -1}
		buf_read_115 {Type I LastRead 0 FirstWrite -1}
		buf_read_123 {Type I LastRead 0 FirstWrite -1}
		buf_read_68 {Type I LastRead 0 FirstWrite -1}
		buf_read_76 {Type I LastRead 0 FirstWrite -1}
		buf_read_84 {Type I LastRead 0 FirstWrite -1}
		buf_read_92 {Type I LastRead 0 FirstWrite -1}
		buf_read_100 {Type I LastRead 0 FirstWrite -1}
		buf_read_108 {Type I LastRead 0 FirstWrite -1}
		buf_read_116 {Type I LastRead 0 FirstWrite -1}
		buf_read_124 {Type I LastRead 0 FirstWrite -1}
		buf_read_69 {Type I LastRead 0 FirstWrite -1}
		buf_read_77 {Type I LastRead 0 FirstWrite -1}
		buf_read_85 {Type I LastRead 0 FirstWrite -1}
		buf_read_93 {Type I LastRead 0 FirstWrite -1}
		buf_read_101 {Type I LastRead 0 FirstWrite -1}
		buf_read_109 {Type I LastRead 0 FirstWrite -1}
		buf_read_117 {Type I LastRead 0 FirstWrite -1}
		buf_read_125 {Type I LastRead 0 FirstWrite -1}
		buf_read_70 {Type I LastRead 0 FirstWrite -1}
		buf_read_78 {Type I LastRead 0 FirstWrite -1}
		buf_read_86 {Type I LastRead 0 FirstWrite -1}
		buf_read_94 {Type I LastRead 0 FirstWrite -1}
		buf_read_102 {Type I LastRead 0 FirstWrite -1}
		buf_read_110 {Type I LastRead 0 FirstWrite -1}
		buf_read_118 {Type I LastRead 0 FirstWrite -1}
		buf_read_126 {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "179", "Max" : "179"}
	, {"Name" : "Interval", "Min" : "84", "Max" : "84"}
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
