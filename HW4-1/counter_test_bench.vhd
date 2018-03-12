--------------------------------------------------------------------------------
-- Company: South Dakota School of Mines and Technology
-- Engineer: Benjamin LeBrun
--
-- Create Date:   21:45:52 03/11/2018
-- Design Name:   counter_test_bench
-- Module Name:   C:/Users/Ben L/Ceng342Labs/HW4-1/counter_test_bench.vhd
-- Project Name:  HW4-1
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: updown_counter_16_bit
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.9 - 
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
 
ENTITY counter_test_bench IS
END counter_test_bench;
 
ARCHITECTURE behavior OF counter_test_bench IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT updown_counter_16_bit
    PORT(
         RESET : IN  std_logic;
         UP_DOWN : IN  std_logic;
         CLK : IN  std_logic;
         COUT : OUT  std_logic_vector(7 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal RESET : std_logic := '0';
   signal UP_DOWN : std_logic := '0';
   signal CLK : std_logic := '0';

 	--Outputs
   signal COUT : std_logic_vector(7 downto 0);

   -- Clock period definitions
   constant CLK_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: updown_counter_16_bit PORT MAP (
          RESET => RESET,
          UP_DOWN => UP_DOWN,
          CLK => CLK,
          COUT => COUT
        );

   -- Clock process definitions
   CLK_process :process
   begin
		CLK <= '0';
		wait for CLK_period/2;
		CLK <= '1';
		wait for CLK_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

      wait for CLK_period*10;

      -- insert stimulus here 
		
		RESET<='1';
		wait for 100ns;
		RESET<='0';
		wait for 100ns;
		UP_DOWN<='1';

      wait;
   end process;

END;
