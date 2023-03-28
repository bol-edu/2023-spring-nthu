// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1 (64-bit)
// Tool Version Limit: 2022.04
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================

`timescale 1 ns / 1 ps

`define TV_IN_d_i_2_TDATA "../tv/cdatafile/c.axi_interfaces.autotvin_d_i_2.dat"

`define AUTOTB_TRANSACTION_NUM 1

module AESL_axi_s_d_i_2 (
    input clk,
    input reset,
    output [16 - 1:0] TRAN_d_i_2_TDATA,
    output TRAN_d_i_2_TVALID,
    input TRAN_d_i_2_TREADY,
    input ready,
    input done,
    output [31:0] transaction);

    wire TRAN_d_i_2_TVALID_temp;
    wire d_i_2_TDATA_full;
    wire d_i_2_TDATA_empty;
    reg d_i_2_TDATA_write_en;
    reg [16 - 1:0] d_i_2_TDATA_write_data;
    reg d_i_2_TDATA_read_en;
    wire [16 - 1:0] d_i_2_TDATA_read_data;
    
    fifo #(4, 16) fifo_d_i_2_TDATA (
        .reset(1'b0),
        .write_clock(clk),
        .write_en(d_i_2_TDATA_write_en),
        .write_data(d_i_2_TDATA_write_data),
        .read_clock(clk),
        .read_en(d_i_2_TDATA_read_en),
        .read_data(d_i_2_TDATA_read_data),
        .full(d_i_2_TDATA_full),
        .empty(d_i_2_TDATA_empty));
    
    always @ (*) begin
        d_i_2_TDATA_write_en <= 0;
        d_i_2_TDATA_read_en <= TRAN_d_i_2_TREADY & TRAN_d_i_2_TVALID;
    end
    
    assign TRAN_d_i_2_TDATA = d_i_2_TDATA_read_data;
    assign TRAN_d_i_2_TVALID = TRAN_d_i_2_TVALID_temp;

    
    assign TRAN_d_i_2_TVALID_temp = ~(d_i_2_TDATA_empty);
    
    function is_blank_char(input [7:0] in_char);
        if (in_char == " " || in_char == "\011" || in_char == "\012" || in_char == "\015") begin
            is_blank_char = 1;
        end else begin
            is_blank_char = 0;
        end
    endfunction
    
    function [127:0] read_token(input integer fp);
        integer ret;
        begin
            read_token = "";
                    ret = 0;
                    ret = $fscanf(fp,"%s",read_token);
        end
    endfunction
    
    function [127:0] rm_0x(input [127:0] token);
        reg [127:0] token_tmp;
        integer i;
        begin
            token_tmp = "";
            for (i = 0; token[15:0] != "0x"; token = token >> 8) begin
                token_tmp = (token[7:0] << (8 * i)) | token_tmp;
                i = i + 1;
            end
            rm_0x = token_tmp;
        end
    endfunction
    
    reg [31:0] transaction_load_d_i_2_TDATA;
    
    assign transaction = transaction_load_d_i_2_TDATA;
    
    initial begin : AXI_stream_driver_d_i_2_TDATA
        integer fp;
        reg [127:0] token;
        reg [16 - 1:0] data;
        reg [127:0] data_integer;
        reg [8 * 5:1] str;
        integer ret;
        
        transaction_load_d_i_2_TDATA = 0;
        fifo_d_i_2_TDATA.clear();
        wait (reset === 1);
        fp = $fopen(`TV_IN_d_i_2_TDATA, "r");
        if (fp == 0) begin
            $display("ERROR: Failed to open file \"%s\"!", `TV_IN_d_i_2_TDATA);
            $finish;
        end
        token = read_token(fp);
        if (token != "[[[runtime]]]") begin
            $display("ERROR: token %s != [[[runtime]]]", token);
            $finish;
        end
        token = read_token(fp); // read 1st "[[transaction]]"
        forever begin
            @ (negedge clk);
            if (ready == 1) begin
                if (token != "[[[/runtime]]]") begin
                    if (token != "[[transaction]]") begin
                        $display("ERROR: token %s != [[[transaction]]]", token);
                        $finish;
                    end
                    token = read_token(fp); // skip transaction number
                    fifo_d_i_2_TDATA.clear();
                    token = read_token(fp);
                    while (token != "[[/transaction]]") begin
                        if (fifo_d_i_2_TDATA.full) begin
                            $display("ERROR: FIFO is full");
                            $finish;
                        end
                        ret = $sscanf(rm_0x(token), "%x", data_integer);
                        data = data_integer;
                        fifo_d_i_2_TDATA.push(data);
                        token = read_token(fp);
                    end
                    token = read_token(fp);
                end else begin
                    if (fp != 0) begin
                        $fclose(fp);
                        fp = 0;
                    end
                end
                transaction_load_d_i_2_TDATA = transaction_load_d_i_2_TDATA + 1;
            end
        end
    end

endmodule
