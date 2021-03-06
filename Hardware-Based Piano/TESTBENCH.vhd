
LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY TestBench IS
END TestBench;
ARCHITECTURE BEHAVIORAL OF TestBench IS

	COMPONENT Tetris IS 

		PORT (
		CLK, RST  : IN STD_LOGIC; 
		HSYNC, VSYNC    : OUT STD_LOGIC; 
		R, G, B         : OUT STD_LOGIC_VECTOR(3 DOWNTO 0)
	);
	END COMPONENT;
	CONSTANT clk_period : TIME := 20 ns;

	SIGNAL clk_test : STD_LOGIC := '0';
	SIGNAL clkout : STD_LOGIC;
	SIGNAL RST : STD_LOGIC := '0';
	SIGNAL H_SYNC : STD_LOGIC := '0';
	SIGNAL V_SYNC : STD_LOGIC := '0';
	SIGNAL R : STD_LOGIC_VECTOR(3 DOWNTO 0) := "0000";
	SIGNAL G : STD_LOGIC_VECTOR(3 DOWNTO 0) := "0000";
	SIGNAL B : STD_LOGIC_VECTOR(3 DOWNTO 0) := "0000";

	
BEGIN
	UUT : tetris
	PORT MAP(CLK => CLK_TEST, RST => RST, HSYNC => H_SYNC, VSYNC => V_SYNC, R => R, G => G, B => B);


clk_process : PROCESS

BEGIN
	clk_test <= '0';
	WAIT FOR clk_period/2; 
	clk_test <= '1';
	WAIT FOR clk_period/2; 
END PROCESS;
END;