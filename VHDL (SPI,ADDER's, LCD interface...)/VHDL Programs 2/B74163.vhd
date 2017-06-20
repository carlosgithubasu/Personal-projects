library IEEE;
use IEEE.numeric_bit.all;


--74163 fully synchronous counter, P AND T ENABLE THE COUNTING FUNTION
 entity C74163 is
 port(LdN,ClrN, P, T, Clk: in bit;
		D: in unsigned(3 downto 0);
		cout: out bit; qout : out unsigned(3 downto 0));
end C74163;

ARCHITECTURE b74163 OF C74163 IS
SIGNAL Q: unsigned(3 downto 0); -- q is the coun register;
BEGIN

qout<= q;
cout<= q(3) AND Q(2) and q(1) AND Q(0) AND t; 

process(clk)
begin

if(clk'event and clk = '1') then

if clrn = '0' then q<="0000";
elsif ldn ='0' then q<= d;
elsif (p AND T) ='1' THEN Q<= Q+1;
END IF;
END IF;
END PROCESS;
END B74163;


