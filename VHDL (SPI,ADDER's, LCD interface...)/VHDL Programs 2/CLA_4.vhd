--VHDL DESCRIPTION FOR A 4 BIT CARRY LOOK AHEAD ADDER
library IEEE;
use IEEE.numeric_bit.ALL;


ENTITY CLA_4 IS
PORT( A,B: IN BIT_VECTOR(3 DOWNTO 0);  Ci: in bit;
		S: out bit_vector(3 downto 0); CO, PG, GG: out bit);
END CLA_4;

architecture structure of CLA_4 is
  component GPFullAdder 
	port(X,Y,CIN: in bit;
			G,P,Sum: out bit);
	end component;
	
	
component CLALogic is
  port(G,P: in bit_vector (3 downto 0); Ci: in bit;
  C: out bit_vector(3 downto 1); Co, PG, GG: out bit);
 end component;
 

 signal G,P: bit_vector(3 downto 0);
 signal C: bit_vector(3 downto 1);
 begin
 
 CarryLogic: CLALogic port map (G,P,Ci,C,Co,PG,GG);
 FA0: GPFULLADDER port map ( A(0),B(0),Ci,G(0),P(0),S(0));
 FA1: GPFULLADDER port map ( A(1),B(1),C(1),G(1),P(1),S(1));
 FA2: GPFULLADDER port map ( A(2),B(2),C(2),G(2),P(2),S(2));
 FA3: GPFULLADDER port map ( A(3),B(3),C(3),G(3),P(3),S(3));
 
 end structure;
 

 entity CLALogic is
   port(G,P: in bit_vector (3 downto 0); Ci: in bit;
  C: out bit_vector(3 downto 1); Co, PG, GG: out bit);
  end CLALogic;
 
 architecture equations of CLALogic is
 signal GG_INT,PG_INT: BIT;
 begin
 
 C(1) <= G(0) or (P(0) and Ci);
 C(2) <= G(1) OR (P(1) AND G(0)) OR (P(1) AND P(0) AND Ci);
 C(3)<=  G(2) OR ( P(2) AND G(1)) OR (P(2) AND P(1) AND G(0)) OR (P(2) AND P(1) AND P(0) AND Ci);
 
 PG_INT<= P(3) and P(2) and P(1) and P(0);
 gg_int <= G(3) OR (P(3) AND G(2)) OR  (P(3) AND P(2) AND G(1)) OR (P(3) AND P(2) AND P(1) AND G(0));
 CO<= GG_INT OR (PG_INT AND CI);
 PG<= PG_INT;
 GG<= GG_INT;
END EQUATIONS;

entity gpfulladder is
 port(X,Y,CIN: in bit;
			G,P,Sum: out bit);
end gpfulladder;

architecture equations of gpfulladder is
signal P_int: bit;


begin
G<= X AND Y;
P<= P_INT;
P_INT<= X XOR Y;
SUM<=p_int xor cin;
end equations;
 
 
