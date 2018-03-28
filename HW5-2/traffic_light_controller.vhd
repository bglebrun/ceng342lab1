----------------------------------------------------------------------------------
-- Company: South Dakota School of Mines and Technology
-- Engineer: Benjamin LeBrun
--
-- Create Date:    09:48:56 03/28/2018
-- Design Name:    Traffic Light Controller
-- Module Name:    traffic_light_controller - Behavioral
-- Project Name:   Homework 5-2
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
--use IEEE.NUMERIC_STD.ALL;

entity traffic_light_controller is
    Port ( ns, ew : in  STD_LOGIC;
           clk : in STD_LOGIC;
           gm, ym, rm, gs, ys, rs : out  STD_LOGIC);
end traffic_light_controller;

architecture Behavioral of traffic_light_controller is
  type street_state is (s0, s1, s2, s3);
  signal state_reg, state_next: street_state;
begin
  -- state reg
  process(clk)
  begin
    if(clk'event and clk='1') then
      state_reg<=state_next;
    end if;
  end process;

  -- next state/output logic
process(state_reg, ns, ew)
begin
  -- defaults
  state_next<=state_reg;
  gm<='0';
  ym<='0';
  rm<='0';
  gs<='0';
  ys<='0';
  rs<='0';
  case state_reg is
    when s0 =>
      rs<='1';
      gm<='1';
      if ew='1' then
        state_next<=s1;
      else
        state_next<=s0;
      end if;
    when s1=>
      rs<='1';
      ym<='1';
      if ew='1' then
        state_next<=s2;
      else
        state_next<=s0;
      end if;
    when s2=>
      gs<='1';
      rm<='1';
      if ns='1' then
        state_next<=s3;
      else
        state_next<=s2;
      end if;
    when s3=>
      ys<='1';
      rm<='1';
      if ns='1' then
        state_next<=s0;
      else
        state_next<=s2;
      end if;
    end case;
  end process;

end Behavioral;
