--This is a behavioral model of the mealy state machine for bcd to excess 3 code converter
--bases on its state table.The state change occurs on the rising edge of the clock.he output is computed by
--conditional assignment statement whenever state or z changes
---------------------------------------------------------------------------------- 
library IEEE;
use IEEE.numeric_bit.ALL;



entity codeconverter_singleprocess is
    Port ( clk , X , rst : in  bit;
           Z : out  bit);
end codeconverter_singleprocess;

architecture Behavioral of codeconverter_singleprocess is


signal state , nextstate : INTEGER RANGE 0 TO 3 :=0;

begin

process(CLK)
BEGIN

if clk'event and clk='1' then
	

	
		CASE state is 
		
		when 0 =>  if X = '0' then
		           state <= 1;  
					  else
					  state<=2;
					  end if;
		when 1 =>  if X = '0' then
		           state <= 3;  
					  else
					  state<=4;
					  end if;
			
		when 2 =>  
		           state <= 4;  
					  
		when 3 =>  
		           state <= 5;  
					  
			
		when 4 =>  if X = '0' then
		           state <= 5;  
					  else
					  state<=6;
					  end if;
		when 5 =>  state<=0;
					  
		when 6 =>  state<=0;
		
END CASE;
END IF;
END PROCESS;


Z <= '1' WHEN (STATE=0 AND X='0') OR (STATE=1 AND X='0')
			OR  (STATE=2 AND X='1') OR (STATE=3 AND X='1')
			OR (STATE=4 AND X='0') OR (STATE=5 AND X='1')
			OR STATE=6
			ELSE '0';
END  BEHAVIORAL;

		
					  
		
