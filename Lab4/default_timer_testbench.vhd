--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   12:49:28 03/25/2018
-- Design Name:   
-- Module Name:   C:/Users/Ben L/Ceng342Labs/Lab4/default_timer_testbench.vhd
-- Project Name:  Lab4
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: stopwatch
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
 
ENTITY default_timer_testbench IS
END default_timer_testbench;
 
ARCHITECTURE behavior OF default_timer_testbench IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT stopwatch
    PORT(
         clk : IN  std_logic;
         go : IN  std_logic;
         clr : IN  std_logic;
         d2 : OUT  std_logic_vector(3 downto 0);
         d1 : OUT  std_logic_vector(3 downto 0);
         d0 : OUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal go : std_logic := '0';
   signal clr : std_logic := '0';

 	--Outputs
   signal d2 : std_logic_vector(3 downto 0);
   signal d1 : std_logic_vector(3 downto 0);
   signal d0 : std_logic_vector(3 downto 0);

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: stopwatch PORT MAP (
          clk => clk,
          go => go,
          clr => clr,
          d2 => d2,
          d1 => d1,
          d0 => d0
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
		clr<='1';
		wait for 10 ns;
		clr<='0';
		
		wait for 10 ns;
		go<='1';

      wait;
   end process;

END;
