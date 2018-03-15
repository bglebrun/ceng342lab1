----------------------------------------------------------------------------------
-- Company: South Dakota School of Mines and Technology
-- Engineer: Benjamin LeBrun
-- 
-- Create Date:    22:46:35 03/11/2018 
-- Design Name: 	 Four Bit Binary Counter
-- Module Name:    count_up_4_bits - Behavioral 
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
use IEEE.NUMERIC_STD.ALL;

entity count_up_4_bits is
    Port ( reset, clk : in  STD_LOGIC;
           cout : out  STD_LOGIC_VECTOR(3 downto 0));
end count_up_4_bits;

architecture Behavioral of count_up_4_bits is
	signal r_next, r_reg: unsigned(3 downto 0):="0000";
begin
	--register
	process(reset,clk)
	begin
		if(reset='1') then
			r_reg<=(others=>'0');
		elsif(clk'event) then
			r_reg<=r_next;
		end if;
	end process;
	--next-state logic
	r_next<= r_reg+1;
	--output logic
	cout<=std_logic_vector(r_reg);
end Behavioral;

