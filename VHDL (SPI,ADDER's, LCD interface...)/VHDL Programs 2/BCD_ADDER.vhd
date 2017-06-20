library IEEE;
use IEEE.numeric_bit.ALL;

--VHDL CODE FOR BCD ADDER

entity bcd_adder is
 port( x,y: in unsigned(7 downto 0);
		z: out unsigned(11 downto 0));
end bcd_adder;

architecture BCadd of BCD_Adder is
alias Xdig1: unsigned (3 downto 0) is X(7 downto 4);
alias Xdig0: unsigned (3 downto 0) is X(3 downto 0);
alias ydig1: unsigned (3 downto 0) is y(7 downto 4);
alias ydig0: unsigned (3 downto 0) is y(3 downto 0);
alias zdig2: unsigned (3 downto 0) is Z(11 downto 8);
alias zdig1: unsigned (3 downto 0) is Z(7 downto 4);
alias zdig0: unsigned (3 downto 0) is Z(3 downto 0);
signal  S0,S1: unsigned (4 downto 0);
signal C: bit;
begin


S0<= '0' & Xdig0 + Ydig0; 
Zdig0<= S0(3 downto 0) + 6 when S0 > 9
			else  S0(3 downto 0);
C<='1' when S0>9  else '0';

S1<= '0' & Xdig1 + Ydig1 + unsigned'(0=> C);
Zdig1<= S1(3 downto 0) + 6 when S1 >9
			else S1(3 downto 0);
			
Zdig2<= "0001" when s1> 9 else "0000";

end;
