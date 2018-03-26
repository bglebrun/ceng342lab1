----------------------------------------------------------------------------------
-- Company: South Dakota School of Mines and Technology
-- Engineer: Benjamin LeBrun
--
-- Create Date:    13:56:10 02/15/2018
-- Design Name: 	 BCD incrementor to SSEG
-- Module Name:    BCDIncrementor - Behavioral
-- Project Name: 	 Lab 4
-- Target Devices:
-- Tool versions:
-- Description:
--
-- Dependencies:
--
-- Revision:
-- Revision 0.9 - Full history at https://github.com/bglebrun/ceng342labs
-- Additional Comments:
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity hex_to_sseg is
    Port ( hex : in STD_LOGIC_VECTOR(3 downto 0);
           dp : in STD_LOGIC;
           sseg : out  STD_LOGIC_VECTOR(7 downto 0));
end hex_to_sseg;

architecture ds_arch of hex_to_sseg is

begin
  with hex select
  sseg(6 downto 0) <=
    "0000001" when "0000",
    "1001111" when "0001",
    "0010010" when "0010",
    "0000110" when "0011",
    "1001100" when "0100",
    "0100100" when "0101",
    "0100000" when "0110",
    "0001111" when "0111",
    "0000000" when "1000",
    "0000100" when "1001",
    "0111000" when others; --f

  sseg(7) <= dp;
end ds_arch;
