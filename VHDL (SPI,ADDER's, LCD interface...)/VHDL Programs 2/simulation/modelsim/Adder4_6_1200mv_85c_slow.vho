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

-- DATE "06/21/2016 21:34:24"

-- 
-- Device: Altera EP4CGX15BF14C6 Package FBGA169
-- 

-- 
-- This VHDL file should be used for ModelSim (VHDL) only
-- 

LIBRARY CYCLONEIV;
LIBRARY IEEE;
USE CYCLONEIV.CYCLONEIV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	Adder4 IS
    PORT (
	A : IN std_logic_vector(3 DOWNTO 0);
	B : IN std_logic_vector(3 DOWNTO 0);
	Ci : IN std_logic;
	S : OUT std_logic_vector(3 DOWNTO 0);
	Co : OUT std_logic
	);
END Adder4;

-- Design Ports Information
-- S[0]	=>  Location: PIN_N9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[1]	=>  Location: PIN_N6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[2]	=>  Location: PIN_M4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[3]	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Co	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[0]	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[0]	=>  Location: PIN_N4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Ci	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[1]	=>  Location: PIN_K9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[1]	=>  Location: PIN_L9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[2]	=>  Location: PIN_K8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[2]	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[3]	=>  Location: PIN_L4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[3]	=>  Location: PIN_L5,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Adder4 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_A : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_B : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_Ci : std_logic;
SIGNAL ww_S : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_Co : std_logic;
SIGNAL \Ci~input_o\ : std_logic;
SIGNAL \S[0]~output_o\ : std_logic;
SIGNAL \S[1]~output_o\ : std_logic;
SIGNAL \S[2]~output_o\ : std_logic;
SIGNAL \S[3]~output_o\ : std_logic;
SIGNAL \Co~output_o\ : std_logic;
SIGNAL \B[0]~input_o\ : std_logic;
SIGNAL \A[0]~input_o\ : std_logic;
SIGNAL \Add0~1_cout\ : std_logic;
SIGNAL \Add0~2_combout\ : std_logic;
SIGNAL \B[1]~input_o\ : std_logic;
SIGNAL \A[1]~input_o\ : std_logic;
SIGNAL \Add0~3\ : std_logic;
SIGNAL \Add0~4_combout\ : std_logic;
SIGNAL \A[2]~input_o\ : std_logic;
SIGNAL \B[2]~input_o\ : std_logic;
SIGNAL \Add0~5\ : std_logic;
SIGNAL \Add0~6_combout\ : std_logic;
SIGNAL \B[3]~input_o\ : std_logic;
SIGNAL \A[3]~input_o\ : std_logic;
SIGNAL \Add0~7\ : std_logic;
SIGNAL \Add0~8_combout\ : std_logic;
SIGNAL \Add0~9\ : std_logic;
SIGNAL \Add0~10_combout\ : std_logic;

BEGIN

ww_A <= A;
ww_B <= B;
ww_Ci <= Ci;
S <= ww_S;
Co <= ww_Co;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: IOIBUF_X12_Y31_N1
\Ci~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Ci,
	o => \Ci~input_o\);

-- Location: IOOBUF_X20_Y0_N2
\S[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add0~2_combout\,
	devoe => ww_devoe,
	o => \S[0]~output_o\);

-- Location: IOOBUF_X12_Y0_N2
\S[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add0~4_combout\,
	devoe => ww_devoe,
	o => \S[1]~output_o\);

-- Location: IOOBUF_X8_Y0_N2
\S[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add0~6_combout\,
	devoe => ww_devoe,
	o => \S[2]~output_o\);

-- Location: IOOBUF_X12_Y0_N9
\S[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add0~8_combout\,
	devoe => ww_devoe,
	o => \S[3]~output_o\);

-- Location: IOOBUF_X20_Y0_N9
\Co~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add0~10_combout\,
	devoe => ww_devoe,
	o => \Co~output_o\);

-- Location: IOIBUF_X24_Y0_N1
\B[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(0),
	o => \B[0]~input_o\);

-- Location: IOIBUF_X10_Y0_N8
\A[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(0),
	o => \A[0]~input_o\);

-- Location: LCCOMB_X14_Y1_N0
\Add0~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~1_cout\ = CARRY(\Ci~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ci~input_o\,
	datad => VCC,
	cout => \Add0~1_cout\);

-- Location: LCCOMB_X14_Y1_N2
\Add0~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~2_combout\ = (\B[0]~input_o\ & ((\A[0]~input_o\ & (\Add0~1_cout\ & VCC)) # (!\A[0]~input_o\ & (!\Add0~1_cout\)))) # (!\B[0]~input_o\ & ((\A[0]~input_o\ & (!\Add0~1_cout\)) # (!\A[0]~input_o\ & ((\Add0~1_cout\) # (GND)))))
-- \Add0~3\ = CARRY((\B[0]~input_o\ & (!\A[0]~input_o\ & !\Add0~1_cout\)) # (!\B[0]~input_o\ & ((!\Add0~1_cout\) # (!\A[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \A[0]~input_o\,
	datad => VCC,
	cin => \Add0~1_cout\,
	combout => \Add0~2_combout\,
	cout => \Add0~3\);

-- Location: IOIBUF_X22_Y0_N1
\B[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(1),
	o => \B[1]~input_o\);

-- Location: IOIBUF_X24_Y0_N8
\A[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(1),
	o => \A[1]~input_o\);

-- Location: LCCOMB_X14_Y1_N4
\Add0~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~4_combout\ = ((\B[1]~input_o\ $ (\A[1]~input_o\ $ (!\Add0~3\)))) # (GND)
-- \Add0~5\ = CARRY((\B[1]~input_o\ & ((\A[1]~input_o\) # (!\Add0~3\))) # (!\B[1]~input_o\ & (\A[1]~input_o\ & !\Add0~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \A[1]~input_o\,
	datad => VCC,
	cin => \Add0~3\,
	combout => \Add0~4_combout\,
	cout => \Add0~5\);

-- Location: IOIBUF_X14_Y0_N1
\A[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(2),
	o => \A[2]~input_o\);

-- Location: IOIBUF_X22_Y0_N8
\B[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(2),
	o => \B[2]~input_o\);

-- Location: LCCOMB_X14_Y1_N6
\Add0~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~6_combout\ = (\A[2]~input_o\ & ((\B[2]~input_o\ & (\Add0~5\ & VCC)) # (!\B[2]~input_o\ & (!\Add0~5\)))) # (!\A[2]~input_o\ & ((\B[2]~input_o\ & (!\Add0~5\)) # (!\B[2]~input_o\ & ((\Add0~5\) # (GND)))))
-- \Add0~7\ = CARRY((\A[2]~input_o\ & (!\B[2]~input_o\ & !\Add0~5\)) # (!\A[2]~input_o\ & ((!\Add0~5\) # (!\B[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[2]~input_o\,
	datab => \B[2]~input_o\,
	datad => VCC,
	cin => \Add0~5\,
	combout => \Add0~6_combout\,
	cout => \Add0~7\);

-- Location: IOIBUF_X8_Y0_N8
\B[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(3),
	o => \B[3]~input_o\);

-- Location: IOIBUF_X14_Y0_N8
\A[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(3),
	o => \A[3]~input_o\);

-- Location: LCCOMB_X14_Y1_N8
\Add0~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~8_combout\ = ((\B[3]~input_o\ $ (\A[3]~input_o\ $ (!\Add0~7\)))) # (GND)
-- \Add0~9\ = CARRY((\B[3]~input_o\ & ((\A[3]~input_o\) # (!\Add0~7\))) # (!\B[3]~input_o\ & (\A[3]~input_o\ & !\Add0~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \A[3]~input_o\,
	datad => VCC,
	cin => \Add0~7\,
	combout => \Add0~8_combout\,
	cout => \Add0~9\);

-- Location: LCCOMB_X14_Y1_N10
\Add0~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~10_combout\ = \Add0~9\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Add0~9\,
	combout => \Add0~10_combout\);

ww_S(0) <= \S[0]~output_o\;

ww_S(1) <= \S[1]~output_o\;

ww_S(2) <= \S[2]~output_o\;

ww_S(3) <= \S[3]~output_o\;

ww_Co <= \Co~output_o\;
END structure;


