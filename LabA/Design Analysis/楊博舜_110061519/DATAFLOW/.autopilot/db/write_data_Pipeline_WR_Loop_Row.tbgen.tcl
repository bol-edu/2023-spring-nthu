set moduleName write_data_Pipeline_WR_Loop_Row
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
set C_modelName {write_data_Pipeline_WR_Loop_Row}
set C_modelType { void 0 }
set C_modelArgList {
	{ gmem int 512 regular {axi_master 1}  }
	{ sext_ln87 int 58 regular  }
	{ buf_read int 16 regular  }
	{ buf_read_71 int 16 regular  }
	{ buf_read_79 int 16 regular  }
	{ buf_read_87 int 16 regular  }
	{ buf_read_95 int 16 regular  }
	{ buf_read_103 int 16 regular  }
	{ buf_read_111 int 16 regular  }
	{ buf_read_119 int 16 regular  }
	{ buf_read_64 int 16 regular  }
	{ buf_read_72 int 16 regular  }
	{ buf_read_80 int 16 regular  }
	{ buf_read_88 int 16 regular  }
	{ buf_read_96 int 16 regular  }
	{ buf_read_104 int 16 regular  }
	{ buf_read_112 int 16 regular  }
	{ buf_read_120 int 16 regular  }
	{ buf_read_65 int 16 regular  }
	{ buf_read_73 int 16 regular  }
	{ buf_read_81 int 16 regular  }
	{ buf_read_89 int 16 regular  }
	{ buf_read_97 int 16 regular  }
	{ buf_read_105 int 16 regular  }
	{ buf_read_113 int 16 regular  }
	{ buf_read_121 int 16 regular  }
	{ buf_read_66 int 16 regular  }
	{ buf_read_74 int 16 regular  }
	{ buf_read_82 int 16 regular  }
	{ buf_read_90 int 16 regular  }
	{ buf_read_98 int 16 regular  }
	{ buf_read_106 int 16 regular  }
	{ buf_read_114 int 16 regular  }
	{ buf_read_122 int 16 regular  }
	{ buf_read_67 int 16 regular  }
	{ buf_read_75 int 16 regular  }
	{ buf_read_83 int 16 regular  }
	{ buf_read_91 int 16 regular  }
	{ buf_read_99 int 16 regular  }
	{ buf_read_107 int 16 regular  }
	{ buf_read_115 int 16 regular  }
	{ buf_read_123 int 16 regular  }
	{ buf_read_68 int 16 regular  }
	{ buf_read_76 int 16 regular  }
	{ buf_read_84 int 16 regular  }
	{ buf_read_92 int 16 regular  }
	{ buf_read_100 int 16 regular  }
	{ buf_read_108 int 16 regular  }
	{ buf_read_116 int 16 regular  }
	{ buf_read_124 int 16 regular  }
	{ buf_read_69 int 16 regular  }
	{ buf_read_77 int 16 regular  }
	{ buf_read_85 int 16 regular  }
	{ buf_read_93 int 16 regular  }
	{ buf_read_101 int 16 regular  }
	{ buf_read_109 int 16 regular  }
	{ buf_read_117 int 16 regular  }
	{ buf_read_125 int 16 regular  }
	{ buf_read_70 int 16 regular  }
	{ buf_read_78 int 16 regular  }
	{ buf_read_86 int 16 regular  }
	{ buf_read_94 int 16 regular  }
	{ buf_read_102 int 16 regular  }
	{ buf_read_110 int 16 regular  }
	{ buf_read_118 int 16 regular  }
	{ buf_read_126 int 16 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "gmem", "interface" : "axi_master", "bitwidth" : 512, "direction" : "WRITEONLY", "bitSlice":[ {"cElement": [{"cName": "input_r","offset": { "type": "dynamic","port_name": "input_r","bundle": "control"},"direction": "READONLY"},{"cName": "output_r","offset": { "type": "dynamic","port_name": "output_r","bundle": "control"},"direction": "WRITEONLY"}]}]} , 
 	{ "Name" : "sext_ln87", "interface" : "wire", "bitwidth" : 58, "direction" : "READONLY"} , 
 	{ "Name" : "buf_read", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "buf_read_71", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "buf_read_79", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "buf_read_87", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "buf_read_95", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "buf_read_103", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "buf_read_111", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "buf_read_119", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "buf_read_64", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "buf_read_72", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "buf_read_80", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "buf_read_88", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "buf_read_96", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "buf_read_104", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "buf_read_112", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "buf_read_120", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "buf_read_65", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "buf_read_73", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "buf_read_81", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "buf_read_89", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "buf_read_97", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "buf_read_105", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "buf_read_113", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "buf_read_121", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "buf_read_66", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "buf_read_74", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "buf_read_82", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "buf_read_90", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "buf_read_98", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "buf_read_106", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "buf_read_114", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "buf_read_122", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "buf_read_67", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "buf_read_75", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "buf_read_83", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "buf_read_91", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "buf_read_99", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "buf_read_107", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "buf_read_115", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "buf_read_123", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "buf_read_68", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "buf_read_76", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "buf_read_84", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "buf_read_92", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "buf_read_100", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "buf_read_108", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "buf_read_116", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "buf_read_124", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "buf_read_69", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "buf_read_77", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "buf_read_85", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "buf_read_93", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "buf_read_101", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "buf_read_109", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "buf_read_117", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "buf_read_125", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "buf_read_70", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "buf_read_78", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "buf_read_86", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "buf_read_94", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "buf_read_102", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "buf_read_110", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "buf_read_118", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "buf_read_126", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 117
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ m_axi_gmem_AWVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem_AWREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem_AWADDR sc_out sc_lv 64 signal 0 } 
	{ m_axi_gmem_AWID sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem_AWLEN sc_out sc_lv 32 signal 0 } 
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
	{ m_axi_gmem_ARLEN sc_out sc_lv 32 signal 0 } 
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
	{ m_axi_gmem_RFIFONUM sc_in sc_lv 9 signal 0 } 
	{ m_axi_gmem_RUSER sc_in sc_lv 1 signal 0 } 
	{ m_axi_gmem_RRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_gmem_BVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem_BREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem_BRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_gmem_BID sc_in sc_lv 1 signal 0 } 
	{ m_axi_gmem_BUSER sc_in sc_lv 1 signal 0 } 
	{ sext_ln87 sc_in sc_lv 58 signal 1 } 
	{ buf_read sc_in sc_lv 16 signal 2 } 
	{ buf_read_71 sc_in sc_lv 16 signal 3 } 
	{ buf_read_79 sc_in sc_lv 16 signal 4 } 
	{ buf_read_87 sc_in sc_lv 16 signal 5 } 
	{ buf_read_95 sc_in sc_lv 16 signal 6 } 
	{ buf_read_103 sc_in sc_lv 16 signal 7 } 
	{ buf_read_111 sc_in sc_lv 16 signal 8 } 
	{ buf_read_119 sc_in sc_lv 16 signal 9 } 
	{ buf_read_64 sc_in sc_lv 16 signal 10 } 
	{ buf_read_72 sc_in sc_lv 16 signal 11 } 
	{ buf_read_80 sc_in sc_lv 16 signal 12 } 
	{ buf_read_88 sc_in sc_lv 16 signal 13 } 
	{ buf_read_96 sc_in sc_lv 16 signal 14 } 
	{ buf_read_104 sc_in sc_lv 16 signal 15 } 
	{ buf_read_112 sc_in sc_lv 16 signal 16 } 
	{ buf_read_120 sc_in sc_lv 16 signal 17 } 
	{ buf_read_65 sc_in sc_lv 16 signal 18 } 
	{ buf_read_73 sc_in sc_lv 16 signal 19 } 
	{ buf_read_81 sc_in sc_lv 16 signal 20 } 
	{ buf_read_89 sc_in sc_lv 16 signal 21 } 
	{ buf_read_97 sc_in sc_lv 16 signal 22 } 
	{ buf_read_105 sc_in sc_lv 16 signal 23 } 
	{ buf_read_113 sc_in sc_lv 16 signal 24 } 
	{ buf_read_121 sc_in sc_lv 16 signal 25 } 
	{ buf_read_66 sc_in sc_lv 16 signal 26 } 
	{ buf_read_74 sc_in sc_lv 16 signal 27 } 
	{ buf_read_82 sc_in sc_lv 16 signal 28 } 
	{ buf_read_90 sc_in sc_lv 16 signal 29 } 
	{ buf_read_98 sc_in sc_lv 16 signal 30 } 
	{ buf_read_106 sc_in sc_lv 16 signal 31 } 
	{ buf_read_114 sc_in sc_lv 16 signal 32 } 
	{ buf_read_122 sc_in sc_lv 16 signal 33 } 
	{ buf_read_67 sc_in sc_lv 16 signal 34 } 
	{ buf_read_75 sc_in sc_lv 16 signal 35 } 
	{ buf_read_83 sc_in sc_lv 16 signal 36 } 
	{ buf_read_91 sc_in sc_lv 16 signal 37 } 
	{ buf_read_99 sc_in sc_lv 16 signal 38 } 
	{ buf_read_107 sc_in sc_lv 16 signal 39 } 
	{ buf_read_115 sc_in sc_lv 16 signal 40 } 
	{ buf_read_123 sc_in sc_lv 16 signal 41 } 
	{ buf_read_68 sc_in sc_lv 16 signal 42 } 
	{ buf_read_76 sc_in sc_lv 16 signal 43 } 
	{ buf_read_84 sc_in sc_lv 16 signal 44 } 
	{ buf_read_92 sc_in sc_lv 16 signal 45 } 
	{ buf_read_100 sc_in sc_lv 16 signal 46 } 
	{ buf_read_108 sc_in sc_lv 16 signal 47 } 
	{ buf_read_116 sc_in sc_lv 16 signal 48 } 
	{ buf_read_124 sc_in sc_lv 16 signal 49 } 
	{ buf_read_69 sc_in sc_lv 16 signal 50 } 
	{ buf_read_77 sc_in sc_lv 16 signal 51 } 
	{ buf_read_85 sc_in sc_lv 16 signal 52 } 
	{ buf_read_93 sc_in sc_lv 16 signal 53 } 
	{ buf_read_101 sc_in sc_lv 16 signal 54 } 
	{ buf_read_109 sc_in sc_lv 16 signal 55 } 
	{ buf_read_117 sc_in sc_lv 16 signal 56 } 
	{ buf_read_125 sc_in sc_lv 16 signal 57 } 
	{ buf_read_70 sc_in sc_lv 16 signal 58 } 
	{ buf_read_78 sc_in sc_lv 16 signal 59 } 
	{ buf_read_86 sc_in sc_lv 16 signal 60 } 
	{ buf_read_94 sc_in sc_lv 16 signal 61 } 
	{ buf_read_102 sc_in sc_lv 16 signal 62 } 
	{ buf_read_110 sc_in sc_lv 16 signal 63 } 
	{ buf_read_118 sc_in sc_lv 16 signal 64 } 
	{ buf_read_126 sc_in sc_lv 16 signal 65 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "m_axi_gmem_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "AWVALID" }} , 
 	{ "name": "m_axi_gmem_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "AWREADY" }} , 
 	{ "name": "m_axi_gmem_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem", "role": "AWADDR" }} , 
 	{ "name": "m_axi_gmem_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "AWID" }} , 
 	{ "name": "m_axi_gmem_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem", "role": "AWLEN" }} , 
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
 	{ "name": "m_axi_gmem_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem", "role": "ARLEN" }} , 
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
 	{ "name": "m_axi_gmem_RFIFONUM", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "gmem", "role": "RFIFONUM" }} , 
 	{ "name": "m_axi_gmem_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "RUSER" }} , 
 	{ "name": "m_axi_gmem_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem", "role": "RRESP" }} , 
 	{ "name": "m_axi_gmem_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "BVALID" }} , 
 	{ "name": "m_axi_gmem_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "BREADY" }} , 
 	{ "name": "m_axi_gmem_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem", "role": "BRESP" }} , 
 	{ "name": "m_axi_gmem_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "BID" }} , 
 	{ "name": "m_axi_gmem_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "BUSER" }} , 
 	{ "name": "sext_ln87", "direction": "in", "datatype": "sc_lv", "bitwidth":58, "type": "signal", "bundle":{"name": "sext_ln87", "role": "default" }} , 
 	{ "name": "buf_read", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "buf_read", "role": "default" }} , 
 	{ "name": "buf_read_71", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "buf_read_71", "role": "default" }} , 
 	{ "name": "buf_read_79", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "buf_read_79", "role": "default" }} , 
 	{ "name": "buf_read_87", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "buf_read_87", "role": "default" }} , 
 	{ "name": "buf_read_95", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "buf_read_95", "role": "default" }} , 
 	{ "name": "buf_read_103", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "buf_read_103", "role": "default" }} , 
 	{ "name": "buf_read_111", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "buf_read_111", "role": "default" }} , 
 	{ "name": "buf_read_119", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "buf_read_119", "role": "default" }} , 
 	{ "name": "buf_read_64", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "buf_read_64", "role": "default" }} , 
 	{ "name": "buf_read_72", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "buf_read_72", "role": "default" }} , 
 	{ "name": "buf_read_80", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "buf_read_80", "role": "default" }} , 
 	{ "name": "buf_read_88", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "buf_read_88", "role": "default" }} , 
 	{ "name": "buf_read_96", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "buf_read_96", "role": "default" }} , 
 	{ "name": "buf_read_104", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "buf_read_104", "role": "default" }} , 
 	{ "name": "buf_read_112", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "buf_read_112", "role": "default" }} , 
 	{ "name": "buf_read_120", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "buf_read_120", "role": "default" }} , 
 	{ "name": "buf_read_65", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "buf_read_65", "role": "default" }} , 
 	{ "name": "buf_read_73", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "buf_read_73", "role": "default" }} , 
 	{ "name": "buf_read_81", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "buf_read_81", "role": "default" }} , 
 	{ "name": "buf_read_89", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "buf_read_89", "role": "default" }} , 
 	{ "name": "buf_read_97", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "buf_read_97", "role": "default" }} , 
 	{ "name": "buf_read_105", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "buf_read_105", "role": "default" }} , 
 	{ "name": "buf_read_113", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "buf_read_113", "role": "default" }} , 
 	{ "name": "buf_read_121", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "buf_read_121", "role": "default" }} , 
 	{ "name": "buf_read_66", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "buf_read_66", "role": "default" }} , 
 	{ "name": "buf_read_74", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "buf_read_74", "role": "default" }} , 
 	{ "name": "buf_read_82", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "buf_read_82", "role": "default" }} , 
 	{ "name": "buf_read_90", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "buf_read_90", "role": "default" }} , 
 	{ "name": "buf_read_98", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "buf_read_98", "role": "default" }} , 
 	{ "name": "buf_read_106", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "buf_read_106", "role": "default" }} , 
 	{ "name": "buf_read_114", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "buf_read_114", "role": "default" }} , 
 	{ "name": "buf_read_122", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "buf_read_122", "role": "default" }} , 
 	{ "name": "buf_read_67", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "buf_read_67", "role": "default" }} , 
 	{ "name": "buf_read_75", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "buf_read_75", "role": "default" }} , 
 	{ "name": "buf_read_83", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "buf_read_83", "role": "default" }} , 
 	{ "name": "buf_read_91", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "buf_read_91", "role": "default" }} , 
 	{ "name": "buf_read_99", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "buf_read_99", "role": "default" }} , 
 	{ "name": "buf_read_107", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "buf_read_107", "role": "default" }} , 
 	{ "name": "buf_read_115", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "buf_read_115", "role": "default" }} , 
 	{ "name": "buf_read_123", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "buf_read_123", "role": "default" }} , 
 	{ "name": "buf_read_68", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "buf_read_68", "role": "default" }} , 
 	{ "name": "buf_read_76", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "buf_read_76", "role": "default" }} , 
 	{ "name": "buf_read_84", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "buf_read_84", "role": "default" }} , 
 	{ "name": "buf_read_92", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "buf_read_92", "role": "default" }} , 
 	{ "name": "buf_read_100", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "buf_read_100", "role": "default" }} , 
 	{ "name": "buf_read_108", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "buf_read_108", "role": "default" }} , 
 	{ "name": "buf_read_116", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "buf_read_116", "role": "default" }} , 
 	{ "name": "buf_read_124", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "buf_read_124", "role": "default" }} , 
 	{ "name": "buf_read_69", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "buf_read_69", "role": "default" }} , 
 	{ "name": "buf_read_77", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "buf_read_77", "role": "default" }} , 
 	{ "name": "buf_read_85", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "buf_read_85", "role": "default" }} , 
 	{ "name": "buf_read_93", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "buf_read_93", "role": "default" }} , 
 	{ "name": "buf_read_101", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "buf_read_101", "role": "default" }} , 
 	{ "name": "buf_read_109", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "buf_read_109", "role": "default" }} , 
 	{ "name": "buf_read_117", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "buf_read_117", "role": "default" }} , 
 	{ "name": "buf_read_125", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "buf_read_125", "role": "default" }} , 
 	{ "name": "buf_read_70", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "buf_read_70", "role": "default" }} , 
 	{ "name": "buf_read_78", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "buf_read_78", "role": "default" }} , 
 	{ "name": "buf_read_86", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "buf_read_86", "role": "default" }} , 
 	{ "name": "buf_read_94", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "buf_read_94", "role": "default" }} , 
 	{ "name": "buf_read_102", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "buf_read_102", "role": "default" }} , 
 	{ "name": "buf_read_110", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "buf_read_110", "role": "default" }} , 
 	{ "name": "buf_read_118", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "buf_read_118", "role": "default" }} , 
 	{ "name": "buf_read_126", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "buf_read_126", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9"],
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
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_84_16_1_1_U191", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_84_16_1_1_U192", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_84_16_1_1_U193", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_84_16_1_1_U194", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_84_16_1_1_U195", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_84_16_1_1_U196", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_84_16_1_1_U197", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_84_16_1_1_U198", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
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
	{"Name" : "Latency", "Min" : "10", "Max" : "10"}
	, {"Name" : "Interval", "Min" : "10", "Max" : "10"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	 { m_axi {  { m_axi_gmem_AWVALID VALID 1 1 }  { m_axi_gmem_AWREADY READY 0 1 }  { m_axi_gmem_AWADDR ADDR 1 64 }  { m_axi_gmem_AWID ID 1 1 }  { m_axi_gmem_AWLEN SIZE 1 32 }  { m_axi_gmem_AWSIZE BURST 1 3 }  { m_axi_gmem_AWBURST LOCK 1 2 }  { m_axi_gmem_AWLOCK CACHE 1 2 }  { m_axi_gmem_AWCACHE PROT 1 4 }  { m_axi_gmem_AWPROT QOS 1 3 }  { m_axi_gmem_AWQOS REGION 1 4 }  { m_axi_gmem_AWREGION USER 1 4 }  { m_axi_gmem_AWUSER DATA 1 1 }  { m_axi_gmem_WVALID VALID 1 1 }  { m_axi_gmem_WREADY READY 0 1 }  { m_axi_gmem_WDATA FIFONUM 1 512 }  { m_axi_gmem_WSTRB STRB 1 64 }  { m_axi_gmem_WLAST LAST 1 1 }  { m_axi_gmem_WID ID 1 1 }  { m_axi_gmem_WUSER DATA 1 1 }  { m_axi_gmem_ARVALID VALID 1 1 }  { m_axi_gmem_ARREADY READY 0 1 }  { m_axi_gmem_ARADDR ADDR 1 64 }  { m_axi_gmem_ARID ID 1 1 }  { m_axi_gmem_ARLEN SIZE 1 32 }  { m_axi_gmem_ARSIZE BURST 1 3 }  { m_axi_gmem_ARBURST LOCK 1 2 }  { m_axi_gmem_ARLOCK CACHE 1 2 }  { m_axi_gmem_ARCACHE PROT 1 4 }  { m_axi_gmem_ARPROT QOS 1 3 }  { m_axi_gmem_ARQOS REGION 1 4 }  { m_axi_gmem_ARREGION USER 1 4 }  { m_axi_gmem_ARUSER DATA 1 1 }  { m_axi_gmem_RVALID VALID 0 1 }  { m_axi_gmem_RREADY READY 1 1 }  { m_axi_gmem_RDATA FIFONUM 0 512 }  { m_axi_gmem_RLAST LAST 0 1 }  { m_axi_gmem_RID ID 0 1 }  { m_axi_gmem_RFIFONUM LEN 0 9 }  { m_axi_gmem_RUSER DATA 0 1 }  { m_axi_gmem_RRESP RESP 0 2 }  { m_axi_gmem_BVALID VALID 0 1 }  { m_axi_gmem_BREADY READY 1 1 }  { m_axi_gmem_BRESP RESP 0 2 }  { m_axi_gmem_BID ID 0 1 }  { m_axi_gmem_BUSER DATA 0 1 } } }
	sext_ln87 { ap_none {  { sext_ln87 in_data 0 58 } } }
	buf_read { ap_none {  { buf_read in_data 0 16 } } }
	buf_read_71 { ap_none {  { buf_read_71 in_data 0 16 } } }
	buf_read_79 { ap_none {  { buf_read_79 in_data 0 16 } } }
	buf_read_87 { ap_none {  { buf_read_87 in_data 0 16 } } }
	buf_read_95 { ap_none {  { buf_read_95 in_data 0 16 } } }
	buf_read_103 { ap_none {  { buf_read_103 in_data 0 16 } } }
	buf_read_111 { ap_none {  { buf_read_111 in_data 0 16 } } }
	buf_read_119 { ap_none {  { buf_read_119 in_data 0 16 } } }
	buf_read_64 { ap_none {  { buf_read_64 in_data 0 16 } } }
	buf_read_72 { ap_none {  { buf_read_72 in_data 0 16 } } }
	buf_read_80 { ap_none {  { buf_read_80 in_data 0 16 } } }
	buf_read_88 { ap_none {  { buf_read_88 in_data 0 16 } } }
	buf_read_96 { ap_none {  { buf_read_96 in_data 0 16 } } }
	buf_read_104 { ap_none {  { buf_read_104 in_data 0 16 } } }
	buf_read_112 { ap_none {  { buf_read_112 in_data 0 16 } } }
	buf_read_120 { ap_none {  { buf_read_120 in_data 0 16 } } }
	buf_read_65 { ap_none {  { buf_read_65 in_data 0 16 } } }
	buf_read_73 { ap_none {  { buf_read_73 in_data 0 16 } } }
	buf_read_81 { ap_none {  { buf_read_81 in_data 0 16 } } }
	buf_read_89 { ap_none {  { buf_read_89 in_data 0 16 } } }
	buf_read_97 { ap_none {  { buf_read_97 in_data 0 16 } } }
	buf_read_105 { ap_none {  { buf_read_105 in_data 0 16 } } }
	buf_read_113 { ap_none {  { buf_read_113 in_data 0 16 } } }
	buf_read_121 { ap_none {  { buf_read_121 in_data 0 16 } } }
	buf_read_66 { ap_none {  { buf_read_66 in_data 0 16 } } }
	buf_read_74 { ap_none {  { buf_read_74 in_data 0 16 } } }
	buf_read_82 { ap_none {  { buf_read_82 in_data 0 16 } } }
	buf_read_90 { ap_none {  { buf_read_90 in_data 0 16 } } }
	buf_read_98 { ap_none {  { buf_read_98 in_data 0 16 } } }
	buf_read_106 { ap_none {  { buf_read_106 in_data 0 16 } } }
	buf_read_114 { ap_none {  { buf_read_114 in_data 0 16 } } }
	buf_read_122 { ap_none {  { buf_read_122 in_data 0 16 } } }
	buf_read_67 { ap_none {  { buf_read_67 in_data 0 16 } } }
	buf_read_75 { ap_none {  { buf_read_75 in_data 0 16 } } }
	buf_read_83 { ap_none {  { buf_read_83 in_data 0 16 } } }
	buf_read_91 { ap_none {  { buf_read_91 in_data 0 16 } } }
	buf_read_99 { ap_none {  { buf_read_99 in_data 0 16 } } }
	buf_read_107 { ap_none {  { buf_read_107 in_data 0 16 } } }
	buf_read_115 { ap_none {  { buf_read_115 in_data 0 16 } } }
	buf_read_123 { ap_none {  { buf_read_123 in_data 0 16 } } }
	buf_read_68 { ap_none {  { buf_read_68 in_data 0 16 } } }
	buf_read_76 { ap_none {  { buf_read_76 in_data 0 16 } } }
	buf_read_84 { ap_none {  { buf_read_84 in_data 0 16 } } }
	buf_read_92 { ap_none {  { buf_read_92 in_data 0 16 } } }
	buf_read_100 { ap_none {  { buf_read_100 in_data 0 16 } } }
	buf_read_108 { ap_none {  { buf_read_108 in_data 0 16 } } }
	buf_read_116 { ap_none {  { buf_read_116 in_data 0 16 } } }
	buf_read_124 { ap_none {  { buf_read_124 in_data 0 16 } } }
	buf_read_69 { ap_none {  { buf_read_69 in_data 0 16 } } }
	buf_read_77 { ap_none {  { buf_read_77 in_data 0 16 } } }
	buf_read_85 { ap_none {  { buf_read_85 in_data 0 16 } } }
	buf_read_93 { ap_none {  { buf_read_93 in_data 0 16 } } }
	buf_read_101 { ap_none {  { buf_read_101 in_data 0 16 } } }
	buf_read_109 { ap_none {  { buf_read_109 in_data 0 16 } } }
	buf_read_117 { ap_none {  { buf_read_117 in_data 0 16 } } }
	buf_read_125 { ap_none {  { buf_read_125 in_data 0 16 } } }
	buf_read_70 { ap_none {  { buf_read_70 in_data 0 16 } } }
	buf_read_78 { ap_none {  { buf_read_78 in_data 0 16 } } }
	buf_read_86 { ap_none {  { buf_read_86 in_data 0 16 } } }
	buf_read_94 { ap_none {  { buf_read_94 in_data 0 16 } } }
	buf_read_102 { ap_none {  { buf_read_102 in_data 0 16 } } }
	buf_read_110 { ap_none {  { buf_read_110 in_data 0 16 } } }
	buf_read_118 { ap_none {  { buf_read_118 in_data 0 16 } } }
	buf_read_126 { ap_none {  { buf_read_126 in_data 0 16 } } }
}
