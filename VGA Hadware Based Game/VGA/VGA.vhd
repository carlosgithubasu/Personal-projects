LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.std_logic_arith.ALL;
USE IEEE.std_logic_unsigned.ALL;
USE WORK.VGA_LIBRERIA.ALL;



--TURN ON, PROCESS TURN ON
ENTITY VGA IS

	PORT (
		CLK_50MHz, RST  : IN STD_LOGIC; 
		HSYNC, VSYNC    : OUT STD_LOGIC; 
		R, G, B         : OUT STD_LOGIC_VECTOR(3 DOWNTO 0); 
		IZQ, DER        : IN STD_LOGIC;
		DO,RE,MI,FA,SOL,LA,SI,DOB        : IN STD_LOGIC;
		SPEAKER         : OUT STD_LOGIC
		
	);
END VGA;
	
	

	
ARCHITECTURE BEHAVIORAL OF VGA IS

	COMPONENT VGA_SYNC     
		PORT (
		CLK_25Mhz    : IN STD_LOGIC;
		RST	  : IN STD_LOGIC;
		H_SYNC, V_SYNC, VIDEO_ON  : OUT STD_LOGIC;
		HCOUNT, VCOUNT            : OUT STD_LOGIC_VECTOR(9 DOWNTO 0)
	
	);
	END COMPONENT;
	
	COMPONENT FQDIVIDER 
		PORT (
			CLK_IN, RST  : IN STD_LOGIC; 
			CLK_OUT      : OUT STD_LOGIC 
		);
	END COMPONENT;
	
	COMPONENT DEBOUNCE IS
	PORT (
		CLK   : IN STD_LOGIC;
		DIN   : IN STD_LOGIC;
		QOUT  : OUT STD_LOGIC
	);
   END COMPONENT;
	
	COMPONENT CLK100HZ IS
	PORT (
		MCLK : IN STD_LOGIC;
		CLKOUT : OUT STD_LOGIC
	);
   END COMPONENT;
	
	
	COMPONENT PIANO_SPEAKER IS 
     PORT ( CLK: IN STD_LOGIC;
	         DO : IN STD_LOGIC;
	         RE : IN STD_LOGIC;
				MI : IN STD_LOGIC;
				FA:  IN STD_LOGIC;
				SOL: IN STD_LOGIC;
				LA:  IN STD_LOGIC;
				SI:  IN STD_LOGIC;
				DOB:  IN STD_LOGIC;
				SPEK : OUT STD_LOGIC
				
		  );	  
   END COMPONENT;
	
	SIGNAL HCOUNT : STD_LOGIC_VECTOR (9 DOWNTO 0) := "0000000000";
	SIGNAL VCOUNT : STD_LOGIC_VECTOR(9 DOWNTO 0)  := "0000000000";
	SIGNAL V_SYNC : STD_LOGIC := '0'; 
	SIGNAL H_SYNC : STD_LOGIC := '0'; 
	SIGNAL VIDEO_ON : STD_LOGIC := '0';
	
	
	--SPEAKER
  SIGNAL DO_SIGNAL: STD_LOGIC:= '0';  --LA 698
  SIGNAL RE_SIGNAL: STD_LOGIC:= '0';  --SI 784
  SIGNAL MI_SIGNAL: STD_LOGIC:= '0';  --SI 784
  SIGNAL FA_SIGNAL: STD_LOGIC:= '0';  --SI 784
  SIGNAL SOL_SIGNAL: STD_LOGIC:= '0';  --SI 784
  SIGNAL LA_SIGNAL: STD_LOGIC:= '0';  --SI 784
  SIGNAL SI_SIGNAL: STD_LOGIC:= '0';  --SI 784
  SIGNAL DOB_SIGNAL: STD_LOGIC:= '0';  --LA 698
  SIGNAL SPEAKER_SIGNAL : STD_LOGIC := '0';
	
	
	
	SIGNAL CLK_DEBOUNCE : STD_LOGIC := '0';
	--FALLING BLOCK
	
	SIGNAL FALLING_BLOCK_I: INTEGER := 0;
	SIGNAL FALLING_BLOCK_F: INTEGER := 0;
	
	SIGNAL FALLING_BLOCK_I1: INTEGER := -135;
	SIGNAL FALLING_BLOCK_F1: INTEGER := -135;
	
	SIGNAL FALLING_BLOCK_I2: INTEGER := -275;
	SIGNAL FALLING_BLOCK_F2: INTEGER := -275;
	
	
	
--	SIGNAL FALLING_2BLOCK_I: INTEGER := 0;
--	SIGNAL FALLING_2BLOCK_F: INTEGER := 0;
--	
--	SIGNAL FALLING_3BLOCK_I: INTEGER := 0;
--	SIGNAL FALLING_3BLOCK_F: INTEGER := 0;
--	
--	SIGNAL FALLING_4BLOCK_I: INTEGER := 0;
--	SIGNAL FALLING_4BLOCK_F: INTEGER := 0;
--	
--	SIGNAL FALLING_5BLOCK_I: INTEGER := 0;
--	SIGNAL FALLING_5BLOCK_F: INTEGER := 0;
--	
--	
--	SIGNAL FALLING_6BLOCK_I: INTEGER := 0;
--	SIGNAL FALLING_6BLOCK_F: INTEGER := 0;
--	
--	
--	SIGNAL FALLING_7BLOCK_I: INTEGER := 0;
--	SIGNAL FALLING_7BLOCK_F: INTEGER := 0;
--	
--	
--	SIGNAL FALLING_8BLOCK_I: INTEGER := 0;
--	SIGNAL FALLING_8BLOCK_F: INTEGER := 0;
	
	--CLOCK AND RESET
	
	SIGNAL CLK_25MHZ : STD_LOGIC := '0';
	SIGNAL R_ST : STD_LOGIC := '0'; 
	
	SIGNAL DRAW1 : STD_LOGIC := '1';
	SIGNAL DRAW2 : STD_LOGIC := '1';
	SIGNAL DRAW3 : STD_LOGIC := '1';
	
	
	
	BEGIN

         CLK : FQDIVIDER
			PORT MAP(CLK_50MHZ, R_ST,CLK_25MHZ);
			
			SYNC : VGA_SYNC
			PORT MAP(CLK_25MHZ, RST, H_SYNC, V_SYNC, VIDEO_ON, HCOUNT, VCOUNT); 
 
 
         CLK100 : CLK100HZ
			PORT MAP(CLK_50MHZ, CLK_DEBOUNCE);
			
        
			--SPEAKER PORT MAPING
	
			
         DEBDO : DEBOUNCE
			PORT MAP(CLK_DEBOUNCE, DO , DO_SIGNAL); 
		
 		   DERE : DEBOUNCE
		   PORT MAP(CLK_DEBOUNCE, RE , RE_SIGNAL); 			
			
			DEBMI : DEBOUNCE
			PORT MAP(CLK_DEBOUNCE, MI , MI_SIGNAL);
			
			DEBFA : DEBOUNCE
			PORT MAP(CLK_DEBOUNCE,FA ,FA_SIGNAL);
			
			DEBSOL : DEBOUNCE
			PORT MAP(CLK_DEBOUNCE, SOL , SOL_SIGNAL);
			
			DEBLA: DEBOUNCE
			PORT MAP(CLK_DEBOUNCE, LA , LA_SIGNAL);
			
			DEBSI : DEBOUNCE
			PORT MAP(CLK_DEBOUNCE, SI , SI_SIGNAL);
			
			DEBDOB : DEBOUNCE
			PORT MAP(CLK_DEBOUNCE, DOB , DOB_SIGNAL);
			
			PIANOSPEAKER : PIANO_SPEAKER
			PORT MAP(CLK_50MHZ,DO_SIGNAL,RE_SIGNAL,MI_SIGNAL,FA_SIGNAL,SOL_SIGNAL,LA_SIGNAL,SI_SIGNAL,DOB_SIGNAL,SPEAKER_SIGNAL); 
			
			VSYNC <= V_SYNC;
			HSYNC <= H_SYNC;
			
			SPEAKER <= SPEAKER_SIGNAL;
		   	



        PROCESS(CLK_25MHZ,RST , DO_SIGNAL, RE_SIGNAL, MI_SIGNAL,FA_SIGNAL,SOL_SIGNAL,LA_SIGNAL,SI_SIGNAL,DOB_SIGNAL,DRAW1,DRAW2,DRAW3)
		  
		   VARIABLE COUNTER : INTEGER := 0; 
		   
         

         
		  BEGIN
					
		   IF RISING_EDGE(CLK_25MHZ) THEN 
        			

			
			
--RANDOM BLOCKS
			
			
			IF VCOUNT > FALLING_BLOCK_I AND VCOUNT < FALLING_BLOCK_F AND HCOUNT > 1 AND HCOUNT < 79  THEN
			  
				R <="0011" ; G <="0011" ; B <= "0011";
			
			ELSIF VCOUNT > FALLING_BLOCK_I AND VCOUNT < (FALLING_BLOCK_F + 5) AND HCOUNT > 1 AND HCOUNT < 79  THEN
			   R <="0000" ; G <="0000" ; B <= "0000";
				
			ELSIF VCOUNT > FALLING_BLOCK_I1 AND VCOUNT < FALLING_BLOCK_F1  AND HCOUNT > 1 AND HCOUNT < 79  THEN
			  
				R <="0011" ; G <="0011" ; B <= "0011";
			
			ELSIF VCOUNT > FALLING_BLOCK_I1 AND VCOUNT < (FALLING_BLOCK_F1 + 5) AND HCOUNT > 1 AND HCOUNT < 79  THEN
			   R <="0000" ; G <="0000" ; B <= "0000";
				
				
				ELSIF VCOUNT > FALLING_BLOCK_I2 AND VCOUNT < FALLING_BLOCK_F2  AND HCOUNT > 1 AND HCOUNT < 79  THEN
			  
				R <="0011" ; G <="0011" ; B <= "0011";
			
			ELSIF VCOUNT > FALLING_BLOCK_I2 AND VCOUNT < (FALLING_BLOCK_F2 + 5) AND HCOUNT > 1 AND HCOUNT < 79  THEN
			   R <="0000" ; G <="0000" ; B <= "0000";
				
				
				
				
				
--			ELSIF VCOUNT > FALLING_2BLOCK_I AND VCOUNT < FALLING_2BLOCK_F AND HCOUNT > 80  AND HCOUNT < 160 THEN
--			   R <="0101" ; G <="0101" ; B <= "0101";
--			 
--			ELSIF VCOUNT > FALLING_3BLOCK_I AND VCOUNT < FALLING_3BLOCK_F AND HCOUNT > 160  AND HCOUNT < 240 THEN
--			   R <="0101" ; G <="0101" ; B <= "0101";
--			 
--			ELSIF VCOUNT > FALLING_4BLOCK_I AND VCOUNT < FALLING_4BLOCK_F AND HCOUNT > 240  AND HCOUNT < 320 THEN
--			   R <="0101" ; G <="0101" ; B <= "0101";
--				
--					 
--			ELSIF VCOUNT > FALLING_5BLOCK_I AND VCOUNT < FALLING_5BLOCK_F AND HCOUNT > 320  AND HCOUNT < 400 THEN
--			   R <="0101" ; G <="0101" ; B <= "0101";
--				
--					 
--			ELSIF VCOUNT > FALLING_6BLOCK_I AND VCOUNT < FALLING_6BLOCK_F AND HCOUNT > 400  AND HCOUNT < 480 THEN
--			   R <="0101" ; G <="0101" ; B <= "0101";
--				
--					 
--			ELSIF VCOUNT > FALLING_7BLOCK_I AND VCOUNT < FALLING_7BLOCK_F AND HCOUNT > 480  AND HCOUNT < 560 THEN
--			   R <="0101" ; G <="0101" ; B <= "0101";
--				
--					 
--			ELSIF VCOUNT > FALLING_8BLOCK_I AND VCOUNT < FALLING_8BLOCK_F AND HCOUNT > 560  AND HCOUNT < 640 THEN
--			   R <="0101" ; G <="0101" ; B <= "0101";
			

			
--GREY COLUMNS			
			
			ELSIF DO_SIGNAL = '0' AND VCOUNT > 0 AND VCOUNT < 350 AND HCOUNT >1 AND  HCOUNT < 79  THEN
				      
						  R <="0010" ; G <="0010" ; B <= "0010";
			
			ELSIF DO_SIGNAL = '1' AND VCOUNT > 0 AND VCOUNT < 350 AND HCOUNT >1 AND HCOUNT < 79  THEN
				      
						  R <="0001" ; G <="0001" ; B <= "0001";
						  
						  
															
			ELSIF RE_SIGNAL = '0' AND VCOUNT > 0 AND VCOUNT < 350  AND HCOUNT > 81 AND HCOUNT <159 THEN
				        R <="0010" ; G <="0010" ; B <= "0010";
					  
			ELSIF RE_SIGNAL = '1' AND VCOUNT > 0 AND VCOUNT < 350  AND HCOUNT > 81 AND HCOUNT <159 THEN
				     
					     R <="0001" ; G <="0001" ; B <= "0001";
		
		   
			
			ELSIF MI_SIGNAL = '0' AND VCOUNT > 0 AND VCOUNT < 350  AND HCOUNT > 161 AND HCOUNT <239 THEN
				       R <="0010" ; G <="0010" ; B <= "0010";
						 
			ELSIF MI_SIGNAL = '1' AND VCOUNT > 0 AND VCOUNT < 350  AND HCOUNT > 161 AND HCOUNT <239 THEN
				       R <="0001" ; G <="0001" ; B <= "0001";
		   
			
			ELSIF  FA_SIGNAL = '1' AND VCOUNT > 0 AND VCOUNT < 350  AND HCOUNT > 241 AND HCOUNT <319 THEN
				        R <="0010" ; G <="0010" ; B <= "0010";
						 
			ELSIF  FA_SIGNAL = '0' AND VCOUNT > 0 AND VCOUNT < 350  AND HCOUNT > 241 AND HCOUNT <319 THEN
				       R <="0001" ; G <="0001" ; B <= "0001";
						 
						 
			ELSIF  SOL_SIGNAL ='1' AND VCOUNT > 0 AND VCOUNT < 350  AND HCOUNT > 321 AND HCOUNT <399 THEN
				        R <="0010" ; G <="0010" ; B <= "0010";
			
			ELSIF SOL_SIGNAL ='0' AND VCOUNT > 0 AND VCOUNT < 350  AND HCOUNT > 321 AND HCOUNT <399 THEN
				       R <="0001" ; G <="0001" ; B <= "0001";
			
			ELSIF LA_SIGNAL = '1' AND VCOUNT > 0 AND VCOUNT < 350  AND HCOUNT > 401 AND HCOUNT <479 THEN
				        R <="0010" ; G <="0010" ; B <= "0010"; 
			
			ELSIF LA_SIGNAL = '0' AND VCOUNT > 0 AND VCOUNT < 350  AND HCOUNT > 401 AND HCOUNT <479 THEN
				       R <="0001" ; G <="0001" ; B <= "0001";
					  
					  
			ELSIF SI_SIGNAL = '1' AND VCOUNT > 0 AND VCOUNT < 350  AND HCOUNT > 481 AND HCOUNT <559 THEN
				       R <="0010" ; G <="0010" ; B <= "0010";
						
			ELSIF SI_SIGNAL = '0' AND VCOUNT > 0 AND VCOUNT < 350  AND HCOUNT > 481 AND HCOUNT <559 THEN
				      R <="0001" ; G <="0001" ; B <= "0001"; 
					  
		   ELSIF DOB_SIGNAL = '1' AND VCOUNT > 0 AND VCOUNT < 350  AND HCOUNT > 561 AND HCOUNT <639 THEN
				      R <="0010" ; G <="0010" ; B <= "0010"; 
			
			ELSIF DOB_SIGNAL = '0' AND VCOUNT > 0 AND VCOUNT < 350  AND HCOUNT > 561 AND HCOUNT <639 THEN
				       R <="0001" ; G <="0001" ; B <= "0001";
	
--BLOCKS COLORS			
			
			ELSIF VCOUNT > 355 AND VCOUNT < 480 AND  HCOUNT >1 AND HCOUNT <79  THEN
				      R <= (OTHERS => '0'); G <= (OTHERS => '0'); B <= (OTHERS => '1'); --blue  001
			
															
			ELSIF VCOUNT > 355 AND VCOUNT < 480 AND HCOUNT > 81 AND HCOUNT <159 THEN
				      R <= (OTHERS => '0'); G <= (OTHERS => '1'); B <= (OTHERS => '0'); --GREEN  010
			
			ELSIF VCOUNT > 355 AND VCOUNT < 480 AND HCOUNT> 161 AND HCOUNT <239  THEN
				      R <= (OTHERS => '0'); G <= (OTHERS => '0'); B <= (OTHERS => '1'); --blue 
			
			ELSIF VCOUNT > 355 AND VCOUNT < 480 AND HCOUNT> 241 AND HCOUNT <319  THEN
				        R <= (OTHERS => '0'); G <= (OTHERS => '1'); B <= (OTHERS => '0'); --GREEN  010
			
			ELSIF VCOUNT > 355 AND VCOUNT < 480 AND HCOUNT> 321 AND HCOUNT <399  THEN
				      R <= (OTHERS => '0'); G <= (OTHERS => '0'); B <= (OTHERS => '1'); --blue 
			
			ELSIF VCOUNT > 355 AND VCOUNT < 480 AND HCOUNT> 401 AND HCOUNT <479  THEN
				       R <= (OTHERS => '0'); G <= (OTHERS => '1'); B <= (OTHERS => '0'); --GREEN  010
			
			ELSIF VCOUNT > 355 AND VCOUNT < 480 AND HCOUNT> 481 AND HCOUNT <559  THEN
				      R <= (OTHERS => '0'); G <= (OTHERS => '0'); B <= (OTHERS => '1'); --blue 
			
			ELSIF VCOUNT > 355 AND VCOUNT < 480 AND HCOUNT> 561 AND HCOUNT <649 THEN
				      R <= (OTHERS => '0'); G <= (OTHERS => '1'); B <= (OTHERS => '0'); --GREEN  010
		
			ELSE 
			 R <= (OTHERS => '0'); G <= (OTHERS => '0'); B <= (OTHERS => '0');
			END IF;
			
			
		
	
		
		
			
			
					IF COUNTER = 781250  THEN
						COUNTER:=0;
						
					
					    
				
--							

--COLUMN 1		
               		IF DRAW1 = '1' THEN
								IF  FALLING_BLOCK_F < 130  THEN
								FALLING_BLOCK_F <= FALLING_BLOCK_F + 5;
								
								ELSIF FALLING_BLOCK_F >= 130 AND FALLING_BLOCK_F < 350  THEN
								
								FALLING_BLOCK_I <= FALLING_BLOCK_I + 5;
								FALLING_BLOCK_F <= FALLING_BLOCK_F + 5; 
								
								ELSIF FALLING_BLOCK_I  <= 350 THEN
								
								FALLING_BLOCK_I <= FALLING_BLOCK_I + 5;
								 
								ELSIF FALLING_BLOCK_I > 350 THEN
								FALLING_BLOCK_I <= 0;
								FALLING_BLOCK_F <= 0;
								DRAW1 <= '0';				  
								END IF;
							 END IF;
							 
						IF DRAW2 = '1' THEN	
								
								IF  FALLING_BLOCK_F1 < -5  THEN
								FALLING_BLOCK_F1 <= FALLING_BLOCK_F1 + 5;
								
								ELSIF FALLING_BLOCK_F1 >= -5 AND FALLING_BLOCK_F1 < 350  THEN
								
								FALLING_BLOCK_I1 <= FALLING_BLOCK_I1 + 5;
								FALLING_BLOCK_F1 <= FALLING_BLOCK_F1 + 5; 
								
								ELSIF FALLING_BLOCK_I1  <= 350 THEN
								
								FALLING_BLOCK_I1 <= FALLING_BLOCK_I1 + 5;
								 
								ELSIF FALLING_BLOCK_I1 > 350 THEN
								FALLING_BLOCK_I1 <= -135;
								FALLING_BLOCK_F1 <= -135;
								DRAW2 <= '0';					  
								END IF;
						END IF;		
								
						 IF DRAW3 = '1' THEN		
								IF  FALLING_BLOCK_F2 < -140  THEN
								FALLING_BLOCK_F2 <= FALLING_BLOCK_F2 + 5;
								
								ELSIF FALLING_BLOCK_F2 >= -140 AND FALLING_BLOCK_F2 < 350  THEN
								
								FALLING_BLOCK_I2 <= FALLING_BLOCK_I2 + 5;
								FALLING_BLOCK_F2 <= FALLING_BLOCK_F2 + 5; 
								
								ELSIF FALLING_BLOCK_I2  <= 350 THEN
								
								FALLING_BLOCK_I2 <= FALLING_BLOCK_I2 + 5;
								 
								ELSIF FALLING_BLOCK_I2 > 350 THEN
								FALLING_BLOCK_I2 <= -270;
								FALLING_BLOCK_F2 <= -270;
								DRAW3 <= '0';					  
								END IF;
					
						END IF;		
								
								

	   --COLUMN 2				
					        		
--					   
--						  
--								IF  FALLING_2BLOCK_F < 130  THEN
--								FALLING_2BLOCK_F <= FALLING_2BLOCK_F + 5;
--								
--								ELSIF FALLING_2BLOCK_F >= 130 AND FALLING_2BLOCK_F < 350  THEN
--								
--								FALLING_2BLOCK_I <= FALLING_2BLOCK_I + 5;
--								FALLING_2BLOCK_F <= FALLING_2BLOCK_F + 5; 
--								
--								ELSIF FALLING_2BLOCK_I  <= 350 THEN
--								
--								FALLING_2BLOCK_I <= FALLING_2BLOCK_I + 5;
--								 
--								ELSIF FALLING_2BLOCK_I > 350 THEN
--								FALLING_2BLOCK_I <= 0;
--								FALLING_2BLOCK_F <= 0;
--								END IF;
--						
--						
--			          
--						
--						
--		--COLUMN 3  
--		       
--						  
--							IF  FALLING_3BLOCK_F < 130  THEN
--							FALLING_3BLOCK_F <= FALLING_3BLOCK_F + 5;
--							
--							ELSIF FALLING_3BLOCK_F >= 130 AND FALLING_3BLOCK_F < 350  THEN
--							
--							FALLING_3BLOCK_I <= FALLING_3BLOCK_I + 5;
--							FALLING_3BLOCK_F <= FALLING_3BLOCK_F + 5; 
--							
--							ELSIF FALLING_3BLOCK_I  <= 350 THEN
--							
--							FALLING_3BLOCK_I <= FALLING_3BLOCK_I + 5;
--							 
--							ELSIF FALLING_3BLOCK_I > 350 THEN
--							FALLING_3BLOCK_I <= 0;
--							FALLING_3BLOCK_F <= 0;
--							END IF;
--						
--						
--			       
--		
--		
		
--						  
--							IF  FALLING_4BLOCK_F < 130  THEN
--							FALLING_4BLOCK_F <= FALLING_4BLOCK_F + 5;
--							
--							ELSIF FALLING_4BLOCK_F >= 130 AND FALLING_4BLOCK_F < 350  THEN
--							
--							FALLING_4BLOCK_I <= FALLING_4BLOCK_I + 5;
--							FALLING_4BLOCK_F <= FALLING_4BLOCK_F + 5; 
--							
--							ELSIF FALLING_4BLOCK_I  <= 350 THEN
--							
--							FALLING_4BLOCK_I <= FALLING_4BLOCK_I + 5;
--							 
--							ELSIF FALLING_4BLOCK_I > 350 THEN
--							FALLING_4BLOCK_I <= 0;
--							FALLING_4BLOCK_F <= 0;
--							END IF;
--						
						
			    
--		 
--		--COLUMN 5
--		         IF  COUNTER_COLUMN5 >= 200000000 THEN
--						  
--							IF  FALLING_5BLOCK_F < 130  THEN
--							FALLING_5BLOCK_F <= FALLING_5BLOCK_F + 5;
--							
--							ELSIF FALLING_5BLOCK_F >= 130 AND FALLING_5BLOCK_F < 350  THEN
--							
--							FALLING_5BLOCK_I <= FALLING_5BLOCK_I + 5;
--							FALLING_5BLOCK_F <= FALLING_5BLOCK_F + 5; 
--							
--							ELSIF FALLING_5BLOCK_I  <= 350 THEN
--							
--							FALLING_5BLOCK_I <= FALLING_5BLOCK_I + 5;
--							 
--							ELSIF FALLING_5BLOCK_I > 350 THEN
--							FALLING_5BLOCK_I <= 0;
--							FALLING_5BLOCK_F <= 0;
--							END IF;
--						
--						
--			        END IF;
--						
--						
--		 
--		--COLUMN 6
--		         IF  COUNTER_COLUMN6 >= 250000000 THEN
--						  
--							IF  FALLING_6BLOCK_F < 130  THEN
--							FALLING_6BLOCK_F <= FALLING_6BLOCK_F + 5;
--							
--							ELSIF FALLING_6BLOCK_F >= 130 AND FALLING_6BLOCK_F < 350  THEN
--							
--							FALLING_6BLOCK_I <= FALLING_6BLOCK_I + 5;
--							FALLING_6BLOCK_F <= FALLING_6BLOCK_F + 5; 
--							
--							ELSIF FALLING_6BLOCK_I  <= 350 THEN
--							
--							FALLING_6BLOCK_I <= FALLING_6BLOCK_I + 5;
--							 
--							ELSIF FALLING_6BLOCK_I > 350 THEN
--							FALLING_6BLOCK_I <= 0;
--							FALLING_6BLOCK_F <= 0;
--							END IF;
--						
--						
--			        END IF;
--						
--			--COLUMN 7
--		         IF  COUNTER_COLUMN7 >= 300000000 THEN
--						  
--							IF  FALLING_7BLOCK_F < 130  THEN
--							FALLING_7BLOCK_F <= FALLING_7BLOCK_F + 5;
--							
--							ELSIF FALLING_7BLOCK_F >= 130 AND FALLING_7BLOCK_F < 350  THEN
--							
--							FALLING_7BLOCK_I <= FALLING_7BLOCK_I + 5;
--							FALLING_7BLOCK_F <= FALLING_7BLOCK_F + 5; 
--							
--							ELSIF FALLING_7BLOCK_I  <= 350 THEN
--							
--							FALLING_7BLOCK_I <= FALLING_7BLOCK_I + 5;
--							 
--							ELSIF FALLING_7BLOCK_I > 350 THEN
--							FALLING_7BLOCK_I <= 0;
--							FALLING_7BLOCK_F <= 0;
--							END IF;
--						
--						
--			         END IF;
--						
--				--COLUMN 8
--		         IF  COUNTER_COLUMN8 >= 350000000 THEN
--						  
--							IF  FALLING_8BLOCK_F < 130  THEN
--							FALLING_8BLOCK_F <= FALLING_8BLOCK_F + 5;
--							
--							ELSIF FALLING_8BLOCK_F >= 130 AND FALLING_8BLOCK_F < 350  THEN
--							
--							FALLING_8BLOCK_I <= FALLING_8BLOCK_I + 5;
--							FALLING_8BLOCK_F <= FALLING_8BLOCK_F + 5; 
--							
--							ELSIF FALLING_8BLOCK_I  <= 350 THEN
--							
--							FALLING_8BLOCK_I <= FALLING_8BLOCK_I + 5;
--							 
--							ELSIF FALLING_8BLOCK_I > 350 THEN
--							FALLING_8BLOCK_I <= 0;
--							FALLING_8BLOCK_F <= 0;
--							END IF;
--						
--						
--			       END IF;
		
		
		
		
					
				ELSE
				COUNTER := COUNTER + 1;		
				END IF;		
		END IF;			
				   		
			
END PROCESS;		

END BEHAVIORAL;





 --R <="0001" ; G <="1001" ; B <= "0001"; 


-- R <= (OTHERS => '0'); G <= (OTHERS => '0'); B <= (OTHERS => '0'); black
-- R <= (OTHERS => '0'); G <= (OTHERS => '0'); B <= (OTHERS => '1'); blue    
--
--
--  R <= (OTHERS => '0'); G <= (OTHERS => '1'); B <= (OTHERS => '0'); green
--  
--
--  R <= (OTHERS => '0'); G <= (OTHERS => '1'); B <= (OTHERS => '1'); cian
-- 
--
-- R <= (OTHERS => '1'); G <= (OTHERS => '0'); B <= (OTHERS => '0');red
--  
--
-- R <= (OTHERS => '1'); G <= (OTHERS => '0'); B <= (OTHERS => '1'); --pink
--
--
--  R <= (OTHERS => '1'); G <= (OTHERS => '1'); B <= (OTHERS => '0'); yelllow
--
--R <= (OTHERS => '1'); G <= (OTHERS => '1'); B <= (OTHERS => '1');--grey















--