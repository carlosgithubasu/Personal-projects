----------------------------------------------------------------------------------
-- Company: 
-- Engineer:
---------------------------------------------------------------------------------- 
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;



entity SequenceDetector is
    Port ( clk , X , rst : in  STD_LOGIC;
           Z : out  STD_LOGIC);
end SequenceDetector;

architecture Behavioral of SequenceDetector is


signal state , nextstate : INTEGER RANGE 0 TO 3 :=0;

begin

process(STATE,X)
BEGIN
	

	
		CASE state is 
		
		when 0 =>  if X = '0' then
		           nextstate <= 0;
					  Z<='0';
					  else nextstate<=1;
					  Z<= '0';
					  end if;
					  
		when 1 => if X = '0' then
		           nextstate <= 2;
					  Z<= '0';
					  else nextstate<=1;
					  Z<= '0';
					  end if;
					  
		
		when 2 => if X = '0' then
		           nextstate <= 0;
					  Z<= '0';
					  else 
					  nextstate<=3;
					  Z<= '1';
					  end if;
		
		when 3 => if X = '0' then
		           nextstate <= 2; 
					  Z<='0';
					  else 
					  nextstate <=1;
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

		
					  
		
