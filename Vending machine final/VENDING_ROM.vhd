LIBRARY ieee;
USE ieee.numeric_std.ALL;
USE ieee.std_logic_1164.ALL;

PACKAGE VENDING_ROM IS

--COMANDOS
  CONSTANT CLEAR   : STD_LOGIC_VECTOR (9 DOWNTO 0) := "0000000001";
  CONSTANT HOME   : STD_LOGIC_VECTOR (9 DOWNTO 0) := "0000000010";
  CONSTANT NOTHING : STD_LOGIC_VECTOR(9 DOWNTO 0)  := "0000000000";
  CONSTANT SL : STD_LOGIC_VECTOR(9 DOWNTO 0)  := "0011000000";
  CONSTANT FL : STD_LOGIC_VECTOR(9 DOWNTO 0)  := "0010000000";
  CONSTANT ONERIGHT : STD_LOGIC_VECTOR(9 DOWNTO 0)  := "0000000110";
	
--CARACTERES

	CONSTANT A : STD_LOGIC_VECTOR (9 DOWNTO 0) := "1001000001";
	CONSTANT B : STD_LOGIC_VECTOR (9 DOWNTO 0) := "1001000010";
	CONSTANT C : STD_LOGIC_VECTOR (9 DOWNTO 0) := "1001000011";
	CONSTANT D : STD_LOGIC_VECTOR (9 DOWNTO 0) := "1001000100";
	CONSTANT Es: STD_LOGIC_VECTOR (9 DOWNTO 0) := "1001000101";
	CONSTANT F : STD_LOGIC_VECTOR (9 DOWNTO 0) := "1001000110";
	CONSTANT G : STD_LOGIC_VECTOR (9 DOWNTO 0) := "1001000111";
	CONSTANT H : STD_LOGIC_VECTOR (9 DOWNTO 0) := "1001001000";
	CONSTANT I : STD_LOGIC_VECTOR (9 DOWNTO 0) := "1001001001";
	CONSTANT J : STD_LOGIC_VECTOR (9 DOWNTO 0) := "1001001010";
	CONSTANT K : STD_LOGIC_VECTOR (9 DOWNTO 0) := "1001001011";
	CONSTANT L : STD_LOGIC_VECTOR (9 DOWNTO 0) := "1001001100";
	CONSTANT M : STD_LOGIC_VECTOR (9 DOWNTO 0) := "1001001101";
	CONSTANT N : STD_LOGIC_VECTOR (9 DOWNTO 0) := "1001001110";
	CONSTANT O : STD_LOGIC_VECTOR (9 DOWNTO 0) := "1001001111";
	CONSTANT P : STD_LOGIC_VECTOR (9 DOWNTO 0) := "1001010000";
	CONSTANT Q : STD_LOGIC_VECTOR (9 DOWNTO 0) := "1001010001";
	CONSTANT R : STD_LOGIC_VECTOR (9 DOWNTO 0) := "1001010010";
	CONSTANT S : STD_LOGIC_VECTOR (9 DOWNTO 0) := "1001010011";
	CONSTANT T : STD_LOGIC_VECTOR (9 DOWNTO 0) := "1001010100";
	CONSTANT U : STD_LOGIC_VECTOR (9 DOWNTO 0) := "1001010101";
	CONSTANT V : STD_LOGIC_VECTOR (9 DOWNTO 0) := "1001010110";
	CONSTANT W : STD_LOGIC_VECTOR (9 DOWNTO 0) := "1001010111";
	CONSTANT X : STD_LOGIC_VECTOR (9 DOWNTO 0) := "1001011000";
	CONSTANT Y : STD_LOGIC_VECTOR (9 DOWNTO 0) := "1001011001";
	CONSTANT Z : STD_LOGIC_VECTOR (9 DOWNTO 0) := "1001011010";
	CONSTANT COMMA : STD_LOGIC_VECTOR (9 DOWNTO 0) := "1000101100";
	
	CONSTANT ZERO : STD_LOGIC_VECTOR (9 DOWNTO 0) := "1000110000";
	CONSTANT ONE  : STD_LOGIC_VECTOR (9 DOWNTO 0) := "1000110001";
	CONSTANT TWO  : STD_LOGIC_VECTOR (9 DOWNTO 0) := "1000110010";
	CONSTANT THREE: STD_LOGIC_VECTOR (9 DOWNTO 0) := "1000110011";
	CONSTANT FOUR : STD_LOGIC_VECTOR (9 DOWNTO 0) := "1000110100";
	CONSTANT FIVE : STD_LOGIC_VECTOR (9 DOWNTO 0) := "1000110101";
	CONSTANT SIX  : STD_LOGIC_VECTOR (9 DOWNTO 0) := "1000110110";
	CONSTANT SEVEN: STD_LOGIC_VECTOR (9 DOWNTO 0) := "1000110111";
	CONSTANT EIGHT: STD_LOGIC_VECTOR (9 DOWNTO 0) := "1000111000";
	CONSTANT NINE : STD_LOGIC_VECTOR (9 DOWNTO 0) := "1000111001";
	CONSTANT SPACE: STD_LOGIC_VECTOR (9 DOWNTO 0) := "1000100000";
	CONSTANT MONEYSIGN: STD_LOGIC_VECTOR (9 DOWNTO 0) := "1000100100";
	CONSTANT DOT  : STD_LOGIC_VECTOR (9 DOWNTO 0) := "1000101110";
	CONSTANT ASTERISC  : STD_LOGIC_VECTOR (9 DOWNTO 0) := "1000101110";
	CONSTANT CAT: STD_LOGIC_VECTOR (9 DOWNTO 0) := "1001100111";
	CONSTANT AP   : STD_LOGIC_VECTOR (9 DOWNTO 0) := "1000100010";
	CONSTANT COMA : STD_LOGIC_VECTOR (9 DOWNTO 0) := "1000101100";
	CONSTANT EX   : STD_LOGIC_VECTOR (9 DOWNTO 0) := "1000100001";
	CONSTANT QUESTION   : STD_LOGIC_VECTOR (9 DOWNTO 0) := "1000111111";
	CONSTANT LCD_LENGHT : INTEGER := 15;
  
	--LINEA 1

	CONSTANT POSD2 : STD_LOGIC_VECTOR (9 DOWNTO 0) := "0011010010";
	CONSTANT POSD3 : STD_LOGIC_VECTOR (9 DOWNTO 0) := "0011010011";
	CONSTANT POSD4 : STD_LOGIC_VECTOR (9 DOWNTO 0) := "0011010100";
	CONSTANT POSD5 : STD_LOGIC_VECTOR (9 DOWNTO 0) := "0011010101";
	CONSTANT POSD6 : STD_LOGIC_VECTOR (9 DOWNTO 0) := "0011010110";
	CONSTANT POSD7 : STD_LOGIC_VECTOR (9 DOWNTO 0) := "0011010111";
	CONSTANT POSD8 : STD_LOGIC_VECTOR (9 DOWNTO 0) := "0011011000";
	CONSTANT POSD9 : STD_LOGIC_VECTOR (9 DOWNTO 0) := "0011011001";
	CONSTANT POSDA : STD_LOGIC_VECTOR (9 DOWNTO 0) := "0011011010";
	CONSTANT POSDB : STD_LOGIC_VECTOR (9 DOWNTO 0) := "0011011011";
	CONSTANT POSDC : STD_LOGIC_VECTOR (9 DOWNTO 0) := "0011011100";
	CONSTANT POSDD : STD_LOGIC_VECTOR (9 DOWNTO 0) := "0011011101";
	CONSTANT POSDE : STD_LOGIC_VECTOR (9 DOWNTO 0) := "0011011110";
	CONSTANT POSDF : STD_LOGIC_VECTOR (9 DOWNTO 0) := "0011011111";
	CONSTANT POSE0 : STD_LOGIC_VECTOR (9 DOWNTO 0) := "0011100000";
	CONSTANT POSE1 : STD_LOGIC_VECTOR (9 DOWNTO 0) := "0011100001";
	CONSTANT POSE2 : STD_LOGIC_VECTOR (9 DOWNTO 0) := "0011100010";
	CONSTANT POSE3 : STD_LOGIC_VECTOR (9 DOWNTO 0) := "0011100011";
	CONSTANT POSE4 : STD_LOGIC_VECTOR (9 DOWNTO 0) := "0011100100";
	CONSTANT POSE5 : STD_LOGIC_VECTOR (9 DOWNTO 0) := "0011100101";
	CONSTANT POSE6 : STD_LOGIC_VECTOR (9 DOWNTO 0) := "0011100110";
	CONSTANT POSE7 : STD_LOGIC_VECTOR (9 DOWNTO 0) := "0011101111";

	CONSTANT POS0 : STD_LOGIC_VECTOR (9 DOWNTO 0) := "0010000000";
	CONSTANT POS1 : STD_LOGIC_VECTOR (9 DOWNTO 0) := "0010000001";
	CONSTANT POS2 : STD_LOGIC_VECTOR (9 DOWNTO 0) := "0010000010";
	CONSTANT POS3 : STD_LOGIC_VECTOR (9 DOWNTO 0) := "0010000011";
	CONSTANT POS4 : STD_LOGIC_VECTOR (9 DOWNTO 0) := "0010000100";
	CONSTANT POS5 : STD_LOGIC_VECTOR (9 DOWNTO 0) := "0010000101";
	CONSTANT POS6 : STD_LOGIC_VECTOR (9 DOWNTO 0) := "0010000110";
	CONSTANT POS7 : STD_LOGIC_VECTOR (9 DOWNTO 0) := "0010000111";
	CONSTANT POS8 : STD_LOGIC_VECTOR (9 DOWNTO 0) := "0010001000";
	CONSTANT POS9 : STD_LOGIC_VECTOR (9 DOWNTO 0) := "0010001001";
	CONSTANT POS10: STD_LOGIC_VECTOR (9 DOWNTO 0) := "0010001010";
	CONSTANT POS11: STD_LOGIC_VECTOR (9 DOWNTO 0) := "0010001011";
	CONSTANT POS12: STD_LOGIC_VECTOR (9 DOWNTO 0) := "0010001100";
	CONSTANT POS13: STD_LOGIC_VECTOR (9 DOWNTO 0) := "0010001101";
	CONSTANT POS14: STD_LOGIC_VECTOR (9 DOWNTO 0) := "0010001110";
	CONSTANT POS15: STD_LOGIC_VECTOR (9 DOWNTO 0) := "0010001111";

	
	--LINEA 2
	
	CONSTANT POS16 : STD_LOGIC_VECTOR (9 DOWNTO 0) := "0011000000";
	CONSTANT POS17 : STD_LOGIC_VECTOR (9 DOWNTO 0) := "0011000001";
	CONSTANT POS18 : STD_LOGIC_VECTOR (9 DOWNTO 0) := "0011000010";
	CONSTANT POS19 : STD_LOGIC_VECTOR (9 DOWNTO 0) := "0011000011";
	CONSTANT POS20 : STD_LOGIC_VECTOR (9 DOWNTO 0) := "0011000100";
	CONSTANT POS21 : STD_LOGIC_VECTOR (9 DOWNTO 0) := "0011000101";
	CONSTANT POS22 : STD_LOGIC_VECTOR (9 DOWNTO 0) := "0011000110";
	CONSTANT POS23 : STD_LOGIC_VECTOR (9 DOWNTO 0) := "0011000111";
	CONSTANT POS24 : STD_LOGIC_VECTOR (9 DOWNTO 0) := "0011001000";
	CONSTANT POS25 : STD_LOGIC_VECTOR (9 DOWNTO 0) := "0011001001";
	CONSTANT POS26 : STD_LOGIC_VECTOR (9 DOWNTO 0) := "0011001010";
	CONSTANT POS27 : STD_LOGIC_VECTOR (9 DOWNTO 0) := "0011001011";
	CONSTANT POS28 : STD_LOGIC_VECTOR (9 DOWNTO 0) := "0011001100";
	CONSTANT POS29 : STD_LOGIC_VECTOR (9 DOWNTO 0) := "0011001101";
	CONSTANT POS30 : STD_LOGIC_VECTOR (9 DOWNTO 0) := "0011001110";
	CONSTANT POS31 : STD_LOGIC_VECTOR (9 DOWNTO 0) := "0011001111";
	
	CONSTANT CHIPS : INTEGER := 5;
	
	CONSTANT WATER : INTEGER := 6;
	
	CONSTANT JUICE : INTEGER := 4;
	
	CONSTANT COOKIE : INTEGER := 3;
	

END PACKAGE;
----------------------------
--PRODUCTS
--CHIPS $10.00
--WATER $15.00
--JUICE $13.00
--COOKIE $2.00
----------------------------

--IDLE
--
--CARLOS' VENDING MACHINE
--HELLO THERE, WELCOME!!!
--WHAT ARE YOU CRAVING?
----------------------------