----------------------------------------------------------------------------------
-- Company: South Dakota School of Mines and Technology
-- Engineer: Benjamin LeBrun
--
-- Create Date:    22:11:23 04/05/2018
-- Design Name:    Lab 5 - Moore state vending machine
-- Module Name:    vending_machine_state - Behavioral
-- Project Name:   Lab 5 - State machine
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

entity vending_machine_state is
    Port ( N, D, Q : in  STD_LOGIC;
           clk, reset: in STD_LOGIC;
           P, C : out  STD_LOGIC);
end vending_machine_state;

architecture fsm_arch of vending_machine_state is
  type reg_state_type is (s0, s5, s10, s15, s20, s25, change, dispense);
  signal state_reg, state_next: reg_state_type;
begin
  -- state register
  process(clk, reset)
  begin
    if (reset='1') then
      state_reg<=s0;
    elsif (clk'event and clk='1') then
      state_reg<=state_next;
    end if;
  end process;

  process(state_reg,N,D,Q)
  begin
    state_next<=state_reg;
    --defaults:
    P<='0'; --default 0
    C<='0'; --default 0

    -- state logic here
    if (Q='1' and state_next/=s25 and state_reg/=s25) then
      state_next<=s25;
    else
      case state_reg is
        when s0=>
          if N='1' then
            state_next<=s5;
          elsif D='1' then
            state_next<=s10;
          end if;
        when s5=>
          if N='1' then
            state_next<=s10;
          elsif D='1' then
            state_next<=s15;
          end if;
        when s10=>
          if N='1' then
            state_next<=s15;
          elsif D='1' then
            state_next<=s20;
          end if;
        when s15=>
          if N='1' then
            state_next<=s20;
          elsif D='1' then
            state_next<=s25;
          end if;
        when s20=>
          if (N='1' or D='1') then
            state_next<=s25;
          else
            state_next<=dispense;
          end if;
        when s25=>
          state_next<=change;
        when dispense=>
          P<='1';
          state_next<=s0;
        when change=>
          C<='1';
          state_next<=dispense;
        end case;
      end if;
  end process;
end fsm_arch;
