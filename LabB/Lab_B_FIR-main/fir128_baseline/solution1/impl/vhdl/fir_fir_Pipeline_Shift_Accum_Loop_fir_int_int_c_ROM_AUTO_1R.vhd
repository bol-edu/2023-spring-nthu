-- ==============================================================
-- Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1 (64-bit)
-- Tool Version Limit: 2022.04
-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity fir_fir_Pipeline_Shift_Accum_Loop_fir_int_int_c_ROM_AUTO_1R is 
    generic(
             DataWidth     : integer := 32; 
             AddressWidth     : integer := 7; 
             AddressRange    : integer := 128
    ); 
    port (
          address0      : in std_logic_vector(AddressWidth-1 downto 0); 
          ce0       : in std_logic; 
          q0         : out std_logic_vector(DataWidth-1 downto 0);
          reset     : in std_logic;
          clk       : in std_logic
    ); 
end entity; 


architecture rtl of fir_fir_Pipeline_Shift_Accum_Loop_fir_int_int_c_ROM_AUTO_1R is 

signal address0_tmp : std_logic_vector(AddressWidth-1 downto 0); 
type mem_array is array (0 to AddressRange-1) of std_logic_vector (DataWidth-1 downto 0); 
signal mem : mem_array := (
    0 => "00000000000000000000000000001010", 
    1 to 2=> "00000000000000000000000000001011", 
    3 => "00000000000000000000000000001000", 
    4 => "00000000000000000000000000000011", 
    5 => "11111111111111111111111111111101", 
    6 => "11111111111111111111111111111000", 
    7 to 8=> "11111111111111111111111111110101", 
    9 to 32=> "11111111111111111111111111110110", 
    33 to 34=> "11111111111111111111111111110101", 
    35 => "11111111111111111111111111111000", 
    36 => "11111111111111111111111111111101", 
    37 => "00000000000000000000000000000011", 
    38 => "00000000000000000000000000001000", 
    39 to 40=> "00000000000000000000000000001011", 
    41 to 48=> "00000000000000000000000000001010", 
    49 to 50=> "00000000000000000000000000001011", 
    51 => "00000000000000000000000000001000", 
    52 => "00000000000000000000000000000011", 
    53 => "11111111111111111111111111111101", 
    54 => "11111111111111111111111111111000", 
    55 to 56=> "11111111111111111111111111110101", 
    57 to 64=> "11111111111111111111111111110110", 
    65 to 66=> "11111111111111111111111111110101", 
    67 => "11111111111111111111111111111000", 
    68 => "11111111111111111111111111111101", 
    69 => "00000000000000000000000000000011", 
    70 => "00000000000000000000000000001000", 
    71 to 72=> "00000000000000000000000000001011", 
    73 to 80=> "00000000000000000000000000001010", 
    81 to 82=> "00000000000000000000000000001011", 
    83 => "00000000000000000000000000001000", 
    84 => "00000000000000000000000000000011", 
    85 => "11111111111111111111111111111101", 
    86 => "11111111111111111111111111111000", 
    87 to 88=> "11111111111111111111111111110101", 
    89 to 96=> "11111111111111111111111111110110", 
    97 to 98=> "11111111111111111111111111110101", 
    99 => "11111111111111111111111111111000", 
    100 => "11111111111111111111111111111101", 
    101 => "00000000000000000000000000000011", 
    102 => "00000000000000000000000000001000", 
    103 to 104=> "00000000000000000000000000001011", 
    105 to 127=> "00000000000000000000000000001010" );


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

