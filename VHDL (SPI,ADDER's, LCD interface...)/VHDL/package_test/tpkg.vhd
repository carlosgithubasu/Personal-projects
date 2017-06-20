LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.std_logic_Arith.ALL;
USE IEEE.std_logic_unsigned.ALL;

PACKAGE TPKG IS

	FUNCTION ADD (A : std_logic_vector(1 DOWNTO 0); B : std_logic_vector(1 DOWNTO 0)) RETURN std_logic_vector;

END TPKG;

PACKAGE BODY TPKG IS 

	FUNCTION ADD (A : std_logic_vector(1 DOWNTO 0); B : std_logic_vector(1 DOWNTO 0)) RETURN std_logic_vector IS

	VARIABLE SUM : std_logic_vector(1 DOWNTO 0);

	BEGIN
		SUM := A + B; 
		RETURN SUM;

	END ADD;
	
END TPKG;