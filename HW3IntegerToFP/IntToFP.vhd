----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    19:10:41 02/22/2018 
-- Design Name: 
-- Module Name:    IntToFP - Behavioral 
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;

entity IntToFP is
    Port ( IntegerInput : in integer;
           FPOutput : out  STD_LOGIC_VECTOR(12 downto 0));
end IntToFP;

architecture Behavioral of IntToFP is

begin
	FPOutput(12)<= '1' when (IntegerInput < 0) else '0';
	

end Behavioral;

