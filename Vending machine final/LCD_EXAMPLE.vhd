
-- FileName: lcd_example.vhd
-- Design Software: Quartus II 32-bit Version 11.1 Build 173 SJ Full Version
-- Carlos Pérez Araujo Instituto tecnologico de estudios superiores de monterrey

LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;
USE WORK.VENDING_ROM.ALL;


ENTITY LCD_EXAMPLE IS     
		PORT (
				CLK : IN STD_LOGIC;  --SEÑAL DE RELOJ
				RESET : IN STD_LOGIC;
				RW, RS, E : OUT STD_LOGIC;   --SEÑALES READ/WRITE, REGISTER , ENABLE
				LCD_DATA : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);  --BITS DE INFORMACION
				KEY : IN STD_LOGIC_VECTOR( 3 DOWNTO 0); --TECLA EN BDC
				KEY_PRESSED : IN STD_LOGIC;  --TECLA PRESIONADA
				MONEY: IN STD_LOGIC;
				DEVOLUTION: IN STD_LOGIC
				);			
END LCD_EXAMPLE;



ARCHITECTURE BEHAVIOR OF  LCD_EXAMPLE IS
	
	
COMPONENT LCD_CONTROLLER IS
	PORT (
		CLK : IN STD_LOGIC; 
		RESET_N : IN STD_LOGIC; 
		LCD_ENABLE : IN STD_LOGIC; 
		LCD_BUS: IN STD_LOGIC_VECTOR(9 DOWNTO 0); 
		BUSY : OUT STD_LOGIC; 
		RW,RS,E: OUT STD_LOGIC; 
		LCD_DATA : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
		);
END COMPONENT;

   
	
SIGNAL LCD_ENABLE: STD_LOGIC := '0';
SIGNAL LCD_BUS : STD_LOGIC_VECTOR(9 DOWNTO 0) := (others => '0');
SIGNAL LCD_BUSY : STD_LOGIC := '0';
SIGNAL KEY_PRINT : STD_LOGIC :='1';
SIGNAL MONEY_FLAG: STD_LOGIC := '1';  
SIGNAL DEV_FLAG: STD_LOGIC := '1';  

SIGNAL FLAG_TIMING : STD_LOGIC := '0';  --CLEAR DISPLAY = '0' ; SETPOSITION = '1'

--ROM
TYPE ROM_VENDING IS ARRAY (0 TO 3) OF STD_LOGIC_VECTOR(9 DOWNTO 0); 
SIGNAL ROM : ROM_VENDING := (OTHERS => (OTHERS => '0'));
----RUTINA------------------------------------------------------------------------------------
TYPE ROUTINE_LCD IS (IDLE,WAIT_STATE,CLEAR_DISPLAY,PRODUCTS,MONEY_STATE,SUFFICIENT_MONEY,CHANGE_EDIT,CALCULATE_CHANGE,DEV_MESSAGE,YOURCHANGEIS,WAITFORCHANGE,SHOWDISPATCHED,USELESS2,ANOTHERUSELESS,USELESSTATE,CLEAR,DISPLAY,RESET_STATE,WAIT10SECONDS_STATE,SETPOSITION,SHOW,SHOWMESSAGE,SHOW_MESSAGE,ESPERA,SHOWPRICES,PRICES,WAITING);
SIGNAL ROUTINE : ROUTINE_LCD := SETPOSITION;
--MENSAJES---------------------,--------------------------------------------------------------
TYPE   IDLESTATE IS ARRAY (0 TO 21) OF STD_LOGIC_VECTOR(9 DOWNTO 0);
TYPE   PRODUCTSROM IS ARRAY (0 TO 15 ) OF STD_LOGIC_VECTOR(9 DOWNTO 0); 


TYPE   DISPLAY_MESSAGES IS ARRAY (0 TO 33) OF STD_LOGIC_VECTOR(9 DOWNTO 0);   --DISPLAY_MESSAGES
 TYPE   MONEY_SHOW IS ARRAY (0 TO 25) OF STD_LOGIC_VECTOR(9 DOWNTO 0);   --DISPLAY_MESSAGES
 
SIGNAL MENSAJE_IDLE  : IDLESTATE  :=  (C, A, R, L, O, S, SPACE, V, Es, N, D, I, N, G, SPACE, M, A, C, H, I, N, Es);
SIGNAL MENSAJE_IDLE1 : IDLESTATE  := (H, Es, L, L, O, SPACE, T, H, Es, R, Es, COMA, W, Es, L, C, O, M, Es, EX, EX, EX);
SIGNAL MENSAJE_IDLE2 : IDLESTATE  := (POS2, W, H, A, T, SPACE, A, R, Es, SPACE, Y, O, U, POS20, C, R, A, V, I, N, G, QUESTION);
SIGNAL PRODUCTO1 : PRODUCTSROM  := (FL,SPACE,SPACE,C,H,I,P,S,SPACE,MONEYSIGN,FIVE,DOT,ZERO,ZERO,SPACE,SPACE);

SIGNAL PRODUCTO2 : PRODUCTSROM  := (FL,SPACE,SPACE,W,A,T,Es,R,SPACE,MONEYSIGN,SIX,DOT,ZERO,ZERO,SPACE,SPACE);
SIGNAL PRODUCTO3 : PRODUCTSROM  := (FL,SPACE,SPACE,J,U,I,C,Es,SPACE,MONEYSIGN,FOUR,DOT,ZERO,ZERO,SPACE,SPACE);
SIGNAL PRODUCTO4 : PRODUCTSROM  := (FL,SPACE,SPACE,C,O,O,K,I,Es,SPACE,MONEYSIGN,THREE,DOT,ZERO,ZERO,SPACE);


SIGNAL SHOWMEMONEY : MONEY_SHOW := (SPACE,Y,O,U,SPACE,I,N,S,Es,R,T,Es,D,SPACE,SL,SPACE,SPACE,SPACE,MONEYSIGN,ONE,TWO,DOT,ZERO,ZERO,SPACE,SPACE);


SIGNAL INVALID: DISPLAY_MESSAGES :=  (FL,SPACE,SPACE,I,N,V,A,L,I,D,SPACE,Es,N,T,R,Y,EX,SPACE,SL,OTHERS => SPACE);
SIGNAL DISPATCHED  : DISPLAY_MESSAGES  := (FL,D,I,S,P,A,T,C,H,ES,D,COMMA,ES,N,J,O,Y,SPACE,SL,SPACE,SPACE,SPACE,Y,O,U,R,SPACE,S,N,A,C,K,EX,SPACE);
SIGNAL CHANGEMESSAGE  :DISPLAY_MESSAGES  := (FL,Y,O,U,R,SPACE,C,H,A,N,G,ES,SPACE,I,S,DOT,DOT,SL,SPACE,SPACE,SPACE,SPACE,MONEYSIGN,ZERO,ZERO,DOT,ZERO,ZERO,OTHERS => SPACE);
SIGNAL MONEY_DEV : DISPLAY_MESSAGES  := (FL,M,O,N,ES,Y,SPACE,D,ES,V,O,L,U,T,I,O,N,SPACE,OTHERS => SPACE);
SIGNAL INSUFFICIENTMONEY :  DISPLAY_MESSAGES  := (FL,N,O,T,SPACE,ES,N,O,U,G,H,SPACE,M,O,N,ES,Y,SL,OTHERS => SPACE);
SIGNAL NOPRODUCT :  DISPLAY_MESSAGES  := (FL,SPACE,SPACE,SPACE,SPACE,N,O,SPACE,P,R,O,D,U,C,T,SL,OTHERS => SPACE);

SIGNAL USERCHOICE : STD_LOGIC_VECTOR(7 DOWNTO 0) := "00000000";
--POCISIONES---------------------------------------------------------------------------------
TYPE LCD_LINES IS ARRAY (0 TO 37 ) OF STD_LOGIC_VECTOR (9 DOWNTO 0);
SIGNAL LCD_LINE_1 : LCD_LINES := (POSD2, POSD3, POSD4, POSD5,  POSD6, POSD7, POSD8, POSD9, 
											 POSDA, POSDB, POSDC, POSDD,  POSDE, POSDF, POSE0, POSE1, 
											 POSE2, POSE3, POSE4, POSE5,  POSE6, POSE7, POS0,  POS1, 
											 POS2,  POS3,  POS4,  POS5,   POS6,  POS7,  POS8,  POS9, 
											 POS10, POS11, POS12, POS13, POS14,  POS15);
   
BEGIN		  


CONTROLLER: LCD_CONTROLLER PORT MAP(
			CLK => CLK,     
			RESET_N => RESET, 
			LCD_ENABLE => LCD_ENABLE,  
			LCD_BUS => LCD_BUS,  
			BUSY => LCD_BUSY, 
			RW => RW, 
			RS => RS, 
			E => E, 
			LCD_DATA => LCD_DATA
		  );
 
	
	
	
PROCESS (CLK)
				VARIABLE CHAR : INTEGER RANGE 0 TO 37 := 0;           --LONGITUD DE LOS MENSAJES DE IDLE
				VARIABLE CHARP : INTEGER := 0;
				VARIABLE SEGS : INTEGER := 0;                         --VARIABLE CONTADORA DE DELAYS
				VARIABLE POSITION : INTEGER RANGE 37 DOWNTO 0 := 37;  --POCISION ACTUAL
				VARIABLE CURENT_MESSAGE : INTEGER RANGE 0 TO 2 := 0;       --BANDERA PARA SABER QUE MENSAJE MOSTRAR
				VARIABLE CONTADOR : INTEGER := 0;
				VARIABLE CONT_CHANGE: INTEGER := 0;
            VARIABLE CONT : INTEGER := 0;
				VARIABLE MONEY_COUNTER : INTEGER := 0;
				VARIABLE CLEAR_BUTTON: INTEGER := 0;
				VARIABLE CHANGE: INTEGER := 0;
	         VARIABLE AV_CHIPS: INTEGER := 2;
				VARIABLE AV_COOKIES: INTEGER := 2;
				VARIABLE AV_JUICE: INTEGER := 2;
				VARIABLE AV_WATER: INTEGER := 2;
				
				
BEGIN

 
			 
IF (RISING_EDGE(CLK)) THEN
		IF (LCD_BUSY = '0' AND LCD_ENABLE = '0') THEN
			 LCD_ENABLE <= '1';
			 
			IF(MONEY = '0' AND MONEY_FLAG = '1') THEN
			   ROUTINE<= CLEAR;  
				MONEY_FLAG <= '0';
				CLEAR_BUTTON:=1;
				MONEY_COUNTER := MONEY_COUNTER + 1;
				
			END IF;
			 
			IF (KEY_PRESSED = '1' AND KEY_PRINT = '1') THEN
			ROUTINE <= PRICES;
		   KEY_PRINT <= '0'; 		  
		   END IF;
			
			IF (DEVOLUTION = '0' AND DEV_FLAG = '1') THEN
			ROUTINE<= CLEAR;  
			DEV_FLAG <= '0';
			
		   END IF;
			
			
		
			 CASE ROUTINE IS
			 
			        
						WHEN CLEAR => LCD_BUS<= CLEAR;
										  ROUTINE<= ESPERA;
						
											
						WHEN IDLE =>  IF (CURENT_MESSAGE < 1) THEN                --MUESTRA MENSAJE #1
													IF(CHAR < MENSAJE_IDLE'LENGTH) THEN  --SI VARIABLE CHAR < QUE  EL # CARACTERES 
														LCD_BUS <= MENSAJE_IDLE(CHAR);    --ENVIA MENSAJE CARACTER POR CARACTER AL LCD
														CHAR := CHAR + 1;                 --AUMENTA CONTADOR CHAR
													ELSE
														LCD_ENABLE <= '0';                --EVITA LATCH (DESPLIGUE DE EXTRA-CHARS)
													   CHAR := 0; 								 --RESET CHAR
														ROUTINE <= WAIT_STATE;            --SIGUIENTE ESTADO -> WAIT_STATE
													END IF;	   
											ELSIF (CURENT_MESSAGE < 2) THEN            --MUESTRA MENSAJE #2
													IF (CHAR < MENSAJE_IDLE1'LENGTH) THEN--SI VARIABLE CHAR < QUE  EL # CARACTERE
														LCD_BUS <= MENSAJE_IDLE1 (CHAR);  --ENVIA MENSAJE CARACTER POR CARACTER AL LCD
														CHAR := CHAR + 1;                 --AUMENTA CONTADOR CHAR
													ELSE
													   LCD_ENABLE <= '0';                --EVITA LATCH (DESPLIGUE DE EXTRA-CHARS)
														CHAR := 0;                        --RESET CHAR
														ROUTINE <= WAIT_STATE;            --SIGUIENTE ESTADO -> WAIT_STATE
													END IF;
				
											ELSE
											     IF (CHAR < MENSAJE_IDLE2'LENGTH) THEN --MUESTRA MENSAJE #3
																									 --SI VARIABLE CHAR < QUE  EL # CARACTERES
														LCD_BUS <= MENSAJE_IDLE2 (CHAR);  --ENVIA MENSAJE CARACTER POR CARACTER AL LCD
														CHAR := CHAR + 1;                 --AUMENTA CONTADOR CHAR
												  ELSE 
												      LCD_ENABLE <= '0';                --EVITA LATCH (DESPLIGUE DE EXTRA-CHARS)
														CHAR := 0;                        --RESET CHAR
														ROUTINE <= WAIT_STATE;            --SIGUIENTE ESTADO -> WAIT_STATE
												  END IF;
											END IF;
				
			WHEN WAIT_STATE =>      LCD_ENABLE <= '0';                         --EVITA LATCH (DESPLIGUE DE EXTRA-CHARS) 
											IF(CURENT_MESSAGE = 2) THEN                --MENSAJE # 2?
													IF (SEGS > 250000000) THEN           --ESPERA 5 SEGUNDOS
														LCD_BUS <= CLEAR;                 --LIMPIA PANTALLA
												      CURENT_MESSAGE := 0;		          --ACTUALIZA MENSAJE
														ROUTINE <= SETPOSITION;           --ESTABLECE SIGUIENTE POCISION             
														SEGS := 0;                        --RESETEA CONTADOR
													ELSE
														SEGS := SEGS + 1;                 --INCREMENTA CONTADOR
													END IF;	
											ELSIF (CURENT_MESSAGE  < 2) THEN           --MENSAJE #0  #1?
											       
													IF(SEGS < 7_000_000 ) THEN
														 SEGS := SEGS + 1;
													ELSE
													SEGS := 0;
														IF (FLAG_TIMING = '0') THEN
															 FLAG_TIMING <= '1'; 
															 ROUTINE <= CLEAR_DISPLAY;
														ELSE
															FLAG_TIMING <= '0'; 
															ROUTINE <= SETPOSITION;
														END IF;
													END IF;
										   END IF;
										 
											 
											 
				WHEN CLEAR_DISPLAY =>   
												LCD_BUS <= CLEAR;
												ROUTINE <= WAIT_STATE;
		 
 
				
				WHEN SETPOSITION =>     
												
												IF (POSITION > 0) THEN
														LCD_BUS <= LCD_LINE_1(POSITION);
														POSITION := POSITION - 1;
											   ELSE
														 POSITION := 37;
														 CURENT_MESSAGE  := CURENT_MESSAGE + 1;
														 LCD_BUS <= LCD_LINE_1(POSITION);
											   END IF;
											   ROUTINE <= IDLE;
						 
	
					WHEN PRICES =>   CASE KEY IS
											WHEN "0000" => LCD_BUS <= ZERO; 
											WHEN "0001" => LCD_BUS <= ONE;  
											WHEN "0010" => LCD_BUS <= TWO;  
											WHEN "0011" => LCD_BUS <= THREE;
											WHEN "0100" => LCD_BUS <= FOUR; 
											WHEN "0101" => LCD_BUS <= FIVE; 
											WHEN "0110" => LCD_BUS <= SIX;  
											WHEN "0111" => LCD_BUS <= SEVEN;
											WHEN "1000" => LCD_BUS <= EIGHT;
											WHEN "1001" => LCD_BUS <= NINE;
											WHEN "1010" => LCD_BUS <= A;    
											WHEN "1011" => LCD_BUS <= B;   
											WHEN "1100" => LCD_BUS <= C;   
											WHEN "1101" => LCD_BUS <= D;    
											WHEN "1110" => LCD_BUS <= ASTERISC; 
									      WHEN OTHERS => LCD_BUS <= CLEAR;   
										  END CASE;
						
											
											IF CLEAR_BUTTON = 1 THEN
											   
											   IF CONT = 0 THEN
												USERCHOICE(7 DOWNTO 4) <= KEY;
												CONT := CONT + 1;
												ROUTINE <= ESPERA;	
												ELSIF CONT = 1 THEN
												CLEAR_BUTTON:=0;
												CONT :=0;
												USERCHOICE (3 DOWNTO 0) <= KEY;
												ROUTINE<= SHOW_MESSAGE;
												END IF;
												
											
											ELSE
											
											
												IF CONT = 0 THEN
												CONT:= CONT + 1;
												ROUTINE<= ESPERA; 
												ELSIF CONT = 1 THEN
												USERCHOICE(7 DOWNTO 4) <= KEY;
												CONT := CONT + 1;
												ROUTINE <= ESPERA;	
												ELSIF CONT = 2 THEN
												CONT :=0;
												USERCHOICE (3 DOWNTO 0) <= KEY;
												ROUTINE<= SHOW_MESSAGE;
												END IF;
											
											END IF;
										   
											

			
        			WHEN ESPERA =>  LCD_ENABLE <='0';
					
										 IF CONTADOR = 20000000 THEN
										     IF(MONEY_FLAG = '0') THEN
										     ROUTINE<= MONEY_STATE;
										     ELSIF DEV_FLAG = '0' THEN
											  ROUTINE<=DEV_MESSAGE;
											  DEV_FLAG <= '1';
											  ELSE
										     ROUTINE <= WAITING;
										     CONTADOR := 0;
											 END IF;
										 ELSE 
										 CONTADOR := CONTADOR + 1;
										 END IF;
										  
					
					WHEN DEV_MESSAGE =>    IF (CHARP < MONEY_DEV'LENGTH) THEN    --MUESTRA MENSAJE #3
																									 --SI VARIABLE CHAR < QUE  EL # CARACTERES
														LCD_BUS <= MONEY_DEV(CHARP);     --ENVIA MENSAJE CARACTER POR CARACTER AL LCD
														CHARP := CHARP + 1;               --AUMENTA CONTADOR CHAR
												  ELSE 
												      LCD_ENABLE <= '0';                --EVITA LATCH (DESPLIGUE DE EXTRA-CHARS)
														CHARP := 0;                       --RESET CHAR
														ROUTINE <= WAIT10SECONDS_STATE;   --SIGUIENTE ESTADO -> WAIT_STATE
												  END IF;
					
					WHEN WAITING => LCD_ENABLE <='0';
				                   
										 IF KEY_PRESSED = '1' 	THEN	--HABILITADOR TECLADO	
										 KEY_PRINT <= '1';
										 END IF; 
										 
										 IF (MONEY = '0' OR KEY_PRESSED= '1')   THEN     --DINERO IGUAL A 1, HABILITO BOTON  OR KEY_PRESSED= '1'	
										 CONTADOR := 0;
										 ELSE
										       IF CONTADOR = 250000000 THEN
											    ROUTINE <= RESET_STATE;
										       ELSE 
										       CONTADOR := CONTADOR + 1;
										       END IF;
										 END IF;
					
				   WHEN SHOW_MESSAGE =>    
												  LCD_BUS <= FL; 
												  ROUTINE<= DISPLAY; 
												  
												  
												  
												  
					WHEN DISPLAY =>   --ROUTINE<= SHOW;
						                    ROUTINE <=SUFFICIENT_MONEY;
						
					WHEN SUFFICIENT_MONEY =>   IF(AV_JUICE = 0  OR  AV_COOKIES = 0 OR AV_WATER = 0 OR  AV_CHIPS =0)THEN 
					                               USERCHOICE <= "10000000";
													   END IF;
														
														 CASE USERCHOICE IS 
															  WHEN "10100001" =>  
																						IF(MONEY_COUNTER >=1  AND  MONEY_COUNTER<CHIPS) THEN
																						USERCHOICE <= "00000000"; 
																						ROUTINE<= SHOW;
																						ELSE
																						CHANGE := MONEY_COUNTER - CHIPS;
																						ROUTINE <= CHANGE_EDIT;
																						AV_CHIPS := AV_CHIPS - 1;
																						END IF;
															  WHEN "10110010" => 
																						IF(MONEY_COUNTER>=1 AND MONEY_COUNTER < WATER) THEN
																						USERCHOICE <= "00000000";
																						ROUTINE<= SHOW;
																						ELSE
																						ROUTINE<= CHANGE_EDIT;
																						AV_WATER := AV_WATER - 1;
																						CHANGE := MONEY_COUNTER - WATER; 
																						END IF;
															  WHEN "11000011" => 
																						IF(MONEY_COUNTER >=1 AND MONEY_COUNTER < JUICE) THEN
																						USERCHOICE <= "00000000";
																						ROUTINE<= SHOW;
																						ELSE
																						ROUTINE<= CHANGE_EDIT;
																						AV_JUICE := AV_JUICE - 1;
																						CHANGE := MONEY_COUNTER - JUICE;
																						END IF;
															  WHEN "11010100" => 
																						IF(MONEY_COUNTER >= 1 AND MONEY_COUNTER < COOKIE) THEN
																						USERCHOICE <= "00000000";
																						ROUTINE<= SHOW;
																						ELSE
																						ROUTINE<= CHANGE_EDIT;
																						AV_COOKIES := AV_COOKIES - 1;
																						CHANGE := MONEY_COUNTER - COOKIE;
																						END IF;
															 
																						
															  WHEN OTHERS => ROUTINE <= SHOW;
															  END CASE;
															  
															 
															  
					WHEN CHANGE_EDIT =>    CASE CHANGE IS 
					                             WHEN 0 => CHANGEMESSAGE(24) <=ZERO;     CHANGEMESSAGE(23) <=ZERO; 
														  WHEN 1 => CHANGEMESSAGE(24) <=ONE;     CHANGEMESSAGE(23) <=ZERO; 
														  WHEN 2 => CHANGEMESSAGE(24) <=TWO;     CHANGEMESSAGE(23) <=ZERO; 
														  WHEN 3 => CHANGEMESSAGE(24) <=THREE;    CHANGEMESSAGE(23) <=ZERO;
														  WHEN 4 => CHANGEMESSAGE(24) <=FOUR;   CHANGEMESSAGE(23) <=ZERO;
														  WHEN 5=> CHANGEMESSAGE(24) <=FIVE;  CHANGEMESSAGE(23) <=ZERO; 
														  WHEN 6 => CHANGEMESSAGE(24) <=SIX;    CHANGEMESSAGE(23) <=ZERO; 
														  WHEN 7=> CHANGEMESSAGE(24) <=SEVEN;   CHANGEMESSAGE(23) <=ZERO;
														  WHEN 8 => CHANGEMESSAGE(24) <=EIGHT;  CHANGEMESSAGE(23) <=ZERO;
														  WHEN 9 =>CHANGEMESSAGE(24) <=NINE;    CHANGEMESSAGE(23) <=ZERO; 
														  WHEN 10 => CHANGEMESSAGE(24)<=ZERO;  CHANGEMESSAGE(23) <=ONE;    
														  WHEN 11 => CHANGEMESSAGE(24)<=ONE;  CHANGEMESSAGE(23) <=ONE;  
														  WHEN 12 =>CHANGEMESSAGE(24) <=TWO;   CHANGEMESSAGE(23) <=ONE; 
												        WHEN 13 =>CHANGEMESSAGE(24) <=THREE;   CHANGEMESSAGE(23) <=ONE; 
														  WHEN OTHERS => NULL;
														  
												 END CASE;
										      ROUTINE<= SHOW;		 
																	
					
	            WHEN WAITFORCHANGE =>    LCD_ENABLE <= '0';
															
													IF CONT_CHANGE = 250000000 THEN
													ROUTINE<= YOURCHANGEIS;
													ELSE CONT_CHANGE:= CONT_CHANGE + 1;
													END IF;
				
				  WHEN CALCULATE_CHANGE =>   CASE USERCHOICE IS 
				                             WHEN "10100001" => CHANGE := MONEY_COUNTER - CHIPS;  
													  WHEN "10110010" => CHANGE := MONEY_COUNTER - WATER; 
													  WHEN "10000011" => CHANGE := MONEY_COUNTER - JUICE; 
													  WHEN "10010100" => CHANGE := MONEY_COUNTER - COOKIE; 
													  WHEN OTHERS => NULL;
													  END CASE;
													  ROUTINE<=YOURCHANGEIS;
													  
													  
													  
				  
													  
			     WHEN YOURCHANGEIS=>    
												 IF (CHARP < CHANGEMESSAGE'LENGTH) THEN    --MUESTRA MENSAJE #3
																									 --SI VARIABLE CHAR < QUE  EL # CARACTERES
														LCD_BUS <= CHANGEMESSAGE(CHARP);     --ENVIA MENSAJE CARACTER POR CARACTER AL LCD
														CHARP := CHARP + 1;               --AUMENTA CONTADOR CHAR
												 ELSE 
												      LCD_ENABLE <= '0';                --EVITA LATCH (DESPLIGUE DE EXTRA-CHARS)
														CHARP := 0;                       --RESET CHAR
														ROUTINE <= WAIT10SECONDS_STATE;   --SIGUIENTE ESTADO -> WAIT_STATE
												 END IF;
					                       				
					
					WHEN SHOWDISPATCHED =>  
					                       
										        IF (CHARP < DISPATCHED'LENGTH) THEN    --MUESTRA MENSAJE #3
																									 --SI VARIABLE CHAR < QUE  EL # CARACTERES
														LCD_BUS <= DISPATCHED (CHARP);     --ENVIA MENSAJE CARACTER POR CARACTER AL LCD
														CHARP := CHARP + 1;               --AUMENTA CONTADOR CHAR
												  ELSE 
												      LCD_ENABLE <= '0';                --EVITA LATCH (DESPLIGUE DE EXTRA-CHARS)
														CHARP := 0;                       --RESET CHAR
														ROUTINE <= WAITFORCHANGE;
												  END IF;
												  
										 
					WHEN SHOW =>	 	 
										        IF(USERCHOICE = "10000000") THEN
											
												   IF (CHARP < NOPRODUCT'LENGTH) THEN    --MUESTRA MENSAJE #3
																									 --SI VARIABLE CHAR < QUE  EL # CARACTERES
														LCD_BUS <= NOPRODUCT(CHARP);     --ENVIA MENSAJE CARACTER POR CARACTER AL LCD
														CHARP := CHARP + 1;               --AUMENTA CONTADOR CHAR
												  ELSE 
												      LCD_ENABLE <= '0';                --EVITA LATCH (DESPLIGUE DE EXTRA-CHARS)
														CHARP := 0;                       --RESET CHAR
														ROUTINE <= WAIT10SECONDS_STATE;   --SIGUIENTE ESTADO -> WAIT_STATE
												  END IF;
												  
												  
												  
												  
												  
												  ELSIF(USERCHOICE = "10100001") THEN
												     IF MONEY_COUNTER = 0 THEN
															  IF (CHARP < PRODUCTO1'LENGTH) THEN    --MUESTRA MENSAJE #3
																												 --SI VARIABLE CHAR < QUE  EL # CARACTERES
																	LCD_BUS <= PRODUCTO1 (CHARP);     --ENVIA MENSAJE CARACTER POR CARACTER AL LCD
																	CHARP := CHARP + 1;               --AUMENTA CONTADOR CHAR
															  ELSE 
																	LCD_ENABLE <= '0';                --EVITA LATCH (DESPLIGUE DE EXTRA-CHARS)
																	CHARP := 0;                       --RESET CHAR
																	ROUTINE <= WAIT10SECONDS_STATE;   --SIGUIENTE ESTADO -> WAIT_STATE
															  END IF;
													  ELSE 
													   
													  ROUTINE<= SHOWDISPATCHED;
													  
													  END IF;
										 
										        ELSIF(USERCHOICE = "10110010") THEN
												   IF MONEY_COUNTER = 0 THEN
															  IF (CHARP < PRODUCTO2'LENGTH) THEN    --MUESTRA MENSAJE #3
																												 --SI VARIABLE CHAR < QUE  EL # CARACTERES
																	LCD_BUS <= PRODUCTO2 (CHARP);     --ENVIA MENSAJE CARACTER POR CARACTER AL LCD
																	CHARP := CHARP + 1;               --AUMENTA CONTADOR CHAR
															  ELSE 
																	LCD_ENABLE <= '0';                --EVITA LATCH (DESPLIGUE DE EXTRA-CHARS)
																	CHARP := 0;                       --RESET CHAR
																	ROUTINE <= WAIT10SECONDS_STATE;   --SIGUIENTE ESTADO -> WAIT_STATE
															  END IF;
												  ELSE 
												  ROUTINE<= SHOWDISPATCHED;
												END IF;
										 
										 ELSIF(USERCHOICE = "11000011") THEN
										  IF MONEY_COUNTER = 0 THEN
												  IF (CHARP < PRODUCTO3'LENGTH) THEN    --MUESTRA MENSAJE #3
																									 --SI VARIABLE CHAR < QUE  EL # CARACTERES
														LCD_BUS <= PRODUCTO3 (CHARP);     --ENVIA MENSAJE CARACTER POR CARACTER AL LCD
														CHARP := CHARP + 1;               --AUMENTA CONTADOR CHAR
												  ELSE 
												      LCD_ENABLE <= '0';                --EVITA LATCH (DESPLIGUE DE EXTRA-CHARS)
														CHARP := 0;                       --RESET CHAR
														ROUTINE <= WAIT10SECONDS_STATE;   --SIGUIENTE ESTADO -> WAIT_STATE
												  END IF;
										 ELSE 
										 ROUTINE<= SHOWDISPATCHED;
										 END IF;
										 
										 ELSIF(USERCHOICE = "11010100") THEN
										 IF MONEY_COUNTER = 0 THEN
												  IF (CHARP < PRODUCTO4'LENGTH) THEN    --MUESTRA MENSAJE #3
																									 --SI VARIABLE CHAR < QUE  EL # CARACTERES
														LCD_BUS <= PRODUCTO4 (CHARP);     --ENVIA MENSAJE CARACTER POR CARACTER AL LCD
														CHARP := CHARP + 1;               --AUMENTA CONTADOR CHAR
												  ELSE 
												      LCD_ENABLE <= '0';                --EVITA LATCH (DESPLIGUE DE EXTRA-CHARS)
														CHARP := 0;                       --RESET CHAR
														ROUTINE <= WAIT10SECONDS_STATE;   --SIGUIENTE ESTADO -> WAIT_STATE
												  END IF;
										 ELSE 
										 ROUTINE<= SHOWDISPATCHED;
										 END IF;
										 
										 
										 
										
										 ELSIF(USERCHOICE = "11010100") THEN
											IF MONEY_COUNTER = 0 THEN 
												 IF (CHARP < PRODUCTO4'LENGTH) THEN    --MUESTRA MENSAJE #3
																									 --SI VARIABLE CHAR < QUE  EL # CARACTERES
														LCD_BUS <= PRODUCTO4 (CHARP);     --ENVIA MENSAJE CARACTER POR CARACTER AL LCD
														CHARP := CHARP + 1;               --AUMENTA CONTADOR CHAR
												  ELSE 
												      LCD_ENABLE <= '0';                --EVITA LATCH (DESPLIGUE DE EXTRA-CHARS)
														CHARP := 0;                       --RESET CHAR
														ROUTINE <= WAIT10SECONDS_STATE;   --SIGUIENTE ESTADO -> WAIT_STATE
												  END IF;
									    
										   ELSE 
										   ROUTINE<= SHOWDISPATCHED;
										   END IF;
											
											
										ELSIF(USERCHOICE = "00000000") THEN
											
												 IF (CHARP < INSUFFICIENTMONEY'LENGTH) THEN    --MUESTRA MENSAJE #3
																									 --SI VARIABLE CHAR < QUE  EL # CARACTERES
														LCD_BUS <= INSUFFICIENTMONEY(CHARP);     --ENVIA MENSAJE CARACTER POR CARACTER AL LCD
														CHARP := CHARP + 1;               --AUMENTA CONTADOR CHAR
												  ELSE 
												      LCD_ENABLE <= '0';                --EVITA LATCH (DESPLIGUE DE EXTRA-CHARS)
														CHARP := 0;                       --RESET CHAR
														ROUTINE <= WAIT10SECONDS_STATE;   --SIGUIENTE ESTADO -> WAIT_STATE
												  END IF;
									    
										  
										 
									    
										
										 ELSE 
												  IF (CHARP < INVALID'LENGTH) THEN    --MUESTRA MENSAJE #3
																									 --SI VARIABLE CHAR < QUE  EL # CARACTERES
														LCD_BUS <= INVALID (CHARP);     --ENVIA MENSAJE CARACTER POR CARACTER AL LCD
														CHARP := CHARP + 1;               --AUMENTA CONTADOR CHAR
												  ELSE 
												      LCD_ENABLE <= '0';                --EVITA LATCH (DESPLIGUE DE EXTRA-CHARS)
														CHARP := 0;                       --RESET CHAR
														ROUTINE <= WAIT10SECONDS_STATE;   --SIGUIENTE ESTADO -> WAIT_STATE
												  END IF;
										 END IF;
										 
										 
					
					 
					WHEN WAIT10SECONDS_STATE =>  LCD_ENABLE <= '0';
															
															IF CONTADOR = 250000000 THEN
														   ROUTINE<= RESET_STATE;
															ELSE CONTADOR:= CONTADOR + 1;
															END IF;
															
											  
					WHEN RESET_STATE =>           LCD_BUS <= CLEAR;
															POSITION := 37;  --POCISION ACTUAL
															ROUTINE <= SETPOSITION;
															CHAR := 0;           --LONGITUD DE LOS MENSAJES DE IDLE
															SEGS := 0;                         --VARIABLE CONTADORA DE DELAYS
															CURENT_MESSAGE := 0;       --BANDERA PARA SABER QUE MENSAJE MOSTRAR
															CONTADOR := 0;
															CONT  := 0;
															KEY_PRINT<= '1';
															MONEY_COUNTER := 0;
															CHARP := 0;
															MONEY_FLAG <= '1';
															CONT_CHANGE:=0;
				  WHEN MONEY_STATE => 
			                      
										 CASE MONEY_COUNTER IS 			
										   WHEN 0 => SHOWMEMONEY(20) <= ZERO; SHOWMEMONEY(19) <= ZERO;			 
											WHEN 1 => SHOWMEMONEY(20) <= ONE;  SHOWMEMONEY(19)<= ZERO;          		
											WHEN 2 => SHOWMEMONEY(20) <= TWO;  SHOWMEMONEY(19)<= ZERO;
											WHEN 3 => SHOWMEMONEY(20) <= THREE;SHOWMEMONEY(19)<= ZERO;
											WHEN 4 => SHOWMEMONEY(20) <= FOUR; SHOWMEMONEY(19)<= ZERO;
											WHEN 5 => SHOWMEMONEY(20) <= FIVE; SHOWMEMONEY(19)<= ZERO;
											WHEN 6 => SHOWMEMONEY(20) <= SIX;  SHOWMEMONEY(19)<= ZERO;
											WHEN 7 => SHOWMEMONEY(20) <= SEVEN;SHOWMEMONEY(19)<= ZERO;
											WHEN 8 => SHOWMEMONEY(20) <= EIGHT;SHOWMEMONEY(19)<= ZERO;
											WHEN 9 => SHOWMEMONEY(20) <= NINE; SHOWMEMONEY(19)<= ZERO;
											WHEN 10=> SHOWMEMONEY(20) <= ZERO; SHOWMEMONEY(19)<= ONE;
											WHEN 11=> SHOWMEMONEY(20) <= ONE;  SHOWMEMONEY(19)<= ONE;
											WHEN 12=> SHOWMEMONEY(20) <= TWO;  SHOWMEMONEY(19)<= ONE;
											WHEN 13=> SHOWMEMONEY(20) <= THREE;  SHOWMEMONEY(19)<= ONE;
											WHEN 14=> SHOWMEMONEY(20) <= FOUR;  SHOWMEMONEY(19)<= ONE;
											WHEN 15=> SHOWMEMONEY(20) <= FIVE;  SHOWMEMONEY(19)<= ONE;
											WHEN 16=> SHOWMEMONEY(20) <= SIX;  SHOWMEMONEY(19)<= ONE;
											WHEN OTHERS => NULL;    
										  END CASE;
										
										 
						
										 IF (CHARP < SHOWMEMONEY'LENGTH) THEN  
										 LCD_BUS <= SHOWMEMONEY (CHARP);     
										 CHARP := CHARP + 1;               
										 ELSE 				
										 CHARP := 0;
										
										 MONEY_FLAG <= '1';
										 ROUTINE <= ESPERA;
										 END IF;    
			
			WHEN OTHERS =>   LCD_BUS <= NOTHING;
			                 
								  
			END CASE;
			
			IF (reset = '0') THEN
			LCD_BUS <= CLEAR;
			POSITION := 37;  --POCISION ACTUAL
			ROUTINE <= SETPOSITION;
			CHAR := 0;           --LONGITUD DE LOS MENSAJES DE IDLE
			SEGS := 0;                         --VARIABLE CONTADORA DE DELAYS
			CURENT_MESSAGE := 0;       --BANDERA PARA SABER QUE MENSAJE MOSTRAR
			CONTADOR := 0;
         CONT  := 0;
			KEY_PRINT <='1';
			MONEY_FLAG <= '1';
			DEV_FLAG<= '1';
			MONEY_COUNTER :=0;
			CLEAR_BUTTON:=0;
			CONT_CHANGE:=0;
		   AV_CHIPS := 2;
			AV_COOKIES := 2;
			AV_JUICE := 2;
			AV_WATER := 2;
		  END IF;
			
		ELSE LCD_ENABLE <= '0';
 
		END IF;
	END IF;
END PROCESS;
 
END BEHAVIOR;




                           

										
										


