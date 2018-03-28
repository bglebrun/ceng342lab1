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
  type side_street_state is (gs, ys, rs);
  type main_street_state is (gm, ym, rm);
  signal side_reg, side_next: side_street_state;
  signal main_reg, main_next: main_street_state;
begin
  -- state reg
  process(clk, reset)
  begin
    if(clk'event and clk='1') then
      side_reg <= side_next;
      main_reg <= main_next;
    end if;
  end process;

  -- next state/output logic
  

end Behavioral;
