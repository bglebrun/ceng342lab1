----------------------------------------------------------------------------------
-- Company:        South Dakota School of Mines and Technology
-- Engineer:       Benjamin LeBrun
--
-- Create Date:    01:30:51 04/26/2018
-- Design Name:    MIPS Memory and Reg IO
-- Module Name:    reg - reg_arch
-- Project Name:   Lab 6 - MIPS Processor
-- Target Devices:
-- Tool versions:
-- Description:
--
-- Dependencies:
--
-- Revision:
-- Revision 0.8
-- Additional Comments:
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity reg is
    Port ( clk, reset : in  STD_LOGIC;
           write_reg: in  STD_LOGIC;
           addr1, addr2 : in STD_LOGIC_VECTOR(4 downto 0);
           write_addr, read_addr : in  STD_LOGIC_VECTOR(4 downto 0);
           data : in  STD_LOGIC_VECTOR(31 downto 0);
           reg1, reg2, read_reg : out  STD_LOGIC_VECTOR(31 downto 0));
end reg;

architecture reg_arch of reg is
  type reg_mem is array (31 downto 0) of std_logic_vector(31 downto 0);
  signal mem : reg_mem;
begin
  -- reg
  process(clk, reset, mem)
  begin
    --write
    if (reset='1') then
      mem <=(others=>(others=>'0'));
    elsif(clk'event and clk='1') then
      if(write_reg='1') then
        mem(to_integer(unsigned(write_addr))) <= data;
      end if;
    end if;

    --read
    reg1<=mem(to_integer(unsigned(addr1)));
    reg2<=mem(to_integer(unsigned(addr2)));
    read_reg<=mem(to_integer(unsigned(read_addr)));
  end process;
end reg_arch;
