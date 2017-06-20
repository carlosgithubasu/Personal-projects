LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;

ENTITY VGA_ROM IS
	GENERIC (
		WIDTH_ROM : INTEGER;
		LOG_HEIGTH : INTEGER
	);
	PORT (
		ADDRESS       : IN STD_LOGIC_VECTOR (LOG_HEIGTH - 1 DOWNTO 0);
		DATA          : OUT STD_LOGIC_VECTOR (0 TO WIDTH_ROM - 1)
	);
END VGA_ROM;

ARCHITECTURE BEHAVIORAL OF VGA_ROM IS

	TYPE ROM_ARRAY IS ARRAY (NATURAL RANGE <> ) OF STD_LOGIC_VECTOR(0 TO WIDTH_ROM - 1);
	CONSTANT ROM  : ROM_ARRAY := (
		"00000001111111111111110000000000",
		"00000001111111111111110000000000",
		"00000110000000000000001110000000",
		"00000110000000000000001110000000",
		"00111000000000000000000001100000",
		"00111000000000000000000001100000",
		"00111000000000000000000001111000",
		"00111000000000000000000001111000",
		"11111110000000000000000000000111",
		"11111110000000000000000000000111",
		"11111111111111111000000001111100",
		"11111111111111111000000001111100",
		"11111111111111100001110001100000",
		"11111111111111100001110001100000",
		"00111110000011100001110001100000",
		"00111110000011100001110001100000",
		"00000110000000000000000001100000",
		"00000110000000000000000001100000",
		"00111001111100000000001110000000",
		"00111001111100000000001110000000",
		"00111000001111111111110000000000",
		"00111000001111111111110000000000",
		"00111001110000011111000000000000",
		"00111001110000011111000000000000",
		"00111001110000011111000000000000",
		"00111001110000011111000000000000",
		"00000001111111111111110000000000",
		"00000111111111100000110000000000",
		"00000000110000000000110000000000",
		"00000000110000000000110000000000",
		"00000000001111111111000000000000",
		"00000000001111111111000000000000"
	);

BEGIN
	PROCESS (ADDRESS)
	VARIABLE J : INTEGER;
	BEGIN
		J := CONV_INTEGER(ADDRESS);
		DATA <= ROM(J);
	END PROCESS;
 
END BEHAVIORAL;