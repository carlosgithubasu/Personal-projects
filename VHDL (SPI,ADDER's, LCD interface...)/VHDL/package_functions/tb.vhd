--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   16:40:31 02/19/2016

--------------------------------------------------------------------------------
LIBRARY IEEE;
LIBRARY WORK;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY tb IS
END tb;
 
ARCHITECTURE behavior OF tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT test
    PORT(
         SELECTOR : IN  std_logic_vector(1 downto 0);
         DATA : OUT  std_logic_vector(8 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal SELECTOR : std_logic_vector(1 downto 0) := (others => '0');

 	--Outputs
   signal DATA : std_logic_vector(8 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   constant period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: test PORT MAP (
          SELECTOR => SELECTOR,
          DATA => DATA
        );

   -- Clock process definitions
  

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

      wait for period*10;

		WAIT FOR 100 ns; 
		SELECTOR <= "00";
		WAIT FOR period * 10;
		SELECTOR <= "01";
		WAIT FOR period * 10;
		SELECTOR <= "10";
		WAIT FOR period * 10;
		SELECTOR <= "11";
		WAIT FOR period * 10;
      -- insert stimulus here 

      wait;
   end process;

END;
