--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   22:24:35 02/14/2018
-- Design Name:   
-- Module Name:   C:/Users/Ben L/Ceng342Labs/Lab2/incrementorTestBench.vhd
-- Project Name:  Lab2
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: BCDIncrementor
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
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
USE ieee.numeric_std.ALL;
 
ENTITY incrementorTestBench IS
END incrementorTestBench;
 
ARCHITECTURE behavior OF incrementorTestBench IS 
  
    COMPONENT BCDIncrementor
    PORT(
         bcdin : IN  std_logic_vector(7 downto 0);
         bcdout : OUT  std_logic_vector(7 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal bcdin : std_logic_vector(7 downto 0) := (others => '0');

 	--Outputs
   signal bcdout : std_logic_vector(7 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
  
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: BCDIncrementor PORT MAP (
          bcdin => bcdin,
          bcdout => bcdout
        );


   -- Stimulus process
   stim_proc: process 
	variable m :integer;
   begin
		for m in 0 to 15
		loop
		bcdin <= std_logic_vector(to_unsigned(m,4));
		wait for 50 ns;
		end loop;
	end process;

END;
