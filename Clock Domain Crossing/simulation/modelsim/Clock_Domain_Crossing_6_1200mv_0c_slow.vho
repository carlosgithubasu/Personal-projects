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

-- DATE "09/08/2016 01:17:03"

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

ENTITY 	Clock_Domain_Crossing IS
    PORT (
	rst : IN std_logic;
	clk_GPU : IN std_logic;
	clk_CPU : IN std_logic;
	in_data_GPU_valid : IN std_logic;
	in_data_GPU : IN std_logic_vector(7 DOWNTO 0);
	out_data_CPU : OUT std_logic_vector(7 DOWNTO 0);
	out_data_CPU_valid : OUT std_logic
	);
END Clock_Domain_Crossing;

-- Design Ports Information
-- in_data_GPU_valid	=>  Location: PIN_E5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_data_CPU[0]	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_data_CPU[1]	=>  Location: PIN_E7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_data_CPU[2]	=>  Location: PIN_D6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_data_CPU[3]	=>  Location: PIN_B2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_data_CPU[4]	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_data_CPU[5]	=>  Location: PIN_C17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_data_CPU[6]	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_data_CPU[7]	=>  Location: PIN_H11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_data_CPU_valid	=>  Location: PIN_K7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk_CPU	=>  Location: PIN_G2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rst	=>  Location: PIN_T2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in_data_GPU[0]	=>  Location: PIN_G11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk_GPU	=>  Location: PIN_G1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in_data_GPU[1]	=>  Location: PIN_A3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in_data_GPU[2]	=>  Location: PIN_B3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in_data_GPU[3]	=>  Location: PIN_E6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in_data_GPU[4]	=>  Location: PIN_E14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in_data_GPU[5]	=>  Location: PIN_A20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in_data_GPU[6]	=>  Location: PIN_J2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in_data_GPU[7]	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Clock_Domain_Crossing IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_rst : std_logic;
SIGNAL ww_clk_GPU : std_logic;
SIGNAL ww_clk_CPU : std_logic;
SIGNAL ww_in_data_GPU_valid : std_logic;
SIGNAL ww_in_data_GPU : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_out_data_CPU : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_out_data_CPU_valid : std_logic;
SIGNAL \clk_CPU~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rst~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk_GPU~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \in_data_GPU_valid~input_o\ : std_logic;
SIGNAL \clk_GPU~input_o\ : std_logic;
SIGNAL \clk_GPU~inputclkctrl_outclk\ : std_logic;
SIGNAL \out_data_CPU[0]~output_o\ : std_logic;
SIGNAL \out_data_CPU[1]~output_o\ : std_logic;
SIGNAL \out_data_CPU[2]~output_o\ : std_logic;
SIGNAL \out_data_CPU[3]~output_o\ : std_logic;
SIGNAL \out_data_CPU[4]~output_o\ : std_logic;
SIGNAL \out_data_CPU[5]~output_o\ : std_logic;
SIGNAL \out_data_CPU[6]~output_o\ : std_logic;
SIGNAL \out_data_CPU[7]~output_o\ : std_logic;
SIGNAL \out_data_CPU_valid~output_o\ : std_logic;
SIGNAL \clk_CPU~input_o\ : std_logic;
SIGNAL \clk_CPU~inputclkctrl_outclk\ : std_logic;
SIGNAL \in_data_GPU[0]~input_o\ : std_logic;
SIGNAL \cdc_down_if:cdc_down_map|r_data_GPU[0]~feeder_combout\ : std_logic;
SIGNAL \rst~input_o\ : std_logic;
SIGNAL \rst~inputclkctrl_outclk\ : std_logic;
SIGNAL \cdc_down_if:cdc_down_map|r_data_CPU[0]~feeder_combout\ : std_logic;
SIGNAL \in_data_GPU[1]~input_o\ : std_logic;
SIGNAL \cdc_down_if:cdc_down_map|r_data_GPU[1]~feeder_combout\ : std_logic;
SIGNAL \cdc_down_if:cdc_down_map|r_data_CPU[1]~feeder_combout\ : std_logic;
SIGNAL \in_data_GPU[2]~input_o\ : std_logic;
SIGNAL \cdc_down_if:cdc_down_map|r_data_GPU[2]~feeder_combout\ : std_logic;
SIGNAL \cdc_down_if:cdc_down_map|r_data_CPU[2]~feeder_combout\ : std_logic;
SIGNAL \in_data_GPU[3]~input_o\ : std_logic;
SIGNAL \cdc_down_if:cdc_down_map|r_data_GPU[3]~feeder_combout\ : std_logic;
SIGNAL \cdc_down_if:cdc_down_map|r_data_CPU[3]~feeder_combout\ : std_logic;
SIGNAL \in_data_GPU[4]~input_o\ : std_logic;
SIGNAL \cdc_down_if:cdc_down_map|r_data_GPU[4]~feeder_combout\ : std_logic;
SIGNAL \cdc_down_if:cdc_down_map|r_data_CPU[4]~feeder_combout\ : std_logic;
SIGNAL \in_data_GPU[5]~input_o\ : std_logic;
SIGNAL \cdc_down_if:cdc_down_map|r_data_GPU[5]~feeder_combout\ : std_logic;
SIGNAL \cdc_down_if:cdc_down_map|r_data_CPU[5]~feeder_combout\ : std_logic;
SIGNAL \in_data_GPU[6]~input_o\ : std_logic;
SIGNAL \cdc_down_if:cdc_down_map|r_data_GPU[6]~feeder_combout\ : std_logic;
SIGNAL \cdc_down_if:cdc_down_map|r_data_CPU[6]~feeder_combout\ : std_logic;
SIGNAL \in_data_GPU[7]~input_o\ : std_logic;
SIGNAL \cdc_down_if:cdc_down_map|r_data_GPU[7]~feeder_combout\ : std_logic;
SIGNAL \cdc_down_if:cdc_down_map|r_data_CPU[7]~feeder_combout\ : std_logic;
SIGNAL \cdc_down_if:cdc_down_map|r_data_GPU\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \cdc_down_if:cdc_down_map|r_data_CPU\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \ALT_INV_rst~inputclkctrl_outclk\ : std_logic;

BEGIN

ww_rst <= rst;
ww_clk_GPU <= clk_GPU;
ww_clk_CPU <= clk_CPU;
ww_in_data_GPU_valid <= in_data_GPU_valid;
ww_in_data_GPU <= in_data_GPU;
out_data_CPU <= ww_out_data_CPU;
out_data_CPU_valid <= ww_out_data_CPU_valid;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk_CPU~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk_CPU~input_o\);

\rst~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \rst~input_o\);

\clk_GPU~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk_GPU~input_o\);
\ALT_INV_rst~inputclkctrl_outclk\ <= NOT \rst~inputclkctrl_outclk\;

-- Location: IOIBUF_X0_Y14_N8
\clk_GPU~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk_GPU,
	o => \clk_GPU~input_o\);

-- Location: CLKCTRL_G2
\clk_GPU~inputclkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk_GPU~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk_GPU~inputclkctrl_outclk\);

-- Location: IOOBUF_X14_Y29_N23
\out_data_CPU[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \cdc_down_if:cdc_down_map|r_data_CPU\(0),
	devoe => ww_devoe,
	o => \out_data_CPU[0]~output_o\);

-- Location: IOOBUF_X3_Y29_N23
\out_data_CPU[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \cdc_down_if:cdc_down_map|r_data_CPU\(1),
	devoe => ww_devoe,
	o => \out_data_CPU[1]~output_o\);

-- Location: IOOBUF_X3_Y29_N16
\out_data_CPU[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \cdc_down_if:cdc_down_map|r_data_CPU\(2),
	devoe => ww_devoe,
	o => \out_data_CPU[2]~output_o\);

-- Location: IOOBUF_X0_Y27_N9
\out_data_CPU[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \cdc_down_if:cdc_down_map|r_data_CPU\(3),
	devoe => ww_devoe,
	o => \out_data_CPU[3]~output_o\);

-- Location: IOOBUF_X28_Y29_N30
\out_data_CPU[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \cdc_down_if:cdc_down_map|r_data_CPU\(4),
	devoe => ww_devoe,
	o => \out_data_CPU[4]~output_o\);

-- Location: IOOBUF_X35_Y29_N16
\out_data_CPU[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \cdc_down_if:cdc_down_map|r_data_CPU\(5),
	devoe => ww_devoe,
	o => \out_data_CPU[5]~output_o\);

-- Location: IOOBUF_X0_Y20_N9
\out_data_CPU[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \cdc_down_if:cdc_down_map|r_data_CPU\(6),
	devoe => ww_devoe,
	o => \out_data_CPU[6]~output_o\);

-- Location: IOOBUF_X19_Y29_N30
\out_data_CPU[7]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \cdc_down_if:cdc_down_map|r_data_CPU\(7),
	devoe => ww_devoe,
	o => \out_data_CPU[7]~output_o\);

-- Location: IOOBUF_X0_Y22_N23
\out_data_CPU_valid~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \out_data_CPU_valid~output_o\);

-- Location: IOIBUF_X0_Y14_N1
\clk_CPU~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk_CPU,
	o => \clk_CPU~input_o\);

-- Location: CLKCTRL_G4
\clk_CPU~inputclkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk_CPU~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk_CPU~inputclkctrl_outclk\);

-- Location: IOIBUF_X14_Y29_N15
\in_data_GPU[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_data_GPU(0),
	o => \in_data_GPU[0]~input_o\);

-- Location: LCCOMB_X14_Y28_N2
\cdc_down_if:cdc_down_map|r_data_GPU[0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cdc_down_if:cdc_down_map|r_data_GPU[0]~feeder_combout\ = \in_data_GPU[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_data_GPU[0]~input_o\,
	combout => \cdc_down_if:cdc_down_map|r_data_GPU[0]~feeder_combout\);

-- Location: IOIBUF_X0_Y14_N15
\rst~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rst,
	o => \rst~input_o\);

-- Location: CLKCTRL_G3
\rst~inputclkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \rst~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \rst~inputclkctrl_outclk\);

-- Location: FF_X14_Y28_N3
\cdc_down_if:cdc_down_map|r_data_GPU[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_GPU~inputclkctrl_outclk\,
	d => \cdc_down_if:cdc_down_map|r_data_GPU[0]~feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cdc_down_if:cdc_down_map|r_data_GPU\(0));

-- Location: LCCOMB_X14_Y28_N0
\cdc_down_if:cdc_down_map|r_data_CPU[0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cdc_down_if:cdc_down_map|r_data_CPU[0]~feeder_combout\ = \cdc_down_if:cdc_down_map|r_data_GPU\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \cdc_down_if:cdc_down_map|r_data_GPU\(0),
	combout => \cdc_down_if:cdc_down_map|r_data_CPU[0]~feeder_combout\);

-- Location: FF_X14_Y28_N1
\cdc_down_if:cdc_down_map|r_data_CPU[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_CPU~inputclkctrl_outclk\,
	d => \cdc_down_if:cdc_down_map|r_data_CPU[0]~feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cdc_down_if:cdc_down_map|r_data_CPU\(0));

-- Location: IOIBUF_X3_Y29_N1
\in_data_GPU[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_data_GPU(1),
	o => \in_data_GPU[1]~input_o\);

-- Location: LCCOMB_X3_Y28_N2
\cdc_down_if:cdc_down_map|r_data_GPU[1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cdc_down_if:cdc_down_map|r_data_GPU[1]~feeder_combout\ = \in_data_GPU[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_data_GPU[1]~input_o\,
	combout => \cdc_down_if:cdc_down_map|r_data_GPU[1]~feeder_combout\);

-- Location: FF_X3_Y28_N3
\cdc_down_if:cdc_down_map|r_data_GPU[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_GPU~inputclkctrl_outclk\,
	d => \cdc_down_if:cdc_down_map|r_data_GPU[1]~feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cdc_down_if:cdc_down_map|r_data_GPU\(1));

-- Location: LCCOMB_X3_Y28_N0
\cdc_down_if:cdc_down_map|r_data_CPU[1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cdc_down_if:cdc_down_map|r_data_CPU[1]~feeder_combout\ = \cdc_down_if:cdc_down_map|r_data_GPU\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \cdc_down_if:cdc_down_map|r_data_GPU\(1),
	combout => \cdc_down_if:cdc_down_map|r_data_CPU[1]~feeder_combout\);

-- Location: FF_X3_Y28_N1
\cdc_down_if:cdc_down_map|r_data_CPU[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_CPU~inputclkctrl_outclk\,
	d => \cdc_down_if:cdc_down_map|r_data_CPU[1]~feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cdc_down_if:cdc_down_map|r_data_CPU\(1));

-- Location: IOIBUF_X3_Y29_N8
\in_data_GPU[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_data_GPU(2),
	o => \in_data_GPU[2]~input_o\);

-- Location: LCCOMB_X4_Y28_N2
\cdc_down_if:cdc_down_map|r_data_GPU[2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cdc_down_if:cdc_down_map|r_data_GPU[2]~feeder_combout\ = \in_data_GPU[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_data_GPU[2]~input_o\,
	combout => \cdc_down_if:cdc_down_map|r_data_GPU[2]~feeder_combout\);

-- Location: FF_X4_Y28_N3
\cdc_down_if:cdc_down_map|r_data_GPU[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_GPU~inputclkctrl_outclk\,
	d => \cdc_down_if:cdc_down_map|r_data_GPU[2]~feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cdc_down_if:cdc_down_map|r_data_GPU\(2));

-- Location: LCCOMB_X4_Y28_N0
\cdc_down_if:cdc_down_map|r_data_CPU[2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cdc_down_if:cdc_down_map|r_data_CPU[2]~feeder_combout\ = \cdc_down_if:cdc_down_map|r_data_GPU\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \cdc_down_if:cdc_down_map|r_data_GPU\(2),
	combout => \cdc_down_if:cdc_down_map|r_data_CPU[2]~feeder_combout\);

-- Location: FF_X4_Y28_N1
\cdc_down_if:cdc_down_map|r_data_CPU[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_CPU~inputclkctrl_outclk\,
	d => \cdc_down_if:cdc_down_map|r_data_CPU[2]~feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cdc_down_if:cdc_down_map|r_data_CPU\(2));

-- Location: IOIBUF_X1_Y29_N22
\in_data_GPU[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_data_GPU(3),
	o => \in_data_GPU[3]~input_o\);

-- Location: LCCOMB_X1_Y28_N2
\cdc_down_if:cdc_down_map|r_data_GPU[3]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cdc_down_if:cdc_down_map|r_data_GPU[3]~feeder_combout\ = \in_data_GPU[3]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_data_GPU[3]~input_o\,
	combout => \cdc_down_if:cdc_down_map|r_data_GPU[3]~feeder_combout\);

-- Location: FF_X1_Y28_N3
\cdc_down_if:cdc_down_map|r_data_GPU[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_GPU~inputclkctrl_outclk\,
	d => \cdc_down_if:cdc_down_map|r_data_GPU[3]~feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cdc_down_if:cdc_down_map|r_data_GPU\(3));

-- Location: LCCOMB_X1_Y28_N8
\cdc_down_if:cdc_down_map|r_data_CPU[3]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cdc_down_if:cdc_down_map|r_data_CPU[3]~feeder_combout\ = \cdc_down_if:cdc_down_map|r_data_GPU\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \cdc_down_if:cdc_down_map|r_data_GPU\(3),
	combout => \cdc_down_if:cdc_down_map|r_data_CPU[3]~feeder_combout\);

-- Location: FF_X1_Y28_N9
\cdc_down_if:cdc_down_map|r_data_CPU[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_CPU~inputclkctrl_outclk\,
	d => \cdc_down_if:cdc_down_map|r_data_CPU[3]~feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cdc_down_if:cdc_down_map|r_data_CPU\(3));

-- Location: IOIBUF_X28_Y29_N15
\in_data_GPU[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_data_GPU(4),
	o => \in_data_GPU[4]~input_o\);

-- Location: LCCOMB_X28_Y28_N2
\cdc_down_if:cdc_down_map|r_data_GPU[4]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cdc_down_if:cdc_down_map|r_data_GPU[4]~feeder_combout\ = \in_data_GPU[4]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_data_GPU[4]~input_o\,
	combout => \cdc_down_if:cdc_down_map|r_data_GPU[4]~feeder_combout\);

-- Location: FF_X28_Y28_N3
\cdc_down_if:cdc_down_map|r_data_GPU[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_GPU~inputclkctrl_outclk\,
	d => \cdc_down_if:cdc_down_map|r_data_GPU[4]~feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cdc_down_if:cdc_down_map|r_data_GPU\(4));

-- Location: LCCOMB_X28_Y28_N0
\cdc_down_if:cdc_down_map|r_data_CPU[4]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cdc_down_if:cdc_down_map|r_data_CPU[4]~feeder_combout\ = \cdc_down_if:cdc_down_map|r_data_GPU\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \cdc_down_if:cdc_down_map|r_data_GPU\(4),
	combout => \cdc_down_if:cdc_down_map|r_data_CPU[4]~feeder_combout\);

-- Location: FF_X28_Y28_N1
\cdc_down_if:cdc_down_map|r_data_CPU[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_CPU~inputclkctrl_outclk\,
	d => \cdc_down_if:cdc_down_map|r_data_CPU[4]~feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cdc_down_if:cdc_down_map|r_data_CPU\(4));

-- Location: IOIBUF_X35_Y29_N1
\in_data_GPU[5]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_data_GPU(5),
	o => \in_data_GPU[5]~input_o\);

-- Location: LCCOMB_X36_Y28_N2
\cdc_down_if:cdc_down_map|r_data_GPU[5]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cdc_down_if:cdc_down_map|r_data_GPU[5]~feeder_combout\ = \in_data_GPU[5]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_data_GPU[5]~input_o\,
	combout => \cdc_down_if:cdc_down_map|r_data_GPU[5]~feeder_combout\);

-- Location: FF_X36_Y28_N3
\cdc_down_if:cdc_down_map|r_data_GPU[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_GPU~inputclkctrl_outclk\,
	d => \cdc_down_if:cdc_down_map|r_data_GPU[5]~feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cdc_down_if:cdc_down_map|r_data_GPU\(5));

-- Location: LCCOMB_X36_Y28_N0
\cdc_down_if:cdc_down_map|r_data_CPU[5]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cdc_down_if:cdc_down_map|r_data_CPU[5]~feeder_combout\ = \cdc_down_if:cdc_down_map|r_data_GPU\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \cdc_down_if:cdc_down_map|r_data_GPU\(5),
	combout => \cdc_down_if:cdc_down_map|r_data_CPU[5]~feeder_combout\);

-- Location: FF_X36_Y28_N1
\cdc_down_if:cdc_down_map|r_data_CPU[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_CPU~inputclkctrl_outclk\,
	d => \cdc_down_if:cdc_down_map|r_data_CPU[5]~feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cdc_down_if:cdc_down_map|r_data_CPU\(5));

-- Location: IOIBUF_X0_Y20_N1
\in_data_GPU[6]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_data_GPU(6),
	o => \in_data_GPU[6]~input_o\);

-- Location: LCCOMB_X1_Y20_N2
\cdc_down_if:cdc_down_map|r_data_GPU[6]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cdc_down_if:cdc_down_map|r_data_GPU[6]~feeder_combout\ = \in_data_GPU[6]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_data_GPU[6]~input_o\,
	combout => \cdc_down_if:cdc_down_map|r_data_GPU[6]~feeder_combout\);

-- Location: FF_X1_Y20_N3
\cdc_down_if:cdc_down_map|r_data_GPU[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_GPU~inputclkctrl_outclk\,
	d => \cdc_down_if:cdc_down_map|r_data_GPU[6]~feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cdc_down_if:cdc_down_map|r_data_GPU\(6));

-- Location: LCCOMB_X1_Y20_N16
\cdc_down_if:cdc_down_map|r_data_CPU[6]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cdc_down_if:cdc_down_map|r_data_CPU[6]~feeder_combout\ = \cdc_down_if:cdc_down_map|r_data_GPU\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \cdc_down_if:cdc_down_map|r_data_GPU\(6),
	combout => \cdc_down_if:cdc_down_map|r_data_CPU[6]~feeder_combout\);

-- Location: FF_X1_Y20_N17
\cdc_down_if:cdc_down_map|r_data_CPU[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_CPU~inputclkctrl_outclk\,
	d => \cdc_down_if:cdc_down_map|r_data_CPU[6]~feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cdc_down_if:cdc_down_map|r_data_CPU\(6));

-- Location: IOIBUF_X21_Y29_N8
\in_data_GPU[7]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_data_GPU(7),
	o => \in_data_GPU[7]~input_o\);

-- Location: LCCOMB_X20_Y28_N2
\cdc_down_if:cdc_down_map|r_data_GPU[7]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cdc_down_if:cdc_down_map|r_data_GPU[7]~feeder_combout\ = \in_data_GPU[7]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_data_GPU[7]~input_o\,
	combout => \cdc_down_if:cdc_down_map|r_data_GPU[7]~feeder_combout\);

-- Location: FF_X20_Y28_N3
\cdc_down_if:cdc_down_map|r_data_GPU[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_GPU~inputclkctrl_outclk\,
	d => \cdc_down_if:cdc_down_map|r_data_GPU[7]~feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cdc_down_if:cdc_down_map|r_data_GPU\(7));

-- Location: LCCOMB_X20_Y28_N0
\cdc_down_if:cdc_down_map|r_data_CPU[7]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cdc_down_if:cdc_down_map|r_data_CPU[7]~feeder_combout\ = \cdc_down_if:cdc_down_map|r_data_GPU\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \cdc_down_if:cdc_down_map|r_data_GPU\(7),
	combout => \cdc_down_if:cdc_down_map|r_data_CPU[7]~feeder_combout\);

-- Location: FF_X20_Y28_N1
\cdc_down_if:cdc_down_map|r_data_CPU[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_CPU~inputclkctrl_outclk\,
	d => \cdc_down_if:cdc_down_map|r_data_CPU[7]~feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cdc_down_if:cdc_down_map|r_data_CPU\(7));

-- Location: IOIBUF_X1_Y29_N29
\in_data_GPU_valid~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_data_GPU_valid,
	o => \in_data_GPU_valid~input_o\);

ww_out_data_CPU(0) <= \out_data_CPU[0]~output_o\;

ww_out_data_CPU(1) <= \out_data_CPU[1]~output_o\;

ww_out_data_CPU(2) <= \out_data_CPU[2]~output_o\;

ww_out_data_CPU(3) <= \out_data_CPU[3]~output_o\;

ww_out_data_CPU(4) <= \out_data_CPU[4]~output_o\;

ww_out_data_CPU(5) <= \out_data_CPU[5]~output_o\;

ww_out_data_CPU(6) <= \out_data_CPU[6]~output_o\;

ww_out_data_CPU(7) <= \out_data_CPU[7]~output_o\;

ww_out_data_CPU_valid <= \out_data_CPU_valid~output_o\;
END structure;


