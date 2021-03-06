--I'll show how to use the Full Adder module defined before as a component in a system.

--CARLOS PEREZ ARAUJO,DIGITAL SYSTEMS BACHELOR STUDENT AT ITESM MONTERREY
--ADDER_FOUR, 6.15.2016

LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;

ENTITY ADDER_FOUR IS
PORT(  A, B : in bit_vector(3 downto 0);  Cin : in bit;  --Inputs  
		 S : out bit_vector(3 downto 0); Co: out bit); --Outputs
END ADDER_FOUR;

ARCHITECTURE Structure of ADDER_FOUR IS


COMPONENT FULL_ADDER
 PORT(  X, Y, Cin : in bit;  --Inputs  
		 Cout , Sum : out bit); --Outputs
END COMPONENT;

SIGNAL C: BIT_VECTOR( 3 DOWNTO 1);
BEGIN  --INSTANTIATE COPIES OF FULL ADDER

FA0: FULL_ADDER PORT MAP( A(0), B(0) , Cin , C(1) , S(0));
FA1: FULL_ADDER PORT MAP( A(1), B(1) , C(1) , C(2) , S(1));
FA2: FULL_ADDER PORT MAP( A(2), B(2) , C(2) , C(3) , S(2));
FA3: FULL_ADDER PORT MAP( A(3), B(3) , C(3) , Co , S(3));


END Structure; 