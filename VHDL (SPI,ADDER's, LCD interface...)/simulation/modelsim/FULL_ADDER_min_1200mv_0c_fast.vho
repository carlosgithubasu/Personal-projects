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

-- DATE "06/15/2016 23:49:41"

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

ENTITY 	FULL_ADDER IS
    PORT (
	X : IN std_logic;
	Y : IN std_logic;
	Cin : IN std_logic;
	Cout : OUT std_logic;
	Sum : OUT std_logic
	);
END FULL_ADDER;

-- Design Ports Information
-- Cout	=>  Location: PIN_L4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sum	=>  Location: PIN_N4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X	=>  Location: PIN_N6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Cin	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y	=>  Location: PIN_L5,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF FULL_ADDER IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_X : std_logic;
SIGNAL ww_Y : std_logic;
SIGNAL ww_Cin : std_logic;
SIGNAL ww_Cout : std_logic;
SIGNAL ww_Sum : std_logic;
SIGNAL \Cout~output_o\ : std_logic;
SIGNAL \Sum~output_o\ : std_logic;
SIGNAL \X~input_o\ : std_logic;
SIGNAL \Cin~input_o\ : std_logic;
SIGNAL \Y~input_o\ : std_logic;
SIGNAL \Cout~0_combout\ : std_logic;
SIGNAL \Sum~0_combout\ : std_logic;

BEGIN

ww_X <= X;
ww_Y <= Y;
ww_Cin <= Cin;
Cout <= ww_Cout;
Sum <= ww_Sum;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: IOOBUF_X8_Y0_N9
\Cout~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Cout~0_combout\,
	devoe => ww_devoe,
	o => \Cout~output_o\);

-- Location: IOOBUF_X10_Y0_N9
\Sum~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Sum~0_combout\,
	devoe => ww_devoe,
	o => \Sum~output_o\);

-- Location: IOIBUF_X12_Y0_N1
\X~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_X,
	o => \X~input_o\);

-- Location: IOIBUF_X12_Y0_N8
\Cin~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Cin,
	o => \Cin~input_o\);

-- Location: IOIBUF_X14_Y0_N8
\Y~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Y,
	o => \Y~input_o\);

-- Location: LCCOMB_X12_Y1_N0
\Cout~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Cout~0_combout\ = (\X~input_o\ & ((\Cin~input_o\) # (\Y~input_o\))) # (!\X~input_o\ & (\Cin~input_o\ & \Y~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \X~input_o\,
	datab => \Cin~input_o\,
	datad => \Y~input_o\,
	combout => \Cout~0_combout\);

-- Location: LCCOMB_X12_Y1_N2
\Sum~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Sum~0_combout\ = \X~input_o\ $ (\Cin~input_o\ $ (\Y~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \X~input_o\,
	datab => \Cin~input_o\,
	datad => \Y~input_o\,
	combout => \Sum~0_combout\);

ww_Cout <= \Cout~output_o\;

ww_Sum <= \Sum~output_o\;
END structure;


