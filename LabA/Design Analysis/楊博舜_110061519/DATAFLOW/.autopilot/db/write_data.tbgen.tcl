set moduleName write_data
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
set C_modelName {write_data}
set C_modelType { void 0 }
set C_modelArgList {
	{ buf_read int 16 regular  }
	{ buf_read_255 int 16 regular  }
	{ buf_read_256 int 16 regular  }
	{ buf_read_257 int 16 regular  }
	{ buf_read_258 int 16 regular  }
	{ buf_read_259 int 16 regular  }
	{ buf_read_260 int 16 regular  }
	{ buf_read_261 int 16 regular  }
	{ buf_read_262 int 16 regular  }
	{ buf_read_263 int 16 regular  }
	{ buf_read_264 int 16 regular  }
	{ buf_read_265 int 16 regular  }
	{ buf_read_266 int 16 regular  }
	{ buf_read_267 int 16 regular  }
	{ buf_read_268 int 16 regular  }
	{ buf_read_269 int 16 regular  }
	{ buf_read_270 int 16 regular  }
	{ buf_read_271 int 16 regular  }
	{ buf_read_272 int 16 regular  }
	{ buf_read_273 int 16 regular  }
	{ buf_read_274 int 16 regular  }
	{ buf_read_275 int 16 regular  }
	{ buf_read_276 int 16 regular  }
	{ buf_read_277 int 16 regular  }
	{ buf_read_278 int 16 regular  }
	{ buf_read_279 int 16 regular  }
	{ buf_read_280 int 16 regular  }
	{ buf_read_281 int 16 regular  }
	{ buf_read_282 int 16 regular  }
	{ buf_read_283 int 16 regular  }
	{ buf_read_284 int 16 regular  }
	{ buf_read_285 int 16 regular  }
	{ buf_read_286 int 16 regular  }
	{ buf_read_287 int 16 regular  }
	{ buf_read_288 int 16 regular  }
	{ buf_read_289 int 16 regular  }
	{ buf_read_290 int 16 regular  }
	{ buf_read_291 int 16 regular  }
	{ buf_read_292 int 16 regular  }
	{ buf_read_293 int 16 regular  }
	{ buf_read_294 int 16 regular  }
	{ buf_read_295 int 16 regular  }
	{ buf_read_296 int 16 regular  }
	{ buf_read_297 int 16 regular  }
	{ buf_read_298 int 16 regular  }
	{ buf_read_299 int 16 regular  }
	{ buf_read_300 int 16 regular  }
	{ buf_read_301 int 16 regular  }
	{ buf_read_302 int 16 regular  }
	{ buf_read_303 int 16 regular  }
	{ buf_read_304 int 16 regular  }
	{ buf_read_305 int 16 regular  }
	{ buf_read_306 int 16 regular  }
	{ buf_read_307 int 16 regular  }
	{ buf_read_308 int 16 regular  }
	{ buf_read_309 int 16 regular  }
	{ buf_read_310 int 16 regular  }
	{ buf_read_311 int 16 regular  }
	{ buf_read_312 int 16 regular  }
	{ buf_read_313 int 16 regular  }
	{ buf_read_314 int 16 regular  }
	{ buf_read_315 int 16 regular  }
	{ buf_read_316 int 16 regular  }
	{ buf_read_317 int 16 regular  }
	{ gmem int 512 regular {axi_master 1}  }
	{ output_r int 64 regular {fifo 0}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "buf_read", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "buf_read_255", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "buf_read_256", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "buf_read_257", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "buf_read_258", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "buf_read_259", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "buf_read_260", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "buf_read_261", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "buf_read_262", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "buf_read_263", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "buf_read_264", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "buf_read_265", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "buf_read_266", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "buf_read_267", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "buf_read_268", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "buf_read_269", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "buf_read_270", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "buf_read_271", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "buf_read_272", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "buf_read_273", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "buf_read_274", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "buf_read_275", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "buf_read_276", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "buf_read_277", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "buf_read_278", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "buf_read_279", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "buf_read_280", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "buf_read_281", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "buf_read_282", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "buf_read_283", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "buf_read_284", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "buf_read_285", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "buf_read_286", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "buf_read_287", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "buf_read_288", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "buf_read_289", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "buf_read_290", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "buf_read_291", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "buf_read_292", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "buf_read_293", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "buf_read_294", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "buf_read_295", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "buf_read_296", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "buf_read_297", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "buf_read_298", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "buf_read_299", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "buf_read_300", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "buf_read_301", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "buf_read_302", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "buf_read_303", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "buf_read_304", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "buf_read_305", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "buf_read_306", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "buf_read_307", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "buf_read_308", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "buf_read_309", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "buf_read_310", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "buf_read_311", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "buf_read_312", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "buf_read_313", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "buf_read_314", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "buf_read_315", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "buf_read_316", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "buf_read_317", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "gmem", "interface" : "axi_master", "bitwidth" : 512, "direction" : "WRITEONLY", "bitSlice":[ {"cElement": [{"cName": "input_r","offset": { "type": "dynamic","port_name": "input_r","bundle": "control"},"direction": "READONLY"},{"cName": "output_r","offset": { "type": "dynamic","port_name": "output_r","bundle": "control"},"direction": "WRITEONLY"}]}]} , 
 	{ "Name" : "output_r", "interface" : "fifo", "bitwidth" : 64, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 122
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ buf_read sc_in sc_lv 16 signal 0 } 
	{ buf_read_255 sc_in sc_lv 16 signal 1 } 
	{ buf_read_256 sc_in sc_lv 16 signal 2 } 
	{ buf_read_257 sc_in sc_lv 16 signal 3 } 
	{ buf_read_258 sc_in sc_lv 16 signal 4 } 
	{ buf_read_259 sc_in sc_lv 16 signal 5 } 
	{ buf_read_260 sc_in sc_lv 16 signal 6 } 
	{ buf_read_261 sc_in sc_lv 16 signal 7 } 
	{ buf_read_262 sc_in sc_lv 16 signal 8 } 
	{ buf_read_263 sc_in sc_lv 16 signal 9 } 
	{ buf_read_264 sc_in sc_lv 16 signal 10 } 
	{ buf_read_265 sc_in sc_lv 16 signal 11 } 
	{ buf_read_266 sc_in sc_lv 16 signal 12 } 
	{ buf_read_267 sc_in sc_lv 16 signal 13 } 
	{ buf_read_268 sc_in sc_lv 16 signal 14 } 
	{ buf_read_269 sc_in sc_lv 16 signal 15 } 
	{ buf_read_270 sc_in sc_lv 16 signal 16 } 
	{ buf_read_271 sc_in sc_lv 16 signal 17 } 
	{ buf_read_272 sc_in sc_lv 16 signal 18 } 
	{ buf_read_273 sc_in sc_lv 16 signal 19 } 
	{ buf_read_274 sc_in sc_lv 16 signal 20 } 
	{ buf_read_275 sc_in sc_lv 16 signal 21 } 
	{ buf_read_276 sc_in sc_lv 16 signal 22 } 
	{ buf_read_277 sc_in sc_lv 16 signal 23 } 
	{ buf_read_278 sc_in sc_lv 16 signal 24 } 
	{ buf_read_279 sc_in sc_lv 16 signal 25 } 
	{ buf_read_280 sc_in sc_lv 16 signal 26 } 
	{ buf_read_281 sc_in sc_lv 16 signal 27 } 
	{ buf_read_282 sc_in sc_lv 16 signal 28 } 
	{ buf_read_283 sc_in sc_lv 16 signal 29 } 
	{ buf_read_284 sc_in sc_lv 16 signal 30 } 
	{ buf_read_285 sc_in sc_lv 16 signal 31 } 
	{ buf_read_286 sc_in sc_lv 16 signal 32 } 
	{ buf_read_287 sc_in sc_lv 16 signal 33 } 
	{ buf_read_288 sc_in sc_lv 16 signal 34 } 
	{ buf_read_289 sc_in sc_lv 16 signal 35 } 
	{ buf_read_290 sc_in sc_lv 16 signal 36 } 
	{ buf_read_291 sc_in sc_lv 16 signal 37 } 
	{ buf_read_292 sc_in sc_lv 16 signal 38 } 
	{ buf_read_293 sc_in sc_lv 16 signal 39 } 
	{ buf_read_294 sc_in sc_lv 16 signal 40 } 
	{ buf_read_295 sc_in sc_lv 16 signal 41 } 
	{ buf_read_296 sc_in sc_lv 16 signal 42 } 
	{ buf_read_297 sc_in sc_lv 16 signal 43 } 
	{ buf_read_298 sc_in sc_lv 16 signal 44 } 
	{ buf_read_299 sc_in sc_lv 16 signal 45 } 
	{ buf_read_300 sc_in sc_lv 16 signal 46 } 
	{ buf_read_301 sc_in sc_lv 16 signal 47 } 
	{ buf_read_302 sc_in sc_lv 16 signal 48 } 
	{ buf_read_303 sc_in sc_lv 16 signal 49 } 
	{ buf_read_304 sc_in sc_lv 16 signal 50 } 
	{ buf_read_305 sc_in sc_lv 16 signal 51 } 
	{ buf_read_306 sc_in sc_lv 16 signal 52 } 
	{ buf_read_307 sc_in sc_lv 16 signal 53 } 
	{ buf_read_308 sc_in sc_lv 16 signal 54 } 
	{ buf_read_309 sc_in sc_lv 16 signal 55 } 
	{ buf_read_310 sc_in sc_lv 16 signal 56 } 
	{ buf_read_311 sc_in sc_lv 16 signal 57 } 
	{ buf_read_312 sc_in sc_lv 16 signal 58 } 
	{ buf_read_313 sc_in sc_lv 16 signal 59 } 
	{ buf_read_314 sc_in sc_lv 16 signal 60 } 
	{ buf_read_315 sc_in sc_lv 16 signal 61 } 
	{ buf_read_316 sc_in sc_lv 16 signal 62 } 
	{ buf_read_317 sc_in sc_lv 16 signal 63 } 
	{ m_axi_gmem_AWVALID sc_out sc_logic 1 signal 64 } 
	{ m_axi_gmem_AWREADY sc_in sc_logic 1 signal 64 } 
	{ m_axi_gmem_AWADDR sc_out sc_lv 64 signal 64 } 
	{ m_axi_gmem_AWID sc_out sc_lv 1 signal 64 } 
	{ m_axi_gmem_AWLEN sc_out sc_lv 32 signal 64 } 
	{ m_axi_gmem_AWSIZE sc_out sc_lv 3 signal 64 } 
	{ m_axi_gmem_AWBURST sc_out sc_lv 2 signal 64 } 
	{ m_axi_gmem_AWLOCK sc_out sc_lv 2 signal 64 } 
	{ m_axi_gmem_AWCACHE sc_out sc_lv 4 signal 64 } 
	{ m_axi_gmem_AWPROT sc_out sc_lv 3 signal 64 } 
	{ m_axi_gmem_AWQOS sc_out sc_lv 4 signal 64 } 
	{ m_axi_gmem_AWREGION sc_out sc_lv 4 signal 64 } 
	{ m_axi_gmem_AWUSER sc_out sc_lv 1 signal 64 } 
	{ m_axi_gmem_WVALID sc_out sc_logic 1 signal 64 } 
	{ m_axi_gmem_WREADY sc_in sc_logic 1 signal 64 } 
	{ m_axi_gmem_WDATA sc_out sc_lv 512 signal 64 } 
	{ m_axi_gmem_WSTRB sc_out sc_lv 64 signal 64 } 
	{ m_axi_gmem_WLAST sc_out sc_logic 1 signal 64 } 
	{ m_axi_gmem_WID sc_out sc_lv 1 signal 64 } 
	{ m_axi_gmem_WUSER sc_out sc_lv 1 signal 64 } 
	{ m_axi_gmem_ARVALID sc_out sc_logic 1 signal 64 } 
	{ m_axi_gmem_ARREADY sc_in sc_logic 1 signal 64 } 
	{ m_axi_gmem_ARADDR sc_out sc_lv 64 signal 64 } 
	{ m_axi_gmem_ARID sc_out sc_lv 1 signal 64 } 
	{ m_axi_gmem_ARLEN sc_out sc_lv 32 signal 64 } 
	{ m_axi_gmem_ARSIZE sc_out sc_lv 3 signal 64 } 
	{ m_axi_gmem_ARBURST sc_out sc_lv 2 signal 64 } 
	{ m_axi_gmem_ARLOCK sc_out sc_lv 2 signal 64 } 
	{ m_axi_gmem_ARCACHE sc_out sc_lv 4 signal 64 } 
	{ m_axi_gmem_ARPROT sc_out sc_lv 3 signal 64 } 
	{ m_axi_gmem_ARQOS sc_out sc_lv 4 signal 64 } 
	{ m_axi_gmem_ARREGION sc_out sc_lv 4 signal 64 } 
	{ m_axi_gmem_ARUSER sc_out sc_lv 1 signal 64 } 
	{ m_axi_gmem_RVALID sc_in sc_logic 1 signal 64 } 
	{ m_axi_gmem_RREADY sc_out sc_logic 1 signal 64 } 
	{ m_axi_gmem_RDATA sc_in sc_lv 512 signal 64 } 
	{ m_axi_gmem_RLAST sc_in sc_logic 1 signal 64 } 
	{ m_axi_gmem_RID sc_in sc_lv 1 signal 64 } 
	{ m_axi_gmem_RFIFONUM sc_in sc_lv 9 signal 64 } 
	{ m_axi_gmem_RUSER sc_in sc_lv 1 signal 64 } 
	{ m_axi_gmem_RRESP sc_in sc_lv 2 signal 64 } 
	{ m_axi_gmem_BVALID sc_in sc_logic 1 signal 64 } 
	{ m_axi_gmem_BREADY sc_out sc_logic 1 signal 64 } 
	{ m_axi_gmem_BRESP sc_in sc_lv 2 signal 64 } 
	{ m_axi_gmem_BID sc_in sc_lv 1 signal 64 } 
	{ m_axi_gmem_BUSER sc_in sc_lv 1 signal 64 } 
	{ output_r_dout sc_in sc_lv 64 signal 65 } 
	{ output_r_num_data_valid sc_in sc_lv 5 signal 65 } 
	{ output_r_fifo_cap sc_in sc_lv 5 signal 65 } 
	{ output_r_empty_n sc_in sc_logic 1 signal 65 } 
	{ output_r_read sc_out sc_logic 1 signal 65 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "buf_read", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "buf_read", "role": "default" }} , 
 	{ "name": "buf_read_255", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "buf_read_255", "role": "default" }} , 
 	{ "name": "buf_read_256", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "buf_read_256", "role": "default" }} , 
 	{ "name": "buf_read_257", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "buf_read_257", "role": "default" }} , 
 	{ "name": "buf_read_258", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "buf_read_258", "role": "default" }} , 
 	{ "name": "buf_read_259", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "buf_read_259", "role": "default" }} , 
 	{ "name": "buf_read_260", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "buf_read_260", "role": "default" }} , 
 	{ "name": "buf_read_261", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "buf_read_261", "role": "default" }} , 
 	{ "name": "buf_read_262", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "buf_read_262", "role": "default" }} , 
 	{ "name": "buf_read_263", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "buf_read_263", "role": "default" }} , 
 	{ "name": "buf_read_264", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "buf_read_264", "role": "default" }} , 
 	{ "name": "buf_read_265", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "buf_read_265", "role": "default" }} , 
 	{ "name": "buf_read_266", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "buf_read_266", "role": "default" }} , 
 	{ "name": "buf_read_267", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "buf_read_267", "role": "default" }} , 
 	{ "name": "buf_read_268", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "buf_read_268", "role": "default" }} , 
 	{ "name": "buf_read_269", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "buf_read_269", "role": "default" }} , 
 	{ "name": "buf_read_270", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "buf_read_270", "role": "default" }} , 
 	{ "name": "buf_read_271", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "buf_read_271", "role": "default" }} , 
 	{ "name": "buf_read_272", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "buf_read_272", "role": "default" }} , 
 	{ "name": "buf_read_273", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "buf_read_273", "role": "default" }} , 
 	{ "name": "buf_read_274", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "buf_read_274", "role": "default" }} , 
 	{ "name": "buf_read_275", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "buf_read_275", "role": "default" }} , 
 	{ "name": "buf_read_276", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "buf_read_276", "role": "default" }} , 
 	{ "name": "buf_read_277", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "buf_read_277", "role": "default" }} , 
 	{ "name": "buf_read_278", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "buf_read_278", "role": "default" }} , 
 	{ "name": "buf_read_279", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "buf_read_279", "role": "default" }} , 
 	{ "name": "buf_read_280", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "buf_read_280", "role": "default" }} , 
 	{ "name": "buf_read_281", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "buf_read_281", "role": "default" }} , 
 	{ "name": "buf_read_282", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "buf_read_282", "role": "default" }} , 
 	{ "name": "buf_read_283", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "buf_read_283", "role": "default" }} , 
 	{ "name": "buf_read_284", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "buf_read_284", "role": "default" }} , 
 	{ "name": "buf_read_285", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "buf_read_285", "role": "default" }} , 
 	{ "name": "buf_read_286", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "buf_read_286", "role": "default" }} , 
 	{ "name": "buf_read_287", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "buf_read_287", "role": "default" }} , 
 	{ "name": "buf_read_288", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "buf_read_288", "role": "default" }} , 
 	{ "name": "buf_read_289", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "buf_read_289", "role": "default" }} , 
 	{ "name": "buf_read_290", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "buf_read_290", "role": "default" }} , 
 	{ "name": "buf_read_291", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "buf_read_291", "role": "default" }} , 
 	{ "name": "buf_read_292", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "buf_read_292", "role": "default" }} , 
 	{ "name": "buf_read_293", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "buf_read_293", "role": "default" }} , 
 	{ "name": "buf_read_294", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "buf_read_294", "role": "default" }} , 
 	{ "name": "buf_read_295", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "buf_read_295", "role": "default" }} , 
 	{ "name": "buf_read_296", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "buf_read_296", "role": "default" }} , 
 	{ "name": "buf_read_297", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "buf_read_297", "role": "default" }} , 
 	{ "name": "buf_read_298", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "buf_read_298", "role": "default" }} , 
 	{ "name": "buf_read_299", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "buf_read_299", "role": "default" }} , 
 	{ "name": "buf_read_300", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "buf_read_300", "role": "default" }} , 
 	{ "name": "buf_read_301", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "buf_read_301", "role": "default" }} , 
 	{ "name": "buf_read_302", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "buf_read_302", "role": "default" }} , 
 	{ "name": "buf_read_303", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "buf_read_303", "role": "default" }} , 
 	{ "name": "buf_read_304", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "buf_read_304", "role": "default" }} , 
 	{ "name": "buf_read_305", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "buf_read_305", "role": "default" }} , 
 	{ "name": "buf_read_306", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "buf_read_306", "role": "default" }} , 
 	{ "name": "buf_read_307", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "buf_read_307", "role": "default" }} , 
 	{ "name": "buf_read_308", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "buf_read_308", "role": "default" }} , 
 	{ "name": "buf_read_309", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "buf_read_309", "role": "default" }} , 
 	{ "name": "buf_read_310", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "buf_read_310", "role": "default" }} , 
 	{ "name": "buf_read_311", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "buf_read_311", "role": "default" }} , 
 	{ "name": "buf_read_312", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "buf_read_312", "role": "default" }} , 
 	{ "name": "buf_read_313", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "buf_read_313", "role": "default" }} , 
 	{ "name": "buf_read_314", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "buf_read_314", "role": "default" }} , 
 	{ "name": "buf_read_315", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "buf_read_315", "role": "default" }} , 
 	{ "name": "buf_read_316", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "buf_read_316", "role": "default" }} , 
 	{ "name": "buf_read_317", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "buf_read_317", "role": "default" }} , 
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
 	{ "name": "output_r_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "output_r", "role": "dout" }} , 
 	{ "name": "output_r_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "output_r", "role": "num_data_valid" }} , 
 	{ "name": "output_r_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "output_r", "role": "fifo_cap" }} , 
 	{ "name": "output_r_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_r", "role": "empty_n" }} , 
 	{ "name": "output_r_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_r", "role": "read" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
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
			{"Name" : "buf_read", "Type" : "None", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "buf_read_255", "Type" : "None", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "buf_read_256", "Type" : "None", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "buf_read_257", "Type" : "None", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "buf_read_258", "Type" : "None", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "buf_read_259", "Type" : "None", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "buf_read_260", "Type" : "None", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "buf_read_261", "Type" : "None", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "buf_read_262", "Type" : "None", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "buf_read_263", "Type" : "None", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "buf_read_264", "Type" : "None", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "buf_read_265", "Type" : "None", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "buf_read_266", "Type" : "None", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "buf_read_267", "Type" : "None", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "buf_read_268", "Type" : "None", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "buf_read_269", "Type" : "None", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "buf_read_270", "Type" : "None", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "buf_read_271", "Type" : "None", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "buf_read_272", "Type" : "None", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "buf_read_273", "Type" : "None", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "buf_read_274", "Type" : "None", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "buf_read_275", "Type" : "None", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "buf_read_276", "Type" : "None", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "buf_read_277", "Type" : "None", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "buf_read_278", "Type" : "None", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "buf_read_279", "Type" : "None", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "buf_read_280", "Type" : "None", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "buf_read_281", "Type" : "None", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "buf_read_282", "Type" : "None", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "buf_read_283", "Type" : "None", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "buf_read_284", "Type" : "None", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "buf_read_285", "Type" : "None", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "buf_read_286", "Type" : "None", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "buf_read_287", "Type" : "None", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "buf_read_288", "Type" : "None", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "buf_read_289", "Type" : "None", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "buf_read_290", "Type" : "None", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "buf_read_291", "Type" : "None", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "buf_read_292", "Type" : "None", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "buf_read_293", "Type" : "None", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "buf_read_294", "Type" : "None", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "buf_read_295", "Type" : "None", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "buf_read_296", "Type" : "None", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "buf_read_297", "Type" : "None", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "buf_read_298", "Type" : "None", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "buf_read_299", "Type" : "None", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "buf_read_300", "Type" : "None", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "buf_read_301", "Type" : "None", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "buf_read_302", "Type" : "None", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "buf_read_303", "Type" : "None", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "buf_read_304", "Type" : "None", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "buf_read_305", "Type" : "None", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "buf_read_306", "Type" : "None", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "buf_read_307", "Type" : "None", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "buf_read_308", "Type" : "None", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "buf_read_309", "Type" : "None", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "buf_read_310", "Type" : "None", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "buf_read_311", "Type" : "None", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "buf_read_312", "Type" : "None", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "buf_read_313", "Type" : "None", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "buf_read_314", "Type" : "None", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "buf_read_315", "Type" : "None", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "buf_read_316", "Type" : "None", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "buf_read_317", "Type" : "None", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "gmem", "Type" : "MAXI", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "gmem_blk_n_AW", "Type" : "RtlSignal"},
					{"Name" : "gmem_blk_n_B", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_write_data_Pipeline_WR_Loop_Row_fu_572", "Port" : "gmem", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "output_r", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "9", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "output_r_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_write_data_Pipeline_WR_Loop_Row_fu_572", "Parent" : "0", "Child" : ["2", "3", "4", "5", "6", "7", "8", "9", "10"],
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
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_write_data_Pipeline_WR_Loop_Row_fu_572.mux_84_16_1_1_U191", "Parent" : "1"},
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_write_data_Pipeline_WR_Loop_Row_fu_572.mux_84_16_1_1_U192", "Parent" : "1"},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_write_data_Pipeline_WR_Loop_Row_fu_572.mux_84_16_1_1_U193", "Parent" : "1"},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_write_data_Pipeline_WR_Loop_Row_fu_572.mux_84_16_1_1_U194", "Parent" : "1"},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_write_data_Pipeline_WR_Loop_Row_fu_572.mux_84_16_1_1_U195", "Parent" : "1"},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_write_data_Pipeline_WR_Loop_Row_fu_572.mux_84_16_1_1_U196", "Parent" : "1"},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_write_data_Pipeline_WR_Loop_Row_fu_572.mux_84_16_1_1_U197", "Parent" : "1"},
	{"ID" : "9", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_write_data_Pipeline_WR_Loop_Row_fu_572.mux_84_16_1_1_U198", "Parent" : "1"},
	{"ID" : "10", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_write_data_Pipeline_WR_Loop_Row_fu_572.flow_control_loop_pipe_sequential_init_U", "Parent" : "1"}]}


set ArgLastReadFirstWriteLatency {
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
	{"Name" : "Latency", "Min" : "81", "Max" : "81"}
	, {"Name" : "Interval", "Min" : "81", "Max" : "81"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	buf_read { ap_none {  { buf_read in_data 0 16 } } }
	buf_read_255 { ap_none {  { buf_read_255 in_data 0 16 } } }
	buf_read_256 { ap_none {  { buf_read_256 in_data 0 16 } } }
	buf_read_257 { ap_none {  { buf_read_257 in_data 0 16 } } }
	buf_read_258 { ap_none {  { buf_read_258 in_data 0 16 } } }
	buf_read_259 { ap_none {  { buf_read_259 in_data 0 16 } } }
	buf_read_260 { ap_none {  { buf_read_260 in_data 0 16 } } }
	buf_read_261 { ap_none {  { buf_read_261 in_data 0 16 } } }
	buf_read_262 { ap_none {  { buf_read_262 in_data 0 16 } } }
	buf_read_263 { ap_none {  { buf_read_263 in_data 0 16 } } }
	buf_read_264 { ap_none {  { buf_read_264 in_data 0 16 } } }
	buf_read_265 { ap_none {  { buf_read_265 in_data 0 16 } } }
	buf_read_266 { ap_none {  { buf_read_266 in_data 0 16 } } }
	buf_read_267 { ap_none {  { buf_read_267 in_data 0 16 } } }
	buf_read_268 { ap_none {  { buf_read_268 in_data 0 16 } } }
	buf_read_269 { ap_none {  { buf_read_269 in_data 0 16 } } }
	buf_read_270 { ap_none {  { buf_read_270 in_data 0 16 } } }
	buf_read_271 { ap_none {  { buf_read_271 in_data 0 16 } } }
	buf_read_272 { ap_none {  { buf_read_272 in_data 0 16 } } }
	buf_read_273 { ap_none {  { buf_read_273 in_data 0 16 } } }
	buf_read_274 { ap_none {  { buf_read_274 in_data 0 16 } } }
	buf_read_275 { ap_none {  { buf_read_275 in_data 0 16 } } }
	buf_read_276 { ap_none {  { buf_read_276 in_data 0 16 } } }
	buf_read_277 { ap_none {  { buf_read_277 in_data 0 16 } } }
	buf_read_278 { ap_none {  { buf_read_278 in_data 0 16 } } }
	buf_read_279 { ap_none {  { buf_read_279 in_data 0 16 } } }
	buf_read_280 { ap_none {  { buf_read_280 in_data 0 16 } } }
	buf_read_281 { ap_none {  { buf_read_281 in_data 0 16 } } }
	buf_read_282 { ap_none {  { buf_read_282 in_data 0 16 } } }
	buf_read_283 { ap_none {  { buf_read_283 in_data 0 16 } } }
	buf_read_284 { ap_none {  { buf_read_284 in_data 0 16 } } }
	buf_read_285 { ap_none {  { buf_read_285 in_data 0 16 } } }
	buf_read_286 { ap_none {  { buf_read_286 in_data 0 16 } } }
	buf_read_287 { ap_none {  { buf_read_287 in_data 0 16 } } }
	buf_read_288 { ap_none {  { buf_read_288 in_data 0 16 } } }
	buf_read_289 { ap_none {  { buf_read_289 in_data 0 16 } } }
	buf_read_290 { ap_none {  { buf_read_290 in_data 0 16 } } }
	buf_read_291 { ap_none {  { buf_read_291 in_data 0 16 } } }
	buf_read_292 { ap_none {  { buf_read_292 in_data 0 16 } } }
	buf_read_293 { ap_none {  { buf_read_293 in_data 0 16 } } }
	buf_read_294 { ap_none {  { buf_read_294 in_data 0 16 } } }
	buf_read_295 { ap_none {  { buf_read_295 in_data 0 16 } } }
	buf_read_296 { ap_none {  { buf_read_296 in_data 0 16 } } }
	buf_read_297 { ap_none {  { buf_read_297 in_data 0 16 } } }
	buf_read_298 { ap_none {  { buf_read_298 in_data 0 16 } } }
	buf_read_299 { ap_none {  { buf_read_299 in_data 0 16 } } }
	buf_read_300 { ap_none {  { buf_read_300 in_data 0 16 } } }
	buf_read_301 { ap_none {  { buf_read_301 in_data 0 16 } } }
	buf_read_302 { ap_none {  { buf_read_302 in_data 0 16 } } }
	buf_read_303 { ap_none {  { buf_read_303 in_data 0 16 } } }
	buf_read_304 { ap_none {  { buf_read_304 in_data 0 16 } } }
	buf_read_305 { ap_none {  { buf_read_305 in_data 0 16 } } }
	buf_read_306 { ap_none {  { buf_read_306 in_data 0 16 } } }
	buf_read_307 { ap_none {  { buf_read_307 in_data 0 16 } } }
	buf_read_308 { ap_none {  { buf_read_308 in_data 0 16 } } }
	buf_read_309 { ap_none {  { buf_read_309 in_data 0 16 } } }
	buf_read_310 { ap_none {  { buf_read_310 in_data 0 16 } } }
	buf_read_311 { ap_none {  { buf_read_311 in_data 0 16 } } }
	buf_read_312 { ap_none {  { buf_read_312 in_data 0 16 } } }
	buf_read_313 { ap_none {  { buf_read_313 in_data 0 16 } } }
	buf_read_314 { ap_none {  { buf_read_314 in_data 0 16 } } }
	buf_read_315 { ap_none {  { buf_read_315 in_data 0 16 } } }
	buf_read_316 { ap_none {  { buf_read_316 in_data 0 16 } } }
	buf_read_317 { ap_none {  { buf_read_317 in_data 0 16 } } }
	 { m_axi {  { m_axi_gmem_AWVALID VALID 1 1 }  { m_axi_gmem_AWREADY READY 0 1 }  { m_axi_gmem_AWADDR ADDR 1 64 }  { m_axi_gmem_AWID ID 1 1 }  { m_axi_gmem_AWLEN SIZE 1 32 }  { m_axi_gmem_AWSIZE BURST 1 3 }  { m_axi_gmem_AWBURST LOCK 1 2 }  { m_axi_gmem_AWLOCK CACHE 1 2 }  { m_axi_gmem_AWCACHE PROT 1 4 }  { m_axi_gmem_AWPROT QOS 1 3 }  { m_axi_gmem_AWQOS REGION 1 4 }  { m_axi_gmem_AWREGION USER 1 4 }  { m_axi_gmem_AWUSER DATA 1 1 }  { m_axi_gmem_WVALID VALID 1 1 }  { m_axi_gmem_WREADY READY 0 1 }  { m_axi_gmem_WDATA FIFONUM 1 512 }  { m_axi_gmem_WSTRB STRB 1 64 }  { m_axi_gmem_WLAST LAST 1 1 }  { m_axi_gmem_WID ID 1 1 }  { m_axi_gmem_WUSER DATA 1 1 }  { m_axi_gmem_ARVALID VALID 1 1 }  { m_axi_gmem_ARREADY READY 0 1 }  { m_axi_gmem_ARADDR ADDR 1 64 }  { m_axi_gmem_ARID ID 1 1 }  { m_axi_gmem_ARLEN SIZE 1 32 }  { m_axi_gmem_ARSIZE BURST 1 3 }  { m_axi_gmem_ARBURST LOCK 1 2 }  { m_axi_gmem_ARLOCK CACHE 1 2 }  { m_axi_gmem_ARCACHE PROT 1 4 }  { m_axi_gmem_ARPROT QOS 1 3 }  { m_axi_gmem_ARQOS REGION 1 4 }  { m_axi_gmem_ARREGION USER 1 4 }  { m_axi_gmem_ARUSER DATA 1 1 }  { m_axi_gmem_RVALID VALID 0 1 }  { m_axi_gmem_RREADY READY 1 1 }  { m_axi_gmem_RDATA FIFONUM 0 512 }  { m_axi_gmem_RLAST LAST 0 1 }  { m_axi_gmem_RID ID 0 1 }  { m_axi_gmem_RFIFONUM LEN 0 9 }  { m_axi_gmem_RUSER DATA 0 1 }  { m_axi_gmem_RRESP RESP 0 2 }  { m_axi_gmem_BVALID VALID 0 1 }  { m_axi_gmem_BREADY READY 1 1 }  { m_axi_gmem_BRESP RESP 0 2 }  { m_axi_gmem_BID ID 0 1 }  { m_axi_gmem_BUSER DATA 0 1 } } }
	output_r { ap_fifo {  { output_r_dout fifo_port_we 0 64 }  { output_r_num_data_valid fifo_status_num_data_valid 0 5 }  { output_r_fifo_cap fifo_update 0 5 }  { output_r_empty_n fifo_status 0 1 }  { output_r_read fifo_data 1 1 } } }
}
