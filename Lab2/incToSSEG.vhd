----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:05:48 02/15/2018 
-- Design Name: 
-- Module Name:    incToSSEG - Behavioral 
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

entity incToSSEG is
    Port ( clk : in  STD_LOGIC;
           sw : in  STD_LOGIC_VECTOR(7 downto 0);
           an : out  STD_LOGIC_VECTOR(3 downto 0);
           sseg : out  STD_LOGIC_VECTOR(7 downto 0));
end incToSSEG;

architecture Behavioral of incToSSEG is
	signal led3, led2, led1, led0, res0, IncRes: std_logic_vector(7 downto 0);
begin
	inc_unit_0: entity work.BCDIncrementor
	port map (bcdin=>sw, bcdout=>IncRes);
	
	sseg_unit_0: entity work.hexToSSEG
	port map(hex=>sw(3 downto 0), dp=>'1', sseg=>led0);
	
	sseg_unit_1: entity work.hexToSSEG
	port map(hex=>sw(7 downto 4), dp=>'1', sseg=>led1);
	
	sseg_unit_2: entity work.hexToSSEG
	port map(hex=>IncRes(3 downto 0), dp=>'1', sseg=>led2);
	
	sseg_unit_3: entity work.hexToSSEG
	port map(hex=>IncRes(7 downto 4), dp=>'1', sseg=>led3);
	
	disp_unit: entity work.disp_mux
	port map( clk=>clk, reset=>'0',
	in0=>led0, in1=>led1, in2=>led2, in3=>led3, an=>an, sseg=>sseg);

end Behavioral;

