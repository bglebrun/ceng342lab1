----------------------------------------------------------------------------------
-- Company: South Dakota School of Mines and Technology
-- Engineer: Benjamin LeBrun
--
-- Create Date:    14:11:50 04/22/2018
-- Design Name:	 Multiplication Register
-- Module Name:    n_mult - mult_arch
-- Project Name:	 Homework 6-2
-- Target Devices:
-- Tool versions:
-- Description:
--
-- Dependencies:
--
-- Revision:
-- Revision 0.09
-- Additional Comments:
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity n_mult is
    generic (N: integer := 8);
    Port ( a, b : in  STD_LOGIC_VECTOR( N-1 downto 0);
           clk, reset, start: in  STD_LOGIC;
           ready : out STD_LOGIC;
           p : out  STD_LOGIC_VECTOR((2*N)-1 downto 0));
end n_mult;


architecture mult_arch of n_mult is
  type reg_state_type is (idle, op, done);
  signal reg_state, reg_next: reg_state_type;
  signal it, it_next: unsigned(7 downto 0);
  signal a_mult: std_logic_vector(N-1 downto 0);
  signal bp_mult, bp_next: std_logic_vector((2*N)-1 downto 0);
begin

  process(clk, reset)
  begin
    if (reset='1') then
      ready<='0';
      reg_state<=idle;
    elsif (clk'event and clk='1') then
      reg_state<=reg_next;
      bp_mult<=bp_next;
      it<=it_next;
    end if;
  end process;

  process(reg_state, start, it)
  begin
    reg_next<=reg_state;
    ready<='0';
    p<=(others=>'0');
    case reg_state is
      when idle=>
        if (start='1') then
          reg_next<=op;
          a_mult<=a;
          bp_next((2*N)-1 downto N)<=(others=>'0');
          bp_next(N-1 downto 0)<=b;
          it_next<=unsigned(to_signed(N, 8));
        else ready<='1';
        end if;
      when op=>
        if (bp_mult(0)='1') then
          bp_next<='0' &
            std_logic_vector(
            unsigned(bp_mult((2*N)-1 downto N))+unsigned(a_mult))
            & bp_mult(N-1 downto 1);
          else
            bp_next<='0' & bp_mult((2*N)-1 downto 1);
        end if;
        it_next<=it-1;
        if (it=1) then
          reg_next<=done;
        end if;
      when done=>
        p<=bp_mult;
    end case;
  end process;
end mult_arch;
