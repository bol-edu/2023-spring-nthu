-- ==============================================================
-- RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1 (64-bit)
-- Version: 2022.1
-- Copyright (C) Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity dct_dct_Pipeline_Xpose_Col_Outer_Loop_Xpose_Col_Inner_Loop is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    col_outbuf_i_address0 : OUT STD_LOGIC_VECTOR (5 downto 0);
    col_outbuf_i_ce0 : OUT STD_LOGIC;
    col_outbuf_i_q0 : IN STD_LOGIC_VECTOR (15 downto 0);
    buf_2d_out_address0 : OUT STD_LOGIC_VECTOR (5 downto 0);
    buf_2d_out_ce0 : OUT STD_LOGIC;
    buf_2d_out_we0 : OUT STD_LOGIC;
    buf_2d_out_d0 : OUT STD_LOGIC_VECTOR (15 downto 0) );
end;


architecture behav of dct_dct_Pipeline_Xpose_Col_Outer_Loop_Xpose_Col_Inner_Loop is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_pp0_stage0 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_boolean_1 : BOOLEAN := true;
    constant ap_const_boolean_0 : BOOLEAN := false;
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_lv4_0 : STD_LOGIC_VECTOR (3 downto 0) := "0000";
    constant ap_const_lv7_0 : STD_LOGIC_VECTOR (6 downto 0) := "0000000";
    constant ap_const_lv7_40 : STD_LOGIC_VECTOR (6 downto 0) := "1000000";
    constant ap_const_lv7_1 : STD_LOGIC_VECTOR (6 downto 0) := "0000001";
    constant ap_const_lv4_1 : STD_LOGIC_VECTOR (3 downto 0) := "0001";
    constant ap_const_lv4_8 : STD_LOGIC_VECTOR (3 downto 0) := "1000";
    constant ap_const_lv3_0 : STD_LOGIC_VECTOR (2 downto 0) := "000";

attribute shreg_extract : string;
    signal ap_CS_fsm : STD_LOGIC_VECTOR (0 downto 0) := "1";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_pp0_stage0 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_pp0_stage0 : signal is "none";
    signal ap_enable_reg_pp0_iter0 : STD_LOGIC;
    signal ap_enable_reg_pp0_iter1 : STD_LOGIC := '0';
    signal ap_enable_reg_pp0_iter2 : STD_LOGIC := '0';
    signal ap_idle_pp0 : STD_LOGIC;
    signal ap_block_state1_pp0_stage0_iter0 : BOOLEAN;
    signal ap_block_state2_pp0_stage0_iter1 : BOOLEAN;
    signal ap_block_state3_pp0_stage0_iter2 : BOOLEAN;
    signal ap_block_pp0_stage0_subdone : BOOLEAN;
    signal icmp_ln61_fu_99_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_condition_exit_pp0_iter0_stage0 : STD_LOGIC;
    signal ap_loop_exit_ready : STD_LOGIC;
    signal ap_ready_int : STD_LOGIC;
    signal ap_block_pp0_stage0_11001 : BOOLEAN;
    signal select_ln61_fu_129_p3 : STD_LOGIC_VECTOR (3 downto 0);
    signal select_ln61_reg_240 : STD_LOGIC_VECTOR (3 downto 0);
    signal trunc_ln61_fu_137_p1 : STD_LOGIC_VECTOR (2 downto 0);
    signal trunc_ln61_reg_245 : STD_LOGIC_VECTOR (2 downto 0);
    signal select_ln61_1_fu_141_p3 : STD_LOGIC_VECTOR (3 downto 0);
    signal select_ln61_1_reg_250 : STD_LOGIC_VECTOR (3 downto 0);
    signal trunc_ln61_1_fu_149_p1 : STD_LOGIC_VECTOR (2 downto 0);
    signal trunc_ln61_1_reg_255 : STD_LOGIC_VECTOR (2 downto 0);
    signal add_ln64_1_fu_205_p2 : STD_LOGIC_VECTOR (5 downto 0);
    signal add_ln64_1_reg_265 : STD_LOGIC_VECTOR (5 downto 0);
    signal zext_ln64_2_fu_200_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal ap_block_pp0_stage0 : BOOLEAN;
    signal zext_ln64_3_fu_211_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal i_fu_42 : STD_LOGIC_VECTOR (3 downto 0);
    signal add_ln63_fu_153_p2 : STD_LOGIC_VECTOR (3 downto 0);
    signal ap_loop_init : STD_LOGIC;
    signal ap_sig_allocacmp_i_load : STD_LOGIC_VECTOR (3 downto 0);
    signal j_fu_46 : STD_LOGIC_VECTOR (3 downto 0);
    signal ap_sig_allocacmp_j_load : STD_LOGIC_VECTOR (3 downto 0);
    signal indvar_flatten13_fu_50 : STD_LOGIC_VECTOR (6 downto 0);
    signal add_ln61_1_fu_105_p2 : STD_LOGIC_VECTOR (6 downto 0);
    signal ap_sig_allocacmp_indvar_flatten13_load : STD_LOGIC_VECTOR (6 downto 0);
    signal icmp_ln63_fu_123_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal add_ln61_fu_117_p2 : STD_LOGIC_VECTOR (3 downto 0);
    signal tmp_1_fu_187_p3 : STD_LOGIC_VECTOR (5 downto 0);
    signal zext_ln64_fu_174_p1 : STD_LOGIC_VECTOR (5 downto 0);
    signal add_ln64_fu_194_p2 : STD_LOGIC_VECTOR (5 downto 0);
    signal tmp_s_fu_177_p3 : STD_LOGIC_VECTOR (5 downto 0);
    signal zext_ln64_1_fu_184_p1 : STD_LOGIC_VECTOR (5 downto 0);
    signal ap_done_reg : STD_LOGIC := '0';
    signal ap_continue_int : STD_LOGIC;
    signal ap_done_int : STD_LOGIC;
    signal ap_loop_exit_ready_pp0_iter1_reg : STD_LOGIC;
    signal ap_NS_fsm : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_enable_pp0 : STD_LOGIC;
    signal ap_start_int : STD_LOGIC;
    signal ap_ce_reg : STD_LOGIC;

    component dct_flow_control_loop_pipe_sequential_init IS
    port (
        ap_clk : IN STD_LOGIC;
        ap_rst : IN STD_LOGIC;
        ap_start : IN STD_LOGIC;
        ap_ready : OUT STD_LOGIC;
        ap_done : OUT STD_LOGIC;
        ap_start_int : OUT STD_LOGIC;
        ap_loop_init : OUT STD_LOGIC;
        ap_ready_int : IN STD_LOGIC;
        ap_loop_exit_ready : IN STD_LOGIC;
        ap_loop_exit_done : IN STD_LOGIC;
        ap_continue_int : OUT STD_LOGIC;
        ap_done_int : IN STD_LOGIC );
    end component;



begin
    flow_control_loop_pipe_sequential_init_U : component dct_flow_control_loop_pipe_sequential_init
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst,
        ap_start => ap_start,
        ap_ready => ap_ready,
        ap_done => ap_done,
        ap_start_int => ap_start_int,
        ap_loop_init => ap_loop_init,
        ap_ready_int => ap_ready_int,
        ap_loop_exit_ready => ap_condition_exit_pp0_iter0_stage0,
        ap_loop_exit_done => ap_done_int,
        ap_continue_int => ap_continue_int,
        ap_done_int => ap_done_int);





    ap_CS_fsm_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_CS_fsm <= ap_ST_fsm_pp0_stage0;
            else
                ap_CS_fsm <= ap_NS_fsm;
            end if;
        end if;
    end process;


    ap_done_reg_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_done_reg <= ap_const_logic_0;
            else
                if ((ap_continue_int = ap_const_logic_1)) then 
                    ap_done_reg <= ap_const_logic_0;
                elsif (((ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_loop_exit_ready_pp0_iter1_reg = ap_const_logic_1))) then 
                    ap_done_reg <= ap_const_logic_1;
                end if; 
            end if;
        end if;
    end process;


    ap_enable_reg_pp0_iter1_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_enable_reg_pp0_iter1 <= ap_const_logic_0;
            else
                if ((ap_const_logic_1 = ap_condition_exit_pp0_iter0_stage0)) then 
                    ap_enable_reg_pp0_iter1 <= ap_const_logic_0;
                elsif (((ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
                    ap_enable_reg_pp0_iter1 <= ap_start_int;
                end if; 
            end if;
        end if;
    end process;


    ap_enable_reg_pp0_iter2_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_enable_reg_pp0_iter2 <= ap_const_logic_0;
            else
                if ((ap_const_boolean_0 = ap_block_pp0_stage0_subdone)) then 
                    ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
                end if; 
            end if;
        end if;
    end process;


    i_fu_42_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                if (((icmp_ln61_fu_99_p2 = ap_const_lv1_0) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1))) then 
                    i_fu_42 <= add_ln63_fu_153_p2;
                elsif ((ap_loop_init = ap_const_logic_1)) then 
                    i_fu_42 <= ap_const_lv4_0;
                end if;
            end if; 
        end if;
    end process;

    indvar_flatten13_fu_50_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                if (((icmp_ln61_fu_99_p2 = ap_const_lv1_0) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1))) then 
                    indvar_flatten13_fu_50 <= add_ln61_1_fu_105_p2;
                elsif ((ap_loop_init = ap_const_logic_1)) then 
                    indvar_flatten13_fu_50 <= ap_const_lv7_0;
                end if;
            end if; 
        end if;
    end process;

    j_fu_46_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                if (((icmp_ln61_fu_99_p2 = ap_const_lv1_0) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1))) then 
                    j_fu_46 <= select_ln61_1_fu_141_p3;
                elsif ((ap_loop_init = ap_const_logic_1)) then 
                    j_fu_46 <= ap_const_lv4_0;
                end if;
            end if; 
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                add_ln64_1_reg_265 <= add_ln64_1_fu_205_p2;
                ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((icmp_ln61_fu_99_p2 = ap_const_lv1_0) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                select_ln61_1_reg_250 <= select_ln61_1_fu_141_p3;
                select_ln61_reg_240 <= select_ln61_fu_129_p3;
                trunc_ln61_1_reg_255 <= trunc_ln61_1_fu_149_p1;
                trunc_ln61_reg_245 <= trunc_ln61_fu_137_p1;
            end if;
        end if;
    end process;

    ap_NS_fsm_assign_proc : process (ap_CS_fsm)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_pp0_stage0 => 
                ap_NS_fsm <= ap_ST_fsm_pp0_stage0;
            when others =>  
                ap_NS_fsm <= "X";
        end case;
    end process;
    add_ln61_1_fu_105_p2 <= std_logic_vector(unsigned(ap_sig_allocacmp_indvar_flatten13_load) + unsigned(ap_const_lv7_1));
    add_ln61_fu_117_p2 <= std_logic_vector(unsigned(ap_sig_allocacmp_j_load) + unsigned(ap_const_lv4_1));
    add_ln63_fu_153_p2 <= std_logic_vector(unsigned(select_ln61_fu_129_p3) + unsigned(ap_const_lv4_1));
    add_ln64_1_fu_205_p2 <= std_logic_vector(unsigned(tmp_s_fu_177_p3) + unsigned(zext_ln64_1_fu_184_p1));
    add_ln64_fu_194_p2 <= std_logic_vector(unsigned(tmp_1_fu_187_p3) + unsigned(zext_ln64_fu_174_p1));
    ap_CS_fsm_pp0_stage0 <= ap_CS_fsm(0);
        ap_block_pp0_stage0 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_pp0_stage0_11001 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_pp0_stage0_subdone <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state1_pp0_stage0_iter0 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state2_pp0_stage0_iter1 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state3_pp0_stage0_iter2 <= not((ap_const_boolean_1 = ap_const_boolean_1));

    ap_condition_exit_pp0_iter0_stage0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter0, ap_block_pp0_stage0_subdone, icmp_ln61_fu_99_p2)
    begin
        if (((icmp_ln61_fu_99_p2 = ap_const_lv1_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            ap_condition_exit_pp0_iter0_stage0 <= ap_const_logic_1;
        else 
            ap_condition_exit_pp0_iter0_stage0 <= ap_const_logic_0;
        end if; 
    end process;


    ap_done_int_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_block_pp0_stage0_subdone, ap_done_reg, ap_loop_exit_ready_pp0_iter1_reg)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_loop_exit_ready_pp0_iter1_reg = ap_const_logic_1))) then 
            ap_done_int <= ap_const_logic_1;
        else 
            ap_done_int <= ap_done_reg;
        end if; 
    end process;

    ap_enable_pp0 <= (ap_idle_pp0 xor ap_const_logic_1);
    ap_enable_reg_pp0_iter0 <= ap_start_int;

    ap_idle_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_idle_pp0, ap_start_int)
    begin
        if (((ap_idle_pp0 = ap_const_logic_1) and (ap_start_int = ap_const_logic_0) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            ap_idle <= ap_const_logic_1;
        else 
            ap_idle <= ap_const_logic_0;
        end if; 
    end process;


    ap_idle_pp0_assign_proc : process(ap_enable_reg_pp0_iter0, ap_enable_reg_pp0_iter1, ap_enable_reg_pp0_iter2)
    begin
        if (((ap_enable_reg_pp0_iter2 = ap_const_logic_0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_0) and (ap_enable_reg_pp0_iter0 = ap_const_logic_0))) then 
            ap_idle_pp0 <= ap_const_logic_1;
        else 
            ap_idle_pp0 <= ap_const_logic_0;
        end if; 
    end process;

    ap_loop_exit_ready <= ap_condition_exit_pp0_iter0_stage0;

    ap_ready_int_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter0, ap_block_pp0_stage0_subdone)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            ap_ready_int <= ap_const_logic_1;
        else 
            ap_ready_int <= ap_const_logic_0;
        end if; 
    end process;


    ap_sig_allocacmp_i_load_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_block_pp0_stage0, i_fu_42, ap_loop_init)
    begin
        if (((ap_loop_init = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_pp0_stage0) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            ap_sig_allocacmp_i_load <= ap_const_lv4_0;
        else 
            ap_sig_allocacmp_i_load <= i_fu_42;
        end if; 
    end process;


    ap_sig_allocacmp_indvar_flatten13_load_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_block_pp0_stage0, ap_loop_init, indvar_flatten13_fu_50)
    begin
        if (((ap_loop_init = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_pp0_stage0) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            ap_sig_allocacmp_indvar_flatten13_load <= ap_const_lv7_0;
        else 
            ap_sig_allocacmp_indvar_flatten13_load <= indvar_flatten13_fu_50;
        end if; 
    end process;


    ap_sig_allocacmp_j_load_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_block_pp0_stage0, ap_loop_init, j_fu_46)
    begin
        if (((ap_loop_init = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_pp0_stage0) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            ap_sig_allocacmp_j_load <= ap_const_lv4_0;
        else 
            ap_sig_allocacmp_j_load <= j_fu_46;
        end if; 
    end process;

    buf_2d_out_address0 <= zext_ln64_3_fu_211_p1(6 - 1 downto 0);

    buf_2d_out_ce0_assign_proc : process(ap_enable_reg_pp0_iter2, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter2 = ap_const_logic_1))) then 
            buf_2d_out_ce0 <= ap_const_logic_1;
        else 
            buf_2d_out_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    buf_2d_out_d0 <= col_outbuf_i_q0;

    buf_2d_out_we0_assign_proc : process(ap_enable_reg_pp0_iter2, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter2 = ap_const_logic_1))) then 
            buf_2d_out_we0 <= ap_const_logic_1;
        else 
            buf_2d_out_we0 <= ap_const_logic_0;
        end if; 
    end process;

    col_outbuf_i_address0 <= zext_ln64_2_fu_200_p1(6 - 1 downto 0);

    col_outbuf_i_ce0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            col_outbuf_i_ce0 <= ap_const_logic_1;
        else 
            col_outbuf_i_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    icmp_ln61_fu_99_p2 <= "1" when (ap_sig_allocacmp_indvar_flatten13_load = ap_const_lv7_40) else "0";
    icmp_ln63_fu_123_p2 <= "1" when (ap_sig_allocacmp_i_load = ap_const_lv4_8) else "0";
    select_ln61_1_fu_141_p3 <= 
        add_ln61_fu_117_p2 when (icmp_ln63_fu_123_p2(0) = '1') else 
        ap_sig_allocacmp_j_load;
    select_ln61_fu_129_p3 <= 
        ap_const_lv4_0 when (icmp_ln63_fu_123_p2(0) = '1') else 
        ap_sig_allocacmp_i_load;
    tmp_1_fu_187_p3 <= (trunc_ln61_reg_245 & ap_const_lv3_0);
    tmp_s_fu_177_p3 <= (trunc_ln61_1_reg_255 & ap_const_lv3_0);
    trunc_ln61_1_fu_149_p1 <= select_ln61_1_fu_141_p3(3 - 1 downto 0);
    trunc_ln61_fu_137_p1 <= select_ln61_fu_129_p3(3 - 1 downto 0);
    zext_ln64_1_fu_184_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(select_ln61_reg_240),6));
    zext_ln64_2_fu_200_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(add_ln64_fu_194_p2),64));
    zext_ln64_3_fu_211_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(add_ln64_1_reg_265),64));
    zext_ln64_fu_174_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(select_ln61_1_reg_250),6));
end behav;
