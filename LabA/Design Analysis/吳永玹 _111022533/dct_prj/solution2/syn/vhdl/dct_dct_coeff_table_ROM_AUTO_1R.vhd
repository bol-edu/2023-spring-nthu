-- ==============================================================
-- Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1 (64-bit)
-- Tool Version Limit: 2022.04
-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity dct_dct_coeff_table_ROM_AUTO_1R is 
    generic(
             DataWidth     : integer := 15; 
             AddressWidth     : integer := 6; 
             AddressRange    : integer := 64
    ); 
    port (
          address0      : in std_logic_vector(AddressWidth-1 downto 0); 
          ce0       : in std_logic; 
          q0         : out std_logic_vector(DataWidth-1 downto 0);
          reset     : in std_logic;
          clk       : in std_logic
    ); 
end entity; 


architecture rtl of dct_dct_coeff_table_ROM_AUTO_1R is 

signal address0_tmp : std_logic_vector(AddressWidth-1 downto 0); 
type mem_array is array (0 to AddressRange-1) of std_logic_vector (DataWidth-1 downto 0); 
signal mem : mem_array := (
    0 to 7=> "010000000000000", 8 => "010110001100011", 9 => "010010110100001", 
    10 => "001100100100100", 11 => "000100011010100", 12 => "111011100101100", 
    13 => "110011011011100", 14 => "101101001100000", 15 => "101001110011110", 
    16 => "010100111001111", 17 => "001000101010001", 18 => "110111010101111", 
    19 to 20=> "101011000110001", 21 => "110111010101111", 22 => "001000101010001", 
    23 => "010100111001111", 24 => "010010110100001", 25 => "111011100101100", 
    26 => "101001110011110", 27 => "110011011011100", 28 => "001100100100100", 
    29 => "010110001100011", 30 => "000100011010100", 31 => "101101001100000", 
    32 => "010000000000000", 33 to 34=> "110000000000000", 35 to 36=> "010000000000000", 
    37 to 38=> "110000000000001", 39 => "010000000000000", 40 => "001100100100100", 
    41 => "101001110011110", 42 => "000100011010100", 43 => "010010110100001", 
    44 => "101101001100000", 45 => "111011100101100", 46 => "010110001100011", 
    47 => "110011011011100", 48 => "001000101010001", 49 => "101011000110001", 
    50 => "010100111001111", 51 to 52=> "110111010101111", 53 => "010100111001111", 
    54 => "101011000110001", 55 => "001000101010001", 56 => "000100011010100", 
    57 => "110011011011100", 58 => "010010110100001", 59 => "101001110011110", 
    60 => "010110001100011", 61 => "101101001100000", 62 => "001100100100100", 
    63 => "111011100101100" );


begin 


memory_access_guard_0: process (address0) 
begin
      address0_tmp <= address0;
--synthesis translate_off
      if (CONV_INTEGER(address0) > AddressRange-1) then
           address0_tmp <= (others => '0');
      else 
           address0_tmp <= address0;
      end if;
--synthesis translate_on
end process;

p_rom_access: process (clk)  
begin 
    if (clk'event and clk = '1') then
        if (ce0 = '1') then 
            q0 <= mem(CONV_INTEGER(address0_tmp)); 
        end if;
    end if;
end process;

end rtl;

