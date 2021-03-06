LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;
USE IEEE.MATH_REAL.ALL;

ENTITY VGA_TOP IS
	PORT (
		MCLK        : IN STD_LOGIC;
		CLR_BUTTON  : IN STD_LOGIC;
		UP          : IN STD_LOGIC;
		DOWN        : IN STD_LOGIC;
		RIGHT       : IN STD_LOGIC;
		LEFT        : IN STD_LOGIC;
		SW          : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
		HS          : OUT STD_LOGIC;
		VS          : OUT STD_LOGIC;
		RGB         : OUT STD_LOGIC_VECTOR(2 DOWNTO 0)
	);
END VGA_TOP;

ARCHITECTURE BEHAVIORAL OF VGA_TOP IS
 
	CONSTANT WIDTH : INTEGER := 32;
	CONSTANT HEIGHT : INTEGER := 32;
	CONSTANT WIDTH_ROM : INTEGER := WIDTH;
	CONSTANT LOG_HEIGTH : INTEGER := INTEGER(CEIL(LOG2(REAL(HEIGHT))));

	SIGNAL RESET, VIDEO_ON : STD_LOGIC := '0';
	SIGNAL COLUMN, ROW : STD_LOGIC_VECTOR(9 DOWNTO 0) := (OTHERS => '0');
 
	SIGNAL DATA : STD_LOGIC_VECTOR(0 TO WIDTH_ROM - 1) := (OTHERS => '0');
	SIGNAL ROM_ADD4 : STD_LOGIC_VECTOR (LOG_HEIGTH - 1 DOWNTO 0);
 
	SIGNAL C100HZ, C100HZB : STD_LOGIC := '0';
	SIGNAL B_UP : STD_LOGIC := '0';
	SIGNAL B_DOWN : STD_LOGIC := '0';
	SIGNAL B_RIGHT : STD_LOGIC := '0';
	SIGNAL B_LEFT : STD_LOGIC := '0';

	COMPONENT VGA IS
		PORT (
			CLK50M      : IN STD_LOGIC;
			RESET       : IN STD_LOGIC;
			VIDEO_ON    : OUT STD_LOGIC;
			COLUMN      : OUT STD_LOGIC_VECTOR(9 DOWNTO 0);
			ROW         : OUT STD_LOGIC_VECTOR(9 DOWNTO 0);
			HS          : OUT STD_LOGIC;
			VS          : OUT STD_LOGIC
		);
	END COMPONENT;
 
	COMPONENT VGA_ROM IS
		GENERIC (
			WIDTH_ROM   : INTEGER;
			LOG_HEIGTH  : INTEGER
		);
		PORT (
			ADDRESS     : IN STD_LOGIC_VECTOR (LOG_HEIGTH - 1 DOWNTO 0);
			DATA        : OUT STD_LOGIC_VECTOR (0 TO WIDTH_ROM - 1)
		);
	END COMPONENT;
 
	COMPONENT VGA_DRAW IS
		GENERIC (
			WIDTH       : INTEGER;
			HEIGHT      : INTEGER;
			WIDTH_ROM   : INTEGER;
			LOG_HEIGTH  : INTEGER
		);
		PORT (
			CLK       : IN STD_LOGIC;
			VIDEO_ON  : IN STD_LOGIC;
			UP        : IN STD_LOGIC;
			DOWN      : IN STD_LOGIC;
			RIGHT     : IN STD_LOGIC;
			LEFT      : IN STD_LOGIC;
			RESET     : IN STD_LOGIC;
			SW_RGB    : IN STD_LOGIC_VECTOR(2 DOWNTO 0); 
			COLUMN    : IN STD_LOGIC_VECTOR (9 DOWNTO 0);
			ROW       : IN STD_LOGIC_VECTOR (9 DOWNTO 0);
			DATA      : IN STD_LOGIC_VECTOR (0 TO WIDTH_ROM - 1);
			ROM_ADD4  : OUT STD_LOGIC_VECTOR (LOG_HEIGTH - 1 DOWNTO 0);
			RGB       : OUT STD_LOGIC_VECTOR (2 DOWNTO 0)
		);
	END COMPONENT; 

	COMPONENT CLK100HZ IS
		PORT (
			MCLK    : IN STD_LOGIC;
			CLKOUT  : OUT STD_LOGIC
		);
	END COMPONENT;

	COMPONENT DEBOUNCE IS
		PORT (
			CLK   : IN STD_LOGIC;
			DIN   : IN STD_LOGIC;
			QOUT  : OUT STD_LOGIC
		);
	END COMPONENT;

	ATTRIBUTE BOX_TYPE : STRING;

	COMPONENT BUFG IS
		PORT (
			I  : IN STD_LOGIC;
			O  : OUT STD_LOGIC
		);
	END COMPONENT;

	ATTRIBUTE BOX_TYPE OF BUFG : COMPONENT IS "BLACK_BOX";
 
BEGIN
	RESET <= CLR_BUTTON; 

	V1 : VGA
	PORT MAP(MCLK, RESET, VIDEO_ON, COLUMN, ROW, HS, VS);

	VR : VGA_ROM
	GENERIC MAP(WIDTH_ROM, LOG_HEIGTH)
	PORT MAP(ROM_ADD4, DATA);
 
	C100 : CLK100HZ
	PORT MAP(MCLK, C100HZ);
	B100 : BUFG
	PORT MAP(C100HZ, C100HZB);
 
	D1 : DEBOUNCE
	PORT MAP(C100HZB, UP, B_UP);
	D2 : DEBOUNCE
	PORT MAP(C100HZB, DOWN, B_DOWN);
	D3 : DEBOUNCE
	PORT MAP(C100HZB, RIGHT, B_RIGHT);
	D4 : DEBOUNCE
	PORT MAP(C100HZB, LEFT, B_LEFT);
 
	VD : VGA_DRAW
	GENERIC MAP(WIDTH, HEIGHT, WIDTH_ROM, LOG_HEIGTH)
	PORT MAP(C100HZB, VIDEO_ON, B_UP, B_DOWN, B_RIGHT, B_LEFT, RESET, SW, COLUMN, ROW, DATA, ROM_ADD4, RGB);

END BEHAVIORAL;