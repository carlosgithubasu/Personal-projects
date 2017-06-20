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

-- DATE "12/28/2016 18:49:29"

-- 
-- Device: Altera EP3C16F484C6 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim (VHDL) only
-- 

LIBRARY CYCLONEIII;
LIBRARY IEEE;
USE CYCLONEIII.CYCLONEIII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	ROM_MEMORY IS
    PORT (
	ADDRESS : IN std_logic_vector(4 DOWNTO 0);
	DATA : OUT std_logic_vector(15 DOWNTO 0)
	);
END ROM_MEMORY;

-- Design Ports Information
-- DATA[0]	=>  Location: PIN_R2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA[1]	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA[2]	=>  Location: PIN_R21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA[3]	=>  Location: PIN_U1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA[4]	=>  Location: PIN_P3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA[5]	=>  Location: PIN_W1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA[6]	=>  Location: PIN_M1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA[7]	=>  Location: PIN_V1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA[8]	=>  Location: PIN_P6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA[9]	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA[10]	=>  Location: PIN_T3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA[11]	=>  Location: PIN_AA2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA[12]	=>  Location: PIN_P5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA[13]	=>  Location: PIN_W2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA[14]	=>  Location: PIN_AA7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA[15]	=>  Location: PIN_V4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADDRESS[0]	=>  Location: PIN_Y1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADDRESS[2]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADDRESS[3]	=>  Location: PIN_R5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADDRESS[4]	=>  Location: PIN_P7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADDRESS[1]	=>  Location: PIN_AA1,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF ROM_MEMORY IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_ADDRESS : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_DATA : std_logic_vector(15 DOWNTO 0);
SIGNAL \DATA[0]~output_o\ : std_logic;
SIGNAL \DATA[1]~output_o\ : std_logic;
SIGNAL \DATA[2]~output_o\ : std_logic;
SIGNAL \DATA[3]~output_o\ : std_logic;
SIGNAL \DATA[4]~output_o\ : std_logic;
SIGNAL \DATA[5]~output_o\ : std_logic;
SIGNAL \DATA[6]~output_o\ : std_logic;
SIGNAL \DATA[7]~output_o\ : std_logic;
SIGNAL \DATA[8]~output_o\ : std_logic;
SIGNAL \DATA[9]~output_o\ : std_logic;
SIGNAL \DATA[10]~output_o\ : std_logic;
SIGNAL \DATA[11]~output_o\ : std_logic;
SIGNAL \DATA[12]~output_o\ : std_logic;
SIGNAL \DATA[13]~output_o\ : std_logic;
SIGNAL \DATA[14]~output_o\ : std_logic;
SIGNAL \DATA[15]~output_o\ : std_logic;
SIGNAL \ADDRESS[1]~input_o\ : std_logic;
SIGNAL \ADDRESS[4]~input_o\ : std_logic;
SIGNAL \ADDRESS[0]~input_o\ : std_logic;
SIGNAL \ADDRESS[2]~input_o\ : std_logic;
SIGNAL \ROM~0_combout\ : std_logic;
SIGNAL \ROM~1_combout\ : std_logic;
SIGNAL \ROM~2_combout\ : std_logic;
SIGNAL \ROM~3_combout\ : std_logic;
SIGNAL \ROM~4_combout\ : std_logic;
SIGNAL \ADDRESS[3]~input_o\ : std_logic;
SIGNAL \ROM~5_combout\ : std_logic;
SIGNAL \ROM~6_combout\ : std_logic;
SIGNAL \ROM~7_combout\ : std_logic;

BEGIN

ww_ADDRESS <= ADDRESS;
DATA <= ww_DATA;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: IOOBUF_X0_Y10_N2
\DATA[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM~1_combout\,
	devoe => ww_devoe,
	o => \DATA[0]~output_o\);

-- Location: IOOBUF_X0_Y6_N2
\DATA[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM~3_combout\,
	devoe => ww_devoe,
	o => \DATA[1]~output_o\);

-- Location: IOOBUF_X41_Y10_N9
\DATA[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \DATA[2]~output_o\);

-- Location: IOOBUF_X0_Y9_N16
\DATA[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM~3_combout\,
	devoe => ww_devoe,
	o => \DATA[3]~output_o\);

-- Location: IOOBUF_X0_Y9_N2
\DATA[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM~1_combout\,
	devoe => ww_devoe,
	o => \DATA[4]~output_o\);

-- Location: IOOBUF_X0_Y7_N23
\DATA[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM~3_combout\,
	devoe => ww_devoe,
	o => \DATA[5]~output_o\);

-- Location: IOOBUF_X0_Y13_N23
\DATA[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM~4_combout\,
	devoe => ww_devoe,
	o => \DATA[6]~output_o\);

-- Location: IOOBUF_X0_Y8_N2
\DATA[7]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM~3_combout\,
	devoe => ww_devoe,
	o => \DATA[7]~output_o\);

-- Location: IOOBUF_X0_Y4_N9
\DATA[8]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM~1_combout\,
	devoe => ww_devoe,
	o => \DATA[8]~output_o\);

-- Location: IOOBUF_X0_Y7_N2
\DATA[9]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM~3_combout\,
	devoe => ww_devoe,
	o => \DATA[9]~output_o\);

-- Location: IOOBUF_X0_Y6_N16
\DATA[10]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM~4_combout\,
	devoe => ww_devoe,
	o => \DATA[10]~output_o\);

-- Location: IOOBUF_X0_Y5_N9
\DATA[11]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM~3_combout\,
	devoe => ww_devoe,
	o => \DATA[11]~output_o\);

-- Location: IOOBUF_X0_Y8_N9
\DATA[12]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM~1_combout\,
	devoe => ww_devoe,
	o => \DATA[12]~output_o\);

-- Location: IOOBUF_X0_Y7_N16
\DATA[13]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM~5_combout\,
	devoe => ww_devoe,
	o => \DATA[13]~output_o\);

-- Location: IOOBUF_X11_Y0_N16
\DATA[14]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \DATA[14]~output_o\);

-- Location: IOOBUF_X0_Y5_N23
\DATA[15]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM~7_combout\,
	devoe => ww_devoe,
	o => \DATA[15]~output_o\);

-- Location: IOIBUF_X0_Y5_N15
\ADDRESS[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ADDRESS(1),
	o => \ADDRESS[1]~input_o\);

-- Location: IOIBUF_X0_Y5_N1
\ADDRESS[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ADDRESS(4),
	o => \ADDRESS[4]~input_o\);

-- Location: IOIBUF_X0_Y6_N8
\ADDRESS[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ADDRESS(0),
	o => \ADDRESS[0]~input_o\);

-- Location: IOIBUF_X0_Y7_N8
\ADDRESS[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ADDRESS(2),
	o => \ADDRESS[2]~input_o\);

-- Location: LCCOMB_X1_Y5_N24
\ROM~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ROM~0_combout\ = (!\ADDRESS[3]~input_o\ & (!\ADDRESS[4]~input_o\ & (!\ADDRESS[0]~input_o\ & !\ADDRESS[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADDRESS[3]~input_o\,
	datab => \ADDRESS[4]~input_o\,
	datac => \ADDRESS[0]~input_o\,
	datad => \ADDRESS[2]~input_o\,
	combout => \ROM~0_combout\);

-- Location: LCCOMB_X1_Y5_N10
\ROM~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ROM~1_combout\ = (!\ADDRESS[1]~input_o\ & \ROM~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ADDRESS[1]~input_o\,
	datad => \ROM~0_combout\,
	combout => \ROM~1_combout\);

-- Location: LCCOMB_X1_Y5_N4
\ROM~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ROM~2_combout\ = (!\ADDRESS[3]~input_o\ & (\ADDRESS[2]~input_o\ $ (((\ADDRESS[1]~input_o\) # (\ADDRESS[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000101010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADDRESS[3]~input_o\,
	datab => \ADDRESS[1]~input_o\,
	datac => \ADDRESS[0]~input_o\,
	datad => \ADDRESS[2]~input_o\,
	combout => \ROM~2_combout\);

-- Location: LCCOMB_X1_Y5_N30
\ROM~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ROM~3_combout\ = (!\ADDRESS[4]~input_o\ & \ROM~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ADDRESS[4]~input_o\,
	datac => \ROM~2_combout\,
	combout => \ROM~3_combout\);

-- Location: LCCOMB_X1_Y5_N0
\ROM~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ROM~4_combout\ = (\ADDRESS[1]~input_o\ & \ROM~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ADDRESS[1]~input_o\,
	datad => \ROM~0_combout\,
	combout => \ROM~4_combout\);

-- Location: IOIBUF_X0_Y4_N15
\ADDRESS[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ADDRESS(3),
	o => \ADDRESS[3]~input_o\);

-- Location: LCCOMB_X1_Y5_N26
\ROM~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ROM~5_combout\ = (!\ADDRESS[3]~input_o\ & (!\ADDRESS[4]~input_o\ & (\ADDRESS[0]~input_o\ & !\ADDRESS[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADDRESS[3]~input_o\,
	datab => \ADDRESS[4]~input_o\,
	datac => \ADDRESS[0]~input_o\,
	datad => \ADDRESS[2]~input_o\,
	combout => \ROM~5_combout\);

-- Location: LCCOMB_X1_Y5_N12
\ROM~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ROM~6_combout\ = (!\ADDRESS[3]~input_o\ & (!\ADDRESS[2]~input_o\ & (\ADDRESS[1]~input_o\ $ (\ADDRESS[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADDRESS[3]~input_o\,
	datab => \ADDRESS[1]~input_o\,
	datac => \ADDRESS[0]~input_o\,
	datad => \ADDRESS[2]~input_o\,
	combout => \ROM~6_combout\);

-- Location: LCCOMB_X1_Y5_N22
\ROM~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ROM~7_combout\ = (!\ADDRESS[4]~input_o\ & \ROM~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ADDRESS[4]~input_o\,
	datad => \ROM~6_combout\,
	combout => \ROM~7_combout\);

ww_DATA(0) <= \DATA[0]~output_o\;

ww_DATA(1) <= \DATA[1]~output_o\;

ww_DATA(2) <= \DATA[2]~output_o\;

ww_DATA(3) <= \DATA[3]~output_o\;

ww_DATA(4) <= \DATA[4]~output_o\;

ww_DATA(5) <= \DATA[5]~output_o\;

ww_DATA(6) <= \DATA[6]~output_o\;

ww_DATA(7) <= \DATA[7]~output_o\;

ww_DATA(8) <= \DATA[8]~output_o\;

ww_DATA(9) <= \DATA[9]~output_o\;

ww_DATA(10) <= \DATA[10]~output_o\;

ww_DATA(11) <= \DATA[11]~output_o\;

ww_DATA(12) <= \DATA[12]~output_o\;

ww_DATA(13) <= \DATA[13]~output_o\;

ww_DATA(14) <= \DATA[14]~output_o\;

ww_DATA(15) <= \DATA[15]~output_o\;
END structure;


