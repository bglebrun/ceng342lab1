----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:18:21 03/15/2018 
-- Design Name: 
-- Module Name:    custom_clock_implementation - Behavioral 
-- Project Name: 
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
use IEEE.NUMERIC_STD.ALL;

entity custom_clock_implementation is
    Port ( clk,pause,reset : in  STD_LOGIC;
           max_tick : out  STD_LOGIC;
           cout : out  STD_LOGIC_VECTOR(3 downto 0));
end custom_clock_implementation;

architecture Behavioral of custom_clock_implementation is
	signal n_clock: unsigned(24 downto 0) 
		:= "0000000000000000000000000";
begin
	process(clk)
	begin
		if (clk'event and clk='1') then
			n_clock<=n_clock+1;
		end if;
	end process;
	
	mod_counter: entity work.counter_4b_mod_12(Behavioral)
	port map(
		clk=>n_clock(24), 
		pause=>pause, 
		reset=>reset, 
		max_tick=>max_tick,
		cout=>cout
		);

end Behavioral;

