----------------------------------------------------------------------------------
-- Company:
-- Engineer:
--
-- Create Date:    14:42:52 04/08/2018
-- Design Name:
-- Module Name:    input_debounce_filter - arch_filt
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

entity input_debounce_filter is
    Port ( clk, reset : in  STD_LOGIC;
           sw : in  STD_LOGIC;
           db : out  STD_LOGIC);
end input_debounce_filter;

architecture arch_filt of input_debounce_filter is
  constant N: integer:=19;
  signal q_reg, q_next: unsigned(N-1 downto 0);
  signal m_tick: std_logic;
  type eg_state_type is (zero, wait1_1, wait1_2, wait1_3,
                          one, wait0_1, wait0_2, wait0_3);
  signal state_reg, state_next: eg_state_type;
begin

  process(clk)
  begin
    if (clk'event and clk='1') then
      q_reg<=q_next;
    end if;
  end process;
  --next-state logic
  q_next<=q_reg+1;
  --output tick
  m_tick<='1' when q_reg=0 else
    '0';
  --debouncing fsm
  process(clk,reset)
  begin
    if(reset='1') then
      state_reg<=zero;
    elsif(clk'event and clk='1') then
      state_reg<=state_next;
    end if;
  end process;
  --next-state/output
  process(state_reg, sw, m_tick)
  begin
    state_next<=state_reg;
    db<='0';

    case state_reg is
      when zero=>
        if sw='1' then
          state_next<=wait1_1;
        else state_next<=zero;
        end if;

      when wait1_1=>
        if sw='0' then
          state_next<=zero;
        else
          if m_tick='1' then
            state_next<=wait1_2;
          end if;
        end if;

      when wait1_2=>
        if sw='0' then
          state_next<=zero;
        else
          if m_tick='1' then
            state_next<=wait1_3;
          end if;
        end if;

      when wait1_3=>
        if sw='0' then
          state_next<=zero;
        else
          if m_tick='1' then
            state_next<=one;
          end if;
        end if;

      when one=>
        db<='1';
        if sw='0' then
          state_next<=wait0_1;
        end if;

      when wait0_1=>
        if sw='1' then
          state_next<=one;
        else
          if m_tick='1' then
            state_next<=wait0_2;
          end if;
        end if;

      when wait0_2=>
        if sw='1' then
          state_next<=one;
        else
          if m_tick='1' then
            state_next<=wait0_3;
          end if;
        end if;

      when wait0_3=>
        if sw='1' then
          state_next<=one;
        else
          if m_tick='1' then
            state_next<=zero;
          end if;
        end if;
    end case;
  end process;
end arch_filt;
