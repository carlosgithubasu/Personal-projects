LIBRARY IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
LIBRARY work;--
USE work.TPKG.all;  --
 
ENTITY TEST_TB IS
END TEST_TB;
 
ARCHITECTURE behavior OF TEST_TB IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT TEST
    PORT(
         A : IN  std_logic_vector(1 downto 0);
         B : IN  std_logic_vector(1 downto 0);
         C : OUT  std_logic_vector(1 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal A : std_logic_vector(1 downto 0) := (others => '0');
   signal B : std_logic_vector(1 downto 0) := (others => '0');

 	--Outputs
   signal C : std_logic_vector(1 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   constant period : time := 10 ns;  --
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: TEST PORT MAP (
          A => A,
          B => B,
          C => C
        );

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

      wait for period*10;
		
		A <= "10";
		B <= "01";
      wait for period*10;
		
      wait;
   end process;

END;
