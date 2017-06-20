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
-- VERSION "Version 13.1.0 Build 162 10/23/2013 SJ Web Edition"

-- DATE "02/25/2017 15:51:11"

-- 
-- Device: Altera EP3C16U484C6 Package UFBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIII;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIII.CYCLONEIII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	UART_Top_entity IS
    PORT (
	Rx_data_valid : OUT std_logic;
	RxData : OUT std_logic_vector(7 DOWNTO 0);
	Tx : OUT std_logic;
	TxReady : OUT std_logic;
	TxData : IN std_logic_vector(7 DOWNTO 0);
	Rx : IN std_logic;
	start_Tx : IN std_logic;
	reset : IN std_logic;
	clk : IN std_logic
	);
END UART_Top_entity;

-- Design Ports Information
-- Rx_data_valid	=>  Location: PIN_G9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RxData[0]	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RxData[1]	=>  Location: PIN_F8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RxData[2]	=>  Location: PIN_B4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RxData[3]	=>  Location: PIN_A4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RxData[4]	=>  Location: PIN_D6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RxData[5]	=>  Location: PIN_H9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RxData[6]	=>  Location: PIN_G8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RxData[7]	=>  Location: PIN_F9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Tx	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- TxReady	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_E12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_G2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- start_Tx	=>  Location: PIN_F11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Rx	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- TxData[0]	=>  Location: PIN_B14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- TxData[1]	=>  Location: PIN_B15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- TxData[2]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- TxData[3]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- TxData[4]	=>  Location: PIN_E13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- TxData[5]	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- TxData[6]	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- TxData[7]	=>  Location: PIN_F13,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF UART_Top_entity IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_Rx_data_valid : std_logic;
SIGNAL ww_RxData : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_Tx : std_logic;
SIGNAL ww_TxReady : std_logic;
SIGNAL ww_TxData : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_Rx : std_logic;
SIGNAL ww_start_Tx : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Rx_data_valid~output_o\ : std_logic;
SIGNAL \RxData[0]~output_o\ : std_logic;
SIGNAL \RxData[1]~output_o\ : std_logic;
SIGNAL \RxData[2]~output_o\ : std_logic;
SIGNAL \RxData[3]~output_o\ : std_logic;
SIGNAL \RxData[4]~output_o\ : std_logic;
SIGNAL \RxData[5]~output_o\ : std_logic;
SIGNAL \RxData[6]~output_o\ : std_logic;
SIGNAL \RxData[7]~output_o\ : std_logic;
SIGNAL \Tx~output_o\ : std_logic;
SIGNAL \TxReady~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \receiver|bit_counter[0]~13_combout\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \receiver|bit_counter[6]~15_combout\ : std_logic;
SIGNAL \receiver|bit_counter[0]~14\ : std_logic;
SIGNAL \receiver|bit_counter[1]~16_combout\ : std_logic;
SIGNAL \receiver|bit_counter[1]~17\ : std_logic;
SIGNAL \receiver|bit_counter[2]~18_combout\ : std_logic;
SIGNAL \receiver|bit_counter[2]~19\ : std_logic;
SIGNAL \receiver|bit_counter[3]~20_combout\ : std_logic;
SIGNAL \receiver|bit_counter[3]~21\ : std_logic;
SIGNAL \receiver|bit_counter[4]~22_combout\ : std_logic;
SIGNAL \receiver|bit_counter[4]~23\ : std_logic;
SIGNAL \receiver|bit_counter[5]~24_combout\ : std_logic;
SIGNAL \receiver|bit_counter[5]~25\ : std_logic;
SIGNAL \receiver|bit_counter[6]~26_combout\ : std_logic;
SIGNAL \receiver|bit_counter[6]~27\ : std_logic;
SIGNAL \receiver|bit_counter[7]~28_combout\ : std_logic;
SIGNAL \receiver|Equal1~1_combout\ : std_logic;
SIGNAL \receiver|bit_counter[7]~29\ : std_logic;
SIGNAL \receiver|bit_counter[8]~30_combout\ : std_logic;
SIGNAL \receiver|bit_counter[8]~31\ : std_logic;
SIGNAL \receiver|bit_counter[9]~32_combout\ : std_logic;
SIGNAL \receiver|bit_counter[9]~33\ : std_logic;
SIGNAL \receiver|bit_counter[10]~34_combout\ : std_logic;
SIGNAL \receiver|bit_counter[10]~35\ : std_logic;
SIGNAL \receiver|bit_counter[11]~36_combout\ : std_logic;
SIGNAL \receiver|bit_counter[11]~37\ : std_logic;
SIGNAL \receiver|bit_counter[12]~38_combout\ : std_logic;
SIGNAL \receiver|Equal1~0_combout\ : std_logic;
SIGNAL \receiver|Equal1~2_combout\ : std_logic;
SIGNAL \receiver|Equal1~3_combout\ : std_logic;
SIGNAL \Rx~input_o\ : std_logic;
SIGNAL \receiver|start_reg~0_combout\ : std_logic;
SIGNAL \receiver|start_reg~1_combout\ : std_logic;
SIGNAL \receiver|state~7_combout\ : std_logic;
SIGNAL \receiver|state~8_combout\ : std_logic;
SIGNAL \receiver|state.init_state~q\ : std_logic;
SIGNAL \receiver|Selector1~1_combout\ : std_logic;
SIGNAL \receiver|start_bit_counter[0]~12_combout\ : std_logic;
SIGNAL \receiver|start_bit_counter[2]~14_combout\ : std_logic;
SIGNAL \receiver|start_bit_counter[0]~13\ : std_logic;
SIGNAL \receiver|start_bit_counter[1]~15_combout\ : std_logic;
SIGNAL \receiver|start_bit_counter[1]~16\ : std_logic;
SIGNAL \receiver|start_bit_counter[2]~17_combout\ : std_logic;
SIGNAL \receiver|start_bit_counter[2]~18\ : std_logic;
SIGNAL \receiver|start_bit_counter[3]~19_combout\ : std_logic;
SIGNAL \receiver|Equal0~0_combout\ : std_logic;
SIGNAL \receiver|start_bit_counter[3]~20\ : std_logic;
SIGNAL \receiver|start_bit_counter[4]~21_combout\ : std_logic;
SIGNAL \receiver|start_bit_counter[4]~22\ : std_logic;
SIGNAL \receiver|start_bit_counter[5]~23_combout\ : std_logic;
SIGNAL \receiver|start_bit_counter[5]~24\ : std_logic;
SIGNAL \receiver|start_bit_counter[6]~25_combout\ : std_logic;
SIGNAL \receiver|start_bit_counter[6]~26\ : std_logic;
SIGNAL \receiver|start_bit_counter[7]~27_combout\ : std_logic;
SIGNAL \receiver|start_bit_counter[7]~28\ : std_logic;
SIGNAL \receiver|start_bit_counter[8]~29_combout\ : std_logic;
SIGNAL \receiver|start_bit_counter[8]~30\ : std_logic;
SIGNAL \receiver|start_bit_counter[9]~31_combout\ : std_logic;
SIGNAL \receiver|start_bit_counter[9]~32\ : std_logic;
SIGNAL \receiver|start_bit_counter[10]~33_combout\ : std_logic;
SIGNAL \receiver|start_bit_counter[10]~34\ : std_logic;
SIGNAL \receiver|start_bit_counter[11]~35_combout\ : std_logic;
SIGNAL \receiver|Equal0~2_combout\ : std_logic;
SIGNAL \receiver|Equal0~1_combout\ : std_logic;
SIGNAL \receiver|Equal0~3_combout\ : std_logic;
SIGNAL \receiver|Selector1~2_combout\ : std_logic;
SIGNAL \receiver|state.read_start_bit_state~q\ : std_logic;
SIGNAL \receiver|number_bits[1]~0_combout\ : std_logic;
SIGNAL \receiver|number_bits[0]~1_combout\ : std_logic;
SIGNAL \receiver|Selector1~0_combout\ : std_logic;
SIGNAL \receiver|number_bits[1]~3_combout\ : std_logic;
SIGNAL \receiver|Add2~1_combout\ : std_logic;
SIGNAL \receiver|number_bits[2]~4_combout\ : std_logic;
SIGNAL \receiver|Add2~0_combout\ : std_logic;
SIGNAL \receiver|number_bits[3]~2_combout\ : std_logic;
SIGNAL \receiver|Equal2~0_combout\ : std_logic;
SIGNAL \receiver|Selector2~0_combout\ : std_logic;
SIGNAL \receiver|state.read_bits_state~q\ : std_logic;
SIGNAL \receiver|state~6_combout\ : std_logic;
SIGNAL \receiver|state.done_state~q\ : std_logic;
SIGNAL \receiver|data_reg~9_combout\ : std_logic;
SIGNAL \receiver|data_reg[1]~1_combout\ : std_logic;
SIGNAL \receiver|data_reg~0_combout\ : std_logic;
SIGNAL \receiver|data_reg~2_combout\ : std_logic;
SIGNAL \receiver|data_reg~3_combout\ : std_logic;
SIGNAL \receiver|data_reg~4_combout\ : std_logic;
SIGNAL \receiver|data_reg~5_combout\ : std_logic;
SIGNAL \receiver|data_reg~6_combout\ : std_logic;
SIGNAL \receiver|data_reg~7_combout\ : std_logic;
SIGNAL \receiver|data_reg~8_combout\ : std_logic;
SIGNAL \TxData[0]~input_o\ : std_logic;
SIGNAL \start_Tx~input_o\ : std_logic;
SIGNAL \transmitter|start_count_lead~feeder_combout\ : std_logic;
SIGNAL \transmitter|start_count_lead~q\ : std_logic;
SIGNAL \transmitter|start_count_follow~q\ : std_logic;
SIGNAL \transmitter|data_reg[0]~3_combout\ : std_logic;
SIGNAL \transmitter|Add1~0_combout\ : std_logic;
SIGNAL \transmitter|clk_counter~1_combout\ : std_logic;
SIGNAL \transmitter|Selector1~0_combout\ : std_logic;
SIGNAL \transmitter|state.shift~q\ : std_logic;
SIGNAL \transmitter|Add1~1\ : std_logic;
SIGNAL \transmitter|Add1~2_combout\ : std_logic;
SIGNAL \transmitter|Add1~3\ : std_logic;
SIGNAL \transmitter|Add1~4_combout\ : std_logic;
SIGNAL \transmitter|Add1~5\ : std_logic;
SIGNAL \transmitter|Add1~6_combout\ : std_logic;
SIGNAL \transmitter|clk_counter~0_combout\ : std_logic;
SIGNAL \transmitter|Add1~7\ : std_logic;
SIGNAL \transmitter|Add1~8_combout\ : std_logic;
SIGNAL \transmitter|clk_counter~2_combout\ : std_logic;
SIGNAL \transmitter|Add1~9\ : std_logic;
SIGNAL \transmitter|Add1~10_combout\ : std_logic;
SIGNAL \transmitter|Add1~11\ : std_logic;
SIGNAL \transmitter|Add1~12_combout\ : std_logic;
SIGNAL \transmitter|clk_counter~3_combout\ : std_logic;
SIGNAL \transmitter|Add1~13\ : std_logic;
SIGNAL \transmitter|Add1~14_combout\ : std_logic;
SIGNAL \transmitter|Add1~15\ : std_logic;
SIGNAL \transmitter|Add1~16_combout\ : std_logic;
SIGNAL \transmitter|Add1~17\ : std_logic;
SIGNAL \transmitter|Add1~18_combout\ : std_logic;
SIGNAL \transmitter|Add1~19\ : std_logic;
SIGNAL \transmitter|Add1~20_combout\ : std_logic;
SIGNAL \transmitter|clk_counter~5_combout\ : std_logic;
SIGNAL \transmitter|Add1~21\ : std_logic;
SIGNAL \transmitter|Add1~22_combout\ : std_logic;
SIGNAL \transmitter|Add1~23\ : std_logic;
SIGNAL \transmitter|Add1~24_combout\ : std_logic;
SIGNAL \transmitter|clk_counter~4_combout\ : std_logic;
SIGNAL \transmitter|Equal1~2_combout\ : std_logic;
SIGNAL \transmitter|Equal1~0_combout\ : std_logic;
SIGNAL \transmitter|Equal1~1_combout\ : std_logic;
SIGNAL \transmitter|Equal1~3_combout\ : std_logic;
SIGNAL \transmitter|shift_data~feeder_combout\ : std_logic;
SIGNAL \transmitter|shift_data~q\ : std_logic;
SIGNAL \transmitter|Add0~0_combout\ : std_logic;
SIGNAL \transmitter|Add0~10_combout\ : std_logic;
SIGNAL \transmitter|Add0~1\ : std_logic;
SIGNAL \transmitter|Add0~2_combout\ : std_logic;
SIGNAL \transmitter|Add0~4_combout\ : std_logic;
SIGNAL \transmitter|Add0~3\ : std_logic;
SIGNAL \transmitter|Add0~5_combout\ : std_logic;
SIGNAL \transmitter|Add0~11_combout\ : std_logic;
SIGNAL \transmitter|Add0~12_combout\ : std_logic;
SIGNAL \transmitter|Add0~6\ : std_logic;
SIGNAL \transmitter|Add0~7_combout\ : std_logic;
SIGNAL \transmitter|Add0~9_combout\ : std_logic;
SIGNAL \transmitter|Equal0~0_combout\ : std_logic;
SIGNAL \transmitter|done_shifting~0_combout\ : std_logic;
SIGNAL \transmitter|done_shifting~feeder_combout\ : std_logic;
SIGNAL \transmitter|done_shifting~q\ : std_logic;
SIGNAL \transmitter|state~5_combout\ : std_logic;
SIGNAL \transmitter|state~6_combout\ : std_logic;
SIGNAL \transmitter|state.init~q\ : std_logic;
SIGNAL \transmitter|state~7_combout\ : std_logic;
SIGNAL \transmitter|state.load~feeder_combout\ : std_logic;
SIGNAL \transmitter|state.load~q\ : std_logic;
SIGNAL \TxData[2]~input_o\ : std_logic;
SIGNAL \TxData[3]~input_o\ : std_logic;
SIGNAL \TxData[4]~input_o\ : std_logic;
SIGNAL \TxData[7]~input_o\ : std_logic;
SIGNAL \transmitter|data_reg~10_combout\ : std_logic;
SIGNAL \transmitter|data_reg[0]~1_combout\ : std_logic;
SIGNAL \TxData[6]~input_o\ : std_logic;
SIGNAL \transmitter|data_reg~9_combout\ : std_logic;
SIGNAL \TxData[5]~input_o\ : std_logic;
SIGNAL \transmitter|data_reg~8_combout\ : std_logic;
SIGNAL \transmitter|data_reg~7_combout\ : std_logic;
SIGNAL \transmitter|data_reg~6_combout\ : std_logic;
SIGNAL \transmitter|data_reg~5_combout\ : std_logic;
SIGNAL \TxData[1]~input_o\ : std_logic;
SIGNAL \transmitter|data_reg~4_combout\ : std_logic;
SIGNAL \transmitter|data_reg~2_combout\ : std_logic;
SIGNAL \transmitter|data_reg[0]~0_combout\ : std_logic;
SIGNAL \transmitter|tx_ready_reg~0_combout\ : std_logic;
SIGNAL \transmitter|tx_ready_reg~q\ : std_logic;
SIGNAL \transmitter|Selector3~0_combout\ : std_logic;
SIGNAL \transmitter|clk_delay_counter[0]~15_combout\ : std_logic;
SIGNAL \transmitter|clk_delay_counter[9]~13_combout\ : std_logic;
SIGNAL \transmitter|clk_delay_counter[9]~12_combout\ : std_logic;
SIGNAL \transmitter|clk_delay_counter[9]~14_combout\ : std_logic;
SIGNAL \transmitter|clk_delay_counter[9]~37_combout\ : std_logic;
SIGNAL \transmitter|clk_delay_counter[0]~16\ : std_logic;
SIGNAL \transmitter|clk_delay_counter[1]~17_combout\ : std_logic;
SIGNAL \transmitter|clk_delay_counter[1]~18\ : std_logic;
SIGNAL \transmitter|clk_delay_counter[2]~19_combout\ : std_logic;
SIGNAL \transmitter|clk_delay_counter[2]~20\ : std_logic;
SIGNAL \transmitter|clk_delay_counter[3]~21_combout\ : std_logic;
SIGNAL \transmitter|clk_delay_counter[3]~22\ : std_logic;
SIGNAL \transmitter|clk_delay_counter[4]~23_combout\ : std_logic;
SIGNAL \transmitter|clk_delay_counter[4]~24\ : std_logic;
SIGNAL \transmitter|clk_delay_counter[5]~25_combout\ : std_logic;
SIGNAL \transmitter|clk_delay_counter[5]~26\ : std_logic;
SIGNAL \transmitter|clk_delay_counter[6]~27_combout\ : std_logic;
SIGNAL \transmitter|clk_delay_counter[6]~28\ : std_logic;
SIGNAL \transmitter|clk_delay_counter[7]~29_combout\ : std_logic;
SIGNAL \transmitter|clk_delay_counter[7]~30\ : std_logic;
SIGNAL \transmitter|clk_delay_counter[8]~31_combout\ : std_logic;
SIGNAL \transmitter|clk_delay_counter[8]~32\ : std_logic;
SIGNAL \transmitter|clk_delay_counter[9]~33_combout\ : std_logic;
SIGNAL \transmitter|clk_delay_counter[9]~34\ : std_logic;
SIGNAL \transmitter|clk_delay_counter[10]~35_combout\ : std_logic;
SIGNAL \transmitter|clk_delay_counter[10]~36\ : std_logic;
SIGNAL \transmitter|clk_delay_counter[11]~38_combout\ : std_logic;
SIGNAL \transmitter|delay_clock_done~0_combout\ : std_logic;
SIGNAL \transmitter|delay_clock_done~q\ : std_logic;
SIGNAL \transmitter|Selector2~0_combout\ : std_logic;
SIGNAL \transmitter|delay_clock~combout\ : std_logic;
SIGNAL \transmitter|tx_ready~0_combout\ : std_logic;
SIGNAL \transmitter|number_bits\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \transmitter|data_reg\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \transmitter|clk_delay_counter\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \transmitter|clk_counter\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \receiver|start_reg\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \receiver|start_bit_counter\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \receiver|number_bits\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \receiver|data_reg\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \receiver|bit_counter\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \ALT_INV_reset~input_o\ : std_logic;
SIGNAL \transmitter|ALT_INV_delay_clock~combout\ : std_logic;
SIGNAL \transmitter|ALT_INV_data_reg\ : std_logic_vector(0 DOWNTO 0);

BEGIN

Rx_data_valid <= ww_Rx_data_valid;
RxData <= ww_RxData;
Tx <= ww_Tx;
TxReady <= ww_TxReady;
ww_TxData <= TxData;
ww_Rx <= Rx;
ww_start_Tx <= start_Tx;
ww_reset <= reset;
ww_clk <= clk;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\ALT_INV_reset~input_o\ <= NOT \reset~input_o\;
\transmitter|ALT_INV_delay_clock~combout\ <= NOT \transmitter|delay_clock~combout\;
\transmitter|ALT_INV_data_reg\(0) <= NOT \transmitter|data_reg\(0);

-- Location: IOOBUF_X9_Y29_N23
\Rx_data_valid~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \receiver|state.done_state~q\,
	devoe => ww_devoe,
	o => \Rx_data_valid~output_o\);

-- Location: IOOBUF_X5_Y29_N2
\RxData[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \receiver|data_reg\(1),
	devoe => ww_devoe,
	o => \RxData[0]~output_o\);

-- Location: IOOBUF_X5_Y29_N23
\RxData[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \receiver|data_reg\(2),
	devoe => ww_devoe,
	o => \RxData[1]~output_o\);

-- Location: IOOBUF_X5_Y29_N16
\RxData[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \receiver|data_reg\(3),
	devoe => ww_devoe,
	o => \RxData[2]~output_o\);

-- Location: IOOBUF_X5_Y29_N9
\RxData[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \receiver|data_reg\(4),
	devoe => ww_devoe,
	o => \RxData[3]~output_o\);

-- Location: IOOBUF_X3_Y29_N16
\RxData[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \receiver|data_reg\(5),
	devoe => ww_devoe,
	o => \RxData[4]~output_o\);

-- Location: IOOBUF_X7_Y29_N2
\RxData[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \receiver|data_reg\(6),
	devoe => ww_devoe,
	o => \RxData[5]~output_o\);

-- Location: IOOBUF_X5_Y29_N30
\RxData[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \receiver|data_reg\(7),
	devoe => ww_devoe,
	o => \RxData[6]~output_o\);

-- Location: IOOBUF_X7_Y29_N23
\RxData[7]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \receiver|data_reg\(8),
	devoe => ww_devoe,
	o => \RxData[7]~output_o\);

-- Location: IOOBUF_X23_Y29_N9
\Tx~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \transmitter|ALT_INV_data_reg\(0),
	devoe => ww_devoe,
	o => \Tx~output_o\);

-- Location: IOOBUF_X21_Y29_N9
\TxReady~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \transmitter|tx_ready~0_combout\,
	devoe => ww_devoe,
	o => \TxReady~output_o\);

-- Location: IOIBUF_X0_Y14_N1
\clk~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G4
\clk~inputclkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~inputclkctrl_outclk\);

-- Location: LCCOMB_X8_Y25_N4
\receiver|bit_counter[0]~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \receiver|bit_counter[0]~13_combout\ = \receiver|bit_counter\(0) $ (VCC)
-- \receiver|bit_counter[0]~14\ = CARRY(\receiver|bit_counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \receiver|bit_counter\(0),
	datad => VCC,
	combout => \receiver|bit_counter[0]~13_combout\,
	cout => \receiver|bit_counter[0]~14\);

-- Location: IOIBUF_X21_Y29_N15
\reset~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: LCCOMB_X8_Y25_N2
\receiver|bit_counter[6]~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \receiver|bit_counter[6]~15_combout\ = ((\receiver|Equal1~3_combout\) # (!\reset~input_o\)) # (!\receiver|state.read_bits_state~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \receiver|state.read_bits_state~q\,
	datac => \reset~input_o\,
	datad => \receiver|Equal1~3_combout\,
	combout => \receiver|bit_counter[6]~15_combout\);

-- Location: FF_X8_Y25_N5
\receiver|bit_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \receiver|bit_counter[0]~13_combout\,
	sclr => \receiver|bit_counter[6]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \receiver|bit_counter\(0));

-- Location: LCCOMB_X8_Y25_N6
\receiver|bit_counter[1]~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \receiver|bit_counter[1]~16_combout\ = (\receiver|bit_counter\(1) & (!\receiver|bit_counter[0]~14\)) # (!\receiver|bit_counter\(1) & ((\receiver|bit_counter[0]~14\) # (GND)))
-- \receiver|bit_counter[1]~17\ = CARRY((!\receiver|bit_counter[0]~14\) # (!\receiver|bit_counter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \receiver|bit_counter\(1),
	datad => VCC,
	cin => \receiver|bit_counter[0]~14\,
	combout => \receiver|bit_counter[1]~16_combout\,
	cout => \receiver|bit_counter[1]~17\);

-- Location: FF_X8_Y25_N7
\receiver|bit_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \receiver|bit_counter[1]~16_combout\,
	sclr => \receiver|bit_counter[6]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \receiver|bit_counter\(1));

-- Location: LCCOMB_X8_Y25_N8
\receiver|bit_counter[2]~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \receiver|bit_counter[2]~18_combout\ = (\receiver|bit_counter\(2) & (\receiver|bit_counter[1]~17\ $ (GND))) # (!\receiver|bit_counter\(2) & (!\receiver|bit_counter[1]~17\ & VCC))
-- \receiver|bit_counter[2]~19\ = CARRY((\receiver|bit_counter\(2) & !\receiver|bit_counter[1]~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \receiver|bit_counter\(2),
	datad => VCC,
	cin => \receiver|bit_counter[1]~17\,
	combout => \receiver|bit_counter[2]~18_combout\,
	cout => \receiver|bit_counter[2]~19\);

-- Location: FF_X8_Y25_N9
\receiver|bit_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \receiver|bit_counter[2]~18_combout\,
	sclr => \receiver|bit_counter[6]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \receiver|bit_counter\(2));

-- Location: LCCOMB_X8_Y25_N10
\receiver|bit_counter[3]~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \receiver|bit_counter[3]~20_combout\ = (\receiver|bit_counter\(3) & (!\receiver|bit_counter[2]~19\)) # (!\receiver|bit_counter\(3) & ((\receiver|bit_counter[2]~19\) # (GND)))
-- \receiver|bit_counter[3]~21\ = CARRY((!\receiver|bit_counter[2]~19\) # (!\receiver|bit_counter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \receiver|bit_counter\(3),
	datad => VCC,
	cin => \receiver|bit_counter[2]~19\,
	combout => \receiver|bit_counter[3]~20_combout\,
	cout => \receiver|bit_counter[3]~21\);

-- Location: FF_X8_Y25_N11
\receiver|bit_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \receiver|bit_counter[3]~20_combout\,
	sclr => \receiver|bit_counter[6]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \receiver|bit_counter\(3));

-- Location: LCCOMB_X8_Y25_N12
\receiver|bit_counter[4]~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \receiver|bit_counter[4]~22_combout\ = (\receiver|bit_counter\(4) & (\receiver|bit_counter[3]~21\ $ (GND))) # (!\receiver|bit_counter\(4) & (!\receiver|bit_counter[3]~21\ & VCC))
-- \receiver|bit_counter[4]~23\ = CARRY((\receiver|bit_counter\(4) & !\receiver|bit_counter[3]~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \receiver|bit_counter\(4),
	datad => VCC,
	cin => \receiver|bit_counter[3]~21\,
	combout => \receiver|bit_counter[4]~22_combout\,
	cout => \receiver|bit_counter[4]~23\);

-- Location: FF_X8_Y25_N13
\receiver|bit_counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \receiver|bit_counter[4]~22_combout\,
	sclr => \receiver|bit_counter[6]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \receiver|bit_counter\(4));

-- Location: LCCOMB_X8_Y25_N14
\receiver|bit_counter[5]~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \receiver|bit_counter[5]~24_combout\ = (\receiver|bit_counter\(5) & (!\receiver|bit_counter[4]~23\)) # (!\receiver|bit_counter\(5) & ((\receiver|bit_counter[4]~23\) # (GND)))
-- \receiver|bit_counter[5]~25\ = CARRY((!\receiver|bit_counter[4]~23\) # (!\receiver|bit_counter\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \receiver|bit_counter\(5),
	datad => VCC,
	cin => \receiver|bit_counter[4]~23\,
	combout => \receiver|bit_counter[5]~24_combout\,
	cout => \receiver|bit_counter[5]~25\);

-- Location: FF_X8_Y25_N15
\receiver|bit_counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \receiver|bit_counter[5]~24_combout\,
	sclr => \receiver|bit_counter[6]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \receiver|bit_counter\(5));

-- Location: LCCOMB_X8_Y25_N16
\receiver|bit_counter[6]~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \receiver|bit_counter[6]~26_combout\ = (\receiver|bit_counter\(6) & (\receiver|bit_counter[5]~25\ $ (GND))) # (!\receiver|bit_counter\(6) & (!\receiver|bit_counter[5]~25\ & VCC))
-- \receiver|bit_counter[6]~27\ = CARRY((\receiver|bit_counter\(6) & !\receiver|bit_counter[5]~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \receiver|bit_counter\(6),
	datad => VCC,
	cin => \receiver|bit_counter[5]~25\,
	combout => \receiver|bit_counter[6]~26_combout\,
	cout => \receiver|bit_counter[6]~27\);

-- Location: FF_X8_Y25_N17
\receiver|bit_counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \receiver|bit_counter[6]~26_combout\,
	sclr => \receiver|bit_counter[6]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \receiver|bit_counter\(6));

-- Location: LCCOMB_X8_Y25_N18
\receiver|bit_counter[7]~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \receiver|bit_counter[7]~28_combout\ = (\receiver|bit_counter\(7) & (!\receiver|bit_counter[6]~27\)) # (!\receiver|bit_counter\(7) & ((\receiver|bit_counter[6]~27\) # (GND)))
-- \receiver|bit_counter[7]~29\ = CARRY((!\receiver|bit_counter[6]~27\) # (!\receiver|bit_counter\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \receiver|bit_counter\(7),
	datad => VCC,
	cin => \receiver|bit_counter[6]~27\,
	combout => \receiver|bit_counter[7]~28_combout\,
	cout => \receiver|bit_counter[7]~29\);

-- Location: FF_X8_Y25_N19
\receiver|bit_counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \receiver|bit_counter[7]~28_combout\,
	sclr => \receiver|bit_counter[6]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \receiver|bit_counter\(7));

-- Location: LCCOMB_X8_Y25_N30
\receiver|Equal1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \receiver|Equal1~1_combout\ = (\receiver|bit_counter\(4) & (!\receiver|bit_counter\(7) & (!\receiver|bit_counter\(5) & \receiver|bit_counter\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \receiver|bit_counter\(4),
	datab => \receiver|bit_counter\(7),
	datac => \receiver|bit_counter\(5),
	datad => \receiver|bit_counter\(6),
	combout => \receiver|Equal1~1_combout\);

-- Location: LCCOMB_X8_Y25_N20
\receiver|bit_counter[8]~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \receiver|bit_counter[8]~30_combout\ = (\receiver|bit_counter\(8) & (\receiver|bit_counter[7]~29\ $ (GND))) # (!\receiver|bit_counter\(8) & (!\receiver|bit_counter[7]~29\ & VCC))
-- \receiver|bit_counter[8]~31\ = CARRY((\receiver|bit_counter\(8) & !\receiver|bit_counter[7]~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \receiver|bit_counter\(8),
	datad => VCC,
	cin => \receiver|bit_counter[7]~29\,
	combout => \receiver|bit_counter[8]~30_combout\,
	cout => \receiver|bit_counter[8]~31\);

-- Location: FF_X8_Y25_N21
\receiver|bit_counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \receiver|bit_counter[8]~30_combout\,
	sclr => \receiver|bit_counter[6]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \receiver|bit_counter\(8));

-- Location: LCCOMB_X8_Y25_N22
\receiver|bit_counter[9]~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \receiver|bit_counter[9]~32_combout\ = (\receiver|bit_counter\(9) & (!\receiver|bit_counter[8]~31\)) # (!\receiver|bit_counter\(9) & ((\receiver|bit_counter[8]~31\) # (GND)))
-- \receiver|bit_counter[9]~33\ = CARRY((!\receiver|bit_counter[8]~31\) # (!\receiver|bit_counter\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \receiver|bit_counter\(9),
	datad => VCC,
	cin => \receiver|bit_counter[8]~31\,
	combout => \receiver|bit_counter[9]~32_combout\,
	cout => \receiver|bit_counter[9]~33\);

-- Location: FF_X8_Y25_N23
\receiver|bit_counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \receiver|bit_counter[9]~32_combout\,
	sclr => \receiver|bit_counter[6]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \receiver|bit_counter\(9));

-- Location: LCCOMB_X8_Y25_N24
\receiver|bit_counter[10]~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \receiver|bit_counter[10]~34_combout\ = (\receiver|bit_counter\(10) & (\receiver|bit_counter[9]~33\ $ (GND))) # (!\receiver|bit_counter\(10) & (!\receiver|bit_counter[9]~33\ & VCC))
-- \receiver|bit_counter[10]~35\ = CARRY((\receiver|bit_counter\(10) & !\receiver|bit_counter[9]~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \receiver|bit_counter\(10),
	datad => VCC,
	cin => \receiver|bit_counter[9]~33\,
	combout => \receiver|bit_counter[10]~34_combout\,
	cout => \receiver|bit_counter[10]~35\);

-- Location: FF_X8_Y25_N25
\receiver|bit_counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \receiver|bit_counter[10]~34_combout\,
	sclr => \receiver|bit_counter[6]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \receiver|bit_counter\(10));

-- Location: LCCOMB_X8_Y25_N26
\receiver|bit_counter[11]~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \receiver|bit_counter[11]~36_combout\ = (\receiver|bit_counter\(11) & (!\receiver|bit_counter[10]~35\)) # (!\receiver|bit_counter\(11) & ((\receiver|bit_counter[10]~35\) # (GND)))
-- \receiver|bit_counter[11]~37\ = CARRY((!\receiver|bit_counter[10]~35\) # (!\receiver|bit_counter\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \receiver|bit_counter\(11),
	datad => VCC,
	cin => \receiver|bit_counter[10]~35\,
	combout => \receiver|bit_counter[11]~36_combout\,
	cout => \receiver|bit_counter[11]~37\);

-- Location: FF_X8_Y25_N27
\receiver|bit_counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \receiver|bit_counter[11]~36_combout\,
	sclr => \receiver|bit_counter[6]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \receiver|bit_counter\(11));

-- Location: LCCOMB_X8_Y25_N28
\receiver|bit_counter[12]~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \receiver|bit_counter[12]~38_combout\ = \receiver|bit_counter[11]~37\ $ (!\receiver|bit_counter\(12))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \receiver|bit_counter\(12),
	cin => \receiver|bit_counter[11]~37\,
	combout => \receiver|bit_counter[12]~38_combout\);

-- Location: FF_X8_Y25_N29
\receiver|bit_counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \receiver|bit_counter[12]~38_combout\,
	sclr => \receiver|bit_counter[6]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \receiver|bit_counter\(12));

-- Location: LCCOMB_X8_Y25_N0
\receiver|Equal1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \receiver|Equal1~0_combout\ = (\receiver|bit_counter\(1) & (\receiver|bit_counter\(0) & (\receiver|bit_counter\(2) & !\receiver|bit_counter\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \receiver|bit_counter\(1),
	datab => \receiver|bit_counter\(0),
	datac => \receiver|bit_counter\(2),
	datad => \receiver|bit_counter\(3),
	combout => \receiver|Equal1~0_combout\);

-- Location: LCCOMB_X7_Y25_N12
\receiver|Equal1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \receiver|Equal1~2_combout\ = (\receiver|bit_counter\(10) & (!\receiver|bit_counter\(9) & (!\receiver|bit_counter\(8) & !\receiver|bit_counter\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \receiver|bit_counter\(10),
	datab => \receiver|bit_counter\(9),
	datac => \receiver|bit_counter\(8),
	datad => \receiver|bit_counter\(11),
	combout => \receiver|Equal1~2_combout\);

-- Location: LCCOMB_X7_Y25_N10
\receiver|Equal1~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \receiver|Equal1~3_combout\ = (\receiver|Equal1~1_combout\ & (\receiver|bit_counter\(12) & (\receiver|Equal1~0_combout\ & \receiver|Equal1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \receiver|Equal1~1_combout\,
	datab => \receiver|bit_counter\(12),
	datac => \receiver|Equal1~0_combout\,
	datad => \receiver|Equal1~2_combout\,
	combout => \receiver|Equal1~3_combout\);

-- Location: IOIBUF_X9_Y29_N29
\Rx~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Rx,
	o => \Rx~input_o\);

-- Location: LCCOMB_X9_Y25_N10
\receiver|start_reg~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \receiver|start_reg~0_combout\ = (!\Rx~input_o\ & \reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Rx~input_o\,
	datad => \reset~input_o\,
	combout => \receiver|start_reg~0_combout\);

-- Location: FF_X9_Y25_N11
\receiver|start_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \receiver|start_reg~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \receiver|start_reg\(0));

-- Location: LCCOMB_X9_Y25_N0
\receiver|start_reg~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \receiver|start_reg~1_combout\ = (!\receiver|start_reg\(0) & \reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \receiver|start_reg\(0),
	datad => \reset~input_o\,
	combout => \receiver|start_reg~1_combout\);

-- Location: FF_X9_Y25_N1
\receiver|start_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \receiver|start_reg~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \receiver|start_reg\(1));

-- Location: LCCOMB_X9_Y25_N14
\receiver|state~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \receiver|state~7_combout\ = (!\receiver|state.read_start_bit_state~q\ & (!\receiver|state.read_bits_state~q\ & ((!\receiver|start_reg\(1)) # (!\receiver|start_reg\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \receiver|start_reg\(0),
	datab => \receiver|start_reg\(1),
	datac => \receiver|state.read_start_bit_state~q\,
	datad => \receiver|state.read_bits_state~q\,
	combout => \receiver|state~7_combout\);

-- Location: LCCOMB_X9_Y25_N26
\receiver|state~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \receiver|state~8_combout\ = (!\receiver|state~7_combout\ & \reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \receiver|state~7_combout\,
	datad => \reset~input_o\,
	combout => \receiver|state~8_combout\);

-- Location: FF_X9_Y25_N27
\receiver|state.init_state\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \receiver|state~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \receiver|state.init_state~q\);

-- Location: LCCOMB_X9_Y25_N4
\receiver|Selector1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \receiver|Selector1~1_combout\ = (\receiver|start_reg\(0) & (\receiver|start_reg\(1) & ((\receiver|state.done_state~q\) # (!\receiver|state.init_state~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \receiver|start_reg\(0),
	datab => \receiver|start_reg\(1),
	datac => \receiver|state.init_state~q\,
	datad => \receiver|state.done_state~q\,
	combout => \receiver|Selector1~1_combout\);

-- Location: LCCOMB_X5_Y25_N6
\receiver|start_bit_counter[0]~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \receiver|start_bit_counter[0]~12_combout\ = \receiver|start_bit_counter\(0) $ (VCC)
-- \receiver|start_bit_counter[0]~13\ = CARRY(\receiver|start_bit_counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \receiver|start_bit_counter\(0),
	datad => VCC,
	combout => \receiver|start_bit_counter[0]~12_combout\,
	cout => \receiver|start_bit_counter[0]~13\);

-- Location: LCCOMB_X6_Y25_N6
\receiver|start_bit_counter[2]~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \receiver|start_bit_counter[2]~14_combout\ = ((\receiver|Equal0~3_combout\) # (!\reset~input_o\)) # (!\receiver|state.read_start_bit_state~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \receiver|state.read_start_bit_state~q\,
	datac => \reset~input_o\,
	datad => \receiver|Equal0~3_combout\,
	combout => \receiver|start_bit_counter[2]~14_combout\);

-- Location: FF_X5_Y25_N7
\receiver|start_bit_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \receiver|start_bit_counter[0]~12_combout\,
	sclr => \receiver|start_bit_counter[2]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \receiver|start_bit_counter\(0));

-- Location: LCCOMB_X5_Y25_N8
\receiver|start_bit_counter[1]~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \receiver|start_bit_counter[1]~15_combout\ = (\receiver|start_bit_counter\(1) & (!\receiver|start_bit_counter[0]~13\)) # (!\receiver|start_bit_counter\(1) & ((\receiver|start_bit_counter[0]~13\) # (GND)))
-- \receiver|start_bit_counter[1]~16\ = CARRY((!\receiver|start_bit_counter[0]~13\) # (!\receiver|start_bit_counter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \receiver|start_bit_counter\(1),
	datad => VCC,
	cin => \receiver|start_bit_counter[0]~13\,
	combout => \receiver|start_bit_counter[1]~15_combout\,
	cout => \receiver|start_bit_counter[1]~16\);

-- Location: FF_X5_Y25_N9
\receiver|start_bit_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \receiver|start_bit_counter[1]~15_combout\,
	sclr => \receiver|start_bit_counter[2]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \receiver|start_bit_counter\(1));

-- Location: LCCOMB_X5_Y25_N10
\receiver|start_bit_counter[2]~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \receiver|start_bit_counter[2]~17_combout\ = (\receiver|start_bit_counter\(2) & (\receiver|start_bit_counter[1]~16\ $ (GND))) # (!\receiver|start_bit_counter\(2) & (!\receiver|start_bit_counter[1]~16\ & VCC))
-- \receiver|start_bit_counter[2]~18\ = CARRY((\receiver|start_bit_counter\(2) & !\receiver|start_bit_counter[1]~16\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \receiver|start_bit_counter\(2),
	datad => VCC,
	cin => \receiver|start_bit_counter[1]~16\,
	combout => \receiver|start_bit_counter[2]~17_combout\,
	cout => \receiver|start_bit_counter[2]~18\);

-- Location: FF_X5_Y25_N11
\receiver|start_bit_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \receiver|start_bit_counter[2]~17_combout\,
	sclr => \receiver|start_bit_counter[2]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \receiver|start_bit_counter\(2));

-- Location: LCCOMB_X5_Y25_N12
\receiver|start_bit_counter[3]~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \receiver|start_bit_counter[3]~19_combout\ = (\receiver|start_bit_counter\(3) & (!\receiver|start_bit_counter[2]~18\)) # (!\receiver|start_bit_counter\(3) & ((\receiver|start_bit_counter[2]~18\) # (GND)))
-- \receiver|start_bit_counter[3]~20\ = CARRY((!\receiver|start_bit_counter[2]~18\) # (!\receiver|start_bit_counter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \receiver|start_bit_counter\(3),
	datad => VCC,
	cin => \receiver|start_bit_counter[2]~18\,
	combout => \receiver|start_bit_counter[3]~19_combout\,
	cout => \receiver|start_bit_counter[3]~20\);

-- Location: FF_X5_Y25_N13
\receiver|start_bit_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \receiver|start_bit_counter[3]~19_combout\,
	sclr => \receiver|start_bit_counter[2]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \receiver|start_bit_counter\(3));

-- Location: LCCOMB_X5_Y25_N0
\receiver|Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \receiver|Equal0~0_combout\ = (!\receiver|start_bit_counter\(2) & (\receiver|start_bit_counter\(1) & (\receiver|start_bit_counter\(0) & \receiver|start_bit_counter\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \receiver|start_bit_counter\(2),
	datab => \receiver|start_bit_counter\(1),
	datac => \receiver|start_bit_counter\(0),
	datad => \receiver|start_bit_counter\(3),
	combout => \receiver|Equal0~0_combout\);

-- Location: LCCOMB_X5_Y25_N14
\receiver|start_bit_counter[4]~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \receiver|start_bit_counter[4]~21_combout\ = (\receiver|start_bit_counter\(4) & (\receiver|start_bit_counter[3]~20\ $ (GND))) # (!\receiver|start_bit_counter\(4) & (!\receiver|start_bit_counter[3]~20\ & VCC))
-- \receiver|start_bit_counter[4]~22\ = CARRY((\receiver|start_bit_counter\(4) & !\receiver|start_bit_counter[3]~20\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \receiver|start_bit_counter\(4),
	datad => VCC,
	cin => \receiver|start_bit_counter[3]~20\,
	combout => \receiver|start_bit_counter[4]~21_combout\,
	cout => \receiver|start_bit_counter[4]~22\);

-- Location: FF_X5_Y25_N15
\receiver|start_bit_counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \receiver|start_bit_counter[4]~21_combout\,
	sclr => \receiver|start_bit_counter[2]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \receiver|start_bit_counter\(4));

-- Location: LCCOMB_X5_Y25_N16
\receiver|start_bit_counter[5]~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \receiver|start_bit_counter[5]~23_combout\ = (\receiver|start_bit_counter\(5) & (!\receiver|start_bit_counter[4]~22\)) # (!\receiver|start_bit_counter\(5) & ((\receiver|start_bit_counter[4]~22\) # (GND)))
-- \receiver|start_bit_counter[5]~24\ = CARRY((!\receiver|start_bit_counter[4]~22\) # (!\receiver|start_bit_counter\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \receiver|start_bit_counter\(5),
	datad => VCC,
	cin => \receiver|start_bit_counter[4]~22\,
	combout => \receiver|start_bit_counter[5]~23_combout\,
	cout => \receiver|start_bit_counter[5]~24\);

-- Location: FF_X5_Y25_N17
\receiver|start_bit_counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \receiver|start_bit_counter[5]~23_combout\,
	sclr => \receiver|start_bit_counter[2]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \receiver|start_bit_counter\(5));

-- Location: LCCOMB_X5_Y25_N18
\receiver|start_bit_counter[6]~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \receiver|start_bit_counter[6]~25_combout\ = (\receiver|start_bit_counter\(6) & (\receiver|start_bit_counter[5]~24\ $ (GND))) # (!\receiver|start_bit_counter\(6) & (!\receiver|start_bit_counter[5]~24\ & VCC))
-- \receiver|start_bit_counter[6]~26\ = CARRY((\receiver|start_bit_counter\(6) & !\receiver|start_bit_counter[5]~24\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \receiver|start_bit_counter\(6),
	datad => VCC,
	cin => \receiver|start_bit_counter[5]~24\,
	combout => \receiver|start_bit_counter[6]~25_combout\,
	cout => \receiver|start_bit_counter[6]~26\);

-- Location: FF_X5_Y25_N19
\receiver|start_bit_counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \receiver|start_bit_counter[6]~25_combout\,
	sclr => \receiver|start_bit_counter[2]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \receiver|start_bit_counter\(6));

-- Location: LCCOMB_X5_Y25_N20
\receiver|start_bit_counter[7]~27\ : cycloneiii_lcell_comb
-- Equation(s):
-- \receiver|start_bit_counter[7]~27_combout\ = (\receiver|start_bit_counter\(7) & (!\receiver|start_bit_counter[6]~26\)) # (!\receiver|start_bit_counter\(7) & ((\receiver|start_bit_counter[6]~26\) # (GND)))
-- \receiver|start_bit_counter[7]~28\ = CARRY((!\receiver|start_bit_counter[6]~26\) # (!\receiver|start_bit_counter\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \receiver|start_bit_counter\(7),
	datad => VCC,
	cin => \receiver|start_bit_counter[6]~26\,
	combout => \receiver|start_bit_counter[7]~27_combout\,
	cout => \receiver|start_bit_counter[7]~28\);

-- Location: FF_X5_Y25_N21
\receiver|start_bit_counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \receiver|start_bit_counter[7]~27_combout\,
	sclr => \receiver|start_bit_counter[2]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \receiver|start_bit_counter\(7));

-- Location: LCCOMB_X5_Y25_N22
\receiver|start_bit_counter[8]~29\ : cycloneiii_lcell_comb
-- Equation(s):
-- \receiver|start_bit_counter[8]~29_combout\ = (\receiver|start_bit_counter\(8) & (\receiver|start_bit_counter[7]~28\ $ (GND))) # (!\receiver|start_bit_counter\(8) & (!\receiver|start_bit_counter[7]~28\ & VCC))
-- \receiver|start_bit_counter[8]~30\ = CARRY((\receiver|start_bit_counter\(8) & !\receiver|start_bit_counter[7]~28\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \receiver|start_bit_counter\(8),
	datad => VCC,
	cin => \receiver|start_bit_counter[7]~28\,
	combout => \receiver|start_bit_counter[8]~29_combout\,
	cout => \receiver|start_bit_counter[8]~30\);

-- Location: FF_X5_Y25_N23
\receiver|start_bit_counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \receiver|start_bit_counter[8]~29_combout\,
	sclr => \receiver|start_bit_counter[2]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \receiver|start_bit_counter\(8));

-- Location: LCCOMB_X5_Y25_N24
\receiver|start_bit_counter[9]~31\ : cycloneiii_lcell_comb
-- Equation(s):
-- \receiver|start_bit_counter[9]~31_combout\ = (\receiver|start_bit_counter\(9) & (!\receiver|start_bit_counter[8]~30\)) # (!\receiver|start_bit_counter\(9) & ((\receiver|start_bit_counter[8]~30\) # (GND)))
-- \receiver|start_bit_counter[9]~32\ = CARRY((!\receiver|start_bit_counter[8]~30\) # (!\receiver|start_bit_counter\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \receiver|start_bit_counter\(9),
	datad => VCC,
	cin => \receiver|start_bit_counter[8]~30\,
	combout => \receiver|start_bit_counter[9]~31_combout\,
	cout => \receiver|start_bit_counter[9]~32\);

-- Location: FF_X5_Y25_N25
\receiver|start_bit_counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \receiver|start_bit_counter[9]~31_combout\,
	sclr => \receiver|start_bit_counter[2]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \receiver|start_bit_counter\(9));

-- Location: LCCOMB_X5_Y25_N26
\receiver|start_bit_counter[10]~33\ : cycloneiii_lcell_comb
-- Equation(s):
-- \receiver|start_bit_counter[10]~33_combout\ = (\receiver|start_bit_counter\(10) & (\receiver|start_bit_counter[9]~32\ $ (GND))) # (!\receiver|start_bit_counter\(10) & (!\receiver|start_bit_counter[9]~32\ & VCC))
-- \receiver|start_bit_counter[10]~34\ = CARRY((\receiver|start_bit_counter\(10) & !\receiver|start_bit_counter[9]~32\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \receiver|start_bit_counter\(10),
	datad => VCC,
	cin => \receiver|start_bit_counter[9]~32\,
	combout => \receiver|start_bit_counter[10]~33_combout\,
	cout => \receiver|start_bit_counter[10]~34\);

-- Location: FF_X5_Y25_N27
\receiver|start_bit_counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \receiver|start_bit_counter[10]~33_combout\,
	sclr => \receiver|start_bit_counter[2]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \receiver|start_bit_counter\(10));

-- Location: LCCOMB_X5_Y25_N28
\receiver|start_bit_counter[11]~35\ : cycloneiii_lcell_comb
-- Equation(s):
-- \receiver|start_bit_counter[11]~35_combout\ = \receiver|start_bit_counter[10]~34\ $ (\receiver|start_bit_counter\(11))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \receiver|start_bit_counter\(11),
	cin => \receiver|start_bit_counter[10]~34\,
	combout => \receiver|start_bit_counter[11]~35_combout\);

-- Location: FF_X5_Y25_N29
\receiver|start_bit_counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \receiver|start_bit_counter[11]~35_combout\,
	sclr => \receiver|start_bit_counter[2]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \receiver|start_bit_counter\(11));

-- Location: LCCOMB_X5_Y25_N4
\receiver|Equal0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \receiver|Equal0~2_combout\ = (!\receiver|start_bit_counter\(10) & (\receiver|start_bit_counter\(9) & (!\receiver|start_bit_counter\(8) & \receiver|start_bit_counter\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \receiver|start_bit_counter\(10),
	datab => \receiver|start_bit_counter\(9),
	datac => \receiver|start_bit_counter\(8),
	datad => \receiver|start_bit_counter\(11),
	combout => \receiver|Equal0~2_combout\);

-- Location: LCCOMB_X5_Y25_N2
\receiver|Equal0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \receiver|Equal0~1_combout\ = (\receiver|start_bit_counter\(5) & (!\receiver|start_bit_counter\(6) & (!\receiver|start_bit_counter\(4) & !\receiver|start_bit_counter\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \receiver|start_bit_counter\(5),
	datab => \receiver|start_bit_counter\(6),
	datac => \receiver|start_bit_counter\(4),
	datad => \receiver|start_bit_counter\(7),
	combout => \receiver|Equal0~1_combout\);

-- Location: LCCOMB_X5_Y25_N30
\receiver|Equal0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \receiver|Equal0~3_combout\ = (\receiver|Equal0~0_combout\ & (\receiver|Equal0~2_combout\ & \receiver|Equal0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \receiver|Equal0~0_combout\,
	datac => \receiver|Equal0~2_combout\,
	datad => \receiver|Equal0~1_combout\,
	combout => \receiver|Equal0~3_combout\);

-- Location: LCCOMB_X6_Y25_N28
\receiver|Selector1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \receiver|Selector1~2_combout\ = (\receiver|Selector1~1_combout\) # ((!\receiver|Equal1~3_combout\ & (\receiver|state.read_start_bit_state~q\ & !\receiver|Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \receiver|Equal1~3_combout\,
	datab => \receiver|Selector1~1_combout\,
	datac => \receiver|state.read_start_bit_state~q\,
	datad => \receiver|Equal0~3_combout\,
	combout => \receiver|Selector1~2_combout\);

-- Location: FF_X6_Y25_N29
\receiver|state.read_start_bit_state\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \receiver|Selector1~2_combout\,
	sclr => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \receiver|state.read_start_bit_state~q\);

-- Location: LCCOMB_X9_Y25_N24
\receiver|number_bits[1]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \receiver|number_bits[1]~0_combout\ = (\reset~input_o\ & (!\receiver|Equal2~0_combout\ & \receiver|state.read_bits_state~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datac => \receiver|Equal2~0_combout\,
	datad => \receiver|state.read_bits_state~q\,
	combout => \receiver|number_bits[1]~0_combout\);

-- Location: LCCOMB_X9_Y25_N16
\receiver|number_bits[0]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \receiver|number_bits[0]~1_combout\ = (\receiver|number_bits[1]~0_combout\ & (\receiver|number_bits\(0) $ (((\receiver|Equal0~3_combout\) # (\receiver|Equal1~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \receiver|Equal0~3_combout\,
	datab => \receiver|number_bits[1]~0_combout\,
	datac => \receiver|number_bits\(0),
	datad => \receiver|Equal1~3_combout\,
	combout => \receiver|number_bits[0]~1_combout\);

-- Location: FF_X9_Y25_N17
\receiver|number_bits[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \receiver|number_bits[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \receiver|number_bits\(0));

-- Location: LCCOMB_X9_Y25_N18
\receiver|Selector1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \receiver|Selector1~0_combout\ = (!\receiver|Equal1~3_combout\ & (((!\receiver|Equal0~1_combout\) # (!\receiver|Equal0~0_combout\)) # (!\receiver|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \receiver|Equal0~2_combout\,
	datab => \receiver|Equal0~0_combout\,
	datac => \receiver|Equal0~1_combout\,
	datad => \receiver|Equal1~3_combout\,
	combout => \receiver|Selector1~0_combout\);

-- Location: LCCOMB_X9_Y25_N20
\receiver|number_bits[1]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \receiver|number_bits[1]~3_combout\ = (\receiver|number_bits[1]~0_combout\ & (\receiver|number_bits\(1) $ (((\receiver|number_bits\(0) & !\receiver|Selector1~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \receiver|number_bits\(0),
	datab => \receiver|number_bits[1]~0_combout\,
	datac => \receiver|number_bits\(1),
	datad => \receiver|Selector1~0_combout\,
	combout => \receiver|number_bits[1]~3_combout\);

-- Location: FF_X9_Y25_N21
\receiver|number_bits[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \receiver|number_bits[1]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \receiver|number_bits\(1));

-- Location: LCCOMB_X9_Y25_N12
\receiver|Add2~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \receiver|Add2~1_combout\ = \receiver|number_bits\(2) $ (((\receiver|number_bits\(1) & \receiver|number_bits\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \receiver|number_bits\(1),
	datac => \receiver|number_bits\(2),
	datad => \receiver|number_bits\(0),
	combout => \receiver|Add2~1_combout\);

-- Location: LCCOMB_X9_Y25_N22
\receiver|number_bits[2]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \receiver|number_bits[2]~4_combout\ = (\receiver|number_bits[1]~0_combout\ & ((\receiver|Selector1~0_combout\ & ((\receiver|number_bits\(2)))) # (!\receiver|Selector1~0_combout\ & (\receiver|Add2~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \receiver|Add2~1_combout\,
	datab => \receiver|number_bits[1]~0_combout\,
	datac => \receiver|number_bits\(2),
	datad => \receiver|Selector1~0_combout\,
	combout => \receiver|number_bits[2]~4_combout\);

-- Location: FF_X9_Y25_N23
\receiver|number_bits[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \receiver|number_bits[2]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \receiver|number_bits\(2));

-- Location: LCCOMB_X9_Y25_N6
\receiver|Add2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \receiver|Add2~0_combout\ = \receiver|number_bits\(3) $ (((\receiver|number_bits\(1) & (\receiver|number_bits\(2) & \receiver|number_bits\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \receiver|number_bits\(3),
	datab => \receiver|number_bits\(1),
	datac => \receiver|number_bits\(2),
	datad => \receiver|number_bits\(0),
	combout => \receiver|Add2~0_combout\);

-- Location: LCCOMB_X9_Y25_N30
\receiver|number_bits[3]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \receiver|number_bits[3]~2_combout\ = (\receiver|number_bits[1]~0_combout\ & ((\receiver|Selector1~0_combout\ & ((\receiver|number_bits\(3)))) # (!\receiver|Selector1~0_combout\ & (\receiver|Add2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \receiver|Add2~0_combout\,
	datab => \receiver|number_bits[1]~0_combout\,
	datac => \receiver|number_bits\(3),
	datad => \receiver|Selector1~0_combout\,
	combout => \receiver|number_bits[3]~2_combout\);

-- Location: FF_X9_Y25_N31
\receiver|number_bits[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \receiver|number_bits[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \receiver|number_bits\(3));

-- Location: LCCOMB_X9_Y25_N8
\receiver|Equal2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \receiver|Equal2~0_combout\ = (!\receiver|number_bits\(2) & (!\receiver|number_bits\(1) & (\receiver|number_bits\(3) & \receiver|number_bits\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \receiver|number_bits\(2),
	datab => \receiver|number_bits\(1),
	datac => \receiver|number_bits\(3),
	datad => \receiver|number_bits\(0),
	combout => \receiver|Equal2~0_combout\);

-- Location: LCCOMB_X9_Y25_N28
\receiver|Selector2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \receiver|Selector2~0_combout\ = (\receiver|state.read_start_bit_state~q\ & (((!\receiver|Equal2~0_combout\ & \receiver|state.read_bits_state~q\)) # (!\receiver|Selector1~0_combout\))) # (!\receiver|state.read_start_bit_state~q\ & 
-- (!\receiver|Equal2~0_combout\ & (\receiver|state.read_bits_state~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \receiver|state.read_start_bit_state~q\,
	datab => \receiver|Equal2~0_combout\,
	datac => \receiver|state.read_bits_state~q\,
	datad => \receiver|Selector1~0_combout\,
	combout => \receiver|Selector2~0_combout\);

-- Location: FF_X9_Y25_N29
\receiver|state.read_bits_state\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \receiver|Selector2~0_combout\,
	sclr => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \receiver|state.read_bits_state~q\);

-- Location: LCCOMB_X9_Y25_N2
\receiver|state~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \receiver|state~6_combout\ = (\receiver|state.read_bits_state~q\ & (\receiver|Equal2~0_combout\ & \reset~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \receiver|state.read_bits_state~q\,
	datac => \receiver|Equal2~0_combout\,
	datad => \reset~input_o\,
	combout => \receiver|state~6_combout\);

-- Location: FF_X9_Y25_N3
\receiver|state.done_state\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \receiver|state~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \receiver|state.done_state~q\);

-- Location: LCCOMB_X6_Y25_N18
\receiver|data_reg~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \receiver|data_reg~9_combout\ = (\reset~input_o\ & \Rx~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reset~input_o\,
	datad => \Rx~input_o\,
	combout => \receiver|data_reg~9_combout\);

-- Location: LCCOMB_X6_Y25_N20
\receiver|data_reg[1]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \receiver|data_reg[1]~1_combout\ = ((\receiver|Equal1~3_combout\) # (\receiver|Equal0~3_combout\)) # (!\reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reset~input_o\,
	datac => \receiver|Equal1~3_combout\,
	datad => \receiver|Equal0~3_combout\,
	combout => \receiver|data_reg[1]~1_combout\);

-- Location: FF_X6_Y25_N19
\receiver|data_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \receiver|data_reg~9_combout\,
	ena => \receiver|data_reg[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \receiver|data_reg\(0));

-- Location: LCCOMB_X6_Y25_N2
\receiver|data_reg~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \receiver|data_reg~0_combout\ = (\reset~input_o\ & \receiver|data_reg\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reset~input_o\,
	datad => \receiver|data_reg\(0),
	combout => \receiver|data_reg~0_combout\);

-- Location: FF_X6_Y25_N3
\receiver|data_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \receiver|data_reg~0_combout\,
	ena => \receiver|data_reg[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \receiver|data_reg\(1));

-- Location: LCCOMB_X6_Y25_N0
\receiver|data_reg~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \receiver|data_reg~2_combout\ = (\reset~input_o\ & \receiver|data_reg\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reset~input_o\,
	datad => \receiver|data_reg\(1),
	combout => \receiver|data_reg~2_combout\);

-- Location: FF_X6_Y25_N1
\receiver|data_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \receiver|data_reg~2_combout\,
	ena => \receiver|data_reg[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \receiver|data_reg\(2));

-- Location: LCCOMB_X6_Y25_N26
\receiver|data_reg~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \receiver|data_reg~3_combout\ = (\reset~input_o\ & \receiver|data_reg\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reset~input_o\,
	datad => \receiver|data_reg\(2),
	combout => \receiver|data_reg~3_combout\);

-- Location: FF_X6_Y25_N27
\receiver|data_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \receiver|data_reg~3_combout\,
	ena => \receiver|data_reg[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \receiver|data_reg\(3));

-- Location: LCCOMB_X6_Y25_N4
\receiver|data_reg~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \receiver|data_reg~4_combout\ = (\receiver|data_reg\(3) & \reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \receiver|data_reg\(3),
	datac => \reset~input_o\,
	combout => \receiver|data_reg~4_combout\);

-- Location: FF_X6_Y25_N5
\receiver|data_reg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \receiver|data_reg~4_combout\,
	ena => \receiver|data_reg[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \receiver|data_reg\(4));

-- Location: LCCOMB_X6_Y25_N22
\receiver|data_reg~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \receiver|data_reg~5_combout\ = (\receiver|data_reg\(4) & \reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \receiver|data_reg\(4),
	datac => \reset~input_o\,
	combout => \receiver|data_reg~5_combout\);

-- Location: FF_X6_Y25_N23
\receiver|data_reg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \receiver|data_reg~5_combout\,
	ena => \receiver|data_reg[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \receiver|data_reg\(5));

-- Location: LCCOMB_X6_Y25_N24
\receiver|data_reg~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \receiver|data_reg~6_combout\ = (\receiver|data_reg\(5) & \reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \receiver|data_reg\(5),
	datac => \reset~input_o\,
	combout => \receiver|data_reg~6_combout\);

-- Location: FF_X6_Y25_N25
\receiver|data_reg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \receiver|data_reg~6_combout\,
	ena => \receiver|data_reg[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \receiver|data_reg\(6));

-- Location: LCCOMB_X6_Y25_N10
\receiver|data_reg~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \receiver|data_reg~7_combout\ = (\reset~input_o\ & \receiver|data_reg\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reset~input_o\,
	datad => \receiver|data_reg\(6),
	combout => \receiver|data_reg~7_combout\);

-- Location: FF_X6_Y25_N11
\receiver|data_reg[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \receiver|data_reg~7_combout\,
	ena => \receiver|data_reg[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \receiver|data_reg\(7));

-- Location: LCCOMB_X6_Y25_N12
\receiver|data_reg~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \receiver|data_reg~8_combout\ = (\reset~input_o\ & \receiver|data_reg\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reset~input_o\,
	datad => \receiver|data_reg\(7),
	combout => \receiver|data_reg~8_combout\);

-- Location: FF_X6_Y25_N13
\receiver|data_reg[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \receiver|data_reg~8_combout\,
	ena => \receiver|data_reg[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \receiver|data_reg\(8));

-- Location: IOIBUF_X23_Y29_N29
\TxData[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_TxData(0),
	o => \TxData[0]~input_o\);

-- Location: IOIBUF_X21_Y29_N29
\start_Tx~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_start_Tx,
	o => \start_Tx~input_o\);

-- Location: LCCOMB_X22_Y27_N22
\transmitter|start_count_lead~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \transmitter|start_count_lead~feeder_combout\ = \start_Tx~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \start_Tx~input_o\,
	combout => \transmitter|start_count_lead~feeder_combout\);

-- Location: FF_X22_Y27_N23
\transmitter|start_count_lead\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \transmitter|start_count_lead~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \transmitter|start_count_lead~q\);

-- Location: FF_X23_Y27_N9
\transmitter|start_count_follow\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \transmitter|start_count_lead~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \transmitter|start_count_follow~q\);

-- Location: LCCOMB_X23_Y27_N30
\transmitter|data_reg[0]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \transmitter|data_reg[0]~3_combout\ = (\reset~input_o\ & !\transmitter|Equal0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reset~input_o\,
	datad => \transmitter|Equal0~0_combout\,
	combout => \transmitter|data_reg[0]~3_combout\);

-- Location: LCCOMB_X27_Y27_N4
\transmitter|Add1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \transmitter|Add1~0_combout\ = \transmitter|clk_counter\(0) $ (VCC)
-- \transmitter|Add1~1\ = CARRY(\transmitter|clk_counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \transmitter|clk_counter\(0),
	datad => VCC,
	combout => \transmitter|Add1~0_combout\,
	cout => \transmitter|Add1~1\);

-- Location: LCCOMB_X28_Y27_N12
\transmitter|clk_counter~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \transmitter|clk_counter~1_combout\ = (\transmitter|Add1~0_combout\ & !\transmitter|Equal1~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \transmitter|Add1~0_combout\,
	datad => \transmitter|Equal1~3_combout\,
	combout => \transmitter|clk_counter~1_combout\);

-- Location: LCCOMB_X22_Y27_N24
\transmitter|Selector1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \transmitter|Selector1~0_combout\ = (\transmitter|state.load~q\) # ((!\transmitter|done_shifting~q\ & \transmitter|state.shift~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \transmitter|done_shifting~q\,
	datac => \transmitter|state.shift~q\,
	datad => \transmitter|state.load~q\,
	combout => \transmitter|Selector1~0_combout\);

-- Location: FF_X22_Y27_N25
\transmitter|state.shift\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \transmitter|Selector1~0_combout\,
	sclr => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \transmitter|state.shift~q\);

-- Location: FF_X27_Y27_N25
\transmitter|clk_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \transmitter|clk_counter~1_combout\,
	sload => VCC,
	ena => \transmitter|state.shift~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \transmitter|clk_counter\(0));

-- Location: LCCOMB_X27_Y27_N6
\transmitter|Add1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \transmitter|Add1~2_combout\ = (\transmitter|clk_counter\(1) & (!\transmitter|Add1~1\)) # (!\transmitter|clk_counter\(1) & ((\transmitter|Add1~1\) # (GND)))
-- \transmitter|Add1~3\ = CARRY((!\transmitter|Add1~1\) # (!\transmitter|clk_counter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \transmitter|clk_counter\(1),
	datad => VCC,
	cin => \transmitter|Add1~1\,
	combout => \transmitter|Add1~2_combout\,
	cout => \transmitter|Add1~3\);

-- Location: FF_X27_Y27_N7
\transmitter|clk_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \transmitter|Add1~2_combout\,
	ena => \transmitter|state.shift~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \transmitter|clk_counter\(1));

-- Location: LCCOMB_X27_Y27_N8
\transmitter|Add1~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \transmitter|Add1~4_combout\ = (\transmitter|clk_counter\(2) & (\transmitter|Add1~3\ $ (GND))) # (!\transmitter|clk_counter\(2) & (!\transmitter|Add1~3\ & VCC))
-- \transmitter|Add1~5\ = CARRY((\transmitter|clk_counter\(2) & !\transmitter|Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \transmitter|clk_counter\(2),
	datad => VCC,
	cin => \transmitter|Add1~3\,
	combout => \transmitter|Add1~4_combout\,
	cout => \transmitter|Add1~5\);

-- Location: FF_X27_Y27_N9
\transmitter|clk_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \transmitter|Add1~4_combout\,
	ena => \transmitter|state.shift~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \transmitter|clk_counter\(2));

-- Location: LCCOMB_X27_Y27_N10
\transmitter|Add1~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \transmitter|Add1~6_combout\ = (\transmitter|clk_counter\(3) & (!\transmitter|Add1~5\)) # (!\transmitter|clk_counter\(3) & ((\transmitter|Add1~5\) # (GND)))
-- \transmitter|Add1~7\ = CARRY((!\transmitter|Add1~5\) # (!\transmitter|clk_counter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \transmitter|clk_counter\(3),
	datad => VCC,
	cin => \transmitter|Add1~5\,
	combout => \transmitter|Add1~6_combout\,
	cout => \transmitter|Add1~7\);

-- Location: LCCOMB_X27_Y27_N0
\transmitter|clk_counter~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \transmitter|clk_counter~0_combout\ = (!\transmitter|Equal1~3_combout\ & \transmitter|Add1~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \transmitter|Equal1~3_combout\,
	datad => \transmitter|Add1~6_combout\,
	combout => \transmitter|clk_counter~0_combout\);

-- Location: FF_X27_Y27_N1
\transmitter|clk_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \transmitter|clk_counter~0_combout\,
	ena => \transmitter|state.shift~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \transmitter|clk_counter\(3));

-- Location: LCCOMB_X27_Y27_N12
\transmitter|Add1~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \transmitter|Add1~8_combout\ = (\transmitter|clk_counter\(4) & (\transmitter|Add1~7\ $ (GND))) # (!\transmitter|clk_counter\(4) & (!\transmitter|Add1~7\ & VCC))
-- \transmitter|Add1~9\ = CARRY((\transmitter|clk_counter\(4) & !\transmitter|Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \transmitter|clk_counter\(4),
	datad => VCC,
	cin => \transmitter|Add1~7\,
	combout => \transmitter|Add1~8_combout\,
	cout => \transmitter|Add1~9\);

-- Location: LCCOMB_X27_Y27_N30
\transmitter|clk_counter~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \transmitter|clk_counter~2_combout\ = (!\transmitter|Equal1~3_combout\ & \transmitter|Add1~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \transmitter|Equal1~3_combout\,
	datad => \transmitter|Add1~8_combout\,
	combout => \transmitter|clk_counter~2_combout\);

-- Location: FF_X27_Y27_N31
\transmitter|clk_counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \transmitter|clk_counter~2_combout\,
	ena => \transmitter|state.shift~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \transmitter|clk_counter\(4));

-- Location: LCCOMB_X27_Y27_N14
\transmitter|Add1~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \transmitter|Add1~10_combout\ = (\transmitter|clk_counter\(5) & (!\transmitter|Add1~9\)) # (!\transmitter|clk_counter\(5) & ((\transmitter|Add1~9\) # (GND)))
-- \transmitter|Add1~11\ = CARRY((!\transmitter|Add1~9\) # (!\transmitter|clk_counter\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \transmitter|clk_counter\(5),
	datad => VCC,
	cin => \transmitter|Add1~9\,
	combout => \transmitter|Add1~10_combout\,
	cout => \transmitter|Add1~11\);

-- Location: FF_X27_Y27_N15
\transmitter|clk_counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \transmitter|Add1~10_combout\,
	ena => \transmitter|state.shift~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \transmitter|clk_counter\(5));

-- Location: LCCOMB_X27_Y27_N16
\transmitter|Add1~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \transmitter|Add1~12_combout\ = (\transmitter|clk_counter\(6) & (\transmitter|Add1~11\ $ (GND))) # (!\transmitter|clk_counter\(6) & (!\transmitter|Add1~11\ & VCC))
-- \transmitter|Add1~13\ = CARRY((\transmitter|clk_counter\(6) & !\transmitter|Add1~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \transmitter|clk_counter\(6),
	datad => VCC,
	cin => \transmitter|Add1~11\,
	combout => \transmitter|Add1~12_combout\,
	cout => \transmitter|Add1~13\);

-- Location: LCCOMB_X27_Y27_N2
\transmitter|clk_counter~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \transmitter|clk_counter~3_combout\ = (!\transmitter|Equal1~3_combout\ & \transmitter|Add1~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \transmitter|Equal1~3_combout\,
	datad => \transmitter|Add1~12_combout\,
	combout => \transmitter|clk_counter~3_combout\);

-- Location: FF_X27_Y27_N3
\transmitter|clk_counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \transmitter|clk_counter~3_combout\,
	ena => \transmitter|state.shift~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \transmitter|clk_counter\(6));

-- Location: LCCOMB_X27_Y27_N18
\transmitter|Add1~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \transmitter|Add1~14_combout\ = (\transmitter|clk_counter\(7) & (!\transmitter|Add1~13\)) # (!\transmitter|clk_counter\(7) & ((\transmitter|Add1~13\) # (GND)))
-- \transmitter|Add1~15\ = CARRY((!\transmitter|Add1~13\) # (!\transmitter|clk_counter\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \transmitter|clk_counter\(7),
	datad => VCC,
	cin => \transmitter|Add1~13\,
	combout => \transmitter|Add1~14_combout\,
	cout => \transmitter|Add1~15\);

-- Location: FF_X27_Y27_N19
\transmitter|clk_counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \transmitter|Add1~14_combout\,
	ena => \transmitter|state.shift~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \transmitter|clk_counter\(7));

-- Location: LCCOMB_X27_Y27_N20
\transmitter|Add1~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \transmitter|Add1~16_combout\ = (\transmitter|clk_counter\(8) & (\transmitter|Add1~15\ $ (GND))) # (!\transmitter|clk_counter\(8) & (!\transmitter|Add1~15\ & VCC))
-- \transmitter|Add1~17\ = CARRY((\transmitter|clk_counter\(8) & !\transmitter|Add1~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \transmitter|clk_counter\(8),
	datad => VCC,
	cin => \transmitter|Add1~15\,
	combout => \transmitter|Add1~16_combout\,
	cout => \transmitter|Add1~17\);

-- Location: FF_X27_Y27_N21
\transmitter|clk_counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \transmitter|Add1~16_combout\,
	ena => \transmitter|state.shift~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \transmitter|clk_counter\(8));

-- Location: LCCOMB_X27_Y27_N22
\transmitter|Add1~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \transmitter|Add1~18_combout\ = (\transmitter|clk_counter\(9) & (!\transmitter|Add1~17\)) # (!\transmitter|clk_counter\(9) & ((\transmitter|Add1~17\) # (GND)))
-- \transmitter|Add1~19\ = CARRY((!\transmitter|Add1~17\) # (!\transmitter|clk_counter\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \transmitter|clk_counter\(9),
	datad => VCC,
	cin => \transmitter|Add1~17\,
	combout => \transmitter|Add1~18_combout\,
	cout => \transmitter|Add1~19\);

-- Location: FF_X27_Y27_N23
\transmitter|clk_counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \transmitter|Add1~18_combout\,
	ena => \transmitter|state.shift~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \transmitter|clk_counter\(9));

-- Location: LCCOMB_X27_Y27_N24
\transmitter|Add1~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \transmitter|Add1~20_combout\ = (\transmitter|clk_counter\(10) & (\transmitter|Add1~19\ $ (GND))) # (!\transmitter|clk_counter\(10) & (!\transmitter|Add1~19\ & VCC))
-- \transmitter|Add1~21\ = CARRY((\transmitter|clk_counter\(10) & !\transmitter|Add1~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \transmitter|clk_counter\(10),
	datad => VCC,
	cin => \transmitter|Add1~19\,
	combout => \transmitter|Add1~20_combout\,
	cout => \transmitter|Add1~21\);

-- Location: LCCOMB_X28_Y27_N6
\transmitter|clk_counter~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \transmitter|clk_counter~5_combout\ = (!\transmitter|Equal1~3_combout\ & \transmitter|Add1~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \transmitter|Equal1~3_combout\,
	datad => \transmitter|Add1~20_combout\,
	combout => \transmitter|clk_counter~5_combout\);

-- Location: FF_X28_Y27_N7
\transmitter|clk_counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \transmitter|clk_counter~5_combout\,
	ena => \transmitter|state.shift~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \transmitter|clk_counter\(10));

-- Location: LCCOMB_X27_Y27_N26
\transmitter|Add1~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \transmitter|Add1~22_combout\ = (\transmitter|clk_counter\(11) & (!\transmitter|Add1~21\)) # (!\transmitter|clk_counter\(11) & ((\transmitter|Add1~21\) # (GND)))
-- \transmitter|Add1~23\ = CARRY((!\transmitter|Add1~21\) # (!\transmitter|clk_counter\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \transmitter|clk_counter\(11),
	datad => VCC,
	cin => \transmitter|Add1~21\,
	combout => \transmitter|Add1~22_combout\,
	cout => \transmitter|Add1~23\);

-- Location: FF_X27_Y27_N27
\transmitter|clk_counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \transmitter|Add1~22_combout\,
	ena => \transmitter|state.shift~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \transmitter|clk_counter\(11));

-- Location: LCCOMB_X27_Y27_N28
\transmitter|Add1~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \transmitter|Add1~24_combout\ = \transmitter|Add1~23\ $ (!\transmitter|clk_counter\(12))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \transmitter|clk_counter\(12),
	cin => \transmitter|Add1~23\,
	combout => \transmitter|Add1~24_combout\);

-- Location: LCCOMB_X28_Y27_N4
\transmitter|clk_counter~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \transmitter|clk_counter~4_combout\ = (!\transmitter|Equal1~3_combout\ & \transmitter|Add1~24_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \transmitter|Equal1~3_combout\,
	datad => \transmitter|Add1~24_combout\,
	combout => \transmitter|clk_counter~4_combout\);

-- Location: FF_X28_Y27_N5
\transmitter|clk_counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \transmitter|clk_counter~4_combout\,
	ena => \transmitter|state.shift~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \transmitter|clk_counter\(12));

-- Location: LCCOMB_X28_Y27_N16
\transmitter|Equal1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \transmitter|Equal1~2_combout\ = (\transmitter|clk_counter\(10) & (!\transmitter|clk_counter\(8) & (!\transmitter|clk_counter\(11) & !\transmitter|clk_counter\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \transmitter|clk_counter\(10),
	datab => \transmitter|clk_counter\(8),
	datac => \transmitter|clk_counter\(11),
	datad => \transmitter|clk_counter\(9),
	combout => \transmitter|Equal1~2_combout\);

-- Location: LCCOMB_X28_Y27_N8
\transmitter|Equal1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \transmitter|Equal1~0_combout\ = (!\transmitter|clk_counter\(2) & (!\transmitter|clk_counter\(1) & (\transmitter|clk_counter\(3) & !\transmitter|clk_counter\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \transmitter|clk_counter\(2),
	datab => \transmitter|clk_counter\(1),
	datac => \transmitter|clk_counter\(3),
	datad => \transmitter|clk_counter\(0),
	combout => \transmitter|Equal1~0_combout\);

-- Location: LCCOMB_X28_Y27_N10
\transmitter|Equal1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \transmitter|Equal1~1_combout\ = (\transmitter|clk_counter\(6) & (!\transmitter|clk_counter\(7) & (!\transmitter|clk_counter\(5) & \transmitter|clk_counter\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \transmitter|clk_counter\(6),
	datab => \transmitter|clk_counter\(7),
	datac => \transmitter|clk_counter\(5),
	datad => \transmitter|clk_counter\(4),
	combout => \transmitter|Equal1~1_combout\);

-- Location: LCCOMB_X28_Y27_N18
\transmitter|Equal1~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \transmitter|Equal1~3_combout\ = (\transmitter|clk_counter\(12) & (\transmitter|Equal1~2_combout\ & (\transmitter|Equal1~0_combout\ & \transmitter|Equal1~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \transmitter|clk_counter\(12),
	datab => \transmitter|Equal1~2_combout\,
	datac => \transmitter|Equal1~0_combout\,
	datad => \transmitter|Equal1~1_combout\,
	combout => \transmitter|Equal1~3_combout\);

-- Location: LCCOMB_X24_Y27_N4
\transmitter|shift_data~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \transmitter|shift_data~feeder_combout\ = \transmitter|Equal1~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \transmitter|Equal1~3_combout\,
	combout => \transmitter|shift_data~feeder_combout\);

-- Location: FF_X24_Y27_N5
\transmitter|shift_data\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \transmitter|shift_data~feeder_combout\,
	ena => \transmitter|state.shift~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \transmitter|shift_data~q\);

-- Location: LCCOMB_X23_Y27_N0
\transmitter|Add0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \transmitter|Add0~0_combout\ = (\transmitter|shift_data~q\ & (\transmitter|number_bits\(0) $ (VCC))) # (!\transmitter|shift_data~q\ & (\transmitter|number_bits\(0) & VCC))
-- \transmitter|Add0~1\ = CARRY((\transmitter|shift_data~q\ & \transmitter|number_bits\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \transmitter|shift_data~q\,
	datab => \transmitter|number_bits\(0),
	datad => VCC,
	combout => \transmitter|Add0~0_combout\,
	cout => \transmitter|Add0~1\);

-- Location: LCCOMB_X23_Y27_N14
\transmitter|Add0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \transmitter|Add0~10_combout\ = (\transmitter|data_reg[0]~3_combout\ & ((\transmitter|state.load~q\ & (\transmitter|number_bits\(0))) # (!\transmitter|state.load~q\ & ((\transmitter|Add0~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \transmitter|data_reg[0]~3_combout\,
	datab => \transmitter|state.load~q\,
	datac => \transmitter|number_bits\(0),
	datad => \transmitter|Add0~0_combout\,
	combout => \transmitter|Add0~10_combout\);

-- Location: FF_X23_Y27_N15
\transmitter|number_bits[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \transmitter|Add0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \transmitter|number_bits\(0));

-- Location: LCCOMB_X23_Y27_N2
\transmitter|Add0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \transmitter|Add0~2_combout\ = (\transmitter|number_bits\(1) & (!\transmitter|Add0~1\)) # (!\transmitter|number_bits\(1) & ((\transmitter|Add0~1\) # (GND)))
-- \transmitter|Add0~3\ = CARRY((!\transmitter|Add0~1\) # (!\transmitter|number_bits\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \transmitter|number_bits\(1),
	datad => VCC,
	cin => \transmitter|Add0~1\,
	combout => \transmitter|Add0~2_combout\,
	cout => \transmitter|Add0~3\);

-- Location: LCCOMB_X23_Y27_N26
\transmitter|Add0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \transmitter|Add0~4_combout\ = (\transmitter|data_reg[0]~3_combout\ & ((\transmitter|state.load~q\ & (\transmitter|number_bits\(1))) # (!\transmitter|state.load~q\ & ((\transmitter|Add0~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \transmitter|data_reg[0]~3_combout\,
	datab => \transmitter|state.load~q\,
	datac => \transmitter|number_bits\(1),
	datad => \transmitter|Add0~2_combout\,
	combout => \transmitter|Add0~4_combout\);

-- Location: FF_X23_Y27_N27
\transmitter|number_bits[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \transmitter|Add0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \transmitter|number_bits\(1));

-- Location: LCCOMB_X23_Y27_N4
\transmitter|Add0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \transmitter|Add0~5_combout\ = (\transmitter|number_bits\(2) & (\transmitter|Add0~3\ $ (GND))) # (!\transmitter|number_bits\(2) & (!\transmitter|Add0~3\ & VCC))
-- \transmitter|Add0~6\ = CARRY((\transmitter|number_bits\(2) & !\transmitter|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \transmitter|number_bits\(2),
	datad => VCC,
	cin => \transmitter|Add0~3\,
	combout => \transmitter|Add0~5_combout\,
	cout => \transmitter|Add0~6\);

-- Location: LCCOMB_X23_Y27_N10
\transmitter|Add0~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \transmitter|Add0~11_combout\ = (\transmitter|state.load~q\ & (\transmitter|number_bits\(2) & \reset~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \transmitter|state.load~q\,
	datab => \transmitter|number_bits\(2),
	datac => \reset~input_o\,
	combout => \transmitter|Add0~11_combout\);

-- Location: LCCOMB_X23_Y27_N16
\transmitter|Add0~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \transmitter|Add0~12_combout\ = (\transmitter|Add0~11_combout\) # ((\transmitter|data_reg[0]~3_combout\ & (!\transmitter|state.load~q\ & \transmitter|Add0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \transmitter|data_reg[0]~3_combout\,
	datab => \transmitter|state.load~q\,
	datac => \transmitter|Add0~5_combout\,
	datad => \transmitter|Add0~11_combout\,
	combout => \transmitter|Add0~12_combout\);

-- Location: FF_X23_Y27_N17
\transmitter|number_bits[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \transmitter|Add0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \transmitter|number_bits\(2));

-- Location: LCCOMB_X23_Y27_N6
\transmitter|Add0~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \transmitter|Add0~7_combout\ = \transmitter|Add0~6\ $ (\transmitter|number_bits\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \transmitter|number_bits\(3),
	cin => \transmitter|Add0~6\,
	combout => \transmitter|Add0~7_combout\);

-- Location: LCCOMB_X23_Y27_N28
\transmitter|Add0~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \transmitter|Add0~9_combout\ = (\transmitter|data_reg[0]~3_combout\ & ((\transmitter|state.load~q\ & (\transmitter|number_bits\(3))) # (!\transmitter|state.load~q\ & ((\transmitter|Add0~7_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \transmitter|data_reg[0]~3_combout\,
	datab => \transmitter|state.load~q\,
	datac => \transmitter|number_bits\(3),
	datad => \transmitter|Add0~7_combout\,
	combout => \transmitter|Add0~9_combout\);

-- Location: FF_X23_Y27_N29
\transmitter|number_bits[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \transmitter|Add0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \transmitter|number_bits\(3));

-- Location: LCCOMB_X23_Y27_N12
\transmitter|Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \transmitter|Equal0~0_combout\ = (\transmitter|number_bits\(1) & (\transmitter|number_bits\(3) & (!\transmitter|number_bits\(0) & !\transmitter|number_bits\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \transmitter|number_bits\(1),
	datab => \transmitter|number_bits\(3),
	datac => \transmitter|number_bits\(0),
	datad => \transmitter|number_bits\(2),
	combout => \transmitter|Equal0~0_combout\);

-- Location: LCCOMB_X23_Y27_N24
\transmitter|done_shifting~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \transmitter|done_shifting~0_combout\ = (\transmitter|Equal0~0_combout\) # ((!\transmitter|state.load~q\ & \transmitter|done_shifting~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \transmitter|state.load~q\,
	datac => \transmitter|done_shifting~q\,
	datad => \transmitter|Equal0~0_combout\,
	combout => \transmitter|done_shifting~0_combout\);

-- Location: LCCOMB_X23_Y27_N22
\transmitter|done_shifting~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \transmitter|done_shifting~feeder_combout\ = \transmitter|done_shifting~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \transmitter|done_shifting~0_combout\,
	combout => \transmitter|done_shifting~feeder_combout\);

-- Location: FF_X23_Y27_N23
\transmitter|done_shifting\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \transmitter|done_shifting~feeder_combout\,
	ena => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \transmitter|done_shifting~q\);

-- Location: LCCOMB_X22_Y27_N18
\transmitter|state~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \transmitter|state~5_combout\ = ((!\transmitter|state.init~q\ & ((\transmitter|start_count_follow~q\) # (!\transmitter|start_count_lead~q\)))) # (!\reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \transmitter|start_count_lead~q\,
	datab => \transmitter|start_count_follow~q\,
	datac => \reset~input_o\,
	datad => \transmitter|state.init~q\,
	combout => \transmitter|state~5_combout\);

-- Location: LCCOMB_X22_Y27_N16
\transmitter|state~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \transmitter|state~6_combout\ = (!\transmitter|state~5_combout\ & ((!\transmitter|state.shift~q\) # (!\transmitter|done_shifting~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \transmitter|done_shifting~q\,
	datac => \transmitter|state.shift~q\,
	datad => \transmitter|state~5_combout\,
	combout => \transmitter|state~6_combout\);

-- Location: FF_X22_Y27_N17
\transmitter|state.init\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \transmitter|state~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \transmitter|state.init~q\);

-- Location: LCCOMB_X23_Y27_N20
\transmitter|state~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \transmitter|state~7_combout\ = (\reset~input_o\ & (\transmitter|start_count_lead~q\ & (!\transmitter|start_count_follow~q\ & !\transmitter|state.init~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \transmitter|start_count_lead~q\,
	datac => \transmitter|start_count_follow~q\,
	datad => \transmitter|state.init~q\,
	combout => \transmitter|state~7_combout\);

-- Location: LCCOMB_X23_Y27_N18
\transmitter|state.load~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \transmitter|state.load~feeder_combout\ = \transmitter|state~7_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \transmitter|state~7_combout\,
	combout => \transmitter|state.load~feeder_combout\);

-- Location: FF_X23_Y27_N19
\transmitter|state.load\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \transmitter|state.load~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \transmitter|state.load~q\);

-- Location: IOIBUF_X23_Y29_N22
\TxData[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_TxData(2),
	o => \TxData[2]~input_o\);

-- Location: IOIBUF_X23_Y29_N1
\TxData[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_TxData(3),
	o => \TxData[3]~input_o\);

-- Location: IOIBUF_X23_Y29_N15
\TxData[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_TxData(4),
	o => \TxData[4]~input_o\);

-- Location: IOIBUF_X26_Y29_N15
\TxData[7]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_TxData(7),
	o => \TxData[7]~input_o\);

-- Location: LCCOMB_X24_Y27_N28
\transmitter|data_reg~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \transmitter|data_reg~10_combout\ = (\transmitter|state.load~q\ & !\TxData[7]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \transmitter|state.load~q\,
	datad => \TxData[7]~input_o\,
	combout => \transmitter|data_reg~10_combout\);

-- Location: LCCOMB_X24_Y27_N2
\transmitter|data_reg[0]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \transmitter|data_reg[0]~1_combout\ = (\reset~input_o\ & (!\transmitter|Equal0~0_combout\ & ((\transmitter|state.load~q\) # (\transmitter|shift_data~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \transmitter|state.load~q\,
	datac => \transmitter|shift_data~q\,
	datad => \transmitter|Equal0~0_combout\,
	combout => \transmitter|data_reg[0]~1_combout\);

-- Location: FF_X24_Y27_N29
\transmitter|data_reg[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \transmitter|data_reg~10_combout\,
	ena => \transmitter|data_reg[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \transmitter|data_reg\(8));

-- Location: IOIBUF_X26_Y29_N22
\TxData[6]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_TxData(6),
	o => \TxData[6]~input_o\);

-- Location: LCCOMB_X24_Y27_N10
\transmitter|data_reg~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \transmitter|data_reg~9_combout\ = (\transmitter|state.load~q\ & ((!\TxData[6]~input_o\))) # (!\transmitter|state.load~q\ & (\transmitter|data_reg\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \transmitter|data_reg\(8),
	datac => \TxData[6]~input_o\,
	datad => \transmitter|state.load~q\,
	combout => \transmitter|data_reg~9_combout\);

-- Location: FF_X24_Y27_N11
\transmitter|data_reg[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \transmitter|data_reg~9_combout\,
	ena => \transmitter|data_reg[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \transmitter|data_reg\(7));

-- Location: IOIBUF_X26_Y29_N1
\TxData[5]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_TxData(5),
	o => \TxData[5]~input_o\);

-- Location: LCCOMB_X24_Y27_N24
\transmitter|data_reg~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \transmitter|data_reg~8_combout\ = (\transmitter|state.load~q\ & ((!\TxData[5]~input_o\))) # (!\transmitter|state.load~q\ & (\transmitter|data_reg\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \transmitter|data_reg\(7),
	datab => \transmitter|state.load~q\,
	datad => \TxData[5]~input_o\,
	combout => \transmitter|data_reg~8_combout\);

-- Location: FF_X24_Y27_N25
\transmitter|data_reg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \transmitter|data_reg~8_combout\,
	ena => \transmitter|data_reg[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \transmitter|data_reg\(6));

-- Location: LCCOMB_X24_Y27_N18
\transmitter|data_reg~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \transmitter|data_reg~7_combout\ = (\transmitter|state.load~q\ & (!\TxData[4]~input_o\)) # (!\transmitter|state.load~q\ & ((\transmitter|data_reg\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TxData[4]~input_o\,
	datab => \transmitter|state.load~q\,
	datad => \transmitter|data_reg\(6),
	combout => \transmitter|data_reg~7_combout\);

-- Location: FF_X24_Y27_N19
\transmitter|data_reg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \transmitter|data_reg~7_combout\,
	ena => \transmitter|data_reg[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \transmitter|data_reg\(5));

-- Location: LCCOMB_X24_Y27_N20
\transmitter|data_reg~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \transmitter|data_reg~6_combout\ = (\transmitter|state.load~q\ & (!\TxData[3]~input_o\)) # (!\transmitter|state.load~q\ & ((\transmitter|data_reg\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TxData[3]~input_o\,
	datab => \transmitter|state.load~q\,
	datad => \transmitter|data_reg\(5),
	combout => \transmitter|data_reg~6_combout\);

-- Location: FF_X24_Y27_N21
\transmitter|data_reg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \transmitter|data_reg~6_combout\,
	ena => \transmitter|data_reg[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \transmitter|data_reg\(4));

-- Location: LCCOMB_X24_Y27_N22
\transmitter|data_reg~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \transmitter|data_reg~5_combout\ = (\transmitter|state.load~q\ & (!\TxData[2]~input_o\)) # (!\transmitter|state.load~q\ & ((\transmitter|data_reg\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \transmitter|state.load~q\,
	datac => \TxData[2]~input_o\,
	datad => \transmitter|data_reg\(4),
	combout => \transmitter|data_reg~5_combout\);

-- Location: FF_X24_Y27_N23
\transmitter|data_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \transmitter|data_reg~5_combout\,
	ena => \transmitter|data_reg[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \transmitter|data_reg\(3));

-- Location: IOIBUF_X26_Y29_N29
\TxData[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_TxData(1),
	o => \TxData[1]~input_o\);

-- Location: LCCOMB_X24_Y27_N0
\transmitter|data_reg~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \transmitter|data_reg~4_combout\ = (\transmitter|state.load~q\ & ((!\TxData[1]~input_o\))) # (!\transmitter|state.load~q\ & (\transmitter|data_reg\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \transmitter|data_reg\(3),
	datab => \transmitter|state.load~q\,
	datad => \TxData[1]~input_o\,
	combout => \transmitter|data_reg~4_combout\);

-- Location: FF_X24_Y27_N1
\transmitter|data_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \transmitter|data_reg~4_combout\,
	ena => \transmitter|data_reg[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \transmitter|data_reg\(2));

-- Location: LCCOMB_X24_Y27_N26
\transmitter|data_reg~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \transmitter|data_reg~2_combout\ = (\transmitter|state.load~q\ & (!\TxData[0]~input_o\)) # (!\transmitter|state.load~q\ & ((\transmitter|data_reg\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TxData[0]~input_o\,
	datab => \transmitter|state.load~q\,
	datad => \transmitter|data_reg\(2),
	combout => \transmitter|data_reg~2_combout\);

-- Location: FF_X24_Y27_N27
\transmitter|data_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \transmitter|data_reg~2_combout\,
	ena => \transmitter|data_reg[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \transmitter|data_reg\(1));

-- Location: LCCOMB_X24_Y27_N12
\transmitter|data_reg[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \transmitter|data_reg[0]~0_combout\ = (\transmitter|data_reg\(1)) # (\transmitter|state.load~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \transmitter|data_reg\(1),
	datad => \transmitter|state.load~q\,
	combout => \transmitter|data_reg[0]~0_combout\);

-- Location: FF_X24_Y27_N13
\transmitter|data_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \transmitter|data_reg[0]~0_combout\,
	ena => \transmitter|data_reg[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \transmitter|data_reg\(0));

-- Location: LCCOMB_X22_Y27_N26
\transmitter|tx_ready_reg~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \transmitter|tx_ready_reg~0_combout\ = !\start_Tx~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \start_Tx~input_o\,
	combout => \transmitter|tx_ready_reg~0_combout\);

-- Location: FF_X22_Y27_N27
\transmitter|tx_ready_reg\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \transmitter|tx_ready_reg~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \transmitter|tx_ready_reg~q\);

-- Location: LCCOMB_X23_Y27_N8
\transmitter|Selector3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \transmitter|Selector3~0_combout\ = ((\transmitter|done_shifting~q\ & \transmitter|state.shift~q\)) # (!\transmitter|state.init~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \transmitter|done_shifting~q\,
	datab => \transmitter|state.init~q\,
	datad => \transmitter|state.shift~q\,
	combout => \transmitter|Selector3~0_combout\);

-- Location: LCCOMB_X21_Y27_N2
\transmitter|clk_delay_counter[0]~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \transmitter|clk_delay_counter[0]~15_combout\ = \transmitter|clk_delay_counter\(0) $ (VCC)
-- \transmitter|clk_delay_counter[0]~16\ = CARRY(\transmitter|clk_delay_counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \transmitter|clk_delay_counter\(0),
	datad => VCC,
	combout => \transmitter|clk_delay_counter[0]~15_combout\,
	cout => \transmitter|clk_delay_counter[0]~16\);

-- Location: LCCOMB_X21_Y27_N30
\transmitter|clk_delay_counter[9]~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \transmitter|clk_delay_counter[9]~13_combout\ = (\transmitter|clk_delay_counter\(5) & ((\transmitter|clk_delay_counter\(4)) # ((\transmitter|clk_delay_counter\(2) & \transmitter|clk_delay_counter\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \transmitter|clk_delay_counter\(5),
	datab => \transmitter|clk_delay_counter\(2),
	datac => \transmitter|clk_delay_counter\(3),
	datad => \transmitter|clk_delay_counter\(4),
	combout => \transmitter|clk_delay_counter[9]~13_combout\);

-- Location: LCCOMB_X21_Y27_N0
\transmitter|clk_delay_counter[9]~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \transmitter|clk_delay_counter[9]~12_combout\ = (\transmitter|clk_delay_counter\(9) & ((\transmitter|clk_delay_counter\(8)) # ((\transmitter|clk_delay_counter\(6)) # (\transmitter|clk_delay_counter\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \transmitter|clk_delay_counter\(8),
	datab => \transmitter|clk_delay_counter\(9),
	datac => \transmitter|clk_delay_counter\(6),
	datad => \transmitter|clk_delay_counter\(7),
	combout => \transmitter|clk_delay_counter[9]~12_combout\);

-- Location: LCCOMB_X21_Y27_N28
\transmitter|clk_delay_counter[9]~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \transmitter|clk_delay_counter[9]~14_combout\ = (\transmitter|clk_delay_counter\(10)) # ((\transmitter|clk_delay_counter[9]~12_combout\) # ((\transmitter|clk_delay_counter\(9) & \transmitter|clk_delay_counter[9]~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \transmitter|clk_delay_counter\(10),
	datab => \transmitter|clk_delay_counter\(9),
	datac => \transmitter|clk_delay_counter[9]~13_combout\,
	datad => \transmitter|clk_delay_counter[9]~12_combout\,
	combout => \transmitter|clk_delay_counter[9]~14_combout\);

-- Location: LCCOMB_X21_Y27_N26
\transmitter|clk_delay_counter[9]~37\ : cycloneiii_lcell_comb
-- Equation(s):
-- \transmitter|clk_delay_counter[9]~37_combout\ = ((!\transmitter|clk_delay_counter[9]~14_combout\) # (!\transmitter|delay_clock~combout\)) # (!\transmitter|clk_delay_counter\(11))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \transmitter|clk_delay_counter\(11),
	datac => \transmitter|delay_clock~combout\,
	datad => \transmitter|clk_delay_counter[9]~14_combout\,
	combout => \transmitter|clk_delay_counter[9]~37_combout\);

-- Location: FF_X21_Y27_N3
\transmitter|clk_delay_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \transmitter|clk_delay_counter[0]~15_combout\,
	sclr => \transmitter|ALT_INV_delay_clock~combout\,
	ena => \transmitter|clk_delay_counter[9]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \transmitter|clk_delay_counter\(0));

-- Location: LCCOMB_X21_Y27_N4
\transmitter|clk_delay_counter[1]~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \transmitter|clk_delay_counter[1]~17_combout\ = (\transmitter|clk_delay_counter\(1) & (!\transmitter|clk_delay_counter[0]~16\)) # (!\transmitter|clk_delay_counter\(1) & ((\transmitter|clk_delay_counter[0]~16\) # (GND)))
-- \transmitter|clk_delay_counter[1]~18\ = CARRY((!\transmitter|clk_delay_counter[0]~16\) # (!\transmitter|clk_delay_counter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \transmitter|clk_delay_counter\(1),
	datad => VCC,
	cin => \transmitter|clk_delay_counter[0]~16\,
	combout => \transmitter|clk_delay_counter[1]~17_combout\,
	cout => \transmitter|clk_delay_counter[1]~18\);

-- Location: FF_X21_Y27_N5
\transmitter|clk_delay_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \transmitter|clk_delay_counter[1]~17_combout\,
	sclr => \transmitter|ALT_INV_delay_clock~combout\,
	ena => \transmitter|clk_delay_counter[9]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \transmitter|clk_delay_counter\(1));

-- Location: LCCOMB_X21_Y27_N6
\transmitter|clk_delay_counter[2]~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \transmitter|clk_delay_counter[2]~19_combout\ = (\transmitter|clk_delay_counter\(2) & (\transmitter|clk_delay_counter[1]~18\ $ (GND))) # (!\transmitter|clk_delay_counter\(2) & (!\transmitter|clk_delay_counter[1]~18\ & VCC))
-- \transmitter|clk_delay_counter[2]~20\ = CARRY((\transmitter|clk_delay_counter\(2) & !\transmitter|clk_delay_counter[1]~18\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \transmitter|clk_delay_counter\(2),
	datad => VCC,
	cin => \transmitter|clk_delay_counter[1]~18\,
	combout => \transmitter|clk_delay_counter[2]~19_combout\,
	cout => \transmitter|clk_delay_counter[2]~20\);

-- Location: FF_X21_Y27_N7
\transmitter|clk_delay_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \transmitter|clk_delay_counter[2]~19_combout\,
	sclr => \transmitter|ALT_INV_delay_clock~combout\,
	ena => \transmitter|clk_delay_counter[9]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \transmitter|clk_delay_counter\(2));

-- Location: LCCOMB_X21_Y27_N8
\transmitter|clk_delay_counter[3]~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \transmitter|clk_delay_counter[3]~21_combout\ = (\transmitter|clk_delay_counter\(3) & (!\transmitter|clk_delay_counter[2]~20\)) # (!\transmitter|clk_delay_counter\(3) & ((\transmitter|clk_delay_counter[2]~20\) # (GND)))
-- \transmitter|clk_delay_counter[3]~22\ = CARRY((!\transmitter|clk_delay_counter[2]~20\) # (!\transmitter|clk_delay_counter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \transmitter|clk_delay_counter\(3),
	datad => VCC,
	cin => \transmitter|clk_delay_counter[2]~20\,
	combout => \transmitter|clk_delay_counter[3]~21_combout\,
	cout => \transmitter|clk_delay_counter[3]~22\);

-- Location: FF_X21_Y27_N9
\transmitter|clk_delay_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \transmitter|clk_delay_counter[3]~21_combout\,
	sclr => \transmitter|ALT_INV_delay_clock~combout\,
	ena => \transmitter|clk_delay_counter[9]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \transmitter|clk_delay_counter\(3));

-- Location: LCCOMB_X21_Y27_N10
\transmitter|clk_delay_counter[4]~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \transmitter|clk_delay_counter[4]~23_combout\ = (\transmitter|clk_delay_counter\(4) & (\transmitter|clk_delay_counter[3]~22\ $ (GND))) # (!\transmitter|clk_delay_counter\(4) & (!\transmitter|clk_delay_counter[3]~22\ & VCC))
-- \transmitter|clk_delay_counter[4]~24\ = CARRY((\transmitter|clk_delay_counter\(4) & !\transmitter|clk_delay_counter[3]~22\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \transmitter|clk_delay_counter\(4),
	datad => VCC,
	cin => \transmitter|clk_delay_counter[3]~22\,
	combout => \transmitter|clk_delay_counter[4]~23_combout\,
	cout => \transmitter|clk_delay_counter[4]~24\);

-- Location: FF_X21_Y27_N11
\transmitter|clk_delay_counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \transmitter|clk_delay_counter[4]~23_combout\,
	sclr => \transmitter|ALT_INV_delay_clock~combout\,
	ena => \transmitter|clk_delay_counter[9]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \transmitter|clk_delay_counter\(4));

-- Location: LCCOMB_X21_Y27_N12
\transmitter|clk_delay_counter[5]~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \transmitter|clk_delay_counter[5]~25_combout\ = (\transmitter|clk_delay_counter\(5) & (!\transmitter|clk_delay_counter[4]~24\)) # (!\transmitter|clk_delay_counter\(5) & ((\transmitter|clk_delay_counter[4]~24\) # (GND)))
-- \transmitter|clk_delay_counter[5]~26\ = CARRY((!\transmitter|clk_delay_counter[4]~24\) # (!\transmitter|clk_delay_counter\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \transmitter|clk_delay_counter\(5),
	datad => VCC,
	cin => \transmitter|clk_delay_counter[4]~24\,
	combout => \transmitter|clk_delay_counter[5]~25_combout\,
	cout => \transmitter|clk_delay_counter[5]~26\);

-- Location: FF_X21_Y27_N13
\transmitter|clk_delay_counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \transmitter|clk_delay_counter[5]~25_combout\,
	sclr => \transmitter|ALT_INV_delay_clock~combout\,
	ena => \transmitter|clk_delay_counter[9]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \transmitter|clk_delay_counter\(5));

-- Location: LCCOMB_X21_Y27_N14
\transmitter|clk_delay_counter[6]~27\ : cycloneiii_lcell_comb
-- Equation(s):
-- \transmitter|clk_delay_counter[6]~27_combout\ = (\transmitter|clk_delay_counter\(6) & (\transmitter|clk_delay_counter[5]~26\ $ (GND))) # (!\transmitter|clk_delay_counter\(6) & (!\transmitter|clk_delay_counter[5]~26\ & VCC))
-- \transmitter|clk_delay_counter[6]~28\ = CARRY((\transmitter|clk_delay_counter\(6) & !\transmitter|clk_delay_counter[5]~26\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \transmitter|clk_delay_counter\(6),
	datad => VCC,
	cin => \transmitter|clk_delay_counter[5]~26\,
	combout => \transmitter|clk_delay_counter[6]~27_combout\,
	cout => \transmitter|clk_delay_counter[6]~28\);

-- Location: FF_X21_Y27_N15
\transmitter|clk_delay_counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \transmitter|clk_delay_counter[6]~27_combout\,
	sclr => \transmitter|ALT_INV_delay_clock~combout\,
	ena => \transmitter|clk_delay_counter[9]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \transmitter|clk_delay_counter\(6));

-- Location: LCCOMB_X21_Y27_N16
\transmitter|clk_delay_counter[7]~29\ : cycloneiii_lcell_comb
-- Equation(s):
-- \transmitter|clk_delay_counter[7]~29_combout\ = (\transmitter|clk_delay_counter\(7) & (!\transmitter|clk_delay_counter[6]~28\)) # (!\transmitter|clk_delay_counter\(7) & ((\transmitter|clk_delay_counter[6]~28\) # (GND)))
-- \transmitter|clk_delay_counter[7]~30\ = CARRY((!\transmitter|clk_delay_counter[6]~28\) # (!\transmitter|clk_delay_counter\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \transmitter|clk_delay_counter\(7),
	datad => VCC,
	cin => \transmitter|clk_delay_counter[6]~28\,
	combout => \transmitter|clk_delay_counter[7]~29_combout\,
	cout => \transmitter|clk_delay_counter[7]~30\);

-- Location: FF_X21_Y27_N17
\transmitter|clk_delay_counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \transmitter|clk_delay_counter[7]~29_combout\,
	sclr => \transmitter|ALT_INV_delay_clock~combout\,
	ena => \transmitter|clk_delay_counter[9]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \transmitter|clk_delay_counter\(7));

-- Location: LCCOMB_X21_Y27_N18
\transmitter|clk_delay_counter[8]~31\ : cycloneiii_lcell_comb
-- Equation(s):
-- \transmitter|clk_delay_counter[8]~31_combout\ = (\transmitter|clk_delay_counter\(8) & (\transmitter|clk_delay_counter[7]~30\ $ (GND))) # (!\transmitter|clk_delay_counter\(8) & (!\transmitter|clk_delay_counter[7]~30\ & VCC))
-- \transmitter|clk_delay_counter[8]~32\ = CARRY((\transmitter|clk_delay_counter\(8) & !\transmitter|clk_delay_counter[7]~30\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \transmitter|clk_delay_counter\(8),
	datad => VCC,
	cin => \transmitter|clk_delay_counter[7]~30\,
	combout => \transmitter|clk_delay_counter[8]~31_combout\,
	cout => \transmitter|clk_delay_counter[8]~32\);

-- Location: FF_X21_Y27_N19
\transmitter|clk_delay_counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \transmitter|clk_delay_counter[8]~31_combout\,
	sclr => \transmitter|ALT_INV_delay_clock~combout\,
	ena => \transmitter|clk_delay_counter[9]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \transmitter|clk_delay_counter\(8));

-- Location: LCCOMB_X21_Y27_N20
\transmitter|clk_delay_counter[9]~33\ : cycloneiii_lcell_comb
-- Equation(s):
-- \transmitter|clk_delay_counter[9]~33_combout\ = (\transmitter|clk_delay_counter\(9) & (!\transmitter|clk_delay_counter[8]~32\)) # (!\transmitter|clk_delay_counter\(9) & ((\transmitter|clk_delay_counter[8]~32\) # (GND)))
-- \transmitter|clk_delay_counter[9]~34\ = CARRY((!\transmitter|clk_delay_counter[8]~32\) # (!\transmitter|clk_delay_counter\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \transmitter|clk_delay_counter\(9),
	datad => VCC,
	cin => \transmitter|clk_delay_counter[8]~32\,
	combout => \transmitter|clk_delay_counter[9]~33_combout\,
	cout => \transmitter|clk_delay_counter[9]~34\);

-- Location: FF_X21_Y27_N21
\transmitter|clk_delay_counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \transmitter|clk_delay_counter[9]~33_combout\,
	sclr => \transmitter|ALT_INV_delay_clock~combout\,
	ena => \transmitter|clk_delay_counter[9]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \transmitter|clk_delay_counter\(9));

-- Location: LCCOMB_X21_Y27_N22
\transmitter|clk_delay_counter[10]~35\ : cycloneiii_lcell_comb
-- Equation(s):
-- \transmitter|clk_delay_counter[10]~35_combout\ = (\transmitter|clk_delay_counter\(10) & (\transmitter|clk_delay_counter[9]~34\ $ (GND))) # (!\transmitter|clk_delay_counter\(10) & (!\transmitter|clk_delay_counter[9]~34\ & VCC))
-- \transmitter|clk_delay_counter[10]~36\ = CARRY((\transmitter|clk_delay_counter\(10) & !\transmitter|clk_delay_counter[9]~34\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \transmitter|clk_delay_counter\(10),
	datad => VCC,
	cin => \transmitter|clk_delay_counter[9]~34\,
	combout => \transmitter|clk_delay_counter[10]~35_combout\,
	cout => \transmitter|clk_delay_counter[10]~36\);

-- Location: FF_X21_Y27_N23
\transmitter|clk_delay_counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \transmitter|clk_delay_counter[10]~35_combout\,
	sclr => \transmitter|ALT_INV_delay_clock~combout\,
	ena => \transmitter|clk_delay_counter[9]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \transmitter|clk_delay_counter\(10));

-- Location: LCCOMB_X21_Y27_N24
\transmitter|clk_delay_counter[11]~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \transmitter|clk_delay_counter[11]~38_combout\ = \transmitter|clk_delay_counter[10]~36\ $ (\transmitter|clk_delay_counter\(11))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \transmitter|clk_delay_counter\(11),
	cin => \transmitter|clk_delay_counter[10]~36\,
	combout => \transmitter|clk_delay_counter[11]~38_combout\);

-- Location: FF_X21_Y27_N25
\transmitter|clk_delay_counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \transmitter|clk_delay_counter[11]~38_combout\,
	sclr => \transmitter|ALT_INV_delay_clock~combout\,
	ena => \transmitter|clk_delay_counter[9]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \transmitter|clk_delay_counter\(11));

-- Location: LCCOMB_X22_Y27_N30
\transmitter|delay_clock_done~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \transmitter|delay_clock_done~0_combout\ = (\transmitter|delay_clock~combout\ & (\transmitter|clk_delay_counter\(11) & ((\transmitter|clk_delay_counter[9]~14_combout\)))) # (!\transmitter|delay_clock~combout\ & (((\transmitter|delay_clock_done~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \transmitter|delay_clock~combout\,
	datab => \transmitter|clk_delay_counter\(11),
	datac => \transmitter|delay_clock_done~q\,
	datad => \transmitter|clk_delay_counter[9]~14_combout\,
	combout => \transmitter|delay_clock_done~0_combout\);

-- Location: FF_X22_Y27_N31
\transmitter|delay_clock_done\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \transmitter|delay_clock_done~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \transmitter|delay_clock_done~q\);

-- Location: LCCOMB_X22_Y27_N20
\transmitter|Selector2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \transmitter|Selector2~0_combout\ = (\transmitter|state.shift~q\) # (!\transmitter|delay_clock_done~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \transmitter|delay_clock_done~q\,
	datad => \transmitter|state.shift~q\,
	combout => \transmitter|Selector2~0_combout\);

-- Location: LCCOMB_X22_Y27_N28
\transmitter|delay_clock\ : cycloneiii_lcell_comb
-- Equation(s):
-- \transmitter|delay_clock~combout\ = (\transmitter|Selector3~0_combout\ & ((\transmitter|Selector2~0_combout\))) # (!\transmitter|Selector3~0_combout\ & (\transmitter|delay_clock~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \transmitter|delay_clock~combout\,
	datac => \transmitter|Selector3~0_combout\,
	datad => \transmitter|Selector2~0_combout\,
	combout => \transmitter|delay_clock~combout\);

-- Location: LCCOMB_X22_Y27_N10
\transmitter|tx_ready~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \transmitter|tx_ready~0_combout\ = (!\transmitter|state.init~q\ & (\transmitter|tx_ready_reg~q\ & !\transmitter|delay_clock~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \transmitter|state.init~q\,
	datac => \transmitter|tx_ready_reg~q\,
	datad => \transmitter|delay_clock~combout\,
	combout => \transmitter|tx_ready~0_combout\);

ww_Rx_data_valid <= \Rx_data_valid~output_o\;

ww_RxData(0) <= \RxData[0]~output_o\;

ww_RxData(1) <= \RxData[1]~output_o\;

ww_RxData(2) <= \RxData[2]~output_o\;

ww_RxData(3) <= \RxData[3]~output_o\;

ww_RxData(4) <= \RxData[4]~output_o\;

ww_RxData(5) <= \RxData[5]~output_o\;

ww_RxData(6) <= \RxData[6]~output_o\;

ww_RxData(7) <= \RxData[7]~output_o\;

ww_Tx <= \Tx~output_o\;

ww_TxReady <= \TxReady~output_o\;
END structure;


