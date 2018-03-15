----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    20:26:59 03/14/2018 
-- Design Name: 
-- Module Name:    counter_4b_mod_12 - Behavioral 
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

entity counter_4b_mod_12 is
	 generic (
			  M: integer:=12);
    Port ( reset, pause, clk : in  STD_LOGIC;
           max_tick : out  STD_LOGIC;
           cout : out  STD_LOGIC_VECTOR(3 downto 0));
end counter_4b_mod_12;

architecture Behavioral of counter_4b_mod_12 is
	signal r_reg: unsigned(3 downto 0):="0000";
	signal r_next: unsigned(3 downto 0);
begin
-- register
	process(clk, pause, reset)
	begin
		if(reset='1') then
			r_reg<=(others=>'0');
		elsif(clk'event and clk='1') then
			r_reg<=r_next;
		end if;
	end process;
-- next state logic
	r_next<=(others=>'0') when r_reg=(M-1) else
		r_reg when (pause='1') else
		r_reg + 1;
-- output logic
	cout<=std_logic_vector(r_reg);
	max_tick<='1' when r_reg=M-1 else '0';
end Behavioral;

