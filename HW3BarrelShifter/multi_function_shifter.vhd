----------------------------------------------------------------------------------
-- Company: South Dakota School of Mines and Technology
-- Engineer: Benjamin LeBrun
-- 
-- Create Date:    17:44:18 02/22/2018 
-- Design Name: 	 Multi Function Barrel Shifter
-- Module Name:    multi_function_shifter - Behavioral 
-- Project Name: 	 Homework 3
-- Target Devices: 
-- Tool versions: 
-- Description: Top level multiplexer for barrel shifting circuit, simply
--					 redirects shift directoin based on input into lr
-- Dependencies: 
--
-- Revision: 
-- Revision 0.09
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity multi_function_shifter is
    Port ( ShiftTopInput : in  STD_LOGIC_VECTOR(7 downto 0);
           lr : in  STD_LOGIC;
           ShiftTopOutput : out  STD_LOGIC_VECTOR(7 downto 0));
end multi_function_shifter;

architecture Behavioral of multi_function_shifter is
	signal rs, ls : STD_LOGIC_VECTOR(7 downto 0);
begin
	left_shift: entity work.rotate_left_eightbit(rot_ckt)
	port map(ShiftInput=>ShiftTopInput, ShiftOutput=>ls);
	
	right_shift: entity work.rotate_right_eightbit(rot_ckt)
	port map(ShiftInput=>ShiftTopInput, ShiftOutput=>rs);
	
	ShiftTopOutput<= ls when (lr='0') else rs;

end Behavioral;

