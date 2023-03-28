set moduleName dct_2d
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set pipeline_type function
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set hasInterrupt 0
set C_modelName {dct_2d}
set C_modelType { int 1024 }
set C_modelArgList {
	{ p_read int 16 regular  }
	{ p_read1 int 16 regular  }
	{ p_read2 int 16 regular  }
	{ p_read3 int 16 regular  }
	{ p_read4 int 16 regular  }
	{ p_read5 int 16 regular  }
	{ p_read6 int 16 regular  }
	{ p_read7 int 16 regular  }
	{ p_read8 int 16 regular  }
	{ p_read9 int 16 regular  }
	{ p_read10 int 16 regular  }
	{ p_read11 int 16 regular  }
	{ p_read12 int 16 regular  }
	{ p_read13 int 16 regular  }
	{ p_read14 int 16 regular  }
	{ p_read15 int 16 regular  }
	{ p_read16 int 16 regular  }
	{ p_read17 int 16 regular  }
	{ p_read18 int 16 regular  }
	{ p_read19 int 16 regular  }
	{ p_read20 int 16 regular  }
	{ p_read21 int 16 regular  }
	{ p_read22 int 16 regular  }
	{ p_read23 int 16 regular  }
	{ p_read24 int 16 regular  }
	{ p_read25 int 16 regular  }
	{ p_read26 int 16 regular  }
	{ p_read27 int 16 regular  }
	{ p_read28 int 16 regular  }
	{ p_read29 int 16 regular  }
	{ p_read30 int 16 regular  }
	{ p_read31 int 16 regular  }
	{ p_read32 int 16 regular  }
	{ p_read33 int 16 regular  }
	{ p_read34 int 16 regular  }
	{ p_read35 int 16 regular  }
	{ p_read36 int 16 regular  }
	{ p_read37 int 16 regular  }
	{ p_read38 int 16 regular  }
	{ p_read39 int 16 regular  }
	{ p_read40 int 16 regular  }
	{ p_read41 int 16 regular  }
	{ p_read42 int 16 regular  }
	{ p_read43 int 16 regular  }
	{ p_read44 int 16 regular  }
	{ p_read45 int 16 regular  }
	{ p_read46 int 16 regular  }
	{ p_read47 int 16 regular  }
	{ p_read48 int 16 regular  }
	{ p_read49 int 16 regular  }
	{ p_read50 int 16 regular  }
	{ p_read51 int 16 regular  }
	{ p_read52 int 16 regular  }
	{ p_read53 int 16 regular  }
	{ p_read54 int 16 regular  }
	{ p_read55 int 16 regular  }
	{ p_read56 int 16 regular  }
	{ p_read57 int 16 regular  }
	{ p_read58 int 16 regular  }
	{ p_read59 int 16 regular  }
	{ p_read60 int 16 regular  }
	{ p_read61 int 16 regular  }
	{ p_read62 int 16 regular  }
	{ p_read63 int 16 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "p_read", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "p_read1", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "p_read2", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "p_read3", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "p_read4", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "p_read5", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "p_read6", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "p_read7", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "p_read8", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "p_read9", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "p_read10", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "p_read11", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "p_read12", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "p_read13", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "p_read14", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "p_read15", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "p_read16", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "p_read17", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "p_read18", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "p_read19", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "p_read20", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "p_read21", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "p_read22", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "p_read23", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "p_read24", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "p_read25", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "p_read26", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "p_read27", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "p_read28", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "p_read29", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "p_read30", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "p_read31", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "p_read32", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "p_read33", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "p_read34", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "p_read35", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "p_read36", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "p_read37", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "p_read38", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "p_read39", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "p_read40", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "p_read41", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "p_read42", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "p_read43", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "p_read44", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "p_read45", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "p_read46", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "p_read47", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "p_read48", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "p_read49", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "p_read50", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "p_read51", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "p_read52", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "p_read53", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "p_read54", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "p_read55", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "p_read56", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "p_read57", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "p_read58", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "p_read59", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "p_read60", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "p_read61", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "p_read62", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "p_read63", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "ap_return", "interface" : "wire", "bitwidth" : 1024} ]}
# RTL Port declarations: 
set portNum 135
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ p_read sc_in sc_lv 16 signal 0 } 
	{ p_read1 sc_in sc_lv 16 signal 1 } 
	{ p_read2 sc_in sc_lv 16 signal 2 } 
	{ p_read3 sc_in sc_lv 16 signal 3 } 
	{ p_read4 sc_in sc_lv 16 signal 4 } 
	{ p_read5 sc_in sc_lv 16 signal 5 } 
	{ p_read6 sc_in sc_lv 16 signal 6 } 
	{ p_read7 sc_in sc_lv 16 signal 7 } 
	{ p_read8 sc_in sc_lv 16 signal 8 } 
	{ p_read9 sc_in sc_lv 16 signal 9 } 
	{ p_read10 sc_in sc_lv 16 signal 10 } 
	{ p_read11 sc_in sc_lv 16 signal 11 } 
	{ p_read12 sc_in sc_lv 16 signal 12 } 
	{ p_read13 sc_in sc_lv 16 signal 13 } 
	{ p_read14 sc_in sc_lv 16 signal 14 } 
	{ p_read15 sc_in sc_lv 16 signal 15 } 
	{ p_read16 sc_in sc_lv 16 signal 16 } 
	{ p_read17 sc_in sc_lv 16 signal 17 } 
	{ p_read18 sc_in sc_lv 16 signal 18 } 
	{ p_read19 sc_in sc_lv 16 signal 19 } 
	{ p_read20 sc_in sc_lv 16 signal 20 } 
	{ p_read21 sc_in sc_lv 16 signal 21 } 
	{ p_read22 sc_in sc_lv 16 signal 22 } 
	{ p_read23 sc_in sc_lv 16 signal 23 } 
	{ p_read24 sc_in sc_lv 16 signal 24 } 
	{ p_read25 sc_in sc_lv 16 signal 25 } 
	{ p_read26 sc_in sc_lv 16 signal 26 } 
	{ p_read27 sc_in sc_lv 16 signal 27 } 
	{ p_read28 sc_in sc_lv 16 signal 28 } 
	{ p_read29 sc_in sc_lv 16 signal 29 } 
	{ p_read30 sc_in sc_lv 16 signal 30 } 
	{ p_read31 sc_in sc_lv 16 signal 31 } 
	{ p_read32 sc_in sc_lv 16 signal 32 } 
	{ p_read33 sc_in sc_lv 16 signal 33 } 
	{ p_read34 sc_in sc_lv 16 signal 34 } 
	{ p_read35 sc_in sc_lv 16 signal 35 } 
	{ p_read36 sc_in sc_lv 16 signal 36 } 
	{ p_read37 sc_in sc_lv 16 signal 37 } 
	{ p_read38 sc_in sc_lv 16 signal 38 } 
	{ p_read39 sc_in sc_lv 16 signal 39 } 
	{ p_read40 sc_in sc_lv 16 signal 40 } 
	{ p_read41 sc_in sc_lv 16 signal 41 } 
	{ p_read42 sc_in sc_lv 16 signal 42 } 
	{ p_read43 sc_in sc_lv 16 signal 43 } 
	{ p_read44 sc_in sc_lv 16 signal 44 } 
	{ p_read45 sc_in sc_lv 16 signal 45 } 
	{ p_read46 sc_in sc_lv 16 signal 46 } 
	{ p_read47 sc_in sc_lv 16 signal 47 } 
	{ p_read48 sc_in sc_lv 16 signal 48 } 
	{ p_read49 sc_in sc_lv 16 signal 49 } 
	{ p_read50 sc_in sc_lv 16 signal 50 } 
	{ p_read51 sc_in sc_lv 16 signal 51 } 
	{ p_read52 sc_in sc_lv 16 signal 52 } 
	{ p_read53 sc_in sc_lv 16 signal 53 } 
	{ p_read54 sc_in sc_lv 16 signal 54 } 
	{ p_read55 sc_in sc_lv 16 signal 55 } 
	{ p_read56 sc_in sc_lv 16 signal 56 } 
	{ p_read57 sc_in sc_lv 16 signal 57 } 
	{ p_read58 sc_in sc_lv 16 signal 58 } 
	{ p_read59 sc_in sc_lv 16 signal 59 } 
	{ p_read60 sc_in sc_lv 16 signal 60 } 
	{ p_read61 sc_in sc_lv 16 signal 61 } 
	{ p_read62 sc_in sc_lv 16 signal 62 } 
	{ p_read63 sc_in sc_lv 16 signal 63 } 
	{ ap_return_0 sc_out sc_lv 16 signal -1 } 
	{ ap_return_1 sc_out sc_lv 16 signal -1 } 
	{ ap_return_2 sc_out sc_lv 16 signal -1 } 
	{ ap_return_3 sc_out sc_lv 16 signal -1 } 
	{ ap_return_4 sc_out sc_lv 16 signal -1 } 
	{ ap_return_5 sc_out sc_lv 16 signal -1 } 
	{ ap_return_6 sc_out sc_lv 16 signal -1 } 
	{ ap_return_7 sc_out sc_lv 16 signal -1 } 
	{ ap_return_8 sc_out sc_lv 16 signal -1 } 
	{ ap_return_9 sc_out sc_lv 16 signal -1 } 
	{ ap_return_10 sc_out sc_lv 16 signal -1 } 
	{ ap_return_11 sc_out sc_lv 16 signal -1 } 
	{ ap_return_12 sc_out sc_lv 16 signal -1 } 
	{ ap_return_13 sc_out sc_lv 16 signal -1 } 
	{ ap_return_14 sc_out sc_lv 16 signal -1 } 
	{ ap_return_15 sc_out sc_lv 16 signal -1 } 
	{ ap_return_16 sc_out sc_lv 16 signal -1 } 
	{ ap_return_17 sc_out sc_lv 16 signal -1 } 
	{ ap_return_18 sc_out sc_lv 16 signal -1 } 
	{ ap_return_19 sc_out sc_lv 16 signal -1 } 
	{ ap_return_20 sc_out sc_lv 16 signal -1 } 
	{ ap_return_21 sc_out sc_lv 16 signal -1 } 
	{ ap_return_22 sc_out sc_lv 16 signal -1 } 
	{ ap_return_23 sc_out sc_lv 16 signal -1 } 
	{ ap_return_24 sc_out sc_lv 16 signal -1 } 
	{ ap_return_25 sc_out sc_lv 16 signal -1 } 
	{ ap_return_26 sc_out sc_lv 16 signal -1 } 
	{ ap_return_27 sc_out sc_lv 16 signal -1 } 
	{ ap_return_28 sc_out sc_lv 16 signal -1 } 
	{ ap_return_29 sc_out sc_lv 16 signal -1 } 
	{ ap_return_30 sc_out sc_lv 16 signal -1 } 
	{ ap_return_31 sc_out sc_lv 16 signal -1 } 
	{ ap_return_32 sc_out sc_lv 16 signal -1 } 
	{ ap_return_33 sc_out sc_lv 16 signal -1 } 
	{ ap_return_34 sc_out sc_lv 16 signal -1 } 
	{ ap_return_35 sc_out sc_lv 16 signal -1 } 
	{ ap_return_36 sc_out sc_lv 16 signal -1 } 
	{ ap_return_37 sc_out sc_lv 16 signal -1 } 
	{ ap_return_38 sc_out sc_lv 16 signal -1 } 
	{ ap_return_39 sc_out sc_lv 16 signal -1 } 
	{ ap_return_40 sc_out sc_lv 16 signal -1 } 
	{ ap_return_41 sc_out sc_lv 16 signal -1 } 
	{ ap_return_42 sc_out sc_lv 16 signal -1 } 
	{ ap_return_43 sc_out sc_lv 16 signal -1 } 
	{ ap_return_44 sc_out sc_lv 16 signal -1 } 
	{ ap_return_45 sc_out sc_lv 16 signal -1 } 
	{ ap_return_46 sc_out sc_lv 16 signal -1 } 
	{ ap_return_47 sc_out sc_lv 16 signal -1 } 
	{ ap_return_48 sc_out sc_lv 16 signal -1 } 
	{ ap_return_49 sc_out sc_lv 16 signal -1 } 
	{ ap_return_50 sc_out sc_lv 16 signal -1 } 
	{ ap_return_51 sc_out sc_lv 16 signal -1 } 
	{ ap_return_52 sc_out sc_lv 16 signal -1 } 
	{ ap_return_53 sc_out sc_lv 16 signal -1 } 
	{ ap_return_54 sc_out sc_lv 16 signal -1 } 
	{ ap_return_55 sc_out sc_lv 16 signal -1 } 
	{ ap_return_56 sc_out sc_lv 16 signal -1 } 
	{ ap_return_57 sc_out sc_lv 16 signal -1 } 
	{ ap_return_58 sc_out sc_lv 16 signal -1 } 
	{ ap_return_59 sc_out sc_lv 16 signal -1 } 
	{ ap_return_60 sc_out sc_lv 16 signal -1 } 
	{ ap_return_61 sc_out sc_lv 16 signal -1 } 
	{ ap_return_62 sc_out sc_lv 16 signal -1 } 
	{ ap_return_63 sc_out sc_lv 16 signal -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "p_read", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_read", "role": "default" }} , 
 	{ "name": "p_read1", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_read1", "role": "default" }} , 
 	{ "name": "p_read2", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_read2", "role": "default" }} , 
 	{ "name": "p_read3", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_read3", "role": "default" }} , 
 	{ "name": "p_read4", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_read4", "role": "default" }} , 
 	{ "name": "p_read5", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_read5", "role": "default" }} , 
 	{ "name": "p_read6", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_read6", "role": "default" }} , 
 	{ "name": "p_read7", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_read7", "role": "default" }} , 
 	{ "name": "p_read8", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_read8", "role": "default" }} , 
 	{ "name": "p_read9", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_read9", "role": "default" }} , 
 	{ "name": "p_read10", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_read10", "role": "default" }} , 
 	{ "name": "p_read11", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_read11", "role": "default" }} , 
 	{ "name": "p_read12", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_read12", "role": "default" }} , 
 	{ "name": "p_read13", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_read13", "role": "default" }} , 
 	{ "name": "p_read14", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_read14", "role": "default" }} , 
 	{ "name": "p_read15", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_read15", "role": "default" }} , 
 	{ "name": "p_read16", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_read16", "role": "default" }} , 
 	{ "name": "p_read17", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_read17", "role": "default" }} , 
 	{ "name": "p_read18", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_read18", "role": "default" }} , 
 	{ "name": "p_read19", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_read19", "role": "default" }} , 
 	{ "name": "p_read20", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_read20", "role": "default" }} , 
 	{ "name": "p_read21", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_read21", "role": "default" }} , 
 	{ "name": "p_read22", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_read22", "role": "default" }} , 
 	{ "name": "p_read23", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_read23", "role": "default" }} , 
 	{ "name": "p_read24", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_read24", "role": "default" }} , 
 	{ "name": "p_read25", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_read25", "role": "default" }} , 
 	{ "name": "p_read26", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_read26", "role": "default" }} , 
 	{ "name": "p_read27", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_read27", "role": "default" }} , 
 	{ "name": "p_read28", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_read28", "role": "default" }} , 
 	{ "name": "p_read29", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_read29", "role": "default" }} , 
 	{ "name": "p_read30", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_read30", "role": "default" }} , 
 	{ "name": "p_read31", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_read31", "role": "default" }} , 
 	{ "name": "p_read32", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_read32", "role": "default" }} , 
 	{ "name": "p_read33", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_read33", "role": "default" }} , 
 	{ "name": "p_read34", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_read34", "role": "default" }} , 
 	{ "name": "p_read35", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_read35", "role": "default" }} , 
 	{ "name": "p_read36", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_read36", "role": "default" }} , 
 	{ "name": "p_read37", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_read37", "role": "default" }} , 
 	{ "name": "p_read38", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_read38", "role": "default" }} , 
 	{ "name": "p_read39", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_read39", "role": "default" }} , 
 	{ "name": "p_read40", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_read40", "role": "default" }} , 
 	{ "name": "p_read41", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_read41", "role": "default" }} , 
 	{ "name": "p_read42", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_read42", "role": "default" }} , 
 	{ "name": "p_read43", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_read43", "role": "default" }} , 
 	{ "name": "p_read44", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_read44", "role": "default" }} , 
 	{ "name": "p_read45", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_read45", "role": "default" }} , 
 	{ "name": "p_read46", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_read46", "role": "default" }} , 
 	{ "name": "p_read47", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_read47", "role": "default" }} , 
 	{ "name": "p_read48", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_read48", "role": "default" }} , 
 	{ "name": "p_read49", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_read49", "role": "default" }} , 
 	{ "name": "p_read50", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_read50", "role": "default" }} , 
 	{ "name": "p_read51", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_read51", "role": "default" }} , 
 	{ "name": "p_read52", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_read52", "role": "default" }} , 
 	{ "name": "p_read53", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_read53", "role": "default" }} , 
 	{ "name": "p_read54", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_read54", "role": "default" }} , 
 	{ "name": "p_read55", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_read55", "role": "default" }} , 
 	{ "name": "p_read56", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_read56", "role": "default" }} , 
 	{ "name": "p_read57", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_read57", "role": "default" }} , 
 	{ "name": "p_read58", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_read58", "role": "default" }} , 
 	{ "name": "p_read59", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_read59", "role": "default" }} , 
 	{ "name": "p_read60", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_read60", "role": "default" }} , 
 	{ "name": "p_read61", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_read61", "role": "default" }} , 
 	{ "name": "p_read62", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_read62", "role": "default" }} , 
 	{ "name": "p_read63", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_read63", "role": "default" }} , 
 	{ "name": "ap_return_0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "ap_return_0", "role": "default" }} , 
 	{ "name": "ap_return_1", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "ap_return_1", "role": "default" }} , 
 	{ "name": "ap_return_2", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "ap_return_2", "role": "default" }} , 
 	{ "name": "ap_return_3", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "ap_return_3", "role": "default" }} , 
 	{ "name": "ap_return_4", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "ap_return_4", "role": "default" }} , 
 	{ "name": "ap_return_5", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "ap_return_5", "role": "default" }} , 
 	{ "name": "ap_return_6", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "ap_return_6", "role": "default" }} , 
 	{ "name": "ap_return_7", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "ap_return_7", "role": "default" }} , 
 	{ "name": "ap_return_8", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "ap_return_8", "role": "default" }} , 
 	{ "name": "ap_return_9", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "ap_return_9", "role": "default" }} , 
 	{ "name": "ap_return_10", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "ap_return_10", "role": "default" }} , 
 	{ "name": "ap_return_11", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "ap_return_11", "role": "default" }} , 
 	{ "name": "ap_return_12", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "ap_return_12", "role": "default" }} , 
 	{ "name": "ap_return_13", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "ap_return_13", "role": "default" }} , 
 	{ "name": "ap_return_14", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "ap_return_14", "role": "default" }} , 
 	{ "name": "ap_return_15", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "ap_return_15", "role": "default" }} , 
 	{ "name": "ap_return_16", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "ap_return_16", "role": "default" }} , 
 	{ "name": "ap_return_17", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "ap_return_17", "role": "default" }} , 
 	{ "name": "ap_return_18", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "ap_return_18", "role": "default" }} , 
 	{ "name": "ap_return_19", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "ap_return_19", "role": "default" }} , 
 	{ "name": "ap_return_20", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "ap_return_20", "role": "default" }} , 
 	{ "name": "ap_return_21", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "ap_return_21", "role": "default" }} , 
 	{ "name": "ap_return_22", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "ap_return_22", "role": "default" }} , 
 	{ "name": "ap_return_23", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "ap_return_23", "role": "default" }} , 
 	{ "name": "ap_return_24", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "ap_return_24", "role": "default" }} , 
 	{ "name": "ap_return_25", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "ap_return_25", "role": "default" }} , 
 	{ "name": "ap_return_26", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "ap_return_26", "role": "default" }} , 
 	{ "name": "ap_return_27", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "ap_return_27", "role": "default" }} , 
 	{ "name": "ap_return_28", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "ap_return_28", "role": "default" }} , 
 	{ "name": "ap_return_29", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "ap_return_29", "role": "default" }} , 
 	{ "name": "ap_return_30", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "ap_return_30", "role": "default" }} , 
 	{ "name": "ap_return_31", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "ap_return_31", "role": "default" }} , 
 	{ "name": "ap_return_32", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "ap_return_32", "role": "default" }} , 
 	{ "name": "ap_return_33", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "ap_return_33", "role": "default" }} , 
 	{ "name": "ap_return_34", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "ap_return_34", "role": "default" }} , 
 	{ "name": "ap_return_35", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "ap_return_35", "role": "default" }} , 
 	{ "name": "ap_return_36", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "ap_return_36", "role": "default" }} , 
 	{ "name": "ap_return_37", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "ap_return_37", "role": "default" }} , 
 	{ "name": "ap_return_38", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "ap_return_38", "role": "default" }} , 
 	{ "name": "ap_return_39", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "ap_return_39", "role": "default" }} , 
 	{ "name": "ap_return_40", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "ap_return_40", "role": "default" }} , 
 	{ "name": "ap_return_41", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "ap_return_41", "role": "default" }} , 
 	{ "name": "ap_return_42", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "ap_return_42", "role": "default" }} , 
 	{ "name": "ap_return_43", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "ap_return_43", "role": "default" }} , 
 	{ "name": "ap_return_44", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "ap_return_44", "role": "default" }} , 
 	{ "name": "ap_return_45", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "ap_return_45", "role": "default" }} , 
 	{ "name": "ap_return_46", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "ap_return_46", "role": "default" }} , 
 	{ "name": "ap_return_47", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "ap_return_47", "role": "default" }} , 
 	{ "name": "ap_return_48", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "ap_return_48", "role": "default" }} , 
 	{ "name": "ap_return_49", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "ap_return_49", "role": "default" }} , 
 	{ "name": "ap_return_50", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "ap_return_50", "role": "default" }} , 
 	{ "name": "ap_return_51", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "ap_return_51", "role": "default" }} , 
 	{ "name": "ap_return_52", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "ap_return_52", "role": "default" }} , 
 	{ "name": "ap_return_53", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "ap_return_53", "role": "default" }} , 
 	{ "name": "ap_return_54", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "ap_return_54", "role": "default" }} , 
 	{ "name": "ap_return_55", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "ap_return_55", "role": "default" }} , 
 	{ "name": "ap_return_56", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "ap_return_56", "role": "default" }} , 
 	{ "name": "ap_return_57", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "ap_return_57", "role": "default" }} , 
 	{ "name": "ap_return_58", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "ap_return_58", "role": "default" }} , 
 	{ "name": "ap_return_59", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "ap_return_59", "role": "default" }} , 
 	{ "name": "ap_return_60", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "ap_return_60", "role": "default" }} , 
 	{ "name": "ap_return_61", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "ap_return_61", "role": "default" }} , 
 	{ "name": "ap_return_62", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "ap_return_62", "role": "default" }} , 
 	{ "name": "ap_return_63", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "ap_return_63", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "30", "59", "88", "117", "146", "175", "204", "233", "234", "235", "236", "237", "238", "239", "240", "241", "242", "243", "244", "245", "246", "247", "248", "249", "250", "251", "252", "253", "254", "255", "256", "257", "258", "259", "260", "261", "262", "263", "264", "265", "266", "267", "268", "269", "270", "271", "272", "273", "274", "275", "276", "277", "278", "279", "280", "281", "282", "283", "284", "285", "286", "287", "288", "289", "290", "291", "292", "293", "294", "295", "296", "297"],
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
			{"Name" : "p_read", "Type" : "None", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read1", "Type" : "None", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read2", "Type" : "None", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read3", "Type" : "None", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read4", "Type" : "None", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read5", "Type" : "None", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read6", "Type" : "None", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read7", "Type" : "None", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read8", "Type" : "None", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read9", "Type" : "None", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read10", "Type" : "None", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read11", "Type" : "None", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read12", "Type" : "None", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read13", "Type" : "None", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read14", "Type" : "None", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read15", "Type" : "None", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read16", "Type" : "None", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read17", "Type" : "None", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read18", "Type" : "None", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read19", "Type" : "None", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read20", "Type" : "None", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read21", "Type" : "None", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read22", "Type" : "None", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read23", "Type" : "None", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read24", "Type" : "None", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read25", "Type" : "None", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read26", "Type" : "None", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read27", "Type" : "None", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read28", "Type" : "None", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read29", "Type" : "None", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read30", "Type" : "None", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read31", "Type" : "None", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read32", "Type" : "None", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read33", "Type" : "None", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read34", "Type" : "None", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read35", "Type" : "None", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read36", "Type" : "None", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read37", "Type" : "None", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read38", "Type" : "None", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read39", "Type" : "None", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read40", "Type" : "None", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read41", "Type" : "None", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read42", "Type" : "None", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read43", "Type" : "None", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read44", "Type" : "None", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read45", "Type" : "None", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read46", "Type" : "None", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read47", "Type" : "None", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read48", "Type" : "None", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read49", "Type" : "None", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read50", "Type" : "None", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read51", "Type" : "None", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read52", "Type" : "None", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read53", "Type" : "None", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read54", "Type" : "None", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read55", "Type" : "None", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read56", "Type" : "None", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read57", "Type" : "None", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read58", "Type" : "None", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read59", "Type" : "None", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read60", "Type" : "None", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read61", "Type" : "None", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read62", "Type" : "None", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read63", "Type" : "None", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "1"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_dct_1d_fu_526", "Parent" : "0", "Child" : ["2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29"],
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
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dct_1d_fu_526.mul_mul_16s_14ns_29_4_0_U71", "Parent" : "1"},
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dct_1d_fu_526.mul_mul_16s_15s_29_4_0_U72", "Parent" : "1"},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dct_1d_fu_526.mul_mul_16s_14ns_29_4_0_U73", "Parent" : "1"},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dct_1d_fu_526.mul_mul_16s_15s_29_4_0_U74", "Parent" : "1"},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dct_1d_fu_526.ama_submuladd_16s_16s_12ns_29s_29_4_0_U75", "Parent" : "1"},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dct_1d_fu_526.mul_mul_17s_13ns_29_4_0_U76", "Parent" : "1"},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dct_1d_fu_526.mac_muladd_18s_14ns_13ns_29_4_0_U77", "Parent" : "1"},
	{"ID" : "9", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dct_1d_fu_526.mul_mul_16s_14ns_29_4_0_U78", "Parent" : "1"},
	{"ID" : "10", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dct_1d_fu_526.ama_submuladd_16s_16s_13ns_29s_29_4_0_U79", "Parent" : "1"},
	{"ID" : "11", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dct_1d_fu_526.mac_muladd_16s_15s_29s_29_4_0_U80", "Parent" : "1"},
	{"ID" : "12", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dct_1d_fu_526.mul_mul_17s_12ns_29_4_0_U81", "Parent" : "1"},
	{"ID" : "13", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dct_1d_fu_526.mac_muladd_18s_13ns_13ns_29_4_0_U82", "Parent" : "1"},
	{"ID" : "14", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dct_1d_fu_526.mac_muladd_16s_14ns_29s_29_4_0_U83", "Parent" : "1"},
	{"ID" : "15", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dct_1d_fu_526.mul_mul_16s_15s_29_4_0_U84", "Parent" : "1"},
	{"ID" : "16", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dct_1d_fu_526.mac_muladd_16s_14ns_29ns_29_4_0_U85", "Parent" : "1"},
	{"ID" : "17", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dct_1d_fu_526.mac_muladd_16s_15s_29s_29_4_0_U86", "Parent" : "1"},
	{"ID" : "18", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dct_1d_fu_526.mac_muladd_16s_15s_13ns_29_4_0_U87", "Parent" : "1"},
	{"ID" : "19", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dct_1d_fu_526.ama_addmuladd_18s_16s_13ns_29ns_29_4_0_U88", "Parent" : "1"},
	{"ID" : "20", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dct_1d_fu_526.mac_muladd_16s_14ns_29ns_29_4_0_U89", "Parent" : "1"},
	{"ID" : "21", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dct_1d_fu_526.mac_muladd_16s_15s_13ns_29_4_0_U90", "Parent" : "1"},
	{"ID" : "22", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dct_1d_fu_526.mac_muladd_17s_12ns_29s_29_4_0_U91", "Parent" : "1"},
	{"ID" : "23", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dct_1d_fu_526.mac_muladd_16s_15s_29ns_29_4_0_U92", "Parent" : "1"},
	{"ID" : "24", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dct_1d_fu_526.mac_muladd_16s_14ns_29s_29_4_0_U93", "Parent" : "1"},
	{"ID" : "25", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dct_1d_fu_526.mac_muladd_17s_13ns_13ns_29_4_0_U94", "Parent" : "1"},
	{"ID" : "26", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dct_1d_fu_526.ama_submuladd_18s_16s_14ns_29ns_29_4_0_U95", "Parent" : "1"},
	{"ID" : "27", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dct_1d_fu_526.mac_muladd_16s_14ns_29ns_29_4_0_U96", "Parent" : "1"},
	{"ID" : "28", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dct_1d_fu_526.mac_muladd_17s_13ns_29s_29_4_0_U97", "Parent" : "1"},
	{"ID" : "29", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dct_1d_fu_526.mac_muladd_17s_12ns_13ns_29_4_0_U98", "Parent" : "1"},
	{"ID" : "30", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_dct_1d_fu_546", "Parent" : "0", "Child" : ["31", "32", "33", "34", "35", "36", "37", "38", "39", "40", "41", "42", "43", "44", "45", "46", "47", "48", "49", "50", "51", "52", "53", "54", "55", "56", "57", "58"],
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
	{"ID" : "31", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dct_1d_fu_546.mul_mul_16s_14ns_29_4_0_U71", "Parent" : "30"},
	{"ID" : "32", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dct_1d_fu_546.mul_mul_16s_15s_29_4_0_U72", "Parent" : "30"},
	{"ID" : "33", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dct_1d_fu_546.mul_mul_16s_14ns_29_4_0_U73", "Parent" : "30"},
	{"ID" : "34", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dct_1d_fu_546.mul_mul_16s_15s_29_4_0_U74", "Parent" : "30"},
	{"ID" : "35", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dct_1d_fu_546.ama_submuladd_16s_16s_12ns_29s_29_4_0_U75", "Parent" : "30"},
	{"ID" : "36", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dct_1d_fu_546.mul_mul_17s_13ns_29_4_0_U76", "Parent" : "30"},
	{"ID" : "37", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dct_1d_fu_546.mac_muladd_18s_14ns_13ns_29_4_0_U77", "Parent" : "30"},
	{"ID" : "38", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dct_1d_fu_546.mul_mul_16s_14ns_29_4_0_U78", "Parent" : "30"},
	{"ID" : "39", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dct_1d_fu_546.ama_submuladd_16s_16s_13ns_29s_29_4_0_U79", "Parent" : "30"},
	{"ID" : "40", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dct_1d_fu_546.mac_muladd_16s_15s_29s_29_4_0_U80", "Parent" : "30"},
	{"ID" : "41", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dct_1d_fu_546.mul_mul_17s_12ns_29_4_0_U81", "Parent" : "30"},
	{"ID" : "42", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dct_1d_fu_546.mac_muladd_18s_13ns_13ns_29_4_0_U82", "Parent" : "30"},
	{"ID" : "43", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dct_1d_fu_546.mac_muladd_16s_14ns_29s_29_4_0_U83", "Parent" : "30"},
	{"ID" : "44", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dct_1d_fu_546.mul_mul_16s_15s_29_4_0_U84", "Parent" : "30"},
	{"ID" : "45", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dct_1d_fu_546.mac_muladd_16s_14ns_29ns_29_4_0_U85", "Parent" : "30"},
	{"ID" : "46", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dct_1d_fu_546.mac_muladd_16s_15s_29s_29_4_0_U86", "Parent" : "30"},
	{"ID" : "47", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dct_1d_fu_546.mac_muladd_16s_15s_13ns_29_4_0_U87", "Parent" : "30"},
	{"ID" : "48", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dct_1d_fu_546.ama_addmuladd_18s_16s_13ns_29ns_29_4_0_U88", "Parent" : "30"},
	{"ID" : "49", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dct_1d_fu_546.mac_muladd_16s_14ns_29ns_29_4_0_U89", "Parent" : "30"},
	{"ID" : "50", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dct_1d_fu_546.mac_muladd_16s_15s_13ns_29_4_0_U90", "Parent" : "30"},
	{"ID" : "51", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dct_1d_fu_546.mac_muladd_17s_12ns_29s_29_4_0_U91", "Parent" : "30"},
	{"ID" : "52", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dct_1d_fu_546.mac_muladd_16s_15s_29ns_29_4_0_U92", "Parent" : "30"},
	{"ID" : "53", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dct_1d_fu_546.mac_muladd_16s_14ns_29s_29_4_0_U93", "Parent" : "30"},
	{"ID" : "54", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dct_1d_fu_546.mac_muladd_17s_13ns_13ns_29_4_0_U94", "Parent" : "30"},
	{"ID" : "55", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dct_1d_fu_546.ama_submuladd_18s_16s_14ns_29ns_29_4_0_U95", "Parent" : "30"},
	{"ID" : "56", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dct_1d_fu_546.mac_muladd_16s_14ns_29ns_29_4_0_U96", "Parent" : "30"},
	{"ID" : "57", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dct_1d_fu_546.mac_muladd_17s_13ns_29s_29_4_0_U97", "Parent" : "30"},
	{"ID" : "58", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dct_1d_fu_546.mac_muladd_17s_12ns_13ns_29_4_0_U98", "Parent" : "30"},
	{"ID" : "59", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_dct_1d_fu_566", "Parent" : "0", "Child" : ["60", "61", "62", "63", "64", "65", "66", "67", "68", "69", "70", "71", "72", "73", "74", "75", "76", "77", "78", "79", "80", "81", "82", "83", "84", "85", "86", "87"],
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
	{"ID" : "60", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dct_1d_fu_566.mul_mul_16s_14ns_29_4_0_U71", "Parent" : "59"},
	{"ID" : "61", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dct_1d_fu_566.mul_mul_16s_15s_29_4_0_U72", "Parent" : "59"},
	{"ID" : "62", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dct_1d_fu_566.mul_mul_16s_14ns_29_4_0_U73", "Parent" : "59"},
	{"ID" : "63", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dct_1d_fu_566.mul_mul_16s_15s_29_4_0_U74", "Parent" : "59"},
	{"ID" : "64", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dct_1d_fu_566.ama_submuladd_16s_16s_12ns_29s_29_4_0_U75", "Parent" : "59"},
	{"ID" : "65", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dct_1d_fu_566.mul_mul_17s_13ns_29_4_0_U76", "Parent" : "59"},
	{"ID" : "66", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dct_1d_fu_566.mac_muladd_18s_14ns_13ns_29_4_0_U77", "Parent" : "59"},
	{"ID" : "67", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dct_1d_fu_566.mul_mul_16s_14ns_29_4_0_U78", "Parent" : "59"},
	{"ID" : "68", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dct_1d_fu_566.ama_submuladd_16s_16s_13ns_29s_29_4_0_U79", "Parent" : "59"},
	{"ID" : "69", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dct_1d_fu_566.mac_muladd_16s_15s_29s_29_4_0_U80", "Parent" : "59"},
	{"ID" : "70", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dct_1d_fu_566.mul_mul_17s_12ns_29_4_0_U81", "Parent" : "59"},
	{"ID" : "71", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dct_1d_fu_566.mac_muladd_18s_13ns_13ns_29_4_0_U82", "Parent" : "59"},
	{"ID" : "72", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dct_1d_fu_566.mac_muladd_16s_14ns_29s_29_4_0_U83", "Parent" : "59"},
	{"ID" : "73", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dct_1d_fu_566.mul_mul_16s_15s_29_4_0_U84", "Parent" : "59"},
	{"ID" : "74", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dct_1d_fu_566.mac_muladd_16s_14ns_29ns_29_4_0_U85", "Parent" : "59"},
	{"ID" : "75", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dct_1d_fu_566.mac_muladd_16s_15s_29s_29_4_0_U86", "Parent" : "59"},
	{"ID" : "76", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dct_1d_fu_566.mac_muladd_16s_15s_13ns_29_4_0_U87", "Parent" : "59"},
	{"ID" : "77", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dct_1d_fu_566.ama_addmuladd_18s_16s_13ns_29ns_29_4_0_U88", "Parent" : "59"},
	{"ID" : "78", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dct_1d_fu_566.mac_muladd_16s_14ns_29ns_29_4_0_U89", "Parent" : "59"},
	{"ID" : "79", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dct_1d_fu_566.mac_muladd_16s_15s_13ns_29_4_0_U90", "Parent" : "59"},
	{"ID" : "80", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dct_1d_fu_566.mac_muladd_17s_12ns_29s_29_4_0_U91", "Parent" : "59"},
	{"ID" : "81", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dct_1d_fu_566.mac_muladd_16s_15s_29ns_29_4_0_U92", "Parent" : "59"},
	{"ID" : "82", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dct_1d_fu_566.mac_muladd_16s_14ns_29s_29_4_0_U93", "Parent" : "59"},
	{"ID" : "83", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dct_1d_fu_566.mac_muladd_17s_13ns_13ns_29_4_0_U94", "Parent" : "59"},
	{"ID" : "84", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dct_1d_fu_566.ama_submuladd_18s_16s_14ns_29ns_29_4_0_U95", "Parent" : "59"},
	{"ID" : "85", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dct_1d_fu_566.mac_muladd_16s_14ns_29ns_29_4_0_U96", "Parent" : "59"},
	{"ID" : "86", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dct_1d_fu_566.mac_muladd_17s_13ns_29s_29_4_0_U97", "Parent" : "59"},
	{"ID" : "87", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dct_1d_fu_566.mac_muladd_17s_12ns_13ns_29_4_0_U98", "Parent" : "59"},
	{"ID" : "88", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_dct_1d_fu_586", "Parent" : "0", "Child" : ["89", "90", "91", "92", "93", "94", "95", "96", "97", "98", "99", "100", "101", "102", "103", "104", "105", "106", "107", "108", "109", "110", "111", "112", "113", "114", "115", "116"],
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
	{"ID" : "89", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dct_1d_fu_586.mul_mul_16s_14ns_29_4_0_U71", "Parent" : "88"},
	{"ID" : "90", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dct_1d_fu_586.mul_mul_16s_15s_29_4_0_U72", "Parent" : "88"},
	{"ID" : "91", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dct_1d_fu_586.mul_mul_16s_14ns_29_4_0_U73", "Parent" : "88"},
	{"ID" : "92", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dct_1d_fu_586.mul_mul_16s_15s_29_4_0_U74", "Parent" : "88"},
	{"ID" : "93", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dct_1d_fu_586.ama_submuladd_16s_16s_12ns_29s_29_4_0_U75", "Parent" : "88"},
	{"ID" : "94", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dct_1d_fu_586.mul_mul_17s_13ns_29_4_0_U76", "Parent" : "88"},
	{"ID" : "95", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dct_1d_fu_586.mac_muladd_18s_14ns_13ns_29_4_0_U77", "Parent" : "88"},
	{"ID" : "96", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dct_1d_fu_586.mul_mul_16s_14ns_29_4_0_U78", "Parent" : "88"},
	{"ID" : "97", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dct_1d_fu_586.ama_submuladd_16s_16s_13ns_29s_29_4_0_U79", "Parent" : "88"},
	{"ID" : "98", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dct_1d_fu_586.mac_muladd_16s_15s_29s_29_4_0_U80", "Parent" : "88"},
	{"ID" : "99", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dct_1d_fu_586.mul_mul_17s_12ns_29_4_0_U81", "Parent" : "88"},
	{"ID" : "100", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dct_1d_fu_586.mac_muladd_18s_13ns_13ns_29_4_0_U82", "Parent" : "88"},
	{"ID" : "101", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dct_1d_fu_586.mac_muladd_16s_14ns_29s_29_4_0_U83", "Parent" : "88"},
	{"ID" : "102", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dct_1d_fu_586.mul_mul_16s_15s_29_4_0_U84", "Parent" : "88"},
	{"ID" : "103", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dct_1d_fu_586.mac_muladd_16s_14ns_29ns_29_4_0_U85", "Parent" : "88"},
	{"ID" : "104", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dct_1d_fu_586.mac_muladd_16s_15s_29s_29_4_0_U86", "Parent" : "88"},
	{"ID" : "105", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dct_1d_fu_586.mac_muladd_16s_15s_13ns_29_4_0_U87", "Parent" : "88"},
	{"ID" : "106", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dct_1d_fu_586.ama_addmuladd_18s_16s_13ns_29ns_29_4_0_U88", "Parent" : "88"},
	{"ID" : "107", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dct_1d_fu_586.mac_muladd_16s_14ns_29ns_29_4_0_U89", "Parent" : "88"},
	{"ID" : "108", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dct_1d_fu_586.mac_muladd_16s_15s_13ns_29_4_0_U90", "Parent" : "88"},
	{"ID" : "109", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dct_1d_fu_586.mac_muladd_17s_12ns_29s_29_4_0_U91", "Parent" : "88"},
	{"ID" : "110", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dct_1d_fu_586.mac_muladd_16s_15s_29ns_29_4_0_U92", "Parent" : "88"},
	{"ID" : "111", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dct_1d_fu_586.mac_muladd_16s_14ns_29s_29_4_0_U93", "Parent" : "88"},
	{"ID" : "112", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dct_1d_fu_586.mac_muladd_17s_13ns_13ns_29_4_0_U94", "Parent" : "88"},
	{"ID" : "113", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dct_1d_fu_586.ama_submuladd_18s_16s_14ns_29ns_29_4_0_U95", "Parent" : "88"},
	{"ID" : "114", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dct_1d_fu_586.mac_muladd_16s_14ns_29ns_29_4_0_U96", "Parent" : "88"},
	{"ID" : "115", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dct_1d_fu_586.mac_muladd_17s_13ns_29s_29_4_0_U97", "Parent" : "88"},
	{"ID" : "116", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dct_1d_fu_586.mac_muladd_17s_12ns_13ns_29_4_0_U98", "Parent" : "88"},
	{"ID" : "117", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_dct_1d_fu_606", "Parent" : "0", "Child" : ["118", "119", "120", "121", "122", "123", "124", "125", "126", "127", "128", "129", "130", "131", "132", "133", "134", "135", "136", "137", "138", "139", "140", "141", "142", "143", "144", "145"],
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
	{"ID" : "118", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dct_1d_fu_606.mul_mul_16s_14ns_29_4_0_U71", "Parent" : "117"},
	{"ID" : "119", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dct_1d_fu_606.mul_mul_16s_15s_29_4_0_U72", "Parent" : "117"},
	{"ID" : "120", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dct_1d_fu_606.mul_mul_16s_14ns_29_4_0_U73", "Parent" : "117"},
	{"ID" : "121", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dct_1d_fu_606.mul_mul_16s_15s_29_4_0_U74", "Parent" : "117"},
	{"ID" : "122", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dct_1d_fu_606.ama_submuladd_16s_16s_12ns_29s_29_4_0_U75", "Parent" : "117"},
	{"ID" : "123", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dct_1d_fu_606.mul_mul_17s_13ns_29_4_0_U76", "Parent" : "117"},
	{"ID" : "124", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dct_1d_fu_606.mac_muladd_18s_14ns_13ns_29_4_0_U77", "Parent" : "117"},
	{"ID" : "125", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dct_1d_fu_606.mul_mul_16s_14ns_29_4_0_U78", "Parent" : "117"},
	{"ID" : "126", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dct_1d_fu_606.ama_submuladd_16s_16s_13ns_29s_29_4_0_U79", "Parent" : "117"},
	{"ID" : "127", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dct_1d_fu_606.mac_muladd_16s_15s_29s_29_4_0_U80", "Parent" : "117"},
	{"ID" : "128", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dct_1d_fu_606.mul_mul_17s_12ns_29_4_0_U81", "Parent" : "117"},
	{"ID" : "129", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dct_1d_fu_606.mac_muladd_18s_13ns_13ns_29_4_0_U82", "Parent" : "117"},
	{"ID" : "130", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dct_1d_fu_606.mac_muladd_16s_14ns_29s_29_4_0_U83", "Parent" : "117"},
	{"ID" : "131", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dct_1d_fu_606.mul_mul_16s_15s_29_4_0_U84", "Parent" : "117"},
	{"ID" : "132", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dct_1d_fu_606.mac_muladd_16s_14ns_29ns_29_4_0_U85", "Parent" : "117"},
	{"ID" : "133", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dct_1d_fu_606.mac_muladd_16s_15s_29s_29_4_0_U86", "Parent" : "117"},
	{"ID" : "134", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dct_1d_fu_606.mac_muladd_16s_15s_13ns_29_4_0_U87", "Parent" : "117"},
	{"ID" : "135", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dct_1d_fu_606.ama_addmuladd_18s_16s_13ns_29ns_29_4_0_U88", "Parent" : "117"},
	{"ID" : "136", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dct_1d_fu_606.mac_muladd_16s_14ns_29ns_29_4_0_U89", "Parent" : "117"},
	{"ID" : "137", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dct_1d_fu_606.mac_muladd_16s_15s_13ns_29_4_0_U90", "Parent" : "117"},
	{"ID" : "138", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dct_1d_fu_606.mac_muladd_17s_12ns_29s_29_4_0_U91", "Parent" : "117"},
	{"ID" : "139", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dct_1d_fu_606.mac_muladd_16s_15s_29ns_29_4_0_U92", "Parent" : "117"},
	{"ID" : "140", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dct_1d_fu_606.mac_muladd_16s_14ns_29s_29_4_0_U93", "Parent" : "117"},
	{"ID" : "141", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dct_1d_fu_606.mac_muladd_17s_13ns_13ns_29_4_0_U94", "Parent" : "117"},
	{"ID" : "142", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dct_1d_fu_606.ama_submuladd_18s_16s_14ns_29ns_29_4_0_U95", "Parent" : "117"},
	{"ID" : "143", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dct_1d_fu_606.mac_muladd_16s_14ns_29ns_29_4_0_U96", "Parent" : "117"},
	{"ID" : "144", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dct_1d_fu_606.mac_muladd_17s_13ns_29s_29_4_0_U97", "Parent" : "117"},
	{"ID" : "145", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dct_1d_fu_606.mac_muladd_17s_12ns_13ns_29_4_0_U98", "Parent" : "117"},
	{"ID" : "146", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_dct_1d_fu_626", "Parent" : "0", "Child" : ["147", "148", "149", "150", "151", "152", "153", "154", "155", "156", "157", "158", "159", "160", "161", "162", "163", "164", "165", "166", "167", "168", "169", "170", "171", "172", "173", "174"],
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
	{"ID" : "147", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dct_1d_fu_626.mul_mul_16s_14ns_29_4_0_U71", "Parent" : "146"},
	{"ID" : "148", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dct_1d_fu_626.mul_mul_16s_15s_29_4_0_U72", "Parent" : "146"},
	{"ID" : "149", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dct_1d_fu_626.mul_mul_16s_14ns_29_4_0_U73", "Parent" : "146"},
	{"ID" : "150", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dct_1d_fu_626.mul_mul_16s_15s_29_4_0_U74", "Parent" : "146"},
	{"ID" : "151", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dct_1d_fu_626.ama_submuladd_16s_16s_12ns_29s_29_4_0_U75", "Parent" : "146"},
	{"ID" : "152", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dct_1d_fu_626.mul_mul_17s_13ns_29_4_0_U76", "Parent" : "146"},
	{"ID" : "153", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dct_1d_fu_626.mac_muladd_18s_14ns_13ns_29_4_0_U77", "Parent" : "146"},
	{"ID" : "154", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dct_1d_fu_626.mul_mul_16s_14ns_29_4_0_U78", "Parent" : "146"},
	{"ID" : "155", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dct_1d_fu_626.ama_submuladd_16s_16s_13ns_29s_29_4_0_U79", "Parent" : "146"},
	{"ID" : "156", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dct_1d_fu_626.mac_muladd_16s_15s_29s_29_4_0_U80", "Parent" : "146"},
	{"ID" : "157", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dct_1d_fu_626.mul_mul_17s_12ns_29_4_0_U81", "Parent" : "146"},
	{"ID" : "158", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dct_1d_fu_626.mac_muladd_18s_13ns_13ns_29_4_0_U82", "Parent" : "146"},
	{"ID" : "159", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dct_1d_fu_626.mac_muladd_16s_14ns_29s_29_4_0_U83", "Parent" : "146"},
	{"ID" : "160", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dct_1d_fu_626.mul_mul_16s_15s_29_4_0_U84", "Parent" : "146"},
	{"ID" : "161", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dct_1d_fu_626.mac_muladd_16s_14ns_29ns_29_4_0_U85", "Parent" : "146"},
	{"ID" : "162", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dct_1d_fu_626.mac_muladd_16s_15s_29s_29_4_0_U86", "Parent" : "146"},
	{"ID" : "163", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dct_1d_fu_626.mac_muladd_16s_15s_13ns_29_4_0_U87", "Parent" : "146"},
	{"ID" : "164", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dct_1d_fu_626.ama_addmuladd_18s_16s_13ns_29ns_29_4_0_U88", "Parent" : "146"},
	{"ID" : "165", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dct_1d_fu_626.mac_muladd_16s_14ns_29ns_29_4_0_U89", "Parent" : "146"},
	{"ID" : "166", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dct_1d_fu_626.mac_muladd_16s_15s_13ns_29_4_0_U90", "Parent" : "146"},
	{"ID" : "167", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dct_1d_fu_626.mac_muladd_17s_12ns_29s_29_4_0_U91", "Parent" : "146"},
	{"ID" : "168", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dct_1d_fu_626.mac_muladd_16s_15s_29ns_29_4_0_U92", "Parent" : "146"},
	{"ID" : "169", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dct_1d_fu_626.mac_muladd_16s_14ns_29s_29_4_0_U93", "Parent" : "146"},
	{"ID" : "170", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dct_1d_fu_626.mac_muladd_17s_13ns_13ns_29_4_0_U94", "Parent" : "146"},
	{"ID" : "171", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dct_1d_fu_626.ama_submuladd_18s_16s_14ns_29ns_29_4_0_U95", "Parent" : "146"},
	{"ID" : "172", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dct_1d_fu_626.mac_muladd_16s_14ns_29ns_29_4_0_U96", "Parent" : "146"},
	{"ID" : "173", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dct_1d_fu_626.mac_muladd_17s_13ns_29s_29_4_0_U97", "Parent" : "146"},
	{"ID" : "174", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dct_1d_fu_626.mac_muladd_17s_12ns_13ns_29_4_0_U98", "Parent" : "146"},
	{"ID" : "175", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_dct_1d_fu_646", "Parent" : "0", "Child" : ["176", "177", "178", "179", "180", "181", "182", "183", "184", "185", "186", "187", "188", "189", "190", "191", "192", "193", "194", "195", "196", "197", "198", "199", "200", "201", "202", "203"],
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
	{"ID" : "176", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dct_1d_fu_646.mul_mul_16s_14ns_29_4_0_U71", "Parent" : "175"},
	{"ID" : "177", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dct_1d_fu_646.mul_mul_16s_15s_29_4_0_U72", "Parent" : "175"},
	{"ID" : "178", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dct_1d_fu_646.mul_mul_16s_14ns_29_4_0_U73", "Parent" : "175"},
	{"ID" : "179", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dct_1d_fu_646.mul_mul_16s_15s_29_4_0_U74", "Parent" : "175"},
	{"ID" : "180", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dct_1d_fu_646.ama_submuladd_16s_16s_12ns_29s_29_4_0_U75", "Parent" : "175"},
	{"ID" : "181", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dct_1d_fu_646.mul_mul_17s_13ns_29_4_0_U76", "Parent" : "175"},
	{"ID" : "182", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dct_1d_fu_646.mac_muladd_18s_14ns_13ns_29_4_0_U77", "Parent" : "175"},
	{"ID" : "183", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dct_1d_fu_646.mul_mul_16s_14ns_29_4_0_U78", "Parent" : "175"},
	{"ID" : "184", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dct_1d_fu_646.ama_submuladd_16s_16s_13ns_29s_29_4_0_U79", "Parent" : "175"},
	{"ID" : "185", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dct_1d_fu_646.mac_muladd_16s_15s_29s_29_4_0_U80", "Parent" : "175"},
	{"ID" : "186", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dct_1d_fu_646.mul_mul_17s_12ns_29_4_0_U81", "Parent" : "175"},
	{"ID" : "187", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dct_1d_fu_646.mac_muladd_18s_13ns_13ns_29_4_0_U82", "Parent" : "175"},
	{"ID" : "188", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dct_1d_fu_646.mac_muladd_16s_14ns_29s_29_4_0_U83", "Parent" : "175"},
	{"ID" : "189", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dct_1d_fu_646.mul_mul_16s_15s_29_4_0_U84", "Parent" : "175"},
	{"ID" : "190", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dct_1d_fu_646.mac_muladd_16s_14ns_29ns_29_4_0_U85", "Parent" : "175"},
	{"ID" : "191", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dct_1d_fu_646.mac_muladd_16s_15s_29s_29_4_0_U86", "Parent" : "175"},
	{"ID" : "192", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dct_1d_fu_646.mac_muladd_16s_15s_13ns_29_4_0_U87", "Parent" : "175"},
	{"ID" : "193", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dct_1d_fu_646.ama_addmuladd_18s_16s_13ns_29ns_29_4_0_U88", "Parent" : "175"},
	{"ID" : "194", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dct_1d_fu_646.mac_muladd_16s_14ns_29ns_29_4_0_U89", "Parent" : "175"},
	{"ID" : "195", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dct_1d_fu_646.mac_muladd_16s_15s_13ns_29_4_0_U90", "Parent" : "175"},
	{"ID" : "196", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dct_1d_fu_646.mac_muladd_17s_12ns_29s_29_4_0_U91", "Parent" : "175"},
	{"ID" : "197", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dct_1d_fu_646.mac_muladd_16s_15s_29ns_29_4_0_U92", "Parent" : "175"},
	{"ID" : "198", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dct_1d_fu_646.mac_muladd_16s_14ns_29s_29_4_0_U93", "Parent" : "175"},
	{"ID" : "199", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dct_1d_fu_646.mac_muladd_17s_13ns_13ns_29_4_0_U94", "Parent" : "175"},
	{"ID" : "200", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dct_1d_fu_646.ama_submuladd_18s_16s_14ns_29ns_29_4_0_U95", "Parent" : "175"},
	{"ID" : "201", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dct_1d_fu_646.mac_muladd_16s_14ns_29ns_29_4_0_U96", "Parent" : "175"},
	{"ID" : "202", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dct_1d_fu_646.mac_muladd_17s_13ns_29s_29_4_0_U97", "Parent" : "175"},
	{"ID" : "203", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dct_1d_fu_646.mac_muladd_17s_12ns_13ns_29_4_0_U98", "Parent" : "175"},
	{"ID" : "204", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_dct_1d_fu_666", "Parent" : "0", "Child" : ["205", "206", "207", "208", "209", "210", "211", "212", "213", "214", "215", "216", "217", "218", "219", "220", "221", "222", "223", "224", "225", "226", "227", "228", "229", "230", "231", "232"],
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
	{"ID" : "205", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dct_1d_fu_666.mul_mul_16s_14ns_29_4_0_U71", "Parent" : "204"},
	{"ID" : "206", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dct_1d_fu_666.mul_mul_16s_15s_29_4_0_U72", "Parent" : "204"},
	{"ID" : "207", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dct_1d_fu_666.mul_mul_16s_14ns_29_4_0_U73", "Parent" : "204"},
	{"ID" : "208", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dct_1d_fu_666.mul_mul_16s_15s_29_4_0_U74", "Parent" : "204"},
	{"ID" : "209", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dct_1d_fu_666.ama_submuladd_16s_16s_12ns_29s_29_4_0_U75", "Parent" : "204"},
	{"ID" : "210", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dct_1d_fu_666.mul_mul_17s_13ns_29_4_0_U76", "Parent" : "204"},
	{"ID" : "211", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dct_1d_fu_666.mac_muladd_18s_14ns_13ns_29_4_0_U77", "Parent" : "204"},
	{"ID" : "212", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dct_1d_fu_666.mul_mul_16s_14ns_29_4_0_U78", "Parent" : "204"},
	{"ID" : "213", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dct_1d_fu_666.ama_submuladd_16s_16s_13ns_29s_29_4_0_U79", "Parent" : "204"},
	{"ID" : "214", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dct_1d_fu_666.mac_muladd_16s_15s_29s_29_4_0_U80", "Parent" : "204"},
	{"ID" : "215", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dct_1d_fu_666.mul_mul_17s_12ns_29_4_0_U81", "Parent" : "204"},
	{"ID" : "216", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dct_1d_fu_666.mac_muladd_18s_13ns_13ns_29_4_0_U82", "Parent" : "204"},
	{"ID" : "217", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dct_1d_fu_666.mac_muladd_16s_14ns_29s_29_4_0_U83", "Parent" : "204"},
	{"ID" : "218", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dct_1d_fu_666.mul_mul_16s_15s_29_4_0_U84", "Parent" : "204"},
	{"ID" : "219", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dct_1d_fu_666.mac_muladd_16s_14ns_29ns_29_4_0_U85", "Parent" : "204"},
	{"ID" : "220", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dct_1d_fu_666.mac_muladd_16s_15s_29s_29_4_0_U86", "Parent" : "204"},
	{"ID" : "221", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dct_1d_fu_666.mac_muladd_16s_15s_13ns_29_4_0_U87", "Parent" : "204"},
	{"ID" : "222", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dct_1d_fu_666.ama_addmuladd_18s_16s_13ns_29ns_29_4_0_U88", "Parent" : "204"},
	{"ID" : "223", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dct_1d_fu_666.mac_muladd_16s_14ns_29ns_29_4_0_U89", "Parent" : "204"},
	{"ID" : "224", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dct_1d_fu_666.mac_muladd_16s_15s_13ns_29_4_0_U90", "Parent" : "204"},
	{"ID" : "225", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dct_1d_fu_666.mac_muladd_17s_12ns_29s_29_4_0_U91", "Parent" : "204"},
	{"ID" : "226", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dct_1d_fu_666.mac_muladd_16s_15s_29ns_29_4_0_U92", "Parent" : "204"},
	{"ID" : "227", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dct_1d_fu_666.mac_muladd_16s_14ns_29s_29_4_0_U93", "Parent" : "204"},
	{"ID" : "228", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dct_1d_fu_666.mac_muladd_17s_13ns_13ns_29_4_0_U94", "Parent" : "204"},
	{"ID" : "229", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dct_1d_fu_666.ama_submuladd_18s_16s_14ns_29ns_29_4_0_U95", "Parent" : "204"},
	{"ID" : "230", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dct_1d_fu_666.mac_muladd_16s_14ns_29ns_29_4_0_U96", "Parent" : "204"},
	{"ID" : "231", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dct_1d_fu_666.mac_muladd_17s_13ns_29s_29_4_0_U97", "Parent" : "204"},
	{"ID" : "232", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dct_1d_fu_666.mac_muladd_17s_12ns_13ns_29_4_0_U98", "Parent" : "204"},
	{"ID" : "233", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.frp_pipeline_valid_U", "Parent" : "0"},
	{"ID" : "234", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.pf_ap_return_0_U", "Parent" : "0"},
	{"ID" : "235", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.pf_ap_return_1_U", "Parent" : "0"},
	{"ID" : "236", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.pf_ap_return_2_U", "Parent" : "0"},
	{"ID" : "237", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.pf_ap_return_3_U", "Parent" : "0"},
	{"ID" : "238", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.pf_ap_return_4_U", "Parent" : "0"},
	{"ID" : "239", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.pf_ap_return_5_U", "Parent" : "0"},
	{"ID" : "240", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.pf_ap_return_6_U", "Parent" : "0"},
	{"ID" : "241", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.pf_ap_return_7_U", "Parent" : "0"},
	{"ID" : "242", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.pf_ap_return_8_U", "Parent" : "0"},
	{"ID" : "243", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.pf_ap_return_9_U", "Parent" : "0"},
	{"ID" : "244", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.pf_ap_return_10_U", "Parent" : "0"},
	{"ID" : "245", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.pf_ap_return_11_U", "Parent" : "0"},
	{"ID" : "246", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.pf_ap_return_12_U", "Parent" : "0"},
	{"ID" : "247", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.pf_ap_return_13_U", "Parent" : "0"},
	{"ID" : "248", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.pf_ap_return_14_U", "Parent" : "0"},
	{"ID" : "249", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.pf_ap_return_15_U", "Parent" : "0"},
	{"ID" : "250", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.pf_ap_return_16_U", "Parent" : "0"},
	{"ID" : "251", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.pf_ap_return_17_U", "Parent" : "0"},
	{"ID" : "252", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.pf_ap_return_18_U", "Parent" : "0"},
	{"ID" : "253", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.pf_ap_return_19_U", "Parent" : "0"},
	{"ID" : "254", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.pf_ap_return_20_U", "Parent" : "0"},
	{"ID" : "255", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.pf_ap_return_21_U", "Parent" : "0"},
	{"ID" : "256", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.pf_ap_return_22_U", "Parent" : "0"},
	{"ID" : "257", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.pf_ap_return_23_U", "Parent" : "0"},
	{"ID" : "258", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.pf_ap_return_24_U", "Parent" : "0"},
	{"ID" : "259", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.pf_ap_return_25_U", "Parent" : "0"},
	{"ID" : "260", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.pf_ap_return_26_U", "Parent" : "0"},
	{"ID" : "261", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.pf_ap_return_27_U", "Parent" : "0"},
	{"ID" : "262", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.pf_ap_return_28_U", "Parent" : "0"},
	{"ID" : "263", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.pf_ap_return_29_U", "Parent" : "0"},
	{"ID" : "264", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.pf_ap_return_30_U", "Parent" : "0"},
	{"ID" : "265", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.pf_ap_return_31_U", "Parent" : "0"},
	{"ID" : "266", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.pf_ap_return_32_U", "Parent" : "0"},
	{"ID" : "267", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.pf_ap_return_33_U", "Parent" : "0"},
	{"ID" : "268", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.pf_ap_return_34_U", "Parent" : "0"},
	{"ID" : "269", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.pf_ap_return_35_U", "Parent" : "0"},
	{"ID" : "270", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.pf_ap_return_36_U", "Parent" : "0"},
	{"ID" : "271", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.pf_ap_return_37_U", "Parent" : "0"},
	{"ID" : "272", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.pf_ap_return_38_U", "Parent" : "0"},
	{"ID" : "273", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.pf_ap_return_39_U", "Parent" : "0"},
	{"ID" : "274", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.pf_ap_return_40_U", "Parent" : "0"},
	{"ID" : "275", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.pf_ap_return_41_U", "Parent" : "0"},
	{"ID" : "276", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.pf_ap_return_42_U", "Parent" : "0"},
	{"ID" : "277", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.pf_ap_return_43_U", "Parent" : "0"},
	{"ID" : "278", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.pf_ap_return_44_U", "Parent" : "0"},
	{"ID" : "279", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.pf_ap_return_45_U", "Parent" : "0"},
	{"ID" : "280", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.pf_ap_return_46_U", "Parent" : "0"},
	{"ID" : "281", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.pf_ap_return_47_U", "Parent" : "0"},
	{"ID" : "282", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.pf_ap_return_48_U", "Parent" : "0"},
	{"ID" : "283", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.pf_ap_return_49_U", "Parent" : "0"},
	{"ID" : "284", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.pf_ap_return_50_U", "Parent" : "0"},
	{"ID" : "285", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.pf_ap_return_51_U", "Parent" : "0"},
	{"ID" : "286", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.pf_ap_return_52_U", "Parent" : "0"},
	{"ID" : "287", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.pf_ap_return_53_U", "Parent" : "0"},
	{"ID" : "288", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.pf_ap_return_54_U", "Parent" : "0"},
	{"ID" : "289", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.pf_ap_return_55_U", "Parent" : "0"},
	{"ID" : "290", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.pf_ap_return_56_U", "Parent" : "0"},
	{"ID" : "291", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.pf_ap_return_57_U", "Parent" : "0"},
	{"ID" : "292", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.pf_ap_return_58_U", "Parent" : "0"},
	{"ID" : "293", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.pf_ap_return_59_U", "Parent" : "0"},
	{"ID" : "294", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.pf_ap_return_60_U", "Parent" : "0"},
	{"ID" : "295", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.pf_ap_return_61_U", "Parent" : "0"},
	{"ID" : "296", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.pf_ap_return_62_U", "Parent" : "0"},
	{"ID" : "297", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.pf_ap_return_63_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
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
		p_read7 {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "13", "Max" : "13"}
	, {"Name" : "Interval", "Min" : "2", "Max" : "2"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	p_read { ap_none {  { p_read in_data 0 16 } } }
	p_read1 { ap_none {  { p_read1 in_data 0 16 } } }
	p_read2 { ap_none {  { p_read2 in_data 0 16 } } }
	p_read3 { ap_none {  { p_read3 in_data 0 16 } } }
	p_read4 { ap_none {  { p_read4 in_data 0 16 } } }
	p_read5 { ap_none {  { p_read5 in_data 0 16 } } }
	p_read6 { ap_none {  { p_read6 in_data 0 16 } } }
	p_read7 { ap_none {  { p_read7 in_data 0 16 } } }
	p_read8 { ap_none {  { p_read8 in_data 0 16 } } }
	p_read9 { ap_none {  { p_read9 in_data 0 16 } } }
	p_read10 { ap_none {  { p_read10 in_data 0 16 } } }
	p_read11 { ap_none {  { p_read11 in_data 0 16 } } }
	p_read12 { ap_none {  { p_read12 in_data 0 16 } } }
	p_read13 { ap_none {  { p_read13 in_data 0 16 } } }
	p_read14 { ap_none {  { p_read14 in_data 0 16 } } }
	p_read15 { ap_none {  { p_read15 in_data 0 16 } } }
	p_read16 { ap_none {  { p_read16 in_data 0 16 } } }
	p_read17 { ap_none {  { p_read17 in_data 0 16 } } }
	p_read18 { ap_none {  { p_read18 in_data 0 16 } } }
	p_read19 { ap_none {  { p_read19 in_data 0 16 } } }
	p_read20 { ap_none {  { p_read20 in_data 0 16 } } }
	p_read21 { ap_none {  { p_read21 in_data 0 16 } } }
	p_read22 { ap_none {  { p_read22 in_data 0 16 } } }
	p_read23 { ap_none {  { p_read23 in_data 0 16 } } }
	p_read24 { ap_none {  { p_read24 in_data 0 16 } } }
	p_read25 { ap_none {  { p_read25 in_data 0 16 } } }
	p_read26 { ap_none {  { p_read26 in_data 0 16 } } }
	p_read27 { ap_none {  { p_read27 in_data 0 16 } } }
	p_read28 { ap_none {  { p_read28 in_data 0 16 } } }
	p_read29 { ap_none {  { p_read29 in_data 0 16 } } }
	p_read30 { ap_none {  { p_read30 in_data 0 16 } } }
	p_read31 { ap_none {  { p_read31 in_data 0 16 } } }
	p_read32 { ap_none {  { p_read32 in_data 0 16 } } }
	p_read33 { ap_none {  { p_read33 in_data 0 16 } } }
	p_read34 { ap_none {  { p_read34 in_data 0 16 } } }
	p_read35 { ap_none {  { p_read35 in_data 0 16 } } }
	p_read36 { ap_none {  { p_read36 in_data 0 16 } } }
	p_read37 { ap_none {  { p_read37 in_data 0 16 } } }
	p_read38 { ap_none {  { p_read38 in_data 0 16 } } }
	p_read39 { ap_none {  { p_read39 in_data 0 16 } } }
	p_read40 { ap_none {  { p_read40 in_data 0 16 } } }
	p_read41 { ap_none {  { p_read41 in_data 0 16 } } }
	p_read42 { ap_none {  { p_read42 in_data 0 16 } } }
	p_read43 { ap_none {  { p_read43 in_data 0 16 } } }
	p_read44 { ap_none {  { p_read44 in_data 0 16 } } }
	p_read45 { ap_none {  { p_read45 in_data 0 16 } } }
	p_read46 { ap_none {  { p_read46 in_data 0 16 } } }
	p_read47 { ap_none {  { p_read47 in_data 0 16 } } }
	p_read48 { ap_none {  { p_read48 in_data 0 16 } } }
	p_read49 { ap_none {  { p_read49 in_data 0 16 } } }
	p_read50 { ap_none {  { p_read50 in_data 0 16 } } }
	p_read51 { ap_none {  { p_read51 in_data 0 16 } } }
	p_read52 { ap_none {  { p_read52 in_data 0 16 } } }
	p_read53 { ap_none {  { p_read53 in_data 0 16 } } }
	p_read54 { ap_none {  { p_read54 in_data 0 16 } } }
	p_read55 { ap_none {  { p_read55 in_data 0 16 } } }
	p_read56 { ap_none {  { p_read56 in_data 0 16 } } }
	p_read57 { ap_none {  { p_read57 in_data 0 16 } } }
	p_read58 { ap_none {  { p_read58 in_data 0 16 } } }
	p_read59 { ap_none {  { p_read59 in_data 0 16 } } }
	p_read60 { ap_none {  { p_read60 in_data 0 16 } } }
	p_read61 { ap_none {  { p_read61 in_data 0 16 } } }
	p_read62 { ap_none {  { p_read62 in_data 0 16 } } }
	p_read63 { ap_none {  { p_read63 in_data 0 16 } } }
}
