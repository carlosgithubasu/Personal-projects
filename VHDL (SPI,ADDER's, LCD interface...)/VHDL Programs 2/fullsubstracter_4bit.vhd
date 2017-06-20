library ieee;
use ieee.numeric_bit.all;

entity fullsubstracter_4bit is
	port(X,Y: in bit_vector(3 downto 0); 
	     Bi: in bit;
		  Bw: out bit;
		  D : out bit_vector(3 downto 0));
end fullsubstracter_4bit;

architecture equations of fullsubstracter_4bit is

		component fullsubstracter is
			  port(A,B,Bi: in bit;
				  D,Bw : out bit);
		 end component;


signal B: bit_vector(2 downto 0);

begin

D1: fullsubstracter port map(X(0),Y(0),Bi,D(0),B(0));
D2: fullsubstracter port map(X(1),Y(1),B(0),D(1),B(1));
D3: fullsubstracter port map(X(2),Y(2),B(1),D(2),B(2));
D4: fullsubstracter port map(X(3),Y(3),B(2),D(3),Bw);

end equations;
