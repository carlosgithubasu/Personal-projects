-----------------------------
--Project name: Test Packages
--Carlos perez araujo
--ITESM MONTERREY


-----------------------------
LIBRARY IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
LIBRARY work;
USE work.TPKG.all;

entity TEST is
    Port ( A : in  STD_LOGIC_VECTOR (1 downto 0);
           B : in  STD_LOGIC_VECTOR (1 downto 0);
           C : out  STD_LOGIC_VECTOR (1 downto 0));
end TEST;

architecture Behavioral of TEST is

begin

C <= ADD(A,B);

end Behavioral;

