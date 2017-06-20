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

-- DATE "08/05/2016 10:56:33"

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

ENTITY 	PIANO IS
    PORT (
	CLK : IN std_logic;
	RST : IN std_logic;
	HSYNC : OUT std_logic;
	VSYNC : OUT std_logic;
	R : OUT std_logic_vector(3 DOWNTO 0);
	G : OUT std_logic_vector(3 DOWNTO 0);
	B : OUT std_logic_vector(3 DOWNTO 0)
	);
END PIANO;

-- Design Ports Information
-- HSYNC	=>  Location: PIN_L21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VSYNC	=>  Location: PIN_L22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R[0]	=>  Location: PIN_H19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R[1]	=>  Location: PIN_H17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R[2]	=>  Location: PIN_H20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R[3]	=>  Location: PIN_H21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- G[0]	=>  Location: PIN_H22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- G[1]	=>  Location: PIN_J17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- G[2]	=>  Location: PIN_K17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- G[3]	=>  Location: PIN_J21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[0]	=>  Location: PIN_K22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[1]	=>  Location: PIN_K21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[2]	=>  Location: PIN_J22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[3]	=>  Location: PIN_K18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RST	=>  Location: PIN_J16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK	=>  Location: PIN_G21,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF PIANO IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_CLK : std_logic;
SIGNAL ww_RST : std_logic;
SIGNAL ww_HSYNC : std_logic;
SIGNAL ww_VSYNC : std_logic;
SIGNAL ww_R : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_G : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_B : std_logic_vector(3 DOWNTO 0);
SIGNAL \CLOCK25MHZ|TEMPORAL~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \VGA_SYNCRONIZADOR|Add1~6_combout\ : std_logic;
SIGNAL \VGA_SYNCRONIZADOR|Add3~4_combout\ : std_logic;
SIGNAL \LessThan0~0_combout\ : std_logic;
SIGNAL \LessThan0~1_combout\ : std_logic;
SIGNAL \LessThan0~2_combout\ : std_logic;
SIGNAL \CLOCK25MHZ|TEMPORAL~0_combout\ : std_logic;
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
SIGNAL \VGA_SYNCRONIZADOR|Add0~17\ : std_logic;
SIGNAL \VGA_SYNCRONIZADOR|Add0~19\ : std_logic;
SIGNAL \VGA_SYNCRONIZADOR|Add0~20_combout\ : std_logic;
SIGNAL \VGA_SYNCRONIZADOR|Add0~22_combout\ : std_logic;
SIGNAL \RST~input_o\ : std_logic;
SIGNAL \VGA_SYNCRONIZADOR|Add0~18_combout\ : std_logic;
SIGNAL \VGA_SYNCRONIZADOR|Add0~23_combout\ : std_logic;
SIGNAL \VGA_SYNCRONIZADOR|Add0~0_combout\ : std_logic;
SIGNAL \VGA_SYNCRONIZADOR|Add0~29_combout\ : std_logic;
SIGNAL \VGA_SYNCRONIZADOR|Add0~6_combout\ : std_logic;
SIGNAL \VGA_SYNCRONIZADOR|Add0~26_combout\ : std_logic;
SIGNAL \VGA_SYNCRONIZADOR|Add0~8_combout\ : std_logic;
SIGNAL \VGA_SYNCRONIZADOR|Add0~25_combout\ : std_logic;
SIGNAL \VGA_SYNCRONIZADOR|Add0~1\ : std_logic;
SIGNAL \VGA_SYNCRONIZADOR|Add0~2_combout\ : std_logic;
SIGNAL \VGA_SYNCRONIZADOR|Add0~28_combout\ : std_logic;
SIGNAL \VGA_SYNCRONIZADOR|LessThan0~1_combout\ : std_logic;
SIGNAL \VGA_SYNCRONIZADOR|LessThan0~0_combout\ : std_logic;
SIGNAL \VGA_SYNCRONIZADOR|LessThan0~2_combout\ : std_logic;
SIGNAL \VGA_SYNCRONIZADOR|Add0~3\ : std_logic;
SIGNAL \VGA_SYNCRONIZADOR|Add0~4_combout\ : std_logic;
SIGNAL \VGA_SYNCRONIZADOR|Add0~27_combout\ : std_logic;
SIGNAL \VGA_SYNCRONIZADOR|Add0~5\ : std_logic;
SIGNAL \VGA_SYNCRONIZADOR|Add0~7\ : std_logic;
SIGNAL \VGA_SYNCRONIZADOR|Add0~9\ : std_logic;
SIGNAL \VGA_SYNCRONIZADOR|Add0~10_combout\ : std_logic;
SIGNAL \VGA_SYNCRONIZADOR|Add0~15_combout\ : std_logic;
SIGNAL \VGA_SYNCRONIZADOR|Add0~11\ : std_logic;
SIGNAL \VGA_SYNCRONIZADOR|Add0~12_combout\ : std_logic;
SIGNAL \VGA_SYNCRONIZADOR|Add0~14_combout\ : std_logic;
SIGNAL \VGA_SYNCRONIZADOR|Add0~13\ : std_logic;
SIGNAL \VGA_SYNCRONIZADOR|Add0~16_combout\ : std_logic;
SIGNAL \VGA_SYNCRONIZADOR|Add0~24_combout\ : std_logic;
SIGNAL \VGA_SYNCRONIZADOR|LessThan1~0_combout\ : std_logic;
SIGNAL \VGA_SYNCRONIZADOR|LessThan1~1_combout\ : std_logic;
SIGNAL \VGA_SYNCRONIZADOR|Add1~1\ : std_logic;
SIGNAL \VGA_SYNCRONIZADOR|Add1~2_combout\ : std_logic;
SIGNAL \VGA_SYNCRONIZADOR|Equal0~0_combout\ : std_logic;
SIGNAL \VGA_SYNCRONIZADOR|Equal0~3_combout\ : std_logic;
SIGNAL \VGA_SYNCRONIZADOR|Equal0~1_combout\ : std_logic;
SIGNAL \VGA_SYNCRONIZADOR|Equal0~2_combout\ : std_logic;
SIGNAL \VGA_SYNCRONIZADOR|Equal0~4_combout\ : std_logic;
SIGNAL \VGA_SYNCRONIZADOR|Add1~3\ : std_logic;
SIGNAL \VGA_SYNCRONIZADOR|Add1~5\ : std_logic;
SIGNAL \VGA_SYNCRONIZADOR|Add1~7\ : std_logic;
SIGNAL \VGA_SYNCRONIZADOR|Add1~9\ : std_logic;
SIGNAL \VGA_SYNCRONIZADOR|Add1~11\ : std_logic;
SIGNAL \VGA_SYNCRONIZADOR|Add1~13\ : std_logic;
SIGNAL \VGA_SYNCRONIZADOR|Add1~15\ : std_logic;
SIGNAL \VGA_SYNCRONIZADOR|Add1~17\ : std_logic;
SIGNAL \VGA_SYNCRONIZADOR|Add1~18_combout\ : std_logic;
SIGNAL \VGA_SYNCRONIZADOR|COUNTER_V~0_combout\ : std_logic;
SIGNAL \VGA_SYNCRONIZADOR|Add1~0_combout\ : std_logic;
SIGNAL \VGA_SYNCRONIZADOR|COUNTER_V~2_combout\ : std_logic;
SIGNAL \VGA_SYNCRONIZADOR|Add1~8_combout\ : std_logic;
SIGNAL \VGA_SYNCRONIZADOR|Add1~12_combout\ : std_logic;
SIGNAL \VGA_SYNCRONIZADOR|Add1~14_combout\ : std_logic;
SIGNAL \VGA_SYNCRONIZADOR|Add1~10_combout\ : std_logic;
SIGNAL \VGA_SYNCRONIZADOR|Equal1~0_combout\ : std_logic;
SIGNAL \VGA_SYNCRONIZADOR|Equal1~1_combout\ : std_logic;
SIGNAL \VGA_SYNCRONIZADOR|Equal1~2_combout\ : std_logic;
SIGNAL \VGA_SYNCRONIZADOR|COUNTER_V~1_combout\ : std_logic;
SIGNAL \VGA_SYNCRONIZADOR|LessThan2~0_combout\ : std_logic;
SIGNAL \CLOCK25MHZ|TEMPORAL~feeder_combout\ : std_logic;
SIGNAL \CLOCK25MHZ|TEMPORAL~q\ : std_logic;
SIGNAL \CLOCK25MHZ|TEMPORAL~clkctrl_outclk\ : std_logic;
SIGNAL \process_0~3_combout\ : std_logic;
SIGNAL \process_0~4_combout\ : std_logic;
SIGNAL \VGA_SYNCRONIZADOR|Add1~4_combout\ : std_logic;
SIGNAL \VGA_SYNCRONIZADOR|Add3~1\ : std_logic;
SIGNAL \VGA_SYNCRONIZADOR|Add3~3\ : std_logic;
SIGNAL \VGA_SYNCRONIZADOR|Add3~5\ : std_logic;
SIGNAL \VGA_SYNCRONIZADOR|Add3~7\ : std_logic;
SIGNAL \VGA_SYNCRONIZADOR|Add3~9\ : std_logic;
SIGNAL \VGA_SYNCRONIZADOR|Add3~11\ : std_logic;
SIGNAL \VGA_SYNCRONIZADOR|Add3~12_combout\ : std_logic;
SIGNAL \VGA_SYNCRONIZADOR|Add3~10_combout\ : std_logic;
SIGNAL \VGA_SYNCRONIZADOR|Add1~16_combout\ : std_logic;
SIGNAL \VGA_SYNCRONIZADOR|COUNTER_V[8]~feeder_combout\ : std_logic;
SIGNAL \VGA_SYNCRONIZADOR|Add3~13\ : std_logic;
SIGNAL \VGA_SYNCRONIZADOR|Add3~15\ : std_logic;
SIGNAL \VGA_SYNCRONIZADOR|Add3~16_combout\ : std_logic;
SIGNAL \process_0~0_combout\ : std_logic;
SIGNAL \VGA_SYNCRONIZADOR|Add3~0_combout\ : std_logic;
SIGNAL \VGA_SYNCRONIZADOR|Add3~2_combout\ : std_logic;
SIGNAL \VGA_SYNCRONIZADOR|Add3~6_combout\ : std_logic;
SIGNAL \LessThan2~1_combout\ : std_logic;
SIGNAL \VGA_SYNCRONIZADOR|Add3~17\ : std_logic;
SIGNAL \VGA_SYNCRONIZADOR|Add3~18_combout\ : std_logic;
SIGNAL \VGA_SYNCRONIZADOR|Add3~8_combout\ : std_logic;
SIGNAL \VGA_SYNCRONIZADOR|Add3~14_combout\ : std_logic;
SIGNAL \LessThan2~0_combout\ : std_logic;
SIGNAL \process_0~1_combout\ : std_logic;
SIGNAL \process_0~2_combout\ : std_logic;
SIGNAL \process_0~5_combout\ : std_logic;
SIGNAL \R[0]~reg0feeder_combout\ : std_logic;
SIGNAL \R[0]~reg0_q\ : std_logic;
SIGNAL \R[1]~reg0feeder_combout\ : std_logic;
SIGNAL \R[1]~reg0_q\ : std_logic;
SIGNAL \R[2]~reg0feeder_combout\ : std_logic;
SIGNAL \R[2]~reg0_q\ : std_logic;
SIGNAL \R[3]~reg0feeder_combout\ : std_logic;
SIGNAL \R[3]~reg0_q\ : std_logic;
SIGNAL \G[0]~reg0feeder_combout\ : std_logic;
SIGNAL \G[0]~reg0_q\ : std_logic;
SIGNAL \G[1]~reg0feeder_combout\ : std_logic;
SIGNAL \G[1]~reg0_q\ : std_logic;
SIGNAL \G[2]~reg0feeder_combout\ : std_logic;
SIGNAL \G[2]~reg0_q\ : std_logic;
SIGNAL \G[3]~reg0feeder_combout\ : std_logic;
SIGNAL \G[3]~reg0_q\ : std_logic;
SIGNAL \B[0]~reg0_q\ : std_logic;
SIGNAL \B[1]~reg0feeder_combout\ : std_logic;
SIGNAL \B[1]~reg0_q\ : std_logic;
SIGNAL \B[2]~reg0feeder_combout\ : std_logic;
SIGNAL \B[2]~reg0_q\ : std_logic;
SIGNAL \B[3]~reg0feeder_combout\ : std_logic;
SIGNAL \B[3]~reg0_q\ : std_logic;
SIGNAL \VGA_SYNCRONIZADOR|COUNTER_V\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \VGA_SYNCRONIZADOR|COUNTER_H\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \ALT_INV_CLK~input_o\ : std_logic;
SIGNAL \ALT_INV_RST~input_o\ : std_logic;
SIGNAL \VGA_SYNCRONIZADOR|ALT_INV_LessThan1~1_combout\ : std_logic;

BEGIN

ww_CLK <= CLK;
ww_RST <= RST;
HSYNC <= ww_HSYNC;
VSYNC <= ww_VSYNC;
R <= ww_R;
G <= ww_G;
B <= ww_B;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\CLOCK25MHZ|TEMPORAL~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLOCK25MHZ|TEMPORAL~q\);
\ALT_INV_CLK~input_o\ <= NOT \CLK~input_o\;
\ALT_INV_RST~input_o\ <= NOT \RST~input_o\;
\VGA_SYNCRONIZADOR|ALT_INV_LessThan1~1_combout\ <= NOT \VGA_SYNCRONIZADOR|LessThan1~1_combout\;

-- Location: LCCOMB_X36_Y19_N14
\VGA_SYNCRONIZADOR|Add1~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_SYNCRONIZADOR|Add1~6_combout\ = (\VGA_SYNCRONIZADOR|COUNTER_V\(3) & (!\VGA_SYNCRONIZADOR|Add1~5\)) # (!\VGA_SYNCRONIZADOR|COUNTER_V\(3) & ((\VGA_SYNCRONIZADOR|Add1~5\) # (GND)))
-- \VGA_SYNCRONIZADOR|Add1~7\ = CARRY((!\VGA_SYNCRONIZADOR|Add1~5\) # (!\VGA_SYNCRONIZADOR|COUNTER_V\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_SYNCRONIZADOR|COUNTER_V\(3),
	datad => VCC,
	cin => \VGA_SYNCRONIZADOR|Add1~5\,
	combout => \VGA_SYNCRONIZADOR|Add1~6_combout\,
	cout => \VGA_SYNCRONIZADOR|Add1~7\);

-- Location: LCCOMB_X40_Y19_N12
\VGA_SYNCRONIZADOR|Add3~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_SYNCRONIZADOR|Add3~4_combout\ = (\VGA_SYNCRONIZADOR|COUNTER_V\(2) & (\VGA_SYNCRONIZADOR|Add3~3\ $ (GND))) # (!\VGA_SYNCRONIZADOR|COUNTER_V\(2) & (!\VGA_SYNCRONIZADOR|Add3~3\ & VCC))
-- \VGA_SYNCRONIZADOR|Add3~5\ = CARRY((\VGA_SYNCRONIZADOR|COUNTER_V\(2) & !\VGA_SYNCRONIZADOR|Add3~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA_SYNCRONIZADOR|COUNTER_V\(2),
	datad => VCC,
	cin => \VGA_SYNCRONIZADOR|Add3~3\,
	combout => \VGA_SYNCRONIZADOR|Add3~4_combout\,
	cout => \VGA_SYNCRONIZADOR|Add3~5\);

-- Location: LCCOMB_X37_Y19_N2
\LessThan0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~0_combout\ = (\VGA_SYNCRONIZADOR|COUNTER_H\(2) & ((\VGA_SYNCRONIZADOR|COUNTER_H\(1)) # (\VGA_SYNCRONIZADOR|COUNTER_H\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_SYNCRONIZADOR|COUNTER_H\(2),
	datab => \VGA_SYNCRONIZADOR|COUNTER_H\(1),
	datad => \VGA_SYNCRONIZADOR|COUNTER_H\(0),
	combout => \LessThan0~0_combout\);

-- Location: LCCOMB_X37_Y19_N20
\LessThan0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~1_combout\ = (\VGA_SYNCRONIZADOR|COUNTER_H\(4) & (((\VGA_SYNCRONIZADOR|COUNTER_H\(3)) # (\LessThan0~0_combout\)) # (!\VGA_SYNCRONIZADOR|COUNTER_H\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_SYNCRONIZADOR|COUNTER_H\(5),
	datab => \VGA_SYNCRONIZADOR|COUNTER_H\(3),
	datac => \VGA_SYNCRONIZADOR|COUNTER_H\(4),
	datad => \LessThan0~0_combout\,
	combout => \LessThan0~1_combout\);

-- Location: LCCOMB_X37_Y19_N18
\LessThan0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~2_combout\ = ((\VGA_SYNCRONIZADOR|COUNTER_H\(5) & (\VGA_SYNCRONIZADOR|COUNTER_H\(6) & \LessThan0~1_combout\)) # (!\VGA_SYNCRONIZADOR|COUNTER_H\(5) & (!\VGA_SYNCRONIZADOR|COUNTER_H\(6) & !\LessThan0~1_combout\))) # 
-- (!\VGA_SYNCRONIZADOR|COUNTER_H\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001100110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_SYNCRONIZADOR|COUNTER_H\(5),
	datab => \VGA_SYNCRONIZADOR|COUNTER_H\(7),
	datac => \VGA_SYNCRONIZADOR|COUNTER_H\(6),
	datad => \LessThan0~1_combout\,
	combout => \LessThan0~2_combout\);

-- Location: LCCOMB_X40_Y15_N16
\CLOCK25MHZ|TEMPORAL~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CLOCK25MHZ|TEMPORAL~0_combout\ = !\CLOCK25MHZ|TEMPORAL~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CLOCK25MHZ|TEMPORAL~q\,
	combout => \CLOCK25MHZ|TEMPORAL~0_combout\);

-- Location: IOIBUF_X41_Y15_N1
\CLK~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLK,
	o => \CLK~input_o\);

-- Location: IOOBUF_X41_Y18_N16
\HSYNC~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA_SYNCRONIZADOR|ALT_INV_LessThan1~1_combout\,
	devoe => ww_devoe,
	o => \HSYNC~output_o\);

-- Location: IOOBUF_X41_Y18_N23
\VSYNC~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA_SYNCRONIZADOR|LessThan2~0_combout\,
	devoe => ww_devoe,
	o => \VSYNC~output_o\);

-- Location: IOOBUF_X41_Y23_N23
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

-- Location: IOOBUF_X41_Y25_N2
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

-- Location: IOOBUF_X41_Y22_N2
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

-- Location: IOOBUF_X41_Y21_N23
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

-- Location: IOOBUF_X41_Y20_N2
\G[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \G[0]~reg0_q\,
	devoe => ww_devoe,
	o => \G[0]~output_o\);

-- Location: IOOBUF_X41_Y24_N23
\G[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \G[1]~reg0_q\,
	devoe => ww_devoe,
	o => \G[1]~output_o\);

-- Location: IOOBUF_X41_Y21_N16
\G[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \G[2]~reg0_q\,
	devoe => ww_devoe,
	o => \G[2]~output_o\);

-- Location: IOOBUF_X41_Y20_N23
\G[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \G[3]~reg0_q\,
	devoe => ww_devoe,
	o => \G[3]~output_o\);

-- Location: IOOBUF_X41_Y19_N16
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

-- Location: IOOBUF_X41_Y19_N9
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

-- Location: IOOBUF_X41_Y19_N2
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

-- Location: IOOBUF_X41_Y21_N9
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

-- Location: LCCOMB_X38_Y19_N18
\VGA_SYNCRONIZADOR|Add0~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_SYNCRONIZADOR|Add0~16_combout\ = (\VGA_SYNCRONIZADOR|COUNTER_H\(7) & (!\VGA_SYNCRONIZADOR|Add0~13\)) # (!\VGA_SYNCRONIZADOR|COUNTER_H\(7) & ((\VGA_SYNCRONIZADOR|Add0~13\) # (GND)))
-- \VGA_SYNCRONIZADOR|Add0~17\ = CARRY((!\VGA_SYNCRONIZADOR|Add0~13\) # (!\VGA_SYNCRONIZADOR|COUNTER_H\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA_SYNCRONIZADOR|COUNTER_H\(7),
	datad => VCC,
	cin => \VGA_SYNCRONIZADOR|Add0~13\,
	combout => \VGA_SYNCRONIZADOR|Add0~16_combout\,
	cout => \VGA_SYNCRONIZADOR|Add0~17\);

-- Location: LCCOMB_X38_Y19_N20
\VGA_SYNCRONIZADOR|Add0~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_SYNCRONIZADOR|Add0~18_combout\ = (\VGA_SYNCRONIZADOR|COUNTER_H\(8) & (\VGA_SYNCRONIZADOR|Add0~17\ $ (GND))) # (!\VGA_SYNCRONIZADOR|COUNTER_H\(8) & (!\VGA_SYNCRONIZADOR|Add0~17\ & VCC))
-- \VGA_SYNCRONIZADOR|Add0~19\ = CARRY((\VGA_SYNCRONIZADOR|COUNTER_H\(8) & !\VGA_SYNCRONIZADOR|Add0~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA_SYNCRONIZADOR|COUNTER_H\(8),
	datad => VCC,
	cin => \VGA_SYNCRONIZADOR|Add0~17\,
	combout => \VGA_SYNCRONIZADOR|Add0~18_combout\,
	cout => \VGA_SYNCRONIZADOR|Add0~19\);

-- Location: LCCOMB_X38_Y19_N22
\VGA_SYNCRONIZADOR|Add0~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_SYNCRONIZADOR|Add0~20_combout\ = \VGA_SYNCRONIZADOR|Add0~19\ $ (\VGA_SYNCRONIZADOR|COUNTER_H\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \VGA_SYNCRONIZADOR|COUNTER_H\(9),
	cin => \VGA_SYNCRONIZADOR|Add0~19\,
	combout => \VGA_SYNCRONIZADOR|Add0~20_combout\);

-- Location: LCCOMB_X39_Y19_N4
\VGA_SYNCRONIZADOR|Add0~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_SYNCRONIZADOR|Add0~22_combout\ = (\VGA_SYNCRONIZADOR|Add0~20_combout\ & (((\VGA_SYNCRONIZADOR|LessThan0~2_combout\) # (!\VGA_SYNCRONIZADOR|COUNTER_H\(9))) # (!\VGA_SYNCRONIZADOR|COUNTER_H\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_SYNCRONIZADOR|COUNTER_H\(8),
	datab => \VGA_SYNCRONIZADOR|Add0~20_combout\,
	datac => \VGA_SYNCRONIZADOR|COUNTER_H\(9),
	datad => \VGA_SYNCRONIZADOR|LessThan0~2_combout\,
	combout => \VGA_SYNCRONIZADOR|Add0~22_combout\);

-- Location: IOIBUF_X41_Y20_N15
\RST~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RST,
	o => \RST~input_o\);

-- Location: FF_X39_Y19_N5
\VGA_SYNCRONIZADOR|COUNTER_H[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK25MHZ|TEMPORAL~clkctrl_outclk\,
	d => \VGA_SYNCRONIZADOR|Add0~22_combout\,
	clrn => \ALT_INV_RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_SYNCRONIZADOR|COUNTER_H\(9));

-- Location: LCCOMB_X39_Y19_N22
\VGA_SYNCRONIZADOR|Add0~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_SYNCRONIZADOR|Add0~23_combout\ = (\VGA_SYNCRONIZADOR|Add0~18_combout\ & ((\VGA_SYNCRONIZADOR|LessThan0~2_combout\) # ((!\VGA_SYNCRONIZADOR|COUNTER_H\(8)) # (!\VGA_SYNCRONIZADOR|COUNTER_H\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_SYNCRONIZADOR|LessThan0~2_combout\,
	datab => \VGA_SYNCRONIZADOR|COUNTER_H\(9),
	datac => \VGA_SYNCRONIZADOR|COUNTER_H\(8),
	datad => \VGA_SYNCRONIZADOR|Add0~18_combout\,
	combout => \VGA_SYNCRONIZADOR|Add0~23_combout\);

-- Location: FF_X39_Y19_N23
\VGA_SYNCRONIZADOR|COUNTER_H[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK25MHZ|TEMPORAL~clkctrl_outclk\,
	d => \VGA_SYNCRONIZADOR|Add0~23_combout\,
	clrn => \ALT_INV_RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_SYNCRONIZADOR|COUNTER_H\(8));

-- Location: LCCOMB_X38_Y19_N4
\VGA_SYNCRONIZADOR|Add0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_SYNCRONIZADOR|Add0~0_combout\ = \VGA_SYNCRONIZADOR|COUNTER_H\(0) $ (VCC)
-- \VGA_SYNCRONIZADOR|Add0~1\ = CARRY(\VGA_SYNCRONIZADOR|COUNTER_H\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_SYNCRONIZADOR|COUNTER_H\(0),
	datad => VCC,
	combout => \VGA_SYNCRONIZADOR|Add0~0_combout\,
	cout => \VGA_SYNCRONIZADOR|Add0~1\);

-- Location: LCCOMB_X38_Y19_N26
\VGA_SYNCRONIZADOR|Add0~29\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_SYNCRONIZADOR|Add0~29_combout\ = (\VGA_SYNCRONIZADOR|Add0~0_combout\ & (((\VGA_SYNCRONIZADOR|LessThan0~2_combout\) # (!\VGA_SYNCRONIZADOR|COUNTER_H\(8))) # (!\VGA_SYNCRONIZADOR|COUNTER_H\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_SYNCRONIZADOR|COUNTER_H\(9),
	datab => \VGA_SYNCRONIZADOR|COUNTER_H\(8),
	datac => \VGA_SYNCRONIZADOR|Add0~0_combout\,
	datad => \VGA_SYNCRONIZADOR|LessThan0~2_combout\,
	combout => \VGA_SYNCRONIZADOR|Add0~29_combout\);

-- Location: FF_X38_Y19_N27
\VGA_SYNCRONIZADOR|COUNTER_H[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK25MHZ|TEMPORAL~clkctrl_outclk\,
	d => \VGA_SYNCRONIZADOR|Add0~29_combout\,
	clrn => \ALT_INV_RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_SYNCRONIZADOR|COUNTER_H\(0));

-- Location: LCCOMB_X38_Y19_N10
\VGA_SYNCRONIZADOR|Add0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_SYNCRONIZADOR|Add0~6_combout\ = (\VGA_SYNCRONIZADOR|COUNTER_H\(3) & (!\VGA_SYNCRONIZADOR|Add0~5\)) # (!\VGA_SYNCRONIZADOR|COUNTER_H\(3) & ((\VGA_SYNCRONIZADOR|Add0~5\) # (GND)))
-- \VGA_SYNCRONIZADOR|Add0~7\ = CARRY((!\VGA_SYNCRONIZADOR|Add0~5\) # (!\VGA_SYNCRONIZADOR|COUNTER_H\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_SYNCRONIZADOR|COUNTER_H\(3),
	datad => VCC,
	cin => \VGA_SYNCRONIZADOR|Add0~5\,
	combout => \VGA_SYNCRONIZADOR|Add0~6_combout\,
	cout => \VGA_SYNCRONIZADOR|Add0~7\);

-- Location: LCCOMB_X37_Y19_N16
\VGA_SYNCRONIZADOR|Add0~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_SYNCRONIZADOR|Add0~26_combout\ = (\VGA_SYNCRONIZADOR|Add0~6_combout\ & (((\VGA_SYNCRONIZADOR|LessThan0~2_combout\) # (!\VGA_SYNCRONIZADOR|COUNTER_H\(9))) # (!\VGA_SYNCRONIZADOR|COUNTER_H\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_SYNCRONIZADOR|COUNTER_H\(8),
	datab => \VGA_SYNCRONIZADOR|LessThan0~2_combout\,
	datac => \VGA_SYNCRONIZADOR|Add0~6_combout\,
	datad => \VGA_SYNCRONIZADOR|COUNTER_H\(9),
	combout => \VGA_SYNCRONIZADOR|Add0~26_combout\);

-- Location: FF_X37_Y19_N17
\VGA_SYNCRONIZADOR|COUNTER_H[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK25MHZ|TEMPORAL~clkctrl_outclk\,
	d => \VGA_SYNCRONIZADOR|Add0~26_combout\,
	clrn => \ALT_INV_RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_SYNCRONIZADOR|COUNTER_H\(3));

-- Location: LCCOMB_X38_Y19_N12
\VGA_SYNCRONIZADOR|Add0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_SYNCRONIZADOR|Add0~8_combout\ = (\VGA_SYNCRONIZADOR|COUNTER_H\(4) & (\VGA_SYNCRONIZADOR|Add0~7\ $ (GND))) # (!\VGA_SYNCRONIZADOR|COUNTER_H\(4) & (!\VGA_SYNCRONIZADOR|Add0~7\ & VCC))
-- \VGA_SYNCRONIZADOR|Add0~9\ = CARRY((\VGA_SYNCRONIZADOR|COUNTER_H\(4) & !\VGA_SYNCRONIZADOR|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_SYNCRONIZADOR|COUNTER_H\(4),
	datad => VCC,
	cin => \VGA_SYNCRONIZADOR|Add0~7\,
	combout => \VGA_SYNCRONIZADOR|Add0~8_combout\,
	cout => \VGA_SYNCRONIZADOR|Add0~9\);

-- Location: LCCOMB_X38_Y19_N30
\VGA_SYNCRONIZADOR|Add0~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_SYNCRONIZADOR|Add0~25_combout\ = (\VGA_SYNCRONIZADOR|Add0~8_combout\ & (((\VGA_SYNCRONIZADOR|LessThan0~2_combout\) # (!\VGA_SYNCRONIZADOR|COUNTER_H\(8))) # (!\VGA_SYNCRONIZADOR|COUNTER_H\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_SYNCRONIZADOR|COUNTER_H\(9),
	datab => \VGA_SYNCRONIZADOR|COUNTER_H\(8),
	datac => \VGA_SYNCRONIZADOR|LessThan0~2_combout\,
	datad => \VGA_SYNCRONIZADOR|Add0~8_combout\,
	combout => \VGA_SYNCRONIZADOR|Add0~25_combout\);

-- Location: FF_X38_Y19_N31
\VGA_SYNCRONIZADOR|COUNTER_H[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK25MHZ|TEMPORAL~clkctrl_outclk\,
	d => \VGA_SYNCRONIZADOR|Add0~25_combout\,
	clrn => \ALT_INV_RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_SYNCRONIZADOR|COUNTER_H\(4));

-- Location: LCCOMB_X38_Y19_N6
\VGA_SYNCRONIZADOR|Add0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_SYNCRONIZADOR|Add0~2_combout\ = (\VGA_SYNCRONIZADOR|COUNTER_H\(1) & (!\VGA_SYNCRONIZADOR|Add0~1\)) # (!\VGA_SYNCRONIZADOR|COUNTER_H\(1) & ((\VGA_SYNCRONIZADOR|Add0~1\) # (GND)))
-- \VGA_SYNCRONIZADOR|Add0~3\ = CARRY((!\VGA_SYNCRONIZADOR|Add0~1\) # (!\VGA_SYNCRONIZADOR|COUNTER_H\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA_SYNCRONIZADOR|COUNTER_H\(1),
	datad => VCC,
	cin => \VGA_SYNCRONIZADOR|Add0~1\,
	combout => \VGA_SYNCRONIZADOR|Add0~2_combout\,
	cout => \VGA_SYNCRONIZADOR|Add0~3\);

-- Location: LCCOMB_X38_Y19_N28
\VGA_SYNCRONIZADOR|Add0~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_SYNCRONIZADOR|Add0~28_combout\ = (\VGA_SYNCRONIZADOR|Add0~2_combout\ & (((\VGA_SYNCRONIZADOR|LessThan0~2_combout\) # (!\VGA_SYNCRONIZADOR|COUNTER_H\(8))) # (!\VGA_SYNCRONIZADOR|COUNTER_H\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_SYNCRONIZADOR|COUNTER_H\(9),
	datab => \VGA_SYNCRONIZADOR|LessThan0~2_combout\,
	datac => \VGA_SYNCRONIZADOR|COUNTER_H\(8),
	datad => \VGA_SYNCRONIZADOR|Add0~2_combout\,
	combout => \VGA_SYNCRONIZADOR|Add0~28_combout\);

-- Location: FF_X38_Y19_N29
\VGA_SYNCRONIZADOR|COUNTER_H[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK25MHZ|TEMPORAL~clkctrl_outclk\,
	d => \VGA_SYNCRONIZADOR|Add0~28_combout\,
	clrn => \ALT_INV_RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_SYNCRONIZADOR|COUNTER_H\(1));

-- Location: LCCOMB_X37_Y19_N22
\VGA_SYNCRONIZADOR|LessThan0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_SYNCRONIZADOR|LessThan0~1_combout\ = (((!\VGA_SYNCRONIZADOR|COUNTER_H\(1)) # (!\VGA_SYNCRONIZADOR|COUNTER_H\(4))) # (!\VGA_SYNCRONIZADOR|COUNTER_H\(3))) # (!\VGA_SYNCRONIZADOR|COUNTER_H\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_SYNCRONIZADOR|COUNTER_H\(2),
	datab => \VGA_SYNCRONIZADOR|COUNTER_H\(3),
	datac => \VGA_SYNCRONIZADOR|COUNTER_H\(4),
	datad => \VGA_SYNCRONIZADOR|COUNTER_H\(1),
	combout => \VGA_SYNCRONIZADOR|LessThan0~1_combout\);

-- Location: LCCOMB_X37_Y19_N12
\VGA_SYNCRONIZADOR|LessThan0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_SYNCRONIZADOR|LessThan0~0_combout\ = (!\VGA_SYNCRONIZADOR|COUNTER_H\(7) & (!\VGA_SYNCRONIZADOR|COUNTER_H\(6) & !\VGA_SYNCRONIZADOR|COUNTER_H\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \VGA_SYNCRONIZADOR|COUNTER_H\(7),
	datac => \VGA_SYNCRONIZADOR|COUNTER_H\(6),
	datad => \VGA_SYNCRONIZADOR|COUNTER_H\(5),
	combout => \VGA_SYNCRONIZADOR|LessThan0~0_combout\);

-- Location: LCCOMB_X37_Y19_N0
\VGA_SYNCRONIZADOR|LessThan0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_SYNCRONIZADOR|LessThan0~2_combout\ = (\VGA_SYNCRONIZADOR|LessThan0~0_combout\ & ((\VGA_SYNCRONIZADOR|LessThan0~1_combout\) # (!\VGA_SYNCRONIZADOR|COUNTER_H\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \VGA_SYNCRONIZADOR|COUNTER_H\(0),
	datac => \VGA_SYNCRONIZADOR|LessThan0~1_combout\,
	datad => \VGA_SYNCRONIZADOR|LessThan0~0_combout\,
	combout => \VGA_SYNCRONIZADOR|LessThan0~2_combout\);

-- Location: LCCOMB_X38_Y19_N8
\VGA_SYNCRONIZADOR|Add0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_SYNCRONIZADOR|Add0~4_combout\ = (\VGA_SYNCRONIZADOR|COUNTER_H\(2) & (\VGA_SYNCRONIZADOR|Add0~3\ $ (GND))) # (!\VGA_SYNCRONIZADOR|COUNTER_H\(2) & (!\VGA_SYNCRONIZADOR|Add0~3\ & VCC))
-- \VGA_SYNCRONIZADOR|Add0~5\ = CARRY((\VGA_SYNCRONIZADOR|COUNTER_H\(2) & !\VGA_SYNCRONIZADOR|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA_SYNCRONIZADOR|COUNTER_H\(2),
	datad => VCC,
	cin => \VGA_SYNCRONIZADOR|Add0~3\,
	combout => \VGA_SYNCRONIZADOR|Add0~4_combout\,
	cout => \VGA_SYNCRONIZADOR|Add0~5\);

-- Location: LCCOMB_X37_Y19_N6
\VGA_SYNCRONIZADOR|Add0~27\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_SYNCRONIZADOR|Add0~27_combout\ = (\VGA_SYNCRONIZADOR|Add0~4_combout\ & (((\VGA_SYNCRONIZADOR|LessThan0~2_combout\) # (!\VGA_SYNCRONIZADOR|COUNTER_H\(9))) # (!\VGA_SYNCRONIZADOR|COUNTER_H\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_SYNCRONIZADOR|COUNTER_H\(8),
	datab => \VGA_SYNCRONIZADOR|LessThan0~2_combout\,
	datac => \VGA_SYNCRONIZADOR|Add0~4_combout\,
	datad => \VGA_SYNCRONIZADOR|COUNTER_H\(9),
	combout => \VGA_SYNCRONIZADOR|Add0~27_combout\);

-- Location: FF_X37_Y19_N7
\VGA_SYNCRONIZADOR|COUNTER_H[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK25MHZ|TEMPORAL~clkctrl_outclk\,
	d => \VGA_SYNCRONIZADOR|Add0~27_combout\,
	clrn => \ALT_INV_RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_SYNCRONIZADOR|COUNTER_H\(2));

-- Location: LCCOMB_X38_Y19_N14
\VGA_SYNCRONIZADOR|Add0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_SYNCRONIZADOR|Add0~10_combout\ = (\VGA_SYNCRONIZADOR|COUNTER_H\(5) & (!\VGA_SYNCRONIZADOR|Add0~9\)) # (!\VGA_SYNCRONIZADOR|COUNTER_H\(5) & ((\VGA_SYNCRONIZADOR|Add0~9\) # (GND)))
-- \VGA_SYNCRONIZADOR|Add0~11\ = CARRY((!\VGA_SYNCRONIZADOR|Add0~9\) # (!\VGA_SYNCRONIZADOR|COUNTER_H\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA_SYNCRONIZADOR|COUNTER_H\(5),
	datad => VCC,
	cin => \VGA_SYNCRONIZADOR|Add0~9\,
	combout => \VGA_SYNCRONIZADOR|Add0~10_combout\,
	cout => \VGA_SYNCRONIZADOR|Add0~11\);

-- Location: LCCOMB_X38_Y19_N2
\VGA_SYNCRONIZADOR|Add0~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_SYNCRONIZADOR|Add0~15_combout\ = (\VGA_SYNCRONIZADOR|Add0~10_combout\ & (((\VGA_SYNCRONIZADOR|LessThan0~2_combout\) # (!\VGA_SYNCRONIZADOR|COUNTER_H\(8))) # (!\VGA_SYNCRONIZADOR|COUNTER_H\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_SYNCRONIZADOR|COUNTER_H\(9),
	datab => \VGA_SYNCRONIZADOR|Add0~10_combout\,
	datac => \VGA_SYNCRONIZADOR|COUNTER_H\(8),
	datad => \VGA_SYNCRONIZADOR|LessThan0~2_combout\,
	combout => \VGA_SYNCRONIZADOR|Add0~15_combout\);

-- Location: FF_X38_Y19_N3
\VGA_SYNCRONIZADOR|COUNTER_H[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK25MHZ|TEMPORAL~clkctrl_outclk\,
	d => \VGA_SYNCRONIZADOR|Add0~15_combout\,
	clrn => \ALT_INV_RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_SYNCRONIZADOR|COUNTER_H\(5));

-- Location: LCCOMB_X38_Y19_N16
\VGA_SYNCRONIZADOR|Add0~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_SYNCRONIZADOR|Add0~12_combout\ = (\VGA_SYNCRONIZADOR|COUNTER_H\(6) & (\VGA_SYNCRONIZADOR|Add0~11\ $ (GND))) # (!\VGA_SYNCRONIZADOR|COUNTER_H\(6) & (!\VGA_SYNCRONIZADOR|Add0~11\ & VCC))
-- \VGA_SYNCRONIZADOR|Add0~13\ = CARRY((\VGA_SYNCRONIZADOR|COUNTER_H\(6) & !\VGA_SYNCRONIZADOR|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA_SYNCRONIZADOR|COUNTER_H\(6),
	datad => VCC,
	cin => \VGA_SYNCRONIZADOR|Add0~11\,
	combout => \VGA_SYNCRONIZADOR|Add0~12_combout\,
	cout => \VGA_SYNCRONIZADOR|Add0~13\);

-- Location: LCCOMB_X38_Y19_N0
\VGA_SYNCRONIZADOR|Add0~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_SYNCRONIZADOR|Add0~14_combout\ = (\VGA_SYNCRONIZADOR|Add0~12_combout\ & (((\VGA_SYNCRONIZADOR|LessThan0~2_combout\) # (!\VGA_SYNCRONIZADOR|COUNTER_H\(8))) # (!\VGA_SYNCRONIZADOR|COUNTER_H\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_SYNCRONIZADOR|COUNTER_H\(9),
	datab => \VGA_SYNCRONIZADOR|Add0~12_combout\,
	datac => \VGA_SYNCRONIZADOR|COUNTER_H\(8),
	datad => \VGA_SYNCRONIZADOR|LessThan0~2_combout\,
	combout => \VGA_SYNCRONIZADOR|Add0~14_combout\);

-- Location: FF_X38_Y19_N1
\VGA_SYNCRONIZADOR|COUNTER_H[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK25MHZ|TEMPORAL~clkctrl_outclk\,
	d => \VGA_SYNCRONIZADOR|Add0~14_combout\,
	clrn => \ALT_INV_RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_SYNCRONIZADOR|COUNTER_H\(6));

-- Location: LCCOMB_X38_Y19_N24
\VGA_SYNCRONIZADOR|Add0~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_SYNCRONIZADOR|Add0~24_combout\ = (\VGA_SYNCRONIZADOR|Add0~16_combout\ & (((\VGA_SYNCRONIZADOR|LessThan0~2_combout\) # (!\VGA_SYNCRONIZADOR|COUNTER_H\(8))) # (!\VGA_SYNCRONIZADOR|COUNTER_H\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_SYNCRONIZADOR|COUNTER_H\(9),
	datab => \VGA_SYNCRONIZADOR|Add0~16_combout\,
	datac => \VGA_SYNCRONIZADOR|COUNTER_H\(8),
	datad => \VGA_SYNCRONIZADOR|LessThan0~2_combout\,
	combout => \VGA_SYNCRONIZADOR|Add0~24_combout\);

-- Location: FF_X38_Y19_N25
\VGA_SYNCRONIZADOR|COUNTER_H[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK25MHZ|TEMPORAL~clkctrl_outclk\,
	d => \VGA_SYNCRONIZADOR|Add0~24_combout\,
	clrn => \ALT_INV_RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_SYNCRONIZADOR|COUNTER_H\(7));

-- Location: LCCOMB_X37_Y19_N28
\VGA_SYNCRONIZADOR|LessThan1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_SYNCRONIZADOR|LessThan1~0_combout\ = (!\VGA_SYNCRONIZADOR|COUNTER_H\(8) & (!\VGA_SYNCRONIZADOR|COUNTER_H\(9) & ((!\VGA_SYNCRONIZADOR|COUNTER_H\(6)) # (!\VGA_SYNCRONIZADOR|COUNTER_H\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_SYNCRONIZADOR|COUNTER_H\(5),
	datab => \VGA_SYNCRONIZADOR|COUNTER_H\(6),
	datac => \VGA_SYNCRONIZADOR|COUNTER_H\(8),
	datad => \VGA_SYNCRONIZADOR|COUNTER_H\(9),
	combout => \VGA_SYNCRONIZADOR|LessThan1~0_combout\);

-- Location: LCCOMB_X37_Y19_N30
\VGA_SYNCRONIZADOR|LessThan1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_SYNCRONIZADOR|LessThan1~1_combout\ = (!\VGA_SYNCRONIZADOR|COUNTER_H\(7) & \VGA_SYNCRONIZADOR|LessThan1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \VGA_SYNCRONIZADOR|COUNTER_H\(7),
	datac => \VGA_SYNCRONIZADOR|LessThan1~0_combout\,
	combout => \VGA_SYNCRONIZADOR|LessThan1~1_combout\);

-- Location: LCCOMB_X36_Y19_N8
\VGA_SYNCRONIZADOR|Add1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_SYNCRONIZADOR|Add1~0_combout\ = \VGA_SYNCRONIZADOR|COUNTER_V\(0) $ (VCC)
-- \VGA_SYNCRONIZADOR|Add1~1\ = CARRY(\VGA_SYNCRONIZADOR|COUNTER_V\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_SYNCRONIZADOR|COUNTER_V\(0),
	datad => VCC,
	combout => \VGA_SYNCRONIZADOR|Add1~0_combout\,
	cout => \VGA_SYNCRONIZADOR|Add1~1\);

-- Location: LCCOMB_X36_Y19_N10
\VGA_SYNCRONIZADOR|Add1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_SYNCRONIZADOR|Add1~2_combout\ = (\VGA_SYNCRONIZADOR|COUNTER_V\(1) & (!\VGA_SYNCRONIZADOR|Add1~1\)) # (!\VGA_SYNCRONIZADOR|COUNTER_V\(1) & ((\VGA_SYNCRONIZADOR|Add1~1\) # (GND)))
-- \VGA_SYNCRONIZADOR|Add1~3\ = CARRY((!\VGA_SYNCRONIZADOR|Add1~1\) # (!\VGA_SYNCRONIZADOR|COUNTER_V\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA_SYNCRONIZADOR|COUNTER_V\(1),
	datad => VCC,
	cin => \VGA_SYNCRONIZADOR|Add1~1\,
	combout => \VGA_SYNCRONIZADOR|Add1~2_combout\,
	cout => \VGA_SYNCRONIZADOR|Add1~3\);

-- Location: LCCOMB_X39_Y19_N8
\VGA_SYNCRONIZADOR|Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_SYNCRONIZADOR|Equal0~0_combout\ = (\VGA_SYNCRONIZADOR|COUNTER_H\(8) & (\VGA_SYNCRONIZADOR|COUNTER_H\(9) & !\VGA_SYNCRONIZADOR|LessThan0~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_SYNCRONIZADOR|COUNTER_H\(8),
	datab => \VGA_SYNCRONIZADOR|COUNTER_H\(9),
	datad => \VGA_SYNCRONIZADOR|LessThan0~2_combout\,
	combout => \VGA_SYNCRONIZADOR|Equal0~0_combout\);

-- Location: LCCOMB_X39_Y19_N30
\VGA_SYNCRONIZADOR|Equal0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_SYNCRONIZADOR|Equal0~3_combout\ = (!\VGA_SYNCRONIZADOR|Add0~25_combout\ & ((\VGA_SYNCRONIZADOR|Equal0~0_combout\) # ((!\VGA_SYNCRONIZADOR|Add0~16_combout\ & !\VGA_SYNCRONIZADOR|Add0~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_SYNCRONIZADOR|Add0~16_combout\,
	datab => \VGA_SYNCRONIZADOR|Add0~18_combout\,
	datac => \VGA_SYNCRONIZADOR|Equal0~0_combout\,
	datad => \VGA_SYNCRONIZADOR|Add0~25_combout\,
	combout => \VGA_SYNCRONIZADOR|Equal0~3_combout\);

-- Location: LCCOMB_X39_Y19_N18
\VGA_SYNCRONIZADOR|Equal0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_SYNCRONIZADOR|Equal0~1_combout\ = (!\VGA_SYNCRONIZADOR|Add0~4_combout\ & (!\VGA_SYNCRONIZADOR|Add0~0_combout\ & (!\VGA_SYNCRONIZADOR|Add0~2_combout\ & !\VGA_SYNCRONIZADOR|Add0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_SYNCRONIZADOR|Add0~4_combout\,
	datab => \VGA_SYNCRONIZADOR|Add0~0_combout\,
	datac => \VGA_SYNCRONIZADOR|Add0~2_combout\,
	datad => \VGA_SYNCRONIZADOR|Add0~6_combout\,
	combout => \VGA_SYNCRONIZADOR|Equal0~1_combout\);

-- Location: LCCOMB_X39_Y19_N16
\VGA_SYNCRONIZADOR|Equal0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_SYNCRONIZADOR|Equal0~2_combout\ = (\VGA_SYNCRONIZADOR|Equal0~0_combout\) # ((!\VGA_SYNCRONIZADOR|Add0~12_combout\ & (!\VGA_SYNCRONIZADOR|Add0~10_combout\ & \VGA_SYNCRONIZADOR|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_SYNCRONIZADOR|Add0~12_combout\,
	datab => \VGA_SYNCRONIZADOR|Add0~10_combout\,
	datac => \VGA_SYNCRONIZADOR|Equal0~0_combout\,
	datad => \VGA_SYNCRONIZADOR|Equal0~1_combout\,
	combout => \VGA_SYNCRONIZADOR|Equal0~2_combout\);

-- Location: LCCOMB_X39_Y19_N12
\VGA_SYNCRONIZADOR|Equal0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_SYNCRONIZADOR|Equal0~4_combout\ = (\VGA_SYNCRONIZADOR|Equal0~3_combout\ & ((\VGA_SYNCRONIZADOR|Add0~20_combout\ & (\VGA_SYNCRONIZADOR|Equal0~0_combout\)) # (!\VGA_SYNCRONIZADOR|Add0~20_combout\ & ((\VGA_SYNCRONIZADOR|Equal0~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_SYNCRONIZADOR|Add0~20_combout\,
	datab => \VGA_SYNCRONIZADOR|Equal0~0_combout\,
	datac => \VGA_SYNCRONIZADOR|Equal0~3_combout\,
	datad => \VGA_SYNCRONIZADOR|Equal0~2_combout\,
	combout => \VGA_SYNCRONIZADOR|Equal0~4_combout\);

-- Location: FF_X40_Y19_N15
\VGA_SYNCRONIZADOR|COUNTER_V[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK25MHZ|TEMPORAL~clkctrl_outclk\,
	asdata => \VGA_SYNCRONIZADOR|Add1~2_combout\,
	clrn => \ALT_INV_RST~input_o\,
	sload => VCC,
	ena => \VGA_SYNCRONIZADOR|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_SYNCRONIZADOR|COUNTER_V\(1));

-- Location: LCCOMB_X36_Y19_N12
\VGA_SYNCRONIZADOR|Add1~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_SYNCRONIZADOR|Add1~4_combout\ = (\VGA_SYNCRONIZADOR|COUNTER_V\(2) & (\VGA_SYNCRONIZADOR|Add1~3\ $ (GND))) # (!\VGA_SYNCRONIZADOR|COUNTER_V\(2) & (!\VGA_SYNCRONIZADOR|Add1~3\ & VCC))
-- \VGA_SYNCRONIZADOR|Add1~5\ = CARRY((\VGA_SYNCRONIZADOR|COUNTER_V\(2) & !\VGA_SYNCRONIZADOR|Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_SYNCRONIZADOR|COUNTER_V\(2),
	datad => VCC,
	cin => \VGA_SYNCRONIZADOR|Add1~3\,
	combout => \VGA_SYNCRONIZADOR|Add1~4_combout\,
	cout => \VGA_SYNCRONIZADOR|Add1~5\);

-- Location: LCCOMB_X36_Y19_N16
\VGA_SYNCRONIZADOR|Add1~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_SYNCRONIZADOR|Add1~8_combout\ = (\VGA_SYNCRONIZADOR|COUNTER_V\(4) & (\VGA_SYNCRONIZADOR|Add1~7\ $ (GND))) # (!\VGA_SYNCRONIZADOR|COUNTER_V\(4) & (!\VGA_SYNCRONIZADOR|Add1~7\ & VCC))
-- \VGA_SYNCRONIZADOR|Add1~9\ = CARRY((\VGA_SYNCRONIZADOR|COUNTER_V\(4) & !\VGA_SYNCRONIZADOR|Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_SYNCRONIZADOR|COUNTER_V\(4),
	datad => VCC,
	cin => \VGA_SYNCRONIZADOR|Add1~7\,
	combout => \VGA_SYNCRONIZADOR|Add1~8_combout\,
	cout => \VGA_SYNCRONIZADOR|Add1~9\);

-- Location: LCCOMB_X36_Y19_N18
\VGA_SYNCRONIZADOR|Add1~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_SYNCRONIZADOR|Add1~10_combout\ = (\VGA_SYNCRONIZADOR|COUNTER_V\(5) & (!\VGA_SYNCRONIZADOR|Add1~9\)) # (!\VGA_SYNCRONIZADOR|COUNTER_V\(5) & ((\VGA_SYNCRONIZADOR|Add1~9\) # (GND)))
-- \VGA_SYNCRONIZADOR|Add1~11\ = CARRY((!\VGA_SYNCRONIZADOR|Add1~9\) # (!\VGA_SYNCRONIZADOR|COUNTER_V\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_SYNCRONIZADOR|COUNTER_V\(5),
	datad => VCC,
	cin => \VGA_SYNCRONIZADOR|Add1~9\,
	combout => \VGA_SYNCRONIZADOR|Add1~10_combout\,
	cout => \VGA_SYNCRONIZADOR|Add1~11\);

-- Location: LCCOMB_X36_Y19_N20
\VGA_SYNCRONIZADOR|Add1~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_SYNCRONIZADOR|Add1~12_combout\ = (\VGA_SYNCRONIZADOR|COUNTER_V\(6) & (\VGA_SYNCRONIZADOR|Add1~11\ $ (GND))) # (!\VGA_SYNCRONIZADOR|COUNTER_V\(6) & (!\VGA_SYNCRONIZADOR|Add1~11\ & VCC))
-- \VGA_SYNCRONIZADOR|Add1~13\ = CARRY((\VGA_SYNCRONIZADOR|COUNTER_V\(6) & !\VGA_SYNCRONIZADOR|Add1~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_SYNCRONIZADOR|COUNTER_V\(6),
	datad => VCC,
	cin => \VGA_SYNCRONIZADOR|Add1~11\,
	combout => \VGA_SYNCRONIZADOR|Add1~12_combout\,
	cout => \VGA_SYNCRONIZADOR|Add1~13\);

-- Location: LCCOMB_X36_Y19_N22
\VGA_SYNCRONIZADOR|Add1~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_SYNCRONIZADOR|Add1~14_combout\ = (\VGA_SYNCRONIZADOR|COUNTER_V\(7) & (!\VGA_SYNCRONIZADOR|Add1~13\)) # (!\VGA_SYNCRONIZADOR|COUNTER_V\(7) & ((\VGA_SYNCRONIZADOR|Add1~13\) # (GND)))
-- \VGA_SYNCRONIZADOR|Add1~15\ = CARRY((!\VGA_SYNCRONIZADOR|Add1~13\) # (!\VGA_SYNCRONIZADOR|COUNTER_V\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_SYNCRONIZADOR|COUNTER_V\(7),
	datad => VCC,
	cin => \VGA_SYNCRONIZADOR|Add1~13\,
	combout => \VGA_SYNCRONIZADOR|Add1~14_combout\,
	cout => \VGA_SYNCRONIZADOR|Add1~15\);

-- Location: LCCOMB_X36_Y19_N24
\VGA_SYNCRONIZADOR|Add1~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_SYNCRONIZADOR|Add1~16_combout\ = (\VGA_SYNCRONIZADOR|COUNTER_V\(8) & (\VGA_SYNCRONIZADOR|Add1~15\ $ (GND))) # (!\VGA_SYNCRONIZADOR|COUNTER_V\(8) & (!\VGA_SYNCRONIZADOR|Add1~15\ & VCC))
-- \VGA_SYNCRONIZADOR|Add1~17\ = CARRY((\VGA_SYNCRONIZADOR|COUNTER_V\(8) & !\VGA_SYNCRONIZADOR|Add1~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_SYNCRONIZADOR|COUNTER_V\(8),
	datad => VCC,
	cin => \VGA_SYNCRONIZADOR|Add1~15\,
	combout => \VGA_SYNCRONIZADOR|Add1~16_combout\,
	cout => \VGA_SYNCRONIZADOR|Add1~17\);

-- Location: LCCOMB_X36_Y19_N26
\VGA_SYNCRONIZADOR|Add1~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_SYNCRONIZADOR|Add1~18_combout\ = \VGA_SYNCRONIZADOR|Add1~17\ $ (\VGA_SYNCRONIZADOR|COUNTER_V\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \VGA_SYNCRONIZADOR|COUNTER_V\(9),
	cin => \VGA_SYNCRONIZADOR|Add1~17\,
	combout => \VGA_SYNCRONIZADOR|Add1~18_combout\);

-- Location: LCCOMB_X39_Y19_N20
\VGA_SYNCRONIZADOR|COUNTER_V~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_SYNCRONIZADOR|COUNTER_V~0_combout\ = (\VGA_SYNCRONIZADOR|Add1~18_combout\ & !\VGA_SYNCRONIZADOR|Equal1~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \VGA_SYNCRONIZADOR|Add1~18_combout\,
	datad => \VGA_SYNCRONIZADOR|Equal1~2_combout\,
	combout => \VGA_SYNCRONIZADOR|COUNTER_V~0_combout\);

-- Location: FF_X39_Y19_N21
\VGA_SYNCRONIZADOR|COUNTER_V[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK25MHZ|TEMPORAL~clkctrl_outclk\,
	d => \VGA_SYNCRONIZADOR|COUNTER_V~0_combout\,
	clrn => \ALT_INV_RST~input_o\,
	ena => \VGA_SYNCRONIZADOR|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_SYNCRONIZADOR|COUNTER_V\(9));

-- Location: LCCOMB_X36_Y19_N0
\VGA_SYNCRONIZADOR|COUNTER_V~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_SYNCRONIZADOR|COUNTER_V~2_combout\ = (\VGA_SYNCRONIZADOR|Add1~0_combout\ & !\VGA_SYNCRONIZADOR|Equal1~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \VGA_SYNCRONIZADOR|Add1~0_combout\,
	datad => \VGA_SYNCRONIZADOR|Equal1~2_combout\,
	combout => \VGA_SYNCRONIZADOR|COUNTER_V~2_combout\);

-- Location: FF_X40_Y19_N31
\VGA_SYNCRONIZADOR|COUNTER_V[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK25MHZ|TEMPORAL~clkctrl_outclk\,
	asdata => \VGA_SYNCRONIZADOR|COUNTER_V~2_combout\,
	clrn => \ALT_INV_RST~input_o\,
	sload => VCC,
	ena => \VGA_SYNCRONIZADOR|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_SYNCRONIZADOR|COUNTER_V\(0));

-- Location: FF_X40_Y19_N27
\VGA_SYNCRONIZADOR|COUNTER_V[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK25MHZ|TEMPORAL~clkctrl_outclk\,
	asdata => \VGA_SYNCRONIZADOR|Add1~8_combout\,
	clrn => \ALT_INV_RST~input_o\,
	sload => VCC,
	ena => \VGA_SYNCRONIZADOR|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_SYNCRONIZADOR|COUNTER_V\(4));

-- Location: FF_X40_Y19_N9
\VGA_SYNCRONIZADOR|COUNTER_V[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK25MHZ|TEMPORAL~clkctrl_outclk\,
	asdata => \VGA_SYNCRONIZADOR|Add1~12_combout\,
	clrn => \ALT_INV_RST~input_o\,
	sload => VCC,
	ena => \VGA_SYNCRONIZADOR|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_SYNCRONIZADOR|COUNTER_V\(6));

-- Location: FF_X40_Y19_N13
\VGA_SYNCRONIZADOR|COUNTER_V[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK25MHZ|TEMPORAL~clkctrl_outclk\,
	asdata => \VGA_SYNCRONIZADOR|Add1~14_combout\,
	clrn => \ALT_INV_RST~input_o\,
	sload => VCC,
	ena => \VGA_SYNCRONIZADOR|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_SYNCRONIZADOR|COUNTER_V\(7));

-- Location: FF_X40_Y19_N17
\VGA_SYNCRONIZADOR|COUNTER_V[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK25MHZ|TEMPORAL~clkctrl_outclk\,
	asdata => \VGA_SYNCRONIZADOR|Add1~10_combout\,
	clrn => \ALT_INV_RST~input_o\,
	sload => VCC,
	ena => \VGA_SYNCRONIZADOR|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_SYNCRONIZADOR|COUNTER_V\(5));

-- Location: LCCOMB_X39_Y19_N28
\VGA_SYNCRONIZADOR|Equal1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_SYNCRONIZADOR|Equal1~0_combout\ = (!\VGA_SYNCRONIZADOR|COUNTER_V\(8) & (!\VGA_SYNCRONIZADOR|COUNTER_V\(6) & (!\VGA_SYNCRONIZADOR|COUNTER_V\(7) & !\VGA_SYNCRONIZADOR|COUNTER_V\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_SYNCRONIZADOR|COUNTER_V\(8),
	datab => \VGA_SYNCRONIZADOR|COUNTER_V\(6),
	datac => \VGA_SYNCRONIZADOR|COUNTER_V\(7),
	datad => \VGA_SYNCRONIZADOR|COUNTER_V\(5),
	combout => \VGA_SYNCRONIZADOR|Equal1~0_combout\);

-- Location: LCCOMB_X36_Y19_N28
\VGA_SYNCRONIZADOR|Equal1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_SYNCRONIZADOR|Equal1~1_combout\ = (!\VGA_SYNCRONIZADOR|COUNTER_V\(2) & (!\VGA_SYNCRONIZADOR|COUNTER_V\(1) & (!\VGA_SYNCRONIZADOR|COUNTER_V\(4) & \VGA_SYNCRONIZADOR|Equal1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_SYNCRONIZADOR|COUNTER_V\(2),
	datab => \VGA_SYNCRONIZADOR|COUNTER_V\(1),
	datac => \VGA_SYNCRONIZADOR|COUNTER_V\(4),
	datad => \VGA_SYNCRONIZADOR|Equal1~0_combout\,
	combout => \VGA_SYNCRONIZADOR|Equal1~1_combout\);

-- Location: LCCOMB_X36_Y19_N6
\VGA_SYNCRONIZADOR|Equal1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_SYNCRONIZADOR|Equal1~2_combout\ = (\VGA_SYNCRONIZADOR|COUNTER_V\(3) & (\VGA_SYNCRONIZADOR|COUNTER_V\(9) & (!\VGA_SYNCRONIZADOR|COUNTER_V\(0) & \VGA_SYNCRONIZADOR|Equal1~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_SYNCRONIZADOR|COUNTER_V\(3),
	datab => \VGA_SYNCRONIZADOR|COUNTER_V\(9),
	datac => \VGA_SYNCRONIZADOR|COUNTER_V\(0),
	datad => \VGA_SYNCRONIZADOR|Equal1~1_combout\,
	combout => \VGA_SYNCRONIZADOR|Equal1~2_combout\);

-- Location: LCCOMB_X40_Y19_N28
\VGA_SYNCRONIZADOR|COUNTER_V~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_SYNCRONIZADOR|COUNTER_V~1_combout\ = (\VGA_SYNCRONIZADOR|Add1~6_combout\ & !\VGA_SYNCRONIZADOR|Equal1~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_SYNCRONIZADOR|Add1~6_combout\,
	datad => \VGA_SYNCRONIZADOR|Equal1~2_combout\,
	combout => \VGA_SYNCRONIZADOR|COUNTER_V~1_combout\);

-- Location: FF_X40_Y19_N29
\VGA_SYNCRONIZADOR|COUNTER_V[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK25MHZ|TEMPORAL~clkctrl_outclk\,
	d => \VGA_SYNCRONIZADOR|COUNTER_V~1_combout\,
	clrn => \ALT_INV_RST~input_o\,
	ena => \VGA_SYNCRONIZADOR|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_SYNCRONIZADOR|COUNTER_V\(3));

-- Location: LCCOMB_X39_Y19_N26
\VGA_SYNCRONIZADOR|LessThan2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_SYNCRONIZADOR|LessThan2~0_combout\ = (\VGA_SYNCRONIZADOR|COUNTER_V\(3)) # ((\VGA_SYNCRONIZADOR|COUNTER_V\(9)) # (!\VGA_SYNCRONIZADOR|Equal1~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \VGA_SYNCRONIZADOR|COUNTER_V\(3),
	datac => \VGA_SYNCRONIZADOR|Equal1~1_combout\,
	datad => \VGA_SYNCRONIZADOR|COUNTER_V\(9),
	combout => \VGA_SYNCRONIZADOR|LessThan2~0_combout\);

-- Location: LCCOMB_X40_Y15_N20
\CLOCK25MHZ|TEMPORAL~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CLOCK25MHZ|TEMPORAL~feeder_combout\ = \CLOCK25MHZ|TEMPORAL~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CLOCK25MHZ|TEMPORAL~0_combout\,
	combout => \CLOCK25MHZ|TEMPORAL~feeder_combout\);

-- Location: FF_X40_Y15_N21
\CLOCK25MHZ|TEMPORAL\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLK~input_o\,
	d => \CLOCK25MHZ|TEMPORAL~feeder_combout\,
	clrn => \ALT_INV_RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CLOCK25MHZ|TEMPORAL~q\);

-- Location: CLKCTRL_G5
\CLOCK25MHZ|TEMPORAL~clkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLOCK25MHZ|TEMPORAL~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLOCK25MHZ|TEMPORAL~clkctrl_outclk\);

-- Location: LCCOMB_X37_Y19_N4
\process_0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \process_0~3_combout\ = (\VGA_SYNCRONIZADOR|COUNTER_H\(5)) # ((\VGA_SYNCRONIZADOR|COUNTER_H\(4) & ((\VGA_SYNCRONIZADOR|COUNTER_H\(3)) # (!\VGA_SYNCRONIZADOR|COUNTER_H\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_SYNCRONIZADOR|COUNTER_H\(5),
	datab => \VGA_SYNCRONIZADOR|COUNTER_H\(6),
	datac => \VGA_SYNCRONIZADOR|COUNTER_H\(4),
	datad => \VGA_SYNCRONIZADOR|COUNTER_H\(3),
	combout => \process_0~3_combout\);

-- Location: LCCOMB_X37_Y19_N26
\process_0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \process_0~4_combout\ = (\VGA_SYNCRONIZADOR|COUNTER_H\(8) & (!\VGA_SYNCRONIZADOR|COUNTER_H\(7) & ((!\process_0~3_combout\) # (!\VGA_SYNCRONIZADOR|COUNTER_H\(6))))) # (!\VGA_SYNCRONIZADOR|COUNTER_H\(8) & (\VGA_SYNCRONIZADOR|COUNTER_H\(7) & 
-- ((\VGA_SYNCRONIZADOR|COUNTER_H\(6)) # (\process_0~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_SYNCRONIZADOR|COUNTER_H\(8),
	datab => \VGA_SYNCRONIZADOR|COUNTER_H\(6),
	datac => \process_0~3_combout\,
	datad => \VGA_SYNCRONIZADOR|COUNTER_H\(7),
	combout => \process_0~4_combout\);

-- Location: FF_X40_Y19_N19
\VGA_SYNCRONIZADOR|COUNTER_V[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK25MHZ|TEMPORAL~clkctrl_outclk\,
	asdata => \VGA_SYNCRONIZADOR|Add1~4_combout\,
	clrn => \ALT_INV_RST~input_o\,
	sload => VCC,
	ena => \VGA_SYNCRONIZADOR|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_SYNCRONIZADOR|COUNTER_V\(2));

-- Location: LCCOMB_X40_Y19_N8
\VGA_SYNCRONIZADOR|Add3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_SYNCRONIZADOR|Add3~0_combout\ = \VGA_SYNCRONIZADOR|COUNTER_V\(0) $ (VCC)
-- \VGA_SYNCRONIZADOR|Add3~1\ = CARRY(\VGA_SYNCRONIZADOR|COUNTER_V\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_SYNCRONIZADOR|COUNTER_V\(0),
	datad => VCC,
	combout => \VGA_SYNCRONIZADOR|Add3~0_combout\,
	cout => \VGA_SYNCRONIZADOR|Add3~1\);

-- Location: LCCOMB_X40_Y19_N10
\VGA_SYNCRONIZADOR|Add3~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_SYNCRONIZADOR|Add3~2_combout\ = (\VGA_SYNCRONIZADOR|COUNTER_V\(1) & (!\VGA_SYNCRONIZADOR|Add3~1\)) # (!\VGA_SYNCRONIZADOR|COUNTER_V\(1) & ((\VGA_SYNCRONIZADOR|Add3~1\) # (GND)))
-- \VGA_SYNCRONIZADOR|Add3~3\ = CARRY((!\VGA_SYNCRONIZADOR|Add3~1\) # (!\VGA_SYNCRONIZADOR|COUNTER_V\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA_SYNCRONIZADOR|COUNTER_V\(1),
	datad => VCC,
	cin => \VGA_SYNCRONIZADOR|Add3~1\,
	combout => \VGA_SYNCRONIZADOR|Add3~2_combout\,
	cout => \VGA_SYNCRONIZADOR|Add3~3\);

-- Location: LCCOMB_X40_Y19_N14
\VGA_SYNCRONIZADOR|Add3~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_SYNCRONIZADOR|Add3~6_combout\ = (\VGA_SYNCRONIZADOR|COUNTER_V\(3) & (!\VGA_SYNCRONIZADOR|Add3~5\)) # (!\VGA_SYNCRONIZADOR|COUNTER_V\(3) & ((\VGA_SYNCRONIZADOR|Add3~5\) # (GND)))
-- \VGA_SYNCRONIZADOR|Add3~7\ = CARRY((!\VGA_SYNCRONIZADOR|Add3~5\) # (!\VGA_SYNCRONIZADOR|COUNTER_V\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA_SYNCRONIZADOR|COUNTER_V\(3),
	datad => VCC,
	cin => \VGA_SYNCRONIZADOR|Add3~5\,
	combout => \VGA_SYNCRONIZADOR|Add3~6_combout\,
	cout => \VGA_SYNCRONIZADOR|Add3~7\);

-- Location: LCCOMB_X40_Y19_N16
\VGA_SYNCRONIZADOR|Add3~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_SYNCRONIZADOR|Add3~8_combout\ = (\VGA_SYNCRONIZADOR|COUNTER_V\(4) & (\VGA_SYNCRONIZADOR|Add3~7\ $ (GND))) # (!\VGA_SYNCRONIZADOR|COUNTER_V\(4) & (!\VGA_SYNCRONIZADOR|Add3~7\ & VCC))
-- \VGA_SYNCRONIZADOR|Add3~9\ = CARRY((\VGA_SYNCRONIZADOR|COUNTER_V\(4) & !\VGA_SYNCRONIZADOR|Add3~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA_SYNCRONIZADOR|COUNTER_V\(4),
	datad => VCC,
	cin => \VGA_SYNCRONIZADOR|Add3~7\,
	combout => \VGA_SYNCRONIZADOR|Add3~8_combout\,
	cout => \VGA_SYNCRONIZADOR|Add3~9\);

-- Location: LCCOMB_X40_Y19_N18
\VGA_SYNCRONIZADOR|Add3~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_SYNCRONIZADOR|Add3~10_combout\ = (\VGA_SYNCRONIZADOR|COUNTER_V\(5) & (\VGA_SYNCRONIZADOR|Add3~9\ & VCC)) # (!\VGA_SYNCRONIZADOR|COUNTER_V\(5) & (!\VGA_SYNCRONIZADOR|Add3~9\))
-- \VGA_SYNCRONIZADOR|Add3~11\ = CARRY((!\VGA_SYNCRONIZADOR|COUNTER_V\(5) & !\VGA_SYNCRONIZADOR|Add3~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_SYNCRONIZADOR|COUNTER_V\(5),
	datad => VCC,
	cin => \VGA_SYNCRONIZADOR|Add3~9\,
	combout => \VGA_SYNCRONIZADOR|Add3~10_combout\,
	cout => \VGA_SYNCRONIZADOR|Add3~11\);

-- Location: LCCOMB_X40_Y19_N20
\VGA_SYNCRONIZADOR|Add3~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_SYNCRONIZADOR|Add3~12_combout\ = (\VGA_SYNCRONIZADOR|COUNTER_V\(6) & ((GND) # (!\VGA_SYNCRONIZADOR|Add3~11\))) # (!\VGA_SYNCRONIZADOR|COUNTER_V\(6) & (\VGA_SYNCRONIZADOR|Add3~11\ $ (GND)))
-- \VGA_SYNCRONIZADOR|Add3~13\ = CARRY((\VGA_SYNCRONIZADOR|COUNTER_V\(6)) # (!\VGA_SYNCRONIZADOR|Add3~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_SYNCRONIZADOR|COUNTER_V\(6),
	datad => VCC,
	cin => \VGA_SYNCRONIZADOR|Add3~11\,
	combout => \VGA_SYNCRONIZADOR|Add3~12_combout\,
	cout => \VGA_SYNCRONIZADOR|Add3~13\);

-- Location: LCCOMB_X39_Y19_N6
\VGA_SYNCRONIZADOR|COUNTER_V[8]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_SYNCRONIZADOR|COUNTER_V[8]~feeder_combout\ = \VGA_SYNCRONIZADOR|Add1~16_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \VGA_SYNCRONIZADOR|Add1~16_combout\,
	combout => \VGA_SYNCRONIZADOR|COUNTER_V[8]~feeder_combout\);

-- Location: FF_X39_Y19_N7
\VGA_SYNCRONIZADOR|COUNTER_V[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK25MHZ|TEMPORAL~clkctrl_outclk\,
	d => \VGA_SYNCRONIZADOR|COUNTER_V[8]~feeder_combout\,
	clrn => \ALT_INV_RST~input_o\,
	ena => \VGA_SYNCRONIZADOR|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_SYNCRONIZADOR|COUNTER_V\(8));

-- Location: LCCOMB_X40_Y19_N22
\VGA_SYNCRONIZADOR|Add3~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_SYNCRONIZADOR|Add3~14_combout\ = (\VGA_SYNCRONIZADOR|COUNTER_V\(7) & (\VGA_SYNCRONIZADOR|Add3~13\ & VCC)) # (!\VGA_SYNCRONIZADOR|COUNTER_V\(7) & (!\VGA_SYNCRONIZADOR|Add3~13\))
-- \VGA_SYNCRONIZADOR|Add3~15\ = CARRY((!\VGA_SYNCRONIZADOR|COUNTER_V\(7) & !\VGA_SYNCRONIZADOR|Add3~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA_SYNCRONIZADOR|COUNTER_V\(7),
	datad => VCC,
	cin => \VGA_SYNCRONIZADOR|Add3~13\,
	combout => \VGA_SYNCRONIZADOR|Add3~14_combout\,
	cout => \VGA_SYNCRONIZADOR|Add3~15\);

-- Location: LCCOMB_X40_Y19_N24
\VGA_SYNCRONIZADOR|Add3~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_SYNCRONIZADOR|Add3~16_combout\ = (\VGA_SYNCRONIZADOR|COUNTER_V\(8) & ((GND) # (!\VGA_SYNCRONIZADOR|Add3~15\))) # (!\VGA_SYNCRONIZADOR|COUNTER_V\(8) & (\VGA_SYNCRONIZADOR|Add3~15\ $ (GND)))
-- \VGA_SYNCRONIZADOR|Add3~17\ = CARRY((\VGA_SYNCRONIZADOR|COUNTER_V\(8)) # (!\VGA_SYNCRONIZADOR|Add3~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA_SYNCRONIZADOR|COUNTER_V\(8),
	datad => VCC,
	cin => \VGA_SYNCRONIZADOR|Add3~15\,
	combout => \VGA_SYNCRONIZADOR|Add3~16_combout\,
	cout => \VGA_SYNCRONIZADOR|Add3~17\);

-- Location: LCCOMB_X40_Y19_N0
\process_0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \process_0~0_combout\ = (\VGA_SYNCRONIZADOR|Add3~16_combout\ & (((!\VGA_SYNCRONIZADOR|Add3~10_combout\) # (!\VGA_SYNCRONIZADOR|Add3~12_combout\)) # (!\VGA_SYNCRONIZADOR|Add3~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_SYNCRONIZADOR|Add3~14_combout\,
	datab => \VGA_SYNCRONIZADOR|Add3~12_combout\,
	datac => \VGA_SYNCRONIZADOR|Add3~10_combout\,
	datad => \VGA_SYNCRONIZADOR|Add3~16_combout\,
	combout => \process_0~0_combout\);

-- Location: LCCOMB_X40_Y19_N4
\LessThan2~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan2~1_combout\ = (\VGA_SYNCRONIZADOR|Add3~4_combout\ & (\VGA_SYNCRONIZADOR|Add3~6_combout\ & ((\VGA_SYNCRONIZADOR|Add3~0_combout\) # (\VGA_SYNCRONIZADOR|Add3~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_SYNCRONIZADOR|Add3~4_combout\,
	datab => \VGA_SYNCRONIZADOR|Add3~0_combout\,
	datac => \VGA_SYNCRONIZADOR|Add3~2_combout\,
	datad => \VGA_SYNCRONIZADOR|Add3~6_combout\,
	combout => \LessThan2~1_combout\);

-- Location: LCCOMB_X40_Y19_N26
\VGA_SYNCRONIZADOR|Add3~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_SYNCRONIZADOR|Add3~18_combout\ = \VGA_SYNCRONIZADOR|Add3~17\ $ (!\VGA_SYNCRONIZADOR|COUNTER_V\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \VGA_SYNCRONIZADOR|COUNTER_V\(9),
	cin => \VGA_SYNCRONIZADOR|Add3~17\,
	combout => \VGA_SYNCRONIZADOR|Add3~18_combout\);

-- Location: LCCOMB_X40_Y19_N6
\LessThan2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan2~0_combout\ = (\VGA_SYNCRONIZADOR|Add3~14_combout\) # ((\VGA_SYNCRONIZADOR|Add3~12_combout\) # ((\VGA_SYNCRONIZADOR|Add3~10_combout\ & \VGA_SYNCRONIZADOR|Add3~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_SYNCRONIZADOR|Add3~10_combout\,
	datab => \VGA_SYNCRONIZADOR|Add3~8_combout\,
	datac => \VGA_SYNCRONIZADOR|Add3~14_combout\,
	datad => \VGA_SYNCRONIZADOR|Add3~12_combout\,
	combout => \LessThan2~0_combout\);

-- Location: LCCOMB_X40_Y19_N2
\process_0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \process_0~1_combout\ = (!\VGA_SYNCRONIZADOR|Add3~18_combout\ & ((\LessThan2~0_combout\) # ((\VGA_SYNCRONIZADOR|Add3~10_combout\ & \LessThan2~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_SYNCRONIZADOR|Add3~10_combout\,
	datab => \LessThan2~1_combout\,
	datac => \VGA_SYNCRONIZADOR|Add3~18_combout\,
	datad => \LessThan2~0_combout\,
	combout => \process_0~1_combout\);

-- Location: LCCOMB_X40_Y19_N30
\process_0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \process_0~2_combout\ = (\LessThan0~2_combout\ & (!\VGA_SYNCRONIZADOR|COUNTER_H\(9) & \process_0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~2_combout\,
	datab => \VGA_SYNCRONIZADOR|COUNTER_H\(9),
	datad => \process_0~1_combout\,
	combout => \process_0~2_combout\);

-- Location: LCCOMB_X40_Y21_N16
\process_0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \process_0~5_combout\ = (\process_0~4_combout\ & (\process_0~0_combout\ & \process_0~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \process_0~4_combout\,
	datac => \process_0~0_combout\,
	datad => \process_0~2_combout\,
	combout => \process_0~5_combout\);

-- Location: LCCOMB_X40_Y21_N24
\R[0]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \R[0]~reg0feeder_combout\ = \process_0~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \process_0~5_combout\,
	combout => \R[0]~reg0feeder_combout\);

-- Location: FF_X40_Y21_N25
\R[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK25MHZ|TEMPORAL~clkctrl_outclk\,
	d => \R[0]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \R[0]~reg0_q\);

-- Location: LCCOMB_X40_Y21_N18
\R[1]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \R[1]~reg0feeder_combout\ = \process_0~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \process_0~5_combout\,
	combout => \R[1]~reg0feeder_combout\);

-- Location: FF_X40_Y21_N19
\R[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK25MHZ|TEMPORAL~clkctrl_outclk\,
	d => \R[1]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \R[1]~reg0_q\);

-- Location: LCCOMB_X40_Y21_N0
\R[2]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \R[2]~reg0feeder_combout\ = \process_0~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \process_0~5_combout\,
	combout => \R[2]~reg0feeder_combout\);

-- Location: FF_X40_Y21_N1
\R[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK25MHZ|TEMPORAL~clkctrl_outclk\,
	d => \R[2]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \R[2]~reg0_q\);

-- Location: LCCOMB_X40_Y21_N14
\R[3]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \R[3]~reg0feeder_combout\ = \process_0~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \process_0~5_combout\,
	combout => \R[3]~reg0feeder_combout\);

-- Location: FF_X40_Y21_N15
\R[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK25MHZ|TEMPORAL~clkctrl_outclk\,
	d => \R[3]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \R[3]~reg0_q\);

-- Location: LCCOMB_X40_Y21_N28
\G[0]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \G[0]~reg0feeder_combout\ = \process_0~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \process_0~5_combout\,
	combout => \G[0]~reg0feeder_combout\);

-- Location: FF_X40_Y21_N29
\G[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK25MHZ|TEMPORAL~clkctrl_outclk\,
	d => \G[0]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G[0]~reg0_q\);

-- Location: LCCOMB_X40_Y21_N30
\G[1]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \G[1]~reg0feeder_combout\ = \process_0~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \process_0~5_combout\,
	combout => \G[1]~reg0feeder_combout\);

-- Location: FF_X40_Y21_N31
\G[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK25MHZ|TEMPORAL~clkctrl_outclk\,
	d => \G[1]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G[1]~reg0_q\);

-- Location: LCCOMB_X40_Y21_N20
\G[2]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \G[2]~reg0feeder_combout\ = \process_0~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \process_0~5_combout\,
	combout => \G[2]~reg0feeder_combout\);

-- Location: FF_X40_Y21_N21
\G[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK25MHZ|TEMPORAL~clkctrl_outclk\,
	d => \G[2]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G[2]~reg0_q\);

-- Location: LCCOMB_X40_Y21_N22
\G[3]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \G[3]~reg0feeder_combout\ = \process_0~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \process_0~5_combout\,
	combout => \G[3]~reg0feeder_combout\);

-- Location: FF_X40_Y21_N23
\G[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK25MHZ|TEMPORAL~clkctrl_outclk\,
	d => \G[3]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G[3]~reg0_q\);

-- Location: FF_X40_Y21_N17
\B[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK25MHZ|TEMPORAL~clkctrl_outclk\,
	d => \process_0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B[0]~reg0_q\);

-- Location: LCCOMB_X40_Y21_N26
\B[1]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \B[1]~reg0feeder_combout\ = \process_0~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \process_0~5_combout\,
	combout => \B[1]~reg0feeder_combout\);

-- Location: FF_X40_Y21_N27
\B[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK25MHZ|TEMPORAL~clkctrl_outclk\,
	d => \B[1]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B[1]~reg0_q\);

-- Location: LCCOMB_X40_Y21_N12
\B[2]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \B[2]~reg0feeder_combout\ = \process_0~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \process_0~5_combout\,
	combout => \B[2]~reg0feeder_combout\);

-- Location: FF_X40_Y21_N13
\B[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK25MHZ|TEMPORAL~clkctrl_outclk\,
	d => \B[2]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B[2]~reg0_q\);

-- Location: LCCOMB_X40_Y21_N10
\B[3]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \B[3]~reg0feeder_combout\ = \process_0~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \process_0~5_combout\,
	combout => \B[3]~reg0feeder_combout\);

-- Location: FF_X40_Y21_N11
\B[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK25MHZ|TEMPORAL~clkctrl_outclk\,
	d => \B[3]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B[3]~reg0_q\);

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
END structure;


