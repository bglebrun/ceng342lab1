----------------------------------------------------------------------------------
-- Company:
-- Engineer:
--
-- Create Date:    02:01:14 04/26/2018
-- Design Name:
-- Module Name:    arith_logic_unit - proc_arch
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

  -- output
  res <= add when (op="000") else
    sub when (op="010") else
    an when (op="100") else
    o when (op="100");

end proc_arch;
