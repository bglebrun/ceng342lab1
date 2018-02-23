----------------------------------------------------------------------------
-- Company: South Dakota School of Mines and Technology
-- Engineer: Benjamin LeBrun
-- 
-- Create Date:    17:44:18 02/22/2018 
-- Design Name: 	 Left rotating barrel Shifter
-- Module Name:    rotate_left_eightbit - rot_ckt 
-- Project Name: 	 Homework 3
-- Target Devices: 
-- Tool versions: 
-- Description: Barrel shifter for left shifts
--	
-- Dependencies: 
--
-- Revision: 
-- Revision 0.09
-- Additional Comments: 
--
-----------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity rotate_right_eightbit is
    Port ( ShiftInput : in  STD_LOGIC_VECTOR(7 downto 0);
           ShiftOutput : out  STD_LOGIC_VECTOR(7 downto 0));
end rotate_right_eightbit;

architecture rot_ckt of rotate_right_eightbit is
begin
	ShiftOutput<=ShiftInput(0) & ShiftInput(7 downto 1);
end rot_ckt;

