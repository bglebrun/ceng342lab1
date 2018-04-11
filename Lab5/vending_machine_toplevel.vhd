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
    Port ( btn: in STD_LOGIC_VECTOR(3 downto 0);
           clk, reset : in  STD_LOGIC;
           led : out  STD_LOGIC_VECTOR(7 downto 0));
end vending_machine_toplevel;

architecture Behavioral of vending_machine_toplevel is
  signal N_debounced, D_debounced, Q_debounced: std_logic;
  signal N_in, D_in, Q_in: std_logic;
  signal P_out, C_out: std_logic;
  signal s_clk: std_logic;
begin
  -- inputs
  N_in<=btn(0);
  D_in<=btn(1);
  Q_in<=btn(2);

  slow_down_bucko: entity work.one_second_clock(osc_arch)
  port map(reset=>reset, clk=>clk, s_tick=>s_clk);

  debounce_N: entity work.input_debounce_filter(arch_filt)
  port map(sw=>N_in, db=>N_debounced, clk=>s_clk, reset=>reset);

  debounce_D: entity work.input_debounce_filter(arch_filt)
  port map(sw=>D_in, db=>D_debounced, clk=>s_clk, reset=>reset);

  debounce_Q: entity work.input_debounce_filter(arch_filt)
  port map(sw=>Q_in, db=>Q_debounced, clk=>s_clk, reset=>reset);

  fsm_implementation: entity work.vending_machine_state(fsm_arch)
  port map(N=>N_debounced, D=>D_debounced, Q=>Q_debounced,
          P=>P_out, C=>C_out, clk=>s_clk, reset=>reset);

  --  fsm_implementation: entity work.vending_machine_state(fsm_arch)
  --  port map(N=>N_in, D=>D_in, Q=>Q_in,
  --      P=>P_out, C=>C_out, clk=>s_clk, reset=>reset);

  -- outputs
  led(0)<=P_out;
  led(1)<=C_out;
  led(7)<=s_clk;

end Behavioral;
