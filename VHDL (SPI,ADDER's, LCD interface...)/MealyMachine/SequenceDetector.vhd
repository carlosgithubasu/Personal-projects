----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 

----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity SequenceDetector is
    Port ( X , CLK: in  STD_LOGIC;
           Z : out  STD_LOGIC);
end SequenceDetector;

architecture Behavioral of SequenceDetector is

SIGNAL J0,K0,J1,K1: STD_LOGIC;  --ENTRADAS FLIP FLOPS
SIGNAL Q0,Q1 : STD_LOGIC := '0';--SALIDAS FLIP FLOPS
SIGNAL QN0,QN1 : STD_LOGIC;     --SALIDAS NEGADAS FLIP FLOPS

begin


PROCESS(CLK)
BEGIN

  IF (RISING_EDGE(CLK)) THEN
      
		Q0<= (J0 and QN0) or ((not K0) and Q0);
		Q1 <= (J1 and QN1) or ((not K1) and Q1);
		QN0<= not Q0;
		
		J1<= Q0 and (not X);
		K1<=  (Q0 and ( X)) or ((QN0) and (not X));
		J0<=X;
		K0<= (not X) and Q1;
end if;

end process;


end Behavioral;

