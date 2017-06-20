--This is a behavioral model of the mealy state machine for bcd to excess 3 code converter
--bases on its state table.the output z and next state are computed before the active edge of the clocck
--the state change occurs on the rising edge of the clock
---------------------------------------------------------------------------------- 
library IEEE;
use IEEE.numeric_bit.ALL;



entity SequenceDetector is
    Port ( clk , X , rst : in  bit;
           Z : out  bit);
end SequenceDetector;

architecture Behavioral of SequenceDetector is


signal state , nextstate : INTEGER RANGE 0 TO 6 :=0;

begin

process(STATE,X)
BEGIN
	

	
		CASE state is 
		
		when 0 =>  if X = '0' then
		           nextstate <= 1;
					  Z<='1';
					  else nextstate<=2;
					  Z<= '0';
					  end if;
					  
		when 1 => if X = '0' then
		           nextstate <= 3;
					  Z<= '1';
					  else nextstate<=4;
					  Z<= '0';
					  end if;
					  
		
		when 2 => if X = '0' then
		           nextstate <= 4;
					  Z<= '0';
					  else 
					  nextstate<=4;
					  Z<= '1';
					  end if;
		
		when 3 => if X = '0' then
		           nextstate <= 5; 
					  Z<='0';
					  else 
					  nextstate <=5;
					  Z<= '1';
					  end if;
					  
		when 4 => if X = '0' then
		           nextstate <= 5; 
					  Z<='1';
					  else 
					  nextstate <=6;
					  Z<= '0';
					  end if;
		
		when 5 => if X = '0' then
					  nextstate <= 0; 
					  Z<='0';
					  else 
					  nextstate <=0;
					  Z<= '1';
					  end if;
					  
		when 6 => if X = '0' then
					  nextstate <= 0; 
					  Z<='1';
					  else 
					  nextstate <=0;
					  Z<= '0';
					  end if;
					  
		when others => null;
		
END CASE;
END PROCESS;


PROCESS(CLK)
BEGIN
IF(RISING_EDGE(CLK)) THEN
   STATE<=NEXTSTATE;
END IF;
END PROCESS;
END Behavioral;

		
					  
		
