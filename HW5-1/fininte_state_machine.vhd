----------------------------------------------------------------------------------
-- Company: South Dakota School of Mines and Technology
-- Engineer: Benjamin LeBrun
--
-- Create Date:    23:36:08 03/27/2018
-- Design Name:   Finite state machine
-- Module Name:    fininte_state_machine - Behavioral
-- Project Name:   Homework 5 - 1
-- Target Devices:
-- Tool versions:
-- Description:
--
-- Dependencies:
--
-- Revision:
-- Revision 0.9
-- Additional Comments:
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity fininte_state_machine is
    Port ( x : in  STD_LOGIC;
           clk, reset: in STD_LOGIC;
           y0, y1 : out  STD_LOGIC);
end fininte_state_machine;

architecture Behavioral of fininte_state_machine is
  type reg_state_type is (s0, s1, s2);
  signal state_reg, state_next: reg_state_type;
begin
  --state register
  process(clk,reset)
  begin
    if(reset='1') then
      state_reg<=s0;
    elsif(clk'event and clk='1') then
      state_reg<=state_next;
    end if;
  end process;

  --next state/output logic
  process(state_reg, clk, x)
  begin
    state_next<=state_reg;
    y0<='0';
    y1<='0';
    case state_reg is
      when s0=>
        if x='1' then
          state_next<=s1;
        else
          state_next<=s2;
        end if;
      when s1=>
        y1<='1';
        y0<='1';
        if x='1' then
          state_next<=s0;
        else
          state_next<=s1;
        end if;
      when s2=>
        if (clk'event and clk='1') then
          state_next<=s0;
        end if;
    end case;
  end process;

end Behavioral;
