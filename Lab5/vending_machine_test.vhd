--------------------------------------------------------------------------------
-- Company:
-- Engineer:
--
-- Create Date:   14:33:11 04/08/2018
-- Design Name:
-- Module Name:   C:/Users/Ben L/Ceng342Labs/Lab5/vending_machine_test.vhd
-- Project Name:  Lab5
-- Target Device:
-- Tool versions:
-- Description:
--
-- VHDL Test Bench Created by ISE for module: vending_machine_state
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

ENTITY vending_machine_test IS
END vending_machine_test;

ARCHITECTURE behavior OF vending_machine_test IS

    -- Component Declaration for the Unit Under Test (UUT)

    COMPONENT vending_machine_state
    PORT(
         N : IN  std_logic;
         D : IN  std_logic;
         Q : IN  std_logic;
         clk : IN  std_logic;
         reset : IN  std_logic;
         P : OUT  std_logic;
         C : OUT  std_logic
        );
    END COMPONENT;


   --Inputs
   signal N : std_logic := '0';
   signal D : std_logic := '0';
   signal Q : std_logic := '0';
   signal clk : std_logic := '0';
   signal reset : std_logic := '0';

 	--Outputs
   signal P : std_logic;
   signal C : std_logic;

   -- Clock period definitions
   constant clk_period : time := 10 ns;

BEGIN

	-- Instantiate the Unit Under Test (UUT)
   uut: vending_machine_state PORT MAP (
          N => N,
          D => D,
          Q => Q,
          clk => clk,
          reset => reset,
          P => P,
          C => C
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

      N<='1';
      wait for 10ns;
      N<='0';

      D<='1';
      wait for 10ns;
      D<='0';

      wait for 20ns;

      N<='1';
      wait for 10ns;
      N<='0';

      wait for 20ns;
      
      D<='1';
      wait for 10ns;
      D<='0';

      Q<='1';
      wait for 10ns;
      Q<='0';

      N<='1';
      wait for 10ns;
      N<='0';

      D<='1';
      wait for 10ns;
      D<='0';

      wait for 20ns;

      N<='1';
      wait for 10ns;
      N<='0';

      D<='1';
      wait for 10ns;
      D<='0';

      wait;
   end process;

END;
