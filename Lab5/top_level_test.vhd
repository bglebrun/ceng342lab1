--------------------------------------------------------------------------------
-- Company:
-- Engineer:
--
-- Create Date:   13:08:11 04/11/2018
-- Design Name:
-- Module Name:   C:/Users/7131322/ceng342labs/Lab5/top_level_test.vhd
-- Project Name:  Lab5
-- Target Device:
-- Tool versions:
-- Description:
--
-- VHDL Test Bench Created by ISE for module: vending_machine_toplevel
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

ENTITY top_level_test IS
END top_level_test;

ARCHITECTURE behavior OF top_level_test IS

    -- Component Declaration for the Unit Under Test (UUT)

    COMPONENT vending_machine_toplevel
    PORT(
         btn : IN  std_logic_vector(3 downto 0);
         clk : IN  std_logic;
         reset : IN  std_logic;
         led : OUT  std_logic_vector(7 downto 0)
        );
    END COMPONENT;


   --Inputs
   signal btn : std_logic_vector(3 downto 0) := (others => '0');
   signal clk : std_logic := '0';
   signal reset : std_logic := '0';

 	--Outputs
   signal led : std_logic_vector(7 downto 0);

   -- Clock period definitions
   constant clk_period : time := 20 ns;

BEGIN

	-- Instantiate the Unit Under Test (UUT)
   uut: vending_machine_toplevel PORT MAP (
          btn => btn,
          clk => clk,
          reset => reset,
          led => led
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
      wait for 100000000 ns;
      btn(0)<='1';
      wait for 10 ns;
      btn(0)<='0';

      btn(1)<='1';
      wait for 10 ns;
      btn(0)<='0';

      btn(1)<='1';
      wait for 10 ns;
      btn(0)<='0';

      wait;
   end process;

END;
