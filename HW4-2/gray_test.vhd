--------------------------------------------------------------------------------
-- Company: South Dakota School of Mines and Technology
-- Engineer: Benjamin LeBrun
--
-- Create Date:   01:11:09 03/12/2018
-- Design Name:   Four Bit grey code test bench
-- Module Name:   C:/Users/Ben L/Ceng342Labs/HW4-2/gray_test.vhd
-- Project Name:  Homework 4-2
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: gray_code_4_bit
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.9
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
 
ENTITY gray_test IS
END gray_test;
 
ARCHITECTURE behavior OF gray_test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT gray_code_4_bit
    PORT(
         clk : IN  std_logic;
         reset : IN  std_logic;
         cout : OUT  std_logic_vector(3 downto 0);
         debug_count : OUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal reset : std_logic := '0';

 	--Outputs
   signal cout : std_logic_vector(3 downto 0);
   signal debug_count : std_logic_vector(3 downto 0);

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: gray_code_4_bit PORT MAP (
          clk => clk,
          reset => reset,
          cout => cout,
          debug_count => debug_count
        );

   -- Clock process definitions
   clk_process :process
   begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
		reset<='1';
      wait for 100 ns;	
		reset<='0';
      wait for clk_period*10;

      -- insert stimulus here 

      wait;
   end process;

END;
