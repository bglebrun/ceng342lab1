----------------------------------------------------------------------------------
-- Company: South Dakota School of Mines and Technology
-- Engineer: Benjamin LeBrun
-- 
-- Create Date:    22:46:35 03/11/2018 
-- Design Name: 	 One Bit Grey Code counter
-- Module Name:    gray_code_1_bit - Behavioral 
-- Project Name:   Homework 4-2
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.9
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity gray_code_1_bit is
    Port ( clk, reset : in  STD_LOGIC;
           cout : out  STD_LOGIC);
end gray_code_1_bit;

architecture Behavioral of gray_code_1_bit is
	signal r_last, r_reg, r_next: std_logic :='0';
begin
	--register
	process(clk,reset)
	begin
		if(reset='1') then
			r_reg<='0';
		elsif(clk'event) then
			r_last<=r_reg;
			r_reg<=r_next;
		end if;
	end process;
	--next-state logic
	r_next<= (not r_reg) when (r_reg=r_last) else r_reg;
	--output logic
	cout<=r_reg;
end Behavioral;

