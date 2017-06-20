LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;

ENTITY TESTING_KEYPAD IS
	PORT (
		CLK : IN STD_LOGIC;
		ROW : IN STD_LOGIC_VECTOR(0 TO 3);
		COL : OUT STD_LOGIC_VECTOR(0 TO 3);
	   KEY : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	   KEY_AVAILABLES : OUT STD_LOGIC
		
	);
END TESTING_KEYPAD;

ARCHITECTURE Behavioral OF TESTING_KEYPAD IS
	
SIGNAL STATE : INTEGER range 0 TO 4 :=0;
SIGNAL CLK1KHZ: STD_LOGIC := '0';


	 
BEGIN


	

	PROCESS (CLK1KHZ) IS
	BEGIN
		IF RISING_EDGE(CLK1KHZ) THEN
			CASE STATE IS
				WHEN 0 => 
					
					
					   COL <= "1000";  -- ENERGIZA COLUMNA 0              
					
					   IF ROW = "1000" THEN   --fila  1
							KEY_AVAILABLES <= '1';
							KEY <= "0001";
							STATE <= 4;
							
						
						ELSIF ROW = "0100" THEN  --fila 2
							KEY_AVAILABLES <= '1';
							KEY <= "0100";
							STATE <= 4;
						
						ELSIF ROW = "0010" THEN  --fila 3
							KEY_AVAILABLES <= '1';
							KEY <= "0111";
					
							STATE <= 4;
						
						ELSIF ROW = "0001" THEN  --fila 4
						   KEY_AVAILABLES <= '1';
							KEY <= "1111"; 
							STATE <= 4;
						
					   ELSE STATE <= 1; --KEY_AVAILABLE <= '0';
						END IF;
					
					
				
				WHEN 1 =>
					COL <= "0100";  --columna 2
					
				
							IF ROW = "1000" THEN
							   KEY_AVAILABLES <= '1';
								KEY <= "0010"; 
								STATE<= 4;
								
							ELSIF ROW = "0100" THEN
								KEY_AVAILABLES <= '1';
								KEY <= "0101";
								STATE<= 4;
							ELSIF ROW = "0010" THEN
								KEY_AVAILABLES <= '1';
								KEY <= "1000";
								STATE<= 4;
								
							ELSIF ROW = "0001" THEN
								KEY_AVAILABLES <= '1';
								KEY <= "0000";
								STATE<= 4;
						
							ELSE STATE <= 2; --KEY_AVAILABLE <= '0';
							END IF;
							
						
					WHEN 2 =>
								COL <="0010";
							
								IF ROW = "1000" THEN
								   KEY_AVAILABLES <= '1';
									KEY <= "0011";
									STATE<= 4;
								ELSIF ROW = "0100" THEN
								   KEY_AVAILABLES <= '1';
									KEY <= "0110";
									STATE<= 4;
								ELSIF ROW = "0010" THEN
								   KEY_AVAILABLES <= '1';
									KEY <= "1001";
									STATE<= 4;
								ELSIF ROW = "0001" THEN
								   KEY_AVAILABLES <= '1';
									KEY <= "1111";
							      STATE <=4;		
								ELSE STATE <= 3; --KEY_AVAILABLE <= '0';
								
								END IF;		
					
                        
					
					
				WHEN 3=>
								COL <= "0001";
								
							
								IF ROW = "1000" THEN
								   KEY_AVAILABLES <= '1';
									KEY <= "1010";
									STATE<= 4;
								ELSIF ROW = "0100" THEN
								   KEY_AVAILABLES <= '1';
									KEY <= "1011";
									STATE<= 4;
								ELSIF ROW = "0010" THEN
								   KEY_AVAILABLES <= '1';
									KEY <= "1100";
									STATE<= 4;
									
								ELSIF ROW = "0001" THEN
								   KEY_AVAILABLES <= '1';
									KEY <= "1101";
									STATE<= 4;
								ELSE STATE <= 0; --KEY_AVAILABLE <= '0'; 
								END IF;					
								
								
								
				WHEN 4 =>   IF (ROW = "0000" ) THEN
									 KEY_AVAILABLES <= '0';
									 
									 STATE <= 0;
									 KEY <= "0000";
								ELSE  
								KEY_AVAILABLES <= '1';
								
								
								END IF;
			END CASE;
		END IF;
	END PROCESS;
	
	
	
	
	PROCESS (CLK)
	VARIABLE COUNTER : INTEGER :=0;
	BEGIN
		IF RISING_EDGE(CLK) THEN
				
			IF COUNTER = 25000 THEN
				COUNTER := 0;
				CLK1KHZ <= NOT CLK1KHZ;
			ELSE COUNTER := COUNTER + 1;
			END IF;
		ELSE NULL;
		END IF;
	END PROCESS;


END Behavioral;

 
	
	
	
	


