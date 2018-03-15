----------------------------------------------------------------------------------
-- Company: South Dakota School of Mines and Technology
-- Engineer: Benjamin LeBrun
-- 
-- Create Date:    19:10:41 02/22/2018 
-- Design Name: 	 Homework 3 Integer to FP binary representation
-- Module Name:    IntToFP - Behavioral 
-- Project Name: 	 Homework 3
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity IntToFP is
    Port ( IntegerInput : in STD_LOGIC_VECTOR(7 downto 0);
           FPOutput : out  STD_LOGIC_VECTOR(12 downto 0));
end IntToFP;

architecture Behavioral of IntToFP is
	signal frac : STD_LOGIC_VECTOR(7 downto 0);
	signal exp : STD_LOGIC_VECTOR(3 downto 0);
	signal sign : STD_LOGIC;
begin
	sign<= IntegerInput(7);

	frac<= not std_logic_vector(signed(IntegerInput) - 1) when (sign = '1') else IntegerInput;
	
	exp<="0000" when (frac(7 downto 0)="00000000") else
		  "0001" when (frac(7 downto 1)="0000000") else
		  "0010" when (frac(7 downto 2)="000000") else
		  "0011" when (frac(7 downto 3)="00000") else
		  "0100" when (frac(7 downto 4)="0000") else
		  "0101" when (frac(7 downto 5)="000") else
		  "0110" when (frac(7 downto 6)="00") else
		  "0111" when (frac(7)='0') else
		  "1111";
		  
	FPOutput(11 downto 4) <=frac when (exp="1111") else
	(frac(6 downto 0)&"0") when (exp="0111") else
	(frac(5 downto 0)&"00") when (exp="0110") else
	(frac(4 downto 0)&"000") when (exp="0101") else
	(frac(3 downto 0)&"0000") when (exp="0100") else
	(frac(2 downto 0)&"00000") when (exp="0011") else
	(frac(1 downto 0)&"000000") when (exp="0010") else
	(frac(0)&"0000000") when (exp="0001");
	
	
	FPOutput(3 downto 0) <= exp;
	FPOutput(12)<=sign;
end Behavioral;

