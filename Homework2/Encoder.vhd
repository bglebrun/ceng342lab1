----------------------------------------------------------------------------------
-- Company: South Dakota School of Mines and Technology
-- Engineer: Benjamin LeBrun
-- 
-- Create Date:    17:00:06 02/06/2018 
-- Design Name: 	 selected signal assignment 8 bit encoder
-- Module Name:    Encoder - Behavioral 
-- Project Name: 	 Homework 2
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Encoder is
    Port ( inputs : in  STD_LOGIC_VECTOR(7 downto 0);
           outputs : out  STD_LOGIC_VECTOR(2 downto 0);
           en : in  STD_LOGIC);
end Encoder;

architecture en_arch of Encoder is

begin
	-- Selected signal assignment
	outputs <= "000" when (en='0') else
				  "000" when (inputs="00000001") else
				  "001" when (inputs="00000010") else
				  "010" when (inputs="00000100") else
				  "011" when (inputs="00001000") else
				  "100" when (inputs="00010000") else
				  "101" when (inputs="00100000") else
				  "110" when (inputs="01000000") else
				  "111" when (inputs="10000000");
end en_arch;

