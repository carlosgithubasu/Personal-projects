--VHDL scoreboard
library IEEE;
use IEEE.numeric_bit.ALL;

entity scoreboard is
port( clk,rst,inc,dec: in bit;
		seg7disp1,seg7disp0:out unsigned(6 downto 0));
		end scoreboard;
	
architecture behavioral of scoreboard is

signal state:integer range 0 to 1;
signal BCD1,BCD0: unsigned(3 downto 0):= "0000"; 
signal rstcnt: integer range 0 to 4:=0;
type sevsegarray is array (0 to 9) of unsigned (6 downto 0);
constant seg7Rom: sevsegarray:= ("0111111","0000110","1011011", "1001111","1100110", "1101101",
"1111100","0000111","1111111","1100111");

begin
process (clk)
begin

if( clk'event and clk='1') then

		case state is
		when 0 =>  	
					BCD1 <= "0000"; BCD0<= "0000";
								rstcnt<=0;
								state<= 1;
		when 1=> 
				if rst ='1' then
				if rstcnt=4 then
				state<=0;
				else rstcnt<=rstcnt +1;
				end if;
		elsif inc ='1' and dec='0' then
		rstcnt<=0;
		if BCD0 < "1001" THEN
		BCD0 <= BCD0 +1;
		ELSIF BCD1< "1001" THEN
		BCD1<= BCD1 + 1;
		
		BCD0 <= "0000";
		END IF;
		
		
		elsif inc ='0' and dec='1' then
		rstcnt<=0;
		if BCD0 > "0000" THEN
		BCD0 <= BCD0 - 1;
		ELSIF BCD1< "0000" THEN
		BCD1<= BCD1 - 1;
		BCD0<= "0000";
		END IF;
		
		ELSIF (INC= '1' AND DEC = '1') or  (inc ='0' and dec ='0') then
		rstcnt <= 0;
		end if;
		end case;
	end if;
	end process;
	
	seg7disp0<= seg7rom(to_integer(BCD0));
	Seg7disp1<= seg7rom(to_integer(BCD1));
	END BEHAVIORAL;
	
		
		
		
