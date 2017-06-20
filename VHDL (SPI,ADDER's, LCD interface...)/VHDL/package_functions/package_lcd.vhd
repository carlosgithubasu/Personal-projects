----------------------------------------------------------------------------------
-- Company: ITESM MONTERREY
-- Engineer: Carlos Perez Araujo
-- Create Date: 14:31:33 02/19/2016
-- Module Name: package_lcd - Behavioral
----------------------------------------------------------------------------------
LIBRARY IEEE;
LIBRARY WORK;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;

PACKAGE PACKAGE_LCD IS
	FUNCTION INIT_LCD(COMMAND : STD_LOGIC_VECTOR(1 DOWNTO 0)) RETURN STD_LOGIC_VECTOR;
	FUNCTION POS(LINE : INTEGER; OFFSET : INTEGER) RETURN STD_LOGIC_VECTOR;
	FUNCTION LIMPIAR(COMMAND : STD_LOGIC) RETURN STD_LOGIC_VECTOR;
	FUNCTION WRITE_CHAR( CHAR : CHARACTER) RETURN STD_LOGIC_VECTOR;
END PACKAGE_LCD;

PACKAGE BODY PACKAGE_LCD IS
	FUNCTION INIT_LCD(COMMAND : STD_LOGIC_VECTOR(1 DOWNTO 0)) RETURN STD_LOGIC_VECTOR IS

	VARIABLE DATA : STD_LOGIC_VECTOR(8 DOWNTO 0);

	BEGIN
		CASE COMMAND IS

			WHEN "00" => 
				DATA := '0' & X"08"; --D.OFF , C.OFF

			WHEN "01" => 
				DATA := '0' & X"0F"; --D.ON, C.B

			WHEN "10" => 
				DATA := '0' & X"0C"; --D.ON , C.OFF

			WHEN OTHERS => 
				DATA := '0' & X"0E"; --D.ON , C.ON

		END CASE; RETURN DATA;
	END INIT_LCD;

	FUNCTION POS(LINE : INTEGER; OFFSET : INTEGER ) RETURN STD_LOGIC_VECTOR IS
	VARIABLE DATA : STD_LOGIC_VECTOR(8 DOWNTO 0);
	BEGIN
		CASE LINE IS
			WHEN 1 => 
				DATA := '0' & X"80" + CONV_STD_LOGIC_VECTOR(OFFSET, 8);
			WHEN 2 => 
				DATA := '0' & X"0C" + CONV_STD_LOGIC_VECTOR(OFFSET, 8);
			WHEN OTHERS=> NULL;
		END CASE;
		RETURN DATA;
	END POS;
 
 
	FUNCTION LIMPIAR(COMMAND : STD_LOGIC) RETURN STD_LOGIC_VECTOR IS
	VARIABLE DATA : STD_LOGIC_VECTOR(8 DOWNTO 0);
	BEGIN
		CASE COMMAND IS
			WHEN '1' => 
				DATA := '0' & X"01";
			WHEN OTHERS => NULL;
		END CASE;
		RETURN DATA;
	END LIMPIAR;
 
 
	FUNCTION WRITE_CHAR( CHAR : CHARACTER ) RETURN STD_LOGIC_VECTOR IS
	VARIABLE LETRA : STD_LOGIC_VECTOR(8 DOWNTO 0);
	BEGIN
		CASE CHAR IS
			WHEN 'a' => 
         LETRA := '1' & X"61";
			WHEN 'b' => 
			LETRA := '1' & X"62";
			WHEN 'c' => 
			LETRA := '1' & X"63";
		   WHEN 'd' => 
			LETRA := '1' & X"64";
			WHEN 'e' => 
			LETRA := '1' & X"65";
			WHEN 'f' => 
		   LETRA := '1' & X"66";
			WHEN 'g' => 
			LETRA := '1' & X"67";
			WHEN 'h' => 
			LETRA := '1' & X"68";
			WHEN 'i' => 
			LETRA := '1' & X"69";
         WHEN 'j' => 
			LETRA := '1' & X"6A";
			WHEN 'k' => 
		   LETRA := '1' & X"6B";
			WHEN 'l' => 
			LETRA := '1' & X"6C";
			WHEN 'm' => 
			LETRA := '1' & X"6D";
			WHEN 'n' => 
			LETRA := '1' & X"6E";
			WHEN 'o' => 
			LETRA := '1' & X"6F";
			WHEN 'p' => 
			LETRA := '1' & X"70";
			WHEN 'q' => 
			LETRA := '1' & X"71";
			WHEN 'r' => 
			LETRA := '1' & X"72";
			WHEN 's' => 
			LETRA := '1' & X"73";
			WHEN 't' => 
			LETRA := '1' & X"74";
			WHEN 'u' => 
			LETRA := '1' & X"75";
			WHEN 'v' => 
			LETRA := '1' & X"76";
			WHEN 'w' => 
			LETRA := '1' & X"77";
			WHEN 'x' => 
			LETRA := '1' & X"78";
			WHEN 'y' => 
			LETRA := '1' & X"79";
			WHEN 'z' => 
			LETRA := '1' & X"7A";
			
			WHEN 'A' => 
         LETRA := '1' & X"41";
			WHEN 'B' => 
			LETRA := '1' & X"41";
			WHEN 'C' => 
			LETRA := '1' & X"43";
		   WHEN 'D' => 
			LETRA := '1' & X"44";
			WHEN 'E' => 
			LETRA := '1' & X"45";
			WHEN 'F' => 
		   LETRA := '1' & X"46";
			WHEN 'G' => 
			LETRA := '1' & X"47";
			WHEN 'H' => 
			LETRA := '1' & X"48";
			WHEN 'I' => 
			LETRA := '1' & X"49";
         WHEN 'J' => 
			LETRA := '1' & X"4A";
			WHEN 'K' => 
		   LETRA := '1' & X"4B";
			WHEN 'L' => 
			LETRA := '1' & X"4C";
			WHEN 'M' => 
			LETRA := '1' & X"4D";
			WHEN 'N' => 
			LETRA := '1' & X"4E";
			WHEN 'O' => 
			LETRA := '1' & X"4F";
			WHEN 'P' => 
			LETRA := '1' & X"50";
			WHEN 'Q' => 
			LETRA := '1' & X"51";
			WHEN 'R' => 
			LETRA := '1' & X"52";
			WHEN 'S' => 
			LETRA := '1' & X"53";
			WHEN 'T' => 
			LETRA := '1' & X"54";
			WHEN 'U' => 
			LETRA := '1' & X"55";
			WHEN 'V' => 
			LETRA := '1' & X"56";
			WHEN 'W' => 
			LETRA := '1' & X"57";
			WHEN 'X' => 
			LETRA := '1' & X"58";
			WHEN 'Y' => 
			LETRA := '1' & X"59";
			WHEN 'Z' =>
			LETRA := '1' & X"5A";
			
			
         WHEN '0' => 
				LETRA := '1' & X"30";

			WHEN '1' => 
				LETRA := '1' & X"31";
 
			WHEN '2' => 
				LETRA := '1' & X"32";
 
			WHEN '3' => 
				LETRA := '1' & X"33";
 
			WHEN '4' => 
				LETRA := '1' & X"34";
 
			WHEN '5' => 
				LETRA := '1' & X"35";

			WHEN '6' => 
				LETRA := '1' & X"36";
 
			WHEN '7' => 
				LETRA := '1' & X"37";
 
			WHEN '8' => 
				LETRA := '1' & X"38";
 
			WHEN '9' => 
				LETRA := '1' & X"39";
 
			WHEN OTHERS => NULL;
				
		END CASE;
		RETURN LETRA;
	END WRITE_CHAR;
END PACKAGE_LCD;