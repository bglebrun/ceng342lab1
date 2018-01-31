----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    19:57:13 01/30/2018 
-- Design Name: 
-- Module Name:    fa1 - Behavioral 
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
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity fa1 is
    Port ( a : in  STD_LOGIC;
           b : in  STD_LOGIC;
           carryIn : in  STD_LOGIC;
           sum : out  STD_LOGIC;
           carryOut : out  STD_LOGIC);
end fa1;

architecture Behavioral of fa1 is

begin
	sum <= ((a xor b) xor carryIn);
	carryOut <= (a and b) or ((a xor b) and carryIn);

end Behavioral;

