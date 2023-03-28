-- ==============================================================
-- RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1 (64-bit)
-- Version: 2022.1
-- Copyright (C) Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity diamond_funcD is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_continue : IN STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    in1_address0 : OUT STD_LOGIC_VECTOR (6 downto 0);
    in1_ce0 : OUT STD_LOGIC;
    in1_q0 : IN STD_LOGIC_VECTOR (7 downto 0);
    in1_address1 : OUT STD_LOGIC_VECTOR (6 downto 0);
    in1_ce1 : OUT STD_LOGIC;
    in1_q1 : IN STD_LOGIC_VECTOR (7 downto 0);
    in2_address0 : OUT STD_LOGIC_VECTOR (6 downto 0);
    in2_ce0 : OUT STD_LOGIC;
    in2_q0 : IN STD_LOGIC_VECTOR (6 downto 0);
    in2_address1 : OUT STD_LOGIC_VECTOR (6 downto 0);
    in2_ce1 : OUT STD_LOGIC;
    in2_q1 : IN STD_LOGIC_VECTOR (6 downto 0);
    vecOut_address0 : OUT STD_LOGIC_VECTOR (6 downto 0);
    vecOut_ce0 : OUT STD_LOGIC;
    vecOut_we0 : OUT STD_LOGIC;
    vecOut_d0 : OUT STD_LOGIC_VECTOR (7 downto 0);
    vecOut_address1 : OUT STD_LOGIC_VECTOR (6 downto 0);
    vecOut_ce1 : OUT STD_LOGIC;
    vecOut_we1 : OUT STD_LOGIC;
    vecOut_d1 : OUT STD_LOGIC_VECTOR (7 downto 0) );
end;


architecture behav of diamond_funcD is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_state1 : STD_LOGIC_VECTOR (1 downto 0) := "01";
    constant ap_ST_fsm_pp0_stage0 : STD_LOGIC_VECTOR (1 downto 0) := "10";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_boolean_1 : BOOLEAN := true;
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_lv32_1 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000001";
    constant ap_const_boolean_0 : BOOLEAN := false;
    constant ap_const_lv7_0 : STD_LOGIC_VECTOR (6 downto 0) := "0000000";
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv7_1 : STD_LOGIC_VECTOR (6 downto 0) := "0000001";
    constant ap_const_lv7_2 : STD_LOGIC_VECTOR (6 downto 0) := "0000010";
    constant ap_const_lv7_64 : STD_LOGIC_VECTOR (6 downto 0) := "1100100";

attribute shreg_extract : string;
    signal ap_done_reg : STD_LOGIC := '0';
    signal ap_CS_fsm : STD_LOGIC_VECTOR (1 downto 0) := "01";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_state1 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state1 : signal is "none";
    signal icmp_ln67_fu_153_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_CS_fsm_pp0_stage0 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_pp0_stage0 : signal is "none";
    signal ap_enable_reg_pp0_iter0 : STD_LOGIC;
    signal ap_block_state2_pp0_stage0_iter0 : BOOLEAN;
    signal ap_block_state3_pp0_stage0_iter1 : BOOLEAN;
    signal ap_block_pp0_stage0_11001 : BOOLEAN;
    signal i1_reg_115 : STD_LOGIC_VECTOR (6 downto 0);
    signal zext_ln67_fu_129_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal zext_ln67_reg_191 : STD_LOGIC_VECTOR (63 downto 0);
    signal zext_ln71_fu_141_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal zext_ln71_reg_206 : STD_LOGIC_VECTOR (63 downto 0);
    signal i_fu_147_p2 : STD_LOGIC_VECTOR (6 downto 0);
    signal i_reg_221 : STD_LOGIC_VECTOR (6 downto 0);
    signal icmp_ln67_reg_226 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_enable_reg_pp0_iter1 : STD_LOGIC := '0';
    signal ap_block_state1 : BOOLEAN;
    signal ap_block_pp0_stage0_subdone : BOOLEAN;
    signal ap_phi_mux_i1_phi_fu_119_p6 : STD_LOGIC_VECTOR (6 downto 0);
    signal ap_block_pp0_stage0 : BOOLEAN;
    signal or_ln67_fu_135_p2 : STD_LOGIC_VECTOR (6 downto 0);
    signal shl_ln_fu_159_p3 : STD_LOGIC_VECTOR (7 downto 0);
    signal shl_ln71_1_fu_174_p3 : STD_LOGIC_VECTOR (7 downto 0);
    signal ap_NS_fsm : STD_LOGIC_VECTOR (1 downto 0);
    signal ap_ST_fsm_state1_blk : STD_LOGIC;
    signal ap_idle_pp0_0to0 : STD_LOGIC;
    signal ap_reset_idle_pp0 : STD_LOGIC;
    signal ap_idle_pp0 : STD_LOGIC;
    signal ap_enable_pp0 : STD_LOGIC;
    signal ap_condition_113 : BOOLEAN;
    signal ap_ce_reg : STD_LOGIC;


begin




    ap_CS_fsm_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_CS_fsm <= ap_ST_fsm_state1;
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
                if ((ap_continue = ap_const_logic_1)) then 
                    ap_done_reg <= ap_const_logic_0;
                elsif (((ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (icmp_ln67_reg_226 = ap_const_lv1_0) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
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
                    ap_enable_reg_pp0_iter1 <= ap_start;
                elsif ((not(((ap_start = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
                    ap_enable_reg_pp0_iter1 <= ap_const_logic_0;
                end if; 
            end if;
        end if;
    end process;


    i1_reg_115_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (icmp_ln67_reg_226 = ap_const_lv1_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
                i1_reg_115 <= i_reg_221;
            elsif (((not(((ap_start = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_const_logic_1 = ap_CS_fsm_state1)) or ((ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (icmp_ln67_reg_226 = ap_const_lv1_0) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0)))) then 
                i1_reg_115 <= ap_const_lv7_0;
            end if; 
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                i_reg_221 <= i_fu_147_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                icmp_ln67_reg_226 <= icmp_ln67_fu_153_p2;
                    zext_ln67_reg_191(6 downto 0) <= zext_ln67_fu_129_p1(6 downto 0);
                    zext_ln71_reg_206(6 downto 1) <= zext_ln71_fu_141_p1(6 downto 1);
            end if;
        end if;
    end process;
    zext_ln67_reg_191(63 downto 7) <= "000000000000000000000000000000000000000000000000000000000";
    zext_ln71_reg_206(0) <= '1';
    zext_ln71_reg_206(63 downto 7) <= "000000000000000000000000000000000000000000000000000000000";

    ap_NS_fsm_assign_proc : process (ap_start, ap_done_reg, ap_CS_fsm, ap_CS_fsm_state1, ap_block_pp0_stage0_subdone, ap_reset_idle_pp0)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_state1 => 
                if ((not(((ap_start = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then
                    ap_NS_fsm <= ap_ST_fsm_pp0_stage0;
                else
                    ap_NS_fsm <= ap_ST_fsm_state1;
                end if;
            when ap_ST_fsm_pp0_stage0 => 
                if ((ap_reset_idle_pp0 = ap_const_logic_0)) then
                    ap_NS_fsm <= ap_ST_fsm_pp0_stage0;
                elsif (((ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_reset_idle_pp0 = ap_const_logic_1))) then
                    ap_NS_fsm <= ap_ST_fsm_state1;
                else
                    ap_NS_fsm <= ap_ST_fsm_pp0_stage0;
                end if;
            when others =>  
                ap_NS_fsm <= "XX";
        end case;
    end process;
    ap_CS_fsm_pp0_stage0 <= ap_CS_fsm(1);
    ap_CS_fsm_state1 <= ap_CS_fsm(0);

    ap_ST_fsm_state1_blk_assign_proc : process(ap_start, ap_done_reg)
    begin
        if (((ap_start = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) then 
            ap_ST_fsm_state1_blk <= ap_const_logic_1;
        else 
            ap_ST_fsm_state1_blk <= ap_const_logic_0;
        end if; 
    end process;

        ap_block_pp0_stage0 <= not((ap_const_boolean_1 = ap_const_boolean_1));

    ap_block_pp0_stage0_11001_assign_proc : process(ap_done_reg)
    begin
                ap_block_pp0_stage0_11001 <= (ap_done_reg = ap_const_logic_1);
    end process;


    ap_block_pp0_stage0_subdone_assign_proc : process(ap_done_reg)
    begin
                ap_block_pp0_stage0_subdone <= (ap_done_reg = ap_const_logic_1);
    end process;


    ap_block_state1_assign_proc : process(ap_start, ap_done_reg)
    begin
                ap_block_state1 <= ((ap_start = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1));
    end process;

        ap_block_state2_pp0_stage0_iter0 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state3_pp0_stage0_iter1 <= not((ap_const_boolean_1 = ap_const_boolean_1));

    ap_condition_113_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, ap_block_pp0_stage0)
    begin
                ap_condition_113 <= ((ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_pp0_stage0) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0));
    end process;


    ap_done_assign_proc : process(ap_done_reg, ap_CS_fsm_pp0_stage0, ap_block_pp0_stage0_11001, icmp_ln67_reg_226, ap_enable_reg_pp0_iter1)
    begin
        if (((ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (icmp_ln67_reg_226 = ap_const_lv1_0) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            ap_done <= ap_const_logic_1;
        else 
            ap_done <= ap_done_reg;
        end if; 
    end process;

    ap_enable_pp0 <= (ap_idle_pp0 xor ap_const_logic_1);
    ap_enable_reg_pp0_iter0 <= ap_start;

    ap_idle_assign_proc : process(ap_start, ap_CS_fsm_state1)
    begin
        if (((ap_start = ap_const_logic_0) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            ap_idle <= ap_const_logic_1;
        else 
            ap_idle <= ap_const_logic_0;
        end if; 
    end process;


    ap_idle_pp0_assign_proc : process(ap_enable_reg_pp0_iter0, ap_enable_reg_pp0_iter1)
    begin
        if (((ap_enable_reg_pp0_iter1 = ap_const_logic_0) and (ap_enable_reg_pp0_iter0 = ap_const_logic_0))) then 
            ap_idle_pp0 <= ap_const_logic_1;
        else 
            ap_idle_pp0 <= ap_const_logic_0;
        end if; 
    end process;


    ap_idle_pp0_0to0_assign_proc : process(ap_enable_reg_pp0_iter0)
    begin
        if ((ap_enable_reg_pp0_iter0 = ap_const_logic_0)) then 
            ap_idle_pp0_0to0 <= ap_const_logic_1;
        else 
            ap_idle_pp0_0to0 <= ap_const_logic_0;
        end if; 
    end process;


    ap_phi_mux_i1_phi_fu_119_p6_assign_proc : process(i1_reg_115, i_reg_221, icmp_ln67_reg_226, ap_condition_113)
    begin
        if ((ap_const_boolean_1 = ap_condition_113)) then
            if ((icmp_ln67_reg_226 = ap_const_lv1_0)) then 
                ap_phi_mux_i1_phi_fu_119_p6 <= ap_const_lv7_0;
            elsif ((icmp_ln67_reg_226 = ap_const_lv1_1)) then 
                ap_phi_mux_i1_phi_fu_119_p6 <= i_reg_221;
            else 
                ap_phi_mux_i1_phi_fu_119_p6 <= i1_reg_115;
            end if;
        else 
            ap_phi_mux_i1_phi_fu_119_p6 <= i1_reg_115;
        end if; 
    end process;


    ap_ready_assign_proc : process(icmp_ln67_fu_153_p2, ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter0, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (icmp_ln67_fu_153_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            ap_ready <= ap_const_logic_1;
        else 
            ap_ready <= ap_const_logic_0;
        end if; 
    end process;


    ap_reset_idle_pp0_assign_proc : process(ap_start, ap_idle_pp0_0to0)
    begin
        if (((ap_start = ap_const_logic_0) and (ap_idle_pp0_0to0 = ap_const_logic_1))) then 
            ap_reset_idle_pp0 <= ap_const_logic_1;
        else 
            ap_reset_idle_pp0 <= ap_const_logic_0;
        end if; 
    end process;

    i_fu_147_p2 <= std_logic_vector(unsigned(ap_phi_mux_i1_phi_fu_119_p6) + unsigned(ap_const_lv7_2));
    icmp_ln67_fu_153_p2 <= "1" when (unsigned(i_fu_147_p2) < unsigned(ap_const_lv7_64)) else "0";
    in1_address0 <= zext_ln71_fu_141_p1(7 - 1 downto 0);
    in1_address1 <= zext_ln67_fu_129_p1(7 - 1 downto 0);

    in1_ce0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter0, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            in1_ce0 <= ap_const_logic_1;
        else 
            in1_ce0 <= ap_const_logic_0;
        end if; 
    end process;


    in1_ce1_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter0, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            in1_ce1 <= ap_const_logic_1;
        else 
            in1_ce1 <= ap_const_logic_0;
        end if; 
    end process;

    in2_address0 <= zext_ln71_fu_141_p1(7 - 1 downto 0);
    in2_address1 <= zext_ln67_fu_129_p1(7 - 1 downto 0);

    in2_ce0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter0, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            in2_ce0 <= ap_const_logic_1;
        else 
            in2_ce0 <= ap_const_logic_0;
        end if; 
    end process;


    in2_ce1_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter0, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            in2_ce1 <= ap_const_logic_1;
        else 
            in2_ce1 <= ap_const_logic_0;
        end if; 
    end process;

    or_ln67_fu_135_p2 <= (ap_phi_mux_i1_phi_fu_119_p6 or ap_const_lv7_1);
    shl_ln71_1_fu_174_p3 <= (in2_q0 & ap_const_lv1_0);
    shl_ln_fu_159_p3 <= (in2_q1 & ap_const_lv1_0);
    vecOut_address0 <= zext_ln71_reg_206(7 - 1 downto 0);
    vecOut_address1 <= zext_ln67_reg_191(7 - 1 downto 0);

    vecOut_ce0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_block_pp0_stage0_11001, ap_enable_reg_pp0_iter1)
    begin
        if (((ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            vecOut_ce0 <= ap_const_logic_1;
        else 
            vecOut_ce0 <= ap_const_logic_0;
        end if; 
    end process;


    vecOut_ce1_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_block_pp0_stage0_11001, ap_enable_reg_pp0_iter1)
    begin
        if (((ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            vecOut_ce1 <= ap_const_logic_1;
        else 
            vecOut_ce1 <= ap_const_logic_0;
        end if; 
    end process;

    vecOut_d0 <= std_logic_vector(unsigned(in1_q0) + unsigned(shl_ln71_1_fu_174_p3));
    vecOut_d1 <= std_logic_vector(unsigned(in1_q1) + unsigned(shl_ln_fu_159_p3));

    vecOut_we0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_block_pp0_stage0_11001, ap_enable_reg_pp0_iter1)
    begin
        if (((ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            vecOut_we0 <= ap_const_logic_1;
        else 
            vecOut_we0 <= ap_const_logic_0;
        end if; 
    end process;


    vecOut_we1_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_block_pp0_stage0_11001, ap_enable_reg_pp0_iter1)
    begin
        if (((ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            vecOut_we1 <= ap_const_logic_1;
        else 
            vecOut_we1 <= ap_const_logic_0;
        end if; 
    end process;

    zext_ln67_fu_129_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(ap_phi_mux_i1_phi_fu_119_p6),64));
    zext_ln71_fu_141_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(or_ln67_fu_135_p2),64));
end behav;
