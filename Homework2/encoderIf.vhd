----------------------------------------------------------------------------------
-- Company: South Dakota School of Mines and Technology
-- Engineer: Benjamin LeBrun
-- 
-- Create Date:    17:00:06 02/06/2018 
-- Design Name: 	 if statement 8 bit encoder
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

entity encoderIf is
    Port ( inputs : in  STD_LOGIC_VECTOR(7 downto 0);
           outputs : out  STD_LOGIC_VECTOR(2 downto 0);
           enable : in  STD_LOGIC);
end encoderIf;

architecture Behavioral of encoderIf is
begin
	outputs<="000";
	process(enable,inputs)
		begin
		if (enable='0') then
			outputs <= "000";
		elsif ((enable='1') and (inputs="00000001")) then
			outputs <= "000";
		elsif ((enable='1') and (inputs="00000010")) then
			outputs <= "001";
		elsif ((enable='1') and (inputs="00000100")) then
			outputs <= "010";
		elsif ((enable='1') and (inputs="00001000")) then
			outputs <= "011";
		elsif ((enable='1') and (inputs="00010000")) then
			outputs <= "100";
		elsif ((enable='1') and (inputs="00100000")) then
			outputs <= "101";
		elsif ((enable='1') and (inputs="01000000")) then
			outputs <= "110";
		else
			outputs <= "111";
		end if;
	end process;
end Behavioral;

