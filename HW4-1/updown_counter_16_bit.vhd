----------------------------------------------------------------------------------
-- Company: South Dakota School of Mines and Technology
-- Engineer: Benjamin LeBrun
-- 
-- Create Date:    21:12:50 03/11/2018 
-- Design Name: 	 16 bit up/down counter
-- Module Name:    updown_counter_16_bit - Behavioral 
-- Project Name: 	 Homeowrk 4 - 1
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.9 - Full history: https://github.com/bglebrun/ceng342labs/
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity updown_counter_16_bit is
    Port ( RESET, UP_DOWN, CLK : in  STD_LOGIC;
           COUT : out  STD_LOGIC_VECTOR(7 downto 0));
end updown_counter_16_bit;

architecture Behavioral of updown_counter_16_bit is
	signal out_reg: unsigned(7 downto 0):="00000000";
	signal out_next: unsigned(7 downto 0):="00000000";
begin
-- register
	process(CLK,RESET)
	begin
		if(RESET='1')then
			out_reg<=(others=>'0');
		elsif(clk'event and CLK='1') then
			out_reg<=out_next;
		end if;
	end process;
-- next-state logic
	out_next<=out_reg + 1 when (UP_DOWN='1') else
	out_reg - 1;
-- output logic
	COUT<=std_logic_vector(out_reg);
end Behavioral;

