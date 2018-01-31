--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   19:59:42 01/30/2018
-- Design Name:   
-- Module Name:   C:/Users/Ben L/Labs/Lab1/adderSim.vhd
-- Project Name:  Lab1
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: fa1
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
--USE ieee.numeric_std.ALL;
 
ENTITY adderSim IS
END adderSim;
 
ARCHITECTURE behavior OF adderSim IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT fa1
    PORT(
         a : IN  std_logic;
         b : IN  std_logic;
         carryIn : IN  std_logic;
         sum : OUT  std_logic;
         carryOut : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal a : std_logic := '0';
   signal b : std_logic := '0';
   signal carryIn : std_logic := '0';

 	--Outputs
   signal sum : std_logic;
   signal carryOut : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: fa1 PORT MAP (
          a => a,
          b => b,
          carryIn => carryIn,
          sum => sum,
          carryOut => carryOut
        );


   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	
		a <= '0'; b <= '0'; carryIn <= '0';
		
		wait for 100 ns;	
		a <= '0'; b <= '0'; carryIn <= '1';
		
		wait for 100 ns;	
		a <= '0'; b <= '1'; carryIn <= '0';
		
		wait for 100 ns;	
		a <= '0'; b <= '1'; carryIn <= '1';
		
		wait for 100 ns;	
		a <= '1'; b <= '0'; carryIn <= '0';
		
		wait for 100 ns;	
		a <= '1'; b <= '0'; carryIn <= '1';
		
		wait for 100 ns;	
		a <= '1'; b <= '1'; carryIn <= '0';
		
		wait for 100 ns;	
		a <= '1'; b <= '1'; carryIn <= '1';

      -- insert stimulus here 

      wait;
   end process;

END;
