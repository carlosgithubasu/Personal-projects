
--CARLOS PEREZ ARAUJO,DIGITAL SYSTEMS BACHELOR STUDENT AT ITESM MONTERREY
--FULL ADDER, 6.15.2016

LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;

ENTITY FF_D IS
PORT( D , CLK , ClrN: in bit;
      Q , QN : out bit);
		

END FF_D;

ARCHITECTURE behavioral of  FF_D IS

signal qint :  bit;

BEGIN 

QN <= not qint;
Q<= qint;

process(clk)
begin

if ClrN = '0' then Q<= '0';

elsif CLK'EVENT AND CLK='1' then
Q <= D;
end if;
end process;

end behavioral;