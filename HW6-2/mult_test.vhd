--------------------------------------------------------------------------------
-- Company:
-- Engineer:
--
-- Create Date:   18:10:59 04/22/2018
-- Design Name:
-- Module Name:   C:/Users/Ben L/Ceng342Labs/HW6-2/mult_test.vhd
-- Project Name:  HW6-2
-- Target Device:
-- Tool versions:
-- Description:
--
-- VHDL Test Bench Created by ISE for module: n_mult
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

ENTITY mult_test IS
END mult_test;

ARCHITECTURE behavior OF mult_test IS

    -- Component Declaration for the Unit Under Test (UUT)

    COMPONENT n_mult
    PORT(
         a : IN  std_logic_vector(7 downto 0);
         b : IN  std_logic_vector(7 downto 0);
         clk : IN  std_logic;
         reset : IN  std_logic;
         start : IN  std_logic;
         ready : OUT  std_logic;
         p : OUT  std_logic_vector(15 downto 0)
        );
    END COMPONENT;


   --Inputs
   signal a : std_logic_vector(7 downto 0) := (others => '0');
   signal b : std_logic_vector(7 downto 0) := (others => '0');
   signal clk : std_logic := '0';
   signal reset : std_logic := '0';
   signal start : std_logic := '0';

 	--Outputs
   signal ready : std_logic;
   signal p : std_logic_vector(15 downto 0);

   -- Clock period definitions
   constant clk_period : time := 10 ns;

BEGIN

	-- Instantiate the Unit Under Test (UUT)
   uut: n_mult PORT MAP (
          a => a,
          b => b,
          clk => clk,
          reset => reset,
          start => start,
          ready => ready,
          p => p
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
      a<="00000101";
      b<="00001010";
      reset<='1';
      wait for 10 ns;
      reset<='0';
      wait for 10 ns;
      start<='1';

      wait;
   end process;

END;
