
LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY TestBench IS
END TestBench;
ARCHITECTURE BEHAVIORAL OF TestBench IS

	COMPONENT Tetris IS 

		PORT (
		CLK, RST  : IN STD_LOGIC; 
		HSYNC, VSYNC    : OUT STD_LOGIC; 
		R, G, B         : OUT STD_LOGIC_VECTOR(3 DOWNTO 0); 
		Move_left, Move_right,Move_down,Rotate : IN STD_LOGIC
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

	SIGNAL moveleft : STD_LOGIC := '0';
	SIGNAL moveright : STD_LOGIC := '0';
	SIGNAL rot_ate : STD_LOGIC := '0';
	SIGNAL movedown : STD_LOGIC := '0';
BEGIN
	UUT : tetris
	PORT MAP(CLK => CLK_TEST, RST => RST, HSYNC => H_SYNC, VSYNC => V_SYNC, R => R, G => G, B => B, move_left=>moveleft , move_right=>moveright ,move_down=>movedown ,rotate=>rot_ate);

left : PROCESS
BEGIN
	moveleft <= '0';
	WAIT FOR clk_period/2; 
	moveleft <= '1';
	WAIT FOR clk_period/2; 
END PROCESS;
clk_process : PROCESS

BEGIN
	clk_test <= '0';
	WAIT FOR clk_period/2; 
	clk_test <= '1';
	WAIT FOR clk_period/2; 
END PROCESS;
END;