----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:10:32 02/14/2018 
-- Design Name: 
-- Module Name:    BCDIncrementor - Behavioral 
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

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity BCDIncrementor is
    Port ( bcdin : in  STD_LOGIC_VECTOR(7 downto 0);
           bcdout : out  STD_LOGIC_VECTOR(7 downto 0));
end BCDIncrementor;

architecture Behavioral of BCDIncrementor is

begin
	bcdout (3 downto 0) <= std_logic_vector(signed(bcdin) + 1);
	bcdout (7 downto 4) <= std_logic_vector(signed("0000" & bcdin(7 downto 4)) + 1);
end Behavioral;

