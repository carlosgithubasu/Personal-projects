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

-- DATE "07/13/2016 11:17:55"

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

ENTITY 	TESTING_KEYPAD IS
    PORT (
	CLK : IN std_logic;
	ROW : IN std_logic_vector(0 TO 3);
	COL : OUT std_logic_vector(0 TO 3);
	KEY : OUT std_logic_vector(3 DOWNTO 0);
	KEY_AVAILABLES : OUT std_logic
	);
END TESTING_KEYPAD;

-- Design Ports Information
-- COL[3]	=>  Location: PIN_T12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- COL[2]	=>  Location: PIN_R14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- COL[1]	=>  Location: PIN_AB7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- COL[0]	=>  Location: PIN_AA9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[0]	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[1]	=>  Location: PIN_J2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[2]	=>  Location: PIN_J3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[3]	=>  Location: PIN_H1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY_AVAILABLES	=>  Location: PIN_F2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ROW[3]	=>  Location: PIN_AB9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ROW[1]	=>  Location: PIN_T15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ROW[2]	=>  Location: PIN_V15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ROW[0]	=>  Location: PIN_W17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK	=>  Location: PIN_G21,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF TESTING_KEYPAD IS
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
SIGNAL ww_ROW : std_logic_vector(0 TO 3);
SIGNAL ww_COL : std_logic_vector(0 TO 3);
SIGNAL ww_KEY : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_KEY_AVAILABLES : std_logic;
SIGNAL \CLK1KHZ~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CLK~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \Add0~12_combout\ : std_logic;
SIGNAL \Add0~22_combout\ : std_logic;
SIGNAL \Add0~55\ : std_logic;
SIGNAL \Add0~56_combout\ : std_logic;
SIGNAL \Add0~57\ : std_logic;
SIGNAL \Add0~58_combout\ : std_logic;
SIGNAL \Add0~59\ : std_logic;
SIGNAL \Add0~60_combout\ : std_logic;
SIGNAL \Add0~61\ : std_logic;
SIGNAL \Add0~62_combout\ : std_logic;
SIGNAL \Mux8~3_combout\ : std_logic;
SIGNAL \KEY~6_combout\ : std_logic;
SIGNAL \Mux5~0_combout\ : std_logic;
SIGNAL \Equal5~1_combout\ : std_logic;
SIGNAL \Equal5~9_combout\ : std_logic;
SIGNAL \ROW[3]~input_o\ : std_logic;
SIGNAL \CLK~input_o\ : std_logic;
SIGNAL \CLK~inputclkctrl_outclk\ : std_logic;
SIGNAL \COL[3]~output_o\ : std_logic;
SIGNAL \COL[2]~output_o\ : std_logic;
SIGNAL \COL[1]~output_o\ : std_logic;
SIGNAL \COL[0]~output_o\ : std_logic;
SIGNAL \KEY[0]~output_o\ : std_logic;
SIGNAL \KEY[1]~output_o\ : std_logic;
SIGNAL \KEY[2]~output_o\ : std_logic;
SIGNAL \KEY[3]~output_o\ : std_logic;
SIGNAL \KEY_AVAILABLES~output_o\ : std_logic;
SIGNAL \COUNTER~6_combout\ : std_logic;
SIGNAL \Add0~1\ : std_logic;
SIGNAL \Add0~2_combout\ : std_logic;
SIGNAL \Add0~3\ : std_logic;
SIGNAL \Add0~4_combout\ : std_logic;
SIGNAL \Add0~5\ : std_logic;
SIGNAL \Add0~6_combout\ : std_logic;
SIGNAL \COUNTER~5_combout\ : std_logic;
SIGNAL \Add0~7\ : std_logic;
SIGNAL \Add0~8_combout\ : std_logic;
SIGNAL \Add0~9\ : std_logic;
SIGNAL \Add0~10_combout\ : std_logic;
SIGNAL \COUNTER~4_combout\ : std_logic;
SIGNAL \Add0~11\ : std_logic;
SIGNAL \Add0~13\ : std_logic;
SIGNAL \Add0~14_combout\ : std_logic;
SIGNAL \COUNTER~3_combout\ : std_logic;
SIGNAL \Add0~15\ : std_logic;
SIGNAL \Add0~16_combout\ : std_logic;
SIGNAL \COUNTER~2_combout\ : std_logic;
SIGNAL \Add0~17\ : std_logic;
SIGNAL \Add0~18_combout\ : std_logic;
SIGNAL \Add0~19\ : std_logic;
SIGNAL \Add0~20_combout\ : std_logic;
SIGNAL \Add0~21\ : std_logic;
SIGNAL \Add0~23\ : std_logic;
SIGNAL \Add0~24_combout\ : std_logic;
SIGNAL \Add0~25\ : std_logic;
SIGNAL \Add0~26_combout\ : std_logic;
SIGNAL \COUNTER~1_combout\ : std_logic;
SIGNAL \Add0~27\ : std_logic;
SIGNAL \Add0~28_combout\ : std_logic;
SIGNAL \COUNTER~0_combout\ : std_logic;
SIGNAL \Add0~29\ : std_logic;
SIGNAL \Add0~31\ : std_logic;
SIGNAL \Add0~32_combout\ : std_logic;
SIGNAL \Add0~33\ : std_logic;
SIGNAL \Add0~34_combout\ : std_logic;
SIGNAL \Add0~35\ : std_logic;
SIGNAL \Add0~36_combout\ : std_logic;
SIGNAL \Add0~37\ : std_logic;
SIGNAL \Add0~39\ : std_logic;
SIGNAL \Add0~40_combout\ : std_logic;
SIGNAL \Add0~41\ : std_logic;
SIGNAL \Add0~43\ : std_logic;
SIGNAL \Add0~45\ : std_logic;
SIGNAL \Add0~46_combout\ : std_logic;
SIGNAL \Add0~47\ : std_logic;
SIGNAL \Add0~48_combout\ : std_logic;
SIGNAL \Add0~49\ : std_logic;
SIGNAL \Add0~50_combout\ : std_logic;
SIGNAL \Add0~51\ : std_logic;
SIGNAL \Add0~52_combout\ : std_logic;
SIGNAL \Add0~53\ : std_logic;
SIGNAL \Add0~54_combout\ : std_logic;
SIGNAL \Equal5~8_combout\ : std_logic;
SIGNAL \Add0~30_combout\ : std_logic;
SIGNAL \Equal5~0_combout\ : std_logic;
SIGNAL \Equal5~2_combout\ : std_logic;
SIGNAL \Equal5~3_combout\ : std_logic;
SIGNAL \Equal5~4_combout\ : std_logic;
SIGNAL \Add0~42_combout\ : std_logic;
SIGNAL \Add0~44_combout\ : std_logic;
SIGNAL \Equal5~6_combout\ : std_logic;
SIGNAL \Add0~38_combout\ : std_logic;
SIGNAL \Equal5~5_combout\ : std_logic;
SIGNAL \Equal5~7_combout\ : std_logic;
SIGNAL \Equal5~10_combout\ : std_logic;
SIGNAL \CLK1KHZ~0_combout\ : std_logic;
SIGNAL \CLK1KHZ~q\ : std_logic;
SIGNAL \CLK1KHZ~clkctrl_outclk\ : std_logic;
SIGNAL \ROW[1]~input_o\ : std_logic;
SIGNAL \ROW[2]~input_o\ : std_logic;
SIGNAL \ROW[0]~input_o\ : std_logic;
SIGNAL \KEY~0_combout\ : std_logic;
SIGNAL \Equal4~0_combout\ : std_logic;
SIGNAL \Mux9~0_combout\ : std_logic;
SIGNAL \Mux10~0_combout\ : std_logic;
SIGNAL \Mux11~0_combout\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \COL[3]~reg0_q\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \COL[2]~reg0_q\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \COL[1]~reg0_q\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \COL[0]~reg0_q\ : std_logic;
SIGNAL \Mux8~2_combout\ : std_logic;
SIGNAL \Equal1~0_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Equal2~0_combout\ : std_logic;
SIGNAL \Mux8~4_combout\ : std_logic;
SIGNAL \Mux8~5_combout\ : std_logic;
SIGNAL \Mux8~6_combout\ : std_logic;
SIGNAL \Mux8~7_combout\ : std_logic;
SIGNAL \Mux8~9_combout\ : std_logic;
SIGNAL \KEY[0]~reg0_q\ : std_logic;
SIGNAL \KEY~3_combout\ : std_logic;
SIGNAL \KEY~5_combout\ : std_logic;
SIGNAL \KEY~4_combout\ : std_logic;
SIGNAL \Mux7~0_combout\ : std_logic;
SIGNAL \Equal3~0_combout\ : std_logic;
SIGNAL \KEY~1_combout\ : std_logic;
SIGNAL \KEY~2_combout\ : std_logic;
SIGNAL \Mux7~1_combout\ : std_logic;
SIGNAL \Mux7~2_combout\ : std_logic;
SIGNAL \Mux8~8_combout\ : std_logic;
SIGNAL \KEY[1]~reg0_q\ : std_logic;
SIGNAL \KEY~11_combout\ : std_logic;
SIGNAL \KEY~9_combout\ : std_logic;
SIGNAL \KEY~10_combout\ : std_logic;
SIGNAL \Mux6~0_combout\ : std_logic;
SIGNAL \KEY~7_combout\ : std_logic;
SIGNAL \KEY~8_combout\ : std_logic;
SIGNAL \Mux6~1_combout\ : std_logic;
SIGNAL \Mux6~2_combout\ : std_logic;
SIGNAL \KEY[2]~reg0_q\ : std_logic;
SIGNAL \Mux5~2_combout\ : std_logic;
SIGNAL \Mux5~1_combout\ : std_logic;
SIGNAL \Mux5~4_combout\ : std_logic;
SIGNAL \Mux5~3_combout\ : std_logic;
SIGNAL \Mux5~5_combout\ : std_logic;
SIGNAL \KEY[3]~reg0_q\ : std_logic;
SIGNAL \Mux4~0_combout\ : std_logic;
SIGNAL \KEY_AVAILABLES~reg0_q\ : std_logic;
SIGNAL STATE : std_logic_vector(2 DOWNTO 0);
SIGNAL COUNTER : std_logic_vector(31 DOWNTO 0);
SIGNAL ALT_INV_STATE : std_logic_vector(2 DOWNTO 2);

BEGIN

ww_CLK <= CLK;
ww_ROW <= ROW;
COL <= ww_COL;
KEY <= ww_KEY;
KEY_AVAILABLES <= ww_KEY_AVAILABLES;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\CLK1KHZ~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLK1KHZ~q\);

\CLK~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLK~input_o\);
ALT_INV_STATE(2) <= NOT STATE(2);

-- Location: LCCOMB_X32_Y11_N0
\Add0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = COUNTER(0) $ (VCC)
-- \Add0~1\ = CARRY(COUNTER(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => COUNTER(0),
	datad => VCC,
	combout => \Add0~0_combout\,
	cout => \Add0~1\);

-- Location: LCCOMB_X32_Y11_N12
\Add0~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~12_combout\ = (COUNTER(6) & (\Add0~11\ $ (GND))) # (!COUNTER(6) & (!\Add0~11\ & VCC))
-- \Add0~13\ = CARRY((COUNTER(6) & !\Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => COUNTER(6),
	datad => VCC,
	cin => \Add0~11\,
	combout => \Add0~12_combout\,
	cout => \Add0~13\);

-- Location: LCCOMB_X32_Y11_N22
\Add0~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~22_combout\ = (COUNTER(11) & (!\Add0~21\)) # (!COUNTER(11) & ((\Add0~21\) # (GND)))
-- \Add0~23\ = CARRY((!\Add0~21\) # (!COUNTER(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => COUNTER(11),
	datad => VCC,
	cin => \Add0~21\,
	combout => \Add0~22_combout\,
	cout => \Add0~23\);

-- Location: LCCOMB_X32_Y10_N22
\Add0~54\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~54_combout\ = (COUNTER(27) & (!\Add0~53\)) # (!COUNTER(27) & ((\Add0~53\) # (GND)))
-- \Add0~55\ = CARRY((!\Add0~53\) # (!COUNTER(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => COUNTER(27),
	datad => VCC,
	cin => \Add0~53\,
	combout => \Add0~54_combout\,
	cout => \Add0~55\);

-- Location: LCCOMB_X32_Y10_N24
\Add0~56\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~56_combout\ = (COUNTER(28) & (\Add0~55\ $ (GND))) # (!COUNTER(28) & (!\Add0~55\ & VCC))
-- \Add0~57\ = CARRY((COUNTER(28) & !\Add0~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => COUNTER(28),
	datad => VCC,
	cin => \Add0~55\,
	combout => \Add0~56_combout\,
	cout => \Add0~57\);

-- Location: LCCOMB_X32_Y10_N26
\Add0~58\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~58_combout\ = (COUNTER(29) & (!\Add0~57\)) # (!COUNTER(29) & ((\Add0~57\) # (GND)))
-- \Add0~59\ = CARRY((!\Add0~57\) # (!COUNTER(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => COUNTER(29),
	datad => VCC,
	cin => \Add0~57\,
	combout => \Add0~58_combout\,
	cout => \Add0~59\);

-- Location: LCCOMB_X32_Y10_N28
\Add0~60\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~60_combout\ = (COUNTER(30) & (\Add0~59\ $ (GND))) # (!COUNTER(30) & (!\Add0~59\ & VCC))
-- \Add0~61\ = CARRY((COUNTER(30) & !\Add0~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => COUNTER(30),
	datad => VCC,
	cin => \Add0~59\,
	combout => \Add0~60_combout\,
	cout => \Add0~61\);

-- Location: LCCOMB_X32_Y10_N30
\Add0~62\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~62_combout\ = COUNTER(31) $ (\Add0~61\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => COUNTER(31),
	cin => \Add0~61\,
	combout => \Add0~62_combout\);

-- Location: LCCOMB_X23_Y9_N6
\Mux8~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux8~3_combout\ = (\Mux8~2_combout\ & ((\KEY~0_combout\))) # (!\Mux8~2_combout\ & (\Equal3~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal3~0_combout\,
	datac => \KEY~0_combout\,
	datad => \Mux8~2_combout\,
	combout => \Mux8~3_combout\);

-- Location: LCCOMB_X22_Y9_N6
\KEY~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \KEY~6_combout\ = ((\KEY~3_combout\ & \KEY[1]~reg0_q\)) # (!\KEY~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY~1_combout\,
	datac => \KEY~3_combout\,
	datad => \KEY[1]~reg0_q\,
	combout => \KEY~6_combout\);

-- Location: LCCOMB_X23_Y9_N30
\Mux5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux5~0_combout\ = (STATE(0) & ((STATE(2)))) # (!STATE(0) & (\KEY~1_combout\ & !STATE(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => STATE(0),
	datac => \KEY~1_combout\,
	datad => STATE(2),
	combout => \Mux5~0_combout\);

-- Location: FF_X32_Y11_N23
\COUNTER[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Add0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => COUNTER(11));

-- Location: LCCOMB_X33_Y11_N6
\Equal5~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal5~1_combout\ = (COUNTER(13) & (!COUNTER(11) & (!COUNTER(12) & !COUNTER(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => COUNTER(13),
	datab => COUNTER(11),
	datac => COUNTER(12),
	datad => COUNTER(10),
	combout => \Equal5~1_combout\);

-- Location: FF_X32_Y11_N13
\COUNTER[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Add0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => COUNTER(6));

-- Location: FF_X32_Y10_N25
\COUNTER[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Add0~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => COUNTER(28));

-- Location: FF_X32_Y10_N27
\COUNTER[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Add0~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => COUNTER(29));

-- Location: FF_X32_Y10_N29
\COUNTER[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Add0~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => COUNTER(30));

-- Location: FF_X32_Y10_N31
\COUNTER[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Add0~62_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => COUNTER(31));

-- Location: LCCOMB_X33_Y10_N16
\Equal5~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal5~9_combout\ = (!COUNTER(29) & (!COUNTER(28) & (!COUNTER(31) & !COUNTER(30))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => COUNTER(29),
	datab => COUNTER(28),
	datac => COUNTER(31),
	datad => COUNTER(30),
	combout => \Equal5~9_combout\);

-- Location: IOIBUF_X16_Y0_N1
\ROW[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ROW(3),
	o => \ROW[3]~input_o\);

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

-- Location: CLKCTRL_G9
\CLK~inputclkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLK~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLK~inputclkctrl_outclk\);

-- Location: IOOBUF_X28_Y0_N30
\COL[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \COL[3]~reg0_q\,
	devoe => ww_devoe,
	o => \COL[3]~output_o\);

-- Location: IOOBUF_X39_Y0_N16
\COL[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \COL[2]~reg0_q\,
	devoe => ww_devoe,
	o => \COL[2]~output_o\);

-- Location: IOOBUF_X11_Y0_N9
\COL[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \COL[1]~reg0_q\,
	devoe => ww_devoe,
	o => \COL[1]~output_o\);

-- Location: IOOBUF_X16_Y0_N9
\COL[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \COL[0]~reg0_q\,
	devoe => ww_devoe,
	o => \COL[0]~output_o\);

-- Location: IOOBUF_X0_Y20_N9
\KEY[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \KEY[0]~reg0_q\,
	devoe => ww_devoe,
	o => \KEY[0]~output_o\);

-- Location: IOOBUF_X0_Y20_N2
\KEY[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \KEY[1]~reg0_q\,
	devoe => ww_devoe,
	o => \KEY[1]~output_o\);

-- Location: IOOBUF_X0_Y21_N23
\KEY[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \KEY[2]~reg0_q\,
	devoe => ww_devoe,
	o => \KEY[2]~output_o\);

-- Location: IOOBUF_X0_Y21_N16
\KEY[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \KEY[3]~reg0_q\,
	devoe => ww_devoe,
	o => \KEY[3]~output_o\);

-- Location: IOOBUF_X0_Y24_N23
\KEY_AVAILABLES~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \KEY_AVAILABLES~reg0_q\,
	devoe => ww_devoe,
	o => \KEY_AVAILABLES~output_o\);

-- Location: LCCOMB_X33_Y11_N30
\COUNTER~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \COUNTER~6_combout\ = (\Add0~0_combout\ & !\Equal5~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~0_combout\,
	datad => \Equal5~10_combout\,
	combout => \COUNTER~6_combout\);

-- Location: FF_X32_Y11_N29
\COUNTER[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \COUNTER~6_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => COUNTER(0));

-- Location: LCCOMB_X32_Y11_N2
\Add0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~2_combout\ = (COUNTER(1) & (!\Add0~1\)) # (!COUNTER(1) & ((\Add0~1\) # (GND)))
-- \Add0~3\ = CARRY((!\Add0~1\) # (!COUNTER(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => COUNTER(1),
	datad => VCC,
	cin => \Add0~1\,
	combout => \Add0~2_combout\,
	cout => \Add0~3\);

-- Location: FF_X32_Y11_N3
\COUNTER[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Add0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => COUNTER(1));

-- Location: LCCOMB_X32_Y11_N4
\Add0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~4_combout\ = (COUNTER(2) & (\Add0~3\ $ (GND))) # (!COUNTER(2) & (!\Add0~3\ & VCC))
-- \Add0~5\ = CARRY((COUNTER(2) & !\Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => COUNTER(2),
	datad => VCC,
	cin => \Add0~3\,
	combout => \Add0~4_combout\,
	cout => \Add0~5\);

-- Location: FF_X32_Y11_N5
\COUNTER[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Add0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => COUNTER(2));

-- Location: LCCOMB_X32_Y11_N6
\Add0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~6_combout\ = (COUNTER(3) & (!\Add0~5\)) # (!COUNTER(3) & ((\Add0~5\) # (GND)))
-- \Add0~7\ = CARRY((!\Add0~5\) # (!COUNTER(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => COUNTER(3),
	datad => VCC,
	cin => \Add0~5\,
	combout => \Add0~6_combout\,
	cout => \Add0~7\);

-- Location: LCCOMB_X33_Y11_N26
\COUNTER~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \COUNTER~5_combout\ = (\Add0~6_combout\ & !\Equal5~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~6_combout\,
	datad => \Equal5~10_combout\,
	combout => \COUNTER~5_combout\);

-- Location: FF_X32_Y11_N1
\COUNTER[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \COUNTER~5_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => COUNTER(3));

-- Location: LCCOMB_X32_Y11_N8
\Add0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~8_combout\ = (COUNTER(4) & (\Add0~7\ $ (GND))) # (!COUNTER(4) & (!\Add0~7\ & VCC))
-- \Add0~9\ = CARRY((COUNTER(4) & !\Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => COUNTER(4),
	datad => VCC,
	cin => \Add0~7\,
	combout => \Add0~8_combout\,
	cout => \Add0~9\);

-- Location: FF_X32_Y11_N9
\COUNTER[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Add0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => COUNTER(4));

-- Location: LCCOMB_X32_Y11_N10
\Add0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~10_combout\ = (COUNTER(5) & (!\Add0~9\)) # (!COUNTER(5) & ((\Add0~9\) # (GND)))
-- \Add0~11\ = CARRY((!\Add0~9\) # (!COUNTER(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => COUNTER(5),
	datad => VCC,
	cin => \Add0~9\,
	combout => \Add0~10_combout\,
	cout => \Add0~11\);

-- Location: LCCOMB_X33_Y11_N18
\COUNTER~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \COUNTER~4_combout\ = (\Add0~10_combout\ & !\Equal5~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add0~10_combout\,
	datac => \Equal5~10_combout\,
	combout => \COUNTER~4_combout\);

-- Location: FF_X33_Y11_N19
\COUNTER[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \COUNTER~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => COUNTER(5));

-- Location: LCCOMB_X32_Y11_N14
\Add0~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~14_combout\ = (COUNTER(7) & (!\Add0~13\)) # (!COUNTER(7) & ((\Add0~13\) # (GND)))
-- \Add0~15\ = CARRY((!\Add0~13\) # (!COUNTER(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => COUNTER(7),
	datad => VCC,
	cin => \Add0~13\,
	combout => \Add0~14_combout\,
	cout => \Add0~15\);

-- Location: LCCOMB_X33_Y11_N28
\COUNTER~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \COUNTER~3_combout\ = (!\Equal5~10_combout\ & \Add0~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Equal5~10_combout\,
	datad => \Add0~14_combout\,
	combout => \COUNTER~3_combout\);

-- Location: FF_X33_Y11_N29
\COUNTER[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \COUNTER~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => COUNTER(7));

-- Location: LCCOMB_X32_Y11_N16
\Add0~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~16_combout\ = (COUNTER(8) & (\Add0~15\ $ (GND))) # (!COUNTER(8) & (!\Add0~15\ & VCC))
-- \Add0~17\ = CARRY((COUNTER(8) & !\Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => COUNTER(8),
	datad => VCC,
	cin => \Add0~15\,
	combout => \Add0~16_combout\,
	cout => \Add0~17\);

-- Location: LCCOMB_X33_Y11_N14
\COUNTER~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \COUNTER~2_combout\ = (!\Equal5~10_combout\ & \Add0~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal5~10_combout\,
	datac => \Add0~16_combout\,
	combout => \COUNTER~2_combout\);

-- Location: FF_X33_Y11_N15
\COUNTER[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \COUNTER~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => COUNTER(8));

-- Location: LCCOMB_X32_Y11_N18
\Add0~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~18_combout\ = (COUNTER(9) & (!\Add0~17\)) # (!COUNTER(9) & ((\Add0~17\) # (GND)))
-- \Add0~19\ = CARRY((!\Add0~17\) # (!COUNTER(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => COUNTER(9),
	datad => VCC,
	cin => \Add0~17\,
	combout => \Add0~18_combout\,
	cout => \Add0~19\);

-- Location: FF_X32_Y11_N19
\COUNTER[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Add0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => COUNTER(9));

-- Location: LCCOMB_X32_Y11_N20
\Add0~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~20_combout\ = (COUNTER(10) & (\Add0~19\ $ (GND))) # (!COUNTER(10) & (!\Add0~19\ & VCC))
-- \Add0~21\ = CARRY((COUNTER(10) & !\Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => COUNTER(10),
	datad => VCC,
	cin => \Add0~19\,
	combout => \Add0~20_combout\,
	cout => \Add0~21\);

-- Location: FF_X32_Y11_N21
\COUNTER[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Add0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => COUNTER(10));

-- Location: LCCOMB_X32_Y11_N24
\Add0~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~24_combout\ = (COUNTER(12) & (\Add0~23\ $ (GND))) # (!COUNTER(12) & (!\Add0~23\ & VCC))
-- \Add0~25\ = CARRY((COUNTER(12) & !\Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => COUNTER(12),
	datad => VCC,
	cin => \Add0~23\,
	combout => \Add0~24_combout\,
	cout => \Add0~25\);

-- Location: FF_X32_Y11_N25
\COUNTER[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Add0~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => COUNTER(12));

-- Location: LCCOMB_X32_Y11_N26
\Add0~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~26_combout\ = (COUNTER(13) & (!\Add0~25\)) # (!COUNTER(13) & ((\Add0~25\) # (GND)))
-- \Add0~27\ = CARRY((!\Add0~25\) # (!COUNTER(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => COUNTER(13),
	datad => VCC,
	cin => \Add0~25\,
	combout => \Add0~26_combout\,
	cout => \Add0~27\);

-- Location: LCCOMB_X33_Y11_N22
\COUNTER~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \COUNTER~1_combout\ = (!\Equal5~10_combout\ & \Add0~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal5~10_combout\,
	datac => \Add0~26_combout\,
	combout => \COUNTER~1_combout\);

-- Location: FF_X33_Y11_N23
\COUNTER[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \COUNTER~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => COUNTER(13));

-- Location: LCCOMB_X32_Y11_N28
\Add0~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~28_combout\ = (COUNTER(14) & (\Add0~27\ $ (GND))) # (!COUNTER(14) & (!\Add0~27\ & VCC))
-- \Add0~29\ = CARRY((COUNTER(14) & !\Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => COUNTER(14),
	datad => VCC,
	cin => \Add0~27\,
	combout => \Add0~28_combout\,
	cout => \Add0~29\);

-- Location: LCCOMB_X33_Y11_N16
\COUNTER~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \COUNTER~0_combout\ = (!\Equal5~10_combout\ & \Add0~28_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal5~10_combout\,
	datac => \Add0~28_combout\,
	combout => \COUNTER~0_combout\);

-- Location: FF_X33_Y11_N17
\COUNTER[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \COUNTER~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => COUNTER(14));

-- Location: LCCOMB_X32_Y11_N30
\Add0~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~30_combout\ = (COUNTER(15) & (!\Add0~29\)) # (!COUNTER(15) & ((\Add0~29\) # (GND)))
-- \Add0~31\ = CARRY((!\Add0~29\) # (!COUNTER(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => COUNTER(15),
	datad => VCC,
	cin => \Add0~29\,
	combout => \Add0~30_combout\,
	cout => \Add0~31\);

-- Location: LCCOMB_X32_Y10_N0
\Add0~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~32_combout\ = (COUNTER(16) & (\Add0~31\ $ (GND))) # (!COUNTER(16) & (!\Add0~31\ & VCC))
-- \Add0~33\ = CARRY((COUNTER(16) & !\Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => COUNTER(16),
	datad => VCC,
	cin => \Add0~31\,
	combout => \Add0~32_combout\,
	cout => \Add0~33\);

-- Location: FF_X32_Y10_N1
\COUNTER[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Add0~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => COUNTER(16));

-- Location: LCCOMB_X32_Y10_N2
\Add0~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~34_combout\ = (COUNTER(17) & (!\Add0~33\)) # (!COUNTER(17) & ((\Add0~33\) # (GND)))
-- \Add0~35\ = CARRY((!\Add0~33\) # (!COUNTER(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => COUNTER(17),
	datad => VCC,
	cin => \Add0~33\,
	combout => \Add0~34_combout\,
	cout => \Add0~35\);

-- Location: FF_X32_Y10_N3
\COUNTER[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Add0~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => COUNTER(17));

-- Location: LCCOMB_X32_Y10_N4
\Add0~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~36_combout\ = (COUNTER(18) & (\Add0~35\ $ (GND))) # (!COUNTER(18) & (!\Add0~35\ & VCC))
-- \Add0~37\ = CARRY((COUNTER(18) & !\Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => COUNTER(18),
	datad => VCC,
	cin => \Add0~35\,
	combout => \Add0~36_combout\,
	cout => \Add0~37\);

-- Location: FF_X32_Y10_N5
\COUNTER[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Add0~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => COUNTER(18));

-- Location: LCCOMB_X32_Y10_N6
\Add0~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~38_combout\ = (COUNTER(19) & (!\Add0~37\)) # (!COUNTER(19) & ((\Add0~37\) # (GND)))
-- \Add0~39\ = CARRY((!\Add0~37\) # (!COUNTER(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => COUNTER(19),
	datad => VCC,
	cin => \Add0~37\,
	combout => \Add0~38_combout\,
	cout => \Add0~39\);

-- Location: LCCOMB_X32_Y10_N8
\Add0~40\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~40_combout\ = (COUNTER(20) & (\Add0~39\ $ (GND))) # (!COUNTER(20) & (!\Add0~39\ & VCC))
-- \Add0~41\ = CARRY((COUNTER(20) & !\Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => COUNTER(20),
	datad => VCC,
	cin => \Add0~39\,
	combout => \Add0~40_combout\,
	cout => \Add0~41\);

-- Location: FF_X32_Y10_N9
\COUNTER[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Add0~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => COUNTER(20));

-- Location: LCCOMB_X32_Y10_N10
\Add0~42\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~42_combout\ = (COUNTER(21) & (!\Add0~41\)) # (!COUNTER(21) & ((\Add0~41\) # (GND)))
-- \Add0~43\ = CARRY((!\Add0~41\) # (!COUNTER(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => COUNTER(21),
	datad => VCC,
	cin => \Add0~41\,
	combout => \Add0~42_combout\,
	cout => \Add0~43\);

-- Location: LCCOMB_X32_Y10_N12
\Add0~44\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~44_combout\ = (COUNTER(22) & (\Add0~43\ $ (GND))) # (!COUNTER(22) & (!\Add0~43\ & VCC))
-- \Add0~45\ = CARRY((COUNTER(22) & !\Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => COUNTER(22),
	datad => VCC,
	cin => \Add0~43\,
	combout => \Add0~44_combout\,
	cout => \Add0~45\);

-- Location: LCCOMB_X32_Y10_N14
\Add0~46\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~46_combout\ = (COUNTER(23) & (!\Add0~45\)) # (!COUNTER(23) & ((\Add0~45\) # (GND)))
-- \Add0~47\ = CARRY((!\Add0~45\) # (!COUNTER(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => COUNTER(23),
	datad => VCC,
	cin => \Add0~45\,
	combout => \Add0~46_combout\,
	cout => \Add0~47\);

-- Location: FF_X32_Y10_N15
\COUNTER[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Add0~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => COUNTER(23));

-- Location: LCCOMB_X32_Y10_N16
\Add0~48\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~48_combout\ = (COUNTER(24) & (\Add0~47\ $ (GND))) # (!COUNTER(24) & (!\Add0~47\ & VCC))
-- \Add0~49\ = CARRY((COUNTER(24) & !\Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => COUNTER(24),
	datad => VCC,
	cin => \Add0~47\,
	combout => \Add0~48_combout\,
	cout => \Add0~49\);

-- Location: FF_X32_Y10_N17
\COUNTER[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Add0~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => COUNTER(24));

-- Location: LCCOMB_X32_Y10_N18
\Add0~50\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~50_combout\ = (COUNTER(25) & (!\Add0~49\)) # (!COUNTER(25) & ((\Add0~49\) # (GND)))
-- \Add0~51\ = CARRY((!\Add0~49\) # (!COUNTER(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => COUNTER(25),
	datad => VCC,
	cin => \Add0~49\,
	combout => \Add0~50_combout\,
	cout => \Add0~51\);

-- Location: FF_X32_Y10_N19
\COUNTER[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Add0~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => COUNTER(25));

-- Location: LCCOMB_X32_Y10_N20
\Add0~52\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~52_combout\ = (COUNTER(26) & (\Add0~51\ $ (GND))) # (!COUNTER(26) & (!\Add0~51\ & VCC))
-- \Add0~53\ = CARRY((COUNTER(26) & !\Add0~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => COUNTER(26),
	datad => VCC,
	cin => \Add0~51\,
	combout => \Add0~52_combout\,
	cout => \Add0~53\);

-- Location: FF_X32_Y10_N21
\COUNTER[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Add0~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => COUNTER(26));

-- Location: FF_X32_Y10_N23
\COUNTER[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Add0~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => COUNTER(27));

-- Location: LCCOMB_X33_Y10_N26
\Equal5~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal5~8_combout\ = (!COUNTER(24) & (!COUNTER(27) & (!COUNTER(26) & !COUNTER(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => COUNTER(24),
	datab => COUNTER(27),
	datac => COUNTER(26),
	datad => COUNTER(25),
	combout => \Equal5~8_combout\);

-- Location: FF_X32_Y11_N31
\COUNTER[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Add0~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => COUNTER(15));

-- Location: LCCOMB_X33_Y11_N20
\Equal5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal5~0_combout\ = (!COUNTER(17) & (COUNTER(14) & (!COUNTER(16) & !COUNTER(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => COUNTER(17),
	datab => COUNTER(14),
	datac => COUNTER(16),
	datad => COUNTER(15),
	combout => \Equal5~0_combout\);

-- Location: LCCOMB_X33_Y11_N8
\Equal5~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal5~2_combout\ = (!COUNTER(6) & (COUNTER(7) & (COUNTER(8) & !COUNTER(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => COUNTER(6),
	datab => COUNTER(7),
	datac => COUNTER(8),
	datad => COUNTER(9),
	combout => \Equal5~2_combout\);

-- Location: LCCOMB_X33_Y11_N24
\Equal5~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal5~3_combout\ = (COUNTER(3) & (COUNTER(5) & (!COUNTER(2) & !COUNTER(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => COUNTER(3),
	datab => COUNTER(5),
	datac => COUNTER(2),
	datad => COUNTER(4),
	combout => \Equal5~3_combout\);

-- Location: LCCOMB_X33_Y11_N4
\Equal5~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal5~4_combout\ = (\Equal5~1_combout\ & (\Equal5~0_combout\ & (\Equal5~2_combout\ & \Equal5~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal5~1_combout\,
	datab => \Equal5~0_combout\,
	datac => \Equal5~2_combout\,
	datad => \Equal5~3_combout\,
	combout => \Equal5~4_combout\);

-- Location: FF_X32_Y10_N11
\COUNTER[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Add0~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => COUNTER(21));

-- Location: FF_X32_Y10_N13
\COUNTER[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Add0~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => COUNTER(22));

-- Location: LCCOMB_X33_Y10_N0
\Equal5~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal5~6_combout\ = (!COUNTER(23) & (!COUNTER(20) & (!COUNTER(21) & !COUNTER(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => COUNTER(23),
	datab => COUNTER(20),
	datac => COUNTER(21),
	datad => COUNTER(22),
	combout => \Equal5~6_combout\);

-- Location: FF_X32_Y10_N7
\COUNTER[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Add0~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => COUNTER(19));

-- Location: LCCOMB_X33_Y11_N12
\Equal5~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal5~5_combout\ = (!COUNTER(1) & (!COUNTER(0) & (!COUNTER(18) & !COUNTER(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => COUNTER(1),
	datab => COUNTER(0),
	datac => COUNTER(18),
	datad => COUNTER(19),
	combout => \Equal5~5_combout\);

-- Location: LCCOMB_X33_Y11_N10
\Equal5~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal5~7_combout\ = (\Equal5~6_combout\ & \Equal5~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal5~6_combout\,
	datad => \Equal5~5_combout\,
	combout => \Equal5~7_combout\);

-- Location: LCCOMB_X33_Y11_N2
\Equal5~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal5~10_combout\ = (\Equal5~9_combout\ & (\Equal5~8_combout\ & (\Equal5~4_combout\ & \Equal5~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal5~9_combout\,
	datab => \Equal5~8_combout\,
	datac => \Equal5~4_combout\,
	datad => \Equal5~7_combout\,
	combout => \Equal5~10_combout\);

-- Location: LCCOMB_X33_Y11_N0
\CLK1KHZ~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CLK1KHZ~0_combout\ = \CLK1KHZ~q\ $ (\Equal5~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CLK1KHZ~q\,
	datad => \Equal5~10_combout\,
	combout => \CLK1KHZ~0_combout\);

-- Location: FF_X33_Y11_N11
CLK1KHZ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \CLK1KHZ~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CLK1KHZ~q\);

-- Location: CLKCTRL_G8
\CLK1KHZ~clkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLK1KHZ~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLK1KHZ~clkctrl_outclk\);

-- Location: IOIBUF_X32_Y0_N8
\ROW[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ROW(1),
	o => \ROW[1]~input_o\);

-- Location: IOIBUF_X32_Y0_N29
\ROW[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ROW(2),
	o => \ROW[2]~input_o\);

-- Location: IOIBUF_X35_Y0_N8
\ROW[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ROW(0),
	o => \ROW[0]~input_o\);

-- Location: LCCOMB_X24_Y9_N10
\KEY~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \KEY~0_combout\ = (\ROW[3]~input_o\ & ((\ROW[1]~input_o\) # ((\ROW[2]~input_o\) # (\ROW[0]~input_o\)))) # (!\ROW[3]~input_o\ & ((\ROW[1]~input_o\ & ((\ROW[2]~input_o\) # (\ROW[0]~input_o\))) # (!\ROW[1]~input_o\ & (\ROW[2]~input_o\ $ 
-- (!\ROW[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ROW[3]~input_o\,
	datab => \ROW[1]~input_o\,
	datac => \ROW[2]~input_o\,
	datad => \ROW[0]~input_o\,
	combout => \KEY~0_combout\);

-- Location: LCCOMB_X24_Y9_N4
\Equal4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal4~0_combout\ = (\ROW[3]~input_o\) # ((\ROW[1]~input_o\) # ((\ROW[2]~input_o\) # (\ROW[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ROW[3]~input_o\,
	datab => \ROW[1]~input_o\,
	datac => \ROW[2]~input_o\,
	datad => \ROW[0]~input_o\,
	combout => \Equal4~0_combout\);

-- Location: LCCOMB_X23_Y9_N10
\Mux9~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux9~0_combout\ = (STATE(2) & ((\Equal4~0_combout\))) # (!STATE(2) & (!\KEY~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \KEY~0_combout\,
	datac => STATE(2),
	datad => \Equal4~0_combout\,
	combout => \Mux9~0_combout\);

-- Location: FF_X23_Y9_N11
\STATE[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK1KHZ~clkctrl_outclk\,
	d => \Mux9~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => STATE(2));

-- Location: LCCOMB_X22_Y9_N14
\Mux10~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux10~0_combout\ = (\KEY~0_combout\ & (!STATE(2) & (STATE(0) $ (STATE(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => STATE(0),
	datab => \KEY~0_combout\,
	datac => STATE(1),
	datad => STATE(2),
	combout => \Mux10~0_combout\);

-- Location: FF_X22_Y9_N15
\STATE[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK1KHZ~clkctrl_outclk\,
	d => \Mux10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => STATE(1));

-- Location: LCCOMB_X22_Y9_N12
\Mux11~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux11~0_combout\ = (\KEY~0_combout\ & (!STATE(0) & !STATE(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \KEY~0_combout\,
	datac => STATE(0),
	datad => STATE(2),
	combout => \Mux11~0_combout\);

-- Location: FF_X22_Y9_N13
\STATE[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK1KHZ~clkctrl_outclk\,
	d => \Mux11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => STATE(0));

-- Location: LCCOMB_X24_Y9_N28
\Mux3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux3~0_combout\ = (STATE(1) & STATE(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => STATE(1),
	datad => STATE(0),
	combout => \Mux3~0_combout\);

-- Location: FF_X24_Y9_N29
\COL[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK1KHZ~clkctrl_outclk\,
	d => \Mux3~0_combout\,
	ena => ALT_INV_STATE(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COL[3]~reg0_q\);

-- Location: LCCOMB_X24_Y9_N30
\Mux2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = (STATE(1) & !STATE(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => STATE(1),
	datad => STATE(0),
	combout => \Mux2~0_combout\);

-- Location: FF_X24_Y9_N31
\COL[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK1KHZ~clkctrl_outclk\,
	d => \Mux2~0_combout\,
	ena => ALT_INV_STATE(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COL[2]~reg0_q\);

-- Location: LCCOMB_X24_Y9_N20
\Mux1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = (!STATE(1) & STATE(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => STATE(1),
	datad => STATE(0),
	combout => \Mux1~0_combout\);

-- Location: FF_X24_Y9_N21
\COL[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK1KHZ~clkctrl_outclk\,
	d => \Mux1~0_combout\,
	ena => ALT_INV_STATE(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COL[1]~reg0_q\);

-- Location: LCCOMB_X24_Y9_N26
\Mux0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = (!STATE(1) & !STATE(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => STATE(1),
	datad => STATE(0),
	combout => \Mux0~0_combout\);

-- Location: FF_X24_Y9_N27
\COL[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK1KHZ~clkctrl_outclk\,
	d => \Mux0~0_combout\,
	ena => ALT_INV_STATE(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COL[0]~reg0_q\);

-- Location: LCCOMB_X23_Y9_N12
\Mux8~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux8~2_combout\ = (\KEY[0]~reg0_q\ & ((\Equal4~0_combout\) # (!STATE(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal4~0_combout\,
	datac => \KEY[0]~reg0_q\,
	datad => STATE(2),
	combout => \Mux8~2_combout\);

-- Location: LCCOMB_X24_Y9_N18
\Equal1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal1~0_combout\ = (!\ROW[3]~input_o\ & (\ROW[1]~input_o\ & (!\ROW[2]~input_o\ & !\ROW[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ROW[3]~input_o\,
	datab => \ROW[1]~input_o\,
	datac => \ROW[2]~input_o\,
	datad => \ROW[0]~input_o\,
	combout => \Equal1~0_combout\);

-- Location: LCCOMB_X24_Y9_N24
\Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (!\ROW[3]~input_o\ & (!\ROW[1]~input_o\ & (!\ROW[2]~input_o\ & \ROW[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ROW[3]~input_o\,
	datab => \ROW[1]~input_o\,
	datac => \ROW[2]~input_o\,
	datad => \ROW[0]~input_o\,
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X24_Y9_N14
\Equal2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal2~0_combout\ = (!\ROW[3]~input_o\ & (!\ROW[1]~input_o\ & (\ROW[2]~input_o\ & !\ROW[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ROW[3]~input_o\,
	datab => \ROW[1]~input_o\,
	datac => \ROW[2]~input_o\,
	datad => \ROW[0]~input_o\,
	combout => \Equal2~0_combout\);

-- Location: LCCOMB_X24_Y9_N8
\Mux8~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux8~4_combout\ = (\Equal0~0_combout\) # ((\Equal2~0_combout\ & !\Equal1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal0~0_combout\,
	datac => \Equal2~0_combout\,
	datad => \Equal1~0_combout\,
	combout => \Mux8~4_combout\);

-- Location: LCCOMB_X23_Y9_N8
\Mux8~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux8~5_combout\ = (STATE(0) & (((\Equal1~0_combout\)) # (!STATE(1)))) # (!STATE(0) & (((\Mux8~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => STATE(1),
	datab => \Equal1~0_combout\,
	datac => \Mux8~4_combout\,
	datad => STATE(0),
	combout => \Mux8~5_combout\);

-- Location: LCCOMB_X23_Y9_N2
\Mux8~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux8~6_combout\ = (\Equal1~0_combout\) # ((\Mux8~4_combout\ & ((STATE(1)) # (!STATE(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => STATE(1),
	datab => \Mux8~4_combout\,
	datac => \Equal1~0_combout\,
	datad => STATE(0),
	combout => \Mux8~6_combout\);

-- Location: LCCOMB_X23_Y9_N0
\Mux8~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux8~7_combout\ = (\Mux8~6_combout\ & ((\Mux8~2_combout\ $ (\Mux8~5_combout\)))) # (!\Mux8~6_combout\ & ((\Mux8~3_combout\ & (!\Mux8~2_combout\ & !\Mux8~5_combout\)) # (!\Mux8~3_combout\ & (\Mux8~2_combout\ & \Mux8~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110001000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux8~3_combout\,
	datab => \Mux8~2_combout\,
	datac => \Mux8~5_combout\,
	datad => \Mux8~6_combout\,
	combout => \Mux8~7_combout\);

-- Location: LCCOMB_X23_Y9_N4
\Mux8~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux8~9_combout\ = (STATE(2) & (\Equal4~0_combout\ & (\KEY[0]~reg0_q\))) # (!STATE(2) & ((\KEY[0]~reg0_q\ $ (\Mux8~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001110110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal4~0_combout\,
	datab => STATE(2),
	datac => \KEY[0]~reg0_q\,
	datad => \Mux8~7_combout\,
	combout => \Mux8~9_combout\);

-- Location: FF_X23_Y9_N5
\KEY[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK1KHZ~clkctrl_outclk\,
	d => \Mux8~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \KEY[0]~reg0_q\);

-- Location: LCCOMB_X24_Y9_N12
\KEY~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \KEY~3_combout\ = (\ROW[1]~input_o\) # ((\ROW[0]~input_o\) # (\ROW[3]~input_o\ $ (!\ROW[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ROW[3]~input_o\,
	datab => \ROW[1]~input_o\,
	datac => \ROW[2]~input_o\,
	datad => \ROW[0]~input_o\,
	combout => \KEY~3_combout\);

-- Location: LCCOMB_X22_Y9_N22
\KEY~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \KEY~5_combout\ = (\KEY~1_combout\ & ((\KEY[1]~reg0_q\) # (!\KEY~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY~1_combout\,
	datac => \KEY~3_combout\,
	datad => \KEY[1]~reg0_q\,
	combout => \KEY~5_combout\);

-- Location: LCCOMB_X22_Y9_N16
\KEY~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \KEY~4_combout\ = (\Equal0~0_combout\) # ((!\Equal1~0_combout\ & (\KEY~3_combout\ & \KEY[1]~reg0_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~0_combout\,
	datab => \Equal1~0_combout\,
	datac => \KEY~3_combout\,
	datad => \KEY[1]~reg0_q\,
	combout => \KEY~4_combout\);

-- Location: LCCOMB_X22_Y9_N4
\Mux7~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~0_combout\ = (STATE(0) & ((STATE(1)) # ((\KEY~4_combout\)))) # (!STATE(0) & (!STATE(1) & (\KEY~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => STATE(0),
	datab => STATE(1),
	datac => \KEY~5_combout\,
	datad => \KEY~4_combout\,
	combout => \Mux7~0_combout\);

-- Location: LCCOMB_X24_Y9_N16
\Equal3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal3~0_combout\ = (\ROW[3]~input_o\ & (!\ROW[1]~input_o\ & (!\ROW[2]~input_o\ & !\ROW[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ROW[3]~input_o\,
	datab => \ROW[1]~input_o\,
	datac => \ROW[2]~input_o\,
	datad => \ROW[0]~input_o\,
	combout => \Equal3~0_combout\);

-- Location: LCCOMB_X24_Y9_N22
\KEY~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \KEY~1_combout\ = (\ROW[3]~input_o\) # ((\ROW[2]~input_o\) # (\ROW[1]~input_o\ $ (!\ROW[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ROW[3]~input_o\,
	datab => \ROW[1]~input_o\,
	datac => \ROW[2]~input_o\,
	datad => \ROW[0]~input_o\,
	combout => \KEY~1_combout\);

-- Location: LCCOMB_X23_Y9_N18
\KEY~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \KEY~2_combout\ = ((!\Equal2~0_combout\ & ((\Equal3~0_combout\) # (\KEY[1]~reg0_q\)))) # (!\KEY~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111101001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal2~0_combout\,
	datab => \Equal3~0_combout\,
	datac => \KEY~1_combout\,
	datad => \KEY[1]~reg0_q\,
	combout => \KEY~2_combout\);

-- Location: LCCOMB_X22_Y9_N20
\Mux7~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~1_combout\ = (STATE(1) & ((\Mux7~0_combout\ & (\KEY~6_combout\)) # (!\Mux7~0_combout\ & ((\KEY~2_combout\))))) # (!STATE(1) & (((\Mux7~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY~6_combout\,
	datab => STATE(1),
	datac => \Mux7~0_combout\,
	datad => \KEY~2_combout\,
	combout => \Mux7~1_combout\);

-- Location: LCCOMB_X22_Y9_N24
\Mux7~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~2_combout\ = (!STATE(2) & \Mux7~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => STATE(2),
	datad => \Mux7~1_combout\,
	combout => \Mux7~2_combout\);

-- Location: LCCOMB_X23_Y9_N28
\Mux8~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux8~8_combout\ = (!STATE(2)) # (!\Equal4~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal4~0_combout\,
	datad => STATE(2),
	combout => \Mux8~8_combout\);

-- Location: FF_X22_Y9_N25
\KEY[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK1KHZ~clkctrl_outclk\,
	d => \Mux7~2_combout\,
	ena => \Mux8~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \KEY[1]~reg0_q\);

-- Location: LCCOMB_X22_Y9_N8
\KEY~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \KEY~11_combout\ = (\KEY~1_combout\ & ((\KEY[2]~reg0_q\) # (!\KEY~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY~1_combout\,
	datab => \KEY~3_combout\,
	datad => \KEY[2]~reg0_q\,
	combout => \KEY~11_combout\);

-- Location: LCCOMB_X22_Y9_N30
\KEY~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \KEY~9_combout\ = (\Equal1~0_combout\) # ((\KEY~1_combout\ & (\KEY~3_combout\ & \KEY[2]~reg0_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY~1_combout\,
	datab => \Equal1~0_combout\,
	datac => \KEY~3_combout\,
	datad => \KEY[2]~reg0_q\,
	combout => \KEY~9_combout\);

-- Location: LCCOMB_X22_Y9_N28
\KEY~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \KEY~10_combout\ = (!\Equal0~0_combout\ & ((\Equal1~0_combout\) # ((\KEY[2]~reg0_q\) # (!\KEY~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~0_combout\,
	datab => \Equal1~0_combout\,
	datac => \KEY~3_combout\,
	datad => \KEY[2]~reg0_q\,
	combout => \KEY~10_combout\);

-- Location: LCCOMB_X22_Y9_N26
\Mux6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux6~0_combout\ = (STATE(0) & ((STATE(1)) # ((\KEY~9_combout\)))) # (!STATE(0) & (!STATE(1) & ((\KEY~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => STATE(0),
	datab => STATE(1),
	datac => \KEY~9_combout\,
	datad => \KEY~10_combout\,
	combout => \Mux6~0_combout\);

-- Location: LCCOMB_X22_Y9_N10
\KEY~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \KEY~7_combout\ = (!\Equal2~0_combout\ & (!\Equal0~0_combout\ & ((\Equal3~0_combout\) # (\KEY[2]~reg0_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal2~0_combout\,
	datab => \Equal3~0_combout\,
	datac => \Equal0~0_combout\,
	datad => \KEY[2]~reg0_q\,
	combout => \KEY~7_combout\);

-- Location: LCCOMB_X22_Y9_N0
\KEY~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \KEY~8_combout\ = (\KEY~7_combout\) # ((\Equal1~0_combout\ & !\Equal0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal1~0_combout\,
	datac => \Equal0~0_combout\,
	datad => \KEY~7_combout\,
	combout => \KEY~8_combout\);

-- Location: LCCOMB_X22_Y9_N18
\Mux6~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux6~1_combout\ = (STATE(1) & ((\Mux6~0_combout\ & (\KEY~11_combout\)) # (!\Mux6~0_combout\ & ((\KEY~8_combout\))))) # (!STATE(1) & (((\Mux6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => STATE(1),
	datab => \KEY~11_combout\,
	datac => \Mux6~0_combout\,
	datad => \KEY~8_combout\,
	combout => \Mux6~1_combout\);

-- Location: LCCOMB_X22_Y9_N2
\Mux6~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux6~2_combout\ = (!STATE(2) & \Mux6~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => STATE(2),
	datad => \Mux6~1_combout\,
	combout => \Mux6~2_combout\);

-- Location: FF_X22_Y9_N3
\KEY[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK1KHZ~clkctrl_outclk\,
	d => \Mux6~2_combout\,
	ena => \Mux8~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \KEY[2]~reg0_q\);

-- Location: LCCOMB_X23_Y9_N26
\Mux5~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux5~2_combout\ = (STATE(1) & ((\KEY~3_combout\))) # (!STATE(1) & (\Equal2~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal2~0_combout\,
	datac => \KEY~3_combout\,
	datad => STATE(1),
	combout => \Mux5~2_combout\);

-- Location: LCCOMB_X23_Y9_N16
\Mux5~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux5~1_combout\ = (STATE(0) & ((\KEY~0_combout\))) # (!STATE(0) & (\Equal3~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal3~0_combout\,
	datac => \KEY~0_combout\,
	datad => STATE(0),
	combout => \Mux5~1_combout\);

-- Location: LCCOMB_X23_Y9_N22
\Mux5~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux5~4_combout\ = (STATE(1) & ((\KEY[3]~reg0_q\) # ((!\Mux5~1_combout\)))) # (!STATE(1) & ((\Mux5~2_combout\) # ((\KEY[3]~reg0_q\ & \Mux5~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => STATE(1),
	datab => \KEY[3]~reg0_q\,
	datac => \Mux5~2_combout\,
	datad => \Mux5~1_combout\,
	combout => \Mux5~4_combout\);

-- Location: LCCOMB_X23_Y9_N24
\Mux5~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux5~3_combout\ = (STATE(1) & (!\KEY[3]~reg0_q\ & (\Mux5~2_combout\ $ (\Mux5~1_combout\)))) # (!STATE(1) & ((\Mux5~2_combout\) # (\KEY[3]~reg0_q\ $ (\Mux5~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101001101110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => STATE(1),
	datab => \KEY[3]~reg0_q\,
	datac => \Mux5~2_combout\,
	datad => \Mux5~1_combout\,
	combout => \Mux5~3_combout\);

-- Location: LCCOMB_X23_Y9_N14
\Mux5~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux5~5_combout\ = (\Mux5~0_combout\ & (!STATE(0) & (\Mux5~4_combout\ $ (\Mux5~3_combout\)))) # (!\Mux5~0_combout\ & (STATE(0) & (\Mux5~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100001001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux5~0_combout\,
	datab => STATE(0),
	datac => \Mux5~4_combout\,
	datad => \Mux5~3_combout\,
	combout => \Mux5~5_combout\);

-- Location: FF_X23_Y9_N15
\KEY[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK1KHZ~clkctrl_outclk\,
	d => \Mux5~5_combout\,
	ena => \Mux8~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \KEY[3]~reg0_q\);

-- Location: LCCOMB_X23_Y9_N20
\Mux4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux4~0_combout\ = (STATE(2) & (\Equal4~0_combout\)) # (!STATE(2) & (((\KEY_AVAILABLES~reg0_q\) # (!\KEY~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal4~0_combout\,
	datab => \KEY~0_combout\,
	datac => \KEY_AVAILABLES~reg0_q\,
	datad => STATE(2),
	combout => \Mux4~0_combout\);

-- Location: FF_X23_Y9_N21
\KEY_AVAILABLES~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK1KHZ~clkctrl_outclk\,
	d => \Mux4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \KEY_AVAILABLES~reg0_q\);

ww_COL(3) <= \COL[3]~output_o\;

ww_COL(2) <= \COL[2]~output_o\;

ww_COL(1) <= \COL[1]~output_o\;

ww_COL(0) <= \COL[0]~output_o\;

ww_KEY(0) <= \KEY[0]~output_o\;

ww_KEY(1) <= \KEY[1]~output_o\;

ww_KEY(2) <= \KEY[2]~output_o\;

ww_KEY(3) <= \KEY[3]~output_o\;

ww_KEY_AVAILABLES <= \KEY_AVAILABLES~output_o\;
END structure;


