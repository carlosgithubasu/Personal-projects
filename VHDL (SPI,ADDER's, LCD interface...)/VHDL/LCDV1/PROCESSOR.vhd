LIBRARY IEEE;

USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;

ENTITY LCD_PROCESSOR IS
	PORT (
		CLK             : IN STD_LOGIC;
		INSTRUCTION_ROM : IN STD_LOGIC_VECTOR (8 DOWNTO 0);
		GENERAL_DELAY	 : IN INTEGER RANGE 0 TO 1_000;				
		RS              : OUT STD_LOGIC;
		RW              : OUT STD_LOGIC;
		EN              : OUT STD_LOGIC;
		DIR_ROM         : OUT INTEGER RANGE 0 TO 63;
		NEXT_POS			 : OUT INTEGER RANGE 1 TO 16;
		DATA            : OUT STD_LOGIC_VECTOR (7 DOWNTO 0)
	);
END LCD_PROCESSOR;

ARCHITECTURE Behavioral OF LCD_PROCESSOR IS

	CONSTANT ONE_US : INTEGER := 50; -- (1/FOSC)*50 = 2E-8*50 = 1 uS
	SIGNAL DELAY_COUNTER : INTEGER RANGE 0 TO 1_000_000 := 0;
	SIGNAL US_COUNTER : INTEGER RANGE 0 TO ONE_US := ONE_US;
	SIGNAL INIT_COUNTER : INTEGER RANGE 0 TO 8 := 0;
	SIGNAL DIR_COUNTER, DIR_LOOP : INTEGER RANGE 0 TO 63 := 0;  --INSTRUCCCIONES CONTADOR
	SIGNAL NEXT_POS_INT : INTEGER RANGE 1 TO 17 := 2;
	SIGNAL NEXT_POS_STD : STD_LOGIC_VECTOR(7 DOWNTO 0);
 
	TYPE STATE_TYPE IS (IDLE, INIT_LCD, T_DELAY ,WRITE_1_PART, WRITE_2_PART, PUT_COMMAND, BEGIN_LOOP, END_LOOP, NOP, FINISH);

	SIGNAL STATE : STATE_TYPE := IDLE;
	SIGNAL AFTER_DELAY : STATE_TYPE;  --TIPO STATE_TYPE;
	SIGNAL AFTER_WRITE : STATE_TYPE;

BEGIN
	RW <= '0';--TIERRA
	DIR_ROM <= DIR_COUNTER;  --dir rom 
	NEXT_POS <= NEXT_POS_INT;
		
	PROCESS (CLK)
	BEGIN
		IF RISING_EDGE(CLK) THEN
			CASE STATE IS
				WHEN IDLE => 
					IF INSTRUCTION_ROM >= '0' & x"08" AND INSTRUCTION_ROM <= '0' & x"0F" THEN 
						STATE <= INIT_LCD;
					ELSIF INSTRUCTION_ROM = '0' & x"00" THEN
						STATE <= FINISH;					
					ELSIF INSTRUCTION_ROM = '1' & x"00" THEN
						STATE <= BEGIN_LOOP;
					ELSIF INSTRUCTION_ROM = '1' & x"01" THEN
						STATE <= END_LOOP;
					ELSIF INSTRUCTION_ROM = '1' & x"02" THEN
						STATE <= NOP;
					ELSIF INSTRUCTION_ROM = '1' & x"03" THEN  --delay ms
						DELAY_COUNTER <= GENERAL_DELAY * 1000;
						STATE <= T_DELAY;
						AFTER_DELAY <= NOP;
					ELSE
						STATE <= PUT_COMMAND;
					END IF;
				WHEN INIT_LCD => 
--					INIT_COUNTER <= INIT_COUNTER + 1; 
--					Supongamos que me encuentro en init , esto quiere decir que voy a llevar a cabo la inicializacion
--					pero yo necesito mandar una serie de instrucciones para llevar a cabo exitosamente este paso, mi instruccion en mi rom es la initm asi que
--					mi procesador lo detecta y lo manda llamar, de acuerdo al primer estado de la maquina que es IDLE , la cual le dice que hacer.
--					mi enable va a estar en cero y mi rs tambien porque va a recibir instrucciones. init counter es 8, porque son 8 instrucciones la necesarias.
					
					EN <= '0';
					RS <= '0';
					IF INIT_COUNTER < 8 THEN  --si es menor que 8 , state<=tdelayy
						STATE <= T_DELAY;
						DELAY_COUNTER <= 15000;  --para 15 ms
						AFTER_DELAY <= WRITE_1_PART;
						AFTER_WRITE <= INIT_LCD;     --hace un t delay y regresa de nuevo a init
						IF INIT_COUNTER < 4 THEN
							DATA <= x"38";
						ELSIF INIT_COUNTER = 4 THEN
							DATA <= x"06";
						ELSIF INIT_COUNTER = 5 THEN
							DATA <= INSTRUCTION_ROM(7 DOWNTO 0);  --solo los 8 bits de data
						ELSIF INIT_COUNTER = 6 THEN
							DATA <= x"80";
						ELSE
							DATA <= x"01";
						END IF;
					ELSE
						INIT_COUNTER <= 0;
						STATE <= IDLE;
						DIR_COUNTER <= DIR_COUNTER + 1;  --aumento la direccion 
					END IF;
 
				WHEN T_DELAY => 
					US_COUNTER <= US_COUNTER - 1;  --un Us
					IF US_COUNTER = 0 THEN
						US_COUNTER <= ONE_US;  --le cargo un micro
						DELAY_COUNTER <= DELAY_COUNTER - 1;  --delay counter es 15 ms
						IF DELAY_COUNTER = 0 THEN
							STATE <= AFTER_DELAY;  --after delay,, osea write 1 part
						ELSE NULL;
						END IF;
					ELSE NULL;
					END IF;					
				WHEN WRITE_1_PART => 
					EN <= '1';  --en uno
					STATE <= T_DELAY;
					DELAY_COUNTER <= 10;  --muy poco
					AFTER_DELAY <= WRITE_2_PART;  -- osea write part 2
 
				WHEN WRITE_2_PART => 
					EN <= '0';
					STATE <= T_DELAY;
					DELAY_COUNTER <= 400;
					AFTER_DELAY <= AFTER_WRITE;  --init lcd
					
				WHEN PUT_COMMAND => 
					IF INSTRUCTION_ROM(8) = '0' THEN
						RS <= '0';
						IF INSTRUCTION_ROM(7 DOWNTO 0) >= x"80" AND INSTRUCTION_ROM(7 DOWNTO 0) <= x"8F" THEN  --primera linea visible
							NEXT_POS_STD <= INSTRUCTION_ROM(7 DOWNTO 0) - x"80";
							NEXT_POS_INT <= CONV_INTEGER(NEXT_POS_STD)+ 2;  --mas dos , para que 
						ELSIF INSTRUCTION_ROM(7 DOWNTO 0) >= x"C0" AND INSTRUCTION_ROM(7 DOWNTO 0) <= x"CF" THEN
							NEXT_POS_STD <= INSTRUCTION_ROM(7 DOWNTO 0) - x"C0";
							NEXT_POS_INT <= CONV_INTEGER(NEXT_POS_STD)+ 2;
						END IF;
						IF NEXT_POS_INT = 17 THEN  --si se salio entonces regresa al principio
							NEXT_POS_INT <= 1;
						END IF;						
					ELSE
						RS <= '1';
					END IF;
					STATE <= T_DELAY;
					DELAY_COUNTER <= 2000; --40 us
					DATA <= INSTRUCTION_ROM(7 DOWNTO 0);  --mandas el comando
					AFTER_DELAY <= WRITE_1_PART; --haces el tiempo de espera.
					AFTER_WRITE <= IDLE; --lo mandas a estado  estable 
					DIR_COUNTER <= DIR_COUNTER + 1;  --aumentas la direccion
					
				WHEN BEGIN_LOOP =>
					DIR_COUNTER <= DIR_COUNTER + 1;
					DIR_LOOP <= DIR_COUNTER;
					STATE <= IDLE;
					
				WHEN END_LOOP =>
					DIR_COUNTER <= DIR_LOOP;					
					STATE <= IDLE;
				
				WHEN NOP =>
					DIR_COUNTER <= DIR_COUNTER + 1;
					STATE <= IDLE;
					
				WHEN OTHERS => 
					STATE <= IDLE;

			END CASE;
		END IF;
	END PROCESS;

END Behavioral;