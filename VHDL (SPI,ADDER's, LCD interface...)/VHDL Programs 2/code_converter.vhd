--The next code is a description of how to model a state machine excess 3 code converter 
--in terms of their next states equations 

library IEEE;
use IEEE.numeric_bit.ALL;





entity  code_converter is
	port(x,clk:in bit;
			z: out bit);
end code_converter;

architecture equations of code_converter is
signal q1,q2,q3 : bit;
begin

process(clk)
begin
if clk'event and clk ='1' then

q1 <= not q2 after 10 ns;
q2 <= q1 after 10 ns;
q3<= (q1 and q2 and q3) or ( not x and q1 and not q3) or
     (x and not q1 and not q2) after 10 ns;
end if;
end process;

z<= (not x and not q3) or (x and q3) after 20  ns;
end equations;
