library ieee;
use ieee.numeric_bit.all;

entity fullsubstracter is
	port(A,B,bi: in bit;
		  D,Bw : out bit);
end fullsubstracter;

architecture equations of fullsubstracter is

begin

D<= A xor B xor Bi;
Bw <= (not A and bi) or (not A and B) or (Bi and B);

end equations;

		  