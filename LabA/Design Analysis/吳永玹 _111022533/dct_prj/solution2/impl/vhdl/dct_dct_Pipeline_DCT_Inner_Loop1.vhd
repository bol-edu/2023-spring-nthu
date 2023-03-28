-- ==============================================================
-- RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1 (64-bit)
-- Version: 2022.1
-- Copyright (C) Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity dct_dct_Pipeline_DCT_Inner_Loop1 is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    zext_ln21_1 : IN STD_LOGIC_VECTOR (5 downto 0);
    zext_ln24_1 : IN STD_LOGIC_VECTOR (5 downto 0);
    col_inbuf_address0 : OUT STD_LOGIC_VECTOR (5 downto 0);
    col_inbuf_ce0 : OUT STD_LOGIC;
    col_inbuf_q0 : IN STD_LOGIC_VECTOR (15 downto 0);
    tmp_2_out : OUT STD_LOGIC_VECTOR (28 downto 0);
    tmp_2_out_ap_vld : OUT STD_LOGIC;
    dct_coeff_table_address0 : OUT STD_LOGIC_VECTOR (5 downto 0);
    dct_coeff_table_ce0 : OUT STD_LOGIC;
    dct_coeff_table_q0 : IN STD_LOGIC_VECTOR (14 downto 0) );
end;


architecture behav of dct_dct_Pipeline_DCT_Inner_Loop1 is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_pp0_stage0 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_boolean_1 : BOOLEAN := true;
    constant ap_const_boolean_0 : BOOLEAN := false;
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_lv4_0 : STD_LOGIC_VECTOR (3 downto 0) := "0000";
    constant ap_const_lv4_8 : STD_LOGIC_VECTOR (3 downto 0) := "1000";
    constant ap_const_lv4_1 : STD_LOGIC_VECTOR (3 downto 0) := "0001";

attribute shreg_extract : string;
    signal ap_CS_fsm : STD_LOGIC_VECTOR (0 downto 0) := "1";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_pp0_stage0 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_pp0_stage0 : signal is "none";
    signal ap_enable_reg_pp0_iter0 : STD_LOGIC;
    signal ap_enable_reg_pp0_iter1 : STD_LOGIC := '0';
    signal ap_enable_reg_pp0_iter2 : STD_LOGIC := '0';
    signal ap_enable_reg_pp0_iter3 : STD_LOGIC := '0';
    signal ap_enable_reg_pp0_iter4 : STD_LOGIC := '0';
    signal ap_idle_pp0 : STD_LOGIC;
    signal ap_block_state1_pp0_stage0_iter0 : BOOLEAN;
    signal ap_block_state2_pp0_stage0_iter1 : BOOLEAN;
    signal ap_block_state3_pp0_stage0_iter2 : BOOLEAN;
    signal ap_block_state4_pp0_stage0_iter3 : BOOLEAN;
    signal ap_block_state5_pp0_stage0_iter4 : BOOLEAN;
    signal ap_block_pp0_stage0_subdone : BOOLEAN;
    signal icmp_ln20_fu_106_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_condition_exit_pp0_iter0_stage0 : STD_LOGIC;
    signal ap_loop_exit_ready : STD_LOGIC;
    signal ap_ready_int : STD_LOGIC;
    signal ap_block_pp0_stage0_11001 : BOOLEAN;
    signal icmp_ln20_reg_192 : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln20_reg_192_pp0_iter1_reg : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln20_reg_192_pp0_iter2_reg : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_condition_exit_pp0_iter3_stage0 : STD_LOGIC;
    signal zext_ln21_2_fu_128_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal ap_block_pp0_stage0 : BOOLEAN;
    signal zext_ln22_fu_139_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal tmp_fu_40 : STD_LOGIC_VECTOR (31 downto 0);
    signal grp_fu_169_p3 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_sig_allocacmp_tmp_1 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_loop_init : STD_LOGIC;
    signal n_fu_44 : STD_LOGIC_VECTOR (3 downto 0);
    signal add_ln20_fu_112_p2 : STD_LOGIC_VECTOR (3 downto 0);
    signal ap_sig_allocacmp_n_1 : STD_LOGIC_VECTOR (3 downto 0);
    signal ap_block_pp0_stage0_01001 : BOOLEAN;
    signal zext_ln21_fu_118_p1 : STD_LOGIC_VECTOR (5 downto 0);
    signal add_ln21_fu_122_p2 : STD_LOGIC_VECTOR (5 downto 0);
    signal add_ln22_fu_133_p2 : STD_LOGIC_VECTOR (5 downto 0);
    signal ap_done_reg : STD_LOGIC := '0';
    signal ap_continue_int : STD_LOGIC;
    signal ap_done_int : STD_LOGIC;
    signal ap_loop_exit_ready_pp0_iter1_reg : STD_LOGIC;
    signal ap_loop_exit_ready_pp0_iter2_reg : STD_LOGIC;
    signal ap_loop_exit_ready_pp0_iter3_reg : STD_LOGIC;
    signal ap_NS_fsm : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_enable_pp0 : STD_LOGIC;
    signal ap_start_int : STD_LOGIC;
    signal ap_ce_reg : STD_LOGIC;

    component dct_mac_muladd_16s_15s_32s_32_4_1 IS
    generic (
        ID : INTEGER;
        NUM_STAGE : INTEGER;
        din0_WIDTH : INTEGER;
        din1_WIDTH : INTEGER;
        din2_WIDTH : INTEGER;
        dout_WIDTH : INTEGER );
    port (
        clk : IN STD_LOGIC;
        reset : IN STD_LOGIC;
        din0 : IN STD_LOGIC_VECTOR (15 downto 0);
        din1 : IN STD_LOGIC_VECTOR (14 downto 0);
        din2 : IN STD_LOGIC_VECTOR (31 downto 0);
        ce : IN STD_LOGIC;
        dout : OUT STD_LOGIC_VECTOR (31 downto 0) );
    end component;


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
    mac_muladd_16s_15s_32s_32_4_1_U12 : component dct_mac_muladd_16s_15s_32s_32_4_1
    generic map (
        ID => 1,
        NUM_STAGE => 4,
        din0_WIDTH => 16,
        din1_WIDTH => 15,
        din2_WIDTH => 32,
        dout_WIDTH => 32)
    port map (
        clk => ap_clk,
        reset => ap_rst,
        din0 => col_inbuf_q0,
        din1 => dct_coeff_table_q0,
        din2 => ap_sig_allocacmp_tmp_1,
        ce => ap_const_logic_1,
        dout => grp_fu_169_p3);

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
                elsif (((ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_loop_exit_ready_pp0_iter3_reg = ap_const_logic_1))) then 
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
                if (((ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
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


    ap_enable_reg_pp0_iter3_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_enable_reg_pp0_iter3 <= ap_const_logic_0;
            else
                if ((ap_const_boolean_0 = ap_block_pp0_stage0_subdone)) then 
                    ap_enable_reg_pp0_iter3 <= ap_enable_reg_pp0_iter2;
                end if; 
            end if;
        end if;
    end process;


    ap_enable_reg_pp0_iter4_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_enable_reg_pp0_iter4 <= ap_const_logic_0;
            else
                if ((ap_const_logic_1 = ap_condition_exit_pp0_iter3_stage0)) then 
                    ap_enable_reg_pp0_iter4 <= ap_const_logic_0;
                elsif ((ap_const_boolean_0 = ap_block_pp0_stage0_subdone)) then 
                    ap_enable_reg_pp0_iter4 <= ap_enable_reg_pp0_iter3;
                end if; 
            end if;
        end if;
    end process;


    n_fu_44_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                if (((icmp_ln20_fu_106_p2 = ap_const_lv1_0) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1))) then 
                    n_fu_44 <= add_ln20_fu_112_p2;
                elsif ((ap_loop_init = ap_const_logic_1)) then 
                    n_fu_44 <= ap_const_lv4_0;
                end if;
            end if; 
        end if;
    end process;

    tmp_fu_40_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_boolean_0 = ap_block_pp0_stage0_11001)) then
                if (((ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_loop_init = ap_const_logic_1))) then 
                    tmp_fu_40 <= ap_const_lv32_0;
                elsif ((ap_enable_reg_pp0_iter4 = ap_const_logic_1)) then 
                    tmp_fu_40 <= grp_fu_169_p3;
                end if;
            end if; 
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
                ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
                icmp_ln20_reg_192 <= icmp_ln20_fu_106_p2;
                icmp_ln20_reg_192_pp0_iter1_reg <= icmp_ln20_reg_192;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_boolean_0 = ap_block_pp0_stage0_11001)) then
                ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
                icmp_ln20_reg_192_pp0_iter2_reg <= icmp_ln20_reg_192_pp0_iter1_reg;
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
    add_ln20_fu_112_p2 <= std_logic_vector(unsigned(ap_sig_allocacmp_n_1) + unsigned(ap_const_lv4_1));
    add_ln21_fu_122_p2 <= std_logic_vector(unsigned(zext_ln21_1) + unsigned(zext_ln21_fu_118_p1));
    add_ln22_fu_133_p2 <= std_logic_vector(unsigned(zext_ln24_1) + unsigned(zext_ln21_fu_118_p1));
    ap_CS_fsm_pp0_stage0 <= ap_CS_fsm(0);
        ap_block_pp0_stage0 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_pp0_stage0_01001 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_pp0_stage0_11001 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_pp0_stage0_subdone <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state1_pp0_stage0_iter0 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state2_pp0_stage0_iter1 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state3_pp0_stage0_iter2 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state4_pp0_stage0_iter3 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state5_pp0_stage0_iter4 <= not((ap_const_boolean_1 = ap_const_boolean_1));

    ap_condition_exit_pp0_iter0_stage0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter0, ap_block_pp0_stage0_subdone, icmp_ln20_fu_106_p2)
    begin
        if (((icmp_ln20_fu_106_p2 = ap_const_lv1_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            ap_condition_exit_pp0_iter0_stage0 <= ap_const_logic_1;
        else 
            ap_condition_exit_pp0_iter0_stage0 <= ap_const_logic_0;
        end if; 
    end process;


    ap_condition_exit_pp0_iter3_stage0_assign_proc : process(ap_enable_reg_pp0_iter3, ap_block_pp0_stage0_subdone, icmp_ln20_reg_192_pp0_iter2_reg)
    begin
        if (((icmp_ln20_reg_192_pp0_iter2_reg = ap_const_lv1_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_enable_reg_pp0_iter3 = ap_const_logic_1))) then 
            ap_condition_exit_pp0_iter3_stage0 <= ap_const_logic_1;
        else 
            ap_condition_exit_pp0_iter3_stage0 <= ap_const_logic_0;
        end if; 
    end process;


    ap_done_int_assign_proc : process(ap_block_pp0_stage0_subdone, ap_done_reg, ap_loop_exit_ready_pp0_iter3_reg)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_loop_exit_ready_pp0_iter3_reg = ap_const_logic_1))) then 
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


    ap_idle_pp0_assign_proc : process(ap_enable_reg_pp0_iter0, ap_enable_reg_pp0_iter1, ap_enable_reg_pp0_iter2, ap_enable_reg_pp0_iter3, ap_enable_reg_pp0_iter4)
    begin
        if (((ap_enable_reg_pp0_iter4 = ap_const_logic_0) and (ap_enable_reg_pp0_iter3 = ap_const_logic_0) and (ap_enable_reg_pp0_iter2 = ap_const_logic_0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_0) and (ap_enable_reg_pp0_iter0 = ap_const_logic_0))) then 
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


    ap_sig_allocacmp_n_1_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_block_pp0_stage0, ap_loop_init, n_fu_44)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_loop_init = ap_const_logic_1))) then 
            ap_sig_allocacmp_n_1 <= ap_const_lv4_0;
        else 
            ap_sig_allocacmp_n_1 <= n_fu_44;
        end if; 
    end process;


    ap_sig_allocacmp_tmp_1_assign_proc : process(ap_enable_reg_pp0_iter4, ap_block_pp0_stage0, tmp_fu_40, grp_fu_169_p3)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0) and (ap_enable_reg_pp0_iter4 = ap_const_logic_1))) then 
            ap_sig_allocacmp_tmp_1 <= grp_fu_169_p3;
        else 
            ap_sig_allocacmp_tmp_1 <= tmp_fu_40;
        end if; 
    end process;

    col_inbuf_address0 <= zext_ln22_fu_139_p1(6 - 1 downto 0);

    col_inbuf_ce0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter0, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            col_inbuf_ce0 <= ap_const_logic_1;
        else 
            col_inbuf_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    dct_coeff_table_address0 <= zext_ln21_2_fu_128_p1(6 - 1 downto 0);

    dct_coeff_table_ce0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter0, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            dct_coeff_table_ce0 <= ap_const_logic_1;
        else 
            dct_coeff_table_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    icmp_ln20_fu_106_p2 <= "1" when (ap_sig_allocacmp_n_1 = ap_const_lv4_8) else "0";
    tmp_2_out <= ap_sig_allocacmp_tmp_1(29 - 1 downto 0);

    tmp_2_out_ap_vld_assign_proc : process(ap_block_pp0_stage0_11001, icmp_ln20_reg_192_pp0_iter2_reg)
    begin
        if (((icmp_ln20_reg_192_pp0_iter2_reg = ap_const_lv1_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001))) then 
            tmp_2_out_ap_vld <= ap_const_logic_1;
        else 
            tmp_2_out_ap_vld <= ap_const_logic_0;
        end if; 
    end process;

    zext_ln21_2_fu_128_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(add_ln21_fu_122_p2),64));
    zext_ln21_fu_118_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(ap_sig_allocacmp_n_1),6));
    zext_ln22_fu_139_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(add_ln22_fu_133_p2),64));
end behav;
