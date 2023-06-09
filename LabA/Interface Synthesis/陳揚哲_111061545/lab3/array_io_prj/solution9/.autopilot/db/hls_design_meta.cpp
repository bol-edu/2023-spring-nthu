#include "hls_design_meta.h"
const Port_Property HLS_Design_Meta::port_props[]={
	Port_Property("ap_clk", 1, hls_in, -1, "", "", 1),
	Port_Property("ap_rst", 1, hls_in, -1, "", "", 1),
	Port_Property("ap_start", 1, hls_in, -1, "", "", 1),
	Port_Property("ap_done", 1, hls_out, -1, "", "", 1),
	Port_Property("ap_idle", 1, hls_out, -1, "", "", 1),
	Port_Property("ap_ready", 1, hls_out, -1, "", "", 1),
	Port_Property("d_o_0_din", 16, hls_out, 0, "ap_fifo", "fifo_port_we", 16),
	Port_Property("d_o_0_full_n", 1, hls_in, 0, "ap_fifo", "fifo_status", 16),
	Port_Property("d_o_0_write", 1, hls_out, 0, "ap_fifo", "fifo_data", 16),
	Port_Property("d_o_1_din", 16, hls_out, 1, "ap_fifo", "fifo_port_we", 16),
	Port_Property("d_o_1_full_n", 1, hls_in, 1, "ap_fifo", "fifo_status", 16),
	Port_Property("d_o_1_write", 1, hls_out, 1, "ap_fifo", "fifo_data", 16),
	Port_Property("d_i_0_address0", 3, hls_out, 2, "ap_memory", "mem_address", 1),
	Port_Property("d_i_0_ce0", 1, hls_out, 2, "ap_memory", "mem_ce", 1),
	Port_Property("d_i_0_q0", 16, hls_in, 2, "ap_memory", "mem_dout", 1),
	Port_Property("d_i_0_address1", 3, hls_out, 2, "ap_memory", "MemPortADDR2", 1),
	Port_Property("d_i_0_ce1", 1, hls_out, 2, "ap_memory", "MemPortCE2", 1),
	Port_Property("d_i_0_q1", 16, hls_in, 2, "ap_memory", "in_data", 1),
	Port_Property("d_i_1_address0", 3, hls_out, 3, "ap_memory", "mem_address", 1),
	Port_Property("d_i_1_ce0", 1, hls_out, 3, "ap_memory", "mem_ce", 1),
	Port_Property("d_i_1_q0", 16, hls_in, 3, "ap_memory", "mem_dout", 1),
	Port_Property("d_i_1_address1", 3, hls_out, 3, "ap_memory", "MemPortADDR2", 1),
	Port_Property("d_i_1_ce1", 1, hls_out, 3, "ap_memory", "MemPortCE2", 1),
	Port_Property("d_i_1_q1", 16, hls_in, 3, "ap_memory", "in_data", 1),
	Port_Property("d_i_2_address0", 3, hls_out, 4, "ap_memory", "mem_address", 1),
	Port_Property("d_i_2_ce0", 1, hls_out, 4, "ap_memory", "mem_ce", 1),
	Port_Property("d_i_2_q0", 16, hls_in, 4, "ap_memory", "mem_dout", 1),
	Port_Property("d_i_2_address1", 3, hls_out, 4, "ap_memory", "MemPortADDR2", 1),
	Port_Property("d_i_2_ce1", 1, hls_out, 4, "ap_memory", "MemPortCE2", 1),
	Port_Property("d_i_2_q1", 16, hls_in, 4, "ap_memory", "in_data", 1),
	Port_Property("d_i_3_address0", 3, hls_out, 5, "ap_memory", "mem_address", 1),
	Port_Property("d_i_3_ce0", 1, hls_out, 5, "ap_memory", "mem_ce", 1),
	Port_Property("d_i_3_q0", 16, hls_in, 5, "ap_memory", "mem_dout", 1),
	Port_Property("d_i_3_address1", 3, hls_out, 5, "ap_memory", "MemPortADDR2", 1),
	Port_Property("d_i_3_ce1", 1, hls_out, 5, "ap_memory", "MemPortCE2", 1),
	Port_Property("d_i_3_q1", 16, hls_in, 5, "ap_memory", "in_data", 1),
};
const char* HLS_Design_Meta::dut_name = "array_io";
