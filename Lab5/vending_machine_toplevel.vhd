----------------------------------------------------------------------------------
-- Company:
-- Engineer:
--
-- Create Date:    16:40:40 04/08/2018
-- Design Name:
-- Module Name:    vending_machine_toplevel - Behavioral
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

entity vending_machine_toplevel is
    Port ( N_in, D_in, Q_in : in  STD_LOGIC;
           clk, reset : in  STD_LOGIC;
           P_out, C_out : in  STD_LOGIC);
end vending_machine_toplevel;

architecture Behavioral of vending_machine_toplevel is
  signal N_debounced, D_debounced, Q_debounced: std_logic;
begin
  debounce_N: entity work.input_debounce_filter(arch_filt)
  port map(sw=>N_in, db=>N_debounced, clk=>clk, reset=>reset);

  debounce_D: entity work.input_debounce_filter(arch_filt)
  port map(sw=>D_in, db=>D_debounced, clk=>clk, reset=>reset);

  debounce_Q: entity work.input_debounce_filter(arch_filt)
  port map(sw=>Q_in, db=>Q_debounced, clk=>clk, reset=>reset);

  fsm_implementation: entity work.vending_machine_state(fsm_arch)
  port map(N=>N_debounced, D=>D_debounced, Q=>Q_debounced,
          P=>P_out, C=>C_out, clk=>clk, reset=>reset);

end Behavioral;
