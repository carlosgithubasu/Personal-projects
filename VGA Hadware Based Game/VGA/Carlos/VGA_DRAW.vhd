LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;

ENTITY VGA_DRAW IS
	GENERIC (
		WIDTH : INTEGER;
		HEIGHT : INTEGER;
		WIDTH_ROM : INTEGER;
		LOG_HEIGTH : INTEGER
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
END VGA_DRAW;

ARCHITECTURE BEHAVIORAL OF VGA_DRAW IS

	-- ROM PARAMETERS
	CONSTANT W : INTEGER := WIDTH;
	CONSTANT H : INTEGER := HEIGHT;

	-- HORIZONTAL SYNC PARAMETERS:
	CONSTANT TDISP_H : INTEGER := 640;
	CONSTANT TPW_H : INTEGER := 96;
	CONSTANT TBP_H : INTEGER := 48;

	-- VERTICAL SYNC PARAMETERS:
	CONSTANT TDISP_V : INTEGER := 480;
	CONSTANT TPW_V : INTEGER := 2;
	CONSTANT TBP_V : INTEGER := 29;
	
	-- COUNTERS FOR CONTROLLING THE POSITION OF THE SPRITE
	SIGNAL C_INT : INTEGER RANGE 0 TO ((TDISP_H/WIDTH) - 1) * WIDTH := 0;
	SIGNAL R_INT : INTEGER RANGE 0 TO ((TDISP_V/HEIGHT) - 1) * HEIGHT := 0;

	SIGNAL ROM_ADDRESS, ROM_PIXELS : STD_LOGIC_VECTOR(9 DOWNTO 0) := (OTHERS => '0');
	SIGNAL SPRITE_ON : STD_LOGIC := '0';
	
	SIGNAL REVERSE : STD_LOGIC := '0';
	
	-- DATA REVERSE BIT ORDER 
	SIGNAL DATA_R : STD_LOGIC_VECTOR(WIDTH_ROM - 1 DOWNTO 0) := (OTHERS => '0');

	-- SPRITE AND BACKGROUND COLORS
	SIGNAL COLOR : STD_LOGIC_VECTOR(2 DOWNTO 0) := "000";
	SIGNAL BACKGROUND_COLOR : STD_LOGIC_VECTOR(2 DOWNTO 0) := "111";
 
BEGIN
	-- REVERSE THE BIT ORDER
	DATA_R (WIDTH_ROM - 1 DOWNTO 0) <= DATA(0 TO WIDTH_ROM - 1);
	
	-- CHANGE THE COLOR OF THE SPRITE WITH THE SWITCHES
	COLOR <= SW_RGB;
	
	-- THE BACKGROUND COLOR IS NORMALLY WHITE, BUT WHEN THE SPRITE IS WHITE IT CHANGES TO BLACK
	BACKGROUND_COLOR <= "000" WHEN (SW_RGB = "111") ELSE "111";
 
	-- MOVE THE SPRITE RIGHT/LEFT
	PROCESS (RIGHT, LEFT, RESET, C_INT, CLK)
	BEGIN
		IF RESET = '1' THEN
			C_INT <= 0;
			REVERSE <= '0';
		ELSIF RISING_EDGE(CLK) THEN
			IF RIGHT = '1' THEN
				REVERSE <= '0';
				IF C_INT = ((TDISP_H/WIDTH) - 1) * WIDTH THEN
					C_INT <= 0;
				ELSE
					C_INT <= C_INT + W;
				END IF;
			ELSIF LEFT = '1' THEN
				REVERSE <= '1';
				IF C_INT = 0 THEN
					C_INT <= ((TDISP_H/WIDTH) - 1) * WIDTH;
				ELSE
					C_INT <= C_INT - W;
				END IF;
			ELSE NULL;
			END IF;
		ELSE NULL;
		END IF;
	END PROCESS;
 
	-- MOVE THE SPRITE UP/DOWN
	PROCESS (DOWN, UP, RESET, R_INT, CLK)
	BEGIN
		IF RESET = '1' THEN
			R_INT <= 0;
		ELSIF RISING_EDGE(CLK) THEN
			IF DOWN = '1' THEN
				IF R_INT = ((TDISP_V/HEIGHT) - 1) * HEIGHT THEN
					R_INT <= 0;
				ELSE
					R_INT <= R_INT + H;
				END IF;
			ELSIF UP = '1' THEN
				IF R_INT = 0 THEN
					R_INT <= ((TDISP_V/HEIGHT) - 1) * HEIGHT;
				ELSE
					R_INT <= R_INT - H;
				END IF;
			ELSE NULL;
			END IF;
		ELSE NULL;
		END IF;
	END PROCESS;

	ROM_PIXELS <= COLUMN - (TPW_H + TBP_H) - C_INT;
	ROM_ADDRESS <= ROW - (TPW_V + TBP_V) - R_INT;
	ROM_ADD4 <= ROM_ADDRESS(LOG_HEIGTH - 1 DOWNTO 0);

	-- DISPLAY THE SPRITE ONLY IN VALID REGIONS OF THE SCREEN
	SPRITE_ON <= '1' WHEN (((COLUMN >= TPW_H + TBP_H + C_INT ) AND (COLUMN < TPW_H + TBP_H + WIDTH + C_INT)) AND
	             ((ROW >= TPW_V + TBP_V + R_INT) AND (ROW < TPW_V + TBP_V + HEIGHT + R_INT))) ELSE
	             '0';

	-- COLORING THE SPRITE'S LINES
	PROCESS (VIDEO_ON, ROM_PIXELS, DATA_R, DATA, SPRITE_ON, REVERSE, COLOR, BACKGROUND_COLOR)
	VARIABLE J : INTEGER;
	BEGIN
		RGB <= "000";
		IF VIDEO_ON = '1' THEN
			IF SPRITE_ON = '1' THEN
				J := CONV_INTEGER(ROM_PIXELS);
				IF REVERSE = '1' THEN
					IF DATA_R(J) = '1' THEN
						RGB <= COLOR;
					ELSE
						RGB <= BACKGROUND_COLOR;
					END IF;
				ELSE
					IF DATA(J) = '1' THEN
						RGB <= COLOR;
					ELSE
						RGB <= BACKGROUND_COLOR;
					END IF;
				END IF;
			ELSE
				RGB <= BACKGROUND_COLOR;
			END IF;
		ELSE
			RGB <= "000";
		END IF;
	END PROCESS;

END BEHAVIORAL;