LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.std_logic_arith.ALL;
USE IEEE.std_logic_unsigned.ALL;
use work.tetris_package.all;



ENTITY Tetris IS

	PORT (
		CLK, RST  : IN STD_LOGIC; 
		HSYNC, VSYNC    : OUT STD_LOGIC; 
		R, G, B         : OUT STD_LOGIC_VECTOR(3 DOWNTO 0); 
		Move_left, Move_right,Move_down,Rotate : IN STD_LOGIC
	);

	END Tetris;

	
ARCHITECTURE BEHAVIORAL OF Tetris IS

	COMPONENT Syncronizador     
		PORT (
		CLK_25Mhz    : IN STD_LOGIC;
		RST	  : IN STD_LOGIC;
		H_SYNC, V_SYNC, VIDEO_ON  : OUT STD_LOGIC;
		HCOUNT, VCOUNT            : OUT STD_LOGIC_VECTOR(9 DOWNTO 0)
	
	);
	END COMPONENT;
	
	
	COMPONENT Frequencydivider 
		PORT (
			CLK_IN, RST  : IN STD_LOGIC; 
			CLK_OUT      : OUT STD_LOGIC 
		);
	END COMPONENT;
	
	SIGNAL HCOUNT : STD_LOGIC_VECTOR (9 DOWNTO 0) := "0000000000";
	SIGNAL VCOUNT : STD_LOGIC_VECTOR(9 DOWNTO 0)  := "0000000000";
	SIGNAL V_SYNC : STD_LOGIC := '0'; 
	SIGNAL H_SYNC : STD_LOGIC := '0'; 
	SIGNAL VIDEO_ON : STD_LOGIC := '0';
	SIGNAL Clock : STD_LOGIC := '0';
	
	SIGNAL FBEGIN : INTEGER := 280;
	SIGNAL FEND :INTEGER := 310;
	SIGNAL VBEGIN : INTEGER := 0;
	SIGNAL VEND : INTEGER := 30;
	SIGNAL LIMIT : INTEGER := 0;
	
	
	
	
	
   TYPE STATE_MACHINE IS(Dibuja_Muros,DRAWING);
	SIGNAL STATE : STATE_MACHINE := dibuja_muros;
 
	
	BEGIN

         Clock25Mhz : Frequencydivider
			PORT MAP(CLK, RST, clock);
			
			VGA_syncronizador : Syncronizador
			PORT MAP(clock, RST, H_SYNC, V_SYNC, VIDEO_ON, HCOUNT, VCOUNT); 
			
			

			
			VSYNC <= V_SYNC;  --salidas asincronicas 
			HSYNC <= H_SYNC;  --hacia el monitor
			
			
			process(CLOCK, RST)
			begin
	
				if (RST = '0') then
					   R <= (others => '0'); G <= (others => '0'); b <= (others => '0');
				


				elsif (rising_edge(CLOCK)) then
				
					
							case (state) is
								when Dibuja_Muros =>   IF (HCOUNT > 240 AND HCOUNT < 270) AND (VCOUNT> 410 AND VCOUNT <440) THEN
															  R <= (others => '1'); G <= (others => '0'); b <= (others => '1'); 
															  ELSE
															  R <= (others => '0'); G <= (others => '0'); b <= (others => '0'); 
															  END IF;
															  
															  state <= drawing;
															  
		
								
								when  drawing =>  case rnd_count_r is
														
														when 0 =>  IF(HCOUNT > FBEGIN AND HCOUNT < FEND) AND  (VCOUNT > VBEGIN AND VEND < 16) THEN
																	  R <= (others => '1'); G <= (others => '0'); b <= (others => '1');
																	  ELSE
																	  R <= (others => '0'); G <= (others => '0'); b <= (others => '0');
																	  END IF;
														
														when 1=>   IF(HCOUNT > FBEGIN AND HCOUNT < FEND) AND  (VCOUNT > VBEGIN AND VEND < 16) THEN
																	  R <= (others => '1'); G <= (others => '0'); b <= (others => '1');
																	  ELSE
																	  R <= (others => '0'); G <= (others => '0'); b <= (others => '0');
																	  END IF;
														
														when 2=>  IF(HCOUNT > FBEGIN AND HCOUNT < FEND) AND  (VCOUNT > VBEGIN AND VEND < 16) THEN
																	  R <= (others => '1'); G <= (others => '0'); b <= (others => '1');
																	  ELSE
																	  R <= (others => '0'); G <= (others => '0'); b <= (others => '0');
																	  END IF;
														
														
														when 3=>  IF(HCOUNT > FBEGIN AND HCOUNT < FEND) AND  (VCOUNT > VBEGIN AND VEND < 16) THEN
																	  R <= (others => '1'); G <= (others => '0'); b <= (others => '1');
																	  ELSE
																	  R <= (others => '0'); G <= (others => '0'); b <= (others => '0');
																	  END IF;
														
														
														when 4=>  IF(HCOUNT > FBEGIN AND HCOUNT < FEND) AND  (VCOUNT > VBEGIN AND VEND < 16) THEN
																	  R <= (others => '1'); G <= (others => '0'); b <= (others => '1');
																	  ELSE
																	  R <= (others => '0'); G <= (others => '0'); b <= (others => '0');
																	  END IF;
														
														
														when 5=>  IF(HCOUNT > FBEGIN AND HCOUNT < FEND) AND  (VCOUNT > VBEGIN AND VEND < 16) THEN
																	  R <= (others => '1'); G <= (others => '0'); b <= (others => '1');
																	  ELSE
																	  R <= (others => '0'); G <= (others => '0'); b <= (others => '0');
																	  END IF;
														
														
														when 6=>  IF(HCOUNT > FBEGIN AND HCOUNT < FEND) AND  (VCOUNT > VBEGIN AND VEND < 16) THEN
																	  R <= (others => '1'); G <= (others => '0'); b <= (others => '1');
																	  ELSE
																	  R <= (others => '0'); G <= (others => '0'); b <= (others => '0');
																	  END IF;
														
														
														
														
									
							end case;
							
						end case;
					
						end if;
					end process;
					
					
					
					
					
					
					
		rand_shape : process(RST, CLOCK)
			begin
				if (RST= '0') then
					rnd_count_r <= 0;
				elsif (rising_edge(CLOCK)) then
					if(move_right = '1' or move_left = '1' or rotate = '1') then
						if(rnd_count_r /= 5) then
							rnd_count_r <= rnd_count_r + 1;
						else
							rnd_count_r <= 0;
						end if;
					end if;			
				end if;
			end process;

	

		
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
			MOVIMIENTO_VERTICAL: PROCESS(CLOCK, LIMIT,VBEGIN,VEND)
			VARIABLE COUNTER : INTEGER := 0;
			BEGIN


				IF RISING_EDGE(CLOCK) THEN

							IF COUNTER = 12500000 THEN 
								COUNTER := 0; 
							 
								IF LIMIT = 450 THEN
									LIMIT <=30;
									VBEGIN <= 0;
									VEND <= 30;
			
								ELSE
									VBEGIN <= VBEGIN + 10;
									VEND <= VEND + 10;
									LIMIT <= LIMIT + 10;
								END IF;
										
							ELSE 				 
								COUNTER := COUNTER + 1;
								END IF;
													
					END IF;
						
					END PROCESS;


				MOVIMIENTO_HORIZONTAL:PROCESS(CLOCK,FBEGIN,FEND)
				 VARIABLE CONTADOR : INTEGER :=0;
				BEGIN
				
				IF RISING_EDGE(CLOCK) THEN
				  IF CONTADOR = 4500000 THEN
				  CONTADOR :=0;
						IF MOVE_LEFT ='0' THEN
							FBEGIN <= FBEGIN - 10;
							
							FEND <= FEND - 10;
							
						ELSIF MOVE_RIGHT = '0' THEN 
							
							 FBEGIN <= FBEGIN + 10;
							
							 FEND <= FEND + 10;
						END IF;
						
						ELSE CONTADOR := CONTADOR +1;
					END IF;
					END IF;
					END PROCESS;




END ARCHITECTURE;