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
  signal op_reg: std_logic_vector(2 downto 0);
  signal instruction: std_logic_vector(31 downto 0);
  --signal
  signal read_head: std_logic_vector(31 downto 0);
  signal read_addr: std_logic_vector(4 downto 0);

  -- processor state
  type proc_state is (in1, in1_p, in2, in2_p, in3, in3_p,
    in4, in4_p, op, out1, out1_p, out2, out2_p, out3, out3_p, out4, out4_p);
  signal reg_state, reg_next : proc_state;
  -- program counter
  signal prog_count, pc_next, branch_to: unsigned(31 downto 0);
  -- output_reg
  signal read_out: std_logic_vector(31 downto 0);
begin

  debounce_filter : entity work.input_debounce_filter(arch_filt)
  port map(clk=>clk, reset=>reset, sw=>btn, db=>btn_debounce);

  alu_unit : entity work.arith_logic_unit(proc_arch)
  port map(op=>op_reg, reg1=>reg2, reg2=>reg3, res=>reg1);

  reg_unit: entity work.reg(reg_arch)
  port map(clk=>clk, reset=>reset, write_reg=>reg_write, addr1=>instruction(25 downto 21),
    addr2=>instruction(20 downto 16), write_addr=>instruction(15 downto 11),
    read_addr=>read_addr, data=>reg1, reg1=>reg2, reg2=>reg3, read_reg=>read_head);

  -- prue signals
  op_reg<=instruction(2 downto 0);
  read_addr<=sw(4 downto 0);
  branch_to<=unsigned("0000000000000000"&instruction(15 downto 0));

  -- memory read
  read_out<=read_head when sw(5)='0' else
    STD_LOGIC_VECTOR(prog_count) when sw(5)='1' else
    (others=>'0');

  -- clock
  process(clk, reset)
  begin
    if(reset='1') then
      reg_state<=in1;
    elsif (clk'event and clk='1') then
      reg_state<=reg_next;
      prog_count<=pc_next;
    end if;
  end process;

  process(reg_state, btn_debounce, instruction, reg2, reg3, prog_count,
    branch_to, sw, read_out)
  begin
    --defaults
    reg_next<=reg_state;
    pc_next<=prog_count;
    reg_write<='0';

    --fsmd
    case reg_state is
      --OPERATIONS
      when op=>
        pc_next<= prog_count + 1;
        -- Write to memory on clear register
        if(unsigned(instruction(31 downto 26))=0) then
          reg_write<='1';
        elsif ((instruction(31 downto 26)="001000") and (reg2=reg3)) then
          pc_next<=branch_to;
        end if;
        reg_next<=out1;

        -- OUTPUTS
      when out1=>
        if(btn_debounce='1') then
          reg_next<=out1_p;
        else led<=read_out(31 downto 24);
        end if;
      when out1_p=>
        if(btn_debounce='0') then
          reg_next<=out2;
        else led<=read_out(31 downto 24);
        end if;
      when out2=>
        if(btn_debounce='1') then
          reg_next<=out2_p;
        else led<=read_out(23 downto 16);
        end if;
      when out2_p=>
        if(btn_debounce='0') then
          reg_next<=out3;
        else led<=read_out(23 downto 16);
        end if;
      when out3=>
        if(btn_debounce='1') then
          reg_next<=out3_p;
        else led<=read_out(15 downto 8);
        end if;
      when out3_p=>
        if(btn_debounce='0') then
          reg_next<=out4;
        else led<=read_out(15 downto 8);
        end if;
      when out4=>
        if(btn_debounce='1') then
          reg_next<=out4_p;
        else led<=read_out(7 downto 0);
        end if;
      when out4_p=>
        if(btn_debounce='0') then
          reg_next<=in1;
        else led<=read_out(7 downto 0);
        end if;

      -- INPUTS
      when in1=>
        if(btn_debounce='1') then
          instruction(31 downto 24)<=sw;
          reg_next<=in1_p;
        end if;
      when in1_p=>
        if(btn_debounce='0') then
          reg_next<=in2;
        end if;
      when in2=>
        if(btn_debounce='1') then
          instruction(23 downto 16)<=sw;
          reg_next<=in2_p;
        end if;
      when in2_p=>
        if(btn_debounce='0') then
          reg_next<=in3;
        end if;
      when in3=>
        if(btn_debounce='1') then
          instruction(15 downto 8)<=sw;
          reg_next<=in3_p;
        end if;
      when in3_p=>
        if(btn_debounce='0') then
          reg_next<=in4;
        end if;
      when in4=>
        if(btn_debounce='1') then
          instruction(7 downto 0)<=sw;
          reg_next<=in4_p;
        end if;
      when in4_p=>
        if(btn_debounce='0') then
          reg_next<=op;
        end if;
      end case;
  end process;

end mips_arch;
