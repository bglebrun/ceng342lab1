----------------------------------------------------------------------------------
-- Company:
-- Engineer:
--
-- Create Date:    02:13:53 04/26/2018
-- Design Name:
-- Module Name:    processor - mips_arch
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

entity processor is
    Port ( clk, reset, btn : in  STD_LOGIC;
           -- btn : in  STD_LOGIC_VECTOR(3 downto 0);
           sw : in  STD_LOGIC_VECTOR(7 downto 0);
           led : out  STD_LOGIC_VECTOR(7 downto 0));
end processor;

architecture mips_arch of processor is
  -- button input
  signal btn_debounce, reg_write: std_logic;
  -- ALU
  signal reg1, reg2, reg3: std_logic_vector(31 downto 0);
  signal op: std_logic_vector(2 downto 0);
  -- program counter
  signal prog_count, pc_next: unsigned(31 downto 0);
  signal instruction: std_logic_vector(31 downto 0);
  --signal
  signal read_head: std_logic_vector(31 downto 0);
  signal read_add: std_logic_vector(4 downto 0);
begin
  op<=instruction(2 downto 0);

  debounce_filter : entity work.input_debounce_filter(arch_filt)
  port map(clk=>clk, reset=>reset, sw=>btn, db=>btn_debounce);

  alu_unit : entity work.arith_logic_unit(proc_arch)
  port map(op=>op, reg1=>reg2, reg2=>reg3, res=>reg1);

  reg_unit: entity work.reg(reg_arch)
  port map(clk=>clk, reset=>reset, write_reg=>reg_write, ad1=>instruction(25 downto 21),
    ad2=>instruction(20 downto 16), write_add=>instruction(15 downto 11),
    read_add=>read_add, data=>reg1, reg1=>reg2, reg2=>reg3, read_reg=>read_head);

  io_unit: entity work.io_fsmd(fsmd_arch)
  port map(clk=>clk, reset=>reset, btn_debounce=>btn_debounce, sw=>sw,
  instructions=>instruction, reg2=>reg2, reg3=>reg3, write_to_reg=>reg_write,
  output_reg=>read_head,led=>led);
  
end mips_arch;
