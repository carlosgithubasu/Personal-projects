-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Web Edition"

-- DATE "06/09/2016 00:20:16"

-- 
-- Device: Altera EP3C16F484C6 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIII;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIII.CYCLONEIII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	Tetris IS
    PORT (
	\global.bp.work.tetris_package.rnd_count_r_2__gl_output\ : OUT std_logic;
	\global.bp.work.tetris_package.rnd_count_r_1__gl_output\ : OUT std_logic;
	\global.bp.work.tetris_package.rnd_count_r_0__gl_output\ : OUT std_logic;
	CLK : IN std_logic;
	RST : IN std_logic;
	HSYNC : OUT std_logic;
	VSYNC : OUT std_logic;
	R : OUT std_logic_vector(3 DOWNTO 0);
	G : OUT std_logic_vector(3 DOWNTO 0);
	B : OUT std_logic_vector(3 DOWNTO 0);
	Move_left : IN std_logic;
	Move_right : IN std_logic;
	Move_down : IN std_logic;
	Rotate : IN std_logic
	);
END Tetris;

-- Design Ports Information
-- HSYNC	=>  Location: PIN_B16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VSYNC	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R[0]	=>  Location: PIN_D22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R[1]	=>  Location: PIN_D21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R[2]	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R[3]	=>  Location: PIN_H16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- G[0]	=>  Location: PIN_P1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- G[1]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- G[2]	=>  Location: PIN_V11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- G[3]	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[0]	=>  Location: PIN_J17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[1]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[2]	=>  Location: PIN_A18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[3]	=>  Location: PIN_H18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Move_down	=>  Location: PIN_R12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RST	=>  Location: PIN_G2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Move_left	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Move_right	=>  Location: PIN_B19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Rotate	=>  Location: PIN_B18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK	=>  Location: PIN_L16,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Tetris IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \ww_global.bp.work.tetris_package.rnd_count_r_2__gl_output\ : std_logic;
SIGNAL \ww_global.bp.work.tetris_package.rnd_count_r_1__gl_output\ : std_logic;
SIGNAL \ww_global.bp.work.tetris_package.rnd_count_r_0__gl_output\ : std_logic;
SIGNAL ww_CLK : std_logic;
SIGNAL ww_RST : std_logic;
SIGNAL ww_HSYNC : std_logic;
SIGNAL ww_VSYNC : std_logic;
SIGNAL ww_R : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_G : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_B : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_Move_left : std_logic;
SIGNAL ww_Move_right : std_logic;
SIGNAL ww_Move_down : std_logic;
SIGNAL ww_Rotate : std_logic;
SIGNAL \RST~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Clock25Mhz|TEMPORAL~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \VGA_syncronizador|Add0~0_combout\ : std_logic;
SIGNAL \VGA_syncronizador|Add1~12_combout\ : std_logic;
SIGNAL \VGA_syncronizador|Add3~0_combout\ : std_logic;
SIGNAL \VGA_syncronizador|Add3~2_combout\ : std_logic;
SIGNAL \VGA_syncronizador|Add3~4_combout\ : std_logic;
SIGNAL \VGA_syncronizador|Add3~6_combout\ : std_logic;
SIGNAL \VGA_syncronizador|Add3~16_combout\ : std_logic;
SIGNAL \Add2~0_combout\ : std_logic;
SIGNAL \Add2~2_combout\ : std_logic;
SIGNAL \Add2~6_combout\ : std_logic;
SIGNAL \Add2~10_combout\ : std_logic;
SIGNAL \Add2~36_combout\ : std_logic;
SIGNAL \Add2~54_combout\ : std_logic;
SIGNAL \Add2~59\ : std_logic;
SIGNAL \Add2~60_combout\ : std_logic;
SIGNAL \VBEGIN[4]~16_combout\ : std_logic;
SIGNAL \Add7~4_combout\ : std_logic;
SIGNAL \Add7~6_combout\ : std_logic;
SIGNAL \Add7~10_combout\ : std_logic;
SIGNAL \Add7~12_combout\ : std_logic;
SIGNAL \Add7~14_combout\ : std_logic;
SIGNAL \Add7~17\ : std_logic;
SIGNAL \Add7~18_combout\ : std_logic;
SIGNAL \Add8~2_combout\ : std_logic;
SIGNAL \Add3~0_combout\ : std_logic;
SIGNAL \Add3~6_combout\ : std_logic;
SIGNAL \Add3~10_combout\ : std_logic;
SIGNAL \Add3~12_combout\ : std_logic;
SIGNAL \Add3~14_combout\ : std_logic;
SIGNAL \Add3~20_combout\ : std_logic;
SIGNAL \Add3~28_combout\ : std_logic;
SIGNAL \Add3~36_combout\ : std_logic;
SIGNAL \Add4~6_combout\ : std_logic;
SIGNAL \Add4~10_combout\ : std_logic;
SIGNAL \Add4~12_combout\ : std_logic;
SIGNAL \Add4~30_combout\ : std_logic;
SIGNAL \Add4~44_combout\ : std_logic;
SIGNAL \Add4~55\ : std_logic;
SIGNAL \Add4~56_combout\ : std_logic;
SIGNAL \Add4~57\ : std_logic;
SIGNAL \Add4~58_combout\ : std_logic;
SIGNAL \Add4~59\ : std_logic;
SIGNAL \Add4~60_combout\ : std_logic;
SIGNAL \Add4~61\ : std_logic;
SIGNAL \Add4~62_combout\ : std_logic;
SIGNAL \Add9~0_combout\ : std_logic;
SIGNAL \Add9~6_combout\ : std_logic;
SIGNAL \Add9~12_combout\ : std_logic;
SIGNAL \Add9~18_combout\ : std_logic;
SIGNAL \Add9~26_combout\ : std_logic;
SIGNAL \Add9~38_combout\ : std_logic;
SIGNAL \Add9~45\ : std_logic;
SIGNAL \Add9~46_combout\ : std_logic;
SIGNAL \Add9~47\ : std_logic;
SIGNAL \Add9~48_combout\ : std_logic;
SIGNAL \Add9~49\ : std_logic;
SIGNAL \Add9~50_combout\ : std_logic;
SIGNAL \Add9~51\ : std_logic;
SIGNAL \Add9~52_combout\ : std_logic;
SIGNAL \Add9~53\ : std_logic;
SIGNAL \Add9~54_combout\ : std_logic;
SIGNAL \Add9~55\ : std_logic;
SIGNAL \Add9~56_combout\ : std_logic;
SIGNAL \Add9~57\ : std_logic;
SIGNAL \Add9~58_combout\ : std_logic;
SIGNAL \Add9~59\ : std_logic;
SIGNAL \Add9~60_combout\ : std_logic;
SIGNAL \Add9~61\ : std_logic;
SIGNAL \Add9~62_combout\ : std_logic;
SIGNAL \rnd_count_r_2_~q\ : std_logic;
SIGNAL \VGA_syncronizador|Equal0~2_combout\ : std_logic;
SIGNAL \LessThan2~0_combout\ : std_logic;
SIGNAL \LessThan2~1_combout\ : std_logic;
SIGNAL \R~0_combout\ : std_logic;
SIGNAL \LessThan0~0_combout\ : std_logic;
SIGNAL \LessThan0~1_combout\ : std_logic;
SIGNAL \LessThan0~2_combout\ : std_logic;
SIGNAL \R~1_combout\ : std_logic;
SIGNAL \VGA_syncronizador|Add2~4_combout\ : std_logic;
SIGNAL \LessThan1~0_combout\ : std_logic;
SIGNAL \LessThan1~1_combout\ : std_logic;
SIGNAL \R~2_combout\ : std_logic;
SIGNAL \R~3_combout\ : std_logic;
SIGNAL \LessThan7~0_combout\ : std_logic;
SIGNAL \rnd_count_r~1_combout\ : std_logic;
SIGNAL \Equal2~2_combout\ : std_logic;
SIGNAL \Equal2~5_combout\ : std_logic;
SIGNAL \Add2~62_combout\ : std_logic;
SIGNAL \MOVIMIENTO_VERTICAL:COUNTER[3]~q\ : std_logic;
SIGNAL \Equal1~0_combout\ : std_logic;
SIGNAL \MOVIMIENTO_VERTICAL:COUNTER[5]~q\ : std_logic;
SIGNAL \MOVIMIENTO_VERTICAL:COUNTER[6]~q\ : std_logic;
SIGNAL \Equal1~1_combout\ : std_logic;
SIGNAL \Equal1~2_combout\ : std_logic;
SIGNAL \MOVIMIENTO_VERTICAL:COUNTER[15]~q\ : std_logic;
SIGNAL \MOVIMIENTO_VERTICAL:COUNTER[22]~q\ : std_logic;
SIGNAL \MOVIMIENTO_VERTICAL:COUNTER[28]~q\ : std_logic;
SIGNAL \MOVIMIENTO_VERTICAL:COUNTER[29]~q\ : std_logic;
SIGNAL \MOVIMIENTO_VERTICAL:COUNTER[30]~q\ : std_logic;
SIGNAL \MOVIMIENTO_VERTICAL:COUNTER[31]~q\ : std_logic;
SIGNAL \Equal1~8_combout\ : std_logic;
SIGNAL \Add2~63_combout\ : std_logic;
SIGNAL \Add2~65_combout\ : std_logic;
SIGNAL \Add2~78_combout\ : std_logic;
SIGNAL \Add2~87_combout\ : std_logic;
SIGNAL \MOVIMIENTO_HORIZONTAL:CONTADOR[0]~q\ : std_logic;
SIGNAL \MOVIMIENTO_HORIZONTAL:CONTADOR[3]~q\ : std_logic;
SIGNAL \Equal3~0_combout\ : std_logic;
SIGNAL \MOVIMIENTO_HORIZONTAL:CONTADOR[6]~q\ : std_logic;
SIGNAL \MOVIMIENTO_HORIZONTAL:CONTADOR[9]~q\ : std_logic;
SIGNAL \MOVIMIENTO_HORIZONTAL:CONTADOR[13]~q\ : std_logic;
SIGNAL \MOVIMIENTO_HORIZONTAL:CONTADOR[19]~q\ : std_logic;
SIGNAL \MOVIMIENTO_HORIZONTAL:CONTADOR[23]~q\ : std_logic;
SIGNAL \MOVIMIENTO_HORIZONTAL:CONTADOR[24]~q\ : std_logic;
SIGNAL \MOVIMIENTO_HORIZONTAL:CONTADOR[25]~q\ : std_logic;
SIGNAL \MOVIMIENTO_HORIZONTAL:CONTADOR[26]~q\ : std_logic;
SIGNAL \MOVIMIENTO_HORIZONTAL:CONTADOR[27]~q\ : std_logic;
SIGNAL \Equal3~7_combout\ : std_logic;
SIGNAL \MOVIMIENTO_HORIZONTAL:CONTADOR[28]~q\ : std_logic;
SIGNAL \MOVIMIENTO_HORIZONTAL:CONTADOR[29]~q\ : std_logic;
SIGNAL \Equal3~8_combout\ : std_logic;
SIGNAL \MOVIMIENTO_HORIZONTAL:CONTADOR[30]~q\ : std_logic;
SIGNAL \MOVIMIENTO_HORIZONTAL:CONTADOR[31]~q\ : std_logic;
SIGNAL \Equal3~9_combout\ : std_logic;
SIGNAL \Add2~91_combout\ : std_logic;
SIGNAL \Add2~92_combout\ : std_logic;
SIGNAL \LIMIT~1_combout\ : std_logic;
SIGNAL \LIMIT~4_combout\ : std_logic;
SIGNAL \COUNTER~1_combout\ : std_logic;
SIGNAL \COUNTER~6_combout\ : std_logic;
SIGNAL \CONTADOR~0_combout\ : std_logic;
SIGNAL \CONTADOR~2_combout\ : std_logic;
SIGNAL \CONTADOR~4_combout\ : std_logic;
SIGNAL \Clock25Mhz|TEMPORAL~0_combout\ : std_logic;
SIGNAL \FBEGIN[8]~1_combout\ : std_logic;
SIGNAL \FBEGIN[4]~2_combout\ : std_logic;
SIGNAL \FBEGIN[3]~3_combout\ : std_logic;
SIGNAL \FEND[2]~3_combout\ : std_logic;
SIGNAL \Move_down~input_o\ : std_logic;
SIGNAL \CLK~input_o\ : std_logic;
SIGNAL \HSYNC~output_o\ : std_logic;
SIGNAL \VSYNC~output_o\ : std_logic;
SIGNAL \R[0]~output_o\ : std_logic;
SIGNAL \R[1]~output_o\ : std_logic;
SIGNAL \R[2]~output_o\ : std_logic;
SIGNAL \R[3]~output_o\ : std_logic;
SIGNAL \G[0]~output_o\ : std_logic;
SIGNAL \G[1]~output_o\ : std_logic;
SIGNAL \G[2]~output_o\ : std_logic;
SIGNAL \G[3]~output_o\ : std_logic;
SIGNAL \B[0]~output_o\ : std_logic;
SIGNAL \B[1]~output_o\ : std_logic;
SIGNAL \B[2]~output_o\ : std_logic;
SIGNAL \B[3]~output_o\ : std_logic;
SIGNAL \VGA_syncronizador|Add0~29_combout\ : std_logic;
SIGNAL \RST~input_o\ : std_logic;
SIGNAL \RST~inputclkctrl_outclk\ : std_logic;
SIGNAL \VGA_syncronizador|Add0~1\ : std_logic;
SIGNAL \VGA_syncronizador|Add0~2_combout\ : std_logic;
SIGNAL \VGA_syncronizador|Add0~28_combout\ : std_logic;
SIGNAL \VGA_syncronizador|Add0~3\ : std_logic;
SIGNAL \VGA_syncronizador|Add0~4_combout\ : std_logic;
SIGNAL \VGA_syncronizador|Add0~27_combout\ : std_logic;
SIGNAL \VGA_syncronizador|Add0~5\ : std_logic;
SIGNAL \VGA_syncronizador|Add0~7\ : std_logic;
SIGNAL \VGA_syncronizador|Add0~8_combout\ : std_logic;
SIGNAL \VGA_syncronizador|Add0~25_combout\ : std_logic;
SIGNAL \VGA_syncronizador|Add0~9\ : std_logic;
SIGNAL \VGA_syncronizador|Add0~11\ : std_logic;
SIGNAL \VGA_syncronizador|Add0~12_combout\ : std_logic;
SIGNAL \VGA_syncronizador|Add0~14_combout\ : std_logic;
SIGNAL \VGA_syncronizador|Add0~13\ : std_logic;
SIGNAL \VGA_syncronizador|Add0~17\ : std_logic;
SIGNAL \VGA_syncronizador|Add0~18_combout\ : std_logic;
SIGNAL \VGA_syncronizador|Add0~23_combout\ : std_logic;
SIGNAL \VGA_syncronizador|Add0~19\ : std_logic;
SIGNAL \VGA_syncronizador|Add0~20_combout\ : std_logic;
SIGNAL \VGA_syncronizador|Add0~22_combout\ : std_logic;
SIGNAL \VGA_syncronizador|Add0~6_combout\ : std_logic;
SIGNAL \VGA_syncronizador|Add0~26_combout\ : std_logic;
SIGNAL \VGA_syncronizador|LessThan0~0_combout\ : std_logic;
SIGNAL \VGA_syncronizador|LessThan0~1_combout\ : std_logic;
SIGNAL \VGA_syncronizador|LessThan0~2_combout\ : std_logic;
SIGNAL \VGA_syncronizador|Add0~16_combout\ : std_logic;
SIGNAL \VGA_syncronizador|Add0~24_combout\ : std_logic;
SIGNAL \VGA_syncronizador|Add0~10_combout\ : std_logic;
SIGNAL \VGA_syncronizador|Add0~15_combout\ : std_logic;
SIGNAL \VGA_syncronizador|LessThan1~0_combout\ : std_logic;
SIGNAL \VGA_syncronizador|LessThan1~1_combout\ : std_logic;
SIGNAL \VGA_syncronizador|Add1~9\ : std_logic;
SIGNAL \VGA_syncronizador|Add1~10_combout\ : std_logic;
SIGNAL \VGA_syncronizador|Equal0~0_combout\ : std_logic;
SIGNAL \VGA_syncronizador|Equal0~1_combout\ : std_logic;
SIGNAL \VGA_syncronizador|Equal0~3_combout\ : std_logic;
SIGNAL \VGA_syncronizador|Add1~11\ : std_logic;
SIGNAL \VGA_syncronizador|Add1~13\ : std_logic;
SIGNAL \VGA_syncronizador|Add1~15\ : std_logic;
SIGNAL \VGA_syncronizador|Add1~16_combout\ : std_logic;
SIGNAL \VGA_syncronizador|Add1~17\ : std_logic;
SIGNAL \VGA_syncronizador|Add1~18_combout\ : std_logic;
SIGNAL \VGA_syncronizador|COUNTER_V~0_combout\ : std_logic;
SIGNAL \VGA_syncronizador|Equal1~2_combout\ : std_logic;
SIGNAL \VGA_syncronizador|Add1~1\ : std_logic;
SIGNAL \VGA_syncronizador|Add1~3\ : std_logic;
SIGNAL \VGA_syncronizador|Add1~4_combout\ : std_logic;
SIGNAL \VGA_syncronizador|Add1~5\ : std_logic;
SIGNAL \VGA_syncronizador|Add1~6_combout\ : std_logic;
SIGNAL \VGA_syncronizador|COUNTER_V~1_combout\ : std_logic;
SIGNAL \VGA_syncronizador|Add1~7\ : std_logic;
SIGNAL \VGA_syncronizador|Add1~8_combout\ : std_logic;
SIGNAL \VGA_syncronizador|Add1~14_combout\ : std_logic;
SIGNAL \VGA_syncronizador|Equal1~0_combout\ : std_logic;
SIGNAL \VGA_syncronizador|Equal1~1_combout\ : std_logic;
SIGNAL \VGA_syncronizador|LessThan2~0_combout\ : std_logic;
SIGNAL \Clock25Mhz|TEMPORAL~feeder_combout\ : std_logic;
SIGNAL \Clock25Mhz|TEMPORAL~q\ : std_logic;
SIGNAL \Clock25Mhz|TEMPORAL~clkctrl_outclk\ : std_logic;
SIGNAL \LIMIT~2_combout\ : std_logic;
SIGNAL \Add4~0_combout\ : std_logic;
SIGNAL \COUNTER~0_combout\ : std_logic;
SIGNAL \MOVIMIENTO_VERTICAL:COUNTER[0]~q\ : std_logic;
SIGNAL \Add4~1\ : std_logic;
SIGNAL \Add4~2_combout\ : std_logic;
SIGNAL \MOVIMIENTO_VERTICAL:COUNTER[1]~q\ : std_logic;
SIGNAL \Add4~3\ : std_logic;
SIGNAL \Add4~4_combout\ : std_logic;
SIGNAL \MOVIMIENTO_VERTICAL:COUNTER[2]~q\ : std_logic;
SIGNAL \Add4~5\ : std_logic;
SIGNAL \Add4~7\ : std_logic;
SIGNAL \Add4~8_combout\ : std_logic;
SIGNAL \MOVIMIENTO_VERTICAL:COUNTER[4]~q\ : std_logic;
SIGNAL \Add4~9\ : std_logic;
SIGNAL \Add4~11\ : std_logic;
SIGNAL \Add4~13\ : std_logic;
SIGNAL \Add4~14_combout\ : std_logic;
SIGNAL \MOVIMIENTO_VERTICAL:COUNTER[7]~q\ : std_logic;
SIGNAL \Add4~15\ : std_logic;
SIGNAL \Add4~16_combout\ : std_logic;
SIGNAL \MOVIMIENTO_VERTICAL:COUNTER[8]~q\ : std_logic;
SIGNAL \Add4~17\ : std_logic;
SIGNAL \Add4~18_combout\ : std_logic;
SIGNAL \MOVIMIENTO_VERTICAL:COUNTER[9]~q\ : std_logic;
SIGNAL \Add4~19\ : std_logic;
SIGNAL \Add4~20_combout\ : std_logic;
SIGNAL \COUNTER~2_combout\ : std_logic;
SIGNAL \MOVIMIENTO_VERTICAL:COUNTER[10]~q\ : std_logic;
SIGNAL \Add4~21\ : std_logic;
SIGNAL \Add4~22_combout\ : std_logic;
SIGNAL \COUNTER~3_combout\ : std_logic;
SIGNAL \MOVIMIENTO_VERTICAL:COUNTER[11]~q\ : std_logic;
SIGNAL \Equal1~3_combout\ : std_logic;
SIGNAL \Add4~23\ : std_logic;
SIGNAL \Add4~24_combout\ : std_logic;
SIGNAL \COUNTER~4_combout\ : std_logic;
SIGNAL \MOVIMIENTO_VERTICAL:COUNTER[12]~q\ : std_logic;
SIGNAL \Add4~25\ : std_logic;
SIGNAL \Add4~26_combout\ : std_logic;
SIGNAL \COUNTER~5_combout\ : std_logic;
SIGNAL \MOVIMIENTO_VERTICAL:COUNTER[13]~q\ : std_logic;
SIGNAL \Add4~27\ : std_logic;
SIGNAL \Add4~28_combout\ : std_logic;
SIGNAL \MOVIMIENTO_VERTICAL:COUNTER[14]~q\ : std_logic;
SIGNAL \Equal1~4_combout\ : std_logic;
SIGNAL \Add4~29\ : std_logic;
SIGNAL \Add4~31\ : std_logic;
SIGNAL \Add4~32_combout\ : std_logic;
SIGNAL \MOVIMIENTO_VERTICAL:COUNTER[16]~q\ : std_logic;
SIGNAL \Add4~33\ : std_logic;
SIGNAL \Add4~35\ : std_logic;
SIGNAL \Add4~36_combout\ : std_logic;
SIGNAL \COUNTER~8_combout\ : std_logic;
SIGNAL \MOVIMIENTO_VERTICAL:COUNTER[18]~q\ : std_logic;
SIGNAL \Add4~37\ : std_logic;
SIGNAL \Add4~38_combout\ : std_logic;
SIGNAL \COUNTER~9_combout\ : std_logic;
SIGNAL \MOVIMIENTO_VERTICAL:COUNTER[19]~q\ : std_logic;
SIGNAL \Add4~34_combout\ : std_logic;
SIGNAL \COUNTER~7_combout\ : std_logic;
SIGNAL \MOVIMIENTO_VERTICAL:COUNTER[17]~q\ : std_logic;
SIGNAL \Equal1~5_combout\ : std_logic;
SIGNAL \Add4~39\ : std_logic;
SIGNAL \Add4~40_combout\ : std_logic;
SIGNAL \COUNTER~10_combout\ : std_logic;
SIGNAL \MOVIMIENTO_VERTICAL:COUNTER[20]~q\ : std_logic;
SIGNAL \Add4~41\ : std_logic;
SIGNAL \Add4~43\ : std_logic;
SIGNAL \Add4~45\ : std_logic;
SIGNAL \Add4~47\ : std_logic;
SIGNAL \Add4~48_combout\ : std_logic;
SIGNAL \MOVIMIENTO_VERTICAL:COUNTER[24]~q\ : std_logic;
SIGNAL \Add4~49\ : std_logic;
SIGNAL \Add4~50_combout\ : std_logic;
SIGNAL \MOVIMIENTO_VERTICAL:COUNTER[25]~q\ : std_logic;
SIGNAL \Add4~51\ : std_logic;
SIGNAL \Add4~52_combout\ : std_logic;
SIGNAL \MOVIMIENTO_VERTICAL:COUNTER[26]~q\ : std_logic;
SIGNAL \Add4~53\ : std_logic;
SIGNAL \Add4~54_combout\ : std_logic;
SIGNAL \MOVIMIENTO_VERTICAL:COUNTER[27]~q\ : std_logic;
SIGNAL \Equal1~7_combout\ : std_logic;
SIGNAL \Add4~46_combout\ : std_logic;
SIGNAL \COUNTER~12_combout\ : std_logic;
SIGNAL \MOVIMIENTO_VERTICAL:COUNTER[23]~q\ : std_logic;
SIGNAL \Add4~42_combout\ : std_logic;
SIGNAL \COUNTER~11_combout\ : std_logic;
SIGNAL \MOVIMIENTO_VERTICAL:COUNTER[21]~q\ : std_logic;
SIGNAL \Equal1~6_combout\ : std_logic;
SIGNAL \Equal1~9_combout\ : std_logic;
SIGNAL \Equal1~10_combout\ : std_logic;
SIGNAL \LIMIT~3_combout\ : std_logic;
SIGNAL \LIMIT~0_combout\ : std_logic;
SIGNAL \Add3~1\ : std_logic;
SIGNAL \Add3~2_combout\ : std_logic;
SIGNAL \Add3~3\ : std_logic;
SIGNAL \Add3~5\ : std_logic;
SIGNAL \Add3~7\ : std_logic;
SIGNAL \Add3~8_combout\ : std_logic;
SIGNAL \Equal2~1_combout\ : std_logic;
SIGNAL \Add3~9\ : std_logic;
SIGNAL \Add3~11\ : std_logic;
SIGNAL \Add3~13\ : std_logic;
SIGNAL \Add3~15\ : std_logic;
SIGNAL \Add3~16_combout\ : std_logic;
SIGNAL \Add3~17\ : std_logic;
SIGNAL \Add3~18_combout\ : std_logic;
SIGNAL \Add3~19\ : std_logic;
SIGNAL \Add3~21\ : std_logic;
SIGNAL \Add3~22_combout\ : std_logic;
SIGNAL \Add3~23\ : std_logic;
SIGNAL \Add3~25\ : std_logic;
SIGNAL \Add3~26_combout\ : std_logic;
SIGNAL \Add3~27\ : std_logic;
SIGNAL \Add3~29\ : std_logic;
SIGNAL \Add3~30_combout\ : std_logic;
SIGNAL \Add3~24_combout\ : std_logic;
SIGNAL \Equal2~3_combout\ : std_logic;
SIGNAL \Add3~4_combout\ : std_logic;
SIGNAL \Equal2~0_combout\ : std_logic;
SIGNAL \Equal2~4_combout\ : std_logic;
SIGNAL \Add3~31\ : std_logic;
SIGNAL \Add3~32_combout\ : std_logic;
SIGNAL \Add3~33\ : std_logic;
SIGNAL \Add3~34_combout\ : std_logic;
SIGNAL \Add3~35\ : std_logic;
SIGNAL \Add3~37\ : std_logic;
SIGNAL \Add3~38_combout\ : std_logic;
SIGNAL \Add3~39\ : std_logic;
SIGNAL \Add3~41\ : std_logic;
SIGNAL \Add3~42_combout\ : std_logic;
SIGNAL \Add3~43\ : std_logic;
SIGNAL \Add3~44_combout\ : std_logic;
SIGNAL \Add3~45\ : std_logic;
SIGNAL \Add3~46_combout\ : std_logic;
SIGNAL \Add3~40_combout\ : std_logic;
SIGNAL \Equal2~6_combout\ : std_logic;
SIGNAL \Add3~47\ : std_logic;
SIGNAL \Add3~48_combout\ : std_logic;
SIGNAL \Add3~49\ : std_logic;
SIGNAL \Add3~50_combout\ : std_logic;
SIGNAL \Add3~51\ : std_logic;
SIGNAL \Add3~53\ : std_logic;
SIGNAL \Add3~54_combout\ : std_logic;
SIGNAL \Add3~55\ : std_logic;
SIGNAL \Add3~57\ : std_logic;
SIGNAL \Add3~58_combout\ : std_logic;
SIGNAL \Add3~59\ : std_logic;
SIGNAL \Add3~60_combout\ : std_logic;
SIGNAL \Add3~56_combout\ : std_logic;
SIGNAL \Add3~52_combout\ : std_logic;
SIGNAL \Equal2~7_combout\ : std_logic;
SIGNAL \Equal2~8_combout\ : std_logic;
SIGNAL \Equal2~9_combout\ : std_logic;
SIGNAL \Add2~1\ : std_logic;
SIGNAL \Add2~3\ : std_logic;
SIGNAL \Add2~4_combout\ : std_logic;
SIGNAL \Add2~90_combout\ : std_logic;
SIGNAL \Add2~5\ : std_logic;
SIGNAL \Add2~7\ : std_logic;
SIGNAL \Add2~8_combout\ : std_logic;
SIGNAL \Add2~64_combout\ : std_logic;
SIGNAL \Add2~9\ : std_logic;
SIGNAL \Add2~11\ : std_logic;
SIGNAL \Add2~12_combout\ : std_logic;
SIGNAL \Add2~66_combout\ : std_logic;
SIGNAL \Add2~13\ : std_logic;
SIGNAL \Add2~14_combout\ : std_logic;
SIGNAL \Add2~67_combout\ : std_logic;
SIGNAL \Add2~15\ : std_logic;
SIGNAL \Add2~17\ : std_logic;
SIGNAL \Add2~19\ : std_logic;
SIGNAL \Add2~20_combout\ : std_logic;
SIGNAL \Add2~70_combout\ : std_logic;
SIGNAL \Add2~21\ : std_logic;
SIGNAL \Add2~22_combout\ : std_logic;
SIGNAL \Add2~71_combout\ : std_logic;
SIGNAL \Add2~23\ : std_logic;
SIGNAL \Add2~25\ : std_logic;
SIGNAL \Add2~26_combout\ : std_logic;
SIGNAL \Add2~73_combout\ : std_logic;
SIGNAL \Add2~27\ : std_logic;
SIGNAL \Add2~28_combout\ : std_logic;
SIGNAL \Add2~74_combout\ : std_logic;
SIGNAL \Add2~29\ : std_logic;
SIGNAL \Add2~31\ : std_logic;
SIGNAL \Add2~32_combout\ : std_logic;
SIGNAL \Add2~76_combout\ : std_logic;
SIGNAL \Add2~33\ : std_logic;
SIGNAL \Add2~35\ : std_logic;
SIGNAL \Add2~37\ : std_logic;
SIGNAL \Add2~38_combout\ : std_logic;
SIGNAL \Add2~79_combout\ : std_logic;
SIGNAL \Add2~39\ : std_logic;
SIGNAL \Add2~40_combout\ : std_logic;
SIGNAL \Add2~80_combout\ : std_logic;
SIGNAL \Add2~41\ : std_logic;
SIGNAL \Add2~42_combout\ : std_logic;
SIGNAL \Add2~81_combout\ : std_logic;
SIGNAL \Add2~43\ : std_logic;
SIGNAL \Add2~44_combout\ : std_logic;
SIGNAL \Add2~82_combout\ : std_logic;
SIGNAL \LessThan7~5_combout\ : std_logic;
SIGNAL \Add2~30_combout\ : std_logic;
SIGNAL \Add2~75_combout\ : std_logic;
SIGNAL \Add2~34_combout\ : std_logic;
SIGNAL \Add2~77_combout\ : std_logic;
SIGNAL \LessThan7~3_combout\ : std_logic;
SIGNAL \Add2~18_combout\ : std_logic;
SIGNAL \Add2~69_combout\ : std_logic;
SIGNAL \Add2~16_combout\ : std_logic;
SIGNAL \Add2~68_combout\ : std_logic;
SIGNAL \LessThan7~1_combout\ : std_logic;
SIGNAL \Add2~24_combout\ : std_logic;
SIGNAL \Add2~72_combout\ : std_logic;
SIGNAL \LessThan7~2_combout\ : std_logic;
SIGNAL \LessThan7~4_combout\ : std_logic;
SIGNAL \Add2~45\ : std_logic;
SIGNAL \Add2~47\ : std_logic;
SIGNAL \Add2~49\ : std_logic;
SIGNAL \Add2~51\ : std_logic;
SIGNAL \Add2~52_combout\ : std_logic;
SIGNAL \Add2~86_combout\ : std_logic;
SIGNAL \Add2~53\ : std_logic;
SIGNAL \Add2~55\ : std_logic;
SIGNAL \Add2~56_combout\ : std_logic;
SIGNAL \Add2~88_combout\ : std_logic;
SIGNAL \Add2~50_combout\ : std_logic;
SIGNAL \Add2~85_combout\ : std_logic;
SIGNAL \Add2~48_combout\ : std_logic;
SIGNAL \Add2~84_combout\ : std_logic;
SIGNAL \Add2~46_combout\ : std_logic;
SIGNAL \Add2~83_combout\ : std_logic;
SIGNAL \LessThan7~6_combout\ : std_logic;
SIGNAL \Add2~57\ : std_logic;
SIGNAL \Add2~58_combout\ : std_logic;
SIGNAL \Add2~89_combout\ : std_logic;
SIGNAL \LessThan7~7_combout\ : std_logic;
SIGNAL \LessThan7~8_combout\ : std_logic;
SIGNAL \Move_left~input_o\ : std_logic;
SIGNAL \Add8~0_combout\ : std_logic;
SIGNAL \FEND[1]~4_combout\ : std_logic;
SIGNAL \Move_right~input_o\ : std_logic;
SIGNAL \Add9~1\ : std_logic;
SIGNAL \Add9~2_combout\ : std_logic;
SIGNAL \MOVIMIENTO_HORIZONTAL:CONTADOR[1]~q\ : std_logic;
SIGNAL \Add9~3\ : std_logic;
SIGNAL \Add9~4_combout\ : std_logic;
SIGNAL \MOVIMIENTO_HORIZONTAL:CONTADOR[2]~q\ : std_logic;
SIGNAL \Add9~5\ : std_logic;
SIGNAL \Add9~7\ : std_logic;
SIGNAL \Add9~8_combout\ : std_logic;
SIGNAL \MOVIMIENTO_HORIZONTAL:CONTADOR[4]~q\ : std_logic;
SIGNAL \Add9~9\ : std_logic;
SIGNAL \Add9~10_combout\ : std_logic;
SIGNAL \CONTADOR~1_combout\ : std_logic;
SIGNAL \MOVIMIENTO_HORIZONTAL:CONTADOR[5]~q\ : std_logic;
SIGNAL \Add9~11\ : std_logic;
SIGNAL \Add9~13\ : std_logic;
SIGNAL \Add9~14_combout\ : std_logic;
SIGNAL \MOVIMIENTO_HORIZONTAL:CONTADOR[7]~q\ : std_logic;
SIGNAL \Add9~15\ : std_logic;
SIGNAL \Add9~16_combout\ : std_logic;
SIGNAL \MOVIMIENTO_HORIZONTAL:CONTADOR[8]~q\ : std_logic;
SIGNAL \Add9~17\ : std_logic;
SIGNAL \Add9~19\ : std_logic;
SIGNAL \Add9~20_combout\ : std_logic;
SIGNAL \MOVIMIENTO_HORIZONTAL:CONTADOR[10]~q\ : std_logic;
SIGNAL \Add9~21\ : std_logic;
SIGNAL \Add9~23\ : std_logic;
SIGNAL \Add9~24_combout\ : std_logic;
SIGNAL \MOVIMIENTO_HORIZONTAL:CONTADOR[12]~q\ : std_logic;
SIGNAL \Add9~25\ : std_logic;
SIGNAL \Add9~27\ : std_logic;
SIGNAL \Add9~28_combout\ : std_logic;
SIGNAL \MOVIMIENTO_HORIZONTAL:CONTADOR[14]~q\ : std_logic;
SIGNAL \Add9~29\ : std_logic;
SIGNAL \Add9~31\ : std_logic;
SIGNAL \Add9~32_combout\ : std_logic;
SIGNAL \MOVIMIENTO_HORIZONTAL:CONTADOR[16]~q\ : std_logic;
SIGNAL \Add9~33\ : std_logic;
SIGNAL \Add9~34_combout\ : std_logic;
SIGNAL \MOVIMIENTO_HORIZONTAL:CONTADOR[17]~q\ : std_logic;
SIGNAL \Add9~35\ : std_logic;
SIGNAL \Add9~36_combout\ : std_logic;
SIGNAL \CONTADOR~6_combout\ : std_logic;
SIGNAL \MOVIMIENTO_HORIZONTAL:CONTADOR[18]~q\ : std_logic;
SIGNAL \Equal3~5_combout\ : std_logic;
SIGNAL \Add9~30_combout\ : std_logic;
SIGNAL \CONTADOR~5_combout\ : std_logic;
SIGNAL \MOVIMIENTO_HORIZONTAL:CONTADOR[15]~q\ : std_logic;
SIGNAL \Equal3~3_combout\ : std_logic;
SIGNAL \Equal3~1_combout\ : std_logic;
SIGNAL \Add9~22_combout\ : std_logic;
SIGNAL \CONTADOR~3_combout\ : std_logic;
SIGNAL \MOVIMIENTO_HORIZONTAL:CONTADOR[11]~q\ : std_logic;
SIGNAL \Equal3~2_combout\ : std_logic;
SIGNAL \Equal3~4_combout\ : std_logic;
SIGNAL \Add9~37\ : std_logic;
SIGNAL \Add9~39\ : std_logic;
SIGNAL \Add9~40_combout\ : std_logic;
SIGNAL \MOVIMIENTO_HORIZONTAL:CONTADOR[20]~q\ : std_logic;
SIGNAL \Add9~41\ : std_logic;
SIGNAL \Add9~42_combout\ : std_logic;
SIGNAL \MOVIMIENTO_HORIZONTAL:CONTADOR[21]~q\ : std_logic;
SIGNAL \Add9~43\ : std_logic;
SIGNAL \Add9~44_combout\ : std_logic;
SIGNAL \CONTADOR~7_combout\ : std_logic;
SIGNAL \MOVIMIENTO_HORIZONTAL:CONTADOR[22]~q\ : std_logic;
SIGNAL \Equal3~6_combout\ : std_logic;
SIGNAL \Equal3~10_combout\ : std_logic;
SIGNAL \FBEGIN[10]~0_combout\ : std_logic;
SIGNAL \Add8~1\ : std_logic;
SIGNAL \Add8~3\ : std_logic;
SIGNAL \Add8~4_combout\ : std_logic;
SIGNAL \Add8~5\ : std_logic;
SIGNAL \Add8~6_combout\ : std_logic;
SIGNAL \FEND[4]~2_combout\ : std_logic;
SIGNAL \Add8~7\ : std_logic;
SIGNAL \Add8~8_combout\ : std_logic;
SIGNAL \FEND[5]~1_combout\ : std_logic;
SIGNAL \Add8~9\ : std_logic;
SIGNAL \Add8~10_combout\ : std_logic;
SIGNAL \Add8~11\ : std_logic;
SIGNAL \Add8~12_combout\ : std_logic;
SIGNAL \Add8~13\ : std_logic;
SIGNAL \Add8~14_combout\ : std_logic;
SIGNAL \FEND[8]~0_combout\ : std_logic;
SIGNAL \Add8~15\ : std_logic;
SIGNAL \Add8~16_combout\ : std_logic;
SIGNAL \Add8~17\ : std_logic;
SIGNAL \Add8~18_combout\ : std_logic;
SIGNAL \VGA_syncronizador|Add2~0_combout\ : std_logic;
SIGNAL \VGA_syncronizador|Add2~1_combout\ : std_logic;
SIGNAL \VGA_syncronizador|Add2~3_combout\ : std_logic;
SIGNAL \LessThan5~1_cout\ : std_logic;
SIGNAL \LessThan5~3_cout\ : std_logic;
SIGNAL \LessThan5~5_cout\ : std_logic;
SIGNAL \LessThan5~7_cout\ : std_logic;
SIGNAL \LessThan5~9_cout\ : std_logic;
SIGNAL \LessThan5~11_cout\ : std_logic;
SIGNAL \LessThan5~13_cout\ : std_logic;
SIGNAL \LessThan5~15_cout\ : std_logic;
SIGNAL \LessThan5~16_combout\ : std_logic;
SIGNAL \Rotate~input_o\ : std_logic;
SIGNAL \rnd_count_r~3_combout\ : std_logic;
SIGNAL \rnd_count_r_0_~q\ : std_logic;
SIGNAL \rnd_count_r~0_combout\ : std_logic;
SIGNAL \rnd_count_r~2_combout\ : std_logic;
SIGNAL \rnd_count_r_1_~q\ : std_logic;
SIGNAL \STATE~0_combout\ : std_logic;
SIGNAL \STATE~q\ : std_logic;
SIGNAL \R~5_combout\ : std_logic;
SIGNAL \R~6_combout\ : std_logic;
SIGNAL \VBEGIN[1]~11\ : std_logic;
SIGNAL \VBEGIN[2]~12_combout\ : std_logic;
SIGNAL \VBEGIN[2]~13\ : std_logic;
SIGNAL \VBEGIN[3]~15\ : std_logic;
SIGNAL \VBEGIN[4]~17\ : std_logic;
SIGNAL \VBEGIN[5]~18_combout\ : std_logic;
SIGNAL \VBEGIN[5]~19\ : std_logic;
SIGNAL \VBEGIN[6]~20_combout\ : std_logic;
SIGNAL \VBEGIN[6]~21\ : std_logic;
SIGNAL \VBEGIN[7]~22_combout\ : std_logic;
SIGNAL \VBEGIN[7]~23\ : std_logic;
SIGNAL \VBEGIN[8]~24_combout\ : std_logic;
SIGNAL \VBEGIN[8]~25\ : std_logic;
SIGNAL \VBEGIN[9]~27\ : std_logic;
SIGNAL \VBEGIN[10]~28_combout\ : std_logic;
SIGNAL \Add7~1\ : std_logic;
SIGNAL \Add7~3\ : std_logic;
SIGNAL \Add7~5\ : std_logic;
SIGNAL \Add7~7\ : std_logic;
SIGNAL \Add7~9\ : std_logic;
SIGNAL \Add7~11\ : std_logic;
SIGNAL \Add7~13\ : std_logic;
SIGNAL \Add7~15\ : std_logic;
SIGNAL \Add7~16_combout\ : std_logic;
SIGNAL \VGA_syncronizador|Add2~2_combout\ : std_logic;
SIGNAL \VGA_syncronizador|Add2~5_combout\ : std_logic;
SIGNAL \Add7~8_combout\ : std_logic;
SIGNAL \Add7~2_combout\ : std_logic;
SIGNAL \Add7~0_combout\ : std_logic;
SIGNAL \LessThan4~1_cout\ : std_logic;
SIGNAL \LessThan4~3_cout\ : std_logic;
SIGNAL \LessThan4~5_cout\ : std_logic;
SIGNAL \LessThan4~7_cout\ : std_logic;
SIGNAL \LessThan4~9_cout\ : std_logic;
SIGNAL \LessThan4~11_cout\ : std_logic;
SIGNAL \LessThan4~13_cout\ : std_logic;
SIGNAL \LessThan4~15_cout\ : std_logic;
SIGNAL \LessThan4~17_cout\ : std_logic;
SIGNAL \LessThan4~18_combout\ : std_logic;
SIGNAL \VBEGIN[9]~26_combout\ : std_logic;
SIGNAL \VGA_syncronizador|Add1~2_combout\ : std_logic;
SIGNAL \VGA_syncronizador|Add1~0_combout\ : std_logic;
SIGNAL \VGA_syncronizador|COUNTER_V~2_combout\ : std_logic;
SIGNAL \VGA_syncronizador|Add3~1\ : std_logic;
SIGNAL \VGA_syncronizador|Add3~3\ : std_logic;
SIGNAL \VGA_syncronizador|Add3~5\ : std_logic;
SIGNAL \VGA_syncronizador|Add3~7\ : std_logic;
SIGNAL \VGA_syncronizador|Add3~9\ : std_logic;
SIGNAL \VGA_syncronizador|Add3~11\ : std_logic;
SIGNAL \VGA_syncronizador|Add3~13\ : std_logic;
SIGNAL \VGA_syncronizador|Add3~15\ : std_logic;
SIGNAL \VGA_syncronizador|Add3~17\ : std_logic;
SIGNAL \VGA_syncronizador|Add3~18_combout\ : std_logic;
SIGNAL \VGA_syncronizador|Add3~14_combout\ : std_logic;
SIGNAL \VGA_syncronizador|Add3~12_combout\ : std_logic;
SIGNAL \VGA_syncronizador|Add3~10_combout\ : std_logic;
SIGNAL \VGA_syncronizador|Add3~8_combout\ : std_logic;
SIGNAL \VBEGIN[3]~14_combout\ : std_logic;
SIGNAL \VBEGIN[1]~10_combout\ : std_logic;
SIGNAL \LessThan6~1_cout\ : std_logic;
SIGNAL \LessThan6~3_cout\ : std_logic;
SIGNAL \LessThan6~5_cout\ : std_logic;
SIGNAL \LessThan6~7_cout\ : std_logic;
SIGNAL \LessThan6~9_cout\ : std_logic;
SIGNAL \LessThan6~11_cout\ : std_logic;
SIGNAL \LessThan6~13_cout\ : std_logic;
SIGNAL \LessThan6~15_cout\ : std_logic;
SIGNAL \LessThan6~17_cout\ : std_logic;
SIGNAL \LessThan6~18_combout\ : std_logic;
SIGNAL \R~4_combout\ : std_logic;
SIGNAL \R~7_combout\ : std_logic;
SIGNAL \R[0]~reg0feeder_combout\ : std_logic;
SIGNAL \R[0]~reg0_q\ : std_logic;
SIGNAL \R[1]~reg0feeder_combout\ : std_logic;
SIGNAL \R[1]~reg0_q\ : std_logic;
SIGNAL \R[2]~reg0feeder_combout\ : std_logic;
SIGNAL \R[2]~reg0_q\ : std_logic;
SIGNAL \R[3]~reg0feeder_combout\ : std_logic;
SIGNAL \R[3]~reg0_q\ : std_logic;
SIGNAL \B[0]~reg0feeder_combout\ : std_logic;
SIGNAL \B[0]~reg0_q\ : std_logic;
SIGNAL \B[1]~reg0_q\ : std_logic;
SIGNAL \B[2]~reg0feeder_combout\ : std_logic;
SIGNAL \B[2]~reg0_q\ : std_logic;
SIGNAL \B[3]~reg0feeder_combout\ : std_logic;
SIGNAL \B[3]~reg0_q\ : std_logic;
SIGNAL VEND : std_logic_vector(31 DOWNTO 0);
SIGNAL VBEGIN : std_logic_vector(31 DOWNTO 0);
SIGNAL LIMIT : std_logic_vector(31 DOWNTO 0);
SIGNAL FEND : std_logic_vector(31 DOWNTO 0);
SIGNAL FBEGIN : std_logic_vector(31 DOWNTO 0);
SIGNAL \VGA_syncronizador|COUNTER_V\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \VGA_syncronizador|COUNTER_H\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \ALT_INV_RST~inputclkctrl_outclk\ : std_logic;
SIGNAL \ALT_INV_CLK~input_o\ : std_logic;
SIGNAL \VGA_syncronizador|ALT_INV_LessThan1~1_combout\ : std_logic;

BEGIN

\global.bp.work.tetris_package.rnd_count_r_2__gl_output\ <= \ww_global.bp.work.tetris_package.rnd_count_r_2__gl_output\;
\global.bp.work.tetris_package.rnd_count_r_1__gl_output\ <= \ww_global.bp.work.tetris_package.rnd_count_r_1__gl_output\;
\global.bp.work.tetris_package.rnd_count_r_0__gl_output\ <= \ww_global.bp.work.tetris_package.rnd_count_r_0__gl_output\;
ww_CLK <= CLK;
ww_RST <= RST;
HSYNC <= ww_HSYNC;
VSYNC <= ww_VSYNC;
R <= ww_R;
G <= ww_G;
B <= ww_B;
ww_Move_left <= Move_left;
ww_Move_right <= Move_right;
ww_Move_down <= Move_down;
ww_Rotate <= Rotate;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\RST~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \RST~input_o\);

\Clock25Mhz|TEMPORAL~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \Clock25Mhz|TEMPORAL~q\);
\ALT_INV_RST~inputclkctrl_outclk\ <= NOT \RST~inputclkctrl_outclk\;
\ALT_INV_CLK~input_o\ <= NOT \CLK~input_o\;
\VGA_syncronizador|ALT_INV_LessThan1~1_combout\ <= NOT \VGA_syncronizador|LessThan1~1_combout\;

-- Location: LCCOMB_X30_Y26_N8
\VGA_syncronizador|Add0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_syncronizador|Add0~0_combout\ = \VGA_syncronizador|COUNTER_H\(0) $ (VCC)
-- \VGA_syncronizador|Add0~1\ = CARRY(\VGA_syncronizador|COUNTER_H\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \VGA_syncronizador|COUNTER_H\(0),
	datad => VCC,
	combout => \VGA_syncronizador|Add0~0_combout\,
	cout => \VGA_syncronizador|Add0~1\);

-- Location: LCCOMB_X29_Y24_N20
\VGA_syncronizador|Add1~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_syncronizador|Add1~12_combout\ = (\VGA_syncronizador|COUNTER_V\(6) & (\VGA_syncronizador|Add1~11\ $ (GND))) # (!\VGA_syncronizador|COUNTER_V\(6) & (!\VGA_syncronizador|Add1~11\ & VCC))
-- \VGA_syncronizador|Add1~13\ = CARRY((\VGA_syncronizador|COUNTER_V\(6) & !\VGA_syncronizador|Add1~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_syncronizador|COUNTER_V\(6),
	datad => VCC,
	cin => \VGA_syncronizador|Add1~11\,
	combout => \VGA_syncronizador|Add1~12_combout\,
	cout => \VGA_syncronizador|Add1~13\);

-- Location: LCCOMB_X30_Y24_N10
\VGA_syncronizador|Add3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_syncronizador|Add3~0_combout\ = \VGA_syncronizador|COUNTER_V\(0) $ (VCC)
-- \VGA_syncronizador|Add3~1\ = CARRY(\VGA_syncronizador|COUNTER_V\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \VGA_syncronizador|COUNTER_V\(0),
	datad => VCC,
	combout => \VGA_syncronizador|Add3~0_combout\,
	cout => \VGA_syncronizador|Add3~1\);

-- Location: LCCOMB_X30_Y24_N12
\VGA_syncronizador|Add3~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_syncronizador|Add3~2_combout\ = (\VGA_syncronizador|COUNTER_V\(1) & (!\VGA_syncronizador|Add3~1\)) # (!\VGA_syncronizador|COUNTER_V\(1) & ((\VGA_syncronizador|Add3~1\) # (GND)))
-- \VGA_syncronizador|Add3~3\ = CARRY((!\VGA_syncronizador|Add3~1\) # (!\VGA_syncronizador|COUNTER_V\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA_syncronizador|COUNTER_V\(1),
	datad => VCC,
	cin => \VGA_syncronizador|Add3~1\,
	combout => \VGA_syncronizador|Add3~2_combout\,
	cout => \VGA_syncronizador|Add3~3\);

-- Location: LCCOMB_X30_Y24_N14
\VGA_syncronizador|Add3~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_syncronizador|Add3~4_combout\ = (\VGA_syncronizador|COUNTER_V\(2) & (\VGA_syncronizador|Add3~3\ $ (GND))) # (!\VGA_syncronizador|COUNTER_V\(2) & (!\VGA_syncronizador|Add3~3\ & VCC))
-- \VGA_syncronizador|Add3~5\ = CARRY((\VGA_syncronizador|COUNTER_V\(2) & !\VGA_syncronizador|Add3~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_syncronizador|COUNTER_V\(2),
	datad => VCC,
	cin => \VGA_syncronizador|Add3~3\,
	combout => \VGA_syncronizador|Add3~4_combout\,
	cout => \VGA_syncronizador|Add3~5\);

-- Location: LCCOMB_X30_Y24_N16
\VGA_syncronizador|Add3~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_syncronizador|Add3~6_combout\ = (\VGA_syncronizador|COUNTER_V\(3) & (!\VGA_syncronizador|Add3~5\)) # (!\VGA_syncronizador|COUNTER_V\(3) & ((\VGA_syncronizador|Add3~5\) # (GND)))
-- \VGA_syncronizador|Add3~7\ = CARRY((!\VGA_syncronizador|Add3~5\) # (!\VGA_syncronizador|COUNTER_V\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA_syncronizador|COUNTER_V\(3),
	datad => VCC,
	cin => \VGA_syncronizador|Add3~5\,
	combout => \VGA_syncronizador|Add3~6_combout\,
	cout => \VGA_syncronizador|Add3~7\);

-- Location: LCCOMB_X30_Y24_N26
\VGA_syncronizador|Add3~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_syncronizador|Add3~16_combout\ = (\VGA_syncronizador|COUNTER_V\(8) & ((GND) # (!\VGA_syncronizador|Add3~15\))) # (!\VGA_syncronizador|COUNTER_V\(8) & (\VGA_syncronizador|Add3~15\ $ (GND)))
-- \VGA_syncronizador|Add3~17\ = CARRY((\VGA_syncronizador|COUNTER_V\(8)) # (!\VGA_syncronizador|Add3~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA_syncronizador|COUNTER_V\(8),
	datad => VCC,
	cin => \VGA_syncronizador|Add3~15\,
	combout => \VGA_syncronizador|Add3~16_combout\,
	cout => \VGA_syncronizador|Add3~17\);

-- Location: FF_X28_Y24_N13
\VBEGIN[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock25Mhz|TEMPORAL~clkctrl_outclk\,
	d => \VBEGIN[4]~16_combout\,
	sclr => \Equal2~9_combout\,
	ena => \Equal1~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => VBEGIN(4));

-- Location: LCCOMB_X27_Y24_N2
\Add2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~0_combout\ = VEND(1) $ (GND)
-- \Add2~1\ = CARRY(!VEND(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => VEND(1),
	datad => VCC,
	combout => \Add2~0_combout\,
	cout => \Add2~1\);

-- Location: LCCOMB_X27_Y24_N4
\Add2~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~2_combout\ = (VEND(2) & ((\Add2~1\) # (GND))) # (!VEND(2) & (!\Add2~1\))
-- \Add2~3\ = CARRY((VEND(2)) # (!\Add2~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => VEND(2),
	datad => VCC,
	cin => \Add2~1\,
	combout => \Add2~2_combout\,
	cout => \Add2~3\);

-- Location: LCCOMB_X27_Y24_N8
\Add2~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~6_combout\ = (VEND(4) & ((\Add2~5\) # (GND))) # (!VEND(4) & (!\Add2~5\))
-- \Add2~7\ = CARRY((VEND(4)) # (!\Add2~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => VEND(4),
	datad => VCC,
	cin => \Add2~5\,
	combout => \Add2~6_combout\,
	cout => \Add2~7\);

-- Location: LCCOMB_X27_Y24_N12
\Add2~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~10_combout\ = (VEND(6) & (!\Add2~9\)) # (!VEND(6) & ((\Add2~9\) # (GND)))
-- \Add2~11\ = CARRY((!\Add2~9\) # (!VEND(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => VEND(6),
	datad => VCC,
	cin => \Add2~9\,
	combout => \Add2~10_combout\,
	cout => \Add2~11\);

-- Location: LCCOMB_X27_Y23_N6
\Add2~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~36_combout\ = (VEND(19) & (\Add2~35\ $ (GND))) # (!VEND(19) & (!\Add2~35\ & VCC))
-- \Add2~37\ = CARRY((VEND(19) & !\Add2~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => VEND(19),
	datad => VCC,
	cin => \Add2~35\,
	combout => \Add2~36_combout\,
	cout => \Add2~37\);

-- Location: LCCOMB_X27_Y23_N24
\Add2~54\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~54_combout\ = (VEND(28) & (!\Add2~53\)) # (!VEND(28) & ((\Add2~53\) # (GND)))
-- \Add2~55\ = CARRY((!\Add2~53\) # (!VEND(28)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => VEND(28),
	datad => VCC,
	cin => \Add2~53\,
	combout => \Add2~54_combout\,
	cout => \Add2~55\);

-- Location: LCCOMB_X27_Y23_N28
\Add2~58\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~58_combout\ = (VEND(30) & (!\Add2~57\)) # (!VEND(30) & ((\Add2~57\) # (GND)))
-- \Add2~59\ = CARRY((!\Add2~57\) # (!VEND(30)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => VEND(30),
	datad => VCC,
	cin => \Add2~57\,
	combout => \Add2~58_combout\,
	cout => \Add2~59\);

-- Location: LCCOMB_X27_Y23_N30
\Add2~60\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~60_combout\ = \Add2~59\ $ (!VEND(31))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VEND(31),
	cin => \Add2~59\,
	combout => \Add2~60_combout\);

-- Location: LCCOMB_X28_Y24_N12
\VBEGIN[4]~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VBEGIN[4]~16_combout\ = (VBEGIN(4) & (!\VBEGIN[3]~15\)) # (!VBEGIN(4) & ((\VBEGIN[3]~15\) # (GND)))
-- \VBEGIN[4]~17\ = CARRY((!\VBEGIN[3]~15\) # (!VBEGIN(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => VBEGIN(4),
	datad => VCC,
	cin => \VBEGIN[3]~15\,
	combout => \VBEGIN[4]~16_combout\,
	cout => \VBEGIN[4]~17\);

-- Location: LCCOMB_X31_Y27_N10
\Add7~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add7~4_combout\ = ((FBEGIN(3) $ (\Move_left~input_o\ $ (\Add7~3\)))) # (GND)
-- \Add7~5\ = CARRY((FBEGIN(3) & (\Move_left~input_o\ & !\Add7~3\)) # (!FBEGIN(3) & ((\Move_left~input_o\) # (!\Add7~3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => FBEGIN(3),
	datab => \Move_left~input_o\,
	datad => VCC,
	cin => \Add7~3\,
	combout => \Add7~4_combout\,
	cout => \Add7~5\);

-- Location: LCCOMB_X31_Y27_N12
\Add7~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add7~6_combout\ = (FBEGIN(4) & ((\Move_left~input_o\ & ((\Add7~5\) # (GND))) # (!\Move_left~input_o\ & (!\Add7~5\)))) # (!FBEGIN(4) & ((\Move_left~input_o\ & (!\Add7~5\)) # (!\Move_left~input_o\ & (\Add7~5\ & VCC))))
-- \Add7~7\ = CARRY((FBEGIN(4) & ((\Move_left~input_o\) # (!\Add7~5\))) # (!FBEGIN(4) & (\Move_left~input_o\ & !\Add7~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => FBEGIN(4),
	datab => \Move_left~input_o\,
	datad => VCC,
	cin => \Add7~5\,
	combout => \Add7~6_combout\,
	cout => \Add7~7\);

-- Location: LCCOMB_X31_Y27_N16
\Add7~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add7~10_combout\ = (FBEGIN(6) & ((\Move_left~input_o\ & (!\Add7~9\)) # (!\Move_left~input_o\ & (\Add7~9\ & VCC)))) # (!FBEGIN(6) & ((\Move_left~input_o\ & ((\Add7~9\) # (GND))) # (!\Move_left~input_o\ & (!\Add7~9\))))
-- \Add7~11\ = CARRY((FBEGIN(6) & (\Move_left~input_o\ & !\Add7~9\)) # (!FBEGIN(6) & ((\Move_left~input_o\) # (!\Add7~9\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => FBEGIN(6),
	datab => \Move_left~input_o\,
	datad => VCC,
	cin => \Add7~9\,
	combout => \Add7~10_combout\,
	cout => \Add7~11\);

-- Location: LCCOMB_X31_Y27_N18
\Add7~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add7~12_combout\ = ((FBEGIN(7) $ (\Move_left~input_o\ $ (\Add7~11\)))) # (GND)
-- \Add7~13\ = CARRY((FBEGIN(7) & ((!\Add7~11\) # (!\Move_left~input_o\))) # (!FBEGIN(7) & (!\Move_left~input_o\ & !\Add7~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => FBEGIN(7),
	datab => \Move_left~input_o\,
	datad => VCC,
	cin => \Add7~11\,
	combout => \Add7~12_combout\,
	cout => \Add7~13\);

-- Location: LCCOMB_X31_Y27_N20
\Add7~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add7~14_combout\ = (FBEGIN(8) & ((\Move_left~input_o\ & ((\Add7~13\) # (GND))) # (!\Move_left~input_o\ & (!\Add7~13\)))) # (!FBEGIN(8) & ((\Move_left~input_o\ & (!\Add7~13\)) # (!\Move_left~input_o\ & (\Add7~13\ & VCC))))
-- \Add7~15\ = CARRY((FBEGIN(8) & ((\Move_left~input_o\) # (!\Add7~13\))) # (!FBEGIN(8) & (\Move_left~input_o\ & !\Add7~13\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => FBEGIN(8),
	datab => \Move_left~input_o\,
	datad => VCC,
	cin => \Add7~13\,
	combout => \Add7~14_combout\,
	cout => \Add7~15\);

-- Location: LCCOMB_X31_Y27_N22
\Add7~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add7~16_combout\ = ((FBEGIN(9) $ (\Move_left~input_o\ $ (\Add7~15\)))) # (GND)
-- \Add7~17\ = CARRY((FBEGIN(9) & ((!\Add7~15\) # (!\Move_left~input_o\))) # (!FBEGIN(9) & (!\Move_left~input_o\ & !\Add7~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => FBEGIN(9),
	datab => \Move_left~input_o\,
	datad => VCC,
	cin => \Add7~15\,
	combout => \Add7~16_combout\,
	cout => \Add7~17\);

-- Location: LCCOMB_X31_Y27_N24
\Add7~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add7~18_combout\ = \Move_left~input_o\ $ (\Add7~17\ $ (!FBEGIN(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Move_left~input_o\,
	datad => FBEGIN(10),
	cin => \Add7~17\,
	combout => \Add7~18_combout\);

-- Location: LCCOMB_X33_Y26_N12
\Add8~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add8~2_combout\ = (FEND(2) & ((\Move_left~input_o\ & ((\Add8~1\) # (GND))) # (!\Move_left~input_o\ & (!\Add8~1\)))) # (!FEND(2) & ((\Move_left~input_o\ & (!\Add8~1\)) # (!\Move_left~input_o\ & (\Add8~1\ & VCC))))
-- \Add8~3\ = CARRY((FEND(2) & ((\Move_left~input_o\) # (!\Add8~1\))) # (!FEND(2) & (\Move_left~input_o\ & !\Add8~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => FEND(2),
	datab => \Move_left~input_o\,
	datad => VCC,
	cin => \Add8~1\,
	combout => \Add8~2_combout\,
	cout => \Add8~3\);

-- Location: LCCOMB_X26_Y22_N2
\Add3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add3~0_combout\ = LIMIT(1) $ (VCC)
-- \Add3~1\ = CARRY(LIMIT(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => LIMIT(1),
	datad => VCC,
	combout => \Add3~0_combout\,
	cout => \Add3~1\);

-- Location: LCCOMB_X26_Y22_N8
\Add3~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add3~6_combout\ = (LIMIT(4) & (!\Add3~5\)) # (!LIMIT(4) & ((\Add3~5\) # (GND)))
-- \Add3~7\ = CARRY((!\Add3~5\) # (!LIMIT(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => LIMIT(4),
	datad => VCC,
	cin => \Add3~5\,
	combout => \Add3~6_combout\,
	cout => \Add3~7\);

-- Location: LCCOMB_X26_Y22_N12
\Add3~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add3~10_combout\ = (LIMIT(6) & (!\Add3~9\)) # (!LIMIT(6) & ((\Add3~9\) # (GND)))
-- \Add3~11\ = CARRY((!\Add3~9\) # (!LIMIT(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => LIMIT(6),
	datad => VCC,
	cin => \Add3~9\,
	combout => \Add3~10_combout\,
	cout => \Add3~11\);

-- Location: LCCOMB_X26_Y22_N14
\Add3~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add3~12_combout\ = (LIMIT(7) & (\Add3~11\ $ (GND))) # (!LIMIT(7) & (!\Add3~11\ & VCC))
-- \Add3~13\ = CARRY((LIMIT(7) & !\Add3~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => LIMIT(7),
	datad => VCC,
	cin => \Add3~11\,
	combout => \Add3~12_combout\,
	cout => \Add3~13\);

-- Location: LCCOMB_X26_Y22_N16
\Add3~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add3~14_combout\ = (LIMIT(8) & (!\Add3~13\)) # (!LIMIT(8) & ((\Add3~13\) # (GND)))
-- \Add3~15\ = CARRY((!\Add3~13\) # (!LIMIT(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => LIMIT(8),
	datad => VCC,
	cin => \Add3~13\,
	combout => \Add3~14_combout\,
	cout => \Add3~15\);

-- Location: LCCOMB_X26_Y22_N22
\Add3~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add3~20_combout\ = (LIMIT(11) & (\Add3~19\ $ (GND))) # (!LIMIT(11) & (!\Add3~19\ & VCC))
-- \Add3~21\ = CARRY((LIMIT(11) & !\Add3~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => LIMIT(11),
	datad => VCC,
	cin => \Add3~19\,
	combout => \Add3~20_combout\,
	cout => \Add3~21\);

-- Location: LCCOMB_X26_Y22_N30
\Add3~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add3~28_combout\ = (LIMIT(15) & (\Add3~27\ $ (GND))) # (!LIMIT(15) & (!\Add3~27\ & VCC))
-- \Add3~29\ = CARRY((LIMIT(15) & !\Add3~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => LIMIT(15),
	datad => VCC,
	cin => \Add3~27\,
	combout => \Add3~28_combout\,
	cout => \Add3~29\);

-- Location: LCCOMB_X26_Y21_N6
\Add3~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add3~36_combout\ = (LIMIT(19) & (\Add3~35\ $ (GND))) # (!LIMIT(19) & (!\Add3~35\ & VCC))
-- \Add3~37\ = CARRY((LIMIT(19) & !\Add3~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => LIMIT(19),
	datad => VCC,
	cin => \Add3~35\,
	combout => \Add3~36_combout\,
	cout => \Add3~37\);

-- Location: LCCOMB_X23_Y22_N6
\Add4~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add4~6_combout\ = (\MOVIMIENTO_VERTICAL:COUNTER[3]~q\ & (!\Add4~5\)) # (!\MOVIMIENTO_VERTICAL:COUNTER[3]~q\ & ((\Add4~5\) # (GND)))
-- \Add4~7\ = CARRY((!\Add4~5\) # (!\MOVIMIENTO_VERTICAL:COUNTER[3]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MOVIMIENTO_VERTICAL:COUNTER[3]~q\,
	datad => VCC,
	cin => \Add4~5\,
	combout => \Add4~6_combout\,
	cout => \Add4~7\);

-- Location: LCCOMB_X23_Y22_N10
\Add4~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add4~10_combout\ = (\MOVIMIENTO_VERTICAL:COUNTER[5]~q\ & (!\Add4~9\)) # (!\MOVIMIENTO_VERTICAL:COUNTER[5]~q\ & ((\Add4~9\) # (GND)))
-- \Add4~11\ = CARRY((!\Add4~9\) # (!\MOVIMIENTO_VERTICAL:COUNTER[5]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MOVIMIENTO_VERTICAL:COUNTER[5]~q\,
	datad => VCC,
	cin => \Add4~9\,
	combout => \Add4~10_combout\,
	cout => \Add4~11\);

-- Location: LCCOMB_X23_Y22_N12
\Add4~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add4~12_combout\ = (\MOVIMIENTO_VERTICAL:COUNTER[6]~q\ & (\Add4~11\ $ (GND))) # (!\MOVIMIENTO_VERTICAL:COUNTER[6]~q\ & (!\Add4~11\ & VCC))
-- \Add4~13\ = CARRY((\MOVIMIENTO_VERTICAL:COUNTER[6]~q\ & !\Add4~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MOVIMIENTO_VERTICAL:COUNTER[6]~q\,
	datad => VCC,
	cin => \Add4~11\,
	combout => \Add4~12_combout\,
	cout => \Add4~13\);

-- Location: LCCOMB_X23_Y22_N30
\Add4~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add4~30_combout\ = (\MOVIMIENTO_VERTICAL:COUNTER[15]~q\ & (!\Add4~29\)) # (!\MOVIMIENTO_VERTICAL:COUNTER[15]~q\ & ((\Add4~29\) # (GND)))
-- \Add4~31\ = CARRY((!\Add4~29\) # (!\MOVIMIENTO_VERTICAL:COUNTER[15]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MOVIMIENTO_VERTICAL:COUNTER[15]~q\,
	datad => VCC,
	cin => \Add4~29\,
	combout => \Add4~30_combout\,
	cout => \Add4~31\);

-- Location: LCCOMB_X23_Y21_N12
\Add4~44\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add4~44_combout\ = (\MOVIMIENTO_VERTICAL:COUNTER[22]~q\ & (\Add4~43\ $ (GND))) # (!\MOVIMIENTO_VERTICAL:COUNTER[22]~q\ & (!\Add4~43\ & VCC))
-- \Add4~45\ = CARRY((\MOVIMIENTO_VERTICAL:COUNTER[22]~q\ & !\Add4~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MOVIMIENTO_VERTICAL:COUNTER[22]~q\,
	datad => VCC,
	cin => \Add4~43\,
	combout => \Add4~44_combout\,
	cout => \Add4~45\);

-- Location: LCCOMB_X23_Y21_N22
\Add4~54\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add4~54_combout\ = (\MOVIMIENTO_VERTICAL:COUNTER[27]~q\ & (!\Add4~53\)) # (!\MOVIMIENTO_VERTICAL:COUNTER[27]~q\ & ((\Add4~53\) # (GND)))
-- \Add4~55\ = CARRY((!\Add4~53\) # (!\MOVIMIENTO_VERTICAL:COUNTER[27]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MOVIMIENTO_VERTICAL:COUNTER[27]~q\,
	datad => VCC,
	cin => \Add4~53\,
	combout => \Add4~54_combout\,
	cout => \Add4~55\);

-- Location: LCCOMB_X23_Y21_N24
\Add4~56\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add4~56_combout\ = (\MOVIMIENTO_VERTICAL:COUNTER[28]~q\ & (\Add4~55\ $ (GND))) # (!\MOVIMIENTO_VERTICAL:COUNTER[28]~q\ & (!\Add4~55\ & VCC))
-- \Add4~57\ = CARRY((\MOVIMIENTO_VERTICAL:COUNTER[28]~q\ & !\Add4~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \MOVIMIENTO_VERTICAL:COUNTER[28]~q\,
	datad => VCC,
	cin => \Add4~55\,
	combout => \Add4~56_combout\,
	cout => \Add4~57\);

-- Location: LCCOMB_X23_Y21_N26
\Add4~58\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add4~58_combout\ = (\MOVIMIENTO_VERTICAL:COUNTER[29]~q\ & (!\Add4~57\)) # (!\MOVIMIENTO_VERTICAL:COUNTER[29]~q\ & ((\Add4~57\) # (GND)))
-- \Add4~59\ = CARRY((!\Add4~57\) # (!\MOVIMIENTO_VERTICAL:COUNTER[29]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MOVIMIENTO_VERTICAL:COUNTER[29]~q\,
	datad => VCC,
	cin => \Add4~57\,
	combout => \Add4~58_combout\,
	cout => \Add4~59\);

-- Location: LCCOMB_X23_Y21_N28
\Add4~60\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add4~60_combout\ = (\MOVIMIENTO_VERTICAL:COUNTER[30]~q\ & (\Add4~59\ $ (GND))) # (!\MOVIMIENTO_VERTICAL:COUNTER[30]~q\ & (!\Add4~59\ & VCC))
-- \Add4~61\ = CARRY((\MOVIMIENTO_VERTICAL:COUNTER[30]~q\ & !\Add4~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \MOVIMIENTO_VERTICAL:COUNTER[30]~q\,
	datad => VCC,
	cin => \Add4~59\,
	combout => \Add4~60_combout\,
	cout => \Add4~61\);

-- Location: LCCOMB_X23_Y21_N30
\Add4~62\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add4~62_combout\ = \MOVIMIENTO_VERTICAL:COUNTER[31]~q\ $ (\Add4~61\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MOVIMIENTO_VERTICAL:COUNTER[31]~q\,
	cin => \Add4~61\,
	combout => \Add4~62_combout\);

-- Location: LCCOMB_X33_Y28_N0
\Add9~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add9~0_combout\ = \MOVIMIENTO_HORIZONTAL:CONTADOR[0]~q\ $ (VCC)
-- \Add9~1\ = CARRY(\MOVIMIENTO_HORIZONTAL:CONTADOR[0]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MOVIMIENTO_HORIZONTAL:CONTADOR[0]~q\,
	datad => VCC,
	combout => \Add9~0_combout\,
	cout => \Add9~1\);

-- Location: LCCOMB_X33_Y28_N6
\Add9~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add9~6_combout\ = (\MOVIMIENTO_HORIZONTAL:CONTADOR[3]~q\ & (!\Add9~5\)) # (!\MOVIMIENTO_HORIZONTAL:CONTADOR[3]~q\ & ((\Add9~5\) # (GND)))
-- \Add9~7\ = CARRY((!\Add9~5\) # (!\MOVIMIENTO_HORIZONTAL:CONTADOR[3]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MOVIMIENTO_HORIZONTAL:CONTADOR[3]~q\,
	datad => VCC,
	cin => \Add9~5\,
	combout => \Add9~6_combout\,
	cout => \Add9~7\);

-- Location: LCCOMB_X33_Y28_N12
\Add9~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add9~12_combout\ = (\MOVIMIENTO_HORIZONTAL:CONTADOR[6]~q\ & (\Add9~11\ $ (GND))) # (!\MOVIMIENTO_HORIZONTAL:CONTADOR[6]~q\ & (!\Add9~11\ & VCC))
-- \Add9~13\ = CARRY((\MOVIMIENTO_HORIZONTAL:CONTADOR[6]~q\ & !\Add9~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MOVIMIENTO_HORIZONTAL:CONTADOR[6]~q\,
	datad => VCC,
	cin => \Add9~11\,
	combout => \Add9~12_combout\,
	cout => \Add9~13\);

-- Location: LCCOMB_X33_Y28_N18
\Add9~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add9~18_combout\ = (\MOVIMIENTO_HORIZONTAL:CONTADOR[9]~q\ & (!\Add9~17\)) # (!\MOVIMIENTO_HORIZONTAL:CONTADOR[9]~q\ & ((\Add9~17\) # (GND)))
-- \Add9~19\ = CARRY((!\Add9~17\) # (!\MOVIMIENTO_HORIZONTAL:CONTADOR[9]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MOVIMIENTO_HORIZONTAL:CONTADOR[9]~q\,
	datad => VCC,
	cin => \Add9~17\,
	combout => \Add9~18_combout\,
	cout => \Add9~19\);

-- Location: LCCOMB_X33_Y28_N26
\Add9~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add9~26_combout\ = (\MOVIMIENTO_HORIZONTAL:CONTADOR[13]~q\ & (!\Add9~25\)) # (!\MOVIMIENTO_HORIZONTAL:CONTADOR[13]~q\ & ((\Add9~25\) # (GND)))
-- \Add9~27\ = CARRY((!\Add9~25\) # (!\MOVIMIENTO_HORIZONTAL:CONTADOR[13]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MOVIMIENTO_HORIZONTAL:CONTADOR[13]~q\,
	datad => VCC,
	cin => \Add9~25\,
	combout => \Add9~26_combout\,
	cout => \Add9~27\);

-- Location: LCCOMB_X33_Y27_N6
\Add9~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add9~38_combout\ = (\MOVIMIENTO_HORIZONTAL:CONTADOR[19]~q\ & (!\Add9~37\)) # (!\MOVIMIENTO_HORIZONTAL:CONTADOR[19]~q\ & ((\Add9~37\) # (GND)))
-- \Add9~39\ = CARRY((!\Add9~37\) # (!\MOVIMIENTO_HORIZONTAL:CONTADOR[19]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MOVIMIENTO_HORIZONTAL:CONTADOR[19]~q\,
	datad => VCC,
	cin => \Add9~37\,
	combout => \Add9~38_combout\,
	cout => \Add9~39\);

-- Location: LCCOMB_X33_Y27_N12
\Add9~44\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add9~44_combout\ = (\MOVIMIENTO_HORIZONTAL:CONTADOR[22]~q\ & (\Add9~43\ $ (GND))) # (!\MOVIMIENTO_HORIZONTAL:CONTADOR[22]~q\ & (!\Add9~43\ & VCC))
-- \Add9~45\ = CARRY((\MOVIMIENTO_HORIZONTAL:CONTADOR[22]~q\ & !\Add9~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \MOVIMIENTO_HORIZONTAL:CONTADOR[22]~q\,
	datad => VCC,
	cin => \Add9~43\,
	combout => \Add9~44_combout\,
	cout => \Add9~45\);

-- Location: LCCOMB_X33_Y27_N14
\Add9~46\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add9~46_combout\ = (\MOVIMIENTO_HORIZONTAL:CONTADOR[23]~q\ & (!\Add9~45\)) # (!\MOVIMIENTO_HORIZONTAL:CONTADOR[23]~q\ & ((\Add9~45\) # (GND)))
-- \Add9~47\ = CARRY((!\Add9~45\) # (!\MOVIMIENTO_HORIZONTAL:CONTADOR[23]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \MOVIMIENTO_HORIZONTAL:CONTADOR[23]~q\,
	datad => VCC,
	cin => \Add9~45\,
	combout => \Add9~46_combout\,
	cout => \Add9~47\);

-- Location: LCCOMB_X33_Y27_N16
\Add9~48\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add9~48_combout\ = (\MOVIMIENTO_HORIZONTAL:CONTADOR[24]~q\ & (\Add9~47\ $ (GND))) # (!\MOVIMIENTO_HORIZONTAL:CONTADOR[24]~q\ & (!\Add9~47\ & VCC))
-- \Add9~49\ = CARRY((\MOVIMIENTO_HORIZONTAL:CONTADOR[24]~q\ & !\Add9~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \MOVIMIENTO_HORIZONTAL:CONTADOR[24]~q\,
	datad => VCC,
	cin => \Add9~47\,
	combout => \Add9~48_combout\,
	cout => \Add9~49\);

-- Location: LCCOMB_X33_Y27_N18
\Add9~50\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add9~50_combout\ = (\MOVIMIENTO_HORIZONTAL:CONTADOR[25]~q\ & (!\Add9~49\)) # (!\MOVIMIENTO_HORIZONTAL:CONTADOR[25]~q\ & ((\Add9~49\) # (GND)))
-- \Add9~51\ = CARRY((!\Add9~49\) # (!\MOVIMIENTO_HORIZONTAL:CONTADOR[25]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \MOVIMIENTO_HORIZONTAL:CONTADOR[25]~q\,
	datad => VCC,
	cin => \Add9~49\,
	combout => \Add9~50_combout\,
	cout => \Add9~51\);

-- Location: LCCOMB_X33_Y27_N20
\Add9~52\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add9~52_combout\ = (\MOVIMIENTO_HORIZONTAL:CONTADOR[26]~q\ & (\Add9~51\ $ (GND))) # (!\MOVIMIENTO_HORIZONTAL:CONTADOR[26]~q\ & (!\Add9~51\ & VCC))
-- \Add9~53\ = CARRY((\MOVIMIENTO_HORIZONTAL:CONTADOR[26]~q\ & !\Add9~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \MOVIMIENTO_HORIZONTAL:CONTADOR[26]~q\,
	datad => VCC,
	cin => \Add9~51\,
	combout => \Add9~52_combout\,
	cout => \Add9~53\);

-- Location: LCCOMB_X33_Y27_N22
\Add9~54\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add9~54_combout\ = (\MOVIMIENTO_HORIZONTAL:CONTADOR[27]~q\ & (!\Add9~53\)) # (!\MOVIMIENTO_HORIZONTAL:CONTADOR[27]~q\ & ((\Add9~53\) # (GND)))
-- \Add9~55\ = CARRY((!\Add9~53\) # (!\MOVIMIENTO_HORIZONTAL:CONTADOR[27]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MOVIMIENTO_HORIZONTAL:CONTADOR[27]~q\,
	datad => VCC,
	cin => \Add9~53\,
	combout => \Add9~54_combout\,
	cout => \Add9~55\);

-- Location: LCCOMB_X33_Y27_N24
\Add9~56\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add9~56_combout\ = (\MOVIMIENTO_HORIZONTAL:CONTADOR[28]~q\ & (\Add9~55\ $ (GND))) # (!\MOVIMIENTO_HORIZONTAL:CONTADOR[28]~q\ & (!\Add9~55\ & VCC))
-- \Add9~57\ = CARRY((\MOVIMIENTO_HORIZONTAL:CONTADOR[28]~q\ & !\Add9~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \MOVIMIENTO_HORIZONTAL:CONTADOR[28]~q\,
	datad => VCC,
	cin => \Add9~55\,
	combout => \Add9~56_combout\,
	cout => \Add9~57\);

-- Location: LCCOMB_X33_Y27_N26
\Add9~58\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add9~58_combout\ = (\MOVIMIENTO_HORIZONTAL:CONTADOR[29]~q\ & (!\Add9~57\)) # (!\MOVIMIENTO_HORIZONTAL:CONTADOR[29]~q\ & ((\Add9~57\) # (GND)))
-- \Add9~59\ = CARRY((!\Add9~57\) # (!\MOVIMIENTO_HORIZONTAL:CONTADOR[29]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MOVIMIENTO_HORIZONTAL:CONTADOR[29]~q\,
	datad => VCC,
	cin => \Add9~57\,
	combout => \Add9~58_combout\,
	cout => \Add9~59\);

-- Location: LCCOMB_X33_Y27_N28
\Add9~60\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add9~60_combout\ = (\MOVIMIENTO_HORIZONTAL:CONTADOR[30]~q\ & (\Add9~59\ $ (GND))) # (!\MOVIMIENTO_HORIZONTAL:CONTADOR[30]~q\ & (!\Add9~59\ & VCC))
-- \Add9~61\ = CARRY((\MOVIMIENTO_HORIZONTAL:CONTADOR[30]~q\ & !\Add9~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \MOVIMIENTO_HORIZONTAL:CONTADOR[30]~q\,
	datad => VCC,
	cin => \Add9~59\,
	combout => \Add9~60_combout\,
	cout => \Add9~61\);

-- Location: LCCOMB_X33_Y27_N30
\Add9~62\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add9~62_combout\ = \MOVIMIENTO_HORIZONTAL:CONTADOR[31]~q\ $ (\Add9~61\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MOVIMIENTO_HORIZONTAL:CONTADOR[31]~q\,
	cin => \Add9~61\,
	combout => \Add9~62_combout\);

-- Location: FF_X30_Y24_N21
\VGA_syncronizador|COUNTER_V[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock25Mhz|TEMPORAL~clkctrl_outclk\,
	asdata => \VGA_syncronizador|Add1~12_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \VGA_syncronizador|Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_syncronizador|COUNTER_V\(6));

-- Location: FF_X32_Y27_N13
\rnd_count_r_2_\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock25Mhz|TEMPORAL~clkctrl_outclk\,
	d => \rnd_count_r~1_combout\,
	clrn => \RST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_count_r_2_~q\);

-- Location: LCCOMB_X30_Y26_N30
\VGA_syncronizador|Equal0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_syncronizador|Equal0~2_combout\ = ((!\VGA_syncronizador|Add0~4_combout\ & (!\VGA_syncronizador|Add0~2_combout\ & !\VGA_syncronizador|Add0~6_combout\))) # (!\VGA_syncronizador|LessThan0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_syncronizador|Add0~4_combout\,
	datab => \VGA_syncronizador|Add0~2_combout\,
	datac => \VGA_syncronizador|Add0~6_combout\,
	datad => \VGA_syncronizador|LessThan0~2_combout\,
	combout => \VGA_syncronizador|Equal0~2_combout\);

-- Location: LCCOMB_X30_Y24_N2
\LessThan2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan2~0_combout\ = (\VGA_syncronizador|Add3~4_combout\) # ((\VGA_syncronizador|Add3~0_combout\ & \VGA_syncronizador|Add3~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_syncronizador|Add3~0_combout\,
	datab => \VGA_syncronizador|Add3~4_combout\,
	datad => \VGA_syncronizador|Add3~2_combout\,
	combout => \LessThan2~0_combout\);

-- Location: LCCOMB_X31_Y24_N24
\LessThan2~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan2~1_combout\ = (\VGA_syncronizador|Add3~10_combout\) # ((\LessThan2~0_combout\ & (\VGA_syncronizador|Add3~8_combout\ & \VGA_syncronizador|Add3~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan2~0_combout\,
	datab => \VGA_syncronizador|Add3~8_combout\,
	datac => \VGA_syncronizador|Add3~6_combout\,
	datad => \VGA_syncronizador|Add3~10_combout\,
	combout => \LessThan2~1_combout\);

-- Location: LCCOMB_X30_Y24_N30
\R~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \R~0_combout\ = (\VGA_syncronizador|Add3~16_combout\ & (!\VGA_syncronizador|Add3~18_combout\ & (!\VGA_syncronizador|Add3~12_combout\ & \VGA_syncronizador|Add3~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_syncronizador|Add3~16_combout\,
	datab => \VGA_syncronizador|Add3~18_combout\,
	datac => \VGA_syncronizador|Add3~12_combout\,
	datad => \VGA_syncronizador|Add3~14_combout\,
	combout => \R~0_combout\);

-- Location: LCCOMB_X32_Y26_N4
\LessThan0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~0_combout\ = (\VGA_syncronizador|COUNTER_H\(6) & (\VGA_syncronizador|COUNTER_H\(4) & (!\VGA_syncronizador|COUNTER_H\(7) & \VGA_syncronizador|COUNTER_H\(5)))) # (!\VGA_syncronizador|COUNTER_H\(6) & (!\VGA_syncronizador|COUNTER_H\(4) & 
-- (\VGA_syncronizador|COUNTER_H\(7) & !\VGA_syncronizador|COUNTER_H\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_syncronizador|COUNTER_H\(6),
	datab => \VGA_syncronizador|COUNTER_H\(4),
	datac => \VGA_syncronizador|COUNTER_H\(7),
	datad => \VGA_syncronizador|COUNTER_H\(5),
	combout => \LessThan0~0_combout\);

-- Location: LCCOMB_X29_Y26_N22
\LessThan0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~1_combout\ = (\VGA_syncronizador|COUNTER_H\(1)) # ((\VGA_syncronizador|COUNTER_H\(2)) # ((\VGA_syncronizador|COUNTER_H\(0)) # (\VGA_syncronizador|COUNTER_H\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_syncronizador|COUNTER_H\(1),
	datab => \VGA_syncronizador|COUNTER_H\(2),
	datac => \VGA_syncronizador|COUNTER_H\(0),
	datad => \VGA_syncronizador|COUNTER_H\(3),
	combout => \LessThan0~1_combout\);

-- Location: LCCOMB_X32_Y24_N16
\LessThan0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~2_combout\ = ((\LessThan0~0_combout\ & (!\VGA_syncronizador|COUNTER_H\(4) & \LessThan0~1_combout\))) # (!\VGA_syncronizador|Add2~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~0_combout\,
	datab => \VGA_syncronizador|COUNTER_H\(4),
	datac => \LessThan0~1_combout\,
	datad => \VGA_syncronizador|Add2~1_combout\,
	combout => \LessThan0~2_combout\);

-- Location: LCCOMB_X30_Y24_N6
\R~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \R~1_combout\ = (!\STATE~q\ & (((!\VGA_syncronizador|Add3~10_combout\) # (!\VGA_syncronizador|Add3~6_combout\)) # (!\VGA_syncronizador|Add3~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STATE~q\,
	datab => \VGA_syncronizador|Add3~8_combout\,
	datac => \VGA_syncronizador|Add3~6_combout\,
	datad => \VGA_syncronizador|Add3~10_combout\,
	combout => \R~1_combout\);

-- Location: LCCOMB_X32_Y26_N30
\VGA_syncronizador|Add2~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_syncronizador|Add2~4_combout\ = \VGA_syncronizador|COUNTER_H\(4) $ (\VGA_syncronizador|COUNTER_H\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \VGA_syncronizador|COUNTER_H\(4),
	datad => \VGA_syncronizador|COUNTER_H\(5),
	combout => \VGA_syncronizador|Add2~4_combout\);

-- Location: LCCOMB_X29_Y26_N16
\LessThan1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan1~0_combout\ = (\VGA_syncronizador|COUNTER_H\(4) & (((!\VGA_syncronizador|COUNTER_H\(2)) # (!\VGA_syncronizador|COUNTER_H\(1))) # (!\VGA_syncronizador|COUNTER_H\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_syncronizador|COUNTER_H\(3),
	datab => \VGA_syncronizador|COUNTER_H\(1),
	datac => \VGA_syncronizador|COUNTER_H\(2),
	datad => \VGA_syncronizador|COUNTER_H\(4),
	combout => \LessThan1~0_combout\);

-- Location: LCCOMB_X32_Y26_N6
\LessThan1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan1~1_combout\ = (\VGA_syncronizador|Add2~4_combout\ & (\VGA_syncronizador|Add2~3_combout\ & (\LessThan1~0_combout\ & !\VGA_syncronizador|Add2~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_syncronizador|Add2~4_combout\,
	datab => \VGA_syncronizador|Add2~3_combout\,
	datac => \LessThan1~0_combout\,
	datad => \VGA_syncronizador|Add2~5_combout\,
	combout => \LessThan1~1_combout\);

-- Location: LCCOMB_X32_Y24_N26
\R~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \R~2_combout\ = (\VGA_syncronizador|Add2~2_combout\ & (\R~1_combout\ & ((\VGA_syncronizador|Add2~1_combout\) # (\LessThan1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_syncronizador|Add2~2_combout\,
	datab => \VGA_syncronizador|Add2~1_combout\,
	datac => \R~1_combout\,
	datad => \LessThan1~1_combout\,
	combout => \R~2_combout\);

-- Location: LCCOMB_X32_Y24_N12
\R~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \R~3_combout\ = (\R~0_combout\ & (\LessThan0~2_combout\ & (\R~2_combout\ & \LessThan2~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \R~0_combout\,
	datab => \LessThan0~2_combout\,
	datac => \R~2_combout\,
	datad => \LessThan2~1_combout\,
	combout => \R~3_combout\);

-- Location: FF_X26_Y23_N25
\VEND[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock25Mhz|TEMPORAL~clkctrl_outclk\,
	d => \Add2~62_combout\,
	ena => \Equal1~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => VEND(31));

-- Location: FF_X26_Y24_N13
\VEND[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock25Mhz|TEMPORAL~clkctrl_outclk\,
	d => \Add2~63_combout\,
	ena => \Equal1~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => VEND(4));

-- Location: FF_X26_Y24_N15
\VEND[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock25Mhz|TEMPORAL~clkctrl_outclk\,
	d => \Add2~65_combout\,
	ena => \Equal1~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => VEND(6));

-- Location: LCCOMB_X26_Y24_N26
\LessThan7~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan7~0_combout\ = (VEND(4) & (!VEND(6) & (!VEND(5) & !VEND(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => VEND(4),
	datab => VEND(6),
	datac => VEND(5),
	datad => VEND(7),
	combout => \LessThan7~0_combout\);

-- Location: FF_X26_Y24_N11
\VEND[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock25Mhz|TEMPORAL~clkctrl_outclk\,
	d => \Add2~78_combout\,
	ena => \Equal1~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => VEND(19));

-- Location: FF_X26_Y23_N23
\VEND[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock25Mhz|TEMPORAL~clkctrl_outclk\,
	d => \Add2~87_combout\,
	ena => \Equal1~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => VEND(28));

-- Location: FF_X31_Y27_N25
\FBEGIN[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock25Mhz|TEMPORAL~clkctrl_outclk\,
	d => \Add7~18_combout\,
	ena => \FBEGIN[10]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => FBEGIN(10));

-- Location: FF_X31_Y27_N1
\FBEGIN[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock25Mhz|TEMPORAL~clkctrl_outclk\,
	d => \FBEGIN[8]~1_combout\,
	ena => \FBEGIN[10]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => FBEGIN(8));

-- Location: FF_X31_Y27_N19
\FBEGIN[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock25Mhz|TEMPORAL~clkctrl_outclk\,
	d => \Add7~12_combout\,
	ena => \FBEGIN[10]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => FBEGIN(7));

-- Location: FF_X31_Y27_N17
\FBEGIN[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock25Mhz|TEMPORAL~clkctrl_outclk\,
	d => \Add7~10_combout\,
	ena => \FBEGIN[10]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => FBEGIN(6));

-- Location: FF_X31_Y27_N31
\FBEGIN[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock25Mhz|TEMPORAL~clkctrl_outclk\,
	d => \FBEGIN[4]~2_combout\,
	ena => \FBEGIN[10]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => FBEGIN(4));

-- Location: FF_X31_Y27_N29
\FBEGIN[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock25Mhz|TEMPORAL~clkctrl_outclk\,
	d => \FBEGIN[3]~3_combout\,
	ena => \FBEGIN[10]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => FBEGIN(3));

-- Location: FF_X32_Y26_N27
\FEND[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock25Mhz|TEMPORAL~clkctrl_outclk\,
	asdata => \FEND[2]~3_combout\,
	sload => VCC,
	ena => \FBEGIN[10]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => FEND(2));

-- Location: LCCOMB_X32_Y27_N12
\rnd_count_r~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rnd_count_r~1_combout\ = (\rnd_count_r~0_combout\ & (!\rnd_count_r_2_~q\ & \rnd_count_r_1_~q\)) # (!\rnd_count_r~0_combout\ & (\rnd_count_r_2_~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rnd_count_r~0_combout\,
	datac => \rnd_count_r_2_~q\,
	datad => \rnd_count_r_1_~q\,
	combout => \rnd_count_r~1_combout\);

-- Location: FF_X26_Y24_N9
\VEND[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock25Mhz|TEMPORAL~clkctrl_outclk\,
	d => \Add2~91_combout\,
	ena => \Equal1~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => VEND(2));

-- Location: FF_X27_Y24_N23
\VEND[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock25Mhz|TEMPORAL~clkctrl_outclk\,
	asdata => \Add2~92_combout\,
	sload => VCC,
	ena => \Equal1~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => VEND(1));

-- Location: FF_X27_Y22_N7
\LIMIT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock25Mhz|TEMPORAL~clkctrl_outclk\,
	d => \LIMIT~1_combout\,
	ena => \Equal1~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => LIMIT(4));

-- Location: FF_X27_Y22_N31
\LIMIT[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock25Mhz|TEMPORAL~clkctrl_outclk\,
	d => \LIMIT~4_combout\,
	ena => \Equal1~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => LIMIT(8));

-- Location: FF_X26_Y22_N23
\LIMIT[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock25Mhz|TEMPORAL~clkctrl_outclk\,
	d => \Add3~20_combout\,
	ena => \Equal1~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => LIMIT(11));

-- Location: LCCOMB_X26_Y22_N0
\Equal2~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal2~2_combout\ = (!LIMIT(11) & (!LIMIT(9) & (!LIMIT(10) & !LIMIT(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => LIMIT(11),
	datab => LIMIT(9),
	datac => LIMIT(10),
	datad => LIMIT(12),
	combout => \Equal2~2_combout\);

-- Location: FF_X26_Y22_N31
\LIMIT[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock25Mhz|TEMPORAL~clkctrl_outclk\,
	d => \Add3~28_combout\,
	ena => \Equal1~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => LIMIT(15));

-- Location: FF_X26_Y21_N7
\LIMIT[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock25Mhz|TEMPORAL~clkctrl_outclk\,
	d => \Add3~36_combout\,
	ena => \Equal1~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => LIMIT(19));

-- Location: LCCOMB_X27_Y21_N12
\Equal2~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal2~5_combout\ = (!LIMIT(20) & (!LIMIT(18) & (!LIMIT(19) & !LIMIT(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => LIMIT(20),
	datab => LIMIT(18),
	datac => LIMIT(19),
	datad => LIMIT(17),
	combout => \Equal2~5_combout\);

-- Location: LCCOMB_X26_Y23_N24
\Add2~62\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~62_combout\ = (\Add2~60_combout\ & !\Equal2~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add2~60_combout\,
	datad => \Equal2~9_combout\,
	combout => \Add2~62_combout\);

-- Location: FF_X23_Y22_N7
\MOVIMIENTO_VERTICAL:COUNTER[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock25Mhz|TEMPORAL~clkctrl_outclk\,
	d => \Add4~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MOVIMIENTO_VERTICAL:COUNTER[3]~q\);

-- Location: LCCOMB_X22_Y22_N18
\Equal1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal1~0_combout\ = (!\MOVIMIENTO_VERTICAL:COUNTER[1]~q\ & (!\MOVIMIENTO_VERTICAL:COUNTER[0]~q\ & (!\MOVIMIENTO_VERTICAL:COUNTER[2]~q\ & !\MOVIMIENTO_VERTICAL:COUNTER[3]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MOVIMIENTO_VERTICAL:COUNTER[1]~q\,
	datab => \MOVIMIENTO_VERTICAL:COUNTER[0]~q\,
	datac => \MOVIMIENTO_VERTICAL:COUNTER[2]~q\,
	datad => \MOVIMIENTO_VERTICAL:COUNTER[3]~q\,
	combout => \Equal1~0_combout\);

-- Location: FF_X22_Y22_N13
\MOVIMIENTO_VERTICAL:COUNTER[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock25Mhz|TEMPORAL~clkctrl_outclk\,
	d => \COUNTER~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MOVIMIENTO_VERTICAL:COUNTER[5]~q\);

-- Location: FF_X23_Y22_N13
\MOVIMIENTO_VERTICAL:COUNTER[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock25Mhz|TEMPORAL~clkctrl_outclk\,
	d => \Add4~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MOVIMIENTO_VERTICAL:COUNTER[6]~q\);

-- Location: LCCOMB_X22_Y22_N22
\Equal1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal1~1_combout\ = (\MOVIMIENTO_VERTICAL:COUNTER[5]~q\ & (!\MOVIMIENTO_VERTICAL:COUNTER[7]~q\ & (!\MOVIMIENTO_VERTICAL:COUNTER[6]~q\ & !\MOVIMIENTO_VERTICAL:COUNTER[4]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MOVIMIENTO_VERTICAL:COUNTER[5]~q\,
	datab => \MOVIMIENTO_VERTICAL:COUNTER[7]~q\,
	datac => \MOVIMIENTO_VERTICAL:COUNTER[6]~q\,
	datad => \MOVIMIENTO_VERTICAL:COUNTER[4]~q\,
	combout => \Equal1~1_combout\);

-- Location: LCCOMB_X22_Y22_N20
\Equal1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal1~2_combout\ = (\Equal1~1_combout\ & \Equal1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Equal1~1_combout\,
	datad => \Equal1~0_combout\,
	combout => \Equal1~2_combout\);

-- Location: FF_X24_Y22_N31
\MOVIMIENTO_VERTICAL:COUNTER[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock25Mhz|TEMPORAL~clkctrl_outclk\,
	d => \COUNTER~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MOVIMIENTO_VERTICAL:COUNTER[15]~q\);

-- Location: FF_X23_Y21_N13
\MOVIMIENTO_VERTICAL:COUNTER[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock25Mhz|TEMPORAL~clkctrl_outclk\,
	d => \Add4~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MOVIMIENTO_VERTICAL:COUNTER[22]~q\);

-- Location: FF_X23_Y21_N25
\MOVIMIENTO_VERTICAL:COUNTER[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock25Mhz|TEMPORAL~clkctrl_outclk\,
	d => \Add4~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MOVIMIENTO_VERTICAL:COUNTER[28]~q\);

-- Location: FF_X23_Y21_N27
\MOVIMIENTO_VERTICAL:COUNTER[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock25Mhz|TEMPORAL~clkctrl_outclk\,
	d => \Add4~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MOVIMIENTO_VERTICAL:COUNTER[29]~q\);

-- Location: FF_X23_Y21_N29
\MOVIMIENTO_VERTICAL:COUNTER[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock25Mhz|TEMPORAL~clkctrl_outclk\,
	d => \Add4~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MOVIMIENTO_VERTICAL:COUNTER[30]~q\);

-- Location: FF_X23_Y21_N31
\MOVIMIENTO_VERTICAL:COUNTER[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock25Mhz|TEMPORAL~clkctrl_outclk\,
	d => \Add4~62_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MOVIMIENTO_VERTICAL:COUNTER[31]~q\);

-- Location: LCCOMB_X24_Y22_N12
\Equal1~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal1~8_combout\ = (!\MOVIMIENTO_VERTICAL:COUNTER[28]~q\ & (!\MOVIMIENTO_VERTICAL:COUNTER[31]~q\ & (!\MOVIMIENTO_VERTICAL:COUNTER[30]~q\ & !\MOVIMIENTO_VERTICAL:COUNTER[29]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MOVIMIENTO_VERTICAL:COUNTER[28]~q\,
	datab => \MOVIMIENTO_VERTICAL:COUNTER[31]~q\,
	datac => \MOVIMIENTO_VERTICAL:COUNTER[30]~q\,
	datad => \MOVIMIENTO_VERTICAL:COUNTER[29]~q\,
	combout => \Equal1~8_combout\);

-- Location: LCCOMB_X26_Y24_N12
\Add2~63\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~63_combout\ = (!\Equal2~9_combout\ & !\Add2~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal2~9_combout\,
	datac => \Add2~6_combout\,
	combout => \Add2~63_combout\);

-- Location: LCCOMB_X26_Y24_N14
\Add2~65\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~65_combout\ = (!\Equal2~9_combout\ & \Add2~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal2~9_combout\,
	datad => \Add2~10_combout\,
	combout => \Add2~65_combout\);

-- Location: LCCOMB_X26_Y24_N10
\Add2~78\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~78_combout\ = (!\Equal2~9_combout\ & \Add2~36_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal2~9_combout\,
	datac => \Add2~36_combout\,
	combout => \Add2~78_combout\);

-- Location: LCCOMB_X26_Y23_N22
\Add2~87\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~87_combout\ = (!\Equal2~9_combout\ & \Add2~54_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal2~9_combout\,
	datad => \Add2~54_combout\,
	combout => \Add2~87_combout\);

-- Location: FF_X32_Y28_N17
\MOVIMIENTO_HORIZONTAL:CONTADOR[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock25Mhz|TEMPORAL~clkctrl_outclk\,
	d => \CONTADOR~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MOVIMIENTO_HORIZONTAL:CONTADOR[0]~q\);

-- Location: FF_X33_Y28_N7
\MOVIMIENTO_HORIZONTAL:CONTADOR[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock25Mhz|TEMPORAL~clkctrl_outclk\,
	d => \Add9~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MOVIMIENTO_HORIZONTAL:CONTADOR[3]~q\);

-- Location: LCCOMB_X32_Y28_N22
\Equal3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal3~0_combout\ = (!\MOVIMIENTO_HORIZONTAL:CONTADOR[3]~q\ & (!\MOVIMIENTO_HORIZONTAL:CONTADOR[0]~q\ & (!\MOVIMIENTO_HORIZONTAL:CONTADOR[2]~q\ & !\MOVIMIENTO_HORIZONTAL:CONTADOR[1]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MOVIMIENTO_HORIZONTAL:CONTADOR[3]~q\,
	datab => \MOVIMIENTO_HORIZONTAL:CONTADOR[0]~q\,
	datac => \MOVIMIENTO_HORIZONTAL:CONTADOR[2]~q\,
	datad => \MOVIMIENTO_HORIZONTAL:CONTADOR[1]~q\,
	combout => \Equal3~0_combout\);

-- Location: FF_X33_Y28_N13
\MOVIMIENTO_HORIZONTAL:CONTADOR[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock25Mhz|TEMPORAL~clkctrl_outclk\,
	d => \Add9~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MOVIMIENTO_HORIZONTAL:CONTADOR[6]~q\);

-- Location: FF_X32_Y28_N13
\MOVIMIENTO_HORIZONTAL:CONTADOR[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock25Mhz|TEMPORAL~clkctrl_outclk\,
	d => \CONTADOR~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MOVIMIENTO_HORIZONTAL:CONTADOR[9]~q\);

-- Location: FF_X32_Y28_N27
\MOVIMIENTO_HORIZONTAL:CONTADOR[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock25Mhz|TEMPORAL~clkctrl_outclk\,
	d => \CONTADOR~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MOVIMIENTO_HORIZONTAL:CONTADOR[13]~q\);

-- Location: FF_X33_Y27_N7
\MOVIMIENTO_HORIZONTAL:CONTADOR[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock25Mhz|TEMPORAL~clkctrl_outclk\,
	d => \Add9~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MOVIMIENTO_HORIZONTAL:CONTADOR[19]~q\);

-- Location: FF_X33_Y27_N15
\MOVIMIENTO_HORIZONTAL:CONTADOR[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock25Mhz|TEMPORAL~clkctrl_outclk\,
	d => \Add9~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MOVIMIENTO_HORIZONTAL:CONTADOR[23]~q\);

-- Location: FF_X33_Y27_N17
\MOVIMIENTO_HORIZONTAL:CONTADOR[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock25Mhz|TEMPORAL~clkctrl_outclk\,
	d => \Add9~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MOVIMIENTO_HORIZONTAL:CONTADOR[24]~q\);

-- Location: FF_X33_Y27_N19
\MOVIMIENTO_HORIZONTAL:CONTADOR[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock25Mhz|TEMPORAL~clkctrl_outclk\,
	d => \Add9~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MOVIMIENTO_HORIZONTAL:CONTADOR[25]~q\);

-- Location: FF_X33_Y27_N21
\MOVIMIENTO_HORIZONTAL:CONTADOR[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock25Mhz|TEMPORAL~clkctrl_outclk\,
	d => \Add9~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MOVIMIENTO_HORIZONTAL:CONTADOR[26]~q\);

-- Location: FF_X33_Y27_N23
\MOVIMIENTO_HORIZONTAL:CONTADOR[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock25Mhz|TEMPORAL~clkctrl_outclk\,
	d => \Add9~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MOVIMIENTO_HORIZONTAL:CONTADOR[27]~q\);

-- Location: LCCOMB_X32_Y27_N10
\Equal3~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal3~7_combout\ = (!\MOVIMIENTO_HORIZONTAL:CONTADOR[25]~q\ & (!\MOVIMIENTO_HORIZONTAL:CONTADOR[27]~q\ & (!\MOVIMIENTO_HORIZONTAL:CONTADOR[26]~q\ & !\MOVIMIENTO_HORIZONTAL:CONTADOR[24]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MOVIMIENTO_HORIZONTAL:CONTADOR[25]~q\,
	datab => \MOVIMIENTO_HORIZONTAL:CONTADOR[27]~q\,
	datac => \MOVIMIENTO_HORIZONTAL:CONTADOR[26]~q\,
	datad => \MOVIMIENTO_HORIZONTAL:CONTADOR[24]~q\,
	combout => \Equal3~7_combout\);

-- Location: FF_X33_Y27_N25
\MOVIMIENTO_HORIZONTAL:CONTADOR[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock25Mhz|TEMPORAL~clkctrl_outclk\,
	d => \Add9~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MOVIMIENTO_HORIZONTAL:CONTADOR[28]~q\);

-- Location: FF_X33_Y27_N27
\MOVIMIENTO_HORIZONTAL:CONTADOR[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock25Mhz|TEMPORAL~clkctrl_outclk\,
	d => \Add9~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MOVIMIENTO_HORIZONTAL:CONTADOR[29]~q\);

-- Location: LCCOMB_X32_Y27_N8
\Equal3~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal3~8_combout\ = (!\MOVIMIENTO_HORIZONTAL:CONTADOR[29]~q\ & !\MOVIMIENTO_HORIZONTAL:CONTADOR[28]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \MOVIMIENTO_HORIZONTAL:CONTADOR[29]~q\,
	datad => \MOVIMIENTO_HORIZONTAL:CONTADOR[28]~q\,
	combout => \Equal3~8_combout\);

-- Location: FF_X33_Y27_N29
\MOVIMIENTO_HORIZONTAL:CONTADOR[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock25Mhz|TEMPORAL~clkctrl_outclk\,
	d => \Add9~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MOVIMIENTO_HORIZONTAL:CONTADOR[30]~q\);

-- Location: FF_X33_Y27_N31
\MOVIMIENTO_HORIZONTAL:CONTADOR[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock25Mhz|TEMPORAL~clkctrl_outclk\,
	d => \Add9~62_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MOVIMIENTO_HORIZONTAL:CONTADOR[31]~q\);

-- Location: LCCOMB_X32_Y27_N26
\Equal3~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal3~9_combout\ = (!\MOVIMIENTO_HORIZONTAL:CONTADOR[31]~q\ & (!\MOVIMIENTO_HORIZONTAL:CONTADOR[30]~q\ & (\Equal3~8_combout\ & \Equal3~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MOVIMIENTO_HORIZONTAL:CONTADOR[31]~q\,
	datab => \MOVIMIENTO_HORIZONTAL:CONTADOR[30]~q\,
	datac => \Equal3~8_combout\,
	datad => \Equal3~7_combout\,
	combout => \Equal3~9_combout\);

-- Location: LCCOMB_X26_Y24_N8
\Add2~91\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~91_combout\ = (!\Equal2~9_combout\ & !\Add2~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Equal2~9_combout\,
	datad => \Add2~2_combout\,
	combout => \Add2~91_combout\);

-- Location: LCCOMB_X28_Y24_N30
\Add2~92\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~92_combout\ = (!\Add2~0_combout\ & !\Equal2~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~0_combout\,
	datad => \Equal2~9_combout\,
	combout => \Add2~92_combout\);

-- Location: LCCOMB_X27_Y22_N6
\LIMIT~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LIMIT~1_combout\ = (\Add3~6_combout\) # (\Equal2~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add3~6_combout\,
	datad => \Equal2~9_combout\,
	combout => \LIMIT~1_combout\);

-- Location: LCCOMB_X27_Y22_N30
\LIMIT~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LIMIT~4_combout\ = (\Add3~14_combout\ & !\Equal2~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add3~14_combout\,
	datad => \Equal2~9_combout\,
	combout => \LIMIT~4_combout\);

-- Location: LCCOMB_X22_Y22_N12
\COUNTER~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \COUNTER~1_combout\ = (\Add4~10_combout\ & !\Equal1~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add4~10_combout\,
	datad => \Equal1~10_combout\,
	combout => \COUNTER~1_combout\);

-- Location: LCCOMB_X24_Y22_N30
\COUNTER~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \COUNTER~6_combout\ = (!\Equal1~10_combout\ & \Add4~30_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal1~10_combout\,
	datad => \Add4~30_combout\,
	combout => \COUNTER~6_combout\);

-- Location: LCCOMB_X32_Y28_N16
\CONTADOR~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CONTADOR~0_combout\ = (!\Equal3~10_combout\ & \Add9~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal3~10_combout\,
	datac => \Add9~0_combout\,
	combout => \CONTADOR~0_combout\);

-- Location: LCCOMB_X32_Y28_N12
\CONTADOR~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CONTADOR~2_combout\ = (!\Equal3~10_combout\ & \Add9~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Equal3~10_combout\,
	datad => \Add9~18_combout\,
	combout => \CONTADOR~2_combout\);

-- Location: LCCOMB_X32_Y28_N26
\CONTADOR~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CONTADOR~4_combout\ = (!\Equal3~10_combout\ & \Add9~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal3~10_combout\,
	datad => \Add9~26_combout\,
	combout => \CONTADOR~4_combout\);

-- Location: LCCOMB_X40_Y17_N16
\Clock25Mhz|TEMPORAL~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Clock25Mhz|TEMPORAL~0_combout\ = !\Clock25Mhz|TEMPORAL~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Clock25Mhz|TEMPORAL~q\,
	combout => \Clock25Mhz|TEMPORAL~0_combout\);

-- Location: LCCOMB_X31_Y27_N0
\FBEGIN[8]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \FBEGIN[8]~1_combout\ = !\Add7~14_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Add7~14_combout\,
	combout => \FBEGIN[8]~1_combout\);

-- Location: LCCOMB_X31_Y27_N30
\FBEGIN[4]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \FBEGIN[4]~2_combout\ = !\Add7~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Add7~6_combout\,
	combout => \FBEGIN[4]~2_combout\);

-- Location: LCCOMB_X31_Y27_N28
\FBEGIN[3]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \FBEGIN[3]~3_combout\ = !\Add7~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Add7~4_combout\,
	combout => \FBEGIN[3]~3_combout\);

-- Location: LCCOMB_X33_Y26_N30
\FEND[2]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \FEND[2]~3_combout\ = !\Add8~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Add8~2_combout\,
	combout => \FEND[2]~3_combout\);

-- Location: IOIBUF_X41_Y17_N8
\CLK~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLK,
	o => \CLK~input_o\);

-- Location: IOOBUF_X28_Y29_N2
\HSYNC~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA_syncronizador|ALT_INV_LessThan1~1_combout\,
	devoe => ww_devoe,
	o => \HSYNC~output_o\);

-- Location: IOOBUF_X28_Y29_N30
\VSYNC~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA_syncronizador|LessThan2~0_combout\,
	devoe => ww_devoe,
	o => \VSYNC~output_o\);

-- Location: IOOBUF_X41_Y24_N9
\R[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \R[0]~reg0_q\,
	devoe => ww_devoe,
	o => \R[0]~output_o\);

-- Location: IOOBUF_X41_Y24_N2
\R[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \R[1]~reg0_q\,
	devoe => ww_devoe,
	o => \R[1]~output_o\);

-- Location: IOOBUF_X30_Y29_N16
\R[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \R[2]~reg0_q\,
	devoe => ww_devoe,
	o => \R[2]~output_o\);

-- Location: IOOBUF_X41_Y24_N16
\R[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \R[3]~reg0_q\,
	devoe => ww_devoe,
	o => \R[3]~output_o\);

-- Location: IOOBUF_X0_Y11_N23
\G[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \G[0]~output_o\);

-- Location: IOOBUF_X23_Y29_N9
\G[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \G[1]~output_o\);

-- Location: IOOBUF_X19_Y0_N23
\G[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \G[2]~output_o\);

-- Location: IOOBUF_X26_Y29_N2
\G[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \G[3]~output_o\);

-- Location: IOOBUF_X41_Y24_N23
\B[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \B[0]~reg0_q\,
	devoe => ww_devoe,
	o => \B[0]~output_o\);

-- Location: IOOBUF_X30_Y29_N2
\B[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \B[1]~reg0_q\,
	devoe => ww_devoe,
	o => \B[1]~output_o\);

-- Location: IOOBUF_X32_Y29_N16
\B[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \B[2]~reg0_q\,
	devoe => ww_devoe,
	o => \B[2]~output_o\);

-- Location: IOOBUF_X41_Y23_N2
\B[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \B[3]~reg0_q\,
	devoe => ww_devoe,
	o => \B[3]~output_o\);

-- Location: LCCOMB_X29_Y26_N26
\VGA_syncronizador|Add0~29\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_syncronizador|Add0~29_combout\ = (\VGA_syncronizador|Add0~0_combout\ & \VGA_syncronizador|LessThan0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_syncronizador|Add0~0_combout\,
	datad => \VGA_syncronizador|LessThan0~2_combout\,
	combout => \VGA_syncronizador|Add0~29_combout\);

-- Location: IOIBUF_X0_Y14_N1
\RST~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RST,
	o => \RST~input_o\);

-- Location: CLKCTRL_G4
\RST~inputclkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \RST~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \RST~inputclkctrl_outclk\);

-- Location: FF_X30_Y26_N3
\VGA_syncronizador|COUNTER_H[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock25Mhz|TEMPORAL~clkctrl_outclk\,
	asdata => \VGA_syncronizador|Add0~29_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_syncronizador|COUNTER_H\(0));

-- Location: LCCOMB_X30_Y26_N10
\VGA_syncronizador|Add0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_syncronizador|Add0~2_combout\ = (\VGA_syncronizador|COUNTER_H\(1) & (!\VGA_syncronizador|Add0~1\)) # (!\VGA_syncronizador|COUNTER_H\(1) & ((\VGA_syncronizador|Add0~1\) # (GND)))
-- \VGA_syncronizador|Add0~3\ = CARRY((!\VGA_syncronizador|Add0~1\) # (!\VGA_syncronizador|COUNTER_H\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA_syncronizador|COUNTER_H\(1),
	datad => VCC,
	cin => \VGA_syncronizador|Add0~1\,
	combout => \VGA_syncronizador|Add0~2_combout\,
	cout => \VGA_syncronizador|Add0~3\);

-- Location: LCCOMB_X29_Y26_N6
\VGA_syncronizador|Add0~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_syncronizador|Add0~28_combout\ = (\VGA_syncronizador|Add0~2_combout\ & \VGA_syncronizador|LessThan0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \VGA_syncronizador|Add0~2_combout\,
	datad => \VGA_syncronizador|LessThan0~2_combout\,
	combout => \VGA_syncronizador|Add0~28_combout\);

-- Location: FF_X29_Y26_N7
\VGA_syncronizador|COUNTER_H[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock25Mhz|TEMPORAL~clkctrl_outclk\,
	d => \VGA_syncronizador|Add0~28_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_syncronizador|COUNTER_H\(1));

-- Location: LCCOMB_X30_Y26_N12
\VGA_syncronizador|Add0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_syncronizador|Add0~4_combout\ = (\VGA_syncronizador|COUNTER_H\(2) & (\VGA_syncronizador|Add0~3\ $ (GND))) # (!\VGA_syncronizador|COUNTER_H\(2) & (!\VGA_syncronizador|Add0~3\ & VCC))
-- \VGA_syncronizador|Add0~5\ = CARRY((\VGA_syncronizador|COUNTER_H\(2) & !\VGA_syncronizador|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA_syncronizador|COUNTER_H\(2),
	datad => VCC,
	cin => \VGA_syncronizador|Add0~3\,
	combout => \VGA_syncronizador|Add0~4_combout\,
	cout => \VGA_syncronizador|Add0~5\);

-- Location: LCCOMB_X30_Y26_N0
\VGA_syncronizador|Add0~27\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_syncronizador|Add0~27_combout\ = (\VGA_syncronizador|LessThan0~2_combout\ & \VGA_syncronizador|Add0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \VGA_syncronizador|LessThan0~2_combout\,
	datad => \VGA_syncronizador|Add0~4_combout\,
	combout => \VGA_syncronizador|Add0~27_combout\);

-- Location: FF_X30_Y26_N1
\VGA_syncronizador|COUNTER_H[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock25Mhz|TEMPORAL~clkctrl_outclk\,
	d => \VGA_syncronizador|Add0~27_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_syncronizador|COUNTER_H\(2));

-- Location: LCCOMB_X30_Y26_N14
\VGA_syncronizador|Add0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_syncronizador|Add0~6_combout\ = (\VGA_syncronizador|COUNTER_H\(3) & (!\VGA_syncronizador|Add0~5\)) # (!\VGA_syncronizador|COUNTER_H\(3) & ((\VGA_syncronizador|Add0~5\) # (GND)))
-- \VGA_syncronizador|Add0~7\ = CARRY((!\VGA_syncronizador|Add0~5\) # (!\VGA_syncronizador|COUNTER_H\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_syncronizador|COUNTER_H\(3),
	datad => VCC,
	cin => \VGA_syncronizador|Add0~5\,
	combout => \VGA_syncronizador|Add0~6_combout\,
	cout => \VGA_syncronizador|Add0~7\);

-- Location: LCCOMB_X30_Y26_N16
\VGA_syncronizador|Add0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_syncronizador|Add0~8_combout\ = (\VGA_syncronizador|COUNTER_H\(4) & (\VGA_syncronizador|Add0~7\ $ (GND))) # (!\VGA_syncronizador|COUNTER_H\(4) & (!\VGA_syncronizador|Add0~7\ & VCC))
-- \VGA_syncronizador|Add0~9\ = CARRY((\VGA_syncronizador|COUNTER_H\(4) & !\VGA_syncronizador|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA_syncronizador|COUNTER_H\(4),
	datad => VCC,
	cin => \VGA_syncronizador|Add0~7\,
	combout => \VGA_syncronizador|Add0~8_combout\,
	cout => \VGA_syncronizador|Add0~9\);

-- Location: LCCOMB_X30_Y26_N2
\VGA_syncronizador|Add0~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_syncronizador|Add0~25_combout\ = (\VGA_syncronizador|Add0~8_combout\ & \VGA_syncronizador|LessThan0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \VGA_syncronizador|Add0~8_combout\,
	datad => \VGA_syncronizador|LessThan0~2_combout\,
	combout => \VGA_syncronizador|Add0~25_combout\);

-- Location: FF_X30_Y26_N5
\VGA_syncronizador|COUNTER_H[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock25Mhz|TEMPORAL~clkctrl_outclk\,
	asdata => \VGA_syncronizador|Add0~25_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_syncronizador|COUNTER_H\(4));

-- Location: LCCOMB_X30_Y26_N18
\VGA_syncronizador|Add0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_syncronizador|Add0~10_combout\ = (\VGA_syncronizador|COUNTER_H\(5) & (!\VGA_syncronizador|Add0~9\)) # (!\VGA_syncronizador|COUNTER_H\(5) & ((\VGA_syncronizador|Add0~9\) # (GND)))
-- \VGA_syncronizador|Add0~11\ = CARRY((!\VGA_syncronizador|Add0~9\) # (!\VGA_syncronizador|COUNTER_H\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_syncronizador|COUNTER_H\(5),
	datad => VCC,
	cin => \VGA_syncronizador|Add0~9\,
	combout => \VGA_syncronizador|Add0~10_combout\,
	cout => \VGA_syncronizador|Add0~11\);

-- Location: LCCOMB_X30_Y26_N20
\VGA_syncronizador|Add0~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_syncronizador|Add0~12_combout\ = (\VGA_syncronizador|COUNTER_H\(6) & (\VGA_syncronizador|Add0~11\ $ (GND))) # (!\VGA_syncronizador|COUNTER_H\(6) & (!\VGA_syncronizador|Add0~11\ & VCC))
-- \VGA_syncronizador|Add0~13\ = CARRY((\VGA_syncronizador|COUNTER_H\(6) & !\VGA_syncronizador|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA_syncronizador|COUNTER_H\(6),
	datad => VCC,
	cin => \VGA_syncronizador|Add0~11\,
	combout => \VGA_syncronizador|Add0~12_combout\,
	cout => \VGA_syncronizador|Add0~13\);

-- Location: LCCOMB_X31_Y26_N0
\VGA_syncronizador|Add0~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_syncronizador|Add0~14_combout\ = (\VGA_syncronizador|LessThan0~2_combout\ & \VGA_syncronizador|Add0~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \VGA_syncronizador|LessThan0~2_combout\,
	datad => \VGA_syncronizador|Add0~12_combout\,
	combout => \VGA_syncronizador|Add0~14_combout\);

-- Location: FF_X31_Y26_N1
\VGA_syncronizador|COUNTER_H[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock25Mhz|TEMPORAL~clkctrl_outclk\,
	d => \VGA_syncronizador|Add0~14_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_syncronizador|COUNTER_H\(6));

-- Location: LCCOMB_X30_Y26_N22
\VGA_syncronizador|Add0~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_syncronizador|Add0~16_combout\ = (\VGA_syncronizador|COUNTER_H\(7) & (!\VGA_syncronizador|Add0~13\)) # (!\VGA_syncronizador|COUNTER_H\(7) & ((\VGA_syncronizador|Add0~13\) # (GND)))
-- \VGA_syncronizador|Add0~17\ = CARRY((!\VGA_syncronizador|Add0~13\) # (!\VGA_syncronizador|COUNTER_H\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA_syncronizador|COUNTER_H\(7),
	datad => VCC,
	cin => \VGA_syncronizador|Add0~13\,
	combout => \VGA_syncronizador|Add0~16_combout\,
	cout => \VGA_syncronizador|Add0~17\);

-- Location: LCCOMB_X30_Y26_N24
\VGA_syncronizador|Add0~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_syncronizador|Add0~18_combout\ = (\VGA_syncronizador|COUNTER_H\(8) & (\VGA_syncronizador|Add0~17\ $ (GND))) # (!\VGA_syncronizador|COUNTER_H\(8) & (!\VGA_syncronizador|Add0~17\ & VCC))
-- \VGA_syncronizador|Add0~19\ = CARRY((\VGA_syncronizador|COUNTER_H\(8) & !\VGA_syncronizador|Add0~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA_syncronizador|COUNTER_H\(8),
	datad => VCC,
	cin => \VGA_syncronizador|Add0~17\,
	combout => \VGA_syncronizador|Add0~18_combout\,
	cout => \VGA_syncronizador|Add0~19\);

-- Location: LCCOMB_X29_Y26_N14
\VGA_syncronizador|Add0~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_syncronizador|Add0~23_combout\ = (\VGA_syncronizador|LessThan0~2_combout\ & \VGA_syncronizador|Add0~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \VGA_syncronizador|LessThan0~2_combout\,
	datad => \VGA_syncronizador|Add0~18_combout\,
	combout => \VGA_syncronizador|Add0~23_combout\);

-- Location: FF_X31_Y26_N29
\VGA_syncronizador|COUNTER_H[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock25Mhz|TEMPORAL~clkctrl_outclk\,
	asdata => \VGA_syncronizador|Add0~23_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_syncronizador|COUNTER_H\(8));

-- Location: LCCOMB_X30_Y26_N26
\VGA_syncronizador|Add0~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_syncronizador|Add0~20_combout\ = \VGA_syncronizador|Add0~19\ $ (\VGA_syncronizador|COUNTER_H\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \VGA_syncronizador|COUNTER_H\(9),
	cin => \VGA_syncronizador|Add0~19\,
	combout => \VGA_syncronizador|Add0~20_combout\);

-- Location: LCCOMB_X29_Y26_N8
\VGA_syncronizador|Add0~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_syncronizador|Add0~22_combout\ = (\VGA_syncronizador|Add0~20_combout\ & \VGA_syncronizador|LessThan0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \VGA_syncronizador|Add0~20_combout\,
	datad => \VGA_syncronizador|LessThan0~2_combout\,
	combout => \VGA_syncronizador|Add0~22_combout\);

-- Location: FF_X29_Y26_N9
\VGA_syncronizador|COUNTER_H[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock25Mhz|TEMPORAL~clkctrl_outclk\,
	d => \VGA_syncronizador|Add0~22_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_syncronizador|COUNTER_H\(9));

-- Location: LCCOMB_X30_Y26_N6
\VGA_syncronizador|Add0~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_syncronizador|Add0~26_combout\ = (\VGA_syncronizador|Add0~6_combout\ & \VGA_syncronizador|LessThan0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \VGA_syncronizador|Add0~6_combout\,
	datad => \VGA_syncronizador|LessThan0~2_combout\,
	combout => \VGA_syncronizador|Add0~26_combout\);

-- Location: FF_X30_Y26_N7
\VGA_syncronizador|COUNTER_H[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock25Mhz|TEMPORAL~clkctrl_outclk\,
	d => \VGA_syncronizador|Add0~26_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_syncronizador|COUNTER_H\(3));

-- Location: LCCOMB_X29_Y26_N20
\VGA_syncronizador|LessThan0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_syncronizador|LessThan0~0_combout\ = (((!\VGA_syncronizador|COUNTER_H\(3)) # (!\VGA_syncronizador|COUNTER_H\(4))) # (!\VGA_syncronizador|COUNTER_H\(2))) # (!\VGA_syncronizador|COUNTER_H\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_syncronizador|COUNTER_H\(1),
	datab => \VGA_syncronizador|COUNTER_H\(2),
	datac => \VGA_syncronizador|COUNTER_H\(4),
	datad => \VGA_syncronizador|COUNTER_H\(3),
	combout => \VGA_syncronizador|LessThan0~0_combout\);

-- Location: LCCOMB_X29_Y26_N18
\VGA_syncronizador|LessThan0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_syncronizador|LessThan0~1_combout\ = (\VGA_syncronizador|COUNTER_H\(5)) # ((\VGA_syncronizador|COUNTER_H\(7)) # ((\VGA_syncronizador|COUNTER_H\(0) & !\VGA_syncronizador|LessThan0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_syncronizador|COUNTER_H\(5),
	datab => \VGA_syncronizador|COUNTER_H\(0),
	datac => \VGA_syncronizador|COUNTER_H\(7),
	datad => \VGA_syncronizador|LessThan0~0_combout\,
	combout => \VGA_syncronizador|LessThan0~1_combout\);

-- Location: LCCOMB_X29_Y26_N24
\VGA_syncronizador|LessThan0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_syncronizador|LessThan0~2_combout\ = (((!\VGA_syncronizador|COUNTER_H\(6) & !\VGA_syncronizador|LessThan0~1_combout\)) # (!\VGA_syncronizador|COUNTER_H\(9))) # (!\VGA_syncronizador|COUNTER_H\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_syncronizador|COUNTER_H\(6),
	datab => \VGA_syncronizador|COUNTER_H\(8),
	datac => \VGA_syncronizador|COUNTER_H\(9),
	datad => \VGA_syncronizador|LessThan0~1_combout\,
	combout => \VGA_syncronizador|LessThan0~2_combout\);

-- Location: LCCOMB_X31_Y26_N26
\VGA_syncronizador|Add0~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_syncronizador|Add0~24_combout\ = (\VGA_syncronizador|LessThan0~2_combout\ & \VGA_syncronizador|Add0~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \VGA_syncronizador|LessThan0~2_combout\,
	datad => \VGA_syncronizador|Add0~16_combout\,
	combout => \VGA_syncronizador|Add0~24_combout\);

-- Location: FF_X31_Y26_N27
\VGA_syncronizador|COUNTER_H[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock25Mhz|TEMPORAL~clkctrl_outclk\,
	d => \VGA_syncronizador|Add0~24_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_syncronizador|COUNTER_H\(7));

-- Location: LCCOMB_X31_Y26_N30
\VGA_syncronizador|Add0~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_syncronizador|Add0~15_combout\ = (\VGA_syncronizador|LessThan0~2_combout\ & \VGA_syncronizador|Add0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \VGA_syncronizador|LessThan0~2_combout\,
	datad => \VGA_syncronizador|Add0~10_combout\,
	combout => \VGA_syncronizador|Add0~15_combout\);

-- Location: FF_X31_Y26_N31
\VGA_syncronizador|COUNTER_H[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock25Mhz|TEMPORAL~clkctrl_outclk\,
	d => \VGA_syncronizador|Add0~15_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_syncronizador|COUNTER_H\(5));

-- Location: LCCOMB_X29_Y26_N10
\VGA_syncronizador|LessThan1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_syncronizador|LessThan1~0_combout\ = (!\VGA_syncronizador|COUNTER_H\(9) & (!\VGA_syncronizador|COUNTER_H\(8) & ((!\VGA_syncronizador|COUNTER_H\(5)) # (!\VGA_syncronizador|COUNTER_H\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_syncronizador|COUNTER_H\(6),
	datab => \VGA_syncronizador|COUNTER_H\(5),
	datac => \VGA_syncronizador|COUNTER_H\(9),
	datad => \VGA_syncronizador|COUNTER_H\(8),
	combout => \VGA_syncronizador|LessThan1~0_combout\);

-- Location: LCCOMB_X29_Y26_N4
\VGA_syncronizador|LessThan1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_syncronizador|LessThan1~1_combout\ = (!\VGA_syncronizador|COUNTER_H\(7) & \VGA_syncronizador|LessThan1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \VGA_syncronizador|COUNTER_H\(7),
	datad => \VGA_syncronizador|LessThan1~0_combout\,
	combout => \VGA_syncronizador|LessThan1~1_combout\);

-- Location: LCCOMB_X29_Y24_N16
\VGA_syncronizador|Add1~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_syncronizador|Add1~8_combout\ = (\VGA_syncronizador|COUNTER_V\(4) & (\VGA_syncronizador|Add1~7\ $ (GND))) # (!\VGA_syncronizador|COUNTER_V\(4) & (!\VGA_syncronizador|Add1~7\ & VCC))
-- \VGA_syncronizador|Add1~9\ = CARRY((\VGA_syncronizador|COUNTER_V\(4) & !\VGA_syncronizador|Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA_syncronizador|COUNTER_V\(4),
	datad => VCC,
	cin => \VGA_syncronizador|Add1~7\,
	combout => \VGA_syncronizador|Add1~8_combout\,
	cout => \VGA_syncronizador|Add1~9\);

-- Location: LCCOMB_X29_Y24_N18
\VGA_syncronizador|Add1~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_syncronizador|Add1~10_combout\ = (\VGA_syncronizador|COUNTER_V\(5) & (!\VGA_syncronizador|Add1~9\)) # (!\VGA_syncronizador|COUNTER_V\(5) & ((\VGA_syncronizador|Add1~9\) # (GND)))
-- \VGA_syncronizador|Add1~11\ = CARRY((!\VGA_syncronizador|Add1~9\) # (!\VGA_syncronizador|COUNTER_V\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA_syncronizador|COUNTER_V\(5),
	datad => VCC,
	cin => \VGA_syncronizador|Add1~9\,
	combout => \VGA_syncronizador|Add1~10_combout\,
	cout => \VGA_syncronizador|Add1~11\);

-- Location: LCCOMB_X30_Y26_N28
\VGA_syncronizador|Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_syncronizador|Equal0~0_combout\ = ((!\VGA_syncronizador|Add0~16_combout\ & (!\VGA_syncronizador|Add0~18_combout\ & !\VGA_syncronizador|Add0~20_combout\))) # (!\VGA_syncronizador|LessThan0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_syncronizador|Add0~16_combout\,
	datab => \VGA_syncronizador|Add0~18_combout\,
	datac => \VGA_syncronizador|Add0~20_combout\,
	datad => \VGA_syncronizador|LessThan0~2_combout\,
	combout => \VGA_syncronizador|Equal0~0_combout\);

-- Location: LCCOMB_X29_Y26_N12
\VGA_syncronizador|Equal0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_syncronizador|Equal0~1_combout\ = ((!\VGA_syncronizador|Add0~0_combout\ & (!\VGA_syncronizador|Add0~12_combout\ & !\VGA_syncronizador|Add0~10_combout\))) # (!\VGA_syncronizador|LessThan0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_syncronizador|Add0~0_combout\,
	datab => \VGA_syncronizador|LessThan0~2_combout\,
	datac => \VGA_syncronizador|Add0~12_combout\,
	datad => \VGA_syncronizador|Add0~10_combout\,
	combout => \VGA_syncronizador|Equal0~1_combout\);

-- Location: LCCOMB_X30_Y26_N4
\VGA_syncronizador|Equal0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_syncronizador|Equal0~3_combout\ = (\VGA_syncronizador|Equal0~2_combout\ & (\VGA_syncronizador|Equal0~0_combout\ & (!\VGA_syncronizador|Add0~25_combout\ & \VGA_syncronizador|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_syncronizador|Equal0~2_combout\,
	datab => \VGA_syncronizador|Equal0~0_combout\,
	datac => \VGA_syncronizador|Add0~25_combout\,
	datad => \VGA_syncronizador|Equal0~1_combout\,
	combout => \VGA_syncronizador|Equal0~3_combout\);

-- Location: FF_X30_Y24_N17
\VGA_syncronizador|COUNTER_V[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock25Mhz|TEMPORAL~clkctrl_outclk\,
	asdata => \VGA_syncronizador|Add1~10_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \VGA_syncronizador|Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_syncronizador|COUNTER_V\(5));

-- Location: LCCOMB_X29_Y24_N22
\VGA_syncronizador|Add1~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_syncronizador|Add1~14_combout\ = (\VGA_syncronizador|COUNTER_V\(7) & (!\VGA_syncronizador|Add1~13\)) # (!\VGA_syncronizador|COUNTER_V\(7) & ((\VGA_syncronizador|Add1~13\) # (GND)))
-- \VGA_syncronizador|Add1~15\ = CARRY((!\VGA_syncronizador|Add1~13\) # (!\VGA_syncronizador|COUNTER_V\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_syncronizador|COUNTER_V\(7),
	datad => VCC,
	cin => \VGA_syncronizador|Add1~13\,
	combout => \VGA_syncronizador|Add1~14_combout\,
	cout => \VGA_syncronizador|Add1~15\);

-- Location: LCCOMB_X29_Y24_N24
\VGA_syncronizador|Add1~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_syncronizador|Add1~16_combout\ = (\VGA_syncronizador|COUNTER_V\(8) & (\VGA_syncronizador|Add1~15\ $ (GND))) # (!\VGA_syncronizador|COUNTER_V\(8) & (!\VGA_syncronizador|Add1~15\ & VCC))
-- \VGA_syncronizador|Add1~17\ = CARRY((\VGA_syncronizador|COUNTER_V\(8) & !\VGA_syncronizador|Add1~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA_syncronizador|COUNTER_V\(8),
	datad => VCC,
	cin => \VGA_syncronizador|Add1~15\,
	combout => \VGA_syncronizador|Add1~16_combout\,
	cout => \VGA_syncronizador|Add1~17\);

-- Location: FF_X29_Y24_N25
\VGA_syncronizador|COUNTER_V[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock25Mhz|TEMPORAL~clkctrl_outclk\,
	d => \VGA_syncronizador|Add1~16_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	ena => \VGA_syncronizador|Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_syncronizador|COUNTER_V\(8));

-- Location: LCCOMB_X29_Y24_N26
\VGA_syncronizador|Add1~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_syncronizador|Add1~18_combout\ = \VGA_syncronizador|Add1~17\ $ (\VGA_syncronizador|COUNTER_V\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \VGA_syncronizador|COUNTER_V\(9),
	cin => \VGA_syncronizador|Add1~17\,
	combout => \VGA_syncronizador|Add1~18_combout\);

-- Location: LCCOMB_X29_Y24_N28
\VGA_syncronizador|COUNTER_V~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_syncronizador|COUNTER_V~0_combout\ = (!\VGA_syncronizador|Equal1~2_combout\ & \VGA_syncronizador|Add1~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \VGA_syncronizador|Equal1~2_combout\,
	datac => \VGA_syncronizador|Add1~18_combout\,
	combout => \VGA_syncronizador|COUNTER_V~0_combout\);

-- Location: FF_X29_Y24_N29
\VGA_syncronizador|COUNTER_V[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock25Mhz|TEMPORAL~clkctrl_outclk\,
	d => \VGA_syncronizador|COUNTER_V~0_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	ena => \VGA_syncronizador|Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_syncronizador|COUNTER_V\(9));

-- Location: LCCOMB_X29_Y24_N4
\VGA_syncronizador|Equal1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_syncronizador|Equal1~2_combout\ = (!\VGA_syncronizador|COUNTER_V\(0) & (\VGA_syncronizador|Equal1~1_combout\ & (\VGA_syncronizador|COUNTER_V\(3) & \VGA_syncronizador|COUNTER_V\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_syncronizador|COUNTER_V\(0),
	datab => \VGA_syncronizador|Equal1~1_combout\,
	datac => \VGA_syncronizador|COUNTER_V\(3),
	datad => \VGA_syncronizador|COUNTER_V\(9),
	combout => \VGA_syncronizador|Equal1~2_combout\);

-- Location: LCCOMB_X29_Y24_N8
\VGA_syncronizador|Add1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_syncronizador|Add1~0_combout\ = \VGA_syncronizador|COUNTER_V\(0) $ (VCC)
-- \VGA_syncronizador|Add1~1\ = CARRY(\VGA_syncronizador|COUNTER_V\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_syncronizador|COUNTER_V\(0),
	datad => VCC,
	combout => \VGA_syncronizador|Add1~0_combout\,
	cout => \VGA_syncronizador|Add1~1\);

-- Location: LCCOMB_X29_Y24_N10
\VGA_syncronizador|Add1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_syncronizador|Add1~2_combout\ = (\VGA_syncronizador|COUNTER_V\(1) & (!\VGA_syncronizador|Add1~1\)) # (!\VGA_syncronizador|COUNTER_V\(1) & ((\VGA_syncronizador|Add1~1\) # (GND)))
-- \VGA_syncronizador|Add1~3\ = CARRY((!\VGA_syncronizador|Add1~1\) # (!\VGA_syncronizador|COUNTER_V\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_syncronizador|COUNTER_V\(1),
	datad => VCC,
	cin => \VGA_syncronizador|Add1~1\,
	combout => \VGA_syncronizador|Add1~2_combout\,
	cout => \VGA_syncronizador|Add1~3\);

-- Location: LCCOMB_X29_Y24_N12
\VGA_syncronizador|Add1~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_syncronizador|Add1~4_combout\ = (\VGA_syncronizador|COUNTER_V\(2) & (\VGA_syncronizador|Add1~3\ $ (GND))) # (!\VGA_syncronizador|COUNTER_V\(2) & (!\VGA_syncronizador|Add1~3\ & VCC))
-- \VGA_syncronizador|Add1~5\ = CARRY((\VGA_syncronizador|COUNTER_V\(2) & !\VGA_syncronizador|Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA_syncronizador|COUNTER_V\(2),
	datad => VCC,
	cin => \VGA_syncronizador|Add1~3\,
	combout => \VGA_syncronizador|Add1~4_combout\,
	cout => \VGA_syncronizador|Add1~5\);

-- Location: FF_X30_Y24_N23
\VGA_syncronizador|COUNTER_V[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock25Mhz|TEMPORAL~clkctrl_outclk\,
	asdata => \VGA_syncronizador|Add1~4_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \VGA_syncronizador|Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_syncronizador|COUNTER_V\(2));

-- Location: LCCOMB_X29_Y24_N14
\VGA_syncronizador|Add1~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_syncronizador|Add1~6_combout\ = (\VGA_syncronizador|COUNTER_V\(3) & (!\VGA_syncronizador|Add1~5\)) # (!\VGA_syncronizador|COUNTER_V\(3) & ((\VGA_syncronizador|Add1~5\) # (GND)))
-- \VGA_syncronizador|Add1~7\ = CARRY((!\VGA_syncronizador|Add1~5\) # (!\VGA_syncronizador|COUNTER_V\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA_syncronizador|COUNTER_V\(3),
	datad => VCC,
	cin => \VGA_syncronizador|Add1~5\,
	combout => \VGA_syncronizador|Add1~6_combout\,
	cout => \VGA_syncronizador|Add1~7\);

-- Location: LCCOMB_X30_Y24_N0
\VGA_syncronizador|COUNTER_V~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_syncronizador|COUNTER_V~1_combout\ = (!\VGA_syncronizador|Equal1~2_combout\ & \VGA_syncronizador|Add1~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \VGA_syncronizador|Equal1~2_combout\,
	datad => \VGA_syncronizador|Add1~6_combout\,
	combout => \VGA_syncronizador|COUNTER_V~1_combout\);

-- Location: FF_X30_Y24_N1
\VGA_syncronizador|COUNTER_V[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock25Mhz|TEMPORAL~clkctrl_outclk\,
	d => \VGA_syncronizador|COUNTER_V~1_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	ena => \VGA_syncronizador|Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_syncronizador|COUNTER_V\(3));

-- Location: FF_X29_Y24_N17
\VGA_syncronizador|COUNTER_V[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock25Mhz|TEMPORAL~clkctrl_outclk\,
	d => \VGA_syncronizador|Add1~8_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	ena => \VGA_syncronizador|Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_syncronizador|COUNTER_V\(4));

-- Location: FF_X29_Y24_N23
\VGA_syncronizador|COUNTER_V[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock25Mhz|TEMPORAL~clkctrl_outclk\,
	d => \VGA_syncronizador|Add1~14_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	ena => \VGA_syncronizador|Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_syncronizador|COUNTER_V\(7));

-- Location: LCCOMB_X29_Y24_N30
\VGA_syncronizador|Equal1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_syncronizador|Equal1~0_combout\ = (!\VGA_syncronizador|COUNTER_V\(6) & (!\VGA_syncronizador|COUNTER_V\(8) & (!\VGA_syncronizador|COUNTER_V\(7) & !\VGA_syncronizador|COUNTER_V\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_syncronizador|COUNTER_V\(6),
	datab => \VGA_syncronizador|COUNTER_V\(8),
	datac => \VGA_syncronizador|COUNTER_V\(7),
	datad => \VGA_syncronizador|COUNTER_V\(5),
	combout => \VGA_syncronizador|Equal1~0_combout\);

-- Location: LCCOMB_X29_Y24_N0
\VGA_syncronizador|Equal1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_syncronizador|Equal1~1_combout\ = (!\VGA_syncronizador|COUNTER_V\(1) & (!\VGA_syncronizador|COUNTER_V\(4) & (\VGA_syncronizador|Equal1~0_combout\ & !\VGA_syncronizador|COUNTER_V\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_syncronizador|COUNTER_V\(1),
	datab => \VGA_syncronizador|COUNTER_V\(4),
	datac => \VGA_syncronizador|Equal1~0_combout\,
	datad => \VGA_syncronizador|COUNTER_V\(2),
	combout => \VGA_syncronizador|Equal1~1_combout\);

-- Location: LCCOMB_X29_Y24_N2
\VGA_syncronizador|LessThan2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_syncronizador|LessThan2~0_combout\ = ((\VGA_syncronizador|COUNTER_V\(3)) # (\VGA_syncronizador|COUNTER_V\(9))) # (!\VGA_syncronizador|Equal1~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \VGA_syncronizador|Equal1~1_combout\,
	datac => \VGA_syncronizador|COUNTER_V\(3),
	datad => \VGA_syncronizador|COUNTER_V\(9),
	combout => \VGA_syncronizador|LessThan2~0_combout\);

-- Location: LCCOMB_X40_Y17_N10
\Clock25Mhz|TEMPORAL~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Clock25Mhz|TEMPORAL~feeder_combout\ = \Clock25Mhz|TEMPORAL~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Clock25Mhz|TEMPORAL~0_combout\,
	combout => \Clock25Mhz|TEMPORAL~feeder_combout\);

-- Location: FF_X40_Y17_N11
\Clock25Mhz|TEMPORAL\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLK~input_o\,
	d => \Clock25Mhz|TEMPORAL~feeder_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Clock25Mhz|TEMPORAL~q\);

-- Location: CLKCTRL_G7
\Clock25Mhz|TEMPORAL~clkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \Clock25Mhz|TEMPORAL~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \Clock25Mhz|TEMPORAL~clkctrl_outclk\);

-- Location: LCCOMB_X27_Y22_N18
\LIMIT~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LIMIT~2_combout\ = (\Add3~10_combout\ & !\Equal2~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~10_combout\,
	datad => \Equal2~9_combout\,
	combout => \LIMIT~2_combout\);

-- Location: LCCOMB_X23_Y22_N0
\Add4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add4~0_combout\ = \MOVIMIENTO_VERTICAL:COUNTER[0]~q\ $ (VCC)
-- \Add4~1\ = CARRY(\MOVIMIENTO_VERTICAL:COUNTER[0]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MOVIMIENTO_VERTICAL:COUNTER[0]~q\,
	datad => VCC,
	combout => \Add4~0_combout\,
	cout => \Add4~1\);

-- Location: LCCOMB_X22_Y22_N28
\COUNTER~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \COUNTER~0_combout\ = (\Add4~0_combout\ & !\Equal1~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add4~0_combout\,
	datad => \Equal1~10_combout\,
	combout => \COUNTER~0_combout\);

-- Location: FF_X22_Y22_N29
\MOVIMIENTO_VERTICAL:COUNTER[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock25Mhz|TEMPORAL~clkctrl_outclk\,
	d => \COUNTER~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MOVIMIENTO_VERTICAL:COUNTER[0]~q\);

-- Location: LCCOMB_X23_Y22_N2
\Add4~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add4~2_combout\ = (\MOVIMIENTO_VERTICAL:COUNTER[1]~q\ & (!\Add4~1\)) # (!\MOVIMIENTO_VERTICAL:COUNTER[1]~q\ & ((\Add4~1\) # (GND)))
-- \Add4~3\ = CARRY((!\Add4~1\) # (!\MOVIMIENTO_VERTICAL:COUNTER[1]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \MOVIMIENTO_VERTICAL:COUNTER[1]~q\,
	datad => VCC,
	cin => \Add4~1\,
	combout => \Add4~2_combout\,
	cout => \Add4~3\);

-- Location: FF_X23_Y22_N3
\MOVIMIENTO_VERTICAL:COUNTER[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock25Mhz|TEMPORAL~clkctrl_outclk\,
	d => \Add4~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MOVIMIENTO_VERTICAL:COUNTER[1]~q\);

-- Location: LCCOMB_X23_Y22_N4
\Add4~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add4~4_combout\ = (\MOVIMIENTO_VERTICAL:COUNTER[2]~q\ & (\Add4~3\ $ (GND))) # (!\MOVIMIENTO_VERTICAL:COUNTER[2]~q\ & (!\Add4~3\ & VCC))
-- \Add4~5\ = CARRY((\MOVIMIENTO_VERTICAL:COUNTER[2]~q\ & !\Add4~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \MOVIMIENTO_VERTICAL:COUNTER[2]~q\,
	datad => VCC,
	cin => \Add4~3\,
	combout => \Add4~4_combout\,
	cout => \Add4~5\);

-- Location: FF_X23_Y22_N5
\MOVIMIENTO_VERTICAL:COUNTER[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock25Mhz|TEMPORAL~clkctrl_outclk\,
	d => \Add4~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MOVIMIENTO_VERTICAL:COUNTER[2]~q\);

-- Location: LCCOMB_X23_Y22_N8
\Add4~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add4~8_combout\ = (\MOVIMIENTO_VERTICAL:COUNTER[4]~q\ & (\Add4~7\ $ (GND))) # (!\MOVIMIENTO_VERTICAL:COUNTER[4]~q\ & (!\Add4~7\ & VCC))
-- \Add4~9\ = CARRY((\MOVIMIENTO_VERTICAL:COUNTER[4]~q\ & !\Add4~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \MOVIMIENTO_VERTICAL:COUNTER[4]~q\,
	datad => VCC,
	cin => \Add4~7\,
	combout => \Add4~8_combout\,
	cout => \Add4~9\);

-- Location: FF_X23_Y22_N9
\MOVIMIENTO_VERTICAL:COUNTER[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock25Mhz|TEMPORAL~clkctrl_outclk\,
	d => \Add4~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MOVIMIENTO_VERTICAL:COUNTER[4]~q\);

-- Location: LCCOMB_X23_Y22_N14
\Add4~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add4~14_combout\ = (\MOVIMIENTO_VERTICAL:COUNTER[7]~q\ & (!\Add4~13\)) # (!\MOVIMIENTO_VERTICAL:COUNTER[7]~q\ & ((\Add4~13\) # (GND)))
-- \Add4~15\ = CARRY((!\Add4~13\) # (!\MOVIMIENTO_VERTICAL:COUNTER[7]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \MOVIMIENTO_VERTICAL:COUNTER[7]~q\,
	datad => VCC,
	cin => \Add4~13\,
	combout => \Add4~14_combout\,
	cout => \Add4~15\);

-- Location: FF_X23_Y22_N15
\MOVIMIENTO_VERTICAL:COUNTER[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock25Mhz|TEMPORAL~clkctrl_outclk\,
	d => \Add4~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MOVIMIENTO_VERTICAL:COUNTER[7]~q\);

-- Location: LCCOMB_X23_Y22_N16
\Add4~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add4~16_combout\ = (\MOVIMIENTO_VERTICAL:COUNTER[8]~q\ & (\Add4~15\ $ (GND))) # (!\MOVIMIENTO_VERTICAL:COUNTER[8]~q\ & (!\Add4~15\ & VCC))
-- \Add4~17\ = CARRY((\MOVIMIENTO_VERTICAL:COUNTER[8]~q\ & !\Add4~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \MOVIMIENTO_VERTICAL:COUNTER[8]~q\,
	datad => VCC,
	cin => \Add4~15\,
	combout => \Add4~16_combout\,
	cout => \Add4~17\);

-- Location: FF_X23_Y22_N17
\MOVIMIENTO_VERTICAL:COUNTER[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock25Mhz|TEMPORAL~clkctrl_outclk\,
	d => \Add4~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MOVIMIENTO_VERTICAL:COUNTER[8]~q\);

-- Location: LCCOMB_X23_Y22_N18
\Add4~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add4~18_combout\ = (\MOVIMIENTO_VERTICAL:COUNTER[9]~q\ & (!\Add4~17\)) # (!\MOVIMIENTO_VERTICAL:COUNTER[9]~q\ & ((\Add4~17\) # (GND)))
-- \Add4~19\ = CARRY((!\Add4~17\) # (!\MOVIMIENTO_VERTICAL:COUNTER[9]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \MOVIMIENTO_VERTICAL:COUNTER[9]~q\,
	datad => VCC,
	cin => \Add4~17\,
	combout => \Add4~18_combout\,
	cout => \Add4~19\);

-- Location: FF_X23_Y22_N19
\MOVIMIENTO_VERTICAL:COUNTER[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock25Mhz|TEMPORAL~clkctrl_outclk\,
	d => \Add4~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MOVIMIENTO_VERTICAL:COUNTER[9]~q\);

-- Location: LCCOMB_X23_Y22_N20
\Add4~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add4~20_combout\ = (\MOVIMIENTO_VERTICAL:COUNTER[10]~q\ & (\Add4~19\ $ (GND))) # (!\MOVIMIENTO_VERTICAL:COUNTER[10]~q\ & (!\Add4~19\ & VCC))
-- \Add4~21\ = CARRY((\MOVIMIENTO_VERTICAL:COUNTER[10]~q\ & !\Add4~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MOVIMIENTO_VERTICAL:COUNTER[10]~q\,
	datad => VCC,
	cin => \Add4~19\,
	combout => \Add4~20_combout\,
	cout => \Add4~21\);

-- Location: LCCOMB_X24_Y22_N4
\COUNTER~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \COUNTER~2_combout\ = (!\Equal1~10_combout\ & \Add4~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal1~10_combout\,
	datad => \Add4~20_combout\,
	combout => \COUNTER~2_combout\);

-- Location: FF_X24_Y22_N5
\MOVIMIENTO_VERTICAL:COUNTER[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock25Mhz|TEMPORAL~clkctrl_outclk\,
	d => \COUNTER~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MOVIMIENTO_VERTICAL:COUNTER[10]~q\);

-- Location: LCCOMB_X23_Y22_N22
\Add4~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add4~22_combout\ = (\MOVIMIENTO_VERTICAL:COUNTER[11]~q\ & (!\Add4~21\)) # (!\MOVIMIENTO_VERTICAL:COUNTER[11]~q\ & ((\Add4~21\) # (GND)))
-- \Add4~23\ = CARRY((!\Add4~21\) # (!\MOVIMIENTO_VERTICAL:COUNTER[11]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MOVIMIENTO_VERTICAL:COUNTER[11]~q\,
	datad => VCC,
	cin => \Add4~21\,
	combout => \Add4~22_combout\,
	cout => \Add4~23\);

-- Location: LCCOMB_X24_Y22_N6
\COUNTER~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \COUNTER~3_combout\ = (!\Equal1~10_combout\ & \Add4~22_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal1~10_combout\,
	datad => \Add4~22_combout\,
	combout => \COUNTER~3_combout\);

-- Location: FF_X24_Y22_N7
\MOVIMIENTO_VERTICAL:COUNTER[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock25Mhz|TEMPORAL~clkctrl_outclk\,
	d => \COUNTER~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MOVIMIENTO_VERTICAL:COUNTER[11]~q\);

-- Location: LCCOMB_X24_Y22_N16
\Equal1~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal1~3_combout\ = (!\MOVIMIENTO_VERTICAL:COUNTER[8]~q\ & (!\MOVIMIENTO_VERTICAL:COUNTER[9]~q\ & (\MOVIMIENTO_VERTICAL:COUNTER[10]~q\ & \MOVIMIENTO_VERTICAL:COUNTER[11]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MOVIMIENTO_VERTICAL:COUNTER[8]~q\,
	datab => \MOVIMIENTO_VERTICAL:COUNTER[9]~q\,
	datac => \MOVIMIENTO_VERTICAL:COUNTER[10]~q\,
	datad => \MOVIMIENTO_VERTICAL:COUNTER[11]~q\,
	combout => \Equal1~3_combout\);

-- Location: LCCOMB_X23_Y22_N24
\Add4~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add4~24_combout\ = (\MOVIMIENTO_VERTICAL:COUNTER[12]~q\ & (\Add4~23\ $ (GND))) # (!\MOVIMIENTO_VERTICAL:COUNTER[12]~q\ & (!\Add4~23\ & VCC))
-- \Add4~25\ = CARRY((\MOVIMIENTO_VERTICAL:COUNTER[12]~q\ & !\Add4~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \MOVIMIENTO_VERTICAL:COUNTER[12]~q\,
	datad => VCC,
	cin => \Add4~23\,
	combout => \Add4~24_combout\,
	cout => \Add4~25\);

-- Location: LCCOMB_X24_Y22_N26
\COUNTER~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \COUNTER~4_combout\ = (!\Equal1~10_combout\ & \Add4~24_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal1~10_combout\,
	datad => \Add4~24_combout\,
	combout => \COUNTER~4_combout\);

-- Location: FF_X24_Y22_N27
\MOVIMIENTO_VERTICAL:COUNTER[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock25Mhz|TEMPORAL~clkctrl_outclk\,
	d => \COUNTER~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MOVIMIENTO_VERTICAL:COUNTER[12]~q\);

-- Location: LCCOMB_X23_Y22_N26
\Add4~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add4~26_combout\ = (\MOVIMIENTO_VERTICAL:COUNTER[13]~q\ & (!\Add4~25\)) # (!\MOVIMIENTO_VERTICAL:COUNTER[13]~q\ & ((\Add4~25\) # (GND)))
-- \Add4~27\ = CARRY((!\Add4~25\) # (!\MOVIMIENTO_VERTICAL:COUNTER[13]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \MOVIMIENTO_VERTICAL:COUNTER[13]~q\,
	datad => VCC,
	cin => \Add4~25\,
	combout => \Add4~26_combout\,
	cout => \Add4~27\);

-- Location: LCCOMB_X24_Y22_N0
\COUNTER~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \COUNTER~5_combout\ = (\Add4~26_combout\ & !\Equal1~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add4~26_combout\,
	datad => \Equal1~10_combout\,
	combout => \COUNTER~5_combout\);

-- Location: FF_X24_Y22_N1
\MOVIMIENTO_VERTICAL:COUNTER[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock25Mhz|TEMPORAL~clkctrl_outclk\,
	d => \COUNTER~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MOVIMIENTO_VERTICAL:COUNTER[13]~q\);

-- Location: LCCOMB_X23_Y22_N28
\Add4~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add4~28_combout\ = (\MOVIMIENTO_VERTICAL:COUNTER[14]~q\ & (\Add4~27\ $ (GND))) # (!\MOVIMIENTO_VERTICAL:COUNTER[14]~q\ & (!\Add4~27\ & VCC))
-- \Add4~29\ = CARRY((\MOVIMIENTO_VERTICAL:COUNTER[14]~q\ & !\Add4~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \MOVIMIENTO_VERTICAL:COUNTER[14]~q\,
	datad => VCC,
	cin => \Add4~27\,
	combout => \Add4~28_combout\,
	cout => \Add4~29\);

-- Location: FF_X23_Y22_N29
\MOVIMIENTO_VERTICAL:COUNTER[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock25Mhz|TEMPORAL~clkctrl_outclk\,
	d => \Add4~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MOVIMIENTO_VERTICAL:COUNTER[14]~q\);

-- Location: LCCOMB_X24_Y22_N8
\Equal1~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal1~4_combout\ = (\MOVIMIENTO_VERTICAL:COUNTER[15]~q\ & (\MOVIMIENTO_VERTICAL:COUNTER[13]~q\ & (\MOVIMIENTO_VERTICAL:COUNTER[12]~q\ & !\MOVIMIENTO_VERTICAL:COUNTER[14]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MOVIMIENTO_VERTICAL:COUNTER[15]~q\,
	datab => \MOVIMIENTO_VERTICAL:COUNTER[13]~q\,
	datac => \MOVIMIENTO_VERTICAL:COUNTER[12]~q\,
	datad => \MOVIMIENTO_VERTICAL:COUNTER[14]~q\,
	combout => \Equal1~4_combout\);

-- Location: LCCOMB_X23_Y21_N0
\Add4~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add4~32_combout\ = (\MOVIMIENTO_VERTICAL:COUNTER[16]~q\ & (\Add4~31\ $ (GND))) # (!\MOVIMIENTO_VERTICAL:COUNTER[16]~q\ & (!\Add4~31\ & VCC))
-- \Add4~33\ = CARRY((\MOVIMIENTO_VERTICAL:COUNTER[16]~q\ & !\Add4~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \MOVIMIENTO_VERTICAL:COUNTER[16]~q\,
	datad => VCC,
	cin => \Add4~31\,
	combout => \Add4~32_combout\,
	cout => \Add4~33\);

-- Location: FF_X23_Y21_N1
\MOVIMIENTO_VERTICAL:COUNTER[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock25Mhz|TEMPORAL~clkctrl_outclk\,
	d => \Add4~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MOVIMIENTO_VERTICAL:COUNTER[16]~q\);

-- Location: LCCOMB_X23_Y21_N2
\Add4~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add4~34_combout\ = (\MOVIMIENTO_VERTICAL:COUNTER[17]~q\ & (!\Add4~33\)) # (!\MOVIMIENTO_VERTICAL:COUNTER[17]~q\ & ((\Add4~33\) # (GND)))
-- \Add4~35\ = CARRY((!\Add4~33\) # (!\MOVIMIENTO_VERTICAL:COUNTER[17]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MOVIMIENTO_VERTICAL:COUNTER[17]~q\,
	datad => VCC,
	cin => \Add4~33\,
	combout => \Add4~34_combout\,
	cout => \Add4~35\);

-- Location: LCCOMB_X23_Y21_N4
\Add4~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add4~36_combout\ = (\MOVIMIENTO_VERTICAL:COUNTER[18]~q\ & (\Add4~35\ $ (GND))) # (!\MOVIMIENTO_VERTICAL:COUNTER[18]~q\ & (!\Add4~35\ & VCC))
-- \Add4~37\ = CARRY((\MOVIMIENTO_VERTICAL:COUNTER[18]~q\ & !\Add4~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MOVIMIENTO_VERTICAL:COUNTER[18]~q\,
	datad => VCC,
	cin => \Add4~35\,
	combout => \Add4~36_combout\,
	cout => \Add4~37\);

-- Location: LCCOMB_X24_Y22_N20
\COUNTER~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \COUNTER~8_combout\ = (!\Equal1~10_combout\ & \Add4~36_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal1~10_combout\,
	datad => \Add4~36_combout\,
	combout => \COUNTER~8_combout\);

-- Location: FF_X24_Y22_N21
\MOVIMIENTO_VERTICAL:COUNTER[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock25Mhz|TEMPORAL~clkctrl_outclk\,
	d => \COUNTER~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MOVIMIENTO_VERTICAL:COUNTER[18]~q\);

-- Location: LCCOMB_X23_Y21_N6
\Add4~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add4~38_combout\ = (\MOVIMIENTO_VERTICAL:COUNTER[19]~q\ & (!\Add4~37\)) # (!\MOVIMIENTO_VERTICAL:COUNTER[19]~q\ & ((\Add4~37\) # (GND)))
-- \Add4~39\ = CARRY((!\Add4~37\) # (!\MOVIMIENTO_VERTICAL:COUNTER[19]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \MOVIMIENTO_VERTICAL:COUNTER[19]~q\,
	datad => VCC,
	cin => \Add4~37\,
	combout => \Add4~38_combout\,
	cout => \Add4~39\);

-- Location: LCCOMB_X24_Y22_N14
\COUNTER~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \COUNTER~9_combout\ = (!\Equal1~10_combout\ & \Add4~38_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal1~10_combout\,
	datad => \Add4~38_combout\,
	combout => \COUNTER~9_combout\);

-- Location: FF_X24_Y22_N15
\MOVIMIENTO_VERTICAL:COUNTER[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock25Mhz|TEMPORAL~clkctrl_outclk\,
	d => \COUNTER~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MOVIMIENTO_VERTICAL:COUNTER[19]~q\);

-- Location: LCCOMB_X24_Y22_N2
\COUNTER~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \COUNTER~7_combout\ = (!\Equal1~10_combout\ & \Add4~34_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal1~10_combout\,
	datad => \Add4~34_combout\,
	combout => \COUNTER~7_combout\);

-- Location: FF_X24_Y22_N3
\MOVIMIENTO_VERTICAL:COUNTER[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock25Mhz|TEMPORAL~clkctrl_outclk\,
	d => \COUNTER~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MOVIMIENTO_VERTICAL:COUNTER[17]~q\);

-- Location: LCCOMB_X24_Y22_N28
\Equal1~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal1~5_combout\ = (!\MOVIMIENTO_VERTICAL:COUNTER[16]~q\ & (\MOVIMIENTO_VERTICAL:COUNTER[18]~q\ & (\MOVIMIENTO_VERTICAL:COUNTER[19]~q\ & \MOVIMIENTO_VERTICAL:COUNTER[17]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MOVIMIENTO_VERTICAL:COUNTER[16]~q\,
	datab => \MOVIMIENTO_VERTICAL:COUNTER[18]~q\,
	datac => \MOVIMIENTO_VERTICAL:COUNTER[19]~q\,
	datad => \MOVIMIENTO_VERTICAL:COUNTER[17]~q\,
	combout => \Equal1~5_combout\);

-- Location: LCCOMB_X23_Y21_N8
\Add4~40\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add4~40_combout\ = (\MOVIMIENTO_VERTICAL:COUNTER[20]~q\ & (\Add4~39\ $ (GND))) # (!\MOVIMIENTO_VERTICAL:COUNTER[20]~q\ & (!\Add4~39\ & VCC))
-- \Add4~41\ = CARRY((\MOVIMIENTO_VERTICAL:COUNTER[20]~q\ & !\Add4~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \MOVIMIENTO_VERTICAL:COUNTER[20]~q\,
	datad => VCC,
	cin => \Add4~39\,
	combout => \Add4~40_combout\,
	cout => \Add4~41\);

-- Location: LCCOMB_X24_Y21_N8
\COUNTER~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \COUNTER~10_combout\ = (!\Equal1~10_combout\ & \Add4~40_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Equal1~10_combout\,
	datad => \Add4~40_combout\,
	combout => \COUNTER~10_combout\);

-- Location: FF_X24_Y21_N9
\MOVIMIENTO_VERTICAL:COUNTER[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock25Mhz|TEMPORAL~clkctrl_outclk\,
	d => \COUNTER~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MOVIMIENTO_VERTICAL:COUNTER[20]~q\);

-- Location: LCCOMB_X23_Y21_N10
\Add4~42\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add4~42_combout\ = (\MOVIMIENTO_VERTICAL:COUNTER[21]~q\ & (!\Add4~41\)) # (!\MOVIMIENTO_VERTICAL:COUNTER[21]~q\ & ((\Add4~41\) # (GND)))
-- \Add4~43\ = CARRY((!\Add4~41\) # (!\MOVIMIENTO_VERTICAL:COUNTER[21]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MOVIMIENTO_VERTICAL:COUNTER[21]~q\,
	datad => VCC,
	cin => \Add4~41\,
	combout => \Add4~42_combout\,
	cout => \Add4~43\);

-- Location: LCCOMB_X23_Y21_N14
\Add4~46\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add4~46_combout\ = (\MOVIMIENTO_VERTICAL:COUNTER[23]~q\ & (!\Add4~45\)) # (!\MOVIMIENTO_VERTICAL:COUNTER[23]~q\ & ((\Add4~45\) # (GND)))
-- \Add4~47\ = CARRY((!\Add4~45\) # (!\MOVIMIENTO_VERTICAL:COUNTER[23]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MOVIMIENTO_VERTICAL:COUNTER[23]~q\,
	datad => VCC,
	cin => \Add4~45\,
	combout => \Add4~46_combout\,
	cout => \Add4~47\);

-- Location: LCCOMB_X23_Y21_N16
\Add4~48\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add4~48_combout\ = (\MOVIMIENTO_VERTICAL:COUNTER[24]~q\ & (\Add4~47\ $ (GND))) # (!\MOVIMIENTO_VERTICAL:COUNTER[24]~q\ & (!\Add4~47\ & VCC))
-- \Add4~49\ = CARRY((\MOVIMIENTO_VERTICAL:COUNTER[24]~q\ & !\Add4~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \MOVIMIENTO_VERTICAL:COUNTER[24]~q\,
	datad => VCC,
	cin => \Add4~47\,
	combout => \Add4~48_combout\,
	cout => \Add4~49\);

-- Location: FF_X23_Y21_N17
\MOVIMIENTO_VERTICAL:COUNTER[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock25Mhz|TEMPORAL~clkctrl_outclk\,
	d => \Add4~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MOVIMIENTO_VERTICAL:COUNTER[24]~q\);

-- Location: LCCOMB_X23_Y21_N18
\Add4~50\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add4~50_combout\ = (\MOVIMIENTO_VERTICAL:COUNTER[25]~q\ & (!\Add4~49\)) # (!\MOVIMIENTO_VERTICAL:COUNTER[25]~q\ & ((\Add4~49\) # (GND)))
-- \Add4~51\ = CARRY((!\Add4~49\) # (!\MOVIMIENTO_VERTICAL:COUNTER[25]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \MOVIMIENTO_VERTICAL:COUNTER[25]~q\,
	datad => VCC,
	cin => \Add4~49\,
	combout => \Add4~50_combout\,
	cout => \Add4~51\);

-- Location: FF_X23_Y21_N19
\MOVIMIENTO_VERTICAL:COUNTER[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock25Mhz|TEMPORAL~clkctrl_outclk\,
	d => \Add4~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MOVIMIENTO_VERTICAL:COUNTER[25]~q\);

-- Location: LCCOMB_X23_Y21_N20
\Add4~52\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add4~52_combout\ = (\MOVIMIENTO_VERTICAL:COUNTER[26]~q\ & (\Add4~51\ $ (GND))) # (!\MOVIMIENTO_VERTICAL:COUNTER[26]~q\ & (!\Add4~51\ & VCC))
-- \Add4~53\ = CARRY((\MOVIMIENTO_VERTICAL:COUNTER[26]~q\ & !\Add4~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \MOVIMIENTO_VERTICAL:COUNTER[26]~q\,
	datad => VCC,
	cin => \Add4~51\,
	combout => \Add4~52_combout\,
	cout => \Add4~53\);

-- Location: FF_X23_Y21_N21
\MOVIMIENTO_VERTICAL:COUNTER[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock25Mhz|TEMPORAL~clkctrl_outclk\,
	d => \Add4~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MOVIMIENTO_VERTICAL:COUNTER[26]~q\);

-- Location: FF_X23_Y21_N23
\MOVIMIENTO_VERTICAL:COUNTER[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock25Mhz|TEMPORAL~clkctrl_outclk\,
	d => \Add4~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MOVIMIENTO_VERTICAL:COUNTER[27]~q\);

-- Location: LCCOMB_X24_Y22_N22
\Equal1~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal1~7_combout\ = (!\MOVIMIENTO_VERTICAL:COUNTER[26]~q\ & (!\MOVIMIENTO_VERTICAL:COUNTER[25]~q\ & (!\MOVIMIENTO_VERTICAL:COUNTER[24]~q\ & !\MOVIMIENTO_VERTICAL:COUNTER[27]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MOVIMIENTO_VERTICAL:COUNTER[26]~q\,
	datab => \MOVIMIENTO_VERTICAL:COUNTER[25]~q\,
	datac => \MOVIMIENTO_VERTICAL:COUNTER[24]~q\,
	datad => \MOVIMIENTO_VERTICAL:COUNTER[27]~q\,
	combout => \Equal1~7_combout\);

-- Location: LCCOMB_X24_Y21_N4
\COUNTER~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \COUNTER~12_combout\ = (!\Equal1~10_combout\ & \Add4~46_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Equal1~10_combout\,
	datad => \Add4~46_combout\,
	combout => \COUNTER~12_combout\);

-- Location: FF_X24_Y21_N5
\MOVIMIENTO_VERTICAL:COUNTER[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock25Mhz|TEMPORAL~clkctrl_outclk\,
	d => \COUNTER~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MOVIMIENTO_VERTICAL:COUNTER[23]~q\);

-- Location: LCCOMB_X24_Y21_N2
\COUNTER~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \COUNTER~11_combout\ = (!\Equal1~10_combout\ & \Add4~42_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Equal1~10_combout\,
	datad => \Add4~42_combout\,
	combout => \COUNTER~11_combout\);

-- Location: FF_X24_Y21_N3
\MOVIMIENTO_VERTICAL:COUNTER[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock25Mhz|TEMPORAL~clkctrl_outclk\,
	d => \COUNTER~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MOVIMIENTO_VERTICAL:COUNTER[21]~q\);

-- Location: LCCOMB_X24_Y21_N10
\Equal1~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal1~6_combout\ = (!\MOVIMIENTO_VERTICAL:COUNTER[22]~q\ & (\MOVIMIENTO_VERTICAL:COUNTER[23]~q\ & (\MOVIMIENTO_VERTICAL:COUNTER[20]~q\ & \MOVIMIENTO_VERTICAL:COUNTER[21]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MOVIMIENTO_VERTICAL:COUNTER[22]~q\,
	datab => \MOVIMIENTO_VERTICAL:COUNTER[23]~q\,
	datac => \MOVIMIENTO_VERTICAL:COUNTER[20]~q\,
	datad => \MOVIMIENTO_VERTICAL:COUNTER[21]~q\,
	combout => \Equal1~6_combout\);

-- Location: LCCOMB_X24_Y22_N10
\Equal1~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal1~9_combout\ = (\Equal1~8_combout\ & (\Equal1~5_combout\ & (\Equal1~7_combout\ & \Equal1~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~8_combout\,
	datab => \Equal1~5_combout\,
	datac => \Equal1~7_combout\,
	datad => \Equal1~6_combout\,
	combout => \Equal1~9_combout\);

-- Location: LCCOMB_X24_Y22_N24
\Equal1~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal1~10_combout\ = (\Equal1~2_combout\ & (\Equal1~3_combout\ & (\Equal1~4_combout\ & \Equal1~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~2_combout\,
	datab => \Equal1~3_combout\,
	datac => \Equal1~4_combout\,
	datad => \Equal1~9_combout\,
	combout => \Equal1~10_combout\);

-- Location: FF_X27_Y22_N19
\LIMIT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock25Mhz|TEMPORAL~clkctrl_outclk\,
	d => \LIMIT~2_combout\,
	ena => \Equal1~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => LIMIT(6));

-- Location: LCCOMB_X27_Y22_N8
\LIMIT~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LIMIT~3_combout\ = (\Add3~12_combout\ & !\Equal2~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~12_combout\,
	datad => \Equal2~9_combout\,
	combout => \LIMIT~3_combout\);

-- Location: FF_X27_Y22_N9
\LIMIT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock25Mhz|TEMPORAL~clkctrl_outclk\,
	d => \LIMIT~3_combout\,
	ena => \Equal1~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => LIMIT(7));

-- Location: LCCOMB_X27_Y22_N24
\LIMIT~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LIMIT~0_combout\ = (\Add3~0_combout\) # (\Equal2~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~0_combout\,
	datad => \Equal2~9_combout\,
	combout => \LIMIT~0_combout\);

-- Location: FF_X27_Y22_N25
\LIMIT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock25Mhz|TEMPORAL~clkctrl_outclk\,
	d => \LIMIT~0_combout\,
	ena => \Equal1~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => LIMIT(1));

-- Location: LCCOMB_X26_Y22_N4
\Add3~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add3~2_combout\ = (LIMIT(2) & (!\Add3~1\)) # (!LIMIT(2) & ((\Add3~1\) # (GND)))
-- \Add3~3\ = CARRY((!\Add3~1\) # (!LIMIT(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => LIMIT(2),
	datad => VCC,
	cin => \Add3~1\,
	combout => \Add3~2_combout\,
	cout => \Add3~3\);

-- Location: FF_X26_Y22_N5
\LIMIT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock25Mhz|TEMPORAL~clkctrl_outclk\,
	d => \Add3~2_combout\,
	ena => \Equal1~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => LIMIT(2));

-- Location: LCCOMB_X26_Y22_N6
\Add3~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add3~4_combout\ = (LIMIT(3) & ((GND) # (!\Add3~3\))) # (!LIMIT(3) & (\Add3~3\ $ (GND)))
-- \Add3~5\ = CARRY((LIMIT(3)) # (!\Add3~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => LIMIT(3),
	datad => VCC,
	cin => \Add3~3\,
	combout => \Add3~4_combout\,
	cout => \Add3~5\);

-- Location: LCCOMB_X26_Y22_N10
\Add3~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add3~8_combout\ = (LIMIT(5) & (\Add3~7\ $ (GND))) # (!LIMIT(5) & (!\Add3~7\ & VCC))
-- \Add3~9\ = CARRY((LIMIT(5) & !\Add3~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => LIMIT(5),
	datad => VCC,
	cin => \Add3~7\,
	combout => \Add3~8_combout\,
	cout => \Add3~9\);

-- Location: FF_X26_Y22_N11
\LIMIT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock25Mhz|TEMPORAL~clkctrl_outclk\,
	d => \Add3~8_combout\,
	ena => \Equal1~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => LIMIT(5));

-- Location: LCCOMB_X27_Y22_N28
\Equal2~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal2~1_combout\ = (LIMIT(8) & (LIMIT(6) & (LIMIT(7) & !LIMIT(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => LIMIT(8),
	datab => LIMIT(6),
	datac => LIMIT(7),
	datad => LIMIT(5),
	combout => \Equal2~1_combout\);

-- Location: LCCOMB_X26_Y22_N18
\Add3~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add3~16_combout\ = (LIMIT(9) & (\Add3~15\ $ (GND))) # (!LIMIT(9) & (!\Add3~15\ & VCC))
-- \Add3~17\ = CARRY((LIMIT(9) & !\Add3~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => LIMIT(9),
	datad => VCC,
	cin => \Add3~15\,
	combout => \Add3~16_combout\,
	cout => \Add3~17\);

-- Location: FF_X26_Y22_N19
\LIMIT[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock25Mhz|TEMPORAL~clkctrl_outclk\,
	d => \Add3~16_combout\,
	ena => \Equal1~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => LIMIT(9));

-- Location: LCCOMB_X26_Y22_N20
\Add3~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add3~18_combout\ = (LIMIT(10) & (!\Add3~17\)) # (!LIMIT(10) & ((\Add3~17\) # (GND)))
-- \Add3~19\ = CARRY((!\Add3~17\) # (!LIMIT(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => LIMIT(10),
	datad => VCC,
	cin => \Add3~17\,
	combout => \Add3~18_combout\,
	cout => \Add3~19\);

-- Location: FF_X26_Y22_N21
\LIMIT[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock25Mhz|TEMPORAL~clkctrl_outclk\,
	d => \Add3~18_combout\,
	ena => \Equal1~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => LIMIT(10));

-- Location: LCCOMB_X26_Y22_N24
\Add3~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add3~22_combout\ = (LIMIT(12) & (!\Add3~21\)) # (!LIMIT(12) & ((\Add3~21\) # (GND)))
-- \Add3~23\ = CARRY((!\Add3~21\) # (!LIMIT(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => LIMIT(12),
	datad => VCC,
	cin => \Add3~21\,
	combout => \Add3~22_combout\,
	cout => \Add3~23\);

-- Location: FF_X26_Y22_N25
\LIMIT[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock25Mhz|TEMPORAL~clkctrl_outclk\,
	d => \Add3~22_combout\,
	ena => \Equal1~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => LIMIT(12));

-- Location: LCCOMB_X26_Y22_N26
\Add3~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add3~24_combout\ = (LIMIT(13) & (\Add3~23\ $ (GND))) # (!LIMIT(13) & (!\Add3~23\ & VCC))
-- \Add3~25\ = CARRY((LIMIT(13) & !\Add3~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => LIMIT(13),
	datad => VCC,
	cin => \Add3~23\,
	combout => \Add3~24_combout\,
	cout => \Add3~25\);

-- Location: LCCOMB_X26_Y22_N28
\Add3~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add3~26_combout\ = (LIMIT(14) & (!\Add3~25\)) # (!LIMIT(14) & ((\Add3~25\) # (GND)))
-- \Add3~27\ = CARRY((!\Add3~25\) # (!LIMIT(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => LIMIT(14),
	datad => VCC,
	cin => \Add3~25\,
	combout => \Add3~26_combout\,
	cout => \Add3~27\);

-- Location: FF_X26_Y22_N29
\LIMIT[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock25Mhz|TEMPORAL~clkctrl_outclk\,
	d => \Add3~26_combout\,
	ena => \Equal1~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => LIMIT(14));

-- Location: LCCOMB_X26_Y21_N0
\Add3~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add3~30_combout\ = (LIMIT(16) & (!\Add3~29\)) # (!LIMIT(16) & ((\Add3~29\) # (GND)))
-- \Add3~31\ = CARRY((!\Add3~29\) # (!LIMIT(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => LIMIT(16),
	datad => VCC,
	cin => \Add3~29\,
	combout => \Add3~30_combout\,
	cout => \Add3~31\);

-- Location: FF_X26_Y21_N1
\LIMIT[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock25Mhz|TEMPORAL~clkctrl_outclk\,
	d => \Add3~30_combout\,
	ena => \Equal1~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => LIMIT(16));

-- Location: FF_X26_Y22_N27
\LIMIT[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock25Mhz|TEMPORAL~clkctrl_outclk\,
	d => \Add3~24_combout\,
	ena => \Equal1~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => LIMIT(13));

-- Location: LCCOMB_X27_Y22_N22
\Equal2~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal2~3_combout\ = (!LIMIT(15) & (!LIMIT(16) & (!LIMIT(13) & !LIMIT(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => LIMIT(15),
	datab => LIMIT(16),
	datac => LIMIT(13),
	datad => LIMIT(14),
	combout => \Equal2~3_combout\);

-- Location: FF_X26_Y22_N7
\LIMIT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock25Mhz|TEMPORAL~clkctrl_outclk\,
	d => \Add3~4_combout\,
	ena => \Equal1~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => LIMIT(3));

-- Location: LCCOMB_X27_Y22_N0
\Equal2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal2~0_combout\ = (!LIMIT(4) & (!LIMIT(2) & (!LIMIT(3) & LIMIT(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => LIMIT(4),
	datab => LIMIT(2),
	datac => LIMIT(3),
	datad => LIMIT(1),
	combout => \Equal2~0_combout\);

-- Location: LCCOMB_X27_Y22_N16
\Equal2~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal2~4_combout\ = (\Equal2~2_combout\ & (\Equal2~1_combout\ & (\Equal2~3_combout\ & \Equal2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal2~2_combout\,
	datab => \Equal2~1_combout\,
	datac => \Equal2~3_combout\,
	datad => \Equal2~0_combout\,
	combout => \Equal2~4_combout\);

-- Location: LCCOMB_X26_Y21_N2
\Add3~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add3~32_combout\ = (LIMIT(17) & (\Add3~31\ $ (GND))) # (!LIMIT(17) & (!\Add3~31\ & VCC))
-- \Add3~33\ = CARRY((LIMIT(17) & !\Add3~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => LIMIT(17),
	datad => VCC,
	cin => \Add3~31\,
	combout => \Add3~32_combout\,
	cout => \Add3~33\);

-- Location: FF_X26_Y21_N3
\LIMIT[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock25Mhz|TEMPORAL~clkctrl_outclk\,
	d => \Add3~32_combout\,
	ena => \Equal1~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => LIMIT(17));

-- Location: LCCOMB_X26_Y21_N4
\Add3~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add3~34_combout\ = (LIMIT(18) & (!\Add3~33\)) # (!LIMIT(18) & ((\Add3~33\) # (GND)))
-- \Add3~35\ = CARRY((!\Add3~33\) # (!LIMIT(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => LIMIT(18),
	datad => VCC,
	cin => \Add3~33\,
	combout => \Add3~34_combout\,
	cout => \Add3~35\);

-- Location: FF_X26_Y21_N5
\LIMIT[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock25Mhz|TEMPORAL~clkctrl_outclk\,
	d => \Add3~34_combout\,
	ena => \Equal1~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => LIMIT(18));

-- Location: LCCOMB_X26_Y21_N8
\Add3~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add3~38_combout\ = (LIMIT(20) & (!\Add3~37\)) # (!LIMIT(20) & ((\Add3~37\) # (GND)))
-- \Add3~39\ = CARRY((!\Add3~37\) # (!LIMIT(20)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => LIMIT(20),
	datad => VCC,
	cin => \Add3~37\,
	combout => \Add3~38_combout\,
	cout => \Add3~39\);

-- Location: FF_X26_Y21_N9
\LIMIT[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock25Mhz|TEMPORAL~clkctrl_outclk\,
	d => \Add3~38_combout\,
	ena => \Equal1~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => LIMIT(20));

-- Location: LCCOMB_X26_Y21_N10
\Add3~40\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add3~40_combout\ = (LIMIT(21) & (\Add3~39\ $ (GND))) # (!LIMIT(21) & (!\Add3~39\ & VCC))
-- \Add3~41\ = CARRY((LIMIT(21) & !\Add3~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => LIMIT(21),
	datad => VCC,
	cin => \Add3~39\,
	combout => \Add3~40_combout\,
	cout => \Add3~41\);

-- Location: LCCOMB_X26_Y21_N12
\Add3~42\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add3~42_combout\ = (LIMIT(22) & (!\Add3~41\)) # (!LIMIT(22) & ((\Add3~41\) # (GND)))
-- \Add3~43\ = CARRY((!\Add3~41\) # (!LIMIT(22)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => LIMIT(22),
	datad => VCC,
	cin => \Add3~41\,
	combout => \Add3~42_combout\,
	cout => \Add3~43\);

-- Location: FF_X26_Y21_N13
\LIMIT[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock25Mhz|TEMPORAL~clkctrl_outclk\,
	d => \Add3~42_combout\,
	ena => \Equal1~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => LIMIT(22));

-- Location: LCCOMB_X26_Y21_N14
\Add3~44\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add3~44_combout\ = (LIMIT(23) & (\Add3~43\ $ (GND))) # (!LIMIT(23) & (!\Add3~43\ & VCC))
-- \Add3~45\ = CARRY((LIMIT(23) & !\Add3~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => LIMIT(23),
	datad => VCC,
	cin => \Add3~43\,
	combout => \Add3~44_combout\,
	cout => \Add3~45\);

-- Location: FF_X26_Y21_N15
\LIMIT[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock25Mhz|TEMPORAL~clkctrl_outclk\,
	d => \Add3~44_combout\,
	ena => \Equal1~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => LIMIT(23));

-- Location: LCCOMB_X26_Y21_N16
\Add3~46\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add3~46_combout\ = (LIMIT(24) & (!\Add3~45\)) # (!LIMIT(24) & ((\Add3~45\) # (GND)))
-- \Add3~47\ = CARRY((!\Add3~45\) # (!LIMIT(24)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => LIMIT(24),
	datad => VCC,
	cin => \Add3~45\,
	combout => \Add3~46_combout\,
	cout => \Add3~47\);

-- Location: FF_X26_Y21_N17
\LIMIT[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock25Mhz|TEMPORAL~clkctrl_outclk\,
	d => \Add3~46_combout\,
	ena => \Equal1~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => LIMIT(24));

-- Location: FF_X26_Y21_N11
\LIMIT[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock25Mhz|TEMPORAL~clkctrl_outclk\,
	d => \Add3~40_combout\,
	ena => \Equal1~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => LIMIT(21));

-- Location: LCCOMB_X27_Y21_N10
\Equal2~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal2~6_combout\ = (!LIMIT(23) & (!LIMIT(22) & (!LIMIT(24) & !LIMIT(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => LIMIT(23),
	datab => LIMIT(22),
	datac => LIMIT(24),
	datad => LIMIT(21),
	combout => \Equal2~6_combout\);

-- Location: LCCOMB_X26_Y21_N18
\Add3~48\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add3~48_combout\ = (LIMIT(25) & (\Add3~47\ $ (GND))) # (!LIMIT(25) & (!\Add3~47\ & VCC))
-- \Add3~49\ = CARRY((LIMIT(25) & !\Add3~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => LIMIT(25),
	datad => VCC,
	cin => \Add3~47\,
	combout => \Add3~48_combout\,
	cout => \Add3~49\);

-- Location: FF_X26_Y21_N19
\LIMIT[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock25Mhz|TEMPORAL~clkctrl_outclk\,
	d => \Add3~48_combout\,
	ena => \Equal1~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => LIMIT(25));

-- Location: LCCOMB_X26_Y21_N20
\Add3~50\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add3~50_combout\ = (LIMIT(26) & (!\Add3~49\)) # (!LIMIT(26) & ((\Add3~49\) # (GND)))
-- \Add3~51\ = CARRY((!\Add3~49\) # (!LIMIT(26)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => LIMIT(26),
	datad => VCC,
	cin => \Add3~49\,
	combout => \Add3~50_combout\,
	cout => \Add3~51\);

-- Location: FF_X26_Y21_N21
\LIMIT[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock25Mhz|TEMPORAL~clkctrl_outclk\,
	d => \Add3~50_combout\,
	ena => \Equal1~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => LIMIT(26));

-- Location: LCCOMB_X26_Y21_N22
\Add3~52\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add3~52_combout\ = (LIMIT(27) & (\Add3~51\ $ (GND))) # (!LIMIT(27) & (!\Add3~51\ & VCC))
-- \Add3~53\ = CARRY((LIMIT(27) & !\Add3~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => LIMIT(27),
	datad => VCC,
	cin => \Add3~51\,
	combout => \Add3~52_combout\,
	cout => \Add3~53\);

-- Location: LCCOMB_X26_Y21_N24
\Add3~54\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add3~54_combout\ = (LIMIT(28) & (!\Add3~53\)) # (!LIMIT(28) & ((\Add3~53\) # (GND)))
-- \Add3~55\ = CARRY((!\Add3~53\) # (!LIMIT(28)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => LIMIT(28),
	datad => VCC,
	cin => \Add3~53\,
	combout => \Add3~54_combout\,
	cout => \Add3~55\);

-- Location: FF_X26_Y21_N25
\LIMIT[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock25Mhz|TEMPORAL~clkctrl_outclk\,
	d => \Add3~54_combout\,
	ena => \Equal1~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => LIMIT(28));

-- Location: LCCOMB_X26_Y21_N26
\Add3~56\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add3~56_combout\ = (LIMIT(29) & (\Add3~55\ $ (GND))) # (!LIMIT(29) & (!\Add3~55\ & VCC))
-- \Add3~57\ = CARRY((LIMIT(29) & !\Add3~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => LIMIT(29),
	datad => VCC,
	cin => \Add3~55\,
	combout => \Add3~56_combout\,
	cout => \Add3~57\);

-- Location: LCCOMB_X26_Y21_N28
\Add3~58\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add3~58_combout\ = (LIMIT(30) & (!\Add3~57\)) # (!LIMIT(30) & ((\Add3~57\) # (GND)))
-- \Add3~59\ = CARRY((!\Add3~57\) # (!LIMIT(30)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => LIMIT(30),
	datad => VCC,
	cin => \Add3~57\,
	combout => \Add3~58_combout\,
	cout => \Add3~59\);

-- Location: FF_X26_Y21_N29
\LIMIT[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock25Mhz|TEMPORAL~clkctrl_outclk\,
	d => \Add3~58_combout\,
	ena => \Equal1~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => LIMIT(30));

-- Location: LCCOMB_X26_Y21_N30
\Add3~60\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add3~60_combout\ = LIMIT(31) $ (!\Add3~59\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => LIMIT(31),
	cin => \Add3~59\,
	combout => \Add3~60_combout\);

-- Location: FF_X26_Y21_N31
\LIMIT[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock25Mhz|TEMPORAL~clkctrl_outclk\,
	d => \Add3~60_combout\,
	ena => \Equal1~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => LIMIT(31));

-- Location: FF_X26_Y21_N27
\LIMIT[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock25Mhz|TEMPORAL~clkctrl_outclk\,
	d => \Add3~56_combout\,
	ena => \Equal1~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => LIMIT(29));

-- Location: FF_X26_Y21_N23
\LIMIT[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock25Mhz|TEMPORAL~clkctrl_outclk\,
	d => \Add3~52_combout\,
	ena => \Equal1~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => LIMIT(27));

-- Location: LCCOMB_X27_Y21_N0
\Equal2~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal2~7_combout\ = (!LIMIT(26) & (!LIMIT(25) & (!LIMIT(27) & !LIMIT(28))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => LIMIT(26),
	datab => LIMIT(25),
	datac => LIMIT(27),
	datad => LIMIT(28),
	combout => \Equal2~7_combout\);

-- Location: LCCOMB_X27_Y22_N10
\Equal2~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal2~8_combout\ = (!LIMIT(30) & (!LIMIT(31) & (!LIMIT(29) & \Equal2~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => LIMIT(30),
	datab => LIMIT(31),
	datac => LIMIT(29),
	datad => \Equal2~7_combout\,
	combout => \Equal2~8_combout\);

-- Location: LCCOMB_X27_Y22_N12
\Equal2~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal2~9_combout\ = (\Equal2~5_combout\ & (\Equal2~4_combout\ & (\Equal2~6_combout\ & \Equal2~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal2~5_combout\,
	datab => \Equal2~4_combout\,
	datac => \Equal2~6_combout\,
	datad => \Equal2~8_combout\,
	combout => \Equal2~9_combout\);

-- Location: LCCOMB_X27_Y24_N6
\Add2~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~4_combout\ = (VEND(3) & (\Add2~3\ $ (GND))) # (!VEND(3) & ((GND) # (!\Add2~3\)))
-- \Add2~5\ = CARRY((!\Add2~3\) # (!VEND(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => VEND(3),
	datad => VCC,
	cin => \Add2~3\,
	combout => \Add2~4_combout\,
	cout => \Add2~5\);

-- Location: LCCOMB_X27_Y22_N26
\Add2~90\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~90_combout\ = (!\Equal2~9_combout\ & !\Add2~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal2~9_combout\,
	datad => \Add2~4_combout\,
	combout => \Add2~90_combout\);

-- Location: FF_X27_Y22_N27
\VEND[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock25Mhz|TEMPORAL~clkctrl_outclk\,
	d => \Add2~90_combout\,
	ena => \Equal1~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => VEND(3));

-- Location: LCCOMB_X27_Y24_N10
\Add2~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~8_combout\ = (VEND(5) & (\Add2~7\ $ (GND))) # (!VEND(5) & (!\Add2~7\ & VCC))
-- \Add2~9\ = CARRY((VEND(5) & !\Add2~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => VEND(5),
	datad => VCC,
	cin => \Add2~7\,
	combout => \Add2~8_combout\,
	cout => \Add2~9\);

-- Location: LCCOMB_X27_Y24_N0
\Add2~64\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~64_combout\ = (!\Equal2~9_combout\ & \Add2~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Equal2~9_combout\,
	datad => \Add2~8_combout\,
	combout => \Add2~64_combout\);

-- Location: FF_X27_Y24_N1
\VEND[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock25Mhz|TEMPORAL~clkctrl_outclk\,
	d => \Add2~64_combout\,
	ena => \Equal1~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => VEND(5));

-- Location: LCCOMB_X27_Y24_N14
\Add2~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~12_combout\ = (VEND(7) & (\Add2~11\ $ (GND))) # (!VEND(7) & (!\Add2~11\ & VCC))
-- \Add2~13\ = CARRY((VEND(7) & !\Add2~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => VEND(7),
	datad => VCC,
	cin => \Add2~11\,
	combout => \Add2~12_combout\,
	cout => \Add2~13\);

-- Location: LCCOMB_X26_Y24_N28
\Add2~66\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~66_combout\ = (!\Equal2~9_combout\ & \Add2~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal2~9_combout\,
	datac => \Add2~12_combout\,
	combout => \Add2~66_combout\);

-- Location: FF_X26_Y24_N29
\VEND[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock25Mhz|TEMPORAL~clkctrl_outclk\,
	d => \Add2~66_combout\,
	ena => \Equal1~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => VEND(7));

-- Location: LCCOMB_X27_Y24_N16
\Add2~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~14_combout\ = (VEND(8) & (!\Add2~13\)) # (!VEND(8) & ((\Add2~13\) # (GND)))
-- \Add2~15\ = CARRY((!\Add2~13\) # (!VEND(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => VEND(8),
	datad => VCC,
	cin => \Add2~13\,
	combout => \Add2~14_combout\,
	cout => \Add2~15\);

-- Location: LCCOMB_X28_Y24_N28
\Add2~67\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~67_combout\ = (\Add2~14_combout\ & !\Equal2~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add2~14_combout\,
	datad => \Equal2~9_combout\,
	combout => \Add2~67_combout\);

-- Location: FF_X28_Y24_N29
\VEND[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock25Mhz|TEMPORAL~clkctrl_outclk\,
	d => \Add2~67_combout\,
	ena => \Equal1~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => VEND(8));

-- Location: LCCOMB_X27_Y24_N18
\Add2~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~16_combout\ = (VEND(9) & (\Add2~15\ $ (GND))) # (!VEND(9) & (!\Add2~15\ & VCC))
-- \Add2~17\ = CARRY((VEND(9) & !\Add2~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => VEND(9),
	datad => VCC,
	cin => \Add2~15\,
	combout => \Add2~16_combout\,
	cout => \Add2~17\);

-- Location: LCCOMB_X27_Y24_N20
\Add2~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~18_combout\ = (VEND(10) & (!\Add2~17\)) # (!VEND(10) & ((\Add2~17\) # (GND)))
-- \Add2~19\ = CARRY((!\Add2~17\) # (!VEND(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => VEND(10),
	datad => VCC,
	cin => \Add2~17\,
	combout => \Add2~18_combout\,
	cout => \Add2~19\);

-- Location: LCCOMB_X27_Y24_N22
\Add2~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~20_combout\ = (VEND(11) & (\Add2~19\ $ (GND))) # (!VEND(11) & (!\Add2~19\ & VCC))
-- \Add2~21\ = CARRY((VEND(11) & !\Add2~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => VEND(11),
	datad => VCC,
	cin => \Add2~19\,
	combout => \Add2~20_combout\,
	cout => \Add2~21\);

-- Location: LCCOMB_X28_Y24_N26
\Add2~70\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~70_combout\ = (!\Equal2~9_combout\ & \Add2~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal2~9_combout\,
	datad => \Add2~20_combout\,
	combout => \Add2~70_combout\);

-- Location: FF_X28_Y24_N27
\VEND[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock25Mhz|TEMPORAL~clkctrl_outclk\,
	d => \Add2~70_combout\,
	ena => \Equal1~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => VEND(11));

-- Location: LCCOMB_X27_Y24_N24
\Add2~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~22_combout\ = (VEND(12) & (!\Add2~21\)) # (!VEND(12) & ((\Add2~21\) # (GND)))
-- \Add2~23\ = CARRY((!\Add2~21\) # (!VEND(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => VEND(12),
	datad => VCC,
	cin => \Add2~21\,
	combout => \Add2~22_combout\,
	cout => \Add2~23\);

-- Location: LCCOMB_X27_Y22_N20
\Add2~71\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~71_combout\ = (!\Equal2~9_combout\ & \Add2~22_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal2~9_combout\,
	datad => \Add2~22_combout\,
	combout => \Add2~71_combout\);

-- Location: FF_X27_Y22_N21
\VEND[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock25Mhz|TEMPORAL~clkctrl_outclk\,
	d => \Add2~71_combout\,
	ena => \Equal1~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => VEND(12));

-- Location: LCCOMB_X27_Y24_N26
\Add2~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~24_combout\ = (VEND(13) & (\Add2~23\ $ (GND))) # (!VEND(13) & (!\Add2~23\ & VCC))
-- \Add2~25\ = CARRY((VEND(13) & !\Add2~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => VEND(13),
	datad => VCC,
	cin => \Add2~23\,
	combout => \Add2~24_combout\,
	cout => \Add2~25\);

-- Location: LCCOMB_X27_Y24_N28
\Add2~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~26_combout\ = (VEND(14) & (!\Add2~25\)) # (!VEND(14) & ((\Add2~25\) # (GND)))
-- \Add2~27\ = CARRY((!\Add2~25\) # (!VEND(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => VEND(14),
	datad => VCC,
	cin => \Add2~25\,
	combout => \Add2~26_combout\,
	cout => \Add2~27\);

-- Location: LCCOMB_X26_Y24_N6
\Add2~73\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~73_combout\ = (!\Equal2~9_combout\ & \Add2~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Equal2~9_combout\,
	datad => \Add2~26_combout\,
	combout => \Add2~73_combout\);

-- Location: FF_X26_Y24_N7
\VEND[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock25Mhz|TEMPORAL~clkctrl_outclk\,
	d => \Add2~73_combout\,
	ena => \Equal1~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => VEND(14));

-- Location: LCCOMB_X27_Y24_N30
\Add2~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~28_combout\ = (VEND(15) & (\Add2~27\ $ (GND))) # (!VEND(15) & (!\Add2~27\ & VCC))
-- \Add2~29\ = CARRY((VEND(15) & !\Add2~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => VEND(15),
	datad => VCC,
	cin => \Add2~27\,
	combout => \Add2~28_combout\,
	cout => \Add2~29\);

-- Location: LCCOMB_X26_Y24_N4
\Add2~74\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~74_combout\ = (!\Equal2~9_combout\ & \Add2~28_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal2~9_combout\,
	datac => \Add2~28_combout\,
	combout => \Add2~74_combout\);

-- Location: FF_X26_Y24_N5
\VEND[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock25Mhz|TEMPORAL~clkctrl_outclk\,
	d => \Add2~74_combout\,
	ena => \Equal1~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => VEND(15));

-- Location: LCCOMB_X27_Y23_N0
\Add2~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~30_combout\ = (VEND(16) & (!\Add2~29\)) # (!VEND(16) & ((\Add2~29\) # (GND)))
-- \Add2~31\ = CARRY((!\Add2~29\) # (!VEND(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => VEND(16),
	datad => VCC,
	cin => \Add2~29\,
	combout => \Add2~30_combout\,
	cout => \Add2~31\);

-- Location: LCCOMB_X27_Y23_N2
\Add2~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~32_combout\ = (VEND(17) & (\Add2~31\ $ (GND))) # (!VEND(17) & (!\Add2~31\ & VCC))
-- \Add2~33\ = CARRY((VEND(17) & !\Add2~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => VEND(17),
	datad => VCC,
	cin => \Add2~31\,
	combout => \Add2~32_combout\,
	cout => \Add2~33\);

-- Location: LCCOMB_X26_Y24_N22
\Add2~76\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~76_combout\ = (!\Equal2~9_combout\ & \Add2~32_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Equal2~9_combout\,
	datad => \Add2~32_combout\,
	combout => \Add2~76_combout\);

-- Location: FF_X26_Y24_N23
\VEND[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock25Mhz|TEMPORAL~clkctrl_outclk\,
	d => \Add2~76_combout\,
	ena => \Equal1~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => VEND(17));

-- Location: LCCOMB_X27_Y23_N4
\Add2~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~34_combout\ = (VEND(18) & (!\Add2~33\)) # (!VEND(18) & ((\Add2~33\) # (GND)))
-- \Add2~35\ = CARRY((!\Add2~33\) # (!VEND(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => VEND(18),
	datad => VCC,
	cin => \Add2~33\,
	combout => \Add2~34_combout\,
	cout => \Add2~35\);

-- Location: LCCOMB_X27_Y23_N8
\Add2~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~38_combout\ = (VEND(20) & (!\Add2~37\)) # (!VEND(20) & ((\Add2~37\) # (GND)))
-- \Add2~39\ = CARRY((!\Add2~37\) # (!VEND(20)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => VEND(20),
	datad => VCC,
	cin => \Add2~37\,
	combout => \Add2~38_combout\,
	cout => \Add2~39\);

-- Location: LCCOMB_X26_Y23_N6
\Add2~79\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~79_combout\ = (\Add2~38_combout\ & !\Equal2~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add2~38_combout\,
	datad => \Equal2~9_combout\,
	combout => \Add2~79_combout\);

-- Location: FF_X26_Y23_N7
\VEND[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock25Mhz|TEMPORAL~clkctrl_outclk\,
	d => \Add2~79_combout\,
	ena => \Equal1~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => VEND(20));

-- Location: LCCOMB_X27_Y23_N10
\Add2~40\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~40_combout\ = (VEND(21) & (\Add2~39\ $ (GND))) # (!VEND(21) & (!\Add2~39\ & VCC))
-- \Add2~41\ = CARRY((VEND(21) & !\Add2~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => VEND(21),
	datad => VCC,
	cin => \Add2~39\,
	combout => \Add2~40_combout\,
	cout => \Add2~41\);

-- Location: LCCOMB_X26_Y23_N16
\Add2~80\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~80_combout\ = (\Add2~40_combout\ & !\Equal2~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add2~40_combout\,
	datad => \Equal2~9_combout\,
	combout => \Add2~80_combout\);

-- Location: FF_X26_Y23_N17
\VEND[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock25Mhz|TEMPORAL~clkctrl_outclk\,
	d => \Add2~80_combout\,
	ena => \Equal1~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => VEND(21));

-- Location: LCCOMB_X27_Y23_N12
\Add2~42\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~42_combout\ = (VEND(22) & (!\Add2~41\)) # (!VEND(22) & ((\Add2~41\) # (GND)))
-- \Add2~43\ = CARRY((!\Add2~41\) # (!VEND(22)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => VEND(22),
	datad => VCC,
	cin => \Add2~41\,
	combout => \Add2~42_combout\,
	cout => \Add2~43\);

-- Location: LCCOMB_X26_Y23_N30
\Add2~81\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~81_combout\ = (\Add2~42_combout\ & !\Equal2~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add2~42_combout\,
	datad => \Equal2~9_combout\,
	combout => \Add2~81_combout\);

-- Location: FF_X26_Y23_N31
\VEND[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock25Mhz|TEMPORAL~clkctrl_outclk\,
	d => \Add2~81_combout\,
	ena => \Equal1~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => VEND(22));

-- Location: LCCOMB_X27_Y23_N14
\Add2~44\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~44_combout\ = (VEND(23) & (\Add2~43\ $ (GND))) # (!VEND(23) & (!\Add2~43\ & VCC))
-- \Add2~45\ = CARRY((VEND(23) & !\Add2~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => VEND(23),
	datad => VCC,
	cin => \Add2~43\,
	combout => \Add2~44_combout\,
	cout => \Add2~45\);

-- Location: LCCOMB_X26_Y23_N8
\Add2~82\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~82_combout\ = (\Add2~44_combout\ & !\Equal2~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add2~44_combout\,
	datad => \Equal2~9_combout\,
	combout => \Add2~82_combout\);

-- Location: FF_X26_Y23_N9
\VEND[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock25Mhz|TEMPORAL~clkctrl_outclk\,
	d => \Add2~82_combout\,
	ena => \Equal1~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => VEND(23));

-- Location: LCCOMB_X26_Y23_N14
\LessThan7~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan7~5_combout\ = (!VEND(20) & (!VEND(21) & (!VEND(22) & !VEND(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => VEND(20),
	datab => VEND(21),
	datac => VEND(22),
	datad => VEND(23),
	combout => \LessThan7~5_combout\);

-- Location: LCCOMB_X26_Y24_N24
\Add2~75\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~75_combout\ = (!\Equal2~9_combout\ & \Add2~30_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Equal2~9_combout\,
	datad => \Add2~30_combout\,
	combout => \Add2~75_combout\);

-- Location: FF_X26_Y24_N25
\VEND[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock25Mhz|TEMPORAL~clkctrl_outclk\,
	d => \Add2~75_combout\,
	ena => \Equal1~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => VEND(16));

-- Location: LCCOMB_X26_Y24_N0
\Add2~77\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~77_combout\ = (!\Equal2~9_combout\ & \Add2~34_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Equal2~9_combout\,
	datad => \Add2~34_combout\,
	combout => \Add2~77_combout\);

-- Location: FF_X26_Y24_N1
\VEND[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock25Mhz|TEMPORAL~clkctrl_outclk\,
	d => \Add2~77_combout\,
	ena => \Equal1~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => VEND(18));

-- Location: LCCOMB_X26_Y24_N20
\LessThan7~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan7~3_combout\ = (!VEND(19) & (!VEND(16) & (!VEND(17) & !VEND(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => VEND(19),
	datab => VEND(16),
	datac => VEND(17),
	datad => VEND(18),
	combout => \LessThan7~3_combout\);

-- Location: LCCOMB_X28_Y24_N4
\Add2~69\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~69_combout\ = (!\Equal2~9_combout\ & \Add2~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal2~9_combout\,
	datad => \Add2~18_combout\,
	combout => \Add2~69_combout\);

-- Location: FF_X28_Y24_N5
\VEND[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock25Mhz|TEMPORAL~clkctrl_outclk\,
	d => \Add2~69_combout\,
	ena => \Equal1~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => VEND(10));

-- Location: LCCOMB_X28_Y24_N2
\Add2~68\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~68_combout\ = (!\Equal2~9_combout\ & \Add2~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal2~9_combout\,
	datad => \Add2~16_combout\,
	combout => \Add2~68_combout\);

-- Location: FF_X28_Y24_N3
\VEND[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock25Mhz|TEMPORAL~clkctrl_outclk\,
	d => \Add2~68_combout\,
	ena => \Equal1~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => VEND(9));

-- Location: LCCOMB_X28_Y24_N0
\LessThan7~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan7~1_combout\ = (!VEND(11) & (!VEND(8) & (!VEND(10) & !VEND(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => VEND(11),
	datab => VEND(8),
	datac => VEND(10),
	datad => VEND(9),
	combout => \LessThan7~1_combout\);

-- Location: LCCOMB_X26_Y24_N16
\Add2~72\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~72_combout\ = (!\Equal2~9_combout\ & \Add2~24_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Equal2~9_combout\,
	datad => \Add2~24_combout\,
	combout => \Add2~72_combout\);

-- Location: FF_X26_Y24_N17
\VEND[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock25Mhz|TEMPORAL~clkctrl_outclk\,
	d => \Add2~72_combout\,
	ena => \Equal1~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => VEND(13));

-- Location: LCCOMB_X26_Y24_N18
\LessThan7~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan7~2_combout\ = (!VEND(14) & (!VEND(13) & (!VEND(15) & !VEND(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => VEND(14),
	datab => VEND(13),
	datac => VEND(15),
	datad => VEND(12),
	combout => \LessThan7~2_combout\);

-- Location: LCCOMB_X26_Y24_N30
\LessThan7~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan7~4_combout\ = (\LessThan7~0_combout\ & (\LessThan7~3_combout\ & (\LessThan7~1_combout\ & \LessThan7~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan7~0_combout\,
	datab => \LessThan7~3_combout\,
	datac => \LessThan7~1_combout\,
	datad => \LessThan7~2_combout\,
	combout => \LessThan7~4_combout\);

-- Location: LCCOMB_X27_Y23_N16
\Add2~46\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~46_combout\ = (VEND(24) & (!\Add2~45\)) # (!VEND(24) & ((\Add2~45\) # (GND)))
-- \Add2~47\ = CARRY((!\Add2~45\) # (!VEND(24)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => VEND(24),
	datad => VCC,
	cin => \Add2~45\,
	combout => \Add2~46_combout\,
	cout => \Add2~47\);

-- Location: LCCOMB_X27_Y23_N18
\Add2~48\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~48_combout\ = (VEND(25) & (\Add2~47\ $ (GND))) # (!VEND(25) & (!\Add2~47\ & VCC))
-- \Add2~49\ = CARRY((VEND(25) & !\Add2~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => VEND(25),
	datad => VCC,
	cin => \Add2~47\,
	combout => \Add2~48_combout\,
	cout => \Add2~49\);

-- Location: LCCOMB_X27_Y23_N20
\Add2~50\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~50_combout\ = (VEND(26) & (!\Add2~49\)) # (!VEND(26) & ((\Add2~49\) # (GND)))
-- \Add2~51\ = CARRY((!\Add2~49\) # (!VEND(26)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => VEND(26),
	datad => VCC,
	cin => \Add2~49\,
	combout => \Add2~50_combout\,
	cout => \Add2~51\);

-- Location: LCCOMB_X27_Y23_N22
\Add2~52\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~52_combout\ = (VEND(27) & (\Add2~51\ $ (GND))) # (!VEND(27) & (!\Add2~51\ & VCC))
-- \Add2~53\ = CARRY((VEND(27) & !\Add2~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => VEND(27),
	datad => VCC,
	cin => \Add2~51\,
	combout => \Add2~52_combout\,
	cout => \Add2~53\);

-- Location: LCCOMB_X26_Y23_N10
\Add2~86\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~86_combout\ = (!\Equal2~9_combout\ & \Add2~52_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal2~9_combout\,
	datad => \Add2~52_combout\,
	combout => \Add2~86_combout\);

-- Location: FF_X26_Y23_N11
\VEND[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock25Mhz|TEMPORAL~clkctrl_outclk\,
	d => \Add2~86_combout\,
	ena => \Equal1~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => VEND(27));

-- Location: LCCOMB_X27_Y23_N26
\Add2~56\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~56_combout\ = (VEND(29) & (\Add2~55\ $ (GND))) # (!VEND(29) & (!\Add2~55\ & VCC))
-- \Add2~57\ = CARRY((VEND(29) & !\Add2~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => VEND(29),
	datad => VCC,
	cin => \Add2~55\,
	combout => \Add2~56_combout\,
	cout => \Add2~57\);

-- Location: LCCOMB_X26_Y23_N20
\Add2~88\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~88_combout\ = (!\Equal2~9_combout\ & \Add2~56_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal2~9_combout\,
	datad => \Add2~56_combout\,
	combout => \Add2~88_combout\);

-- Location: FF_X26_Y23_N21
\VEND[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock25Mhz|TEMPORAL~clkctrl_outclk\,
	d => \Add2~88_combout\,
	ena => \Equal1~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => VEND(29));

-- Location: LCCOMB_X26_Y23_N28
\Add2~85\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~85_combout\ = (\Add2~50_combout\ & !\Equal2~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add2~50_combout\,
	datad => \Equal2~9_combout\,
	combout => \Add2~85_combout\);

-- Location: FF_X26_Y23_N29
\VEND[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock25Mhz|TEMPORAL~clkctrl_outclk\,
	d => \Add2~85_combout\,
	ena => \Equal1~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => VEND(26));

-- Location: LCCOMB_X26_Y23_N26
\Add2~84\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~84_combout\ = (!\Equal2~9_combout\ & \Add2~48_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal2~9_combout\,
	datad => \Add2~48_combout\,
	combout => \Add2~84_combout\);

-- Location: FF_X26_Y23_N27
\VEND[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock25Mhz|TEMPORAL~clkctrl_outclk\,
	d => \Add2~84_combout\,
	ena => \Equal1~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => VEND(25));

-- Location: LCCOMB_X26_Y23_N12
\Add2~83\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~83_combout\ = (!\Equal2~9_combout\ & \Add2~46_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal2~9_combout\,
	datad => \Add2~46_combout\,
	combout => \Add2~83_combout\);

-- Location: FF_X26_Y23_N13
\VEND[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock25Mhz|TEMPORAL~clkctrl_outclk\,
	d => \Add2~83_combout\,
	ena => \Equal1~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => VEND(24));

-- Location: LCCOMB_X26_Y23_N4
\LessThan7~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan7~6_combout\ = (!VEND(27) & (!VEND(26) & (!VEND(25) & !VEND(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => VEND(27),
	datab => VEND(26),
	datac => VEND(25),
	datad => VEND(24),
	combout => \LessThan7~6_combout\);

-- Location: LCCOMB_X26_Y23_N2
\Add2~89\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~89_combout\ = (!\Equal2~9_combout\ & \Add2~58_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal2~9_combout\,
	datad => \Add2~58_combout\,
	combout => \Add2~89_combout\);

-- Location: FF_X26_Y23_N3
\VEND[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock25Mhz|TEMPORAL~clkctrl_outclk\,
	d => \Add2~89_combout\,
	ena => \Equal1~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => VEND(30));

-- Location: LCCOMB_X26_Y23_N0
\LessThan7~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan7~7_combout\ = (!VEND(28) & (!VEND(29) & (\LessThan7~6_combout\ & !VEND(30))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => VEND(28),
	datab => VEND(29),
	datac => \LessThan7~6_combout\,
	datad => VEND(30),
	combout => \LessThan7~7_combout\);

-- Location: LCCOMB_X26_Y23_N18
\LessThan7~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan7~8_combout\ = (VEND(31)) # ((\LessThan7~5_combout\ & (\LessThan7~4_combout\ & \LessThan7~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => VEND(31),
	datab => \LessThan7~5_combout\,
	datac => \LessThan7~4_combout\,
	datad => \LessThan7~7_combout\,
	combout => \LessThan7~8_combout\);

-- Location: IOIBUF_X32_Y29_N29
\Move_left~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Move_left,
	o => \Move_left~input_o\);

-- Location: LCCOMB_X33_Y26_N10
\Add8~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add8~0_combout\ = FEND(1) $ (GND)
-- \Add8~1\ = CARRY(!FEND(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => FEND(1),
	datad => VCC,
	combout => \Add8~0_combout\,
	cout => \Add8~1\);

-- Location: LCCOMB_X33_Y26_N8
\FEND[1]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \FEND[1]~4_combout\ = !\Add8~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Add8~0_combout\,
	combout => \FEND[1]~4_combout\);

-- Location: IOIBUF_X32_Y29_N1
\Move_right~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Move_right,
	o => \Move_right~input_o\);

-- Location: LCCOMB_X33_Y28_N2
\Add9~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add9~2_combout\ = (\MOVIMIENTO_HORIZONTAL:CONTADOR[1]~q\ & (!\Add9~1\)) # (!\MOVIMIENTO_HORIZONTAL:CONTADOR[1]~q\ & ((\Add9~1\) # (GND)))
-- \Add9~3\ = CARRY((!\Add9~1\) # (!\MOVIMIENTO_HORIZONTAL:CONTADOR[1]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \MOVIMIENTO_HORIZONTAL:CONTADOR[1]~q\,
	datad => VCC,
	cin => \Add9~1\,
	combout => \Add9~2_combout\,
	cout => \Add9~3\);

-- Location: FF_X33_Y28_N3
\MOVIMIENTO_HORIZONTAL:CONTADOR[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock25Mhz|TEMPORAL~clkctrl_outclk\,
	d => \Add9~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MOVIMIENTO_HORIZONTAL:CONTADOR[1]~q\);

-- Location: LCCOMB_X33_Y28_N4
\Add9~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add9~4_combout\ = (\MOVIMIENTO_HORIZONTAL:CONTADOR[2]~q\ & (\Add9~3\ $ (GND))) # (!\MOVIMIENTO_HORIZONTAL:CONTADOR[2]~q\ & (!\Add9~3\ & VCC))
-- \Add9~5\ = CARRY((\MOVIMIENTO_HORIZONTAL:CONTADOR[2]~q\ & !\Add9~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \MOVIMIENTO_HORIZONTAL:CONTADOR[2]~q\,
	datad => VCC,
	cin => \Add9~3\,
	combout => \Add9~4_combout\,
	cout => \Add9~5\);

-- Location: FF_X33_Y28_N5
\MOVIMIENTO_HORIZONTAL:CONTADOR[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock25Mhz|TEMPORAL~clkctrl_outclk\,
	d => \Add9~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MOVIMIENTO_HORIZONTAL:CONTADOR[2]~q\);

-- Location: LCCOMB_X33_Y28_N8
\Add9~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add9~8_combout\ = (\MOVIMIENTO_HORIZONTAL:CONTADOR[4]~q\ & (\Add9~7\ $ (GND))) # (!\MOVIMIENTO_HORIZONTAL:CONTADOR[4]~q\ & (!\Add9~7\ & VCC))
-- \Add9~9\ = CARRY((\MOVIMIENTO_HORIZONTAL:CONTADOR[4]~q\ & !\Add9~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \MOVIMIENTO_HORIZONTAL:CONTADOR[4]~q\,
	datad => VCC,
	cin => \Add9~7\,
	combout => \Add9~8_combout\,
	cout => \Add9~9\);

-- Location: FF_X33_Y28_N9
\MOVIMIENTO_HORIZONTAL:CONTADOR[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock25Mhz|TEMPORAL~clkctrl_outclk\,
	d => \Add9~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MOVIMIENTO_HORIZONTAL:CONTADOR[4]~q\);

-- Location: LCCOMB_X33_Y28_N10
\Add9~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add9~10_combout\ = (\MOVIMIENTO_HORIZONTAL:CONTADOR[5]~q\ & (!\Add9~9\)) # (!\MOVIMIENTO_HORIZONTAL:CONTADOR[5]~q\ & ((\Add9~9\) # (GND)))
-- \Add9~11\ = CARRY((!\Add9~9\) # (!\MOVIMIENTO_HORIZONTAL:CONTADOR[5]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \MOVIMIENTO_HORIZONTAL:CONTADOR[5]~q\,
	datad => VCC,
	cin => \Add9~9\,
	combout => \Add9~10_combout\,
	cout => \Add9~11\);

-- Location: LCCOMB_X32_Y28_N24
\CONTADOR~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CONTADOR~1_combout\ = (!\Equal3~10_combout\ & \Add9~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal3~10_combout\,
	datac => \Add9~10_combout\,
	combout => \CONTADOR~1_combout\);

-- Location: FF_X32_Y28_N25
\MOVIMIENTO_HORIZONTAL:CONTADOR[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock25Mhz|TEMPORAL~clkctrl_outclk\,
	d => \CONTADOR~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MOVIMIENTO_HORIZONTAL:CONTADOR[5]~q\);

-- Location: LCCOMB_X33_Y28_N14
\Add9~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add9~14_combout\ = (\MOVIMIENTO_HORIZONTAL:CONTADOR[7]~q\ & (!\Add9~13\)) # (!\MOVIMIENTO_HORIZONTAL:CONTADOR[7]~q\ & ((\Add9~13\) # (GND)))
-- \Add9~15\ = CARRY((!\Add9~13\) # (!\MOVIMIENTO_HORIZONTAL:CONTADOR[7]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \MOVIMIENTO_HORIZONTAL:CONTADOR[7]~q\,
	datad => VCC,
	cin => \Add9~13\,
	combout => \Add9~14_combout\,
	cout => \Add9~15\);

-- Location: FF_X33_Y28_N15
\MOVIMIENTO_HORIZONTAL:CONTADOR[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock25Mhz|TEMPORAL~clkctrl_outclk\,
	d => \Add9~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MOVIMIENTO_HORIZONTAL:CONTADOR[7]~q\);

-- Location: LCCOMB_X33_Y28_N16
\Add9~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add9~16_combout\ = (\MOVIMIENTO_HORIZONTAL:CONTADOR[8]~q\ & (\Add9~15\ $ (GND))) # (!\MOVIMIENTO_HORIZONTAL:CONTADOR[8]~q\ & (!\Add9~15\ & VCC))
-- \Add9~17\ = CARRY((\MOVIMIENTO_HORIZONTAL:CONTADOR[8]~q\ & !\Add9~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \MOVIMIENTO_HORIZONTAL:CONTADOR[8]~q\,
	datad => VCC,
	cin => \Add9~15\,
	combout => \Add9~16_combout\,
	cout => \Add9~17\);

-- Location: FF_X33_Y28_N17
\MOVIMIENTO_HORIZONTAL:CONTADOR[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock25Mhz|TEMPORAL~clkctrl_outclk\,
	d => \Add9~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MOVIMIENTO_HORIZONTAL:CONTADOR[8]~q\);

-- Location: LCCOMB_X33_Y28_N20
\Add9~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add9~20_combout\ = (\MOVIMIENTO_HORIZONTAL:CONTADOR[10]~q\ & (\Add9~19\ $ (GND))) # (!\MOVIMIENTO_HORIZONTAL:CONTADOR[10]~q\ & (!\Add9~19\ & VCC))
-- \Add9~21\ = CARRY((\MOVIMIENTO_HORIZONTAL:CONTADOR[10]~q\ & !\Add9~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \MOVIMIENTO_HORIZONTAL:CONTADOR[10]~q\,
	datad => VCC,
	cin => \Add9~19\,
	combout => \Add9~20_combout\,
	cout => \Add9~21\);

-- Location: FF_X33_Y28_N21
\MOVIMIENTO_HORIZONTAL:CONTADOR[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock25Mhz|TEMPORAL~clkctrl_outclk\,
	d => \Add9~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MOVIMIENTO_HORIZONTAL:CONTADOR[10]~q\);

-- Location: LCCOMB_X33_Y28_N22
\Add9~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add9~22_combout\ = (\MOVIMIENTO_HORIZONTAL:CONTADOR[11]~q\ & (!\Add9~21\)) # (!\MOVIMIENTO_HORIZONTAL:CONTADOR[11]~q\ & ((\Add9~21\) # (GND)))
-- \Add9~23\ = CARRY((!\Add9~21\) # (!\MOVIMIENTO_HORIZONTAL:CONTADOR[11]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MOVIMIENTO_HORIZONTAL:CONTADOR[11]~q\,
	datad => VCC,
	cin => \Add9~21\,
	combout => \Add9~22_combout\,
	cout => \Add9~23\);

-- Location: LCCOMB_X33_Y28_N24
\Add9~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add9~24_combout\ = (\MOVIMIENTO_HORIZONTAL:CONTADOR[12]~q\ & (\Add9~23\ $ (GND))) # (!\MOVIMIENTO_HORIZONTAL:CONTADOR[12]~q\ & (!\Add9~23\ & VCC))
-- \Add9~25\ = CARRY((\MOVIMIENTO_HORIZONTAL:CONTADOR[12]~q\ & !\Add9~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \MOVIMIENTO_HORIZONTAL:CONTADOR[12]~q\,
	datad => VCC,
	cin => \Add9~23\,
	combout => \Add9~24_combout\,
	cout => \Add9~25\);

-- Location: FF_X33_Y28_N25
\MOVIMIENTO_HORIZONTAL:CONTADOR[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock25Mhz|TEMPORAL~clkctrl_outclk\,
	d => \Add9~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MOVIMIENTO_HORIZONTAL:CONTADOR[12]~q\);

-- Location: LCCOMB_X33_Y28_N28
\Add9~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add9~28_combout\ = (\MOVIMIENTO_HORIZONTAL:CONTADOR[14]~q\ & (\Add9~27\ $ (GND))) # (!\MOVIMIENTO_HORIZONTAL:CONTADOR[14]~q\ & (!\Add9~27\ & VCC))
-- \Add9~29\ = CARRY((\MOVIMIENTO_HORIZONTAL:CONTADOR[14]~q\ & !\Add9~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \MOVIMIENTO_HORIZONTAL:CONTADOR[14]~q\,
	datad => VCC,
	cin => \Add9~27\,
	combout => \Add9~28_combout\,
	cout => \Add9~29\);

-- Location: FF_X33_Y28_N29
\MOVIMIENTO_HORIZONTAL:CONTADOR[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock25Mhz|TEMPORAL~clkctrl_outclk\,
	d => \Add9~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MOVIMIENTO_HORIZONTAL:CONTADOR[14]~q\);

-- Location: LCCOMB_X33_Y28_N30
\Add9~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add9~30_combout\ = (\MOVIMIENTO_HORIZONTAL:CONTADOR[15]~q\ & (!\Add9~29\)) # (!\MOVIMIENTO_HORIZONTAL:CONTADOR[15]~q\ & ((\Add9~29\) # (GND)))
-- \Add9~31\ = CARRY((!\Add9~29\) # (!\MOVIMIENTO_HORIZONTAL:CONTADOR[15]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MOVIMIENTO_HORIZONTAL:CONTADOR[15]~q\,
	datad => VCC,
	cin => \Add9~29\,
	combout => \Add9~30_combout\,
	cout => \Add9~31\);

-- Location: LCCOMB_X33_Y27_N0
\Add9~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add9~32_combout\ = (\MOVIMIENTO_HORIZONTAL:CONTADOR[16]~q\ & (\Add9~31\ $ (GND))) # (!\MOVIMIENTO_HORIZONTAL:CONTADOR[16]~q\ & (!\Add9~31\ & VCC))
-- \Add9~33\ = CARRY((\MOVIMIENTO_HORIZONTAL:CONTADOR[16]~q\ & !\Add9~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \MOVIMIENTO_HORIZONTAL:CONTADOR[16]~q\,
	datad => VCC,
	cin => \Add9~31\,
	combout => \Add9~32_combout\,
	cout => \Add9~33\);

-- Location: FF_X33_Y27_N1
\MOVIMIENTO_HORIZONTAL:CONTADOR[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock25Mhz|TEMPORAL~clkctrl_outclk\,
	d => \Add9~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MOVIMIENTO_HORIZONTAL:CONTADOR[16]~q\);

-- Location: LCCOMB_X33_Y27_N2
\Add9~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add9~34_combout\ = (\MOVIMIENTO_HORIZONTAL:CONTADOR[17]~q\ & (!\Add9~33\)) # (!\MOVIMIENTO_HORIZONTAL:CONTADOR[17]~q\ & ((\Add9~33\) # (GND)))
-- \Add9~35\ = CARRY((!\Add9~33\) # (!\MOVIMIENTO_HORIZONTAL:CONTADOR[17]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \MOVIMIENTO_HORIZONTAL:CONTADOR[17]~q\,
	datad => VCC,
	cin => \Add9~33\,
	combout => \Add9~34_combout\,
	cout => \Add9~35\);

-- Location: FF_X33_Y27_N3
\MOVIMIENTO_HORIZONTAL:CONTADOR[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock25Mhz|TEMPORAL~clkctrl_outclk\,
	d => \Add9~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MOVIMIENTO_HORIZONTAL:CONTADOR[17]~q\);

-- Location: LCCOMB_X33_Y27_N4
\Add9~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add9~36_combout\ = (\MOVIMIENTO_HORIZONTAL:CONTADOR[18]~q\ & (\Add9~35\ $ (GND))) # (!\MOVIMIENTO_HORIZONTAL:CONTADOR[18]~q\ & (!\Add9~35\ & VCC))
-- \Add9~37\ = CARRY((\MOVIMIENTO_HORIZONTAL:CONTADOR[18]~q\ & !\Add9~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MOVIMIENTO_HORIZONTAL:CONTADOR[18]~q\,
	datad => VCC,
	cin => \Add9~35\,
	combout => \Add9~36_combout\,
	cout => \Add9~37\);

-- Location: LCCOMB_X32_Y27_N14
\CONTADOR~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CONTADOR~6_combout\ = (!\Equal3~10_combout\ & \Add9~36_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal3~10_combout\,
	datad => \Add9~36_combout\,
	combout => \CONTADOR~6_combout\);

-- Location: FF_X32_Y27_N15
\MOVIMIENTO_HORIZONTAL:CONTADOR[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock25Mhz|TEMPORAL~clkctrl_outclk\,
	d => \CONTADOR~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MOVIMIENTO_HORIZONTAL:CONTADOR[18]~q\);

-- Location: LCCOMB_X32_Y27_N28
\Equal3~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal3~5_combout\ = (!\MOVIMIENTO_HORIZONTAL:CONTADOR[19]~q\ & (\MOVIMIENTO_HORIZONTAL:CONTADOR[18]~q\ & (!\MOVIMIENTO_HORIZONTAL:CONTADOR[16]~q\ & !\MOVIMIENTO_HORIZONTAL:CONTADOR[17]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MOVIMIENTO_HORIZONTAL:CONTADOR[19]~q\,
	datab => \MOVIMIENTO_HORIZONTAL:CONTADOR[18]~q\,
	datac => \MOVIMIENTO_HORIZONTAL:CONTADOR[16]~q\,
	datad => \MOVIMIENTO_HORIZONTAL:CONTADOR[17]~q\,
	combout => \Equal3~5_combout\);

-- Location: LCCOMB_X32_Y28_N8
\CONTADOR~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CONTADOR~5_combout\ = (!\Equal3~10_combout\ & \Add9~30_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal3~10_combout\,
	datac => \Add9~30_combout\,
	combout => \CONTADOR~5_combout\);

-- Location: FF_X32_Y28_N9
\MOVIMIENTO_HORIZONTAL:CONTADOR[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock25Mhz|TEMPORAL~clkctrl_outclk\,
	d => \CONTADOR~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MOVIMIENTO_HORIZONTAL:CONTADOR[15]~q\);

-- Location: LCCOMB_X32_Y28_N18
\Equal3~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal3~3_combout\ = (\MOVIMIENTO_HORIZONTAL:CONTADOR[13]~q\ & (!\MOVIMIENTO_HORIZONTAL:CONTADOR[14]~q\ & (\MOVIMIENTO_HORIZONTAL:CONTADOR[15]~q\ & !\MOVIMIENTO_HORIZONTAL:CONTADOR[12]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MOVIMIENTO_HORIZONTAL:CONTADOR[13]~q\,
	datab => \MOVIMIENTO_HORIZONTAL:CONTADOR[14]~q\,
	datac => \MOVIMIENTO_HORIZONTAL:CONTADOR[15]~q\,
	datad => \MOVIMIENTO_HORIZONTAL:CONTADOR[12]~q\,
	combout => \Equal3~3_combout\);

-- Location: LCCOMB_X32_Y28_N14
\Equal3~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal3~1_combout\ = (!\MOVIMIENTO_HORIZONTAL:CONTADOR[6]~q\ & (!\MOVIMIENTO_HORIZONTAL:CONTADOR[4]~q\ & (!\MOVIMIENTO_HORIZONTAL:CONTADOR[7]~q\ & \MOVIMIENTO_HORIZONTAL:CONTADOR[5]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MOVIMIENTO_HORIZONTAL:CONTADOR[6]~q\,
	datab => \MOVIMIENTO_HORIZONTAL:CONTADOR[4]~q\,
	datac => \MOVIMIENTO_HORIZONTAL:CONTADOR[7]~q\,
	datad => \MOVIMIENTO_HORIZONTAL:CONTADOR[5]~q\,
	combout => \Equal3~1_combout\);

-- Location: LCCOMB_X32_Y28_N2
\CONTADOR~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CONTADOR~3_combout\ = (!\Equal3~10_combout\ & \Add9~22_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Equal3~10_combout\,
	datad => \Add9~22_combout\,
	combout => \CONTADOR~3_combout\);

-- Location: FF_X32_Y28_N3
\MOVIMIENTO_HORIZONTAL:CONTADOR[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock25Mhz|TEMPORAL~clkctrl_outclk\,
	d => \CONTADOR~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MOVIMIENTO_HORIZONTAL:CONTADOR[11]~q\);

-- Location: LCCOMB_X32_Y28_N20
\Equal3~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal3~2_combout\ = (\MOVIMIENTO_HORIZONTAL:CONTADOR[9]~q\ & (\MOVIMIENTO_HORIZONTAL:CONTADOR[11]~q\ & (!\MOVIMIENTO_HORIZONTAL:CONTADOR[10]~q\ & !\MOVIMIENTO_HORIZONTAL:CONTADOR[8]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MOVIMIENTO_HORIZONTAL:CONTADOR[9]~q\,
	datab => \MOVIMIENTO_HORIZONTAL:CONTADOR[11]~q\,
	datac => \MOVIMIENTO_HORIZONTAL:CONTADOR[10]~q\,
	datad => \MOVIMIENTO_HORIZONTAL:CONTADOR[8]~q\,
	combout => \Equal3~2_combout\);

-- Location: LCCOMB_X32_Y28_N4
\Equal3~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal3~4_combout\ = (\Equal3~0_combout\ & (\Equal3~3_combout\ & (\Equal3~1_combout\ & \Equal3~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal3~0_combout\,
	datab => \Equal3~3_combout\,
	datac => \Equal3~1_combout\,
	datad => \Equal3~2_combout\,
	combout => \Equal3~4_combout\);

-- Location: LCCOMB_X33_Y27_N8
\Add9~40\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add9~40_combout\ = (\MOVIMIENTO_HORIZONTAL:CONTADOR[20]~q\ & (\Add9~39\ $ (GND))) # (!\MOVIMIENTO_HORIZONTAL:CONTADOR[20]~q\ & (!\Add9~39\ & VCC))
-- \Add9~41\ = CARRY((\MOVIMIENTO_HORIZONTAL:CONTADOR[20]~q\ & !\Add9~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \MOVIMIENTO_HORIZONTAL:CONTADOR[20]~q\,
	datad => VCC,
	cin => \Add9~39\,
	combout => \Add9~40_combout\,
	cout => \Add9~41\);

-- Location: FF_X33_Y27_N9
\MOVIMIENTO_HORIZONTAL:CONTADOR[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock25Mhz|TEMPORAL~clkctrl_outclk\,
	d => \Add9~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MOVIMIENTO_HORIZONTAL:CONTADOR[20]~q\);

-- Location: LCCOMB_X33_Y27_N10
\Add9~42\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add9~42_combout\ = (\MOVIMIENTO_HORIZONTAL:CONTADOR[21]~q\ & (!\Add9~41\)) # (!\MOVIMIENTO_HORIZONTAL:CONTADOR[21]~q\ & ((\Add9~41\) # (GND)))
-- \Add9~43\ = CARRY((!\Add9~41\) # (!\MOVIMIENTO_HORIZONTAL:CONTADOR[21]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MOVIMIENTO_HORIZONTAL:CONTADOR[21]~q\,
	datad => VCC,
	cin => \Add9~41\,
	combout => \Add9~42_combout\,
	cout => \Add9~43\);

-- Location: FF_X33_Y27_N11
\MOVIMIENTO_HORIZONTAL:CONTADOR[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock25Mhz|TEMPORAL~clkctrl_outclk\,
	d => \Add9~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MOVIMIENTO_HORIZONTAL:CONTADOR[21]~q\);

-- Location: LCCOMB_X32_Y27_N6
\CONTADOR~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CONTADOR~7_combout\ = (\Add9~44_combout\ & !\Equal3~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add9~44_combout\,
	datad => \Equal3~10_combout\,
	combout => \CONTADOR~7_combout\);

-- Location: FF_X32_Y27_N7
\MOVIMIENTO_HORIZONTAL:CONTADOR[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock25Mhz|TEMPORAL~clkctrl_outclk\,
	d => \CONTADOR~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MOVIMIENTO_HORIZONTAL:CONTADOR[22]~q\);

-- Location: LCCOMB_X32_Y27_N20
\Equal3~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal3~6_combout\ = (!\MOVIMIENTO_HORIZONTAL:CONTADOR[23]~q\ & (!\MOVIMIENTO_HORIZONTAL:CONTADOR[21]~q\ & (!\MOVIMIENTO_HORIZONTAL:CONTADOR[20]~q\ & \MOVIMIENTO_HORIZONTAL:CONTADOR[22]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MOVIMIENTO_HORIZONTAL:CONTADOR[23]~q\,
	datab => \MOVIMIENTO_HORIZONTAL:CONTADOR[21]~q\,
	datac => \MOVIMIENTO_HORIZONTAL:CONTADOR[20]~q\,
	datad => \MOVIMIENTO_HORIZONTAL:CONTADOR[22]~q\,
	combout => \Equal3~6_combout\);

-- Location: LCCOMB_X32_Y27_N24
\Equal3~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal3~10_combout\ = (\Equal3~9_combout\ & (\Equal3~5_combout\ & (\Equal3~4_combout\ & \Equal3~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal3~9_combout\,
	datab => \Equal3~5_combout\,
	datac => \Equal3~4_combout\,
	datad => \Equal3~6_combout\,
	combout => \Equal3~10_combout\);

-- Location: LCCOMB_X32_Y27_N30
\FBEGIN[10]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \FBEGIN[10]~0_combout\ = (\Equal3~10_combout\ & ((!\Move_right~input_o\) # (!\Move_left~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Move_left~input_o\,
	datac => \Move_right~input_o\,
	datad => \Equal3~10_combout\,
	combout => \FBEGIN[10]~0_combout\);

-- Location: FF_X32_Y26_N31
\FEND[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock25Mhz|TEMPORAL~clkctrl_outclk\,
	asdata => \FEND[1]~4_combout\,
	sload => VCC,
	ena => \FBEGIN[10]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => FEND(1));

-- Location: LCCOMB_X33_Y26_N14
\Add8~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add8~4_combout\ = ((\Move_left~input_o\ $ (FEND(3) $ (!\Add8~3\)))) # (GND)
-- \Add8~5\ = CARRY((\Move_left~input_o\ & ((FEND(3)) # (!\Add8~3\))) # (!\Move_left~input_o\ & (FEND(3) & !\Add8~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Move_left~input_o\,
	datab => FEND(3),
	datad => VCC,
	cin => \Add8~3\,
	combout => \Add8~4_combout\,
	cout => \Add8~5\);

-- Location: FF_X33_Y26_N15
\FEND[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock25Mhz|TEMPORAL~clkctrl_outclk\,
	d => \Add8~4_combout\,
	ena => \FBEGIN[10]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => FEND(3));

-- Location: LCCOMB_X33_Y26_N16
\Add8~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add8~6_combout\ = (\Move_left~input_o\ & ((FEND(4) & ((\Add8~5\) # (GND))) # (!FEND(4) & (!\Add8~5\)))) # (!\Move_left~input_o\ & ((FEND(4) & (!\Add8~5\)) # (!FEND(4) & (\Add8~5\ & VCC))))
-- \Add8~7\ = CARRY((\Move_left~input_o\ & ((FEND(4)) # (!\Add8~5\))) # (!\Move_left~input_o\ & (FEND(4) & !\Add8~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Move_left~input_o\,
	datab => FEND(4),
	datad => VCC,
	cin => \Add8~5\,
	combout => \Add8~6_combout\,
	cout => \Add8~7\);

-- Location: LCCOMB_X32_Y26_N2
\FEND[4]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \FEND[4]~2_combout\ = !\Add8~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Add8~6_combout\,
	combout => \FEND[4]~2_combout\);

-- Location: FF_X32_Y26_N3
\FEND[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock25Mhz|TEMPORAL~clkctrl_outclk\,
	d => \FEND[4]~2_combout\,
	ena => \FBEGIN[10]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => FEND(4));

-- Location: LCCOMB_X33_Y26_N18
\Add8~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add8~8_combout\ = ((\Move_left~input_o\ $ (FEND(5) $ (!\Add8~7\)))) # (GND)
-- \Add8~9\ = CARRY((\Move_left~input_o\ & (!FEND(5) & !\Add8~7\)) # (!\Move_left~input_o\ & ((!\Add8~7\) # (!FEND(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Move_left~input_o\,
	datab => FEND(5),
	datad => VCC,
	cin => \Add8~7\,
	combout => \Add8~8_combout\,
	cout => \Add8~9\);

-- Location: LCCOMB_X32_Y26_N28
\FEND[5]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \FEND[5]~1_combout\ = !\Add8~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Add8~8_combout\,
	combout => \FEND[5]~1_combout\);

-- Location: FF_X32_Y26_N29
\FEND[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock25Mhz|TEMPORAL~clkctrl_outclk\,
	d => \FEND[5]~1_combout\,
	ena => \FBEGIN[10]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => FEND(5));

-- Location: LCCOMB_X33_Y26_N20
\Add8~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add8~10_combout\ = (\Move_left~input_o\ & ((FEND(6) & (!\Add8~9\)) # (!FEND(6) & ((\Add8~9\) # (GND))))) # (!\Move_left~input_o\ & ((FEND(6) & (\Add8~9\ & VCC)) # (!FEND(6) & (!\Add8~9\))))
-- \Add8~11\ = CARRY((\Move_left~input_o\ & ((!\Add8~9\) # (!FEND(6)))) # (!\Move_left~input_o\ & (!FEND(6) & !\Add8~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Move_left~input_o\,
	datab => FEND(6),
	datad => VCC,
	cin => \Add8~9\,
	combout => \Add8~10_combout\,
	cout => \Add8~11\);

-- Location: FF_X33_Y26_N21
\FEND[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock25Mhz|TEMPORAL~clkctrl_outclk\,
	d => \Add8~10_combout\,
	ena => \FBEGIN[10]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => FEND(6));

-- Location: LCCOMB_X33_Y26_N22
\Add8~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add8~12_combout\ = ((\Move_left~input_o\ $ (FEND(7) $ (\Add8~11\)))) # (GND)
-- \Add8~13\ = CARRY((\Move_left~input_o\ & (FEND(7) & !\Add8~11\)) # (!\Move_left~input_o\ & ((FEND(7)) # (!\Add8~11\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Move_left~input_o\,
	datab => FEND(7),
	datad => VCC,
	cin => \Add8~11\,
	combout => \Add8~12_combout\,
	cout => \Add8~13\);

-- Location: FF_X33_Y26_N23
\FEND[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock25Mhz|TEMPORAL~clkctrl_outclk\,
	d => \Add8~12_combout\,
	ena => \FBEGIN[10]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => FEND(7));

-- Location: LCCOMB_X33_Y26_N24
\Add8~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add8~14_combout\ = (\Move_left~input_o\ & ((FEND(8) & ((\Add8~13\) # (GND))) # (!FEND(8) & (!\Add8~13\)))) # (!\Move_left~input_o\ & ((FEND(8) & (!\Add8~13\)) # (!FEND(8) & (\Add8~13\ & VCC))))
-- \Add8~15\ = CARRY((\Move_left~input_o\ & ((FEND(8)) # (!\Add8~13\))) # (!\Move_left~input_o\ & (FEND(8) & !\Add8~13\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Move_left~input_o\,
	datab => FEND(8),
	datad => VCC,
	cin => \Add8~13\,
	combout => \Add8~14_combout\,
	cout => \Add8~15\);

-- Location: LCCOMB_X33_Y26_N4
\FEND[8]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \FEND[8]~0_combout\ = !\Add8~14_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Add8~14_combout\,
	combout => \FEND[8]~0_combout\);

-- Location: FF_X33_Y26_N5
\FEND[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock25Mhz|TEMPORAL~clkctrl_outclk\,
	d => \FEND[8]~0_combout\,
	ena => \FBEGIN[10]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => FEND(8));

-- Location: LCCOMB_X33_Y26_N26
\Add8~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add8~16_combout\ = ((\Move_left~input_o\ $ (FEND(9) $ (\Add8~15\)))) # (GND)
-- \Add8~17\ = CARRY((\Move_left~input_o\ & (FEND(9) & !\Add8~15\)) # (!\Move_left~input_o\ & ((FEND(9)) # (!\Add8~15\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Move_left~input_o\,
	datab => FEND(9),
	datad => VCC,
	cin => \Add8~15\,
	combout => \Add8~16_combout\,
	cout => \Add8~17\);

-- Location: FF_X33_Y26_N27
\FEND[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock25Mhz|TEMPORAL~clkctrl_outclk\,
	d => \Add8~16_combout\,
	ena => \FBEGIN[10]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => FEND(9));

-- Location: LCCOMB_X33_Y26_N28
\Add8~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add8~18_combout\ = \Move_left~input_o\ $ (\Add8~17\ $ (!FEND(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Move_left~input_o\,
	datad => FEND(10),
	cin => \Add8~17\,
	combout => \Add8~18_combout\);

-- Location: FF_X33_Y26_N29
\FEND[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock25Mhz|TEMPORAL~clkctrl_outclk\,
	d => \Add8~18_combout\,
	ena => \FBEGIN[10]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => FEND(10));

-- Location: LCCOMB_X31_Y26_N24
\VGA_syncronizador|Add2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_syncronizador|Add2~0_combout\ = (\VGA_syncronizador|COUNTER_H\(7) & ((\VGA_syncronizador|COUNTER_H\(6)) # ((\VGA_syncronizador|COUNTER_H\(4)) # (\VGA_syncronizador|COUNTER_H\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_syncronizador|COUNTER_H\(7),
	datab => \VGA_syncronizador|COUNTER_H\(6),
	datac => \VGA_syncronizador|COUNTER_H\(4),
	datad => \VGA_syncronizador|COUNTER_H\(5),
	combout => \VGA_syncronizador|Add2~0_combout\);

-- Location: LCCOMB_X31_Y26_N28
\VGA_syncronizador|Add2~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_syncronizador|Add2~1_combout\ = \VGA_syncronizador|COUNTER_H\(8) $ (\VGA_syncronizador|Add2~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \VGA_syncronizador|COUNTER_H\(8),
	datad => \VGA_syncronizador|Add2~0_combout\,
	combout => \VGA_syncronizador|Add2~1_combout\);

-- Location: LCCOMB_X32_Y26_N0
\VGA_syncronizador|Add2~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_syncronizador|Add2~3_combout\ = \VGA_syncronizador|COUNTER_H\(6) $ (((\VGA_syncronizador|COUNTER_H\(5)) # (\VGA_syncronizador|COUNTER_H\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011001010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_syncronizador|COUNTER_H\(6),
	datab => \VGA_syncronizador|COUNTER_H\(5),
	datac => \VGA_syncronizador|COUNTER_H\(4),
	combout => \VGA_syncronizador|Add2~3_combout\);

-- Location: LCCOMB_X32_Y26_N8
\LessThan5~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan5~1_cout\ = CARRY((!\VGA_syncronizador|COUNTER_H\(1) & !FEND(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_syncronizador|COUNTER_H\(1),
	datab => FEND(1),
	datad => VCC,
	cout => \LessThan5~1_cout\);

-- Location: LCCOMB_X32_Y26_N10
\LessThan5~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan5~3_cout\ = CARRY((FEND(2) & ((\VGA_syncronizador|COUNTER_H\(2)) # (!\LessThan5~1_cout\))) # (!FEND(2) & (\VGA_syncronizador|COUNTER_H\(2) & !\LessThan5~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => FEND(2),
	datab => \VGA_syncronizador|COUNTER_H\(2),
	datad => VCC,
	cin => \LessThan5~1_cout\,
	cout => \LessThan5~3_cout\);

-- Location: LCCOMB_X32_Y26_N12
\LessThan5~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan5~5_cout\ = CARRY((FEND(3) & ((!\LessThan5~3_cout\) # (!\VGA_syncronizador|COUNTER_H\(3)))) # (!FEND(3) & (!\VGA_syncronizador|COUNTER_H\(3) & !\LessThan5~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => FEND(3),
	datab => \VGA_syncronizador|COUNTER_H\(3),
	datad => VCC,
	cin => \LessThan5~3_cout\,
	cout => \LessThan5~5_cout\);

-- Location: LCCOMB_X32_Y26_N14
\LessThan5~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan5~7_cout\ = CARRY((FEND(4) & ((!\LessThan5~5_cout\) # (!\VGA_syncronizador|COUNTER_H\(4)))) # (!FEND(4) & (!\VGA_syncronizador|COUNTER_H\(4) & !\LessThan5~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => FEND(4),
	datab => \VGA_syncronizador|COUNTER_H\(4),
	datad => VCC,
	cin => \LessThan5~5_cout\,
	cout => \LessThan5~7_cout\);

-- Location: LCCOMB_X32_Y26_N16
\LessThan5~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan5~9_cout\ = CARRY((\VGA_syncronizador|Add2~4_combout\ & ((!\LessThan5~7_cout\) # (!FEND(5)))) # (!\VGA_syncronizador|Add2~4_combout\ & (!FEND(5) & !\LessThan5~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_syncronizador|Add2~4_combout\,
	datab => FEND(5),
	datad => VCC,
	cin => \LessThan5~7_cout\,
	cout => \LessThan5~9_cout\);

-- Location: LCCOMB_X32_Y26_N18
\LessThan5~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan5~11_cout\ = CARRY((FEND(6) & (!\VGA_syncronizador|Add2~3_combout\ & !\LessThan5~9_cout\)) # (!FEND(6) & ((!\LessThan5~9_cout\) # (!\VGA_syncronizador|Add2~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => FEND(6),
	datab => \VGA_syncronizador|Add2~3_combout\,
	datad => VCC,
	cin => \LessThan5~9_cout\,
	cout => \LessThan5~11_cout\);

-- Location: LCCOMB_X32_Y26_N20
\LessThan5~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan5~13_cout\ = CARRY((\VGA_syncronizador|Add2~5_combout\ & (FEND(7) & !\LessThan5~11_cout\)) # (!\VGA_syncronizador|Add2~5_combout\ & ((FEND(7)) # (!\LessThan5~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_syncronizador|Add2~5_combout\,
	datab => FEND(7),
	datad => VCC,
	cin => \LessThan5~11_cout\,
	cout => \LessThan5~13_cout\);

-- Location: LCCOMB_X32_Y26_N22
\LessThan5~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan5~15_cout\ = CARRY((FEND(8) & ((!\LessThan5~13_cout\) # (!\VGA_syncronizador|Add2~1_combout\))) # (!FEND(8) & (!\VGA_syncronizador|Add2~1_combout\ & !\LessThan5~13_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => FEND(8),
	datab => \VGA_syncronizador|Add2~1_combout\,
	datad => VCC,
	cin => \LessThan5~13_cout\,
	cout => \LessThan5~15_cout\);

-- Location: LCCOMB_X32_Y26_N24
\LessThan5~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan5~16_combout\ = (\VGA_syncronizador|Add2~2_combout\ & ((FEND(9)) # (!\LessThan5~15_cout\))) # (!\VGA_syncronizador|Add2~2_combout\ & (FEND(9) & !\LessThan5~15_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_syncronizador|Add2~2_combout\,
	datab => FEND(9),
	cin => \LessThan5~15_cout\,
	combout => \LessThan5~16_combout\);

-- Location: IOIBUF_X32_Y29_N22
\Rotate~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Rotate,
	o => \Rotate~input_o\);

-- Location: LCCOMB_X32_Y27_N16
\rnd_count_r~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rnd_count_r~3_combout\ = \rnd_count_r_0_~q\ $ (((\Move_right~input_o\) # ((\Rotate~input_o\) # (\Move_left~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Move_right~input_o\,
	datab => \Rotate~input_o\,
	datac => \rnd_count_r_0_~q\,
	datad => \Move_left~input_o\,
	combout => \rnd_count_r~3_combout\);

-- Location: FF_X32_Y27_N17
\rnd_count_r_0_\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock25Mhz|TEMPORAL~clkctrl_outclk\,
	d => \rnd_count_r~3_combout\,
	clrn => \RST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_count_r_0_~q\);

-- Location: LCCOMB_X32_Y27_N4
\rnd_count_r~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rnd_count_r~0_combout\ = (\rnd_count_r_0_~q\ & ((\Rotate~input_o\) # ((\Move_right~input_o\) # (\Move_left~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Rotate~input_o\,
	datab => \rnd_count_r_0_~q\,
	datac => \Move_right~input_o\,
	datad => \Move_left~input_o\,
	combout => \rnd_count_r~0_combout\);

-- Location: LCCOMB_X32_Y27_N18
\rnd_count_r~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rnd_count_r~2_combout\ = (\rnd_count_r~0_combout\ & (!\rnd_count_r_2_~q\ & !\rnd_count_r_1_~q\)) # (!\rnd_count_r~0_combout\ & ((\rnd_count_r_1_~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011010000110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_count_r_2_~q\,
	datab => \rnd_count_r~0_combout\,
	datac => \rnd_count_r_1_~q\,
	combout => \rnd_count_r~2_combout\);

-- Location: FF_X32_Y27_N19
\rnd_count_r_1_\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock25Mhz|TEMPORAL~clkctrl_outclk\,
	d => \rnd_count_r~2_combout\,
	clrn => \RST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_count_r_1_~q\);

-- Location: LCCOMB_X30_Y24_N8
\STATE~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \STATE~0_combout\ = (\STATE~q\) # (\RST~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \STATE~q\,
	datad => \RST~input_o\,
	combout => \STATE~0_combout\);

-- Location: FF_X30_Y24_N9
STATE : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock25Mhz|TEMPORAL~clkctrl_outclk\,
	d => \STATE~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \STATE~q\);

-- Location: LCCOMB_X32_Y27_N22
\R~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \R~5_combout\ = (\STATE~q\ & (((!\rnd_count_r_0_~q\) # (!\rnd_count_r_1_~q\)) # (!\rnd_count_r_2_~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_count_r_2_~q\,
	datab => \rnd_count_r_1_~q\,
	datac => \STATE~q\,
	datad => \rnd_count_r_0_~q\,
	combout => \R~5_combout\);

-- Location: LCCOMB_X32_Y24_N4
\R~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \R~6_combout\ = (!FEND(10) & (\LessThan5~16_combout\ & \R~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => FEND(10),
	datac => \LessThan5~16_combout\,
	datad => \R~5_combout\,
	combout => \R~6_combout\);

-- Location: LCCOMB_X28_Y24_N6
\VBEGIN[1]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VBEGIN[1]~10_combout\ = VBEGIN(1) $ (VCC)
-- \VBEGIN[1]~11\ = CARRY(VBEGIN(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => VBEGIN(1),
	datad => VCC,
	combout => \VBEGIN[1]~10_combout\,
	cout => \VBEGIN[1]~11\);

-- Location: LCCOMB_X28_Y24_N8
\VBEGIN[2]~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VBEGIN[2]~12_combout\ = (VBEGIN(2) & (!\VBEGIN[1]~11\)) # (!VBEGIN(2) & ((\VBEGIN[1]~11\) # (GND)))
-- \VBEGIN[2]~13\ = CARRY((!\VBEGIN[1]~11\) # (!VBEGIN(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => VBEGIN(2),
	datad => VCC,
	cin => \VBEGIN[1]~11\,
	combout => \VBEGIN[2]~12_combout\,
	cout => \VBEGIN[2]~13\);

-- Location: FF_X28_Y24_N9
\VBEGIN[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock25Mhz|TEMPORAL~clkctrl_outclk\,
	d => \VBEGIN[2]~12_combout\,
	sclr => \Equal2~9_combout\,
	ena => \Equal1~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => VBEGIN(2));

-- Location: LCCOMB_X28_Y24_N10
\VBEGIN[3]~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VBEGIN[3]~14_combout\ = (VBEGIN(3) & ((GND) # (!\VBEGIN[2]~13\))) # (!VBEGIN(3) & (\VBEGIN[2]~13\ $ (GND)))
-- \VBEGIN[3]~15\ = CARRY((VBEGIN(3)) # (!\VBEGIN[2]~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => VBEGIN(3),
	datad => VCC,
	cin => \VBEGIN[2]~13\,
	combout => \VBEGIN[3]~14_combout\,
	cout => \VBEGIN[3]~15\);

-- Location: LCCOMB_X28_Y24_N14
\VBEGIN[5]~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VBEGIN[5]~18_combout\ = (VBEGIN(5) & (\VBEGIN[4]~17\ $ (GND))) # (!VBEGIN(5) & (!\VBEGIN[4]~17\ & VCC))
-- \VBEGIN[5]~19\ = CARRY((VBEGIN(5) & !\VBEGIN[4]~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => VBEGIN(5),
	datad => VCC,
	cin => \VBEGIN[4]~17\,
	combout => \VBEGIN[5]~18_combout\,
	cout => \VBEGIN[5]~19\);

-- Location: FF_X28_Y24_N15
\VBEGIN[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock25Mhz|TEMPORAL~clkctrl_outclk\,
	d => \VBEGIN[5]~18_combout\,
	sclr => \Equal2~9_combout\,
	ena => \Equal1~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => VBEGIN(5));

-- Location: LCCOMB_X28_Y24_N16
\VBEGIN[6]~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VBEGIN[6]~20_combout\ = (VBEGIN(6) & (!\VBEGIN[5]~19\)) # (!VBEGIN(6) & ((\VBEGIN[5]~19\) # (GND)))
-- \VBEGIN[6]~21\ = CARRY((!\VBEGIN[5]~19\) # (!VBEGIN(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => VBEGIN(6),
	datad => VCC,
	cin => \VBEGIN[5]~19\,
	combout => \VBEGIN[6]~20_combout\,
	cout => \VBEGIN[6]~21\);

-- Location: FF_X28_Y24_N17
\VBEGIN[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock25Mhz|TEMPORAL~clkctrl_outclk\,
	d => \VBEGIN[6]~20_combout\,
	sclr => \Equal2~9_combout\,
	ena => \Equal1~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => VBEGIN(6));

-- Location: LCCOMB_X28_Y24_N18
\VBEGIN[7]~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VBEGIN[7]~22_combout\ = (VBEGIN(7) & (\VBEGIN[6]~21\ $ (GND))) # (!VBEGIN(7) & (!\VBEGIN[6]~21\ & VCC))
-- \VBEGIN[7]~23\ = CARRY((VBEGIN(7) & !\VBEGIN[6]~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => VBEGIN(7),
	datad => VCC,
	cin => \VBEGIN[6]~21\,
	combout => \VBEGIN[7]~22_combout\,
	cout => \VBEGIN[7]~23\);

-- Location: FF_X28_Y24_N19
\VBEGIN[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock25Mhz|TEMPORAL~clkctrl_outclk\,
	d => \VBEGIN[7]~22_combout\,
	sclr => \Equal2~9_combout\,
	ena => \Equal1~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => VBEGIN(7));

-- Location: LCCOMB_X28_Y24_N20
\VBEGIN[8]~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VBEGIN[8]~24_combout\ = (VBEGIN(8) & (!\VBEGIN[7]~23\)) # (!VBEGIN(8) & ((\VBEGIN[7]~23\) # (GND)))
-- \VBEGIN[8]~25\ = CARRY((!\VBEGIN[7]~23\) # (!VBEGIN(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => VBEGIN(8),
	datad => VCC,
	cin => \VBEGIN[7]~23\,
	combout => \VBEGIN[8]~24_combout\,
	cout => \VBEGIN[8]~25\);

-- Location: FF_X28_Y24_N21
\VBEGIN[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock25Mhz|TEMPORAL~clkctrl_outclk\,
	d => \VBEGIN[8]~24_combout\,
	sclr => \Equal2~9_combout\,
	ena => \Equal1~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => VBEGIN(8));

-- Location: LCCOMB_X28_Y24_N22
\VBEGIN[9]~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VBEGIN[9]~26_combout\ = (VBEGIN(9) & (\VBEGIN[8]~25\ $ (GND))) # (!VBEGIN(9) & (!\VBEGIN[8]~25\ & VCC))
-- \VBEGIN[9]~27\ = CARRY((VBEGIN(9) & !\VBEGIN[8]~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => VBEGIN(9),
	datad => VCC,
	cin => \VBEGIN[8]~25\,
	combout => \VBEGIN[9]~26_combout\,
	cout => \VBEGIN[9]~27\);

-- Location: LCCOMB_X28_Y24_N24
\VBEGIN[10]~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VBEGIN[10]~28_combout\ = \VBEGIN[9]~27\ $ (VBEGIN(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VBEGIN(10),
	cin => \VBEGIN[9]~27\,
	combout => \VBEGIN[10]~28_combout\);

-- Location: FF_X28_Y24_N25
\VBEGIN[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock25Mhz|TEMPORAL~clkctrl_outclk\,
	d => \VBEGIN[10]~28_combout\,
	sclr => \Equal2~9_combout\,
	ena => \Equal1~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => VBEGIN(10));

-- Location: LCCOMB_X31_Y27_N6
\Add7~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add7~0_combout\ = FBEGIN(1) $ (VCC)
-- \Add7~1\ = CARRY(FBEGIN(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => FBEGIN(1),
	datad => VCC,
	combout => \Add7~0_combout\,
	cout => \Add7~1\);

-- Location: LCCOMB_X31_Y27_N8
\Add7~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add7~2_combout\ = (FBEGIN(2) & ((\Move_left~input_o\ & (!\Add7~1\)) # (!\Move_left~input_o\ & (\Add7~1\ & VCC)))) # (!FBEGIN(2) & ((\Move_left~input_o\ & ((\Add7~1\) # (GND))) # (!\Move_left~input_o\ & (!\Add7~1\))))
-- \Add7~3\ = CARRY((FBEGIN(2) & (\Move_left~input_o\ & !\Add7~1\)) # (!FBEGIN(2) & ((\Move_left~input_o\) # (!\Add7~1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => FBEGIN(2),
	datab => \Move_left~input_o\,
	datad => VCC,
	cin => \Add7~1\,
	combout => \Add7~2_combout\,
	cout => \Add7~3\);

-- Location: LCCOMB_X31_Y27_N14
\Add7~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add7~8_combout\ = ((FBEGIN(5) $ (\Move_left~input_o\ $ (\Add7~7\)))) # (GND)
-- \Add7~9\ = CARRY((FBEGIN(5) & ((!\Add7~7\) # (!\Move_left~input_o\))) # (!FBEGIN(5) & (!\Move_left~input_o\ & !\Add7~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => FBEGIN(5),
	datab => \Move_left~input_o\,
	datad => VCC,
	cin => \Add7~7\,
	combout => \Add7~8_combout\,
	cout => \Add7~9\);

-- Location: FF_X31_Y27_N23
\FBEGIN[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock25Mhz|TEMPORAL~clkctrl_outclk\,
	d => \Add7~16_combout\,
	ena => \FBEGIN[10]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => FBEGIN(9));

-- Location: LCCOMB_X32_Y26_N26
\VGA_syncronizador|Add2~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_syncronizador|Add2~2_combout\ = \VGA_syncronizador|COUNTER_H\(9) $ (((\VGA_syncronizador|COUNTER_H\(8)) # (\VGA_syncronizador|Add2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_syncronizador|COUNTER_H\(8),
	datab => \VGA_syncronizador|Add2~0_combout\,
	datad => \VGA_syncronizador|COUNTER_H\(9),
	combout => \VGA_syncronizador|Add2~2_combout\);

-- Location: LCCOMB_X31_Y26_N2
\VGA_syncronizador|Add2~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_syncronizador|Add2~5_combout\ = \VGA_syncronizador|COUNTER_H\(7) $ (((\VGA_syncronizador|COUNTER_H\(5)) # ((\VGA_syncronizador|COUNTER_H\(4)) # (\VGA_syncronizador|COUNTER_H\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_syncronizador|COUNTER_H\(5),
	datab => \VGA_syncronizador|COUNTER_H\(4),
	datac => \VGA_syncronizador|COUNTER_H\(7),
	datad => \VGA_syncronizador|COUNTER_H\(6),
	combout => \VGA_syncronizador|Add2~5_combout\);

-- Location: FF_X31_Y27_N15
\FBEGIN[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock25Mhz|TEMPORAL~clkctrl_outclk\,
	d => \Add7~8_combout\,
	ena => \FBEGIN[10]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => FBEGIN(5));

-- Location: FF_X31_Y27_N9
\FBEGIN[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock25Mhz|TEMPORAL~clkctrl_outclk\,
	d => \Add7~2_combout\,
	ena => \FBEGIN[10]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => FBEGIN(2));

-- Location: FF_X31_Y27_N7
\FBEGIN[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock25Mhz|TEMPORAL~clkctrl_outclk\,
	d => \Add7~0_combout\,
	ena => \FBEGIN[10]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => FBEGIN(1));

-- Location: LCCOMB_X31_Y26_N4
\LessThan4~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan4~1_cout\ = CARRY(\VGA_syncronizador|COUNTER_H\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_syncronizador|COUNTER_H\(0),
	datad => VCC,
	cout => \LessThan4~1_cout\);

-- Location: LCCOMB_X31_Y26_N6
\LessThan4~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan4~3_cout\ = CARRY((\VGA_syncronizador|COUNTER_H\(1) & (FBEGIN(1) & !\LessThan4~1_cout\)) # (!\VGA_syncronizador|COUNTER_H\(1) & ((FBEGIN(1)) # (!\LessThan4~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_syncronizador|COUNTER_H\(1),
	datab => FBEGIN(1),
	datad => VCC,
	cin => \LessThan4~1_cout\,
	cout => \LessThan4~3_cout\);

-- Location: LCCOMB_X31_Y26_N8
\LessThan4~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan4~5_cout\ = CARRY((\VGA_syncronizador|COUNTER_H\(2) & ((!\LessThan4~3_cout\) # (!FBEGIN(2)))) # (!\VGA_syncronizador|COUNTER_H\(2) & (!FBEGIN(2) & !\LessThan4~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_syncronizador|COUNTER_H\(2),
	datab => FBEGIN(2),
	datad => VCC,
	cin => \LessThan4~3_cout\,
	cout => \LessThan4~5_cout\);

-- Location: LCCOMB_X31_Y26_N10
\LessThan4~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan4~7_cout\ = CARRY((FBEGIN(3) & (!\VGA_syncronizador|COUNTER_H\(3) & !\LessThan4~5_cout\)) # (!FBEGIN(3) & ((!\LessThan4~5_cout\) # (!\VGA_syncronizador|COUNTER_H\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => FBEGIN(3),
	datab => \VGA_syncronizador|COUNTER_H\(3),
	datad => VCC,
	cin => \LessThan4~5_cout\,
	cout => \LessThan4~7_cout\);

-- Location: LCCOMB_X31_Y26_N12
\LessThan4~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan4~9_cout\ = CARRY((FBEGIN(4) & ((!\LessThan4~7_cout\) # (!\VGA_syncronizador|COUNTER_H\(4)))) # (!FBEGIN(4) & (!\VGA_syncronizador|COUNTER_H\(4) & !\LessThan4~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => FBEGIN(4),
	datab => \VGA_syncronizador|COUNTER_H\(4),
	datad => VCC,
	cin => \LessThan4~7_cout\,
	cout => \LessThan4~9_cout\);

-- Location: LCCOMB_X31_Y26_N14
\LessThan4~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan4~11_cout\ = CARRY((\VGA_syncronizador|Add2~4_combout\ & ((FBEGIN(5)) # (!\LessThan4~9_cout\))) # (!\VGA_syncronizador|Add2~4_combout\ & (FBEGIN(5) & !\LessThan4~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_syncronizador|Add2~4_combout\,
	datab => FBEGIN(5),
	datad => VCC,
	cin => \LessThan4~9_cout\,
	cout => \LessThan4~11_cout\);

-- Location: LCCOMB_X31_Y26_N16
\LessThan4~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan4~13_cout\ = CARRY((FBEGIN(6) & (!\VGA_syncronizador|Add2~3_combout\ & !\LessThan4~11_cout\)) # (!FBEGIN(6) & ((!\LessThan4~11_cout\) # (!\VGA_syncronizador|Add2~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => FBEGIN(6),
	datab => \VGA_syncronizador|Add2~3_combout\,
	datad => VCC,
	cin => \LessThan4~11_cout\,
	cout => \LessThan4~13_cout\);

-- Location: LCCOMB_X31_Y26_N18
\LessThan4~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan4~15_cout\ = CARRY((FBEGIN(7) & ((!\LessThan4~13_cout\) # (!\VGA_syncronizador|Add2~5_combout\))) # (!FBEGIN(7) & (!\VGA_syncronizador|Add2~5_combout\ & !\LessThan4~13_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => FBEGIN(7),
	datab => \VGA_syncronizador|Add2~5_combout\,
	datad => VCC,
	cin => \LessThan4~13_cout\,
	cout => \LessThan4~15_cout\);

-- Location: LCCOMB_X31_Y26_N20
\LessThan4~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan4~17_cout\ = CARRY((FBEGIN(8) & ((!\LessThan4~15_cout\) # (!\VGA_syncronizador|Add2~1_combout\))) # (!FBEGIN(8) & (!\VGA_syncronizador|Add2~1_combout\ & !\LessThan4~15_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => FBEGIN(8),
	datab => \VGA_syncronizador|Add2~1_combout\,
	datad => VCC,
	cin => \LessThan4~15_cout\,
	cout => \LessThan4~17_cout\);

-- Location: LCCOMB_X31_Y26_N22
\LessThan4~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan4~18_combout\ = (FBEGIN(9) & (\LessThan4~17_cout\ & !\VGA_syncronizador|Add2~2_combout\)) # (!FBEGIN(9) & ((\LessThan4~17_cout\) # (!\VGA_syncronizador|Add2~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => FBEGIN(9),
	datad => \VGA_syncronizador|Add2~2_combout\,
	cin => \LessThan4~17_cout\,
	combout => \LessThan4~18_combout\);

-- Location: FF_X28_Y24_N23
\VBEGIN[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock25Mhz|TEMPORAL~clkctrl_outclk\,
	d => \VBEGIN[9]~26_combout\,
	sclr => \Equal2~9_combout\,
	ena => \Equal1~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => VBEGIN(9));

-- Location: FF_X30_Y24_N3
\VGA_syncronizador|COUNTER_V[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock25Mhz|TEMPORAL~clkctrl_outclk\,
	asdata => \VGA_syncronizador|Add1~2_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \VGA_syncronizador|Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_syncronizador|COUNTER_V\(1));

-- Location: LCCOMB_X30_Y24_N4
\VGA_syncronizador|COUNTER_V~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_syncronizador|COUNTER_V~2_combout\ = (!\VGA_syncronizador|Equal1~2_combout\ & \VGA_syncronizador|Add1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \VGA_syncronizador|Equal1~2_combout\,
	datad => \VGA_syncronizador|Add1~0_combout\,
	combout => \VGA_syncronizador|COUNTER_V~2_combout\);

-- Location: FF_X30_Y24_N5
\VGA_syncronizador|COUNTER_V[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock25Mhz|TEMPORAL~clkctrl_outclk\,
	d => \VGA_syncronizador|COUNTER_V~2_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	ena => \VGA_syncronizador|Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_syncronizador|COUNTER_V\(0));

-- Location: LCCOMB_X30_Y24_N18
\VGA_syncronizador|Add3~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_syncronizador|Add3~8_combout\ = (\VGA_syncronizador|COUNTER_V\(4) & (\VGA_syncronizador|Add3~7\ $ (GND))) # (!\VGA_syncronizador|COUNTER_V\(4) & (!\VGA_syncronizador|Add3~7\ & VCC))
-- \VGA_syncronizador|Add3~9\ = CARRY((\VGA_syncronizador|COUNTER_V\(4) & !\VGA_syncronizador|Add3~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_syncronizador|COUNTER_V\(4),
	datad => VCC,
	cin => \VGA_syncronizador|Add3~7\,
	combout => \VGA_syncronizador|Add3~8_combout\,
	cout => \VGA_syncronizador|Add3~9\);

-- Location: LCCOMB_X30_Y24_N20
\VGA_syncronizador|Add3~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_syncronizador|Add3~10_combout\ = (\VGA_syncronizador|COUNTER_V\(5) & (\VGA_syncronizador|Add3~9\ & VCC)) # (!\VGA_syncronizador|COUNTER_V\(5) & (!\VGA_syncronizador|Add3~9\))
-- \VGA_syncronizador|Add3~11\ = CARRY((!\VGA_syncronizador|COUNTER_V\(5) & !\VGA_syncronizador|Add3~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA_syncronizador|COUNTER_V\(5),
	datad => VCC,
	cin => \VGA_syncronizador|Add3~9\,
	combout => \VGA_syncronizador|Add3~10_combout\,
	cout => \VGA_syncronizador|Add3~11\);

-- Location: LCCOMB_X30_Y24_N22
\VGA_syncronizador|Add3~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_syncronizador|Add3~12_combout\ = (\VGA_syncronizador|COUNTER_V\(6) & ((GND) # (!\VGA_syncronizador|Add3~11\))) # (!\VGA_syncronizador|COUNTER_V\(6) & (\VGA_syncronizador|Add3~11\ $ (GND)))
-- \VGA_syncronizador|Add3~13\ = CARRY((\VGA_syncronizador|COUNTER_V\(6)) # (!\VGA_syncronizador|Add3~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_syncronizador|COUNTER_V\(6),
	datad => VCC,
	cin => \VGA_syncronizador|Add3~11\,
	combout => \VGA_syncronizador|Add3~12_combout\,
	cout => \VGA_syncronizador|Add3~13\);

-- Location: LCCOMB_X30_Y24_N24
\VGA_syncronizador|Add3~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_syncronizador|Add3~14_combout\ = (\VGA_syncronizador|COUNTER_V\(7) & (\VGA_syncronizador|Add3~13\ & VCC)) # (!\VGA_syncronizador|COUNTER_V\(7) & (!\VGA_syncronizador|Add3~13\))
-- \VGA_syncronizador|Add3~15\ = CARRY((!\VGA_syncronizador|COUNTER_V\(7) & !\VGA_syncronizador|Add3~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA_syncronizador|COUNTER_V\(7),
	datad => VCC,
	cin => \VGA_syncronizador|Add3~13\,
	combout => \VGA_syncronizador|Add3~14_combout\,
	cout => \VGA_syncronizador|Add3~15\);

-- Location: LCCOMB_X30_Y24_N28
\VGA_syncronizador|Add3~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_syncronizador|Add3~18_combout\ = \VGA_syncronizador|Add3~17\ $ (!\VGA_syncronizador|COUNTER_V\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \VGA_syncronizador|COUNTER_V\(9),
	cin => \VGA_syncronizador|Add3~17\,
	combout => \VGA_syncronizador|Add3~18_combout\);

-- Location: FF_X28_Y24_N11
\VBEGIN[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock25Mhz|TEMPORAL~clkctrl_outclk\,
	d => \VBEGIN[3]~14_combout\,
	sclr => \Equal2~9_combout\,
	ena => \Equal1~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => VBEGIN(3));

-- Location: FF_X28_Y24_N7
\VBEGIN[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock25Mhz|TEMPORAL~clkctrl_outclk\,
	d => \VBEGIN[1]~10_combout\,
	sclr => \Equal2~9_combout\,
	ena => \Equal1~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => VBEGIN(1));

-- Location: LCCOMB_X31_Y24_N0
\LessThan6~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan6~1_cout\ = CARRY(\VGA_syncronizador|Add3~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_syncronizador|Add3~0_combout\,
	datad => VCC,
	cout => \LessThan6~1_cout\);

-- Location: LCCOMB_X31_Y24_N2
\LessThan6~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan6~3_cout\ = CARRY((\VGA_syncronizador|Add3~2_combout\ & (VBEGIN(1) & !\LessThan6~1_cout\)) # (!\VGA_syncronizador|Add3~2_combout\ & ((VBEGIN(1)) # (!\LessThan6~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_syncronizador|Add3~2_combout\,
	datab => VBEGIN(1),
	datad => VCC,
	cin => \LessThan6~1_cout\,
	cout => \LessThan6~3_cout\);

-- Location: LCCOMB_X31_Y24_N4
\LessThan6~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan6~5_cout\ = CARRY((\VGA_syncronizador|Add3~4_combout\ & ((!\LessThan6~3_cout\) # (!VBEGIN(2)))) # (!\VGA_syncronizador|Add3~4_combout\ & (!VBEGIN(2) & !\LessThan6~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_syncronizador|Add3~4_combout\,
	datab => VBEGIN(2),
	datad => VCC,
	cin => \LessThan6~3_cout\,
	cout => \LessThan6~5_cout\);

-- Location: LCCOMB_X31_Y24_N6
\LessThan6~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan6~7_cout\ = CARRY((\VGA_syncronizador|Add3~6_combout\ & (VBEGIN(3) & !\LessThan6~5_cout\)) # (!\VGA_syncronizador|Add3~6_combout\ & ((VBEGIN(3)) # (!\LessThan6~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_syncronizador|Add3~6_combout\,
	datab => VBEGIN(3),
	datad => VCC,
	cin => \LessThan6~5_cout\,
	cout => \LessThan6~7_cout\);

-- Location: LCCOMB_X31_Y24_N8
\LessThan6~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan6~9_cout\ = CARRY((VBEGIN(4) & (\VGA_syncronizador|Add3~8_combout\ & !\LessThan6~7_cout\)) # (!VBEGIN(4) & ((\VGA_syncronizador|Add3~8_combout\) # (!\LessThan6~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => VBEGIN(4),
	datab => \VGA_syncronizador|Add3~8_combout\,
	datad => VCC,
	cin => \LessThan6~7_cout\,
	cout => \LessThan6~9_cout\);

-- Location: LCCOMB_X31_Y24_N10
\LessThan6~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan6~11_cout\ = CARRY((VBEGIN(5) & ((!\LessThan6~9_cout\) # (!\VGA_syncronizador|Add3~10_combout\))) # (!VBEGIN(5) & (!\VGA_syncronizador|Add3~10_combout\ & !\LessThan6~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => VBEGIN(5),
	datab => \VGA_syncronizador|Add3~10_combout\,
	datad => VCC,
	cin => \LessThan6~9_cout\,
	cout => \LessThan6~11_cout\);

-- Location: LCCOMB_X31_Y24_N12
\LessThan6~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan6~13_cout\ = CARRY((VBEGIN(6) & (\VGA_syncronizador|Add3~12_combout\ & !\LessThan6~11_cout\)) # (!VBEGIN(6) & ((\VGA_syncronizador|Add3~12_combout\) # (!\LessThan6~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => VBEGIN(6),
	datab => \VGA_syncronizador|Add3~12_combout\,
	datad => VCC,
	cin => \LessThan6~11_cout\,
	cout => \LessThan6~13_cout\);

-- Location: LCCOMB_X31_Y24_N14
\LessThan6~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan6~15_cout\ = CARRY((VBEGIN(7) & ((!\LessThan6~13_cout\) # (!\VGA_syncronizador|Add3~14_combout\))) # (!VBEGIN(7) & (!\VGA_syncronizador|Add3~14_combout\ & !\LessThan6~13_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => VBEGIN(7),
	datab => \VGA_syncronizador|Add3~14_combout\,
	datad => VCC,
	cin => \LessThan6~13_cout\,
	cout => \LessThan6~15_cout\);

-- Location: LCCOMB_X31_Y24_N16
\LessThan6~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan6~17_cout\ = CARRY((\VGA_syncronizador|Add3~16_combout\ & ((!\LessThan6~15_cout\) # (!VBEGIN(8)))) # (!\VGA_syncronizador|Add3~16_combout\ & (!VBEGIN(8) & !\LessThan6~15_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_syncronizador|Add3~16_combout\,
	datab => VBEGIN(8),
	datad => VCC,
	cin => \LessThan6~15_cout\,
	cout => \LessThan6~17_cout\);

-- Location: LCCOMB_X31_Y24_N18
\LessThan6~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan6~18_combout\ = (VBEGIN(9) & (\LessThan6~17_cout\ & \VGA_syncronizador|Add3~18_combout\)) # (!VBEGIN(9) & ((\LessThan6~17_cout\) # (\VGA_syncronizador|Add3~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => VBEGIN(9),
	datad => \VGA_syncronizador|Add3~18_combout\,
	cin => \LessThan6~17_cout\,
	combout => \LessThan6~18_combout\);

-- Location: LCCOMB_X32_Y24_N2
\R~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \R~4_combout\ = (FBEGIN(10) & ((VBEGIN(10)) # ((\LessThan6~18_combout\)))) # (!FBEGIN(10) & (\LessThan4~18_combout\ & ((VBEGIN(10)) # (\LessThan6~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => FBEGIN(10),
	datab => VBEGIN(10),
	datac => \LessThan4~18_combout\,
	datad => \LessThan6~18_combout\,
	combout => \R~4_combout\);

-- Location: LCCOMB_X32_Y24_N18
\R~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \R~7_combout\ = (\R~3_combout\) # ((\LessThan7~8_combout\ & (\R~6_combout\ & \R~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \R~3_combout\,
	datab => \LessThan7~8_combout\,
	datac => \R~6_combout\,
	datad => \R~4_combout\,
	combout => \R~7_combout\);

-- Location: LCCOMB_X32_Y24_N28
\R[0]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \R[0]~reg0feeder_combout\ = \R~7_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \R~7_combout\,
	combout => \R[0]~reg0feeder_combout\);

-- Location: FF_X32_Y24_N29
\R[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock25Mhz|TEMPORAL~clkctrl_outclk\,
	d => \R[0]~reg0feeder_combout\,
	clrn => \RST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \R[0]~reg0_q\);

-- Location: LCCOMB_X32_Y24_N10
\R[1]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \R[1]~reg0feeder_combout\ = \R~7_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \R~7_combout\,
	combout => \R[1]~reg0feeder_combout\);

-- Location: FF_X32_Y24_N11
\R[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock25Mhz|TEMPORAL~clkctrl_outclk\,
	d => \R[1]~reg0feeder_combout\,
	clrn => \RST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \R[1]~reg0_q\);

-- Location: LCCOMB_X32_Y24_N24
\R[2]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \R[2]~reg0feeder_combout\ = \R~7_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \R~7_combout\,
	combout => \R[2]~reg0feeder_combout\);

-- Location: FF_X32_Y24_N25
\R[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock25Mhz|TEMPORAL~clkctrl_outclk\,
	d => \R[2]~reg0feeder_combout\,
	clrn => \RST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \R[2]~reg0_q\);

-- Location: LCCOMB_X32_Y24_N22
\R[3]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \R[3]~reg0feeder_combout\ = \R~7_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \R~7_combout\,
	combout => \R[3]~reg0feeder_combout\);

-- Location: FF_X32_Y24_N23
\R[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock25Mhz|TEMPORAL~clkctrl_outclk\,
	d => \R[3]~reg0feeder_combout\,
	clrn => \RST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \R[3]~reg0_q\);

-- Location: LCCOMB_X32_Y24_N8
\B[0]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \B[0]~reg0feeder_combout\ = \R~7_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \R~7_combout\,
	combout => \B[0]~reg0feeder_combout\);

-- Location: FF_X32_Y24_N9
\B[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock25Mhz|TEMPORAL~clkctrl_outclk\,
	d => \B[0]~reg0feeder_combout\,
	clrn => \RST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B[0]~reg0_q\);

-- Location: FF_X32_Y24_N19
\B[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock25Mhz|TEMPORAL~clkctrl_outclk\,
	d => \R~7_combout\,
	clrn => \RST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B[1]~reg0_q\);

-- Location: LCCOMB_X32_Y24_N20
\B[2]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \B[2]~reg0feeder_combout\ = \R~7_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \R~7_combout\,
	combout => \B[2]~reg0feeder_combout\);

-- Location: FF_X32_Y24_N21
\B[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock25Mhz|TEMPORAL~clkctrl_outclk\,
	d => \B[2]~reg0feeder_combout\,
	clrn => \RST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B[2]~reg0_q\);

-- Location: LCCOMB_X32_Y24_N30
\B[3]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \B[3]~reg0feeder_combout\ = \R~7_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \R~7_combout\,
	combout => \B[3]~reg0feeder_combout\);

-- Location: FF_X32_Y24_N31
\B[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock25Mhz|TEMPORAL~clkctrl_outclk\,
	d => \B[3]~reg0feeder_combout\,
	clrn => \RST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B[3]~reg0_q\);

-- Location: IOIBUF_X5_Y0_N29
\Move_down~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Move_down,
	o => \Move_down~input_o\);

ww_HSYNC <= \HSYNC~output_o\;

ww_VSYNC <= \VSYNC~output_o\;

ww_R(0) <= \R[0]~output_o\;

ww_R(1) <= \R[1]~output_o\;

ww_R(2) <= \R[2]~output_o\;

ww_R(3) <= \R[3]~output_o\;

ww_G(0) <= \G[0]~output_o\;

ww_G(1) <= \G[1]~output_o\;

ww_G(2) <= \G[2]~output_o\;

ww_G(3) <= \G[3]~output_o\;

ww_B(0) <= \B[0]~output_o\;

ww_B(1) <= \B[1]~output_o\;

ww_B(2) <= \B[2]~output_o\;

ww_B(3) <= \B[3]~output_o\;

\ww_global.bp.work.tetris_package.rnd_count_r_2__gl_output\ <= \rnd_count_r_2_~q\;

\ww_global.bp.work.tetris_package.rnd_count_r_1__gl_output\ <= \rnd_count_r_1_~q\;

\ww_global.bp.work.tetris_package.rnd_count_r_0__gl_output\ <= \rnd_count_r_0_~q\;
END structure;


