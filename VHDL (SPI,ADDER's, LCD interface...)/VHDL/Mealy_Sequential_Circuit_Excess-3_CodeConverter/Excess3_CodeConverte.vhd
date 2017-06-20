----------------------------------------------------------------------------------
-- Company: ITESM Monterrey
-- Engineer: Carlos Pérez Araujo
-- Create Date:    08:09:49 02/23/2016  
-- Module Name:    Excess3_CodeConverter - Behavioral 
-- Project Name:   Mealy Sequential Circuit Code converter

----------------------------------------------------------------------------------
LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;


ENTITY Excess3_CodeConverter IS
	PORT( CLK,a : IN STD_LOGIC;
		   Z : OUT STD_LOGIC);

END Excess3_CodeConverter;


ARCHITECTURE Behavioral OF Excess3_CodeConverter IS

SIGNAL STATE , NEXTSTATE : INTEGER RANGE 0 TO 6 := 0;

BEGIN

PROCESS(STATE,A)  --This process involves only input's and signals.
BEGIN


   CASE STATE IS 
	
	WHEN 0 => 
				IF A = '0' THEN 
				Z <= '1';
				NEXTSTATE <= 1;
				ELSE 
				Z<= '0';
				NEXTSTATE <= 2;
				END IF;
	WHEN 1 => 
				IF A ='0' THEN 
				Z <= '1';
				NEXTSTATE <=3;
				ELSE
				Z<= '0';
				NEXTSTATE <=4;
				END IF;
	WHEN 2 => 
				IF A ='0' THEN 
				Z <= '0';
				NEXTSTATE <=4;
				ELSE
				Z<= '1';
				NEXTSTATE <=4;
				END IF;
	WHEN 3 => 
				IF A ='0' THEN 
				Z <= '0';
				NEXTSTATE <=5;
				ELSE
				Z<= '1';
				NEXTSTATE <=5;
				END IF;
	WHEN 4 => 
				IF A ='0' THEN 
				Z <= '1';
				NEXTSTATE <=5;
				ELSE
				Z<= '0';
				NEXTSTATE <=6;
				END IF;
	WHEN 5 => 
				IF A ='0' THEN 
				Z <= '0';
				NEXTSTATE <=0;
				ELSE
				Z<= '1';
				NEXTSTATE<=0;
				END IF;
	
	WHEN 6 => 
				IF A ='0' THEN 
				Z <= '1';
				NEXTSTATE<=0;
				ELSE 
				Z<='0';
				NEXTSTATE <=0;
				END IF;
				
	WHEN OTHERS => null;
	      
	
	END CASE;
END PROCESS;
	
	
	

PROCESS(CLK)
BEGIN
IF(RISING_EDGE(CLK)) THEN
   STATE<=NEXTSTATE;
END IF;
END PROCESS;
END Behavioral;

