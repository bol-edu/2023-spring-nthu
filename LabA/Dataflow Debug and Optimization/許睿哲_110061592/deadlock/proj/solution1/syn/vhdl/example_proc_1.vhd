-- ==============================================================
-- RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1 (64-bit)
-- Version: 2022.1
-- Copyright (C) Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity example_proc_1 is
port (
    ap_start : IN STD_LOGIC;
    start_full_n : IN STD_LOGIC;
    start_out : OUT STD_LOGIC;
    start_write : OUT STD_LOGIC;
    A_dout : IN STD_LOGIC_VECTOR (31 downto 0);
    A_empty_n : IN STD_LOGIC;
    A_read : OUT STD_LOGIC;
    data_channel12_din : OUT STD_LOGIC_VECTOR (31 downto 0);
    data_channel12_full_n : IN STD_LOGIC;
    data_channel12_write : OUT STD_LOGIC;
    data_channel23_din : OUT STD_LOGIC_VECTOR (31 downto 0);
    data_channel23_full_n : IN STD_LOGIC;
    data_channel23_write : OUT STD_LOGIC;
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_continue : IN STD_LOGIC );
end;


architecture behav of example_proc_1 is 
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_lv5_0 : STD_LOGIC_VECTOR (4 downto 0) := "00000";
    constant ap_const_lv2_0 : STD_LOGIC_VECTOR (1 downto 0) := "00";
    constant ap_const_boolean_1 : BOOLEAN := true;

attribute shreg_extract : string;
    signal real_start : STD_LOGIC;
    signal start_once_reg : STD_LOGIC := '0';
    signal internal_ap_ready : STD_LOGIC;
    signal proc_1_1_U0_ap_start : STD_LOGIC;
    signal proc_1_1_U0_ap_done : STD_LOGIC;
    signal proc_1_1_U0_ap_continue : STD_LOGIC;
    signal proc_1_1_U0_ap_idle : STD_LOGIC;
    signal proc_1_1_U0_ap_ready : STD_LOGIC;
    signal proc_1_1_U0_start_out : STD_LOGIC;
    signal proc_1_1_U0_start_write : STD_LOGIC;
    signal proc_1_1_U0_A_read : STD_LOGIC;
    signal proc_1_1_U0_data_channel12_din : STD_LOGIC_VECTOR (31 downto 0);
    signal proc_1_1_U0_data_channel12_write : STD_LOGIC;
    signal proc_1_1_U0_data_channel23_din : STD_LOGIC_VECTOR (31 downto 0);
    signal proc_1_1_U0_data_channel23_write : STD_LOGIC;
    signal proc_1_2_U0_ap_start : STD_LOGIC;
    signal proc_1_2_U0_ap_done : STD_LOGIC;
    signal proc_1_2_U0_ap_continue : STD_LOGIC;
    signal proc_1_2_U0_ap_idle : STD_LOGIC;
    signal proc_1_2_U0_ap_ready : STD_LOGIC;
    signal proc_1_2_U0_data_channel12_din : STD_LOGIC_VECTOR (31 downto 0);
    signal proc_1_2_U0_data_channel12_write : STD_LOGIC;
    signal proc_1_2_U0_data_channel23_din : STD_LOGIC_VECTOR (31 downto 0);
    signal proc_1_2_U0_data_channel23_write : STD_LOGIC;
    signal proc_1_2_U0_data_channel121_read : STD_LOGIC;
    signal proc_1_2_U0_data_channel232_read : STD_LOGIC;
    signal data_channel1_full_n : STD_LOGIC;
    signal data_channel1_dout : STD_LOGIC_VECTOR (31 downto 0);
    signal data_channel1_num_data_valid : STD_LOGIC_VECTOR (1 downto 0);
    signal data_channel1_fifo_cap : STD_LOGIC_VECTOR (1 downto 0);
    signal data_channel1_empty_n : STD_LOGIC;
    signal data_channel2_full_n : STD_LOGIC;
    signal data_channel2_dout : STD_LOGIC_VECTOR (31 downto 0);
    signal data_channel2_num_data_valid : STD_LOGIC_VECTOR (1 downto 0);
    signal data_channel2_fifo_cap : STD_LOGIC_VECTOR (1 downto 0);
    signal data_channel2_empty_n : STD_LOGIC;
    signal ap_sync_ready : STD_LOGIC;
    signal start_for_proc_1_2_U0_din : STD_LOGIC_VECTOR (0 downto 0);
    signal start_for_proc_1_2_U0_full_n : STD_LOGIC;
    signal start_for_proc_1_2_U0_dout : STD_LOGIC_VECTOR (0 downto 0);
    signal start_for_proc_1_2_U0_empty_n : STD_LOGIC;
    signal ap_ce_reg : STD_LOGIC;

    component example_proc_1_1 IS
    port (
        ap_clk : IN STD_LOGIC;
        ap_rst : IN STD_LOGIC;
        ap_start : IN STD_LOGIC;
        start_full_n : IN STD_LOGIC;
        ap_done : OUT STD_LOGIC;
        ap_continue : IN STD_LOGIC;
        ap_idle : OUT STD_LOGIC;
        ap_ready : OUT STD_LOGIC;
        start_out : OUT STD_LOGIC;
        start_write : OUT STD_LOGIC;
        A_dout : IN STD_LOGIC_VECTOR (31 downto 0);
        A_empty_n : IN STD_LOGIC;
        A_read : OUT STD_LOGIC;
        data_channel12_din : OUT STD_LOGIC_VECTOR (31 downto 0);
        data_channel12_num_data_valid : IN STD_LOGIC_VECTOR (1 downto 0);
        data_channel12_fifo_cap : IN STD_LOGIC_VECTOR (1 downto 0);
        data_channel12_full_n : IN STD_LOGIC;
        data_channel12_write : OUT STD_LOGIC;
        data_channel23_din : OUT STD_LOGIC_VECTOR (31 downto 0);
        data_channel23_num_data_valid : IN STD_LOGIC_VECTOR (1 downto 0);
        data_channel23_fifo_cap : IN STD_LOGIC_VECTOR (1 downto 0);
        data_channel23_full_n : IN STD_LOGIC;
        data_channel23_write : OUT STD_LOGIC );
    end component;


    component example_proc_1_2 IS
    port (
        ap_clk : IN STD_LOGIC;
        ap_rst : IN STD_LOGIC;
        ap_start : IN STD_LOGIC;
        ap_done : OUT STD_LOGIC;
        ap_continue : IN STD_LOGIC;
        ap_idle : OUT STD_LOGIC;
        ap_ready : OUT STD_LOGIC;
        data_channel12_din : OUT STD_LOGIC_VECTOR (31 downto 0);
        data_channel12_num_data_valid : IN STD_LOGIC_VECTOR (4 downto 0);
        data_channel12_fifo_cap : IN STD_LOGIC_VECTOR (4 downto 0);
        data_channel12_full_n : IN STD_LOGIC;
        data_channel12_write : OUT STD_LOGIC;
        data_channel23_din : OUT STD_LOGIC_VECTOR (31 downto 0);
        data_channel23_num_data_valid : IN STD_LOGIC_VECTOR (1 downto 0);
        data_channel23_fifo_cap : IN STD_LOGIC_VECTOR (1 downto 0);
        data_channel23_full_n : IN STD_LOGIC;
        data_channel23_write : OUT STD_LOGIC;
        data_channel121_dout : IN STD_LOGIC_VECTOR (31 downto 0);
        data_channel121_num_data_valid : IN STD_LOGIC_VECTOR (1 downto 0);
        data_channel121_fifo_cap : IN STD_LOGIC_VECTOR (1 downto 0);
        data_channel121_empty_n : IN STD_LOGIC;
        data_channel121_read : OUT STD_LOGIC;
        data_channel232_dout : IN STD_LOGIC_VECTOR (31 downto 0);
        data_channel232_num_data_valid : IN STD_LOGIC_VECTOR (1 downto 0);
        data_channel232_fifo_cap : IN STD_LOGIC_VECTOR (1 downto 0);
        data_channel232_empty_n : IN STD_LOGIC;
        data_channel232_read : OUT STD_LOGIC );
    end component;


    component example_fifo_w32_d2_S IS
    port (
        clk : IN STD_LOGIC;
        reset : IN STD_LOGIC;
        if_read_ce : IN STD_LOGIC;
        if_write_ce : IN STD_LOGIC;
        if_din : IN STD_LOGIC_VECTOR (31 downto 0);
        if_full_n : OUT STD_LOGIC;
        if_write : IN STD_LOGIC;
        if_dout : OUT STD_LOGIC_VECTOR (31 downto 0);
        if_num_data_valid : OUT STD_LOGIC_VECTOR (1 downto 0);
        if_fifo_cap : OUT STD_LOGIC_VECTOR (1 downto 0);
        if_empty_n : OUT STD_LOGIC;
        if_read : IN STD_LOGIC );
    end component;


    component example_start_for_proc_1_2_U0 IS
    port (
        clk : IN STD_LOGIC;
        reset : IN STD_LOGIC;
        if_read_ce : IN STD_LOGIC;
        if_write_ce : IN STD_LOGIC;
        if_din : IN STD_LOGIC_VECTOR (0 downto 0);
        if_full_n : OUT STD_LOGIC;
        if_write : IN STD_LOGIC;
        if_dout : OUT STD_LOGIC_VECTOR (0 downto 0);
        if_empty_n : OUT STD_LOGIC;
        if_read : IN STD_LOGIC );
    end component;



begin
    proc_1_1_U0 : component example_proc_1_1
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst,
        ap_start => proc_1_1_U0_ap_start,
        start_full_n => start_for_proc_1_2_U0_full_n,
        ap_done => proc_1_1_U0_ap_done,
        ap_continue => proc_1_1_U0_ap_continue,
        ap_idle => proc_1_1_U0_ap_idle,
        ap_ready => proc_1_1_U0_ap_ready,
        start_out => proc_1_1_U0_start_out,
        start_write => proc_1_1_U0_start_write,
        A_dout => A_dout,
        A_empty_n => A_empty_n,
        A_read => proc_1_1_U0_A_read,
        data_channel12_din => proc_1_1_U0_data_channel12_din,
        data_channel12_num_data_valid => data_channel1_num_data_valid,
        data_channel12_fifo_cap => data_channel1_fifo_cap,
        data_channel12_full_n => data_channel1_full_n,
        data_channel12_write => proc_1_1_U0_data_channel12_write,
        data_channel23_din => proc_1_1_U0_data_channel23_din,
        data_channel23_num_data_valid => data_channel2_num_data_valid,
        data_channel23_fifo_cap => data_channel2_fifo_cap,
        data_channel23_full_n => data_channel2_full_n,
        data_channel23_write => proc_1_1_U0_data_channel23_write);

    proc_1_2_U0 : component example_proc_1_2
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst,
        ap_start => proc_1_2_U0_ap_start,
        ap_done => proc_1_2_U0_ap_done,
        ap_continue => proc_1_2_U0_ap_continue,
        ap_idle => proc_1_2_U0_ap_idle,
        ap_ready => proc_1_2_U0_ap_ready,
        data_channel12_din => proc_1_2_U0_data_channel12_din,
        data_channel12_num_data_valid => ap_const_lv5_0,
        data_channel12_fifo_cap => ap_const_lv5_0,
        data_channel12_full_n => data_channel12_full_n,
        data_channel12_write => proc_1_2_U0_data_channel12_write,
        data_channel23_din => proc_1_2_U0_data_channel23_din,
        data_channel23_num_data_valid => ap_const_lv2_0,
        data_channel23_fifo_cap => ap_const_lv2_0,
        data_channel23_full_n => data_channel23_full_n,
        data_channel23_write => proc_1_2_U0_data_channel23_write,
        data_channel121_dout => data_channel1_dout,
        data_channel121_num_data_valid => data_channel1_num_data_valid,
        data_channel121_fifo_cap => data_channel1_fifo_cap,
        data_channel121_empty_n => data_channel1_empty_n,
        data_channel121_read => proc_1_2_U0_data_channel121_read,
        data_channel232_dout => data_channel2_dout,
        data_channel232_num_data_valid => data_channel2_num_data_valid,
        data_channel232_fifo_cap => data_channel2_fifo_cap,
        data_channel232_empty_n => data_channel2_empty_n,
        data_channel232_read => proc_1_2_U0_data_channel232_read);

    data_channel1_U : component example_fifo_w32_d2_S
    port map (
        clk => ap_clk,
        reset => ap_rst,
        if_read_ce => ap_const_logic_1,
        if_write_ce => ap_const_logic_1,
        if_din => proc_1_1_U0_data_channel12_din,
        if_full_n => data_channel1_full_n,
        if_write => proc_1_1_U0_data_channel12_write,
        if_dout => data_channel1_dout,
        if_num_data_valid => data_channel1_num_data_valid,
        if_fifo_cap => data_channel1_fifo_cap,
        if_empty_n => data_channel1_empty_n,
        if_read => proc_1_2_U0_data_channel121_read);

    data_channel2_U : component example_fifo_w32_d2_S
    port map (
        clk => ap_clk,
        reset => ap_rst,
        if_read_ce => ap_const_logic_1,
        if_write_ce => ap_const_logic_1,
        if_din => proc_1_1_U0_data_channel23_din,
        if_full_n => data_channel2_full_n,
        if_write => proc_1_1_U0_data_channel23_write,
        if_dout => data_channel2_dout,
        if_num_data_valid => data_channel2_num_data_valid,
        if_fifo_cap => data_channel2_fifo_cap,
        if_empty_n => data_channel2_empty_n,
        if_read => proc_1_2_U0_data_channel232_read);

    start_for_proc_1_2_U0_U : component example_start_for_proc_1_2_U0
    port map (
        clk => ap_clk,
        reset => ap_rst,
        if_read_ce => ap_const_logic_1,
        if_write_ce => ap_const_logic_1,
        if_din => start_for_proc_1_2_U0_din,
        if_full_n => start_for_proc_1_2_U0_full_n,
        if_write => proc_1_1_U0_start_write,
        if_dout => start_for_proc_1_2_U0_dout,
        if_empty_n => start_for_proc_1_2_U0_empty_n,
        if_read => proc_1_2_U0_ap_ready);





    start_once_reg_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                start_once_reg <= ap_const_logic_0;
            else
                if (((real_start = ap_const_logic_1) and (internal_ap_ready = ap_const_logic_0))) then 
                    start_once_reg <= ap_const_logic_1;
                elsif ((internal_ap_ready = ap_const_logic_1)) then 
                    start_once_reg <= ap_const_logic_0;
                end if; 
            end if;
        end if;
    end process;

    A_read <= proc_1_1_U0_A_read;
    ap_done <= proc_1_2_U0_ap_done;
    ap_idle <= (proc_1_2_U0_ap_idle and proc_1_1_U0_ap_idle);
    ap_ready <= proc_1_1_U0_ap_ready;
    ap_sync_ready <= proc_1_1_U0_ap_ready;
    data_channel12_din <= proc_1_2_U0_data_channel12_din;
    data_channel12_write <= proc_1_2_U0_data_channel12_write;
    data_channel23_din <= proc_1_2_U0_data_channel23_din;
    data_channel23_write <= proc_1_2_U0_data_channel23_write;
    internal_ap_ready <= ap_sync_ready;
    proc_1_1_U0_ap_continue <= ap_const_logic_1;
    proc_1_1_U0_ap_start <= real_start;
    proc_1_2_U0_ap_continue <= ap_continue;
    proc_1_2_U0_ap_start <= start_for_proc_1_2_U0_empty_n;

    real_start_assign_proc : process(ap_start, start_full_n, start_once_reg)
    begin
        if (((start_once_reg = ap_const_logic_0) and (start_full_n = ap_const_logic_0))) then 
            real_start <= ap_const_logic_0;
        else 
            real_start <= ap_start;
        end if; 
    end process;

    start_for_proc_1_2_U0_din <= (0=>ap_const_logic_1, others=>'-');
    start_out <= real_start;

    start_write_assign_proc : process(real_start, start_once_reg)
    begin
        if (((start_once_reg = ap_const_logic_0) and (real_start = ap_const_logic_1))) then 
            start_write <= ap_const_logic_1;
        else 
            start_write <= ap_const_logic_0;
        end if; 
    end process;

end behav;
