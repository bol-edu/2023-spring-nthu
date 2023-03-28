`timescale 1 ns / 1 ps

module AESL_deadlock_idx0_monitor ( // for module AESL_inst_axi_interfaces
    input wire clock,
    input wire reset,
    input wire [15:0] axis_block_sigs,
    input wire [0:0] inst_idle_sigs,
    input wire [0:0] inst_block_sigs,
    output wire [255:0] axis_block_info,
    output wire block
);

// signal declare
reg [255:0] monitor_axis_block_info;
reg monitor_find_block;
wire pp_is_axis_block;

assign axis_block_info = (monitor_find_block == 1'b1) ? monitor_axis_block_info : 256'h0;
assign block = monitor_find_block;
assign pp_is_axis_block = 1'b0 | axis_block_sigs[0] | axis_block_sigs[1] | axis_block_sigs[2] | axis_block_sigs[3] | axis_block_sigs[4] | axis_block_sigs[5] | axis_block_sigs[6] | axis_block_sigs[7] | axis_block_sigs[8] | axis_block_sigs[9] | axis_block_sigs[10] | axis_block_sigs[11] | axis_block_sigs[12] | axis_block_sigs[13] | axis_block_sigs[14] | axis_block_sigs[15];

always @(posedge clock) begin
    if (reset == 1'b1)
        monitor_find_block <= 1'b0;
    else if (pp_is_axis_block == 1'b1)
        monitor_find_block <= 1'b1;
    else
        monitor_find_block <= 1'b0;
end

always @(posedge clock) begin
    if (reset == 1'b1)
        monitor_axis_block_info[15:0] <= 16'h0;
    else if (axis_block_sigs[0])
        monitor_axis_block_info[15:0] <= ~(16'h1 << 0);
    else
        monitor_axis_block_info[15:0] <= 16'h0;
end
always @(posedge clock) begin
    if (reset == 1'b1)
        monitor_axis_block_info[31:16] <= 16'h0;
    else if (axis_block_sigs[1])
        monitor_axis_block_info[31:16] <= ~(16'h1 << 1);
    else
        monitor_axis_block_info[31:16] <= 16'h0;
end
always @(posedge clock) begin
    if (reset == 1'b1)
        monitor_axis_block_info[47:32] <= 16'h0;
    else if (axis_block_sigs[2])
        monitor_axis_block_info[47:32] <= ~(16'h1 << 2);
    else
        monitor_axis_block_info[47:32] <= 16'h0;
end
always @(posedge clock) begin
    if (reset == 1'b1)
        monitor_axis_block_info[63:48] <= 16'h0;
    else if (axis_block_sigs[3])
        monitor_axis_block_info[63:48] <= ~(16'h1 << 3);
    else
        monitor_axis_block_info[63:48] <= 16'h0;
end
always @(posedge clock) begin
    if (reset == 1'b1)
        monitor_axis_block_info[79:64] <= 16'h0;
    else if (axis_block_sigs[4])
        monitor_axis_block_info[79:64] <= ~(16'h1 << 4);
    else
        monitor_axis_block_info[79:64] <= 16'h0;
end
always @(posedge clock) begin
    if (reset == 1'b1)
        monitor_axis_block_info[95:80] <= 16'h0;
    else if (axis_block_sigs[5])
        monitor_axis_block_info[95:80] <= ~(16'h1 << 5);
    else
        monitor_axis_block_info[95:80] <= 16'h0;
end
always @(posedge clock) begin
    if (reset == 1'b1)
        monitor_axis_block_info[111:96] <= 16'h0;
    else if (axis_block_sigs[6])
        monitor_axis_block_info[111:96] <= ~(16'h1 << 6);
    else
        monitor_axis_block_info[111:96] <= 16'h0;
end
always @(posedge clock) begin
    if (reset == 1'b1)
        monitor_axis_block_info[127:112] <= 16'h0;
    else if (axis_block_sigs[7])
        monitor_axis_block_info[127:112] <= ~(16'h1 << 7);
    else
        monitor_axis_block_info[127:112] <= 16'h0;
end
always @(posedge clock) begin
    if (reset == 1'b1)
        monitor_axis_block_info[143:128] <= 16'h0;
    else if (axis_block_sigs[8])
        monitor_axis_block_info[143:128] <= ~(16'h1 << 8);
    else
        monitor_axis_block_info[143:128] <= 16'h0;
end
always @(posedge clock) begin
    if (reset == 1'b1)
        monitor_axis_block_info[159:144] <= 16'h0;
    else if (axis_block_sigs[9])
        monitor_axis_block_info[159:144] <= ~(16'h1 << 9);
    else
        monitor_axis_block_info[159:144] <= 16'h0;
end
always @(posedge clock) begin
    if (reset == 1'b1)
        monitor_axis_block_info[175:160] <= 16'h0;
    else if (axis_block_sigs[10])
        monitor_axis_block_info[175:160] <= ~(16'h1 << 10);
    else
        monitor_axis_block_info[175:160] <= 16'h0;
end
always @(posedge clock) begin
    if (reset == 1'b1)
        monitor_axis_block_info[191:176] <= 16'h0;
    else if (axis_block_sigs[11])
        monitor_axis_block_info[191:176] <= ~(16'h1 << 11);
    else
        monitor_axis_block_info[191:176] <= 16'h0;
end
always @(posedge clock) begin
    if (reset == 1'b1)
        monitor_axis_block_info[207:192] <= 16'h0;
    else if (axis_block_sigs[12])
        monitor_axis_block_info[207:192] <= ~(16'h1 << 12);
    else
        monitor_axis_block_info[207:192] <= 16'h0;
end
always @(posedge clock) begin
    if (reset == 1'b1)
        monitor_axis_block_info[223:208] <= 16'h0;
    else if (axis_block_sigs[13])
        monitor_axis_block_info[223:208] <= ~(16'h1 << 13);
    else
        monitor_axis_block_info[223:208] <= 16'h0;
end
always @(posedge clock) begin
    if (reset == 1'b1)
        monitor_axis_block_info[239:224] <= 16'h0;
    else if (axis_block_sigs[14])
        monitor_axis_block_info[239:224] <= ~(16'h1 << 14);
    else
        monitor_axis_block_info[239:224] <= 16'h0;
end
always @(posedge clock) begin
    if (reset == 1'b1)
        monitor_axis_block_info[255:240] <= 16'h0;
    else if (axis_block_sigs[15])
        monitor_axis_block_info[255:240] <= ~(16'h1 << 15);
    else
        monitor_axis_block_info[255:240] <= 16'h0;
end

// instant sub module
endmodule
