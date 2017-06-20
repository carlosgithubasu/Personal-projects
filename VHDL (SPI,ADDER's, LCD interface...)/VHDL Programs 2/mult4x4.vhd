library IEEE;
use IEEE.numeric_bit.ALL;

entity mult4x4 is
 port(clk,st: in bit;
		Mplier, Mcand : in unsigned( 3 downto 0);
		Done: out bit);
end mult4x4;

architecture behave1 of mult4x4 is
signal State : integer range 0 to 9;
signal ACC: unsigned (8 downto 0);
alias M: bit is ACC(0);

BEGIN

process (clk)
begin

if clk'event and clk ='1' then
   case State is
	  when 0 =>  
	  if st='1' then
	  ACC(8 DOWNTO 4) <= "0000";
	  ACC(3 DOWNTO 0) <= Mplier;
	  State<= 1;
	  end if;
	  
	  
	when 1|3|5|7 =>
	  if M='1' then
	  
	  ACC(8 DOWnTO 4) <= '0' & ACC( 7 DOWNTO 4) + MCAND;
	  STATE<= STATE + 1;
	  ELSE
	  ACC<='0' & ACC(8 DOWNTO 1);
	  STATE <= STATE +2;
	  END IF;
	  when 2|4|6|8 =>
	  
	  ACC <= '0' & ACC( 8 DOWNTO 1) ;
	  STATE<= STATE+1;
	  
	  WHEN 9 =>
	  STATE <= 0;
	  END CASE;
	  END IF;
	 END PROCESS;
	 
	 DONE<= '1' WHEN STATE =9 ELSE '0';
	 END BEHAVE1;
	  
	  
	  
