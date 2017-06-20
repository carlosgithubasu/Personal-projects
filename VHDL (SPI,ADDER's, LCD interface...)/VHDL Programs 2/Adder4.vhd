
LIBRARY IEEE;
USE IEEE.NUMERIC_BIT.ALL;

--this program shows a code tht uses overloaded operators from the numeric_bit package to describe
--a 4bit adder with a carry input

entity Adder4 is
  port(A,B: in unsigned(3 downto 0); Ci: in bit;
		 S: OUT unsigned(3 downto 0); Co: out bit);
end Adder4;

architecture overload of Adder4 is

signal Sum5: unsigned(4 downto 0);

begin

Sum5<= '0' & A + B + unsigned'(0=>Ci); --adder
S<= Sum5(3 downto 0);
Co <= Sum5(4);
end overload; 
