----------------------------------------------------------------------------------
-- Company:
-- Engineer:
--
-- Create Date:    12:32:22 03/25/2018
-- Design Name:
-- Module Name:    stopwatch - arch
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

entity stopwatch is
    Port ( clk : in  STD_LOGIC;
           go, clr : in  STD_LOGIC;
           m, s1, s0, d : out  STD_LOGIC_VECTOR(3 downto 0));
end stopwatch;

architecture if_arch of stopwatch is
  constant DVSR: integer:=5000000;
  signal ms_reg, ms_next: unsigned(22 downto 0):="00000000000000000000000";
  signal d3_reg, d2_reg, d1_reg, d0_reg: unsigned(3 downto 0):="0000";
  signal d3_next, d2_next, d1_next, d0_next: unsigned(3 downto 0):="0000";
  signal ms_tick: std_logic;
begin
  --register
  process(clk)
    begin
    if (clk'event and clk='1') then
      ms_reg <= ms_next;
      d3_reg <= d3_next;
      d2_reg <= d2_next;
      d1_reg <= d1_next;
      d0_reg <= d0_next;
    end if;
  end process;

  --next-state logic
  --0.1 sec tick generator: mod-5000000
  ms_next<=(others=>'0') when clr='1' or (ms_reg=DVSR and go='1') else
    ms_reg+ 1 when go='1' else
    ms_reg;
    ms_tick<= '1' when ms_reg=DVSR else '0';

  --3 digit incrementor
  process(d0_reg,d1_reg,d2_reg,d3_reg,ms_tick,clr)
  begin
    --defult
    d0_next <= d0_reg;
    d1_next <= d1_reg;
    d2_next <= d2_reg;
    d3_next <= d3_reg;
    if clr='1' then
      d0_next <= "0000";
      d1_next <= "0000";
      d2_next <= "0000";
      d3_next <= "0000";
    elsif ms_tick='1' then
      if (d0_reg/=9) then
        d0_next <= d0_reg + 1;
      else       --reach XXX9
        d0_next <= "0000";
        if (d1_reg/=9) then
          d1_next <= d1_reg + 1;
        else    --reach XX99
          d1_next <= "0000";
          if (d2_reg/=5) then
            d2_next <= d2_reg + 1;
          else --reach X599
            d2_next <= "0000";
            if (d3_reg/=9) then
              d3_next<= d3_reg + 1;
            else --reach 9599
              d3_next<="0000";
            end if;
          end if;
        end if;
      end if;
    end if;
  end process;

  --output logic
  d <= std_logic_vector(d0_reg);
  s0 <= std_logic_vector(d1_reg);
  s1 <= std_logic_vector(d2_reg);
  m <= std_logic_vector(d3_reg);
end if_arch;
