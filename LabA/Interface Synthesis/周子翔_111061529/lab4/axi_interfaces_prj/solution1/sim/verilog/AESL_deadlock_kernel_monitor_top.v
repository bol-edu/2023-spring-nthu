`timescale 1 ns / 1 ps

module AESL_deadlock_kernel_monitor_top ( 
    input wire kernel_monitor_clock,
    input wire kernel_monitor_reset
);
wire [15:0] axis_block_sigs;
wire [0:0] inst_idle_sigs;
wire [0:0] inst_block_sigs;
wire kernel_block;

assign axis_block_sigs[0] = ~AESL_inst_axi_interfaces.d_o_0_TDATA_blk_n;
assign axis_block_sigs[1] = ~AESL_inst_axi_interfaces.d_o_1_TDATA_blk_n;
assign axis_block_sigs[2] = ~AESL_inst_axi_interfaces.d_o_2_TDATA_blk_n;
assign axis_block_sigs[3] = ~AESL_inst_axi_interfaces.d_o_3_TDATA_blk_n;
assign axis_block_sigs[4] = ~AESL_inst_axi_interfaces.d_o_4_TDATA_blk_n;
assign axis_block_sigs[5] = ~AESL_inst_axi_interfaces.d_o_5_TDATA_blk_n;
assign axis_block_sigs[6] = ~AESL_inst_axi_interfaces.d_o_6_TDATA_blk_n;
assign axis_block_sigs[7] = ~AESL_inst_axi_interfaces.d_o_7_TDATA_blk_n;
assign axis_block_sigs[8] = ~AESL_inst_axi_interfaces.d_i_0_TDATA_blk_n;
assign axis_block_sigs[9] = ~AESL_inst_axi_interfaces.d_i_1_TDATA_blk_n;
assign axis_block_sigs[10] = ~AESL_inst_axi_interfaces.d_i_2_TDATA_blk_n;
assign axis_block_sigs[11] = ~AESL_inst_axi_interfaces.d_i_3_TDATA_blk_n;
assign axis_block_sigs[12] = ~AESL_inst_axi_interfaces.d_i_4_TDATA_blk_n;
assign axis_block_sigs[13] = ~AESL_inst_axi_interfaces.d_i_5_TDATA_blk_n;
assign axis_block_sigs[14] = ~AESL_inst_axi_interfaces.d_i_6_TDATA_blk_n;
assign axis_block_sigs[15] = ~AESL_inst_axi_interfaces.d_i_7_TDATA_blk_n;

assign inst_block_sigs[0] = 1'b0;

assign inst_idle_sigs[0] = 1'b0;

AESL_deadlock_idx0_monitor AESL_deadlock_idx0_monitor_U (
    .clock(kernel_monitor_clock),
    .reset(kernel_monitor_reset),
    .axis_block_sigs(axis_block_sigs),
    .inst_idle_sigs(inst_idle_sigs),
    .inst_block_sigs(inst_block_sigs),
    .block(kernel_block)
);

initial begin
reg block_delay = 0;
    while(1) begin
        @(posedge kernel_monitor_clock);
    if (kernel_block == 1'b1 && block_delay == 1'b0)
    $display("find kernel block.");
    block_delay = kernel_block;
    end
end

endmodule
