LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;

ENTITY KEYPAD IS
	PORT (
		CLK : IN STD_LOGIC;                     --SEÑAL DE RELOJ
		RESET : IN STD_LOGIC;
		ROW : IN STD_LOGIC_VECTOR(0 TO 3);      --1 BIT POR RENGLON
		COL : OUT STD_LOGIC_VECTOR(0 TO 3);     --1 BIT POR COLUMNA
	   KEY : OUT STD_LOGIC_VECTOR(3 DOWNTO 0); --TECLA EN BCD
	   KEY_PRESSED : OUT STD_LOGIC             --TECLA PRESIONADA
		
	);
END KEYPAD;

ARCHITECTURE BEHAVIORAL OF KEYPAD IS
	
SIGNAL STATE : INTEGER range 0 TO 7:=0;   
	 
BEGIN
	PROCESS (CLK) IS
	BEGIN
		IF RISING_EDGE(CLK) THEN
			CASE STATE IS
			
			WHEN 0 =>
					COL <= "1000";	 --mandar voltaje a la columna de la izquiera				
					STATE <= 1;

				WHEN 1 =>
					IF ROW = "1000" THEN		
						KEY <= "0001";			
					   KEY_PRESSED <= '1';	
						
					ELSIF ROW = "0100" THEN
						KEY <= "0100";		
				      KEY_PRESSED <= '1';			
					ELSIF ROW = "0010" THEN
						KEY <= "0111";	
						KEY_PRESSED <= '1';				
					ELSIF ROW = "0001" THEN
						KEY <= "1110";		
						KEY_PRESSED <= '1';	
					ELSE KEY_PRESSED <= '0';	
					END IF;
					STATE <= 2;

				WHEN 2 =>
					COL <= "0100";					
					STATE <= 3;

				WHEN 3 =>
					IF ROW = "1000" THEN
						KEY <= "0010";	
						KEY_PRESSED <= '1';			
					ELSIF ROW = "0100" THEN
						KEY <= "0101";		
						KEY_PRESSED <= '1';	
					ELSIF ROW = "0010" THEN
						KEY <= "1000";	
			         KEY_PRESSED <= '1';				
					ELSIF ROW = "0001" THEN
						KEY <= "0000";	
			         KEY_PRESSED <= '1';				
					ELSE KEY_PRESSED <= '0';	
					END IF;					
					STATE <= 4;

				WHEN 4 =>
					COL <= "0010";					
					STATE <= 5;

				WHEN 5 =>
					IF ROW = "1000" THEN
						KEY <= "0011";		
				      KEY_PRESSED <= '1';			
					ELSIF ROW = "0100" THEN
						KEY <= "0110";	
			         KEY_PRESSED <= '1';				
					ELSIF ROW = "0010" THEN
						KEY <= "1001";	
			         KEY_PRESSED <= '1';				
					ELSIF ROW = "0001" THEN
						KEY <= "1111";	
			         KEY_PRESSED <= '1';				
					ELSE KEY_PRESSED <= '0';	
					END IF;					
					STATE <= 6;

				WHEN 6 =>
					COL <= "0001";					
					STATE <= 7;

				WHEN OTHERS =>
					IF ROW = "1000" THEN
						KEY <= "1010";	
			         KEY_PRESSED <= '1';				
					ELSIF ROW = "0100" THEN
						KEY <= "1011";	
				      KEY_PRESSED <= '1';			
					ELSIF ROW = "0010" THEN
						KEY <= "1100";	
			         KEY_PRESSED <= '1';				
					ELSIF ROW = "0001" THEN
						KEY <= "1101";	
			         KEY_PRESSED <= '1';				
					ELSE KEY_PRESSED <= '0';	
					END IF;					
					STATE <= 0;				--Regresar Estado Inicial
			END CASE;
			
			IF (reset = '0') THEN
			state <=0;
		   END IF;
		 		

			
		END IF;
	END PROCESS;
END BEHAVIORAL;