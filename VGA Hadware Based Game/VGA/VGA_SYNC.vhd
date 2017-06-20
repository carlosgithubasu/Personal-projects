LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;

ENTITY VGA_SYNC IS
	PORT (
		CLK_25Mhz    : IN STD_LOGIC;
		RST	  : IN STD_LOGIC;
		H_SYNC, V_SYNC, VIDEO_ON  : OUT STD_LOGIC;
		HCOUNT, VCOUNT            : OUT STD_LOGIC_VECTOR(9 DOWNTO 0)
	
	);
	
	
END VGA_SYNC;

ARCHITECTURE BEHAVIORAL OF VGA_SYNC IS

	-- HORIZONTAL SYNC PARAMETERS:
	
	CONSTANT TS_H : INTEGER := 800;
	CONSTANT TDISP_H : INTEGER := 640;
	CONSTANT TPW_H : INTEGER := 96;
	CONSTANT TFP_H : INTEGER := 16;
	CONSTANT TBP_H : INTEGER := 48;
	

	-- VERTICAL SYNC PARAMETERS:
	
	CONSTANT TS_V : INTEGER := 521;
	CONSTANT TDISP_V : INTEGER := 480;
	CONSTANT TPW_V : INTEGER := 2;
	CONSTANT TFP_V : INTEGER := 10;
	CONSTANT TBP_V : INTEGER := 29;

	-- SIGNALS AND COUNTERS:

	
	SIGNAL COUNTER_H : INTEGER RANGE 0 TO 799 := 0;
	SIGNAL NEXT_COUNTER_H : INTEGER RANGE 0 TO 799 := 0;
	SIGNAL COUNTER_V : INTEGER RANGE 0 TO 520 := 0;

BEGIN
	

	PROCESS (CLK_25Mhz, RST)
	BEGIN
		IF RST = '1' THEN
			COUNTER_H <= 0;
		ELSIF (RISING_EDGE(CLK_25Mhz)) THEN
			COUNTER_H <= NEXT_COUNTER_H;
		END IF;
	END PROCESS;

	NEXT_COUNTER_H <= (COUNTER_H + 1) WHEN (COUNTER_H < TS_H - 1) ELSE 0;

	PROCESS (CLK_25Mhz, RST)
	BEGIN
		IF RST = '1' THEN
			COUNTER_V <= 0;
		ELSIF (RISING_EDGE(CLK_25Mhz)) THEN
			IF (NEXT_COUNTER_H = 0) THEN
				IF (COUNTER_V = TS_V - 1) THEN
					COUNTER_V <= 0;
				ELSE
					COUNTER_V <= COUNTER_V + 1;
				END IF;
			END IF;
		END IF;
	END PROCESS;

	H_SYNC <= '0' WHEN (COUNTER_H < TPW_H) ELSE '1';
	V_SYNC <= '0' WHEN (COUNTER_V < TPW_V) ELSE '1';

	VIDEO_ON <= '0' WHEN ((COUNTER_H < TPW_H + TBP_H) OR (COUNTER_H > TDISP_H + TPW_H + TBP_H - 1 ) OR (COUNTER_V < TPW_V + TBP_V) OR (COUNTER_V > TDISP_V + TPW_V + TBP_V - 1)) ELSE '1';
	
	HCOUNT <= CONV_STD_LOGIC_VECTOR(COUNTER_H,10)-144;
	VCOUNT <= CONV_STD_LOGIC_VECTOR(COUNTER_V,10)-31;
	
	
END BEHAVIORAL;