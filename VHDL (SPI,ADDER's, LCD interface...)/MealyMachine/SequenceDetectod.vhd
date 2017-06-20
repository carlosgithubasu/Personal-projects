----------------------------------------------------------------------------------
-- Company:  ITESM
-- Engineer:  Carlos Perez Araujo

----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;



entity SequenceDetector is
    Port ( X , CLK: in  STD_LOGIC;
           Z : out  STD_LOGIC);
end SequenceDetector;

architecture Behavioral of SequenceDetector is
signal Q1,Q0: std_logic := '0';
signal QN0 : std_logic;

signal J1,K1,J0,K0 : std_logic;
begin

process(CLK,X)
begin
  if(rising_edge(clk)) then
     
	  Q1<= (J1 and (not Q1))   or   ((not K1) and (Q1));
	  
	  
	  Q0 <= (J0 and (not Q0))   or   ((not K0) and (Q0));
	  QN0<= not Q0;
	  
	  
	  Z<= Q1 and QN0 and X;
	  J1<= (Q0) and (not X);
	  K1<=(Q0 and x) or  ((QN0) and (not X));
	  J0<= X;
	  K0<= (not X) and Q1;
	end if;
end process;
	  


end Behavioral;

