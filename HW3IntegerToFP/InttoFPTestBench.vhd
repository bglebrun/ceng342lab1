--------------------------------------------------------------------------------
-- Company: South Dakota School of Mines and Technology
-- Engineer: Benjamin LeBrun
--
-- Create Date:   14:00:35 02/23/2018
-- Design Name:   Integer to Floating Point test bench
-- Module Name:   C:/Users/7131322/ceng342labs/HW3IntegerToFP/InttoFPTestBench.vhd
-- Project Name:  HW3IntegerToFP
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: IntToFP
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;
 
ENTITY InttoFPTestBench IS
END InttoFPTestBench;
 
ARCHITECTURE behavior OF InttoFPTestBench IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT IntToFP
    PORT(
         IntegerInput : IN  std_logic_vector(7 downto 0);
         FPOutput : OUT  std_logic_vector(12 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal IntegerInput : std_logic_vector(7 downto 0) := "00000000";

 	--Outputs
   signal FPOutput : std_logic_vector(12 downto 0);
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: IntToFP PORT MAP (
          IntegerInput => IntegerInput,
          FPOutput => FPOutput
        );
		  
   -- Stimulus process
   stim_proc: process
	variable n : integer;
   begin		
	for n in -15 to 30
	loop
		IntegerInput <= std_logic_vector(to_signed(n, 8));
		wait for 10 ns;
		end loop;
   end process;

END;
