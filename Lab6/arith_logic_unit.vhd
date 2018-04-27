----------------------------------------------------------------------------------
-- Company:        South Dakota School of Mines and Technology
-- Engineer:       Benjamin LeBrun
--
-- Create Date:    02:01:14 04/26/2018
-- Design Name:    Arithmetic Logic Unit
-- Module Name:    arith_logic_unit - proc_arch
-- Project Name:   Lab 6 - MIPS Processor
-- Target Devices:
-- Tool versions:
-- Description:
--
-- Dependencies:
--
-- Revision:
-- Revision 0.8
-- Additional Comments: Easiest reg in the entire project
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity arith_logic_unit is
    Port ( op : in  STD_LOGIC_VECTOR(2 downto 0);
           reg1, reg2 : in  STD_LOGIC_VECTOR(31 downto 0);
           res : out  STD_LOGIC_VECTOR(31 downto 0));
end arith_logic_unit;

architecture proc_arch of arith_logic_unit is
  signal add, sub, an, o : std_logic_vector(31 downto 0);
begin
  -- Reg
  add <= std_logic_vector(signed(reg1) + signed(reg2));
  sub <= std_logic_vector(signed(reg1) - signed(reg2));
  an <= reg1 and reg2;
  o <= reg1 or reg2;

  process(op, add, sub, an, o)
  begin
    if (op="000") then
      res<=add;
    elsif (op="010") then
      res<=sub;
    elsif (op="100") then
      res<=an;
    elsif (op="101") then
      res<=o;
    else res<=(others=>'0');
    end if;
  end process;
end proc_arch;
