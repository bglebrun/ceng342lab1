--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   20:45:42 03/14/2018
-- Design Name:   
-- Module Name:   C:/Users/Ben L/Ceng342Labs/Lab3/counter_4b_m12_testbench.vhd
-- Project Name:  Lab3
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: counter_4b_mod_12
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
 
ENTITY counter_4b_m12_testbench IS
END counter_4b_m12_testbench;
 
ARCHITECTURE behavior OF counter_4b_m12_testbench IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT counter_4b_mod_12
    PORT(
         reset : IN  std_logic;
         pause : IN  std_logic;
         clk : IN  std_logic;
         max_tick : OUT  std_logic;
         cout : OUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal reset : std_logic := '0';
   signal pause : std_logic := '0';
   signal clk : std_logic := '0';

 	--Outputs
   signal max_tick : std_logic;
   signal cout : std_logic_vector(3 downto 0);

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: counter_4b_mod_12 PORT MAP (
          reset => reset,
          pause => pause,
          clk => clk,
          max_tick => max_tick,
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
	
	-- Reset test process def
	reset_test :process
	begin
		reset<='0';
		wait for clk_period*50;
		reset<='1';
		wait for clk_period*1;
	end process;
 
	-- Pause test process def
	pause_test :process
	begin
		pause<='0';
		wait for clk_period*20;
		pause<='1';
		wait for clk_period*2;
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
