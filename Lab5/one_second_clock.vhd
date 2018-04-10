----------------------------------------------------------------------------------
-- Company:
-- Engineer:
--
-- Create Date:    09:47:56 04/10/2018
-- Design Name:
-- Module Name:    one_second_clock - Behavioral
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

entity one_second_clock is
    Port ( clk, reset : in  STD_LOGIC;
           s_tick : out  STD_LOGIC);
end one_second_clock;

architecture Behavioral of one_second_clock is
  CONSTANT DVSR: integer:=5000000;
  signal ms_count: unsigned(7 downto 0):="00000000";
  signal ms_reg, ms_next: unsigned(22 downto 0) := "00000000000000000000000";
  signal ms_tick: std_logic;
begin
  --register
  process(clk)
  begin
    if (clk'event and clk='1') then
      ms_reg<=ms_next;
    end if;
  end process;

  --next state logic
  ms_next<=(others=>'0') when reset='1' or (ms_reg=DVSR) else
    ms_reg+1;
  ms_tick<='1' when ms_reg=DVSR else '0';

  process(ms_tick)
  begin
    if ms_tick='1' then
      if (ms_count=100) then
        s_tick<='1';
        ms_count<="00000000";
      else
        ms_count<=ms_count+1;
        s_tick<='0';
      end if;
    end if;
  end process;

end Behavioral;
