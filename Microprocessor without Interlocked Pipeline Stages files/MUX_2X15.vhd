--Carlos Perez Araujo , Tecnologico de Estudios Superiores de Monterrey
--DONE
LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;




ENTITY MUX_2_1_5B IS
	PORT (
		A_5  : IN STD_LOGIC_VECTOR (4 DOWNTO 0);  --5 bits 32 cables de entrada
		B_5  : IN STD_LOGIC_VECTOR (4 DOWNTO 0);
		SEL  : IN STD_LOGIC;
		C_5  : OUT STD_LOGIC_VECTOR (4 DOWNTO 0)
	);
END MUX_2_1_5B;

ARCHITECTURE Behavioral OF MUX_2_1_5B IS

BEGIN
	C_5 <= A_5 WHEN SEL = '1' ELSE B_5;

END Behavioral;
