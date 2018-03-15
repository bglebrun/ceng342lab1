--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   01:31:22 03/12/2018
-- Design Name:   
-- Module Name:   C:/Users/Ben L/Ceng342Labs/HW4-2/gray_one_bit_test.vhd
-- Project Name:  HW4-2
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: gray_code_1_bit
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
 
ENTITY gray_one_bit_test IS
END gray_one_bit_test;
 
ARCHITECTURE behavior OF gray_one_bit_test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT gray_code_1_bit
    PORT(
         clk : IN  std_logic;
         reset : IN  std_logic;
         cout : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal reset : std_logic := '0';

 	--Outputs
   signal cout : std_logic;

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: gray_code_1_bit PORT MAP (
          clk => clk,
          reset => reset,
          cout => cout
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
      wait for 100 ns;	

      wait for clk_period*10;

      -- insert stimulus here 

      wait;
   end process;

END;
