----------------------------------------------------------------------------------
-- Company: South Dakota School of Mines and Technology
-- Engineer: Benjamin LeBrun
-- 
-- Create Date:    14:05:48 02/15/2018 
-- Design Name: 	 BCD incrementor to SSEG
-- Module Name:    BCDIncrementor - Behavioral 
-- Project Name: 	 Lab 2
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.9 - Full history at https://github.com/bglebrun/ceng342labs
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity BCDIncrementor is
    Port ( bcdin : in  STD_LOGIC_VECTOR(7 downto 0);
           bcdout : out  STD_LOGIC_VECTOR(7 downto 0));
end BCDIncrementor;

architecture Behavioral of BCDIncrementor is

begin
	bcdout (3 downto 0) <= "0000" when (signed("0000" & bcdin(3 downto 0)) = 9) else
			bcdin(3 downto 0)
		when (signed("0000" & bcdin(3 downto 0)) > 9) else
			std_logic_vector(signed(bcdin(3 downto 0)) + 1);
	
	bcdout (7 downto 4) <= "0000" when ( bcdin = "10011001") else
			std_logic_vector(signed(bcdin(7 downto 4)) + 1)
		when ( signed("0000" & bcdin(3 downto 0)) = 9) else
			bcdin(7 downto 4);
end Behavioral;

