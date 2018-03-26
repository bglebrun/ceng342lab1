----------------------------------------------------------------------------------
-- Company:
-- Engineer:
--
-- Create Date:    18:04:26 03/25/2018
-- Design Name:
-- Module Name:    minute_stop_watch_lcd - Behavioral
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

entity minute_stop_watch_lcd is
    Port ( clk : in  STD_LOGIC;
           btn : in  STD_LOGIC_VECTOR(3 downto 0);
           an : out  STD_LOGIC_VECTOR(3 downto 0);
           sseg : out  STD_LOGIC_VECTOR(7 downto 0));
end minute_stop_watch_lcd;

architecture Behavioral of minute_stop_watch_lcd is
  signal d3, d2, d1, d0: std_logic_vector(3 downto 0);
  signal s3, s2, s1, s0: std_logic_vector(7 downto 0);
begin
  sseg_0: entity work.hex_to_sseg(ds_arch)
  port map(hex=>d0, dp=>'1', sseg=>s0);

  sseg_1: entity work.hex_to_sseg(ds_arch)
  port map(hex=>d1, dp=>'0', sseg=>s1);

  sseg_2: entity work.hex_to_sseg(ds_arch)
  port map(hex=>d2, dp=>'1', sseg=>s2);

  sseg_3: entity work.hex_to_sseg(ds_arch)
  port map(hex=>d3, dp=>'0', sseg=>s3);

  disp_unit: entity work.disp_mux(arch)
  port map(
    clk=>clk, reset=>'0',
    in3=>s3, in2=>s2, in1=>s1, in0=>s0,
    an=>an, sseg=>sseg
  );

  stop_watch: entity work.stopwatch(if_arch)
  port map(
    clk=>clk, go=>btn(1), clr=>btn(0), m=>d3, s1=>d2, s0=>d1, d=>d0
  );
end Behavioral;
