-- ==============================================================
-- RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1 (64-bit)
-- Version: 2022.1
-- Copyright (C) Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity matrixmul is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    a_address0 : OUT STD_LOGIC_VECTOR (3 downto 0);
    a_ce0 : OUT STD_LOGIC;
    a_q0 : IN STD_LOGIC_VECTOR (7 downto 0);
    b_address0 : OUT STD_LOGIC_VECTOR (3 downto 0);
    b_ce0 : OUT STD_LOGIC;
    b_q0 : IN STD_LOGIC_VECTOR (7 downto 0);
    res_address0 : OUT STD_LOGIC_VECTOR (3 downto 0);
    res_ce0 : OUT STD_LOGIC;
    res_we0 : OUT STD_LOGIC;
    res_d0 : OUT STD_LOGIC_VECTOR (15 downto 0) );
end;


architecture behav of matrixmul is 
    attribute CORE_GENERATION_INFO : STRING;
    attribute CORE_GENERATION_INFO of behav : architecture is
    "matrixmul_matrixmul,hls_ip_2022_1,{HLS_INPUT_TYPE=cxx,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=0,HLS_INPUT_PART=xcu50-fsvh2104-2-e,HLS_INPUT_CLOCK=13.330000,HLS_INPUT_ARCH=others,HLS_SYN_CLOCK=1.663000,HLS_SYN_LAT=160,HLS_SYN_TPT=none,HLS_SYN_MEM=0,HLS_SYN_DSP=0,HLS_SYN_FF=46,HLS_SYN_LUT=186,HLS_VERSION=2022_1}";
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_state1 : STD_LOGIC_VECTOR (7 downto 0) := "00000001";
    constant ap_ST_fsm_state2 : STD_LOGIC_VECTOR (7 downto 0) := "00000010";
    constant ap_ST_fsm_state3 : STD_LOGIC_VECTOR (7 downto 0) := "00000100";
    constant ap_ST_fsm_state4 : STD_LOGIC_VECTOR (7 downto 0) := "00001000";
    constant ap_ST_fsm_state5 : STD_LOGIC_VECTOR (7 downto 0) := "00010000";
    constant ap_ST_fsm_state6 : STD_LOGIC_VECTOR (7 downto 0) := "00100000";
    constant ap_ST_fsm_state7 : STD_LOGIC_VECTOR (7 downto 0) := "01000000";
    constant ap_ST_fsm_state8 : STD_LOGIC_VECTOR (7 downto 0) := "10000000";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_boolean_1 : BOOLEAN := true;
    constant ap_const_lv32_1 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000001";
    constant ap_const_lv32_2 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000010";
    constant ap_const_lv32_3 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000011";
    constant ap_const_lv32_4 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000100";
    constant ap_const_lv32_7 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000111";
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv2_0 : STD_LOGIC_VECTOR (1 downto 0) := "00";
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_lv16_0 : STD_LOGIC_VECTOR (15 downto 0) := "0000000000000000";
    constant ap_const_lv2_3 : STD_LOGIC_VECTOR (1 downto 0) := "11";
    constant ap_const_lv2_1 : STD_LOGIC_VECTOR (1 downto 0) := "01";
    constant ap_const_lv32_6 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000110";

    signal ap_CS_fsm : STD_LOGIC_VECTOR (7 downto 0) := "00000001";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_state1 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state1 : signal is "none";
    signal sub_ln60_fu_145_p2 : STD_LOGIC_VECTOR (3 downto 0);
    signal sub_ln60_reg_266 : STD_LOGIC_VECTOR (3 downto 0);
    signal ap_CS_fsm_state2 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state2 : signal is "none";
    signal add_ln54_fu_157_p2 : STD_LOGIC_VECTOR (1 downto 0);
    signal add_ln54_reg_275 : STD_LOGIC_VECTOR (1 downto 0);
    signal zext_ln57_fu_163_p1 : STD_LOGIC_VECTOR (3 downto 0);
    signal zext_ln57_reg_280 : STD_LOGIC_VECTOR (3 downto 0);
    signal ap_CS_fsm_state3 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state3 : signal is "none";
    signal res_addr_reg_285 : STD_LOGIC_VECTOR (3 downto 0);
    signal add_ln56_fu_183_p2 : STD_LOGIC_VECTOR (1 downto 0);
    signal add_ln56_reg_293 : STD_LOGIC_VECTOR (1 downto 0);
    signal ap_CS_fsm_state4 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state4 : signal is "none";
    signal add_ln59_fu_237_p2 : STD_LOGIC_VECTOR (1 downto 0);
    signal add_ln59_reg_311 : STD_LOGIC_VECTOR (1 downto 0);
    signal ap_CS_fsm_state5 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state5 : signal is "none";
    signal grp_fu_251_p3 : STD_LOGIC_VECTOR (15 downto 0);
    signal ap_CS_fsm_state8 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state8 : signal is "none";
    signal j_reg_90 : STD_LOGIC_VECTOR (1 downto 0);
    signal icmp_ln59_fu_231_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln54_fu_151_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal k_reg_101 : STD_LOGIC_VECTOR (1 downto 0);
    signal icmp_ln56_fu_177_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal empty_9_reg_112 : STD_LOGIC_VECTOR (15 downto 0);
    signal zext_ln57_1_fu_172_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal zext_ln60_2_fu_202_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal zext_ln60_3_fu_226_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal i_fu_48 : STD_LOGIC_VECTOR (1 downto 0);
    signal tmp_fu_137_p3 : STD_LOGIC_VECTOR (3 downto 0);
    signal zext_ln60_fu_133_p1 : STD_LOGIC_VECTOR (3 downto 0);
    signal add_ln57_fu_167_p2 : STD_LOGIC_VECTOR (3 downto 0);
    signal zext_ln60_1_fu_193_p1 : STD_LOGIC_VECTOR (3 downto 0);
    signal add_ln60_1_fu_197_p2 : STD_LOGIC_VECTOR (3 downto 0);
    signal tmp_1_fu_207_p3 : STD_LOGIC_VECTOR (3 downto 0);
    signal sub_ln60_1_fu_215_p2 : STD_LOGIC_VECTOR (3 downto 0);
    signal add_ln60_2_fu_221_p2 : STD_LOGIC_VECTOR (3 downto 0);
    signal ap_CS_fsm_state7 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state7 : signal is "none";
    signal ap_NS_fsm : STD_LOGIC_VECTOR (7 downto 0);
    signal ap_ST_fsm_state1_blk : STD_LOGIC;
    signal ap_ST_fsm_state2_blk : STD_LOGIC;
    signal ap_ST_fsm_state3_blk : STD_LOGIC;
    signal ap_ST_fsm_state4_blk : STD_LOGIC;
    signal ap_ST_fsm_state5_blk : STD_LOGIC;
    signal ap_ST_fsm_state6_blk : STD_LOGIC;
    signal ap_ST_fsm_state7_blk : STD_LOGIC;
    signal ap_ST_fsm_state8_blk : STD_LOGIC;
    signal ap_ce_reg : STD_LOGIC;

    component matrixmul_mac_muladd_8s_8s_16ns_16_4_1 IS
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
        din0 : IN STD_LOGIC_VECTOR (7 downto 0);
        din1 : IN STD_LOGIC_VECTOR (7 downto 0);
        din2 : IN STD_LOGIC_VECTOR (15 downto 0);
        ce : IN STD_LOGIC;
        dout : OUT STD_LOGIC_VECTOR (15 downto 0) );
    end component;



begin
    mac_muladd_8s_8s_16ns_16_4_1_U1 : component matrixmul_mac_muladd_8s_8s_16ns_16_4_1
    generic map (
        ID => 1,
        NUM_STAGE => 4,
        din0_WIDTH => 8,
        din1_WIDTH => 8,
        din2_WIDTH => 16,
        dout_WIDTH => 16)
    port map (
        clk => ap_clk,
        reset => ap_rst,
        din0 => b_q0,
        din1 => a_q0,
        din2 => empty_9_reg_112,
        ce => ap_const_logic_1,
        dout => grp_fu_251_p3);





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


    empty_9_reg_112_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_state3) and (icmp_ln56_fu_177_p2 = ap_const_lv1_0))) then 
                empty_9_reg_112 <= ap_const_lv16_0;
            elsif ((ap_const_logic_1 = ap_CS_fsm_state8)) then 
                empty_9_reg_112 <= grp_fu_251_p3;
            end if; 
        end if;
    end process;

    i_fu_48_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_1))) then 
                i_fu_48 <= ap_const_lv2_0;
            elsif (((ap_const_logic_1 = ap_CS_fsm_state3) and (icmp_ln56_fu_177_p2 = ap_const_lv1_1))) then 
                i_fu_48 <= add_ln54_reg_275;
            end if; 
        end if;
    end process;

    j_reg_90_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_state2) and (icmp_ln54_fu_151_p2 = ap_const_lv1_0))) then 
                j_reg_90 <= ap_const_lv2_0;
            elsif (((icmp_ln59_fu_231_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state4))) then 
                j_reg_90 <= add_ln56_reg_293;
            end if; 
        end if;
    end process;

    k_reg_101_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_state3) and (icmp_ln56_fu_177_p2 = ap_const_lv1_0))) then 
                k_reg_101 <= ap_const_lv2_0;
            elsif ((ap_const_logic_1 = ap_CS_fsm_state8)) then 
                k_reg_101 <= add_ln59_reg_311;
            end if; 
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state2)) then
                add_ln54_reg_275 <= add_ln54_fu_157_p2;
                sub_ln60_reg_266 <= sub_ln60_fu_145_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state3)) then
                add_ln56_reg_293 <= add_ln56_fu_183_p2;
                res_addr_reg_285 <= zext_ln57_1_fu_172_p1(4 - 1 downto 0);
                    zext_ln57_reg_280(1 downto 0) <= zext_ln57_fu_163_p1(1 downto 0);
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state4)) then
                add_ln59_reg_311 <= add_ln59_fu_237_p2;
            end if;
        end if;
    end process;
    zext_ln57_reg_280(3 downto 2) <= "00";

    ap_NS_fsm_assign_proc : process (ap_start, ap_CS_fsm, ap_CS_fsm_state1, ap_CS_fsm_state2, ap_CS_fsm_state3, ap_CS_fsm_state4, icmp_ln59_fu_231_p2, icmp_ln54_fu_151_p2, icmp_ln56_fu_177_p2)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_state1 => 
                if (((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_1))) then
                    ap_NS_fsm <= ap_ST_fsm_state2;
                else
                    ap_NS_fsm <= ap_ST_fsm_state1;
                end if;
            when ap_ST_fsm_state2 => 
                if (((ap_const_logic_1 = ap_CS_fsm_state2) and (icmp_ln54_fu_151_p2 = ap_const_lv1_1))) then
                    ap_NS_fsm <= ap_ST_fsm_state1;
                else
                    ap_NS_fsm <= ap_ST_fsm_state3;
                end if;
            when ap_ST_fsm_state3 => 
                if (((ap_const_logic_1 = ap_CS_fsm_state3) and (icmp_ln56_fu_177_p2 = ap_const_lv1_1))) then
                    ap_NS_fsm <= ap_ST_fsm_state2;
                else
                    ap_NS_fsm <= ap_ST_fsm_state4;
                end if;
            when ap_ST_fsm_state4 => 
                if (((icmp_ln59_fu_231_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state4))) then
                    ap_NS_fsm <= ap_ST_fsm_state3;
                else
                    ap_NS_fsm <= ap_ST_fsm_state5;
                end if;
            when ap_ST_fsm_state5 => 
                ap_NS_fsm <= ap_ST_fsm_state6;
            when ap_ST_fsm_state6 => 
                ap_NS_fsm <= ap_ST_fsm_state7;
            when ap_ST_fsm_state7 => 
                ap_NS_fsm <= ap_ST_fsm_state8;
            when ap_ST_fsm_state8 => 
                ap_NS_fsm <= ap_ST_fsm_state4;
            when others =>  
                ap_NS_fsm <= "XXXXXXXX";
        end case;
    end process;
    a_address0 <= zext_ln60_2_fu_202_p1(4 - 1 downto 0);

    a_ce0_assign_proc : process(ap_CS_fsm_state4)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state4)) then 
            a_ce0 <= ap_const_logic_1;
        else 
            a_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    add_ln54_fu_157_p2 <= std_logic_vector(unsigned(i_fu_48) + unsigned(ap_const_lv2_1));
    add_ln56_fu_183_p2 <= std_logic_vector(unsigned(j_reg_90) + unsigned(ap_const_lv2_1));
    add_ln57_fu_167_p2 <= std_logic_vector(unsigned(sub_ln60_reg_266) + unsigned(zext_ln57_fu_163_p1));
    add_ln59_fu_237_p2 <= std_logic_vector(unsigned(k_reg_101) + unsigned(ap_const_lv2_1));
    add_ln60_1_fu_197_p2 <= std_logic_vector(unsigned(sub_ln60_reg_266) + unsigned(zext_ln60_1_fu_193_p1));
    add_ln60_2_fu_221_p2 <= std_logic_vector(unsigned(sub_ln60_1_fu_215_p2) + unsigned(zext_ln57_reg_280));
    ap_CS_fsm_state1 <= ap_CS_fsm(0);
    ap_CS_fsm_state2 <= ap_CS_fsm(1);
    ap_CS_fsm_state3 <= ap_CS_fsm(2);
    ap_CS_fsm_state4 <= ap_CS_fsm(3);
    ap_CS_fsm_state5 <= ap_CS_fsm(4);
    ap_CS_fsm_state7 <= ap_CS_fsm(6);
    ap_CS_fsm_state8 <= ap_CS_fsm(7);

    ap_ST_fsm_state1_blk_assign_proc : process(ap_start)
    begin
        if ((ap_start = ap_const_logic_0)) then 
            ap_ST_fsm_state1_blk <= ap_const_logic_1;
        else 
            ap_ST_fsm_state1_blk <= ap_const_logic_0;
        end if; 
    end process;

    ap_ST_fsm_state2_blk <= ap_const_logic_0;
    ap_ST_fsm_state3_blk <= ap_const_logic_0;
    ap_ST_fsm_state4_blk <= ap_const_logic_0;
    ap_ST_fsm_state5_blk <= ap_const_logic_0;
    ap_ST_fsm_state6_blk <= ap_const_logic_0;
    ap_ST_fsm_state7_blk <= ap_const_logic_0;
    ap_ST_fsm_state8_blk <= ap_const_logic_0;

    ap_done_assign_proc : process(ap_CS_fsm_state2, icmp_ln54_fu_151_p2)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state2) and (icmp_ln54_fu_151_p2 = ap_const_lv1_1))) then 
            ap_done <= ap_const_logic_1;
        else 
            ap_done <= ap_const_logic_0;
        end if; 
    end process;


    ap_idle_assign_proc : process(ap_start, ap_CS_fsm_state1)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_0))) then 
            ap_idle <= ap_const_logic_1;
        else 
            ap_idle <= ap_const_logic_0;
        end if; 
    end process;


    ap_ready_assign_proc : process(ap_CS_fsm_state2, icmp_ln54_fu_151_p2)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state2) and (icmp_ln54_fu_151_p2 = ap_const_lv1_1))) then 
            ap_ready <= ap_const_logic_1;
        else 
            ap_ready <= ap_const_logic_0;
        end if; 
    end process;

    b_address0 <= zext_ln60_3_fu_226_p1(4 - 1 downto 0);

    b_ce0_assign_proc : process(ap_CS_fsm_state4)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state4)) then 
            b_ce0 <= ap_const_logic_1;
        else 
            b_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    icmp_ln54_fu_151_p2 <= "1" when (i_fu_48 = ap_const_lv2_3) else "0";
    icmp_ln56_fu_177_p2 <= "1" when (j_reg_90 = ap_const_lv2_3) else "0";
    icmp_ln59_fu_231_p2 <= "1" when (k_reg_101 = ap_const_lv2_3) else "0";
    res_address0 <= res_addr_reg_285;

    res_ce0_assign_proc : process(ap_CS_fsm_state4)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state4)) then 
            res_ce0 <= ap_const_logic_1;
        else 
            res_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    res_d0 <= empty_9_reg_112;

    res_we0_assign_proc : process(ap_CS_fsm_state4, icmp_ln59_fu_231_p2)
    begin
        if (((icmp_ln59_fu_231_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state4))) then 
            res_we0 <= ap_const_logic_1;
        else 
            res_we0 <= ap_const_logic_0;
        end if; 
    end process;

    sub_ln60_1_fu_215_p2 <= std_logic_vector(unsigned(tmp_1_fu_207_p3) - unsigned(zext_ln60_1_fu_193_p1));
    sub_ln60_fu_145_p2 <= std_logic_vector(unsigned(tmp_fu_137_p3) - unsigned(zext_ln60_fu_133_p1));
    tmp_1_fu_207_p3 <= (k_reg_101 & ap_const_lv2_0);
    tmp_fu_137_p3 <= (i_fu_48 & ap_const_lv2_0);
    zext_ln57_1_fu_172_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(add_ln57_fu_167_p2),64));
    zext_ln57_fu_163_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(j_reg_90),4));
    zext_ln60_1_fu_193_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(k_reg_101),4));
    zext_ln60_2_fu_202_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(add_ln60_1_fu_197_p2),64));
    zext_ln60_3_fu_226_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(add_ln60_2_fu_221_p2),64));
    zext_ln60_fu_133_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(i_fu_48),4));
end behav;
