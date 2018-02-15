--------------------------------------------------------------------------------
-- Company: South Dakota School of Mines and Technology
-- Engineer:	Benjamin LeBrun
--
-- Create Date:   20:13:07 02/06/2018
-- Design Name:   Encoder Test Bench
-- Module Name:   C:/Users/Ben L/Ceng342Labs/Homework2/encoderTest.vhd
-- Project Name:  Homework 2
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Encoder
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
 
ENTITY encoderTest IS
END encoderTest;
 
ARCHITECTURE behavior OF encoderTest IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Encoder
    PORT(
         inputs : IN  std_logic_vector(7 downto 0);
         outputs : OUT  std_logic_vector(2 downto 0);
         en : IN  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal inputs : std_logic_vector(7 downto 0) := (others => '0');
   signal en : std_logic := '0';

 	--Outputs
   signal outputs : std_logic_vector(2 downto 0);
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Encoder PORT MAP (
          inputs => inputs,
          outputs => outputs,
          en => en
        );

   stim_proc: process
	variable n: integer;
   begin
		wait for 50ns;
		en <= '1';
		inputs <= "00000001";
		wait for 50ns;
      for n in 0 to 6
		loop
			inputs<=inputs(6 downto 0) & '0';
			wait for 50ns;
		end loop;
   end process;

END;
