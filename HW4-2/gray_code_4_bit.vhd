----------------------------------------------------------------------------------
-- Company: South Dakota School of Mines and Technology
-- Engineer: Benjamin LeBrun
-- 
-- Create Date:    22:46:35 03/11/2018 
-- Design Name: 	 Four Bit Grey Code counter
-- Module Name:    gray_code_4_bit - Behavioral 
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

entity gray_code_4_bit is
    Port ( clk, reset : in  STD_LOGIC;
           cout, debug_count : out  STD_LOGIC_VECTOR(3 downto 0));
end gray_code_4_bit;

architecture Behavioral of gray_code_4_bit is
	signal four_bit_count: std_logic_vector(3 downto 0):="0000";
begin
	new_clock: entity work.count_up_4_bits(Behavioral)
	port map(clk=>clk, reset=>reset, cout=>four_bit_count);
	
	gray_bit_0: entity work.gray_code_1_bit(Behavioral)
	port map(clk=>four_bit_count(0), reset=>reset, cout=>cout(0));
	
	gray_bit_1: entity work.gray_code_1_bit(Behavioral)
	port map(clk=>four_bit_count(1), reset=>reset, cout=>cout(1));
	
	gray_bit_2: entity work.gray_code_1_bit(Behavioral)
	port map(clk=>four_bit_count(2), reset=>reset, cout=>cout(2));
	
	cout(3)<=four_bit_count(3);
	
	debug_count<=four_bit_count;
end Behavioral;

