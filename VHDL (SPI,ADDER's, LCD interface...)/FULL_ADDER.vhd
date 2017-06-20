
--CARLOS PEREZ ARAUJO,DIGITAL SYSTEMS BACHELOR STUDENT AT ITESM MONTERREY
--FULL ADDER, 6.15.2016

LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;

ENTITY FULL_ADDER IS
PORT(  X, Y, Cin : in bit;  --Inputs  
		 Cout , Sum : out bit); --Outputs
END FULL_ADDER;

ARCHITECTURE Equations of  FULL_ADDER IS

BEGIN  --CONCURRENT ASSIGNMENTS

Sum <= X xor Y xor Cin;
Cout <=  (X and Y) or (X and Cin) or (Y and Cin)after 10 ns; --propagation delay time.

END Equations; 