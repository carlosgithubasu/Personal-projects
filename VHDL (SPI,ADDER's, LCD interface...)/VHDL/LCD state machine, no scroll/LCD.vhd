LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;

ENTITY LCD IS
	PORT (
		CLK         : IN STD_LOGIC;
		RS          : OUT STD_LOGIC;
		RW          : OUT STD_LOGIC;
		EN          : OUT STD_LOGIC;
		DATA        : OUT STD_LOGIC_VECTOR (7 DOWNTO 0)
	);
END LCD;

ARCHITECTURE Behavioral OF LCD IS


	CONSTANT ONE_US : INTEGER := 50; -- (1/FOSC)*50 = 2E-8*50 = 1 uS
	CONSTANT DIR_1_LINE : STD_LOGIC_VECTOR (7 DOWNTO 0) := x"80";
	CONSTANT DIR_2_LINE : STD_LOGIC_VECTOR (7 DOWNTO 0) := x"C0";
	
	CONSTANT LCD_LINE_WIDTH : INTEGER := 16;
	CONSTANT ROM_SIZE : INTEGER := 2 * LCD_LINE_WIDTH;

	CONSTANT INIT_LENGTH : INTEGER := 7;
	CONSTANT DATA_LENGTH : INTEGER := 9;

	TYPE INIT_ROM_TYPE IS ARRAY (INIT_LENGTH - 1 DOWNTO 0) OF STD_LOGIC_VECTOR(7 DOWNTO 0);
	TYPE DATA_ROM_TYPE IS ARRAY (DATA_LENGTH - 1 DOWNTO 0) OF STD_LOGIC_VECTOR(7 DOWNTO 0);
	
	TYPE STATE_TYPE IS (INIT, T_DELAY, WRITE_1_PART, WRITE_2_PART, INIT_DONE, CHOOSE_LINE, WRITE_CHAR, FINISH);
	

	SIGNAL INIT_CMD  : INIT_ROM_TYPE := ( 
		-- INIT SEQUENCE:
		-- 0x38 : FOUR TIMES FOR 8 BITS CONFIGURATION
		-- 0x06 : ENTRY MODE
		-- 0x0C : DISPLAY CONTROL
		-- 0x01 : CLEAR DISPLAY
		x"01", x"0C", x"06", x"38", x"38", x"38", x"38"
	);	

	SIGNAL DATA_CMD  : DATA_ROM_TYPE := (
		-- N     A     I      T      S      A      B      E      S
		x"4E",x"41",x"49", x"54", x"53", x"41", x"42", x"45", x"53"
	);	
	
	SIGNAL STATE : STATE_TYPE := INIT;
	SIGNAL AFTER_DELAY : STATE_TYPE;
	SIGNAL AFTER_WRITE : STATE_TYPE;

	SIGNAL ROM_COUNTER : INTEGER RANGE 0 TO ROM_SIZE - 1 := 0;
	SIGNAL DELAY_COUNTER : INTEGER RANGE 0 TO 15000 := 0;
	SIGNAL US_COUNTER : INTEGER RANGE 0 TO ONE_US := ONE_US;

	SIGNAL LINE : STD_LOGIC := '0';	
	
BEGIN
	RW <= '0';
	
	PROCESS(CLK)
	BEGIN
		IF RISING_EDGE(CLK) THEN
			CASE STATE IS
				WHEN INIT =>
					EN <= '0';
					IF ROM_COUNTER = INIT_LENGTH THEN
						STATE <= INIT_DONE;
					ELSE
						RS <= '0';
						STATE <= T_DELAY;
						DELAY_COUNTER <= 15000;
						AFTER_DELAY <= WRITE_1_PART;
						AFTER_WRITE <= INIT;
						DATA <= INIT_CMD(CONV_INTEGER(ROM_COUNTER));
						ROM_COUNTER <= ROM_COUNTER + 1;
					END IF;
				WHEN T_DELAY =>
					US_COUNTER <= US_COUNTER - 1;

					IF US_COUNTER = 0 THEN
						US_COUNTER <= ONE_US;
						DELAY_COUNTER <= DELAY_COUNTER - 1;
						IF DELAY_COUNTER = 0 THEN
							STATE <= AFTER_DELAY;
						ELSE NULL;
						END IF;
					ELSE NULL;
					END IF;					
				WHEN WRITE_1_PART =>
					EN <= '1';
					STATE <= T_DELAY;
					DELAY_COUNTER <= 10;
					AFTER_DELAY <= WRITE_2_PART;				
				WHEN WRITE_2_PART =>
					EN <= '0';
					STATE <= T_DELAY;
					DELAY_COUNTER <= 400;
					AFTER_DELAY <= AFTER_WRITE;				
				WHEN INIT_DONE =>
					STATE <= T_DELAY;
					DELAY_COUNTER <= 2000;
					LINE <= '0';
					AFTER_DELAY <= CHOOSE_LINE;				
				WHEN CHOOSE_LINE =>
					RS <= '0';				
					IF LINE = '0' THEN
						DATA <= DIR_1_LINE;
						ROM_COUNTER <= 0;
						LINE <= '1';
					ELSE
						DATA <= DIR_2_LINE;
						ROM_COUNTER <= LCD_LINE_WIDTH;
						LINE <= '0';
					END IF;
					STATE <= WRITE_1_PART;
					AFTER_WRITE <= WRITE_CHAR;				
				WHEN WRITE_CHAR =>
					RS <= '1';
					IF ROM_COUNTER = DATA_LENGTH THEN
						STATE <= FINISH;
					ELSE
						STATE <= T_DELAY;
						DELAY_COUNTER <= 2000;
						DATA <= DATA_CMD(CONV_INTEGER(ROM_COUNTER));
						IF ROM_COUNTER = LCD_LINE_WIDTH - 1 THEN
							AFTER_WRITE <= CHOOSE_LINE;
						ELSE
							AFTER_WRITE <= WRITE_CHAR;
						END IF;
						AFTER_DELAY <= WRITE_1_PART;
						ROM_COUNTER <= ROM_COUNTER + 1;
					END IF;
				WHEN OTHERS => NULL;
			END CASE;
		END IF;
	END PROCESS;
END Behavioral;
