--the following si a structural description of the excess 3 code converter

library IEEE;
use IEEE.numeric_bit.ALL;



entity codeconverter_structural is
    Port ( clk , X , rst : in  bit;
           Z : out  bit);
end codeconverter_structural;

architecture structural of codeconverter_structural  is
 
 
component  DFF
port( D, CLK : IN BIT; Q: OUT BIT; QN: OUT BIT := '1');
end component;

component  Nand2
port( A1, A2 : IN BIT; Z: OUT BIT);
end component;

component  Nand3
port( A1, A2 ,A3: IN BIT; Z: OUT BIT);
end component;

component  inverter
port( A: IN BIT; Z: OUT BIT);
end component;


signal A1,A2,A3,A5,A6,D3:bit;
signal q1,q2,q3 : bit;
SIGNAL q1n,q2n,q3n,xn: bit;

begin


I1: inverter port map(x,xn);
G1: Nand3 port map (q1,q2,q3,a1);
G2: Nand3 port map (q1,q3n,xn,a2);
G3: Nand3 port map (x,q1n,q2n,a3);
G4: Nand3 port map (a1,a2,a3,d3);
ff1: dff port map (q2n,clk,q1,q1n);
ff2: dff port map (q1,clk,q2,q2n);
ff3: dff port map (d3,clk,q3,q3n);
G5: Nand2 port map (x,q3,a5);
G6: Nand2 port map (xn,q3n,a6);
G7: Nand2 port map (a5,a6,z);

end structural;
