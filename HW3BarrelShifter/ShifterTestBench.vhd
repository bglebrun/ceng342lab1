--------------------------------------------------------------------------------
-- Company: South Dakota School of Mines and Technology
-- Engineer: Benjamin LeBrun
--
-- Create Date:   18:18:49 02/22/2018
-- Design Name:   Barrel Shifter Test Bench
-- Module Name:   ShifterTestBench.vhd
-- Project Name:  HW3BarrelShifter
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: multi_function_shifter
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.09
-- Additional Comments:
--
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

USE ieee.numeric_std.ALL;
 
ENTITY ShifterTestBench IS
END ShifterTestBench;
 
ARCHITECTURE behavior OF ShifterTestBench IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT multi_function_shifter
    PORT(
         ShiftTopInput : IN  std_logic_vector(7 downto 0);
         lr : IN  std_logic;
         ShiftTopOutput : OUT  std_logic_vector(7 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal ShiftTopInput : std_logic_vector(7 downto 0) := (others => '0');
   signal lr : std_logic := '0';

 	--Outputs
   signal ShiftTopOutput : std_logic_vector(7 downto 0);
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: multi_function_shifter PORT MAP (
          ShiftTopInput => ShiftTopInput,
          lr => lr,
          ShiftTopOutput => ShiftTopOutput
        );
		  
   -- Stimulus process
   stim_proc: process
		variable n:integer;
   begin
		lr<='0';
      for n in 0 to 24
		loop
			ShiftTopInput<=std_logic_vector(to_unsigned(n,8));
			wait for 20ns;
			end loop;
		lr<='1';
      for n in 0 to 24
		loop
			ShiftTopInput<=std_logic_vector(to_unsigned(n,8));
			wait for 20ns;
			end loop;
   end process;

END;
