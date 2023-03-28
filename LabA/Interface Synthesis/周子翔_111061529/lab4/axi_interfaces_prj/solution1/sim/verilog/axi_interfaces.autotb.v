// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1 (64-bit)
// Tool Version Limit: 2022.04
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
 `timescale 1ns/1ps


`define AUTOTB_DUT      axi_interfaces
`define AUTOTB_DUT_INST AESL_inst_axi_interfaces
`define AUTOTB_TOP      apatb_axi_interfaces_top
`define AUTOTB_LAT_RESULT_FILE "axi_interfaces.result.lat.rb"
`define AUTOTB_PER_RESULT_TRANS_FILE "axi_interfaces.performance.result.transaction.xml"
`define AUTOTB_TOP_INST AESL_inst_apatb_axi_interfaces_top
`define AUTOTB_MAX_ALLOW_LATENCY  15000000
`define AUTOTB_CLOCK_PERIOD_DIV2 2.00

`define AESL_DEPTH_d_o_0 1
`define AESL_DEPTH_d_o_1 1
`define AESL_DEPTH_d_o_2 1
`define AESL_DEPTH_d_o_3 1
`define AESL_DEPTH_d_o_4 1
`define AESL_DEPTH_d_o_5 1
`define AESL_DEPTH_d_o_6 1
`define AESL_DEPTH_d_o_7 1
`define AESL_DEPTH_d_i_0 1
`define AESL_DEPTH_d_i_1 1
`define AESL_DEPTH_d_i_2 1
`define AESL_DEPTH_d_i_3 1
`define AESL_DEPTH_d_i_4 1
`define AESL_DEPTH_d_i_5 1
`define AESL_DEPTH_d_i_6 1
`define AESL_DEPTH_d_i_7 1
`define AUTOTB_TVIN_d_i_0  "../tv/cdatafile/c.axi_interfaces.autotvin_d_i_0.dat"
`define AUTOTB_TVIN_d_i_1  "../tv/cdatafile/c.axi_interfaces.autotvin_d_i_1.dat"
`define AUTOTB_TVIN_d_i_2  "../tv/cdatafile/c.axi_interfaces.autotvin_d_i_2.dat"
`define AUTOTB_TVIN_d_i_3  "../tv/cdatafile/c.axi_interfaces.autotvin_d_i_3.dat"
`define AUTOTB_TVIN_d_i_4  "../tv/cdatafile/c.axi_interfaces.autotvin_d_i_4.dat"
`define AUTOTB_TVIN_d_i_5  "../tv/cdatafile/c.axi_interfaces.autotvin_d_i_5.dat"
`define AUTOTB_TVIN_d_i_6  "../tv/cdatafile/c.axi_interfaces.autotvin_d_i_6.dat"
`define AUTOTB_TVIN_d_i_7  "../tv/cdatafile/c.axi_interfaces.autotvin_d_i_7.dat"
`define AUTOTB_TVIN_d_i_0_out_wrapc  "../tv/rtldatafile/rtl.axi_interfaces.autotvin_d_i_0.dat"
`define AUTOTB_TVIN_d_i_1_out_wrapc  "../tv/rtldatafile/rtl.axi_interfaces.autotvin_d_i_1.dat"
`define AUTOTB_TVIN_d_i_2_out_wrapc  "../tv/rtldatafile/rtl.axi_interfaces.autotvin_d_i_2.dat"
`define AUTOTB_TVIN_d_i_3_out_wrapc  "../tv/rtldatafile/rtl.axi_interfaces.autotvin_d_i_3.dat"
`define AUTOTB_TVIN_d_i_4_out_wrapc  "../tv/rtldatafile/rtl.axi_interfaces.autotvin_d_i_4.dat"
`define AUTOTB_TVIN_d_i_5_out_wrapc  "../tv/rtldatafile/rtl.axi_interfaces.autotvin_d_i_5.dat"
`define AUTOTB_TVIN_d_i_6_out_wrapc  "../tv/rtldatafile/rtl.axi_interfaces.autotvin_d_i_6.dat"
`define AUTOTB_TVIN_d_i_7_out_wrapc  "../tv/rtldatafile/rtl.axi_interfaces.autotvin_d_i_7.dat"
`define AUTOTB_TVOUT_d_o_0  "../tv/cdatafile/c.axi_interfaces.autotvout_d_o_0.dat"
`define AUTOTB_TVOUT_d_o_1  "../tv/cdatafile/c.axi_interfaces.autotvout_d_o_1.dat"
`define AUTOTB_TVOUT_d_o_2  "../tv/cdatafile/c.axi_interfaces.autotvout_d_o_2.dat"
`define AUTOTB_TVOUT_d_o_3  "../tv/cdatafile/c.axi_interfaces.autotvout_d_o_3.dat"
`define AUTOTB_TVOUT_d_o_4  "../tv/cdatafile/c.axi_interfaces.autotvout_d_o_4.dat"
`define AUTOTB_TVOUT_d_o_5  "../tv/cdatafile/c.axi_interfaces.autotvout_d_o_5.dat"
`define AUTOTB_TVOUT_d_o_6  "../tv/cdatafile/c.axi_interfaces.autotvout_d_o_6.dat"
`define AUTOTB_TVOUT_d_o_7  "../tv/cdatafile/c.axi_interfaces.autotvout_d_o_7.dat"
`define AUTOTB_TVOUT_d_o_0_out_wrapc  "../tv/rtldatafile/rtl.axi_interfaces.autotvout_d_o_0.dat"
`define AUTOTB_TVOUT_d_o_1_out_wrapc  "../tv/rtldatafile/rtl.axi_interfaces.autotvout_d_o_1.dat"
`define AUTOTB_TVOUT_d_o_2_out_wrapc  "../tv/rtldatafile/rtl.axi_interfaces.autotvout_d_o_2.dat"
`define AUTOTB_TVOUT_d_o_3_out_wrapc  "../tv/rtldatafile/rtl.axi_interfaces.autotvout_d_o_3.dat"
`define AUTOTB_TVOUT_d_o_4_out_wrapc  "../tv/rtldatafile/rtl.axi_interfaces.autotvout_d_o_4.dat"
`define AUTOTB_TVOUT_d_o_5_out_wrapc  "../tv/rtldatafile/rtl.axi_interfaces.autotvout_d_o_5.dat"
`define AUTOTB_TVOUT_d_o_6_out_wrapc  "../tv/rtldatafile/rtl.axi_interfaces.autotvout_d_o_6.dat"
`define AUTOTB_TVOUT_d_o_7_out_wrapc  "../tv/rtldatafile/rtl.axi_interfaces.autotvout_d_o_7.dat"
module `AUTOTB_TOP;

parameter AUTOTB_TRANSACTION_NUM = 1;
parameter PROGRESS_TIMEOUT = 10000000;
parameter LATENCY_ESTIMATION = 5;
parameter LENGTH_d_o_0 = 4;
parameter LENGTH_d_o_1 = 4;
parameter LENGTH_d_o_2 = 4;
parameter LENGTH_d_o_3 = 4;
parameter LENGTH_d_o_4 = 4;
parameter LENGTH_d_o_5 = 4;
parameter LENGTH_d_o_6 = 4;
parameter LENGTH_d_o_7 = 4;
parameter LENGTH_d_i_0 = 4;
parameter LENGTH_d_i_1 = 4;
parameter LENGTH_d_i_2 = 4;
parameter LENGTH_d_i_3 = 4;
parameter LENGTH_d_i_4 = 4;
parameter LENGTH_d_i_5 = 4;
parameter LENGTH_d_i_6 = 4;
parameter LENGTH_d_i_7 = 4;

task read_token;
    input integer fp;
    output reg [127 : 0] token;
    integer ret;
    begin
        token = "";
        ret = 0;
        ret = $fscanf(fp,"%s",token);
    end
endtask

reg AESL_clock;
reg rst;
reg dut_rst;
reg start;
reg ce;
reg tb_continue;
wire AESL_start;
wire AESL_reset;
wire AESL_ce;
wire AESL_ready;
wire AESL_idle;
wire AESL_continue;
wire AESL_done;
reg AESL_done_delay = 0;
reg AESL_done_delay2 = 0;
reg AESL_ready_delay = 0;
wire ready;
wire ready_wire;
wire ap_start;
wire ap_done;
wire ap_idle;
wire ap_ready;
wire  d_i_0_TVALID;
wire  d_o_0_TREADY;
wire  d_i_1_TVALID;
wire  d_o_1_TREADY;
wire  d_i_2_TVALID;
wire  d_o_2_TREADY;
wire  d_i_3_TVALID;
wire  d_o_3_TREADY;
wire  d_i_4_TVALID;
wire  d_o_4_TREADY;
wire  d_i_5_TVALID;
wire  d_o_5_TREADY;
wire  d_i_6_TVALID;
wire  d_o_6_TREADY;
wire  d_i_7_TVALID;
wire  d_o_7_TREADY;
wire [15 : 0] d_o_0_TDATA;
wire  d_o_0_TVALID;
wire [15 : 0] d_o_1_TDATA;
wire  d_o_1_TVALID;
wire [15 : 0] d_o_2_TDATA;
wire  d_o_2_TVALID;
wire [15 : 0] d_o_3_TDATA;
wire  d_o_3_TVALID;
wire [15 : 0] d_o_4_TDATA;
wire  d_o_4_TVALID;
wire [15 : 0] d_o_5_TDATA;
wire  d_o_5_TVALID;
wire [15 : 0] d_o_6_TDATA;
wire  d_o_6_TVALID;
wire [15 : 0] d_o_7_TDATA;
wire  d_o_7_TVALID;
wire [15 : 0] d_i_0_TDATA;
wire  d_i_0_TREADY;
wire [15 : 0] d_i_1_TDATA;
wire  d_i_1_TREADY;
wire [15 : 0] d_i_2_TDATA;
wire  d_i_2_TREADY;
wire [15 : 0] d_i_3_TDATA;
wire  d_i_3_TREADY;
wire [15 : 0] d_i_4_TDATA;
wire  d_i_4_TREADY;
wire [15 : 0] d_i_5_TDATA;
wire  d_i_5_TREADY;
wire [15 : 0] d_i_6_TDATA;
wire  d_i_6_TREADY;
wire [15 : 0] d_i_7_TDATA;
wire  d_i_7_TREADY;
integer done_cnt = 0;
integer AESL_ready_cnt = 0;
integer ready_cnt = 0;
reg ready_initial;
reg ready_initial_n;
reg ready_last_n;
reg ready_delay_last_n;
reg done_delay_last_n;
reg interface_done = 0;


wire ap_clk;
wire ap_rst_n;
wire ap_rst_n_n;

`AUTOTB_DUT `AUTOTB_DUT_INST(
    .ap_clk(ap_clk),
    .ap_rst_n(ap_rst_n),
    .ap_start(ap_start),
    .ap_done(ap_done),
    .ap_idle(ap_idle),
    .ap_ready(ap_ready),
    .d_i_0_TVALID(d_i_0_TVALID),
    .d_o_0_TREADY(d_o_0_TREADY),
    .d_i_1_TVALID(d_i_1_TVALID),
    .d_o_1_TREADY(d_o_1_TREADY),
    .d_i_2_TVALID(d_i_2_TVALID),
    .d_o_2_TREADY(d_o_2_TREADY),
    .d_i_3_TVALID(d_i_3_TVALID),
    .d_o_3_TREADY(d_o_3_TREADY),
    .d_i_4_TVALID(d_i_4_TVALID),
    .d_o_4_TREADY(d_o_4_TREADY),
    .d_i_5_TVALID(d_i_5_TVALID),
    .d_o_5_TREADY(d_o_5_TREADY),
    .d_i_6_TVALID(d_i_6_TVALID),
    .d_o_6_TREADY(d_o_6_TREADY),
    .d_i_7_TVALID(d_i_7_TVALID),
    .d_o_7_TREADY(d_o_7_TREADY),
    .d_o_0_TDATA(d_o_0_TDATA),
    .d_o_0_TVALID(d_o_0_TVALID),
    .d_o_1_TDATA(d_o_1_TDATA),
    .d_o_1_TVALID(d_o_1_TVALID),
    .d_o_2_TDATA(d_o_2_TDATA),
    .d_o_2_TVALID(d_o_2_TVALID),
    .d_o_3_TDATA(d_o_3_TDATA),
    .d_o_3_TVALID(d_o_3_TVALID),
    .d_o_4_TDATA(d_o_4_TDATA),
    .d_o_4_TVALID(d_o_4_TVALID),
    .d_o_5_TDATA(d_o_5_TDATA),
    .d_o_5_TVALID(d_o_5_TVALID),
    .d_o_6_TDATA(d_o_6_TDATA),
    .d_o_6_TVALID(d_o_6_TVALID),
    .d_o_7_TDATA(d_o_7_TDATA),
    .d_o_7_TVALID(d_o_7_TVALID),
    .d_i_0_TDATA(d_i_0_TDATA),
    .d_i_0_TREADY(d_i_0_TREADY),
    .d_i_1_TDATA(d_i_1_TDATA),
    .d_i_1_TREADY(d_i_1_TREADY),
    .d_i_2_TDATA(d_i_2_TDATA),
    .d_i_2_TREADY(d_i_2_TREADY),
    .d_i_3_TDATA(d_i_3_TDATA),
    .d_i_3_TREADY(d_i_3_TREADY),
    .d_i_4_TDATA(d_i_4_TDATA),
    .d_i_4_TREADY(d_i_4_TREADY),
    .d_i_5_TDATA(d_i_5_TDATA),
    .d_i_5_TREADY(d_i_5_TREADY),
    .d_i_6_TDATA(d_i_6_TDATA),
    .d_i_6_TREADY(d_i_6_TREADY),
    .d_i_7_TDATA(d_i_7_TDATA),
    .d_i_7_TREADY(d_i_7_TREADY));

// Assignment for control signal
assign ap_clk = AESL_clock;
assign ap_rst_n = dut_rst;
assign ap_rst_n_n = ~dut_rst;
assign AESL_reset = rst;
assign ap_start = AESL_start;
assign AESL_start = start;
assign AESL_done = ap_done;
assign AESL_idle = ap_idle;
assign AESL_ready = ap_ready;
assign AESL_ce = ce;
assign AESL_continue = tb_continue;
    always @(posedge AESL_clock) begin
        if (AESL_reset === 0) begin
        end else begin
            if (AESL_done !== 1 && AESL_done !== 0) begin
                $display("ERROR: Control signal AESL_done is invalid!");
                $finish;
            end
        end
    end
    always @(posedge AESL_clock) begin
        if (AESL_reset === 0) begin
        end else begin
            if (AESL_ready !== 1 && AESL_ready !== 0) begin
                $display("ERROR: Control signal AESL_ready is invalid!");
                $finish;
            end
        end
    end
















reg [31:0] ap_c_n_tvin_trans_num_d_o_0;

reg d_o_0_ready_reg; // for self-sync

wire d_o_0_ready;
wire d_o_0_done;
wire [31:0] d_o_0_transaction;
wire axi_s_d_o_0_TVALID;
wire axi_s_d_o_0_TREADY;

AESL_axi_s_d_o_0 AESL_AXI_S_d_o_0(
    .clk(AESL_clock),
    .reset(AESL_reset),
    .TRAN_d_o_0_TDATA(d_o_0_TDATA),
    .TRAN_d_o_0_TVALID(axi_s_d_o_0_TVALID),
    .TRAN_d_o_0_TREADY(axi_s_d_o_0_TREADY),
    .ready(d_o_0_ready),
    .done(d_o_0_done),
    .transaction(d_o_0_transaction));

assign d_o_0_ready = 0;
assign d_o_0_done = AESL_done;

assign axi_s_d_o_0_TVALID = d_o_0_TVALID;

reg reg_d_o_0_TREADY;
initial begin : gen_reg_d_o_0_TREADY_process
    integer proc_rand;
    reg_d_o_0_TREADY = axi_s_d_o_0_TREADY;
    while(1)
    begin
        @(axi_s_d_o_0_TREADY);
        reg_d_o_0_TREADY = axi_s_d_o_0_TREADY;
    end
end


assign d_o_0_TREADY = reg_d_o_0_TREADY;
reg [31:0] ap_c_n_tvin_trans_num_d_o_1;

reg d_o_1_ready_reg; // for self-sync

wire d_o_1_ready;
wire d_o_1_done;
wire [31:0] d_o_1_transaction;
wire axi_s_d_o_1_TVALID;
wire axi_s_d_o_1_TREADY;

AESL_axi_s_d_o_1 AESL_AXI_S_d_o_1(
    .clk(AESL_clock),
    .reset(AESL_reset),
    .TRAN_d_o_1_TDATA(d_o_1_TDATA),
    .TRAN_d_o_1_TVALID(axi_s_d_o_1_TVALID),
    .TRAN_d_o_1_TREADY(axi_s_d_o_1_TREADY),
    .ready(d_o_1_ready),
    .done(d_o_1_done),
    .transaction(d_o_1_transaction));

assign d_o_1_ready = 0;
assign d_o_1_done = AESL_done;

assign axi_s_d_o_1_TVALID = d_o_1_TVALID;

reg reg_d_o_1_TREADY;
initial begin : gen_reg_d_o_1_TREADY_process
    integer proc_rand;
    reg_d_o_1_TREADY = axi_s_d_o_1_TREADY;
    while(1)
    begin
        @(axi_s_d_o_1_TREADY);
        reg_d_o_1_TREADY = axi_s_d_o_1_TREADY;
    end
end


assign d_o_1_TREADY = reg_d_o_1_TREADY;
reg [31:0] ap_c_n_tvin_trans_num_d_o_2;

reg d_o_2_ready_reg; // for self-sync

wire d_o_2_ready;
wire d_o_2_done;
wire [31:0] d_o_2_transaction;
wire axi_s_d_o_2_TVALID;
wire axi_s_d_o_2_TREADY;

AESL_axi_s_d_o_2 AESL_AXI_S_d_o_2(
    .clk(AESL_clock),
    .reset(AESL_reset),
    .TRAN_d_o_2_TDATA(d_o_2_TDATA),
    .TRAN_d_o_2_TVALID(axi_s_d_o_2_TVALID),
    .TRAN_d_o_2_TREADY(axi_s_d_o_2_TREADY),
    .ready(d_o_2_ready),
    .done(d_o_2_done),
    .transaction(d_o_2_transaction));

assign d_o_2_ready = 0;
assign d_o_2_done = AESL_done;

assign axi_s_d_o_2_TVALID = d_o_2_TVALID;

reg reg_d_o_2_TREADY;
initial begin : gen_reg_d_o_2_TREADY_process
    integer proc_rand;
    reg_d_o_2_TREADY = axi_s_d_o_2_TREADY;
    while(1)
    begin
        @(axi_s_d_o_2_TREADY);
        reg_d_o_2_TREADY = axi_s_d_o_2_TREADY;
    end
end


assign d_o_2_TREADY = reg_d_o_2_TREADY;
reg [31:0] ap_c_n_tvin_trans_num_d_o_3;

reg d_o_3_ready_reg; // for self-sync

wire d_o_3_ready;
wire d_o_3_done;
wire [31:0] d_o_3_transaction;
wire axi_s_d_o_3_TVALID;
wire axi_s_d_o_3_TREADY;

AESL_axi_s_d_o_3 AESL_AXI_S_d_o_3(
    .clk(AESL_clock),
    .reset(AESL_reset),
    .TRAN_d_o_3_TDATA(d_o_3_TDATA),
    .TRAN_d_o_3_TVALID(axi_s_d_o_3_TVALID),
    .TRAN_d_o_3_TREADY(axi_s_d_o_3_TREADY),
    .ready(d_o_3_ready),
    .done(d_o_3_done),
    .transaction(d_o_3_transaction));

assign d_o_3_ready = 0;
assign d_o_3_done = AESL_done;

assign axi_s_d_o_3_TVALID = d_o_3_TVALID;

reg reg_d_o_3_TREADY;
initial begin : gen_reg_d_o_3_TREADY_process
    integer proc_rand;
    reg_d_o_3_TREADY = axi_s_d_o_3_TREADY;
    while(1)
    begin
        @(axi_s_d_o_3_TREADY);
        reg_d_o_3_TREADY = axi_s_d_o_3_TREADY;
    end
end


assign d_o_3_TREADY = reg_d_o_3_TREADY;
reg [31:0] ap_c_n_tvin_trans_num_d_o_4;

reg d_o_4_ready_reg; // for self-sync

wire d_o_4_ready;
wire d_o_4_done;
wire [31:0] d_o_4_transaction;
wire axi_s_d_o_4_TVALID;
wire axi_s_d_o_4_TREADY;

AESL_axi_s_d_o_4 AESL_AXI_S_d_o_4(
    .clk(AESL_clock),
    .reset(AESL_reset),
    .TRAN_d_o_4_TDATA(d_o_4_TDATA),
    .TRAN_d_o_4_TVALID(axi_s_d_o_4_TVALID),
    .TRAN_d_o_4_TREADY(axi_s_d_o_4_TREADY),
    .ready(d_o_4_ready),
    .done(d_o_4_done),
    .transaction(d_o_4_transaction));

assign d_o_4_ready = 0;
assign d_o_4_done = AESL_done;

assign axi_s_d_o_4_TVALID = d_o_4_TVALID;

reg reg_d_o_4_TREADY;
initial begin : gen_reg_d_o_4_TREADY_process
    integer proc_rand;
    reg_d_o_4_TREADY = axi_s_d_o_4_TREADY;
    while(1)
    begin
        @(axi_s_d_o_4_TREADY);
        reg_d_o_4_TREADY = axi_s_d_o_4_TREADY;
    end
end


assign d_o_4_TREADY = reg_d_o_4_TREADY;
reg [31:0] ap_c_n_tvin_trans_num_d_o_5;

reg d_o_5_ready_reg; // for self-sync

wire d_o_5_ready;
wire d_o_5_done;
wire [31:0] d_o_5_transaction;
wire axi_s_d_o_5_TVALID;
wire axi_s_d_o_5_TREADY;

AESL_axi_s_d_o_5 AESL_AXI_S_d_o_5(
    .clk(AESL_clock),
    .reset(AESL_reset),
    .TRAN_d_o_5_TDATA(d_o_5_TDATA),
    .TRAN_d_o_5_TVALID(axi_s_d_o_5_TVALID),
    .TRAN_d_o_5_TREADY(axi_s_d_o_5_TREADY),
    .ready(d_o_5_ready),
    .done(d_o_5_done),
    .transaction(d_o_5_transaction));

assign d_o_5_ready = 0;
assign d_o_5_done = AESL_done;

assign axi_s_d_o_5_TVALID = d_o_5_TVALID;

reg reg_d_o_5_TREADY;
initial begin : gen_reg_d_o_5_TREADY_process
    integer proc_rand;
    reg_d_o_5_TREADY = axi_s_d_o_5_TREADY;
    while(1)
    begin
        @(axi_s_d_o_5_TREADY);
        reg_d_o_5_TREADY = axi_s_d_o_5_TREADY;
    end
end


assign d_o_5_TREADY = reg_d_o_5_TREADY;
reg [31:0] ap_c_n_tvin_trans_num_d_o_6;

reg d_o_6_ready_reg; // for self-sync

wire d_o_6_ready;
wire d_o_6_done;
wire [31:0] d_o_6_transaction;
wire axi_s_d_o_6_TVALID;
wire axi_s_d_o_6_TREADY;

AESL_axi_s_d_o_6 AESL_AXI_S_d_o_6(
    .clk(AESL_clock),
    .reset(AESL_reset),
    .TRAN_d_o_6_TDATA(d_o_6_TDATA),
    .TRAN_d_o_6_TVALID(axi_s_d_o_6_TVALID),
    .TRAN_d_o_6_TREADY(axi_s_d_o_6_TREADY),
    .ready(d_o_6_ready),
    .done(d_o_6_done),
    .transaction(d_o_6_transaction));

assign d_o_6_ready = 0;
assign d_o_6_done = AESL_done;

assign axi_s_d_o_6_TVALID = d_o_6_TVALID;

reg reg_d_o_6_TREADY;
initial begin : gen_reg_d_o_6_TREADY_process
    integer proc_rand;
    reg_d_o_6_TREADY = axi_s_d_o_6_TREADY;
    while(1)
    begin
        @(axi_s_d_o_6_TREADY);
        reg_d_o_6_TREADY = axi_s_d_o_6_TREADY;
    end
end


assign d_o_6_TREADY = reg_d_o_6_TREADY;
reg [31:0] ap_c_n_tvin_trans_num_d_o_7;

reg d_o_7_ready_reg; // for self-sync

wire d_o_7_ready;
wire d_o_7_done;
wire [31:0] d_o_7_transaction;
wire axi_s_d_o_7_TVALID;
wire axi_s_d_o_7_TREADY;

AESL_axi_s_d_o_7 AESL_AXI_S_d_o_7(
    .clk(AESL_clock),
    .reset(AESL_reset),
    .TRAN_d_o_7_TDATA(d_o_7_TDATA),
    .TRAN_d_o_7_TVALID(axi_s_d_o_7_TVALID),
    .TRAN_d_o_7_TREADY(axi_s_d_o_7_TREADY),
    .ready(d_o_7_ready),
    .done(d_o_7_done),
    .transaction(d_o_7_transaction));

assign d_o_7_ready = 0;
assign d_o_7_done = AESL_done;

assign axi_s_d_o_7_TVALID = d_o_7_TVALID;

reg reg_d_o_7_TREADY;
initial begin : gen_reg_d_o_7_TREADY_process
    integer proc_rand;
    reg_d_o_7_TREADY = axi_s_d_o_7_TREADY;
    while(1)
    begin
        @(axi_s_d_o_7_TREADY);
        reg_d_o_7_TREADY = axi_s_d_o_7_TREADY;
    end
end


assign d_o_7_TREADY = reg_d_o_7_TREADY;
reg [31:0] ap_c_n_tvin_trans_num_d_i_0;

reg d_i_0_ready_reg; // for self-sync

wire d_i_0_ready;
wire d_i_0_done;
wire [31:0] d_i_0_transaction;
wire axi_s_d_i_0_TVALID;
wire axi_s_d_i_0_TREADY;

AESL_axi_s_d_i_0 AESL_AXI_S_d_i_0(
    .clk(AESL_clock),
    .reset(AESL_reset),
    .TRAN_d_i_0_TDATA(d_i_0_TDATA),
    .TRAN_d_i_0_TVALID(axi_s_d_i_0_TVALID),
    .TRAN_d_i_0_TREADY(axi_s_d_i_0_TREADY),
    .ready(d_i_0_ready),
    .done(d_i_0_done),
    .transaction(d_i_0_transaction));

assign d_i_0_ready = ready;
assign d_i_0_done = 0;

assign d_i_0_TVALID = axi_s_d_i_0_TVALID;

assign axi_s_d_i_0_TREADY = d_i_0_TREADY;
reg [31:0] ap_c_n_tvin_trans_num_d_i_1;

reg d_i_1_ready_reg; // for self-sync

wire d_i_1_ready;
wire d_i_1_done;
wire [31:0] d_i_1_transaction;
wire axi_s_d_i_1_TVALID;
wire axi_s_d_i_1_TREADY;

AESL_axi_s_d_i_1 AESL_AXI_S_d_i_1(
    .clk(AESL_clock),
    .reset(AESL_reset),
    .TRAN_d_i_1_TDATA(d_i_1_TDATA),
    .TRAN_d_i_1_TVALID(axi_s_d_i_1_TVALID),
    .TRAN_d_i_1_TREADY(axi_s_d_i_1_TREADY),
    .ready(d_i_1_ready),
    .done(d_i_1_done),
    .transaction(d_i_1_transaction));

assign d_i_1_ready = ready;
assign d_i_1_done = 0;

assign d_i_1_TVALID = axi_s_d_i_1_TVALID;

assign axi_s_d_i_1_TREADY = d_i_1_TREADY;
reg [31:0] ap_c_n_tvin_trans_num_d_i_2;

reg d_i_2_ready_reg; // for self-sync

wire d_i_2_ready;
wire d_i_2_done;
wire [31:0] d_i_2_transaction;
wire axi_s_d_i_2_TVALID;
wire axi_s_d_i_2_TREADY;

AESL_axi_s_d_i_2 AESL_AXI_S_d_i_2(
    .clk(AESL_clock),
    .reset(AESL_reset),
    .TRAN_d_i_2_TDATA(d_i_2_TDATA),
    .TRAN_d_i_2_TVALID(axi_s_d_i_2_TVALID),
    .TRAN_d_i_2_TREADY(axi_s_d_i_2_TREADY),
    .ready(d_i_2_ready),
    .done(d_i_2_done),
    .transaction(d_i_2_transaction));

assign d_i_2_ready = ready;
assign d_i_2_done = 0;

assign d_i_2_TVALID = axi_s_d_i_2_TVALID;

assign axi_s_d_i_2_TREADY = d_i_2_TREADY;
reg [31:0] ap_c_n_tvin_trans_num_d_i_3;

reg d_i_3_ready_reg; // for self-sync

wire d_i_3_ready;
wire d_i_3_done;
wire [31:0] d_i_3_transaction;
wire axi_s_d_i_3_TVALID;
wire axi_s_d_i_3_TREADY;

AESL_axi_s_d_i_3 AESL_AXI_S_d_i_3(
    .clk(AESL_clock),
    .reset(AESL_reset),
    .TRAN_d_i_3_TDATA(d_i_3_TDATA),
    .TRAN_d_i_3_TVALID(axi_s_d_i_3_TVALID),
    .TRAN_d_i_3_TREADY(axi_s_d_i_3_TREADY),
    .ready(d_i_3_ready),
    .done(d_i_3_done),
    .transaction(d_i_3_transaction));

assign d_i_3_ready = ready;
assign d_i_3_done = 0;

assign d_i_3_TVALID = axi_s_d_i_3_TVALID;

assign axi_s_d_i_3_TREADY = d_i_3_TREADY;
reg [31:0] ap_c_n_tvin_trans_num_d_i_4;

reg d_i_4_ready_reg; // for self-sync

wire d_i_4_ready;
wire d_i_4_done;
wire [31:0] d_i_4_transaction;
wire axi_s_d_i_4_TVALID;
wire axi_s_d_i_4_TREADY;

AESL_axi_s_d_i_4 AESL_AXI_S_d_i_4(
    .clk(AESL_clock),
    .reset(AESL_reset),
    .TRAN_d_i_4_TDATA(d_i_4_TDATA),
    .TRAN_d_i_4_TVALID(axi_s_d_i_4_TVALID),
    .TRAN_d_i_4_TREADY(axi_s_d_i_4_TREADY),
    .ready(d_i_4_ready),
    .done(d_i_4_done),
    .transaction(d_i_4_transaction));

assign d_i_4_ready = ready;
assign d_i_4_done = 0;

assign d_i_4_TVALID = axi_s_d_i_4_TVALID;

assign axi_s_d_i_4_TREADY = d_i_4_TREADY;
reg [31:0] ap_c_n_tvin_trans_num_d_i_5;

reg d_i_5_ready_reg; // for self-sync

wire d_i_5_ready;
wire d_i_5_done;
wire [31:0] d_i_5_transaction;
wire axi_s_d_i_5_TVALID;
wire axi_s_d_i_5_TREADY;

AESL_axi_s_d_i_5 AESL_AXI_S_d_i_5(
    .clk(AESL_clock),
    .reset(AESL_reset),
    .TRAN_d_i_5_TDATA(d_i_5_TDATA),
    .TRAN_d_i_5_TVALID(axi_s_d_i_5_TVALID),
    .TRAN_d_i_5_TREADY(axi_s_d_i_5_TREADY),
    .ready(d_i_5_ready),
    .done(d_i_5_done),
    .transaction(d_i_5_transaction));

assign d_i_5_ready = ready;
assign d_i_5_done = 0;

assign d_i_5_TVALID = axi_s_d_i_5_TVALID;

assign axi_s_d_i_5_TREADY = d_i_5_TREADY;
reg [31:0] ap_c_n_tvin_trans_num_d_i_6;

reg d_i_6_ready_reg; // for self-sync

wire d_i_6_ready;
wire d_i_6_done;
wire [31:0] d_i_6_transaction;
wire axi_s_d_i_6_TVALID;
wire axi_s_d_i_6_TREADY;

AESL_axi_s_d_i_6 AESL_AXI_S_d_i_6(
    .clk(AESL_clock),
    .reset(AESL_reset),
    .TRAN_d_i_6_TDATA(d_i_6_TDATA),
    .TRAN_d_i_6_TVALID(axi_s_d_i_6_TVALID),
    .TRAN_d_i_6_TREADY(axi_s_d_i_6_TREADY),
    .ready(d_i_6_ready),
    .done(d_i_6_done),
    .transaction(d_i_6_transaction));

assign d_i_6_ready = ready;
assign d_i_6_done = 0;

assign d_i_6_TVALID = axi_s_d_i_6_TVALID;

assign axi_s_d_i_6_TREADY = d_i_6_TREADY;
reg [31:0] ap_c_n_tvin_trans_num_d_i_7;

reg d_i_7_ready_reg; // for self-sync

wire d_i_7_ready;
wire d_i_7_done;
wire [31:0] d_i_7_transaction;
wire axi_s_d_i_7_TVALID;
wire axi_s_d_i_7_TREADY;

AESL_axi_s_d_i_7 AESL_AXI_S_d_i_7(
    .clk(AESL_clock),
    .reset(AESL_reset),
    .TRAN_d_i_7_TDATA(d_i_7_TDATA),
    .TRAN_d_i_7_TVALID(axi_s_d_i_7_TVALID),
    .TRAN_d_i_7_TREADY(axi_s_d_i_7_TREADY),
    .ready(d_i_7_ready),
    .done(d_i_7_done),
    .transaction(d_i_7_transaction));

assign d_i_7_ready = ready;
assign d_i_7_done = 0;

assign d_i_7_TVALID = axi_s_d_i_7_TVALID;

assign axi_s_d_i_7_TREADY = d_i_7_TREADY;

initial begin : generate_AESL_ready_cnt_proc
    AESL_ready_cnt = 0;
    wait(AESL_reset === 1);
    while(AESL_ready_cnt != AUTOTB_TRANSACTION_NUM) begin
        while(AESL_ready !== 1) begin
            @(posedge AESL_clock);
            # 0.4;
        end
        @(negedge AESL_clock);
        AESL_ready_cnt = AESL_ready_cnt + 1;
        @(posedge AESL_clock);
        # 0.4;
    end
end

    event next_trigger_ready_cnt;
    
    initial begin : gen_ready_cnt
        ready_cnt = 0;
        wait (AESL_reset === 1);
        forever begin
            @ (posedge AESL_clock);
            if (ready == 1) begin
                if (ready_cnt < AUTOTB_TRANSACTION_NUM) begin
                    ready_cnt = ready_cnt + 1;
                end
            end
            -> next_trigger_ready_cnt;
        end
    end
    
    wire all_finish = (done_cnt == AUTOTB_TRANSACTION_NUM);
    
    // done_cnt
    always @ (posedge AESL_clock) begin
        if (~AESL_reset) begin
            done_cnt <= 0;
        end else begin
            if (AESL_done == 1) begin
                if (done_cnt < AUTOTB_TRANSACTION_NUM) begin
                    done_cnt <= done_cnt + 1;
                end
            end
        end
    end
    
    initial begin : finish_simulation
        wait (all_finish == 1);
        // last transaction is saved at negedge right after last done
        repeat(6) @ (posedge AESL_clock);
        $finish;
    end
    
initial begin
    AESL_clock = 0;
    forever #`AUTOTB_CLOCK_PERIOD_DIV2 AESL_clock = ~AESL_clock;
end


reg end_d_i_0;
reg [31:0] size_d_i_0;
reg [31:0] size_d_i_0_backup;
reg end_d_i_1;
reg [31:0] size_d_i_1;
reg [31:0] size_d_i_1_backup;
reg end_d_i_2;
reg [31:0] size_d_i_2;
reg [31:0] size_d_i_2_backup;
reg end_d_i_3;
reg [31:0] size_d_i_3;
reg [31:0] size_d_i_3_backup;
reg end_d_i_4;
reg [31:0] size_d_i_4;
reg [31:0] size_d_i_4_backup;
reg end_d_i_5;
reg [31:0] size_d_i_5;
reg [31:0] size_d_i_5_backup;
reg end_d_i_6;
reg [31:0] size_d_i_6;
reg [31:0] size_d_i_6_backup;
reg end_d_i_7;
reg [31:0] size_d_i_7;
reg [31:0] size_d_i_7_backup;
reg end_d_o_0;
reg [31:0] size_d_o_0;
reg [31:0] size_d_o_0_backup;
reg end_d_o_1;
reg [31:0] size_d_o_1;
reg [31:0] size_d_o_1_backup;
reg end_d_o_2;
reg [31:0] size_d_o_2;
reg [31:0] size_d_o_2_backup;
reg end_d_o_3;
reg [31:0] size_d_o_3;
reg [31:0] size_d_o_3_backup;
reg end_d_o_4;
reg [31:0] size_d_o_4;
reg [31:0] size_d_o_4_backup;
reg end_d_o_5;
reg [31:0] size_d_o_5;
reg [31:0] size_d_o_5_backup;
reg end_d_o_6;
reg [31:0] size_d_o_6;
reg [31:0] size_d_o_6_backup;
reg end_d_o_7;
reg [31:0] size_d_o_7;
reg [31:0] size_d_o_7_backup;

initial begin : initial_process
    integer proc_rand;
    rst = 0;
    # 100;
    repeat(0+3) @ (posedge AESL_clock);
    rst = 1;
end
initial begin : initial_process_for_dut_rst
    integer proc_rand;
    dut_rst = 0;
    # 100;
    repeat(3) @ (posedge AESL_clock);
    dut_rst = 1;
end
initial begin : start_process
    integer proc_rand;
    reg [31:0] start_cnt;
    ce = 1;
    start = 0;
    start_cnt = 0;
    wait (AESL_reset === 1);
    @ (posedge AESL_clock);
    #0 start = 1;
    start_cnt = start_cnt + 1;
    forever begin
        if (start_cnt >= AUTOTB_TRANSACTION_NUM + 1) begin
            #0 start = 0;
        end
        @ (posedge AESL_clock);
        if (AESL_ready) begin
            start_cnt = start_cnt + 1;
        end
    end
end

always @(AESL_done)
begin
    tb_continue = AESL_done;
end

initial begin : ready_initial_process
    ready_initial = 0;
    wait (AESL_start === 1);
    ready_initial = 1;
    @(posedge AESL_clock);
    ready_initial = 0;
end

always @(posedge AESL_clock)
begin
    if(AESL_reset === 0)
      AESL_ready_delay = 0;
  else
      AESL_ready_delay = AESL_ready;
end
initial begin : ready_last_n_process
  ready_last_n = 1;
  wait(ready_cnt == AUTOTB_TRANSACTION_NUM)
  @(posedge AESL_clock);
  ready_last_n <= 0;
end

always @(posedge AESL_clock)
begin
    if(AESL_reset === 0)
      ready_delay_last_n = 0;
  else
      ready_delay_last_n <= ready_last_n;
end
assign ready = (ready_initial | AESL_ready_delay);
assign ready_wire = ready_initial | AESL_ready_delay;
initial begin : done_delay_last_n_process
  done_delay_last_n = 1;
  while(done_cnt < AUTOTB_TRANSACTION_NUM)
      @(posedge AESL_clock);
  # 0.1;
  done_delay_last_n = 0;
end

always @(posedge AESL_clock)
begin
    if(AESL_reset === 0)
  begin
      AESL_done_delay <= 0;
      AESL_done_delay2 <= 0;
  end
  else begin
      AESL_done_delay <= AESL_done & done_delay_last_n;
      AESL_done_delay2 <= AESL_done_delay;
  end
end
always @(posedge AESL_clock)
begin
    if(AESL_reset === 0)
      interface_done = 0;
  else begin
      # 0.01;
      if(ready === 1 && ready_cnt > 0 && ready_cnt < AUTOTB_TRANSACTION_NUM)
          interface_done = 1;
      else if(AESL_done_delay === 1 && done_cnt == AUTOTB_TRANSACTION_NUM)
          interface_done = 1;
      else
          interface_done = 0;
  end
end
    
    initial begin : proc_gen_axis_internal_ready_d_i_0
        d_i_0_ready_reg = 0;
        @ (posedge ready_initial);
        forever begin
            @ (ap_c_n_tvin_trans_num_d_i_0 or d_i_0_transaction);
            if (ap_c_n_tvin_trans_num_d_i_0 > d_i_0_transaction) begin
                d_i_0_ready_reg = 1;
            end else begin
                d_i_0_ready_reg = 0;
            end
        end
    end
    
    initial begin : proc_gen_axis_internal_ready_d_i_1
        d_i_1_ready_reg = 0;
        @ (posedge ready_initial);
        forever begin
            @ (ap_c_n_tvin_trans_num_d_i_1 or d_i_1_transaction);
            if (ap_c_n_tvin_trans_num_d_i_1 > d_i_1_transaction) begin
                d_i_1_ready_reg = 1;
            end else begin
                d_i_1_ready_reg = 0;
            end
        end
    end
    
    initial begin : proc_gen_axis_internal_ready_d_i_2
        d_i_2_ready_reg = 0;
        @ (posedge ready_initial);
        forever begin
            @ (ap_c_n_tvin_trans_num_d_i_2 or d_i_2_transaction);
            if (ap_c_n_tvin_trans_num_d_i_2 > d_i_2_transaction) begin
                d_i_2_ready_reg = 1;
            end else begin
                d_i_2_ready_reg = 0;
            end
        end
    end
    
    initial begin : proc_gen_axis_internal_ready_d_i_3
        d_i_3_ready_reg = 0;
        @ (posedge ready_initial);
        forever begin
            @ (ap_c_n_tvin_trans_num_d_i_3 or d_i_3_transaction);
            if (ap_c_n_tvin_trans_num_d_i_3 > d_i_3_transaction) begin
                d_i_3_ready_reg = 1;
            end else begin
                d_i_3_ready_reg = 0;
            end
        end
    end
    
    initial begin : proc_gen_axis_internal_ready_d_i_4
        d_i_4_ready_reg = 0;
        @ (posedge ready_initial);
        forever begin
            @ (ap_c_n_tvin_trans_num_d_i_4 or d_i_4_transaction);
            if (ap_c_n_tvin_trans_num_d_i_4 > d_i_4_transaction) begin
                d_i_4_ready_reg = 1;
            end else begin
                d_i_4_ready_reg = 0;
            end
        end
    end
    
    initial begin : proc_gen_axis_internal_ready_d_i_5
        d_i_5_ready_reg = 0;
        @ (posedge ready_initial);
        forever begin
            @ (ap_c_n_tvin_trans_num_d_i_5 or d_i_5_transaction);
            if (ap_c_n_tvin_trans_num_d_i_5 > d_i_5_transaction) begin
                d_i_5_ready_reg = 1;
            end else begin
                d_i_5_ready_reg = 0;
            end
        end
    end
    
    initial begin : proc_gen_axis_internal_ready_d_i_6
        d_i_6_ready_reg = 0;
        @ (posedge ready_initial);
        forever begin
            @ (ap_c_n_tvin_trans_num_d_i_6 or d_i_6_transaction);
            if (ap_c_n_tvin_trans_num_d_i_6 > d_i_6_transaction) begin
                d_i_6_ready_reg = 1;
            end else begin
                d_i_6_ready_reg = 0;
            end
        end
    end
    
    initial begin : proc_gen_axis_internal_ready_d_i_7
        d_i_7_ready_reg = 0;
        @ (posedge ready_initial);
        forever begin
            @ (ap_c_n_tvin_trans_num_d_i_7 or d_i_7_transaction);
            if (ap_c_n_tvin_trans_num_d_i_7 > d_i_7_transaction) begin
                d_i_7_ready_reg = 1;
            end else begin
                d_i_7_ready_reg = 0;
            end
        end
    end
    
    `define STREAM_SIZE_IN_d_i_0 "../tv/stream_size/stream_size_in_d_i_0.dat"
    
    initial begin : gen_ap_c_n_tvin_trans_num_d_i_0
        integer fp_d_i_0;
        reg [127:0] token_d_i_0;
        integer ret;
        
        ap_c_n_tvin_trans_num_d_i_0 = 0;
        end_d_i_0 = 0;
        wait (AESL_reset === 1);
        
        fp_d_i_0 = $fopen(`AUTOTB_TVIN_d_i_0, "r");
        if(fp_d_i_0 == 0) begin
            $display("Failed to open file \"%s\"!", `AUTOTB_TVIN_d_i_0);
            $finish;
        end
        read_token(fp_d_i_0, token_d_i_0); // should be [[[runtime]]]
        if (token_d_i_0 != "[[[runtime]]]") begin
            $display("ERROR: token_d_i_0 != \"[[[runtime]]]\"");
            $finish;
        end
        ap_c_n_tvin_trans_num_d_i_0 = ap_c_n_tvin_trans_num_d_i_0 + 1;
        read_token(fp_d_i_0, token_d_i_0); // should be [[transaction]] or [[[/runtime]]]
        if (token_d_i_0 == "[[[/runtime]]]") begin
            $fclose(fp_d_i_0);
            end_d_i_0 = 1;
        end else begin
            end_d_i_0 = 0;
            read_token(fp_d_i_0, token_d_i_0); // should be transaction number
            read_token(fp_d_i_0, token_d_i_0);
        end
        while (token_d_i_0 == "[[/transaction]]" && end_d_i_0 == 0) begin
            ap_c_n_tvin_trans_num_d_i_0 = ap_c_n_tvin_trans_num_d_i_0 + 1;
            read_token(fp_d_i_0, token_d_i_0); // should be [[transaction]] or [[[/runtime]]]
            if (token_d_i_0 == "[[[/runtime]]]") begin
                $fclose(fp_d_i_0);
                end_d_i_0 = 1;
            end else begin
                end_d_i_0 = 0;
                read_token(fp_d_i_0, token_d_i_0); // should be transaction number
                read_token(fp_d_i_0, token_d_i_0);
            end
        end
        forever begin
            @ (posedge AESL_clock);
            if (end_d_i_0 == 0) begin
                if ((d_i_0_TREADY & d_i_0_TVALID) == 1) begin
                    read_token(fp_d_i_0, token_d_i_0);
                    while (token_d_i_0 == "[[/transaction]]" && end_d_i_0 == 0) begin
                        ap_c_n_tvin_trans_num_d_i_0 = ap_c_n_tvin_trans_num_d_i_0 + 1;
                        read_token(fp_d_i_0, token_d_i_0); // should be [[transaction]] or [[[/runtime]]]
                        if (token_d_i_0 == "[[[/runtime]]]") begin
                            $fclose(fp_d_i_0);
                            end_d_i_0 = 1;
                        end else begin
                            end_d_i_0 = 0;
                            read_token(fp_d_i_0, token_d_i_0); // should be transaction number
                            read_token(fp_d_i_0, token_d_i_0);
                        end
                    end
                end
            end else begin
                ap_c_n_tvin_trans_num_d_i_0 = ap_c_n_tvin_trans_num_d_i_0 + 1;
            end
        end
    end
    
    
    `define STREAM_SIZE_IN_d_i_1 "../tv/stream_size/stream_size_in_d_i_1.dat"
    
    initial begin : gen_ap_c_n_tvin_trans_num_d_i_1
        integer fp_d_i_1;
        reg [127:0] token_d_i_1;
        integer ret;
        
        ap_c_n_tvin_trans_num_d_i_1 = 0;
        end_d_i_1 = 0;
        wait (AESL_reset === 1);
        
        fp_d_i_1 = $fopen(`AUTOTB_TVIN_d_i_1, "r");
        if(fp_d_i_1 == 0) begin
            $display("Failed to open file \"%s\"!", `AUTOTB_TVIN_d_i_1);
            $finish;
        end
        read_token(fp_d_i_1, token_d_i_1); // should be [[[runtime]]]
        if (token_d_i_1 != "[[[runtime]]]") begin
            $display("ERROR: token_d_i_1 != \"[[[runtime]]]\"");
            $finish;
        end
        ap_c_n_tvin_trans_num_d_i_1 = ap_c_n_tvin_trans_num_d_i_1 + 1;
        read_token(fp_d_i_1, token_d_i_1); // should be [[transaction]] or [[[/runtime]]]
        if (token_d_i_1 == "[[[/runtime]]]") begin
            $fclose(fp_d_i_1);
            end_d_i_1 = 1;
        end else begin
            end_d_i_1 = 0;
            read_token(fp_d_i_1, token_d_i_1); // should be transaction number
            read_token(fp_d_i_1, token_d_i_1);
        end
        while (token_d_i_1 == "[[/transaction]]" && end_d_i_1 == 0) begin
            ap_c_n_tvin_trans_num_d_i_1 = ap_c_n_tvin_trans_num_d_i_1 + 1;
            read_token(fp_d_i_1, token_d_i_1); // should be [[transaction]] or [[[/runtime]]]
            if (token_d_i_1 == "[[[/runtime]]]") begin
                $fclose(fp_d_i_1);
                end_d_i_1 = 1;
            end else begin
                end_d_i_1 = 0;
                read_token(fp_d_i_1, token_d_i_1); // should be transaction number
                read_token(fp_d_i_1, token_d_i_1);
            end
        end
        forever begin
            @ (posedge AESL_clock);
            if (end_d_i_1 == 0) begin
                if ((d_i_1_TREADY & d_i_1_TVALID) == 1) begin
                    read_token(fp_d_i_1, token_d_i_1);
                    while (token_d_i_1 == "[[/transaction]]" && end_d_i_1 == 0) begin
                        ap_c_n_tvin_trans_num_d_i_1 = ap_c_n_tvin_trans_num_d_i_1 + 1;
                        read_token(fp_d_i_1, token_d_i_1); // should be [[transaction]] or [[[/runtime]]]
                        if (token_d_i_1 == "[[[/runtime]]]") begin
                            $fclose(fp_d_i_1);
                            end_d_i_1 = 1;
                        end else begin
                            end_d_i_1 = 0;
                            read_token(fp_d_i_1, token_d_i_1); // should be transaction number
                            read_token(fp_d_i_1, token_d_i_1);
                        end
                    end
                end
            end else begin
                ap_c_n_tvin_trans_num_d_i_1 = ap_c_n_tvin_trans_num_d_i_1 + 1;
            end
        end
    end
    
    
    `define STREAM_SIZE_IN_d_i_2 "../tv/stream_size/stream_size_in_d_i_2.dat"
    
    initial begin : gen_ap_c_n_tvin_trans_num_d_i_2
        integer fp_d_i_2;
        reg [127:0] token_d_i_2;
        integer ret;
        
        ap_c_n_tvin_trans_num_d_i_2 = 0;
        end_d_i_2 = 0;
        wait (AESL_reset === 1);
        
        fp_d_i_2 = $fopen(`AUTOTB_TVIN_d_i_2, "r");
        if(fp_d_i_2 == 0) begin
            $display("Failed to open file \"%s\"!", `AUTOTB_TVIN_d_i_2);
            $finish;
        end
        read_token(fp_d_i_2, token_d_i_2); // should be [[[runtime]]]
        if (token_d_i_2 != "[[[runtime]]]") begin
            $display("ERROR: token_d_i_2 != \"[[[runtime]]]\"");
            $finish;
        end
        ap_c_n_tvin_trans_num_d_i_2 = ap_c_n_tvin_trans_num_d_i_2 + 1;
        read_token(fp_d_i_2, token_d_i_2); // should be [[transaction]] or [[[/runtime]]]
        if (token_d_i_2 == "[[[/runtime]]]") begin
            $fclose(fp_d_i_2);
            end_d_i_2 = 1;
        end else begin
            end_d_i_2 = 0;
            read_token(fp_d_i_2, token_d_i_2); // should be transaction number
            read_token(fp_d_i_2, token_d_i_2);
        end
        while (token_d_i_2 == "[[/transaction]]" && end_d_i_2 == 0) begin
            ap_c_n_tvin_trans_num_d_i_2 = ap_c_n_tvin_trans_num_d_i_2 + 1;
            read_token(fp_d_i_2, token_d_i_2); // should be [[transaction]] or [[[/runtime]]]
            if (token_d_i_2 == "[[[/runtime]]]") begin
                $fclose(fp_d_i_2);
                end_d_i_2 = 1;
            end else begin
                end_d_i_2 = 0;
                read_token(fp_d_i_2, token_d_i_2); // should be transaction number
                read_token(fp_d_i_2, token_d_i_2);
            end
        end
        forever begin
            @ (posedge AESL_clock);
            if (end_d_i_2 == 0) begin
                if ((d_i_2_TREADY & d_i_2_TVALID) == 1) begin
                    read_token(fp_d_i_2, token_d_i_2);
                    while (token_d_i_2 == "[[/transaction]]" && end_d_i_2 == 0) begin
                        ap_c_n_tvin_trans_num_d_i_2 = ap_c_n_tvin_trans_num_d_i_2 + 1;
                        read_token(fp_d_i_2, token_d_i_2); // should be [[transaction]] or [[[/runtime]]]
                        if (token_d_i_2 == "[[[/runtime]]]") begin
                            $fclose(fp_d_i_2);
                            end_d_i_2 = 1;
                        end else begin
                            end_d_i_2 = 0;
                            read_token(fp_d_i_2, token_d_i_2); // should be transaction number
                            read_token(fp_d_i_2, token_d_i_2);
                        end
                    end
                end
            end else begin
                ap_c_n_tvin_trans_num_d_i_2 = ap_c_n_tvin_trans_num_d_i_2 + 1;
            end
        end
    end
    
    
    `define STREAM_SIZE_IN_d_i_3 "../tv/stream_size/stream_size_in_d_i_3.dat"
    
    initial begin : gen_ap_c_n_tvin_trans_num_d_i_3
        integer fp_d_i_3;
        reg [127:0] token_d_i_3;
        integer ret;
        
        ap_c_n_tvin_trans_num_d_i_3 = 0;
        end_d_i_3 = 0;
        wait (AESL_reset === 1);
        
        fp_d_i_3 = $fopen(`AUTOTB_TVIN_d_i_3, "r");
        if(fp_d_i_3 == 0) begin
            $display("Failed to open file \"%s\"!", `AUTOTB_TVIN_d_i_3);
            $finish;
        end
        read_token(fp_d_i_3, token_d_i_3); // should be [[[runtime]]]
        if (token_d_i_3 != "[[[runtime]]]") begin
            $display("ERROR: token_d_i_3 != \"[[[runtime]]]\"");
            $finish;
        end
        ap_c_n_tvin_trans_num_d_i_3 = ap_c_n_tvin_trans_num_d_i_3 + 1;
        read_token(fp_d_i_3, token_d_i_3); // should be [[transaction]] or [[[/runtime]]]
        if (token_d_i_3 == "[[[/runtime]]]") begin
            $fclose(fp_d_i_3);
            end_d_i_3 = 1;
        end else begin
            end_d_i_3 = 0;
            read_token(fp_d_i_3, token_d_i_3); // should be transaction number
            read_token(fp_d_i_3, token_d_i_3);
        end
        while (token_d_i_3 == "[[/transaction]]" && end_d_i_3 == 0) begin
            ap_c_n_tvin_trans_num_d_i_3 = ap_c_n_tvin_trans_num_d_i_3 + 1;
            read_token(fp_d_i_3, token_d_i_3); // should be [[transaction]] or [[[/runtime]]]
            if (token_d_i_3 == "[[[/runtime]]]") begin
                $fclose(fp_d_i_3);
                end_d_i_3 = 1;
            end else begin
                end_d_i_3 = 0;
                read_token(fp_d_i_3, token_d_i_3); // should be transaction number
                read_token(fp_d_i_3, token_d_i_3);
            end
        end
        forever begin
            @ (posedge AESL_clock);
            if (end_d_i_3 == 0) begin
                if ((d_i_3_TREADY & d_i_3_TVALID) == 1) begin
                    read_token(fp_d_i_3, token_d_i_3);
                    while (token_d_i_3 == "[[/transaction]]" && end_d_i_3 == 0) begin
                        ap_c_n_tvin_trans_num_d_i_3 = ap_c_n_tvin_trans_num_d_i_3 + 1;
                        read_token(fp_d_i_3, token_d_i_3); // should be [[transaction]] or [[[/runtime]]]
                        if (token_d_i_3 == "[[[/runtime]]]") begin
                            $fclose(fp_d_i_3);
                            end_d_i_3 = 1;
                        end else begin
                            end_d_i_3 = 0;
                            read_token(fp_d_i_3, token_d_i_3); // should be transaction number
                            read_token(fp_d_i_3, token_d_i_3);
                        end
                    end
                end
            end else begin
                ap_c_n_tvin_trans_num_d_i_3 = ap_c_n_tvin_trans_num_d_i_3 + 1;
            end
        end
    end
    
    
    `define STREAM_SIZE_IN_d_i_4 "../tv/stream_size/stream_size_in_d_i_4.dat"
    
    initial begin : gen_ap_c_n_tvin_trans_num_d_i_4
        integer fp_d_i_4;
        reg [127:0] token_d_i_4;
        integer ret;
        
        ap_c_n_tvin_trans_num_d_i_4 = 0;
        end_d_i_4 = 0;
        wait (AESL_reset === 1);
        
        fp_d_i_4 = $fopen(`AUTOTB_TVIN_d_i_4, "r");
        if(fp_d_i_4 == 0) begin
            $display("Failed to open file \"%s\"!", `AUTOTB_TVIN_d_i_4);
            $finish;
        end
        read_token(fp_d_i_4, token_d_i_4); // should be [[[runtime]]]
        if (token_d_i_4 != "[[[runtime]]]") begin
            $display("ERROR: token_d_i_4 != \"[[[runtime]]]\"");
            $finish;
        end
        ap_c_n_tvin_trans_num_d_i_4 = ap_c_n_tvin_trans_num_d_i_4 + 1;
        read_token(fp_d_i_4, token_d_i_4); // should be [[transaction]] or [[[/runtime]]]
        if (token_d_i_4 == "[[[/runtime]]]") begin
            $fclose(fp_d_i_4);
            end_d_i_4 = 1;
        end else begin
            end_d_i_4 = 0;
            read_token(fp_d_i_4, token_d_i_4); // should be transaction number
            read_token(fp_d_i_4, token_d_i_4);
        end
        while (token_d_i_4 == "[[/transaction]]" && end_d_i_4 == 0) begin
            ap_c_n_tvin_trans_num_d_i_4 = ap_c_n_tvin_trans_num_d_i_4 + 1;
            read_token(fp_d_i_4, token_d_i_4); // should be [[transaction]] or [[[/runtime]]]
            if (token_d_i_4 == "[[[/runtime]]]") begin
                $fclose(fp_d_i_4);
                end_d_i_4 = 1;
            end else begin
                end_d_i_4 = 0;
                read_token(fp_d_i_4, token_d_i_4); // should be transaction number
                read_token(fp_d_i_4, token_d_i_4);
            end
        end
        forever begin
            @ (posedge AESL_clock);
            if (end_d_i_4 == 0) begin
                if ((d_i_4_TREADY & d_i_4_TVALID) == 1) begin
                    read_token(fp_d_i_4, token_d_i_4);
                    while (token_d_i_4 == "[[/transaction]]" && end_d_i_4 == 0) begin
                        ap_c_n_tvin_trans_num_d_i_4 = ap_c_n_tvin_trans_num_d_i_4 + 1;
                        read_token(fp_d_i_4, token_d_i_4); // should be [[transaction]] or [[[/runtime]]]
                        if (token_d_i_4 == "[[[/runtime]]]") begin
                            $fclose(fp_d_i_4);
                            end_d_i_4 = 1;
                        end else begin
                            end_d_i_4 = 0;
                            read_token(fp_d_i_4, token_d_i_4); // should be transaction number
                            read_token(fp_d_i_4, token_d_i_4);
                        end
                    end
                end
            end else begin
                ap_c_n_tvin_trans_num_d_i_4 = ap_c_n_tvin_trans_num_d_i_4 + 1;
            end
        end
    end
    
    
    `define STREAM_SIZE_IN_d_i_5 "../tv/stream_size/stream_size_in_d_i_5.dat"
    
    initial begin : gen_ap_c_n_tvin_trans_num_d_i_5
        integer fp_d_i_5;
        reg [127:0] token_d_i_5;
        integer ret;
        
        ap_c_n_tvin_trans_num_d_i_5 = 0;
        end_d_i_5 = 0;
        wait (AESL_reset === 1);
        
        fp_d_i_5 = $fopen(`AUTOTB_TVIN_d_i_5, "r");
        if(fp_d_i_5 == 0) begin
            $display("Failed to open file \"%s\"!", `AUTOTB_TVIN_d_i_5);
            $finish;
        end
        read_token(fp_d_i_5, token_d_i_5); // should be [[[runtime]]]
        if (token_d_i_5 != "[[[runtime]]]") begin
            $display("ERROR: token_d_i_5 != \"[[[runtime]]]\"");
            $finish;
        end
        ap_c_n_tvin_trans_num_d_i_5 = ap_c_n_tvin_trans_num_d_i_5 + 1;
        read_token(fp_d_i_5, token_d_i_5); // should be [[transaction]] or [[[/runtime]]]
        if (token_d_i_5 == "[[[/runtime]]]") begin
            $fclose(fp_d_i_5);
            end_d_i_5 = 1;
        end else begin
            end_d_i_5 = 0;
            read_token(fp_d_i_5, token_d_i_5); // should be transaction number
            read_token(fp_d_i_5, token_d_i_5);
        end
        while (token_d_i_5 == "[[/transaction]]" && end_d_i_5 == 0) begin
            ap_c_n_tvin_trans_num_d_i_5 = ap_c_n_tvin_trans_num_d_i_5 + 1;
            read_token(fp_d_i_5, token_d_i_5); // should be [[transaction]] or [[[/runtime]]]
            if (token_d_i_5 == "[[[/runtime]]]") begin
                $fclose(fp_d_i_5);
                end_d_i_5 = 1;
            end else begin
                end_d_i_5 = 0;
                read_token(fp_d_i_5, token_d_i_5); // should be transaction number
                read_token(fp_d_i_5, token_d_i_5);
            end
        end
        forever begin
            @ (posedge AESL_clock);
            if (end_d_i_5 == 0) begin
                if ((d_i_5_TREADY & d_i_5_TVALID) == 1) begin
                    read_token(fp_d_i_5, token_d_i_5);
                    while (token_d_i_5 == "[[/transaction]]" && end_d_i_5 == 0) begin
                        ap_c_n_tvin_trans_num_d_i_5 = ap_c_n_tvin_trans_num_d_i_5 + 1;
                        read_token(fp_d_i_5, token_d_i_5); // should be [[transaction]] or [[[/runtime]]]
                        if (token_d_i_5 == "[[[/runtime]]]") begin
                            $fclose(fp_d_i_5);
                            end_d_i_5 = 1;
                        end else begin
                            end_d_i_5 = 0;
                            read_token(fp_d_i_5, token_d_i_5); // should be transaction number
                            read_token(fp_d_i_5, token_d_i_5);
                        end
                    end
                end
            end else begin
                ap_c_n_tvin_trans_num_d_i_5 = ap_c_n_tvin_trans_num_d_i_5 + 1;
            end
        end
    end
    
    
    `define STREAM_SIZE_IN_d_i_6 "../tv/stream_size/stream_size_in_d_i_6.dat"
    
    initial begin : gen_ap_c_n_tvin_trans_num_d_i_6
        integer fp_d_i_6;
        reg [127:0] token_d_i_6;
        integer ret;
        
        ap_c_n_tvin_trans_num_d_i_6 = 0;
        end_d_i_6 = 0;
        wait (AESL_reset === 1);
        
        fp_d_i_6 = $fopen(`AUTOTB_TVIN_d_i_6, "r");
        if(fp_d_i_6 == 0) begin
            $display("Failed to open file \"%s\"!", `AUTOTB_TVIN_d_i_6);
            $finish;
        end
        read_token(fp_d_i_6, token_d_i_6); // should be [[[runtime]]]
        if (token_d_i_6 != "[[[runtime]]]") begin
            $display("ERROR: token_d_i_6 != \"[[[runtime]]]\"");
            $finish;
        end
        ap_c_n_tvin_trans_num_d_i_6 = ap_c_n_tvin_trans_num_d_i_6 + 1;
        read_token(fp_d_i_6, token_d_i_6); // should be [[transaction]] or [[[/runtime]]]
        if (token_d_i_6 == "[[[/runtime]]]") begin
            $fclose(fp_d_i_6);
            end_d_i_6 = 1;
        end else begin
            end_d_i_6 = 0;
            read_token(fp_d_i_6, token_d_i_6); // should be transaction number
            read_token(fp_d_i_6, token_d_i_6);
        end
        while (token_d_i_6 == "[[/transaction]]" && end_d_i_6 == 0) begin
            ap_c_n_tvin_trans_num_d_i_6 = ap_c_n_tvin_trans_num_d_i_6 + 1;
            read_token(fp_d_i_6, token_d_i_6); // should be [[transaction]] or [[[/runtime]]]
            if (token_d_i_6 == "[[[/runtime]]]") begin
                $fclose(fp_d_i_6);
                end_d_i_6 = 1;
            end else begin
                end_d_i_6 = 0;
                read_token(fp_d_i_6, token_d_i_6); // should be transaction number
                read_token(fp_d_i_6, token_d_i_6);
            end
        end
        forever begin
            @ (posedge AESL_clock);
            if (end_d_i_6 == 0) begin
                if ((d_i_6_TREADY & d_i_6_TVALID) == 1) begin
                    read_token(fp_d_i_6, token_d_i_6);
                    while (token_d_i_6 == "[[/transaction]]" && end_d_i_6 == 0) begin
                        ap_c_n_tvin_trans_num_d_i_6 = ap_c_n_tvin_trans_num_d_i_6 + 1;
                        read_token(fp_d_i_6, token_d_i_6); // should be [[transaction]] or [[[/runtime]]]
                        if (token_d_i_6 == "[[[/runtime]]]") begin
                            $fclose(fp_d_i_6);
                            end_d_i_6 = 1;
                        end else begin
                            end_d_i_6 = 0;
                            read_token(fp_d_i_6, token_d_i_6); // should be transaction number
                            read_token(fp_d_i_6, token_d_i_6);
                        end
                    end
                end
            end else begin
                ap_c_n_tvin_trans_num_d_i_6 = ap_c_n_tvin_trans_num_d_i_6 + 1;
            end
        end
    end
    
    
    `define STREAM_SIZE_IN_d_i_7 "../tv/stream_size/stream_size_in_d_i_7.dat"
    
    initial begin : gen_ap_c_n_tvin_trans_num_d_i_7
        integer fp_d_i_7;
        reg [127:0] token_d_i_7;
        integer ret;
        
        ap_c_n_tvin_trans_num_d_i_7 = 0;
        end_d_i_7 = 0;
        wait (AESL_reset === 1);
        
        fp_d_i_7 = $fopen(`AUTOTB_TVIN_d_i_7, "r");
        if(fp_d_i_7 == 0) begin
            $display("Failed to open file \"%s\"!", `AUTOTB_TVIN_d_i_7);
            $finish;
        end
        read_token(fp_d_i_7, token_d_i_7); // should be [[[runtime]]]
        if (token_d_i_7 != "[[[runtime]]]") begin
            $display("ERROR: token_d_i_7 != \"[[[runtime]]]\"");
            $finish;
        end
        ap_c_n_tvin_trans_num_d_i_7 = ap_c_n_tvin_trans_num_d_i_7 + 1;
        read_token(fp_d_i_7, token_d_i_7); // should be [[transaction]] or [[[/runtime]]]
        if (token_d_i_7 == "[[[/runtime]]]") begin
            $fclose(fp_d_i_7);
            end_d_i_7 = 1;
        end else begin
            end_d_i_7 = 0;
            read_token(fp_d_i_7, token_d_i_7); // should be transaction number
            read_token(fp_d_i_7, token_d_i_7);
        end
        while (token_d_i_7 == "[[/transaction]]" && end_d_i_7 == 0) begin
            ap_c_n_tvin_trans_num_d_i_7 = ap_c_n_tvin_trans_num_d_i_7 + 1;
            read_token(fp_d_i_7, token_d_i_7); // should be [[transaction]] or [[[/runtime]]]
            if (token_d_i_7 == "[[[/runtime]]]") begin
                $fclose(fp_d_i_7);
                end_d_i_7 = 1;
            end else begin
                end_d_i_7 = 0;
                read_token(fp_d_i_7, token_d_i_7); // should be transaction number
                read_token(fp_d_i_7, token_d_i_7);
            end
        end
        forever begin
            @ (posedge AESL_clock);
            if (end_d_i_7 == 0) begin
                if ((d_i_7_TREADY & d_i_7_TVALID) == 1) begin
                    read_token(fp_d_i_7, token_d_i_7);
                    while (token_d_i_7 == "[[/transaction]]" && end_d_i_7 == 0) begin
                        ap_c_n_tvin_trans_num_d_i_7 = ap_c_n_tvin_trans_num_d_i_7 + 1;
                        read_token(fp_d_i_7, token_d_i_7); // should be [[transaction]] or [[[/runtime]]]
                        if (token_d_i_7 == "[[[/runtime]]]") begin
                            $fclose(fp_d_i_7);
                            end_d_i_7 = 1;
                        end else begin
                            end_d_i_7 = 0;
                            read_token(fp_d_i_7, token_d_i_7); // should be transaction number
                            read_token(fp_d_i_7, token_d_i_7);
                        end
                    end
                end
            end else begin
                ap_c_n_tvin_trans_num_d_i_7 = ap_c_n_tvin_trans_num_d_i_7 + 1;
            end
        end
    end
    
task write_binary;
    input integer fp;
    input reg[64-1:0] in;
    input integer in_bw;
    reg [63:0] tmp_long;
    reg[64-1:0] local_in;
    integer char_num;
    integer long_num;
    integer i;
    integer j;
    begin
        long_num = (in_bw + 63) / 64;
        char_num = ((in_bw - 1) % 64 + 7) / 8;
        for(i=long_num;i>0;i=i-1) begin
             local_in = in;
             tmp_long = local_in >> ((i-1)*64);
             for(j=0;j<64;j=j+1)
                 if (tmp_long[j] === 1'bx)
                     tmp_long[j] = 1'b0;
             if (i == long_num) begin
                 case(char_num)
                     1: $fwrite(fp,"%c",tmp_long[7:0]);
                     2: $fwrite(fp,"%c%c",tmp_long[15:8],tmp_long[7:0]);
                     3: $fwrite(fp,"%c%c%c",tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
                     4: $fwrite(fp,"%c%c%c%c",tmp_long[31:24],tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
                     5: $fwrite(fp,"%c%c%c%c%c",tmp_long[39:32],tmp_long[31:24],tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
                     6: $fwrite(fp,"%c%c%c%c%c%c",tmp_long[47:40],tmp_long[39:32],tmp_long[31:24],tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
                     7: $fwrite(fp,"%c%c%c%c%c%c%c",tmp_long[55:48],tmp_long[47:40],tmp_long[39:32],tmp_long[31:24],tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
                     8: $fwrite(fp,"%c%c%c%c%c%c%c%c",tmp_long[63:56],tmp_long[55:48],tmp_long[47:40],tmp_long[39:32],tmp_long[31:24],tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
                     default: ;
                 endcase
             end
             else begin
                 $fwrite(fp,"%c%c%c%c%c%c%c%c",tmp_long[63:56],tmp_long[55:48],tmp_long[47:40],tmp_long[39:32],tmp_long[31:24],tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
             end
        end
    end
endtask;

reg dump_tvout_finish_d_o_0;

initial begin : dump_tvout_runtime_sign_d_o_0
    integer fp;
    dump_tvout_finish_d_o_0 = 0;
    fp = $fopen(`AUTOTB_TVOUT_d_o_0_out_wrapc, "w");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_d_o_0_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fdisplay(fp,"[[[runtime]]]");
    $fclose(fp);
    wait (done_cnt == AUTOTB_TRANSACTION_NUM);
    // last transaction is saved at negedge right after last done
    repeat(5) @ (posedge AESL_clock);
    fp = $fopen(`AUTOTB_TVOUT_d_o_0_out_wrapc, "a");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_d_o_0_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fdisplay(fp,"[[[/runtime]]]");
    $fclose(fp);
    dump_tvout_finish_d_o_0 = 1;
end


reg dump_tvout_finish_d_o_1;

initial begin : dump_tvout_runtime_sign_d_o_1
    integer fp;
    dump_tvout_finish_d_o_1 = 0;
    fp = $fopen(`AUTOTB_TVOUT_d_o_1_out_wrapc, "w");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_d_o_1_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fdisplay(fp,"[[[runtime]]]");
    $fclose(fp);
    wait (done_cnt == AUTOTB_TRANSACTION_NUM);
    // last transaction is saved at negedge right after last done
    repeat(5) @ (posedge AESL_clock);
    fp = $fopen(`AUTOTB_TVOUT_d_o_1_out_wrapc, "a");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_d_o_1_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fdisplay(fp,"[[[/runtime]]]");
    $fclose(fp);
    dump_tvout_finish_d_o_1 = 1;
end


reg dump_tvout_finish_d_o_2;

initial begin : dump_tvout_runtime_sign_d_o_2
    integer fp;
    dump_tvout_finish_d_o_2 = 0;
    fp = $fopen(`AUTOTB_TVOUT_d_o_2_out_wrapc, "w");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_d_o_2_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fdisplay(fp,"[[[runtime]]]");
    $fclose(fp);
    wait (done_cnt == AUTOTB_TRANSACTION_NUM);
    // last transaction is saved at negedge right after last done
    repeat(5) @ (posedge AESL_clock);
    fp = $fopen(`AUTOTB_TVOUT_d_o_2_out_wrapc, "a");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_d_o_2_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fdisplay(fp,"[[[/runtime]]]");
    $fclose(fp);
    dump_tvout_finish_d_o_2 = 1;
end


reg dump_tvout_finish_d_o_3;

initial begin : dump_tvout_runtime_sign_d_o_3
    integer fp;
    dump_tvout_finish_d_o_3 = 0;
    fp = $fopen(`AUTOTB_TVOUT_d_o_3_out_wrapc, "w");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_d_o_3_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fdisplay(fp,"[[[runtime]]]");
    $fclose(fp);
    wait (done_cnt == AUTOTB_TRANSACTION_NUM);
    // last transaction is saved at negedge right after last done
    repeat(5) @ (posedge AESL_clock);
    fp = $fopen(`AUTOTB_TVOUT_d_o_3_out_wrapc, "a");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_d_o_3_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fdisplay(fp,"[[[/runtime]]]");
    $fclose(fp);
    dump_tvout_finish_d_o_3 = 1;
end


reg dump_tvout_finish_d_o_4;

initial begin : dump_tvout_runtime_sign_d_o_4
    integer fp;
    dump_tvout_finish_d_o_4 = 0;
    fp = $fopen(`AUTOTB_TVOUT_d_o_4_out_wrapc, "w");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_d_o_4_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fdisplay(fp,"[[[runtime]]]");
    $fclose(fp);
    wait (done_cnt == AUTOTB_TRANSACTION_NUM);
    // last transaction is saved at negedge right after last done
    repeat(5) @ (posedge AESL_clock);
    fp = $fopen(`AUTOTB_TVOUT_d_o_4_out_wrapc, "a");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_d_o_4_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fdisplay(fp,"[[[/runtime]]]");
    $fclose(fp);
    dump_tvout_finish_d_o_4 = 1;
end


reg dump_tvout_finish_d_o_5;

initial begin : dump_tvout_runtime_sign_d_o_5
    integer fp;
    dump_tvout_finish_d_o_5 = 0;
    fp = $fopen(`AUTOTB_TVOUT_d_o_5_out_wrapc, "w");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_d_o_5_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fdisplay(fp,"[[[runtime]]]");
    $fclose(fp);
    wait (done_cnt == AUTOTB_TRANSACTION_NUM);
    // last transaction is saved at negedge right after last done
    repeat(5) @ (posedge AESL_clock);
    fp = $fopen(`AUTOTB_TVOUT_d_o_5_out_wrapc, "a");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_d_o_5_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fdisplay(fp,"[[[/runtime]]]");
    $fclose(fp);
    dump_tvout_finish_d_o_5 = 1;
end


reg dump_tvout_finish_d_o_6;

initial begin : dump_tvout_runtime_sign_d_o_6
    integer fp;
    dump_tvout_finish_d_o_6 = 0;
    fp = $fopen(`AUTOTB_TVOUT_d_o_6_out_wrapc, "w");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_d_o_6_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fdisplay(fp,"[[[runtime]]]");
    $fclose(fp);
    wait (done_cnt == AUTOTB_TRANSACTION_NUM);
    // last transaction is saved at negedge right after last done
    repeat(5) @ (posedge AESL_clock);
    fp = $fopen(`AUTOTB_TVOUT_d_o_6_out_wrapc, "a");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_d_o_6_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fdisplay(fp,"[[[/runtime]]]");
    $fclose(fp);
    dump_tvout_finish_d_o_6 = 1;
end


reg dump_tvout_finish_d_o_7;

initial begin : dump_tvout_runtime_sign_d_o_7
    integer fp;
    dump_tvout_finish_d_o_7 = 0;
    fp = $fopen(`AUTOTB_TVOUT_d_o_7_out_wrapc, "w");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_d_o_7_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fdisplay(fp,"[[[runtime]]]");
    $fclose(fp);
    wait (done_cnt == AUTOTB_TRANSACTION_NUM);
    // last transaction is saved at negedge right after last done
    repeat(5) @ (posedge AESL_clock);
    fp = $fopen(`AUTOTB_TVOUT_d_o_7_out_wrapc, "a");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_d_o_7_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fdisplay(fp,"[[[/runtime]]]");
    $fclose(fp);
    dump_tvout_finish_d_o_7 = 1;
end


////////////////////////////////////////////
// progress and performance
////////////////////////////////////////////

task wait_start();
    while (~AESL_start) begin
        @ (posedge AESL_clock);
    end
endtask

reg [31:0] clk_cnt = 0;
reg AESL_ready_p1;
reg AESL_start_p1;

always @ (posedge AESL_clock) begin
    if (AESL_reset == 0) begin
        clk_cnt <= 32'h0;
        AESL_ready_p1 <= 1'b0;
        AESL_start_p1 <= 1'b0;
    end
    else begin
        clk_cnt <= clk_cnt + 1;
        AESL_ready_p1 <= AESL_ready;
        AESL_start_p1 <= AESL_start;
    end
end

reg [31:0] start_timestamp [0:AUTOTB_TRANSACTION_NUM - 1];
reg [31:0] start_cnt;
reg [31:0] ready_timestamp [0:AUTOTB_TRANSACTION_NUM - 1];
reg [31:0] ap_ready_cnt;
reg [31:0] finish_timestamp [0:AUTOTB_TRANSACTION_NUM - 1];
reg [31:0] finish_cnt;
reg [31:0] lat_total;
event report_progress;

always @(posedge AESL_clock)
begin
    if (finish_cnt == AUTOTB_TRANSACTION_NUM - 1 && AESL_done == 1'b1)
        lat_total = clk_cnt - start_timestamp[0];
end

initial begin
    start_cnt = 0;
    finish_cnt = 0;
    ap_ready_cnt = 0;
    wait (AESL_reset == 1);
    wait_start();
    start_timestamp[start_cnt] = clk_cnt;
    start_cnt = start_cnt + 1;
    if (AESL_done) begin
        finish_timestamp[finish_cnt] = clk_cnt;
        finish_cnt = finish_cnt + 1;
    end
    -> report_progress;
    forever begin
        @ (posedge AESL_clock);
        if (start_cnt < AUTOTB_TRANSACTION_NUM) begin
            if ((AESL_start && AESL_ready_p1)||(AESL_start && ~AESL_start_p1)) begin
                start_timestamp[start_cnt] = clk_cnt;
                start_cnt = start_cnt + 1;
            end
        end
        if (ap_ready_cnt < AUTOTB_TRANSACTION_NUM) begin
            if (AESL_start_p1 && AESL_ready_p1) begin
                ready_timestamp[ap_ready_cnt] = clk_cnt;
                ap_ready_cnt = ap_ready_cnt + 1;
            end
        end
        if (finish_cnt < AUTOTB_TRANSACTION_NUM) begin
            if (AESL_done) begin
                finish_timestamp[finish_cnt] = clk_cnt;
                finish_cnt = finish_cnt + 1;
            end
        end
        -> report_progress;
    end
end

reg [31:0] progress_timeout;

initial begin : simulation_progress
    real intra_progress;
    wait (AESL_reset == 1);
    progress_timeout = PROGRESS_TIMEOUT;
    $display("////////////////////////////////////////////////////////////////////////////////////");
    $display("// Inter-Transaction Progress: Completed Transaction / Total Transaction");
    $display("// Intra-Transaction Progress: Measured Latency / Latency Estimation * 100%%");
    $display("//");
    $display("// RTL Simulation : \"Inter-Transaction Progress\" [\"Intra-Transaction Progress\"] @ \"Simulation Time\"");
    $display("////////////////////////////////////////////////////////////////////////////////////");
    print_progress();
    while (finish_cnt < AUTOTB_TRANSACTION_NUM) begin
        @ (report_progress);
        if (finish_cnt < AUTOTB_TRANSACTION_NUM) begin
            if (AESL_done) begin
                print_progress();
                progress_timeout = PROGRESS_TIMEOUT;
            end else begin
                if (progress_timeout == 0) begin
                    print_progress();
                    progress_timeout = PROGRESS_TIMEOUT;
                end else begin
                    progress_timeout = progress_timeout - 1;
                end
            end
        end
    end
    print_progress();
    $display("////////////////////////////////////////////////////////////////////////////////////");
    calculate_performance();
end

task get_intra_progress(output real intra_progress);
    begin
        if (start_cnt > finish_cnt) begin
            intra_progress = clk_cnt - start_timestamp[finish_cnt];
        end else if(finish_cnt > 0) begin
            intra_progress = LATENCY_ESTIMATION;
        end else begin
            intra_progress = 0;
        end
        intra_progress = intra_progress / LATENCY_ESTIMATION;
    end
endtask

task print_progress();
    real intra_progress;
    begin
        if (LATENCY_ESTIMATION > 0) begin
            get_intra_progress(intra_progress);
            $display("// RTL Simulation : %0d / %0d [%2.2f%%] @ \"%0t\"", finish_cnt, AUTOTB_TRANSACTION_NUM, intra_progress * 100, $time);
        end else begin
            $display("// RTL Simulation : %0d / %0d [n/a] @ \"%0t\"", finish_cnt, AUTOTB_TRANSACTION_NUM, $time);
        end
    end
endtask

task calculate_performance();
    integer i;
    integer fp;
    reg [31:0] latency [0:AUTOTB_TRANSACTION_NUM - 1];
    reg [31:0] latency_min;
    reg [31:0] latency_max;
    reg [31:0] latency_total;
    reg [31:0] latency_average;
    reg [31:0] interval [0:AUTOTB_TRANSACTION_NUM - 2];
    reg [31:0] interval_min;
    reg [31:0] interval_max;
    reg [31:0] interval_total;
    reg [31:0] interval_average;
    reg [31:0] total_execute_time;
    begin
        latency_min = -1;
        latency_max = 0;
        latency_total = 0;
        interval_min = -1;
        interval_max = 0;
        interval_total = 0;
        total_execute_time = lat_total;

        for (i = 0; i < AUTOTB_TRANSACTION_NUM; i = i + 1) begin
            // calculate latency
            latency[i] = finish_timestamp[i] - start_timestamp[i];
            if (latency[i] > latency_max) latency_max = latency[i];
            if (latency[i] < latency_min) latency_min = latency[i];
            latency_total = latency_total + latency[i];
            // calculate interval
            if (AUTOTB_TRANSACTION_NUM == 1) begin
                interval[i] = 0;
                interval_max = 0;
                interval_min = 0;
                interval_total = 0;
            end else if (i < AUTOTB_TRANSACTION_NUM - 1) begin
                interval[i] = start_timestamp[i + 1] - start_timestamp[i];
                if (interval[i] > interval_max) interval_max = interval[i];
                if (interval[i] < interval_min) interval_min = interval[i];
                interval_total = interval_total + interval[i];
            end
        end

        latency_average = latency_total / AUTOTB_TRANSACTION_NUM;
        if (AUTOTB_TRANSACTION_NUM == 1) begin
            interval_average = 0;
        end else begin
            interval_average = interval_total / (AUTOTB_TRANSACTION_NUM - 1);
        end

        fp = $fopen(`AUTOTB_LAT_RESULT_FILE, "w");

        $fdisplay(fp, "$MAX_LATENCY = \"%0d\"", latency_max);
        $fdisplay(fp, "$MIN_LATENCY = \"%0d\"", latency_min);
        $fdisplay(fp, "$AVER_LATENCY = \"%0d\"", latency_average);
        $fdisplay(fp, "$MAX_THROUGHPUT = \"%0d\"", interval_max);
        $fdisplay(fp, "$MIN_THROUGHPUT = \"%0d\"", interval_min);
        $fdisplay(fp, "$AVER_THROUGHPUT = \"%0d\"", interval_average);
        $fdisplay(fp, "$TOTAL_EXECUTE_TIME = \"%0d\"", total_execute_time);

        $fclose(fp);

        fp = $fopen(`AUTOTB_PER_RESULT_TRANS_FILE, "w");

        $fdisplay(fp, "%20s%16s%16s", "", "latency", "interval");
        if (AUTOTB_TRANSACTION_NUM == 1) begin
            i = 0;
            $fdisplay(fp, "transaction%8d:%16d%16d", i, latency[i], interval[i]);
        end else begin
            for (i = 0; i < AUTOTB_TRANSACTION_NUM; i = i + 1) begin
                if (i < AUTOTB_TRANSACTION_NUM - 1) begin
                    $fdisplay(fp, "transaction%8d:%16d%16d", i, latency[i], interval[i]);
                end else begin
                    $fdisplay(fp, "transaction%8d:%16d               x", i, latency[i]);
                end
            end
        end

        $fclose(fp);
    end
endtask


////////////////////////////////////////////
// Dependence Check
////////////////////////////////////////////

`ifndef POST_SYN

`endif

AESL_deadlock_kernel_monitor_top kernel_monitor_top(
    .kernel_monitor_reset(~AESL_reset),
    .kernel_monitor_clock(AESL_clock));

///////////////////////////////////////////////////////
// dataflow status monitor
///////////////////////////////////////////////////////
dataflow_monitor U_dataflow_monitor(
    .clock(AESL_clock),
    .reset(~rst),
    .finish(all_finish));

`include "fifo_para.vh"

endmodule
