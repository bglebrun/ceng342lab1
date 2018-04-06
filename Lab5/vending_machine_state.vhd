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

architecture Behavioral of vending_machine_state is
  type reg_state_type is (s0, s5, s10, s25, change, dispense);
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
    
  end process;
end Behavioral;
