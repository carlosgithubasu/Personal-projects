--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   15:51:56 04/28/2016
-- Design Name:   
-- Module Name:   C:/Carlos Perez Araujo/Proyectos Personales/Vhdl/MealyMachineState/SequenceDetectorTestBench.vhd
-- Project Name:  MealyMachineState
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: SequenceDetector
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY SequenceDetectorTestBench IS
END SequenceDetectorTestBench;
 
ARCHITECTURE behavior OF SequenceDetectorTestBench IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT SequenceDetector
    PORT(
         clk : IN  std_logic;
         X : IN  std_logic;
         rst : IN  std_logic;
         Z : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal X : std_logic := '0';
   signal rst : std_logic := '0';

 	--Outputs
   signal Z : std_logic;

   -- Clock period definitions
   --constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: SequenceDetector PORT MAP (
          clk => clk,
          X => X,
          rst => rst,
          Z => Z
        );

--   -- Clock process definitions
--   clk_process :process
--   begin
--		clk <= '0';
--		wait for clk_period/2;
--		clk <= '1';
--		wait for clk_period/2;
--   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
     wait for 100 ns;
	  X<='0';
	  wait for 100 ns;
	  X<='1';
	  wait for 100 ns;
	  X<='1';
	  wait for 100 ns;
	  X<='0';
	  
	  
   end process;

END;
