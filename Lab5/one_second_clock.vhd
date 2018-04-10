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

architecture osc_arch of one_second_clock is
  CONSTANT DVSR: integer:=5000000;
  signal ms_count, ms_count_next: unsigned(15 downto 0):="0000000000000000";
  signal ms_reg, ms_next: unsigned(22 downto 0) := "00000000000000000000000";
  signal ms_tick: std_logic;
  signal s_reg, s_reg_next: std_logic := '0';
begin
  --register
  process(clk)
  begin
    if (clk'event and clk='1') then
      ms_reg<=ms_next;
      s_reg<=s_reg_next;
      ms_count<=ms_count_next;
    end if;
  end process;

  --next state logic
  ms_next<=(others=>'0') when reset='1' or (ms_reg=DVSR) else
    ms_reg+1;
  ms_tick<='1' when ms_reg=DVSR else '0';

  process(ms_tick, ms_count, s_reg, reset)
  begin
    ms_count_next<=ms_count;
    s_reg_next<=s_reg;
    if reset='1' then
      ms_count_next<="0000000000000000";
      s_reg_next<='0';
    elsif ms_tick='1' then
      if (ms_count/=1000) then
        ms_count_next<=ms_count+1;
      else
        ms_count_next<="0000000000000000";
        s_reg_next<=not s_reg;
      end if;
    end if;
  end process;

  s_tick<=s_reg;

end osc_arch;
