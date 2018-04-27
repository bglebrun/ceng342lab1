----------------------------------------------------------------------------------
-- Company:
-- Engineer:
--
-- Create Date:    20:35:06 04/26/2018
-- Design Name:
-- Module Name:    input_fsmd - fsmd_arch
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

entity io_fsmd is
    Port ( clk, reset : in  STD_LOGIC;
           btn_debounce : in  STD_LOGIC;
           sw : in  STD_LOGIC_VECTOR(7 downto 0);
           output_reg, reg2, reg3 : in  STD_LOGIC_VECTOR(31 downto 0);
           write_to_reg: out STD_LOGIC;
           instructions: inout STD_LOGIC_VECTOR(31 downto 0);
           led : out  STD_LOGIC_VECTOR(7 downto 0));
end io_fsmd;

architecture fsmd_arch of io_fsmd is
  -- processor state
  type proc_state is (in1, in1_p, in2, in2_p, in3, in3_p,
    in4, in4_p, op, out1, out1_p, out2, out2_p, out3, out3_p, out4, out4_p);
  signal reg_state, reg_next : proc_state;
  -- program counter
  signal prog_count, pc_next, branch_to: unsigned(31 downto 0);
begin
    process(clk, reset)
    begin
      if(reset='1') then
        reg_state<=in1;
      elsif (clk'event and clk='1') then
        reg_state<=reg_next;
        prog_count<=pc_next;
      end if;
    end process;

    branch_to<=unsigned("00000000000000"&instructions(15 downto 0)&"00")
      + prog_count + 4;

    process(reg_state, btn_debounce, instructions, reg2, reg3, prog_count,
      branch_to, output_reg, sw)
    begin
      --defaults
      reg_next<=reg_state;
      pc_next<=prog_count;
      write_to_reg<='0';

      --fsmd
      case reg_state is
        --OPERATIONS
        when op=>
          pc_next<= prog_count + 1;
          if(unsigned(instructions(31 downto 26))=0) then
            write_to_reg<='1';
          elsif (unsigned(reg2)=unsigned(reg3)) then
            pc_next<=branch_to;
          end if;
          reg_next<=out1;

          -- OUTPUTS
        when out1=>
          if(btn_debounce='1') then
            reg_next<=out1_p;
          else led<=output_reg(31 downto 24);
          end if;
        when out1_p=>
          if(btn_debounce='0') then
            reg_next<=out2;
          else led<=output_reg(31 downto 24);
          end if;
        when out2=>
          if(btn_debounce='1') then
            reg_next<=out2_p;
          else led<=output_reg(23 downto 16);
          end if;
        when out2_p=>
          if(btn_debounce='0') then
            reg_next<=out3;
          else led<=output_reg(23 downto 16);
          end if;
        when out3=>
          if(btn_debounce='1') then
            reg_next<=out3_p;
          else led<=output_reg(15 downto 8);
          end if;
        when out3_p=>
          if(btn_debounce='0') then
            reg_next<=out4;
          else led<=output_reg(15 downto 8);
          end if;
        when out4=>
          if(btn_debounce='1') then
            reg_next<=out4_p;
          else led<=output_reg(7 downto 0);
          end if;
        when out4_p=>
          if(btn_debounce='0') then
            reg_next<=in1;
          else led<=output_reg(7 downto 0);
          end if;

        -- INPUTS
        when in1=>
          if(btn_debounce='1') then
            instructions(31 downto 24)<=sw;
            reg_next<=in1_p;
          end if;
        when in1_p=>
          if(btn_debounce='0') then
            reg_next<=in2;
          end if;
        when in2=>
          if(btn_debounce='1') then
            instructions(23 downto 16)<=sw;
            reg_next<=in2_p;
          end if;
        when in2_p=>
          if(btn_debounce='0') then
            reg_next<=in3;
          end if;
        when in3=>
          if(btn_debounce='1') then
            instructions(15 downto 8)<=sw;
            reg_next<=in3_p;
          end if;
        when in3_p=>
          if(btn_debounce='0') then
            reg_next<=in4;
          end if;
        when in4=>
          if(btn_debounce='1') then
            instructions(7 downto 0)<=sw;
            reg_next<=in4_p;
          end if;
        when in4_p=>
          if(btn_debounce='0') then
            reg_next<=op;
          end if;
        end case;
    end process;

end fsmd_arch;
