
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY Detector IS
END Detector;
 
ARCHITECTURE behavior OF Detector IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT SequenceDetector
    PORT(
         X : IN  std_logic;
         CLK : IN  std_logic;
         Z : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal X : std_logic := '0';
   signal CLK : std_logic := '0';

 	--Outputs
   signal Z : std_logic;

   -- Clock period definitions
  -- constant CLK_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: SequenceDetector PORT MAP (
          X => X,
          CLK => CLK,
          Z => Z
        );

   -- Clock process definitions
   --CLK_process :process
   --begin
--		CLK <= '0';
--		wait for CLK_period/2;
--		CLK <= '1';
--		wait for CLK_period/2;
--   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
	
	wait for 100 ns;
	X<=0;
	wait for 100 ns;
	X<=1;
     end process;
	  
	  

END;
