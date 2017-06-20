--VHDL DESCRIPTION FOR A 32 BIT addeR
library IEEE;
use IEEE.numeric_bit.ALL;

entity adder32 is
port(a,b: in unsigned(31 downto 0); Ci: in bit;
		S: out unsigned (31 downto 0); co: out bit);
		end adder32;
		
architecture overload of adder32 is
signal sum33: unsigned(32 downto 0);
begin
sum33 <= '0' & a & b + unsigned'(0=> ci);
S<= Sum33(31 downto 0);
co<= sum33(32);
end overload;