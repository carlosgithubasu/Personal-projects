	LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;   --The libraries we used in this code, including arith, unsigned and  the std_logic_1164.


--To create a package you need to open a new vhd , write the code and close it, when instantiating , it automatically sets the direction.
PACKAGE INSTRUCTION_PKG IS

   FUNCTION INIT_LCD(COMMAND : INTEGER) RETURN STD_LOGIC_VECTOR;
	FUNCTION SET_POS ( LINE : INTEGER ; OFFSET : INTEGER) RETURN STD_LOGIC_VECTOR; 
	FUNCTION PUT_CHAR ( LETTER :  CHARACTER ) RETURN STD_LOGIC_VECTOR;
	FUNCTION PUT_ASCII( HEX : STD_LOGIC_VECTOR(7 DOWNTO 0)) RETURN STD_LOGIC_VECTOR;
	FUNCTION PUT_INT ( NUMBER : INTEGER) RETURN STD_LOGIC_VECTOR;

END INSTRUCTION_PKG;

PACKAGE BODY INSTRUCTION_PKG IS

	
	-----------------------------------------------------------------------------------------------------------------
	
	FUNCTION INIT_LCD (COMMAND : INTEGER) RETURN STD_LOGIC_VECTOR IS   --BODY OF EACH FUNCTION WE DECLARED AT THE PACKAGE
   VARIABLE DATA : STD_LOGIC_VECTOR(8 DOWNTO 0);  --VARIABLE DATA , WE RETURN A 9 BIT VECTOR
	BEGIN
		CASE COMMAND IS
			WHEN 1 => 
				DATA := '0' & x"08"; -- DISPLAY OFF, CURSOR OFF
			WHEN 2 => 
				DATA := '0' & x"0C"; -- DISPLAY ON, CURSOR OFF
			WHEN 3 => 
				DATA := '0' & x"0E"; -- DISPLAY ON, CURSOR ON
			WHEN OTHERS => 
				DATA := '0' & x"0F"; -- DISPLAY ON, CURSOR BLINKING
		END CASE; 
	   RETURN DATA;
   END INIT_LCD;
	
	----------------------------------------------------------------------------------------------------------------
	
	FUNCTION SET_POS (LINE : INTEGER; OFFSET : INTEGER) RETURN STD_LOGIC_VECTOR IS
   VARIABLE DATA : STD_LOGIC_VECTOR(8 DOWNTO 0);  --RETURN 9 BIT DATA VECTOR
	BEGIN
		CASE LINE IS
			WHEN 1 => 
				DATA := '0' & x"80" + CONV_STD_LOGIC_VECTOR(OFFSET-1 , 8);  --OFFSET MINUS ONE , BECAUSE IT STARTS WITH 0.
			WHEN 2 => 
				DATA := '0' & x"C0" + CONV_STD_LOGIC_VECTOR(OFFSET-1, 8);
			WHEN OTHERS => 
				DATA := '0' & x"00";
		END CASE; 
		RETURN DATA;
	END SET_POS;

	
	
	---------------------------------------------------------------------------------------------------------------
	FUNCTION PUT_CHAR (LETTER : CHARACTER) RETURN STD_LOGIC_VECTOR IS
   VARIABLE DATA : STD_LOGIC_VECTOR(8 DOWNTO 0);
	BEGIN
		CASE LETTER IS
			WHEN 'a' => 
				DATA := '1' & x"61";   --THIS IS AN INSTRUCCION NOT A COMMAAND
			WHEN 'A' => 
				DATA := '1' & x"41";
			WHEN 'b' => 
				DATA := '1' & x"62";
			WHEN 'B' => 
				DATA := '1' & x"42";
			WHEN 'c' => 
				DATA := '1' & x"63";
			WHEN 'C' => 
				DATA := '1' & x"43";
			WHEN 'd' => 
				DATA := '1' & x"64";
			WHEN 'D' => 
				DATA := '1' & x"44";
			WHEN 'e' => 
				DATA := '1' & x"65";
			WHEN 'E' => 
				DATA := '1' & x"45";
			WHEN 'f' => 
				DATA := '1' & x"66";
			WHEN 'F' => 
				DATA := '1' & x"46";
			WHEN 'g' => 
				DATA := '1' & x"67";
			WHEN 'G' => 
				DATA := '1' & x"47";
			WHEN 'h' => 
				DATA := '1' & x"68";
			WHEN 'H' => 
				DATA := '1' & x"48";
			WHEN 'i' => 
				DATA := '1' & x"69";
			WHEN 'I' => 
				DATA := '1' & x"49";
			WHEN 'j' => 
				DATA := '1' & x"6A";
			WHEN 'J' => 
				DATA := '1' & x"4A";
			WHEN 'k' => 
				DATA := '1' & x"6B";
			WHEN 'K' => 
				DATA := '1' & x"4B";
			WHEN 'l' => 
				DATA := '1' & x"6C";
			WHEN 'L' => 
				DATA := '1' & x"4C";
			WHEN 'm' => 
				DATA := '1' & x"6D";
			WHEN 'M' => 
				DATA := '1' & x"4D";
			WHEN 'n' => 
				DATA := '1' & x"6E";
			WHEN 'N' => 
				DATA := '1' & x"4E";
			WHEN 'o' => 
				DATA := '1' & x"6F";
			WHEN 'O' => 
				DATA := '1' & x"4F";
			WHEN 'p' => 
				DATA := '1' & x"70";
			WHEN 'P' => 
				DATA := '1' & x"50";
			WHEN 'q' => 
				DATA := '1' & x"71";
			WHEN 'Q' => 
				DATA := '1' & x"51";
			WHEN 'r' => 
				DATA := '1' & x"72";
			WHEN 'R' => 
				DATA := '1' & x"52";
			WHEN 's' => 
				DATA := '1' & x"73";
			WHEN 'S' => 
				DATA := '1' & x"53";
			WHEN 't' => 
				DATA := '1' & x"74";
			WHEN 'T' => 
				DATA := '1' & x"54";
			WHEN 'u' => 
				DATA := '1' & x"75";
			WHEN 'U' => 
				DATA := '1' & x"55";
			WHEN 'v' => 
				DATA := '1' & x"76";
			WHEN 'V' => 
				DATA := '1' & x"56";
			WHEN 'w' => 
				DATA := '1' & x"77";
			WHEN 'W' => 
				DATA := '1' & x"57";
			WHEN 'x' => 
				DATA := '1' & x"78";
			WHEN 'X' => 
				DATA := '1' & x"58";
			WHEN 'y' => 
				DATA := '1' & x"79";
			WHEN 'Y' => 
				DATA := '1' & x"59";
			WHEN 'z' => 
				DATA := '1' & x"7A";
			WHEN 'Z' => 
				DATA := '1' & x"5A";
			WHEN '0' => 
				DATA := '1' & x"30";
			WHEN '1' => 
				DATA := '1' & x"31";
			WHEN '2' => 
				DATA := '1' & x"32";
			WHEN '3' => 
				DATA := '1' & x"33";
			WHEN '4' => 
				DATA := '1' & x"34";
			WHEN '5' => 
				DATA := '1' & x"35";
			WHEN '6' => 
				DATA := '1' & x"36";
			WHEN '7' => 
				DATA := '1' & x"37";
			WHEN '8' => 
				DATA := '1' & x"38";
			WHEN '9' => 
				DATA := '1' & x"39";
			WHEN ' ' =>
				DATA := '1' & x"20";
			WHEN '!' =>
				DATA := '1' & x"21";
			WHEN '#' =>
				DATA := '1' & x"23";
			WHEN '$' =>
				DATA := '1' & x"24";
			WHEN '%' =>
				DATA := '1' & x"25";
			WHEN '&' =>
				DATA := '1' & x"26";
			WHEN '(' =>
				DATA := '1' & x"28";
			WHEN ')' =>
				DATA := '1' & x"29";
			WHEN '*' =>
				DATA := '1' & x"2A";
			WHEN '+' =>
				DATA := '1' & x"2B";
			WHEN ',' =>
				DATA := '1' & x"2C";
			WHEN '-' =>
				DATA := '1' & x"2D";
			WHEN '.' =>
				DATA := '1' & x"2E";
			WHEN '/' =>
				DATA := '1' & x"2F";
			WHEN ':' =>
				DATA := '1' & x"3A";
			WHEN ';' =>
				DATA := '1' & x"3B";
			WHEN '<' =>
				DATA := '1' & x"3C";
			WHEN '=' =>
				DATA := '1' & x"3D";
			WHEN '>' =>
				DATA := '1' & x"3E";
			WHEN '?' =>
				DATA := '1' & x"3F";
			WHEN '@' =>
				DATA := '1' & x"40";
			WHEN '[' =>
				DATA := '1' & x"5B";
			WHEN ']' =>
				DATA := '1' & x"5D";
			WHEN '^' =>
				DATA := '1' & x"5E";
			WHEN '_' =>
				DATA := '1' & x"5F";
			WHEN '{' =>
				DATA := '1' & x"7B";
			WHEN '|' =>
				DATA := '1' & x"7C";
			WHEN '}' =>
				DATA := '1' & x"7D";
			WHEN OTHERS => 
				NULL;
		END CASE; 
		RETURN DATA;
	END PUT_CHAR;
	
	
	
	--------------------------------------------------------------------------------------------------------
	
	FUNCTION PUT_ASCII ( HEX : STD_LOGIC_VECTOR(7 DOWNTO 0)) RETURN STD_LOGIC_VECTOR IS
	VARIABLE DATA : STD_LOGIC_VECTOR(8 DOWNTO 0);
	BEGIN
		DATA := '1' & HEX;   --WE JUST ADDED THE '1' FOR THE WRITING INSTRUCTION
		RETURN DATA;
	END PUT_ASCII;

   -----------------------------------------------------------------------------------------------------------
	
	FUNCTION PUT_INT (NUMBER : INTEGER) RETURN STD_LOGIC_VECTOR IS
	VARIABLE DATA : STD_LOGIC_VECTOR(8 DOWNTO 0);
	BEGIN
		CASE NUMBER IS
			WHEN 0 =>
				DATA := '1' & x"30";
			WHEN 1 => 
				DATA := '1' & x"31";
			WHEN 2 =>
				DATA := '1' & x"32";
			WHEN 3 => 
				DATA := '1' & x"33";
			WHEN 4 => 
				DATA := '1' & x"34";
			WHEN 5 => 
				DATA := '1' & x"35";
			WHEN 6 => 
				DATA := '1' & x"36";
			WHEN 7 => 
				DATA := '1' & x"37";
			WHEN 8 => 
				DATA := '1' & x"38";
			WHEN OTHERS => 
				DATA := '1' & x"39";
		END CASE;
		RETURN DATA;
    END PUT_INT;

END INSTRUCTION_PKG; 