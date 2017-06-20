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

-- DATE "08/06/2016 19:06:18"

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

ENTITY 	VGA IS
    PORT (
	CLK_50MHz : IN std_logic;
	RST : IN std_logic;
	HSYNC : OUT std_logic;
	VSYNC : OUT std_logic;
	R : OUT std_logic_vector(3 DOWNTO 0);
	G : OUT std_logic_vector(3 DOWNTO 0);
	B : OUT std_logic_vector(3 DOWNTO 0);
	IZQ : IN std_logic;
	DER : IN std_logic;
	DO : IN std_logic;
	RE : IN std_logic;
	MI : IN std_logic;
	FA : IN std_logic;
	SOL : IN std_logic;
	LA : IN std_logic;
	SI : IN std_logic;
	DOB : IN std_logic;
	SPEAKER : OUT std_logic
	);
END VGA;

-- Design Ports Information
-- HSYNC	=>  Location: PIN_L21,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- VSYNC	=>  Location: PIN_L22,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- R[0]	=>  Location: PIN_H19,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- R[1]	=>  Location: PIN_H17,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- R[2]	=>  Location: PIN_H20,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- R[3]	=>  Location: PIN_H21,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- G[0]	=>  Location: PIN_H22,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- G[1]	=>  Location: PIN_J17,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- G[2]	=>  Location: PIN_K17,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- G[3]	=>  Location: PIN_J21,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- B[0]	=>  Location: PIN_K22,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- B[1]	=>  Location: PIN_K21,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- B[2]	=>  Location: PIN_J22,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- B[3]	=>  Location: PIN_K18,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- IZQ	=>  Location: PIN_AB17,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- DER	=>  Location: PIN_E12,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- SPEAKER	=>  Location: PIN_T12,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- RST	=>  Location: PIN_J6,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- CLK_50MHz	=>  Location: PIN_G21,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- DOB	=>  Location: PIN_V15,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- DO	=>  Location: PIN_F1,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- RE	=>  Location: PIN_G3,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- MI	=>  Location: PIN_H2,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- FA	=>  Location: PIN_R14,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- SI	=>  Location: PIN_AB9,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- LA	=>  Location: PIN_AA9,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- SOL	=>  Location: PIN_AB7,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default


ARCHITECTURE structure OF VGA IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_CLK_50MHz : std_logic;
SIGNAL ww_RST : std_logic;
SIGNAL ww_HSYNC : std_logic;
SIGNAL ww_VSYNC : std_logic;
SIGNAL ww_R : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_G : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_B : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_IZQ : std_logic;
SIGNAL ww_DER : std_logic;
SIGNAL ww_DO : std_logic;
SIGNAL ww_RE : std_logic;
SIGNAL ww_MI : std_logic;
SIGNAL ww_FA : std_logic;
SIGNAL ww_SOL : std_logic;
SIGNAL ww_LA : std_logic;
SIGNAL ww_SI : std_logic;
SIGNAL ww_DOB : std_logic;
SIGNAL ww_SPEAKER : std_logic;
SIGNAL \CLK100|C100HZ~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CLK|TEMPORAL~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CLK_50MHz~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \SYNC|Add1~0_combout\ : std_logic;
SIGNAL \SYNC|Add1~16_combout\ : std_logic;
SIGNAL \Add1~12_combout\ : std_logic;
SIGNAL \Add2~2_combout\ : std_logic;
SIGNAL \Add2~12_combout\ : std_logic;
SIGNAL \Add0~4_combout\ : std_logic;
SIGNAL \Add4~0_combout\ : std_logic;
SIGNAL \Add4~12_combout\ : std_logic;
SIGNAL \Add4~16_combout\ : std_logic;
SIGNAL \Add5~0_combout\ : std_logic;
SIGNAL \Add5~2_combout\ : std_logic;
SIGNAL \Add5~10_combout\ : std_logic;
SIGNAL \Add5~14_combout\ : std_logic;
SIGNAL \Add5~16_combout\ : std_logic;
SIGNAL \Add5~18_combout\ : std_logic;
SIGNAL \Add5~30_combout\ : std_logic;
SIGNAL \FALLING_BLOCK_I[6]~44_combout\ : std_logic;
SIGNAL \Add1~34_combout\ : std_logic;
SIGNAL \Add1~61\ : std_logic;
SIGNAL \Add1~62_combout\ : std_logic;
SIGNAL \Add6~44_combout\ : std_logic;
SIGNAL \Add6~61\ : std_logic;
SIGNAL \Add6~62_combout\ : std_logic;
SIGNAL \Add4~43_combout\ : std_logic;
SIGNAL \Add4~45_combout\ : std_logic;
SIGNAL \Add4~47_combout\ : std_logic;
SIGNAL \Add4~51_combout\ : std_logic;
SIGNAL \Add4~53_combout\ : std_logic;
SIGNAL \Add4~55_combout\ : std_logic;
SIGNAL \Add4~57_combout\ : std_logic;
SIGNAL \Add4~59_combout\ : std_logic;
SIGNAL \Add4~63_combout\ : std_logic;
SIGNAL \Add2~22_combout\ : std_logic;
SIGNAL \Add2~26_combout\ : std_logic;
SIGNAL \Add2~40_combout\ : std_logic;
SIGNAL \Add2~46_combout\ : std_logic;
SIGNAL \Add2~58_combout\ : std_logic;
SIGNAL \Add5~37_combout\ : std_logic;
SIGNAL \Add5~39_combout\ : std_logic;
SIGNAL \Add5~41_combout\ : std_logic;
SIGNAL \Add5~43_combout\ : std_logic;
SIGNAL \Add5~45_combout\ : std_logic;
SIGNAL \Add5~47_combout\ : std_logic;
SIGNAL \Add5~59_combout\ : std_logic;
SIGNAL \Add5~61_combout\ : std_logic;
SIGNAL \Add5~63_combout\ : std_logic;
SIGNAL \Add5~65_combout\ : std_logic;
SIGNAL \Add5~67_combout\ : std_logic;
SIGNAL \Add5~69_combout\ : std_logic;
SIGNAL \Add5~71_combout\ : std_logic;
SIGNAL \Add0~28_combout\ : std_logic;
SIGNAL \Add0~32_combout\ : std_logic;
SIGNAL \Add0~50_combout\ : std_logic;
SIGNAL \Add0~56_combout\ : std_logic;
SIGNAL \Add0~61\ : std_logic;
SIGNAL \Add0~62_combout\ : std_logic;
SIGNAL \FALLING_BLOCK_I[11]~56_combout\ : std_logic;
SIGNAL \FALLING_BLOCK_I[13]~60_combout\ : std_logic;
SIGNAL \FALLING_BLOCK_I[15]~64_combout\ : std_logic;
SIGNAL \FALLING_BLOCK_I[19]~72_combout\ : std_logic;
SIGNAL \FALLING_BLOCK_I[21]~76_combout\ : std_logic;
SIGNAL \FALLING_BLOCK_I[22]~78_combout\ : std_logic;
SIGNAL \FALLING_BLOCK_I[30]~95\ : std_logic;
SIGNAL \FALLING_BLOCK_I[31]~96_combout\ : std_logic;
SIGNAL \PIANOSPEAKER|COUNTER440[5]~42_combout\ : std_logic;
SIGNAL \PIANOSPEAKER|COUNTER440[11]~54_combout\ : std_logic;
SIGNAL \PIANOSPEAKER|COUNTER440[13]~58_combout\ : std_logic;
SIGNAL \PIANOSPEAKER|COUNTER440[19]~70_combout\ : std_logic;
SIGNAL \PIANOSPEAKER|COUNTER440[22]~76_combout\ : std_logic;
SIGNAL \PIANOSPEAKER|COUNTER494[0]~32_combout\ : std_logic;
SIGNAL \PIANOSPEAKER|COUNTER494[0]~33\ : std_logic;
SIGNAL \PIANOSPEAKER|COUNTER494[1]~34_combout\ : std_logic;
SIGNAL \PIANOSPEAKER|COUNTER494[1]~35\ : std_logic;
SIGNAL \PIANOSPEAKER|COUNTER494[2]~36_combout\ : std_logic;
SIGNAL \PIANOSPEAKER|COUNTER494[2]~37\ : std_logic;
SIGNAL \PIANOSPEAKER|COUNTER494[3]~38_combout\ : std_logic;
SIGNAL \PIANOSPEAKER|COUNTER494[3]~39\ : std_logic;
SIGNAL \PIANOSPEAKER|COUNTER494[4]~40_combout\ : std_logic;
SIGNAL \PIANOSPEAKER|COUNTER494[4]~41\ : std_logic;
SIGNAL \PIANOSPEAKER|COUNTER494[5]~42_combout\ : std_logic;
SIGNAL \PIANOSPEAKER|COUNTER494[5]~43\ : std_logic;
SIGNAL \PIANOSPEAKER|COUNTER494[6]~44_combout\ : std_logic;
SIGNAL \PIANOSPEAKER|COUNTER494[6]~45\ : std_logic;
SIGNAL \PIANOSPEAKER|COUNTER494[7]~46_combout\ : std_logic;
SIGNAL \PIANOSPEAKER|COUNTER494[7]~47\ : std_logic;
SIGNAL \PIANOSPEAKER|COUNTER494[8]~48_combout\ : std_logic;
SIGNAL \PIANOSPEAKER|COUNTER494[8]~49\ : std_logic;
SIGNAL \PIANOSPEAKER|COUNTER494[9]~50_combout\ : std_logic;
SIGNAL \PIANOSPEAKER|COUNTER494[9]~51\ : std_logic;
SIGNAL \PIANOSPEAKER|COUNTER494[10]~52_combout\ : std_logic;
SIGNAL \PIANOSPEAKER|COUNTER494[10]~53\ : std_logic;
SIGNAL \PIANOSPEAKER|COUNTER494[11]~54_combout\ : std_logic;
SIGNAL \PIANOSPEAKER|COUNTER494[11]~55\ : std_logic;
SIGNAL \PIANOSPEAKER|COUNTER494[12]~56_combout\ : std_logic;
SIGNAL \PIANOSPEAKER|COUNTER494[12]~57\ : std_logic;
SIGNAL \PIANOSPEAKER|COUNTER494[13]~58_combout\ : std_logic;
SIGNAL \PIANOSPEAKER|COUNTER494[13]~59\ : std_logic;
SIGNAL \PIANOSPEAKER|COUNTER494[14]~60_combout\ : std_logic;
SIGNAL \PIANOSPEAKER|COUNTER494[14]~61\ : std_logic;
SIGNAL \PIANOSPEAKER|COUNTER494[15]~62_combout\ : std_logic;
SIGNAL \PIANOSPEAKER|COUNTER494[15]~63\ : std_logic;
SIGNAL \PIANOSPEAKER|COUNTER494[16]~64_combout\ : std_logic;
SIGNAL \PIANOSPEAKER|COUNTER494[16]~65\ : std_logic;
SIGNAL \PIANOSPEAKER|COUNTER494[17]~66_combout\ : std_logic;
SIGNAL \PIANOSPEAKER|COUNTER494[17]~67\ : std_logic;
SIGNAL \PIANOSPEAKER|COUNTER494[18]~68_combout\ : std_logic;
SIGNAL \PIANOSPEAKER|COUNTER494[18]~69\ : std_logic;
SIGNAL \PIANOSPEAKER|COUNTER494[19]~70_combout\ : std_logic;
SIGNAL \PIANOSPEAKER|COUNTER494[19]~71\ : std_logic;
SIGNAL \PIANOSPEAKER|COUNTER494[20]~72_combout\ : std_logic;
SIGNAL \PIANOSPEAKER|COUNTER494[20]~73\ : std_logic;
SIGNAL \PIANOSPEAKER|COUNTER494[21]~74_combout\ : std_logic;
SIGNAL \PIANOSPEAKER|COUNTER494[21]~75\ : std_logic;
SIGNAL \PIANOSPEAKER|COUNTER494[22]~76_combout\ : std_logic;
SIGNAL \PIANOSPEAKER|COUNTER494[22]~77\ : std_logic;
SIGNAL \PIANOSPEAKER|COUNTER494[23]~78_combout\ : std_logic;
SIGNAL \PIANOSPEAKER|COUNTER494[23]~79\ : std_logic;
SIGNAL \PIANOSPEAKER|COUNTER494[24]~80_combout\ : std_logic;
SIGNAL \PIANOSPEAKER|COUNTER494[24]~81\ : std_logic;
SIGNAL \PIANOSPEAKER|COUNTER494[25]~82_combout\ : std_logic;
SIGNAL \PIANOSPEAKER|COUNTER494[25]~83\ : std_logic;
SIGNAL \PIANOSPEAKER|COUNTER494[26]~84_combout\ : std_logic;
SIGNAL \PIANOSPEAKER|COUNTER494[26]~85\ : std_logic;
SIGNAL \PIANOSPEAKER|COUNTER494[27]~86_combout\ : std_logic;
SIGNAL \PIANOSPEAKER|COUNTER494[27]~87\ : std_logic;
SIGNAL \PIANOSPEAKER|COUNTER494[28]~88_combout\ : std_logic;
SIGNAL \PIANOSPEAKER|COUNTER494[28]~89\ : std_logic;
SIGNAL \PIANOSPEAKER|COUNTER494[29]~90_combout\ : std_logic;
SIGNAL \PIANOSPEAKER|COUNTER494[29]~91\ : std_logic;
SIGNAL \PIANOSPEAKER|COUNTER494[30]~92_combout\ : std_logic;
SIGNAL \PIANOSPEAKER|COUNTER494[30]~93\ : std_logic;
SIGNAL \PIANOSPEAKER|COUNTER494[31]~94_combout\ : std_logic;
SIGNAL \PIANOSPEAKER|COUNTER587[0]~32_combout\ : std_logic;
SIGNAL \PIANOSPEAKER|COUNTER587[0]~33\ : std_logic;
SIGNAL \PIANOSPEAKER|COUNTER587[1]~34_combout\ : std_logic;
SIGNAL \PIANOSPEAKER|COUNTER587[1]~35\ : std_logic;
SIGNAL \PIANOSPEAKER|COUNTER587[2]~36_combout\ : std_logic;
SIGNAL \PIANOSPEAKER|COUNTER587[2]~37\ : std_logic;
SIGNAL \PIANOSPEAKER|COUNTER587[3]~38_combout\ : std_logic;
SIGNAL \PIANOSPEAKER|COUNTER587[3]~39\ : std_logic;
SIGNAL \PIANOSPEAKER|COUNTER587[4]~40_combout\ : std_logic;
SIGNAL \PIANOSPEAKER|COUNTER587[4]~41\ : std_logic;
SIGNAL \PIANOSPEAKER|COUNTER587[5]~42_combout\ : std_logic;
SIGNAL \PIANOSPEAKER|COUNTER587[5]~43\ : std_logic;
SIGNAL \PIANOSPEAKER|COUNTER587[6]~44_combout\ : std_logic;
SIGNAL \PIANOSPEAKER|COUNTER587[6]~45\ : std_logic;
SIGNAL \PIANOSPEAKER|COUNTER587[7]~46_combout\ : std_logic;
SIGNAL \PIANOSPEAKER|COUNTER587[7]~47\ : std_logic;
SIGNAL \PIANOSPEAKER|COUNTER587[8]~48_combout\ : std_logic;
SIGNAL \PIANOSPEAKER|COUNTER587[8]~49\ : std_logic;
SIGNAL \PIANOSPEAKER|COUNTER587[9]~50_combout\ : std_logic;
SIGNAL \PIANOSPEAKER|COUNTER587[9]~51\ : std_logic;
SIGNAL \PIANOSPEAKER|COUNTER587[10]~52_combout\ : std_logic;
SIGNAL \PIANOSPEAKER|COUNTER587[10]~53\ : std_logic;
SIGNAL \PIANOSPEAKER|COUNTER587[11]~54_combout\ : std_logic;
SIGNAL \PIANOSPEAKER|COUNTER587[11]~55\ : std_logic;
SIGNAL \PIANOSPEAKER|COUNTER587[12]~56_combout\ : std_logic;
SIGNAL \PIANOSPEAKER|COUNTER587[12]~57\ : std_logic;
SIGNAL \PIANOSPEAKER|COUNTER587[13]~58_combout\ : std_logic;
SIGNAL \PIANOSPEAKER|COUNTER587[13]~59\ : std_logic;
SIGNAL \PIANOSPEAKER|COUNTER587[14]~60_combout\ : std_logic;
SIGNAL \PIANOSPEAKER|COUNTER587[14]~61\ : std_logic;
SIGNAL \PIANOSPEAKER|COUNTER587[15]~62_combout\ : std_logic;
SIGNAL \PIANOSPEAKER|COUNTER587[15]~63\ : std_logic;
SIGNAL \PIANOSPEAKER|COUNTER587[16]~64_combout\ : std_logic;
SIGNAL \PIANOSPEAKER|COUNTER587[16]~65\ : std_logic;
SIGNAL \PIANOSPEAKER|COUNTER587[17]~66_combout\ : std_logic;
SIGNAL \PIANOSPEAKER|COUNTER587[17]~67\ : std_logic;
SIGNAL \PIANOSPEAKER|COUNTER587[18]~68_combout\ : std_logic;
SIGNAL \PIANOSPEAKER|COUNTER587[18]~69\ : std_logic;
SIGNAL \PIANOSPEAKER|COUNTER587[19]~70_combout\ : std_logic;
SIGNAL \PIANOSPEAKER|COUNTER587[19]~71\ : std_logic;
SIGNAL \PIANOSPEAKER|COUNTER587[20]~72_combout\ : std_logic;
SIGNAL \PIANOSPEAKER|COUNTER587[20]~73\ : std_logic;
SIGNAL \PIANOSPEAKER|COUNTER587[21]~74_combout\ : std_logic;
SIGNAL \PIANOSPEAKER|COUNTER587[21]~75\ : std_logic;
SIGNAL \PIANOSPEAKER|COUNTER587[22]~76_combout\ : std_logic;
SIGNAL \PIANOSPEAKER|COUNTER587[22]~77\ : std_logic;
SIGNAL \PIANOSPEAKER|COUNTER587[23]~78_combout\ : std_logic;
SIGNAL \PIANOSPEAKER|COUNTER587[23]~79\ : std_logic;
SIGNAL \PIANOSPEAKER|COUNTER587[24]~80_combout\ : std_logic;
SIGNAL \PIANOSPEAKER|COUNTER587[24]~81\ : std_logic;
SIGNAL \PIANOSPEAKER|COUNTER587[25]~82_combout\ : std_logic;
SIGNAL \PIANOSPEAKER|COUNTER587[25]~83\ : std_logic;
SIGNAL \PIANOSPEAKER|COUNTER587[26]~84_combout\ : std_logic;
SIGNAL \PIANOSPEAKER|COUNTER587[26]~85\ : std_logic;
SIGNAL \PIANOSPEAKER|COUNTER587[27]~86_combout\ : std_logic;
SIGNAL \PIANOSPEAKER|COUNTER587[27]~87\ : std_logic;
SIGNAL \PIANOSPEAKER|COUNTER587[28]~88_combout\ : std_logic;
SIGNAL \PIANOSPEAKER|COUNTER587[28]~89\ : std_logic;
SIGNAL \PIANOSPEAKER|COUNTER587[29]~90_combout\ : std_logic;
SIGNAL \PIANOSPEAKER|COUNTER587[29]~91\ : std_logic;
SIGNAL \PIANOSPEAKER|COUNTER587[30]~92_combout\ : std_logic;
SIGNAL \PIANOSPEAKER|COUNTER587[30]~93\ : std_logic;
SIGNAL \PIANOSPEAKER|COUNTER587[31]~94_combout\ : std_logic;
SIGNAL \PIANOSPEAKER|COUNTER659[3]~38_combout\ : std_logic;
SIGNAL \PIANOSPEAKER|COUNTER659[22]~76_combout\ : std_logic;
SIGNAL \PIANOSPEAKER|COUNTER659[27]~87\ : std_logic;
SIGNAL \PIANOSPEAKER|COUNTER659[28]~88_combout\ : std_logic;
SIGNAL \PIANOSPEAKER|COUNTER659[28]~89\ : std_logic;
SIGNAL \PIANOSPEAKER|COUNTER659[29]~90_combout\ : std_logic;
SIGNAL \PIANOSPEAKER|COUNTER659[29]~91\ : std_logic;
SIGNAL \PIANOSPEAKER|COUNTER659[30]~92_combout\ : std_logic;
SIGNAL \PIANOSPEAKER|COUNTER659[30]~93\ : std_logic;
SIGNAL \PIANOSPEAKER|COUNTER659[31]~94_combout\ : std_logic;
SIGNAL \PIANOSPEAKER|COUNTER698[0]~32_combout\ : std_logic;
SIGNAL \PIANOSPEAKER|COUNTER698[0]~33\ : std_logic;
SIGNAL \PIANOSPEAKER|COUNTER698[1]~34_combout\ : std_logic;
SIGNAL \PIANOSPEAKER|COUNTER698[1]~35\ : std_logic;
SIGNAL \PIANOSPEAKER|COUNTER698[2]~36_combout\ : std_logic;
SIGNAL \PIANOSPEAKER|COUNTER698[2]~37\ : std_logic;
SIGNAL \PIANOSPEAKER|COUNTER698[3]~38_combout\ : std_logic;
SIGNAL \PIANOSPEAKER|COUNTER698[3]~39\ : std_logic;
SIGNAL \PIANOSPEAKER|COUNTER698[4]~40_combout\ : std_logic;
SIGNAL \PIANOSPEAKER|COUNTER698[4]~41\ : std_logic;
SIGNAL \PIANOSPEAKER|COUNTER698[5]~42_combout\ : std_logic;
SIGNAL \PIANOSPEAKER|COUNTER698[5]~43\ : std_logic;
SIGNAL \PIANOSPEAKER|COUNTER698[6]~44_combout\ : std_logic;
SIGNAL \PIANOSPEAKER|COUNTER698[6]~45\ : std_logic;
SIGNAL \PIANOSPEAKER|COUNTER698[7]~46_combout\ : std_logic;
SIGNAL \PIANOSPEAKER|COUNTER698[7]~47\ : std_logic;
SIGNAL \PIANOSPEAKER|COUNTER698[8]~48_combout\ : std_logic;
SIGNAL \PIANOSPEAKER|COUNTER698[8]~49\ : std_logic;
SIGNAL \PIANOSPEAKER|COUNTER698[9]~50_combout\ : std_logic;
SIGNAL \PIANOSPEAKER|COUNTER698[9]~51\ : std_logic;
SIGNAL \PIANOSPEAKER|COUNTER698[10]~52_combout\ : std_logic;
SIGNAL \PIANOSPEAKER|COUNTER698[10]~53\ : std_logic;
SIGNAL \PIANOSPEAKER|COUNTER698[11]~54_combout\ : std_logic;
SIGNAL \PIANOSPEAKER|COUNTER698[11]~55\ : std_logic;
SIGNAL \PIANOSPEAKER|COUNTER698[12]~56_combout\ : std_logic;
SIGNAL \PIANOSPEAKER|COUNTER698[12]~57\ : std_logic;
SIGNAL \PIANOSPEAKER|COUNTER698[13]~58_combout\ : std_logic;
SIGNAL \PIANOSPEAKER|COUNTER698[13]~59\ : std_logic;
SIGNAL \PIANOSPEAKER|COUNTER698[14]~60_combout\ : std_logic;
SIGNAL \PIANOSPEAKER|COUNTER698[14]~61\ : std_logic;
SIGNAL \PIANOSPEAKER|COUNTER698[15]~62_combout\ : std_logic;
SIGNAL \PIANOSPEAKER|COUNTER698[15]~63\ : std_logic;
SIGNAL \PIANOSPEAKER|COUNTER698[16]~64_combout\ : std_logic;
SIGNAL \PIANOSPEAKER|COUNTER698[16]~65\ : std_logic;
SIGNAL \PIANOSPEAKER|COUNTER698[17]~66_combout\ : std_logic;
SIGNAL \PIANOSPEAKER|COUNTER698[17]~67\ : std_logic;
SIGNAL \PIANOSPEAKER|COUNTER698[18]~68_combout\ : std_logic;
SIGNAL \PIANOSPEAKER|COUNTER698[18]~69\ : std_logic;
SIGNAL \PIANOSPEAKER|COUNTER698[19]~70_combout\ : std_logic;
SIGNAL \PIANOSPEAKER|COUNTER698[19]~71\ : std_logic;
SIGNAL \PIANOSPEAKER|COUNTER698[20]~72_combout\ : std_logic;
SIGNAL \PIANOSPEAKER|COUNTER698[20]~73\ : std_logic;
SIGNAL \PIANOSPEAKER|COUNTER698[21]~74_combout\ : std_logic;
SIGNAL \PIANOSPEAKER|COUNTER698[21]~75\ : std_logic;
SIGNAL \PIANOSPEAKER|COUNTER698[22]~76_combout\ : std_logic;
SIGNAL \PIANOSPEAKER|COUNTER698[22]~77\ : std_logic;
SIGNAL \PIANOSPEAKER|COUNTER698[23]~78_combout\ : std_logic;
SIGNAL \PIANOSPEAKER|COUNTER698[23]~79\ : std_logic;
SIGNAL \PIANOSPEAKER|COUNTER698[24]~80_combout\ : std_logic;
SIGNAL \PIANOSPEAKER|COUNTER698[24]~81\ : std_logic;
SIGNAL \PIANOSPEAKER|COUNTER698[25]~82_combout\ : std_logic;
SIGNAL \PIANOSPEAKER|COUNTER698[25]~83\ : std_logic;
SIGNAL \PIANOSPEAKER|COUNTER698[26]~84_combout\ : std_logic;
SIGNAL \PIANOSPEAKER|COUNTER698[26]~85\ : std_logic;
SIGNAL \PIANOSPEAKER|COUNTER698[27]~86_combout\ : std_logic;
SIGNAL \PIANOSPEAKER|COUNTER698[27]~87\ : std_logic;
SIGNAL \PIANOSPEAKER|COUNTER698[28]~88_combout\ : std_logic;
SIGNAL \PIANOSPEAKER|COUNTER698[28]~89\ : std_logic;
SIGNAL \PIANOSPEAKER|COUNTER698[29]~90_combout\ : std_logic;
SIGNAL \PIANOSPEAKER|COUNTER698[29]~91\ : std_logic;
SIGNAL \PIANOSPEAKER|COUNTER698[30]~92_combout\ : std_logic;
SIGNAL \PIANOSPEAKER|COUNTER698[30]~93\ : std_logic;
SIGNAL \PIANOSPEAKER|COUNTER698[31]~94_combout\ : std_logic;
SIGNAL \PIANOSPEAKER|COUNTER784[0]~32_combout\ : std_logic;
SIGNAL \PIANOSPEAKER|COUNTER784[0]~33\ : std_logic;
SIGNAL \PIANOSPEAKER|COUNTER784[1]~34_combout\ : std_logic;
SIGNAL \PIANOSPEAKER|COUNTER784[1]~35\ : std_logic;
SIGNAL \PIANOSPEAKER|COUNTER784[2]~36_combout\ : std_logic;
SIGNAL \PIANOSPEAKER|COUNTER784[2]~37\ : std_logic;
SIGNAL \PIANOSPEAKER|COUNTER784[3]~38_combout\ : std_logic;
SIGNAL \PIANOSPEAKER|COUNTER784[3]~39\ : std_logic;
SIGNAL \PIANOSPEAKER|COUNTER784[4]~40_combout\ : std_logic;
SIGNAL \PIANOSPEAKER|COUNTER784[4]~41\ : std_logic;
SIGNAL \PIANOSPEAKER|COUNTER784[5]~42_combout\ : std_logic;
SIGNAL \PIANOSPEAKER|COUNTER784[5]~43\ : std_logic;
SIGNAL \PIANOSPEAKER|COUNTER784[6]~44_combout\ : std_logic;
SIGNAL \PIANOSPEAKER|COUNTER784[6]~45\ : std_logic;
SIGNAL \PIANOSPEAKER|COUNTER784[7]~46_combout\ : std_logic;
SIGNAL \PIANOSPEAKER|COUNTER784[7]~47\ : std_logic;
SIGNAL \PIANOSPEAKER|COUNTER784[8]~48_combout\ : std_logic;
SIGNAL \PIANOSPEAKER|COUNTER784[8]~49\ : std_logic;
SIGNAL \PIANOSPEAKER|COUNTER784[9]~50_combout\ : std_logic;
SIGNAL \PIANOSPEAKER|COUNTER784[9]~51\ : std_logic;
SIGNAL \PIANOSPEAKER|COUNTER784[10]~52_combout\ : std_logic;
SIGNAL \PIANOSPEAKER|COUNTER784[10]~53\ : std_logic;
SIGNAL \PIANOSPEAKER|COUNTER784[11]~54_combout\ : std_logic;
SIGNAL \PIANOSPEAKER|COUNTER784[11]~55\ : std_logic;
SIGNAL \PIANOSPEAKER|COUNTER784[12]~56_combout\ : std_logic;
SIGNAL \PIANOSPEAKER|COUNTER784[12]~57\ : std_logic;
SIGNAL \PIANOSPEAKER|COUNTER784[13]~58_combout\ : std_logic;
SIGNAL \PIANOSPEAKER|COUNTER784[13]~59\ : std_logic;
SIGNAL \PIANOSPEAKER|COUNTER784[14]~60_combout\ : std_logic;
SIGNAL \PIANOSPEAKER|COUNTER784[14]~61\ : std_logic;
SIGNAL \PIANOSPEAKER|COUNTER784[15]~62_combout\ : std_logic;
SIGNAL \PIANOSPEAKER|COUNTER784[15]~63\ : std_logic;
SIGNAL \PIANOSPEAKER|COUNTER784[16]~64_combout\ : std_logic;
SIGNAL \PIANOSPEAKER|COUNTER784[16]~65\ : std_logic;
SIGNAL \PIANOSPEAKER|COUNTER784[17]~66_combout\ : std_logic;
SIGNAL \PIANOSPEAKER|COUNTER784[17]~67\ : std_logic;
SIGNAL \PIANOSPEAKER|COUNTER784[18]~68_combout\ : std_logic;
SIGNAL \PIANOSPEAKER|COUNTER784[18]~69\ : std_logic;
SIGNAL \PIANOSPEAKER|COUNTER784[19]~70_combout\ : std_logic;
SIGNAL \PIANOSPEAKER|COUNTER784[19]~71\ : std_logic;
SIGNAL \PIANOSPEAKER|COUNTER784[20]~72_combout\ : std_logic;
SIGNAL \PIANOSPEAKER|COUNTER784[20]~73\ : std_logic;
SIGNAL \PIANOSPEAKER|COUNTER784[21]~74_combout\ : std_logic;
SIGNAL \PIANOSPEAKER|COUNTER784[21]~75\ : std_logic;
SIGNAL \PIANOSPEAKER|COUNTER784[22]~76_combout\ : std_logic;
SIGNAL \PIANOSPEAKER|COUNTER784[22]~77\ : std_logic;
SIGNAL \PIANOSPEAKER|COUNTER784[23]~78_combout\ : std_logic;
SIGNAL \PIANOSPEAKER|COUNTER784[23]~79\ : std_logic;
SIGNAL \PIANOSPEAKER|COUNTER784[24]~80_combout\ : std_logic;
SIGNAL \PIANOSPEAKER|COUNTER784[24]~81\ : std_logic;
SIGNAL \PIANOSPEAKER|COUNTER784[25]~82_combout\ : std_logic;
SIGNAL \PIANOSPEAKER|COUNTER784[25]~83\ : std_logic;
SIGNAL \PIANOSPEAKER|COUNTER784[26]~84_combout\ : std_logic;
SIGNAL \PIANOSPEAKER|COUNTER784[26]~85\ : std_logic;
SIGNAL \PIANOSPEAKER|COUNTER784[27]~86_combout\ : std_logic;
SIGNAL \PIANOSPEAKER|COUNTER784[27]~87\ : std_logic;
SIGNAL \PIANOSPEAKER|COUNTER784[28]~88_combout\ : std_logic;
SIGNAL \PIANOSPEAKER|COUNTER784[28]~89\ : std_logic;
SIGNAL \PIANOSPEAKER|COUNTER784[29]~90_combout\ : std_logic;
SIGNAL \PIANOSPEAKER|COUNTER784[29]~91\ : std_logic;
SIGNAL \PIANOSPEAKER|COUNTER784[30]~92_combout\ : std_logic;
SIGNAL \PIANOSPEAKER|COUNTER784[30]~93\ : std_logic;
SIGNAL \PIANOSPEAKER|COUNTER784[31]~94_combout\ : std_logic;
SIGNAL \PIANOSPEAKER|COUNTER800[3]~38_combout\ : std_logic;
SIGNAL \PIANOSPEAKER|COUNTER800[5]~42_combout\ : std_logic;
SIGNAL \PIANOSPEAKER|COUNTER800[6]~44_combout\ : std_logic;
SIGNAL \PIANOSPEAKER|COUNTER800[11]~54_combout\ : std_logic;
SIGNAL \PIANOSPEAKER|COUNTER800[15]~62_combout\ : std_logic;
SIGNAL \PIANOSPEAKER|COUNTER800[21]~74_combout\ : std_logic;
SIGNAL \PIANOSPEAKER|COUNTER800[22]~76_combout\ : std_logic;
SIGNAL \PIANOSPEAKER|COUNTER523[0]~32_combout\ : std_logic;
SIGNAL \PIANOSPEAKER|COUNTER523[0]~33\ : std_logic;
SIGNAL \PIANOSPEAKER|COUNTER523[1]~34_combout\ : std_logic;
SIGNAL \PIANOSPEAKER|COUNTER523[1]~35\ : std_logic;
SIGNAL \PIANOSPEAKER|COUNTER523[2]~36_combout\ : std_logic;
SIGNAL \PIANOSPEAKER|COUNTER523[2]~37\ : std_logic;
SIGNAL \PIANOSPEAKER|COUNTER523[3]~38_combout\ : std_logic;
SIGNAL \PIANOSPEAKER|COUNTER523[3]~39\ : std_logic;
SIGNAL \PIANOSPEAKER|COUNTER523[4]~40_combout\ : std_logic;
SIGNAL \PIANOSPEAKER|COUNTER523[4]~41\ : std_logic;
SIGNAL \PIANOSPEAKER|COUNTER523[5]~42_combout\ : std_logic;
SIGNAL \PIANOSPEAKER|COUNTER523[5]~43\ : std_logic;
SIGNAL \PIANOSPEAKER|COUNTER523[6]~44_combout\ : std_logic;
SIGNAL \PIANOSPEAKER|COUNTER523[6]~45\ : std_logic;
SIGNAL \PIANOSPEAKER|COUNTER523[7]~46_combout\ : std_logic;
SIGNAL \PIANOSPEAKER|COUNTER523[7]~47\ : std_logic;
SIGNAL \PIANOSPEAKER|COUNTER523[8]~48_combout\ : std_logic;
SIGNAL \PIANOSPEAKER|COUNTER523[8]~49\ : std_logic;
SIGNAL \PIANOSPEAKER|COUNTER523[9]~50_combout\ : std_logic;
SIGNAL \PIANOSPEAKER|COUNTER523[9]~51\ : std_logic;
SIGNAL \PIANOSPEAKER|COUNTER523[10]~52_combout\ : std_logic;
SIGNAL \PIANOSPEAKER|COUNTER523[10]~53\ : std_logic;
SIGNAL \PIANOSPEAKER|COUNTER523[11]~54_combout\ : std_logic;
SIGNAL \PIANOSPEAKER|COUNTER523[11]~55\ : std_logic;
SIGNAL \PIANOSPEAKER|COUNTER523[12]~56_combout\ : std_logic;
SIGNAL \PIANOSPEAKER|COUNTER523[12]~57\ : std_logic;
SIGNAL \PIANOSPEAKER|COUNTER523[13]~58_combout\ : std_logic;
SIGNAL \PIANOSPEAKER|COUNTER523[13]~59\ : std_logic;
SIGNAL \PIANOSPEAKER|COUNTER523[14]~60_combout\ : std_logic;
SIGNAL \PIANOSPEAKER|COUNTER523[14]~61\ : std_logic;
SIGNAL \PIANOSPEAKER|COUNTER523[15]~62_combout\ : std_logic;
SIGNAL \PIANOSPEAKER|COUNTER523[15]~63\ : std_logic;
SIGNAL \PIANOSPEAKER|COUNTER523[16]~64_combout\ : std_logic;
SIGNAL \PIANOSPEAKER|COUNTER523[16]~65\ : std_logic;
SIGNAL \PIANOSPEAKER|COUNTER523[17]~66_combout\ : std_logic;
SIGNAL \PIANOSPEAKER|COUNTER523[17]~67\ : std_logic;
SIGNAL \PIANOSPEAKER|COUNTER523[18]~68_combout\ : std_logic;
SIGNAL \PIANOSPEAKER|COUNTER523[18]~69\ : std_logic;
SIGNAL \PIANOSPEAKER|COUNTER523[19]~70_combout\ : std_logic;
SIGNAL \PIANOSPEAKER|COUNTER523[19]~71\ : std_logic;
SIGNAL \PIANOSPEAKER|COUNTER523[20]~72_combout\ : std_logic;
SIGNAL \PIANOSPEAKER|COUNTER523[20]~73\ : std_logic;
SIGNAL \PIANOSPEAKER|COUNTER523[21]~74_combout\ : std_logic;
SIGNAL \PIANOSPEAKER|COUNTER523[21]~75\ : std_logic;
SIGNAL \PIANOSPEAKER|COUNTER523[22]~76_combout\ : std_logic;
SIGNAL \PIANOSPEAKER|COUNTER523[22]~77\ : std_logic;
SIGNAL \PIANOSPEAKER|COUNTER523[23]~78_combout\ : std_logic;
SIGNAL \PIANOSPEAKER|COUNTER523[23]~79\ : std_logic;
SIGNAL \PIANOSPEAKER|COUNTER523[24]~80_combout\ : std_logic;
SIGNAL \PIANOSPEAKER|COUNTER523[24]~81\ : std_logic;
SIGNAL \PIANOSPEAKER|COUNTER523[25]~82_combout\ : std_logic;
SIGNAL \PIANOSPEAKER|COUNTER523[25]~83\ : std_logic;
SIGNAL \PIANOSPEAKER|COUNTER523[26]~84_combout\ : std_logic;
SIGNAL \PIANOSPEAKER|COUNTER523[26]~85\ : std_logic;
SIGNAL \PIANOSPEAKER|COUNTER523[27]~86_combout\ : std_logic;
SIGNAL \PIANOSPEAKER|COUNTER523[27]~87\ : std_logic;
SIGNAL \PIANOSPEAKER|COUNTER523[28]~88_combout\ : std_logic;
SIGNAL \PIANOSPEAKER|COUNTER523[28]~89\ : std_logic;
SIGNAL \PIANOSPEAKER|COUNTER523[29]~90_combout\ : std_logic;
SIGNAL \PIANOSPEAKER|COUNTER523[29]~91\ : std_logic;
SIGNAL \PIANOSPEAKER|COUNTER523[30]~92_combout\ : std_logic;
SIGNAL \PIANOSPEAKER|COUNTER523[30]~93\ : std_logic;
SIGNAL \PIANOSPEAKER|COUNTER523[31]~94_combout\ : std_logic;
SIGNAL \CLK100|Add0~0_combout\ : std_logic;
SIGNAL \CLK100|Add0~1\ : std_logic;
SIGNAL \CLK100|Add0~2_combout\ : std_logic;
SIGNAL \CLK100|Add0~3\ : std_logic;
SIGNAL \CLK100|Add0~4_combout\ : std_logic;
SIGNAL \CLK100|Add0~5\ : std_logic;
SIGNAL \CLK100|Add0~6_combout\ : std_logic;
SIGNAL \CLK100|Add0~7\ : std_logic;
SIGNAL \CLK100|Add0~8_combout\ : std_logic;
SIGNAL \CLK100|Add0~9\ : std_logic;
SIGNAL \CLK100|Add0~10_combout\ : std_logic;
SIGNAL \CLK100|Add0~11\ : std_logic;
SIGNAL \CLK100|Add0~12_combout\ : std_logic;
SIGNAL \CLK100|Add0~13\ : std_logic;
SIGNAL \CLK100|Add0~14_combout\ : std_logic;
SIGNAL \CLK100|Add0~15\ : std_logic;
SIGNAL \CLK100|Add0~16_combout\ : std_logic;
SIGNAL \CLK100|Add0~17\ : std_logic;
SIGNAL \CLK100|Add0~18_combout\ : std_logic;
SIGNAL \CLK100|Add0~19\ : std_logic;
SIGNAL \CLK100|Add0~20_combout\ : std_logic;
SIGNAL \CLK100|Add0~21\ : std_logic;
SIGNAL \CLK100|Add0~22_combout\ : std_logic;
SIGNAL \CLK100|Add0~23\ : std_logic;
SIGNAL \CLK100|Add0~24_combout\ : std_logic;
SIGNAL \CLK100|Add0~25\ : std_logic;
SIGNAL \CLK100|Add0~26_combout\ : std_logic;
SIGNAL \CLK100|Add0~27\ : std_logic;
SIGNAL \CLK100|Add0~28_combout\ : std_logic;
SIGNAL \CLK100|Add0~29\ : std_logic;
SIGNAL \CLK100|Add0~30_combout\ : std_logic;
SIGNAL \CLK100|Add0~31\ : std_logic;
SIGNAL \CLK100|Add0~32_combout\ : std_logic;
SIGNAL \CLK100|Add0~33\ : std_logic;
SIGNAL \CLK100|Add0~34_combout\ : std_logic;
SIGNAL \CLK100|Add0~35\ : std_logic;
SIGNAL \CLK100|Add0~36_combout\ : std_logic;
SIGNAL \SYNC|Equal0~2_combout\ : std_logic;
SIGNAL \LessThan24~0_combout\ : std_logic;
SIGNAL \R[0]~0_combout\ : std_logic;
SIGNAL \LessThan26~0_combout\ : std_logic;
SIGNAL \LessThan15~0_combout\ : std_logic;
SIGNAL \LessThan20~0_combout\ : std_logic;
SIGNAL \LessThan21~0_combout\ : std_logic;
SIGNAL \LessThan21~2_combout\ : std_logic;
SIGNAL \DERE|Q3~q\ : std_logic;
SIGNAL \process_0~22_combout\ : std_logic;
SIGNAL \process_0~24_combout\ : std_logic;
SIGNAL \G~7_combout\ : std_logic;
SIGNAL \LessThan29~0_combout\ : std_logic;
SIGNAL \G~9_combout\ : std_logic;
SIGNAL \G~16_combout\ : std_logic;
SIGNAL \G~17_combout\ : std_logic;
SIGNAL \G~18_combout\ : std_logic;
SIGNAL \R[0]~25_combout\ : std_logic;
SIGNAL \B~8_combout\ : std_logic;
SIGNAL \PIANOSPEAKER|CLK_494HZ~q\ : std_logic;
SIGNAL \PIANOSPEAKER|SPEK~0_combout\ : std_logic;
SIGNAL \PIANOSPEAKER|CLK_587HZ~q\ : std_logic;
SIGNAL \PIANOSPEAKER|CLK_698HZ~q\ : std_logic;
SIGNAL \PIANOSPEAKER|CLK_784HZ~q\ : std_logic;
SIGNAL \PIANOSPEAKER|CLK_523HZ~q\ : std_logic;
SIGNAL \CLK100|C100HZ~q\ : std_logic;
SIGNAL \LessThan37~3_combout\ : std_logic;
SIGNAL \LessThan37~5_combout\ : std_logic;
SIGNAL \Equal0~3_combout\ : std_logic;
SIGNAL \Equal0~5_combout\ : std_logic;
SIGNAL \LessThan39~0_combout\ : std_logic;
SIGNAL \LessThan39~2_combout\ : std_logic;
SIGNAL \LessThan36~0_combout\ : std_logic;
SIGNAL \LessThan36~5_combout\ : std_logic;
SIGNAL \Add4~23_combout\ : std_logic;
SIGNAL \Add4~29_combout\ : std_logic;
SIGNAL \LessThan42~0_combout\ : std_logic;
SIGNAL \LessThan44~0_combout\ : std_logic;
SIGNAL \LessThan44~2_combout\ : std_logic;
SIGNAL \LessThan44~3_combout\ : std_logic;
SIGNAL \LessThan44~4_combout\ : std_logic;
SIGNAL \LessThan44~5_combout\ : std_logic;
SIGNAL \LessThan44~6_combout\ : std_logic;
SIGNAL \FALLING_BLOCK_F2~15_combout\ : std_logic;
SIGNAL \LessThan41~3_combout\ : std_logic;
SIGNAL \LessThan41~6_combout\ : std_logic;
SIGNAL \Add5~24_combout\ : std_logic;
SIGNAL \LessThan31~0_combout\ : std_logic;
SIGNAL \LessThan31~1_combout\ : std_logic;
SIGNAL \LessThan32~0_combout\ : std_logic;
SIGNAL \LessThan32~1_combout\ : std_logic;
SIGNAL \LessThan34~2_combout\ : std_logic;
SIGNAL \LessThan34~3_combout\ : std_logic;
SIGNAL \LessThan34~4_combout\ : std_logic;
SIGNAL \LessThan34~5_combout\ : std_logic;
SIGNAL \LessThan34~6_combout\ : std_logic;
SIGNAL \DRAW1~q\ : std_logic;
SIGNAL \PIANOSPEAKER|LessThan0~0_combout\ : std_logic;
SIGNAL \PIANOSPEAKER|LessThan0~5_combout\ : std_logic;
SIGNAL \PIANOSPEAKER|LessThan1~0_combout\ : std_logic;
SIGNAL \PIANOSPEAKER|LessThan1~1_combout\ : std_logic;
SIGNAL \PIANOSPEAKER|LessThan1~2_combout\ : std_logic;
SIGNAL \PIANOSPEAKER|LessThan1~3_combout\ : std_logic;
SIGNAL \PIANOSPEAKER|LessThan1~4_combout\ : std_logic;
SIGNAL \PIANOSPEAKER|LessThan1~5_combout\ : std_logic;
SIGNAL \PIANOSPEAKER|LessThan1~6_combout\ : std_logic;
SIGNAL \PIANOSPEAKER|LessThan1~7_combout\ : std_logic;
SIGNAL \PIANOSPEAKER|LessThan1~8_combout\ : std_logic;
SIGNAL \PIANOSPEAKER|LessThan1~9_combout\ : std_logic;
SIGNAL \PIANOSPEAKER|CLK_494HZ~0_combout\ : std_logic;
SIGNAL \PIANOSPEAKER|LessThan3~0_combout\ : std_logic;
SIGNAL \PIANOSPEAKER|LessThan3~1_combout\ : std_logic;
SIGNAL \PIANOSPEAKER|LessThan3~2_combout\ : std_logic;
SIGNAL \PIANOSPEAKER|LessThan3~3_combout\ : std_logic;
SIGNAL \PIANOSPEAKER|LessThan3~4_combout\ : std_logic;
SIGNAL \PIANOSPEAKER|LessThan3~5_combout\ : std_logic;
SIGNAL \PIANOSPEAKER|LessThan3~6_combout\ : std_logic;
SIGNAL \PIANOSPEAKER|LessThan3~7_combout\ : std_logic;
SIGNAL \PIANOSPEAKER|LessThan3~8_combout\ : std_logic;
SIGNAL \PIANOSPEAKER|LessThan3~9_combout\ : std_logic;
SIGNAL \PIANOSPEAKER|CLK_587HZ~0_combout\ : std_logic;
SIGNAL \PIANOSPEAKER|LessThan4~7_combout\ : std_logic;
SIGNAL \PIANOSPEAKER|LessThan5~0_combout\ : std_logic;
SIGNAL \PIANOSPEAKER|LessThan5~1_combout\ : std_logic;
SIGNAL \PIANOSPEAKER|LessThan5~2_combout\ : std_logic;
SIGNAL \PIANOSPEAKER|LessThan5~3_combout\ : std_logic;
SIGNAL \PIANOSPEAKER|LessThan5~4_combout\ : std_logic;
SIGNAL \PIANOSPEAKER|LessThan5~5_combout\ : std_logic;
SIGNAL \PIANOSPEAKER|LessThan5~6_combout\ : std_logic;
SIGNAL \PIANOSPEAKER|LessThan5~7_combout\ : std_logic;
SIGNAL \PIANOSPEAKER|LessThan5~8_combout\ : std_logic;
SIGNAL \PIANOSPEAKER|LessThan5~9_combout\ : std_logic;
SIGNAL \PIANOSPEAKER|LessThan5~10_combout\ : std_logic;
SIGNAL \PIANOSPEAKER|CLK_698HZ~0_combout\ : std_logic;
SIGNAL \PIANOSPEAKER|LessThan6~0_combout\ : std_logic;
SIGNAL \PIANOSPEAKER|LessThan6~1_combout\ : std_logic;
SIGNAL \PIANOSPEAKER|LessThan6~2_combout\ : std_logic;
SIGNAL \PIANOSPEAKER|LessThan6~3_combout\ : std_logic;
SIGNAL \PIANOSPEAKER|LessThan6~4_combout\ : std_logic;
SIGNAL \PIANOSPEAKER|LessThan6~5_combout\ : std_logic;
SIGNAL \PIANOSPEAKER|LessThan6~6_combout\ : std_logic;
SIGNAL \PIANOSPEAKER|LessThan6~7_combout\ : std_logic;
SIGNAL \PIANOSPEAKER|LessThan6~8_combout\ : std_logic;
SIGNAL \PIANOSPEAKER|LessThan6~9_combout\ : std_logic;
SIGNAL \PIANOSPEAKER|CLK_784HZ~0_combout\ : std_logic;
SIGNAL \PIANOSPEAKER|LessThan7~1_combout\ : std_logic;
SIGNAL \PIANOSPEAKER|LessThan7~5_combout\ : std_logic;
SIGNAL \PIANOSPEAKER|LessThan7~6_combout\ : std_logic;
SIGNAL \PIANOSPEAKER|LessThan7~7_combout\ : std_logic;
SIGNAL \PIANOSPEAKER|LessThan2~0_combout\ : std_logic;
SIGNAL \PIANOSPEAKER|LessThan2~1_combout\ : std_logic;
SIGNAL \PIANOSPEAKER|LessThan2~2_combout\ : std_logic;
SIGNAL \PIANOSPEAKER|LessThan2~3_combout\ : std_logic;
SIGNAL \PIANOSPEAKER|LessThan2~4_combout\ : std_logic;
SIGNAL \PIANOSPEAKER|LessThan2~5_combout\ : std_logic;
SIGNAL \PIANOSPEAKER|LessThan2~6_combout\ : std_logic;
SIGNAL \PIANOSPEAKER|LessThan2~7_combout\ : std_logic;
SIGNAL \PIANOSPEAKER|LessThan2~8_combout\ : std_logic;
SIGNAL \PIANOSPEAKER|LessThan2~9_combout\ : std_logic;
SIGNAL \PIANOSPEAKER|LessThan2~10_combout\ : std_logic;
SIGNAL \PIANOSPEAKER|CLK_523HZ~0_combout\ : std_logic;
SIGNAL \CLK100|Equal0~0_combout\ : std_logic;
SIGNAL \CLK100|Equal0~1_combout\ : std_logic;
SIGNAL \CLK100|Equal0~2_combout\ : std_logic;
SIGNAL \CLK100|Equal0~3_combout\ : std_logic;
SIGNAL \CLK100|Equal0~4_combout\ : std_logic;
SIGNAL \CLK100|Equal0~5_combout\ : std_logic;
SIGNAL \CLK100|C100HZ~0_combout\ : std_logic;
SIGNAL \FALLING_BLOCK_F1~20_combout\ : std_logic;
SIGNAL \FALLING_BLOCK_F1[31]~34_combout\ : std_logic;
SIGNAL \FALLING_BLOCK_F1[31]~35_combout\ : std_logic;
SIGNAL \Add4~77_combout\ : std_logic;
SIGNAL \Add4~87_combout\ : std_logic;
SIGNAL \FALLING_BLOCK_F2~26_combout\ : std_logic;
SIGNAL \FALLING_BLOCK_F2[29]~35_combout\ : std_logic;
SIGNAL \Add5~76_combout\ : std_logic;
SIGNAL \Add5~77_combout\ : std_logic;
SIGNAL \Add5~78_combout\ : std_logic;
SIGNAL \Add5~79_combout\ : std_logic;
SIGNAL \Add5~85_combout\ : std_logic;
SIGNAL \Add5~88_combout\ : std_logic;
SIGNAL \Add5~89_combout\ : std_logic;
SIGNAL \FALLING_BLOCK_F~16_combout\ : std_logic;
SIGNAL \FALLING_BLOCK_F~19_combout\ : std_logic;
SIGNAL \FALLING_BLOCK_F~21_combout\ : std_logic;
SIGNAL \DRAW1~0_combout\ : std_logic;
SIGNAL \PIANOSPEAKER|LessThan1~10_combout\ : std_logic;
SIGNAL \PIANOSPEAKER|LessThan6~10_combout\ : std_logic;
SIGNAL \CLK100|COUNTER~0_combout\ : std_logic;
SIGNAL \CLK100|COUNTER~1_combout\ : std_logic;
SIGNAL \CLK100|COUNTER~2_combout\ : std_logic;
SIGNAL \CLK100|COUNTER~3_combout\ : std_logic;
SIGNAL \CLK100|COUNTER~4_combout\ : std_logic;
SIGNAL \CLK100|COUNTER~5_combout\ : std_logic;
SIGNAL \CLK100|COUNTER~6_combout\ : std_logic;
SIGNAL \CLK100|COUNTER~7_combout\ : std_logic;
SIGNAL \IZQ~input_o\ : std_logic;
SIGNAL \DER~input_o\ : std_logic;
SIGNAL \CLK100|C100HZ~clkctrl_outclk\ : std_logic;
SIGNAL \CLK100|C100HZ~feeder_combout\ : std_logic;
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
SIGNAL \SPEAKER~output_o\ : std_logic;
SIGNAL \SYNC|Add0~17\ : std_logic;
SIGNAL \SYNC|Add0~18_combout\ : std_logic;
SIGNAL \SYNC|Add0~23_combout\ : std_logic;
SIGNAL \RST~input_o\ : std_logic;
SIGNAL \SYNC|Add0~1\ : std_logic;
SIGNAL \SYNC|Add0~2_combout\ : std_logic;
SIGNAL \SYNC|Add0~28_combout\ : std_logic;
SIGNAL \SYNC|Add0~0_combout\ : std_logic;
SIGNAL \SYNC|Add0~29_combout\ : std_logic;
SIGNAL \SYNC|Add0~3\ : std_logic;
SIGNAL \SYNC|Add0~4_combout\ : std_logic;
SIGNAL \SYNC|Add0~27_combout\ : std_logic;
SIGNAL \SYNC|LessThan0~0_combout\ : std_logic;
SIGNAL \SYNC|LessThan0~1_combout\ : std_logic;
SIGNAL \SYNC|LessThan0~2_combout\ : std_logic;
SIGNAL \SYNC|Add0~5\ : std_logic;
SIGNAL \SYNC|Add0~6_combout\ : std_logic;
SIGNAL \SYNC|Add0~26_combout\ : std_logic;
SIGNAL \SYNC|Add0~7\ : std_logic;
SIGNAL \SYNC|Add0~8_combout\ : std_logic;
SIGNAL \SYNC|Add0~25_combout\ : std_logic;
SIGNAL \SYNC|Add0~9\ : std_logic;
SIGNAL \SYNC|Add0~11\ : std_logic;
SIGNAL \SYNC|Add0~12_combout\ : std_logic;
SIGNAL \SYNC|Add0~14_combout\ : std_logic;
SIGNAL \SYNC|Add0~13\ : std_logic;
SIGNAL \SYNC|Add0~16_combout\ : std_logic;
SIGNAL \SYNC|Add0~24_combout\ : std_logic;
SIGNAL \SYNC|Add0~19\ : std_logic;
SIGNAL \SYNC|Add0~20_combout\ : std_logic;
SIGNAL \SYNC|Add0~22_combout\ : std_logic;
SIGNAL \SYNC|LessThan1~0_combout\ : std_logic;
SIGNAL \SYNC|LessThan1~1_combout\ : std_logic;
SIGNAL \SYNC|Add1~12_combout\ : std_logic;
SIGNAL \SYNC|Equal0~0_combout\ : std_logic;
SIGNAL \SYNC|Add0~10_combout\ : std_logic;
SIGNAL \SYNC|Equal0~1_combout\ : std_logic;
SIGNAL \SYNC|Equal0~3_combout\ : std_logic;
SIGNAL \SYNC|Equal1~0_combout\ : std_logic;
SIGNAL \SYNC|Equal1~1_combout\ : std_logic;
SIGNAL \SYNC|Add1~6_combout\ : std_logic;
SIGNAL \SYNC|COUNTER_V~1_combout\ : std_logic;
SIGNAL \SYNC|Equal1~2_combout\ : std_logic;
SIGNAL \SYNC|COUNTER_V~2_combout\ : std_logic;
SIGNAL \SYNC|Add1~1\ : std_logic;
SIGNAL \SYNC|Add1~2_combout\ : std_logic;
SIGNAL \SYNC|Add1~3\ : std_logic;
SIGNAL \SYNC|Add1~4_combout\ : std_logic;
SIGNAL \SYNC|Add1~5\ : std_logic;
SIGNAL \SYNC|Add1~7\ : std_logic;
SIGNAL \SYNC|Add1~9\ : std_logic;
SIGNAL \SYNC|Add1~10_combout\ : std_logic;
SIGNAL \SYNC|Add1~11\ : std_logic;
SIGNAL \SYNC|Add1~13\ : std_logic;
SIGNAL \SYNC|Add1~14_combout\ : std_logic;
SIGNAL \SYNC|Add1~15\ : std_logic;
SIGNAL \SYNC|Add1~17\ : std_logic;
SIGNAL \SYNC|Add1~18_combout\ : std_logic;
SIGNAL \SYNC|COUNTER_V~0_combout\ : std_logic;
SIGNAL \SYNC|LessThan2~0_combout\ : std_logic;
SIGNAL \CLK|TEMPORAL~0_combout\ : std_logic;
SIGNAL \CLK|TEMPORAL~feeder_combout\ : std_logic;
SIGNAL \CLK|TEMPORAL~q\ : std_logic;
SIGNAL \CLK|TEMPORAL~clkctrl_outclk\ : std_logic;
SIGNAL \SYNC|Add1~8_combout\ : std_logic;
SIGNAL \SYNC|Add3~1\ : std_logic;
SIGNAL \SYNC|Add3~3\ : std_logic;
SIGNAL \SYNC|Add3~5\ : std_logic;
SIGNAL \SYNC|Add3~7\ : std_logic;
SIGNAL \SYNC|Add3~9\ : std_logic;
SIGNAL \SYNC|Add3~11\ : std_logic;
SIGNAL \SYNC|Add3~13\ : std_logic;
SIGNAL \SYNC|Add3~14_combout\ : std_logic;
SIGNAL \SYNC|Add3~15\ : std_logic;
SIGNAL \SYNC|Add3~17\ : std_logic;
SIGNAL \SYNC|Add3~18_combout\ : std_logic;
SIGNAL \SYNC|Add3~12_combout\ : std_logic;
SIGNAL \LessThan24~2_combout\ : std_logic;
SIGNAL \SYNC|Add3~10_combout\ : std_logic;
SIGNAL \LessThan23~0_combout\ : std_logic;
SIGNAL \SYNC|Add3~2_combout\ : std_logic;
SIGNAL \SYNC|Add3~8_combout\ : std_logic;
SIGNAL \SYNC|Add3~6_combout\ : std_logic;
SIGNAL \LessThan23~1_combout\ : std_logic;
SIGNAL \SYNC|Add3~16_combout\ : std_logic;
SIGNAL \LessThan23~2_combout\ : std_logic;
SIGNAL \process_0~0_combout\ : std_logic;
SIGNAL \DO~input_o\ : std_logic;
SIGNAL \DEBDO|Q1~feeder_combout\ : std_logic;
SIGNAL \DEBDO|Q1~q\ : std_logic;
SIGNAL \DEBDO|Q2~feeder_combout\ : std_logic;
SIGNAL \DEBDO|Q2~q\ : std_logic;
SIGNAL \DEBDO|Q3~q\ : std_logic;
SIGNAL \DEBDO|QOUT~0_combout\ : std_logic;
SIGNAL \process_0~15_combout\ : std_logic;
SIGNAL \LessThan23~3_combout\ : std_logic;
SIGNAL \SYNC|Add0~15_combout\ : std_logic;
SIGNAL \SYNC|Add2~0_combout\ : std_logic;
SIGNAL \SYNC|Add2~4_combout\ : std_logic;
SIGNAL \LessThan22~0_combout\ : std_logic;
SIGNAL \LessThan22~1_combout\ : std_logic;
SIGNAL \SYNC|Add2~3_combout\ : std_logic;
SIGNAL \B~2_combout\ : std_logic;
SIGNAL \process_0~9_combout\ : std_logic;
SIGNAL \LessThan25~0_combout\ : std_logic;
SIGNAL \LessThan17~7_combout\ : std_logic;
SIGNAL \SYNC|Add2~1_combout\ : std_logic;
SIGNAL \LessThan17~8_combout\ : std_logic;
SIGNAL \LessThan17~6_combout\ : std_logic;
SIGNAL \LessThan21~1_combout\ : std_logic;
SIGNAL \LessThan14~4_combout\ : std_logic;
SIGNAL \LessThan14~5_combout\ : std_logic;
SIGNAL \LessThan10~3_combout\ : std_logic;
SIGNAL \LessThan10~2_combout\ : std_logic;
SIGNAL \R[0]~4_combout\ : std_logic;
SIGNAL \R[0]~5_combout\ : std_logic;
SIGNAL \DOB~input_o\ : std_logic;
SIGNAL \DEBDOB|Q1~q\ : std_logic;
SIGNAL \DEBDOB|Q2~q\ : std_logic;
SIGNAL \DEBDOB|Q3~feeder_combout\ : std_logic;
SIGNAL \DEBDOB|Q3~q\ : std_logic;
SIGNAL \SYNC|Add2~2_combout\ : std_logic;
SIGNAL \LessThan17~4_combout\ : std_logic;
SIGNAL \LessThan26~1_combout\ : std_logic;
SIGNAL \G~0_combout\ : std_logic;
SIGNAL \process_0~1_combout\ : std_logic;
SIGNAL \process_0~2_combout\ : std_logic;
SIGNAL \LessThan19~5_combout\ : std_logic;
SIGNAL \LessThan19~6_combout\ : std_logic;
SIGNAL \LessThan24~1_combout\ : std_logic;
SIGNAL \R[0]~2_combout\ : std_logic;
SIGNAL \LessThan20~1_combout\ : std_logic;
SIGNAL \R[0]~1_combout\ : std_logic;
SIGNAL \R[0]~3_combout\ : std_logic;
SIGNAL \R[0]~6_combout\ : std_logic;
SIGNAL \R[0]~8_combout\ : std_logic;
SIGNAL \R~12_combout\ : std_logic;
SIGNAL \LessThan12~3_combout\ : std_logic;
SIGNAL \LessThan12~2_combout\ : std_logic;
SIGNAL \LessThan11~3_combout\ : std_logic;
SIGNAL \LessThan11~2_combout\ : std_logic;
SIGNAL \RE~input_o\ : std_logic;
SIGNAL \DERE|Q1~q\ : std_logic;
SIGNAL \DERE|Q2~q\ : std_logic;
SIGNAL \DERE|QOUT~0_combout\ : std_logic;
SIGNAL \process_0~17_combout\ : std_logic;
SIGNAL \process_0~16_combout\ : std_logic;
SIGNAL \LessThan13~4_combout\ : std_logic;
SIGNAL \LessThan13~5_combout\ : std_logic;
SIGNAL \process_0~18_combout\ : std_logic;
SIGNAL \FA~input_o\ : std_logic;
SIGNAL \DEBFA|Q1~q\ : std_logic;
SIGNAL \DEBFA|Q2~feeder_combout\ : std_logic;
SIGNAL \DEBFA|Q2~q\ : std_logic;
SIGNAL \DEBFA|Q3~q\ : std_logic;
SIGNAL \DEBFA|QOUT~0_combout\ : std_logic;
SIGNAL \process_0~20_combout\ : std_logic;
SIGNAL \LessThan16~0_combout\ : std_logic;
SIGNAL \LessThan15~1_combout\ : std_logic;
SIGNAL \process_0~19_combout\ : std_logic;
SIGNAL \SOL~input_o\ : std_logic;
SIGNAL \DEBSOL|Q1~q\ : std_logic;
SIGNAL \DEBSOL|Q2~feeder_combout\ : std_logic;
SIGNAL \DEBSOL|Q2~q\ : std_logic;
SIGNAL \DEBSOL|Q3~q\ : std_logic;
SIGNAL \DEBSOL|QOUT~0_combout\ : std_logic;
SIGNAL \process_0~21_combout\ : std_logic;
SIGNAL \LA~input_o\ : std_logic;
SIGNAL \DEBLA|Q1~feeder_combout\ : std_logic;
SIGNAL \DEBLA|Q1~q\ : std_logic;
SIGNAL \DEBLA|Q2~feeder_combout\ : std_logic;
SIGNAL \DEBLA|Q2~q\ : std_logic;
SIGNAL \DEBLA|Q3~q\ : std_logic;
SIGNAL \DEBLA|QOUT~0_combout\ : std_logic;
SIGNAL \SI~input_o\ : std_logic;
SIGNAL \DEBSI|Q1~feeder_combout\ : std_logic;
SIGNAL \DEBSI|Q1~q\ : std_logic;
SIGNAL \DEBSI|Q2~feeder_combout\ : std_logic;
SIGNAL \DEBSI|Q2~q\ : std_logic;
SIGNAL \DEBSI|Q3~q\ : std_logic;
SIGNAL \DEBSI|QOUT~0_combout\ : std_logic;
SIGNAL \R~13_combout\ : std_logic;
SIGNAL \R~14_combout\ : std_logic;
SIGNAL \R~15_combout\ : std_logic;
SIGNAL \R~16_combout\ : std_logic;
SIGNAL \R~17_combout\ : std_logic;
SIGNAL \DEBDOB|QOUT~0_combout\ : std_logic;
SIGNAL \process_0~12_combout\ : std_logic;
SIGNAL \FALLING_BLOCK_F1~13_combout\ : std_logic;
SIGNAL \Add1~17\ : std_logic;
SIGNAL \Add1~19\ : std_logic;
SIGNAL \Add1~21\ : std_logic;
SIGNAL \Add1~22_combout\ : std_logic;
SIGNAL \FALLING_BLOCK_F1~14_combout\ : std_logic;
SIGNAL \Add1~23\ : std_logic;
SIGNAL \Add1~25\ : std_logic;
SIGNAL \Add1~26_combout\ : std_logic;
SIGNAL \FALLING_BLOCK_F1~16_combout\ : std_logic;
SIGNAL \Add1~27\ : std_logic;
SIGNAL \Add1~28_combout\ : std_logic;
SIGNAL \FALLING_BLOCK_F1~17_combout\ : std_logic;
SIGNAL \Add1~29\ : std_logic;
SIGNAL \Add1~30_combout\ : std_logic;
SIGNAL \FALLING_BLOCK_F1~18_combout\ : std_logic;
SIGNAL \Add1~31\ : std_logic;
SIGNAL \Add1~33\ : std_logic;
SIGNAL \Add1~35\ : std_logic;
SIGNAL \Add1~36_combout\ : std_logic;
SIGNAL \FALLING_BLOCK_F1~21_combout\ : std_logic;
SIGNAL \Add1~37\ : std_logic;
SIGNAL \Add1~38_combout\ : std_logic;
SIGNAL \FALLING_BLOCK_F1~22_combout\ : std_logic;
SIGNAL \Add1~39\ : std_logic;
SIGNAL \Add1~40_combout\ : std_logic;
SIGNAL \FALLING_BLOCK_F1~23_combout\ : std_logic;
SIGNAL \Add1~41\ : std_logic;
SIGNAL \Add1~42_combout\ : std_logic;
SIGNAL \FALLING_BLOCK_F1~24_combout\ : std_logic;
SIGNAL \Add1~43\ : std_logic;
SIGNAL \Add1~44_combout\ : std_logic;
SIGNAL \FALLING_BLOCK_F1~25_combout\ : std_logic;
SIGNAL \Add1~45\ : std_logic;
SIGNAL \Add1~47\ : std_logic;
SIGNAL \Add1~48_combout\ : std_logic;
SIGNAL \FALLING_BLOCK_F1~27_combout\ : std_logic;
SIGNAL \Add1~49\ : std_logic;
SIGNAL \Add1~51\ : std_logic;
SIGNAL \Add1~52_combout\ : std_logic;
SIGNAL \FALLING_BLOCK_F1~29_combout\ : std_logic;
SIGNAL \Add1~53\ : std_logic;
SIGNAL \Add1~54_combout\ : std_logic;
SIGNAL \FALLING_BLOCK_F1~30_combout\ : std_logic;
SIGNAL \Add1~50_combout\ : std_logic;
SIGNAL \FALLING_BLOCK_F1~28_combout\ : std_logic;
SIGNAL \LessThan36~8_combout\ : std_logic;
SIGNAL \Add1~55\ : std_logic;
SIGNAL \Add1~56_combout\ : std_logic;
SIGNAL \FALLING_BLOCK_F1~31_combout\ : std_logic;
SIGNAL \Add1~57\ : std_logic;
SIGNAL \Add1~58_combout\ : std_logic;
SIGNAL \FALLING_BLOCK_F1[29]~32_combout\ : std_logic;
SIGNAL \LessThan36~9_combout\ : std_logic;
SIGNAL \Add1~46_combout\ : std_logic;
SIGNAL \FALLING_BLOCK_F1~26_combout\ : std_logic;
SIGNAL \LessThan36~6_combout\ : std_logic;
SIGNAL \LessThan36~7_combout\ : std_logic;
SIGNAL \Add1~20_combout\ : std_logic;
SIGNAL \FALLING_BLOCK_F1~1_combout\ : std_logic;
SIGNAL \LessThan36~2_combout\ : std_logic;
SIGNAL \Add1~8_combout\ : std_logic;
SIGNAL \FALLING_BLOCK_F1~9_combout\ : std_logic;
SIGNAL \LessThan36~1_combout\ : std_logic;
SIGNAL \Add1~24_combout\ : std_logic;
SIGNAL \FALLING_BLOCK_F1~15_combout\ : std_logic;
SIGNAL \LessThan36~3_combout\ : std_logic;
SIGNAL \LessThan36~4_combout\ : std_logic;
SIGNAL \FALLING_BLOCK_I1[28]~0_combout\ : std_logic;
SIGNAL \Add4~95_combout\ : std_logic;
SIGNAL \Add6~1\ : std_logic;
SIGNAL \Add6~2_combout\ : std_logic;
SIGNAL \COUNTER~0_combout\ : std_logic;
SIGNAL \Add6~3\ : std_logic;
SIGNAL \Add6~4_combout\ : std_logic;
SIGNAL \Add6~5\ : std_logic;
SIGNAL \Add6~7\ : std_logic;
SIGNAL \Add6~8_combout\ : std_logic;
SIGNAL \Add6~9\ : std_logic;
SIGNAL \Add6~11\ : std_logic;
SIGNAL \Add6~12_combout\ : std_logic;
SIGNAL \COUNTER~2_combout\ : std_logic;
SIGNAL \Add6~13\ : std_logic;
SIGNAL \Add6~15\ : std_logic;
SIGNAL \Add6~16_combout\ : std_logic;
SIGNAL \COUNTER~4_combout\ : std_logic;
SIGNAL \Add6~17\ : std_logic;
SIGNAL \Add6~18_combout\ : std_logic;
SIGNAL \COUNTER~5_combout\ : std_logic;
SIGNAL \Add6~19\ : std_logic;
SIGNAL \Add6~20_combout\ : std_logic;
SIGNAL \Add6~21\ : std_logic;
SIGNAL \Add6~22_combout\ : std_logic;
SIGNAL \COUNTER~6_combout\ : std_logic;
SIGNAL \Add6~23\ : std_logic;
SIGNAL \Add6~24_combout\ : std_logic;
SIGNAL \Add6~25\ : std_logic;
SIGNAL \Add6~26_combout\ : std_logic;
SIGNAL \COUNTER~7_combout\ : std_logic;
SIGNAL \Add6~27\ : std_logic;
SIGNAL \Add6~28_combout\ : std_logic;
SIGNAL \COUNTER~8_combout\ : std_logic;
SIGNAL \Add6~29\ : std_logic;
SIGNAL \Add6~30_combout\ : std_logic;
SIGNAL \COUNTER~9_combout\ : std_logic;
SIGNAL \Add6~31\ : std_logic;
SIGNAL \Add6~32_combout\ : std_logic;
SIGNAL \COUNTER~10_combout\ : std_logic;
SIGNAL \Add6~33\ : std_logic;
SIGNAL \Add6~34_combout\ : std_logic;
SIGNAL \COUNTER~11_combout\ : std_logic;
SIGNAL \Add6~35\ : std_logic;
SIGNAL \Add6~36_combout\ : std_logic;
SIGNAL \Add6~37\ : std_logic;
SIGNAL \Add6~38_combout\ : std_logic;
SIGNAL \COUNTER~12_combout\ : std_logic;
SIGNAL \Add6~39\ : std_logic;
SIGNAL \Add6~40_combout\ : std_logic;
SIGNAL \Add6~41\ : std_logic;
SIGNAL \Add6~43\ : std_logic;
SIGNAL \Add6~45\ : std_logic;
SIGNAL \Add6~46_combout\ : std_logic;
SIGNAL \Add6~42_combout\ : std_logic;
SIGNAL \Equal0~6_combout\ : std_logic;
SIGNAL \Add6~47\ : std_logic;
SIGNAL \Add6~48_combout\ : std_logic;
SIGNAL \Add6~49\ : std_logic;
SIGNAL \Add6~50_combout\ : std_logic;
SIGNAL \Add6~51\ : std_logic;
SIGNAL \Add6~52_combout\ : std_logic;
SIGNAL \Add6~53\ : std_logic;
SIGNAL \Add6~55\ : std_logic;
SIGNAL \Add6~56_combout\ : std_logic;
SIGNAL \Add6~57\ : std_logic;
SIGNAL \Add6~59\ : std_logic;
SIGNAL \Add6~60_combout\ : std_logic;
SIGNAL \Add6~58_combout\ : std_logic;
SIGNAL \Equal0~8_combout\ : std_logic;
SIGNAL \Add6~54_combout\ : std_logic;
SIGNAL \Equal0~7_combout\ : std_logic;
SIGNAL \Equal0~9_combout\ : std_logic;
SIGNAL \Add6~14_combout\ : std_logic;
SIGNAL \COUNTER~3_combout\ : std_logic;
SIGNAL \Add6~10_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \Add6~6_combout\ : std_logic;
SIGNAL \Add6~0_combout\ : std_logic;
SIGNAL \COUNTER~1_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Equal0~4_combout\ : std_logic;
SIGNAL \Equal0~10_combout\ : std_logic;
SIGNAL \FALLING_BLOCK_I1[10]~1_combout\ : std_logic;
SIGNAL \Add4~94_combout\ : std_logic;
SIGNAL \Add4~93_combout\ : std_logic;
SIGNAL \Add4~91_combout\ : std_logic;
SIGNAL \Add4~21_combout\ : std_logic;
SIGNAL \Add4~1\ : std_logic;
SIGNAL \Add4~2_combout\ : std_logic;
SIGNAL \Add4~28_combout\ : std_logic;
SIGNAL \Add4~3\ : std_logic;
SIGNAL \Add4~4_combout\ : std_logic;
SIGNAL \Add4~27_combout\ : std_logic;
SIGNAL \Add4~5\ : std_logic;
SIGNAL \Add4~6_combout\ : std_logic;
SIGNAL \Add4~26_combout\ : std_logic;
SIGNAL \Add4~7\ : std_logic;
SIGNAL \Add4~8_combout\ : std_logic;
SIGNAL \Add4~25_combout\ : std_logic;
SIGNAL \Add4~9\ : std_logic;
SIGNAL \Add4~10_combout\ : std_logic;
SIGNAL \Add4~24_combout\ : std_logic;
SIGNAL \Add4~11\ : std_logic;
SIGNAL \Add4~13\ : std_logic;
SIGNAL \Add4~14_combout\ : std_logic;
SIGNAL \Add4~22_combout\ : std_logic;
SIGNAL \Add4~15\ : std_logic;
SIGNAL \Add4~17\ : std_logic;
SIGNAL \Add4~18_combout\ : std_logic;
SIGNAL \Add4~20_combout\ : std_logic;
SIGNAL \Add4~19\ : std_logic;
SIGNAL \Add4~30_combout\ : std_logic;
SIGNAL \Add4~32_combout\ : std_logic;
SIGNAL \Add4~31\ : std_logic;
SIGNAL \Add4~33_combout\ : std_logic;
SIGNAL \Add4~82_combout\ : std_logic;
SIGNAL \Add4~34\ : std_logic;
SIGNAL \Add4~35_combout\ : std_logic;
SIGNAL \Add4~83_combout\ : std_logic;
SIGNAL \Add4~36\ : std_logic;
SIGNAL \Add4~38\ : std_logic;
SIGNAL \Add4~40\ : std_logic;
SIGNAL \Add4~41_combout\ : std_logic;
SIGNAL \Add4~86_combout\ : std_logic;
SIGNAL \Add4~42\ : std_logic;
SIGNAL \Add4~44\ : std_logic;
SIGNAL \Add4~46\ : std_logic;
SIGNAL \Add4~48\ : std_logic;
SIGNAL \Add4~50\ : std_logic;
SIGNAL \Add4~52\ : std_logic;
SIGNAL \Add4~54\ : std_logic;
SIGNAL \Add4~56\ : std_logic;
SIGNAL \Add4~58\ : std_logic;
SIGNAL \Add4~60\ : std_logic;
SIGNAL \Add4~61_combout\ : std_logic;
SIGNAL \Add4~76_combout\ : std_logic;
SIGNAL \Add4~62\ : std_logic;
SIGNAL \Add4~64\ : std_logic;
SIGNAL \Add4~65_combout\ : std_logic;
SIGNAL \Add4~78_combout\ : std_logic;
SIGNAL \Add4~66\ : std_logic;
SIGNAL \Add4~67_combout\ : std_logic;
SIGNAL \Add4~79_combout\ : std_logic;
SIGNAL \Add4~68\ : std_logic;
SIGNAL \Add4~70\ : std_logic;
SIGNAL \Add4~71_combout\ : std_logic;
SIGNAL \Add4~81_combout\ : std_logic;
SIGNAL \Add4~72\ : std_logic;
SIGNAL \Add4~73_combout\ : std_logic;
SIGNAL \Add4~75_combout\ : std_logic;
SIGNAL \Add4~69_combout\ : std_logic;
SIGNAL \Add4~80_combout\ : std_logic;
SIGNAL \LessThan39~1_combout\ : std_logic;
SIGNAL \Add4~37_combout\ : std_logic;
SIGNAL \Add4~84_combout\ : std_logic;
SIGNAL \Add4~39_combout\ : std_logic;
SIGNAL \Add4~85_combout\ : std_logic;
SIGNAL \LessThan39~3_combout\ : std_logic;
SIGNAL \Add4~88_combout\ : std_logic;
SIGNAL \Add4~49_combout\ : std_logic;
SIGNAL \Add4~90_combout\ : std_logic;
SIGNAL \Add4~89_combout\ : std_logic;
SIGNAL \LessThan39~4_combout\ : std_logic;
SIGNAL \Add4~92_combout\ : std_logic;
SIGNAL \LessThan39~5_combout\ : std_logic;
SIGNAL \LessThan39~6_combout\ : std_logic;
SIGNAL \LessThan39~7_combout\ : std_logic;
SIGNAL \LessThan39~8_combout\ : std_logic;
SIGNAL \LessThan39~9_combout\ : std_logic;
SIGNAL \FALLING_BLOCK_F1[31]~2_combout\ : std_logic;
SIGNAL \DRAW2~0_combout\ : std_logic;
SIGNAL \DRAW2~q\ : std_logic;
SIGNAL \FALLING_BLOCK_F1[10]~3_combout\ : std_logic;
SIGNAL \Add1~1\ : std_logic;
SIGNAL \Add1~3\ : std_logic;
SIGNAL \Add1~5\ : std_logic;
SIGNAL \Add1~6_combout\ : std_logic;
SIGNAL \FALLING_BLOCK_F1~10_combout\ : std_logic;
SIGNAL \Add1~7\ : std_logic;
SIGNAL \Add1~9\ : std_logic;
SIGNAL \Add1~11\ : std_logic;
SIGNAL \Add1~13\ : std_logic;
SIGNAL \Add1~14_combout\ : std_logic;
SIGNAL \FALLING_BLOCK_F1~6_combout\ : std_logic;
SIGNAL \Add1~15\ : std_logic;
SIGNAL \Add1~16_combout\ : std_logic;
SIGNAL \FALLING_BLOCK_F1~5_combout\ : std_logic;
SIGNAL \Add1~10_combout\ : std_logic;
SIGNAL \FALLING_BLOCK_F1~8_combout\ : std_logic;
SIGNAL \FALLING_BLOCK_F1~7_combout\ : std_logic;
SIGNAL \Add1~4_combout\ : std_logic;
SIGNAL \FALLING_BLOCK_F1~11_combout\ : std_logic;
SIGNAL \LessThan37~7_combout\ : std_logic;
SIGNAL \LessThan37~8_combout\ : std_logic;
SIGNAL \LessThan37~2_combout\ : std_logic;
SIGNAL \LessThan37~0_combout\ : std_logic;
SIGNAL \Add1~32_combout\ : std_logic;
SIGNAL \FALLING_BLOCK_F1~19_combout\ : std_logic;
SIGNAL \LessThan37~1_combout\ : std_logic;
SIGNAL \LessThan37~4_combout\ : std_logic;
SIGNAL \Add1~59\ : std_logic;
SIGNAL \Add1~60_combout\ : std_logic;
SIGNAL \FALLING_BLOCK_F1[30]~33_combout\ : std_logic;
SIGNAL \LessThan37~6_combout\ : std_logic;
SIGNAL \FALLING_BLOCK_F1[3]~0_combout\ : std_logic;
SIGNAL \FALLING_BLOCK_F1~4_combout\ : std_logic;
SIGNAL \Add1~18_combout\ : std_logic;
SIGNAL \SYNC|Add3~4_combout\ : std_logic;
SIGNAL \Add1~0_combout\ : std_logic;
SIGNAL \LessThan5~1_cout\ : std_logic;
SIGNAL \LessThan5~3_cout\ : std_logic;
SIGNAL \LessThan5~5_cout\ : std_logic;
SIGNAL \LessThan5~7_cout\ : std_logic;
SIGNAL \LessThan5~9_cout\ : std_logic;
SIGNAL \LessThan5~11_cout\ : std_logic;
SIGNAL \LessThan5~13_cout\ : std_logic;
SIGNAL \LessThan5~15_cout\ : std_logic;
SIGNAL \LessThan5~17_cout\ : std_logic;
SIGNAL \LessThan5~18_combout\ : std_logic;
SIGNAL \SYNC|Add3~0_combout\ : std_logic;
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
SIGNAL \process_0~3_combout\ : std_logic;
SIGNAL \process_0~4_combout\ : std_logic;
SIGNAL \process_0~5_combout\ : std_logic;
SIGNAL \Add2~39\ : std_logic;
SIGNAL \Add2~41\ : std_logic;
SIGNAL \Add2~42_combout\ : std_logic;
SIGNAL \FALLING_BLOCK_F2~27_combout\ : std_logic;
SIGNAL \Add5~81_combout\ : std_logic;
SIGNAL \FALLING_BLOCK_I2[10]~1_combout\ : std_logic;
SIGNAL \Add5~95_combout\ : std_logic;
SIGNAL \Add5~87_combout\ : std_logic;
SIGNAL \Add5~86_combout\ : std_logic;
SIGNAL \Add5~84_combout\ : std_logic;
SIGNAL \Add5~32_combout\ : std_logic;
SIGNAL \Add5~21_combout\ : std_logic;
SIGNAL \Add5~28_combout\ : std_logic;
SIGNAL \Add5~29_combout\ : std_logic;
SIGNAL \Add5~1\ : std_logic;
SIGNAL \Add5~3\ : std_logic;
SIGNAL \Add5~4_combout\ : std_logic;
SIGNAL \Add5~27_combout\ : std_logic;
SIGNAL \Add5~5\ : std_logic;
SIGNAL \Add5~7\ : std_logic;
SIGNAL \Add5~9\ : std_logic;
SIGNAL \Add5~11\ : std_logic;
SIGNAL \Add5~12_combout\ : std_logic;
SIGNAL \Add5~23_combout\ : std_logic;
SIGNAL \Add5~13\ : std_logic;
SIGNAL \Add5~15\ : std_logic;
SIGNAL \Add5~17\ : std_logic;
SIGNAL \Add5~19\ : std_logic;
SIGNAL \Add5~31\ : std_logic;
SIGNAL \Add5~33_combout\ : std_logic;
SIGNAL \Add5~82_combout\ : std_logic;
SIGNAL \Add5~34\ : std_logic;
SIGNAL \Add5~35_combout\ : std_logic;
SIGNAL \Add5~83_combout\ : std_logic;
SIGNAL \Add5~36\ : std_logic;
SIGNAL \Add5~38\ : std_logic;
SIGNAL \Add5~40\ : std_logic;
SIGNAL \Add5~42\ : std_logic;
SIGNAL \Add5~44\ : std_logic;
SIGNAL \Add5~46\ : std_logic;
SIGNAL \Add5~48\ : std_logic;
SIGNAL \Add5~49_combout\ : std_logic;
SIGNAL \Add5~90_combout\ : std_logic;
SIGNAL \Add5~50\ : std_logic;
SIGNAL \Add5~51_combout\ : std_logic;
SIGNAL \Add5~91_combout\ : std_logic;
SIGNAL \Add5~52\ : std_logic;
SIGNAL \Add5~53_combout\ : std_logic;
SIGNAL \Add5~92_combout\ : std_logic;
SIGNAL \Add5~54\ : std_logic;
SIGNAL \Add5~55_combout\ : std_logic;
SIGNAL \Add5~93_combout\ : std_logic;
SIGNAL \Add5~56\ : std_logic;
SIGNAL \Add5~57_combout\ : std_logic;
SIGNAL \Add5~94_combout\ : std_logic;
SIGNAL \Add5~58\ : std_logic;
SIGNAL \Add5~60\ : std_logic;
SIGNAL \Add5~62\ : std_logic;
SIGNAL \Add5~64\ : std_logic;
SIGNAL \Add5~66\ : std_logic;
SIGNAL \Add5~68\ : std_logic;
SIGNAL \Add5~70\ : std_logic;
SIGNAL \Add5~72\ : std_logic;
SIGNAL \Add5~73_combout\ : std_logic;
SIGNAL \Add5~75_combout\ : std_logic;
SIGNAL \Add5~80_combout\ : std_logic;
SIGNAL \LessThan44~1_combout\ : std_logic;
SIGNAL \Add5~22_combout\ : std_logic;
SIGNAL \Add5~6_combout\ : std_logic;
SIGNAL \Add5~26_combout\ : std_logic;
SIGNAL \LessThan44~7_combout\ : std_logic;
SIGNAL \Add5~8_combout\ : std_logic;
SIGNAL \Add5~25_combout\ : std_logic;
SIGNAL \FALLING_BLOCK_I2[4]~feeder_combout\ : std_logic;
SIGNAL \LessThan44~8_combout\ : std_logic;
SIGNAL \LessThan44~9_combout\ : std_logic;
SIGNAL \FALLING_BLOCK_F2[31]~6_combout\ : std_logic;
SIGNAL \DRAW3~0_combout\ : std_logic;
SIGNAL \DRAW3~q\ : std_logic;
SIGNAL \FALLING_BLOCK_F2[30]~37_combout\ : std_logic;
SIGNAL \Add2~43\ : std_logic;
SIGNAL \Add2~44_combout\ : std_logic;
SIGNAL \FALLING_BLOCK_F2~28_combout\ : std_logic;
SIGNAL \Add2~45\ : std_logic;
SIGNAL \Add2~47\ : std_logic;
SIGNAL \Add2~48_combout\ : std_logic;
SIGNAL \FALLING_BLOCK_F2~30_combout\ : std_logic;
SIGNAL \Add2~49\ : std_logic;
SIGNAL \Add2~50_combout\ : std_logic;
SIGNAL \FALLING_BLOCK_F2~31_combout\ : std_logic;
SIGNAL \Add2~51\ : std_logic;
SIGNAL \Add2~52_combout\ : std_logic;
SIGNAL \FALLING_BLOCK_F2~32_combout\ : std_logic;
SIGNAL \Add2~53\ : std_logic;
SIGNAL \Add2~54_combout\ : std_logic;
SIGNAL \FALLING_BLOCK_F2~33_combout\ : std_logic;
SIGNAL \Add2~55\ : std_logic;
SIGNAL \Add2~56_combout\ : std_logic;
SIGNAL \FALLING_BLOCK_F2~34_combout\ : std_logic;
SIGNAL \LessThan42~5_combout\ : std_logic;
SIGNAL \Add2~36_combout\ : std_logic;
SIGNAL \FALLING_BLOCK_F2~24_combout\ : std_logic;
SIGNAL \Add2~34_combout\ : std_logic;
SIGNAL \FALLING_BLOCK_F2~23_combout\ : std_logic;
SIGNAL \LessThan42~2_combout\ : std_logic;
SIGNAL \FALLING_BLOCK_F2~10_combout\ : std_logic;
SIGNAL \Add2~1\ : std_logic;
SIGNAL \Add2~3\ : std_logic;
SIGNAL \Add2~4_combout\ : std_logic;
SIGNAL \FALLING_BLOCK_F2~14_combout\ : std_logic;
SIGNAL \Add2~5\ : std_logic;
SIGNAL \Add2~6_combout\ : std_logic;
SIGNAL \FALLING_BLOCK_F2~13_combout\ : std_logic;
SIGNAL \Add2~7\ : std_logic;
SIGNAL \Add2~8_combout\ : std_logic;
SIGNAL \FALLING_BLOCK_F2~12_combout\ : std_logic;
SIGNAL \Add2~9\ : std_logic;
SIGNAL \Add2~11\ : std_logic;
SIGNAL \Add2~13\ : std_logic;
SIGNAL \Add2~15\ : std_logic;
SIGNAL \Add2~16_combout\ : std_logic;
SIGNAL \FALLING_BLOCK_F2~8_combout\ : std_logic;
SIGNAL \Add2~17\ : std_logic;
SIGNAL \Add2~19\ : std_logic;
SIGNAL \Add2~20_combout\ : std_logic;
SIGNAL \FALLING_BLOCK_F2~5_combout\ : std_logic;
SIGNAL \Add2~21\ : std_logic;
SIGNAL \Add2~23\ : std_logic;
SIGNAL \Add2~24_combout\ : std_logic;
SIGNAL \FALLING_BLOCK_F2~18_combout\ : std_logic;
SIGNAL \Add2~25\ : std_logic;
SIGNAL \Add2~27\ : std_logic;
SIGNAL \Add2~28_combout\ : std_logic;
SIGNAL \FALLING_BLOCK_F2~20_combout\ : std_logic;
SIGNAL \FALLING_BLOCK_F2~19_combout\ : std_logic;
SIGNAL \LessThan42~1_combout\ : std_logic;
SIGNAL \FALLING_BLOCK_F2~29_combout\ : std_logic;
SIGNAL \LessThan42~3_combout\ : std_logic;
SIGNAL \LessThan42~4_combout\ : std_logic;
SIGNAL \Add2~57\ : std_logic;
SIGNAL \Add2~59\ : std_logic;
SIGNAL \Add2~60_combout\ : std_logic;
SIGNAL \FALLING_BLOCK_F2[30]~36_combout\ : std_logic;
SIGNAL \LessThan42~6_combout\ : std_logic;
SIGNAL \FALLING_BLOCK_F2~11_combout\ : std_logic;
SIGNAL \LessThan42~7_combout\ : std_logic;
SIGNAL \LessThan42~8_combout\ : std_logic;
SIGNAL \FALLING_BLOCK_F2[25]~4_combout\ : std_logic;
SIGNAL \Add2~29\ : std_logic;
SIGNAL \Add2~30_combout\ : std_logic;
SIGNAL \FALLING_BLOCK_F2~21_combout\ : std_logic;
SIGNAL \Add2~31\ : std_logic;
SIGNAL \Add2~32_combout\ : std_logic;
SIGNAL \FALLING_BLOCK_F2~22_combout\ : std_logic;
SIGNAL \Add2~33\ : std_logic;
SIGNAL \Add2~35\ : std_logic;
SIGNAL \Add2~37\ : std_logic;
SIGNAL \Add2~38_combout\ : std_logic;
SIGNAL \FALLING_BLOCK_F2~25_combout\ : std_logic;
SIGNAL \LessThan41~5_combout\ : std_logic;
SIGNAL \LessThan41~4_combout\ : std_logic;
SIGNAL \LessThan41~7_combout\ : std_logic;
SIGNAL \LessThan41~8_combout\ : std_logic;
SIGNAL \Add2~61\ : std_logic;
SIGNAL \Add2~62_combout\ : std_logic;
SIGNAL \FALLING_BLOCK_F2[31]~38_combout\ : std_logic;
SIGNAL \FALLING_BLOCK_F2[31]~39_combout\ : std_logic;
SIGNAL \FALLING_BLOCK_F2~17_combout\ : std_logic;
SIGNAL \LessThan41~0_combout\ : std_logic;
SIGNAL \LessThan41~1_combout\ : std_logic;
SIGNAL \LessThan41~2_combout\ : std_logic;
SIGNAL \FALLING_BLOCK_I2[20]~0_combout\ : std_logic;
SIGNAL \Add5~20_combout\ : std_logic;
SIGNAL \LessThan7~1_cout\ : std_logic;
SIGNAL \LessThan7~3_cout\ : std_logic;
SIGNAL \LessThan7~5_cout\ : std_logic;
SIGNAL \LessThan7~7_cout\ : std_logic;
SIGNAL \LessThan7~9_cout\ : std_logic;
SIGNAL \LessThan7~11_cout\ : std_logic;
SIGNAL \LessThan7~13_cout\ : std_logic;
SIGNAL \LessThan7~15_cout\ : std_logic;
SIGNAL \LessThan7~17_cout\ : std_logic;
SIGNAL \LessThan7~18_combout\ : std_logic;
SIGNAL \process_0~6_combout\ : std_logic;
SIGNAL \Add2~18_combout\ : std_logic;
SIGNAL \FALLING_BLOCK_F2~7_combout\ : std_logic;
SIGNAL \Add2~14_combout\ : std_logic;
SIGNAL \FALLING_BLOCK_F2~9_combout\ : std_logic;
SIGNAL \Add2~0_combout\ : std_logic;
SIGNAL \FALLING_BLOCK_F2~16_combout\ : std_logic;
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
SIGNAL \process_0~8_combout\ : std_logic;
SIGNAL \FALLING_BLOCK_F~12_combout\ : std_logic;
SIGNAL \FALLING_BLOCK_F[27]~35_combout\ : std_logic;
SIGNAL \FALLING_BLOCK_F~23_combout\ : std_logic;
SIGNAL \Add0~21\ : std_logic;
SIGNAL \Add0~23\ : std_logic;
SIGNAL \Add0~24_combout\ : std_logic;
SIGNAL \FALLING_BLOCK_F~25_combout\ : std_logic;
SIGNAL \Add0~25\ : std_logic;
SIGNAL \Add0~26_combout\ : std_logic;
SIGNAL \FALLING_BLOCK_F~20_combout\ : std_logic;
SIGNAL \Add0~27\ : std_logic;
SIGNAL \Add0~29\ : std_logic;
SIGNAL \Add0~30_combout\ : std_logic;
SIGNAL \FALLING_BLOCK_F~22_combout\ : std_logic;
SIGNAL \Add0~31\ : std_logic;
SIGNAL \Add0~33\ : std_logic;
SIGNAL \Add0~35\ : std_logic;
SIGNAL \Add0~36_combout\ : std_logic;
SIGNAL \FALLING_BLOCK_F~27_combout\ : std_logic;
SIGNAL \Add0~37\ : std_logic;
SIGNAL \Add0~38_combout\ : std_logic;
SIGNAL \FALLING_BLOCK_F~28_combout\ : std_logic;
SIGNAL \Add0~39\ : std_logic;
SIGNAL \Add0~41\ : std_logic;
SIGNAL \Add0~43\ : std_logic;
SIGNAL \Add0~44_combout\ : std_logic;
SIGNAL \FALLING_BLOCK_F~31_combout\ : std_logic;
SIGNAL \Add0~45\ : std_logic;
SIGNAL \Add0~46_combout\ : std_logic;
SIGNAL \FALLING_BLOCK_F~32_combout\ : std_logic;
SIGNAL \Add0~47\ : std_logic;
SIGNAL \Add0~48_combout\ : std_logic;
SIGNAL \FALLING_BLOCK_F~33_combout\ : std_logic;
SIGNAL \Add0~49\ : std_logic;
SIGNAL \Add0~51\ : std_logic;
SIGNAL \Add0~52_combout\ : std_logic;
SIGNAL \FALLING_BLOCK_F~17_combout\ : std_logic;
SIGNAL \Add0~53\ : std_logic;
SIGNAL \Add0~54_combout\ : std_logic;
SIGNAL \FALLING_BLOCK_F~18_combout\ : std_logic;
SIGNAL \Add0~55\ : std_logic;
SIGNAL \Add0~57\ : std_logic;
SIGNAL \Add0~58_combout\ : std_logic;
SIGNAL \FALLING_BLOCK_F~34_combout\ : std_logic;
SIGNAL \Add0~59\ : std_logic;
SIGNAL \Add0~60_combout\ : std_logic;
SIGNAL \FALLING_BLOCK_F[30]~36_combout\ : std_logic;
SIGNAL \LessThan31~7_combout\ : std_logic;
SIGNAL \Add0~42_combout\ : std_logic;
SIGNAL \FALLING_BLOCK_F~30_combout\ : std_logic;
SIGNAL \LessThan31~5_combout\ : std_logic;
SIGNAL \Add0~40_combout\ : std_logic;
SIGNAL \FALLING_BLOCK_F~29_combout\ : std_logic;
SIGNAL \Add0~34_combout\ : std_logic;
SIGNAL \FALLING_BLOCK_F~26_combout\ : std_logic;
SIGNAL \LessThan31~4_combout\ : std_logic;
SIGNAL \LessThan31~2_combout\ : std_logic;
SIGNAL \Add0~22_combout\ : std_logic;
SIGNAL \FALLING_BLOCK_F~24_combout\ : std_logic;
SIGNAL \LessThan31~3_combout\ : std_logic;
SIGNAL \LessThan31~6_combout\ : std_logic;
SIGNAL \FALLING_BLOCK_F~6_combout\ : std_logic;
SIGNAL \FALLING_BLOCK_F[27]~0_combout\ : std_logic;
SIGNAL \FALLING_BLOCK_F[31]~2_combout\ : std_logic;
SIGNAL \FALLING_BLOCK_F[31]~37_combout\ : std_logic;
SIGNAL \FALLING_BLOCK_I[0]~32_combout\ : std_logic;
SIGNAL \FALLING_BLOCK_I[4]~52_combout\ : std_logic;
SIGNAL \FALLING_BLOCK_I[10]~53_combout\ : std_logic;
SIGNAL \FALLING_BLOCK_I[0]~33\ : std_logic;
SIGNAL \FALLING_BLOCK_I[1]~34_combout\ : std_logic;
SIGNAL \FALLING_BLOCK_I[1]~35\ : std_logic;
SIGNAL \FALLING_BLOCK_I[2]~36_combout\ : std_logic;
SIGNAL \FALLING_BLOCK_I[2]~37\ : std_logic;
SIGNAL \FALLING_BLOCK_I[3]~39\ : std_logic;
SIGNAL \FALLING_BLOCK_I[4]~40_combout\ : std_logic;
SIGNAL \FALLING_BLOCK_I[4]~41\ : std_logic;
SIGNAL \FALLING_BLOCK_I[5]~43\ : std_logic;
SIGNAL \FALLING_BLOCK_I[6]~45\ : std_logic;
SIGNAL \FALLING_BLOCK_I[7]~46_combout\ : std_logic;
SIGNAL \FALLING_BLOCK_I[7]~47\ : std_logic;
SIGNAL \FALLING_BLOCK_I[8]~48_combout\ : std_logic;
SIGNAL \FALLING_BLOCK_I[8]~49\ : std_logic;
SIGNAL \FALLING_BLOCK_I[9]~50_combout\ : std_logic;
SIGNAL \FALLING_BLOCK_I[9]~51\ : std_logic;
SIGNAL \FALLING_BLOCK_I[10]~54_combout\ : std_logic;
SIGNAL \FALLING_BLOCK_I[10]~55\ : std_logic;
SIGNAL \FALLING_BLOCK_I[11]~57\ : std_logic;
SIGNAL \FALLING_BLOCK_I[12]~58_combout\ : std_logic;
SIGNAL \FALLING_BLOCK_I[12]~59\ : std_logic;
SIGNAL \FALLING_BLOCK_I[13]~61\ : std_logic;
SIGNAL \FALLING_BLOCK_I[14]~62_combout\ : std_logic;
SIGNAL \FALLING_BLOCK_I[14]~63\ : std_logic;
SIGNAL \FALLING_BLOCK_I[15]~65\ : std_logic;
SIGNAL \FALLING_BLOCK_I[16]~66_combout\ : std_logic;
SIGNAL \FALLING_BLOCK_I[16]~67\ : std_logic;
SIGNAL \FALLING_BLOCK_I[17]~68_combout\ : std_logic;
SIGNAL \FALLING_BLOCK_I[17]~69\ : std_logic;
SIGNAL \FALLING_BLOCK_I[18]~70_combout\ : std_logic;
SIGNAL \FALLING_BLOCK_I[18]~71\ : std_logic;
SIGNAL \FALLING_BLOCK_I[19]~73\ : std_logic;
SIGNAL \FALLING_BLOCK_I[20]~74_combout\ : std_logic;
SIGNAL \FALLING_BLOCK_I[20]~75\ : std_logic;
SIGNAL \FALLING_BLOCK_I[21]~77\ : std_logic;
SIGNAL \FALLING_BLOCK_I[22]~79\ : std_logic;
SIGNAL \FALLING_BLOCK_I[23]~80_combout\ : std_logic;
SIGNAL \FALLING_BLOCK_I[23]~81\ : std_logic;
SIGNAL \FALLING_BLOCK_I[24]~82_combout\ : std_logic;
SIGNAL \FALLING_BLOCK_I[24]~83\ : std_logic;
SIGNAL \FALLING_BLOCK_I[25]~84_combout\ : std_logic;
SIGNAL \FALLING_BLOCK_I[25]~85\ : std_logic;
SIGNAL \FALLING_BLOCK_I[26]~86_combout\ : std_logic;
SIGNAL \FALLING_BLOCK_I[26]~87\ : std_logic;
SIGNAL \FALLING_BLOCK_I[27]~88_combout\ : std_logic;
SIGNAL \FALLING_BLOCK_I[27]~89\ : std_logic;
SIGNAL \FALLING_BLOCK_I[28]~90_combout\ : std_logic;
SIGNAL \LessThan34~0_combout\ : std_logic;
SIGNAL \FALLING_BLOCK_I[3]~38_combout\ : std_logic;
SIGNAL \LessThan34~7_combout\ : std_logic;
SIGNAL \FALLING_BLOCK_I[5]~42_combout\ : std_logic;
SIGNAL \LessThan34~8_combout\ : std_logic;
SIGNAL \LessThan34~9_combout\ : std_logic;
SIGNAL \FALLING_BLOCK_I[28]~91\ : std_logic;
SIGNAL \FALLING_BLOCK_I[29]~92_combout\ : std_logic;
SIGNAL \FALLING_BLOCK_I[29]~93\ : std_logic;
SIGNAL \FALLING_BLOCK_I[30]~94_combout\ : std_logic;
SIGNAL \LessThan34~1_combout\ : std_logic;
SIGNAL \FALLING_BLOCK_F[10]~1_combout\ : std_logic;
SIGNAL \FALLING_BLOCK_F[10]~5_combout\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \FALLING_BLOCK_F~14_combout\ : std_logic;
SIGNAL \Add0~1\ : std_logic;
SIGNAL \Add0~2_combout\ : std_logic;
SIGNAL \FALLING_BLOCK_F~13_combout\ : std_logic;
SIGNAL \Add0~3\ : std_logic;
SIGNAL \Add0~5\ : std_logic;
SIGNAL \Add0~6_combout\ : std_logic;
SIGNAL \FALLING_BLOCK_F~11_combout\ : std_logic;
SIGNAL \Add0~7\ : std_logic;
SIGNAL \Add0~8_combout\ : std_logic;
SIGNAL \FALLING_BLOCK_F~10_combout\ : std_logic;
SIGNAL \Add0~9\ : std_logic;
SIGNAL \Add0~10_combout\ : std_logic;
SIGNAL \FALLING_BLOCK_F~9_combout\ : std_logic;
SIGNAL \Add0~11\ : std_logic;
SIGNAL \Add0~12_combout\ : std_logic;
SIGNAL \FALLING_BLOCK_F~8_combout\ : std_logic;
SIGNAL \LessThan31~8_combout\ : std_logic;
SIGNAL \LessThan31~9_combout\ : std_logic;
SIGNAL \LessThan31~10_combout\ : std_logic;
SIGNAL \FALLING_BLOCK_F[27]~3_combout\ : std_logic;
SIGNAL \Add0~13\ : std_logic;
SIGNAL \Add0~15\ : std_logic;
SIGNAL \Add0~17\ : std_logic;
SIGNAL \Add0~18_combout\ : std_logic;
SIGNAL \FALLING_BLOCK_F~4_combout\ : std_logic;
SIGNAL \Add0~19\ : std_logic;
SIGNAL \Add0~20_combout\ : std_logic;
SIGNAL \FALLING_BLOCK_F~15_combout\ : std_logic;
SIGNAL \Add0~14_combout\ : std_logic;
SIGNAL \FALLING_BLOCK_F~7_combout\ : std_logic;
SIGNAL \LessThan0~1_cout\ : std_logic;
SIGNAL \LessThan0~3_cout\ : std_logic;
SIGNAL \LessThan0~5_cout\ : std_logic;
SIGNAL \LessThan0~7_cout\ : std_logic;
SIGNAL \LessThan0~9_cout\ : std_logic;
SIGNAL \LessThan0~11_cout\ : std_logic;
SIGNAL \LessThan0~13_cout\ : std_logic;
SIGNAL \LessThan0~15_cout\ : std_logic;
SIGNAL \LessThan0~17_cout\ : std_logic;
SIGNAL \LessThan0~18_combout\ : std_logic;
SIGNAL \LessThan1~1_cout\ : std_logic;
SIGNAL \LessThan1~3_cout\ : std_logic;
SIGNAL \LessThan1~5_cout\ : std_logic;
SIGNAL \LessThan1~7_cout\ : std_logic;
SIGNAL \LessThan1~9_cout\ : std_logic;
SIGNAL \LessThan1~11_cout\ : std_logic;
SIGNAL \LessThan1~13_cout\ : std_logic;
SIGNAL \LessThan1~15_cout\ : std_logic;
SIGNAL \LessThan1~17_cout\ : std_logic;
SIGNAL \LessThan1~18_combout\ : std_logic;
SIGNAL \process_0~10_combout\ : std_logic;
SIGNAL \process_0~14_combout\ : std_logic;
SIGNAL \Add1~2_combout\ : std_logic;
SIGNAL \FALLING_BLOCK_F1~12_combout\ : std_logic;
SIGNAL \LessThan3~1_cout\ : std_logic;
SIGNAL \LessThan3~3_cout\ : std_logic;
SIGNAL \LessThan3~5_cout\ : std_logic;
SIGNAL \LessThan3~7_cout\ : std_logic;
SIGNAL \LessThan3~9_cout\ : std_logic;
SIGNAL \LessThan3~11_cout\ : std_logic;
SIGNAL \LessThan3~13_cout\ : std_logic;
SIGNAL \LessThan3~15_cout\ : std_logic;
SIGNAL \LessThan3~17_cout\ : std_logic;
SIGNAL \LessThan3~18_combout\ : std_logic;
SIGNAL \process_0~13_combout\ : std_logic;
SIGNAL \R~9_combout\ : std_logic;
SIGNAL \R~10_combout\ : std_logic;
SIGNAL \R~11_combout\ : std_logic;
SIGNAL \R~18_combout\ : std_logic;
SIGNAL \R[0]~reg0_q\ : std_logic;
SIGNAL \Add2~10_combout\ : std_logic;
SIGNAL \LessThan8~1_cout\ : std_logic;
SIGNAL \LessThan8~3_cout\ : std_logic;
SIGNAL \LessThan8~5_cout\ : std_logic;
SIGNAL \LessThan8~7_cout\ : std_logic;
SIGNAL \LessThan8~9_cout\ : std_logic;
SIGNAL \LessThan8~11_cout\ : std_logic;
SIGNAL \LessThan8~13_cout\ : std_logic;
SIGNAL \LessThan8~15_cout\ : std_logic;
SIGNAL \LessThan8~17_cout\ : std_logic;
SIGNAL \LessThan8~18_combout\ : std_logic;
SIGNAL \process_0~7_combout\ : std_logic;
SIGNAL \B~3_combout\ : std_logic;
SIGNAL \MI~input_o\ : std_logic;
SIGNAL \DEBMI|Q1~q\ : std_logic;
SIGNAL \DEBMI|Q2~feeder_combout\ : std_logic;
SIGNAL \DEBMI|Q2~q\ : std_logic;
SIGNAL \DEBMI|Q3~q\ : std_logic;
SIGNAL \DEBMI|QOUT~0_combout\ : std_logic;
SIGNAL \G~2_combout\ : std_logic;
SIGNAL \R~22_combout\ : std_logic;
SIGNAL \LessThan19~4_combout\ : std_logic;
SIGNAL \R~19_combout\ : std_logic;
SIGNAL \R~20_combout\ : std_logic;
SIGNAL \R~21_combout\ : std_logic;
SIGNAL \G~1_combout\ : std_logic;
SIGNAL \R~23_combout\ : std_logic;
SIGNAL \R~24_combout\ : std_logic;
SIGNAL \R[1]~reg0_q\ : std_logic;
SIGNAL \R[0]~7_combout\ : std_logic;
SIGNAL \G[0]~3_combout\ : std_logic;
SIGNAL \B~19_combout\ : std_logic;
SIGNAL \process_0~23_combout\ : std_logic;
SIGNAL \G~5_combout\ : std_logic;
SIGNAL \Add0~16_combout\ : std_logic;
SIGNAL \LessThan2~1_cout\ : std_logic;
SIGNAL \LessThan2~3_cout\ : std_logic;
SIGNAL \LessThan2~5_cout\ : std_logic;
SIGNAL \LessThan2~7_cout\ : std_logic;
SIGNAL \LessThan2~9_cout\ : std_logic;
SIGNAL \LessThan2~11_cout\ : std_logic;
SIGNAL \LessThan2~13_cout\ : std_logic;
SIGNAL \LessThan2~15_cout\ : std_logic;
SIGNAL \LessThan2~17_cout\ : std_logic;
SIGNAL \LessThan2~18_combout\ : std_logic;
SIGNAL \process_0~11_combout\ : std_logic;
SIGNAL \G~4_combout\ : std_logic;
SIGNAL \G~6_combout\ : std_logic;
SIGNAL \G~8_combout\ : std_logic;
SIGNAL \G~14_combout\ : std_logic;
SIGNAL \G[0]~reg0_q\ : std_logic;
SIGNAL \process_0~25_combout\ : std_logic;
SIGNAL \process_0~26_combout\ : std_logic;
SIGNAL \process_0~27_combout\ : std_logic;
SIGNAL \process_0~28_combout\ : std_logic;
SIGNAL \G~15_combout\ : std_logic;
SIGNAL \G~19_combout\ : std_logic;
SIGNAL \G~20_combout\ : std_logic;
SIGNAL \G~21_combout\ : std_logic;
SIGNAL \G~10_combout\ : std_logic;
SIGNAL \G~11_combout\ : std_logic;
SIGNAL \G~22_combout\ : std_logic;
SIGNAL \G~23_combout\ : std_logic;
SIGNAL \G[1]~reg0_q\ : std_logic;
SIGNAL \B~4_combout\ : std_logic;
SIGNAL \B~5_combout\ : std_logic;
SIGNAL \process_0~31_combout\ : std_logic;
SIGNAL \process_0~30_combout\ : std_logic;
SIGNAL \G~12_combout\ : std_logic;
SIGNAL \G~13_combout\ : std_logic;
SIGNAL \G~24_combout\ : std_logic;
SIGNAL \G[2]~reg0_q\ : std_logic;
SIGNAL \G[3]~reg0_q\ : std_logic;
SIGNAL \B~9_combout\ : std_logic;
SIGNAL \B~7_combout\ : std_logic;
SIGNAL \LessThan17~5_combout\ : std_logic;
SIGNAL \LessThan18~0_combout\ : std_logic;
SIGNAL \process_0~29_combout\ : std_logic;
SIGNAL \B~10_combout\ : std_logic;
SIGNAL \B~6_combout\ : std_logic;
SIGNAL \B~11_combout\ : std_logic;
SIGNAL \B[0]~reg0_q\ : std_logic;
SIGNAL \R~26_combout\ : std_logic;
SIGNAL \B~15_combout\ : std_logic;
SIGNAL \B~16_combout\ : std_logic;
SIGNAL \B~12_combout\ : std_logic;
SIGNAL \B~13_combout\ : std_logic;
SIGNAL \B~14_combout\ : std_logic;
SIGNAL \B~17_combout\ : std_logic;
SIGNAL \B[1]~reg0_q\ : std_logic;
SIGNAL \B~18_combout\ : std_logic;
SIGNAL \B[2]~reg0_q\ : std_logic;
SIGNAL \B[3]~reg0_q\ : std_logic;
SIGNAL \CLK_50MHz~input_o\ : std_logic;
SIGNAL \CLK_50MHz~inputclkctrl_outclk\ : std_logic;
SIGNAL \PIANOSPEAKER|COUNTER440[0]~32_combout\ : std_logic;
SIGNAL \PIANOSPEAKER|COUNTER440[21]~74_combout\ : std_logic;
SIGNAL \PIANOSPEAKER|LessThan0~6_combout\ : std_logic;
SIGNAL \PIANOSPEAKER|COUNTER440[29]~90_combout\ : std_logic;
SIGNAL \PIANOSPEAKER|COUNTER440[27]~86_combout\ : std_logic;
SIGNAL \PIANOSPEAKER|LessThan0~7_combout\ : std_logic;
SIGNAL \PIANOSPEAKER|LessThan0~8_combout\ : std_logic;
SIGNAL \PIANOSPEAKER|COUNTER440[15]~62_combout\ : std_logic;
SIGNAL \PIANOSPEAKER|COUNTER440[3]~38_combout\ : std_logic;
SIGNAL \PIANOSPEAKER|LessThan0~1_combout\ : std_logic;
SIGNAL \PIANOSPEAKER|COUNTER440[6]~44_combout\ : std_logic;
SIGNAL \PIANOSPEAKER|LessThan0~2_combout\ : std_logic;
SIGNAL \PIANOSPEAKER|LessThan0~3_combout\ : std_logic;
SIGNAL \PIANOSPEAKER|LessThan0~4_combout\ : std_logic;
SIGNAL \PIANOSPEAKER|LessThan0~9_combout\ : std_logic;
SIGNAL \PIANOSPEAKER|LessThan0~10_combout\ : std_logic;
SIGNAL \PIANOSPEAKER|COUNTER440[0]~33\ : std_logic;
SIGNAL \PIANOSPEAKER|COUNTER440[1]~34_combout\ : std_logic;
SIGNAL \PIANOSPEAKER|COUNTER440[1]~35\ : std_logic;
SIGNAL \PIANOSPEAKER|COUNTER440[2]~36_combout\ : std_logic;
SIGNAL \PIANOSPEAKER|COUNTER440[2]~37\ : std_logic;
SIGNAL \PIANOSPEAKER|COUNTER440[3]~39\ : std_logic;
SIGNAL \PIANOSPEAKER|COUNTER440[4]~40_combout\ : std_logic;
SIGNAL \PIANOSPEAKER|COUNTER440[4]~41\ : std_logic;
SIGNAL \PIANOSPEAKER|COUNTER440[5]~43\ : std_logic;
SIGNAL \PIANOSPEAKER|COUNTER440[6]~45\ : std_logic;
SIGNAL \PIANOSPEAKER|COUNTER440[7]~46_combout\ : std_logic;
SIGNAL \PIANOSPEAKER|COUNTER440[7]~47\ : std_logic;
SIGNAL \PIANOSPEAKER|COUNTER440[8]~48_combout\ : std_logic;
SIGNAL \PIANOSPEAKER|COUNTER440[8]~49\ : std_logic;
SIGNAL \PIANOSPEAKER|COUNTER440[9]~50_combout\ : std_logic;
SIGNAL \PIANOSPEAKER|COUNTER440[9]~51\ : std_logic;
SIGNAL \PIANOSPEAKER|COUNTER440[10]~52_combout\ : std_logic;
SIGNAL \PIANOSPEAKER|COUNTER440[10]~53\ : std_logic;
SIGNAL \PIANOSPEAKER|COUNTER440[11]~55\ : std_logic;
SIGNAL \PIANOSPEAKER|COUNTER440[12]~56_combout\ : std_logic;
SIGNAL \PIANOSPEAKER|COUNTER440[12]~57\ : std_logic;
SIGNAL \PIANOSPEAKER|COUNTER440[13]~59\ : std_logic;
SIGNAL \PIANOSPEAKER|COUNTER440[14]~60_combout\ : std_logic;
SIGNAL \PIANOSPEAKER|COUNTER440[14]~61\ : std_logic;
SIGNAL \PIANOSPEAKER|COUNTER440[15]~63\ : std_logic;
SIGNAL \PIANOSPEAKER|COUNTER440[16]~64_combout\ : std_logic;
SIGNAL \PIANOSPEAKER|COUNTER440[16]~65\ : std_logic;
SIGNAL \PIANOSPEAKER|COUNTER440[17]~66_combout\ : std_logic;
SIGNAL \PIANOSPEAKER|COUNTER440[17]~67\ : std_logic;
SIGNAL \PIANOSPEAKER|COUNTER440[18]~68_combout\ : std_logic;
SIGNAL \PIANOSPEAKER|COUNTER440[18]~69\ : std_logic;
SIGNAL \PIANOSPEAKER|COUNTER440[19]~71\ : std_logic;
SIGNAL \PIANOSPEAKER|COUNTER440[20]~72_combout\ : std_logic;
SIGNAL \PIANOSPEAKER|COUNTER440[20]~73\ : std_logic;
SIGNAL \PIANOSPEAKER|COUNTER440[21]~75\ : std_logic;
SIGNAL \PIANOSPEAKER|COUNTER440[22]~77\ : std_logic;
SIGNAL \PIANOSPEAKER|COUNTER440[23]~78_combout\ : std_logic;
SIGNAL \PIANOSPEAKER|COUNTER440[23]~79\ : std_logic;
SIGNAL \PIANOSPEAKER|COUNTER440[24]~80_combout\ : std_logic;
SIGNAL \PIANOSPEAKER|COUNTER440[24]~81\ : std_logic;
SIGNAL \PIANOSPEAKER|COUNTER440[25]~82_combout\ : std_logic;
SIGNAL \PIANOSPEAKER|COUNTER440[25]~83\ : std_logic;
SIGNAL \PIANOSPEAKER|COUNTER440[26]~84_combout\ : std_logic;
SIGNAL \PIANOSPEAKER|COUNTER440[26]~85\ : std_logic;
SIGNAL \PIANOSPEAKER|COUNTER440[27]~87\ : std_logic;
SIGNAL \PIANOSPEAKER|COUNTER440[28]~88_combout\ : std_logic;
SIGNAL \PIANOSPEAKER|COUNTER440[28]~89\ : std_logic;
SIGNAL \PIANOSPEAKER|COUNTER440[29]~91\ : std_logic;
SIGNAL \PIANOSPEAKER|COUNTER440[30]~92_combout\ : std_logic;
SIGNAL \PIANOSPEAKER|COUNTER440[30]~93\ : std_logic;
SIGNAL \PIANOSPEAKER|COUNTER440[31]~94_combout\ : std_logic;
SIGNAL \PIANOSPEAKER|CLK_440HZ~0_combout\ : std_logic;
SIGNAL \PIANOSPEAKER|CLK_440HZ~q\ : std_logic;
SIGNAL \PIANOSPEAKER|COUNTER659[0]~32_combout\ : std_logic;
SIGNAL \PIANOSPEAKER|COUNTER659[15]~62_combout\ : std_logic;
SIGNAL \PIANOSPEAKER|COUNTER659[13]~58_combout\ : std_logic;
SIGNAL \PIANOSPEAKER|COUNTER659[6]~44_combout\ : std_logic;
SIGNAL \PIANOSPEAKER|COUNTER659[5]~42_combout\ : std_logic;
SIGNAL \PIANOSPEAKER|LessThan4~0_combout\ : std_logic;
SIGNAL \PIANOSPEAKER|COUNTER659[11]~54_combout\ : std_logic;
SIGNAL \PIANOSPEAKER|LessThan4~1_combout\ : std_logic;
SIGNAL \PIANOSPEAKER|LessThan4~2_combout\ : std_logic;
SIGNAL \PIANOSPEAKER|LessThan4~3_combout\ : std_logic;
SIGNAL \PIANOSPEAKER|LessThan4~9_combout\ : std_logic;
SIGNAL \PIANOSPEAKER|COUNTER659[0]~33\ : std_logic;
SIGNAL \PIANOSPEAKER|COUNTER659[1]~34_combout\ : std_logic;
SIGNAL \PIANOSPEAKER|COUNTER659[1]~35\ : std_logic;
SIGNAL \PIANOSPEAKER|COUNTER659[2]~36_combout\ : std_logic;
SIGNAL \PIANOSPEAKER|COUNTER659[2]~37\ : std_logic;
SIGNAL \PIANOSPEAKER|COUNTER659[3]~39\ : std_logic;
SIGNAL \PIANOSPEAKER|COUNTER659[4]~40_combout\ : std_logic;
SIGNAL \PIANOSPEAKER|COUNTER659[4]~41\ : std_logic;
SIGNAL \PIANOSPEAKER|COUNTER659[5]~43\ : std_logic;
SIGNAL \PIANOSPEAKER|COUNTER659[6]~45\ : std_logic;
SIGNAL \PIANOSPEAKER|COUNTER659[7]~46_combout\ : std_logic;
SIGNAL \PIANOSPEAKER|COUNTER659[7]~47\ : std_logic;
SIGNAL \PIANOSPEAKER|COUNTER659[8]~48_combout\ : std_logic;
SIGNAL \PIANOSPEAKER|COUNTER659[8]~49\ : std_logic;
SIGNAL \PIANOSPEAKER|COUNTER659[9]~50_combout\ : std_logic;
SIGNAL \PIANOSPEAKER|COUNTER659[9]~51\ : std_logic;
SIGNAL \PIANOSPEAKER|COUNTER659[10]~52_combout\ : std_logic;
SIGNAL \PIANOSPEAKER|COUNTER659[10]~53\ : std_logic;
SIGNAL \PIANOSPEAKER|COUNTER659[11]~55\ : std_logic;
SIGNAL \PIANOSPEAKER|COUNTER659[12]~56_combout\ : std_logic;
SIGNAL \PIANOSPEAKER|COUNTER659[12]~57\ : std_logic;
SIGNAL \PIANOSPEAKER|COUNTER659[13]~59\ : std_logic;
SIGNAL \PIANOSPEAKER|COUNTER659[14]~60_combout\ : std_logic;
SIGNAL \PIANOSPEAKER|COUNTER659[14]~61\ : std_logic;
SIGNAL \PIANOSPEAKER|COUNTER659[15]~63\ : std_logic;
SIGNAL \PIANOSPEAKER|COUNTER659[16]~64_combout\ : std_logic;
SIGNAL \PIANOSPEAKER|COUNTER659[16]~65\ : std_logic;
SIGNAL \PIANOSPEAKER|COUNTER659[17]~66_combout\ : std_logic;
SIGNAL \PIANOSPEAKER|COUNTER659[17]~67\ : std_logic;
SIGNAL \PIANOSPEAKER|COUNTER659[18]~68_combout\ : std_logic;
SIGNAL \PIANOSPEAKER|COUNTER659[18]~69\ : std_logic;
SIGNAL \PIANOSPEAKER|COUNTER659[19]~70_combout\ : std_logic;
SIGNAL \PIANOSPEAKER|COUNTER659[19]~71\ : std_logic;
SIGNAL \PIANOSPEAKER|COUNTER659[20]~72_combout\ : std_logic;
SIGNAL \PIANOSPEAKER|LessThan4~4_combout\ : std_logic;
SIGNAL \PIANOSPEAKER|COUNTER659[20]~73\ : std_logic;
SIGNAL \PIANOSPEAKER|COUNTER659[21]~75\ : std_logic;
SIGNAL \PIANOSPEAKER|COUNTER659[22]~77\ : std_logic;
SIGNAL \PIANOSPEAKER|COUNTER659[23]~78_combout\ : std_logic;
SIGNAL \PIANOSPEAKER|COUNTER659[23]~79\ : std_logic;
SIGNAL \PIANOSPEAKER|COUNTER659[24]~80_combout\ : std_logic;
SIGNAL \PIANOSPEAKER|COUNTER659[24]~81\ : std_logic;
SIGNAL \PIANOSPEAKER|COUNTER659[25]~82_combout\ : std_logic;
SIGNAL \PIANOSPEAKER|COUNTER659[25]~83\ : std_logic;
SIGNAL \PIANOSPEAKER|COUNTER659[26]~84_combout\ : std_logic;
SIGNAL \PIANOSPEAKER|COUNTER659[26]~85\ : std_logic;
SIGNAL \PIANOSPEAKER|COUNTER659[27]~86_combout\ : std_logic;
SIGNAL \PIANOSPEAKER|LessThan4~6_combout\ : std_logic;
SIGNAL \PIANOSPEAKER|COUNTER659[21]~74_combout\ : std_logic;
SIGNAL \PIANOSPEAKER|LessThan4~5_combout\ : std_logic;
SIGNAL \PIANOSPEAKER|LessThan4~8_combout\ : std_logic;
SIGNAL \PIANOSPEAKER|CLK_659HZ~0_combout\ : std_logic;
SIGNAL \PIANOSPEAKER|CLK_659HZ~q\ : std_logic;
SIGNAL \PIANOSPEAKER|SPEK~1_combout\ : std_logic;
SIGNAL \PIANOSPEAKER|COUNTER800[0]~32_combout\ : std_logic;
SIGNAL \PIANOSPEAKER|COUNTER800[0]~33\ : std_logic;
SIGNAL \PIANOSPEAKER|COUNTER800[1]~34_combout\ : std_logic;
SIGNAL \PIANOSPEAKER|COUNTER800[1]~35\ : std_logic;
SIGNAL \PIANOSPEAKER|COUNTER800[2]~36_combout\ : std_logic;
SIGNAL \PIANOSPEAKER|COUNTER800[2]~37\ : std_logic;
SIGNAL \PIANOSPEAKER|COUNTER800[3]~39\ : std_logic;
SIGNAL \PIANOSPEAKER|COUNTER800[4]~40_combout\ : std_logic;
SIGNAL \PIANOSPEAKER|COUNTER800[4]~41\ : std_logic;
SIGNAL \PIANOSPEAKER|COUNTER800[5]~43\ : std_logic;
SIGNAL \PIANOSPEAKER|COUNTER800[6]~45\ : std_logic;
SIGNAL \PIANOSPEAKER|COUNTER800[7]~46_combout\ : std_logic;
SIGNAL \PIANOSPEAKER|COUNTER800[7]~47\ : std_logic;
SIGNAL \PIANOSPEAKER|COUNTER800[8]~48_combout\ : std_logic;
SIGNAL \PIANOSPEAKER|COUNTER800[8]~49\ : std_logic;
SIGNAL \PIANOSPEAKER|COUNTER800[9]~50_combout\ : std_logic;
SIGNAL \PIANOSPEAKER|COUNTER800[9]~51\ : std_logic;
SIGNAL \PIANOSPEAKER|COUNTER800[10]~52_combout\ : std_logic;
SIGNAL \PIANOSPEAKER|COUNTER800[10]~53\ : std_logic;
SIGNAL \PIANOSPEAKER|COUNTER800[11]~55\ : std_logic;
SIGNAL \PIANOSPEAKER|COUNTER800[12]~56_combout\ : std_logic;
SIGNAL \PIANOSPEAKER|COUNTER800[12]~57\ : std_logic;
SIGNAL \PIANOSPEAKER|COUNTER800[13]~59\ : std_logic;
SIGNAL \PIANOSPEAKER|COUNTER800[14]~60_combout\ : std_logic;
SIGNAL \PIANOSPEAKER|COUNTER800[13]~58_combout\ : std_logic;
SIGNAL \PIANOSPEAKER|LessThan7~8_combout\ : std_logic;
SIGNAL \PIANOSPEAKER|COUNTER800[14]~61\ : std_logic;
SIGNAL \PIANOSPEAKER|COUNTER800[15]~63\ : std_logic;
SIGNAL \PIANOSPEAKER|COUNTER800[16]~64_combout\ : std_logic;
SIGNAL \PIANOSPEAKER|COUNTER800[16]~65\ : std_logic;
SIGNAL \PIANOSPEAKER|COUNTER800[17]~66_combout\ : std_logic;
SIGNAL \PIANOSPEAKER|COUNTER800[17]~67\ : std_logic;
SIGNAL \PIANOSPEAKER|COUNTER800[18]~68_combout\ : std_logic;
SIGNAL \PIANOSPEAKER|COUNTER800[18]~69\ : std_logic;
SIGNAL \PIANOSPEAKER|COUNTER800[19]~71\ : std_logic;
SIGNAL \PIANOSPEAKER|COUNTER800[20]~72_combout\ : std_logic;
SIGNAL \PIANOSPEAKER|COUNTER800[20]~73\ : std_logic;
SIGNAL \PIANOSPEAKER|COUNTER800[21]~75\ : std_logic;
SIGNAL \PIANOSPEAKER|COUNTER800[22]~77\ : std_logic;
SIGNAL \PIANOSPEAKER|COUNTER800[23]~78_combout\ : std_logic;
SIGNAL \PIANOSPEAKER|COUNTER800[23]~79\ : std_logic;
SIGNAL \PIANOSPEAKER|COUNTER800[24]~80_combout\ : std_logic;
SIGNAL \PIANOSPEAKER|COUNTER800[24]~81\ : std_logic;
SIGNAL \PIANOSPEAKER|COUNTER800[25]~82_combout\ : std_logic;
SIGNAL \PIANOSPEAKER|COUNTER800[25]~83\ : std_logic;
SIGNAL \PIANOSPEAKER|COUNTER800[26]~84_combout\ : std_logic;
SIGNAL \PIANOSPEAKER|COUNTER800[26]~85\ : std_logic;
SIGNAL \PIANOSPEAKER|COUNTER800[27]~87\ : std_logic;
SIGNAL \PIANOSPEAKER|COUNTER800[28]~88_combout\ : std_logic;
SIGNAL \PIANOSPEAKER|COUNTER800[28]~89\ : std_logic;
SIGNAL \PIANOSPEAKER|COUNTER800[29]~91\ : std_logic;
SIGNAL \PIANOSPEAKER|COUNTER800[30]~92_combout\ : std_logic;
SIGNAL \PIANOSPEAKER|COUNTER800[30]~93\ : std_logic;
SIGNAL \PIANOSPEAKER|COUNTER800[31]~94_combout\ : std_logic;
SIGNAL \PIANOSPEAKER|COUNTER800[27]~86_combout\ : std_logic;
SIGNAL \PIANOSPEAKER|LessThan7~2_combout\ : std_logic;
SIGNAL \PIANOSPEAKER|COUNTER800[29]~90_combout\ : std_logic;
SIGNAL \PIANOSPEAKER|LessThan7~3_combout\ : std_logic;
SIGNAL \PIANOSPEAKER|COUNTER800[19]~70_combout\ : std_logic;
SIGNAL \PIANOSPEAKER|LessThan7~0_combout\ : std_logic;
SIGNAL \PIANOSPEAKER|LessThan7~4_combout\ : std_logic;
SIGNAL \PIANOSPEAKER|LessThan7~9_combout\ : std_logic;
SIGNAL \PIANOSPEAKER|CLK_800HZ~0_combout\ : std_logic;
SIGNAL \PIANOSPEAKER|CLK_800HZ~q\ : std_logic;
SIGNAL \PIANOSPEAKER|SPEK~2_combout\ : std_logic;
SIGNAL \PIANOSPEAKER|SPEK~3_combout\ : std_logic;
SIGNAL \PIANOSPEAKER|SPEK~4_combout\ : std_logic;
SIGNAL \PIANOSPEAKER|SPEK~5_combout\ : std_logic;
SIGNAL \PIANOSPEAKER|SPEK~6_combout\ : std_logic;
SIGNAL \PIANOSPEAKER|SPEK~q\ : std_logic;
SIGNAL \PIANOSPEAKER|COUNTER800\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \PIANOSPEAKER|COUNTER784\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \PIANOSPEAKER|COUNTER698\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \PIANOSPEAKER|COUNTER659\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \PIANOSPEAKER|COUNTER587\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \PIANOSPEAKER|COUNTER523\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \PIANOSPEAKER|COUNTER494\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \PIANOSPEAKER|COUNTER440\ : std_logic_vector(31 DOWNTO 0);
SIGNAL FALLING_BLOCK_I2 : std_logic_vector(31 DOWNTO 0);
SIGNAL \SYNC|COUNTER_V\ : std_logic_vector(9 DOWNTO 0);
SIGNAL COUNTER : std_logic_vector(31 DOWNTO 0);
SIGNAL \CLK100|COUNTER\ : std_logic_vector(18 DOWNTO 0);
SIGNAL FALLING_BLOCK_F : std_logic_vector(31 DOWNTO 0);
SIGNAL FALLING_BLOCK_F2 : std_logic_vector(31 DOWNTO 0);
SIGNAL \SYNC|COUNTER_H\ : std_logic_vector(9 DOWNTO 0);
SIGNAL FALLING_BLOCK_F1 : std_logic_vector(31 DOWNTO 0);
SIGNAL FALLING_BLOCK_I1 : std_logic_vector(31 DOWNTO 0);
SIGNAL FALLING_BLOCK_I : std_logic_vector(31 DOWNTO 0);
SIGNAL \ALT_INV_CLK_50MHz~inputclkctrl_outclk\ : std_logic;
SIGNAL \ALT_INV_RST~input_o\ : std_logic;
SIGNAL \SYNC|ALT_INV_LessThan1~1_combout\ : std_logic;

BEGIN

ww_CLK_50MHz <= CLK_50MHz;
ww_RST <= RST;
HSYNC <= ww_HSYNC;
VSYNC <= ww_VSYNC;
R <= ww_R;
G <= ww_G;
B <= ww_B;
ww_IZQ <= IZQ;
ww_DER <= DER;
ww_DO <= DO;
ww_RE <= RE;
ww_MI <= MI;
ww_FA <= FA;
ww_SOL <= SOL;
ww_LA <= LA;
ww_SI <= SI;
ww_DOB <= DOB;
SPEAKER <= ww_SPEAKER;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\CLK100|C100HZ~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLK100|C100HZ~q\);

\CLK|TEMPORAL~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLK|TEMPORAL~q\);

\CLK_50MHz~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLK_50MHz~input_o\);
\ALT_INV_CLK_50MHz~inputclkctrl_outclk\ <= NOT \CLK_50MHz~inputclkctrl_outclk\;
\ALT_INV_RST~input_o\ <= NOT \RST~input_o\;
\SYNC|ALT_INV_LessThan1~1_combout\ <= NOT \SYNC|LessThan1~1_combout\;

-- Location: LCCOMB_X22_Y15_N10
\SYNC|Add1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SYNC|Add1~0_combout\ = \SYNC|COUNTER_V\(0) $ (VCC)
-- \SYNC|Add1~1\ = CARRY(\SYNC|COUNTER_V\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SYNC|COUNTER_V\(0),
	datad => VCC,
	combout => \SYNC|Add1~0_combout\,
	cout => \SYNC|Add1~1\);

-- Location: LCCOMB_X22_Y15_N26
\SYNC|Add1~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SYNC|Add1~16_combout\ = (\SYNC|COUNTER_V\(8) & (\SYNC|Add1~15\ $ (GND))) # (!\SYNC|COUNTER_V\(8) & (!\SYNC|Add1~15\ & VCC))
-- \SYNC|Add1~17\ = CARRY((\SYNC|COUNTER_V\(8) & !\SYNC|Add1~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SYNC|COUNTER_V\(8),
	datad => VCC,
	cin => \SYNC|Add1~15\,
	combout => \SYNC|Add1~16_combout\,
	cout => \SYNC|Add1~17\);

-- Location: LCCOMB_X23_Y18_N12
\Add1~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~12_combout\ = (FALLING_BLOCK_F1(6) & (!\Add1~11\ & VCC)) # (!FALLING_BLOCK_F1(6) & (\Add1~11\ $ (GND)))
-- \Add1~13\ = CARRY((!FALLING_BLOCK_F1(6) & !\Add1~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => FALLING_BLOCK_F1(6),
	datad => VCC,
	cin => \Add1~11\,
	combout => \Add1~12_combout\,
	cout => \Add1~13\);

-- Location: LCCOMB_X19_Y13_N2
\Add2~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~2_combout\ = (FALLING_BLOCK_F2(1) & (!\Add2~1\)) # (!FALLING_BLOCK_F2(1) & ((\Add2~1\) # (GND)))
-- \Add2~3\ = CARRY((!\Add2~1\) # (!FALLING_BLOCK_F2(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => FALLING_BLOCK_F2(1),
	datad => VCC,
	cin => \Add2~1\,
	combout => \Add2~2_combout\,
	cout => \Add2~3\);

-- Location: LCCOMB_X19_Y13_N12
\Add2~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~12_combout\ = (FALLING_BLOCK_F2(6) & (!\Add2~11\ & VCC)) # (!FALLING_BLOCK_F2(6) & (\Add2~11\ $ (GND)))
-- \Add2~13\ = CARRY((!FALLING_BLOCK_F2(6) & !\Add2~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => FALLING_BLOCK_F2(6),
	datad => VCC,
	cin => \Add2~11\,
	combout => \Add2~12_combout\,
	cout => \Add2~13\);

-- Location: FF_X22_Y13_N13
\FALLING_BLOCK_I[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK|TEMPORAL~clkctrl_outclk\,
	d => \FALLING_BLOCK_I[6]~44_combout\,
	sclr => \FALLING_BLOCK_I[4]~52_combout\,
	ena => \FALLING_BLOCK_I[10]~53_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => FALLING_BLOCK_I(6));

-- Location: LCCOMB_X24_Y14_N4
\Add0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~4_combout\ = (FALLING_BLOCK_F(2) & ((GND) # (!\Add0~3\))) # (!FALLING_BLOCK_F(2) & (\Add0~3\ $ (GND)))
-- \Add0~5\ = CARRY((FALLING_BLOCK_F(2)) # (!\Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => FALLING_BLOCK_F(2),
	datad => VCC,
	cin => \Add0~3\,
	combout => \Add0~4_combout\,
	cout => \Add0~5\);

-- Location: LCCOMB_X20_Y17_N0
\Add4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add4~0_combout\ = FALLING_BLOCK_I1(0) $ (GND)
-- \Add4~1\ = CARRY(!FALLING_BLOCK_I1(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => FALLING_BLOCK_I1(0),
	datad => VCC,
	combout => \Add4~0_combout\,
	cout => \Add4~1\);

-- Location: LCCOMB_X20_Y17_N12
\Add4~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add4~12_combout\ = (FALLING_BLOCK_I1(6) & (!\Add4~11\ & VCC)) # (!FALLING_BLOCK_I1(6) & (\Add4~11\ $ (GND)))
-- \Add4~13\ = CARRY((!FALLING_BLOCK_I1(6) & !\Add4~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => FALLING_BLOCK_I1(6),
	datad => VCC,
	cin => \Add4~11\,
	combout => \Add4~12_combout\,
	cout => \Add4~13\);

-- Location: LCCOMB_X20_Y17_N16
\Add4~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add4~16_combout\ = (FALLING_BLOCK_I1(8) & (!\Add4~15\ & VCC)) # (!FALLING_BLOCK_I1(8) & (\Add4~15\ $ (GND)))
-- \Add4~17\ = CARRY((!FALLING_BLOCK_I1(8) & !\Add4~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => FALLING_BLOCK_I1(8),
	datad => VCC,
	cin => \Add4~15\,
	combout => \Add4~16_combout\,
	cout => \Add4~17\);

-- Location: LCCOMB_X16_Y15_N0
\Add5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add5~0_combout\ = FALLING_BLOCK_I2(0) $ (GND)
-- \Add5~1\ = CARRY(!FALLING_BLOCK_I2(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => FALLING_BLOCK_I2(0),
	datad => VCC,
	combout => \Add5~0_combout\,
	cout => \Add5~1\);

-- Location: LCCOMB_X16_Y15_N2
\Add5~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add5~2_combout\ = (FALLING_BLOCK_I2(1) & (!\Add5~1\)) # (!FALLING_BLOCK_I2(1) & ((\Add5~1\) # (GND)))
-- \Add5~3\ = CARRY((!\Add5~1\) # (!FALLING_BLOCK_I2(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => FALLING_BLOCK_I2(1),
	datad => VCC,
	cin => \Add5~1\,
	combout => \Add5~2_combout\,
	cout => \Add5~3\);

-- Location: LCCOMB_X16_Y15_N10
\Add5~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add5~10_combout\ = (FALLING_BLOCK_I2(5) & ((\Add5~9\) # (GND))) # (!FALLING_BLOCK_I2(5) & (!\Add5~9\))
-- \Add5~11\ = CARRY((FALLING_BLOCK_I2(5)) # (!\Add5~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => FALLING_BLOCK_I2(5),
	datad => VCC,
	cin => \Add5~9\,
	combout => \Add5~10_combout\,
	cout => \Add5~11\);

-- Location: LCCOMB_X16_Y15_N14
\Add5~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add5~14_combout\ = (FALLING_BLOCK_I2(7) & ((\Add5~13\) # (GND))) # (!FALLING_BLOCK_I2(7) & (!\Add5~13\))
-- \Add5~15\ = CARRY((FALLING_BLOCK_I2(7)) # (!\Add5~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => FALLING_BLOCK_I2(7),
	datad => VCC,
	cin => \Add5~13\,
	combout => \Add5~14_combout\,
	cout => \Add5~15\);

-- Location: LCCOMB_X16_Y15_N16
\Add5~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add5~16_combout\ = (FALLING_BLOCK_I2(8) & (\Add5~15\ $ (GND))) # (!FALLING_BLOCK_I2(8) & (!\Add5~15\ & VCC))
-- \Add5~17\ = CARRY((FALLING_BLOCK_I2(8) & !\Add5~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => FALLING_BLOCK_I2(8),
	datad => VCC,
	cin => \Add5~15\,
	combout => \Add5~16_combout\,
	cout => \Add5~17\);

-- Location: LCCOMB_X16_Y15_N18
\Add5~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add5~18_combout\ = (FALLING_BLOCK_I2(9) & ((\Add5~17\) # (GND))) # (!FALLING_BLOCK_I2(9) & (!\Add5~17\))
-- \Add5~19\ = CARRY((FALLING_BLOCK_I2(9)) # (!\Add5~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => FALLING_BLOCK_I2(9),
	datad => VCC,
	cin => \Add5~17\,
	combout => \Add5~18_combout\,
	cout => \Add5~19\);

-- Location: LCCOMB_X16_Y15_N20
\Add5~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add5~30_combout\ = (FALLING_BLOCK_I2(10) & (!\Add5~19\ & VCC)) # (!FALLING_BLOCK_I2(10) & (\Add5~19\ $ (GND)))
-- \Add5~31\ = CARRY((!FALLING_BLOCK_I2(10) & !\Add5~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => FALLING_BLOCK_I2(10),
	datad => VCC,
	cin => \Add5~19\,
	combout => \Add5~30_combout\,
	cout => \Add5~31\);

-- Location: LCCOMB_X22_Y13_N12
\FALLING_BLOCK_I[6]~44\ : cycloneiii_lcell_comb
-- Equation(s):
-- \FALLING_BLOCK_I[6]~44_combout\ = (FALLING_BLOCK_I(6) & (\FALLING_BLOCK_I[5]~43\ $ (GND))) # (!FALLING_BLOCK_I(6) & (!\FALLING_BLOCK_I[5]~43\ & VCC))
-- \FALLING_BLOCK_I[6]~45\ = CARRY((FALLING_BLOCK_I(6) & !\FALLING_BLOCK_I[5]~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => FALLING_BLOCK_I(6),
	datad => VCC,
	cin => \FALLING_BLOCK_I[5]~43\,
	combout => \FALLING_BLOCK_I[6]~44_combout\,
	cout => \FALLING_BLOCK_I[6]~45\);

-- Location: FF_X22_Y13_N23
\FALLING_BLOCK_I[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK|TEMPORAL~clkctrl_outclk\,
	d => \FALLING_BLOCK_I[11]~56_combout\,
	sclr => \FALLING_BLOCK_I[4]~52_combout\,
	ena => \FALLING_BLOCK_I[10]~53_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => FALLING_BLOCK_I(11));

-- Location: FF_X22_Y13_N27
\FALLING_BLOCK_I[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK|TEMPORAL~clkctrl_outclk\,
	d => \FALLING_BLOCK_I[13]~60_combout\,
	sclr => \FALLING_BLOCK_I[4]~52_combout\,
	ena => \FALLING_BLOCK_I[10]~53_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => FALLING_BLOCK_I(13));

-- Location: FF_X22_Y13_N31
\FALLING_BLOCK_I[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK|TEMPORAL~clkctrl_outclk\,
	d => \FALLING_BLOCK_I[15]~64_combout\,
	sclr => \FALLING_BLOCK_I[4]~52_combout\,
	ena => \FALLING_BLOCK_I[10]~53_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => FALLING_BLOCK_I(15));

-- Location: FF_X22_Y12_N7
\FALLING_BLOCK_I[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK|TEMPORAL~clkctrl_outclk\,
	d => \FALLING_BLOCK_I[19]~72_combout\,
	sclr => \FALLING_BLOCK_I[4]~52_combout\,
	ena => \FALLING_BLOCK_I[10]~53_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => FALLING_BLOCK_I(19));

-- Location: FF_X22_Y12_N11
\FALLING_BLOCK_I[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK|TEMPORAL~clkctrl_outclk\,
	d => \FALLING_BLOCK_I[21]~76_combout\,
	sclr => \FALLING_BLOCK_I[4]~52_combout\,
	ena => \FALLING_BLOCK_I[10]~53_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => FALLING_BLOCK_I(21));

-- Location: FF_X22_Y12_N13
\FALLING_BLOCK_I[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK|TEMPORAL~clkctrl_outclk\,
	d => \FALLING_BLOCK_I[22]~78_combout\,
	sclr => \FALLING_BLOCK_I[4]~52_combout\,
	ena => \FALLING_BLOCK_I[10]~53_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => FALLING_BLOCK_I(22));

-- Location: FF_X22_Y12_N31
\FALLING_BLOCK_I[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK|TEMPORAL~clkctrl_outclk\,
	d => \FALLING_BLOCK_I[31]~96_combout\,
	sclr => \FALLING_BLOCK_I[4]~52_combout\,
	ena => \FALLING_BLOCK_I[10]~53_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => FALLING_BLOCK_I(31));

-- Location: FF_X10_Y11_N23
\PIANOSPEAKER|COUNTER440[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \PIANOSPEAKER|COUNTER440[11]~54_combout\,
	sclr => \PIANOSPEAKER|LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PIANOSPEAKER|COUNTER440\(11));

-- Location: FF_X10_Y11_N27
\PIANOSPEAKER|COUNTER440[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \PIANOSPEAKER|COUNTER440[13]~58_combout\,
	sclr => \PIANOSPEAKER|LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PIANOSPEAKER|COUNTER440\(13));

-- Location: FF_X10_Y11_N11
\PIANOSPEAKER|COUNTER440[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \PIANOSPEAKER|COUNTER440[5]~42_combout\,
	sclr => \PIANOSPEAKER|LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PIANOSPEAKER|COUNTER440\(5));

-- Location: FF_X10_Y10_N7
\PIANOSPEAKER|COUNTER440[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \PIANOSPEAKER|COUNTER440[19]~70_combout\,
	sclr => \PIANOSPEAKER|LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PIANOSPEAKER|COUNTER440\(19));

-- Location: FF_X10_Y10_N13
\PIANOSPEAKER|COUNTER440[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \PIANOSPEAKER|COUNTER440[22]~76_combout\,
	sclr => \PIANOSPEAKER|LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PIANOSPEAKER|COUNTER440\(22));

-- Location: FF_X36_Y23_N31
\PIANOSPEAKER|COUNTER494[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \PIANOSPEAKER|COUNTER494[31]~94_combout\,
	sclr => \PIANOSPEAKER|LessThan1~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PIANOSPEAKER|COUNTER494\(31));

-- Location: FF_X36_Y24_N31
\PIANOSPEAKER|COUNTER494[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \PIANOSPEAKER|COUNTER494[15]~62_combout\,
	sclr => \PIANOSPEAKER|LessThan1~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PIANOSPEAKER|COUNTER494\(15));

-- Location: FF_X36_Y23_N1
\PIANOSPEAKER|COUNTER494[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \PIANOSPEAKER|COUNTER494[16]~64_combout\,
	sclr => \PIANOSPEAKER|LessThan1~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PIANOSPEAKER|COUNTER494\(16));

-- Location: FF_X36_Y24_N27
\PIANOSPEAKER|COUNTER494[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \PIANOSPEAKER|COUNTER494[13]~58_combout\,
	sclr => \PIANOSPEAKER|LessThan1~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PIANOSPEAKER|COUNTER494\(13));

-- Location: FF_X36_Y24_N25
\PIANOSPEAKER|COUNTER494[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \PIANOSPEAKER|COUNTER494[12]~56_combout\,
	sclr => \PIANOSPEAKER|LessThan1~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PIANOSPEAKER|COUNTER494\(12));

-- Location: FF_X36_Y24_N29
\PIANOSPEAKER|COUNTER494[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \PIANOSPEAKER|COUNTER494[14]~60_combout\,
	sclr => \PIANOSPEAKER|LessThan1~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PIANOSPEAKER|COUNTER494\(14));

-- Location: FF_X36_Y24_N3
\PIANOSPEAKER|COUNTER494[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \PIANOSPEAKER|COUNTER494[1]~34_combout\,
	sclr => \PIANOSPEAKER|LessThan1~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PIANOSPEAKER|COUNTER494\(1));

-- Location: FF_X36_Y24_N5
\PIANOSPEAKER|COUNTER494[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \PIANOSPEAKER|COUNTER494[2]~36_combout\,
	sclr => \PIANOSPEAKER|LessThan1~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PIANOSPEAKER|COUNTER494\(2));

-- Location: FF_X36_Y24_N7
\PIANOSPEAKER|COUNTER494[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \PIANOSPEAKER|COUNTER494[3]~38_combout\,
	sclr => \PIANOSPEAKER|LessThan1~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PIANOSPEAKER|COUNTER494\(3));

-- Location: FF_X36_Y24_N9
\PIANOSPEAKER|COUNTER494[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \PIANOSPEAKER|COUNTER494[4]~40_combout\,
	sclr => \PIANOSPEAKER|LessThan1~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PIANOSPEAKER|COUNTER494\(4));

-- Location: FF_X36_Y24_N11
\PIANOSPEAKER|COUNTER494[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \PIANOSPEAKER|COUNTER494[5]~42_combout\,
	sclr => \PIANOSPEAKER|LessThan1~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PIANOSPEAKER|COUNTER494\(5));

-- Location: FF_X36_Y24_N13
\PIANOSPEAKER|COUNTER494[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \PIANOSPEAKER|COUNTER494[6]~44_combout\,
	sclr => \PIANOSPEAKER|LessThan1~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PIANOSPEAKER|COUNTER494\(6));

-- Location: FF_X35_Y24_N13
\PIANOSPEAKER|COUNTER494[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	asdata => \PIANOSPEAKER|COUNTER494[7]~46_combout\,
	sclr => \PIANOSPEAKER|LessThan1~10_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PIANOSPEAKER|COUNTER494\(7));

-- Location: FF_X36_Y24_N17
\PIANOSPEAKER|COUNTER494[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \PIANOSPEAKER|COUNTER494[8]~48_combout\,
	sclr => \PIANOSPEAKER|LessThan1~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PIANOSPEAKER|COUNTER494\(8));

-- Location: FF_X36_Y24_N19
\PIANOSPEAKER|COUNTER494[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \PIANOSPEAKER|COUNTER494[9]~50_combout\,
	sclr => \PIANOSPEAKER|LessThan1~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PIANOSPEAKER|COUNTER494\(9));

-- Location: FF_X35_Y24_N23
\PIANOSPEAKER|COUNTER494[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	asdata => \PIANOSPEAKER|COUNTER494[10]~52_combout\,
	sclr => \PIANOSPEAKER|LessThan1~10_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PIANOSPEAKER|COUNTER494\(10));

-- Location: FF_X36_Y24_N23
\PIANOSPEAKER|COUNTER494[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \PIANOSPEAKER|COUNTER494[11]~54_combout\,
	sclr => \PIANOSPEAKER|LessThan1~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PIANOSPEAKER|COUNTER494\(11));

-- Location: FF_X36_Y23_N3
\PIANOSPEAKER|COUNTER494[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \PIANOSPEAKER|COUNTER494[17]~66_combout\,
	sclr => \PIANOSPEAKER|LessThan1~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PIANOSPEAKER|COUNTER494\(17));

-- Location: FF_X36_Y23_N5
\PIANOSPEAKER|COUNTER494[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \PIANOSPEAKER|COUNTER494[18]~68_combout\,
	sclr => \PIANOSPEAKER|LessThan1~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PIANOSPEAKER|COUNTER494\(18));

-- Location: FF_X36_Y23_N7
\PIANOSPEAKER|COUNTER494[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \PIANOSPEAKER|COUNTER494[19]~70_combout\,
	sclr => \PIANOSPEAKER|LessThan1~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PIANOSPEAKER|COUNTER494\(19));

-- Location: FF_X36_Y23_N9
\PIANOSPEAKER|COUNTER494[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \PIANOSPEAKER|COUNTER494[20]~72_combout\,
	sclr => \PIANOSPEAKER|LessThan1~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PIANOSPEAKER|COUNTER494\(20));

-- Location: FF_X36_Y23_N11
\PIANOSPEAKER|COUNTER494[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \PIANOSPEAKER|COUNTER494[21]~74_combout\,
	sclr => \PIANOSPEAKER|LessThan1~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PIANOSPEAKER|COUNTER494\(21));

-- Location: FF_X36_Y23_N13
\PIANOSPEAKER|COUNTER494[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \PIANOSPEAKER|COUNTER494[22]~76_combout\,
	sclr => \PIANOSPEAKER|LessThan1~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PIANOSPEAKER|COUNTER494\(22));

-- Location: FF_X36_Y23_N15
\PIANOSPEAKER|COUNTER494[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \PIANOSPEAKER|COUNTER494[23]~78_combout\,
	sclr => \PIANOSPEAKER|LessThan1~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PIANOSPEAKER|COUNTER494\(23));

-- Location: FF_X36_Y23_N17
\PIANOSPEAKER|COUNTER494[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \PIANOSPEAKER|COUNTER494[24]~80_combout\,
	sclr => \PIANOSPEAKER|LessThan1~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PIANOSPEAKER|COUNTER494\(24));

-- Location: FF_X36_Y23_N19
\PIANOSPEAKER|COUNTER494[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \PIANOSPEAKER|COUNTER494[25]~82_combout\,
	sclr => \PIANOSPEAKER|LessThan1~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PIANOSPEAKER|COUNTER494\(25));

-- Location: FF_X36_Y23_N21
\PIANOSPEAKER|COUNTER494[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \PIANOSPEAKER|COUNTER494[26]~84_combout\,
	sclr => \PIANOSPEAKER|LessThan1~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PIANOSPEAKER|COUNTER494\(26));

-- Location: FF_X36_Y23_N23
\PIANOSPEAKER|COUNTER494[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \PIANOSPEAKER|COUNTER494[27]~86_combout\,
	sclr => \PIANOSPEAKER|LessThan1~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PIANOSPEAKER|COUNTER494\(27));

-- Location: FF_X36_Y23_N25
\PIANOSPEAKER|COUNTER494[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \PIANOSPEAKER|COUNTER494[28]~88_combout\,
	sclr => \PIANOSPEAKER|LessThan1~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PIANOSPEAKER|COUNTER494\(28));

-- Location: FF_X36_Y23_N27
\PIANOSPEAKER|COUNTER494[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \PIANOSPEAKER|COUNTER494[29]~90_combout\,
	sclr => \PIANOSPEAKER|LessThan1~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PIANOSPEAKER|COUNTER494\(29));

-- Location: FF_X36_Y23_N29
\PIANOSPEAKER|COUNTER494[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \PIANOSPEAKER|COUNTER494[30]~92_combout\,
	sclr => \PIANOSPEAKER|LessThan1~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PIANOSPEAKER|COUNTER494\(30));

-- Location: FF_X16_Y4_N11
\PIANOSPEAKER|COUNTER587[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \PIANOSPEAKER|COUNTER587[21]~74_combout\,
	sclr => \PIANOSPEAKER|LessThan3~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PIANOSPEAKER|COUNTER587\(21));

-- Location: FF_X16_Y4_N13
\PIANOSPEAKER|COUNTER587[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \PIANOSPEAKER|COUNTER587[22]~76_combout\,
	sclr => \PIANOSPEAKER|LessThan3~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PIANOSPEAKER|COUNTER587\(22));

-- Location: FF_X16_Y4_N15
\PIANOSPEAKER|COUNTER587[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \PIANOSPEAKER|COUNTER587[23]~78_combout\,
	sclr => \PIANOSPEAKER|LessThan3~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PIANOSPEAKER|COUNTER587\(23));

-- Location: FF_X16_Y4_N17
\PIANOSPEAKER|COUNTER587[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \PIANOSPEAKER|COUNTER587[24]~80_combout\,
	sclr => \PIANOSPEAKER|LessThan3~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PIANOSPEAKER|COUNTER587\(24));

-- Location: FF_X16_Y4_N31
\PIANOSPEAKER|COUNTER587[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \PIANOSPEAKER|COUNTER587[31]~94_combout\,
	sclr => \PIANOSPEAKER|LessThan3~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PIANOSPEAKER|COUNTER587\(31));

-- Location: FF_X16_Y5_N29
\PIANOSPEAKER|COUNTER587[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \PIANOSPEAKER|COUNTER587[14]~60_combout\,
	sclr => \PIANOSPEAKER|LessThan3~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PIANOSPEAKER|COUNTER587\(14));

-- Location: FF_X16_Y5_N31
\PIANOSPEAKER|COUNTER587[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \PIANOSPEAKER|COUNTER587[15]~62_combout\,
	sclr => \PIANOSPEAKER|LessThan3~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PIANOSPEAKER|COUNTER587\(15));

-- Location: FF_X16_Y4_N1
\PIANOSPEAKER|COUNTER587[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \PIANOSPEAKER|COUNTER587[16]~64_combout\,
	sclr => \PIANOSPEAKER|LessThan3~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PIANOSPEAKER|COUNTER587\(16));

-- Location: FF_X16_Y5_N21
\PIANOSPEAKER|COUNTER587[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \PIANOSPEAKER|COUNTER587[10]~52_combout\,
	sclr => \PIANOSPEAKER|LessThan3~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PIANOSPEAKER|COUNTER587\(10));

-- Location: FF_X16_Y5_N25
\PIANOSPEAKER|COUNTER587[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \PIANOSPEAKER|COUNTER587[12]~56_combout\,
	sclr => \PIANOSPEAKER|LessThan3~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PIANOSPEAKER|COUNTER587\(12));

-- Location: FF_X16_Y5_N27
\PIANOSPEAKER|COUNTER587[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \PIANOSPEAKER|COUNTER587[13]~58_combout\,
	sclr => \PIANOSPEAKER|LessThan3~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PIANOSPEAKER|COUNTER587\(13));

-- Location: FF_X16_Y5_N17
\PIANOSPEAKER|COUNTER587[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \PIANOSPEAKER|COUNTER587[8]~48_combout\,
	sclr => \PIANOSPEAKER|LessThan3~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PIANOSPEAKER|COUNTER587\(8));

-- Location: FF_X16_Y5_N19
\PIANOSPEAKER|COUNTER587[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \PIANOSPEAKER|COUNTER587[9]~50_combout\,
	sclr => \PIANOSPEAKER|LessThan3~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PIANOSPEAKER|COUNTER587\(9));

-- Location: FF_X16_Y5_N3
\PIANOSPEAKER|COUNTER587[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \PIANOSPEAKER|COUNTER587[1]~34_combout\,
	sclr => \PIANOSPEAKER|LessThan3~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PIANOSPEAKER|COUNTER587\(1));

-- Location: FF_X16_Y5_N5
\PIANOSPEAKER|COUNTER587[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \PIANOSPEAKER|COUNTER587[2]~36_combout\,
	sclr => \PIANOSPEAKER|LessThan3~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PIANOSPEAKER|COUNTER587\(2));

-- Location: FF_X16_Y5_N7
\PIANOSPEAKER|COUNTER587[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \PIANOSPEAKER|COUNTER587[3]~38_combout\,
	sclr => \PIANOSPEAKER|LessThan3~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PIANOSPEAKER|COUNTER587\(3));

-- Location: FF_X16_Y5_N9
\PIANOSPEAKER|COUNTER587[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \PIANOSPEAKER|COUNTER587[4]~40_combout\,
	sclr => \PIANOSPEAKER|LessThan3~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PIANOSPEAKER|COUNTER587\(4));

-- Location: FF_X16_Y5_N11
\PIANOSPEAKER|COUNTER587[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \PIANOSPEAKER|COUNTER587[5]~42_combout\,
	sclr => \PIANOSPEAKER|LessThan3~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PIANOSPEAKER|COUNTER587\(5));

-- Location: FF_X16_Y5_N13
\PIANOSPEAKER|COUNTER587[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \PIANOSPEAKER|COUNTER587[6]~44_combout\,
	sclr => \PIANOSPEAKER|LessThan3~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PIANOSPEAKER|COUNTER587\(6));

-- Location: FF_X17_Y5_N29
\PIANOSPEAKER|COUNTER587[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	asdata => \PIANOSPEAKER|COUNTER587[7]~46_combout\,
	sclr => \PIANOSPEAKER|LessThan3~9_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PIANOSPEAKER|COUNTER587\(7));

-- Location: FF_X16_Y5_N23
\PIANOSPEAKER|COUNTER587[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \PIANOSPEAKER|COUNTER587[11]~54_combout\,
	sclr => \PIANOSPEAKER|LessThan3~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PIANOSPEAKER|COUNTER587\(11));

-- Location: FF_X16_Y4_N3
\PIANOSPEAKER|COUNTER587[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \PIANOSPEAKER|COUNTER587[17]~66_combout\,
	sclr => \PIANOSPEAKER|LessThan3~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PIANOSPEAKER|COUNTER587\(17));

-- Location: FF_X16_Y4_N9
\PIANOSPEAKER|COUNTER587[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \PIANOSPEAKER|COUNTER587[20]~72_combout\,
	sclr => \PIANOSPEAKER|LessThan3~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PIANOSPEAKER|COUNTER587\(20));

-- Location: FF_X16_Y4_N19
\PIANOSPEAKER|COUNTER587[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \PIANOSPEAKER|COUNTER587[25]~82_combout\,
	sclr => \PIANOSPEAKER|LessThan3~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PIANOSPEAKER|COUNTER587\(25));

-- Location: FF_X16_Y4_N21
\PIANOSPEAKER|COUNTER587[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \PIANOSPEAKER|COUNTER587[26]~84_combout\,
	sclr => \PIANOSPEAKER|LessThan3~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PIANOSPEAKER|COUNTER587\(26));

-- Location: FF_X16_Y4_N23
\PIANOSPEAKER|COUNTER587[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \PIANOSPEAKER|COUNTER587[27]~86_combout\,
	sclr => \PIANOSPEAKER|LessThan3~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PIANOSPEAKER|COUNTER587\(27));

-- Location: FF_X16_Y4_N25
\PIANOSPEAKER|COUNTER587[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \PIANOSPEAKER|COUNTER587[28]~88_combout\,
	sclr => \PIANOSPEAKER|LessThan3~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PIANOSPEAKER|COUNTER587\(28));

-- Location: FF_X16_Y4_N5
\PIANOSPEAKER|COUNTER587[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \PIANOSPEAKER|COUNTER587[18]~68_combout\,
	sclr => \PIANOSPEAKER|LessThan3~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PIANOSPEAKER|COUNTER587\(18));

-- Location: FF_X16_Y4_N7
\PIANOSPEAKER|COUNTER587[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \PIANOSPEAKER|COUNTER587[19]~70_combout\,
	sclr => \PIANOSPEAKER|LessThan3~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PIANOSPEAKER|COUNTER587\(19));

-- Location: FF_X16_Y4_N27
\PIANOSPEAKER|COUNTER587[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \PIANOSPEAKER|COUNTER587[29]~90_combout\,
	sclr => \PIANOSPEAKER|LessThan3~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PIANOSPEAKER|COUNTER587\(29));

-- Location: FF_X16_Y4_N29
\PIANOSPEAKER|COUNTER587[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \PIANOSPEAKER|COUNTER587[30]~92_combout\,
	sclr => \PIANOSPEAKER|LessThan3~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PIANOSPEAKER|COUNTER587\(30));

-- Location: FF_X10_Y3_N13
\PIANOSPEAKER|COUNTER659[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \PIANOSPEAKER|COUNTER659[22]~76_combout\,
	sclr => \PIANOSPEAKER|LessThan4~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PIANOSPEAKER|COUNTER659\(22));

-- Location: FF_X10_Y3_N25
\PIANOSPEAKER|COUNTER659[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \PIANOSPEAKER|COUNTER659[28]~88_combout\,
	sclr => \PIANOSPEAKER|LessThan4~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PIANOSPEAKER|COUNTER659\(28));

-- Location: FF_X10_Y3_N27
\PIANOSPEAKER|COUNTER659[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \PIANOSPEAKER|COUNTER659[29]~90_combout\,
	sclr => \PIANOSPEAKER|LessThan4~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PIANOSPEAKER|COUNTER659\(29));

-- Location: FF_X10_Y3_N29
\PIANOSPEAKER|COUNTER659[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \PIANOSPEAKER|COUNTER659[30]~92_combout\,
	sclr => \PIANOSPEAKER|LessThan4~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PIANOSPEAKER|COUNTER659\(30));

-- Location: FF_X10_Y3_N31
\PIANOSPEAKER|COUNTER659[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \PIANOSPEAKER|COUNTER659[31]~94_combout\,
	sclr => \PIANOSPEAKER|LessThan4~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PIANOSPEAKER|COUNTER659\(31));

-- Location: FF_X10_Y1_N31
\PIANOSPEAKER|COUNTER698[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \PIANOSPEAKER|COUNTER698[31]~94_combout\,
	sclr => \PIANOSPEAKER|LessThan5~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PIANOSPEAKER|COUNTER698\(31));

-- Location: FF_X10_Y1_N3
\PIANOSPEAKER|COUNTER698[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \PIANOSPEAKER|COUNTER698[17]~66_combout\,
	sclr => \PIANOSPEAKER|LessThan5~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PIANOSPEAKER|COUNTER698\(17));

-- Location: FF_X10_Y1_N5
\PIANOSPEAKER|COUNTER698[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \PIANOSPEAKER|COUNTER698[18]~68_combout\,
	sclr => \PIANOSPEAKER|LessThan5~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PIANOSPEAKER|COUNTER698\(18));

-- Location: FF_X10_Y1_N7
\PIANOSPEAKER|COUNTER698[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \PIANOSPEAKER|COUNTER698[19]~70_combout\,
	sclr => \PIANOSPEAKER|LessThan5~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PIANOSPEAKER|COUNTER698\(19));

-- Location: FF_X10_Y1_N9
\PIANOSPEAKER|COUNTER698[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \PIANOSPEAKER|COUNTER698[20]~72_combout\,
	sclr => \PIANOSPEAKER|LessThan5~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PIANOSPEAKER|COUNTER698\(20));

-- Location: FF_X10_Y1_N11
\PIANOSPEAKER|COUNTER698[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \PIANOSPEAKER|COUNTER698[21]~74_combout\,
	sclr => \PIANOSPEAKER|LessThan5~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PIANOSPEAKER|COUNTER698\(21));

-- Location: FF_X10_Y1_N13
\PIANOSPEAKER|COUNTER698[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \PIANOSPEAKER|COUNTER698[22]~76_combout\,
	sclr => \PIANOSPEAKER|LessThan5~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PIANOSPEAKER|COUNTER698\(22));

-- Location: FF_X10_Y1_N15
\PIANOSPEAKER|COUNTER698[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \PIANOSPEAKER|COUNTER698[23]~78_combout\,
	sclr => \PIANOSPEAKER|LessThan5~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PIANOSPEAKER|COUNTER698\(23));

-- Location: FF_X10_Y1_N17
\PIANOSPEAKER|COUNTER698[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \PIANOSPEAKER|COUNTER698[24]~80_combout\,
	sclr => \PIANOSPEAKER|LessThan5~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PIANOSPEAKER|COUNTER698\(24));

-- Location: FF_X10_Y1_N19
\PIANOSPEAKER|COUNTER698[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \PIANOSPEAKER|COUNTER698[25]~82_combout\,
	sclr => \PIANOSPEAKER|LessThan5~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PIANOSPEAKER|COUNTER698\(25));

-- Location: FF_X10_Y1_N21
\PIANOSPEAKER|COUNTER698[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \PIANOSPEAKER|COUNTER698[26]~84_combout\,
	sclr => \PIANOSPEAKER|LessThan5~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PIANOSPEAKER|COUNTER698\(26));

-- Location: FF_X10_Y1_N23
\PIANOSPEAKER|COUNTER698[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \PIANOSPEAKER|COUNTER698[27]~86_combout\,
	sclr => \PIANOSPEAKER|LessThan5~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PIANOSPEAKER|COUNTER698\(27));

-- Location: FF_X10_Y1_N25
\PIANOSPEAKER|COUNTER698[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \PIANOSPEAKER|COUNTER698[28]~88_combout\,
	sclr => \PIANOSPEAKER|LessThan5~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PIANOSPEAKER|COUNTER698\(28));

-- Location: FF_X10_Y1_N27
\PIANOSPEAKER|COUNTER698[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \PIANOSPEAKER|COUNTER698[29]~90_combout\,
	sclr => \PIANOSPEAKER|LessThan5~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PIANOSPEAKER|COUNTER698\(29));

-- Location: FF_X10_Y1_N29
\PIANOSPEAKER|COUNTER698[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \PIANOSPEAKER|COUNTER698[30]~92_combout\,
	sclr => \PIANOSPEAKER|LessThan5~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PIANOSPEAKER|COUNTER698\(30));

-- Location: FF_X10_Y2_N13
\PIANOSPEAKER|COUNTER698[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \PIANOSPEAKER|COUNTER698[6]~44_combout\,
	sclr => \PIANOSPEAKER|LessThan5~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PIANOSPEAKER|COUNTER698\(6));

-- Location: FF_X10_Y2_N15
\PIANOSPEAKER|COUNTER698[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \PIANOSPEAKER|COUNTER698[7]~46_combout\,
	sclr => \PIANOSPEAKER|LessThan5~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PIANOSPEAKER|COUNTER698\(7));

-- Location: FF_X10_Y2_N17
\PIANOSPEAKER|COUNTER698[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \PIANOSPEAKER|COUNTER698[8]~48_combout\,
	sclr => \PIANOSPEAKER|LessThan5~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PIANOSPEAKER|COUNTER698\(8));

-- Location: FF_X10_Y2_N19
\PIANOSPEAKER|COUNTER698[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \PIANOSPEAKER|COUNTER698[9]~50_combout\,
	sclr => \PIANOSPEAKER|LessThan5~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PIANOSPEAKER|COUNTER698\(9));

-- Location: FF_X10_Y2_N1
\PIANOSPEAKER|COUNTER698[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \PIANOSPEAKER|COUNTER698[0]~32_combout\,
	sclr => \PIANOSPEAKER|LessThan5~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PIANOSPEAKER|COUNTER698\(0));

-- Location: FF_X10_Y2_N3
\PIANOSPEAKER|COUNTER698[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \PIANOSPEAKER|COUNTER698[1]~34_combout\,
	sclr => \PIANOSPEAKER|LessThan5~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PIANOSPEAKER|COUNTER698\(1));

-- Location: FF_X10_Y2_N5
\PIANOSPEAKER|COUNTER698[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \PIANOSPEAKER|COUNTER698[2]~36_combout\,
	sclr => \PIANOSPEAKER|LessThan5~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PIANOSPEAKER|COUNTER698\(2));

-- Location: FF_X10_Y2_N7
\PIANOSPEAKER|COUNTER698[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \PIANOSPEAKER|COUNTER698[3]~38_combout\,
	sclr => \PIANOSPEAKER|LessThan5~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PIANOSPEAKER|COUNTER698\(3));

-- Location: FF_X10_Y2_N9
\PIANOSPEAKER|COUNTER698[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \PIANOSPEAKER|COUNTER698[4]~40_combout\,
	sclr => \PIANOSPEAKER|LessThan5~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PIANOSPEAKER|COUNTER698\(4));

-- Location: FF_X10_Y2_N11
\PIANOSPEAKER|COUNTER698[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \PIANOSPEAKER|COUNTER698[5]~42_combout\,
	sclr => \PIANOSPEAKER|LessThan5~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PIANOSPEAKER|COUNTER698\(5));

-- Location: FF_X10_Y2_N21
\PIANOSPEAKER|COUNTER698[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \PIANOSPEAKER|COUNTER698[10]~52_combout\,
	sclr => \PIANOSPEAKER|LessThan5~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PIANOSPEAKER|COUNTER698\(10));

-- Location: FF_X10_Y2_N23
\PIANOSPEAKER|COUNTER698[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \PIANOSPEAKER|COUNTER698[11]~54_combout\,
	sclr => \PIANOSPEAKER|LessThan5~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PIANOSPEAKER|COUNTER698\(11));

-- Location: FF_X10_Y2_N25
\PIANOSPEAKER|COUNTER698[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \PIANOSPEAKER|COUNTER698[12]~56_combout\,
	sclr => \PIANOSPEAKER|LessThan5~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PIANOSPEAKER|COUNTER698\(12));

-- Location: FF_X10_Y2_N27
\PIANOSPEAKER|COUNTER698[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \PIANOSPEAKER|COUNTER698[13]~58_combout\,
	sclr => \PIANOSPEAKER|LessThan5~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PIANOSPEAKER|COUNTER698\(13));

-- Location: FF_X10_Y2_N29
\PIANOSPEAKER|COUNTER698[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \PIANOSPEAKER|COUNTER698[14]~60_combout\,
	sclr => \PIANOSPEAKER|LessThan5~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PIANOSPEAKER|COUNTER698\(14));

-- Location: FF_X10_Y2_N31
\PIANOSPEAKER|COUNTER698[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \PIANOSPEAKER|COUNTER698[15]~62_combout\,
	sclr => \PIANOSPEAKER|LessThan5~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PIANOSPEAKER|COUNTER698\(15));

-- Location: FF_X10_Y1_N1
\PIANOSPEAKER|COUNTER698[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \PIANOSPEAKER|COUNTER698[16]~64_combout\,
	sclr => \PIANOSPEAKER|LessThan5~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PIANOSPEAKER|COUNTER698\(16));

-- Location: FF_X36_Y5_N31
\PIANOSPEAKER|COUNTER784[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \PIANOSPEAKER|COUNTER784[31]~94_combout\,
	sclr => \PIANOSPEAKER|LessThan6~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PIANOSPEAKER|COUNTER784\(31));

-- Location: FF_X36_Y6_N19
\PIANOSPEAKER|COUNTER784[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \PIANOSPEAKER|COUNTER784[9]~50_combout\,
	sclr => \PIANOSPEAKER|LessThan6~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PIANOSPEAKER|COUNTER784\(9));

-- Location: FF_X36_Y6_N23
\PIANOSPEAKER|COUNTER784[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \PIANOSPEAKER|COUNTER784[11]~54_combout\,
	sclr => \PIANOSPEAKER|LessThan6~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PIANOSPEAKER|COUNTER784\(11));

-- Location: FF_X36_Y6_N25
\PIANOSPEAKER|COUNTER784[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \PIANOSPEAKER|COUNTER784[12]~56_combout\,
	sclr => \PIANOSPEAKER|LessThan6~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PIANOSPEAKER|COUNTER784\(12));

-- Location: FF_X36_Y6_N27
\PIANOSPEAKER|COUNTER784[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \PIANOSPEAKER|COUNTER784[13]~58_combout\,
	sclr => \PIANOSPEAKER|LessThan6~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PIANOSPEAKER|COUNTER784\(13));

-- Location: FF_X36_Y6_N29
\PIANOSPEAKER|COUNTER784[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \PIANOSPEAKER|COUNTER784[14]~60_combout\,
	sclr => \PIANOSPEAKER|LessThan6~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PIANOSPEAKER|COUNTER784\(14));

-- Location: FF_X36_Y6_N31
\PIANOSPEAKER|COUNTER784[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \PIANOSPEAKER|COUNTER784[15]~62_combout\,
	sclr => \PIANOSPEAKER|LessThan6~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PIANOSPEAKER|COUNTER784\(15));

-- Location: FF_X36_Y6_N15
\PIANOSPEAKER|COUNTER784[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \PIANOSPEAKER|COUNTER784[7]~46_combout\,
	sclr => \PIANOSPEAKER|LessThan6~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PIANOSPEAKER|COUNTER784\(7));

-- Location: FF_X36_Y6_N17
\PIANOSPEAKER|COUNTER784[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \PIANOSPEAKER|COUNTER784[8]~48_combout\,
	sclr => \PIANOSPEAKER|LessThan6~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PIANOSPEAKER|COUNTER784\(8));

-- Location: FF_X36_Y6_N21
\PIANOSPEAKER|COUNTER784[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \PIANOSPEAKER|COUNTER784[10]~52_combout\,
	sclr => \PIANOSPEAKER|LessThan6~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PIANOSPEAKER|COUNTER784\(10));

-- Location: FF_X36_Y6_N11
\PIANOSPEAKER|COUNTER784[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \PIANOSPEAKER|COUNTER784[5]~42_combout\,
	sclr => \PIANOSPEAKER|LessThan6~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PIANOSPEAKER|COUNTER784\(5));

-- Location: FF_X36_Y6_N13
\PIANOSPEAKER|COUNTER784[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \PIANOSPEAKER|COUNTER784[6]~44_combout\,
	sclr => \PIANOSPEAKER|LessThan6~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PIANOSPEAKER|COUNTER784\(6));

-- Location: FF_X36_Y6_N1
\PIANOSPEAKER|COUNTER784[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \PIANOSPEAKER|COUNTER784[0]~32_combout\,
	sclr => \PIANOSPEAKER|LessThan6~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PIANOSPEAKER|COUNTER784\(0));

-- Location: FF_X36_Y6_N3
\PIANOSPEAKER|COUNTER784[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \PIANOSPEAKER|COUNTER784[1]~34_combout\,
	sclr => \PIANOSPEAKER|LessThan6~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PIANOSPEAKER|COUNTER784\(1));

-- Location: FF_X36_Y6_N5
\PIANOSPEAKER|COUNTER784[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \PIANOSPEAKER|COUNTER784[2]~36_combout\,
	sclr => \PIANOSPEAKER|LessThan6~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PIANOSPEAKER|COUNTER784\(2));

-- Location: FF_X36_Y6_N7
\PIANOSPEAKER|COUNTER784[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \PIANOSPEAKER|COUNTER784[3]~38_combout\,
	sclr => \PIANOSPEAKER|LessThan6~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PIANOSPEAKER|COUNTER784\(3));

-- Location: FF_X36_Y6_N9
\PIANOSPEAKER|COUNTER784[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \PIANOSPEAKER|COUNTER784[4]~40_combout\,
	sclr => \PIANOSPEAKER|LessThan6~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PIANOSPEAKER|COUNTER784\(4));

-- Location: FF_X36_Y5_N1
\PIANOSPEAKER|COUNTER784[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \PIANOSPEAKER|COUNTER784[16]~64_combout\,
	sclr => \PIANOSPEAKER|LessThan6~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PIANOSPEAKER|COUNTER784\(16));

-- Location: FF_X36_Y5_N3
\PIANOSPEAKER|COUNTER784[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \PIANOSPEAKER|COUNTER784[17]~66_combout\,
	sclr => \PIANOSPEAKER|LessThan6~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PIANOSPEAKER|COUNTER784\(17));

-- Location: FF_X36_Y5_N5
\PIANOSPEAKER|COUNTER784[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \PIANOSPEAKER|COUNTER784[18]~68_combout\,
	sclr => \PIANOSPEAKER|LessThan6~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PIANOSPEAKER|COUNTER784\(18));

-- Location: FF_X36_Y5_N7
\PIANOSPEAKER|COUNTER784[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \PIANOSPEAKER|COUNTER784[19]~70_combout\,
	sclr => \PIANOSPEAKER|LessThan6~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PIANOSPEAKER|COUNTER784\(19));

-- Location: FF_X36_Y5_N9
\PIANOSPEAKER|COUNTER784[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \PIANOSPEAKER|COUNTER784[20]~72_combout\,
	sclr => \PIANOSPEAKER|LessThan6~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PIANOSPEAKER|COUNTER784\(20));

-- Location: FF_X36_Y5_N11
\PIANOSPEAKER|COUNTER784[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \PIANOSPEAKER|COUNTER784[21]~74_combout\,
	sclr => \PIANOSPEAKER|LessThan6~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PIANOSPEAKER|COUNTER784\(21));

-- Location: FF_X36_Y5_N13
\PIANOSPEAKER|COUNTER784[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \PIANOSPEAKER|COUNTER784[22]~76_combout\,
	sclr => \PIANOSPEAKER|LessThan6~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PIANOSPEAKER|COUNTER784\(22));

-- Location: FF_X36_Y5_N15
\PIANOSPEAKER|COUNTER784[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \PIANOSPEAKER|COUNTER784[23]~78_combout\,
	sclr => \PIANOSPEAKER|LessThan6~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PIANOSPEAKER|COUNTER784\(23));

-- Location: FF_X36_Y5_N17
\PIANOSPEAKER|COUNTER784[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \PIANOSPEAKER|COUNTER784[24]~80_combout\,
	sclr => \PIANOSPEAKER|LessThan6~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PIANOSPEAKER|COUNTER784\(24));

-- Location: FF_X36_Y5_N19
\PIANOSPEAKER|COUNTER784[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \PIANOSPEAKER|COUNTER784[25]~82_combout\,
	sclr => \PIANOSPEAKER|LessThan6~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PIANOSPEAKER|COUNTER784\(25));

-- Location: FF_X36_Y5_N21
\PIANOSPEAKER|COUNTER784[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \PIANOSPEAKER|COUNTER784[26]~84_combout\,
	sclr => \PIANOSPEAKER|LessThan6~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PIANOSPEAKER|COUNTER784\(26));

-- Location: FF_X36_Y5_N23
\PIANOSPEAKER|COUNTER784[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \PIANOSPEAKER|COUNTER784[27]~86_combout\,
	sclr => \PIANOSPEAKER|LessThan6~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PIANOSPEAKER|COUNTER784\(27));

-- Location: FF_X36_Y5_N25
\PIANOSPEAKER|COUNTER784[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \PIANOSPEAKER|COUNTER784[28]~88_combout\,
	sclr => \PIANOSPEAKER|LessThan6~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PIANOSPEAKER|COUNTER784\(28));

-- Location: FF_X36_Y5_N27
\PIANOSPEAKER|COUNTER784[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \PIANOSPEAKER|COUNTER784[29]~90_combout\,
	sclr => \PIANOSPEAKER|LessThan6~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PIANOSPEAKER|COUNTER784\(29));

-- Location: FF_X36_Y5_N29
\PIANOSPEAKER|COUNTER784[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \PIANOSPEAKER|COUNTER784[30]~92_combout\,
	sclr => \PIANOSPEAKER|LessThan6~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PIANOSPEAKER|COUNTER784\(30));

-- Location: FF_X31_Y12_N11
\PIANOSPEAKER|COUNTER800[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \PIANOSPEAKER|COUNTER800[21]~74_combout\,
	sclr => \PIANOSPEAKER|LessThan7~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PIANOSPEAKER|COUNTER800\(21));

-- Location: FF_X31_Y12_N13
\PIANOSPEAKER|COUNTER800[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \PIANOSPEAKER|COUNTER800[22]~76_combout\,
	sclr => \PIANOSPEAKER|LessThan7~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PIANOSPEAKER|COUNTER800\(22));

-- Location: FF_X31_Y13_N7
\PIANOSPEAKER|COUNTER800[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \PIANOSPEAKER|COUNTER800[3]~38_combout\,
	sclr => \PIANOSPEAKER|LessThan7~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PIANOSPEAKER|COUNTER800\(3));

-- Location: FF_X31_Y13_N11
\PIANOSPEAKER|COUNTER800[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \PIANOSPEAKER|COUNTER800[5]~42_combout\,
	sclr => \PIANOSPEAKER|LessThan7~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PIANOSPEAKER|COUNTER800\(5));

-- Location: FF_X31_Y13_N13
\PIANOSPEAKER|COUNTER800[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \PIANOSPEAKER|COUNTER800[6]~44_combout\,
	sclr => \PIANOSPEAKER|LessThan7~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PIANOSPEAKER|COUNTER800\(6));

-- Location: FF_X31_Y13_N23
\PIANOSPEAKER|COUNTER800[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \PIANOSPEAKER|COUNTER800[11]~54_combout\,
	sclr => \PIANOSPEAKER|LessThan7~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PIANOSPEAKER|COUNTER800\(11));

-- Location: FF_X31_Y13_N31
\PIANOSPEAKER|COUNTER800[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \PIANOSPEAKER|COUNTER800[15]~62_combout\,
	sclr => \PIANOSPEAKER|LessThan7~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PIANOSPEAKER|COUNTER800\(15));

-- Location: FF_X36_Y8_N31
\PIANOSPEAKER|COUNTER523[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \PIANOSPEAKER|COUNTER523[31]~94_combout\,
	sclr => \PIANOSPEAKER|LessThan2~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PIANOSPEAKER|COUNTER523\(31));

-- Location: FF_X36_Y8_N3
\PIANOSPEAKER|COUNTER523[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \PIANOSPEAKER|COUNTER523[17]~66_combout\,
	sclr => \PIANOSPEAKER|LessThan2~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PIANOSPEAKER|COUNTER523\(17));

-- Location: FF_X36_Y8_N5
\PIANOSPEAKER|COUNTER523[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \PIANOSPEAKER|COUNTER523[18]~68_combout\,
	sclr => \PIANOSPEAKER|LessThan2~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PIANOSPEAKER|COUNTER523\(18));

-- Location: FF_X36_Y8_N7
\PIANOSPEAKER|COUNTER523[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \PIANOSPEAKER|COUNTER523[19]~70_combout\,
	sclr => \PIANOSPEAKER|LessThan2~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PIANOSPEAKER|COUNTER523\(19));

-- Location: FF_X36_Y8_N9
\PIANOSPEAKER|COUNTER523[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \PIANOSPEAKER|COUNTER523[20]~72_combout\,
	sclr => \PIANOSPEAKER|LessThan2~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PIANOSPEAKER|COUNTER523\(20));

-- Location: FF_X36_Y8_N11
\PIANOSPEAKER|COUNTER523[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \PIANOSPEAKER|COUNTER523[21]~74_combout\,
	sclr => \PIANOSPEAKER|LessThan2~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PIANOSPEAKER|COUNTER523\(21));

-- Location: FF_X36_Y8_N13
\PIANOSPEAKER|COUNTER523[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \PIANOSPEAKER|COUNTER523[22]~76_combout\,
	sclr => \PIANOSPEAKER|LessThan2~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PIANOSPEAKER|COUNTER523\(22));

-- Location: FF_X36_Y8_N15
\PIANOSPEAKER|COUNTER523[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \PIANOSPEAKER|COUNTER523[23]~78_combout\,
	sclr => \PIANOSPEAKER|LessThan2~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PIANOSPEAKER|COUNTER523\(23));

-- Location: FF_X36_Y8_N17
\PIANOSPEAKER|COUNTER523[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \PIANOSPEAKER|COUNTER523[24]~80_combout\,
	sclr => \PIANOSPEAKER|LessThan2~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PIANOSPEAKER|COUNTER523\(24));

-- Location: FF_X36_Y8_N19
\PIANOSPEAKER|COUNTER523[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \PIANOSPEAKER|COUNTER523[25]~82_combout\,
	sclr => \PIANOSPEAKER|LessThan2~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PIANOSPEAKER|COUNTER523\(25));

-- Location: FF_X36_Y8_N21
\PIANOSPEAKER|COUNTER523[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \PIANOSPEAKER|COUNTER523[26]~84_combout\,
	sclr => \PIANOSPEAKER|LessThan2~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PIANOSPEAKER|COUNTER523\(26));

-- Location: FF_X36_Y8_N23
\PIANOSPEAKER|COUNTER523[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \PIANOSPEAKER|COUNTER523[27]~86_combout\,
	sclr => \PIANOSPEAKER|LessThan2~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PIANOSPEAKER|COUNTER523\(27));

-- Location: FF_X36_Y8_N25
\PIANOSPEAKER|COUNTER523[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \PIANOSPEAKER|COUNTER523[28]~88_combout\,
	sclr => \PIANOSPEAKER|LessThan2~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PIANOSPEAKER|COUNTER523\(28));

-- Location: FF_X36_Y8_N27
\PIANOSPEAKER|COUNTER523[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \PIANOSPEAKER|COUNTER523[29]~90_combout\,
	sclr => \PIANOSPEAKER|LessThan2~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PIANOSPEAKER|COUNTER523\(29));

-- Location: FF_X36_Y8_N29
\PIANOSPEAKER|COUNTER523[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \PIANOSPEAKER|COUNTER523[30]~92_combout\,
	sclr => \PIANOSPEAKER|LessThan2~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PIANOSPEAKER|COUNTER523\(30));

-- Location: FF_X36_Y9_N25
\PIANOSPEAKER|COUNTER523[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \PIANOSPEAKER|COUNTER523[12]~56_combout\,
	sclr => \PIANOSPEAKER|LessThan2~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PIANOSPEAKER|COUNTER523\(12));

-- Location: FF_X36_Y9_N27
\PIANOSPEAKER|COUNTER523[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \PIANOSPEAKER|COUNTER523[13]~58_combout\,
	sclr => \PIANOSPEAKER|LessThan2~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PIANOSPEAKER|COUNTER523\(13));

-- Location: FF_X36_Y9_N29
\PIANOSPEAKER|COUNTER523[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \PIANOSPEAKER|COUNTER523[14]~60_combout\,
	sclr => \PIANOSPEAKER|LessThan2~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PIANOSPEAKER|COUNTER523\(14));

-- Location: FF_X36_Y9_N3
\PIANOSPEAKER|COUNTER523[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \PIANOSPEAKER|COUNTER523[1]~34_combout\,
	sclr => \PIANOSPEAKER|LessThan2~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PIANOSPEAKER|COUNTER523\(1));

-- Location: FF_X36_Y9_N5
\PIANOSPEAKER|COUNTER523[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \PIANOSPEAKER|COUNTER523[2]~36_combout\,
	sclr => \PIANOSPEAKER|LessThan2~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PIANOSPEAKER|COUNTER523\(2));

-- Location: FF_X36_Y9_N7
\PIANOSPEAKER|COUNTER523[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \PIANOSPEAKER|COUNTER523[3]~38_combout\,
	sclr => \PIANOSPEAKER|LessThan2~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PIANOSPEAKER|COUNTER523\(3));

-- Location: FF_X36_Y9_N9
\PIANOSPEAKER|COUNTER523[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \PIANOSPEAKER|COUNTER523[4]~40_combout\,
	sclr => \PIANOSPEAKER|LessThan2~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PIANOSPEAKER|COUNTER523\(4));

-- Location: FF_X36_Y9_N11
\PIANOSPEAKER|COUNTER523[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \PIANOSPEAKER|COUNTER523[5]~42_combout\,
	sclr => \PIANOSPEAKER|LessThan2~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PIANOSPEAKER|COUNTER523\(5));

-- Location: FF_X36_Y9_N13
\PIANOSPEAKER|COUNTER523[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \PIANOSPEAKER|COUNTER523[6]~44_combout\,
	sclr => \PIANOSPEAKER|LessThan2~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PIANOSPEAKER|COUNTER523\(6));

-- Location: FF_X36_Y9_N15
\PIANOSPEAKER|COUNTER523[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \PIANOSPEAKER|COUNTER523[7]~46_combout\,
	sclr => \PIANOSPEAKER|LessThan2~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PIANOSPEAKER|COUNTER523\(7));

-- Location: FF_X36_Y9_N17
\PIANOSPEAKER|COUNTER523[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \PIANOSPEAKER|COUNTER523[8]~48_combout\,
	sclr => \PIANOSPEAKER|LessThan2~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PIANOSPEAKER|COUNTER523\(8));

-- Location: FF_X36_Y9_N19
\PIANOSPEAKER|COUNTER523[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \PIANOSPEAKER|COUNTER523[9]~50_combout\,
	sclr => \PIANOSPEAKER|LessThan2~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PIANOSPEAKER|COUNTER523\(9));

-- Location: FF_X36_Y9_N21
\PIANOSPEAKER|COUNTER523[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \PIANOSPEAKER|COUNTER523[10]~52_combout\,
	sclr => \PIANOSPEAKER|LessThan2~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PIANOSPEAKER|COUNTER523\(10));

-- Location: FF_X36_Y9_N23
\PIANOSPEAKER|COUNTER523[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \PIANOSPEAKER|COUNTER523[11]~54_combout\,
	sclr => \PIANOSPEAKER|LessThan2~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PIANOSPEAKER|COUNTER523\(11));

-- Location: FF_X36_Y9_N31
\PIANOSPEAKER|COUNTER523[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \PIANOSPEAKER|COUNTER523[15]~62_combout\,
	sclr => \PIANOSPEAKER|LessThan2~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PIANOSPEAKER|COUNTER523\(15));

-- Location: FF_X36_Y8_N1
\PIANOSPEAKER|COUNTER523[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \PIANOSPEAKER|COUNTER523[16]~64_combout\,
	sclr => \PIANOSPEAKER|LessThan2~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PIANOSPEAKER|COUNTER523\(16));

-- Location: LCCOMB_X23_Y17_N2
\Add1~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~34_combout\ = (FALLING_BLOCK_F1(17) & ((\Add1~33\) # (GND))) # (!FALLING_BLOCK_F1(17) & (!\Add1~33\))
-- \Add1~35\ = CARRY((FALLING_BLOCK_F1(17)) # (!\Add1~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => FALLING_BLOCK_F1(17),
	datad => VCC,
	cin => \Add1~33\,
	combout => \Add1~34_combout\,
	cout => \Add1~35\);

-- Location: LCCOMB_X23_Y17_N28
\Add1~60\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~60_combout\ = (FALLING_BLOCK_F1(30) & (!\Add1~59\ & VCC)) # (!FALLING_BLOCK_F1(30) & (\Add1~59\ $ (GND)))
-- \Add1~61\ = CARRY((!FALLING_BLOCK_F1(30) & !\Add1~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => FALLING_BLOCK_F1(30),
	datad => VCC,
	cin => \Add1~59\,
	combout => \Add1~60_combout\,
	cout => \Add1~61\);

-- Location: LCCOMB_X23_Y17_N30
\Add1~62\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~62_combout\ = FALLING_BLOCK_F1(31) $ (!\Add1~61\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => FALLING_BLOCK_F1(31),
	cin => \Add1~61\,
	combout => \Add1~62_combout\);

-- Location: LCCOMB_X14_Y13_N12
\Add6~44\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add6~44_combout\ = (COUNTER(22) & (\Add6~43\ $ (GND))) # (!COUNTER(22) & (!\Add6~43\ & VCC))
-- \Add6~45\ = CARRY((COUNTER(22) & !\Add6~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => COUNTER(22),
	datad => VCC,
	cin => \Add6~43\,
	combout => \Add6~44_combout\,
	cout => \Add6~45\);

-- Location: LCCOMB_X14_Y13_N28
\Add6~60\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add6~60_combout\ = (COUNTER(30) & (\Add6~59\ $ (GND))) # (!COUNTER(30) & (!\Add6~59\ & VCC))
-- \Add6~61\ = CARRY((COUNTER(30) & !\Add6~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => COUNTER(30),
	datad => VCC,
	cin => \Add6~59\,
	combout => \Add6~60_combout\,
	cout => \Add6~61\);

-- Location: LCCOMB_X14_Y13_N30
\Add6~62\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add6~62_combout\ = COUNTER(31) $ (\Add6~61\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => COUNTER(31),
	cin => \Add6~61\,
	combout => \Add6~62_combout\);

-- Location: LCCOMB_X20_Y16_N0
\Add4~43\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add4~43_combout\ = (FALLING_BLOCK_I1(16) & (!\Add4~42\ & VCC)) # (!FALLING_BLOCK_I1(16) & (\Add4~42\ $ (GND)))
-- \Add4~44\ = CARRY((!FALLING_BLOCK_I1(16) & !\Add4~42\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => FALLING_BLOCK_I1(16),
	datad => VCC,
	cin => \Add4~42\,
	combout => \Add4~43_combout\,
	cout => \Add4~44\);

-- Location: LCCOMB_X20_Y16_N2
\Add4~45\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add4~45_combout\ = (FALLING_BLOCK_I1(17) & ((\Add4~44\) # (GND))) # (!FALLING_BLOCK_I1(17) & (!\Add4~44\))
-- \Add4~46\ = CARRY((FALLING_BLOCK_I1(17)) # (!\Add4~44\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => FALLING_BLOCK_I1(17),
	datad => VCC,
	cin => \Add4~44\,
	combout => \Add4~45_combout\,
	cout => \Add4~46\);

-- Location: LCCOMB_X20_Y16_N4
\Add4~47\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add4~47_combout\ = (FALLING_BLOCK_I1(18) & (!\Add4~46\ & VCC)) # (!FALLING_BLOCK_I1(18) & (\Add4~46\ $ (GND)))
-- \Add4~48\ = CARRY((!FALLING_BLOCK_I1(18) & !\Add4~46\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => FALLING_BLOCK_I1(18),
	datad => VCC,
	cin => \Add4~46\,
	combout => \Add4~47_combout\,
	cout => \Add4~48\);

-- Location: LCCOMB_X20_Y16_N8
\Add4~51\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add4~51_combout\ = (FALLING_BLOCK_I1(20) & (!\Add4~50\ & VCC)) # (!FALLING_BLOCK_I1(20) & (\Add4~50\ $ (GND)))
-- \Add4~52\ = CARRY((!FALLING_BLOCK_I1(20) & !\Add4~50\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => FALLING_BLOCK_I1(20),
	datad => VCC,
	cin => \Add4~50\,
	combout => \Add4~51_combout\,
	cout => \Add4~52\);

-- Location: LCCOMB_X20_Y16_N10
\Add4~53\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add4~53_combout\ = (FALLING_BLOCK_I1(21) & ((\Add4~52\) # (GND))) # (!FALLING_BLOCK_I1(21) & (!\Add4~52\))
-- \Add4~54\ = CARRY((FALLING_BLOCK_I1(21)) # (!\Add4~52\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => FALLING_BLOCK_I1(21),
	datad => VCC,
	cin => \Add4~52\,
	combout => \Add4~53_combout\,
	cout => \Add4~54\);

-- Location: LCCOMB_X20_Y16_N12
\Add4~55\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add4~55_combout\ = (FALLING_BLOCK_I1(22) & (!\Add4~54\ & VCC)) # (!FALLING_BLOCK_I1(22) & (\Add4~54\ $ (GND)))
-- \Add4~56\ = CARRY((!FALLING_BLOCK_I1(22) & !\Add4~54\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => FALLING_BLOCK_I1(22),
	datad => VCC,
	cin => \Add4~54\,
	combout => \Add4~55_combout\,
	cout => \Add4~56\);

-- Location: LCCOMB_X20_Y16_N14
\Add4~57\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add4~57_combout\ = (FALLING_BLOCK_I1(23) & ((\Add4~56\) # (GND))) # (!FALLING_BLOCK_I1(23) & (!\Add4~56\))
-- \Add4~58\ = CARRY((FALLING_BLOCK_I1(23)) # (!\Add4~56\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => FALLING_BLOCK_I1(23),
	datad => VCC,
	cin => \Add4~56\,
	combout => \Add4~57_combout\,
	cout => \Add4~58\);

-- Location: LCCOMB_X20_Y16_N16
\Add4~59\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add4~59_combout\ = (FALLING_BLOCK_I1(24) & (!\Add4~58\ & VCC)) # (!FALLING_BLOCK_I1(24) & (\Add4~58\ $ (GND)))
-- \Add4~60\ = CARRY((!FALLING_BLOCK_I1(24) & !\Add4~58\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => FALLING_BLOCK_I1(24),
	datad => VCC,
	cin => \Add4~58\,
	combout => \Add4~59_combout\,
	cout => \Add4~60\);

-- Location: LCCOMB_X20_Y16_N20
\Add4~63\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add4~63_combout\ = (FALLING_BLOCK_I1(26) & (!\Add4~62\ & VCC)) # (!FALLING_BLOCK_I1(26) & (\Add4~62\ $ (GND)))
-- \Add4~64\ = CARRY((!FALLING_BLOCK_I1(26) & !\Add4~62\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => FALLING_BLOCK_I1(26),
	datad => VCC,
	cin => \Add4~62\,
	combout => \Add4~63_combout\,
	cout => \Add4~64\);

-- Location: LCCOMB_X19_Y13_N22
\Add2~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~22_combout\ = (FALLING_BLOCK_F2(11) & ((\Add2~21\) # (GND))) # (!FALLING_BLOCK_F2(11) & (!\Add2~21\))
-- \Add2~23\ = CARRY((FALLING_BLOCK_F2(11)) # (!\Add2~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => FALLING_BLOCK_F2(11),
	datad => VCC,
	cin => \Add2~21\,
	combout => \Add2~22_combout\,
	cout => \Add2~23\);

-- Location: LCCOMB_X19_Y13_N26
\Add2~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~26_combout\ = (FALLING_BLOCK_F2(13) & ((\Add2~25\) # (GND))) # (!FALLING_BLOCK_F2(13) & (!\Add2~25\))
-- \Add2~27\ = CARRY((FALLING_BLOCK_F2(13)) # (!\Add2~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => FALLING_BLOCK_F2(13),
	datad => VCC,
	cin => \Add2~25\,
	combout => \Add2~26_combout\,
	cout => \Add2~27\);

-- Location: LCCOMB_X19_Y12_N8
\Add2~40\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~40_combout\ = (FALLING_BLOCK_F2(20) & (!\Add2~39\ & VCC)) # (!FALLING_BLOCK_F2(20) & (\Add2~39\ $ (GND)))
-- \Add2~41\ = CARRY((!FALLING_BLOCK_F2(20) & !\Add2~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => FALLING_BLOCK_F2(20),
	datad => VCC,
	cin => \Add2~39\,
	combout => \Add2~40_combout\,
	cout => \Add2~41\);

-- Location: LCCOMB_X19_Y12_N14
\Add2~46\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~46_combout\ = (FALLING_BLOCK_F2(23) & ((\Add2~45\) # (GND))) # (!FALLING_BLOCK_F2(23) & (!\Add2~45\))
-- \Add2~47\ = CARRY((FALLING_BLOCK_F2(23)) # (!\Add2~45\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => FALLING_BLOCK_F2(23),
	datad => VCC,
	cin => \Add2~45\,
	combout => \Add2~46_combout\,
	cout => \Add2~47\);

-- Location: LCCOMB_X19_Y12_N26
\Add2~58\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~58_combout\ = (FALLING_BLOCK_F2(29) & ((\Add2~57\) # (GND))) # (!FALLING_BLOCK_F2(29) & (!\Add2~57\))
-- \Add2~59\ = CARRY((FALLING_BLOCK_F2(29)) # (!\Add2~57\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => FALLING_BLOCK_F2(29),
	datad => VCC,
	cin => \Add2~57\,
	combout => \Add2~58_combout\,
	cout => \Add2~59\);

-- Location: LCCOMB_X16_Y15_N26
\Add5~37\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add5~37_combout\ = (FALLING_BLOCK_I2(13) & ((\Add5~36\) # (GND))) # (!FALLING_BLOCK_I2(13) & (!\Add5~36\))
-- \Add5~38\ = CARRY((FALLING_BLOCK_I2(13)) # (!\Add5~36\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => FALLING_BLOCK_I2(13),
	datad => VCC,
	cin => \Add5~36\,
	combout => \Add5~37_combout\,
	cout => \Add5~38\);

-- Location: LCCOMB_X16_Y15_N28
\Add5~39\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add5~39_combout\ = (FALLING_BLOCK_I2(14) & (!\Add5~38\ & VCC)) # (!FALLING_BLOCK_I2(14) & (\Add5~38\ $ (GND)))
-- \Add5~40\ = CARRY((!FALLING_BLOCK_I2(14) & !\Add5~38\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => FALLING_BLOCK_I2(14),
	datad => VCC,
	cin => \Add5~38\,
	combout => \Add5~39_combout\,
	cout => \Add5~40\);

-- Location: LCCOMB_X16_Y15_N30
\Add5~41\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add5~41_combout\ = (FALLING_BLOCK_I2(15) & ((\Add5~40\) # (GND))) # (!FALLING_BLOCK_I2(15) & (!\Add5~40\))
-- \Add5~42\ = CARRY((FALLING_BLOCK_I2(15)) # (!\Add5~40\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => FALLING_BLOCK_I2(15),
	datad => VCC,
	cin => \Add5~40\,
	combout => \Add5~41_combout\,
	cout => \Add5~42\);

-- Location: LCCOMB_X16_Y14_N0
\Add5~43\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add5~43_combout\ = (FALLING_BLOCK_I2(16) & (!\Add5~42\ & VCC)) # (!FALLING_BLOCK_I2(16) & (\Add5~42\ $ (GND)))
-- \Add5~44\ = CARRY((!FALLING_BLOCK_I2(16) & !\Add5~42\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => FALLING_BLOCK_I2(16),
	datad => VCC,
	cin => \Add5~42\,
	combout => \Add5~43_combout\,
	cout => \Add5~44\);

-- Location: LCCOMB_X16_Y14_N2
\Add5~45\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add5~45_combout\ = (FALLING_BLOCK_I2(17) & ((\Add5~44\) # (GND))) # (!FALLING_BLOCK_I2(17) & (!\Add5~44\))
-- \Add5~46\ = CARRY((FALLING_BLOCK_I2(17)) # (!\Add5~44\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => FALLING_BLOCK_I2(17),
	datad => VCC,
	cin => \Add5~44\,
	combout => \Add5~45_combout\,
	cout => \Add5~46\);

-- Location: LCCOMB_X16_Y14_N4
\Add5~47\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add5~47_combout\ = (FALLING_BLOCK_I2(18) & (!\Add5~46\ & VCC)) # (!FALLING_BLOCK_I2(18) & (\Add5~46\ $ (GND)))
-- \Add5~48\ = CARRY((!FALLING_BLOCK_I2(18) & !\Add5~46\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => FALLING_BLOCK_I2(18),
	datad => VCC,
	cin => \Add5~46\,
	combout => \Add5~47_combout\,
	cout => \Add5~48\);

-- Location: LCCOMB_X16_Y14_N16
\Add5~59\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add5~59_combout\ = (FALLING_BLOCK_I2(24) & (!\Add5~58\ & VCC)) # (!FALLING_BLOCK_I2(24) & (\Add5~58\ $ (GND)))
-- \Add5~60\ = CARRY((!FALLING_BLOCK_I2(24) & !\Add5~58\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => FALLING_BLOCK_I2(24),
	datad => VCC,
	cin => \Add5~58\,
	combout => \Add5~59_combout\,
	cout => \Add5~60\);

-- Location: LCCOMB_X16_Y14_N18
\Add5~61\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add5~61_combout\ = (FALLING_BLOCK_I2(25) & ((\Add5~60\) # (GND))) # (!FALLING_BLOCK_I2(25) & (!\Add5~60\))
-- \Add5~62\ = CARRY((FALLING_BLOCK_I2(25)) # (!\Add5~60\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => FALLING_BLOCK_I2(25),
	datad => VCC,
	cin => \Add5~60\,
	combout => \Add5~61_combout\,
	cout => \Add5~62\);

-- Location: LCCOMB_X16_Y14_N20
\Add5~63\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add5~63_combout\ = (FALLING_BLOCK_I2(26) & (!\Add5~62\ & VCC)) # (!FALLING_BLOCK_I2(26) & (\Add5~62\ $ (GND)))
-- \Add5~64\ = CARRY((!FALLING_BLOCK_I2(26) & !\Add5~62\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => FALLING_BLOCK_I2(26),
	datad => VCC,
	cin => \Add5~62\,
	combout => \Add5~63_combout\,
	cout => \Add5~64\);

-- Location: LCCOMB_X16_Y14_N22
\Add5~65\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add5~65_combout\ = (FALLING_BLOCK_I2(27) & ((\Add5~64\) # (GND))) # (!FALLING_BLOCK_I2(27) & (!\Add5~64\))
-- \Add5~66\ = CARRY((FALLING_BLOCK_I2(27)) # (!\Add5~64\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => FALLING_BLOCK_I2(27),
	datad => VCC,
	cin => \Add5~64\,
	combout => \Add5~65_combout\,
	cout => \Add5~66\);

-- Location: LCCOMB_X16_Y14_N24
\Add5~67\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add5~67_combout\ = (FALLING_BLOCK_I2(28) & (!\Add5~66\ & VCC)) # (!FALLING_BLOCK_I2(28) & (\Add5~66\ $ (GND)))
-- \Add5~68\ = CARRY((!FALLING_BLOCK_I2(28) & !\Add5~66\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => FALLING_BLOCK_I2(28),
	datad => VCC,
	cin => \Add5~66\,
	combout => \Add5~67_combout\,
	cout => \Add5~68\);

-- Location: LCCOMB_X16_Y14_N26
\Add5~69\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add5~69_combout\ = (FALLING_BLOCK_I2(29) & ((\Add5~68\) # (GND))) # (!FALLING_BLOCK_I2(29) & (!\Add5~68\))
-- \Add5~70\ = CARRY((FALLING_BLOCK_I2(29)) # (!\Add5~68\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => FALLING_BLOCK_I2(29),
	datad => VCC,
	cin => \Add5~68\,
	combout => \Add5~69_combout\,
	cout => \Add5~70\);

-- Location: LCCOMB_X16_Y14_N28
\Add5~71\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add5~71_combout\ = (FALLING_BLOCK_I2(30) & (!\Add5~70\ & VCC)) # (!FALLING_BLOCK_I2(30) & (\Add5~70\ $ (GND)))
-- \Add5~72\ = CARRY((!FALLING_BLOCK_I2(30) & !\Add5~70\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => FALLING_BLOCK_I2(30),
	datad => VCC,
	cin => \Add5~70\,
	combout => \Add5~71_combout\,
	cout => \Add5~72\);

-- Location: LCCOMB_X24_Y14_N28
\Add0~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~28_combout\ = (FALLING_BLOCK_F(14) & (\Add0~27\ $ (GND))) # (!FALLING_BLOCK_F(14) & (!\Add0~27\ & VCC))
-- \Add0~29\ = CARRY((FALLING_BLOCK_F(14) & !\Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => FALLING_BLOCK_F(14),
	datad => VCC,
	cin => \Add0~27\,
	combout => \Add0~28_combout\,
	cout => \Add0~29\);

-- Location: LCCOMB_X24_Y13_N0
\Add0~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~32_combout\ = (FALLING_BLOCK_F(16) & (\Add0~31\ $ (GND))) # (!FALLING_BLOCK_F(16) & (!\Add0~31\ & VCC))
-- \Add0~33\ = CARRY((FALLING_BLOCK_F(16) & !\Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => FALLING_BLOCK_F(16),
	datad => VCC,
	cin => \Add0~31\,
	combout => \Add0~32_combout\,
	cout => \Add0~33\);

-- Location: LCCOMB_X24_Y13_N18
\Add0~50\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~50_combout\ = (FALLING_BLOCK_F(25) & (!\Add0~49\)) # (!FALLING_BLOCK_F(25) & ((\Add0~49\) # (GND)))
-- \Add0~51\ = CARRY((!\Add0~49\) # (!FALLING_BLOCK_F(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => FALLING_BLOCK_F(25),
	datad => VCC,
	cin => \Add0~49\,
	combout => \Add0~50_combout\,
	cout => \Add0~51\);

-- Location: LCCOMB_X24_Y13_N24
\Add0~56\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~56_combout\ = (FALLING_BLOCK_F(28) & (\Add0~55\ $ (GND))) # (!FALLING_BLOCK_F(28) & (!\Add0~55\ & VCC))
-- \Add0~57\ = CARRY((FALLING_BLOCK_F(28) & !\Add0~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => FALLING_BLOCK_F(28),
	datad => VCC,
	cin => \Add0~55\,
	combout => \Add0~56_combout\,
	cout => \Add0~57\);

-- Location: LCCOMB_X24_Y13_N28
\Add0~60\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~60_combout\ = (FALLING_BLOCK_F(30) & (\Add0~59\ $ (GND))) # (!FALLING_BLOCK_F(30) & (!\Add0~59\ & VCC))
-- \Add0~61\ = CARRY((FALLING_BLOCK_F(30) & !\Add0~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => FALLING_BLOCK_F(30),
	datad => VCC,
	cin => \Add0~59\,
	combout => \Add0~60_combout\,
	cout => \Add0~61\);

-- Location: LCCOMB_X24_Y13_N30
\Add0~62\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~62_combout\ = \Add0~61\ $ (FALLING_BLOCK_F(31))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => FALLING_BLOCK_F(31),
	cin => \Add0~61\,
	combout => \Add0~62_combout\);

-- Location: LCCOMB_X22_Y13_N22
\FALLING_BLOCK_I[11]~56\ : cycloneiii_lcell_comb
-- Equation(s):
-- \FALLING_BLOCK_I[11]~56_combout\ = (FALLING_BLOCK_I(11) & (!\FALLING_BLOCK_I[10]~55\)) # (!FALLING_BLOCK_I(11) & ((\FALLING_BLOCK_I[10]~55\) # (GND)))
-- \FALLING_BLOCK_I[11]~57\ = CARRY((!\FALLING_BLOCK_I[10]~55\) # (!FALLING_BLOCK_I(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => FALLING_BLOCK_I(11),
	datad => VCC,
	cin => \FALLING_BLOCK_I[10]~55\,
	combout => \FALLING_BLOCK_I[11]~56_combout\,
	cout => \FALLING_BLOCK_I[11]~57\);

-- Location: LCCOMB_X22_Y13_N26
\FALLING_BLOCK_I[13]~60\ : cycloneiii_lcell_comb
-- Equation(s):
-- \FALLING_BLOCK_I[13]~60_combout\ = (FALLING_BLOCK_I(13) & (!\FALLING_BLOCK_I[12]~59\)) # (!FALLING_BLOCK_I(13) & ((\FALLING_BLOCK_I[12]~59\) # (GND)))
-- \FALLING_BLOCK_I[13]~61\ = CARRY((!\FALLING_BLOCK_I[12]~59\) # (!FALLING_BLOCK_I(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => FALLING_BLOCK_I(13),
	datad => VCC,
	cin => \FALLING_BLOCK_I[12]~59\,
	combout => \FALLING_BLOCK_I[13]~60_combout\,
	cout => \FALLING_BLOCK_I[13]~61\);

-- Location: LCCOMB_X22_Y13_N30
\FALLING_BLOCK_I[15]~64\ : cycloneiii_lcell_comb
-- Equation(s):
-- \FALLING_BLOCK_I[15]~64_combout\ = (FALLING_BLOCK_I(15) & (!\FALLING_BLOCK_I[14]~63\)) # (!FALLING_BLOCK_I(15) & ((\FALLING_BLOCK_I[14]~63\) # (GND)))
-- \FALLING_BLOCK_I[15]~65\ = CARRY((!\FALLING_BLOCK_I[14]~63\) # (!FALLING_BLOCK_I(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => FALLING_BLOCK_I(15),
	datad => VCC,
	cin => \FALLING_BLOCK_I[14]~63\,
	combout => \FALLING_BLOCK_I[15]~64_combout\,
	cout => \FALLING_BLOCK_I[15]~65\);

-- Location: LCCOMB_X22_Y12_N6
\FALLING_BLOCK_I[19]~72\ : cycloneiii_lcell_comb
-- Equation(s):
-- \FALLING_BLOCK_I[19]~72_combout\ = (FALLING_BLOCK_I(19) & (!\FALLING_BLOCK_I[18]~71\)) # (!FALLING_BLOCK_I(19) & ((\FALLING_BLOCK_I[18]~71\) # (GND)))
-- \FALLING_BLOCK_I[19]~73\ = CARRY((!\FALLING_BLOCK_I[18]~71\) # (!FALLING_BLOCK_I(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => FALLING_BLOCK_I(19),
	datad => VCC,
	cin => \FALLING_BLOCK_I[18]~71\,
	combout => \FALLING_BLOCK_I[19]~72_combout\,
	cout => \FALLING_BLOCK_I[19]~73\);

-- Location: LCCOMB_X22_Y12_N10
\FALLING_BLOCK_I[21]~76\ : cycloneiii_lcell_comb
-- Equation(s):
-- \FALLING_BLOCK_I[21]~76_combout\ = (FALLING_BLOCK_I(21) & (!\FALLING_BLOCK_I[20]~75\)) # (!FALLING_BLOCK_I(21) & ((\FALLING_BLOCK_I[20]~75\) # (GND)))
-- \FALLING_BLOCK_I[21]~77\ = CARRY((!\FALLING_BLOCK_I[20]~75\) # (!FALLING_BLOCK_I(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => FALLING_BLOCK_I(21),
	datad => VCC,
	cin => \FALLING_BLOCK_I[20]~75\,
	combout => \FALLING_BLOCK_I[21]~76_combout\,
	cout => \FALLING_BLOCK_I[21]~77\);

-- Location: LCCOMB_X22_Y12_N12
\FALLING_BLOCK_I[22]~78\ : cycloneiii_lcell_comb
-- Equation(s):
-- \FALLING_BLOCK_I[22]~78_combout\ = (FALLING_BLOCK_I(22) & (\FALLING_BLOCK_I[21]~77\ $ (GND))) # (!FALLING_BLOCK_I(22) & (!\FALLING_BLOCK_I[21]~77\ & VCC))
-- \FALLING_BLOCK_I[22]~79\ = CARRY((FALLING_BLOCK_I(22) & !\FALLING_BLOCK_I[21]~77\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => FALLING_BLOCK_I(22),
	datad => VCC,
	cin => \FALLING_BLOCK_I[21]~77\,
	combout => \FALLING_BLOCK_I[22]~78_combout\,
	cout => \FALLING_BLOCK_I[22]~79\);

-- Location: LCCOMB_X22_Y12_N28
\FALLING_BLOCK_I[30]~94\ : cycloneiii_lcell_comb
-- Equation(s):
-- \FALLING_BLOCK_I[30]~94_combout\ = (FALLING_BLOCK_I(30) & (\FALLING_BLOCK_I[29]~93\ $ (GND))) # (!FALLING_BLOCK_I(30) & (!\FALLING_BLOCK_I[29]~93\ & VCC))
-- \FALLING_BLOCK_I[30]~95\ = CARRY((FALLING_BLOCK_I(30) & !\FALLING_BLOCK_I[29]~93\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => FALLING_BLOCK_I(30),
	datad => VCC,
	cin => \FALLING_BLOCK_I[29]~93\,
	combout => \FALLING_BLOCK_I[30]~94_combout\,
	cout => \FALLING_BLOCK_I[30]~95\);

-- Location: LCCOMB_X22_Y12_N30
\FALLING_BLOCK_I[31]~96\ : cycloneiii_lcell_comb
-- Equation(s):
-- \FALLING_BLOCK_I[31]~96_combout\ = FALLING_BLOCK_I(31) $ (\FALLING_BLOCK_I[30]~95\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => FALLING_BLOCK_I(31),
	cin => \FALLING_BLOCK_I[30]~95\,
	combout => \FALLING_BLOCK_I[31]~96_combout\);

-- Location: LCCOMB_X10_Y11_N10
\PIANOSPEAKER|COUNTER440[5]~42\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PIANOSPEAKER|COUNTER440[5]~42_combout\ = (\PIANOSPEAKER|COUNTER440\(5) & (!\PIANOSPEAKER|COUNTER440[4]~41\)) # (!\PIANOSPEAKER|COUNTER440\(5) & ((\PIANOSPEAKER|COUNTER440[4]~41\) # (GND)))
-- \PIANOSPEAKER|COUNTER440[5]~43\ = CARRY((!\PIANOSPEAKER|COUNTER440[4]~41\) # (!\PIANOSPEAKER|COUNTER440\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PIANOSPEAKER|COUNTER440\(5),
	datad => VCC,
	cin => \PIANOSPEAKER|COUNTER440[4]~41\,
	combout => \PIANOSPEAKER|COUNTER440[5]~42_combout\,
	cout => \PIANOSPEAKER|COUNTER440[5]~43\);

-- Location: LCCOMB_X10_Y11_N22
\PIANOSPEAKER|COUNTER440[11]~54\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PIANOSPEAKER|COUNTER440[11]~54_combout\ = (\PIANOSPEAKER|COUNTER440\(11) & (!\PIANOSPEAKER|COUNTER440[10]~53\)) # (!\PIANOSPEAKER|COUNTER440\(11) & ((\PIANOSPEAKER|COUNTER440[10]~53\) # (GND)))
-- \PIANOSPEAKER|COUNTER440[11]~55\ = CARRY((!\PIANOSPEAKER|COUNTER440[10]~53\) # (!\PIANOSPEAKER|COUNTER440\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PIANOSPEAKER|COUNTER440\(11),
	datad => VCC,
	cin => \PIANOSPEAKER|COUNTER440[10]~53\,
	combout => \PIANOSPEAKER|COUNTER440[11]~54_combout\,
	cout => \PIANOSPEAKER|COUNTER440[11]~55\);

-- Location: LCCOMB_X10_Y11_N26
\PIANOSPEAKER|COUNTER440[13]~58\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PIANOSPEAKER|COUNTER440[13]~58_combout\ = (\PIANOSPEAKER|COUNTER440\(13) & (!\PIANOSPEAKER|COUNTER440[12]~57\)) # (!\PIANOSPEAKER|COUNTER440\(13) & ((\PIANOSPEAKER|COUNTER440[12]~57\) # (GND)))
-- \PIANOSPEAKER|COUNTER440[13]~59\ = CARRY((!\PIANOSPEAKER|COUNTER440[12]~57\) # (!\PIANOSPEAKER|COUNTER440\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PIANOSPEAKER|COUNTER440\(13),
	datad => VCC,
	cin => \PIANOSPEAKER|COUNTER440[12]~57\,
	combout => \PIANOSPEAKER|COUNTER440[13]~58_combout\,
	cout => \PIANOSPEAKER|COUNTER440[13]~59\);

-- Location: LCCOMB_X10_Y10_N6
\PIANOSPEAKER|COUNTER440[19]~70\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PIANOSPEAKER|COUNTER440[19]~70_combout\ = (\PIANOSPEAKER|COUNTER440\(19) & (!\PIANOSPEAKER|COUNTER440[18]~69\)) # (!\PIANOSPEAKER|COUNTER440\(19) & ((\PIANOSPEAKER|COUNTER440[18]~69\) # (GND)))
-- \PIANOSPEAKER|COUNTER440[19]~71\ = CARRY((!\PIANOSPEAKER|COUNTER440[18]~69\) # (!\PIANOSPEAKER|COUNTER440\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PIANOSPEAKER|COUNTER440\(19),
	datad => VCC,
	cin => \PIANOSPEAKER|COUNTER440[18]~69\,
	combout => \PIANOSPEAKER|COUNTER440[19]~70_combout\,
	cout => \PIANOSPEAKER|COUNTER440[19]~71\);

-- Location: LCCOMB_X10_Y10_N12
\PIANOSPEAKER|COUNTER440[22]~76\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PIANOSPEAKER|COUNTER440[22]~76_combout\ = (\PIANOSPEAKER|COUNTER440\(22) & (\PIANOSPEAKER|COUNTER440[21]~75\ $ (GND))) # (!\PIANOSPEAKER|COUNTER440\(22) & (!\PIANOSPEAKER|COUNTER440[21]~75\ & VCC))
-- \PIANOSPEAKER|COUNTER440[22]~77\ = CARRY((\PIANOSPEAKER|COUNTER440\(22) & !\PIANOSPEAKER|COUNTER440[21]~75\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PIANOSPEAKER|COUNTER440\(22),
	datad => VCC,
	cin => \PIANOSPEAKER|COUNTER440[21]~75\,
	combout => \PIANOSPEAKER|COUNTER440[22]~76_combout\,
	cout => \PIANOSPEAKER|COUNTER440[22]~77\);

-- Location: FF_X36_Y24_N1
\PIANOSPEAKER|COUNTER494[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \PIANOSPEAKER|COUNTER494[0]~32_combout\,
	sclr => \PIANOSPEAKER|LessThan1~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PIANOSPEAKER|COUNTER494\(0));

-- Location: LCCOMB_X36_Y24_N0
\PIANOSPEAKER|COUNTER494[0]~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PIANOSPEAKER|COUNTER494[0]~32_combout\ = \PIANOSPEAKER|COUNTER494\(0) $ (VCC)
-- \PIANOSPEAKER|COUNTER494[0]~33\ = CARRY(\PIANOSPEAKER|COUNTER494\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PIANOSPEAKER|COUNTER494\(0),
	datad => VCC,
	combout => \PIANOSPEAKER|COUNTER494[0]~32_combout\,
	cout => \PIANOSPEAKER|COUNTER494[0]~33\);

-- Location: LCCOMB_X36_Y24_N2
\PIANOSPEAKER|COUNTER494[1]~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PIANOSPEAKER|COUNTER494[1]~34_combout\ = (\PIANOSPEAKER|COUNTER494\(1) & (!\PIANOSPEAKER|COUNTER494[0]~33\)) # (!\PIANOSPEAKER|COUNTER494\(1) & ((\PIANOSPEAKER|COUNTER494[0]~33\) # (GND)))
-- \PIANOSPEAKER|COUNTER494[1]~35\ = CARRY((!\PIANOSPEAKER|COUNTER494[0]~33\) # (!\PIANOSPEAKER|COUNTER494\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PIANOSPEAKER|COUNTER494\(1),
	datad => VCC,
	cin => \PIANOSPEAKER|COUNTER494[0]~33\,
	combout => \PIANOSPEAKER|COUNTER494[1]~34_combout\,
	cout => \PIANOSPEAKER|COUNTER494[1]~35\);

-- Location: LCCOMB_X36_Y24_N4
\PIANOSPEAKER|COUNTER494[2]~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PIANOSPEAKER|COUNTER494[2]~36_combout\ = (\PIANOSPEAKER|COUNTER494\(2) & (\PIANOSPEAKER|COUNTER494[1]~35\ $ (GND))) # (!\PIANOSPEAKER|COUNTER494\(2) & (!\PIANOSPEAKER|COUNTER494[1]~35\ & VCC))
-- \PIANOSPEAKER|COUNTER494[2]~37\ = CARRY((\PIANOSPEAKER|COUNTER494\(2) & !\PIANOSPEAKER|COUNTER494[1]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PIANOSPEAKER|COUNTER494\(2),
	datad => VCC,
	cin => \PIANOSPEAKER|COUNTER494[1]~35\,
	combout => \PIANOSPEAKER|COUNTER494[2]~36_combout\,
	cout => \PIANOSPEAKER|COUNTER494[2]~37\);

-- Location: LCCOMB_X36_Y24_N6
\PIANOSPEAKER|COUNTER494[3]~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PIANOSPEAKER|COUNTER494[3]~38_combout\ = (\PIANOSPEAKER|COUNTER494\(3) & (!\PIANOSPEAKER|COUNTER494[2]~37\)) # (!\PIANOSPEAKER|COUNTER494\(3) & ((\PIANOSPEAKER|COUNTER494[2]~37\) # (GND)))
-- \PIANOSPEAKER|COUNTER494[3]~39\ = CARRY((!\PIANOSPEAKER|COUNTER494[2]~37\) # (!\PIANOSPEAKER|COUNTER494\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PIANOSPEAKER|COUNTER494\(3),
	datad => VCC,
	cin => \PIANOSPEAKER|COUNTER494[2]~37\,
	combout => \PIANOSPEAKER|COUNTER494[3]~38_combout\,
	cout => \PIANOSPEAKER|COUNTER494[3]~39\);

-- Location: LCCOMB_X36_Y24_N8
\PIANOSPEAKER|COUNTER494[4]~40\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PIANOSPEAKER|COUNTER494[4]~40_combout\ = (\PIANOSPEAKER|COUNTER494\(4) & (\PIANOSPEAKER|COUNTER494[3]~39\ $ (GND))) # (!\PIANOSPEAKER|COUNTER494\(4) & (!\PIANOSPEAKER|COUNTER494[3]~39\ & VCC))
-- \PIANOSPEAKER|COUNTER494[4]~41\ = CARRY((\PIANOSPEAKER|COUNTER494\(4) & !\PIANOSPEAKER|COUNTER494[3]~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PIANOSPEAKER|COUNTER494\(4),
	datad => VCC,
	cin => \PIANOSPEAKER|COUNTER494[3]~39\,
	combout => \PIANOSPEAKER|COUNTER494[4]~40_combout\,
	cout => \PIANOSPEAKER|COUNTER494[4]~41\);

-- Location: LCCOMB_X36_Y24_N10
\PIANOSPEAKER|COUNTER494[5]~42\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PIANOSPEAKER|COUNTER494[5]~42_combout\ = (\PIANOSPEAKER|COUNTER494\(5) & (!\PIANOSPEAKER|COUNTER494[4]~41\)) # (!\PIANOSPEAKER|COUNTER494\(5) & ((\PIANOSPEAKER|COUNTER494[4]~41\) # (GND)))
-- \PIANOSPEAKER|COUNTER494[5]~43\ = CARRY((!\PIANOSPEAKER|COUNTER494[4]~41\) # (!\PIANOSPEAKER|COUNTER494\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PIANOSPEAKER|COUNTER494\(5),
	datad => VCC,
	cin => \PIANOSPEAKER|COUNTER494[4]~41\,
	combout => \PIANOSPEAKER|COUNTER494[5]~42_combout\,
	cout => \PIANOSPEAKER|COUNTER494[5]~43\);

-- Location: LCCOMB_X36_Y24_N12
\PIANOSPEAKER|COUNTER494[6]~44\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PIANOSPEAKER|COUNTER494[6]~44_combout\ = (\PIANOSPEAKER|COUNTER494\(6) & (\PIANOSPEAKER|COUNTER494[5]~43\ $ (GND))) # (!\PIANOSPEAKER|COUNTER494\(6) & (!\PIANOSPEAKER|COUNTER494[5]~43\ & VCC))
-- \PIANOSPEAKER|COUNTER494[6]~45\ = CARRY((\PIANOSPEAKER|COUNTER494\(6) & !\PIANOSPEAKER|COUNTER494[5]~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PIANOSPEAKER|COUNTER494\(6),
	datad => VCC,
	cin => \PIANOSPEAKER|COUNTER494[5]~43\,
	combout => \PIANOSPEAKER|COUNTER494[6]~44_combout\,
	cout => \PIANOSPEAKER|COUNTER494[6]~45\);

-- Location: LCCOMB_X36_Y24_N14
\PIANOSPEAKER|COUNTER494[7]~46\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PIANOSPEAKER|COUNTER494[7]~46_combout\ = (\PIANOSPEAKER|COUNTER494\(7) & (!\PIANOSPEAKER|COUNTER494[6]~45\)) # (!\PIANOSPEAKER|COUNTER494\(7) & ((\PIANOSPEAKER|COUNTER494[6]~45\) # (GND)))
-- \PIANOSPEAKER|COUNTER494[7]~47\ = CARRY((!\PIANOSPEAKER|COUNTER494[6]~45\) # (!\PIANOSPEAKER|COUNTER494\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PIANOSPEAKER|COUNTER494\(7),
	datad => VCC,
	cin => \PIANOSPEAKER|COUNTER494[6]~45\,
	combout => \PIANOSPEAKER|COUNTER494[7]~46_combout\,
	cout => \PIANOSPEAKER|COUNTER494[7]~47\);

-- Location: LCCOMB_X36_Y24_N16
\PIANOSPEAKER|COUNTER494[8]~48\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PIANOSPEAKER|COUNTER494[8]~48_combout\ = (\PIANOSPEAKER|COUNTER494\(8) & (\PIANOSPEAKER|COUNTER494[7]~47\ $ (GND))) # (!\PIANOSPEAKER|COUNTER494\(8) & (!\PIANOSPEAKER|COUNTER494[7]~47\ & VCC))
-- \PIANOSPEAKER|COUNTER494[8]~49\ = CARRY((\PIANOSPEAKER|COUNTER494\(8) & !\PIANOSPEAKER|COUNTER494[7]~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PIANOSPEAKER|COUNTER494\(8),
	datad => VCC,
	cin => \PIANOSPEAKER|COUNTER494[7]~47\,
	combout => \PIANOSPEAKER|COUNTER494[8]~48_combout\,
	cout => \PIANOSPEAKER|COUNTER494[8]~49\);

-- Location: LCCOMB_X36_Y24_N18
\PIANOSPEAKER|COUNTER494[9]~50\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PIANOSPEAKER|COUNTER494[9]~50_combout\ = (\PIANOSPEAKER|COUNTER494\(9) & (!\PIANOSPEAKER|COUNTER494[8]~49\)) # (!\PIANOSPEAKER|COUNTER494\(9) & ((\PIANOSPEAKER|COUNTER494[8]~49\) # (GND)))
-- \PIANOSPEAKER|COUNTER494[9]~51\ = CARRY((!\PIANOSPEAKER|COUNTER494[8]~49\) # (!\PIANOSPEAKER|COUNTER494\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PIANOSPEAKER|COUNTER494\(9),
	datad => VCC,
	cin => \PIANOSPEAKER|COUNTER494[8]~49\,
	combout => \PIANOSPEAKER|COUNTER494[9]~50_combout\,
	cout => \PIANOSPEAKER|COUNTER494[9]~51\);

-- Location: LCCOMB_X36_Y24_N20
\PIANOSPEAKER|COUNTER494[10]~52\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PIANOSPEAKER|COUNTER494[10]~52_combout\ = (\PIANOSPEAKER|COUNTER494\(10) & (\PIANOSPEAKER|COUNTER494[9]~51\ $ (GND))) # (!\PIANOSPEAKER|COUNTER494\(10) & (!\PIANOSPEAKER|COUNTER494[9]~51\ & VCC))
-- \PIANOSPEAKER|COUNTER494[10]~53\ = CARRY((\PIANOSPEAKER|COUNTER494\(10) & !\PIANOSPEAKER|COUNTER494[9]~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PIANOSPEAKER|COUNTER494\(10),
	datad => VCC,
	cin => \PIANOSPEAKER|COUNTER494[9]~51\,
	combout => \PIANOSPEAKER|COUNTER494[10]~52_combout\,
	cout => \PIANOSPEAKER|COUNTER494[10]~53\);

-- Location: LCCOMB_X36_Y24_N22
\PIANOSPEAKER|COUNTER494[11]~54\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PIANOSPEAKER|COUNTER494[11]~54_combout\ = (\PIANOSPEAKER|COUNTER494\(11) & (!\PIANOSPEAKER|COUNTER494[10]~53\)) # (!\PIANOSPEAKER|COUNTER494\(11) & ((\PIANOSPEAKER|COUNTER494[10]~53\) # (GND)))
-- \PIANOSPEAKER|COUNTER494[11]~55\ = CARRY((!\PIANOSPEAKER|COUNTER494[10]~53\) # (!\PIANOSPEAKER|COUNTER494\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PIANOSPEAKER|COUNTER494\(11),
	datad => VCC,
	cin => \PIANOSPEAKER|COUNTER494[10]~53\,
	combout => \PIANOSPEAKER|COUNTER494[11]~54_combout\,
	cout => \PIANOSPEAKER|COUNTER494[11]~55\);

-- Location: LCCOMB_X36_Y24_N24
\PIANOSPEAKER|COUNTER494[12]~56\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PIANOSPEAKER|COUNTER494[12]~56_combout\ = (\PIANOSPEAKER|COUNTER494\(12) & (\PIANOSPEAKER|COUNTER494[11]~55\ $ (GND))) # (!\PIANOSPEAKER|COUNTER494\(12) & (!\PIANOSPEAKER|COUNTER494[11]~55\ & VCC))
-- \PIANOSPEAKER|COUNTER494[12]~57\ = CARRY((\PIANOSPEAKER|COUNTER494\(12) & !\PIANOSPEAKER|COUNTER494[11]~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PIANOSPEAKER|COUNTER494\(12),
	datad => VCC,
	cin => \PIANOSPEAKER|COUNTER494[11]~55\,
	combout => \PIANOSPEAKER|COUNTER494[12]~56_combout\,
	cout => \PIANOSPEAKER|COUNTER494[12]~57\);

-- Location: LCCOMB_X36_Y24_N26
\PIANOSPEAKER|COUNTER494[13]~58\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PIANOSPEAKER|COUNTER494[13]~58_combout\ = (\PIANOSPEAKER|COUNTER494\(13) & (!\PIANOSPEAKER|COUNTER494[12]~57\)) # (!\PIANOSPEAKER|COUNTER494\(13) & ((\PIANOSPEAKER|COUNTER494[12]~57\) # (GND)))
-- \PIANOSPEAKER|COUNTER494[13]~59\ = CARRY((!\PIANOSPEAKER|COUNTER494[12]~57\) # (!\PIANOSPEAKER|COUNTER494\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PIANOSPEAKER|COUNTER494\(13),
	datad => VCC,
	cin => \PIANOSPEAKER|COUNTER494[12]~57\,
	combout => \PIANOSPEAKER|COUNTER494[13]~58_combout\,
	cout => \PIANOSPEAKER|COUNTER494[13]~59\);

-- Location: LCCOMB_X36_Y24_N28
\PIANOSPEAKER|COUNTER494[14]~60\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PIANOSPEAKER|COUNTER494[14]~60_combout\ = (\PIANOSPEAKER|COUNTER494\(14) & (\PIANOSPEAKER|COUNTER494[13]~59\ $ (GND))) # (!\PIANOSPEAKER|COUNTER494\(14) & (!\PIANOSPEAKER|COUNTER494[13]~59\ & VCC))
-- \PIANOSPEAKER|COUNTER494[14]~61\ = CARRY((\PIANOSPEAKER|COUNTER494\(14) & !\PIANOSPEAKER|COUNTER494[13]~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PIANOSPEAKER|COUNTER494\(14),
	datad => VCC,
	cin => \PIANOSPEAKER|COUNTER494[13]~59\,
	combout => \PIANOSPEAKER|COUNTER494[14]~60_combout\,
	cout => \PIANOSPEAKER|COUNTER494[14]~61\);

-- Location: LCCOMB_X36_Y24_N30
\PIANOSPEAKER|COUNTER494[15]~62\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PIANOSPEAKER|COUNTER494[15]~62_combout\ = (\PIANOSPEAKER|COUNTER494\(15) & (!\PIANOSPEAKER|COUNTER494[14]~61\)) # (!\PIANOSPEAKER|COUNTER494\(15) & ((\PIANOSPEAKER|COUNTER494[14]~61\) # (GND)))
-- \PIANOSPEAKER|COUNTER494[15]~63\ = CARRY((!\PIANOSPEAKER|COUNTER494[14]~61\) # (!\PIANOSPEAKER|COUNTER494\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PIANOSPEAKER|COUNTER494\(15),
	datad => VCC,
	cin => \PIANOSPEAKER|COUNTER494[14]~61\,
	combout => \PIANOSPEAKER|COUNTER494[15]~62_combout\,
	cout => \PIANOSPEAKER|COUNTER494[15]~63\);

-- Location: LCCOMB_X36_Y23_N0
\PIANOSPEAKER|COUNTER494[16]~64\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PIANOSPEAKER|COUNTER494[16]~64_combout\ = (\PIANOSPEAKER|COUNTER494\(16) & (\PIANOSPEAKER|COUNTER494[15]~63\ $ (GND))) # (!\PIANOSPEAKER|COUNTER494\(16) & (!\PIANOSPEAKER|COUNTER494[15]~63\ & VCC))
-- \PIANOSPEAKER|COUNTER494[16]~65\ = CARRY((\PIANOSPEAKER|COUNTER494\(16) & !\PIANOSPEAKER|COUNTER494[15]~63\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PIANOSPEAKER|COUNTER494\(16),
	datad => VCC,
	cin => \PIANOSPEAKER|COUNTER494[15]~63\,
	combout => \PIANOSPEAKER|COUNTER494[16]~64_combout\,
	cout => \PIANOSPEAKER|COUNTER494[16]~65\);

-- Location: LCCOMB_X36_Y23_N2
\PIANOSPEAKER|COUNTER494[17]~66\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PIANOSPEAKER|COUNTER494[17]~66_combout\ = (\PIANOSPEAKER|COUNTER494\(17) & (!\PIANOSPEAKER|COUNTER494[16]~65\)) # (!\PIANOSPEAKER|COUNTER494\(17) & ((\PIANOSPEAKER|COUNTER494[16]~65\) # (GND)))
-- \PIANOSPEAKER|COUNTER494[17]~67\ = CARRY((!\PIANOSPEAKER|COUNTER494[16]~65\) # (!\PIANOSPEAKER|COUNTER494\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PIANOSPEAKER|COUNTER494\(17),
	datad => VCC,
	cin => \PIANOSPEAKER|COUNTER494[16]~65\,
	combout => \PIANOSPEAKER|COUNTER494[17]~66_combout\,
	cout => \PIANOSPEAKER|COUNTER494[17]~67\);

-- Location: LCCOMB_X36_Y23_N4
\PIANOSPEAKER|COUNTER494[18]~68\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PIANOSPEAKER|COUNTER494[18]~68_combout\ = (\PIANOSPEAKER|COUNTER494\(18) & (\PIANOSPEAKER|COUNTER494[17]~67\ $ (GND))) # (!\PIANOSPEAKER|COUNTER494\(18) & (!\PIANOSPEAKER|COUNTER494[17]~67\ & VCC))
-- \PIANOSPEAKER|COUNTER494[18]~69\ = CARRY((\PIANOSPEAKER|COUNTER494\(18) & !\PIANOSPEAKER|COUNTER494[17]~67\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PIANOSPEAKER|COUNTER494\(18),
	datad => VCC,
	cin => \PIANOSPEAKER|COUNTER494[17]~67\,
	combout => \PIANOSPEAKER|COUNTER494[18]~68_combout\,
	cout => \PIANOSPEAKER|COUNTER494[18]~69\);

-- Location: LCCOMB_X36_Y23_N6
\PIANOSPEAKER|COUNTER494[19]~70\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PIANOSPEAKER|COUNTER494[19]~70_combout\ = (\PIANOSPEAKER|COUNTER494\(19) & (!\PIANOSPEAKER|COUNTER494[18]~69\)) # (!\PIANOSPEAKER|COUNTER494\(19) & ((\PIANOSPEAKER|COUNTER494[18]~69\) # (GND)))
-- \PIANOSPEAKER|COUNTER494[19]~71\ = CARRY((!\PIANOSPEAKER|COUNTER494[18]~69\) # (!\PIANOSPEAKER|COUNTER494\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PIANOSPEAKER|COUNTER494\(19),
	datad => VCC,
	cin => \PIANOSPEAKER|COUNTER494[18]~69\,
	combout => \PIANOSPEAKER|COUNTER494[19]~70_combout\,
	cout => \PIANOSPEAKER|COUNTER494[19]~71\);

-- Location: LCCOMB_X36_Y23_N8
\PIANOSPEAKER|COUNTER494[20]~72\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PIANOSPEAKER|COUNTER494[20]~72_combout\ = (\PIANOSPEAKER|COUNTER494\(20) & (\PIANOSPEAKER|COUNTER494[19]~71\ $ (GND))) # (!\PIANOSPEAKER|COUNTER494\(20) & (!\PIANOSPEAKER|COUNTER494[19]~71\ & VCC))
-- \PIANOSPEAKER|COUNTER494[20]~73\ = CARRY((\PIANOSPEAKER|COUNTER494\(20) & !\PIANOSPEAKER|COUNTER494[19]~71\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PIANOSPEAKER|COUNTER494\(20),
	datad => VCC,
	cin => \PIANOSPEAKER|COUNTER494[19]~71\,
	combout => \PIANOSPEAKER|COUNTER494[20]~72_combout\,
	cout => \PIANOSPEAKER|COUNTER494[20]~73\);

-- Location: LCCOMB_X36_Y23_N10
\PIANOSPEAKER|COUNTER494[21]~74\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PIANOSPEAKER|COUNTER494[21]~74_combout\ = (\PIANOSPEAKER|COUNTER494\(21) & (!\PIANOSPEAKER|COUNTER494[20]~73\)) # (!\PIANOSPEAKER|COUNTER494\(21) & ((\PIANOSPEAKER|COUNTER494[20]~73\) # (GND)))
-- \PIANOSPEAKER|COUNTER494[21]~75\ = CARRY((!\PIANOSPEAKER|COUNTER494[20]~73\) # (!\PIANOSPEAKER|COUNTER494\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PIANOSPEAKER|COUNTER494\(21),
	datad => VCC,
	cin => \PIANOSPEAKER|COUNTER494[20]~73\,
	combout => \PIANOSPEAKER|COUNTER494[21]~74_combout\,
	cout => \PIANOSPEAKER|COUNTER494[21]~75\);

-- Location: LCCOMB_X36_Y23_N12
\PIANOSPEAKER|COUNTER494[22]~76\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PIANOSPEAKER|COUNTER494[22]~76_combout\ = (\PIANOSPEAKER|COUNTER494\(22) & (\PIANOSPEAKER|COUNTER494[21]~75\ $ (GND))) # (!\PIANOSPEAKER|COUNTER494\(22) & (!\PIANOSPEAKER|COUNTER494[21]~75\ & VCC))
-- \PIANOSPEAKER|COUNTER494[22]~77\ = CARRY((\PIANOSPEAKER|COUNTER494\(22) & !\PIANOSPEAKER|COUNTER494[21]~75\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PIANOSPEAKER|COUNTER494\(22),
	datad => VCC,
	cin => \PIANOSPEAKER|COUNTER494[21]~75\,
	combout => \PIANOSPEAKER|COUNTER494[22]~76_combout\,
	cout => \PIANOSPEAKER|COUNTER494[22]~77\);

-- Location: LCCOMB_X36_Y23_N14
\PIANOSPEAKER|COUNTER494[23]~78\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PIANOSPEAKER|COUNTER494[23]~78_combout\ = (\PIANOSPEAKER|COUNTER494\(23) & (!\PIANOSPEAKER|COUNTER494[22]~77\)) # (!\PIANOSPEAKER|COUNTER494\(23) & ((\PIANOSPEAKER|COUNTER494[22]~77\) # (GND)))
-- \PIANOSPEAKER|COUNTER494[23]~79\ = CARRY((!\PIANOSPEAKER|COUNTER494[22]~77\) # (!\PIANOSPEAKER|COUNTER494\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PIANOSPEAKER|COUNTER494\(23),
	datad => VCC,
	cin => \PIANOSPEAKER|COUNTER494[22]~77\,
	combout => \PIANOSPEAKER|COUNTER494[23]~78_combout\,
	cout => \PIANOSPEAKER|COUNTER494[23]~79\);

-- Location: LCCOMB_X36_Y23_N16
\PIANOSPEAKER|COUNTER494[24]~80\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PIANOSPEAKER|COUNTER494[24]~80_combout\ = (\PIANOSPEAKER|COUNTER494\(24) & (\PIANOSPEAKER|COUNTER494[23]~79\ $ (GND))) # (!\PIANOSPEAKER|COUNTER494\(24) & (!\PIANOSPEAKER|COUNTER494[23]~79\ & VCC))
-- \PIANOSPEAKER|COUNTER494[24]~81\ = CARRY((\PIANOSPEAKER|COUNTER494\(24) & !\PIANOSPEAKER|COUNTER494[23]~79\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PIANOSPEAKER|COUNTER494\(24),
	datad => VCC,
	cin => \PIANOSPEAKER|COUNTER494[23]~79\,
	combout => \PIANOSPEAKER|COUNTER494[24]~80_combout\,
	cout => \PIANOSPEAKER|COUNTER494[24]~81\);

-- Location: LCCOMB_X36_Y23_N18
\PIANOSPEAKER|COUNTER494[25]~82\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PIANOSPEAKER|COUNTER494[25]~82_combout\ = (\PIANOSPEAKER|COUNTER494\(25) & (!\PIANOSPEAKER|COUNTER494[24]~81\)) # (!\PIANOSPEAKER|COUNTER494\(25) & ((\PIANOSPEAKER|COUNTER494[24]~81\) # (GND)))
-- \PIANOSPEAKER|COUNTER494[25]~83\ = CARRY((!\PIANOSPEAKER|COUNTER494[24]~81\) # (!\PIANOSPEAKER|COUNTER494\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PIANOSPEAKER|COUNTER494\(25),
	datad => VCC,
	cin => \PIANOSPEAKER|COUNTER494[24]~81\,
	combout => \PIANOSPEAKER|COUNTER494[25]~82_combout\,
	cout => \PIANOSPEAKER|COUNTER494[25]~83\);

-- Location: LCCOMB_X36_Y23_N20
\PIANOSPEAKER|COUNTER494[26]~84\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PIANOSPEAKER|COUNTER494[26]~84_combout\ = (\PIANOSPEAKER|COUNTER494\(26) & (\PIANOSPEAKER|COUNTER494[25]~83\ $ (GND))) # (!\PIANOSPEAKER|COUNTER494\(26) & (!\PIANOSPEAKER|COUNTER494[25]~83\ & VCC))
-- \PIANOSPEAKER|COUNTER494[26]~85\ = CARRY((\PIANOSPEAKER|COUNTER494\(26) & !\PIANOSPEAKER|COUNTER494[25]~83\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PIANOSPEAKER|COUNTER494\(26),
	datad => VCC,
	cin => \PIANOSPEAKER|COUNTER494[25]~83\,
	combout => \PIANOSPEAKER|COUNTER494[26]~84_combout\,
	cout => \PIANOSPEAKER|COUNTER494[26]~85\);

-- Location: LCCOMB_X36_Y23_N22
\PIANOSPEAKER|COUNTER494[27]~86\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PIANOSPEAKER|COUNTER494[27]~86_combout\ = (\PIANOSPEAKER|COUNTER494\(27) & (!\PIANOSPEAKER|COUNTER494[26]~85\)) # (!\PIANOSPEAKER|COUNTER494\(27) & ((\PIANOSPEAKER|COUNTER494[26]~85\) # (GND)))
-- \PIANOSPEAKER|COUNTER494[27]~87\ = CARRY((!\PIANOSPEAKER|COUNTER494[26]~85\) # (!\PIANOSPEAKER|COUNTER494\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PIANOSPEAKER|COUNTER494\(27),
	datad => VCC,
	cin => \PIANOSPEAKER|COUNTER494[26]~85\,
	combout => \PIANOSPEAKER|COUNTER494[27]~86_combout\,
	cout => \PIANOSPEAKER|COUNTER494[27]~87\);

-- Location: LCCOMB_X36_Y23_N24
\PIANOSPEAKER|COUNTER494[28]~88\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PIANOSPEAKER|COUNTER494[28]~88_combout\ = (\PIANOSPEAKER|COUNTER494\(28) & (\PIANOSPEAKER|COUNTER494[27]~87\ $ (GND))) # (!\PIANOSPEAKER|COUNTER494\(28) & (!\PIANOSPEAKER|COUNTER494[27]~87\ & VCC))
-- \PIANOSPEAKER|COUNTER494[28]~89\ = CARRY((\PIANOSPEAKER|COUNTER494\(28) & !\PIANOSPEAKER|COUNTER494[27]~87\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PIANOSPEAKER|COUNTER494\(28),
	datad => VCC,
	cin => \PIANOSPEAKER|COUNTER494[27]~87\,
	combout => \PIANOSPEAKER|COUNTER494[28]~88_combout\,
	cout => \PIANOSPEAKER|COUNTER494[28]~89\);

-- Location: LCCOMB_X36_Y23_N26
\PIANOSPEAKER|COUNTER494[29]~90\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PIANOSPEAKER|COUNTER494[29]~90_combout\ = (\PIANOSPEAKER|COUNTER494\(29) & (!\PIANOSPEAKER|COUNTER494[28]~89\)) # (!\PIANOSPEAKER|COUNTER494\(29) & ((\PIANOSPEAKER|COUNTER494[28]~89\) # (GND)))
-- \PIANOSPEAKER|COUNTER494[29]~91\ = CARRY((!\PIANOSPEAKER|COUNTER494[28]~89\) # (!\PIANOSPEAKER|COUNTER494\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PIANOSPEAKER|COUNTER494\(29),
	datad => VCC,
	cin => \PIANOSPEAKER|COUNTER494[28]~89\,
	combout => \PIANOSPEAKER|COUNTER494[29]~90_combout\,
	cout => \PIANOSPEAKER|COUNTER494[29]~91\);

-- Location: LCCOMB_X36_Y23_N28
\PIANOSPEAKER|COUNTER494[30]~92\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PIANOSPEAKER|COUNTER494[30]~92_combout\ = (\PIANOSPEAKER|COUNTER494\(30) & (\PIANOSPEAKER|COUNTER494[29]~91\ $ (GND))) # (!\PIANOSPEAKER|COUNTER494\(30) & (!\PIANOSPEAKER|COUNTER494[29]~91\ & VCC))
-- \PIANOSPEAKER|COUNTER494[30]~93\ = CARRY((\PIANOSPEAKER|COUNTER494\(30) & !\PIANOSPEAKER|COUNTER494[29]~91\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PIANOSPEAKER|COUNTER494\(30),
	datad => VCC,
	cin => \PIANOSPEAKER|COUNTER494[29]~91\,
	combout => \PIANOSPEAKER|COUNTER494[30]~92_combout\,
	cout => \PIANOSPEAKER|COUNTER494[30]~93\);

-- Location: LCCOMB_X36_Y23_N30
\PIANOSPEAKER|COUNTER494[31]~94\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PIANOSPEAKER|COUNTER494[31]~94_combout\ = \PIANOSPEAKER|COUNTER494\(31) $ (\PIANOSPEAKER|COUNTER494[30]~93\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PIANOSPEAKER|COUNTER494\(31),
	cin => \PIANOSPEAKER|COUNTER494[30]~93\,
	combout => \PIANOSPEAKER|COUNTER494[31]~94_combout\);

-- Location: FF_X16_Y5_N1
\PIANOSPEAKER|COUNTER587[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \PIANOSPEAKER|COUNTER587[0]~32_combout\,
	sclr => \PIANOSPEAKER|LessThan3~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PIANOSPEAKER|COUNTER587\(0));

-- Location: LCCOMB_X16_Y5_N0
\PIANOSPEAKER|COUNTER587[0]~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PIANOSPEAKER|COUNTER587[0]~32_combout\ = \PIANOSPEAKER|COUNTER587\(0) $ (VCC)
-- \PIANOSPEAKER|COUNTER587[0]~33\ = CARRY(\PIANOSPEAKER|COUNTER587\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PIANOSPEAKER|COUNTER587\(0),
	datad => VCC,
	combout => \PIANOSPEAKER|COUNTER587[0]~32_combout\,
	cout => \PIANOSPEAKER|COUNTER587[0]~33\);

-- Location: LCCOMB_X16_Y5_N2
\PIANOSPEAKER|COUNTER587[1]~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PIANOSPEAKER|COUNTER587[1]~34_combout\ = (\PIANOSPEAKER|COUNTER587\(1) & (!\PIANOSPEAKER|COUNTER587[0]~33\)) # (!\PIANOSPEAKER|COUNTER587\(1) & ((\PIANOSPEAKER|COUNTER587[0]~33\) # (GND)))
-- \PIANOSPEAKER|COUNTER587[1]~35\ = CARRY((!\PIANOSPEAKER|COUNTER587[0]~33\) # (!\PIANOSPEAKER|COUNTER587\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PIANOSPEAKER|COUNTER587\(1),
	datad => VCC,
	cin => \PIANOSPEAKER|COUNTER587[0]~33\,
	combout => \PIANOSPEAKER|COUNTER587[1]~34_combout\,
	cout => \PIANOSPEAKER|COUNTER587[1]~35\);

-- Location: LCCOMB_X16_Y5_N4
\PIANOSPEAKER|COUNTER587[2]~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PIANOSPEAKER|COUNTER587[2]~36_combout\ = (\PIANOSPEAKER|COUNTER587\(2) & (\PIANOSPEAKER|COUNTER587[1]~35\ $ (GND))) # (!\PIANOSPEAKER|COUNTER587\(2) & (!\PIANOSPEAKER|COUNTER587[1]~35\ & VCC))
-- \PIANOSPEAKER|COUNTER587[2]~37\ = CARRY((\PIANOSPEAKER|COUNTER587\(2) & !\PIANOSPEAKER|COUNTER587[1]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PIANOSPEAKER|COUNTER587\(2),
	datad => VCC,
	cin => \PIANOSPEAKER|COUNTER587[1]~35\,
	combout => \PIANOSPEAKER|COUNTER587[2]~36_combout\,
	cout => \PIANOSPEAKER|COUNTER587[2]~37\);

-- Location: LCCOMB_X16_Y5_N6
\PIANOSPEAKER|COUNTER587[3]~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PIANOSPEAKER|COUNTER587[3]~38_combout\ = (\PIANOSPEAKER|COUNTER587\(3) & (!\PIANOSPEAKER|COUNTER587[2]~37\)) # (!\PIANOSPEAKER|COUNTER587\(3) & ((\PIANOSPEAKER|COUNTER587[2]~37\) # (GND)))
-- \PIANOSPEAKER|COUNTER587[3]~39\ = CARRY((!\PIANOSPEAKER|COUNTER587[2]~37\) # (!\PIANOSPEAKER|COUNTER587\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PIANOSPEAKER|COUNTER587\(3),
	datad => VCC,
	cin => \PIANOSPEAKER|COUNTER587[2]~37\,
	combout => \PIANOSPEAKER|COUNTER587[3]~38_combout\,
	cout => \PIANOSPEAKER|COUNTER587[3]~39\);

-- Location: LCCOMB_X16_Y5_N8
\PIANOSPEAKER|COUNTER587[4]~40\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PIANOSPEAKER|COUNTER587[4]~40_combout\ = (\PIANOSPEAKER|COUNTER587\(4) & (\PIANOSPEAKER|COUNTER587[3]~39\ $ (GND))) # (!\PIANOSPEAKER|COUNTER587\(4) & (!\PIANOSPEAKER|COUNTER587[3]~39\ & VCC))
-- \PIANOSPEAKER|COUNTER587[4]~41\ = CARRY((\PIANOSPEAKER|COUNTER587\(4) & !\PIANOSPEAKER|COUNTER587[3]~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PIANOSPEAKER|COUNTER587\(4),
	datad => VCC,
	cin => \PIANOSPEAKER|COUNTER587[3]~39\,
	combout => \PIANOSPEAKER|COUNTER587[4]~40_combout\,
	cout => \PIANOSPEAKER|COUNTER587[4]~41\);

-- Location: LCCOMB_X16_Y5_N10
\PIANOSPEAKER|COUNTER587[5]~42\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PIANOSPEAKER|COUNTER587[5]~42_combout\ = (\PIANOSPEAKER|COUNTER587\(5) & (!\PIANOSPEAKER|COUNTER587[4]~41\)) # (!\PIANOSPEAKER|COUNTER587\(5) & ((\PIANOSPEAKER|COUNTER587[4]~41\) # (GND)))
-- \PIANOSPEAKER|COUNTER587[5]~43\ = CARRY((!\PIANOSPEAKER|COUNTER587[4]~41\) # (!\PIANOSPEAKER|COUNTER587\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PIANOSPEAKER|COUNTER587\(5),
	datad => VCC,
	cin => \PIANOSPEAKER|COUNTER587[4]~41\,
	combout => \PIANOSPEAKER|COUNTER587[5]~42_combout\,
	cout => \PIANOSPEAKER|COUNTER587[5]~43\);

-- Location: LCCOMB_X16_Y5_N12
\PIANOSPEAKER|COUNTER587[6]~44\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PIANOSPEAKER|COUNTER587[6]~44_combout\ = (\PIANOSPEAKER|COUNTER587\(6) & (\PIANOSPEAKER|COUNTER587[5]~43\ $ (GND))) # (!\PIANOSPEAKER|COUNTER587\(6) & (!\PIANOSPEAKER|COUNTER587[5]~43\ & VCC))
-- \PIANOSPEAKER|COUNTER587[6]~45\ = CARRY((\PIANOSPEAKER|COUNTER587\(6) & !\PIANOSPEAKER|COUNTER587[5]~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PIANOSPEAKER|COUNTER587\(6),
	datad => VCC,
	cin => \PIANOSPEAKER|COUNTER587[5]~43\,
	combout => \PIANOSPEAKER|COUNTER587[6]~44_combout\,
	cout => \PIANOSPEAKER|COUNTER587[6]~45\);

-- Location: LCCOMB_X16_Y5_N14
\PIANOSPEAKER|COUNTER587[7]~46\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PIANOSPEAKER|COUNTER587[7]~46_combout\ = (\PIANOSPEAKER|COUNTER587\(7) & (!\PIANOSPEAKER|COUNTER587[6]~45\)) # (!\PIANOSPEAKER|COUNTER587\(7) & ((\PIANOSPEAKER|COUNTER587[6]~45\) # (GND)))
-- \PIANOSPEAKER|COUNTER587[7]~47\ = CARRY((!\PIANOSPEAKER|COUNTER587[6]~45\) # (!\PIANOSPEAKER|COUNTER587\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PIANOSPEAKER|COUNTER587\(7),
	datad => VCC,
	cin => \PIANOSPEAKER|COUNTER587[6]~45\,
	combout => \PIANOSPEAKER|COUNTER587[7]~46_combout\,
	cout => \PIANOSPEAKER|COUNTER587[7]~47\);

-- Location: LCCOMB_X16_Y5_N16
\PIANOSPEAKER|COUNTER587[8]~48\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PIANOSPEAKER|COUNTER587[8]~48_combout\ = (\PIANOSPEAKER|COUNTER587\(8) & (\PIANOSPEAKER|COUNTER587[7]~47\ $ (GND))) # (!\PIANOSPEAKER|COUNTER587\(8) & (!\PIANOSPEAKER|COUNTER587[7]~47\ & VCC))
-- \PIANOSPEAKER|COUNTER587[8]~49\ = CARRY((\PIANOSPEAKER|COUNTER587\(8) & !\PIANOSPEAKER|COUNTER587[7]~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PIANOSPEAKER|COUNTER587\(8),
	datad => VCC,
	cin => \PIANOSPEAKER|COUNTER587[7]~47\,
	combout => \PIANOSPEAKER|COUNTER587[8]~48_combout\,
	cout => \PIANOSPEAKER|COUNTER587[8]~49\);

-- Location: LCCOMB_X16_Y5_N18
\PIANOSPEAKER|COUNTER587[9]~50\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PIANOSPEAKER|COUNTER587[9]~50_combout\ = (\PIANOSPEAKER|COUNTER587\(9) & (!\PIANOSPEAKER|COUNTER587[8]~49\)) # (!\PIANOSPEAKER|COUNTER587\(9) & ((\PIANOSPEAKER|COUNTER587[8]~49\) # (GND)))
-- \PIANOSPEAKER|COUNTER587[9]~51\ = CARRY((!\PIANOSPEAKER|COUNTER587[8]~49\) # (!\PIANOSPEAKER|COUNTER587\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PIANOSPEAKER|COUNTER587\(9),
	datad => VCC,
	cin => \PIANOSPEAKER|COUNTER587[8]~49\,
	combout => \PIANOSPEAKER|COUNTER587[9]~50_combout\,
	cout => \PIANOSPEAKER|COUNTER587[9]~51\);

-- Location: LCCOMB_X16_Y5_N20
\PIANOSPEAKER|COUNTER587[10]~52\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PIANOSPEAKER|COUNTER587[10]~52_combout\ = (\PIANOSPEAKER|COUNTER587\(10) & (\PIANOSPEAKER|COUNTER587[9]~51\ $ (GND))) # (!\PIANOSPEAKER|COUNTER587\(10) & (!\PIANOSPEAKER|COUNTER587[9]~51\ & VCC))
-- \PIANOSPEAKER|COUNTER587[10]~53\ = CARRY((\PIANOSPEAKER|COUNTER587\(10) & !\PIANOSPEAKER|COUNTER587[9]~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PIANOSPEAKER|COUNTER587\(10),
	datad => VCC,
	cin => \PIANOSPEAKER|COUNTER587[9]~51\,
	combout => \PIANOSPEAKER|COUNTER587[10]~52_combout\,
	cout => \PIANOSPEAKER|COUNTER587[10]~53\);

-- Location: LCCOMB_X16_Y5_N22
\PIANOSPEAKER|COUNTER587[11]~54\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PIANOSPEAKER|COUNTER587[11]~54_combout\ = (\PIANOSPEAKER|COUNTER587\(11) & (!\PIANOSPEAKER|COUNTER587[10]~53\)) # (!\PIANOSPEAKER|COUNTER587\(11) & ((\PIANOSPEAKER|COUNTER587[10]~53\) # (GND)))
-- \PIANOSPEAKER|COUNTER587[11]~55\ = CARRY((!\PIANOSPEAKER|COUNTER587[10]~53\) # (!\PIANOSPEAKER|COUNTER587\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PIANOSPEAKER|COUNTER587\(11),
	datad => VCC,
	cin => \PIANOSPEAKER|COUNTER587[10]~53\,
	combout => \PIANOSPEAKER|COUNTER587[11]~54_combout\,
	cout => \PIANOSPEAKER|COUNTER587[11]~55\);

-- Location: LCCOMB_X16_Y5_N24
\PIANOSPEAKER|COUNTER587[12]~56\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PIANOSPEAKER|COUNTER587[12]~56_combout\ = (\PIANOSPEAKER|COUNTER587\(12) & (\PIANOSPEAKER|COUNTER587[11]~55\ $ (GND))) # (!\PIANOSPEAKER|COUNTER587\(12) & (!\PIANOSPEAKER|COUNTER587[11]~55\ & VCC))
-- \PIANOSPEAKER|COUNTER587[12]~57\ = CARRY((\PIANOSPEAKER|COUNTER587\(12) & !\PIANOSPEAKER|COUNTER587[11]~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PIANOSPEAKER|COUNTER587\(12),
	datad => VCC,
	cin => \PIANOSPEAKER|COUNTER587[11]~55\,
	combout => \PIANOSPEAKER|COUNTER587[12]~56_combout\,
	cout => \PIANOSPEAKER|COUNTER587[12]~57\);

-- Location: LCCOMB_X16_Y5_N26
\PIANOSPEAKER|COUNTER587[13]~58\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PIANOSPEAKER|COUNTER587[13]~58_combout\ = (\PIANOSPEAKER|COUNTER587\(13) & (!\PIANOSPEAKER|COUNTER587[12]~57\)) # (!\PIANOSPEAKER|COUNTER587\(13) & ((\PIANOSPEAKER|COUNTER587[12]~57\) # (GND)))
-- \PIANOSPEAKER|COUNTER587[13]~59\ = CARRY((!\PIANOSPEAKER|COUNTER587[12]~57\) # (!\PIANOSPEAKER|COUNTER587\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PIANOSPEAKER|COUNTER587\(13),
	datad => VCC,
	cin => \PIANOSPEAKER|COUNTER587[12]~57\,
	combout => \PIANOSPEAKER|COUNTER587[13]~58_combout\,
	cout => \PIANOSPEAKER|COUNTER587[13]~59\);

-- Location: LCCOMB_X16_Y5_N28
\PIANOSPEAKER|COUNTER587[14]~60\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PIANOSPEAKER|COUNTER587[14]~60_combout\ = (\PIANOSPEAKER|COUNTER587\(14) & (\PIANOSPEAKER|COUNTER587[13]~59\ $ (GND))) # (!\PIANOSPEAKER|COUNTER587\(14) & (!\PIANOSPEAKER|COUNTER587[13]~59\ & VCC))
-- \PIANOSPEAKER|COUNTER587[14]~61\ = CARRY((\PIANOSPEAKER|COUNTER587\(14) & !\PIANOSPEAKER|COUNTER587[13]~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PIANOSPEAKER|COUNTER587\(14),
	datad => VCC,
	cin => \PIANOSPEAKER|COUNTER587[13]~59\,
	combout => \PIANOSPEAKER|COUNTER587[14]~60_combout\,
	cout => \PIANOSPEAKER|COUNTER587[14]~61\);

-- Location: LCCOMB_X16_Y5_N30
\PIANOSPEAKER|COUNTER587[15]~62\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PIANOSPEAKER|COUNTER587[15]~62_combout\ = (\PIANOSPEAKER|COUNTER587\(15) & (!\PIANOSPEAKER|COUNTER587[14]~61\)) # (!\PIANOSPEAKER|COUNTER587\(15) & ((\PIANOSPEAKER|COUNTER587[14]~61\) # (GND)))
-- \PIANOSPEAKER|COUNTER587[15]~63\ = CARRY((!\PIANOSPEAKER|COUNTER587[14]~61\) # (!\PIANOSPEAKER|COUNTER587\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PIANOSPEAKER|COUNTER587\(15),
	datad => VCC,
	cin => \PIANOSPEAKER|COUNTER587[14]~61\,
	combout => \PIANOSPEAKER|COUNTER587[15]~62_combout\,
	cout => \PIANOSPEAKER|COUNTER587[15]~63\);

-- Location: LCCOMB_X16_Y4_N0
\PIANOSPEAKER|COUNTER587[16]~64\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PIANOSPEAKER|COUNTER587[16]~64_combout\ = (\PIANOSPEAKER|COUNTER587\(16) & (\PIANOSPEAKER|COUNTER587[15]~63\ $ (GND))) # (!\PIANOSPEAKER|COUNTER587\(16) & (!\PIANOSPEAKER|COUNTER587[15]~63\ & VCC))
-- \PIANOSPEAKER|COUNTER587[16]~65\ = CARRY((\PIANOSPEAKER|COUNTER587\(16) & !\PIANOSPEAKER|COUNTER587[15]~63\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PIANOSPEAKER|COUNTER587\(16),
	datad => VCC,
	cin => \PIANOSPEAKER|COUNTER587[15]~63\,
	combout => \PIANOSPEAKER|COUNTER587[16]~64_combout\,
	cout => \PIANOSPEAKER|COUNTER587[16]~65\);

-- Location: LCCOMB_X16_Y4_N2
\PIANOSPEAKER|COUNTER587[17]~66\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PIANOSPEAKER|COUNTER587[17]~66_combout\ = (\PIANOSPEAKER|COUNTER587\(17) & (!\PIANOSPEAKER|COUNTER587[16]~65\)) # (!\PIANOSPEAKER|COUNTER587\(17) & ((\PIANOSPEAKER|COUNTER587[16]~65\) # (GND)))
-- \PIANOSPEAKER|COUNTER587[17]~67\ = CARRY((!\PIANOSPEAKER|COUNTER587[16]~65\) # (!\PIANOSPEAKER|COUNTER587\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PIANOSPEAKER|COUNTER587\(17),
	datad => VCC,
	cin => \PIANOSPEAKER|COUNTER587[16]~65\,
	combout => \PIANOSPEAKER|COUNTER587[17]~66_combout\,
	cout => \PIANOSPEAKER|COUNTER587[17]~67\);

-- Location: LCCOMB_X16_Y4_N4
\PIANOSPEAKER|COUNTER587[18]~68\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PIANOSPEAKER|COUNTER587[18]~68_combout\ = (\PIANOSPEAKER|COUNTER587\(18) & (\PIANOSPEAKER|COUNTER587[17]~67\ $ (GND))) # (!\PIANOSPEAKER|COUNTER587\(18) & (!\PIANOSPEAKER|COUNTER587[17]~67\ & VCC))
-- \PIANOSPEAKER|COUNTER587[18]~69\ = CARRY((\PIANOSPEAKER|COUNTER587\(18) & !\PIANOSPEAKER|COUNTER587[17]~67\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PIANOSPEAKER|COUNTER587\(18),
	datad => VCC,
	cin => \PIANOSPEAKER|COUNTER587[17]~67\,
	combout => \PIANOSPEAKER|COUNTER587[18]~68_combout\,
	cout => \PIANOSPEAKER|COUNTER587[18]~69\);

-- Location: LCCOMB_X16_Y4_N6
\PIANOSPEAKER|COUNTER587[19]~70\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PIANOSPEAKER|COUNTER587[19]~70_combout\ = (\PIANOSPEAKER|COUNTER587\(19) & (!\PIANOSPEAKER|COUNTER587[18]~69\)) # (!\PIANOSPEAKER|COUNTER587\(19) & ((\PIANOSPEAKER|COUNTER587[18]~69\) # (GND)))
-- \PIANOSPEAKER|COUNTER587[19]~71\ = CARRY((!\PIANOSPEAKER|COUNTER587[18]~69\) # (!\PIANOSPEAKER|COUNTER587\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PIANOSPEAKER|COUNTER587\(19),
	datad => VCC,
	cin => \PIANOSPEAKER|COUNTER587[18]~69\,
	combout => \PIANOSPEAKER|COUNTER587[19]~70_combout\,
	cout => \PIANOSPEAKER|COUNTER587[19]~71\);

-- Location: LCCOMB_X16_Y4_N8
\PIANOSPEAKER|COUNTER587[20]~72\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PIANOSPEAKER|COUNTER587[20]~72_combout\ = (\PIANOSPEAKER|COUNTER587\(20) & (\PIANOSPEAKER|COUNTER587[19]~71\ $ (GND))) # (!\PIANOSPEAKER|COUNTER587\(20) & (!\PIANOSPEAKER|COUNTER587[19]~71\ & VCC))
-- \PIANOSPEAKER|COUNTER587[20]~73\ = CARRY((\PIANOSPEAKER|COUNTER587\(20) & !\PIANOSPEAKER|COUNTER587[19]~71\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PIANOSPEAKER|COUNTER587\(20),
	datad => VCC,
	cin => \PIANOSPEAKER|COUNTER587[19]~71\,
	combout => \PIANOSPEAKER|COUNTER587[20]~72_combout\,
	cout => \PIANOSPEAKER|COUNTER587[20]~73\);

-- Location: LCCOMB_X16_Y4_N10
\PIANOSPEAKER|COUNTER587[21]~74\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PIANOSPEAKER|COUNTER587[21]~74_combout\ = (\PIANOSPEAKER|COUNTER587\(21) & (!\PIANOSPEAKER|COUNTER587[20]~73\)) # (!\PIANOSPEAKER|COUNTER587\(21) & ((\PIANOSPEAKER|COUNTER587[20]~73\) # (GND)))
-- \PIANOSPEAKER|COUNTER587[21]~75\ = CARRY((!\PIANOSPEAKER|COUNTER587[20]~73\) # (!\PIANOSPEAKER|COUNTER587\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PIANOSPEAKER|COUNTER587\(21),
	datad => VCC,
	cin => \PIANOSPEAKER|COUNTER587[20]~73\,
	combout => \PIANOSPEAKER|COUNTER587[21]~74_combout\,
	cout => \PIANOSPEAKER|COUNTER587[21]~75\);

-- Location: LCCOMB_X16_Y4_N12
\PIANOSPEAKER|COUNTER587[22]~76\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PIANOSPEAKER|COUNTER587[22]~76_combout\ = (\PIANOSPEAKER|COUNTER587\(22) & (\PIANOSPEAKER|COUNTER587[21]~75\ $ (GND))) # (!\PIANOSPEAKER|COUNTER587\(22) & (!\PIANOSPEAKER|COUNTER587[21]~75\ & VCC))
-- \PIANOSPEAKER|COUNTER587[22]~77\ = CARRY((\PIANOSPEAKER|COUNTER587\(22) & !\PIANOSPEAKER|COUNTER587[21]~75\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PIANOSPEAKER|COUNTER587\(22),
	datad => VCC,
	cin => \PIANOSPEAKER|COUNTER587[21]~75\,
	combout => \PIANOSPEAKER|COUNTER587[22]~76_combout\,
	cout => \PIANOSPEAKER|COUNTER587[22]~77\);

-- Location: LCCOMB_X16_Y4_N14
\PIANOSPEAKER|COUNTER587[23]~78\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PIANOSPEAKER|COUNTER587[23]~78_combout\ = (\PIANOSPEAKER|COUNTER587\(23) & (!\PIANOSPEAKER|COUNTER587[22]~77\)) # (!\PIANOSPEAKER|COUNTER587\(23) & ((\PIANOSPEAKER|COUNTER587[22]~77\) # (GND)))
-- \PIANOSPEAKER|COUNTER587[23]~79\ = CARRY((!\PIANOSPEAKER|COUNTER587[22]~77\) # (!\PIANOSPEAKER|COUNTER587\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PIANOSPEAKER|COUNTER587\(23),
	datad => VCC,
	cin => \PIANOSPEAKER|COUNTER587[22]~77\,
	combout => \PIANOSPEAKER|COUNTER587[23]~78_combout\,
	cout => \PIANOSPEAKER|COUNTER587[23]~79\);

-- Location: LCCOMB_X16_Y4_N16
\PIANOSPEAKER|COUNTER587[24]~80\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PIANOSPEAKER|COUNTER587[24]~80_combout\ = (\PIANOSPEAKER|COUNTER587\(24) & (\PIANOSPEAKER|COUNTER587[23]~79\ $ (GND))) # (!\PIANOSPEAKER|COUNTER587\(24) & (!\PIANOSPEAKER|COUNTER587[23]~79\ & VCC))
-- \PIANOSPEAKER|COUNTER587[24]~81\ = CARRY((\PIANOSPEAKER|COUNTER587\(24) & !\PIANOSPEAKER|COUNTER587[23]~79\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PIANOSPEAKER|COUNTER587\(24),
	datad => VCC,
	cin => \PIANOSPEAKER|COUNTER587[23]~79\,
	combout => \PIANOSPEAKER|COUNTER587[24]~80_combout\,
	cout => \PIANOSPEAKER|COUNTER587[24]~81\);

-- Location: LCCOMB_X16_Y4_N18
\PIANOSPEAKER|COUNTER587[25]~82\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PIANOSPEAKER|COUNTER587[25]~82_combout\ = (\PIANOSPEAKER|COUNTER587\(25) & (!\PIANOSPEAKER|COUNTER587[24]~81\)) # (!\PIANOSPEAKER|COUNTER587\(25) & ((\PIANOSPEAKER|COUNTER587[24]~81\) # (GND)))
-- \PIANOSPEAKER|COUNTER587[25]~83\ = CARRY((!\PIANOSPEAKER|COUNTER587[24]~81\) # (!\PIANOSPEAKER|COUNTER587\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PIANOSPEAKER|COUNTER587\(25),
	datad => VCC,
	cin => \PIANOSPEAKER|COUNTER587[24]~81\,
	combout => \PIANOSPEAKER|COUNTER587[25]~82_combout\,
	cout => \PIANOSPEAKER|COUNTER587[25]~83\);

-- Location: LCCOMB_X16_Y4_N20
\PIANOSPEAKER|COUNTER587[26]~84\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PIANOSPEAKER|COUNTER587[26]~84_combout\ = (\PIANOSPEAKER|COUNTER587\(26) & (\PIANOSPEAKER|COUNTER587[25]~83\ $ (GND))) # (!\PIANOSPEAKER|COUNTER587\(26) & (!\PIANOSPEAKER|COUNTER587[25]~83\ & VCC))
-- \PIANOSPEAKER|COUNTER587[26]~85\ = CARRY((\PIANOSPEAKER|COUNTER587\(26) & !\PIANOSPEAKER|COUNTER587[25]~83\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PIANOSPEAKER|COUNTER587\(26),
	datad => VCC,
	cin => \PIANOSPEAKER|COUNTER587[25]~83\,
	combout => \PIANOSPEAKER|COUNTER587[26]~84_combout\,
	cout => \PIANOSPEAKER|COUNTER587[26]~85\);

-- Location: LCCOMB_X16_Y4_N22
\PIANOSPEAKER|COUNTER587[27]~86\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PIANOSPEAKER|COUNTER587[27]~86_combout\ = (\PIANOSPEAKER|COUNTER587\(27) & (!\PIANOSPEAKER|COUNTER587[26]~85\)) # (!\PIANOSPEAKER|COUNTER587\(27) & ((\PIANOSPEAKER|COUNTER587[26]~85\) # (GND)))
-- \PIANOSPEAKER|COUNTER587[27]~87\ = CARRY((!\PIANOSPEAKER|COUNTER587[26]~85\) # (!\PIANOSPEAKER|COUNTER587\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PIANOSPEAKER|COUNTER587\(27),
	datad => VCC,
	cin => \PIANOSPEAKER|COUNTER587[26]~85\,
	combout => \PIANOSPEAKER|COUNTER587[27]~86_combout\,
	cout => \PIANOSPEAKER|COUNTER587[27]~87\);

-- Location: LCCOMB_X16_Y4_N24
\PIANOSPEAKER|COUNTER587[28]~88\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PIANOSPEAKER|COUNTER587[28]~88_combout\ = (\PIANOSPEAKER|COUNTER587\(28) & (\PIANOSPEAKER|COUNTER587[27]~87\ $ (GND))) # (!\PIANOSPEAKER|COUNTER587\(28) & (!\PIANOSPEAKER|COUNTER587[27]~87\ & VCC))
-- \PIANOSPEAKER|COUNTER587[28]~89\ = CARRY((\PIANOSPEAKER|COUNTER587\(28) & !\PIANOSPEAKER|COUNTER587[27]~87\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PIANOSPEAKER|COUNTER587\(28),
	datad => VCC,
	cin => \PIANOSPEAKER|COUNTER587[27]~87\,
	combout => \PIANOSPEAKER|COUNTER587[28]~88_combout\,
	cout => \PIANOSPEAKER|COUNTER587[28]~89\);

-- Location: LCCOMB_X16_Y4_N26
\PIANOSPEAKER|COUNTER587[29]~90\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PIANOSPEAKER|COUNTER587[29]~90_combout\ = (\PIANOSPEAKER|COUNTER587\(29) & (!\PIANOSPEAKER|COUNTER587[28]~89\)) # (!\PIANOSPEAKER|COUNTER587\(29) & ((\PIANOSPEAKER|COUNTER587[28]~89\) # (GND)))
-- \PIANOSPEAKER|COUNTER587[29]~91\ = CARRY((!\PIANOSPEAKER|COUNTER587[28]~89\) # (!\PIANOSPEAKER|COUNTER587\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PIANOSPEAKER|COUNTER587\(29),
	datad => VCC,
	cin => \PIANOSPEAKER|COUNTER587[28]~89\,
	combout => \PIANOSPEAKER|COUNTER587[29]~90_combout\,
	cout => \PIANOSPEAKER|COUNTER587[29]~91\);

-- Location: LCCOMB_X16_Y4_N28
\PIANOSPEAKER|COUNTER587[30]~92\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PIANOSPEAKER|COUNTER587[30]~92_combout\ = (\PIANOSPEAKER|COUNTER587\(30) & (\PIANOSPEAKER|COUNTER587[29]~91\ $ (GND))) # (!\PIANOSPEAKER|COUNTER587\(30) & (!\PIANOSPEAKER|COUNTER587[29]~91\ & VCC))
-- \PIANOSPEAKER|COUNTER587[30]~93\ = CARRY((\PIANOSPEAKER|COUNTER587\(30) & !\PIANOSPEAKER|COUNTER587[29]~91\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PIANOSPEAKER|COUNTER587\(30),
	datad => VCC,
	cin => \PIANOSPEAKER|COUNTER587[29]~91\,
	combout => \PIANOSPEAKER|COUNTER587[30]~92_combout\,
	cout => \PIANOSPEAKER|COUNTER587[30]~93\);

-- Location: LCCOMB_X16_Y4_N30
\PIANOSPEAKER|COUNTER587[31]~94\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PIANOSPEAKER|COUNTER587[31]~94_combout\ = \PIANOSPEAKER|COUNTER587\(31) $ (\PIANOSPEAKER|COUNTER587[30]~93\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PIANOSPEAKER|COUNTER587\(31),
	cin => \PIANOSPEAKER|COUNTER587[30]~93\,
	combout => \PIANOSPEAKER|COUNTER587[31]~94_combout\);

-- Location: FF_X10_Y4_N7
\PIANOSPEAKER|COUNTER659[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \PIANOSPEAKER|COUNTER659[3]~38_combout\,
	sclr => \PIANOSPEAKER|LessThan4~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PIANOSPEAKER|COUNTER659\(3));

-- Location: LCCOMB_X10_Y4_N6
\PIANOSPEAKER|COUNTER659[3]~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PIANOSPEAKER|COUNTER659[3]~38_combout\ = (\PIANOSPEAKER|COUNTER659\(3) & (!\PIANOSPEAKER|COUNTER659[2]~37\)) # (!\PIANOSPEAKER|COUNTER659\(3) & ((\PIANOSPEAKER|COUNTER659[2]~37\) # (GND)))
-- \PIANOSPEAKER|COUNTER659[3]~39\ = CARRY((!\PIANOSPEAKER|COUNTER659[2]~37\) # (!\PIANOSPEAKER|COUNTER659\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PIANOSPEAKER|COUNTER659\(3),
	datad => VCC,
	cin => \PIANOSPEAKER|COUNTER659[2]~37\,
	combout => \PIANOSPEAKER|COUNTER659[3]~38_combout\,
	cout => \PIANOSPEAKER|COUNTER659[3]~39\);

-- Location: LCCOMB_X10_Y3_N12
\PIANOSPEAKER|COUNTER659[22]~76\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PIANOSPEAKER|COUNTER659[22]~76_combout\ = (\PIANOSPEAKER|COUNTER659\(22) & (\PIANOSPEAKER|COUNTER659[21]~75\ $ (GND))) # (!\PIANOSPEAKER|COUNTER659\(22) & (!\PIANOSPEAKER|COUNTER659[21]~75\ & VCC))
-- \PIANOSPEAKER|COUNTER659[22]~77\ = CARRY((\PIANOSPEAKER|COUNTER659\(22) & !\PIANOSPEAKER|COUNTER659[21]~75\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PIANOSPEAKER|COUNTER659\(22),
	datad => VCC,
	cin => \PIANOSPEAKER|COUNTER659[21]~75\,
	combout => \PIANOSPEAKER|COUNTER659[22]~76_combout\,
	cout => \PIANOSPEAKER|COUNTER659[22]~77\);

-- Location: LCCOMB_X10_Y3_N22
\PIANOSPEAKER|COUNTER659[27]~86\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PIANOSPEAKER|COUNTER659[27]~86_combout\ = (\PIANOSPEAKER|COUNTER659\(27) & (!\PIANOSPEAKER|COUNTER659[26]~85\)) # (!\PIANOSPEAKER|COUNTER659\(27) & ((\PIANOSPEAKER|COUNTER659[26]~85\) # (GND)))
-- \PIANOSPEAKER|COUNTER659[27]~87\ = CARRY((!\PIANOSPEAKER|COUNTER659[26]~85\) # (!\PIANOSPEAKER|COUNTER659\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PIANOSPEAKER|COUNTER659\(27),
	datad => VCC,
	cin => \PIANOSPEAKER|COUNTER659[26]~85\,
	combout => \PIANOSPEAKER|COUNTER659[27]~86_combout\,
	cout => \PIANOSPEAKER|COUNTER659[27]~87\);

-- Location: LCCOMB_X10_Y3_N24
\PIANOSPEAKER|COUNTER659[28]~88\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PIANOSPEAKER|COUNTER659[28]~88_combout\ = (\PIANOSPEAKER|COUNTER659\(28) & (\PIANOSPEAKER|COUNTER659[27]~87\ $ (GND))) # (!\PIANOSPEAKER|COUNTER659\(28) & (!\PIANOSPEAKER|COUNTER659[27]~87\ & VCC))
-- \PIANOSPEAKER|COUNTER659[28]~89\ = CARRY((\PIANOSPEAKER|COUNTER659\(28) & !\PIANOSPEAKER|COUNTER659[27]~87\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PIANOSPEAKER|COUNTER659\(28),
	datad => VCC,
	cin => \PIANOSPEAKER|COUNTER659[27]~87\,
	combout => \PIANOSPEAKER|COUNTER659[28]~88_combout\,
	cout => \PIANOSPEAKER|COUNTER659[28]~89\);

-- Location: LCCOMB_X10_Y3_N26
\PIANOSPEAKER|COUNTER659[29]~90\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PIANOSPEAKER|COUNTER659[29]~90_combout\ = (\PIANOSPEAKER|COUNTER659\(29) & (!\PIANOSPEAKER|COUNTER659[28]~89\)) # (!\PIANOSPEAKER|COUNTER659\(29) & ((\PIANOSPEAKER|COUNTER659[28]~89\) # (GND)))
-- \PIANOSPEAKER|COUNTER659[29]~91\ = CARRY((!\PIANOSPEAKER|COUNTER659[28]~89\) # (!\PIANOSPEAKER|COUNTER659\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PIANOSPEAKER|COUNTER659\(29),
	datad => VCC,
	cin => \PIANOSPEAKER|COUNTER659[28]~89\,
	combout => \PIANOSPEAKER|COUNTER659[29]~90_combout\,
	cout => \PIANOSPEAKER|COUNTER659[29]~91\);

-- Location: LCCOMB_X10_Y3_N28
\PIANOSPEAKER|COUNTER659[30]~92\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PIANOSPEAKER|COUNTER659[30]~92_combout\ = (\PIANOSPEAKER|COUNTER659\(30) & (\PIANOSPEAKER|COUNTER659[29]~91\ $ (GND))) # (!\PIANOSPEAKER|COUNTER659\(30) & (!\PIANOSPEAKER|COUNTER659[29]~91\ & VCC))
-- \PIANOSPEAKER|COUNTER659[30]~93\ = CARRY((\PIANOSPEAKER|COUNTER659\(30) & !\PIANOSPEAKER|COUNTER659[29]~91\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PIANOSPEAKER|COUNTER659\(30),
	datad => VCC,
	cin => \PIANOSPEAKER|COUNTER659[29]~91\,
	combout => \PIANOSPEAKER|COUNTER659[30]~92_combout\,
	cout => \PIANOSPEAKER|COUNTER659[30]~93\);

-- Location: LCCOMB_X10_Y3_N30
\PIANOSPEAKER|COUNTER659[31]~94\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PIANOSPEAKER|COUNTER659[31]~94_combout\ = \PIANOSPEAKER|COUNTER659\(31) $ (\PIANOSPEAKER|COUNTER659[30]~93\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PIANOSPEAKER|COUNTER659\(31),
	cin => \PIANOSPEAKER|COUNTER659[30]~93\,
	combout => \PIANOSPEAKER|COUNTER659[31]~94_combout\);

-- Location: LCCOMB_X10_Y2_N0
\PIANOSPEAKER|COUNTER698[0]~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PIANOSPEAKER|COUNTER698[0]~32_combout\ = \PIANOSPEAKER|COUNTER698\(0) $ (VCC)
-- \PIANOSPEAKER|COUNTER698[0]~33\ = CARRY(\PIANOSPEAKER|COUNTER698\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PIANOSPEAKER|COUNTER698\(0),
	datad => VCC,
	combout => \PIANOSPEAKER|COUNTER698[0]~32_combout\,
	cout => \PIANOSPEAKER|COUNTER698[0]~33\);

-- Location: LCCOMB_X10_Y2_N2
\PIANOSPEAKER|COUNTER698[1]~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PIANOSPEAKER|COUNTER698[1]~34_combout\ = (\PIANOSPEAKER|COUNTER698\(1) & (!\PIANOSPEAKER|COUNTER698[0]~33\)) # (!\PIANOSPEAKER|COUNTER698\(1) & ((\PIANOSPEAKER|COUNTER698[0]~33\) # (GND)))
-- \PIANOSPEAKER|COUNTER698[1]~35\ = CARRY((!\PIANOSPEAKER|COUNTER698[0]~33\) # (!\PIANOSPEAKER|COUNTER698\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PIANOSPEAKER|COUNTER698\(1),
	datad => VCC,
	cin => \PIANOSPEAKER|COUNTER698[0]~33\,
	combout => \PIANOSPEAKER|COUNTER698[1]~34_combout\,
	cout => \PIANOSPEAKER|COUNTER698[1]~35\);

-- Location: LCCOMB_X10_Y2_N4
\PIANOSPEAKER|COUNTER698[2]~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PIANOSPEAKER|COUNTER698[2]~36_combout\ = (\PIANOSPEAKER|COUNTER698\(2) & (\PIANOSPEAKER|COUNTER698[1]~35\ $ (GND))) # (!\PIANOSPEAKER|COUNTER698\(2) & (!\PIANOSPEAKER|COUNTER698[1]~35\ & VCC))
-- \PIANOSPEAKER|COUNTER698[2]~37\ = CARRY((\PIANOSPEAKER|COUNTER698\(2) & !\PIANOSPEAKER|COUNTER698[1]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PIANOSPEAKER|COUNTER698\(2),
	datad => VCC,
	cin => \PIANOSPEAKER|COUNTER698[1]~35\,
	combout => \PIANOSPEAKER|COUNTER698[2]~36_combout\,
	cout => \PIANOSPEAKER|COUNTER698[2]~37\);

-- Location: LCCOMB_X10_Y2_N6
\PIANOSPEAKER|COUNTER698[3]~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PIANOSPEAKER|COUNTER698[3]~38_combout\ = (\PIANOSPEAKER|COUNTER698\(3) & (!\PIANOSPEAKER|COUNTER698[2]~37\)) # (!\PIANOSPEAKER|COUNTER698\(3) & ((\PIANOSPEAKER|COUNTER698[2]~37\) # (GND)))
-- \PIANOSPEAKER|COUNTER698[3]~39\ = CARRY((!\PIANOSPEAKER|COUNTER698[2]~37\) # (!\PIANOSPEAKER|COUNTER698\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PIANOSPEAKER|COUNTER698\(3),
	datad => VCC,
	cin => \PIANOSPEAKER|COUNTER698[2]~37\,
	combout => \PIANOSPEAKER|COUNTER698[3]~38_combout\,
	cout => \PIANOSPEAKER|COUNTER698[3]~39\);

-- Location: LCCOMB_X10_Y2_N8
\PIANOSPEAKER|COUNTER698[4]~40\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PIANOSPEAKER|COUNTER698[4]~40_combout\ = (\PIANOSPEAKER|COUNTER698\(4) & (\PIANOSPEAKER|COUNTER698[3]~39\ $ (GND))) # (!\PIANOSPEAKER|COUNTER698\(4) & (!\PIANOSPEAKER|COUNTER698[3]~39\ & VCC))
-- \PIANOSPEAKER|COUNTER698[4]~41\ = CARRY((\PIANOSPEAKER|COUNTER698\(4) & !\PIANOSPEAKER|COUNTER698[3]~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PIANOSPEAKER|COUNTER698\(4),
	datad => VCC,
	cin => \PIANOSPEAKER|COUNTER698[3]~39\,
	combout => \PIANOSPEAKER|COUNTER698[4]~40_combout\,
	cout => \PIANOSPEAKER|COUNTER698[4]~41\);

-- Location: LCCOMB_X10_Y2_N10
\PIANOSPEAKER|COUNTER698[5]~42\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PIANOSPEAKER|COUNTER698[5]~42_combout\ = (\PIANOSPEAKER|COUNTER698\(5) & (!\PIANOSPEAKER|COUNTER698[4]~41\)) # (!\PIANOSPEAKER|COUNTER698\(5) & ((\PIANOSPEAKER|COUNTER698[4]~41\) # (GND)))
-- \PIANOSPEAKER|COUNTER698[5]~43\ = CARRY((!\PIANOSPEAKER|COUNTER698[4]~41\) # (!\PIANOSPEAKER|COUNTER698\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PIANOSPEAKER|COUNTER698\(5),
	datad => VCC,
	cin => \PIANOSPEAKER|COUNTER698[4]~41\,
	combout => \PIANOSPEAKER|COUNTER698[5]~42_combout\,
	cout => \PIANOSPEAKER|COUNTER698[5]~43\);

-- Location: LCCOMB_X10_Y2_N12
\PIANOSPEAKER|COUNTER698[6]~44\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PIANOSPEAKER|COUNTER698[6]~44_combout\ = (\PIANOSPEAKER|COUNTER698\(6) & (\PIANOSPEAKER|COUNTER698[5]~43\ $ (GND))) # (!\PIANOSPEAKER|COUNTER698\(6) & (!\PIANOSPEAKER|COUNTER698[5]~43\ & VCC))
-- \PIANOSPEAKER|COUNTER698[6]~45\ = CARRY((\PIANOSPEAKER|COUNTER698\(6) & !\PIANOSPEAKER|COUNTER698[5]~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PIANOSPEAKER|COUNTER698\(6),
	datad => VCC,
	cin => \PIANOSPEAKER|COUNTER698[5]~43\,
	combout => \PIANOSPEAKER|COUNTER698[6]~44_combout\,
	cout => \PIANOSPEAKER|COUNTER698[6]~45\);

-- Location: LCCOMB_X10_Y2_N14
\PIANOSPEAKER|COUNTER698[7]~46\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PIANOSPEAKER|COUNTER698[7]~46_combout\ = (\PIANOSPEAKER|COUNTER698\(7) & (!\PIANOSPEAKER|COUNTER698[6]~45\)) # (!\PIANOSPEAKER|COUNTER698\(7) & ((\PIANOSPEAKER|COUNTER698[6]~45\) # (GND)))
-- \PIANOSPEAKER|COUNTER698[7]~47\ = CARRY((!\PIANOSPEAKER|COUNTER698[6]~45\) # (!\PIANOSPEAKER|COUNTER698\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PIANOSPEAKER|COUNTER698\(7),
	datad => VCC,
	cin => \PIANOSPEAKER|COUNTER698[6]~45\,
	combout => \PIANOSPEAKER|COUNTER698[7]~46_combout\,
	cout => \PIANOSPEAKER|COUNTER698[7]~47\);

-- Location: LCCOMB_X10_Y2_N16
\PIANOSPEAKER|COUNTER698[8]~48\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PIANOSPEAKER|COUNTER698[8]~48_combout\ = (\PIANOSPEAKER|COUNTER698\(8) & (\PIANOSPEAKER|COUNTER698[7]~47\ $ (GND))) # (!\PIANOSPEAKER|COUNTER698\(8) & (!\PIANOSPEAKER|COUNTER698[7]~47\ & VCC))
-- \PIANOSPEAKER|COUNTER698[8]~49\ = CARRY((\PIANOSPEAKER|COUNTER698\(8) & !\PIANOSPEAKER|COUNTER698[7]~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PIANOSPEAKER|COUNTER698\(8),
	datad => VCC,
	cin => \PIANOSPEAKER|COUNTER698[7]~47\,
	combout => \PIANOSPEAKER|COUNTER698[8]~48_combout\,
	cout => \PIANOSPEAKER|COUNTER698[8]~49\);

-- Location: LCCOMB_X10_Y2_N18
\PIANOSPEAKER|COUNTER698[9]~50\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PIANOSPEAKER|COUNTER698[9]~50_combout\ = (\PIANOSPEAKER|COUNTER698\(9) & (!\PIANOSPEAKER|COUNTER698[8]~49\)) # (!\PIANOSPEAKER|COUNTER698\(9) & ((\PIANOSPEAKER|COUNTER698[8]~49\) # (GND)))
-- \PIANOSPEAKER|COUNTER698[9]~51\ = CARRY((!\PIANOSPEAKER|COUNTER698[8]~49\) # (!\PIANOSPEAKER|COUNTER698\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PIANOSPEAKER|COUNTER698\(9),
	datad => VCC,
	cin => \PIANOSPEAKER|COUNTER698[8]~49\,
	combout => \PIANOSPEAKER|COUNTER698[9]~50_combout\,
	cout => \PIANOSPEAKER|COUNTER698[9]~51\);

-- Location: LCCOMB_X10_Y2_N20
\PIANOSPEAKER|COUNTER698[10]~52\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PIANOSPEAKER|COUNTER698[10]~52_combout\ = (\PIANOSPEAKER|COUNTER698\(10) & (\PIANOSPEAKER|COUNTER698[9]~51\ $ (GND))) # (!\PIANOSPEAKER|COUNTER698\(10) & (!\PIANOSPEAKER|COUNTER698[9]~51\ & VCC))
-- \PIANOSPEAKER|COUNTER698[10]~53\ = CARRY((\PIANOSPEAKER|COUNTER698\(10) & !\PIANOSPEAKER|COUNTER698[9]~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PIANOSPEAKER|COUNTER698\(10),
	datad => VCC,
	cin => \PIANOSPEAKER|COUNTER698[9]~51\,
	combout => \PIANOSPEAKER|COUNTER698[10]~52_combout\,
	cout => \PIANOSPEAKER|COUNTER698[10]~53\);

-- Location: LCCOMB_X10_Y2_N22
\PIANOSPEAKER|COUNTER698[11]~54\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PIANOSPEAKER|COUNTER698[11]~54_combout\ = (\PIANOSPEAKER|COUNTER698\(11) & (!\PIANOSPEAKER|COUNTER698[10]~53\)) # (!\PIANOSPEAKER|COUNTER698\(11) & ((\PIANOSPEAKER|COUNTER698[10]~53\) # (GND)))
-- \PIANOSPEAKER|COUNTER698[11]~55\ = CARRY((!\PIANOSPEAKER|COUNTER698[10]~53\) # (!\PIANOSPEAKER|COUNTER698\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PIANOSPEAKER|COUNTER698\(11),
	datad => VCC,
	cin => \PIANOSPEAKER|COUNTER698[10]~53\,
	combout => \PIANOSPEAKER|COUNTER698[11]~54_combout\,
	cout => \PIANOSPEAKER|COUNTER698[11]~55\);

-- Location: LCCOMB_X10_Y2_N24
\PIANOSPEAKER|COUNTER698[12]~56\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PIANOSPEAKER|COUNTER698[12]~56_combout\ = (\PIANOSPEAKER|COUNTER698\(12) & (\PIANOSPEAKER|COUNTER698[11]~55\ $ (GND))) # (!\PIANOSPEAKER|COUNTER698\(12) & (!\PIANOSPEAKER|COUNTER698[11]~55\ & VCC))
-- \PIANOSPEAKER|COUNTER698[12]~57\ = CARRY((\PIANOSPEAKER|COUNTER698\(12) & !\PIANOSPEAKER|COUNTER698[11]~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PIANOSPEAKER|COUNTER698\(12),
	datad => VCC,
	cin => \PIANOSPEAKER|COUNTER698[11]~55\,
	combout => \PIANOSPEAKER|COUNTER698[12]~56_combout\,
	cout => \PIANOSPEAKER|COUNTER698[12]~57\);

-- Location: LCCOMB_X10_Y2_N26
\PIANOSPEAKER|COUNTER698[13]~58\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PIANOSPEAKER|COUNTER698[13]~58_combout\ = (\PIANOSPEAKER|COUNTER698\(13) & (!\PIANOSPEAKER|COUNTER698[12]~57\)) # (!\PIANOSPEAKER|COUNTER698\(13) & ((\PIANOSPEAKER|COUNTER698[12]~57\) # (GND)))
-- \PIANOSPEAKER|COUNTER698[13]~59\ = CARRY((!\PIANOSPEAKER|COUNTER698[12]~57\) # (!\PIANOSPEAKER|COUNTER698\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PIANOSPEAKER|COUNTER698\(13),
	datad => VCC,
	cin => \PIANOSPEAKER|COUNTER698[12]~57\,
	combout => \PIANOSPEAKER|COUNTER698[13]~58_combout\,
	cout => \PIANOSPEAKER|COUNTER698[13]~59\);

-- Location: LCCOMB_X10_Y2_N28
\PIANOSPEAKER|COUNTER698[14]~60\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PIANOSPEAKER|COUNTER698[14]~60_combout\ = (\PIANOSPEAKER|COUNTER698\(14) & (\PIANOSPEAKER|COUNTER698[13]~59\ $ (GND))) # (!\PIANOSPEAKER|COUNTER698\(14) & (!\PIANOSPEAKER|COUNTER698[13]~59\ & VCC))
-- \PIANOSPEAKER|COUNTER698[14]~61\ = CARRY((\PIANOSPEAKER|COUNTER698\(14) & !\PIANOSPEAKER|COUNTER698[13]~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PIANOSPEAKER|COUNTER698\(14),
	datad => VCC,
	cin => \PIANOSPEAKER|COUNTER698[13]~59\,
	combout => \PIANOSPEAKER|COUNTER698[14]~60_combout\,
	cout => \PIANOSPEAKER|COUNTER698[14]~61\);

-- Location: LCCOMB_X10_Y2_N30
\PIANOSPEAKER|COUNTER698[15]~62\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PIANOSPEAKER|COUNTER698[15]~62_combout\ = (\PIANOSPEAKER|COUNTER698\(15) & (!\PIANOSPEAKER|COUNTER698[14]~61\)) # (!\PIANOSPEAKER|COUNTER698\(15) & ((\PIANOSPEAKER|COUNTER698[14]~61\) # (GND)))
-- \PIANOSPEAKER|COUNTER698[15]~63\ = CARRY((!\PIANOSPEAKER|COUNTER698[14]~61\) # (!\PIANOSPEAKER|COUNTER698\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PIANOSPEAKER|COUNTER698\(15),
	datad => VCC,
	cin => \PIANOSPEAKER|COUNTER698[14]~61\,
	combout => \PIANOSPEAKER|COUNTER698[15]~62_combout\,
	cout => \PIANOSPEAKER|COUNTER698[15]~63\);

-- Location: LCCOMB_X10_Y1_N0
\PIANOSPEAKER|COUNTER698[16]~64\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PIANOSPEAKER|COUNTER698[16]~64_combout\ = (\PIANOSPEAKER|COUNTER698\(16) & (\PIANOSPEAKER|COUNTER698[15]~63\ $ (GND))) # (!\PIANOSPEAKER|COUNTER698\(16) & (!\PIANOSPEAKER|COUNTER698[15]~63\ & VCC))
-- \PIANOSPEAKER|COUNTER698[16]~65\ = CARRY((\PIANOSPEAKER|COUNTER698\(16) & !\PIANOSPEAKER|COUNTER698[15]~63\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PIANOSPEAKER|COUNTER698\(16),
	datad => VCC,
	cin => \PIANOSPEAKER|COUNTER698[15]~63\,
	combout => \PIANOSPEAKER|COUNTER698[16]~64_combout\,
	cout => \PIANOSPEAKER|COUNTER698[16]~65\);

-- Location: LCCOMB_X10_Y1_N2
\PIANOSPEAKER|COUNTER698[17]~66\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PIANOSPEAKER|COUNTER698[17]~66_combout\ = (\PIANOSPEAKER|COUNTER698\(17) & (!\PIANOSPEAKER|COUNTER698[16]~65\)) # (!\PIANOSPEAKER|COUNTER698\(17) & ((\PIANOSPEAKER|COUNTER698[16]~65\) # (GND)))
-- \PIANOSPEAKER|COUNTER698[17]~67\ = CARRY((!\PIANOSPEAKER|COUNTER698[16]~65\) # (!\PIANOSPEAKER|COUNTER698\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PIANOSPEAKER|COUNTER698\(17),
	datad => VCC,
	cin => \PIANOSPEAKER|COUNTER698[16]~65\,
	combout => \PIANOSPEAKER|COUNTER698[17]~66_combout\,
	cout => \PIANOSPEAKER|COUNTER698[17]~67\);

-- Location: LCCOMB_X10_Y1_N4
\PIANOSPEAKER|COUNTER698[18]~68\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PIANOSPEAKER|COUNTER698[18]~68_combout\ = (\PIANOSPEAKER|COUNTER698\(18) & (\PIANOSPEAKER|COUNTER698[17]~67\ $ (GND))) # (!\PIANOSPEAKER|COUNTER698\(18) & (!\PIANOSPEAKER|COUNTER698[17]~67\ & VCC))
-- \PIANOSPEAKER|COUNTER698[18]~69\ = CARRY((\PIANOSPEAKER|COUNTER698\(18) & !\PIANOSPEAKER|COUNTER698[17]~67\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PIANOSPEAKER|COUNTER698\(18),
	datad => VCC,
	cin => \PIANOSPEAKER|COUNTER698[17]~67\,
	combout => \PIANOSPEAKER|COUNTER698[18]~68_combout\,
	cout => \PIANOSPEAKER|COUNTER698[18]~69\);

-- Location: LCCOMB_X10_Y1_N6
\PIANOSPEAKER|COUNTER698[19]~70\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PIANOSPEAKER|COUNTER698[19]~70_combout\ = (\PIANOSPEAKER|COUNTER698\(19) & (!\PIANOSPEAKER|COUNTER698[18]~69\)) # (!\PIANOSPEAKER|COUNTER698\(19) & ((\PIANOSPEAKER|COUNTER698[18]~69\) # (GND)))
-- \PIANOSPEAKER|COUNTER698[19]~71\ = CARRY((!\PIANOSPEAKER|COUNTER698[18]~69\) # (!\PIANOSPEAKER|COUNTER698\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PIANOSPEAKER|COUNTER698\(19),
	datad => VCC,
	cin => \PIANOSPEAKER|COUNTER698[18]~69\,
	combout => \PIANOSPEAKER|COUNTER698[19]~70_combout\,
	cout => \PIANOSPEAKER|COUNTER698[19]~71\);

-- Location: LCCOMB_X10_Y1_N8
\PIANOSPEAKER|COUNTER698[20]~72\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PIANOSPEAKER|COUNTER698[20]~72_combout\ = (\PIANOSPEAKER|COUNTER698\(20) & (\PIANOSPEAKER|COUNTER698[19]~71\ $ (GND))) # (!\PIANOSPEAKER|COUNTER698\(20) & (!\PIANOSPEAKER|COUNTER698[19]~71\ & VCC))
-- \PIANOSPEAKER|COUNTER698[20]~73\ = CARRY((\PIANOSPEAKER|COUNTER698\(20) & !\PIANOSPEAKER|COUNTER698[19]~71\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PIANOSPEAKER|COUNTER698\(20),
	datad => VCC,
	cin => \PIANOSPEAKER|COUNTER698[19]~71\,
	combout => \PIANOSPEAKER|COUNTER698[20]~72_combout\,
	cout => \PIANOSPEAKER|COUNTER698[20]~73\);

-- Location: LCCOMB_X10_Y1_N10
\PIANOSPEAKER|COUNTER698[21]~74\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PIANOSPEAKER|COUNTER698[21]~74_combout\ = (\PIANOSPEAKER|COUNTER698\(21) & (!\PIANOSPEAKER|COUNTER698[20]~73\)) # (!\PIANOSPEAKER|COUNTER698\(21) & ((\PIANOSPEAKER|COUNTER698[20]~73\) # (GND)))
-- \PIANOSPEAKER|COUNTER698[21]~75\ = CARRY((!\PIANOSPEAKER|COUNTER698[20]~73\) # (!\PIANOSPEAKER|COUNTER698\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PIANOSPEAKER|COUNTER698\(21),
	datad => VCC,
	cin => \PIANOSPEAKER|COUNTER698[20]~73\,
	combout => \PIANOSPEAKER|COUNTER698[21]~74_combout\,
	cout => \PIANOSPEAKER|COUNTER698[21]~75\);

-- Location: LCCOMB_X10_Y1_N12
\PIANOSPEAKER|COUNTER698[22]~76\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PIANOSPEAKER|COUNTER698[22]~76_combout\ = (\PIANOSPEAKER|COUNTER698\(22) & (\PIANOSPEAKER|COUNTER698[21]~75\ $ (GND))) # (!\PIANOSPEAKER|COUNTER698\(22) & (!\PIANOSPEAKER|COUNTER698[21]~75\ & VCC))
-- \PIANOSPEAKER|COUNTER698[22]~77\ = CARRY((\PIANOSPEAKER|COUNTER698\(22) & !\PIANOSPEAKER|COUNTER698[21]~75\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PIANOSPEAKER|COUNTER698\(22),
	datad => VCC,
	cin => \PIANOSPEAKER|COUNTER698[21]~75\,
	combout => \PIANOSPEAKER|COUNTER698[22]~76_combout\,
	cout => \PIANOSPEAKER|COUNTER698[22]~77\);

-- Location: LCCOMB_X10_Y1_N14
\PIANOSPEAKER|COUNTER698[23]~78\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PIANOSPEAKER|COUNTER698[23]~78_combout\ = (\PIANOSPEAKER|COUNTER698\(23) & (!\PIANOSPEAKER|COUNTER698[22]~77\)) # (!\PIANOSPEAKER|COUNTER698\(23) & ((\PIANOSPEAKER|COUNTER698[22]~77\) # (GND)))
-- \PIANOSPEAKER|COUNTER698[23]~79\ = CARRY((!\PIANOSPEAKER|COUNTER698[22]~77\) # (!\PIANOSPEAKER|COUNTER698\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PIANOSPEAKER|COUNTER698\(23),
	datad => VCC,
	cin => \PIANOSPEAKER|COUNTER698[22]~77\,
	combout => \PIANOSPEAKER|COUNTER698[23]~78_combout\,
	cout => \PIANOSPEAKER|COUNTER698[23]~79\);

-- Location: LCCOMB_X10_Y1_N16
\PIANOSPEAKER|COUNTER698[24]~80\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PIANOSPEAKER|COUNTER698[24]~80_combout\ = (\PIANOSPEAKER|COUNTER698\(24) & (\PIANOSPEAKER|COUNTER698[23]~79\ $ (GND))) # (!\PIANOSPEAKER|COUNTER698\(24) & (!\PIANOSPEAKER|COUNTER698[23]~79\ & VCC))
-- \PIANOSPEAKER|COUNTER698[24]~81\ = CARRY((\PIANOSPEAKER|COUNTER698\(24) & !\PIANOSPEAKER|COUNTER698[23]~79\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PIANOSPEAKER|COUNTER698\(24),
	datad => VCC,
	cin => \PIANOSPEAKER|COUNTER698[23]~79\,
	combout => \PIANOSPEAKER|COUNTER698[24]~80_combout\,
	cout => \PIANOSPEAKER|COUNTER698[24]~81\);

-- Location: LCCOMB_X10_Y1_N18
\PIANOSPEAKER|COUNTER698[25]~82\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PIANOSPEAKER|COUNTER698[25]~82_combout\ = (\PIANOSPEAKER|COUNTER698\(25) & (!\PIANOSPEAKER|COUNTER698[24]~81\)) # (!\PIANOSPEAKER|COUNTER698\(25) & ((\PIANOSPEAKER|COUNTER698[24]~81\) # (GND)))
-- \PIANOSPEAKER|COUNTER698[25]~83\ = CARRY((!\PIANOSPEAKER|COUNTER698[24]~81\) # (!\PIANOSPEAKER|COUNTER698\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PIANOSPEAKER|COUNTER698\(25),
	datad => VCC,
	cin => \PIANOSPEAKER|COUNTER698[24]~81\,
	combout => \PIANOSPEAKER|COUNTER698[25]~82_combout\,
	cout => \PIANOSPEAKER|COUNTER698[25]~83\);

-- Location: LCCOMB_X10_Y1_N20
\PIANOSPEAKER|COUNTER698[26]~84\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PIANOSPEAKER|COUNTER698[26]~84_combout\ = (\PIANOSPEAKER|COUNTER698\(26) & (\PIANOSPEAKER|COUNTER698[25]~83\ $ (GND))) # (!\PIANOSPEAKER|COUNTER698\(26) & (!\PIANOSPEAKER|COUNTER698[25]~83\ & VCC))
-- \PIANOSPEAKER|COUNTER698[26]~85\ = CARRY((\PIANOSPEAKER|COUNTER698\(26) & !\PIANOSPEAKER|COUNTER698[25]~83\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PIANOSPEAKER|COUNTER698\(26),
	datad => VCC,
	cin => \PIANOSPEAKER|COUNTER698[25]~83\,
	combout => \PIANOSPEAKER|COUNTER698[26]~84_combout\,
	cout => \PIANOSPEAKER|COUNTER698[26]~85\);

-- Location: LCCOMB_X10_Y1_N22
\PIANOSPEAKER|COUNTER698[27]~86\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PIANOSPEAKER|COUNTER698[27]~86_combout\ = (\PIANOSPEAKER|COUNTER698\(27) & (!\PIANOSPEAKER|COUNTER698[26]~85\)) # (!\PIANOSPEAKER|COUNTER698\(27) & ((\PIANOSPEAKER|COUNTER698[26]~85\) # (GND)))
-- \PIANOSPEAKER|COUNTER698[27]~87\ = CARRY((!\PIANOSPEAKER|COUNTER698[26]~85\) # (!\PIANOSPEAKER|COUNTER698\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PIANOSPEAKER|COUNTER698\(27),
	datad => VCC,
	cin => \PIANOSPEAKER|COUNTER698[26]~85\,
	combout => \PIANOSPEAKER|COUNTER698[27]~86_combout\,
	cout => \PIANOSPEAKER|COUNTER698[27]~87\);

-- Location: LCCOMB_X10_Y1_N24
\PIANOSPEAKER|COUNTER698[28]~88\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PIANOSPEAKER|COUNTER698[28]~88_combout\ = (\PIANOSPEAKER|COUNTER698\(28) & (\PIANOSPEAKER|COUNTER698[27]~87\ $ (GND))) # (!\PIANOSPEAKER|COUNTER698\(28) & (!\PIANOSPEAKER|COUNTER698[27]~87\ & VCC))
-- \PIANOSPEAKER|COUNTER698[28]~89\ = CARRY((\PIANOSPEAKER|COUNTER698\(28) & !\PIANOSPEAKER|COUNTER698[27]~87\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PIANOSPEAKER|COUNTER698\(28),
	datad => VCC,
	cin => \PIANOSPEAKER|COUNTER698[27]~87\,
	combout => \PIANOSPEAKER|COUNTER698[28]~88_combout\,
	cout => \PIANOSPEAKER|COUNTER698[28]~89\);

-- Location: LCCOMB_X10_Y1_N26
\PIANOSPEAKER|COUNTER698[29]~90\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PIANOSPEAKER|COUNTER698[29]~90_combout\ = (\PIANOSPEAKER|COUNTER698\(29) & (!\PIANOSPEAKER|COUNTER698[28]~89\)) # (!\PIANOSPEAKER|COUNTER698\(29) & ((\PIANOSPEAKER|COUNTER698[28]~89\) # (GND)))
-- \PIANOSPEAKER|COUNTER698[29]~91\ = CARRY((!\PIANOSPEAKER|COUNTER698[28]~89\) # (!\PIANOSPEAKER|COUNTER698\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PIANOSPEAKER|COUNTER698\(29),
	datad => VCC,
	cin => \PIANOSPEAKER|COUNTER698[28]~89\,
	combout => \PIANOSPEAKER|COUNTER698[29]~90_combout\,
	cout => \PIANOSPEAKER|COUNTER698[29]~91\);

-- Location: LCCOMB_X10_Y1_N28
\PIANOSPEAKER|COUNTER698[30]~92\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PIANOSPEAKER|COUNTER698[30]~92_combout\ = (\PIANOSPEAKER|COUNTER698\(30) & (\PIANOSPEAKER|COUNTER698[29]~91\ $ (GND))) # (!\PIANOSPEAKER|COUNTER698\(30) & (!\PIANOSPEAKER|COUNTER698[29]~91\ & VCC))
-- \PIANOSPEAKER|COUNTER698[30]~93\ = CARRY((\PIANOSPEAKER|COUNTER698\(30) & !\PIANOSPEAKER|COUNTER698[29]~91\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PIANOSPEAKER|COUNTER698\(30),
	datad => VCC,
	cin => \PIANOSPEAKER|COUNTER698[29]~91\,
	combout => \PIANOSPEAKER|COUNTER698[30]~92_combout\,
	cout => \PIANOSPEAKER|COUNTER698[30]~93\);

-- Location: LCCOMB_X10_Y1_N30
\PIANOSPEAKER|COUNTER698[31]~94\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PIANOSPEAKER|COUNTER698[31]~94_combout\ = \PIANOSPEAKER|COUNTER698\(31) $ (\PIANOSPEAKER|COUNTER698[30]~93\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PIANOSPEAKER|COUNTER698\(31),
	cin => \PIANOSPEAKER|COUNTER698[30]~93\,
	combout => \PIANOSPEAKER|COUNTER698[31]~94_combout\);

-- Location: LCCOMB_X36_Y6_N0
\PIANOSPEAKER|COUNTER784[0]~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PIANOSPEAKER|COUNTER784[0]~32_combout\ = \PIANOSPEAKER|COUNTER784\(0) $ (VCC)
-- \PIANOSPEAKER|COUNTER784[0]~33\ = CARRY(\PIANOSPEAKER|COUNTER784\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PIANOSPEAKER|COUNTER784\(0),
	datad => VCC,
	combout => \PIANOSPEAKER|COUNTER784[0]~32_combout\,
	cout => \PIANOSPEAKER|COUNTER784[0]~33\);

-- Location: LCCOMB_X36_Y6_N2
\PIANOSPEAKER|COUNTER784[1]~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PIANOSPEAKER|COUNTER784[1]~34_combout\ = (\PIANOSPEAKER|COUNTER784\(1) & (!\PIANOSPEAKER|COUNTER784[0]~33\)) # (!\PIANOSPEAKER|COUNTER784\(1) & ((\PIANOSPEAKER|COUNTER784[0]~33\) # (GND)))
-- \PIANOSPEAKER|COUNTER784[1]~35\ = CARRY((!\PIANOSPEAKER|COUNTER784[0]~33\) # (!\PIANOSPEAKER|COUNTER784\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PIANOSPEAKER|COUNTER784\(1),
	datad => VCC,
	cin => \PIANOSPEAKER|COUNTER784[0]~33\,
	combout => \PIANOSPEAKER|COUNTER784[1]~34_combout\,
	cout => \PIANOSPEAKER|COUNTER784[1]~35\);

-- Location: LCCOMB_X36_Y6_N4
\PIANOSPEAKER|COUNTER784[2]~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PIANOSPEAKER|COUNTER784[2]~36_combout\ = (\PIANOSPEAKER|COUNTER784\(2) & (\PIANOSPEAKER|COUNTER784[1]~35\ $ (GND))) # (!\PIANOSPEAKER|COUNTER784\(2) & (!\PIANOSPEAKER|COUNTER784[1]~35\ & VCC))
-- \PIANOSPEAKER|COUNTER784[2]~37\ = CARRY((\PIANOSPEAKER|COUNTER784\(2) & !\PIANOSPEAKER|COUNTER784[1]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PIANOSPEAKER|COUNTER784\(2),
	datad => VCC,
	cin => \PIANOSPEAKER|COUNTER784[1]~35\,
	combout => \PIANOSPEAKER|COUNTER784[2]~36_combout\,
	cout => \PIANOSPEAKER|COUNTER784[2]~37\);

-- Location: LCCOMB_X36_Y6_N6
\PIANOSPEAKER|COUNTER784[3]~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PIANOSPEAKER|COUNTER784[3]~38_combout\ = (\PIANOSPEAKER|COUNTER784\(3) & (!\PIANOSPEAKER|COUNTER784[2]~37\)) # (!\PIANOSPEAKER|COUNTER784\(3) & ((\PIANOSPEAKER|COUNTER784[2]~37\) # (GND)))
-- \PIANOSPEAKER|COUNTER784[3]~39\ = CARRY((!\PIANOSPEAKER|COUNTER784[2]~37\) # (!\PIANOSPEAKER|COUNTER784\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PIANOSPEAKER|COUNTER784\(3),
	datad => VCC,
	cin => \PIANOSPEAKER|COUNTER784[2]~37\,
	combout => \PIANOSPEAKER|COUNTER784[3]~38_combout\,
	cout => \PIANOSPEAKER|COUNTER784[3]~39\);

-- Location: LCCOMB_X36_Y6_N8
\PIANOSPEAKER|COUNTER784[4]~40\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PIANOSPEAKER|COUNTER784[4]~40_combout\ = (\PIANOSPEAKER|COUNTER784\(4) & (\PIANOSPEAKER|COUNTER784[3]~39\ $ (GND))) # (!\PIANOSPEAKER|COUNTER784\(4) & (!\PIANOSPEAKER|COUNTER784[3]~39\ & VCC))
-- \PIANOSPEAKER|COUNTER784[4]~41\ = CARRY((\PIANOSPEAKER|COUNTER784\(4) & !\PIANOSPEAKER|COUNTER784[3]~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PIANOSPEAKER|COUNTER784\(4),
	datad => VCC,
	cin => \PIANOSPEAKER|COUNTER784[3]~39\,
	combout => \PIANOSPEAKER|COUNTER784[4]~40_combout\,
	cout => \PIANOSPEAKER|COUNTER784[4]~41\);

-- Location: LCCOMB_X36_Y6_N10
\PIANOSPEAKER|COUNTER784[5]~42\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PIANOSPEAKER|COUNTER784[5]~42_combout\ = (\PIANOSPEAKER|COUNTER784\(5) & (!\PIANOSPEAKER|COUNTER784[4]~41\)) # (!\PIANOSPEAKER|COUNTER784\(5) & ((\PIANOSPEAKER|COUNTER784[4]~41\) # (GND)))
-- \PIANOSPEAKER|COUNTER784[5]~43\ = CARRY((!\PIANOSPEAKER|COUNTER784[4]~41\) # (!\PIANOSPEAKER|COUNTER784\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PIANOSPEAKER|COUNTER784\(5),
	datad => VCC,
	cin => \PIANOSPEAKER|COUNTER784[4]~41\,
	combout => \PIANOSPEAKER|COUNTER784[5]~42_combout\,
	cout => \PIANOSPEAKER|COUNTER784[5]~43\);

-- Location: LCCOMB_X36_Y6_N12
\PIANOSPEAKER|COUNTER784[6]~44\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PIANOSPEAKER|COUNTER784[6]~44_combout\ = (\PIANOSPEAKER|COUNTER784\(6) & (\PIANOSPEAKER|COUNTER784[5]~43\ $ (GND))) # (!\PIANOSPEAKER|COUNTER784\(6) & (!\PIANOSPEAKER|COUNTER784[5]~43\ & VCC))
-- \PIANOSPEAKER|COUNTER784[6]~45\ = CARRY((\PIANOSPEAKER|COUNTER784\(6) & !\PIANOSPEAKER|COUNTER784[5]~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PIANOSPEAKER|COUNTER784\(6),
	datad => VCC,
	cin => \PIANOSPEAKER|COUNTER784[5]~43\,
	combout => \PIANOSPEAKER|COUNTER784[6]~44_combout\,
	cout => \PIANOSPEAKER|COUNTER784[6]~45\);

-- Location: LCCOMB_X36_Y6_N14
\PIANOSPEAKER|COUNTER784[7]~46\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PIANOSPEAKER|COUNTER784[7]~46_combout\ = (\PIANOSPEAKER|COUNTER784\(7) & (!\PIANOSPEAKER|COUNTER784[6]~45\)) # (!\PIANOSPEAKER|COUNTER784\(7) & ((\PIANOSPEAKER|COUNTER784[6]~45\) # (GND)))
-- \PIANOSPEAKER|COUNTER784[7]~47\ = CARRY((!\PIANOSPEAKER|COUNTER784[6]~45\) # (!\PIANOSPEAKER|COUNTER784\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PIANOSPEAKER|COUNTER784\(7),
	datad => VCC,
	cin => \PIANOSPEAKER|COUNTER784[6]~45\,
	combout => \PIANOSPEAKER|COUNTER784[7]~46_combout\,
	cout => \PIANOSPEAKER|COUNTER784[7]~47\);

-- Location: LCCOMB_X36_Y6_N16
\PIANOSPEAKER|COUNTER784[8]~48\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PIANOSPEAKER|COUNTER784[8]~48_combout\ = (\PIANOSPEAKER|COUNTER784\(8) & (\PIANOSPEAKER|COUNTER784[7]~47\ $ (GND))) # (!\PIANOSPEAKER|COUNTER784\(8) & (!\PIANOSPEAKER|COUNTER784[7]~47\ & VCC))
-- \PIANOSPEAKER|COUNTER784[8]~49\ = CARRY((\PIANOSPEAKER|COUNTER784\(8) & !\PIANOSPEAKER|COUNTER784[7]~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PIANOSPEAKER|COUNTER784\(8),
	datad => VCC,
	cin => \PIANOSPEAKER|COUNTER784[7]~47\,
	combout => \PIANOSPEAKER|COUNTER784[8]~48_combout\,
	cout => \PIANOSPEAKER|COUNTER784[8]~49\);

-- Location: LCCOMB_X36_Y6_N18
\PIANOSPEAKER|COUNTER784[9]~50\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PIANOSPEAKER|COUNTER784[9]~50_combout\ = (\PIANOSPEAKER|COUNTER784\(9) & (!\PIANOSPEAKER|COUNTER784[8]~49\)) # (!\PIANOSPEAKER|COUNTER784\(9) & ((\PIANOSPEAKER|COUNTER784[8]~49\) # (GND)))
-- \PIANOSPEAKER|COUNTER784[9]~51\ = CARRY((!\PIANOSPEAKER|COUNTER784[8]~49\) # (!\PIANOSPEAKER|COUNTER784\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PIANOSPEAKER|COUNTER784\(9),
	datad => VCC,
	cin => \PIANOSPEAKER|COUNTER784[8]~49\,
	combout => \PIANOSPEAKER|COUNTER784[9]~50_combout\,
	cout => \PIANOSPEAKER|COUNTER784[9]~51\);

-- Location: LCCOMB_X36_Y6_N20
\PIANOSPEAKER|COUNTER784[10]~52\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PIANOSPEAKER|COUNTER784[10]~52_combout\ = (\PIANOSPEAKER|COUNTER784\(10) & (\PIANOSPEAKER|COUNTER784[9]~51\ $ (GND))) # (!\PIANOSPEAKER|COUNTER784\(10) & (!\PIANOSPEAKER|COUNTER784[9]~51\ & VCC))
-- \PIANOSPEAKER|COUNTER784[10]~53\ = CARRY((\PIANOSPEAKER|COUNTER784\(10) & !\PIANOSPEAKER|COUNTER784[9]~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PIANOSPEAKER|COUNTER784\(10),
	datad => VCC,
	cin => \PIANOSPEAKER|COUNTER784[9]~51\,
	combout => \PIANOSPEAKER|COUNTER784[10]~52_combout\,
	cout => \PIANOSPEAKER|COUNTER784[10]~53\);

-- Location: LCCOMB_X36_Y6_N22
\PIANOSPEAKER|COUNTER784[11]~54\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PIANOSPEAKER|COUNTER784[11]~54_combout\ = (\PIANOSPEAKER|COUNTER784\(11) & (!\PIANOSPEAKER|COUNTER784[10]~53\)) # (!\PIANOSPEAKER|COUNTER784\(11) & ((\PIANOSPEAKER|COUNTER784[10]~53\) # (GND)))
-- \PIANOSPEAKER|COUNTER784[11]~55\ = CARRY((!\PIANOSPEAKER|COUNTER784[10]~53\) # (!\PIANOSPEAKER|COUNTER784\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PIANOSPEAKER|COUNTER784\(11),
	datad => VCC,
	cin => \PIANOSPEAKER|COUNTER784[10]~53\,
	combout => \PIANOSPEAKER|COUNTER784[11]~54_combout\,
	cout => \PIANOSPEAKER|COUNTER784[11]~55\);

-- Location: LCCOMB_X36_Y6_N24
\PIANOSPEAKER|COUNTER784[12]~56\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PIANOSPEAKER|COUNTER784[12]~56_combout\ = (\PIANOSPEAKER|COUNTER784\(12) & (\PIANOSPEAKER|COUNTER784[11]~55\ $ (GND))) # (!\PIANOSPEAKER|COUNTER784\(12) & (!\PIANOSPEAKER|COUNTER784[11]~55\ & VCC))
-- \PIANOSPEAKER|COUNTER784[12]~57\ = CARRY((\PIANOSPEAKER|COUNTER784\(12) & !\PIANOSPEAKER|COUNTER784[11]~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PIANOSPEAKER|COUNTER784\(12),
	datad => VCC,
	cin => \PIANOSPEAKER|COUNTER784[11]~55\,
	combout => \PIANOSPEAKER|COUNTER784[12]~56_combout\,
	cout => \PIANOSPEAKER|COUNTER784[12]~57\);

-- Location: LCCOMB_X36_Y6_N26
\PIANOSPEAKER|COUNTER784[13]~58\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PIANOSPEAKER|COUNTER784[13]~58_combout\ = (\PIANOSPEAKER|COUNTER784\(13) & (!\PIANOSPEAKER|COUNTER784[12]~57\)) # (!\PIANOSPEAKER|COUNTER784\(13) & ((\PIANOSPEAKER|COUNTER784[12]~57\) # (GND)))
-- \PIANOSPEAKER|COUNTER784[13]~59\ = CARRY((!\PIANOSPEAKER|COUNTER784[12]~57\) # (!\PIANOSPEAKER|COUNTER784\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PIANOSPEAKER|COUNTER784\(13),
	datad => VCC,
	cin => \PIANOSPEAKER|COUNTER784[12]~57\,
	combout => \PIANOSPEAKER|COUNTER784[13]~58_combout\,
	cout => \PIANOSPEAKER|COUNTER784[13]~59\);

-- Location: LCCOMB_X36_Y6_N28
\PIANOSPEAKER|COUNTER784[14]~60\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PIANOSPEAKER|COUNTER784[14]~60_combout\ = (\PIANOSPEAKER|COUNTER784\(14) & (\PIANOSPEAKER|COUNTER784[13]~59\ $ (GND))) # (!\PIANOSPEAKER|COUNTER784\(14) & (!\PIANOSPEAKER|COUNTER784[13]~59\ & VCC))
-- \PIANOSPEAKER|COUNTER784[14]~61\ = CARRY((\PIANOSPEAKER|COUNTER784\(14) & !\PIANOSPEAKER|COUNTER784[13]~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PIANOSPEAKER|COUNTER784\(14),
	datad => VCC,
	cin => \PIANOSPEAKER|COUNTER784[13]~59\,
	combout => \PIANOSPEAKER|COUNTER784[14]~60_combout\,
	cout => \PIANOSPEAKER|COUNTER784[14]~61\);

-- Location: LCCOMB_X36_Y6_N30
\PIANOSPEAKER|COUNTER784[15]~62\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PIANOSPEAKER|COUNTER784[15]~62_combout\ = (\PIANOSPEAKER|COUNTER784\(15) & (!\PIANOSPEAKER|COUNTER784[14]~61\)) # (!\PIANOSPEAKER|COUNTER784\(15) & ((\PIANOSPEAKER|COUNTER784[14]~61\) # (GND)))
-- \PIANOSPEAKER|COUNTER784[15]~63\ = CARRY((!\PIANOSPEAKER|COUNTER784[14]~61\) # (!\PIANOSPEAKER|COUNTER784\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PIANOSPEAKER|COUNTER784\(15),
	datad => VCC,
	cin => \PIANOSPEAKER|COUNTER784[14]~61\,
	combout => \PIANOSPEAKER|COUNTER784[15]~62_combout\,
	cout => \PIANOSPEAKER|COUNTER784[15]~63\);

-- Location: LCCOMB_X36_Y5_N0
\PIANOSPEAKER|COUNTER784[16]~64\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PIANOSPEAKER|COUNTER784[16]~64_combout\ = (\PIANOSPEAKER|COUNTER784\(16) & (\PIANOSPEAKER|COUNTER784[15]~63\ $ (GND))) # (!\PIANOSPEAKER|COUNTER784\(16) & (!\PIANOSPEAKER|COUNTER784[15]~63\ & VCC))
-- \PIANOSPEAKER|COUNTER784[16]~65\ = CARRY((\PIANOSPEAKER|COUNTER784\(16) & !\PIANOSPEAKER|COUNTER784[15]~63\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PIANOSPEAKER|COUNTER784\(16),
	datad => VCC,
	cin => \PIANOSPEAKER|COUNTER784[15]~63\,
	combout => \PIANOSPEAKER|COUNTER784[16]~64_combout\,
	cout => \PIANOSPEAKER|COUNTER784[16]~65\);

-- Location: LCCOMB_X36_Y5_N2
\PIANOSPEAKER|COUNTER784[17]~66\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PIANOSPEAKER|COUNTER784[17]~66_combout\ = (\PIANOSPEAKER|COUNTER784\(17) & (!\PIANOSPEAKER|COUNTER784[16]~65\)) # (!\PIANOSPEAKER|COUNTER784\(17) & ((\PIANOSPEAKER|COUNTER784[16]~65\) # (GND)))
-- \PIANOSPEAKER|COUNTER784[17]~67\ = CARRY((!\PIANOSPEAKER|COUNTER784[16]~65\) # (!\PIANOSPEAKER|COUNTER784\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PIANOSPEAKER|COUNTER784\(17),
	datad => VCC,
	cin => \PIANOSPEAKER|COUNTER784[16]~65\,
	combout => \PIANOSPEAKER|COUNTER784[17]~66_combout\,
	cout => \PIANOSPEAKER|COUNTER784[17]~67\);

-- Location: LCCOMB_X36_Y5_N4
\PIANOSPEAKER|COUNTER784[18]~68\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PIANOSPEAKER|COUNTER784[18]~68_combout\ = (\PIANOSPEAKER|COUNTER784\(18) & (\PIANOSPEAKER|COUNTER784[17]~67\ $ (GND))) # (!\PIANOSPEAKER|COUNTER784\(18) & (!\PIANOSPEAKER|COUNTER784[17]~67\ & VCC))
-- \PIANOSPEAKER|COUNTER784[18]~69\ = CARRY((\PIANOSPEAKER|COUNTER784\(18) & !\PIANOSPEAKER|COUNTER784[17]~67\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PIANOSPEAKER|COUNTER784\(18),
	datad => VCC,
	cin => \PIANOSPEAKER|COUNTER784[17]~67\,
	combout => \PIANOSPEAKER|COUNTER784[18]~68_combout\,
	cout => \PIANOSPEAKER|COUNTER784[18]~69\);

-- Location: LCCOMB_X36_Y5_N6
\PIANOSPEAKER|COUNTER784[19]~70\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PIANOSPEAKER|COUNTER784[19]~70_combout\ = (\PIANOSPEAKER|COUNTER784\(19) & (!\PIANOSPEAKER|COUNTER784[18]~69\)) # (!\PIANOSPEAKER|COUNTER784\(19) & ((\PIANOSPEAKER|COUNTER784[18]~69\) # (GND)))
-- \PIANOSPEAKER|COUNTER784[19]~71\ = CARRY((!\PIANOSPEAKER|COUNTER784[18]~69\) # (!\PIANOSPEAKER|COUNTER784\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PIANOSPEAKER|COUNTER784\(19),
	datad => VCC,
	cin => \PIANOSPEAKER|COUNTER784[18]~69\,
	combout => \PIANOSPEAKER|COUNTER784[19]~70_combout\,
	cout => \PIANOSPEAKER|COUNTER784[19]~71\);

-- Location: LCCOMB_X36_Y5_N8
\PIANOSPEAKER|COUNTER784[20]~72\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PIANOSPEAKER|COUNTER784[20]~72_combout\ = (\PIANOSPEAKER|COUNTER784\(20) & (\PIANOSPEAKER|COUNTER784[19]~71\ $ (GND))) # (!\PIANOSPEAKER|COUNTER784\(20) & (!\PIANOSPEAKER|COUNTER784[19]~71\ & VCC))
-- \PIANOSPEAKER|COUNTER784[20]~73\ = CARRY((\PIANOSPEAKER|COUNTER784\(20) & !\PIANOSPEAKER|COUNTER784[19]~71\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PIANOSPEAKER|COUNTER784\(20),
	datad => VCC,
	cin => \PIANOSPEAKER|COUNTER784[19]~71\,
	combout => \PIANOSPEAKER|COUNTER784[20]~72_combout\,
	cout => \PIANOSPEAKER|COUNTER784[20]~73\);

-- Location: LCCOMB_X36_Y5_N10
\PIANOSPEAKER|COUNTER784[21]~74\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PIANOSPEAKER|COUNTER784[21]~74_combout\ = (\PIANOSPEAKER|COUNTER784\(21) & (!\PIANOSPEAKER|COUNTER784[20]~73\)) # (!\PIANOSPEAKER|COUNTER784\(21) & ((\PIANOSPEAKER|COUNTER784[20]~73\) # (GND)))
-- \PIANOSPEAKER|COUNTER784[21]~75\ = CARRY((!\PIANOSPEAKER|COUNTER784[20]~73\) # (!\PIANOSPEAKER|COUNTER784\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PIANOSPEAKER|COUNTER784\(21),
	datad => VCC,
	cin => \PIANOSPEAKER|COUNTER784[20]~73\,
	combout => \PIANOSPEAKER|COUNTER784[21]~74_combout\,
	cout => \PIANOSPEAKER|COUNTER784[21]~75\);

-- Location: LCCOMB_X36_Y5_N12
\PIANOSPEAKER|COUNTER784[22]~76\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PIANOSPEAKER|COUNTER784[22]~76_combout\ = (\PIANOSPEAKER|COUNTER784\(22) & (\PIANOSPEAKER|COUNTER784[21]~75\ $ (GND))) # (!\PIANOSPEAKER|COUNTER784\(22) & (!\PIANOSPEAKER|COUNTER784[21]~75\ & VCC))
-- \PIANOSPEAKER|COUNTER784[22]~77\ = CARRY((\PIANOSPEAKER|COUNTER784\(22) & !\PIANOSPEAKER|COUNTER784[21]~75\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PIANOSPEAKER|COUNTER784\(22),
	datad => VCC,
	cin => \PIANOSPEAKER|COUNTER784[21]~75\,
	combout => \PIANOSPEAKER|COUNTER784[22]~76_combout\,
	cout => \PIANOSPEAKER|COUNTER784[22]~77\);

-- Location: LCCOMB_X36_Y5_N14
\PIANOSPEAKER|COUNTER784[23]~78\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PIANOSPEAKER|COUNTER784[23]~78_combout\ = (\PIANOSPEAKER|COUNTER784\(23) & (!\PIANOSPEAKER|COUNTER784[22]~77\)) # (!\PIANOSPEAKER|COUNTER784\(23) & ((\PIANOSPEAKER|COUNTER784[22]~77\) # (GND)))
-- \PIANOSPEAKER|COUNTER784[23]~79\ = CARRY((!\PIANOSPEAKER|COUNTER784[22]~77\) # (!\PIANOSPEAKER|COUNTER784\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PIANOSPEAKER|COUNTER784\(23),
	datad => VCC,
	cin => \PIANOSPEAKER|COUNTER784[22]~77\,
	combout => \PIANOSPEAKER|COUNTER784[23]~78_combout\,
	cout => \PIANOSPEAKER|COUNTER784[23]~79\);

-- Location: LCCOMB_X36_Y5_N16
\PIANOSPEAKER|COUNTER784[24]~80\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PIANOSPEAKER|COUNTER784[24]~80_combout\ = (\PIANOSPEAKER|COUNTER784\(24) & (\PIANOSPEAKER|COUNTER784[23]~79\ $ (GND))) # (!\PIANOSPEAKER|COUNTER784\(24) & (!\PIANOSPEAKER|COUNTER784[23]~79\ & VCC))
-- \PIANOSPEAKER|COUNTER784[24]~81\ = CARRY((\PIANOSPEAKER|COUNTER784\(24) & !\PIANOSPEAKER|COUNTER784[23]~79\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PIANOSPEAKER|COUNTER784\(24),
	datad => VCC,
	cin => \PIANOSPEAKER|COUNTER784[23]~79\,
	combout => \PIANOSPEAKER|COUNTER784[24]~80_combout\,
	cout => \PIANOSPEAKER|COUNTER784[24]~81\);

-- Location: LCCOMB_X36_Y5_N18
\PIANOSPEAKER|COUNTER784[25]~82\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PIANOSPEAKER|COUNTER784[25]~82_combout\ = (\PIANOSPEAKER|COUNTER784\(25) & (!\PIANOSPEAKER|COUNTER784[24]~81\)) # (!\PIANOSPEAKER|COUNTER784\(25) & ((\PIANOSPEAKER|COUNTER784[24]~81\) # (GND)))
-- \PIANOSPEAKER|COUNTER784[25]~83\ = CARRY((!\PIANOSPEAKER|COUNTER784[24]~81\) # (!\PIANOSPEAKER|COUNTER784\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PIANOSPEAKER|COUNTER784\(25),
	datad => VCC,
	cin => \PIANOSPEAKER|COUNTER784[24]~81\,
	combout => \PIANOSPEAKER|COUNTER784[25]~82_combout\,
	cout => \PIANOSPEAKER|COUNTER784[25]~83\);

-- Location: LCCOMB_X36_Y5_N20
\PIANOSPEAKER|COUNTER784[26]~84\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PIANOSPEAKER|COUNTER784[26]~84_combout\ = (\PIANOSPEAKER|COUNTER784\(26) & (\PIANOSPEAKER|COUNTER784[25]~83\ $ (GND))) # (!\PIANOSPEAKER|COUNTER784\(26) & (!\PIANOSPEAKER|COUNTER784[25]~83\ & VCC))
-- \PIANOSPEAKER|COUNTER784[26]~85\ = CARRY((\PIANOSPEAKER|COUNTER784\(26) & !\PIANOSPEAKER|COUNTER784[25]~83\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PIANOSPEAKER|COUNTER784\(26),
	datad => VCC,
	cin => \PIANOSPEAKER|COUNTER784[25]~83\,
	combout => \PIANOSPEAKER|COUNTER784[26]~84_combout\,
	cout => \PIANOSPEAKER|COUNTER784[26]~85\);

-- Location: LCCOMB_X36_Y5_N22
\PIANOSPEAKER|COUNTER784[27]~86\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PIANOSPEAKER|COUNTER784[27]~86_combout\ = (\PIANOSPEAKER|COUNTER784\(27) & (!\PIANOSPEAKER|COUNTER784[26]~85\)) # (!\PIANOSPEAKER|COUNTER784\(27) & ((\PIANOSPEAKER|COUNTER784[26]~85\) # (GND)))
-- \PIANOSPEAKER|COUNTER784[27]~87\ = CARRY((!\PIANOSPEAKER|COUNTER784[26]~85\) # (!\PIANOSPEAKER|COUNTER784\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PIANOSPEAKER|COUNTER784\(27),
	datad => VCC,
	cin => \PIANOSPEAKER|COUNTER784[26]~85\,
	combout => \PIANOSPEAKER|COUNTER784[27]~86_combout\,
	cout => \PIANOSPEAKER|COUNTER784[27]~87\);

-- Location: LCCOMB_X36_Y5_N24
\PIANOSPEAKER|COUNTER784[28]~88\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PIANOSPEAKER|COUNTER784[28]~88_combout\ = (\PIANOSPEAKER|COUNTER784\(28) & (\PIANOSPEAKER|COUNTER784[27]~87\ $ (GND))) # (!\PIANOSPEAKER|COUNTER784\(28) & (!\PIANOSPEAKER|COUNTER784[27]~87\ & VCC))
-- \PIANOSPEAKER|COUNTER784[28]~89\ = CARRY((\PIANOSPEAKER|COUNTER784\(28) & !\PIANOSPEAKER|COUNTER784[27]~87\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PIANOSPEAKER|COUNTER784\(28),
	datad => VCC,
	cin => \PIANOSPEAKER|COUNTER784[27]~87\,
	combout => \PIANOSPEAKER|COUNTER784[28]~88_combout\,
	cout => \PIANOSPEAKER|COUNTER784[28]~89\);

-- Location: LCCOMB_X36_Y5_N26
\PIANOSPEAKER|COUNTER784[29]~90\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PIANOSPEAKER|COUNTER784[29]~90_combout\ = (\PIANOSPEAKER|COUNTER784\(29) & (!\PIANOSPEAKER|COUNTER784[28]~89\)) # (!\PIANOSPEAKER|COUNTER784\(29) & ((\PIANOSPEAKER|COUNTER784[28]~89\) # (GND)))
-- \PIANOSPEAKER|COUNTER784[29]~91\ = CARRY((!\PIANOSPEAKER|COUNTER784[28]~89\) # (!\PIANOSPEAKER|COUNTER784\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PIANOSPEAKER|COUNTER784\(29),
	datad => VCC,
	cin => \PIANOSPEAKER|COUNTER784[28]~89\,
	combout => \PIANOSPEAKER|COUNTER784[29]~90_combout\,
	cout => \PIANOSPEAKER|COUNTER784[29]~91\);

-- Location: LCCOMB_X36_Y5_N28
\PIANOSPEAKER|COUNTER784[30]~92\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PIANOSPEAKER|COUNTER784[30]~92_combout\ = (\PIANOSPEAKER|COUNTER784\(30) & (\PIANOSPEAKER|COUNTER784[29]~91\ $ (GND))) # (!\PIANOSPEAKER|COUNTER784\(30) & (!\PIANOSPEAKER|COUNTER784[29]~91\ & VCC))
-- \PIANOSPEAKER|COUNTER784[30]~93\ = CARRY((\PIANOSPEAKER|COUNTER784\(30) & !\PIANOSPEAKER|COUNTER784[29]~91\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PIANOSPEAKER|COUNTER784\(30),
	datad => VCC,
	cin => \PIANOSPEAKER|COUNTER784[29]~91\,
	combout => \PIANOSPEAKER|COUNTER784[30]~92_combout\,
	cout => \PIANOSPEAKER|COUNTER784[30]~93\);

-- Location: LCCOMB_X36_Y5_N30
\PIANOSPEAKER|COUNTER784[31]~94\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PIANOSPEAKER|COUNTER784[31]~94_combout\ = \PIANOSPEAKER|COUNTER784\(31) $ (\PIANOSPEAKER|COUNTER784[30]~93\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PIANOSPEAKER|COUNTER784\(31),
	cin => \PIANOSPEAKER|COUNTER784[30]~93\,
	combout => \PIANOSPEAKER|COUNTER784[31]~94_combout\);

-- Location: LCCOMB_X31_Y13_N6
\PIANOSPEAKER|COUNTER800[3]~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PIANOSPEAKER|COUNTER800[3]~38_combout\ = (\PIANOSPEAKER|COUNTER800\(3) & (!\PIANOSPEAKER|COUNTER800[2]~37\)) # (!\PIANOSPEAKER|COUNTER800\(3) & ((\PIANOSPEAKER|COUNTER800[2]~37\) # (GND)))
-- \PIANOSPEAKER|COUNTER800[3]~39\ = CARRY((!\PIANOSPEAKER|COUNTER800[2]~37\) # (!\PIANOSPEAKER|COUNTER800\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PIANOSPEAKER|COUNTER800\(3),
	datad => VCC,
	cin => \PIANOSPEAKER|COUNTER800[2]~37\,
	combout => \PIANOSPEAKER|COUNTER800[3]~38_combout\,
	cout => \PIANOSPEAKER|COUNTER800[3]~39\);

-- Location: LCCOMB_X31_Y13_N10
\PIANOSPEAKER|COUNTER800[5]~42\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PIANOSPEAKER|COUNTER800[5]~42_combout\ = (\PIANOSPEAKER|COUNTER800\(5) & (!\PIANOSPEAKER|COUNTER800[4]~41\)) # (!\PIANOSPEAKER|COUNTER800\(5) & ((\PIANOSPEAKER|COUNTER800[4]~41\) # (GND)))
-- \PIANOSPEAKER|COUNTER800[5]~43\ = CARRY((!\PIANOSPEAKER|COUNTER800[4]~41\) # (!\PIANOSPEAKER|COUNTER800\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PIANOSPEAKER|COUNTER800\(5),
	datad => VCC,
	cin => \PIANOSPEAKER|COUNTER800[4]~41\,
	combout => \PIANOSPEAKER|COUNTER800[5]~42_combout\,
	cout => \PIANOSPEAKER|COUNTER800[5]~43\);

-- Location: LCCOMB_X31_Y13_N12
\PIANOSPEAKER|COUNTER800[6]~44\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PIANOSPEAKER|COUNTER800[6]~44_combout\ = (\PIANOSPEAKER|COUNTER800\(6) & (\PIANOSPEAKER|COUNTER800[5]~43\ $ (GND))) # (!\PIANOSPEAKER|COUNTER800\(6) & (!\PIANOSPEAKER|COUNTER800[5]~43\ & VCC))
-- \PIANOSPEAKER|COUNTER800[6]~45\ = CARRY((\PIANOSPEAKER|COUNTER800\(6) & !\PIANOSPEAKER|COUNTER800[5]~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PIANOSPEAKER|COUNTER800\(6),
	datad => VCC,
	cin => \PIANOSPEAKER|COUNTER800[5]~43\,
	combout => \PIANOSPEAKER|COUNTER800[6]~44_combout\,
	cout => \PIANOSPEAKER|COUNTER800[6]~45\);

-- Location: LCCOMB_X31_Y13_N22
\PIANOSPEAKER|COUNTER800[11]~54\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PIANOSPEAKER|COUNTER800[11]~54_combout\ = (\PIANOSPEAKER|COUNTER800\(11) & (!\PIANOSPEAKER|COUNTER800[10]~53\)) # (!\PIANOSPEAKER|COUNTER800\(11) & ((\PIANOSPEAKER|COUNTER800[10]~53\) # (GND)))
-- \PIANOSPEAKER|COUNTER800[11]~55\ = CARRY((!\PIANOSPEAKER|COUNTER800[10]~53\) # (!\PIANOSPEAKER|COUNTER800\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PIANOSPEAKER|COUNTER800\(11),
	datad => VCC,
	cin => \PIANOSPEAKER|COUNTER800[10]~53\,
	combout => \PIANOSPEAKER|COUNTER800[11]~54_combout\,
	cout => \PIANOSPEAKER|COUNTER800[11]~55\);

-- Location: LCCOMB_X31_Y13_N30
\PIANOSPEAKER|COUNTER800[15]~62\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PIANOSPEAKER|COUNTER800[15]~62_combout\ = (\PIANOSPEAKER|COUNTER800\(15) & (!\PIANOSPEAKER|COUNTER800[14]~61\)) # (!\PIANOSPEAKER|COUNTER800\(15) & ((\PIANOSPEAKER|COUNTER800[14]~61\) # (GND)))
-- \PIANOSPEAKER|COUNTER800[15]~63\ = CARRY((!\PIANOSPEAKER|COUNTER800[14]~61\) # (!\PIANOSPEAKER|COUNTER800\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PIANOSPEAKER|COUNTER800\(15),
	datad => VCC,
	cin => \PIANOSPEAKER|COUNTER800[14]~61\,
	combout => \PIANOSPEAKER|COUNTER800[15]~62_combout\,
	cout => \PIANOSPEAKER|COUNTER800[15]~63\);

-- Location: LCCOMB_X31_Y12_N10
\PIANOSPEAKER|COUNTER800[21]~74\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PIANOSPEAKER|COUNTER800[21]~74_combout\ = (\PIANOSPEAKER|COUNTER800\(21) & (!\PIANOSPEAKER|COUNTER800[20]~73\)) # (!\PIANOSPEAKER|COUNTER800\(21) & ((\PIANOSPEAKER|COUNTER800[20]~73\) # (GND)))
-- \PIANOSPEAKER|COUNTER800[21]~75\ = CARRY((!\PIANOSPEAKER|COUNTER800[20]~73\) # (!\PIANOSPEAKER|COUNTER800\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PIANOSPEAKER|COUNTER800\(21),
	datad => VCC,
	cin => \PIANOSPEAKER|COUNTER800[20]~73\,
	combout => \PIANOSPEAKER|COUNTER800[21]~74_combout\,
	cout => \PIANOSPEAKER|COUNTER800[21]~75\);

-- Location: LCCOMB_X31_Y12_N12
\PIANOSPEAKER|COUNTER800[22]~76\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PIANOSPEAKER|COUNTER800[22]~76_combout\ = (\PIANOSPEAKER|COUNTER800\(22) & (\PIANOSPEAKER|COUNTER800[21]~75\ $ (GND))) # (!\PIANOSPEAKER|COUNTER800\(22) & (!\PIANOSPEAKER|COUNTER800[21]~75\ & VCC))
-- \PIANOSPEAKER|COUNTER800[22]~77\ = CARRY((\PIANOSPEAKER|COUNTER800\(22) & !\PIANOSPEAKER|COUNTER800[21]~75\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PIANOSPEAKER|COUNTER800\(22),
	datad => VCC,
	cin => \PIANOSPEAKER|COUNTER800[21]~75\,
	combout => \PIANOSPEAKER|COUNTER800[22]~76_combout\,
	cout => \PIANOSPEAKER|COUNTER800[22]~77\);

-- Location: FF_X36_Y9_N1
\PIANOSPEAKER|COUNTER523[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \PIANOSPEAKER|COUNTER523[0]~32_combout\,
	sclr => \PIANOSPEAKER|LessThan2~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PIANOSPEAKER|COUNTER523\(0));

-- Location: LCCOMB_X36_Y9_N0
\PIANOSPEAKER|COUNTER523[0]~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PIANOSPEAKER|COUNTER523[0]~32_combout\ = \PIANOSPEAKER|COUNTER523\(0) $ (VCC)
-- \PIANOSPEAKER|COUNTER523[0]~33\ = CARRY(\PIANOSPEAKER|COUNTER523\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PIANOSPEAKER|COUNTER523\(0),
	datad => VCC,
	combout => \PIANOSPEAKER|COUNTER523[0]~32_combout\,
	cout => \PIANOSPEAKER|COUNTER523[0]~33\);

-- Location: LCCOMB_X36_Y9_N2
\PIANOSPEAKER|COUNTER523[1]~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PIANOSPEAKER|COUNTER523[1]~34_combout\ = (\PIANOSPEAKER|COUNTER523\(1) & (!\PIANOSPEAKER|COUNTER523[0]~33\)) # (!\PIANOSPEAKER|COUNTER523\(1) & ((\PIANOSPEAKER|COUNTER523[0]~33\) # (GND)))
-- \PIANOSPEAKER|COUNTER523[1]~35\ = CARRY((!\PIANOSPEAKER|COUNTER523[0]~33\) # (!\PIANOSPEAKER|COUNTER523\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PIANOSPEAKER|COUNTER523\(1),
	datad => VCC,
	cin => \PIANOSPEAKER|COUNTER523[0]~33\,
	combout => \PIANOSPEAKER|COUNTER523[1]~34_combout\,
	cout => \PIANOSPEAKER|COUNTER523[1]~35\);

-- Location: LCCOMB_X36_Y9_N4
\PIANOSPEAKER|COUNTER523[2]~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PIANOSPEAKER|COUNTER523[2]~36_combout\ = (\PIANOSPEAKER|COUNTER523\(2) & (\PIANOSPEAKER|COUNTER523[1]~35\ $ (GND))) # (!\PIANOSPEAKER|COUNTER523\(2) & (!\PIANOSPEAKER|COUNTER523[1]~35\ & VCC))
-- \PIANOSPEAKER|COUNTER523[2]~37\ = CARRY((\PIANOSPEAKER|COUNTER523\(2) & !\PIANOSPEAKER|COUNTER523[1]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PIANOSPEAKER|COUNTER523\(2),
	datad => VCC,
	cin => \PIANOSPEAKER|COUNTER523[1]~35\,
	combout => \PIANOSPEAKER|COUNTER523[2]~36_combout\,
	cout => \PIANOSPEAKER|COUNTER523[2]~37\);

-- Location: LCCOMB_X36_Y9_N6
\PIANOSPEAKER|COUNTER523[3]~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PIANOSPEAKER|COUNTER523[3]~38_combout\ = (\PIANOSPEAKER|COUNTER523\(3) & (!\PIANOSPEAKER|COUNTER523[2]~37\)) # (!\PIANOSPEAKER|COUNTER523\(3) & ((\PIANOSPEAKER|COUNTER523[2]~37\) # (GND)))
-- \PIANOSPEAKER|COUNTER523[3]~39\ = CARRY((!\PIANOSPEAKER|COUNTER523[2]~37\) # (!\PIANOSPEAKER|COUNTER523\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PIANOSPEAKER|COUNTER523\(3),
	datad => VCC,
	cin => \PIANOSPEAKER|COUNTER523[2]~37\,
	combout => \PIANOSPEAKER|COUNTER523[3]~38_combout\,
	cout => \PIANOSPEAKER|COUNTER523[3]~39\);

-- Location: LCCOMB_X36_Y9_N8
\PIANOSPEAKER|COUNTER523[4]~40\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PIANOSPEAKER|COUNTER523[4]~40_combout\ = (\PIANOSPEAKER|COUNTER523\(4) & (\PIANOSPEAKER|COUNTER523[3]~39\ $ (GND))) # (!\PIANOSPEAKER|COUNTER523\(4) & (!\PIANOSPEAKER|COUNTER523[3]~39\ & VCC))
-- \PIANOSPEAKER|COUNTER523[4]~41\ = CARRY((\PIANOSPEAKER|COUNTER523\(4) & !\PIANOSPEAKER|COUNTER523[3]~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PIANOSPEAKER|COUNTER523\(4),
	datad => VCC,
	cin => \PIANOSPEAKER|COUNTER523[3]~39\,
	combout => \PIANOSPEAKER|COUNTER523[4]~40_combout\,
	cout => \PIANOSPEAKER|COUNTER523[4]~41\);

-- Location: LCCOMB_X36_Y9_N10
\PIANOSPEAKER|COUNTER523[5]~42\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PIANOSPEAKER|COUNTER523[5]~42_combout\ = (\PIANOSPEAKER|COUNTER523\(5) & (!\PIANOSPEAKER|COUNTER523[4]~41\)) # (!\PIANOSPEAKER|COUNTER523\(5) & ((\PIANOSPEAKER|COUNTER523[4]~41\) # (GND)))
-- \PIANOSPEAKER|COUNTER523[5]~43\ = CARRY((!\PIANOSPEAKER|COUNTER523[4]~41\) # (!\PIANOSPEAKER|COUNTER523\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PIANOSPEAKER|COUNTER523\(5),
	datad => VCC,
	cin => \PIANOSPEAKER|COUNTER523[4]~41\,
	combout => \PIANOSPEAKER|COUNTER523[5]~42_combout\,
	cout => \PIANOSPEAKER|COUNTER523[5]~43\);

-- Location: LCCOMB_X36_Y9_N12
\PIANOSPEAKER|COUNTER523[6]~44\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PIANOSPEAKER|COUNTER523[6]~44_combout\ = (\PIANOSPEAKER|COUNTER523\(6) & (\PIANOSPEAKER|COUNTER523[5]~43\ $ (GND))) # (!\PIANOSPEAKER|COUNTER523\(6) & (!\PIANOSPEAKER|COUNTER523[5]~43\ & VCC))
-- \PIANOSPEAKER|COUNTER523[6]~45\ = CARRY((\PIANOSPEAKER|COUNTER523\(6) & !\PIANOSPEAKER|COUNTER523[5]~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PIANOSPEAKER|COUNTER523\(6),
	datad => VCC,
	cin => \PIANOSPEAKER|COUNTER523[5]~43\,
	combout => \PIANOSPEAKER|COUNTER523[6]~44_combout\,
	cout => \PIANOSPEAKER|COUNTER523[6]~45\);

-- Location: LCCOMB_X36_Y9_N14
\PIANOSPEAKER|COUNTER523[7]~46\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PIANOSPEAKER|COUNTER523[7]~46_combout\ = (\PIANOSPEAKER|COUNTER523\(7) & (!\PIANOSPEAKER|COUNTER523[6]~45\)) # (!\PIANOSPEAKER|COUNTER523\(7) & ((\PIANOSPEAKER|COUNTER523[6]~45\) # (GND)))
-- \PIANOSPEAKER|COUNTER523[7]~47\ = CARRY((!\PIANOSPEAKER|COUNTER523[6]~45\) # (!\PIANOSPEAKER|COUNTER523\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PIANOSPEAKER|COUNTER523\(7),
	datad => VCC,
	cin => \PIANOSPEAKER|COUNTER523[6]~45\,
	combout => \PIANOSPEAKER|COUNTER523[7]~46_combout\,
	cout => \PIANOSPEAKER|COUNTER523[7]~47\);

-- Location: LCCOMB_X36_Y9_N16
\PIANOSPEAKER|COUNTER523[8]~48\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PIANOSPEAKER|COUNTER523[8]~48_combout\ = (\PIANOSPEAKER|COUNTER523\(8) & (\PIANOSPEAKER|COUNTER523[7]~47\ $ (GND))) # (!\PIANOSPEAKER|COUNTER523\(8) & (!\PIANOSPEAKER|COUNTER523[7]~47\ & VCC))
-- \PIANOSPEAKER|COUNTER523[8]~49\ = CARRY((\PIANOSPEAKER|COUNTER523\(8) & !\PIANOSPEAKER|COUNTER523[7]~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PIANOSPEAKER|COUNTER523\(8),
	datad => VCC,
	cin => \PIANOSPEAKER|COUNTER523[7]~47\,
	combout => \PIANOSPEAKER|COUNTER523[8]~48_combout\,
	cout => \PIANOSPEAKER|COUNTER523[8]~49\);

-- Location: LCCOMB_X36_Y9_N18
\PIANOSPEAKER|COUNTER523[9]~50\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PIANOSPEAKER|COUNTER523[9]~50_combout\ = (\PIANOSPEAKER|COUNTER523\(9) & (!\PIANOSPEAKER|COUNTER523[8]~49\)) # (!\PIANOSPEAKER|COUNTER523\(9) & ((\PIANOSPEAKER|COUNTER523[8]~49\) # (GND)))
-- \PIANOSPEAKER|COUNTER523[9]~51\ = CARRY((!\PIANOSPEAKER|COUNTER523[8]~49\) # (!\PIANOSPEAKER|COUNTER523\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PIANOSPEAKER|COUNTER523\(9),
	datad => VCC,
	cin => \PIANOSPEAKER|COUNTER523[8]~49\,
	combout => \PIANOSPEAKER|COUNTER523[9]~50_combout\,
	cout => \PIANOSPEAKER|COUNTER523[9]~51\);

-- Location: LCCOMB_X36_Y9_N20
\PIANOSPEAKER|COUNTER523[10]~52\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PIANOSPEAKER|COUNTER523[10]~52_combout\ = (\PIANOSPEAKER|COUNTER523\(10) & (\PIANOSPEAKER|COUNTER523[9]~51\ $ (GND))) # (!\PIANOSPEAKER|COUNTER523\(10) & (!\PIANOSPEAKER|COUNTER523[9]~51\ & VCC))
-- \PIANOSPEAKER|COUNTER523[10]~53\ = CARRY((\PIANOSPEAKER|COUNTER523\(10) & !\PIANOSPEAKER|COUNTER523[9]~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PIANOSPEAKER|COUNTER523\(10),
	datad => VCC,
	cin => \PIANOSPEAKER|COUNTER523[9]~51\,
	combout => \PIANOSPEAKER|COUNTER523[10]~52_combout\,
	cout => \PIANOSPEAKER|COUNTER523[10]~53\);

-- Location: LCCOMB_X36_Y9_N22
\PIANOSPEAKER|COUNTER523[11]~54\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PIANOSPEAKER|COUNTER523[11]~54_combout\ = (\PIANOSPEAKER|COUNTER523\(11) & (!\PIANOSPEAKER|COUNTER523[10]~53\)) # (!\PIANOSPEAKER|COUNTER523\(11) & ((\PIANOSPEAKER|COUNTER523[10]~53\) # (GND)))
-- \PIANOSPEAKER|COUNTER523[11]~55\ = CARRY((!\PIANOSPEAKER|COUNTER523[10]~53\) # (!\PIANOSPEAKER|COUNTER523\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PIANOSPEAKER|COUNTER523\(11),
	datad => VCC,
	cin => \PIANOSPEAKER|COUNTER523[10]~53\,
	combout => \PIANOSPEAKER|COUNTER523[11]~54_combout\,
	cout => \PIANOSPEAKER|COUNTER523[11]~55\);

-- Location: LCCOMB_X36_Y9_N24
\PIANOSPEAKER|COUNTER523[12]~56\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PIANOSPEAKER|COUNTER523[12]~56_combout\ = (\PIANOSPEAKER|COUNTER523\(12) & (\PIANOSPEAKER|COUNTER523[11]~55\ $ (GND))) # (!\PIANOSPEAKER|COUNTER523\(12) & (!\PIANOSPEAKER|COUNTER523[11]~55\ & VCC))
-- \PIANOSPEAKER|COUNTER523[12]~57\ = CARRY((\PIANOSPEAKER|COUNTER523\(12) & !\PIANOSPEAKER|COUNTER523[11]~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PIANOSPEAKER|COUNTER523\(12),
	datad => VCC,
	cin => \PIANOSPEAKER|COUNTER523[11]~55\,
	combout => \PIANOSPEAKER|COUNTER523[12]~56_combout\,
	cout => \PIANOSPEAKER|COUNTER523[12]~57\);

-- Location: LCCOMB_X36_Y9_N26
\PIANOSPEAKER|COUNTER523[13]~58\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PIANOSPEAKER|COUNTER523[13]~58_combout\ = (\PIANOSPEAKER|COUNTER523\(13) & (!\PIANOSPEAKER|COUNTER523[12]~57\)) # (!\PIANOSPEAKER|COUNTER523\(13) & ((\PIANOSPEAKER|COUNTER523[12]~57\) # (GND)))
-- \PIANOSPEAKER|COUNTER523[13]~59\ = CARRY((!\PIANOSPEAKER|COUNTER523[12]~57\) # (!\PIANOSPEAKER|COUNTER523\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PIANOSPEAKER|COUNTER523\(13),
	datad => VCC,
	cin => \PIANOSPEAKER|COUNTER523[12]~57\,
	combout => \PIANOSPEAKER|COUNTER523[13]~58_combout\,
	cout => \PIANOSPEAKER|COUNTER523[13]~59\);

-- Location: LCCOMB_X36_Y9_N28
\PIANOSPEAKER|COUNTER523[14]~60\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PIANOSPEAKER|COUNTER523[14]~60_combout\ = (\PIANOSPEAKER|COUNTER523\(14) & (\PIANOSPEAKER|COUNTER523[13]~59\ $ (GND))) # (!\PIANOSPEAKER|COUNTER523\(14) & (!\PIANOSPEAKER|COUNTER523[13]~59\ & VCC))
-- \PIANOSPEAKER|COUNTER523[14]~61\ = CARRY((\PIANOSPEAKER|COUNTER523\(14) & !\PIANOSPEAKER|COUNTER523[13]~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PIANOSPEAKER|COUNTER523\(14),
	datad => VCC,
	cin => \PIANOSPEAKER|COUNTER523[13]~59\,
	combout => \PIANOSPEAKER|COUNTER523[14]~60_combout\,
	cout => \PIANOSPEAKER|COUNTER523[14]~61\);

-- Location: LCCOMB_X36_Y9_N30
\PIANOSPEAKER|COUNTER523[15]~62\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PIANOSPEAKER|COUNTER523[15]~62_combout\ = (\PIANOSPEAKER|COUNTER523\(15) & (!\PIANOSPEAKER|COUNTER523[14]~61\)) # (!\PIANOSPEAKER|COUNTER523\(15) & ((\PIANOSPEAKER|COUNTER523[14]~61\) # (GND)))
-- \PIANOSPEAKER|COUNTER523[15]~63\ = CARRY((!\PIANOSPEAKER|COUNTER523[14]~61\) # (!\PIANOSPEAKER|COUNTER523\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PIANOSPEAKER|COUNTER523\(15),
	datad => VCC,
	cin => \PIANOSPEAKER|COUNTER523[14]~61\,
	combout => \PIANOSPEAKER|COUNTER523[15]~62_combout\,
	cout => \PIANOSPEAKER|COUNTER523[15]~63\);

-- Location: LCCOMB_X36_Y8_N0
\PIANOSPEAKER|COUNTER523[16]~64\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PIANOSPEAKER|COUNTER523[16]~64_combout\ = (\PIANOSPEAKER|COUNTER523\(16) & (\PIANOSPEAKER|COUNTER523[15]~63\ $ (GND))) # (!\PIANOSPEAKER|COUNTER523\(16) & (!\PIANOSPEAKER|COUNTER523[15]~63\ & VCC))
-- \PIANOSPEAKER|COUNTER523[16]~65\ = CARRY((\PIANOSPEAKER|COUNTER523\(16) & !\PIANOSPEAKER|COUNTER523[15]~63\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PIANOSPEAKER|COUNTER523\(16),
	datad => VCC,
	cin => \PIANOSPEAKER|COUNTER523[15]~63\,
	combout => \PIANOSPEAKER|COUNTER523[16]~64_combout\,
	cout => \PIANOSPEAKER|COUNTER523[16]~65\);

-- Location: LCCOMB_X36_Y8_N2
\PIANOSPEAKER|COUNTER523[17]~66\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PIANOSPEAKER|COUNTER523[17]~66_combout\ = (\PIANOSPEAKER|COUNTER523\(17) & (!\PIANOSPEAKER|COUNTER523[16]~65\)) # (!\PIANOSPEAKER|COUNTER523\(17) & ((\PIANOSPEAKER|COUNTER523[16]~65\) # (GND)))
-- \PIANOSPEAKER|COUNTER523[17]~67\ = CARRY((!\PIANOSPEAKER|COUNTER523[16]~65\) # (!\PIANOSPEAKER|COUNTER523\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PIANOSPEAKER|COUNTER523\(17),
	datad => VCC,
	cin => \PIANOSPEAKER|COUNTER523[16]~65\,
	combout => \PIANOSPEAKER|COUNTER523[17]~66_combout\,
	cout => \PIANOSPEAKER|COUNTER523[17]~67\);

-- Location: LCCOMB_X36_Y8_N4
\PIANOSPEAKER|COUNTER523[18]~68\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PIANOSPEAKER|COUNTER523[18]~68_combout\ = (\PIANOSPEAKER|COUNTER523\(18) & (\PIANOSPEAKER|COUNTER523[17]~67\ $ (GND))) # (!\PIANOSPEAKER|COUNTER523\(18) & (!\PIANOSPEAKER|COUNTER523[17]~67\ & VCC))
-- \PIANOSPEAKER|COUNTER523[18]~69\ = CARRY((\PIANOSPEAKER|COUNTER523\(18) & !\PIANOSPEAKER|COUNTER523[17]~67\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PIANOSPEAKER|COUNTER523\(18),
	datad => VCC,
	cin => \PIANOSPEAKER|COUNTER523[17]~67\,
	combout => \PIANOSPEAKER|COUNTER523[18]~68_combout\,
	cout => \PIANOSPEAKER|COUNTER523[18]~69\);

-- Location: LCCOMB_X36_Y8_N6
\PIANOSPEAKER|COUNTER523[19]~70\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PIANOSPEAKER|COUNTER523[19]~70_combout\ = (\PIANOSPEAKER|COUNTER523\(19) & (!\PIANOSPEAKER|COUNTER523[18]~69\)) # (!\PIANOSPEAKER|COUNTER523\(19) & ((\PIANOSPEAKER|COUNTER523[18]~69\) # (GND)))
-- \PIANOSPEAKER|COUNTER523[19]~71\ = CARRY((!\PIANOSPEAKER|COUNTER523[18]~69\) # (!\PIANOSPEAKER|COUNTER523\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PIANOSPEAKER|COUNTER523\(19),
	datad => VCC,
	cin => \PIANOSPEAKER|COUNTER523[18]~69\,
	combout => \PIANOSPEAKER|COUNTER523[19]~70_combout\,
	cout => \PIANOSPEAKER|COUNTER523[19]~71\);

-- Location: LCCOMB_X36_Y8_N8
\PIANOSPEAKER|COUNTER523[20]~72\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PIANOSPEAKER|COUNTER523[20]~72_combout\ = (\PIANOSPEAKER|COUNTER523\(20) & (\PIANOSPEAKER|COUNTER523[19]~71\ $ (GND))) # (!\PIANOSPEAKER|COUNTER523\(20) & (!\PIANOSPEAKER|COUNTER523[19]~71\ & VCC))
-- \PIANOSPEAKER|COUNTER523[20]~73\ = CARRY((\PIANOSPEAKER|COUNTER523\(20) & !\PIANOSPEAKER|COUNTER523[19]~71\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PIANOSPEAKER|COUNTER523\(20),
	datad => VCC,
	cin => \PIANOSPEAKER|COUNTER523[19]~71\,
	combout => \PIANOSPEAKER|COUNTER523[20]~72_combout\,
	cout => \PIANOSPEAKER|COUNTER523[20]~73\);

-- Location: LCCOMB_X36_Y8_N10
\PIANOSPEAKER|COUNTER523[21]~74\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PIANOSPEAKER|COUNTER523[21]~74_combout\ = (\PIANOSPEAKER|COUNTER523\(21) & (!\PIANOSPEAKER|COUNTER523[20]~73\)) # (!\PIANOSPEAKER|COUNTER523\(21) & ((\PIANOSPEAKER|COUNTER523[20]~73\) # (GND)))
-- \PIANOSPEAKER|COUNTER523[21]~75\ = CARRY((!\PIANOSPEAKER|COUNTER523[20]~73\) # (!\PIANOSPEAKER|COUNTER523\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PIANOSPEAKER|COUNTER523\(21),
	datad => VCC,
	cin => \PIANOSPEAKER|COUNTER523[20]~73\,
	combout => \PIANOSPEAKER|COUNTER523[21]~74_combout\,
	cout => \PIANOSPEAKER|COUNTER523[21]~75\);

-- Location: LCCOMB_X36_Y8_N12
\PIANOSPEAKER|COUNTER523[22]~76\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PIANOSPEAKER|COUNTER523[22]~76_combout\ = (\PIANOSPEAKER|COUNTER523\(22) & (\PIANOSPEAKER|COUNTER523[21]~75\ $ (GND))) # (!\PIANOSPEAKER|COUNTER523\(22) & (!\PIANOSPEAKER|COUNTER523[21]~75\ & VCC))
-- \PIANOSPEAKER|COUNTER523[22]~77\ = CARRY((\PIANOSPEAKER|COUNTER523\(22) & !\PIANOSPEAKER|COUNTER523[21]~75\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PIANOSPEAKER|COUNTER523\(22),
	datad => VCC,
	cin => \PIANOSPEAKER|COUNTER523[21]~75\,
	combout => \PIANOSPEAKER|COUNTER523[22]~76_combout\,
	cout => \PIANOSPEAKER|COUNTER523[22]~77\);

-- Location: LCCOMB_X36_Y8_N14
\PIANOSPEAKER|COUNTER523[23]~78\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PIANOSPEAKER|COUNTER523[23]~78_combout\ = (\PIANOSPEAKER|COUNTER523\(23) & (!\PIANOSPEAKER|COUNTER523[22]~77\)) # (!\PIANOSPEAKER|COUNTER523\(23) & ((\PIANOSPEAKER|COUNTER523[22]~77\) # (GND)))
-- \PIANOSPEAKER|COUNTER523[23]~79\ = CARRY((!\PIANOSPEAKER|COUNTER523[22]~77\) # (!\PIANOSPEAKER|COUNTER523\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PIANOSPEAKER|COUNTER523\(23),
	datad => VCC,
	cin => \PIANOSPEAKER|COUNTER523[22]~77\,
	combout => \PIANOSPEAKER|COUNTER523[23]~78_combout\,
	cout => \PIANOSPEAKER|COUNTER523[23]~79\);

-- Location: LCCOMB_X36_Y8_N16
\PIANOSPEAKER|COUNTER523[24]~80\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PIANOSPEAKER|COUNTER523[24]~80_combout\ = (\PIANOSPEAKER|COUNTER523\(24) & (\PIANOSPEAKER|COUNTER523[23]~79\ $ (GND))) # (!\PIANOSPEAKER|COUNTER523\(24) & (!\PIANOSPEAKER|COUNTER523[23]~79\ & VCC))
-- \PIANOSPEAKER|COUNTER523[24]~81\ = CARRY((\PIANOSPEAKER|COUNTER523\(24) & !\PIANOSPEAKER|COUNTER523[23]~79\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PIANOSPEAKER|COUNTER523\(24),
	datad => VCC,
	cin => \PIANOSPEAKER|COUNTER523[23]~79\,
	combout => \PIANOSPEAKER|COUNTER523[24]~80_combout\,
	cout => \PIANOSPEAKER|COUNTER523[24]~81\);

-- Location: LCCOMB_X36_Y8_N18
\PIANOSPEAKER|COUNTER523[25]~82\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PIANOSPEAKER|COUNTER523[25]~82_combout\ = (\PIANOSPEAKER|COUNTER523\(25) & (!\PIANOSPEAKER|COUNTER523[24]~81\)) # (!\PIANOSPEAKER|COUNTER523\(25) & ((\PIANOSPEAKER|COUNTER523[24]~81\) # (GND)))
-- \PIANOSPEAKER|COUNTER523[25]~83\ = CARRY((!\PIANOSPEAKER|COUNTER523[24]~81\) # (!\PIANOSPEAKER|COUNTER523\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PIANOSPEAKER|COUNTER523\(25),
	datad => VCC,
	cin => \PIANOSPEAKER|COUNTER523[24]~81\,
	combout => \PIANOSPEAKER|COUNTER523[25]~82_combout\,
	cout => \PIANOSPEAKER|COUNTER523[25]~83\);

-- Location: LCCOMB_X36_Y8_N20
\PIANOSPEAKER|COUNTER523[26]~84\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PIANOSPEAKER|COUNTER523[26]~84_combout\ = (\PIANOSPEAKER|COUNTER523\(26) & (\PIANOSPEAKER|COUNTER523[25]~83\ $ (GND))) # (!\PIANOSPEAKER|COUNTER523\(26) & (!\PIANOSPEAKER|COUNTER523[25]~83\ & VCC))
-- \PIANOSPEAKER|COUNTER523[26]~85\ = CARRY((\PIANOSPEAKER|COUNTER523\(26) & !\PIANOSPEAKER|COUNTER523[25]~83\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PIANOSPEAKER|COUNTER523\(26),
	datad => VCC,
	cin => \PIANOSPEAKER|COUNTER523[25]~83\,
	combout => \PIANOSPEAKER|COUNTER523[26]~84_combout\,
	cout => \PIANOSPEAKER|COUNTER523[26]~85\);

-- Location: LCCOMB_X36_Y8_N22
\PIANOSPEAKER|COUNTER523[27]~86\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PIANOSPEAKER|COUNTER523[27]~86_combout\ = (\PIANOSPEAKER|COUNTER523\(27) & (!\PIANOSPEAKER|COUNTER523[26]~85\)) # (!\PIANOSPEAKER|COUNTER523\(27) & ((\PIANOSPEAKER|COUNTER523[26]~85\) # (GND)))
-- \PIANOSPEAKER|COUNTER523[27]~87\ = CARRY((!\PIANOSPEAKER|COUNTER523[26]~85\) # (!\PIANOSPEAKER|COUNTER523\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PIANOSPEAKER|COUNTER523\(27),
	datad => VCC,
	cin => \PIANOSPEAKER|COUNTER523[26]~85\,
	combout => \PIANOSPEAKER|COUNTER523[27]~86_combout\,
	cout => \PIANOSPEAKER|COUNTER523[27]~87\);

-- Location: LCCOMB_X36_Y8_N24
\PIANOSPEAKER|COUNTER523[28]~88\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PIANOSPEAKER|COUNTER523[28]~88_combout\ = (\PIANOSPEAKER|COUNTER523\(28) & (\PIANOSPEAKER|COUNTER523[27]~87\ $ (GND))) # (!\PIANOSPEAKER|COUNTER523\(28) & (!\PIANOSPEAKER|COUNTER523[27]~87\ & VCC))
-- \PIANOSPEAKER|COUNTER523[28]~89\ = CARRY((\PIANOSPEAKER|COUNTER523\(28) & !\PIANOSPEAKER|COUNTER523[27]~87\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PIANOSPEAKER|COUNTER523\(28),
	datad => VCC,
	cin => \PIANOSPEAKER|COUNTER523[27]~87\,
	combout => \PIANOSPEAKER|COUNTER523[28]~88_combout\,
	cout => \PIANOSPEAKER|COUNTER523[28]~89\);

-- Location: LCCOMB_X36_Y8_N26
\PIANOSPEAKER|COUNTER523[29]~90\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PIANOSPEAKER|COUNTER523[29]~90_combout\ = (\PIANOSPEAKER|COUNTER523\(29) & (!\PIANOSPEAKER|COUNTER523[28]~89\)) # (!\PIANOSPEAKER|COUNTER523\(29) & ((\PIANOSPEAKER|COUNTER523[28]~89\) # (GND)))
-- \PIANOSPEAKER|COUNTER523[29]~91\ = CARRY((!\PIANOSPEAKER|COUNTER523[28]~89\) # (!\PIANOSPEAKER|COUNTER523\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PIANOSPEAKER|COUNTER523\(29),
	datad => VCC,
	cin => \PIANOSPEAKER|COUNTER523[28]~89\,
	combout => \PIANOSPEAKER|COUNTER523[29]~90_combout\,
	cout => \PIANOSPEAKER|COUNTER523[29]~91\);

-- Location: LCCOMB_X36_Y8_N28
\PIANOSPEAKER|COUNTER523[30]~92\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PIANOSPEAKER|COUNTER523[30]~92_combout\ = (\PIANOSPEAKER|COUNTER523\(30) & (\PIANOSPEAKER|COUNTER523[29]~91\ $ (GND))) # (!\PIANOSPEAKER|COUNTER523\(30) & (!\PIANOSPEAKER|COUNTER523[29]~91\ & VCC))
-- \PIANOSPEAKER|COUNTER523[30]~93\ = CARRY((\PIANOSPEAKER|COUNTER523\(30) & !\PIANOSPEAKER|COUNTER523[29]~91\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PIANOSPEAKER|COUNTER523\(30),
	datad => VCC,
	cin => \PIANOSPEAKER|COUNTER523[29]~91\,
	combout => \PIANOSPEAKER|COUNTER523[30]~92_combout\,
	cout => \PIANOSPEAKER|COUNTER523[30]~93\);

-- Location: LCCOMB_X36_Y8_N30
\PIANOSPEAKER|COUNTER523[31]~94\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PIANOSPEAKER|COUNTER523[31]~94_combout\ = \PIANOSPEAKER|COUNTER523\(31) $ (\PIANOSPEAKER|COUNTER523[30]~93\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PIANOSPEAKER|COUNTER523\(31),
	cin => \PIANOSPEAKER|COUNTER523[30]~93\,
	combout => \PIANOSPEAKER|COUNTER523[31]~94_combout\);

-- Location: LCCOMB_X2_Y11_N14
\CLK100|Add0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CLK100|Add0~0_combout\ = \CLK100|COUNTER\(0) $ (VCC)
-- \CLK100|Add0~1\ = CARRY(\CLK100|COUNTER\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CLK100|COUNTER\(0),
	datad => VCC,
	combout => \CLK100|Add0~0_combout\,
	cout => \CLK100|Add0~1\);

-- Location: LCCOMB_X2_Y11_N16
\CLK100|Add0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CLK100|Add0~2_combout\ = (\CLK100|COUNTER\(1) & (!\CLK100|Add0~1\)) # (!\CLK100|COUNTER\(1) & ((\CLK100|Add0~1\) # (GND)))
-- \CLK100|Add0~3\ = CARRY((!\CLK100|Add0~1\) # (!\CLK100|COUNTER\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CLK100|COUNTER\(1),
	datad => VCC,
	cin => \CLK100|Add0~1\,
	combout => \CLK100|Add0~2_combout\,
	cout => \CLK100|Add0~3\);

-- Location: LCCOMB_X2_Y11_N18
\CLK100|Add0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CLK100|Add0~4_combout\ = (\CLK100|COUNTER\(2) & (\CLK100|Add0~3\ $ (GND))) # (!\CLK100|COUNTER\(2) & (!\CLK100|Add0~3\ & VCC))
-- \CLK100|Add0~5\ = CARRY((\CLK100|COUNTER\(2) & !\CLK100|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CLK100|COUNTER\(2),
	datad => VCC,
	cin => \CLK100|Add0~3\,
	combout => \CLK100|Add0~4_combout\,
	cout => \CLK100|Add0~5\);

-- Location: LCCOMB_X2_Y11_N20
\CLK100|Add0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CLK100|Add0~6_combout\ = (\CLK100|COUNTER\(3) & (!\CLK100|Add0~5\)) # (!\CLK100|COUNTER\(3) & ((\CLK100|Add0~5\) # (GND)))
-- \CLK100|Add0~7\ = CARRY((!\CLK100|Add0~5\) # (!\CLK100|COUNTER\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CLK100|COUNTER\(3),
	datad => VCC,
	cin => \CLK100|Add0~5\,
	combout => \CLK100|Add0~6_combout\,
	cout => \CLK100|Add0~7\);

-- Location: LCCOMB_X2_Y11_N22
\CLK100|Add0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CLK100|Add0~8_combout\ = (\CLK100|COUNTER\(4) & (\CLK100|Add0~7\ $ (GND))) # (!\CLK100|COUNTER\(4) & (!\CLK100|Add0~7\ & VCC))
-- \CLK100|Add0~9\ = CARRY((\CLK100|COUNTER\(4) & !\CLK100|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CLK100|COUNTER\(4),
	datad => VCC,
	cin => \CLK100|Add0~7\,
	combout => \CLK100|Add0~8_combout\,
	cout => \CLK100|Add0~9\);

-- Location: LCCOMB_X2_Y11_N24
\CLK100|Add0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CLK100|Add0~10_combout\ = (\CLK100|COUNTER\(5) & (!\CLK100|Add0~9\)) # (!\CLK100|COUNTER\(5) & ((\CLK100|Add0~9\) # (GND)))
-- \CLK100|Add0~11\ = CARRY((!\CLK100|Add0~9\) # (!\CLK100|COUNTER\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CLK100|COUNTER\(5),
	datad => VCC,
	cin => \CLK100|Add0~9\,
	combout => \CLK100|Add0~10_combout\,
	cout => \CLK100|Add0~11\);

-- Location: LCCOMB_X2_Y11_N26
\CLK100|Add0~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CLK100|Add0~12_combout\ = (\CLK100|COUNTER\(6) & (\CLK100|Add0~11\ $ (GND))) # (!\CLK100|COUNTER\(6) & (!\CLK100|Add0~11\ & VCC))
-- \CLK100|Add0~13\ = CARRY((\CLK100|COUNTER\(6) & !\CLK100|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CLK100|COUNTER\(6),
	datad => VCC,
	cin => \CLK100|Add0~11\,
	combout => \CLK100|Add0~12_combout\,
	cout => \CLK100|Add0~13\);

-- Location: LCCOMB_X2_Y11_N28
\CLK100|Add0~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CLK100|Add0~14_combout\ = (\CLK100|COUNTER\(7) & (!\CLK100|Add0~13\)) # (!\CLK100|COUNTER\(7) & ((\CLK100|Add0~13\) # (GND)))
-- \CLK100|Add0~15\ = CARRY((!\CLK100|Add0~13\) # (!\CLK100|COUNTER\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CLK100|COUNTER\(7),
	datad => VCC,
	cin => \CLK100|Add0~13\,
	combout => \CLK100|Add0~14_combout\,
	cout => \CLK100|Add0~15\);

-- Location: LCCOMB_X2_Y11_N30
\CLK100|Add0~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CLK100|Add0~16_combout\ = (\CLK100|COUNTER\(8) & (\CLK100|Add0~15\ $ (GND))) # (!\CLK100|COUNTER\(8) & (!\CLK100|Add0~15\ & VCC))
-- \CLK100|Add0~17\ = CARRY((\CLK100|COUNTER\(8) & !\CLK100|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CLK100|COUNTER\(8),
	datad => VCC,
	cin => \CLK100|Add0~15\,
	combout => \CLK100|Add0~16_combout\,
	cout => \CLK100|Add0~17\);

-- Location: LCCOMB_X2_Y10_N0
\CLK100|Add0~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CLK100|Add0~18_combout\ = (\CLK100|COUNTER\(9) & (!\CLK100|Add0~17\)) # (!\CLK100|COUNTER\(9) & ((\CLK100|Add0~17\) # (GND)))
-- \CLK100|Add0~19\ = CARRY((!\CLK100|Add0~17\) # (!\CLK100|COUNTER\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CLK100|COUNTER\(9),
	datad => VCC,
	cin => \CLK100|Add0~17\,
	combout => \CLK100|Add0~18_combout\,
	cout => \CLK100|Add0~19\);

-- Location: LCCOMB_X2_Y10_N2
\CLK100|Add0~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CLK100|Add0~20_combout\ = (\CLK100|COUNTER\(10) & (\CLK100|Add0~19\ $ (GND))) # (!\CLK100|COUNTER\(10) & (!\CLK100|Add0~19\ & VCC))
-- \CLK100|Add0~21\ = CARRY((\CLK100|COUNTER\(10) & !\CLK100|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CLK100|COUNTER\(10),
	datad => VCC,
	cin => \CLK100|Add0~19\,
	combout => \CLK100|Add0~20_combout\,
	cout => \CLK100|Add0~21\);

-- Location: LCCOMB_X2_Y10_N4
\CLK100|Add0~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CLK100|Add0~22_combout\ = (\CLK100|COUNTER\(11) & (!\CLK100|Add0~21\)) # (!\CLK100|COUNTER\(11) & ((\CLK100|Add0~21\) # (GND)))
-- \CLK100|Add0~23\ = CARRY((!\CLK100|Add0~21\) # (!\CLK100|COUNTER\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CLK100|COUNTER\(11),
	datad => VCC,
	cin => \CLK100|Add0~21\,
	combout => \CLK100|Add0~22_combout\,
	cout => \CLK100|Add0~23\);

-- Location: LCCOMB_X2_Y10_N6
\CLK100|Add0~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CLK100|Add0~24_combout\ = (\CLK100|COUNTER\(12) & (\CLK100|Add0~23\ $ (GND))) # (!\CLK100|COUNTER\(12) & (!\CLK100|Add0~23\ & VCC))
-- \CLK100|Add0~25\ = CARRY((\CLK100|COUNTER\(12) & !\CLK100|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CLK100|COUNTER\(12),
	datad => VCC,
	cin => \CLK100|Add0~23\,
	combout => \CLK100|Add0~24_combout\,
	cout => \CLK100|Add0~25\);

-- Location: LCCOMB_X2_Y10_N8
\CLK100|Add0~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CLK100|Add0~26_combout\ = (\CLK100|COUNTER\(13) & (!\CLK100|Add0~25\)) # (!\CLK100|COUNTER\(13) & ((\CLK100|Add0~25\) # (GND)))
-- \CLK100|Add0~27\ = CARRY((!\CLK100|Add0~25\) # (!\CLK100|COUNTER\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CLK100|COUNTER\(13),
	datad => VCC,
	cin => \CLK100|Add0~25\,
	combout => \CLK100|Add0~26_combout\,
	cout => \CLK100|Add0~27\);

-- Location: LCCOMB_X2_Y10_N10
\CLK100|Add0~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CLK100|Add0~28_combout\ = (\CLK100|COUNTER\(14) & (\CLK100|Add0~27\ $ (GND))) # (!\CLK100|COUNTER\(14) & (!\CLK100|Add0~27\ & VCC))
-- \CLK100|Add0~29\ = CARRY((\CLK100|COUNTER\(14) & !\CLK100|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CLK100|COUNTER\(14),
	datad => VCC,
	cin => \CLK100|Add0~27\,
	combout => \CLK100|Add0~28_combout\,
	cout => \CLK100|Add0~29\);

-- Location: LCCOMB_X2_Y10_N12
\CLK100|Add0~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CLK100|Add0~30_combout\ = (\CLK100|COUNTER\(15) & (!\CLK100|Add0~29\)) # (!\CLK100|COUNTER\(15) & ((\CLK100|Add0~29\) # (GND)))
-- \CLK100|Add0~31\ = CARRY((!\CLK100|Add0~29\) # (!\CLK100|COUNTER\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CLK100|COUNTER\(15),
	datad => VCC,
	cin => \CLK100|Add0~29\,
	combout => \CLK100|Add0~30_combout\,
	cout => \CLK100|Add0~31\);

-- Location: LCCOMB_X2_Y10_N14
\CLK100|Add0~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CLK100|Add0~32_combout\ = (\CLK100|COUNTER\(16) & (\CLK100|Add0~31\ $ (GND))) # (!\CLK100|COUNTER\(16) & (!\CLK100|Add0~31\ & VCC))
-- \CLK100|Add0~33\ = CARRY((\CLK100|COUNTER\(16) & !\CLK100|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CLK100|COUNTER\(16),
	datad => VCC,
	cin => \CLK100|Add0~31\,
	combout => \CLK100|Add0~32_combout\,
	cout => \CLK100|Add0~33\);

-- Location: LCCOMB_X2_Y10_N16
\CLK100|Add0~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CLK100|Add0~34_combout\ = (\CLK100|COUNTER\(17) & (!\CLK100|Add0~33\)) # (!\CLK100|COUNTER\(17) & ((\CLK100|Add0~33\) # (GND)))
-- \CLK100|Add0~35\ = CARRY((!\CLK100|Add0~33\) # (!\CLK100|COUNTER\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CLK100|COUNTER\(17),
	datad => VCC,
	cin => \CLK100|Add0~33\,
	combout => \CLK100|Add0~34_combout\,
	cout => \CLK100|Add0~35\);

-- Location: LCCOMB_X2_Y10_N18
\CLK100|Add0~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CLK100|Add0~36_combout\ = \CLK100|Add0~35\ $ (!\CLK100|COUNTER\(18))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \CLK100|COUNTER\(18),
	cin => \CLK100|Add0~35\,
	combout => \CLK100|Add0~36_combout\);

-- Location: FF_X22_Y15_N27
\SYNC|COUNTER_V[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK|TEMPORAL~clkctrl_outclk\,
	d => \SYNC|Add1~16_combout\,
	clrn => \ALT_INV_RST~input_o\,
	ena => \SYNC|Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SYNC|COUNTER_V\(8));

-- Location: LCCOMB_X29_Y15_N30
\SYNC|Equal0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SYNC|Equal0~2_combout\ = ((!\SYNC|Add0~4_combout\ & (!\SYNC|Add0~6_combout\ & !\SYNC|Add0~2_combout\))) # (!\SYNC|LessThan0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SYNC|Add0~4_combout\,
	datab => \SYNC|LessThan0~2_combout\,
	datac => \SYNC|Add0~6_combout\,
	datad => \SYNC|Add0~2_combout\,
	combout => \SYNC|Equal0~2_combout\);

-- Location: LCCOMB_X21_Y15_N30
\LessThan24~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan24~0_combout\ = (((!\SYNC|Add3~2_combout\) # (!\SYNC|Add3~6_combout\)) # (!\SYNC|Add3~8_combout\)) # (!\SYNC|Add3~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SYNC|Add3~4_combout\,
	datab => \SYNC|Add3~8_combout\,
	datac => \SYNC|Add3~6_combout\,
	datad => \SYNC|Add3~2_combout\,
	combout => \LessThan24~0_combout\);

-- Location: LCCOMB_X21_Y11_N12
\R[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \R[0]~0_combout\ = (((!\LessThan11~3_combout\ & \LessThan17~4_combout\)) # (!\LessThan12~2_combout\)) # (!\process_0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan11~3_combout\,
	datab => \LessThan17~4_combout\,
	datac => \process_0~0_combout\,
	datad => \LessThan12~2_combout\,
	combout => \R[0]~0_combout\);

-- Location: LCCOMB_X27_Y14_N6
\LessThan26~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan26~0_combout\ = (!\SYNC|COUNTER_H\(4) & (!\SYNC|COUNTER_H\(5) & !\SYNC|LessThan0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SYNC|COUNTER_H\(4),
	datac => \SYNC|COUNTER_H\(5),
	datad => \SYNC|LessThan0~0_combout\,
	combout => \LessThan26~0_combout\);

-- Location: LCCOMB_X27_Y14_N26
\LessThan15~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan15~0_combout\ = (!\SYNC|COUNTER_H\(4) & (\LessThan25~0_combout\ & !\SYNC|COUNTER_H\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SYNC|COUNTER_H\(4),
	datab => \LessThan25~0_combout\,
	datac => \SYNC|COUNTER_H\(5),
	combout => \LessThan15~0_combout\);

-- Location: LCCOMB_X26_Y15_N6
\LessThan20~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan20~0_combout\ = (\SYNC|COUNTER_H\(6) & (((!\SYNC|COUNTER_H\(4) & \SYNC|LessThan0~0_combout\)) # (!\SYNC|COUNTER_H\(5)))) # (!\SYNC|COUNTER_H\(6) & ((\SYNC|COUNTER_H\(5)) # ((\SYNC|COUNTER_H\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111001110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SYNC|COUNTER_H\(6),
	datab => \SYNC|COUNTER_H\(5),
	datac => \SYNC|COUNTER_H\(4),
	datad => \SYNC|LessThan0~0_combout\,
	combout => \LessThan20~0_combout\);

-- Location: LCCOMB_X26_Y15_N10
\LessThan21~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan21~0_combout\ = (\SYNC|Add2~1_combout\ & (\SYNC|COUNTER_H\(8) $ (!\SYNC|Add2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SYNC|COUNTER_H\(8),
	datac => \SYNC|Add2~1_combout\,
	datad => \SYNC|Add2~0_combout\,
	combout => \LessThan21~0_combout\);

-- Location: FF_X22_Y17_N31
\FALLING_BLOCK_I1[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK|TEMPORAL~clkctrl_outclk\,
	d => \Add4~23_combout\,
	ena => \FALLING_BLOCK_I1[10]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => FALLING_BLOCK_I1(6));

-- Location: FF_X21_Y17_N31
\FALLING_BLOCK_I1[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK|TEMPORAL~clkctrl_outclk\,
	d => \Add4~29_combout\,
	ena => \FALLING_BLOCK_I1[10]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => FALLING_BLOCK_I1(0));

-- Location: FF_X19_Y13_N23
\FALLING_BLOCK_F2[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK|TEMPORAL~clkctrl_outclk\,
	asdata => \FALLING_BLOCK_F2~15_combout\,
	sload => VCC,
	ena => \FALLING_BLOCK_F2[30]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => FALLING_BLOCK_F2(1));

-- Location: FF_X17_Y15_N7
\FALLING_BLOCK_I2[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK|TEMPORAL~clkctrl_outclk\,
	d => \Add5~24_combout\,
	ena => \FALLING_BLOCK_I2[10]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => FALLING_BLOCK_I2(5));

-- Location: LCCOMB_X26_Y15_N26
\LessThan21~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan21~2_combout\ = (\LessThan21~1_combout\ & (\LessThan21~0_combout\ & ((\LessThan25~0_combout\) # (!\SYNC|COUNTER_H\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan25~0_combout\,
	datab => \SYNC|COUNTER_H\(4),
	datac => \LessThan21~1_combout\,
	datad => \LessThan21~0_combout\,
	combout => \LessThan21~2_combout\);

-- Location: FF_X22_Y11_N31
\DERE|Q3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK100|C100HZ~clkctrl_outclk\,
	asdata => \DERE|Q2~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DERE|Q3~q\);

-- Location: LCCOMB_X20_Y11_N30
\process_0~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \process_0~22_combout\ = (\LessThan18~0_combout\ & (\process_0~0_combout\ & ((\LessThan17~8_combout\) # (!\SYNC|Add2~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan18~0_combout\,
	datab => \LessThan17~8_combout\,
	datac => \SYNC|Add2~3_combout\,
	datad => \process_0~0_combout\,
	combout => \process_0~22_combout\);

-- Location: LCCOMB_X21_Y11_N10
\process_0~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \process_0~24_combout\ = (\R[0]~2_combout\ & (\DEBFA|QOUT~0_combout\ & ((\LessThan15~1_combout\) # (!\SYNC|Add2~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SYNC|Add2~3_combout\,
	datab => \LessThan15~1_combout\,
	datac => \R[0]~2_combout\,
	datad => \DEBFA|QOUT~0_combout\,
	combout => \process_0~24_combout\);

-- Location: LCCOMB_X22_Y14_N26
\G~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \G~7_combout\ = (\process_0~15_combout\ & (((\Add2~20_combout\) # (!\LessThan8~18_combout\)) # (!\process_0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~6_combout\,
	datab => \Add2~20_combout\,
	datac => \LessThan8~18_combout\,
	datad => \process_0~15_combout\,
	combout => \G~7_combout\);

-- Location: LCCOMB_X28_Y15_N4
\LessThan29~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan29~0_combout\ = ((!\SYNC|COUNTER_H\(0) & (!\SYNC|COUNTER_H\(1) & !\SYNC|COUNTER_H\(2)))) # (!\SYNC|COUNTER_H\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SYNC|COUNTER_H\(3),
	datab => \SYNC|COUNTER_H\(0),
	datac => \SYNC|COUNTER_H\(1),
	datad => \SYNC|COUNTER_H\(2),
	combout => \LessThan29~0_combout\);

-- Location: LCCOMB_X27_Y15_N10
\G~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \G~9_combout\ = (\SYNC|Add2~1_combout\ & ((!\LessThan29~0_combout\) # (!\LessThan17~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan17~5_combout\,
	datab => \SYNC|Add2~1_combout\,
	datad => \LessThan29~0_combout\,
	combout => \G~9_combout\);

-- Location: LCCOMB_X19_Y14_N30
\G~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \G~16_combout\ = (\G~15_combout\ & (((!\process_0~30_combout\ & \process_0~28_combout\)) # (!\process_0~31_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~31_combout\,
	datab => \process_0~30_combout\,
	datac => \process_0~28_combout\,
	datad => \G~15_combout\,
	combout => \G~16_combout\);

-- Location: LCCOMB_X19_Y14_N28
\G~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \G~17_combout\ = (\process_0~5_combout\ & (((!\process_0~15_combout\ & \process_0~7_combout\)) # (!\process_0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~8_combout\,
	datab => \process_0~15_combout\,
	datac => \process_0~5_combout\,
	datad => \process_0~7_combout\,
	combout => \G~17_combout\);

-- Location: LCCOMB_X19_Y14_N22
\G~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \G~18_combout\ = (!\process_0~11_combout\ & ((\R[0]~8_combout\ & (\G~16_combout\)) # (!\R[0]~8_combout\ & ((\G~17_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G~16_combout\,
	datab => \G~17_combout\,
	datac => \process_0~11_combout\,
	datad => \R[0]~8_combout\,
	combout => \G~18_combout\);

-- Location: LCCOMB_X20_Y14_N22
\R[0]~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \R[0]~25_combout\ = (!\process_0~0_combout\) # (!\B~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B~2_combout\,
	datad => \process_0~0_combout\,
	combout => \R[0]~25_combout\);

-- Location: LCCOMB_X20_Y14_N12
\B~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \B~8_combout\ = (\B~2_combout\ & (!\process_0~27_combout\ & ((!\LessThan19~4_combout\) # (!\LessThan20~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan20~1_combout\,
	datab => \B~2_combout\,
	datac => \process_0~27_combout\,
	datad => \LessThan19~4_combout\,
	combout => \B~8_combout\);

-- Location: FF_X35_Y24_N5
\PIANOSPEAKER|CLK_494HZ\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \PIANOSPEAKER|CLK_494HZ~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PIANOSPEAKER|CLK_494HZ~q\);

-- Location: LCCOMB_X22_Y11_N8
\PIANOSPEAKER|SPEK~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PIANOSPEAKER|SPEK~0_combout\ = (\PIANOSPEAKER|CLK_494HZ~q\ & (((!\DERE|Q2~q\) # (!\DERE|Q1~q\)) # (!\DERE|Q3~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DERE|Q3~q\,
	datab => \DERE|Q1~q\,
	datac => \DERE|Q2~q\,
	datad => \PIANOSPEAKER|CLK_494HZ~q\,
	combout => \PIANOSPEAKER|SPEK~0_combout\);

-- Location: FF_X17_Y5_N27
\PIANOSPEAKER|CLK_587HZ\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \PIANOSPEAKER|CLK_587HZ~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PIANOSPEAKER|CLK_587HZ~q\);

-- Location: FF_X11_Y2_N25
\PIANOSPEAKER|CLK_698HZ\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \PIANOSPEAKER|CLK_698HZ~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PIANOSPEAKER|CLK_698HZ~q\);

-- Location: FF_X35_Y6_N1
\PIANOSPEAKER|CLK_784HZ\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \PIANOSPEAKER|CLK_784HZ~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PIANOSPEAKER|CLK_784HZ~q\);

-- Location: FF_X35_Y9_N9
\PIANOSPEAKER|CLK_523HZ\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \PIANOSPEAKER|CLK_523HZ~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PIANOSPEAKER|CLK_523HZ~q\);

-- Location: FF_X1_Y11_N23
\CLK100|C100HZ\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \CLK100|C100HZ~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CLK100|C100HZ~q\);

-- Location: FF_X22_Y17_N11
\FALLING_BLOCK_F1[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK|TEMPORAL~clkctrl_outclk\,
	d => \FALLING_BLOCK_F1~20_combout\,
	ena => \FALLING_BLOCK_F1[10]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => FALLING_BLOCK_F1(17));

-- Location: LCCOMB_X22_Y17_N0
\LessThan37~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan37~3_combout\ = (FALLING_BLOCK_F1(22) & (FALLING_BLOCK_F1(23) & (FALLING_BLOCK_F1(24) & FALLING_BLOCK_F1(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => FALLING_BLOCK_F1(22),
	datab => FALLING_BLOCK_F1(23),
	datac => FALLING_BLOCK_F1(24),
	datad => FALLING_BLOCK_F1(21),
	combout => \LessThan37~3_combout\);

-- Location: LCCOMB_X24_Y17_N10
\LessThan37~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan37~5_combout\ = (FALLING_BLOCK_F1(27) & (FALLING_BLOCK_F1(25) & (FALLING_BLOCK_F1(28) & FALLING_BLOCK_F1(26))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => FALLING_BLOCK_F1(27),
	datab => FALLING_BLOCK_F1(25),
	datac => FALLING_BLOCK_F1(28),
	datad => FALLING_BLOCK_F1(26),
	combout => \LessThan37~5_combout\);

-- Location: FF_X22_Y16_N1
\FALLING_BLOCK_F1[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK|TEMPORAL~clkctrl_outclk\,
	d => \FALLING_BLOCK_F1[31]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => FALLING_BLOCK_F1(31));

-- Location: LCCOMB_X15_Y14_N10
\Equal0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~3_combout\ = (COUNTER(13) & (COUNTER(14) & (COUNTER(15) & !COUNTER(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => COUNTER(13),
	datab => COUNTER(14),
	datac => COUNTER(15),
	datad => COUNTER(12),
	combout => \Equal0~3_combout\);

-- Location: LCCOMB_X15_Y13_N10
\Equal0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~5_combout\ = (COUNTER(16) & (!COUNTER(18) & (COUNTER(17) & COUNTER(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => COUNTER(16),
	datab => COUNTER(18),
	datac => COUNTER(17),
	datad => COUNTER(19),
	combout => \Equal0~5_combout\);

-- Location: FF_X14_Y13_N13
\COUNTER[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK|TEMPORAL~clkctrl_outclk\,
	d => \Add6~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => COUNTER(22));

-- Location: FF_X14_Y13_N31
\COUNTER[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK|TEMPORAL~clkctrl_outclk\,
	d => \Add6~62_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => COUNTER(31));

-- Location: FF_X21_Y16_N31
\FALLING_BLOCK_I1[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK|TEMPORAL~clkctrl_outclk\,
	d => \Add4~77_combout\,
	ena => \FALLING_BLOCK_I1[10]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => FALLING_BLOCK_I1(26));

-- Location: LCCOMB_X21_Y16_N16
\LessThan39~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan39~0_combout\ = (((!FALLING_BLOCK_I1(25)) # (!FALLING_BLOCK_I1(28))) # (!FALLING_BLOCK_I1(27))) # (!FALLING_BLOCK_I1(26))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => FALLING_BLOCK_I1(26),
	datab => FALLING_BLOCK_I1(27),
	datac => FALLING_BLOCK_I1(28),
	datad => FALLING_BLOCK_I1(25),
	combout => \LessThan39~0_combout\);

-- Location: LCCOMB_X19_Y17_N12
\LessThan39~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan39~2_combout\ = (((!FALLING_BLOCK_I1(9)) # (!FALLING_BLOCK_I1(10))) # (!FALLING_BLOCK_I1(11))) # (!FALLING_BLOCK_I1(12))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => FALLING_BLOCK_I1(12),
	datab => FALLING_BLOCK_I1(11),
	datac => FALLING_BLOCK_I1(10),
	datad => FALLING_BLOCK_I1(9),
	combout => \LessThan39~2_combout\);

-- Location: FF_X19_Y17_N9
\FALLING_BLOCK_I1[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK|TEMPORAL~clkctrl_outclk\,
	d => \Add4~87_combout\,
	ena => \FALLING_BLOCK_I1[10]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => FALLING_BLOCK_I1(16));

-- Location: LCCOMB_X22_Y18_N2
\LessThan36~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan36~0_combout\ = (FALLING_BLOCK_F1(5)) # ((!FALLING_BLOCK_F1(2) & ((FALLING_BLOCK_F1(0)) # (!FALLING_BLOCK_F1(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => FALLING_BLOCK_F1(1),
	datab => FALLING_BLOCK_F1(0),
	datac => FALLING_BLOCK_F1(5),
	datad => FALLING_BLOCK_F1(2),
	combout => \LessThan36~0_combout\);

-- Location: LCCOMB_X22_Y17_N6
\LessThan36~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan36~5_combout\ = (FALLING_BLOCK_F1(16)) # ((FALLING_BLOCK_F1(18)) # ((FALLING_BLOCK_F1(19)) # (FALLING_BLOCK_F1(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => FALLING_BLOCK_F1(16),
	datab => FALLING_BLOCK_F1(18),
	datac => FALLING_BLOCK_F1(19),
	datad => FALLING_BLOCK_F1(17),
	combout => \LessThan36~5_combout\);

-- Location: LCCOMB_X22_Y17_N30
\Add4~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add4~23_combout\ = (!\Add4~12_combout\ & (((\FALLING_BLOCK_F1[3]~0_combout\ & \FALLING_BLOCK_I1[28]~0_combout\)) # (!\FALLING_BLOCK_F1[31]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FALLING_BLOCK_F1[3]~0_combout\,
	datab => \FALLING_BLOCK_I1[28]~0_combout\,
	datac => \FALLING_BLOCK_F1[31]~2_combout\,
	datad => \Add4~12_combout\,
	combout => \Add4~23_combout\);

-- Location: LCCOMB_X21_Y17_N30
\Add4~29\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add4~29_combout\ = (!\Add4~0_combout\ & (((\FALLING_BLOCK_F1[3]~0_combout\ & \FALLING_BLOCK_I1[28]~0_combout\)) # (!\FALLING_BLOCK_F1[31]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add4~0_combout\,
	datab => \FALLING_BLOCK_F1[3]~0_combout\,
	datac => \FALLING_BLOCK_I1[28]~0_combout\,
	datad => \FALLING_BLOCK_F1[31]~2_combout\,
	combout => \Add4~29_combout\);

-- Location: LCCOMB_X17_Y13_N8
\LessThan42~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan42~0_combout\ = (FALLING_BLOCK_F2(9) & (FALLING_BLOCK_F2(10) & (FALLING_BLOCK_F2(12) & FALLING_BLOCK_F2(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => FALLING_BLOCK_F2(9),
	datab => FALLING_BLOCK_F2(10),
	datac => FALLING_BLOCK_F2(12),
	datad => FALLING_BLOCK_F2(11),
	combout => \LessThan42~0_combout\);

-- Location: FF_X17_Y12_N23
\FALLING_BLOCK_F2[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK|TEMPORAL~clkctrl_outclk\,
	d => \FALLING_BLOCK_F2~26_combout\,
	ena => \FALLING_BLOCK_F2[30]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => FALLING_BLOCK_F2(20));

-- Location: FF_X20_Y12_N31
\FALLING_BLOCK_F2[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK|TEMPORAL~clkctrl_outclk\,
	d => \FALLING_BLOCK_F2[29]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => FALLING_BLOCK_F2(29));

-- Location: FF_X16_Y13_N21
\FALLING_BLOCK_I2[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK|TEMPORAL~clkctrl_outclk\,
	d => \Add5~76_combout\,
	ena => \FALLING_BLOCK_I2[10]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => FALLING_BLOCK_I2(25));

-- Location: FF_X16_Y13_N19
\FALLING_BLOCK_I2[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK|TEMPORAL~clkctrl_outclk\,
	d => \Add5~77_combout\,
	ena => \FALLING_BLOCK_I2[10]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => FALLING_BLOCK_I2(26));

-- Location: FF_X16_Y13_N5
\FALLING_BLOCK_I2[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK|TEMPORAL~clkctrl_outclk\,
	d => \Add5~78_combout\,
	ena => \FALLING_BLOCK_I2[10]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => FALLING_BLOCK_I2(27));

-- Location: FF_X16_Y13_N23
\FALLING_BLOCK_I2[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK|TEMPORAL~clkctrl_outclk\,
	d => \Add5~79_combout\,
	ena => \FALLING_BLOCK_I2[10]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => FALLING_BLOCK_I2(28));

-- Location: LCCOMB_X16_Y13_N12
\LessThan44~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan44~0_combout\ = (((!FALLING_BLOCK_I2(25)) # (!FALLING_BLOCK_I2(26))) # (!FALLING_BLOCK_I2(27))) # (!FALLING_BLOCK_I2(28))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => FALLING_BLOCK_I2(28),
	datab => FALLING_BLOCK_I2(27),
	datac => FALLING_BLOCK_I2(26),
	datad => FALLING_BLOCK_I2(25),
	combout => \LessThan44~0_combout\);

-- Location: LCCOMB_X17_Y14_N4
\LessThan44~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan44~2_combout\ = (((!FALLING_BLOCK_I2(9)) # (!FALLING_BLOCK_I2(11))) # (!FALLING_BLOCK_I2(12))) # (!FALLING_BLOCK_I2(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => FALLING_BLOCK_I2(10),
	datab => FALLING_BLOCK_I2(12),
	datac => FALLING_BLOCK_I2(11),
	datad => FALLING_BLOCK_I2(9),
	combout => \LessThan44~2_combout\);

-- Location: FF_X16_Y13_N7
\FALLING_BLOCK_I2[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK|TEMPORAL~clkctrl_outclk\,
	d => \Add5~85_combout\,
	ena => \FALLING_BLOCK_I2[10]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => FALLING_BLOCK_I2(14));

-- Location: LCCOMB_X16_Y13_N24
\LessThan44~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan44~3_combout\ = (((!FALLING_BLOCK_I2(15)) # (!FALLING_BLOCK_I2(16))) # (!FALLING_BLOCK_I2(13))) # (!FALLING_BLOCK_I2(14))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => FALLING_BLOCK_I2(14),
	datab => FALLING_BLOCK_I2(13),
	datac => FALLING_BLOCK_I2(16),
	datad => FALLING_BLOCK_I2(15),
	combout => \LessThan44~3_combout\);

-- Location: FF_X17_Y14_N7
\FALLING_BLOCK_I2[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK|TEMPORAL~clkctrl_outclk\,
	d => \Add5~88_combout\,
	ena => \FALLING_BLOCK_I2[10]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => FALLING_BLOCK_I2(17));

-- Location: FF_X17_Y14_N21
\FALLING_BLOCK_I2[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK|TEMPORAL~clkctrl_outclk\,
	d => \Add5~89_combout\,
	ena => \FALLING_BLOCK_I2[10]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => FALLING_BLOCK_I2(18));

-- Location: LCCOMB_X17_Y14_N30
\LessThan44~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan44~4_combout\ = (((!FALLING_BLOCK_I2(17)) # (!FALLING_BLOCK_I2(20))) # (!FALLING_BLOCK_I2(18))) # (!FALLING_BLOCK_I2(19))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => FALLING_BLOCK_I2(19),
	datab => FALLING_BLOCK_I2(18),
	datac => FALLING_BLOCK_I2(20),
	datad => FALLING_BLOCK_I2(17),
	combout => \LessThan44~4_combout\);

-- Location: LCCOMB_X17_Y14_N16
\LessThan44~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan44~5_combout\ = (((!FALLING_BLOCK_I2(23)) # (!FALLING_BLOCK_I2(24))) # (!FALLING_BLOCK_I2(22))) # (!FALLING_BLOCK_I2(21))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => FALLING_BLOCK_I2(21),
	datab => FALLING_BLOCK_I2(22),
	datac => FALLING_BLOCK_I2(24),
	datad => FALLING_BLOCK_I2(23),
	combout => \LessThan44~5_combout\);

-- Location: LCCOMB_X17_Y14_N14
\LessThan44~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan44~6_combout\ = (\LessThan44~3_combout\) # ((\LessThan44~2_combout\) # ((\LessThan44~4_combout\) # (\LessThan44~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan44~3_combout\,
	datab => \LessThan44~2_combout\,
	datac => \LessThan44~4_combout\,
	datad => \LessThan44~5_combout\,
	combout => \LessThan44~6_combout\);

-- Location: LCCOMB_X17_Y13_N26
\FALLING_BLOCK_F2~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \FALLING_BLOCK_F2~15_combout\ = (\Add2~2_combout\) # (!\FALLING_BLOCK_F2[25]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add2~2_combout\,
	datac => \FALLING_BLOCK_F2[25]~4_combout\,
	combout => \FALLING_BLOCK_F2~15_combout\);

-- Location: LCCOMB_X20_Y12_N6
\LessThan41~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan41~3_combout\ = (FALLING_BLOCK_F2(28)) # ((FALLING_BLOCK_F2(29)) # (FALLING_BLOCK_F2(30)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => FALLING_BLOCK_F2(28),
	datac => FALLING_BLOCK_F2(29),
	datad => FALLING_BLOCK_F2(30),
	combout => \LessThan41~3_combout\);

-- Location: LCCOMB_X17_Y12_N26
\LessThan41~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan41~6_combout\ = (FALLING_BLOCK_F2(20)) # ((FALLING_BLOCK_F2(21)) # ((FALLING_BLOCK_F2(22)) # (FALLING_BLOCK_F2(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => FALLING_BLOCK_F2(20),
	datab => FALLING_BLOCK_F2(21),
	datac => FALLING_BLOCK_F2(22),
	datad => FALLING_BLOCK_F2(23),
	combout => \LessThan41~6_combout\);

-- Location: LCCOMB_X17_Y15_N6
\Add5~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add5~24_combout\ = (!\Add5~10_combout\ & (((\FALLING_BLOCK_I2[20]~0_combout\ & \FALLING_BLOCK_F2[25]~4_combout\)) # (!\FALLING_BLOCK_F2[31]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add5~10_combout\,
	datab => \FALLING_BLOCK_I2[20]~0_combout\,
	datac => \FALLING_BLOCK_F2[25]~4_combout\,
	datad => \FALLING_BLOCK_F2[31]~6_combout\,
	combout => \Add5~24_combout\);

-- Location: FF_X23_Y13_N1
\FALLING_BLOCK_F[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK|TEMPORAL~clkctrl_outclk\,
	d => \FALLING_BLOCK_F~16_combout\,
	ena => \FALLING_BLOCK_F[10]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => FALLING_BLOCK_F(25));

-- Location: FF_X23_Y13_N15
\FALLING_BLOCK_F[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK|TEMPORAL~clkctrl_outclk\,
	d => \FALLING_BLOCK_F~19_combout\,
	ena => \FALLING_BLOCK_F[10]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => FALLING_BLOCK_F(28));

-- Location: LCCOMB_X23_Y13_N16
\LessThan31~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan31~0_combout\ = (!FALLING_BLOCK_F(26) & (!FALLING_BLOCK_F(28) & (!FALLING_BLOCK_F(27) & !FALLING_BLOCK_F(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => FALLING_BLOCK_F(26),
	datab => FALLING_BLOCK_F(28),
	datac => FALLING_BLOCK_F(27),
	datad => FALLING_BLOCK_F(25),
	combout => \LessThan31~0_combout\);

-- Location: LCCOMB_X23_Y16_N10
\LessThan31~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan31~1_combout\ = (!FALLING_BLOCK_F(9) & !FALLING_BLOCK_F(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => FALLING_BLOCK_F(9),
	datad => FALLING_BLOCK_F(10),
	combout => \LessThan31~1_combout\);

-- Location: FF_X24_Y16_N7
\FALLING_BLOCK_F[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK|TEMPORAL~clkctrl_outclk\,
	d => \FALLING_BLOCK_F~21_combout\,
	ena => \FALLING_BLOCK_F[10]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => FALLING_BLOCK_F(14));

-- Location: LCCOMB_X24_Y15_N8
\LessThan32~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan32~0_combout\ = (((!FALLING_BLOCK_F(2)) # (!FALLING_BLOCK_F(4))) # (!FALLING_BLOCK_F(1))) # (!FALLING_BLOCK_F(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => FALLING_BLOCK_F(3),
	datab => FALLING_BLOCK_F(1),
	datac => FALLING_BLOCK_F(4),
	datad => FALLING_BLOCK_F(2),
	combout => \LessThan32~0_combout\);

-- Location: LCCOMB_X24_Y15_N30
\LessThan32~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan32~1_combout\ = (!FALLING_BLOCK_F(7) & (((!FALLING_BLOCK_F(5) & \LessThan32~0_combout\)) # (!FALLING_BLOCK_F(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => FALLING_BLOCK_F(7),
	datab => FALLING_BLOCK_F(5),
	datac => FALLING_BLOCK_F(6),
	datad => \LessThan32~0_combout\,
	combout => \LessThan32~1_combout\);

-- Location: LCCOMB_X23_Y15_N20
\LessThan34~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan34~2_combout\ = (FALLING_BLOCK_I(10)) # ((FALLING_BLOCK_I(11)) # ((FALLING_BLOCK_I(9)) # (FALLING_BLOCK_I(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => FALLING_BLOCK_I(10),
	datab => FALLING_BLOCK_I(11),
	datac => FALLING_BLOCK_I(9),
	datad => FALLING_BLOCK_I(12),
	combout => \LessThan34~2_combout\);

-- Location: LCCOMB_X22_Y14_N16
\LessThan34~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan34~3_combout\ = (FALLING_BLOCK_I(14)) # ((FALLING_BLOCK_I(15)) # ((FALLING_BLOCK_I(13)) # (FALLING_BLOCK_I(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => FALLING_BLOCK_I(14),
	datab => FALLING_BLOCK_I(15),
	datac => FALLING_BLOCK_I(13),
	datad => FALLING_BLOCK_I(16),
	combout => \LessThan34~3_combout\);

-- Location: LCCOMB_X23_Y12_N24
\LessThan34~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan34~4_combout\ = (FALLING_BLOCK_I(20)) # ((FALLING_BLOCK_I(19)) # ((FALLING_BLOCK_I(18)) # (FALLING_BLOCK_I(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => FALLING_BLOCK_I(20),
	datab => FALLING_BLOCK_I(19),
	datac => FALLING_BLOCK_I(18),
	datad => FALLING_BLOCK_I(17),
	combout => \LessThan34~4_combout\);

-- Location: LCCOMB_X23_Y12_N26
\LessThan34~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan34~5_combout\ = (FALLING_BLOCK_I(22)) # ((FALLING_BLOCK_I(23)) # ((FALLING_BLOCK_I(24)) # (FALLING_BLOCK_I(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => FALLING_BLOCK_I(22),
	datab => FALLING_BLOCK_I(23),
	datac => FALLING_BLOCK_I(24),
	datad => FALLING_BLOCK_I(21),
	combout => \LessThan34~5_combout\);

-- Location: LCCOMB_X23_Y15_N30
\LessThan34~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan34~6_combout\ = (\LessThan34~3_combout\) # ((\LessThan34~4_combout\) # ((\LessThan34~5_combout\) # (\LessThan34~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan34~3_combout\,
	datab => \LessThan34~4_combout\,
	datac => \LessThan34~5_combout\,
	datad => \LessThan34~2_combout\,
	combout => \LessThan34~6_combout\);

-- Location: FF_X23_Y13_N11
DRAW1 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK|TEMPORAL~clkctrl_outclk\,
	d => \DRAW1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DRAW1~q\);

-- Location: LCCOMB_X11_Y11_N10
\PIANOSPEAKER|LessThan0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PIANOSPEAKER|LessThan0~0_combout\ = ((!\PIANOSPEAKER|COUNTER440\(11)) # (!\PIANOSPEAKER|COUNTER440\(12))) # (!\PIANOSPEAKER|COUNTER440\(13))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PIANOSPEAKER|COUNTER440\(13),
	datab => \PIANOSPEAKER|COUNTER440\(12),
	datad => \PIANOSPEAKER|COUNTER440\(11),
	combout => \PIANOSPEAKER|LessThan0~0_combout\);

-- Location: LCCOMB_X11_Y10_N0
\PIANOSPEAKER|LessThan0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PIANOSPEAKER|LessThan0~5_combout\ = (!\PIANOSPEAKER|COUNTER440\(20) & (!\PIANOSPEAKER|COUNTER440\(19) & (!\PIANOSPEAKER|COUNTER440\(18) & !\PIANOSPEAKER|COUNTER440\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PIANOSPEAKER|COUNTER440\(20),
	datab => \PIANOSPEAKER|COUNTER440\(19),
	datac => \PIANOSPEAKER|COUNTER440\(18),
	datad => \PIANOSPEAKER|COUNTER440\(17),
	combout => \PIANOSPEAKER|LessThan0~5_combout\);

-- Location: LCCOMB_X35_Y24_N10
\PIANOSPEAKER|LessThan1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PIANOSPEAKER|LessThan1~0_combout\ = (((!\PIANOSPEAKER|COUNTER494\(3)) # (!\PIANOSPEAKER|COUNTER494\(1))) # (!\PIANOSPEAKER|COUNTER494\(4))) # (!\PIANOSPEAKER|COUNTER494\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PIANOSPEAKER|COUNTER494\(2),
	datab => \PIANOSPEAKER|COUNTER494\(4),
	datac => \PIANOSPEAKER|COUNTER494\(1),
	datad => \PIANOSPEAKER|COUNTER494\(3),
	combout => \PIANOSPEAKER|LessThan1~0_combout\);

-- Location: LCCOMB_X35_Y24_N20
\PIANOSPEAKER|LessThan1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PIANOSPEAKER|LessThan1~1_combout\ = (!\PIANOSPEAKER|COUNTER494\(7) & (((!\PIANOSPEAKER|COUNTER494\(5) & \PIANOSPEAKER|LessThan1~0_combout\)) # (!\PIANOSPEAKER|COUNTER494\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PIANOSPEAKER|COUNTER494\(7),
	datab => \PIANOSPEAKER|COUNTER494\(5),
	datac => \PIANOSPEAKER|COUNTER494\(6),
	datad => \PIANOSPEAKER|LessThan1~0_combout\,
	combout => \PIANOSPEAKER|LessThan1~1_combout\);

-- Location: LCCOMB_X35_Y24_N6
\PIANOSPEAKER|LessThan1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PIANOSPEAKER|LessThan1~2_combout\ = (!\PIANOSPEAKER|COUNTER494\(10) & (((\PIANOSPEAKER|LessThan1~1_combout\) # (!\PIANOSPEAKER|COUNTER494\(8))) # (!\PIANOSPEAKER|COUNTER494\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PIANOSPEAKER|COUNTER494\(10),
	datab => \PIANOSPEAKER|COUNTER494\(9),
	datac => \PIANOSPEAKER|COUNTER494\(8),
	datad => \PIANOSPEAKER|LessThan1~1_combout\,
	combout => \PIANOSPEAKER|LessThan1~2_combout\);

-- Location: LCCOMB_X35_Y24_N24
\PIANOSPEAKER|LessThan1~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PIANOSPEAKER|LessThan1~3_combout\ = (\PIANOSPEAKER|COUNTER494\(14)) # ((\PIANOSPEAKER|COUNTER494\(12)) # ((\PIANOSPEAKER|COUNTER494\(11) & !\PIANOSPEAKER|LessThan1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PIANOSPEAKER|COUNTER494\(14),
	datab => \PIANOSPEAKER|COUNTER494\(12),
	datac => \PIANOSPEAKER|COUNTER494\(11),
	datad => \PIANOSPEAKER|LessThan1~2_combout\,
	combout => \PIANOSPEAKER|LessThan1~3_combout\);

-- Location: LCCOMB_X35_Y24_N18
\PIANOSPEAKER|LessThan1~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PIANOSPEAKER|LessThan1~4_combout\ = (((!\PIANOSPEAKER|COUNTER494\(13) & !\PIANOSPEAKER|LessThan1~3_combout\)) # (!\PIANOSPEAKER|COUNTER494\(15))) # (!\PIANOSPEAKER|COUNTER494\(16))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PIANOSPEAKER|COUNTER494\(16),
	datab => \PIANOSPEAKER|COUNTER494\(13),
	datac => \PIANOSPEAKER|COUNTER494\(15),
	datad => \PIANOSPEAKER|LessThan1~3_combout\,
	combout => \PIANOSPEAKER|LessThan1~4_combout\);

-- Location: LCCOMB_X35_Y24_N8
\PIANOSPEAKER|LessThan1~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PIANOSPEAKER|LessThan1~5_combout\ = (!\PIANOSPEAKER|COUNTER494\(19) & (!\PIANOSPEAKER|COUNTER494\(18) & (!\PIANOSPEAKER|COUNTER494\(17) & !\PIANOSPEAKER|COUNTER494\(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PIANOSPEAKER|COUNTER494\(19),
	datab => \PIANOSPEAKER|COUNTER494\(18),
	datac => \PIANOSPEAKER|COUNTER494\(17),
	datad => \PIANOSPEAKER|COUNTER494\(20),
	combout => \PIANOSPEAKER|LessThan1~5_combout\);

-- Location: LCCOMB_X35_Y24_N26
\PIANOSPEAKER|LessThan1~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PIANOSPEAKER|LessThan1~6_combout\ = (!\PIANOSPEAKER|COUNTER494\(23) & (!\PIANOSPEAKER|COUNTER494\(21) & (!\PIANOSPEAKER|COUNTER494\(22) & !\PIANOSPEAKER|COUNTER494\(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PIANOSPEAKER|COUNTER494\(23),
	datab => \PIANOSPEAKER|COUNTER494\(21),
	datac => \PIANOSPEAKER|COUNTER494\(22),
	datad => \PIANOSPEAKER|COUNTER494\(24),
	combout => \PIANOSPEAKER|LessThan1~6_combout\);

-- Location: LCCOMB_X35_Y24_N16
\PIANOSPEAKER|LessThan1~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PIANOSPEAKER|LessThan1~7_combout\ = (!\PIANOSPEAKER|COUNTER494\(27) & (!\PIANOSPEAKER|COUNTER494\(28) & (!\PIANOSPEAKER|COUNTER494\(26) & !\PIANOSPEAKER|COUNTER494\(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PIANOSPEAKER|COUNTER494\(27),
	datab => \PIANOSPEAKER|COUNTER494\(28),
	datac => \PIANOSPEAKER|COUNTER494\(26),
	datad => \PIANOSPEAKER|COUNTER494\(25),
	combout => \PIANOSPEAKER|LessThan1~7_combout\);

-- Location: LCCOMB_X35_Y24_N14
\PIANOSPEAKER|LessThan1~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PIANOSPEAKER|LessThan1~8_combout\ = (!\PIANOSPEAKER|COUNTER494\(29) & (!\PIANOSPEAKER|COUNTER494\(30) & \PIANOSPEAKER|LessThan1~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PIANOSPEAKER|COUNTER494\(29),
	datac => \PIANOSPEAKER|COUNTER494\(30),
	datad => \PIANOSPEAKER|LessThan1~7_combout\,
	combout => \PIANOSPEAKER|LessThan1~8_combout\);

-- Location: LCCOMB_X35_Y24_N28
\PIANOSPEAKER|LessThan1~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PIANOSPEAKER|LessThan1~9_combout\ = (\PIANOSPEAKER|LessThan1~6_combout\ & (\PIANOSPEAKER|LessThan1~5_combout\ & (\PIANOSPEAKER|LessThan1~8_combout\ & \PIANOSPEAKER|LessThan1~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PIANOSPEAKER|LessThan1~6_combout\,
	datab => \PIANOSPEAKER|LessThan1~5_combout\,
	datac => \PIANOSPEAKER|LessThan1~8_combout\,
	datad => \PIANOSPEAKER|LessThan1~4_combout\,
	combout => \PIANOSPEAKER|LessThan1~9_combout\);

-- Location: LCCOMB_X35_Y24_N4
\PIANOSPEAKER|CLK_494HZ~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PIANOSPEAKER|CLK_494HZ~0_combout\ = \PIANOSPEAKER|CLK_494HZ~q\ $ (((!\PIANOSPEAKER|COUNTER494\(31) & !\PIANOSPEAKER|LessThan1~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PIANOSPEAKER|COUNTER494\(31),
	datac => \PIANOSPEAKER|CLK_494HZ~q\,
	datad => \PIANOSPEAKER|LessThan1~9_combout\,
	combout => \PIANOSPEAKER|CLK_494HZ~0_combout\);

-- Location: LCCOMB_X17_Y4_N0
\PIANOSPEAKER|LessThan3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PIANOSPEAKER|LessThan3~0_combout\ = (!\PIANOSPEAKER|COUNTER587\(22) & (!\PIANOSPEAKER|COUNTER587\(21) & (!\PIANOSPEAKER|COUNTER587\(24) & !\PIANOSPEAKER|COUNTER587\(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PIANOSPEAKER|COUNTER587\(22),
	datab => \PIANOSPEAKER|COUNTER587\(21),
	datac => \PIANOSPEAKER|COUNTER587\(24),
	datad => \PIANOSPEAKER|COUNTER587\(23),
	combout => \PIANOSPEAKER|LessThan3~0_combout\);

-- Location: LCCOMB_X17_Y5_N16
\PIANOSPEAKER|LessThan3~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PIANOSPEAKER|LessThan3~1_combout\ = (((!\PIANOSPEAKER|COUNTER587\(1) & !\PIANOSPEAKER|COUNTER587\(2))) # (!\PIANOSPEAKER|COUNTER587\(4))) # (!\PIANOSPEAKER|COUNTER587\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PIANOSPEAKER|COUNTER587\(1),
	datab => \PIANOSPEAKER|COUNTER587\(2),
	datac => \PIANOSPEAKER|COUNTER587\(3),
	datad => \PIANOSPEAKER|COUNTER587\(4),
	combout => \PIANOSPEAKER|LessThan3~1_combout\);

-- Location: LCCOMB_X17_Y5_N18
\PIANOSPEAKER|LessThan3~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PIANOSPEAKER|LessThan3~2_combout\ = ((!\PIANOSPEAKER|COUNTER587\(6) & ((\PIANOSPEAKER|LessThan3~1_combout\) # (!\PIANOSPEAKER|COUNTER587\(5))))) # (!\PIANOSPEAKER|COUNTER587\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PIANOSPEAKER|COUNTER587\(6),
	datab => \PIANOSPEAKER|COUNTER587\(7),
	datac => \PIANOSPEAKER|COUNTER587\(5),
	datad => \PIANOSPEAKER|LessThan3~1_combout\,
	combout => \PIANOSPEAKER|LessThan3~2_combout\);

-- Location: LCCOMB_X17_Y5_N24
\PIANOSPEAKER|LessThan3~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PIANOSPEAKER|LessThan3~3_combout\ = (\PIANOSPEAKER|COUNTER587\(11) & ((\PIANOSPEAKER|COUNTER587\(8)) # ((\PIANOSPEAKER|COUNTER587\(9)) # (!\PIANOSPEAKER|LessThan3~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PIANOSPEAKER|COUNTER587\(8),
	datab => \PIANOSPEAKER|COUNTER587\(9),
	datac => \PIANOSPEAKER|COUNTER587\(11),
	datad => \PIANOSPEAKER|LessThan3~2_combout\,
	combout => \PIANOSPEAKER|LessThan3~3_combout\);

-- Location: LCCOMB_X17_Y5_N10
\PIANOSPEAKER|LessThan3~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PIANOSPEAKER|LessThan3~4_combout\ = (\PIANOSPEAKER|COUNTER587\(13)) # ((\PIANOSPEAKER|COUNTER587\(12)) # ((\PIANOSPEAKER|COUNTER587\(10) & \PIANOSPEAKER|LessThan3~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PIANOSPEAKER|COUNTER587\(13),
	datab => \PIANOSPEAKER|COUNTER587\(10),
	datac => \PIANOSPEAKER|COUNTER587\(12),
	datad => \PIANOSPEAKER|LessThan3~3_combout\,
	combout => \PIANOSPEAKER|LessThan3~4_combout\);

-- Location: LCCOMB_X17_Y5_N20
\PIANOSPEAKER|LessThan3~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PIANOSPEAKER|LessThan3~5_combout\ = ((!\PIANOSPEAKER|COUNTER587\(15) & ((!\PIANOSPEAKER|LessThan3~4_combout\) # (!\PIANOSPEAKER|COUNTER587\(14))))) # (!\PIANOSPEAKER|COUNTER587\(16))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PIANOSPEAKER|COUNTER587\(16),
	datab => \PIANOSPEAKER|COUNTER587\(14),
	datac => \PIANOSPEAKER|COUNTER587\(15),
	datad => \PIANOSPEAKER|LessThan3~4_combout\,
	combout => \PIANOSPEAKER|LessThan3~5_combout\);

-- Location: LCCOMB_X17_Y5_N6
\PIANOSPEAKER|LessThan3~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PIANOSPEAKER|LessThan3~6_combout\ = (!\PIANOSPEAKER|COUNTER587\(26) & (!\PIANOSPEAKER|COUNTER587\(27) & (!\PIANOSPEAKER|COUNTER587\(28) & !\PIANOSPEAKER|COUNTER587\(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PIANOSPEAKER|COUNTER587\(26),
	datab => \PIANOSPEAKER|COUNTER587\(27),
	datac => \PIANOSPEAKER|COUNTER587\(28),
	datad => \PIANOSPEAKER|COUNTER587\(25),
	combout => \PIANOSPEAKER|LessThan3~6_combout\);

-- Location: LCCOMB_X17_Y5_N8
\PIANOSPEAKER|LessThan3~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PIANOSPEAKER|LessThan3~7_combout\ = (\PIANOSPEAKER|COUNTER587\(29)) # ((\PIANOSPEAKER|COUNTER587\(19)) # ((\PIANOSPEAKER|COUNTER587\(18)) # (\PIANOSPEAKER|COUNTER587\(30))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PIANOSPEAKER|COUNTER587\(29),
	datab => \PIANOSPEAKER|COUNTER587\(19),
	datac => \PIANOSPEAKER|COUNTER587\(18),
	datad => \PIANOSPEAKER|COUNTER587\(30),
	combout => \PIANOSPEAKER|LessThan3~7_combout\);

-- Location: LCCOMB_X17_Y5_N22
\PIANOSPEAKER|LessThan3~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PIANOSPEAKER|LessThan3~8_combout\ = (!\PIANOSPEAKER|COUNTER587\(20) & (!\PIANOSPEAKER|COUNTER587\(17) & (!\PIANOSPEAKER|LessThan3~7_combout\ & \PIANOSPEAKER|LessThan3~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PIANOSPEAKER|COUNTER587\(20),
	datab => \PIANOSPEAKER|COUNTER587\(17),
	datac => \PIANOSPEAKER|LessThan3~7_combout\,
	datad => \PIANOSPEAKER|LessThan3~6_combout\,
	combout => \PIANOSPEAKER|LessThan3~8_combout\);

-- Location: LCCOMB_X17_Y5_N4
\PIANOSPEAKER|LessThan3~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PIANOSPEAKER|LessThan3~9_combout\ = (!\PIANOSPEAKER|COUNTER587\(31) & (((!\PIANOSPEAKER|LessThan3~5_combout\) # (!\PIANOSPEAKER|LessThan3~8_combout\)) # (!\PIANOSPEAKER|LessThan3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PIANOSPEAKER|COUNTER587\(31),
	datab => \PIANOSPEAKER|LessThan3~0_combout\,
	datac => \PIANOSPEAKER|LessThan3~8_combout\,
	datad => \PIANOSPEAKER|LessThan3~5_combout\,
	combout => \PIANOSPEAKER|LessThan3~9_combout\);

-- Location: LCCOMB_X17_Y5_N26
\PIANOSPEAKER|CLK_587HZ~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PIANOSPEAKER|CLK_587HZ~0_combout\ = \PIANOSPEAKER|LessThan3~9_combout\ $ (\PIANOSPEAKER|CLK_587HZ~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PIANOSPEAKER|LessThan3~9_combout\,
	datac => \PIANOSPEAKER|CLK_587HZ~q\,
	combout => \PIANOSPEAKER|CLK_587HZ~0_combout\);

-- Location: LCCOMB_X11_Y3_N2
\PIANOSPEAKER|LessThan4~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PIANOSPEAKER|LessThan4~7_combout\ = (!\PIANOSPEAKER|COUNTER659\(29) & !\PIANOSPEAKER|COUNTER659\(30))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \PIANOSPEAKER|COUNTER659\(29),
	datad => \PIANOSPEAKER|COUNTER659\(30),
	combout => \PIANOSPEAKER|LessThan4~7_combout\);

-- Location: LCCOMB_X11_Y1_N24
\PIANOSPEAKER|LessThan5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PIANOSPEAKER|LessThan5~0_combout\ = (!\PIANOSPEAKER|COUNTER698\(17) & (!\PIANOSPEAKER|COUNTER698\(19) & (!\PIANOSPEAKER|COUNTER698\(18) & !\PIANOSPEAKER|COUNTER698\(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PIANOSPEAKER|COUNTER698\(17),
	datab => \PIANOSPEAKER|COUNTER698\(19),
	datac => \PIANOSPEAKER|COUNTER698\(18),
	datad => \PIANOSPEAKER|COUNTER698\(20),
	combout => \PIANOSPEAKER|LessThan5~0_combout\);

-- Location: LCCOMB_X11_Y1_N22
\PIANOSPEAKER|LessThan5~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PIANOSPEAKER|LessThan5~1_combout\ = (!\PIANOSPEAKER|COUNTER698\(21) & (!\PIANOSPEAKER|COUNTER698\(23) & (!\PIANOSPEAKER|COUNTER698\(24) & !\PIANOSPEAKER|COUNTER698\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PIANOSPEAKER|COUNTER698\(21),
	datab => \PIANOSPEAKER|COUNTER698\(23),
	datac => \PIANOSPEAKER|COUNTER698\(24),
	datad => \PIANOSPEAKER|COUNTER698\(22),
	combout => \PIANOSPEAKER|LessThan5~1_combout\);

-- Location: LCCOMB_X11_Y1_N0
\PIANOSPEAKER|LessThan5~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PIANOSPEAKER|LessThan5~2_combout\ = (!\PIANOSPEAKER|COUNTER698\(28) & (!\PIANOSPEAKER|COUNTER698\(27) & (!\PIANOSPEAKER|COUNTER698\(26) & !\PIANOSPEAKER|COUNTER698\(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PIANOSPEAKER|COUNTER698\(28),
	datab => \PIANOSPEAKER|COUNTER698\(27),
	datac => \PIANOSPEAKER|COUNTER698\(26),
	datad => \PIANOSPEAKER|COUNTER698\(25),
	combout => \PIANOSPEAKER|LessThan5~2_combout\);

-- Location: LCCOMB_X11_Y1_N10
\PIANOSPEAKER|LessThan5~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PIANOSPEAKER|LessThan5~3_combout\ = (!\PIANOSPEAKER|COUNTER698\(29) & !\PIANOSPEAKER|COUNTER698\(30))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \PIANOSPEAKER|COUNTER698\(29),
	datad => \PIANOSPEAKER|COUNTER698\(30),
	combout => \PIANOSPEAKER|LessThan5~3_combout\);

-- Location: LCCOMB_X11_Y2_N26
\PIANOSPEAKER|LessThan5~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PIANOSPEAKER|LessThan5~4_combout\ = (\PIANOSPEAKER|LessThan5~2_combout\ & (\PIANOSPEAKER|LessThan5~1_combout\ & (\PIANOSPEAKER|LessThan5~0_combout\ & \PIANOSPEAKER|LessThan5~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PIANOSPEAKER|LessThan5~2_combout\,
	datab => \PIANOSPEAKER|LessThan5~1_combout\,
	datac => \PIANOSPEAKER|LessThan5~0_combout\,
	datad => \PIANOSPEAKER|LessThan5~3_combout\,
	combout => \PIANOSPEAKER|LessThan5~4_combout\);

-- Location: LCCOMB_X11_Y2_N20
\PIANOSPEAKER|LessThan5~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PIANOSPEAKER|LessThan5~5_combout\ = (((!\PIANOSPEAKER|COUNTER698\(6)) # (!\PIANOSPEAKER|COUNTER698\(8))) # (!\PIANOSPEAKER|COUNTER698\(9))) # (!\PIANOSPEAKER|COUNTER698\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PIANOSPEAKER|COUNTER698\(7),
	datab => \PIANOSPEAKER|COUNTER698\(9),
	datac => \PIANOSPEAKER|COUNTER698\(8),
	datad => \PIANOSPEAKER|COUNTER698\(6),
	combout => \PIANOSPEAKER|LessThan5~5_combout\);

-- Location: LCCOMB_X11_Y2_N22
\PIANOSPEAKER|LessThan5~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PIANOSPEAKER|LessThan5~6_combout\ = (!\PIANOSPEAKER|COUNTER698\(0) & (!\PIANOSPEAKER|COUNTER698\(3) & (!\PIANOSPEAKER|COUNTER698\(2) & !\PIANOSPEAKER|COUNTER698\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PIANOSPEAKER|COUNTER698\(0),
	datab => \PIANOSPEAKER|COUNTER698\(3),
	datac => \PIANOSPEAKER|COUNTER698\(2),
	datad => \PIANOSPEAKER|COUNTER698\(1),
	combout => \PIANOSPEAKER|LessThan5~6_combout\);

-- Location: LCCOMB_X11_Y2_N8
\PIANOSPEAKER|LessThan5~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PIANOSPEAKER|LessThan5~7_combout\ = (\PIANOSPEAKER|LessThan5~5_combout\) # ((!\PIANOSPEAKER|COUNTER698\(5) & ((\PIANOSPEAKER|LessThan5~6_combout\) # (!\PIANOSPEAKER|COUNTER698\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PIANOSPEAKER|COUNTER698\(5),
	datab => \PIANOSPEAKER|COUNTER698\(4),
	datac => \PIANOSPEAKER|LessThan5~6_combout\,
	datad => \PIANOSPEAKER|LessThan5~5_combout\,
	combout => \PIANOSPEAKER|LessThan5~7_combout\);

-- Location: LCCOMB_X11_Y2_N18
\PIANOSPEAKER|LessThan5~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PIANOSPEAKER|LessThan5~8_combout\ = ((!\PIANOSPEAKER|COUNTER698\(11) & ((\PIANOSPEAKER|LessThan5~7_combout\) # (!\PIANOSPEAKER|COUNTER698\(10))))) # (!\PIANOSPEAKER|COUNTER698\(12))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PIANOSPEAKER|COUNTER698\(10),
	datab => \PIANOSPEAKER|COUNTER698\(11),
	datac => \PIANOSPEAKER|LessThan5~7_combout\,
	datad => \PIANOSPEAKER|COUNTER698\(12),
	combout => \PIANOSPEAKER|LessThan5~8_combout\);

-- Location: LCCOMB_X11_Y2_N12
\PIANOSPEAKER|LessThan5~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PIANOSPEAKER|LessThan5~9_combout\ = (!\PIANOSPEAKER|COUNTER698\(13) & (!\PIANOSPEAKER|COUNTER698\(14) & (!\PIANOSPEAKER|COUNTER698\(15) & \PIANOSPEAKER|LessThan5~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PIANOSPEAKER|COUNTER698\(13),
	datab => \PIANOSPEAKER|COUNTER698\(14),
	datac => \PIANOSPEAKER|COUNTER698\(15),
	datad => \PIANOSPEAKER|LessThan5~8_combout\,
	combout => \PIANOSPEAKER|LessThan5~9_combout\);

-- Location: LCCOMB_X11_Y2_N30
\PIANOSPEAKER|LessThan5~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PIANOSPEAKER|LessThan5~10_combout\ = (!\PIANOSPEAKER|COUNTER698\(31) & (((\PIANOSPEAKER|COUNTER698\(16) & !\PIANOSPEAKER|LessThan5~9_combout\)) # (!\PIANOSPEAKER|LessThan5~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010101000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PIANOSPEAKER|COUNTER698\(31),
	datab => \PIANOSPEAKER|COUNTER698\(16),
	datac => \PIANOSPEAKER|LessThan5~4_combout\,
	datad => \PIANOSPEAKER|LessThan5~9_combout\,
	combout => \PIANOSPEAKER|LessThan5~10_combout\);

-- Location: LCCOMB_X11_Y2_N24
\PIANOSPEAKER|CLK_698HZ~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PIANOSPEAKER|CLK_698HZ~0_combout\ = \PIANOSPEAKER|LessThan5~10_combout\ $ (\PIANOSPEAKER|CLK_698HZ~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PIANOSPEAKER|LessThan5~10_combout\,
	datac => \PIANOSPEAKER|CLK_698HZ~q\,
	combout => \PIANOSPEAKER|CLK_698HZ~0_combout\);

-- Location: LCCOMB_X35_Y6_N22
\PIANOSPEAKER|LessThan6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PIANOSPEAKER|LessThan6~0_combout\ = (((!\PIANOSPEAKER|COUNTER784\(14)) # (!\PIANOSPEAKER|COUNTER784\(11))) # (!\PIANOSPEAKER|COUNTER784\(13))) # (!\PIANOSPEAKER|COUNTER784\(12))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PIANOSPEAKER|COUNTER784\(12),
	datab => \PIANOSPEAKER|COUNTER784\(13),
	datac => \PIANOSPEAKER|COUNTER784\(11),
	datad => \PIANOSPEAKER|COUNTER784\(14),
	combout => \PIANOSPEAKER|LessThan6~0_combout\);

-- Location: LCCOMB_X35_Y6_N16
\PIANOSPEAKER|LessThan6~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PIANOSPEAKER|LessThan6~1_combout\ = (((!\PIANOSPEAKER|COUNTER784\(3)) # (!\PIANOSPEAKER|COUNTER784\(2))) # (!\PIANOSPEAKER|COUNTER784\(0))) # (!\PIANOSPEAKER|COUNTER784\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PIANOSPEAKER|COUNTER784\(1),
	datab => \PIANOSPEAKER|COUNTER784\(0),
	datac => \PIANOSPEAKER|COUNTER784\(2),
	datad => \PIANOSPEAKER|COUNTER784\(3),
	combout => \PIANOSPEAKER|LessThan6~1_combout\);

-- Location: LCCOMB_X35_Y6_N10
\PIANOSPEAKER|LessThan6~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PIANOSPEAKER|LessThan6~2_combout\ = (\PIANOSPEAKER|COUNTER784\(5)) # ((\PIANOSPEAKER|COUNTER784\(6)) # ((\PIANOSPEAKER|COUNTER784\(4) & !\PIANOSPEAKER|LessThan6~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PIANOSPEAKER|COUNTER784\(5),
	datab => \PIANOSPEAKER|COUNTER784\(4),
	datac => \PIANOSPEAKER|COUNTER784\(6),
	datad => \PIANOSPEAKER|LessThan6~1_combout\,
	combout => \PIANOSPEAKER|LessThan6~2_combout\);

-- Location: LCCOMB_X35_Y6_N24
\PIANOSPEAKER|LessThan6~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PIANOSPEAKER|LessThan6~3_combout\ = (\PIANOSPEAKER|COUNTER784\(10)) # ((\PIANOSPEAKER|COUNTER784\(8) & ((\PIANOSPEAKER|COUNTER784\(7)) # (\PIANOSPEAKER|LessThan6~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PIANOSPEAKER|COUNTER784\(10),
	datab => \PIANOSPEAKER|COUNTER784\(8),
	datac => \PIANOSPEAKER|COUNTER784\(7),
	datad => \PIANOSPEAKER|LessThan6~2_combout\,
	combout => \PIANOSPEAKER|LessThan6~3_combout\);

-- Location: LCCOMB_X35_Y6_N18
\PIANOSPEAKER|LessThan6~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PIANOSPEAKER|LessThan6~4_combout\ = (\PIANOSPEAKER|LessThan6~0_combout\) # (((!\PIANOSPEAKER|COUNTER784\(9) & !\PIANOSPEAKER|LessThan6~3_combout\)) # (!\PIANOSPEAKER|COUNTER784\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PIANOSPEAKER|LessThan6~0_combout\,
	datab => \PIANOSPEAKER|COUNTER784\(9),
	datac => \PIANOSPEAKER|COUNTER784\(15),
	datad => \PIANOSPEAKER|LessThan6~3_combout\,
	combout => \PIANOSPEAKER|LessThan6~4_combout\);

-- Location: LCCOMB_X35_Y6_N12
\PIANOSPEAKER|LessThan6~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PIANOSPEAKER|LessThan6~5_combout\ = (!\PIANOSPEAKER|COUNTER784\(18) & (!\PIANOSPEAKER|COUNTER784\(19) & (!\PIANOSPEAKER|COUNTER784\(16) & !\PIANOSPEAKER|COUNTER784\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PIANOSPEAKER|COUNTER784\(18),
	datab => \PIANOSPEAKER|COUNTER784\(19),
	datac => \PIANOSPEAKER|COUNTER784\(16),
	datad => \PIANOSPEAKER|COUNTER784\(17),
	combout => \PIANOSPEAKER|LessThan6~5_combout\);

-- Location: LCCOMB_X35_Y6_N2
\PIANOSPEAKER|LessThan6~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PIANOSPEAKER|LessThan6~6_combout\ = (!\PIANOSPEAKER|COUNTER784\(21) & (!\PIANOSPEAKER|COUNTER784\(23) & (!\PIANOSPEAKER|COUNTER784\(20) & !\PIANOSPEAKER|COUNTER784\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PIANOSPEAKER|COUNTER784\(21),
	datab => \PIANOSPEAKER|COUNTER784\(23),
	datac => \PIANOSPEAKER|COUNTER784\(20),
	datad => \PIANOSPEAKER|COUNTER784\(22),
	combout => \PIANOSPEAKER|LessThan6~6_combout\);

-- Location: LCCOMB_X35_Y6_N20
\PIANOSPEAKER|LessThan6~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PIANOSPEAKER|LessThan6~7_combout\ = (!\PIANOSPEAKER|COUNTER784\(25) & (!\PIANOSPEAKER|COUNTER784\(26) & (!\PIANOSPEAKER|COUNTER784\(27) & !\PIANOSPEAKER|COUNTER784\(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PIANOSPEAKER|COUNTER784\(25),
	datab => \PIANOSPEAKER|COUNTER784\(26),
	datac => \PIANOSPEAKER|COUNTER784\(27),
	datad => \PIANOSPEAKER|COUNTER784\(24),
	combout => \PIANOSPEAKER|LessThan6~7_combout\);

-- Location: LCCOMB_X35_Y6_N14
\PIANOSPEAKER|LessThan6~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PIANOSPEAKER|LessThan6~8_combout\ = (!\PIANOSPEAKER|COUNTER784\(29) & (!\PIANOSPEAKER|COUNTER784\(28) & (!\PIANOSPEAKER|COUNTER784\(30) & \PIANOSPEAKER|LessThan6~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PIANOSPEAKER|COUNTER784\(29),
	datab => \PIANOSPEAKER|COUNTER784\(28),
	datac => \PIANOSPEAKER|COUNTER784\(30),
	datad => \PIANOSPEAKER|LessThan6~7_combout\,
	combout => \PIANOSPEAKER|LessThan6~8_combout\);

-- Location: LCCOMB_X35_Y6_N28
\PIANOSPEAKER|LessThan6~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PIANOSPEAKER|LessThan6~9_combout\ = (\PIANOSPEAKER|LessThan6~5_combout\ & (\PIANOSPEAKER|LessThan6~6_combout\ & (\PIANOSPEAKER|LessThan6~8_combout\ & \PIANOSPEAKER|LessThan6~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PIANOSPEAKER|LessThan6~5_combout\,
	datab => \PIANOSPEAKER|LessThan6~6_combout\,
	datac => \PIANOSPEAKER|LessThan6~8_combout\,
	datad => \PIANOSPEAKER|LessThan6~4_combout\,
	combout => \PIANOSPEAKER|LessThan6~9_combout\);

-- Location: LCCOMB_X35_Y6_N0
\PIANOSPEAKER|CLK_784HZ~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PIANOSPEAKER|CLK_784HZ~0_combout\ = \PIANOSPEAKER|CLK_784HZ~q\ $ (((!\PIANOSPEAKER|COUNTER784\(31) & !\PIANOSPEAKER|LessThan6~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PIANOSPEAKER|COUNTER784\(31),
	datac => \PIANOSPEAKER|CLK_784HZ~q\,
	datad => \PIANOSPEAKER|LessThan6~9_combout\,
	combout => \PIANOSPEAKER|CLK_784HZ~0_combout\);

-- Location: LCCOMB_X32_Y12_N10
\PIANOSPEAKER|LessThan7~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PIANOSPEAKER|LessThan7~1_combout\ = (!\PIANOSPEAKER|COUNTER800\(20) & (!\PIANOSPEAKER|COUNTER800\(22) & (!\PIANOSPEAKER|COUNTER800\(21) & !\PIANOSPEAKER|COUNTER800\(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PIANOSPEAKER|COUNTER800\(20),
	datab => \PIANOSPEAKER|COUNTER800\(22),
	datac => \PIANOSPEAKER|COUNTER800\(21),
	datad => \PIANOSPEAKER|COUNTER800\(23),
	combout => \PIANOSPEAKER|LessThan7~1_combout\);

-- Location: LCCOMB_X32_Y13_N22
\PIANOSPEAKER|LessThan7~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PIANOSPEAKER|LessThan7~5_combout\ = ((!\PIANOSPEAKER|COUNTER800\(2) & (!\PIANOSPEAKER|COUNTER800\(3) & !\PIANOSPEAKER|COUNTER800\(4)))) # (!\PIANOSPEAKER|COUNTER800\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PIANOSPEAKER|COUNTER800\(5),
	datab => \PIANOSPEAKER|COUNTER800\(2),
	datac => \PIANOSPEAKER|COUNTER800\(3),
	datad => \PIANOSPEAKER|COUNTER800\(4),
	combout => \PIANOSPEAKER|LessThan7~5_combout\);

-- Location: LCCOMB_X32_Y13_N0
\PIANOSPEAKER|LessThan7~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PIANOSPEAKER|LessThan7~6_combout\ = (!\PIANOSPEAKER|COUNTER800\(7) & (!\PIANOSPEAKER|COUNTER800\(9) & (!\PIANOSPEAKER|COUNTER800\(8) & !\PIANOSPEAKER|COUNTER800\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PIANOSPEAKER|COUNTER800\(7),
	datab => \PIANOSPEAKER|COUNTER800\(9),
	datac => \PIANOSPEAKER|COUNTER800\(8),
	datad => \PIANOSPEAKER|COUNTER800\(6),
	combout => \PIANOSPEAKER|LessThan7~6_combout\);

-- Location: LCCOMB_X32_Y13_N10
\PIANOSPEAKER|LessThan7~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PIANOSPEAKER|LessThan7~7_combout\ = (!\PIANOSPEAKER|COUNTER800\(11) & (((\PIANOSPEAKER|LessThan7~5_combout\ & \PIANOSPEAKER|LessThan7~6_combout\)) # (!\PIANOSPEAKER|COUNTER800\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PIANOSPEAKER|COUNTER800\(10),
	datab => \PIANOSPEAKER|COUNTER800\(11),
	datac => \PIANOSPEAKER|LessThan7~5_combout\,
	datad => \PIANOSPEAKER|LessThan7~6_combout\,
	combout => \PIANOSPEAKER|LessThan7~7_combout\);

-- Location: LCCOMB_X35_Y8_N4
\PIANOSPEAKER|LessThan2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PIANOSPEAKER|LessThan2~0_combout\ = (!\PIANOSPEAKER|COUNTER523\(19) & (!\PIANOSPEAKER|COUNTER523\(20) & (!\PIANOSPEAKER|COUNTER523\(17) & !\PIANOSPEAKER|COUNTER523\(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PIANOSPEAKER|COUNTER523\(19),
	datab => \PIANOSPEAKER|COUNTER523\(20),
	datac => \PIANOSPEAKER|COUNTER523\(17),
	datad => \PIANOSPEAKER|COUNTER523\(18),
	combout => \PIANOSPEAKER|LessThan2~0_combout\);

-- Location: LCCOMB_X35_Y8_N22
\PIANOSPEAKER|LessThan2~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PIANOSPEAKER|LessThan2~1_combout\ = (!\PIANOSPEAKER|COUNTER523\(22) & (!\PIANOSPEAKER|COUNTER523\(21) & (!\PIANOSPEAKER|COUNTER523\(23) & !\PIANOSPEAKER|COUNTER523\(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PIANOSPEAKER|COUNTER523\(22),
	datab => \PIANOSPEAKER|COUNTER523\(21),
	datac => \PIANOSPEAKER|COUNTER523\(23),
	datad => \PIANOSPEAKER|COUNTER523\(24),
	combout => \PIANOSPEAKER|LessThan2~1_combout\);

-- Location: LCCOMB_X35_Y8_N0
\PIANOSPEAKER|LessThan2~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PIANOSPEAKER|LessThan2~2_combout\ = (!\PIANOSPEAKER|COUNTER523\(28) & (!\PIANOSPEAKER|COUNTER523\(25) & (!\PIANOSPEAKER|COUNTER523\(26) & !\PIANOSPEAKER|COUNTER523\(27))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PIANOSPEAKER|COUNTER523\(28),
	datab => \PIANOSPEAKER|COUNTER523\(25),
	datac => \PIANOSPEAKER|COUNTER523\(26),
	datad => \PIANOSPEAKER|COUNTER523\(27),
	combout => \PIANOSPEAKER|LessThan2~2_combout\);

-- Location: LCCOMB_X35_Y8_N10
\PIANOSPEAKER|LessThan2~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PIANOSPEAKER|LessThan2~3_combout\ = (!\PIANOSPEAKER|COUNTER523\(29) & !\PIANOSPEAKER|COUNTER523\(30))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \PIANOSPEAKER|COUNTER523\(29),
	datad => \PIANOSPEAKER|COUNTER523\(30),
	combout => \PIANOSPEAKER|LessThan2~3_combout\);

-- Location: LCCOMB_X35_Y9_N22
\PIANOSPEAKER|LessThan2~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PIANOSPEAKER|LessThan2~4_combout\ = (\PIANOSPEAKER|LessThan2~3_combout\ & (\PIANOSPEAKER|LessThan2~2_combout\ & (\PIANOSPEAKER|LessThan2~1_combout\ & \PIANOSPEAKER|LessThan2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PIANOSPEAKER|LessThan2~3_combout\,
	datab => \PIANOSPEAKER|LessThan2~2_combout\,
	datac => \PIANOSPEAKER|LessThan2~1_combout\,
	datad => \PIANOSPEAKER|LessThan2~0_combout\,
	combout => \PIANOSPEAKER|LessThan2~4_combout\);

-- Location: LCCOMB_X35_Y9_N4
\PIANOSPEAKER|LessThan2~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PIANOSPEAKER|LessThan2~5_combout\ = ((!\PIANOSPEAKER|COUNTER523\(12)) # (!\PIANOSPEAKER|COUNTER523\(13))) # (!\PIANOSPEAKER|COUNTER523\(14))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PIANOSPEAKER|COUNTER523\(14),
	datac => \PIANOSPEAKER|COUNTER523\(13),
	datad => \PIANOSPEAKER|COUNTER523\(12),
	combout => \PIANOSPEAKER|LessThan2~5_combout\);

-- Location: LCCOMB_X35_Y9_N18
\PIANOSPEAKER|LessThan2~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PIANOSPEAKER|LessThan2~6_combout\ = ((!\PIANOSPEAKER|COUNTER523\(2) & (!\PIANOSPEAKER|COUNTER523\(1) & !\PIANOSPEAKER|COUNTER523\(3)))) # (!\PIANOSPEAKER|COUNTER523\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PIANOSPEAKER|COUNTER523\(2),
	datab => \PIANOSPEAKER|COUNTER523\(4),
	datac => \PIANOSPEAKER|COUNTER523\(1),
	datad => \PIANOSPEAKER|COUNTER523\(3),
	combout => \PIANOSPEAKER|LessThan2~6_combout\);

-- Location: LCCOMB_X35_Y9_N12
\PIANOSPEAKER|LessThan2~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PIANOSPEAKER|LessThan2~7_combout\ = (!\PIANOSPEAKER|COUNTER523\(7) & (((\PIANOSPEAKER|LessThan2~6_combout\) # (!\PIANOSPEAKER|COUNTER523\(5))) # (!\PIANOSPEAKER|COUNTER523\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PIANOSPEAKER|COUNTER523\(7),
	datab => \PIANOSPEAKER|COUNTER523\(6),
	datac => \PIANOSPEAKER|COUNTER523\(5),
	datad => \PIANOSPEAKER|LessThan2~6_combout\,
	combout => \PIANOSPEAKER|LessThan2~7_combout\);

-- Location: LCCOMB_X35_Y9_N10
\PIANOSPEAKER|LessThan2~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PIANOSPEAKER|LessThan2~8_combout\ = ((!\PIANOSPEAKER|COUNTER523\(9) & ((\PIANOSPEAKER|LessThan2~7_combout\) # (!\PIANOSPEAKER|COUNTER523\(8))))) # (!\PIANOSPEAKER|COUNTER523\(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PIANOSPEAKER|COUNTER523\(8),
	datab => \PIANOSPEAKER|COUNTER523\(9),
	datac => \PIANOSPEAKER|COUNTER523\(10),
	datad => \PIANOSPEAKER|LessThan2~7_combout\,
	combout => \PIANOSPEAKER|LessThan2~8_combout\);

-- Location: LCCOMB_X35_Y9_N20
\PIANOSPEAKER|LessThan2~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PIANOSPEAKER|LessThan2~9_combout\ = (!\PIANOSPEAKER|COUNTER523\(15) & ((\PIANOSPEAKER|LessThan2~5_combout\) # ((!\PIANOSPEAKER|COUNTER523\(11) & \PIANOSPEAKER|LessThan2~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PIANOSPEAKER|COUNTER523\(15),
	datab => \PIANOSPEAKER|COUNTER523\(11),
	datac => \PIANOSPEAKER|LessThan2~5_combout\,
	datad => \PIANOSPEAKER|LessThan2~8_combout\,
	combout => \PIANOSPEAKER|LessThan2~9_combout\);

-- Location: LCCOMB_X35_Y9_N30
\PIANOSPEAKER|LessThan2~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PIANOSPEAKER|LessThan2~10_combout\ = (!\PIANOSPEAKER|COUNTER523\(31) & (((\PIANOSPEAKER|COUNTER523\(16) & !\PIANOSPEAKER|LessThan2~9_combout\)) # (!\PIANOSPEAKER|LessThan2~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010101000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PIANOSPEAKER|COUNTER523\(31),
	datab => \PIANOSPEAKER|COUNTER523\(16),
	datac => \PIANOSPEAKER|LessThan2~4_combout\,
	datad => \PIANOSPEAKER|LessThan2~9_combout\,
	combout => \PIANOSPEAKER|LessThan2~10_combout\);

-- Location: LCCOMB_X35_Y9_N8
\PIANOSPEAKER|CLK_523HZ~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PIANOSPEAKER|CLK_523HZ~0_combout\ = \PIANOSPEAKER|LessThan2~10_combout\ $ (\PIANOSPEAKER|CLK_523HZ~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PIANOSPEAKER|LessThan2~10_combout\,
	datac => \PIANOSPEAKER|CLK_523HZ~q\,
	combout => \PIANOSPEAKER|CLK_523HZ~0_combout\);

-- Location: FF_X2_Y10_N29
\CLK100|COUNTER[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \CLK100|COUNTER~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CLK100|COUNTER\(16));

-- Location: FF_X2_Y10_N31
\CLK100|COUNTER[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \CLK100|COUNTER~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CLK100|COUNTER\(17));

-- Location: FF_X2_Y11_N19
\CLK100|COUNTER[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \CLK100|Add0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CLK100|COUNTER\(2));

-- Location: FF_X2_Y11_N17
\CLK100|COUNTER[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \CLK100|Add0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CLK100|COUNTER\(1));

-- Location: FF_X2_Y11_N13
\CLK100|COUNTER[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \CLK100|COUNTER~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CLK100|COUNTER\(0));

-- Location: FF_X2_Y11_N21
\CLK100|COUNTER[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \CLK100|Add0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CLK100|COUNTER\(3));

-- Location: LCCOMB_X2_Y11_N6
\CLK100|Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CLK100|Equal0~0_combout\ = (!\CLK100|COUNTER\(0) & (!\CLK100|COUNTER\(1) & (!\CLK100|COUNTER\(3) & !\CLK100|COUNTER\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CLK100|COUNTER\(0),
	datab => \CLK100|COUNTER\(1),
	datac => \CLK100|COUNTER\(3),
	datad => \CLK100|COUNTER\(2),
	combout => \CLK100|Equal0~0_combout\);

-- Location: FF_X2_Y11_N1
\CLK100|COUNTER[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \CLK100|COUNTER~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CLK100|COUNTER\(4));

-- Location: FF_X2_Y11_N11
\CLK100|COUNTER[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \CLK100|COUNTER~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CLK100|COUNTER\(7));

-- Location: FF_X2_Y11_N25
\CLK100|COUNTER[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \CLK100|Add0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CLK100|COUNTER\(5));

-- Location: FF_X2_Y11_N27
\CLK100|COUNTER[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \CLK100|Add0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CLK100|COUNTER\(6));

-- Location: LCCOMB_X2_Y11_N8
\CLK100|Equal0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CLK100|Equal0~1_combout\ = (\CLK100|COUNTER\(7) & (!\CLK100|COUNTER\(5) & (!\CLK100|COUNTER\(6) & \CLK100|COUNTER\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CLK100|COUNTER\(7),
	datab => \CLK100|COUNTER\(5),
	datac => \CLK100|COUNTER\(6),
	datad => \CLK100|COUNTER\(4),
	combout => \CLK100|Equal0~1_combout\);

-- Location: FF_X2_Y11_N31
\CLK100|COUNTER[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \CLK100|Add0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CLK100|COUNTER\(8));

-- Location: FF_X2_Y10_N1
\CLK100|COUNTER[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \CLK100|Add0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CLK100|COUNTER\(9));

-- Location: FF_X2_Y10_N3
\CLK100|COUNTER[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \CLK100|Add0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CLK100|COUNTER\(10));

-- Location: FF_X2_Y11_N3
\CLK100|COUNTER[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	asdata => \CLK100|Add0~22_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CLK100|COUNTER\(11));

-- Location: LCCOMB_X2_Y11_N2
\CLK100|Equal0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CLK100|Equal0~2_combout\ = (!\CLK100|COUNTER\(8) & (!\CLK100|COUNTER\(9) & (!\CLK100|COUNTER\(11) & !\CLK100|COUNTER\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CLK100|COUNTER\(8),
	datab => \CLK100|COUNTER\(9),
	datac => \CLK100|COUNTER\(11),
	datad => \CLK100|COUNTER\(10),
	combout => \CLK100|Equal0~2_combout\);

-- Location: FF_X2_Y10_N25
\CLK100|COUNTER[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \CLK100|COUNTER~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CLK100|COUNTER\(12));

-- Location: FF_X2_Y10_N27
\CLK100|COUNTER[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \CLK100|COUNTER~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CLK100|COUNTER\(14));

-- Location: FF_X2_Y10_N21
\CLK100|COUNTER[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \CLK100|COUNTER~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CLK100|COUNTER\(15));

-- Location: FF_X2_Y10_N9
\CLK100|COUNTER[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \CLK100|Add0~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CLK100|COUNTER\(13));

-- Location: LCCOMB_X2_Y10_N22
\CLK100|Equal0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CLK100|Equal0~3_combout\ = (\CLK100|COUNTER\(14) & (\CLK100|COUNTER\(12) & (!\CLK100|COUNTER\(13) & \CLK100|COUNTER\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CLK100|COUNTER\(14),
	datab => \CLK100|COUNTER\(12),
	datac => \CLK100|COUNTER\(13),
	datad => \CLK100|COUNTER\(15),
	combout => \CLK100|Equal0~3_combout\);

-- Location: LCCOMB_X2_Y11_N4
\CLK100|Equal0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CLK100|Equal0~4_combout\ = (\CLK100|Equal0~0_combout\ & (\CLK100|Equal0~1_combout\ & (\CLK100|Equal0~2_combout\ & \CLK100|Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CLK100|Equal0~0_combout\,
	datab => \CLK100|Equal0~1_combout\,
	datac => \CLK100|Equal0~2_combout\,
	datad => \CLK100|Equal0~3_combout\,
	combout => \CLK100|Equal0~4_combout\);

-- Location: FF_X2_Y10_N19
\CLK100|COUNTER[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \CLK100|Add0~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CLK100|COUNTER\(18));

-- Location: LCCOMB_X1_Y11_N20
\CLK100|Equal0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CLK100|Equal0~5_combout\ = (!\CLK100|COUNTER\(18) & (\CLK100|COUNTER\(17) & (\CLK100|COUNTER\(16) & \CLK100|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CLK100|COUNTER\(18),
	datab => \CLK100|COUNTER\(17),
	datac => \CLK100|COUNTER\(16),
	datad => \CLK100|Equal0~4_combout\,
	combout => \CLK100|Equal0~5_combout\);

-- Location: LCCOMB_X1_Y11_N30
\CLK100|C100HZ~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CLK100|C100HZ~0_combout\ = \CLK100|C100HZ~q\ $ (\CLK100|Equal0~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \CLK100|C100HZ~q\,
	datad => \CLK100|Equal0~5_combout\,
	combout => \CLK100|C100HZ~0_combout\);

-- Location: LCCOMB_X22_Y17_N10
\FALLING_BLOCK_F1~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \FALLING_BLOCK_F1~20_combout\ = (\FALLING_BLOCK_F1[3]~0_combout\ & !\Add1~34_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FALLING_BLOCK_F1[3]~0_combout\,
	datad => \Add1~34_combout\,
	combout => \FALLING_BLOCK_F1~20_combout\);

-- Location: LCCOMB_X22_Y16_N12
\FALLING_BLOCK_F1[31]~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \FALLING_BLOCK_F1[31]~34_combout\ = (\FALLING_BLOCK_F1[3]~0_combout\ & ((\Add1~62_combout\))) # (!\FALLING_BLOCK_F1[3]~0_combout\ & (\FALLING_BLOCK_F1[31]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FALLING_BLOCK_F1[31]~2_combout\,
	datac => \Add1~62_combout\,
	datad => \FALLING_BLOCK_F1[3]~0_combout\,
	combout => \FALLING_BLOCK_F1[31]~34_combout\);

-- Location: LCCOMB_X22_Y16_N0
\FALLING_BLOCK_F1[31]~35\ : cycloneiii_lcell_comb
-- Equation(s):
-- \FALLING_BLOCK_F1[31]~35_combout\ = (\Equal0~10_combout\ & ((\DRAW2~q\ & (FALLING_BLOCK_F1(31))) # (!\DRAW2~q\ & ((!\FALLING_BLOCK_F1[31]~34_combout\))))) # (!\Equal0~10_combout\ & (((FALLING_BLOCK_F1(31)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~10_combout\,
	datab => \DRAW2~q\,
	datac => FALLING_BLOCK_F1(31),
	datad => \FALLING_BLOCK_F1[31]~34_combout\,
	combout => \FALLING_BLOCK_F1[31]~35_combout\);

-- Location: LCCOMB_X21_Y16_N30
\Add4~77\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add4~77_combout\ = (!\Add4~63_combout\ & (((\FALLING_BLOCK_I1[28]~0_combout\ & \FALLING_BLOCK_F1[3]~0_combout\)) # (!\FALLING_BLOCK_F1[31]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FALLING_BLOCK_F1[31]~2_combout\,
	datab => \FALLING_BLOCK_I1[28]~0_combout\,
	datac => \FALLING_BLOCK_F1[3]~0_combout\,
	datad => \Add4~63_combout\,
	combout => \Add4~77_combout\);

-- Location: LCCOMB_X19_Y17_N8
\Add4~87\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add4~87_combout\ = (!\Add4~43_combout\ & (((\FALLING_BLOCK_F1[3]~0_combout\ & \FALLING_BLOCK_I1[28]~0_combout\)) # (!\FALLING_BLOCK_F1[31]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FALLING_BLOCK_F1[3]~0_combout\,
	datab => \Add4~43_combout\,
	datac => \FALLING_BLOCK_F1[31]~2_combout\,
	datad => \FALLING_BLOCK_I1[28]~0_combout\,
	combout => \Add4~87_combout\);

-- Location: LCCOMB_X17_Y12_N22
\FALLING_BLOCK_F2~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \FALLING_BLOCK_F2~26_combout\ = (!\Add2~40_combout\ & \FALLING_BLOCK_F2[25]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add2~40_combout\,
	datad => \FALLING_BLOCK_F2[25]~4_combout\,
	combout => \FALLING_BLOCK_F2~26_combout\);

-- Location: LCCOMB_X20_Y12_N30
\FALLING_BLOCK_F2[29]~35\ : cycloneiii_lcell_comb
-- Equation(s):
-- \FALLING_BLOCK_F2[29]~35_combout\ = (\FALLING_BLOCK_F2[30]~37_combout\ & (!\Add2~58_combout\ & (\FALLING_BLOCK_F2[25]~4_combout\))) # (!\FALLING_BLOCK_F2[30]~37_combout\ & (((FALLING_BLOCK_F2(29)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~58_combout\,
	datab => \FALLING_BLOCK_F2[25]~4_combout\,
	datac => FALLING_BLOCK_F2(29),
	datad => \FALLING_BLOCK_F2[30]~37_combout\,
	combout => \FALLING_BLOCK_F2[29]~35_combout\);

-- Location: LCCOMB_X16_Y13_N20
\Add5~76\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add5~76_combout\ = (!\Add5~61_combout\ & (((\FALLING_BLOCK_I2[20]~0_combout\ & \FALLING_BLOCK_F2[25]~4_combout\)) # (!\FALLING_BLOCK_F2[31]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add5~61_combout\,
	datab => \FALLING_BLOCK_I2[20]~0_combout\,
	datac => \FALLING_BLOCK_F2[31]~6_combout\,
	datad => \FALLING_BLOCK_F2[25]~4_combout\,
	combout => \Add5~76_combout\);

-- Location: LCCOMB_X16_Y13_N18
\Add5~77\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add5~77_combout\ = (!\Add5~63_combout\ & (((\FALLING_BLOCK_I2[20]~0_combout\ & \FALLING_BLOCK_F2[25]~4_combout\)) # (!\FALLING_BLOCK_F2[31]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FALLING_BLOCK_F2[31]~6_combout\,
	datab => \FALLING_BLOCK_I2[20]~0_combout\,
	datac => \Add5~63_combout\,
	datad => \FALLING_BLOCK_F2[25]~4_combout\,
	combout => \Add5~77_combout\);

-- Location: LCCOMB_X16_Y13_N4
\Add5~78\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add5~78_combout\ = (!\Add5~65_combout\ & (((\FALLING_BLOCK_I2[20]~0_combout\ & \FALLING_BLOCK_F2[25]~4_combout\)) # (!\FALLING_BLOCK_F2[31]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add5~65_combout\,
	datab => \FALLING_BLOCK_I2[20]~0_combout\,
	datac => \FALLING_BLOCK_F2[31]~6_combout\,
	datad => \FALLING_BLOCK_F2[25]~4_combout\,
	combout => \Add5~78_combout\);

-- Location: LCCOMB_X16_Y13_N22
\Add5~79\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add5~79_combout\ = (!\Add5~67_combout\ & (((\FALLING_BLOCK_I2[20]~0_combout\ & \FALLING_BLOCK_F2[25]~4_combout\)) # (!\FALLING_BLOCK_F2[31]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FALLING_BLOCK_F2[31]~6_combout\,
	datab => \Add5~67_combout\,
	datac => \FALLING_BLOCK_I2[20]~0_combout\,
	datad => \FALLING_BLOCK_F2[25]~4_combout\,
	combout => \Add5~79_combout\);

-- Location: LCCOMB_X16_Y13_N6
\Add5~85\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add5~85_combout\ = (!\Add5~39_combout\ & (((\FALLING_BLOCK_I2[20]~0_combout\ & \FALLING_BLOCK_F2[25]~4_combout\)) # (!\FALLING_BLOCK_F2[31]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add5~39_combout\,
	datab => \FALLING_BLOCK_I2[20]~0_combout\,
	datac => \FALLING_BLOCK_F2[31]~6_combout\,
	datad => \FALLING_BLOCK_F2[25]~4_combout\,
	combout => \Add5~85_combout\);

-- Location: LCCOMB_X17_Y14_N6
\Add5~88\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add5~88_combout\ = (!\Add5~45_combout\ & (((\FALLING_BLOCK_F2[25]~4_combout\ & \FALLING_BLOCK_I2[20]~0_combout\)) # (!\FALLING_BLOCK_F2[31]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FALLING_BLOCK_F2[31]~6_combout\,
	datab => \FALLING_BLOCK_F2[25]~4_combout\,
	datac => \FALLING_BLOCK_I2[20]~0_combout\,
	datad => \Add5~45_combout\,
	combout => \Add5~88_combout\);

-- Location: LCCOMB_X17_Y14_N20
\Add5~89\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add5~89_combout\ = (!\Add5~47_combout\ & (((\FALLING_BLOCK_I2[20]~0_combout\ & \FALLING_BLOCK_F2[25]~4_combout\)) # (!\FALLING_BLOCK_F2[31]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FALLING_BLOCK_F2[31]~6_combout\,
	datab => \FALLING_BLOCK_I2[20]~0_combout\,
	datac => \Add5~47_combout\,
	datad => \FALLING_BLOCK_F2[25]~4_combout\,
	combout => \Add5~89_combout\);

-- Location: LCCOMB_X23_Y13_N0
\FALLING_BLOCK_F~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \FALLING_BLOCK_F~16_combout\ = (\Add0~50_combout\ & ((FALLING_BLOCK_F(31)) # (\FALLING_BLOCK_F[27]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => FALLING_BLOCK_F(31),
	datac => \FALLING_BLOCK_F[27]~0_combout\,
	datad => \Add0~50_combout\,
	combout => \FALLING_BLOCK_F~16_combout\);

-- Location: LCCOMB_X23_Y13_N14
\FALLING_BLOCK_F~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \FALLING_BLOCK_F~19_combout\ = (\Add0~56_combout\ & ((FALLING_BLOCK_F(31)) # (\FALLING_BLOCK_F[27]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => FALLING_BLOCK_F(31),
	datac => \FALLING_BLOCK_F[27]~0_combout\,
	datad => \Add0~56_combout\,
	combout => \FALLING_BLOCK_F~19_combout\);

-- Location: LCCOMB_X24_Y16_N6
\FALLING_BLOCK_F~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \FALLING_BLOCK_F~21_combout\ = (\Add0~28_combout\ & ((FALLING_BLOCK_F(31)) # (\FALLING_BLOCK_F[27]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add0~28_combout\,
	datac => FALLING_BLOCK_F(31),
	datad => \FALLING_BLOCK_F[27]~0_combout\,
	combout => \FALLING_BLOCK_F~21_combout\);

-- Location: LCCOMB_X23_Y13_N10
\DRAW1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DRAW1~0_combout\ = (\DRAW1~q\) # ((\Equal0~10_combout\ & (\FALLING_BLOCK_F[10]~1_combout\ & \FALLING_BLOCK_F[27]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~10_combout\,
	datab => \FALLING_BLOCK_F[10]~1_combout\,
	datac => \DRAW1~q\,
	datad => \FALLING_BLOCK_F[27]~3_combout\,
	combout => \DRAW1~0_combout\);

-- Location: LCCOMB_X35_Y24_N30
\PIANOSPEAKER|LessThan1~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PIANOSPEAKER|LessThan1~10_combout\ = (!\PIANOSPEAKER|COUNTER494\(31) & !\PIANOSPEAKER|LessThan1~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PIANOSPEAKER|COUNTER494\(31),
	datad => \PIANOSPEAKER|LessThan1~9_combout\,
	combout => \PIANOSPEAKER|LessThan1~10_combout\);

-- Location: LCCOMB_X35_Y6_N30
\PIANOSPEAKER|LessThan6~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PIANOSPEAKER|LessThan6~10_combout\ = (!\PIANOSPEAKER|COUNTER784\(31) & !\PIANOSPEAKER|LessThan6~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PIANOSPEAKER|COUNTER784\(31),
	datad => \PIANOSPEAKER|LessThan6~9_combout\,
	combout => \PIANOSPEAKER|LessThan6~10_combout\);

-- Location: LCCOMB_X2_Y10_N28
\CLK100|COUNTER~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CLK100|COUNTER~0_combout\ = (\CLK100|Add0~32_combout\ & !\CLK100|Equal0~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \CLK100|Add0~32_combout\,
	datad => \CLK100|Equal0~5_combout\,
	combout => \CLK100|COUNTER~0_combout\);

-- Location: LCCOMB_X2_Y10_N30
\CLK100|COUNTER~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CLK100|COUNTER~1_combout\ = (!\CLK100|Equal0~5_combout\ & \CLK100|Add0~34_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \CLK100|Equal0~5_combout\,
	datad => \CLK100|Add0~34_combout\,
	combout => \CLK100|COUNTER~1_combout\);

-- Location: LCCOMB_X2_Y11_N12
\CLK100|COUNTER~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CLK100|COUNTER~2_combout\ = (\CLK100|Add0~0_combout\ & !\CLK100|Equal0~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \CLK100|Add0~0_combout\,
	datad => \CLK100|Equal0~5_combout\,
	combout => \CLK100|COUNTER~2_combout\);

-- Location: LCCOMB_X2_Y11_N0
\CLK100|COUNTER~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CLK100|COUNTER~3_combout\ = (\CLK100|Add0~8_combout\ & !\CLK100|Equal0~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CLK100|Add0~8_combout\,
	datad => \CLK100|Equal0~5_combout\,
	combout => \CLK100|COUNTER~3_combout\);

-- Location: LCCOMB_X2_Y11_N10
\CLK100|COUNTER~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CLK100|COUNTER~4_combout\ = (\CLK100|Add0~14_combout\ & !\CLK100|Equal0~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CLK100|Add0~14_combout\,
	datad => \CLK100|Equal0~5_combout\,
	combout => \CLK100|COUNTER~4_combout\);

-- Location: LCCOMB_X2_Y10_N24
\CLK100|COUNTER~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CLK100|COUNTER~5_combout\ = (\CLK100|Add0~24_combout\ & !\CLK100|Equal0~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CLK100|Add0~24_combout\,
	datac => \CLK100|Equal0~5_combout\,
	combout => \CLK100|COUNTER~5_combout\);

-- Location: LCCOMB_X2_Y10_N26
\CLK100|COUNTER~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CLK100|COUNTER~6_combout\ = (\CLK100|Add0~28_combout\ & !\CLK100|Equal0~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CLK100|Add0~28_combout\,
	datac => \CLK100|Equal0~5_combout\,
	combout => \CLK100|COUNTER~6_combout\);

-- Location: LCCOMB_X2_Y10_N20
\CLK100|COUNTER~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CLK100|COUNTER~7_combout\ = (\CLK100|Add0~30_combout\ & !\CLK100|Equal0~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CLK100|Add0~30_combout\,
	datac => \CLK100|Equal0~5_combout\,
	combout => \CLK100|COUNTER~7_combout\);

-- Location: CLKCTRL_G2
\CLK100|C100HZ~clkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLK100|C100HZ~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLK100|C100HZ~clkctrl_outclk\);

-- Location: LCCOMB_X1_Y11_N22
\CLK100|C100HZ~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CLK100|C100HZ~feeder_combout\ = \CLK100|C100HZ~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CLK100|C100HZ~0_combout\,
	combout => \CLK100|C100HZ~feeder_combout\);

-- Location: IOOBUF_X41_Y18_N16
\HSYNC~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SYNC|ALT_INV_LessThan1~1_combout\,
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
	i => \SYNC|LessThan2~0_combout\,
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
	i => GND,
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
	i => GND,
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

-- Location: IOOBUF_X28_Y0_N30
\SPEAKER~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PIANOSPEAKER|SPEK~q\,
	devoe => ww_devoe,
	o => \SPEAKER~output_o\);

-- Location: LCCOMB_X29_Y15_N22
\SYNC|Add0~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SYNC|Add0~16_combout\ = (\SYNC|COUNTER_H\(7) & (!\SYNC|Add0~13\)) # (!\SYNC|COUNTER_H\(7) & ((\SYNC|Add0~13\) # (GND)))
-- \SYNC|Add0~17\ = CARRY((!\SYNC|Add0~13\) # (!\SYNC|COUNTER_H\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SYNC|COUNTER_H\(7),
	datad => VCC,
	cin => \SYNC|Add0~13\,
	combout => \SYNC|Add0~16_combout\,
	cout => \SYNC|Add0~17\);

-- Location: LCCOMB_X29_Y15_N24
\SYNC|Add0~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SYNC|Add0~18_combout\ = (\SYNC|COUNTER_H\(8) & (\SYNC|Add0~17\ $ (GND))) # (!\SYNC|COUNTER_H\(8) & (!\SYNC|Add0~17\ & VCC))
-- \SYNC|Add0~19\ = CARRY((\SYNC|COUNTER_H\(8) & !\SYNC|Add0~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SYNC|COUNTER_H\(8),
	datad => VCC,
	cin => \SYNC|Add0~17\,
	combout => \SYNC|Add0~18_combout\,
	cout => \SYNC|Add0~19\);

-- Location: LCCOMB_X28_Y15_N10
\SYNC|Add0~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SYNC|Add0~23_combout\ = (\SYNC|LessThan0~2_combout\ & \SYNC|Add0~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SYNC|LessThan0~2_combout\,
	datad => \SYNC|Add0~18_combout\,
	combout => \SYNC|Add0~23_combout\);

-- Location: IOIBUF_X0_Y24_N1
\RST~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RST,
	o => \RST~input_o\);

-- Location: FF_X27_Y15_N11
\SYNC|COUNTER_H[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK|TEMPORAL~clkctrl_outclk\,
	asdata => \SYNC|Add0~23_combout\,
	clrn => \ALT_INV_RST~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SYNC|COUNTER_H\(8));

-- Location: LCCOMB_X29_Y15_N8
\SYNC|Add0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SYNC|Add0~0_combout\ = \SYNC|COUNTER_H\(0) $ (VCC)
-- \SYNC|Add0~1\ = CARRY(\SYNC|COUNTER_H\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SYNC|COUNTER_H\(0),
	datad => VCC,
	combout => \SYNC|Add0~0_combout\,
	cout => \SYNC|Add0~1\);

-- Location: LCCOMB_X29_Y15_N10
\SYNC|Add0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SYNC|Add0~2_combout\ = (\SYNC|COUNTER_H\(1) & (!\SYNC|Add0~1\)) # (!\SYNC|COUNTER_H\(1) & ((\SYNC|Add0~1\) # (GND)))
-- \SYNC|Add0~3\ = CARRY((!\SYNC|Add0~1\) # (!\SYNC|COUNTER_H\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \SYNC|COUNTER_H\(1),
	datad => VCC,
	cin => \SYNC|Add0~1\,
	combout => \SYNC|Add0~2_combout\,
	cout => \SYNC|Add0~3\);

-- Location: LCCOMB_X28_Y15_N18
\SYNC|Add0~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SYNC|Add0~28_combout\ = (\SYNC|Add0~2_combout\ & \SYNC|LessThan0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SYNC|Add0~2_combout\,
	datad => \SYNC|LessThan0~2_combout\,
	combout => \SYNC|Add0~28_combout\);

-- Location: FF_X28_Y15_N19
\SYNC|COUNTER_H[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK|TEMPORAL~clkctrl_outclk\,
	d => \SYNC|Add0~28_combout\,
	clrn => \ALT_INV_RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SYNC|COUNTER_H\(1));

-- Location: LCCOMB_X28_Y15_N8
\SYNC|Add0~29\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SYNC|Add0~29_combout\ = (\SYNC|Add0~0_combout\ & \SYNC|LessThan0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SYNC|Add0~0_combout\,
	datad => \SYNC|LessThan0~2_combout\,
	combout => \SYNC|Add0~29_combout\);

-- Location: FF_X28_Y15_N9
\SYNC|COUNTER_H[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK|TEMPORAL~clkctrl_outclk\,
	d => \SYNC|Add0~29_combout\,
	clrn => \ALT_INV_RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SYNC|COUNTER_H\(0));

-- Location: LCCOMB_X29_Y15_N12
\SYNC|Add0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SYNC|Add0~4_combout\ = (\SYNC|COUNTER_H\(2) & (\SYNC|Add0~3\ $ (GND))) # (!\SYNC|COUNTER_H\(2) & (!\SYNC|Add0~3\ & VCC))
-- \SYNC|Add0~5\ = CARRY((\SYNC|COUNTER_H\(2) & !\SYNC|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \SYNC|COUNTER_H\(2),
	datad => VCC,
	cin => \SYNC|Add0~3\,
	combout => \SYNC|Add0~4_combout\,
	cout => \SYNC|Add0~5\);

-- Location: LCCOMB_X28_Y15_N24
\SYNC|Add0~27\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SYNC|Add0~27_combout\ = (\SYNC|Add0~4_combout\ & \SYNC|LessThan0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SYNC|Add0~4_combout\,
	datad => \SYNC|LessThan0~2_combout\,
	combout => \SYNC|Add0~27_combout\);

-- Location: FF_X28_Y15_N25
\SYNC|COUNTER_H[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK|TEMPORAL~clkctrl_outclk\,
	d => \SYNC|Add0~27_combout\,
	clrn => \ALT_INV_RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SYNC|COUNTER_H\(2));

-- Location: LCCOMB_X28_Y15_N14
\SYNC|LessThan0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SYNC|LessThan0~0_combout\ = (((!\SYNC|COUNTER_H\(2)) # (!\SYNC|COUNTER_H\(0))) # (!\SYNC|COUNTER_H\(1))) # (!\SYNC|COUNTER_H\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SYNC|COUNTER_H\(3),
	datab => \SYNC|COUNTER_H\(1),
	datac => \SYNC|COUNTER_H\(0),
	datad => \SYNC|COUNTER_H\(2),
	combout => \SYNC|LessThan0~0_combout\);

-- Location: LCCOMB_X28_Y15_N28
\SYNC|LessThan0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SYNC|LessThan0~1_combout\ = (\SYNC|COUNTER_H\(5)) # ((\SYNC|COUNTER_H\(7)) # ((!\SYNC|LessThan0~0_combout\ & \SYNC|COUNTER_H\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SYNC|COUNTER_H\(5),
	datab => \SYNC|COUNTER_H\(7),
	datac => \SYNC|LessThan0~0_combout\,
	datad => \SYNC|COUNTER_H\(4),
	combout => \SYNC|LessThan0~1_combout\);

-- Location: LCCOMB_X28_Y15_N6
\SYNC|LessThan0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SYNC|LessThan0~2_combout\ = (((!\SYNC|COUNTER_H\(6) & !\SYNC|LessThan0~1_combout\)) # (!\SYNC|COUNTER_H\(8))) # (!\SYNC|COUNTER_H\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SYNC|COUNTER_H\(9),
	datab => \SYNC|COUNTER_H\(8),
	datac => \SYNC|COUNTER_H\(6),
	datad => \SYNC|LessThan0~1_combout\,
	combout => \SYNC|LessThan0~2_combout\);

-- Location: LCCOMB_X29_Y15_N14
\SYNC|Add0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SYNC|Add0~6_combout\ = (\SYNC|COUNTER_H\(3) & (!\SYNC|Add0~5\)) # (!\SYNC|COUNTER_H\(3) & ((\SYNC|Add0~5\) # (GND)))
-- \SYNC|Add0~7\ = CARRY((!\SYNC|Add0~5\) # (!\SYNC|COUNTER_H\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \SYNC|COUNTER_H\(3),
	datad => VCC,
	cin => \SYNC|Add0~5\,
	combout => \SYNC|Add0~6_combout\,
	cout => \SYNC|Add0~7\);

-- Location: LCCOMB_X28_Y15_N30
\SYNC|Add0~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SYNC|Add0~26_combout\ = (\SYNC|Add0~6_combout\ & \SYNC|LessThan0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SYNC|Add0~6_combout\,
	datad => \SYNC|LessThan0~2_combout\,
	combout => \SYNC|Add0~26_combout\);

-- Location: FF_X28_Y15_N31
\SYNC|COUNTER_H[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK|TEMPORAL~clkctrl_outclk\,
	d => \SYNC|Add0~26_combout\,
	clrn => \ALT_INV_RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SYNC|COUNTER_H\(3));

-- Location: LCCOMB_X29_Y15_N16
\SYNC|Add0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SYNC|Add0~8_combout\ = (\SYNC|COUNTER_H\(4) & (\SYNC|Add0~7\ $ (GND))) # (!\SYNC|COUNTER_H\(4) & (!\SYNC|Add0~7\ & VCC))
-- \SYNC|Add0~9\ = CARRY((\SYNC|COUNTER_H\(4) & !\SYNC|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \SYNC|COUNTER_H\(4),
	datad => VCC,
	cin => \SYNC|Add0~7\,
	combout => \SYNC|Add0~8_combout\,
	cout => \SYNC|Add0~9\);

-- Location: LCCOMB_X29_Y15_N0
\SYNC|Add0~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SYNC|Add0~25_combout\ = (\SYNC|LessThan0~2_combout\ & \SYNC|Add0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SYNC|LessThan0~2_combout\,
	datad => \SYNC|Add0~8_combout\,
	combout => \SYNC|Add0~25_combout\);

-- Location: FF_X27_Y15_N3
\SYNC|COUNTER_H[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK|TEMPORAL~clkctrl_outclk\,
	asdata => \SYNC|Add0~25_combout\,
	clrn => \ALT_INV_RST~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SYNC|COUNTER_H\(4));

-- Location: LCCOMB_X29_Y15_N18
\SYNC|Add0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SYNC|Add0~10_combout\ = (\SYNC|COUNTER_H\(5) & (!\SYNC|Add0~9\)) # (!\SYNC|COUNTER_H\(5) & ((\SYNC|Add0~9\) # (GND)))
-- \SYNC|Add0~11\ = CARRY((!\SYNC|Add0~9\) # (!\SYNC|COUNTER_H\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SYNC|COUNTER_H\(5),
	datad => VCC,
	cin => \SYNC|Add0~9\,
	combout => \SYNC|Add0~10_combout\,
	cout => \SYNC|Add0~11\);

-- Location: LCCOMB_X29_Y15_N20
\SYNC|Add0~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SYNC|Add0~12_combout\ = (\SYNC|COUNTER_H\(6) & (\SYNC|Add0~11\ $ (GND))) # (!\SYNC|COUNTER_H\(6) & (!\SYNC|Add0~11\ & VCC))
-- \SYNC|Add0~13\ = CARRY((\SYNC|COUNTER_H\(6) & !\SYNC|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \SYNC|COUNTER_H\(6),
	datad => VCC,
	cin => \SYNC|Add0~11\,
	combout => \SYNC|Add0~12_combout\,
	cout => \SYNC|Add0~13\);

-- Location: LCCOMB_X27_Y15_N12
\SYNC|Add0~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SYNC|Add0~14_combout\ = (\SYNC|LessThan0~2_combout\ & \SYNC|Add0~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SYNC|LessThan0~2_combout\,
	datad => \SYNC|Add0~12_combout\,
	combout => \SYNC|Add0~14_combout\);

-- Location: FF_X27_Y15_N13
\SYNC|COUNTER_H[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK|TEMPORAL~clkctrl_outclk\,
	d => \SYNC|Add0~14_combout\,
	clrn => \ALT_INV_RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SYNC|COUNTER_H\(6));

-- Location: LCCOMB_X27_Y15_N8
\SYNC|Add0~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SYNC|Add0~24_combout\ = (\SYNC|LessThan0~2_combout\ & \SYNC|Add0~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SYNC|LessThan0~2_combout\,
	datad => \SYNC|Add0~16_combout\,
	combout => \SYNC|Add0~24_combout\);

-- Location: FF_X27_Y15_N9
\SYNC|COUNTER_H[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK|TEMPORAL~clkctrl_outclk\,
	d => \SYNC|Add0~24_combout\,
	clrn => \ALT_INV_RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SYNC|COUNTER_H\(7));

-- Location: LCCOMB_X29_Y15_N26
\SYNC|Add0~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SYNC|Add0~20_combout\ = \SYNC|Add0~19\ $ (\SYNC|COUNTER_H\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \SYNC|COUNTER_H\(9),
	cin => \SYNC|Add0~19\,
	combout => \SYNC|Add0~20_combout\);

-- Location: LCCOMB_X27_Y15_N16
\SYNC|Add0~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SYNC|Add0~22_combout\ = (\SYNC|LessThan0~2_combout\ & \SYNC|Add0~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SYNC|LessThan0~2_combout\,
	datad => \SYNC|Add0~20_combout\,
	combout => \SYNC|Add0~22_combout\);

-- Location: FF_X27_Y15_N17
\SYNC|COUNTER_H[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK|TEMPORAL~clkctrl_outclk\,
	d => \SYNC|Add0~22_combout\,
	clrn => \ALT_INV_RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SYNC|COUNTER_H\(9));

-- Location: LCCOMB_X28_Y15_N20
\SYNC|LessThan1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SYNC|LessThan1~0_combout\ = (!\SYNC|COUNTER_H\(8) & (!\SYNC|COUNTER_H\(9) & ((!\SYNC|COUNTER_H\(6)) # (!\SYNC|COUNTER_H\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SYNC|COUNTER_H\(5),
	datab => \SYNC|COUNTER_H\(8),
	datac => \SYNC|COUNTER_H\(9),
	datad => \SYNC|COUNTER_H\(6),
	combout => \SYNC|LessThan1~0_combout\);

-- Location: LCCOMB_X29_Y15_N28
\SYNC|LessThan1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SYNC|LessThan1~1_combout\ = (!\SYNC|COUNTER_H\(7) & \SYNC|LessThan1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SYNC|COUNTER_H\(7),
	datad => \SYNC|LessThan1~0_combout\,
	combout => \SYNC|LessThan1~1_combout\);

-- Location: LCCOMB_X22_Y15_N22
\SYNC|Add1~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SYNC|Add1~12_combout\ = (\SYNC|COUNTER_V\(6) & (\SYNC|Add1~11\ $ (GND))) # (!\SYNC|COUNTER_V\(6) & (!\SYNC|Add1~11\ & VCC))
-- \SYNC|Add1~13\ = CARRY((\SYNC|COUNTER_V\(6) & !\SYNC|Add1~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SYNC|COUNTER_V\(6),
	datad => VCC,
	cin => \SYNC|Add1~11\,
	combout => \SYNC|Add1~12_combout\,
	cout => \SYNC|Add1~13\);

-- Location: LCCOMB_X29_Y15_N2
\SYNC|Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SYNC|Equal0~0_combout\ = ((!\SYNC|Add0~20_combout\ & (!\SYNC|Add0~16_combout\ & !\SYNC|Add0~18_combout\))) # (!\SYNC|LessThan0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SYNC|Add0~20_combout\,
	datab => \SYNC|LessThan0~2_combout\,
	datac => \SYNC|Add0~16_combout\,
	datad => \SYNC|Add0~18_combout\,
	combout => \SYNC|Equal0~0_combout\);

-- Location: LCCOMB_X29_Y15_N4
\SYNC|Equal0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SYNC|Equal0~1_combout\ = ((!\SYNC|Add0~12_combout\ & (!\SYNC|Add0~0_combout\ & !\SYNC|Add0~10_combout\))) # (!\SYNC|LessThan0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SYNC|Add0~12_combout\,
	datab => \SYNC|LessThan0~2_combout\,
	datac => \SYNC|Add0~0_combout\,
	datad => \SYNC|Add0~10_combout\,
	combout => \SYNC|Equal0~1_combout\);

-- Location: LCCOMB_X29_Y15_N6
\SYNC|Equal0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SYNC|Equal0~3_combout\ = (\SYNC|Equal0~2_combout\ & (\SYNC|Equal0~0_combout\ & (\SYNC|Equal0~1_combout\ & !\SYNC|Add0~25_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SYNC|Equal0~2_combout\,
	datab => \SYNC|Equal0~0_combout\,
	datac => \SYNC|Equal0~1_combout\,
	datad => \SYNC|Add0~25_combout\,
	combout => \SYNC|Equal0~3_combout\);

-- Location: FF_X21_Y15_N17
\SYNC|COUNTER_V[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK|TEMPORAL~clkctrl_outclk\,
	asdata => \SYNC|Add1~12_combout\,
	clrn => \ALT_INV_RST~input_o\,
	sload => VCC,
	ena => \SYNC|Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SYNC|COUNTER_V\(6));

-- Location: LCCOMB_X22_Y15_N4
\SYNC|Equal1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SYNC|Equal1~0_combout\ = (!\SYNC|COUNTER_V\(8) & (!\SYNC|COUNTER_V\(7) & (!\SYNC|COUNTER_V\(6) & !\SYNC|COUNTER_V\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SYNC|COUNTER_V\(8),
	datab => \SYNC|COUNTER_V\(7),
	datac => \SYNC|COUNTER_V\(6),
	datad => \SYNC|COUNTER_V\(5),
	combout => \SYNC|Equal1~0_combout\);

-- Location: LCCOMB_X22_Y15_N2
\SYNC|Equal1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SYNC|Equal1~1_combout\ = (!\SYNC|COUNTER_V\(4) & (\SYNC|Equal1~0_combout\ & (!\SYNC|COUNTER_V\(1) & !\SYNC|COUNTER_V\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SYNC|COUNTER_V\(4),
	datab => \SYNC|Equal1~0_combout\,
	datac => \SYNC|COUNTER_V\(1),
	datad => \SYNC|COUNTER_V\(2),
	combout => \SYNC|Equal1~1_combout\);

-- Location: LCCOMB_X22_Y15_N16
\SYNC|Add1~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SYNC|Add1~6_combout\ = (\SYNC|COUNTER_V\(3) & (!\SYNC|Add1~5\)) # (!\SYNC|COUNTER_V\(3) & ((\SYNC|Add1~5\) # (GND)))
-- \SYNC|Add1~7\ = CARRY((!\SYNC|Add1~5\) # (!\SYNC|COUNTER_V\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SYNC|COUNTER_V\(3),
	datad => VCC,
	cin => \SYNC|Add1~5\,
	combout => \SYNC|Add1~6_combout\,
	cout => \SYNC|Add1~7\);

-- Location: LCCOMB_X21_Y15_N0
\SYNC|COUNTER_V~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SYNC|COUNTER_V~1_combout\ = (\SYNC|Add1~6_combout\ & !\SYNC|Equal1~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SYNC|Add1~6_combout\,
	datad => \SYNC|Equal1~2_combout\,
	combout => \SYNC|COUNTER_V~1_combout\);

-- Location: FF_X21_Y15_N1
\SYNC|COUNTER_V[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK|TEMPORAL~clkctrl_outclk\,
	d => \SYNC|COUNTER_V~1_combout\,
	clrn => \ALT_INV_RST~input_o\,
	ena => \SYNC|Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SYNC|COUNTER_V\(3));

-- Location: LCCOMB_X22_Y15_N6
\SYNC|Equal1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SYNC|Equal1~2_combout\ = (\SYNC|COUNTER_V\(9) & (\SYNC|Equal1~1_combout\ & (!\SYNC|COUNTER_V\(0) & \SYNC|COUNTER_V\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SYNC|COUNTER_V\(9),
	datab => \SYNC|Equal1~1_combout\,
	datac => \SYNC|COUNTER_V\(0),
	datad => \SYNC|COUNTER_V\(3),
	combout => \SYNC|Equal1~2_combout\);

-- Location: LCCOMB_X22_Y15_N30
\SYNC|COUNTER_V~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SYNC|COUNTER_V~2_combout\ = (\SYNC|Add1~0_combout\ & !\SYNC|Equal1~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SYNC|Add1~0_combout\,
	datad => \SYNC|Equal1~2_combout\,
	combout => \SYNC|COUNTER_V~2_combout\);

-- Location: FF_X21_Y15_N15
\SYNC|COUNTER_V[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK|TEMPORAL~clkctrl_outclk\,
	asdata => \SYNC|COUNTER_V~2_combout\,
	clrn => \ALT_INV_RST~input_o\,
	sload => VCC,
	ena => \SYNC|Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SYNC|COUNTER_V\(0));

-- Location: LCCOMB_X22_Y15_N12
\SYNC|Add1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SYNC|Add1~2_combout\ = (\SYNC|COUNTER_V\(1) & (!\SYNC|Add1~1\)) # (!\SYNC|COUNTER_V\(1) & ((\SYNC|Add1~1\) # (GND)))
-- \SYNC|Add1~3\ = CARRY((!\SYNC|Add1~1\) # (!\SYNC|COUNTER_V\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \SYNC|COUNTER_V\(1),
	datad => VCC,
	cin => \SYNC|Add1~1\,
	combout => \SYNC|Add1~2_combout\,
	cout => \SYNC|Add1~3\);

-- Location: FF_X21_Y15_N19
\SYNC|COUNTER_V[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK|TEMPORAL~clkctrl_outclk\,
	asdata => \SYNC|Add1~2_combout\,
	clrn => \ALT_INV_RST~input_o\,
	sload => VCC,
	ena => \SYNC|Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SYNC|COUNTER_V\(1));

-- Location: LCCOMB_X22_Y15_N14
\SYNC|Add1~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SYNC|Add1~4_combout\ = (\SYNC|COUNTER_V\(2) & (\SYNC|Add1~3\ $ (GND))) # (!\SYNC|COUNTER_V\(2) & (!\SYNC|Add1~3\ & VCC))
-- \SYNC|Add1~5\ = CARRY((\SYNC|COUNTER_V\(2) & !\SYNC|Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \SYNC|COUNTER_V\(2),
	datad => VCC,
	cin => \SYNC|Add1~3\,
	combout => \SYNC|Add1~4_combout\,
	cout => \SYNC|Add1~5\);

-- Location: FF_X21_Y15_N25
\SYNC|COUNTER_V[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK|TEMPORAL~clkctrl_outclk\,
	asdata => \SYNC|Add1~4_combout\,
	clrn => \ALT_INV_RST~input_o\,
	sload => VCC,
	ena => \SYNC|Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SYNC|COUNTER_V\(2));

-- Location: LCCOMB_X22_Y15_N18
\SYNC|Add1~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SYNC|Add1~8_combout\ = (\SYNC|COUNTER_V\(4) & (\SYNC|Add1~7\ $ (GND))) # (!\SYNC|COUNTER_V\(4) & (!\SYNC|Add1~7\ & VCC))
-- \SYNC|Add1~9\ = CARRY((\SYNC|COUNTER_V\(4) & !\SYNC|Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SYNC|COUNTER_V\(4),
	datad => VCC,
	cin => \SYNC|Add1~7\,
	combout => \SYNC|Add1~8_combout\,
	cout => \SYNC|Add1~9\);

-- Location: LCCOMB_X22_Y15_N20
\SYNC|Add1~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SYNC|Add1~10_combout\ = (\SYNC|COUNTER_V\(5) & (!\SYNC|Add1~9\)) # (!\SYNC|COUNTER_V\(5) & ((\SYNC|Add1~9\) # (GND)))
-- \SYNC|Add1~11\ = CARRY((!\SYNC|Add1~9\) # (!\SYNC|COUNTER_V\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \SYNC|COUNTER_V\(5),
	datad => VCC,
	cin => \SYNC|Add1~9\,
	combout => \SYNC|Add1~10_combout\,
	cout => \SYNC|Add1~11\);

-- Location: FF_X21_Y15_N11
\SYNC|COUNTER_V[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK|TEMPORAL~clkctrl_outclk\,
	asdata => \SYNC|Add1~10_combout\,
	clrn => \ALT_INV_RST~input_o\,
	sload => VCC,
	ena => \SYNC|Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SYNC|COUNTER_V\(5));

-- Location: LCCOMB_X22_Y15_N24
\SYNC|Add1~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SYNC|Add1~14_combout\ = (\SYNC|COUNTER_V\(7) & (!\SYNC|Add1~13\)) # (!\SYNC|COUNTER_V\(7) & ((\SYNC|Add1~13\) # (GND)))
-- \SYNC|Add1~15\ = CARRY((!\SYNC|Add1~13\) # (!\SYNC|COUNTER_V\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \SYNC|COUNTER_V\(7),
	datad => VCC,
	cin => \SYNC|Add1~13\,
	combout => \SYNC|Add1~14_combout\,
	cout => \SYNC|Add1~15\);

-- Location: FF_X22_Y15_N25
\SYNC|COUNTER_V[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK|TEMPORAL~clkctrl_outclk\,
	d => \SYNC|Add1~14_combout\,
	clrn => \ALT_INV_RST~input_o\,
	ena => \SYNC|Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SYNC|COUNTER_V\(7));

-- Location: LCCOMB_X22_Y15_N28
\SYNC|Add1~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SYNC|Add1~18_combout\ = \SYNC|Add1~17\ $ (\SYNC|COUNTER_V\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \SYNC|COUNTER_V\(9),
	cin => \SYNC|Add1~17\,
	combout => \SYNC|Add1~18_combout\);

-- Location: LCCOMB_X22_Y15_N8
\SYNC|COUNTER_V~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SYNC|COUNTER_V~0_combout\ = (!\SYNC|Equal1~2_combout\ & \SYNC|Add1~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SYNC|Equal1~2_combout\,
	datad => \SYNC|Add1~18_combout\,
	combout => \SYNC|COUNTER_V~0_combout\);

-- Location: FF_X21_Y15_N9
\SYNC|COUNTER_V[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK|TEMPORAL~clkctrl_outclk\,
	asdata => \SYNC|COUNTER_V~0_combout\,
	clrn => \ALT_INV_RST~input_o\,
	sload => VCC,
	ena => \SYNC|Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SYNC|COUNTER_V\(9));

-- Location: LCCOMB_X22_Y15_N0
\SYNC|LessThan2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SYNC|LessThan2~0_combout\ = (\SYNC|COUNTER_V\(9)) # ((\SYNC|COUNTER_V\(3)) # (!\SYNC|Equal1~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SYNC|COUNTER_V\(9),
	datab => \SYNC|Equal1~1_combout\,
	datad => \SYNC|COUNTER_V\(3),
	combout => \SYNC|LessThan2~0_combout\);

-- Location: LCCOMB_X20_Y1_N0
\CLK|TEMPORAL~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CLK|TEMPORAL~0_combout\ = !\CLK|TEMPORAL~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CLK|TEMPORAL~q\,
	combout => \CLK|TEMPORAL~0_combout\);

-- Location: LCCOMB_X20_Y1_N4
\CLK|TEMPORAL~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CLK|TEMPORAL~feeder_combout\ = \CLK|TEMPORAL~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \CLK|TEMPORAL~0_combout\,
	combout => \CLK|TEMPORAL~feeder_combout\);

-- Location: FF_X20_Y1_N5
\CLK|TEMPORAL\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLK_50MHz~inputclkctrl_outclk\,
	d => \CLK|TEMPORAL~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CLK|TEMPORAL~q\);

-- Location: CLKCTRL_G17
\CLK|TEMPORAL~clkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLK|TEMPORAL~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLK|TEMPORAL~clkctrl_outclk\);

-- Location: FF_X21_Y15_N23
\SYNC|COUNTER_V[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK|TEMPORAL~clkctrl_outclk\,
	asdata => \SYNC|Add1~8_combout\,
	clrn => \ALT_INV_RST~input_o\,
	sload => VCC,
	ena => \SYNC|Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SYNC|COUNTER_V\(4));

-- Location: LCCOMB_X21_Y15_N6
\SYNC|Add3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SYNC|Add3~0_combout\ = \SYNC|COUNTER_V\(0) $ (VCC)
-- \SYNC|Add3~1\ = CARRY(\SYNC|COUNTER_V\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SYNC|COUNTER_V\(0),
	datad => VCC,
	combout => \SYNC|Add3~0_combout\,
	cout => \SYNC|Add3~1\);

-- Location: LCCOMB_X21_Y15_N8
\SYNC|Add3~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SYNC|Add3~2_combout\ = (\SYNC|COUNTER_V\(1) & (!\SYNC|Add3~1\)) # (!\SYNC|COUNTER_V\(1) & ((\SYNC|Add3~1\) # (GND)))
-- \SYNC|Add3~3\ = CARRY((!\SYNC|Add3~1\) # (!\SYNC|COUNTER_V\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \SYNC|COUNTER_V\(1),
	datad => VCC,
	cin => \SYNC|Add3~1\,
	combout => \SYNC|Add3~2_combout\,
	cout => \SYNC|Add3~3\);

-- Location: LCCOMB_X21_Y15_N10
\SYNC|Add3~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SYNC|Add3~4_combout\ = (\SYNC|COUNTER_V\(2) & (\SYNC|Add3~3\ $ (GND))) # (!\SYNC|COUNTER_V\(2) & (!\SYNC|Add3~3\ & VCC))
-- \SYNC|Add3~5\ = CARRY((\SYNC|COUNTER_V\(2) & !\SYNC|Add3~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \SYNC|COUNTER_V\(2),
	datad => VCC,
	cin => \SYNC|Add3~3\,
	combout => \SYNC|Add3~4_combout\,
	cout => \SYNC|Add3~5\);

-- Location: LCCOMB_X21_Y15_N12
\SYNC|Add3~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SYNC|Add3~6_combout\ = (\SYNC|COUNTER_V\(3) & (!\SYNC|Add3~5\)) # (!\SYNC|COUNTER_V\(3) & ((\SYNC|Add3~5\) # (GND)))
-- \SYNC|Add3~7\ = CARRY((!\SYNC|Add3~5\) # (!\SYNC|COUNTER_V\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \SYNC|COUNTER_V\(3),
	datad => VCC,
	cin => \SYNC|Add3~5\,
	combout => \SYNC|Add3~6_combout\,
	cout => \SYNC|Add3~7\);

-- Location: LCCOMB_X21_Y15_N14
\SYNC|Add3~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SYNC|Add3~8_combout\ = (\SYNC|COUNTER_V\(4) & (\SYNC|Add3~7\ $ (GND))) # (!\SYNC|COUNTER_V\(4) & (!\SYNC|Add3~7\ & VCC))
-- \SYNC|Add3~9\ = CARRY((\SYNC|COUNTER_V\(4) & !\SYNC|Add3~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \SYNC|COUNTER_V\(4),
	datad => VCC,
	cin => \SYNC|Add3~7\,
	combout => \SYNC|Add3~8_combout\,
	cout => \SYNC|Add3~9\);

-- Location: LCCOMB_X21_Y15_N16
\SYNC|Add3~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SYNC|Add3~10_combout\ = (\SYNC|COUNTER_V\(5) & (\SYNC|Add3~9\ & VCC)) # (!\SYNC|COUNTER_V\(5) & (!\SYNC|Add3~9\))
-- \SYNC|Add3~11\ = CARRY((!\SYNC|COUNTER_V\(5) & !\SYNC|Add3~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \SYNC|COUNTER_V\(5),
	datad => VCC,
	cin => \SYNC|Add3~9\,
	combout => \SYNC|Add3~10_combout\,
	cout => \SYNC|Add3~11\);

-- Location: LCCOMB_X21_Y15_N18
\SYNC|Add3~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SYNC|Add3~12_combout\ = (\SYNC|COUNTER_V\(6) & ((GND) # (!\SYNC|Add3~11\))) # (!\SYNC|COUNTER_V\(6) & (\SYNC|Add3~11\ $ (GND)))
-- \SYNC|Add3~13\ = CARRY((\SYNC|COUNTER_V\(6)) # (!\SYNC|Add3~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SYNC|COUNTER_V\(6),
	datad => VCC,
	cin => \SYNC|Add3~11\,
	combout => \SYNC|Add3~12_combout\,
	cout => \SYNC|Add3~13\);

-- Location: LCCOMB_X21_Y15_N20
\SYNC|Add3~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SYNC|Add3~14_combout\ = (\SYNC|COUNTER_V\(7) & (\SYNC|Add3~13\ & VCC)) # (!\SYNC|COUNTER_V\(7) & (!\SYNC|Add3~13\))
-- \SYNC|Add3~15\ = CARRY((!\SYNC|COUNTER_V\(7) & !\SYNC|Add3~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \SYNC|COUNTER_V\(7),
	datad => VCC,
	cin => \SYNC|Add3~13\,
	combout => \SYNC|Add3~14_combout\,
	cout => \SYNC|Add3~15\);

-- Location: LCCOMB_X21_Y15_N22
\SYNC|Add3~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SYNC|Add3~16_combout\ = (\SYNC|COUNTER_V\(8) & ((GND) # (!\SYNC|Add3~15\))) # (!\SYNC|COUNTER_V\(8) & (\SYNC|Add3~15\ $ (GND)))
-- \SYNC|Add3~17\ = CARRY((\SYNC|COUNTER_V\(8)) # (!\SYNC|Add3~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SYNC|COUNTER_V\(8),
	datad => VCC,
	cin => \SYNC|Add3~15\,
	combout => \SYNC|Add3~16_combout\,
	cout => \SYNC|Add3~17\);

-- Location: LCCOMB_X21_Y15_N24
\SYNC|Add3~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SYNC|Add3~18_combout\ = \SYNC|Add3~17\ $ (!\SYNC|COUNTER_V\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \SYNC|COUNTER_V\(9),
	cin => \SYNC|Add3~17\,
	combout => \SYNC|Add3~18_combout\);

-- Location: LCCOMB_X21_Y15_N2
\LessThan24~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan24~2_combout\ = (!\SYNC|Add3~18_combout\ & (((!\SYNC|Add3~14_combout\ & !\SYNC|Add3~12_combout\)) # (!\SYNC|Add3~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SYNC|Add3~16_combout\,
	datab => \SYNC|Add3~14_combout\,
	datac => \SYNC|Add3~18_combout\,
	datad => \SYNC|Add3~12_combout\,
	combout => \LessThan24~2_combout\);

-- Location: LCCOMB_X21_Y15_N28
\LessThan23~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan23~0_combout\ = (\SYNC|Add3~0_combout\) # ((\SYNC|Add3~10_combout\) # ((\SYNC|Add3~18_combout\) # (\SYNC|Add3~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SYNC|Add3~0_combout\,
	datab => \SYNC|Add3~10_combout\,
	datac => \SYNC|Add3~18_combout\,
	datad => \SYNC|Add3~14_combout\,
	combout => \LessThan23~0_combout\);

-- Location: LCCOMB_X21_Y15_N26
\LessThan23~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan23~1_combout\ = (\SYNC|Add3~4_combout\) # ((\SYNC|Add3~2_combout\) # ((\SYNC|Add3~8_combout\) # (\SYNC|Add3~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SYNC|Add3~4_combout\,
	datab => \SYNC|Add3~2_combout\,
	datac => \SYNC|Add3~8_combout\,
	datad => \SYNC|Add3~6_combout\,
	combout => \LessThan23~1_combout\);

-- Location: LCCOMB_X21_Y11_N0
\LessThan23~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan23~2_combout\ = (\SYNC|Add3~12_combout\) # ((\LessThan23~1_combout\) # (\SYNC|Add3~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SYNC|Add3~12_combout\,
	datac => \LessThan23~1_combout\,
	datad => \SYNC|Add3~16_combout\,
	combout => \LessThan23~2_combout\);

-- Location: LCCOMB_X21_Y11_N26
\process_0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \process_0~0_combout\ = (\LessThan24~1_combout\ & (((\LessThan23~0_combout\) # (\LessThan23~2_combout\)))) # (!\LessThan24~1_combout\ & (\LessThan24~2_combout\ & ((\LessThan23~0_combout\) # (\LessThan23~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan24~1_combout\,
	datab => \LessThan24~2_combout\,
	datac => \LessThan23~0_combout\,
	datad => \LessThan23~2_combout\,
	combout => \process_0~0_combout\);

-- Location: IOIBUF_X0_Y23_N1
\DO~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DO,
	o => \DO~input_o\);

-- Location: LCCOMB_X22_Y14_N20
\DEBDO|Q1~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DEBDO|Q1~feeder_combout\ = \DO~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DO~input_o\,
	combout => \DEBDO|Q1~feeder_combout\);

-- Location: FF_X22_Y14_N21
\DEBDO|Q1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK100|C100HZ~clkctrl_outclk\,
	d => \DEBDO|Q1~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DEBDO|Q1~q\);

-- Location: LCCOMB_X22_Y14_N30
\DEBDO|Q2~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DEBDO|Q2~feeder_combout\ = \DEBDO|Q1~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DEBDO|Q1~q\,
	combout => \DEBDO|Q2~feeder_combout\);

-- Location: FF_X22_Y14_N31
\DEBDO|Q2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK100|C100HZ~clkctrl_outclk\,
	d => \DEBDO|Q2~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DEBDO|Q2~q\);

-- Location: FF_X22_Y14_N11
\DEBDO|Q3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK100|C100HZ~clkctrl_outclk\,
	asdata => \DEBDO|Q2~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DEBDO|Q3~q\);

-- Location: LCCOMB_X22_Y14_N10
\DEBDO|QOUT~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DEBDO|QOUT~0_combout\ = (\DEBDO|Q2~q\ & (\DEBDO|Q3~q\ & \DEBDO|Q1~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DEBDO|Q2~q\,
	datac => \DEBDO|Q3~q\,
	datad => \DEBDO|Q1~q\,
	combout => \DEBDO|QOUT~0_combout\);

-- Location: LCCOMB_X22_Y14_N8
\process_0~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \process_0~15_combout\ = ((\DEBDO|QOUT~0_combout\) # (!\process_0~0_combout\)) # (!\process_0~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~3_combout\,
	datac => \process_0~0_combout\,
	datad => \DEBDO|QOUT~0_combout\,
	combout => \process_0~15_combout\);

-- Location: LCCOMB_X21_Y11_N18
\LessThan23~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan23~3_combout\ = (\LessThan23~1_combout\) # ((\SYNC|Add3~16_combout\) # ((\LessThan23~0_combout\) # (\SYNC|Add3~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan23~1_combout\,
	datab => \SYNC|Add3~16_combout\,
	datac => \LessThan23~0_combout\,
	datad => \SYNC|Add3~12_combout\,
	combout => \LessThan23~3_combout\);

-- Location: LCCOMB_X28_Y15_N0
\SYNC|Add0~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SYNC|Add0~15_combout\ = (\SYNC|LessThan0~2_combout\ & \SYNC|Add0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SYNC|LessThan0~2_combout\,
	datad => \SYNC|Add0~10_combout\,
	combout => \SYNC|Add0~15_combout\);

-- Location: FF_X27_Y15_N19
\SYNC|COUNTER_H[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK|TEMPORAL~clkctrl_outclk\,
	asdata => \SYNC|Add0~15_combout\,
	clrn => \ALT_INV_RST~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SYNC|COUNTER_H\(5));

-- Location: LCCOMB_X27_Y15_N4
\SYNC|Add2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SYNC|Add2~0_combout\ = (\SYNC|COUNTER_H\(7) & ((\SYNC|COUNTER_H\(6)) # ((\SYNC|COUNTER_H\(4)) # (\SYNC|COUNTER_H\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SYNC|COUNTER_H\(6),
	datab => \SYNC|COUNTER_H\(4),
	datac => \SYNC|COUNTER_H\(7),
	datad => \SYNC|COUNTER_H\(5),
	combout => \SYNC|Add2~0_combout\);

-- Location: LCCOMB_X26_Y15_N24
\SYNC|Add2~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SYNC|Add2~4_combout\ = \SYNC|COUNTER_H\(8) $ (\SYNC|Add2~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SYNC|COUNTER_H\(8),
	datad => \SYNC|Add2~0_combout\,
	combout => \SYNC|Add2~4_combout\);

-- Location: LCCOMB_X27_Y15_N24
\LessThan22~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan22~0_combout\ = (\SYNC|COUNTER_H\(7) & (\SYNC|COUNTER_H\(6) $ (((\SYNC|COUNTER_H\(4)) # (\SYNC|COUNTER_H\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SYNC|COUNTER_H\(6),
	datab => \SYNC|COUNTER_H\(4),
	datac => \SYNC|COUNTER_H\(7),
	datad => \SYNC|COUNTER_H\(5),
	combout => \LessThan22~0_combout\);

-- Location: LCCOMB_X27_Y15_N20
\LessThan22~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan22~1_combout\ = (\LessThan22~0_combout\ & ((\SYNC|COUNTER_H\(5) & ((\SYNC|LessThan0~0_combout\) # (!\SYNC|COUNTER_H\(4)))) # (!\SYNC|COUNTER_H\(5) & ((\SYNC|COUNTER_H\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SYNC|COUNTER_H\(5),
	datab => \LessThan22~0_combout\,
	datac => \SYNC|LessThan0~0_combout\,
	datad => \SYNC|COUNTER_H\(4),
	combout => \LessThan22~1_combout\);

-- Location: LCCOMB_X27_Y15_N22
\SYNC|Add2~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SYNC|Add2~3_combout\ = \SYNC|COUNTER_H\(9) $ (((\SYNC|COUNTER_H\(8)) # (\SYNC|Add2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011000110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SYNC|COUNTER_H\(8),
	datab => \SYNC|COUNTER_H\(9),
	datac => \SYNC|Add2~0_combout\,
	combout => \SYNC|Add2~3_combout\);

-- Location: LCCOMB_X26_Y15_N20
\B~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \B~2_combout\ = (\SYNC|Add2~3_combout\ & (\LessThan21~2_combout\)) # (!\SYNC|Add2~3_combout\ & (((\SYNC|Add2~4_combout\ & \LessThan22~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan21~2_combout\,
	datab => \SYNC|Add2~4_combout\,
	datac => \LessThan22~1_combout\,
	datad => \SYNC|Add2~3_combout\,
	combout => \B~2_combout\);

-- Location: LCCOMB_X21_Y11_N6
\process_0~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \process_0~9_combout\ = (\LessThan23~3_combout\ & (\B~2_combout\ & ((\LessThan24~1_combout\) # (\LessThan24~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan24~1_combout\,
	datab => \LessThan23~3_combout\,
	datac => \LessThan24~2_combout\,
	datad => \B~2_combout\,
	combout => \process_0~9_combout\);

-- Location: LCCOMB_X28_Y15_N16
\LessThan25~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan25~0_combout\ = (\SYNC|COUNTER_H\(1)) # ((\SYNC|COUNTER_H\(3)) # (\SYNC|COUNTER_H\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SYNC|COUNTER_H\(1),
	datac => \SYNC|COUNTER_H\(3),
	datad => \SYNC|COUNTER_H\(2),
	combout => \LessThan25~0_combout\);

-- Location: LCCOMB_X27_Y15_N2
\LessThan17~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan17~7_combout\ = (\SYNC|COUNTER_H\(5) & (\SYNC|COUNTER_H\(6))) # (!\SYNC|COUNTER_H\(5) & ((\SYNC|COUNTER_H\(6) & (\SYNC|COUNTER_H\(4) & \LessThan25~0_combout\)) # (!\SYNC|COUNTER_H\(6) & (!\SYNC|COUNTER_H\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100110001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SYNC|COUNTER_H\(5),
	datab => \SYNC|COUNTER_H\(6),
	datac => \SYNC|COUNTER_H\(4),
	datad => \LessThan25~0_combout\,
	combout => \LessThan17~7_combout\);

-- Location: LCCOMB_X27_Y15_N14
\SYNC|Add2~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SYNC|Add2~1_combout\ = \SYNC|COUNTER_H\(7) $ (((\SYNC|COUNTER_H\(6)) # ((\SYNC|COUNTER_H\(5)) # (\SYNC|COUNTER_H\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SYNC|COUNTER_H\(6),
	datab => \SYNC|COUNTER_H\(5),
	datac => \SYNC|COUNTER_H\(7),
	datad => \SYNC|COUNTER_H\(4),
	combout => \SYNC|Add2~1_combout\);

-- Location: LCCOMB_X27_Y15_N0
\LessThan17~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan17~8_combout\ = (\LessThan17~7_combout\ & (\SYNC|COUNTER_H\(8) $ (((!\SYNC|Add2~0_combout\))))) # (!\LessThan17~7_combout\ & (\SYNC|Add2~1_combout\ & (\SYNC|COUNTER_H\(8) $ (!\SYNC|Add2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SYNC|COUNTER_H\(8),
	datab => \LessThan17~7_combout\,
	datac => \SYNC|Add2~1_combout\,
	datad => \SYNC|Add2~0_combout\,
	combout => \LessThan17~8_combout\);

-- Location: LCCOMB_X26_Y15_N18
\LessThan17~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan17~6_combout\ = (\LessThan17~5_combout\ & (!\LessThan25~0_combout\ & (!\SYNC|Add2~1_combout\ & \SYNC|Add2~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan17~5_combout\,
	datab => \LessThan25~0_combout\,
	datac => \SYNC|Add2~1_combout\,
	datad => \SYNC|Add2~4_combout\,
	combout => \LessThan17~6_combout\);

-- Location: LCCOMB_X26_Y15_N22
\LessThan21~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan21~1_combout\ = (\SYNC|COUNTER_H\(4) & (\SYNC|COUNTER_H\(6) & \SYNC|COUNTER_H\(5))) # (!\SYNC|COUNTER_H\(4) & (!\SYNC|COUNTER_H\(6) & !\SYNC|COUNTER_H\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SYNC|COUNTER_H\(4),
	datac => \SYNC|COUNTER_H\(6),
	datad => \SYNC|COUNTER_H\(5),
	combout => \LessThan21~1_combout\);

-- Location: LCCOMB_X26_Y15_N4
\LessThan14~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan14~4_combout\ = (((\SYNC|LessThan0~0_combout\ & \SYNC|COUNTER_H\(4))) # (!\SYNC|Add2~1_combout\)) # (!\LessThan21~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SYNC|LessThan0~0_combout\,
	datab => \SYNC|COUNTER_H\(4),
	datac => \LessThan21~1_combout\,
	datad => \SYNC|Add2~1_combout\,
	combout => \LessThan14~4_combout\);

-- Location: LCCOMB_X26_Y15_N2
\LessThan14~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan14~5_combout\ = (!\SYNC|COUNTER_H\(9) & (\LessThan14~4_combout\ & (\SYNC|COUNTER_H\(8) $ (\SYNC|Add2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SYNC|COUNTER_H\(9),
	datab => \SYNC|COUNTER_H\(8),
	datac => \LessThan14~4_combout\,
	datad => \SYNC|Add2~0_combout\,
	combout => \LessThan14~5_combout\);

-- Location: LCCOMB_X26_Y15_N8
\LessThan10~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan10~3_combout\ = (\SYNC|COUNTER_H\(4) & (((\SYNC|LessThan0~0_combout\ & !\SYNC|COUNTER_H\(5))) # (!\SYNC|COUNTER_H\(6)))) # (!\SYNC|COUNTER_H\(4) & ((\SYNC|COUNTER_H\(6) $ (\SYNC|COUNTER_H\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111110111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SYNC|LessThan0~0_combout\,
	datab => \SYNC|COUNTER_H\(4),
	datac => \SYNC|COUNTER_H\(6),
	datad => \SYNC|COUNTER_H\(5),
	combout => \LessThan10~3_combout\);

-- Location: LCCOMB_X26_Y15_N12
\LessThan10~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan10~2_combout\ = (!\SYNC|Add2~1_combout\ & (\SYNC|Add2~3_combout\ & (\LessThan10~3_combout\ & \SYNC|Add2~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SYNC|Add2~1_combout\,
	datab => \SYNC|Add2~3_combout\,
	datac => \LessThan10~3_combout\,
	datad => \SYNC|Add2~4_combout\,
	combout => \LessThan10~2_combout\);

-- Location: LCCOMB_X26_Y15_N30
\R[0]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \R[0]~4_combout\ = (\LessThan13~5_combout\ & ((\LessThan14~5_combout\) # ((!\LessThan17~6_combout\ & \LessThan10~2_combout\)))) # (!\LessThan13~5_combout\ & (!\LessThan17~6_combout\ & ((\LessThan10~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan13~5_combout\,
	datab => \LessThan17~6_combout\,
	datac => \LessThan14~5_combout\,
	datad => \LessThan10~2_combout\,
	combout => \R[0]~4_combout\);

-- Location: LCCOMB_X21_Y14_N24
\R[0]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \R[0]~5_combout\ = (\process_0~0_combout\ & ((\R[0]~4_combout\) # ((\LessThan18~0_combout\ & \LessThan17~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan18~0_combout\,
	datab => \LessThan17~8_combout\,
	datac => \R[0]~4_combout\,
	datad => \process_0~0_combout\,
	combout => \R[0]~5_combout\);

-- Location: IOIBUF_X32_Y0_N29
\DOB~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DOB,
	o => \DOB~input_o\);

-- Location: FF_X21_Y14_N23
\DEBDOB|Q1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK100|C100HZ~clkctrl_outclk\,
	asdata => \DOB~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DEBDOB|Q1~q\);

-- Location: FF_X21_Y14_N9
\DEBDOB|Q2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK100|C100HZ~clkctrl_outclk\,
	asdata => \DEBDOB|Q1~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DEBDOB|Q2~q\);

-- Location: LCCOMB_X21_Y14_N10
\DEBDOB|Q3~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DEBDOB|Q3~feeder_combout\ = \DEBDOB|Q2~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DEBDOB|Q2~q\,
	combout => \DEBDOB|Q3~feeder_combout\);

-- Location: FF_X21_Y14_N11
\DEBDOB|Q3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK100|C100HZ~clkctrl_outclk\,
	d => \DEBDOB|Q3~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DEBDOB|Q3~q\);

-- Location: LCCOMB_X27_Y14_N20
\SYNC|Add2~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SYNC|Add2~2_combout\ = \SYNC|COUNTER_H\(6) $ (((\SYNC|COUNTER_H\(4)) # (\SYNC|COUNTER_H\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SYNC|COUNTER_H\(4),
	datac => \SYNC|COUNTER_H\(5),
	datad => \SYNC|COUNTER_H\(6),
	combout => \SYNC|Add2~2_combout\);

-- Location: LCCOMB_X27_Y15_N28
\LessThan17~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan17~4_combout\ = (!\SYNC|Add2~1_combout\ & (\SYNC|COUNTER_H\(8) $ (\SYNC|Add2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SYNC|COUNTER_H\(8),
	datab => \SYNC|Add2~0_combout\,
	datac => \SYNC|Add2~1_combout\,
	combout => \LessThan17~4_combout\);

-- Location: LCCOMB_X27_Y14_N12
\LessThan26~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan26~1_combout\ = (\SYNC|Add2~3_combout\) # ((\LessThan17~4_combout\ & ((\SYNC|Add2~2_combout\) # (!\LessThan26~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan26~0_combout\,
	datab => \SYNC|Add2~2_combout\,
	datac => \SYNC|Add2~3_combout\,
	datad => \LessThan17~4_combout\,
	combout => \LessThan26~1_combout\);

-- Location: LCCOMB_X27_Y14_N4
\G~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \G~0_combout\ = (!\SYNC|Add2~3_combout\ & ((\LessThan15~0_combout\) # ((!\LessThan17~4_combout\) # (!\SYNC|Add2~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan15~0_combout\,
	datab => \SYNC|Add2~2_combout\,
	datac => \SYNC|Add2~3_combout\,
	datad => \LessThan17~4_combout\,
	combout => \G~0_combout\);

-- Location: LCCOMB_X21_Y14_N20
\process_0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \process_0~1_combout\ = ((!\process_0~0_combout\) # (!\G~0_combout\)) # (!\LessThan26~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LessThan26~1_combout\,
	datac => \G~0_combout\,
	datad => \process_0~0_combout\,
	combout => \process_0~1_combout\);

-- Location: LCCOMB_X21_Y14_N8
\process_0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \process_0~2_combout\ = (((\process_0~1_combout\) # (!\DEBDOB|Q2~q\)) # (!\DEBDOB|Q3~q\)) # (!\DEBDOB|Q1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DEBDOB|Q1~q\,
	datab => \DEBDOB|Q3~q\,
	datac => \DEBDOB|Q2~q\,
	datad => \process_0~1_combout\,
	combout => \process_0~2_combout\);

-- Location: LCCOMB_X27_Y15_N18
\LessThan19~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan19~5_combout\ = (\SYNC|COUNTER_H\(6)) # ((\SYNC|COUNTER_H\(4) & (\SYNC|COUNTER_H\(5))) # (!\SYNC|COUNTER_H\(4) & ((\LessThan25~0_combout\) # (!\SYNC|COUNTER_H\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SYNC|COUNTER_H\(6),
	datab => \SYNC|COUNTER_H\(4),
	datac => \SYNC|COUNTER_H\(5),
	datad => \LessThan25~0_combout\,
	combout => \LessThan19~5_combout\);

-- Location: LCCOMB_X27_Y15_N26
\LessThan19~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan19~6_combout\ = (\SYNC|Add2~1_combout\ & (\LessThan19~5_combout\ & (\SYNC|COUNTER_H\(8) $ (!\SYNC|Add2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SYNC|COUNTER_H\(8),
	datab => \SYNC|Add2~1_combout\,
	datac => \LessThan19~5_combout\,
	datad => \SYNC|Add2~0_combout\,
	combout => \LessThan19~6_combout\);

-- Location: LCCOMB_X21_Y15_N4
\LessThan24~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan24~1_combout\ = (\LessThan24~0_combout\ & (!\SYNC|Add3~10_combout\ & (!\SYNC|Add3~18_combout\ & !\SYNC|Add3~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan24~0_combout\,
	datab => \SYNC|Add3~10_combout\,
	datac => \SYNC|Add3~18_combout\,
	datad => \SYNC|Add3~14_combout\,
	combout => \LessThan24~1_combout\);

-- Location: LCCOMB_X20_Y11_N16
\R[0]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \R[0]~2_combout\ = (\LessThan16~0_combout\ & (\LessThan23~3_combout\ & ((\LessThan24~2_combout\) # (\LessThan24~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan16~0_combout\,
	datab => \LessThan24~2_combout\,
	datac => \LessThan24~1_combout\,
	datad => \LessThan23~3_combout\,
	combout => \R[0]~2_combout\);

-- Location: LCCOMB_X26_Y15_N16
\LessThan20~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan20~1_combout\ = (\SYNC|Add2~3_combout\ & ((\LessThan20~0_combout\) # ((\SYNC|Add2~4_combout\) # (!\SYNC|Add2~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan20~0_combout\,
	datab => \SYNC|Add2~4_combout\,
	datac => \SYNC|Add2~1_combout\,
	datad => \SYNC|Add2~3_combout\,
	combout => \LessThan20~1_combout\);

-- Location: LCCOMB_X21_Y11_N4
\R[0]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \R[0]~1_combout\ = (\LessThan20~1_combout\ & (\LessThan23~3_combout\ & ((\LessThan24~1_combout\) # (\LessThan24~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan24~1_combout\,
	datab => \LessThan24~2_combout\,
	datac => \LessThan20~1_combout\,
	datad => \LessThan23~3_combout\,
	combout => \R[0]~1_combout\);

-- Location: LCCOMB_X21_Y14_N28
\R[0]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \R[0]~3_combout\ = (\LessThan15~1_combout\ & (!\R[0]~2_combout\ & ((!\R[0]~1_combout\) # (!\LessThan19~6_combout\)))) # (!\LessThan15~1_combout\ & (((!\R[0]~1_combout\)) # (!\LessThan19~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan15~1_combout\,
	datab => \LessThan19~6_combout\,
	datac => \R[0]~2_combout\,
	datad => \R[0]~1_combout\,
	combout => \R[0]~3_combout\);

-- Location: LCCOMB_X21_Y14_N18
\R[0]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \R[0]~6_combout\ = (\R[0]~0_combout\ & (!\R[0]~5_combout\ & (\process_0~2_combout\ & \R[0]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \R[0]~0_combout\,
	datab => \R[0]~5_combout\,
	datac => \process_0~2_combout\,
	datad => \R[0]~3_combout\,
	combout => \R[0]~6_combout\);

-- Location: LCCOMB_X21_Y14_N26
\R[0]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \R[0]~8_combout\ = (\R[0]~7_combout\ & (!\process_0~9_combout\ & \R[0]~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \R[0]~7_combout\,
	datab => \process_0~9_combout\,
	datad => \R[0]~6_combout\,
	combout => \R[0]~8_combout\);

-- Location: LCCOMB_X20_Y14_N24
\R~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \R~12_combout\ = (\B~3_combout\ & (\process_0~15_combout\ & !\R[0]~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~3_combout\,
	datac => \process_0~15_combout\,
	datad => \R[0]~8_combout\,
	combout => \R~12_combout\);

-- Location: LCCOMB_X28_Y15_N26
\LessThan12~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan12~3_combout\ = (!\SYNC|COUNTER_H\(6) & ((\SYNC|COUNTER_H\(5) & (\SYNC|LessThan0~0_combout\ & !\SYNC|COUNTER_H\(4))) # (!\SYNC|COUNTER_H\(5) & ((\SYNC|COUNTER_H\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SYNC|COUNTER_H\(5),
	datab => \SYNC|COUNTER_H\(6),
	datac => \SYNC|LessThan0~0_combout\,
	datad => \SYNC|COUNTER_H\(4),
	combout => \LessThan12~3_combout\);

-- Location: LCCOMB_X28_Y15_N22
\LessThan12~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan12~2_combout\ = (\SYNC|Add2~3_combout\ & (\SYNC|Add2~4_combout\ & ((\LessThan12~3_combout\) # (!\SYNC|Add2~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SYNC|Add2~3_combout\,
	datab => \SYNC|Add2~4_combout\,
	datac => \LessThan12~3_combout\,
	datad => \SYNC|Add2~1_combout\,
	combout => \LessThan12~2_combout\);

-- Location: LCCOMB_X27_Y14_N22
\LessThan11~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan11~3_combout\ = (\SYNC|COUNTER_H\(6) & (\SYNC|COUNTER_H\(5) & ((\SYNC|COUNTER_H\(4)) # (\LessThan25~0_combout\)))) # (!\SYNC|COUNTER_H\(6) & (!\SYNC|COUNTER_H\(4) & ((!\SYNC|COUNTER_H\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SYNC|COUNTER_H\(4),
	datab => \SYNC|COUNTER_H\(6),
	datac => \LessThan25~0_combout\,
	datad => \SYNC|COUNTER_H\(5),
	combout => \LessThan11~3_combout\);

-- Location: LCCOMB_X27_Y14_N18
\LessThan11~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan11~2_combout\ = (\SYNC|Add2~3_combout\ & (!\LessThan11~3_combout\ & \LessThan17~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SYNC|Add2~3_combout\,
	datac => \LessThan11~3_combout\,
	datad => \LessThan17~4_combout\,
	combout => \LessThan11~2_combout\);

-- Location: IOIBUF_X0_Y23_N15
\RE~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RE,
	o => \RE~input_o\);

-- Location: FF_X22_Y11_N5
\DERE|Q1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK100|C100HZ~clkctrl_outclk\,
	asdata => \RE~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DERE|Q1~q\);

-- Location: FF_X22_Y11_N9
\DERE|Q2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK100|C100HZ~clkctrl_outclk\,
	asdata => \DERE|Q1~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DERE|Q2~q\);

-- Location: LCCOMB_X22_Y11_N4
\DERE|QOUT~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DERE|QOUT~0_combout\ = (\DERE|Q3~q\ & (\DERE|Q1~q\ & \DERE|Q2~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DERE|Q3~q\,
	datac => \DERE|Q1~q\,
	datad => \DERE|Q2~q\,
	combout => \DERE|QOUT~0_combout\);

-- Location: LCCOMB_X21_Y11_N2
\process_0~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \process_0~17_combout\ = (((\LessThan11~2_combout\) # (\DERE|QOUT~0_combout\)) # (!\LessThan12~2_combout\)) # (!\process_0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~0_combout\,
	datab => \LessThan12~2_combout\,
	datac => \LessThan11~2_combout\,
	datad => \DERE|QOUT~0_combout\,
	combout => \process_0~17_combout\);

-- Location: LCCOMB_X21_Y11_N8
\process_0~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \process_0~16_combout\ = (((\LessThan11~2_combout\) # (!\DERE|QOUT~0_combout\)) # (!\LessThan12~2_combout\)) # (!\process_0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~0_combout\,
	datab => \LessThan12~2_combout\,
	datac => \LessThan11~2_combout\,
	datad => \DERE|QOUT~0_combout\,
	combout => \process_0~16_combout\);

-- Location: LCCOMB_X28_Y15_N12
\LessThan13~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan13~4_combout\ = (\SYNC|COUNTER_H\(6)) # ((\SYNC|COUNTER_H\(5) & (\LessThan25~0_combout\ & \SYNC|COUNTER_H\(4))) # (!\SYNC|COUNTER_H\(5) & ((!\SYNC|COUNTER_H\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SYNC|COUNTER_H\(5),
	datab => \LessThan25~0_combout\,
	datac => \SYNC|COUNTER_H\(6),
	datad => \SYNC|COUNTER_H\(4),
	combout => \LessThan13~4_combout\);

-- Location: LCCOMB_X27_Y15_N6
\LessThan13~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan13~5_combout\ = (\SYNC|Add2~1_combout\ & ((\LessThan13~4_combout\) # (\SYNC|COUNTER_H\(8) $ (!\SYNC|Add2~0_combout\)))) # (!\SYNC|Add2~1_combout\ & (\SYNC|COUNTER_H\(8) $ (((!\SYNC|Add2~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SYNC|COUNTER_H\(8),
	datab => \SYNC|Add2~1_combout\,
	datac => \LessThan13~4_combout\,
	datad => \SYNC|Add2~0_combout\,
	combout => \LessThan13~5_combout\);

-- Location: LCCOMB_X21_Y11_N20
\process_0~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \process_0~18_combout\ = (\LessThan14~5_combout\ & (\process_0~0_combout\ & ((\LessThan13~5_combout\) # (!\SYNC|Add2~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SYNC|Add2~3_combout\,
	datab => \LessThan14~5_combout\,
	datac => \process_0~0_combout\,
	datad => \LessThan13~5_combout\,
	combout => \process_0~18_combout\);

-- Location: IOIBUF_X39_Y0_N15
\FA~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_FA,
	o => \FA~input_o\);

-- Location: FF_X23_Y11_N29
\DEBFA|Q1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK100|C100HZ~clkctrl_outclk\,
	asdata => \FA~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DEBFA|Q1~q\);

-- Location: LCCOMB_X23_Y11_N26
\DEBFA|Q2~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DEBFA|Q2~feeder_combout\ = \DEBFA|Q1~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DEBFA|Q1~q\,
	combout => \DEBFA|Q2~feeder_combout\);

-- Location: FF_X23_Y11_N27
\DEBFA|Q2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK100|C100HZ~clkctrl_outclk\,
	d => \DEBFA|Q2~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DEBFA|Q2~q\);

-- Location: FF_X23_Y11_N21
\DEBFA|Q3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK100|C100HZ~clkctrl_outclk\,
	asdata => \DEBFA|Q2~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DEBFA|Q3~q\);

-- Location: LCCOMB_X23_Y11_N20
\DEBFA|QOUT~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DEBFA|QOUT~0_combout\ = (\DEBFA|Q2~q\ & (\DEBFA|Q3~q\ & \DEBFA|Q1~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DEBFA|Q2~q\,
	datac => \DEBFA|Q3~q\,
	datad => \DEBFA|Q1~q\,
	combout => \DEBFA|QOUT~0_combout\);

-- Location: LCCOMB_X20_Y11_N28
\process_0~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \process_0~20_combout\ = (\R[0]~2_combout\ & (!\DEBFA|QOUT~0_combout\ & ((\LessThan15~1_combout\) # (!\SYNC|Add2~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan15~1_combout\,
	datab => \R[0]~2_combout\,
	datac => \SYNC|Add2~3_combout\,
	datad => \DEBFA|QOUT~0_combout\,
	combout => \process_0~20_combout\);

-- Location: LCCOMB_X27_Y14_N28
\LessThan16~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan16~0_combout\ = (\SYNC|Add2~3_combout\ & ((\SYNC|Add2~4_combout\) # ((!\LessThan26~0_combout\ & \LessThan22~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan26~0_combout\,
	datab => \SYNC|Add2~3_combout\,
	datac => \SYNC|Add2~4_combout\,
	datad => \LessThan22~0_combout\,
	combout => \LessThan16~0_combout\);

-- Location: LCCOMB_X27_Y14_N30
\LessThan15~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan15~1_combout\ = ((\LessThan15~0_combout\ & (\SYNC|Add2~1_combout\ & !\SYNC|Add2~2_combout\))) # (!\SYNC|Add2~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111110001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan15~0_combout\,
	datab => \SYNC|Add2~1_combout\,
	datac => \SYNC|Add2~4_combout\,
	datad => \SYNC|Add2~2_combout\,
	combout => \LessThan15~1_combout\);

-- Location: LCCOMB_X20_Y11_N22
\process_0~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \process_0~19_combout\ = (\LessThan16~0_combout\ & (\process_0~0_combout\ & ((\LessThan15~1_combout\) # (!\SYNC|Add2~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SYNC|Add2~3_combout\,
	datab => \LessThan16~0_combout\,
	datac => \LessThan15~1_combout\,
	datad => \process_0~0_combout\,
	combout => \process_0~19_combout\);

-- Location: IOIBUF_X11_Y0_N8
\SOL~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SOL,
	o => \SOL~input_o\);

-- Location: FF_X22_Y11_N7
\DEBSOL|Q1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK100|C100HZ~clkctrl_outclk\,
	asdata => \SOL~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DEBSOL|Q1~q\);

-- Location: LCCOMB_X22_Y11_N26
\DEBSOL|Q2~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DEBSOL|Q2~feeder_combout\ = \DEBSOL|Q1~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DEBSOL|Q1~q\,
	combout => \DEBSOL|Q2~feeder_combout\);

-- Location: FF_X22_Y11_N27
\DEBSOL|Q2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK100|C100HZ~clkctrl_outclk\,
	d => \DEBSOL|Q2~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DEBSOL|Q2~q\);

-- Location: FF_X22_Y11_N19
\DEBSOL|Q3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK100|C100HZ~clkctrl_outclk\,
	asdata => \DEBSOL|Q2~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DEBSOL|Q3~q\);

-- Location: LCCOMB_X22_Y11_N30
\DEBSOL|QOUT~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DEBSOL|QOUT~0_combout\ = (\DEBSOL|Q1~q\ & (\DEBSOL|Q3~q\ & \DEBSOL|Q2~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DEBSOL|Q1~q\,
	datab => \DEBSOL|Q3~q\,
	datad => \DEBSOL|Q2~q\,
	combout => \DEBSOL|QOUT~0_combout\);

-- Location: LCCOMB_X20_Y11_N14
\process_0~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \process_0~21_combout\ = (\LessThan20~1_combout\ & (\process_0~0_combout\ & ((\LessThan19~6_combout\) # (!\SYNC|Add2~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SYNC|Add2~3_combout\,
	datab => \LessThan20~1_combout\,
	datac => \LessThan19~6_combout\,
	datad => \process_0~0_combout\,
	combout => \process_0~21_combout\);

-- Location: IOIBUF_X16_Y0_N8
\LA~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_LA,
	o => \LA~input_o\);

-- Location: LCCOMB_X22_Y11_N28
\DEBLA|Q1~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DEBLA|Q1~feeder_combout\ = \LA~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \LA~input_o\,
	combout => \DEBLA|Q1~feeder_combout\);

-- Location: FF_X22_Y11_N29
\DEBLA|Q1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK100|C100HZ~clkctrl_outclk\,
	d => \DEBLA|Q1~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DEBLA|Q1~q\);

-- Location: LCCOMB_X22_Y11_N14
\DEBLA|Q2~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DEBLA|Q2~feeder_combout\ = \DEBLA|Q1~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DEBLA|Q1~q\,
	combout => \DEBLA|Q2~feeder_combout\);

-- Location: FF_X22_Y11_N15
\DEBLA|Q2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK100|C100HZ~clkctrl_outclk\,
	d => \DEBLA|Q2~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DEBLA|Q2~q\);

-- Location: FF_X22_Y11_N1
\DEBLA|Q3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK100|C100HZ~clkctrl_outclk\,
	asdata => \DEBLA|Q2~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DEBLA|Q3~q\);

-- Location: LCCOMB_X22_Y11_N0
\DEBLA|QOUT~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DEBLA|QOUT~0_combout\ = (\DEBLA|Q2~q\ & (\DEBLA|Q3~q\ & \DEBLA|Q1~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DEBLA|Q2~q\,
	datac => \DEBLA|Q3~q\,
	datad => \DEBLA|Q1~q\,
	combout => \DEBLA|QOUT~0_combout\);

-- Location: IOIBUF_X16_Y0_N1
\SI~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SI,
	o => \SI~input_o\);

-- Location: LCCOMB_X23_Y11_N22
\DEBSI|Q1~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DEBSI|Q1~feeder_combout\ = \SI~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SI~input_o\,
	combout => \DEBSI|Q1~feeder_combout\);

-- Location: FF_X23_Y11_N23
\DEBSI|Q1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK100|C100HZ~clkctrl_outclk\,
	d => \DEBSI|Q1~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DEBSI|Q1~q\);

-- Location: LCCOMB_X22_Y11_N10
\DEBSI|Q2~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DEBSI|Q2~feeder_combout\ = \DEBSI|Q1~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DEBSI|Q1~q\,
	combout => \DEBSI|Q2~feeder_combout\);

-- Location: FF_X22_Y11_N11
\DEBSI|Q2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK100|C100HZ~clkctrl_outclk\,
	d => \DEBSI|Q2~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DEBSI|Q2~q\);

-- Location: FF_X22_Y11_N23
\DEBSI|Q3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK100|C100HZ~clkctrl_outclk\,
	asdata => \DEBSI|Q2~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DEBSI|Q3~q\);

-- Location: LCCOMB_X22_Y11_N22
\DEBSI|QOUT~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DEBSI|QOUT~0_combout\ = (\DEBSI|Q2~q\ & (\DEBSI|Q3~q\ & \DEBSI|Q1~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DEBSI|Q2~q\,
	datac => \DEBSI|Q3~q\,
	datad => \DEBSI|Q1~q\,
	combout => \DEBSI|QOUT~0_combout\);

-- Location: LCCOMB_X20_Y11_N12
\R~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \R~13_combout\ = (\process_0~21_combout\ & (((!\DEBLA|QOUT~0_combout\)))) # (!\process_0~21_combout\ & (\process_0~9_combout\ & ((!\DEBSI|QOUT~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~9_combout\,
	datab => \process_0~21_combout\,
	datac => \DEBLA|QOUT~0_combout\,
	datad => \DEBSI|QOUT~0_combout\,
	combout => \R~13_combout\);

-- Location: LCCOMB_X20_Y11_N24
\R~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \R~14_combout\ = (\process_0~22_combout\ & (!\DEBSOL|QOUT~0_combout\)) # (!\process_0~22_combout\ & ((\R~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~22_combout\,
	datac => \DEBSOL|QOUT~0_combout\,
	datad => \R~13_combout\,
	combout => \R~14_combout\);

-- Location: LCCOMB_X20_Y11_N18
\R~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \R~15_combout\ = (\DEBFA|QOUT~0_combout\ & (!\process_0~19_combout\ & ((\process_0~20_combout\) # (\R~14_combout\)))) # (!\DEBFA|QOUT~0_combout\ & ((\process_0~20_combout\) # ((\R~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111101001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DEBFA|QOUT~0_combout\,
	datab => \process_0~20_combout\,
	datac => \process_0~19_combout\,
	datad => \R~14_combout\,
	combout => \R~15_combout\);

-- Location: LCCOMB_X20_Y11_N20
\R~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \R~16_combout\ = (\process_0~18_combout\ & (\DEBMI|QOUT~0_combout\)) # (!\process_0~18_combout\ & ((\R~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DEBMI|QOUT~0_combout\,
	datab => \process_0~18_combout\,
	datad => \R~15_combout\,
	combout => \R~16_combout\);

-- Location: LCCOMB_X20_Y11_N26
\R~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \R~17_combout\ = (\process_0~17_combout\ & ((\R~16_combout\) # (!\process_0~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \process_0~17_combout\,
	datac => \process_0~16_combout\,
	datad => \R~16_combout\,
	combout => \R~17_combout\);

-- Location: LCCOMB_X21_Y14_N0
\DEBDOB|QOUT~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DEBDOB|QOUT~0_combout\ = (\DEBDOB|Q2~q\ & (\DEBDOB|Q1~q\ & \DEBDOB|Q3~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DEBDOB|Q2~q\,
	datac => \DEBDOB|Q1~q\,
	datad => \DEBDOB|Q3~q\,
	combout => \DEBDOB|QOUT~0_combout\);

-- Location: LCCOMB_X21_Y14_N12
\process_0~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \process_0~12_combout\ = ((\DEBDOB|QOUT~0_combout\) # ((!\process_0~0_combout\) # (!\G~0_combout\))) # (!\LessThan26~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan26~1_combout\,
	datab => \DEBDOB|QOUT~0_combout\,
	datac => \G~0_combout\,
	datad => \process_0~0_combout\,
	combout => \process_0~12_combout\);

-- Location: LCCOMB_X21_Y18_N6
\FALLING_BLOCK_F1~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \FALLING_BLOCK_F1~13_combout\ = (!\Add1~0_combout\ & \FALLING_BLOCK_F1[3]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~0_combout\,
	datad => \FALLING_BLOCK_F1[3]~0_combout\,
	combout => \FALLING_BLOCK_F1~13_combout\);

-- Location: LCCOMB_X23_Y18_N16
\Add1~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~16_combout\ = (FALLING_BLOCK_F1(8) & (!\Add1~15\ & VCC)) # (!FALLING_BLOCK_F1(8) & (\Add1~15\ $ (GND)))
-- \Add1~17\ = CARRY((!FALLING_BLOCK_F1(8) & !\Add1~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => FALLING_BLOCK_F1(8),
	datad => VCC,
	cin => \Add1~15\,
	combout => \Add1~16_combout\,
	cout => \Add1~17\);

-- Location: LCCOMB_X23_Y18_N18
\Add1~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~18_combout\ = (FALLING_BLOCK_F1(9) & ((\Add1~17\) # (GND))) # (!FALLING_BLOCK_F1(9) & (!\Add1~17\))
-- \Add1~19\ = CARRY((FALLING_BLOCK_F1(9)) # (!\Add1~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => FALLING_BLOCK_F1(9),
	datad => VCC,
	cin => \Add1~17\,
	combout => \Add1~18_combout\,
	cout => \Add1~19\);

-- Location: LCCOMB_X23_Y18_N20
\Add1~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~20_combout\ = (FALLING_BLOCK_F1(10) & (!\Add1~19\ & VCC)) # (!FALLING_BLOCK_F1(10) & (\Add1~19\ $ (GND)))
-- \Add1~21\ = CARRY((!FALLING_BLOCK_F1(10) & !\Add1~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => FALLING_BLOCK_F1(10),
	datad => VCC,
	cin => \Add1~19\,
	combout => \Add1~20_combout\,
	cout => \Add1~21\);

-- Location: LCCOMB_X23_Y18_N22
\Add1~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~22_combout\ = (FALLING_BLOCK_F1(11) & ((\Add1~21\) # (GND))) # (!FALLING_BLOCK_F1(11) & (!\Add1~21\))
-- \Add1~23\ = CARRY((FALLING_BLOCK_F1(11)) # (!\Add1~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => FALLING_BLOCK_F1(11),
	datad => VCC,
	cin => \Add1~21\,
	combout => \Add1~22_combout\,
	cout => \Add1~23\);

-- Location: LCCOMB_X24_Y18_N26
\FALLING_BLOCK_F1~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \FALLING_BLOCK_F1~14_combout\ = (\FALLING_BLOCK_F1[3]~0_combout\ & !\Add1~22_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FALLING_BLOCK_F1[3]~0_combout\,
	datac => \Add1~22_combout\,
	combout => \FALLING_BLOCK_F1~14_combout\);

-- Location: FF_X24_Y18_N27
\FALLING_BLOCK_F1[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK|TEMPORAL~clkctrl_outclk\,
	d => \FALLING_BLOCK_F1~14_combout\,
	ena => \FALLING_BLOCK_F1[10]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => FALLING_BLOCK_F1(11));

-- Location: LCCOMB_X23_Y18_N24
\Add1~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~24_combout\ = (FALLING_BLOCK_F1(12) & (!\Add1~23\ & VCC)) # (!FALLING_BLOCK_F1(12) & (\Add1~23\ $ (GND)))
-- \Add1~25\ = CARRY((!FALLING_BLOCK_F1(12) & !\Add1~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => FALLING_BLOCK_F1(12),
	datad => VCC,
	cin => \Add1~23\,
	combout => \Add1~24_combout\,
	cout => \Add1~25\);

-- Location: LCCOMB_X23_Y18_N26
\Add1~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~26_combout\ = (FALLING_BLOCK_F1(13) & ((\Add1~25\) # (GND))) # (!FALLING_BLOCK_F1(13) & (!\Add1~25\))
-- \Add1~27\ = CARRY((FALLING_BLOCK_F1(13)) # (!\Add1~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => FALLING_BLOCK_F1(13),
	datad => VCC,
	cin => \Add1~25\,
	combout => \Add1~26_combout\,
	cout => \Add1~27\);

-- Location: LCCOMB_X24_Y18_N12
\FALLING_BLOCK_F1~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \FALLING_BLOCK_F1~16_combout\ = (!\Add1~26_combout\ & \FALLING_BLOCK_F1[3]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add1~26_combout\,
	datad => \FALLING_BLOCK_F1[3]~0_combout\,
	combout => \FALLING_BLOCK_F1~16_combout\);

-- Location: FF_X24_Y18_N13
\FALLING_BLOCK_F1[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK|TEMPORAL~clkctrl_outclk\,
	d => \FALLING_BLOCK_F1~16_combout\,
	ena => \FALLING_BLOCK_F1[10]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => FALLING_BLOCK_F1(13));

-- Location: LCCOMB_X23_Y18_N28
\Add1~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~28_combout\ = (FALLING_BLOCK_F1(14) & (!\Add1~27\ & VCC)) # (!FALLING_BLOCK_F1(14) & (\Add1~27\ $ (GND)))
-- \Add1~29\ = CARRY((!FALLING_BLOCK_F1(14) & !\Add1~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => FALLING_BLOCK_F1(14),
	datad => VCC,
	cin => \Add1~27\,
	combout => \Add1~28_combout\,
	cout => \Add1~29\);

-- Location: LCCOMB_X24_Y18_N10
\FALLING_BLOCK_F1~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \FALLING_BLOCK_F1~17_combout\ = (\FALLING_BLOCK_F1[3]~0_combout\ & !\Add1~28_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FALLING_BLOCK_F1[3]~0_combout\,
	datad => \Add1~28_combout\,
	combout => \FALLING_BLOCK_F1~17_combout\);

-- Location: FF_X24_Y18_N11
\FALLING_BLOCK_F1[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK|TEMPORAL~clkctrl_outclk\,
	d => \FALLING_BLOCK_F1~17_combout\,
	ena => \FALLING_BLOCK_F1[10]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => FALLING_BLOCK_F1(14));

-- Location: LCCOMB_X23_Y18_N30
\Add1~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~30_combout\ = (FALLING_BLOCK_F1(15) & ((\Add1~29\) # (GND))) # (!FALLING_BLOCK_F1(15) & (!\Add1~29\))
-- \Add1~31\ = CARRY((FALLING_BLOCK_F1(15)) # (!\Add1~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => FALLING_BLOCK_F1(15),
	datad => VCC,
	cin => \Add1~29\,
	combout => \Add1~30_combout\,
	cout => \Add1~31\);

-- Location: LCCOMB_X24_Y18_N24
\FALLING_BLOCK_F1~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \FALLING_BLOCK_F1~18_combout\ = (\FALLING_BLOCK_F1[3]~0_combout\ & !\Add1~30_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FALLING_BLOCK_F1[3]~0_combout\,
	datad => \Add1~30_combout\,
	combout => \FALLING_BLOCK_F1~18_combout\);

-- Location: FF_X24_Y18_N25
\FALLING_BLOCK_F1[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK|TEMPORAL~clkctrl_outclk\,
	d => \FALLING_BLOCK_F1~18_combout\,
	ena => \FALLING_BLOCK_F1[10]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => FALLING_BLOCK_F1(15));

-- Location: LCCOMB_X23_Y17_N0
\Add1~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~32_combout\ = (FALLING_BLOCK_F1(16) & (!\Add1~31\ & VCC)) # (!FALLING_BLOCK_F1(16) & (\Add1~31\ $ (GND)))
-- \Add1~33\ = CARRY((!FALLING_BLOCK_F1(16) & !\Add1~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => FALLING_BLOCK_F1(16),
	datad => VCC,
	cin => \Add1~31\,
	combout => \Add1~32_combout\,
	cout => \Add1~33\);

-- Location: LCCOMB_X23_Y17_N4
\Add1~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~36_combout\ = (FALLING_BLOCK_F1(18) & (!\Add1~35\ & VCC)) # (!FALLING_BLOCK_F1(18) & (\Add1~35\ $ (GND)))
-- \Add1~37\ = CARRY((!FALLING_BLOCK_F1(18) & !\Add1~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => FALLING_BLOCK_F1(18),
	datad => VCC,
	cin => \Add1~35\,
	combout => \Add1~36_combout\,
	cout => \Add1~37\);

-- Location: LCCOMB_X22_Y17_N20
\FALLING_BLOCK_F1~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \FALLING_BLOCK_F1~21_combout\ = (\FALLING_BLOCK_F1[3]~0_combout\ & !\Add1~36_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FALLING_BLOCK_F1[3]~0_combout\,
	datad => \Add1~36_combout\,
	combout => \FALLING_BLOCK_F1~21_combout\);

-- Location: FF_X22_Y17_N21
\FALLING_BLOCK_F1[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK|TEMPORAL~clkctrl_outclk\,
	d => \FALLING_BLOCK_F1~21_combout\,
	ena => \FALLING_BLOCK_F1[10]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => FALLING_BLOCK_F1(18));

-- Location: LCCOMB_X23_Y17_N6
\Add1~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~38_combout\ = (FALLING_BLOCK_F1(19) & ((\Add1~37\) # (GND))) # (!FALLING_BLOCK_F1(19) & (!\Add1~37\))
-- \Add1~39\ = CARRY((FALLING_BLOCK_F1(19)) # (!\Add1~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => FALLING_BLOCK_F1(19),
	datad => VCC,
	cin => \Add1~37\,
	combout => \Add1~38_combout\,
	cout => \Add1~39\);

-- Location: LCCOMB_X22_Y17_N22
\FALLING_BLOCK_F1~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \FALLING_BLOCK_F1~22_combout\ = (\FALLING_BLOCK_F1[3]~0_combout\ & !\Add1~38_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FALLING_BLOCK_F1[3]~0_combout\,
	datad => \Add1~38_combout\,
	combout => \FALLING_BLOCK_F1~22_combout\);

-- Location: FF_X22_Y17_N23
\FALLING_BLOCK_F1[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK|TEMPORAL~clkctrl_outclk\,
	d => \FALLING_BLOCK_F1~22_combout\,
	ena => \FALLING_BLOCK_F1[10]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => FALLING_BLOCK_F1(19));

-- Location: LCCOMB_X23_Y17_N8
\Add1~40\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~40_combout\ = (FALLING_BLOCK_F1(20) & (!\Add1~39\ & VCC)) # (!FALLING_BLOCK_F1(20) & (\Add1~39\ $ (GND)))
-- \Add1~41\ = CARRY((!FALLING_BLOCK_F1(20) & !\Add1~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => FALLING_BLOCK_F1(20),
	datad => VCC,
	cin => \Add1~39\,
	combout => \Add1~40_combout\,
	cout => \Add1~41\);

-- Location: LCCOMB_X22_Y17_N24
\FALLING_BLOCK_F1~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \FALLING_BLOCK_F1~23_combout\ = (\FALLING_BLOCK_F1[3]~0_combout\ & !\Add1~40_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FALLING_BLOCK_F1[3]~0_combout\,
	datac => \Add1~40_combout\,
	combout => \FALLING_BLOCK_F1~23_combout\);

-- Location: FF_X22_Y17_N25
\FALLING_BLOCK_F1[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK|TEMPORAL~clkctrl_outclk\,
	d => \FALLING_BLOCK_F1~23_combout\,
	ena => \FALLING_BLOCK_F1[10]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => FALLING_BLOCK_F1(20));

-- Location: LCCOMB_X23_Y17_N10
\Add1~42\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~42_combout\ = (FALLING_BLOCK_F1(21) & ((\Add1~41\) # (GND))) # (!FALLING_BLOCK_F1(21) & (!\Add1~41\))
-- \Add1~43\ = CARRY((FALLING_BLOCK_F1(21)) # (!\Add1~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => FALLING_BLOCK_F1(21),
	datad => VCC,
	cin => \Add1~41\,
	combout => \Add1~42_combout\,
	cout => \Add1~43\);

-- Location: LCCOMB_X22_Y17_N28
\FALLING_BLOCK_F1~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \FALLING_BLOCK_F1~24_combout\ = (\FALLING_BLOCK_F1[3]~0_combout\ & !\Add1~42_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FALLING_BLOCK_F1[3]~0_combout\,
	datac => \Add1~42_combout\,
	combout => \FALLING_BLOCK_F1~24_combout\);

-- Location: FF_X22_Y17_N29
\FALLING_BLOCK_F1[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK|TEMPORAL~clkctrl_outclk\,
	d => \FALLING_BLOCK_F1~24_combout\,
	ena => \FALLING_BLOCK_F1[10]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => FALLING_BLOCK_F1(21));

-- Location: LCCOMB_X23_Y17_N12
\Add1~44\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~44_combout\ = (FALLING_BLOCK_F1(22) & (!\Add1~43\ & VCC)) # (!FALLING_BLOCK_F1(22) & (\Add1~43\ $ (GND)))
-- \Add1~45\ = CARRY((!FALLING_BLOCK_F1(22) & !\Add1~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => FALLING_BLOCK_F1(22),
	datad => VCC,
	cin => \Add1~43\,
	combout => \Add1~44_combout\,
	cout => \Add1~45\);

-- Location: LCCOMB_X22_Y17_N18
\FALLING_BLOCK_F1~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \FALLING_BLOCK_F1~25_combout\ = (\FALLING_BLOCK_F1[3]~0_combout\ & !\Add1~44_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FALLING_BLOCK_F1[3]~0_combout\,
	datad => \Add1~44_combout\,
	combout => \FALLING_BLOCK_F1~25_combout\);

-- Location: FF_X22_Y17_N19
\FALLING_BLOCK_F1[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK|TEMPORAL~clkctrl_outclk\,
	d => \FALLING_BLOCK_F1~25_combout\,
	ena => \FALLING_BLOCK_F1[10]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => FALLING_BLOCK_F1(22));

-- Location: LCCOMB_X23_Y17_N14
\Add1~46\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~46_combout\ = (FALLING_BLOCK_F1(23) & ((\Add1~45\) # (GND))) # (!FALLING_BLOCK_F1(23) & (!\Add1~45\))
-- \Add1~47\ = CARRY((FALLING_BLOCK_F1(23)) # (!\Add1~45\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => FALLING_BLOCK_F1(23),
	datad => VCC,
	cin => \Add1~45\,
	combout => \Add1~46_combout\,
	cout => \Add1~47\);

-- Location: LCCOMB_X23_Y17_N16
\Add1~48\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~48_combout\ = (FALLING_BLOCK_F1(24) & (!\Add1~47\ & VCC)) # (!FALLING_BLOCK_F1(24) & (\Add1~47\ $ (GND)))
-- \Add1~49\ = CARRY((!FALLING_BLOCK_F1(24) & !\Add1~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => FALLING_BLOCK_F1(24),
	datad => VCC,
	cin => \Add1~47\,
	combout => \Add1~48_combout\,
	cout => \Add1~49\);

-- Location: LCCOMB_X22_Y17_N14
\FALLING_BLOCK_F1~27\ : cycloneiii_lcell_comb
-- Equation(s):
-- \FALLING_BLOCK_F1~27_combout\ = (\FALLING_BLOCK_F1[3]~0_combout\ & !\Add1~48_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FALLING_BLOCK_F1[3]~0_combout\,
	datad => \Add1~48_combout\,
	combout => \FALLING_BLOCK_F1~27_combout\);

-- Location: FF_X22_Y17_N15
\FALLING_BLOCK_F1[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK|TEMPORAL~clkctrl_outclk\,
	d => \FALLING_BLOCK_F1~27_combout\,
	ena => \FALLING_BLOCK_F1[10]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => FALLING_BLOCK_F1(24));

-- Location: LCCOMB_X23_Y17_N18
\Add1~50\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~50_combout\ = (FALLING_BLOCK_F1(25) & ((\Add1~49\) # (GND))) # (!FALLING_BLOCK_F1(25) & (!\Add1~49\))
-- \Add1~51\ = CARRY((FALLING_BLOCK_F1(25)) # (!\Add1~49\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => FALLING_BLOCK_F1(25),
	datad => VCC,
	cin => \Add1~49\,
	combout => \Add1~50_combout\,
	cout => \Add1~51\);

-- Location: LCCOMB_X23_Y17_N20
\Add1~52\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~52_combout\ = (FALLING_BLOCK_F1(26) & (!\Add1~51\ & VCC)) # (!FALLING_BLOCK_F1(26) & (\Add1~51\ $ (GND)))
-- \Add1~53\ = CARRY((!FALLING_BLOCK_F1(26) & !\Add1~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => FALLING_BLOCK_F1(26),
	datad => VCC,
	cin => \Add1~51\,
	combout => \Add1~52_combout\,
	cout => \Add1~53\);

-- Location: LCCOMB_X24_Y17_N12
\FALLING_BLOCK_F1~29\ : cycloneiii_lcell_comb
-- Equation(s):
-- \FALLING_BLOCK_F1~29_combout\ = (\FALLING_BLOCK_F1[3]~0_combout\ & !\Add1~52_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FALLING_BLOCK_F1[3]~0_combout\,
	datad => \Add1~52_combout\,
	combout => \FALLING_BLOCK_F1~29_combout\);

-- Location: FF_X24_Y17_N13
\FALLING_BLOCK_F1[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK|TEMPORAL~clkctrl_outclk\,
	d => \FALLING_BLOCK_F1~29_combout\,
	ena => \FALLING_BLOCK_F1[10]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => FALLING_BLOCK_F1(26));

-- Location: LCCOMB_X23_Y17_N22
\Add1~54\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~54_combout\ = (FALLING_BLOCK_F1(27) & ((\Add1~53\) # (GND))) # (!FALLING_BLOCK_F1(27) & (!\Add1~53\))
-- \Add1~55\ = CARRY((FALLING_BLOCK_F1(27)) # (!\Add1~53\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => FALLING_BLOCK_F1(27),
	datad => VCC,
	cin => \Add1~53\,
	combout => \Add1~54_combout\,
	cout => \Add1~55\);

-- Location: LCCOMB_X24_Y17_N26
\FALLING_BLOCK_F1~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \FALLING_BLOCK_F1~30_combout\ = (\FALLING_BLOCK_F1[3]~0_combout\ & !\Add1~54_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FALLING_BLOCK_F1[3]~0_combout\,
	datad => \Add1~54_combout\,
	combout => \FALLING_BLOCK_F1~30_combout\);

-- Location: FF_X24_Y17_N27
\FALLING_BLOCK_F1[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK|TEMPORAL~clkctrl_outclk\,
	d => \FALLING_BLOCK_F1~30_combout\,
	ena => \FALLING_BLOCK_F1[10]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => FALLING_BLOCK_F1(27));

-- Location: LCCOMB_X24_Y17_N2
\FALLING_BLOCK_F1~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \FALLING_BLOCK_F1~28_combout\ = (\FALLING_BLOCK_F1[3]~0_combout\ & !\Add1~50_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FALLING_BLOCK_F1[3]~0_combout\,
	datad => \Add1~50_combout\,
	combout => \FALLING_BLOCK_F1~28_combout\);

-- Location: FF_X24_Y17_N3
\FALLING_BLOCK_F1[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK|TEMPORAL~clkctrl_outclk\,
	d => \FALLING_BLOCK_F1~28_combout\,
	ena => \FALLING_BLOCK_F1[10]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => FALLING_BLOCK_F1(25));

-- Location: LCCOMB_X24_Y17_N20
\LessThan36~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan36~8_combout\ = (FALLING_BLOCK_F1(26)) # ((FALLING_BLOCK_F1(24)) # ((FALLING_BLOCK_F1(27)) # (FALLING_BLOCK_F1(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => FALLING_BLOCK_F1(26),
	datab => FALLING_BLOCK_F1(24),
	datac => FALLING_BLOCK_F1(27),
	datad => FALLING_BLOCK_F1(25),
	combout => \LessThan36~8_combout\);

-- Location: LCCOMB_X23_Y17_N24
\Add1~56\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~56_combout\ = (FALLING_BLOCK_F1(28) & (!\Add1~55\ & VCC)) # (!FALLING_BLOCK_F1(28) & (\Add1~55\ $ (GND)))
-- \Add1~57\ = CARRY((!FALLING_BLOCK_F1(28) & !\Add1~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => FALLING_BLOCK_F1(28),
	datad => VCC,
	cin => \Add1~55\,
	combout => \Add1~56_combout\,
	cout => \Add1~57\);

-- Location: LCCOMB_X24_Y17_N4
\FALLING_BLOCK_F1~31\ : cycloneiii_lcell_comb
-- Equation(s):
-- \FALLING_BLOCK_F1~31_combout\ = (\FALLING_BLOCK_F1[3]~0_combout\ & !\Add1~56_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FALLING_BLOCK_F1[3]~0_combout\,
	datad => \Add1~56_combout\,
	combout => \FALLING_BLOCK_F1~31_combout\);

-- Location: FF_X24_Y17_N5
\FALLING_BLOCK_F1[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK|TEMPORAL~clkctrl_outclk\,
	d => \FALLING_BLOCK_F1~31_combout\,
	ena => \FALLING_BLOCK_F1[10]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => FALLING_BLOCK_F1(28));

-- Location: LCCOMB_X23_Y17_N26
\Add1~58\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~58_combout\ = (FALLING_BLOCK_F1(29) & ((\Add1~57\) # (GND))) # (!FALLING_BLOCK_F1(29) & (!\Add1~57\))
-- \Add1~59\ = CARRY((FALLING_BLOCK_F1(29)) # (!\Add1~57\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => FALLING_BLOCK_F1(29),
	datad => VCC,
	cin => \Add1~57\,
	combout => \Add1~58_combout\,
	cout => \Add1~59\);

-- Location: LCCOMB_X24_Y17_N28
\FALLING_BLOCK_F1[29]~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \FALLING_BLOCK_F1[29]~32_combout\ = (\FALLING_BLOCK_F1[10]~3_combout\ & (\FALLING_BLOCK_F1[3]~0_combout\ & ((!\Add1~58_combout\)))) # (!\FALLING_BLOCK_F1[10]~3_combout\ & (((FALLING_BLOCK_F1(29)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FALLING_BLOCK_F1[3]~0_combout\,
	datab => \FALLING_BLOCK_F1[10]~3_combout\,
	datac => FALLING_BLOCK_F1(29),
	datad => \Add1~58_combout\,
	combout => \FALLING_BLOCK_F1[29]~32_combout\);

-- Location: FF_X24_Y17_N29
\FALLING_BLOCK_F1[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK|TEMPORAL~clkctrl_outclk\,
	d => \FALLING_BLOCK_F1[29]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => FALLING_BLOCK_F1(29));

-- Location: LCCOMB_X24_Y17_N18
\LessThan36~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan36~9_combout\ = (FALLING_BLOCK_F1(30)) # ((\LessThan36~8_combout\) # ((FALLING_BLOCK_F1(28)) # (FALLING_BLOCK_F1(29))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => FALLING_BLOCK_F1(30),
	datab => \LessThan36~8_combout\,
	datac => FALLING_BLOCK_F1(28),
	datad => FALLING_BLOCK_F1(29),
	combout => \LessThan36~9_combout\);

-- Location: LCCOMB_X22_Y17_N16
\FALLING_BLOCK_F1~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \FALLING_BLOCK_F1~26_combout\ = (\FALLING_BLOCK_F1[3]~0_combout\ & !\Add1~46_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FALLING_BLOCK_F1[3]~0_combout\,
	datac => \Add1~46_combout\,
	combout => \FALLING_BLOCK_F1~26_combout\);

-- Location: FF_X22_Y17_N17
\FALLING_BLOCK_F1[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK|TEMPORAL~clkctrl_outclk\,
	d => \FALLING_BLOCK_F1~26_combout\,
	ena => \FALLING_BLOCK_F1[10]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => FALLING_BLOCK_F1(23));

-- Location: LCCOMB_X22_Y17_N8
\LessThan36~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan36~6_combout\ = (FALLING_BLOCK_F1(23)) # (FALLING_BLOCK_F1(22))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => FALLING_BLOCK_F1(23),
	datad => FALLING_BLOCK_F1(22),
	combout => \LessThan36~6_combout\);

-- Location: LCCOMB_X22_Y17_N26
\LessThan36~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan36~7_combout\ = (\LessThan36~5_combout\) # ((FALLING_BLOCK_F1(20)) # ((\LessThan36~6_combout\) # (FALLING_BLOCK_F1(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan36~5_combout\,
	datab => FALLING_BLOCK_F1(20),
	datac => \LessThan36~6_combout\,
	datad => FALLING_BLOCK_F1(21),
	combout => \LessThan36~7_combout\);

-- Location: LCCOMB_X24_Y18_N4
\FALLING_BLOCK_F1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \FALLING_BLOCK_F1~1_combout\ = (!\Add1~20_combout\ & \FALLING_BLOCK_F1[3]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add1~20_combout\,
	datad => \FALLING_BLOCK_F1[3]~0_combout\,
	combout => \FALLING_BLOCK_F1~1_combout\);

-- Location: FF_X24_Y18_N5
\FALLING_BLOCK_F1[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK|TEMPORAL~clkctrl_outclk\,
	d => \FALLING_BLOCK_F1~1_combout\,
	ena => \FALLING_BLOCK_F1[10]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => FALLING_BLOCK_F1(10));

-- Location: LCCOMB_X24_Y18_N2
\LessThan36~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan36~2_combout\ = (FALLING_BLOCK_F1(11)) # ((FALLING_BLOCK_F1(9)) # ((FALLING_BLOCK_F1(10)) # (FALLING_BLOCK_F1(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => FALLING_BLOCK_F1(11),
	datab => FALLING_BLOCK_F1(9),
	datac => FALLING_BLOCK_F1(10),
	datad => FALLING_BLOCK_F1(8),
	combout => \LessThan36~2_combout\);

-- Location: LCCOMB_X23_Y18_N8
\Add1~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~8_combout\ = (FALLING_BLOCK_F1(4) & (!\Add1~7\ & VCC)) # (!FALLING_BLOCK_F1(4) & (\Add1~7\ $ (GND)))
-- \Add1~9\ = CARRY((!FALLING_BLOCK_F1(4) & !\Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => FALLING_BLOCK_F1(4),
	datad => VCC,
	cin => \Add1~7\,
	combout => \Add1~8_combout\,
	cout => \Add1~9\);

-- Location: LCCOMB_X24_Y18_N14
\FALLING_BLOCK_F1~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \FALLING_BLOCK_F1~9_combout\ = (\FALLING_BLOCK_F1[3]~0_combout\ & !\Add1~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FALLING_BLOCK_F1[3]~0_combout\,
	datad => \Add1~8_combout\,
	combout => \FALLING_BLOCK_F1~9_combout\);

-- Location: FF_X23_Y18_N11
\FALLING_BLOCK_F1[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK|TEMPORAL~clkctrl_outclk\,
	asdata => \FALLING_BLOCK_F1~9_combout\,
	sload => VCC,
	ena => \FALLING_BLOCK_F1[10]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => FALLING_BLOCK_F1(4));

-- Location: LCCOMB_X24_Y18_N8
\LessThan36~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan36~1_combout\ = (FALLING_BLOCK_F1(6)) # (((FALLING_BLOCK_F1(3)) # (FALLING_BLOCK_F1(4))) # (!FALLING_BLOCK_F1(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => FALLING_BLOCK_F1(6),
	datab => FALLING_BLOCK_F1(7),
	datac => FALLING_BLOCK_F1(3),
	datad => FALLING_BLOCK_F1(4),
	combout => \LessThan36~1_combout\);

-- Location: LCCOMB_X24_Y18_N16
\FALLING_BLOCK_F1~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \FALLING_BLOCK_F1~15_combout\ = (\FALLING_BLOCK_F1[3]~0_combout\ & !\Add1~24_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FALLING_BLOCK_F1[3]~0_combout\,
	datad => \Add1~24_combout\,
	combout => \FALLING_BLOCK_F1~15_combout\);

-- Location: FF_X24_Y18_N17
\FALLING_BLOCK_F1[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK|TEMPORAL~clkctrl_outclk\,
	d => \FALLING_BLOCK_F1~15_combout\,
	ena => \FALLING_BLOCK_F1[10]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => FALLING_BLOCK_F1(12));

-- Location: LCCOMB_X24_Y18_N0
\LessThan36~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan36~3_combout\ = (FALLING_BLOCK_F1(13)) # ((FALLING_BLOCK_F1(12)) # ((FALLING_BLOCK_F1(14)) # (FALLING_BLOCK_F1(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => FALLING_BLOCK_F1(13),
	datab => FALLING_BLOCK_F1(12),
	datac => FALLING_BLOCK_F1(14),
	datad => FALLING_BLOCK_F1(15),
	combout => \LessThan36~3_combout\);

-- Location: LCCOMB_X24_Y18_N22
\LessThan36~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan36~4_combout\ = (\LessThan36~0_combout\) # ((\LessThan36~2_combout\) # ((\LessThan36~1_combout\) # (\LessThan36~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan36~0_combout\,
	datab => \LessThan36~2_combout\,
	datac => \LessThan36~1_combout\,
	datad => \LessThan36~3_combout\,
	combout => \LessThan36~4_combout\);

-- Location: LCCOMB_X24_Y17_N24
\FALLING_BLOCK_I1[28]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \FALLING_BLOCK_I1[28]~0_combout\ = (FALLING_BLOCK_F1(31)) # ((!\LessThan36~9_combout\ & (!\LessThan36~7_combout\ & !\LessThan36~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => FALLING_BLOCK_F1(31),
	datab => \LessThan36~9_combout\,
	datac => \LessThan36~7_combout\,
	datad => \LessThan36~4_combout\,
	combout => \FALLING_BLOCK_I1[28]~0_combout\);

-- Location: LCCOMB_X21_Y16_N8
\Add4~95\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add4~95_combout\ = (!\Add4~59_combout\ & (((\FALLING_BLOCK_I1[28]~0_combout\ & \FALLING_BLOCK_F1[3]~0_combout\)) # (!\FALLING_BLOCK_F1[31]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add4~59_combout\,
	datab => \FALLING_BLOCK_I1[28]~0_combout\,
	datac => \FALLING_BLOCK_F1[3]~0_combout\,
	datad => \FALLING_BLOCK_F1[31]~2_combout\,
	combout => \Add4~95_combout\);

-- Location: LCCOMB_X14_Y14_N0
\Add6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add6~0_combout\ = COUNTER(0) $ (VCC)
-- \Add6~1\ = CARRY(COUNTER(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => COUNTER(0),
	datad => VCC,
	combout => \Add6~0_combout\,
	cout => \Add6~1\);

-- Location: LCCOMB_X14_Y14_N2
\Add6~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add6~2_combout\ = (COUNTER(1) & (!\Add6~1\)) # (!COUNTER(1) & ((\Add6~1\) # (GND)))
-- \Add6~3\ = CARRY((!\Add6~1\) # (!COUNTER(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => COUNTER(1),
	datad => VCC,
	cin => \Add6~1\,
	combout => \Add6~2_combout\,
	cout => \Add6~3\);

-- Location: LCCOMB_X15_Y14_N12
\COUNTER~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \COUNTER~0_combout\ = (!\Equal0~10_combout\ & \Add6~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Equal0~10_combout\,
	datad => \Add6~2_combout\,
	combout => \COUNTER~0_combout\);

-- Location: FF_X15_Y14_N13
\COUNTER[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK|TEMPORAL~clkctrl_outclk\,
	d => \COUNTER~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => COUNTER(1));

-- Location: LCCOMB_X14_Y14_N4
\Add6~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add6~4_combout\ = (COUNTER(2) & (\Add6~3\ $ (GND))) # (!COUNTER(2) & (!\Add6~3\ & VCC))
-- \Add6~5\ = CARRY((COUNTER(2) & !\Add6~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => COUNTER(2),
	datad => VCC,
	cin => \Add6~3\,
	combout => \Add6~4_combout\,
	cout => \Add6~5\);

-- Location: FF_X14_Y14_N5
\COUNTER[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK|TEMPORAL~clkctrl_outclk\,
	d => \Add6~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => COUNTER(2));

-- Location: LCCOMB_X14_Y14_N6
\Add6~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add6~6_combout\ = (COUNTER(3) & (!\Add6~5\)) # (!COUNTER(3) & ((\Add6~5\) # (GND)))
-- \Add6~7\ = CARRY((!\Add6~5\) # (!COUNTER(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => COUNTER(3),
	datad => VCC,
	cin => \Add6~5\,
	combout => \Add6~6_combout\,
	cout => \Add6~7\);

-- Location: LCCOMB_X14_Y14_N8
\Add6~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add6~8_combout\ = (COUNTER(4) & (\Add6~7\ $ (GND))) # (!COUNTER(4) & (!\Add6~7\ & VCC))
-- \Add6~9\ = CARRY((COUNTER(4) & !\Add6~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => COUNTER(4),
	datad => VCC,
	cin => \Add6~7\,
	combout => \Add6~8_combout\,
	cout => \Add6~9\);

-- Location: FF_X14_Y14_N9
\COUNTER[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK|TEMPORAL~clkctrl_outclk\,
	d => \Add6~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => COUNTER(4));

-- Location: LCCOMB_X14_Y14_N10
\Add6~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add6~10_combout\ = (COUNTER(5) & (!\Add6~9\)) # (!COUNTER(5) & ((\Add6~9\) # (GND)))
-- \Add6~11\ = CARRY((!\Add6~9\) # (!COUNTER(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => COUNTER(5),
	datad => VCC,
	cin => \Add6~9\,
	combout => \Add6~10_combout\,
	cout => \Add6~11\);

-- Location: LCCOMB_X14_Y14_N12
\Add6~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add6~12_combout\ = (COUNTER(6) & (\Add6~11\ $ (GND))) # (!COUNTER(6) & (!\Add6~11\ & VCC))
-- \Add6~13\ = CARRY((COUNTER(6) & !\Add6~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => COUNTER(6),
	datad => VCC,
	cin => \Add6~11\,
	combout => \Add6~12_combout\,
	cout => \Add6~13\);

-- Location: LCCOMB_X15_Y14_N22
\COUNTER~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \COUNTER~2_combout\ = (!\Equal0~10_combout\ & \Add6~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Equal0~10_combout\,
	datad => \Add6~12_combout\,
	combout => \COUNTER~2_combout\);

-- Location: FF_X15_Y14_N23
\COUNTER[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK|TEMPORAL~clkctrl_outclk\,
	d => \COUNTER~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => COUNTER(6));

-- Location: LCCOMB_X14_Y14_N14
\Add6~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add6~14_combout\ = (COUNTER(7) & (!\Add6~13\)) # (!COUNTER(7) & ((\Add6~13\) # (GND)))
-- \Add6~15\ = CARRY((!\Add6~13\) # (!COUNTER(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => COUNTER(7),
	datad => VCC,
	cin => \Add6~13\,
	combout => \Add6~14_combout\,
	cout => \Add6~15\);

-- Location: LCCOMB_X14_Y14_N16
\Add6~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add6~16_combout\ = (COUNTER(8) & (\Add6~15\ $ (GND))) # (!COUNTER(8) & (!\Add6~15\ & VCC))
-- \Add6~17\ = CARRY((COUNTER(8) & !\Add6~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => COUNTER(8),
	datad => VCC,
	cin => \Add6~15\,
	combout => \Add6~16_combout\,
	cout => \Add6~17\);

-- Location: LCCOMB_X15_Y14_N16
\COUNTER~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \COUNTER~4_combout\ = (!\Equal0~10_combout\ & \Add6~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal0~10_combout\,
	datac => \Add6~16_combout\,
	combout => \COUNTER~4_combout\);

-- Location: FF_X15_Y14_N17
\COUNTER[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK|TEMPORAL~clkctrl_outclk\,
	d => \COUNTER~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => COUNTER(8));

-- Location: LCCOMB_X14_Y14_N18
\Add6~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add6~18_combout\ = (COUNTER(9) & (!\Add6~17\)) # (!COUNTER(9) & ((\Add6~17\) # (GND)))
-- \Add6~19\ = CARRY((!\Add6~17\) # (!COUNTER(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => COUNTER(9),
	datad => VCC,
	cin => \Add6~17\,
	combout => \Add6~18_combout\,
	cout => \Add6~19\);

-- Location: LCCOMB_X15_Y14_N26
\COUNTER~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \COUNTER~5_combout\ = (!\Equal0~10_combout\ & \Add6~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Equal0~10_combout\,
	datad => \Add6~18_combout\,
	combout => \COUNTER~5_combout\);

-- Location: FF_X15_Y14_N27
\COUNTER[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK|TEMPORAL~clkctrl_outclk\,
	d => \COUNTER~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => COUNTER(9));

-- Location: LCCOMB_X14_Y14_N20
\Add6~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add6~20_combout\ = (COUNTER(10) & (\Add6~19\ $ (GND))) # (!COUNTER(10) & (!\Add6~19\ & VCC))
-- \Add6~21\ = CARRY((COUNTER(10) & !\Add6~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => COUNTER(10),
	datad => VCC,
	cin => \Add6~19\,
	combout => \Add6~20_combout\,
	cout => \Add6~21\);

-- Location: FF_X14_Y14_N21
\COUNTER[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK|TEMPORAL~clkctrl_outclk\,
	d => \Add6~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => COUNTER(10));

-- Location: LCCOMB_X14_Y14_N22
\Add6~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add6~22_combout\ = (COUNTER(11) & (!\Add6~21\)) # (!COUNTER(11) & ((\Add6~21\) # (GND)))
-- \Add6~23\ = CARRY((!\Add6~21\) # (!COUNTER(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => COUNTER(11),
	datad => VCC,
	cin => \Add6~21\,
	combout => \Add6~22_combout\,
	cout => \Add6~23\);

-- Location: LCCOMB_X15_Y14_N24
\COUNTER~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \COUNTER~6_combout\ = (!\Equal0~10_combout\ & \Add6~22_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Equal0~10_combout\,
	datad => \Add6~22_combout\,
	combout => \COUNTER~6_combout\);

-- Location: FF_X15_Y14_N25
\COUNTER[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK|TEMPORAL~clkctrl_outclk\,
	d => \COUNTER~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => COUNTER(11));

-- Location: LCCOMB_X14_Y14_N24
\Add6~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add6~24_combout\ = (COUNTER(12) & (\Add6~23\ $ (GND))) # (!COUNTER(12) & (!\Add6~23\ & VCC))
-- \Add6~25\ = CARRY((COUNTER(12) & !\Add6~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => COUNTER(12),
	datad => VCC,
	cin => \Add6~23\,
	combout => \Add6~24_combout\,
	cout => \Add6~25\);

-- Location: FF_X14_Y14_N25
\COUNTER[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK|TEMPORAL~clkctrl_outclk\,
	d => \Add6~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => COUNTER(12));

-- Location: LCCOMB_X14_Y14_N26
\Add6~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add6~26_combout\ = (COUNTER(13) & (!\Add6~25\)) # (!COUNTER(13) & ((\Add6~25\) # (GND)))
-- \Add6~27\ = CARRY((!\Add6~25\) # (!COUNTER(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => COUNTER(13),
	datad => VCC,
	cin => \Add6~25\,
	combout => \Add6~26_combout\,
	cout => \Add6~27\);

-- Location: LCCOMB_X15_Y14_N28
\COUNTER~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \COUNTER~7_combout\ = (!\Equal0~10_combout\ & \Add6~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal0~10_combout\,
	datac => \Add6~26_combout\,
	combout => \COUNTER~7_combout\);

-- Location: FF_X15_Y14_N29
\COUNTER[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK|TEMPORAL~clkctrl_outclk\,
	d => \COUNTER~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => COUNTER(13));

-- Location: LCCOMB_X14_Y14_N28
\Add6~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add6~28_combout\ = (COUNTER(14) & (\Add6~27\ $ (GND))) # (!COUNTER(14) & (!\Add6~27\ & VCC))
-- \Add6~29\ = CARRY((COUNTER(14) & !\Add6~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => COUNTER(14),
	datad => VCC,
	cin => \Add6~27\,
	combout => \Add6~28_combout\,
	cout => \Add6~29\);

-- Location: LCCOMB_X15_Y14_N18
\COUNTER~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \COUNTER~8_combout\ = (!\Equal0~10_combout\ & \Add6~28_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Equal0~10_combout\,
	datad => \Add6~28_combout\,
	combout => \COUNTER~8_combout\);

-- Location: FF_X15_Y14_N19
\COUNTER[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK|TEMPORAL~clkctrl_outclk\,
	d => \COUNTER~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => COUNTER(14));

-- Location: LCCOMB_X14_Y14_N30
\Add6~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add6~30_combout\ = (COUNTER(15) & (!\Add6~29\)) # (!COUNTER(15) & ((\Add6~29\) # (GND)))
-- \Add6~31\ = CARRY((!\Add6~29\) # (!COUNTER(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => COUNTER(15),
	datad => VCC,
	cin => \Add6~29\,
	combout => \Add6~30_combout\,
	cout => \Add6~31\);

-- Location: LCCOMB_X15_Y14_N8
\COUNTER~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \COUNTER~9_combout\ = (!\Equal0~10_combout\ & \Add6~30_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Equal0~10_combout\,
	datad => \Add6~30_combout\,
	combout => \COUNTER~9_combout\);

-- Location: FF_X15_Y14_N9
\COUNTER[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK|TEMPORAL~clkctrl_outclk\,
	d => \COUNTER~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => COUNTER(15));

-- Location: LCCOMB_X14_Y13_N0
\Add6~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add6~32_combout\ = (COUNTER(16) & (\Add6~31\ $ (GND))) # (!COUNTER(16) & (!\Add6~31\ & VCC))
-- \Add6~33\ = CARRY((COUNTER(16) & !\Add6~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => COUNTER(16),
	datad => VCC,
	cin => \Add6~31\,
	combout => \Add6~32_combout\,
	cout => \Add6~33\);

-- Location: LCCOMB_X15_Y13_N12
\COUNTER~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \COUNTER~10_combout\ = (\Add6~32_combout\ & !\Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add6~32_combout\,
	datad => \Equal0~10_combout\,
	combout => \COUNTER~10_combout\);

-- Location: FF_X15_Y13_N13
\COUNTER[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK|TEMPORAL~clkctrl_outclk\,
	d => \COUNTER~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => COUNTER(16));

-- Location: LCCOMB_X14_Y13_N2
\Add6~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add6~34_combout\ = (COUNTER(17) & (!\Add6~33\)) # (!COUNTER(17) & ((\Add6~33\) # (GND)))
-- \Add6~35\ = CARRY((!\Add6~33\) # (!COUNTER(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => COUNTER(17),
	datad => VCC,
	cin => \Add6~33\,
	combout => \Add6~34_combout\,
	cout => \Add6~35\);

-- Location: LCCOMB_X15_Y13_N26
\COUNTER~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \COUNTER~11_combout\ = (!\Equal0~10_combout\ & \Add6~34_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal0~10_combout\,
	datad => \Add6~34_combout\,
	combout => \COUNTER~11_combout\);

-- Location: FF_X15_Y13_N27
\COUNTER[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK|TEMPORAL~clkctrl_outclk\,
	d => \COUNTER~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => COUNTER(17));

-- Location: LCCOMB_X14_Y13_N4
\Add6~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add6~36_combout\ = (COUNTER(18) & (\Add6~35\ $ (GND))) # (!COUNTER(18) & (!\Add6~35\ & VCC))
-- \Add6~37\ = CARRY((COUNTER(18) & !\Add6~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => COUNTER(18),
	datad => VCC,
	cin => \Add6~35\,
	combout => \Add6~36_combout\,
	cout => \Add6~37\);

-- Location: FF_X14_Y13_N5
\COUNTER[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK|TEMPORAL~clkctrl_outclk\,
	d => \Add6~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => COUNTER(18));

-- Location: LCCOMB_X14_Y13_N6
\Add6~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add6~38_combout\ = (COUNTER(19) & (!\Add6~37\)) # (!COUNTER(19) & ((\Add6~37\) # (GND)))
-- \Add6~39\ = CARRY((!\Add6~37\) # (!COUNTER(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => COUNTER(19),
	datad => VCC,
	cin => \Add6~37\,
	combout => \Add6~38_combout\,
	cout => \Add6~39\);

-- Location: LCCOMB_X15_Y13_N28
\COUNTER~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \COUNTER~12_combout\ = (\Add6~38_combout\ & !\Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add6~38_combout\,
	datad => \Equal0~10_combout\,
	combout => \COUNTER~12_combout\);

-- Location: FF_X15_Y13_N29
\COUNTER[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK|TEMPORAL~clkctrl_outclk\,
	d => \COUNTER~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => COUNTER(19));

-- Location: LCCOMB_X14_Y13_N8
\Add6~40\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add6~40_combout\ = (COUNTER(20) & (\Add6~39\ $ (GND))) # (!COUNTER(20) & (!\Add6~39\ & VCC))
-- \Add6~41\ = CARRY((COUNTER(20) & !\Add6~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => COUNTER(20),
	datad => VCC,
	cin => \Add6~39\,
	combout => \Add6~40_combout\,
	cout => \Add6~41\);

-- Location: FF_X14_Y13_N9
\COUNTER[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK|TEMPORAL~clkctrl_outclk\,
	d => \Add6~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => COUNTER(20));

-- Location: LCCOMB_X14_Y13_N10
\Add6~42\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add6~42_combout\ = (COUNTER(21) & (!\Add6~41\)) # (!COUNTER(21) & ((\Add6~41\) # (GND)))
-- \Add6~43\ = CARRY((!\Add6~41\) # (!COUNTER(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => COUNTER(21),
	datad => VCC,
	cin => \Add6~41\,
	combout => \Add6~42_combout\,
	cout => \Add6~43\);

-- Location: LCCOMB_X14_Y13_N14
\Add6~46\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add6~46_combout\ = (COUNTER(23) & (!\Add6~45\)) # (!COUNTER(23) & ((\Add6~45\) # (GND)))
-- \Add6~47\ = CARRY((!\Add6~45\) # (!COUNTER(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => COUNTER(23),
	datad => VCC,
	cin => \Add6~45\,
	combout => \Add6~46_combout\,
	cout => \Add6~47\);

-- Location: FF_X14_Y13_N15
\COUNTER[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK|TEMPORAL~clkctrl_outclk\,
	d => \Add6~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => COUNTER(23));

-- Location: FF_X14_Y13_N11
\COUNTER[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK|TEMPORAL~clkctrl_outclk\,
	d => \Add6~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => COUNTER(21));

-- Location: LCCOMB_X15_Y13_N0
\Equal0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~6_combout\ = (!COUNTER(22) & (!COUNTER(23) & (!COUNTER(20) & !COUNTER(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => COUNTER(22),
	datab => COUNTER(23),
	datac => COUNTER(20),
	datad => COUNTER(21),
	combout => \Equal0~6_combout\);

-- Location: LCCOMB_X14_Y13_N16
\Add6~48\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add6~48_combout\ = (COUNTER(24) & (\Add6~47\ $ (GND))) # (!COUNTER(24) & (!\Add6~47\ & VCC))
-- \Add6~49\ = CARRY((COUNTER(24) & !\Add6~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => COUNTER(24),
	datad => VCC,
	cin => \Add6~47\,
	combout => \Add6~48_combout\,
	cout => \Add6~49\);

-- Location: FF_X14_Y13_N17
\COUNTER[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK|TEMPORAL~clkctrl_outclk\,
	d => \Add6~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => COUNTER(24));

-- Location: LCCOMB_X14_Y13_N18
\Add6~50\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add6~50_combout\ = (COUNTER(25) & (!\Add6~49\)) # (!COUNTER(25) & ((\Add6~49\) # (GND)))
-- \Add6~51\ = CARRY((!\Add6~49\) # (!COUNTER(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => COUNTER(25),
	datad => VCC,
	cin => \Add6~49\,
	combout => \Add6~50_combout\,
	cout => \Add6~51\);

-- Location: FF_X14_Y13_N19
\COUNTER[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK|TEMPORAL~clkctrl_outclk\,
	d => \Add6~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => COUNTER(25));

-- Location: LCCOMB_X14_Y13_N20
\Add6~52\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add6~52_combout\ = (COUNTER(26) & (\Add6~51\ $ (GND))) # (!COUNTER(26) & (!\Add6~51\ & VCC))
-- \Add6~53\ = CARRY((COUNTER(26) & !\Add6~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => COUNTER(26),
	datad => VCC,
	cin => \Add6~51\,
	combout => \Add6~52_combout\,
	cout => \Add6~53\);

-- Location: FF_X14_Y13_N21
\COUNTER[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK|TEMPORAL~clkctrl_outclk\,
	d => \Add6~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => COUNTER(26));

-- Location: LCCOMB_X14_Y13_N22
\Add6~54\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add6~54_combout\ = (COUNTER(27) & (!\Add6~53\)) # (!COUNTER(27) & ((\Add6~53\) # (GND)))
-- \Add6~55\ = CARRY((!\Add6~53\) # (!COUNTER(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => COUNTER(27),
	datad => VCC,
	cin => \Add6~53\,
	combout => \Add6~54_combout\,
	cout => \Add6~55\);

-- Location: LCCOMB_X14_Y13_N24
\Add6~56\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add6~56_combout\ = (COUNTER(28) & (\Add6~55\ $ (GND))) # (!COUNTER(28) & (!\Add6~55\ & VCC))
-- \Add6~57\ = CARRY((COUNTER(28) & !\Add6~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => COUNTER(28),
	datad => VCC,
	cin => \Add6~55\,
	combout => \Add6~56_combout\,
	cout => \Add6~57\);

-- Location: FF_X14_Y13_N25
\COUNTER[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK|TEMPORAL~clkctrl_outclk\,
	d => \Add6~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => COUNTER(28));

-- Location: LCCOMB_X14_Y13_N26
\Add6~58\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add6~58_combout\ = (COUNTER(29) & (!\Add6~57\)) # (!COUNTER(29) & ((\Add6~57\) # (GND)))
-- \Add6~59\ = CARRY((!\Add6~57\) # (!COUNTER(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => COUNTER(29),
	datad => VCC,
	cin => \Add6~57\,
	combout => \Add6~58_combout\,
	cout => \Add6~59\);

-- Location: FF_X14_Y13_N29
\COUNTER[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK|TEMPORAL~clkctrl_outclk\,
	d => \Add6~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => COUNTER(30));

-- Location: FF_X14_Y13_N27
\COUNTER[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK|TEMPORAL~clkctrl_outclk\,
	d => \Add6~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => COUNTER(29));

-- Location: LCCOMB_X15_Y13_N8
\Equal0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~8_combout\ = (!COUNTER(31) & (!COUNTER(30) & (!COUNTER(29) & !COUNTER(28))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => COUNTER(31),
	datab => COUNTER(30),
	datac => COUNTER(29),
	datad => COUNTER(28),
	combout => \Equal0~8_combout\);

-- Location: FF_X14_Y13_N23
\COUNTER[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK|TEMPORAL~clkctrl_outclk\,
	d => \Add6~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => COUNTER(27));

-- Location: LCCOMB_X15_Y13_N2
\Equal0~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~7_combout\ = (!COUNTER(27) & !COUNTER(26))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => COUNTER(27),
	datad => COUNTER(26),
	combout => \Equal0~7_combout\);

-- Location: LCCOMB_X15_Y13_N22
\Equal0~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~9_combout\ = (!COUNTER(24) & (!COUNTER(25) & (\Equal0~8_combout\ & \Equal0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => COUNTER(24),
	datab => COUNTER(25),
	datac => \Equal0~8_combout\,
	datad => \Equal0~7_combout\,
	combout => \Equal0~9_combout\);

-- Location: LCCOMB_X15_Y14_N4
\COUNTER~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \COUNTER~3_combout\ = (!\Equal0~10_combout\ & \Add6~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Equal0~10_combout\,
	datad => \Add6~14_combout\,
	combout => \COUNTER~3_combout\);

-- Location: FF_X15_Y14_N5
\COUNTER[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK|TEMPORAL~clkctrl_outclk\,
	d => \COUNTER~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => COUNTER(7));

-- Location: FF_X14_Y14_N11
\COUNTER[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK|TEMPORAL~clkctrl_outclk\,
	d => \Add6~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => COUNTER(5));

-- Location: LCCOMB_X15_Y14_N2
\Equal0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (!COUNTER(4) & (COUNTER(7) & (COUNTER(6) & !COUNTER(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => COUNTER(4),
	datab => COUNTER(7),
	datac => COUNTER(6),
	datad => COUNTER(5),
	combout => \Equal0~1_combout\);

-- Location: LCCOMB_X15_Y14_N14
\Equal0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = (!COUNTER(10) & (COUNTER(8) & (COUNTER(9) & COUNTER(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => COUNTER(10),
	datab => COUNTER(8),
	datac => COUNTER(9),
	datad => COUNTER(11),
	combout => \Equal0~2_combout\);

-- Location: FF_X14_Y14_N7
\COUNTER[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK|TEMPORAL~clkctrl_outclk\,
	d => \Add6~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => COUNTER(3));

-- Location: LCCOMB_X15_Y14_N6
\COUNTER~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \COUNTER~1_combout\ = (!\Equal0~10_combout\ & \Add6~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal0~10_combout\,
	datac => \Add6~0_combout\,
	combout => \COUNTER~1_combout\);

-- Location: FF_X15_Y14_N7
\COUNTER[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK|TEMPORAL~clkctrl_outclk\,
	d => \COUNTER~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => COUNTER(0));

-- Location: LCCOMB_X15_Y14_N0
\Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (COUNTER(1) & (!COUNTER(2) & (!COUNTER(3) & !COUNTER(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => COUNTER(1),
	datab => COUNTER(2),
	datac => COUNTER(3),
	datad => COUNTER(0),
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X15_Y14_N20
\Equal0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~4_combout\ = (\Equal0~3_combout\ & (\Equal0~1_combout\ & (\Equal0~2_combout\ & \Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~3_combout\,
	datab => \Equal0~1_combout\,
	datac => \Equal0~2_combout\,
	datad => \Equal0~0_combout\,
	combout => \Equal0~4_combout\);

-- Location: LCCOMB_X15_Y13_N24
\Equal0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~10_combout\ = (\Equal0~5_combout\ & (\Equal0~6_combout\ & (\Equal0~9_combout\ & \Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~5_combout\,
	datab => \Equal0~6_combout\,
	datac => \Equal0~9_combout\,
	datad => \Equal0~4_combout\,
	combout => \Equal0~10_combout\);

-- Location: LCCOMB_X22_Y16_N22
\FALLING_BLOCK_I1[10]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \FALLING_BLOCK_I1[10]~1_combout\ = (!\DRAW2~q\ & (\Equal0~10_combout\ & \FALLING_BLOCK_I1[28]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DRAW2~q\,
	datac => \Equal0~10_combout\,
	datad => \FALLING_BLOCK_I1[28]~0_combout\,
	combout => \FALLING_BLOCK_I1[10]~1_combout\);

-- Location: FF_X21_Y16_N9
\FALLING_BLOCK_I1[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK|TEMPORAL~clkctrl_outclk\,
	d => \Add4~95_combout\,
	ena => \FALLING_BLOCK_I1[10]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => FALLING_BLOCK_I1(24));

-- Location: LCCOMB_X21_Y16_N18
\Add4~94\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add4~94_combout\ = (!\Add4~57_combout\ & (((\FALLING_BLOCK_I1[28]~0_combout\ & \FALLING_BLOCK_F1[3]~0_combout\)) # (!\FALLING_BLOCK_F1[31]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add4~57_combout\,
	datab => \FALLING_BLOCK_I1[28]~0_combout\,
	datac => \FALLING_BLOCK_F1[3]~0_combout\,
	datad => \FALLING_BLOCK_F1[31]~2_combout\,
	combout => \Add4~94_combout\);

-- Location: FF_X21_Y16_N19
\FALLING_BLOCK_I1[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK|TEMPORAL~clkctrl_outclk\,
	d => \Add4~94_combout\,
	ena => \FALLING_BLOCK_I1[10]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => FALLING_BLOCK_I1(23));

-- Location: LCCOMB_X21_Y16_N12
\Add4~93\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add4~93_combout\ = (!\Add4~55_combout\ & (((\FALLING_BLOCK_I1[28]~0_combout\ & \FALLING_BLOCK_F1[3]~0_combout\)) # (!\FALLING_BLOCK_F1[31]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add4~55_combout\,
	datab => \FALLING_BLOCK_I1[28]~0_combout\,
	datac => \FALLING_BLOCK_F1[3]~0_combout\,
	datad => \FALLING_BLOCK_F1[31]~2_combout\,
	combout => \Add4~93_combout\);

-- Location: FF_X21_Y16_N13
\FALLING_BLOCK_I1[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK|TEMPORAL~clkctrl_outclk\,
	d => \Add4~93_combout\,
	ena => \FALLING_BLOCK_I1[10]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => FALLING_BLOCK_I1(22));

-- Location: LCCOMB_X21_Y16_N26
\Add4~91\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add4~91_combout\ = (!\Add4~51_combout\ & (((\FALLING_BLOCK_I1[28]~0_combout\ & \FALLING_BLOCK_F1[3]~0_combout\)) # (!\FALLING_BLOCK_F1[31]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add4~51_combout\,
	datab => \FALLING_BLOCK_I1[28]~0_combout\,
	datac => \FALLING_BLOCK_F1[3]~0_combout\,
	datad => \FALLING_BLOCK_F1[31]~2_combout\,
	combout => \Add4~91_combout\);

-- Location: FF_X21_Y16_N27
\FALLING_BLOCK_I1[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK|TEMPORAL~clkctrl_outclk\,
	d => \Add4~91_combout\,
	ena => \FALLING_BLOCK_I1[10]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => FALLING_BLOCK_I1(20));

-- Location: LCCOMB_X21_Y17_N28
\Add4~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add4~21_combout\ = (!\Add4~16_combout\ & (((\FALLING_BLOCK_F1[3]~0_combout\ & \FALLING_BLOCK_I1[28]~0_combout\)) # (!\FALLING_BLOCK_F1[31]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add4~16_combout\,
	datab => \FALLING_BLOCK_F1[3]~0_combout\,
	datac => \FALLING_BLOCK_I1[28]~0_combout\,
	datad => \FALLING_BLOCK_F1[31]~2_combout\,
	combout => \Add4~21_combout\);

-- Location: FF_X21_Y17_N29
\FALLING_BLOCK_I1[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK|TEMPORAL~clkctrl_outclk\,
	d => \Add4~21_combout\,
	ena => \FALLING_BLOCK_I1[10]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => FALLING_BLOCK_I1(8));

-- Location: LCCOMB_X20_Y17_N2
\Add4~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add4~2_combout\ = (FALLING_BLOCK_I1(1) & (!\Add4~1\)) # (!FALLING_BLOCK_I1(1) & ((\Add4~1\) # (GND)))
-- \Add4~3\ = CARRY((!\Add4~1\) # (!FALLING_BLOCK_I1(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => FALLING_BLOCK_I1(1),
	datad => VCC,
	cin => \Add4~1\,
	combout => \Add4~2_combout\,
	cout => \Add4~3\);

-- Location: LCCOMB_X21_Y17_N0
\Add4~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add4~28_combout\ = (\Add4~2_combout\ & (((\FALLING_BLOCK_I1[28]~0_combout\ & \FALLING_BLOCK_F1[3]~0_combout\)) # (!\FALLING_BLOCK_F1[31]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FALLING_BLOCK_I1[28]~0_combout\,
	datab => \FALLING_BLOCK_F1[3]~0_combout\,
	datac => \Add4~2_combout\,
	datad => \FALLING_BLOCK_F1[31]~2_combout\,
	combout => \Add4~28_combout\);

-- Location: FF_X21_Y17_N1
\FALLING_BLOCK_I1[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK|TEMPORAL~clkctrl_outclk\,
	d => \Add4~28_combout\,
	ena => \FALLING_BLOCK_I1[10]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => FALLING_BLOCK_I1(1));

-- Location: LCCOMB_X20_Y17_N4
\Add4~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add4~4_combout\ = (FALLING_BLOCK_I1(2) & ((GND) # (!\Add4~3\))) # (!FALLING_BLOCK_I1(2) & (\Add4~3\ $ (GND)))
-- \Add4~5\ = CARRY((FALLING_BLOCK_I1(2)) # (!\Add4~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => FALLING_BLOCK_I1(2),
	datad => VCC,
	cin => \Add4~3\,
	combout => \Add4~4_combout\,
	cout => \Add4~5\);

-- Location: LCCOMB_X19_Y17_N28
\Add4~27\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add4~27_combout\ = (\Add4~4_combout\ & (((\FALLING_BLOCK_F1[3]~0_combout\ & \FALLING_BLOCK_I1[28]~0_combout\)) # (!\FALLING_BLOCK_F1[31]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FALLING_BLOCK_F1[3]~0_combout\,
	datab => \FALLING_BLOCK_I1[28]~0_combout\,
	datac => \FALLING_BLOCK_F1[31]~2_combout\,
	datad => \Add4~4_combout\,
	combout => \Add4~27_combout\);

-- Location: FF_X19_Y17_N29
\FALLING_BLOCK_I1[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK|TEMPORAL~clkctrl_outclk\,
	d => \Add4~27_combout\,
	ena => \FALLING_BLOCK_I1[10]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => FALLING_BLOCK_I1(2));

-- Location: LCCOMB_X20_Y17_N6
\Add4~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add4~6_combout\ = (FALLING_BLOCK_I1(3) & ((\Add4~5\) # (GND))) # (!FALLING_BLOCK_I1(3) & (!\Add4~5\))
-- \Add4~7\ = CARRY((FALLING_BLOCK_I1(3)) # (!\Add4~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => FALLING_BLOCK_I1(3),
	datad => VCC,
	cin => \Add4~5\,
	combout => \Add4~6_combout\,
	cout => \Add4~7\);

-- Location: LCCOMB_X21_Y17_N26
\Add4~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add4~26_combout\ = (!\Add4~6_combout\ & (((\FALLING_BLOCK_I1[28]~0_combout\ & \FALLING_BLOCK_F1[3]~0_combout\)) # (!\FALLING_BLOCK_F1[31]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FALLING_BLOCK_I1[28]~0_combout\,
	datab => \FALLING_BLOCK_F1[31]~2_combout\,
	datac => \Add4~6_combout\,
	datad => \FALLING_BLOCK_F1[3]~0_combout\,
	combout => \Add4~26_combout\);

-- Location: FF_X21_Y17_N27
\FALLING_BLOCK_I1[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK|TEMPORAL~clkctrl_outclk\,
	d => \Add4~26_combout\,
	ena => \FALLING_BLOCK_I1[10]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => FALLING_BLOCK_I1(3));

-- Location: LCCOMB_X20_Y17_N8
\Add4~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add4~8_combout\ = (FALLING_BLOCK_I1(4) & (!\Add4~7\ & VCC)) # (!FALLING_BLOCK_I1(4) & (\Add4~7\ $ (GND)))
-- \Add4~9\ = CARRY((!FALLING_BLOCK_I1(4) & !\Add4~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => FALLING_BLOCK_I1(4),
	datad => VCC,
	cin => \Add4~7\,
	combout => \Add4~8_combout\,
	cout => \Add4~9\);

-- Location: LCCOMB_X19_Y17_N30
\Add4~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add4~25_combout\ = (!\Add4~8_combout\ & (((\FALLING_BLOCK_F1[3]~0_combout\ & \FALLING_BLOCK_I1[28]~0_combout\)) # (!\FALLING_BLOCK_F1[31]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FALLING_BLOCK_F1[3]~0_combout\,
	datab => \Add4~8_combout\,
	datac => \FALLING_BLOCK_F1[31]~2_combout\,
	datad => \FALLING_BLOCK_I1[28]~0_combout\,
	combout => \Add4~25_combout\);

-- Location: FF_X19_Y17_N31
\FALLING_BLOCK_I1[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK|TEMPORAL~clkctrl_outclk\,
	d => \Add4~25_combout\,
	ena => \FALLING_BLOCK_I1[10]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => FALLING_BLOCK_I1(4));

-- Location: LCCOMB_X20_Y17_N10
\Add4~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add4~10_combout\ = (FALLING_BLOCK_I1(5) & ((\Add4~9\) # (GND))) # (!FALLING_BLOCK_I1(5) & (!\Add4~9\))
-- \Add4~11\ = CARRY((FALLING_BLOCK_I1(5)) # (!\Add4~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => FALLING_BLOCK_I1(5),
	datad => VCC,
	cin => \Add4~9\,
	combout => \Add4~10_combout\,
	cout => \Add4~11\);

-- Location: LCCOMB_X22_Y17_N4
\Add4~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add4~24_combout\ = (!\Add4~10_combout\ & (((\FALLING_BLOCK_F1[3]~0_combout\ & \FALLING_BLOCK_I1[28]~0_combout\)) # (!\FALLING_BLOCK_F1[31]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FALLING_BLOCK_F1[3]~0_combout\,
	datab => \Add4~10_combout\,
	datac => \FALLING_BLOCK_F1[31]~2_combout\,
	datad => \FALLING_BLOCK_I1[28]~0_combout\,
	combout => \Add4~24_combout\);

-- Location: FF_X22_Y17_N5
\FALLING_BLOCK_I1[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK|TEMPORAL~clkctrl_outclk\,
	d => \Add4~24_combout\,
	ena => \FALLING_BLOCK_I1[10]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => FALLING_BLOCK_I1(5));

-- Location: LCCOMB_X20_Y17_N14
\Add4~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add4~14_combout\ = (FALLING_BLOCK_I1(7) & (!\Add4~13\)) # (!FALLING_BLOCK_I1(7) & ((\Add4~13\) # (GND)))
-- \Add4~15\ = CARRY((!\Add4~13\) # (!FALLING_BLOCK_I1(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => FALLING_BLOCK_I1(7),
	datad => VCC,
	cin => \Add4~13\,
	combout => \Add4~14_combout\,
	cout => \Add4~15\);

-- Location: LCCOMB_X22_Y17_N12
\Add4~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add4~22_combout\ = (\Add4~14_combout\ & (((\FALLING_BLOCK_F1[3]~0_combout\ & \FALLING_BLOCK_I1[28]~0_combout\)) # (!\FALLING_BLOCK_F1[31]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FALLING_BLOCK_F1[3]~0_combout\,
	datab => \FALLING_BLOCK_I1[28]~0_combout\,
	datac => \FALLING_BLOCK_F1[31]~2_combout\,
	datad => \Add4~14_combout\,
	combout => \Add4~22_combout\);

-- Location: FF_X22_Y17_N13
\FALLING_BLOCK_I1[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK|TEMPORAL~clkctrl_outclk\,
	d => \Add4~22_combout\,
	ena => \FALLING_BLOCK_I1[10]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => FALLING_BLOCK_I1(7));

-- Location: LCCOMB_X20_Y17_N18
\Add4~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add4~18_combout\ = (FALLING_BLOCK_I1(9) & ((\Add4~17\) # (GND))) # (!FALLING_BLOCK_I1(9) & (!\Add4~17\))
-- \Add4~19\ = CARRY((FALLING_BLOCK_I1(9)) # (!\Add4~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => FALLING_BLOCK_I1(9),
	datad => VCC,
	cin => \Add4~17\,
	combout => \Add4~18_combout\,
	cout => \Add4~19\);

-- Location: LCCOMB_X19_Y17_N24
\Add4~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add4~20_combout\ = (!\Add4~18_combout\ & (((\FALLING_BLOCK_F1[3]~0_combout\ & \FALLING_BLOCK_I1[28]~0_combout\)) # (!\FALLING_BLOCK_F1[31]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FALLING_BLOCK_F1[3]~0_combout\,
	datab => \FALLING_BLOCK_I1[28]~0_combout\,
	datac => \FALLING_BLOCK_F1[31]~2_combout\,
	datad => \Add4~18_combout\,
	combout => \Add4~20_combout\);

-- Location: FF_X19_Y17_N25
\FALLING_BLOCK_I1[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK|TEMPORAL~clkctrl_outclk\,
	d => \Add4~20_combout\,
	ena => \FALLING_BLOCK_I1[10]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => FALLING_BLOCK_I1(9));

-- Location: LCCOMB_X20_Y17_N20
\Add4~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add4~30_combout\ = (FALLING_BLOCK_I1(10) & (!\Add4~19\ & VCC)) # (!FALLING_BLOCK_I1(10) & (\Add4~19\ $ (GND)))
-- \Add4~31\ = CARRY((!FALLING_BLOCK_I1(10) & !\Add4~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => FALLING_BLOCK_I1(10),
	datad => VCC,
	cin => \Add4~19\,
	combout => \Add4~30_combout\,
	cout => \Add4~31\);

-- Location: LCCOMB_X19_Y17_N22
\Add4~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add4~32_combout\ = (!\Add4~30_combout\ & (((\FALLING_BLOCK_F1[3]~0_combout\ & \FALLING_BLOCK_I1[28]~0_combout\)) # (!\FALLING_BLOCK_F1[31]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FALLING_BLOCK_F1[3]~0_combout\,
	datab => \Add4~30_combout\,
	datac => \FALLING_BLOCK_F1[31]~2_combout\,
	datad => \FALLING_BLOCK_I1[28]~0_combout\,
	combout => \Add4~32_combout\);

-- Location: FF_X19_Y17_N23
\FALLING_BLOCK_I1[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK|TEMPORAL~clkctrl_outclk\,
	d => \Add4~32_combout\,
	ena => \FALLING_BLOCK_I1[10]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => FALLING_BLOCK_I1(10));

-- Location: LCCOMB_X20_Y17_N22
\Add4~33\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add4~33_combout\ = (FALLING_BLOCK_I1(11) & ((\Add4~31\) # (GND))) # (!FALLING_BLOCK_I1(11) & (!\Add4~31\))
-- \Add4~34\ = CARRY((FALLING_BLOCK_I1(11)) # (!\Add4~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => FALLING_BLOCK_I1(11),
	datad => VCC,
	cin => \Add4~31\,
	combout => \Add4~33_combout\,
	cout => \Add4~34\);

-- Location: LCCOMB_X19_Y17_N20
\Add4~82\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add4~82_combout\ = (!\Add4~33_combout\ & (((\FALLING_BLOCK_F1[3]~0_combout\ & \FALLING_BLOCK_I1[28]~0_combout\)) # (!\FALLING_BLOCK_F1[31]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FALLING_BLOCK_F1[3]~0_combout\,
	datab => \FALLING_BLOCK_I1[28]~0_combout\,
	datac => \FALLING_BLOCK_F1[31]~2_combout\,
	datad => \Add4~33_combout\,
	combout => \Add4~82_combout\);

-- Location: FF_X19_Y17_N21
\FALLING_BLOCK_I1[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK|TEMPORAL~clkctrl_outclk\,
	d => \Add4~82_combout\,
	ena => \FALLING_BLOCK_I1[10]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => FALLING_BLOCK_I1(11));

-- Location: LCCOMB_X20_Y17_N24
\Add4~35\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add4~35_combout\ = (FALLING_BLOCK_I1(12) & (!\Add4~34\ & VCC)) # (!FALLING_BLOCK_I1(12) & (\Add4~34\ $ (GND)))
-- \Add4~36\ = CARRY((!FALLING_BLOCK_I1(12) & !\Add4~34\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => FALLING_BLOCK_I1(12),
	datad => VCC,
	cin => \Add4~34\,
	combout => \Add4~35_combout\,
	cout => \Add4~36\);

-- Location: LCCOMB_X19_Y17_N6
\Add4~83\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add4~83_combout\ = (!\Add4~35_combout\ & (((\FALLING_BLOCK_F1[3]~0_combout\ & \FALLING_BLOCK_I1[28]~0_combout\)) # (!\FALLING_BLOCK_F1[31]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FALLING_BLOCK_F1[3]~0_combout\,
	datab => \FALLING_BLOCK_I1[28]~0_combout\,
	datac => \FALLING_BLOCK_F1[31]~2_combout\,
	datad => \Add4~35_combout\,
	combout => \Add4~83_combout\);

-- Location: FF_X19_Y17_N7
\FALLING_BLOCK_I1[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK|TEMPORAL~clkctrl_outclk\,
	d => \Add4~83_combout\,
	ena => \FALLING_BLOCK_I1[10]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => FALLING_BLOCK_I1(12));

-- Location: LCCOMB_X20_Y17_N26
\Add4~37\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add4~37_combout\ = (FALLING_BLOCK_I1(13) & ((\Add4~36\) # (GND))) # (!FALLING_BLOCK_I1(13) & (!\Add4~36\))
-- \Add4~38\ = CARRY((FALLING_BLOCK_I1(13)) # (!\Add4~36\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => FALLING_BLOCK_I1(13),
	datad => VCC,
	cin => \Add4~36\,
	combout => \Add4~37_combout\,
	cout => \Add4~38\);

-- Location: LCCOMB_X20_Y17_N28
\Add4~39\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add4~39_combout\ = (FALLING_BLOCK_I1(14) & (!\Add4~38\ & VCC)) # (!FALLING_BLOCK_I1(14) & (\Add4~38\ $ (GND)))
-- \Add4~40\ = CARRY((!FALLING_BLOCK_I1(14) & !\Add4~38\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => FALLING_BLOCK_I1(14),
	datad => VCC,
	cin => \Add4~38\,
	combout => \Add4~39_combout\,
	cout => \Add4~40\);

-- Location: LCCOMB_X20_Y17_N30
\Add4~41\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add4~41_combout\ = (FALLING_BLOCK_I1(15) & ((\Add4~40\) # (GND))) # (!FALLING_BLOCK_I1(15) & (!\Add4~40\))
-- \Add4~42\ = CARRY((FALLING_BLOCK_I1(15)) # (!\Add4~40\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => FALLING_BLOCK_I1(15),
	datad => VCC,
	cin => \Add4~40\,
	combout => \Add4~41_combout\,
	cout => \Add4~42\);

-- Location: LCCOMB_X19_Y17_N18
\Add4~86\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add4~86_combout\ = (!\Add4~41_combout\ & (((\FALLING_BLOCK_F1[3]~0_combout\ & \FALLING_BLOCK_I1[28]~0_combout\)) # (!\FALLING_BLOCK_F1[31]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FALLING_BLOCK_F1[3]~0_combout\,
	datab => \Add4~41_combout\,
	datac => \FALLING_BLOCK_F1[31]~2_combout\,
	datad => \FALLING_BLOCK_I1[28]~0_combout\,
	combout => \Add4~86_combout\);

-- Location: FF_X19_Y17_N19
\FALLING_BLOCK_I1[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK|TEMPORAL~clkctrl_outclk\,
	d => \Add4~86_combout\,
	ena => \FALLING_BLOCK_I1[10]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => FALLING_BLOCK_I1(15));

-- Location: LCCOMB_X20_Y16_N6
\Add4~49\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add4~49_combout\ = (FALLING_BLOCK_I1(19) & ((\Add4~48\) # (GND))) # (!FALLING_BLOCK_I1(19) & (!\Add4~48\))
-- \Add4~50\ = CARRY((FALLING_BLOCK_I1(19)) # (!\Add4~48\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => FALLING_BLOCK_I1(19),
	datad => VCC,
	cin => \Add4~48\,
	combout => \Add4~49_combout\,
	cout => \Add4~50\);

-- Location: LCCOMB_X20_Y16_N18
\Add4~61\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add4~61_combout\ = (FALLING_BLOCK_I1(25) & ((\Add4~60\) # (GND))) # (!FALLING_BLOCK_I1(25) & (!\Add4~60\))
-- \Add4~62\ = CARRY((FALLING_BLOCK_I1(25)) # (!\Add4~60\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => FALLING_BLOCK_I1(25),
	datad => VCC,
	cin => \Add4~60\,
	combout => \Add4~61_combout\,
	cout => \Add4~62\);

-- Location: LCCOMB_X21_Y16_N28
\Add4~76\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add4~76_combout\ = (!\Add4~61_combout\ & (((\FALLING_BLOCK_I1[28]~0_combout\ & \FALLING_BLOCK_F1[3]~0_combout\)) # (!\FALLING_BLOCK_F1[31]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FALLING_BLOCK_F1[31]~2_combout\,
	datab => \FALLING_BLOCK_I1[28]~0_combout\,
	datac => \FALLING_BLOCK_F1[3]~0_combout\,
	datad => \Add4~61_combout\,
	combout => \Add4~76_combout\);

-- Location: FF_X21_Y16_N29
\FALLING_BLOCK_I1[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK|TEMPORAL~clkctrl_outclk\,
	d => \Add4~76_combout\,
	ena => \FALLING_BLOCK_I1[10]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => FALLING_BLOCK_I1(25));

-- Location: LCCOMB_X20_Y16_N22
\Add4~65\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add4~65_combout\ = (FALLING_BLOCK_I1(27) & ((\Add4~64\) # (GND))) # (!FALLING_BLOCK_I1(27) & (!\Add4~64\))
-- \Add4~66\ = CARRY((FALLING_BLOCK_I1(27)) # (!\Add4~64\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => FALLING_BLOCK_I1(27),
	datad => VCC,
	cin => \Add4~64\,
	combout => \Add4~65_combout\,
	cout => \Add4~66\);

-- Location: LCCOMB_X21_Y16_N24
\Add4~78\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add4~78_combout\ = (!\Add4~65_combout\ & (((\FALLING_BLOCK_I1[28]~0_combout\ & \FALLING_BLOCK_F1[3]~0_combout\)) # (!\FALLING_BLOCK_F1[31]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FALLING_BLOCK_F1[31]~2_combout\,
	datab => \FALLING_BLOCK_I1[28]~0_combout\,
	datac => \FALLING_BLOCK_F1[3]~0_combout\,
	datad => \Add4~65_combout\,
	combout => \Add4~78_combout\);

-- Location: FF_X21_Y16_N25
\FALLING_BLOCK_I1[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK|TEMPORAL~clkctrl_outclk\,
	d => \Add4~78_combout\,
	ena => \FALLING_BLOCK_I1[10]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => FALLING_BLOCK_I1(27));

-- Location: LCCOMB_X20_Y16_N24
\Add4~67\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add4~67_combout\ = (FALLING_BLOCK_I1(28) & (!\Add4~66\ & VCC)) # (!FALLING_BLOCK_I1(28) & (\Add4~66\ $ (GND)))
-- \Add4~68\ = CARRY((!FALLING_BLOCK_I1(28) & !\Add4~66\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => FALLING_BLOCK_I1(28),
	datad => VCC,
	cin => \Add4~66\,
	combout => \Add4~67_combout\,
	cout => \Add4~68\);

-- Location: LCCOMB_X21_Y16_N22
\Add4~79\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add4~79_combout\ = (!\Add4~67_combout\ & (((\FALLING_BLOCK_I1[28]~0_combout\ & \FALLING_BLOCK_F1[3]~0_combout\)) # (!\FALLING_BLOCK_F1[31]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FALLING_BLOCK_F1[31]~2_combout\,
	datab => \FALLING_BLOCK_I1[28]~0_combout\,
	datac => \FALLING_BLOCK_F1[3]~0_combout\,
	datad => \Add4~67_combout\,
	combout => \Add4~79_combout\);

-- Location: FF_X21_Y16_N23
\FALLING_BLOCK_I1[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK|TEMPORAL~clkctrl_outclk\,
	d => \Add4~79_combout\,
	ena => \FALLING_BLOCK_I1[10]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => FALLING_BLOCK_I1(28));

-- Location: LCCOMB_X20_Y16_N26
\Add4~69\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add4~69_combout\ = (FALLING_BLOCK_I1(29) & ((\Add4~68\) # (GND))) # (!FALLING_BLOCK_I1(29) & (!\Add4~68\))
-- \Add4~70\ = CARRY((FALLING_BLOCK_I1(29)) # (!\Add4~68\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => FALLING_BLOCK_I1(29),
	datad => VCC,
	cin => \Add4~68\,
	combout => \Add4~69_combout\,
	cout => \Add4~70\);

-- Location: LCCOMB_X20_Y16_N28
\Add4~71\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add4~71_combout\ = (FALLING_BLOCK_I1(30) & (!\Add4~70\ & VCC)) # (!FALLING_BLOCK_I1(30) & (\Add4~70\ $ (GND)))
-- \Add4~72\ = CARRY((!FALLING_BLOCK_I1(30) & !\Add4~70\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => FALLING_BLOCK_I1(30),
	datad => VCC,
	cin => \Add4~70\,
	combout => \Add4~71_combout\,
	cout => \Add4~72\);

-- Location: LCCOMB_X21_Y16_N14
\Add4~81\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add4~81_combout\ = (!\Add4~71_combout\ & (((\FALLING_BLOCK_I1[28]~0_combout\ & \FALLING_BLOCK_F1[3]~0_combout\)) # (!\FALLING_BLOCK_F1[31]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FALLING_BLOCK_F1[31]~2_combout\,
	datab => \FALLING_BLOCK_I1[28]~0_combout\,
	datac => \FALLING_BLOCK_F1[3]~0_combout\,
	datad => \Add4~71_combout\,
	combout => \Add4~81_combout\);

-- Location: FF_X21_Y16_N15
\FALLING_BLOCK_I1[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK|TEMPORAL~clkctrl_outclk\,
	d => \Add4~81_combout\,
	ena => \FALLING_BLOCK_I1[10]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => FALLING_BLOCK_I1(30));

-- Location: LCCOMB_X20_Y16_N30
\Add4~73\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add4~73_combout\ = \Add4~72\ $ (!FALLING_BLOCK_I1(31))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => FALLING_BLOCK_I1(31),
	cin => \Add4~72\,
	combout => \Add4~73_combout\);

-- Location: LCCOMB_X22_Y16_N6
\Add4~75\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add4~75_combout\ = (!\Add4~73_combout\ & (((\FALLING_BLOCK_I1[28]~0_combout\ & \FALLING_BLOCK_F1[3]~0_combout\)) # (!\FALLING_BLOCK_F1[31]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FALLING_BLOCK_I1[28]~0_combout\,
	datab => \FALLING_BLOCK_F1[31]~2_combout\,
	datac => \Add4~73_combout\,
	datad => \FALLING_BLOCK_F1[3]~0_combout\,
	combout => \Add4~75_combout\);

-- Location: FF_X22_Y16_N7
\FALLING_BLOCK_I1[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK|TEMPORAL~clkctrl_outclk\,
	d => \Add4~75_combout\,
	ena => \FALLING_BLOCK_I1[10]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => FALLING_BLOCK_I1(31));

-- Location: LCCOMB_X22_Y16_N28
\Add4~80\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add4~80_combout\ = (!\Add4~69_combout\ & (((\FALLING_BLOCK_I1[28]~0_combout\ & \FALLING_BLOCK_F1[3]~0_combout\)) # (!\FALLING_BLOCK_F1[31]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FALLING_BLOCK_I1[28]~0_combout\,
	datab => \FALLING_BLOCK_F1[31]~2_combout\,
	datac => \Add4~69_combout\,
	datad => \FALLING_BLOCK_F1[3]~0_combout\,
	combout => \Add4~80_combout\);

-- Location: FF_X22_Y16_N29
\FALLING_BLOCK_I1[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK|TEMPORAL~clkctrl_outclk\,
	d => \Add4~80_combout\,
	ena => \FALLING_BLOCK_I1[10]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => FALLING_BLOCK_I1(29));

-- Location: LCCOMB_X22_Y16_N26
\LessThan39~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan39~1_combout\ = (!FALLING_BLOCK_I1(29)) # (!FALLING_BLOCK_I1(30))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => FALLING_BLOCK_I1(30),
	datad => FALLING_BLOCK_I1(29),
	combout => \LessThan39~1_combout\);

-- Location: LCCOMB_X19_Y17_N14
\Add4~84\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add4~84_combout\ = (!\Add4~37_combout\ & (((\FALLING_BLOCK_F1[3]~0_combout\ & \FALLING_BLOCK_I1[28]~0_combout\)) # (!\FALLING_BLOCK_F1[31]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FALLING_BLOCK_F1[3]~0_combout\,
	datab => \FALLING_BLOCK_I1[28]~0_combout\,
	datac => \FALLING_BLOCK_F1[31]~2_combout\,
	datad => \Add4~37_combout\,
	combout => \Add4~84_combout\);

-- Location: FF_X19_Y17_N15
\FALLING_BLOCK_I1[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK|TEMPORAL~clkctrl_outclk\,
	d => \Add4~84_combout\,
	ena => \FALLING_BLOCK_I1[10]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => FALLING_BLOCK_I1(13));

-- Location: LCCOMB_X19_Y17_N16
\Add4~85\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add4~85_combout\ = (!\Add4~39_combout\ & (((\FALLING_BLOCK_F1[3]~0_combout\ & \FALLING_BLOCK_I1[28]~0_combout\)) # (!\FALLING_BLOCK_F1[31]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FALLING_BLOCK_F1[3]~0_combout\,
	datab => \FALLING_BLOCK_I1[28]~0_combout\,
	datac => \FALLING_BLOCK_F1[31]~2_combout\,
	datad => \Add4~39_combout\,
	combout => \Add4~85_combout\);

-- Location: FF_X19_Y17_N17
\FALLING_BLOCK_I1[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK|TEMPORAL~clkctrl_outclk\,
	d => \Add4~85_combout\,
	ena => \FALLING_BLOCK_I1[10]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => FALLING_BLOCK_I1(14));

-- Location: LCCOMB_X19_Y17_N2
\LessThan39~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan39~3_combout\ = (((!FALLING_BLOCK_I1(14)) # (!FALLING_BLOCK_I1(13))) # (!FALLING_BLOCK_I1(15))) # (!FALLING_BLOCK_I1(16))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => FALLING_BLOCK_I1(16),
	datab => FALLING_BLOCK_I1(15),
	datac => FALLING_BLOCK_I1(13),
	datad => FALLING_BLOCK_I1(14),
	combout => \LessThan39~3_combout\);

-- Location: LCCOMB_X21_Y16_N20
\Add4~88\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add4~88_combout\ = (!\Add4~45_combout\ & (((\FALLING_BLOCK_I1[28]~0_combout\ & \FALLING_BLOCK_F1[3]~0_combout\)) # (!\FALLING_BLOCK_F1[31]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add4~45_combout\,
	datab => \FALLING_BLOCK_I1[28]~0_combout\,
	datac => \FALLING_BLOCK_F1[3]~0_combout\,
	datad => \FALLING_BLOCK_F1[31]~2_combout\,
	combout => \Add4~88_combout\);

-- Location: FF_X21_Y16_N21
\FALLING_BLOCK_I1[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK|TEMPORAL~clkctrl_outclk\,
	d => \Add4~88_combout\,
	ena => \FALLING_BLOCK_I1[10]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => FALLING_BLOCK_I1(17));

-- Location: LCCOMB_X21_Y16_N4
\Add4~90\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add4~90_combout\ = (!\Add4~49_combout\ & (((\FALLING_BLOCK_F1[3]~0_combout\ & \FALLING_BLOCK_I1[28]~0_combout\)) # (!\FALLING_BLOCK_F1[31]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FALLING_BLOCK_F1[31]~2_combout\,
	datab => \Add4~49_combout\,
	datac => \FALLING_BLOCK_F1[3]~0_combout\,
	datad => \FALLING_BLOCK_I1[28]~0_combout\,
	combout => \Add4~90_combout\);

-- Location: FF_X21_Y16_N5
\FALLING_BLOCK_I1[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK|TEMPORAL~clkctrl_outclk\,
	d => \Add4~90_combout\,
	ena => \FALLING_BLOCK_I1[10]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => FALLING_BLOCK_I1(19));

-- Location: LCCOMB_X21_Y16_N6
\Add4~89\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add4~89_combout\ = (!\Add4~47_combout\ & (((\FALLING_BLOCK_I1[28]~0_combout\ & \FALLING_BLOCK_F1[3]~0_combout\)) # (!\FALLING_BLOCK_F1[31]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add4~47_combout\,
	datab => \FALLING_BLOCK_I1[28]~0_combout\,
	datac => \FALLING_BLOCK_F1[3]~0_combout\,
	datad => \FALLING_BLOCK_F1[31]~2_combout\,
	combout => \Add4~89_combout\);

-- Location: FF_X21_Y16_N7
\FALLING_BLOCK_I1[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK|TEMPORAL~clkctrl_outclk\,
	d => \Add4~89_combout\,
	ena => \FALLING_BLOCK_I1[10]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => FALLING_BLOCK_I1(18));

-- Location: LCCOMB_X21_Y16_N0
\LessThan39~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan39~4_combout\ = (((!FALLING_BLOCK_I1(18)) # (!FALLING_BLOCK_I1(19))) # (!FALLING_BLOCK_I1(17))) # (!FALLING_BLOCK_I1(20))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => FALLING_BLOCK_I1(20),
	datab => FALLING_BLOCK_I1(17),
	datac => FALLING_BLOCK_I1(19),
	datad => FALLING_BLOCK_I1(18),
	combout => \LessThan39~4_combout\);

-- Location: LCCOMB_X21_Y16_N2
\Add4~92\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add4~92_combout\ = (!\Add4~53_combout\ & (((\FALLING_BLOCK_I1[28]~0_combout\ & \FALLING_BLOCK_F1[3]~0_combout\)) # (!\FALLING_BLOCK_F1[31]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add4~53_combout\,
	datab => \FALLING_BLOCK_I1[28]~0_combout\,
	datac => \FALLING_BLOCK_F1[3]~0_combout\,
	datad => \FALLING_BLOCK_F1[31]~2_combout\,
	combout => \Add4~92_combout\);

-- Location: FF_X21_Y16_N3
\FALLING_BLOCK_I1[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK|TEMPORAL~clkctrl_outclk\,
	d => \Add4~92_combout\,
	ena => \FALLING_BLOCK_I1[10]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => FALLING_BLOCK_I1(21));

-- Location: LCCOMB_X21_Y16_N10
\LessThan39~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan39~5_combout\ = (((!FALLING_BLOCK_I1(21)) # (!FALLING_BLOCK_I1(24))) # (!FALLING_BLOCK_I1(23))) # (!FALLING_BLOCK_I1(22))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => FALLING_BLOCK_I1(22),
	datab => FALLING_BLOCK_I1(23),
	datac => FALLING_BLOCK_I1(24),
	datad => FALLING_BLOCK_I1(21),
	combout => \LessThan39~5_combout\);

-- Location: LCCOMB_X19_Y17_N0
\LessThan39~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan39~6_combout\ = (\LessThan39~2_combout\) # ((\LessThan39~3_combout\) # ((\LessThan39~4_combout\) # (\LessThan39~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan39~2_combout\,
	datab => \LessThan39~3_combout\,
	datac => \LessThan39~4_combout\,
	datad => \LessThan39~5_combout\,
	combout => \LessThan39~6_combout\);

-- Location: LCCOMB_X21_Y17_N2
\LessThan39~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan39~7_combout\ = (!FALLING_BLOCK_I1(0) & (FALLING_BLOCK_I1(1) & (!FALLING_BLOCK_I1(3) & FALLING_BLOCK_I1(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => FALLING_BLOCK_I1(0),
	datab => FALLING_BLOCK_I1(1),
	datac => FALLING_BLOCK_I1(3),
	datad => FALLING_BLOCK_I1(2),
	combout => \LessThan39~7_combout\);

-- Location: LCCOMB_X19_Y17_N10
\LessThan39~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan39~8_combout\ = (!FALLING_BLOCK_I1(6) & (((\LessThan39~7_combout\ & !FALLING_BLOCK_I1(4))) # (!FALLING_BLOCK_I1(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000101010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => FALLING_BLOCK_I1(6),
	datab => FALLING_BLOCK_I1(5),
	datac => \LessThan39~7_combout\,
	datad => FALLING_BLOCK_I1(4),
	combout => \LessThan39~8_combout\);

-- Location: LCCOMB_X19_Y17_N4
\LessThan39~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan39~9_combout\ = (\LessThan39~6_combout\) # ((!FALLING_BLOCK_I1(8) & ((FALLING_BLOCK_I1(7)) # (\LessThan39~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => FALLING_BLOCK_I1(8),
	datab => \LessThan39~6_combout\,
	datac => FALLING_BLOCK_I1(7),
	datad => \LessThan39~8_combout\,
	combout => \LessThan39~9_combout\);

-- Location: LCCOMB_X22_Y16_N4
\FALLING_BLOCK_F1[31]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \FALLING_BLOCK_F1[31]~2_combout\ = (FALLING_BLOCK_I1(31) & ((\LessThan39~0_combout\) # ((\LessThan39~1_combout\) # (\LessThan39~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan39~0_combout\,
	datab => FALLING_BLOCK_I1(31),
	datac => \LessThan39~1_combout\,
	datad => \LessThan39~9_combout\,
	combout => \FALLING_BLOCK_F1[31]~2_combout\);

-- Location: LCCOMB_X22_Y16_N2
\DRAW2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DRAW2~0_combout\ = (\DRAW2~q\) # ((\Equal0~10_combout\ & (\FALLING_BLOCK_F1[31]~2_combout\ & !\FALLING_BLOCK_F1[3]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~10_combout\,
	datab => \FALLING_BLOCK_F1[31]~2_combout\,
	datac => \DRAW2~q\,
	datad => \FALLING_BLOCK_F1[3]~0_combout\,
	combout => \DRAW2~0_combout\);

-- Location: FF_X22_Y16_N3
DRAW2 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK|TEMPORAL~clkctrl_outclk\,
	d => \DRAW2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DRAW2~q\);

-- Location: LCCOMB_X22_Y16_N8
\FALLING_BLOCK_F1[10]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \FALLING_BLOCK_F1[10]~3_combout\ = (!\DRAW2~q\ & (\Equal0~10_combout\ & ((\FALLING_BLOCK_F1[3]~0_combout\) # (\FALLING_BLOCK_F1[31]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FALLING_BLOCK_F1[3]~0_combout\,
	datab => \DRAW2~q\,
	datac => \FALLING_BLOCK_F1[31]~2_combout\,
	datad => \Equal0~10_combout\,
	combout => \FALLING_BLOCK_F1[10]~3_combout\);

-- Location: FF_X23_Y18_N19
\FALLING_BLOCK_F1[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK|TEMPORAL~clkctrl_outclk\,
	asdata => \FALLING_BLOCK_F1~13_combout\,
	sload => VCC,
	ena => \FALLING_BLOCK_F1[10]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => FALLING_BLOCK_F1(0));

-- Location: LCCOMB_X23_Y18_N0
\Add1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~0_combout\ = FALLING_BLOCK_F1(0) $ (GND)
-- \Add1~1\ = CARRY(!FALLING_BLOCK_F1(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => FALLING_BLOCK_F1(0),
	datad => VCC,
	combout => \Add1~0_combout\,
	cout => \Add1~1\);

-- Location: LCCOMB_X23_Y18_N2
\Add1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~2_combout\ = (FALLING_BLOCK_F1(1) & (!\Add1~1\)) # (!FALLING_BLOCK_F1(1) & ((\Add1~1\) # (GND)))
-- \Add1~3\ = CARRY((!\Add1~1\) # (!FALLING_BLOCK_F1(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => FALLING_BLOCK_F1(1),
	datad => VCC,
	cin => \Add1~1\,
	combout => \Add1~2_combout\,
	cout => \Add1~3\);

-- Location: LCCOMB_X23_Y18_N4
\Add1~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~4_combout\ = (FALLING_BLOCK_F1(2) & ((GND) # (!\Add1~3\))) # (!FALLING_BLOCK_F1(2) & (\Add1~3\ $ (GND)))
-- \Add1~5\ = CARRY((FALLING_BLOCK_F1(2)) # (!\Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => FALLING_BLOCK_F1(2),
	datad => VCC,
	cin => \Add1~3\,
	combout => \Add1~4_combout\,
	cout => \Add1~5\);

-- Location: LCCOMB_X23_Y18_N6
\Add1~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~6_combout\ = (FALLING_BLOCK_F1(3) & ((\Add1~5\) # (GND))) # (!FALLING_BLOCK_F1(3) & (!\Add1~5\))
-- \Add1~7\ = CARRY((FALLING_BLOCK_F1(3)) # (!\Add1~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => FALLING_BLOCK_F1(3),
	datad => VCC,
	cin => \Add1~5\,
	combout => \Add1~6_combout\,
	cout => \Add1~7\);

-- Location: LCCOMB_X22_Y18_N30
\FALLING_BLOCK_F1~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \FALLING_BLOCK_F1~10_combout\ = (!\Add1~6_combout\ & \FALLING_BLOCK_F1[3]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add1~6_combout\,
	datac => \FALLING_BLOCK_F1[3]~0_combout\,
	combout => \FALLING_BLOCK_F1~10_combout\);

-- Location: FF_X23_Y18_N29
\FALLING_BLOCK_F1[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK|TEMPORAL~clkctrl_outclk\,
	asdata => \FALLING_BLOCK_F1~10_combout\,
	sload => VCC,
	ena => \FALLING_BLOCK_F1[10]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => FALLING_BLOCK_F1(3));

-- Location: LCCOMB_X23_Y18_N10
\Add1~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~10_combout\ = (FALLING_BLOCK_F1(5) & ((\Add1~9\) # (GND))) # (!FALLING_BLOCK_F1(5) & (!\Add1~9\))
-- \Add1~11\ = CARRY((FALLING_BLOCK_F1(5)) # (!\Add1~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => FALLING_BLOCK_F1(5),
	datad => VCC,
	cin => \Add1~9\,
	combout => \Add1~10_combout\,
	cout => \Add1~11\);

-- Location: LCCOMB_X23_Y18_N14
\Add1~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~14_combout\ = (FALLING_BLOCK_F1(7) & (!\Add1~13\)) # (!FALLING_BLOCK_F1(7) & ((\Add1~13\) # (GND)))
-- \Add1~15\ = CARRY((!\Add1~13\) # (!FALLING_BLOCK_F1(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => FALLING_BLOCK_F1(7),
	datad => VCC,
	cin => \Add1~13\,
	combout => \Add1~14_combout\,
	cout => \Add1~15\);

-- Location: LCCOMB_X22_Y18_N28
\FALLING_BLOCK_F1~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \FALLING_BLOCK_F1~6_combout\ = (\FALLING_BLOCK_F1[3]~0_combout\ & \Add1~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FALLING_BLOCK_F1[3]~0_combout\,
	datad => \Add1~14_combout\,
	combout => \FALLING_BLOCK_F1~6_combout\);

-- Location: FF_X23_Y18_N21
\FALLING_BLOCK_F1[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK|TEMPORAL~clkctrl_outclk\,
	asdata => \FALLING_BLOCK_F1~6_combout\,
	sload => VCC,
	ena => \FALLING_BLOCK_F1[10]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => FALLING_BLOCK_F1(7));

-- Location: LCCOMB_X24_Y18_N20
\FALLING_BLOCK_F1~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \FALLING_BLOCK_F1~5_combout\ = (!\Add1~16_combout\ & \FALLING_BLOCK_F1[3]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add1~16_combout\,
	datad => \FALLING_BLOCK_F1[3]~0_combout\,
	combout => \FALLING_BLOCK_F1~5_combout\);

-- Location: FF_X24_Y18_N21
\FALLING_BLOCK_F1[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK|TEMPORAL~clkctrl_outclk\,
	d => \FALLING_BLOCK_F1~5_combout\,
	ena => \FALLING_BLOCK_F1[10]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => FALLING_BLOCK_F1(8));

-- Location: LCCOMB_X22_Y18_N4
\FALLING_BLOCK_F1~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \FALLING_BLOCK_F1~8_combout\ = (\FALLING_BLOCK_F1[3]~0_combout\ & !\Add1~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FALLING_BLOCK_F1[3]~0_combout\,
	datac => \Add1~10_combout\,
	combout => \FALLING_BLOCK_F1~8_combout\);

-- Location: FF_X23_Y18_N23
\FALLING_BLOCK_F1[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK|TEMPORAL~clkctrl_outclk\,
	asdata => \FALLING_BLOCK_F1~8_combout\,
	sload => VCC,
	ena => \FALLING_BLOCK_F1[10]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => FALLING_BLOCK_F1(5));

-- Location: LCCOMB_X22_Y18_N26
\FALLING_BLOCK_F1~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \FALLING_BLOCK_F1~7_combout\ = (!\Add1~12_combout\ & \FALLING_BLOCK_F1[3]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~12_combout\,
	datac => \FALLING_BLOCK_F1[3]~0_combout\,
	combout => \FALLING_BLOCK_F1~7_combout\);

-- Location: FF_X23_Y18_N13
\FALLING_BLOCK_F1[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK|TEMPORAL~clkctrl_outclk\,
	asdata => \FALLING_BLOCK_F1~7_combout\,
	sload => VCC,
	ena => \FALLING_BLOCK_F1[10]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => FALLING_BLOCK_F1(6));

-- Location: LCCOMB_X22_Y18_N0
\FALLING_BLOCK_F1~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \FALLING_BLOCK_F1~11_combout\ = (\FALLING_BLOCK_F1[3]~0_combout\ & \Add1~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FALLING_BLOCK_F1[3]~0_combout\,
	datad => \Add1~4_combout\,
	combout => \FALLING_BLOCK_F1~11_combout\);

-- Location: FF_X23_Y18_N27
\FALLING_BLOCK_F1[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK|TEMPORAL~clkctrl_outclk\,
	asdata => \FALLING_BLOCK_F1~11_combout\,
	sload => VCC,
	ena => \FALLING_BLOCK_F1[10]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => FALLING_BLOCK_F1(2));

-- Location: LCCOMB_X21_Y18_N0
\LessThan37~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan37~7_combout\ = (((FALLING_BLOCK_F1(3)) # (FALLING_BLOCK_F1(4))) # (!FALLING_BLOCK_F1(2))) # (!FALLING_BLOCK_F1(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => FALLING_BLOCK_F1(1),
	datab => FALLING_BLOCK_F1(2),
	datac => FALLING_BLOCK_F1(3),
	datad => FALLING_BLOCK_F1(4),
	combout => \LessThan37~7_combout\);

-- Location: LCCOMB_X21_Y18_N30
\LessThan37~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan37~8_combout\ = (!FALLING_BLOCK_F1(7) & ((FALLING_BLOCK_F1(6)) # ((FALLING_BLOCK_F1(5) & \LessThan37~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => FALLING_BLOCK_F1(7),
	datab => FALLING_BLOCK_F1(5),
	datac => FALLING_BLOCK_F1(6),
	datad => \LessThan37~7_combout\,
	combout => \LessThan37~8_combout\);

-- Location: LCCOMB_X22_Y17_N2
\LessThan37~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan37~2_combout\ = (FALLING_BLOCK_F1(17) & (FALLING_BLOCK_F1(18) & (FALLING_BLOCK_F1(19) & FALLING_BLOCK_F1(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => FALLING_BLOCK_F1(17),
	datab => FALLING_BLOCK_F1(18),
	datac => FALLING_BLOCK_F1(19),
	datad => FALLING_BLOCK_F1(20),
	combout => \LessThan37~2_combout\);

-- Location: LCCOMB_X24_Y18_N6
\LessThan37~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan37~0_combout\ = (FALLING_BLOCK_F1(11) & (FALLING_BLOCK_F1(12) & (FALLING_BLOCK_F1(10) & FALLING_BLOCK_F1(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => FALLING_BLOCK_F1(11),
	datab => FALLING_BLOCK_F1(12),
	datac => FALLING_BLOCK_F1(10),
	datad => FALLING_BLOCK_F1(9),
	combout => \LessThan37~0_combout\);

-- Location: LCCOMB_X24_Y18_N30
\FALLING_BLOCK_F1~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \FALLING_BLOCK_F1~19_combout\ = (!\Add1~32_combout\ & \FALLING_BLOCK_F1[3]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add1~32_combout\,
	datad => \FALLING_BLOCK_F1[3]~0_combout\,
	combout => \FALLING_BLOCK_F1~19_combout\);

-- Location: FF_X24_Y18_N31
\FALLING_BLOCK_F1[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK|TEMPORAL~clkctrl_outclk\,
	d => \FALLING_BLOCK_F1~19_combout\,
	ena => \FALLING_BLOCK_F1[10]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => FALLING_BLOCK_F1(16));

-- Location: LCCOMB_X24_Y18_N28
\LessThan37~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan37~1_combout\ = (FALLING_BLOCK_F1(14) & (FALLING_BLOCK_F1(15) & (FALLING_BLOCK_F1(16) & FALLING_BLOCK_F1(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => FALLING_BLOCK_F1(14),
	datab => FALLING_BLOCK_F1(15),
	datac => FALLING_BLOCK_F1(16),
	datad => FALLING_BLOCK_F1(13),
	combout => \LessThan37~1_combout\);

-- Location: LCCOMB_X24_Y17_N16
\LessThan37~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan37~4_combout\ = (\LessThan37~3_combout\ & (\LessThan37~2_combout\ & (\LessThan37~0_combout\ & \LessThan37~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan37~3_combout\,
	datab => \LessThan37~2_combout\,
	datac => \LessThan37~0_combout\,
	datad => \LessThan37~1_combout\,
	combout => \LessThan37~4_combout\);

-- Location: LCCOMB_X24_Y17_N22
\FALLING_BLOCK_F1[30]~33\ : cycloneiii_lcell_comb
-- Equation(s):
-- \FALLING_BLOCK_F1[30]~33_combout\ = (\FALLING_BLOCK_F1[10]~3_combout\ & (\FALLING_BLOCK_F1[3]~0_combout\ & ((!\Add1~60_combout\)))) # (!\FALLING_BLOCK_F1[10]~3_combout\ & (((FALLING_BLOCK_F1(30)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FALLING_BLOCK_F1[3]~0_combout\,
	datab => \FALLING_BLOCK_F1[10]~3_combout\,
	datac => FALLING_BLOCK_F1(30),
	datad => \Add1~60_combout\,
	combout => \FALLING_BLOCK_F1[30]~33_combout\);

-- Location: FF_X24_Y17_N23
\FALLING_BLOCK_F1[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK|TEMPORAL~clkctrl_outclk\,
	d => \FALLING_BLOCK_F1[30]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => FALLING_BLOCK_F1(30));

-- Location: LCCOMB_X24_Y17_N0
\LessThan37~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan37~6_combout\ = (\LessThan37~5_combout\ & (\LessThan37~4_combout\ & (FALLING_BLOCK_F1(30) & FALLING_BLOCK_F1(29))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan37~5_combout\,
	datab => \LessThan37~4_combout\,
	datac => FALLING_BLOCK_F1(30),
	datad => FALLING_BLOCK_F1(29),
	combout => \LessThan37~6_combout\);

-- Location: LCCOMB_X24_Y17_N30
\FALLING_BLOCK_F1[3]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \FALLING_BLOCK_F1[3]~0_combout\ = ((\LessThan37~6_combout\ & ((FALLING_BLOCK_F1(8)) # (\LessThan37~8_combout\)))) # (!FALLING_BLOCK_F1(31))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => FALLING_BLOCK_F1(31),
	datab => FALLING_BLOCK_F1(8),
	datac => \LessThan37~8_combout\,
	datad => \LessThan37~6_combout\,
	combout => \FALLING_BLOCK_F1[3]~0_combout\);

-- Location: LCCOMB_X24_Y18_N18
\FALLING_BLOCK_F1~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \FALLING_BLOCK_F1~4_combout\ = (!\Add1~18_combout\ & \FALLING_BLOCK_F1[3]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add1~18_combout\,
	datad => \FALLING_BLOCK_F1[3]~0_combout\,
	combout => \FALLING_BLOCK_F1~4_combout\);

-- Location: FF_X24_Y18_N19
\FALLING_BLOCK_F1[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK|TEMPORAL~clkctrl_outclk\,
	d => \FALLING_BLOCK_F1~4_combout\,
	ena => \FALLING_BLOCK_F1[10]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => FALLING_BLOCK_F1(9));

-- Location: LCCOMB_X22_Y18_N6
\LessThan5~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan5~1_cout\ = CARRY((!\SYNC|Add3~0_combout\ & \Add1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SYNC|Add3~0_combout\,
	datab => \Add1~0_combout\,
	datad => VCC,
	cout => \LessThan5~1_cout\);

-- Location: LCCOMB_X22_Y18_N8
\LessThan5~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan5~3_cout\ = CARRY((\Add1~2_combout\ & (\SYNC|Add3~2_combout\ & !\LessThan5~1_cout\)) # (!\Add1~2_combout\ & ((\SYNC|Add3~2_combout\) # (!\LessThan5~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~2_combout\,
	datab => \SYNC|Add3~2_combout\,
	datad => VCC,
	cin => \LessThan5~1_cout\,
	cout => \LessThan5~3_cout\);

-- Location: LCCOMB_X22_Y18_N10
\LessThan5~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan5~5_cout\ = CARRY((\Add1~4_combout\ & ((!\LessThan5~3_cout\) # (!\SYNC|Add3~4_combout\))) # (!\Add1~4_combout\ & (!\SYNC|Add3~4_combout\ & !\LessThan5~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~4_combout\,
	datab => \SYNC|Add3~4_combout\,
	datad => VCC,
	cin => \LessThan5~3_cout\,
	cout => \LessThan5~5_cout\);

-- Location: LCCOMB_X22_Y18_N12
\LessThan5~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan5~7_cout\ = CARRY((\SYNC|Add3~6_combout\ & ((!\LessThan5~5_cout\) # (!\Add1~6_combout\))) # (!\SYNC|Add3~6_combout\ & (!\Add1~6_combout\ & !\LessThan5~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SYNC|Add3~6_combout\,
	datab => \Add1~6_combout\,
	datad => VCC,
	cin => \LessThan5~5_cout\,
	cout => \LessThan5~7_cout\);

-- Location: LCCOMB_X22_Y18_N14
\LessThan5~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan5~9_cout\ = CARRY((\SYNC|Add3~8_combout\ & (\Add1~8_combout\ & !\LessThan5~7_cout\)) # (!\SYNC|Add3~8_combout\ & ((\Add1~8_combout\) # (!\LessThan5~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SYNC|Add3~8_combout\,
	datab => \Add1~8_combout\,
	datad => VCC,
	cin => \LessThan5~7_cout\,
	cout => \LessThan5~9_cout\);

-- Location: LCCOMB_X22_Y18_N16
\LessThan5~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan5~11_cout\ = CARRY((\SYNC|Add3~10_combout\ & ((!\LessThan5~9_cout\) # (!\Add1~10_combout\))) # (!\SYNC|Add3~10_combout\ & (!\Add1~10_combout\ & !\LessThan5~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SYNC|Add3~10_combout\,
	datab => \Add1~10_combout\,
	datad => VCC,
	cin => \LessThan5~9_cout\,
	cout => \LessThan5~11_cout\);

-- Location: LCCOMB_X22_Y18_N18
\LessThan5~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan5~13_cout\ = CARRY((\Add1~12_combout\ & ((!\LessThan5~11_cout\) # (!\SYNC|Add3~12_combout\))) # (!\Add1~12_combout\ & (!\SYNC|Add3~12_combout\ & !\LessThan5~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~12_combout\,
	datab => \SYNC|Add3~12_combout\,
	datad => VCC,
	cin => \LessThan5~11_cout\,
	cout => \LessThan5~13_cout\);

-- Location: LCCOMB_X22_Y18_N20
\LessThan5~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan5~15_cout\ = CARRY((\SYNC|Add3~14_combout\ & ((!\LessThan5~13_cout\) # (!\Add1~14_combout\))) # (!\SYNC|Add3~14_combout\ & (!\Add1~14_combout\ & !\LessThan5~13_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SYNC|Add3~14_combout\,
	datab => \Add1~14_combout\,
	datad => VCC,
	cin => \LessThan5~13_cout\,
	cout => \LessThan5~15_cout\);

-- Location: LCCOMB_X22_Y18_N22
\LessThan5~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan5~17_cout\ = CARRY((\SYNC|Add3~16_combout\ & (\Add1~16_combout\ & !\LessThan5~15_cout\)) # (!\SYNC|Add3~16_combout\ & ((\Add1~16_combout\) # (!\LessThan5~15_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SYNC|Add3~16_combout\,
	datab => \Add1~16_combout\,
	datad => VCC,
	cin => \LessThan5~15_cout\,
	cout => \LessThan5~17_cout\);

-- Location: LCCOMB_X22_Y18_N24
\LessThan5~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan5~18_combout\ = (\SYNC|Add3~18_combout\ & (\LessThan5~17_cout\ & \Add1~18_combout\)) # (!\SYNC|Add3~18_combout\ & ((\LessThan5~17_cout\) # (\Add1~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010101010000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SYNC|Add3~18_combout\,
	datad => \Add1~18_combout\,
	cin => \LessThan5~17_cout\,
	combout => \LessThan5~18_combout\);

-- Location: LCCOMB_X21_Y17_N4
\LessThan4~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan4~1_cout\ = CARRY((FALLING_BLOCK_I1(0) & \SYNC|Add3~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => FALLING_BLOCK_I1(0),
	datab => \SYNC|Add3~0_combout\,
	datad => VCC,
	cout => \LessThan4~1_cout\);

-- Location: LCCOMB_X21_Y17_N6
\LessThan4~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan4~3_cout\ = CARRY((FALLING_BLOCK_I1(1) & ((!\LessThan4~1_cout\) # (!\SYNC|Add3~2_combout\))) # (!FALLING_BLOCK_I1(1) & (!\SYNC|Add3~2_combout\ & !\LessThan4~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => FALLING_BLOCK_I1(1),
	datab => \SYNC|Add3~2_combout\,
	datad => VCC,
	cin => \LessThan4~1_cout\,
	cout => \LessThan4~3_cout\);

-- Location: LCCOMB_X21_Y17_N8
\LessThan4~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan4~5_cout\ = CARRY((FALLING_BLOCK_I1(2) & (\SYNC|Add3~4_combout\ & !\LessThan4~3_cout\)) # (!FALLING_BLOCK_I1(2) & ((\SYNC|Add3~4_combout\) # (!\LessThan4~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => FALLING_BLOCK_I1(2),
	datab => \SYNC|Add3~4_combout\,
	datad => VCC,
	cin => \LessThan4~3_cout\,
	cout => \LessThan4~5_cout\);

-- Location: LCCOMB_X21_Y17_N10
\LessThan4~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan4~7_cout\ = CARRY((FALLING_BLOCK_I1(3) & (!\SYNC|Add3~6_combout\ & !\LessThan4~5_cout\)) # (!FALLING_BLOCK_I1(3) & ((!\LessThan4~5_cout\) # (!\SYNC|Add3~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => FALLING_BLOCK_I1(3),
	datab => \SYNC|Add3~6_combout\,
	datad => VCC,
	cin => \LessThan4~5_cout\,
	cout => \LessThan4~7_cout\);

-- Location: LCCOMB_X21_Y17_N12
\LessThan4~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan4~9_cout\ = CARRY((FALLING_BLOCK_I1(4) & ((\SYNC|Add3~8_combout\) # (!\LessThan4~7_cout\))) # (!FALLING_BLOCK_I1(4) & (\SYNC|Add3~8_combout\ & !\LessThan4~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => FALLING_BLOCK_I1(4),
	datab => \SYNC|Add3~8_combout\,
	datad => VCC,
	cin => \LessThan4~7_cout\,
	cout => \LessThan4~9_cout\);

-- Location: LCCOMB_X21_Y17_N14
\LessThan4~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan4~11_cout\ = CARRY((FALLING_BLOCK_I1(5) & (!\SYNC|Add3~10_combout\ & !\LessThan4~9_cout\)) # (!FALLING_BLOCK_I1(5) & ((!\LessThan4~9_cout\) # (!\SYNC|Add3~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => FALLING_BLOCK_I1(5),
	datab => \SYNC|Add3~10_combout\,
	datad => VCC,
	cin => \LessThan4~9_cout\,
	cout => \LessThan4~11_cout\);

-- Location: LCCOMB_X21_Y17_N16
\LessThan4~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan4~13_cout\ = CARRY((FALLING_BLOCK_I1(6) & ((\SYNC|Add3~12_combout\) # (!\LessThan4~11_cout\))) # (!FALLING_BLOCK_I1(6) & (\SYNC|Add3~12_combout\ & !\LessThan4~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => FALLING_BLOCK_I1(6),
	datab => \SYNC|Add3~12_combout\,
	datad => VCC,
	cin => \LessThan4~11_cout\,
	cout => \LessThan4~13_cout\);

-- Location: LCCOMB_X21_Y17_N18
\LessThan4~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan4~15_cout\ = CARRY((\SYNC|Add3~14_combout\ & (FALLING_BLOCK_I1(7) & !\LessThan4~13_cout\)) # (!\SYNC|Add3~14_combout\ & ((FALLING_BLOCK_I1(7)) # (!\LessThan4~13_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SYNC|Add3~14_combout\,
	datab => FALLING_BLOCK_I1(7),
	datad => VCC,
	cin => \LessThan4~13_cout\,
	cout => \LessThan4~15_cout\);

-- Location: LCCOMB_X21_Y17_N20
\LessThan4~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan4~17_cout\ = CARRY((FALLING_BLOCK_I1(8) & ((\SYNC|Add3~16_combout\) # (!\LessThan4~15_cout\))) # (!FALLING_BLOCK_I1(8) & (\SYNC|Add3~16_combout\ & !\LessThan4~15_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => FALLING_BLOCK_I1(8),
	datab => \SYNC|Add3~16_combout\,
	datad => VCC,
	cin => \LessThan4~15_cout\,
	cout => \LessThan4~17_cout\);

-- Location: LCCOMB_X21_Y17_N22
\LessThan4~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan4~18_combout\ = (\SYNC|Add3~18_combout\ & ((FALLING_BLOCK_I1(9)) # (\LessThan4~17_cout\))) # (!\SYNC|Add3~18_combout\ & (FALLING_BLOCK_I1(9) & \LessThan4~17_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011101000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SYNC|Add3~18_combout\,
	datab => FALLING_BLOCK_I1(9),
	cin => \LessThan4~17_cout\,
	combout => \LessThan4~18_combout\);

-- Location: LCCOMB_X26_Y15_N28
\process_0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \process_0~3_combout\ = (\LessThan17~4_combout\ & (\SYNC|Add2~3_combout\ & (\LessThan10~3_combout\ & !\LessThan17~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan17~4_combout\,
	datab => \SYNC|Add2~3_combout\,
	datac => \LessThan10~3_combout\,
	datad => \LessThan17~6_combout\,
	combout => \process_0~3_combout\);

-- Location: LCCOMB_X21_Y17_N24
\process_0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \process_0~4_combout\ = (\process_0~3_combout\ & ((\LessThan4~18_combout\) # (!FALLING_BLOCK_I1(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => FALLING_BLOCK_I1(10),
	datac => \LessThan4~18_combout\,
	datad => \process_0~3_combout\,
	combout => \process_0~4_combout\);

-- Location: LCCOMB_X21_Y14_N14
\process_0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \process_0~5_combout\ = ((\Add1~20_combout\) # (!\process_0~4_combout\)) # (!\LessThan5~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LessThan5~18_combout\,
	datac => \Add1~20_combout\,
	datad => \process_0~4_combout\,
	combout => \process_0~5_combout\);

-- Location: LCCOMB_X19_Y12_N6
\Add2~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~38_combout\ = (FALLING_BLOCK_F2(19) & ((\Add2~37\) # (GND))) # (!FALLING_BLOCK_F2(19) & (!\Add2~37\))
-- \Add2~39\ = CARRY((FALLING_BLOCK_F2(19)) # (!\Add2~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => FALLING_BLOCK_F2(19),
	datad => VCC,
	cin => \Add2~37\,
	combout => \Add2~38_combout\,
	cout => \Add2~39\);

-- Location: LCCOMB_X19_Y12_N10
\Add2~42\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~42_combout\ = (FALLING_BLOCK_F2(21) & ((\Add2~41\) # (GND))) # (!FALLING_BLOCK_F2(21) & (!\Add2~41\))
-- \Add2~43\ = CARRY((FALLING_BLOCK_F2(21)) # (!\Add2~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => FALLING_BLOCK_F2(21),
	datad => VCC,
	cin => \Add2~41\,
	combout => \Add2~42_combout\,
	cout => \Add2~43\);

-- Location: LCCOMB_X17_Y12_N2
\FALLING_BLOCK_F2~27\ : cycloneiii_lcell_comb
-- Equation(s):
-- \FALLING_BLOCK_F2~27_combout\ = (!\Add2~42_combout\ & \FALLING_BLOCK_F2[25]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add2~42_combout\,
	datad => \FALLING_BLOCK_F2[25]~4_combout\,
	combout => \FALLING_BLOCK_F2~27_combout\);

-- Location: LCCOMB_X16_Y13_N8
\Add5~81\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add5~81_combout\ = (!\Add5~71_combout\ & (((\FALLING_BLOCK_I2[20]~0_combout\ & \FALLING_BLOCK_F2[25]~4_combout\)) # (!\FALLING_BLOCK_F2[31]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add5~71_combout\,
	datab => \FALLING_BLOCK_I2[20]~0_combout\,
	datac => \FALLING_BLOCK_F2[31]~6_combout\,
	datad => \FALLING_BLOCK_F2[25]~4_combout\,
	combout => \Add5~81_combout\);

-- Location: LCCOMB_X17_Y15_N4
\FALLING_BLOCK_I2[10]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \FALLING_BLOCK_I2[10]~1_combout\ = (!\DRAW3~q\ & (\Equal0~10_combout\ & \FALLING_BLOCK_I2[20]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DRAW3~q\,
	datac => \Equal0~10_combout\,
	datad => \FALLING_BLOCK_I2[20]~0_combout\,
	combout => \FALLING_BLOCK_I2[10]~1_combout\);

-- Location: FF_X16_Y13_N9
\FALLING_BLOCK_I2[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK|TEMPORAL~clkctrl_outclk\,
	d => \Add5~81_combout\,
	ena => \FALLING_BLOCK_I2[10]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => FALLING_BLOCK_I2(30));

-- Location: LCCOMB_X17_Y14_N22
\Add5~95\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add5~95_combout\ = (!\Add5~59_combout\ & (((\FALLING_BLOCK_I2[20]~0_combout\ & \FALLING_BLOCK_F2[25]~4_combout\)) # (!\FALLING_BLOCK_F2[31]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add5~59_combout\,
	datab => \FALLING_BLOCK_I2[20]~0_combout\,
	datac => \FALLING_BLOCK_F2[25]~4_combout\,
	datad => \FALLING_BLOCK_F2[31]~6_combout\,
	combout => \Add5~95_combout\);

-- Location: FF_X17_Y14_N23
\FALLING_BLOCK_I2[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK|TEMPORAL~clkctrl_outclk\,
	d => \Add5~95_combout\,
	ena => \FALLING_BLOCK_I2[10]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => FALLING_BLOCK_I2(24));

-- Location: LCCOMB_X16_Y13_N26
\Add5~87\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add5~87_combout\ = (!\Add5~43_combout\ & (((\FALLING_BLOCK_I2[20]~0_combout\ & \FALLING_BLOCK_F2[25]~4_combout\)) # (!\FALLING_BLOCK_F2[31]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add5~43_combout\,
	datab => \FALLING_BLOCK_F2[31]~6_combout\,
	datac => \FALLING_BLOCK_I2[20]~0_combout\,
	datad => \FALLING_BLOCK_F2[25]~4_combout\,
	combout => \Add5~87_combout\);

-- Location: FF_X16_Y13_N27
\FALLING_BLOCK_I2[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK|TEMPORAL~clkctrl_outclk\,
	d => \Add5~87_combout\,
	ena => \FALLING_BLOCK_I2[10]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => FALLING_BLOCK_I2(16));

-- Location: LCCOMB_X16_Y13_N28
\Add5~86\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add5~86_combout\ = (!\Add5~41_combout\ & (((\FALLING_BLOCK_I2[20]~0_combout\ & \FALLING_BLOCK_F2[25]~4_combout\)) # (!\FALLING_BLOCK_F2[31]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add5~41_combout\,
	datab => \FALLING_BLOCK_I2[20]~0_combout\,
	datac => \FALLING_BLOCK_F2[31]~6_combout\,
	datad => \FALLING_BLOCK_F2[25]~4_combout\,
	combout => \Add5~86_combout\);

-- Location: FF_X16_Y13_N29
\FALLING_BLOCK_I2[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK|TEMPORAL~clkctrl_outclk\,
	d => \Add5~86_combout\,
	ena => \FALLING_BLOCK_I2[10]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => FALLING_BLOCK_I2(15));

-- Location: LCCOMB_X16_Y13_N16
\Add5~84\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add5~84_combout\ = (!\Add5~37_combout\ & (((\FALLING_BLOCK_I2[20]~0_combout\ & \FALLING_BLOCK_F2[25]~4_combout\)) # (!\FALLING_BLOCK_F2[31]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add5~37_combout\,
	datab => \FALLING_BLOCK_F2[31]~6_combout\,
	datac => \FALLING_BLOCK_I2[20]~0_combout\,
	datad => \FALLING_BLOCK_F2[25]~4_combout\,
	combout => \Add5~84_combout\);

-- Location: FF_X16_Y13_N17
\FALLING_BLOCK_I2[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK|TEMPORAL~clkctrl_outclk\,
	d => \Add5~84_combout\,
	ena => \FALLING_BLOCK_I2[10]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => FALLING_BLOCK_I2(13));

-- Location: LCCOMB_X17_Y14_N26
\Add5~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add5~32_combout\ = (!\Add5~30_combout\ & (((\FALLING_BLOCK_I2[20]~0_combout\ & \FALLING_BLOCK_F2[25]~4_combout\)) # (!\FALLING_BLOCK_F2[31]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add5~30_combout\,
	datab => \FALLING_BLOCK_I2[20]~0_combout\,
	datac => \FALLING_BLOCK_F2[25]~4_combout\,
	datad => \FALLING_BLOCK_F2[31]~6_combout\,
	combout => \Add5~32_combout\);

-- Location: FF_X17_Y14_N27
\FALLING_BLOCK_I2[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK|TEMPORAL~clkctrl_outclk\,
	d => \Add5~32_combout\,
	ena => \FALLING_BLOCK_I2[10]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => FALLING_BLOCK_I2(10));

-- Location: LCCOMB_X17_Y15_N8
\Add5~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add5~21_combout\ = (\Add5~16_combout\ & (((\FALLING_BLOCK_I2[20]~0_combout\ & \FALLING_BLOCK_F2[25]~4_combout\)) # (!\FALLING_BLOCK_F2[31]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add5~16_combout\,
	datab => \FALLING_BLOCK_I2[20]~0_combout\,
	datac => \FALLING_BLOCK_F2[25]~4_combout\,
	datad => \FALLING_BLOCK_F2[31]~6_combout\,
	combout => \Add5~21_combout\);

-- Location: FF_X17_Y15_N9
\FALLING_BLOCK_I2[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK|TEMPORAL~clkctrl_outclk\,
	d => \Add5~21_combout\,
	ena => \FALLING_BLOCK_I2[10]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => FALLING_BLOCK_I2(8));

-- Location: LCCOMB_X17_Y15_N18
\Add5~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add5~28_combout\ = (\Add5~2_combout\) # ((\FALLING_BLOCK_F2[31]~6_combout\ & ((!\FALLING_BLOCK_F2[25]~4_combout\) # (!\FALLING_BLOCK_I2[20]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add5~2_combout\,
	datab => \FALLING_BLOCK_I2[20]~0_combout\,
	datac => \FALLING_BLOCK_F2[25]~4_combout\,
	datad => \FALLING_BLOCK_F2[31]~6_combout\,
	combout => \Add5~28_combout\);

-- Location: FF_X17_Y15_N19
\FALLING_BLOCK_I2[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK|TEMPORAL~clkctrl_outclk\,
	d => \Add5~28_combout\,
	ena => \FALLING_BLOCK_I2[10]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => FALLING_BLOCK_I2(1));

-- Location: LCCOMB_X17_Y15_N24
\Add5~29\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add5~29_combout\ = ((\FALLING_BLOCK_F2[31]~6_combout\ & ((!\FALLING_BLOCK_F2[25]~4_combout\) # (!\FALLING_BLOCK_I2[20]~0_combout\)))) # (!\Add5~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add5~0_combout\,
	datab => \FALLING_BLOCK_I2[20]~0_combout\,
	datac => \FALLING_BLOCK_F2[25]~4_combout\,
	datad => \FALLING_BLOCK_F2[31]~6_combout\,
	combout => \Add5~29_combout\);

-- Location: FF_X17_Y15_N25
\FALLING_BLOCK_I2[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK|TEMPORAL~clkctrl_outclk\,
	d => \Add5~29_combout\,
	ena => \FALLING_BLOCK_I2[10]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => FALLING_BLOCK_I2(0));

-- Location: LCCOMB_X16_Y15_N4
\Add5~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add5~4_combout\ = (FALLING_BLOCK_I2(2) & (\Add5~3\ $ (GND))) # (!FALLING_BLOCK_I2(2) & ((GND) # (!\Add5~3\)))
-- \Add5~5\ = CARRY((!\Add5~3\) # (!FALLING_BLOCK_I2(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => FALLING_BLOCK_I2(2),
	datad => VCC,
	cin => \Add5~3\,
	combout => \Add5~4_combout\,
	cout => \Add5~5\);

-- Location: LCCOMB_X17_Y15_N12
\Add5~27\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add5~27_combout\ = ((\FALLING_BLOCK_F2[31]~6_combout\ & ((!\FALLING_BLOCK_I2[20]~0_combout\) # (!\FALLING_BLOCK_F2[25]~4_combout\)))) # (!\Add5~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101110111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FALLING_BLOCK_F2[31]~6_combout\,
	datab => \Add5~4_combout\,
	datac => \FALLING_BLOCK_F2[25]~4_combout\,
	datad => \FALLING_BLOCK_I2[20]~0_combout\,
	combout => \Add5~27_combout\);

-- Location: FF_X17_Y15_N13
\FALLING_BLOCK_I2[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK|TEMPORAL~clkctrl_outclk\,
	d => \Add5~27_combout\,
	ena => \FALLING_BLOCK_I2[10]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => FALLING_BLOCK_I2(2));

-- Location: LCCOMB_X16_Y15_N6
\Add5~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add5~6_combout\ = (FALLING_BLOCK_I2(3) & ((\Add5~5\) # (GND))) # (!FALLING_BLOCK_I2(3) & (!\Add5~5\))
-- \Add5~7\ = CARRY((FALLING_BLOCK_I2(3)) # (!\Add5~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => FALLING_BLOCK_I2(3),
	datad => VCC,
	cin => \Add5~5\,
	combout => \Add5~6_combout\,
	cout => \Add5~7\);

-- Location: LCCOMB_X16_Y15_N8
\Add5~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add5~8_combout\ = (FALLING_BLOCK_I2(4) & (\Add5~7\ $ (GND))) # (!FALLING_BLOCK_I2(4) & (!\Add5~7\ & VCC))
-- \Add5~9\ = CARRY((FALLING_BLOCK_I2(4) & !\Add5~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => FALLING_BLOCK_I2(4),
	datad => VCC,
	cin => \Add5~7\,
	combout => \Add5~8_combout\,
	cout => \Add5~9\);

-- Location: LCCOMB_X16_Y15_N12
\Add5~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add5~12_combout\ = (FALLING_BLOCK_I2(6) & (!\Add5~11\ & VCC)) # (!FALLING_BLOCK_I2(6) & (\Add5~11\ $ (GND)))
-- \Add5~13\ = CARRY((!FALLING_BLOCK_I2(6) & !\Add5~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => FALLING_BLOCK_I2(6),
	datad => VCC,
	cin => \Add5~11\,
	combout => \Add5~12_combout\,
	cout => \Add5~13\);

-- Location: LCCOMB_X17_Y15_N16
\Add5~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add5~23_combout\ = (!\Add5~12_combout\ & (((\FALLING_BLOCK_F2[25]~4_combout\ & \FALLING_BLOCK_I2[20]~0_combout\)) # (!\FALLING_BLOCK_F2[31]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FALLING_BLOCK_F2[31]~6_combout\,
	datab => \Add5~12_combout\,
	datac => \FALLING_BLOCK_F2[25]~4_combout\,
	datad => \FALLING_BLOCK_I2[20]~0_combout\,
	combout => \Add5~23_combout\);

-- Location: FF_X17_Y15_N17
\FALLING_BLOCK_I2[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK|TEMPORAL~clkctrl_outclk\,
	d => \Add5~23_combout\,
	ena => \FALLING_BLOCK_I2[10]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => FALLING_BLOCK_I2(6));

-- Location: LCCOMB_X16_Y15_N22
\Add5~33\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add5~33_combout\ = (FALLING_BLOCK_I2(11) & ((\Add5~31\) # (GND))) # (!FALLING_BLOCK_I2(11) & (!\Add5~31\))
-- \Add5~34\ = CARRY((FALLING_BLOCK_I2(11)) # (!\Add5~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => FALLING_BLOCK_I2(11),
	datad => VCC,
	cin => \Add5~31\,
	combout => \Add5~33_combout\,
	cout => \Add5~34\);

-- Location: LCCOMB_X17_Y15_N0
\Add5~82\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add5~82_combout\ = (!\Add5~33_combout\ & (((\FALLING_BLOCK_F2[25]~4_combout\ & \FALLING_BLOCK_I2[20]~0_combout\)) # (!\FALLING_BLOCK_F2[31]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FALLING_BLOCK_F2[31]~6_combout\,
	datab => \Add5~33_combout\,
	datac => \FALLING_BLOCK_F2[25]~4_combout\,
	datad => \FALLING_BLOCK_I2[20]~0_combout\,
	combout => \Add5~82_combout\);

-- Location: FF_X17_Y15_N1
\FALLING_BLOCK_I2[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK|TEMPORAL~clkctrl_outclk\,
	d => \Add5~82_combout\,
	ena => \FALLING_BLOCK_I2[10]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => FALLING_BLOCK_I2(11));

-- Location: LCCOMB_X16_Y15_N24
\Add5~35\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add5~35_combout\ = (FALLING_BLOCK_I2(12) & (!\Add5~34\ & VCC)) # (!FALLING_BLOCK_I2(12) & (\Add5~34\ $ (GND)))
-- \Add5~36\ = CARRY((!FALLING_BLOCK_I2(12) & !\Add5~34\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => FALLING_BLOCK_I2(12),
	datad => VCC,
	cin => \Add5~34\,
	combout => \Add5~35_combout\,
	cout => \Add5~36\);

-- Location: LCCOMB_X17_Y14_N2
\Add5~83\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add5~83_combout\ = (!\Add5~35_combout\ & (((\FALLING_BLOCK_I2[20]~0_combout\ & \FALLING_BLOCK_F2[25]~4_combout\)) # (!\FALLING_BLOCK_F2[31]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FALLING_BLOCK_F2[31]~6_combout\,
	datab => \FALLING_BLOCK_I2[20]~0_combout\,
	datac => \FALLING_BLOCK_F2[25]~4_combout\,
	datad => \Add5~35_combout\,
	combout => \Add5~83_combout\);

-- Location: FF_X17_Y14_N3
\FALLING_BLOCK_I2[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK|TEMPORAL~clkctrl_outclk\,
	d => \Add5~83_combout\,
	ena => \FALLING_BLOCK_I2[10]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => FALLING_BLOCK_I2(12));

-- Location: LCCOMB_X16_Y14_N6
\Add5~49\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add5~49_combout\ = (FALLING_BLOCK_I2(19) & ((\Add5~48\) # (GND))) # (!FALLING_BLOCK_I2(19) & (!\Add5~48\))
-- \Add5~50\ = CARRY((FALLING_BLOCK_I2(19)) # (!\Add5~48\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => FALLING_BLOCK_I2(19),
	datad => VCC,
	cin => \Add5~48\,
	combout => \Add5~49_combout\,
	cout => \Add5~50\);

-- Location: LCCOMB_X17_Y14_N10
\Add5~90\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add5~90_combout\ = (!\Add5~49_combout\ & (((\FALLING_BLOCK_I2[20]~0_combout\ & \FALLING_BLOCK_F2[25]~4_combout\)) # (!\FALLING_BLOCK_F2[31]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FALLING_BLOCK_F2[31]~6_combout\,
	datab => \FALLING_BLOCK_I2[20]~0_combout\,
	datac => \Add5~49_combout\,
	datad => \FALLING_BLOCK_F2[25]~4_combout\,
	combout => \Add5~90_combout\);

-- Location: FF_X17_Y14_N11
\FALLING_BLOCK_I2[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK|TEMPORAL~clkctrl_outclk\,
	d => \Add5~90_combout\,
	ena => \FALLING_BLOCK_I2[10]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => FALLING_BLOCK_I2(19));

-- Location: LCCOMB_X16_Y14_N8
\Add5~51\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add5~51_combout\ = (FALLING_BLOCK_I2(20) & (!\Add5~50\ & VCC)) # (!FALLING_BLOCK_I2(20) & (\Add5~50\ $ (GND)))
-- \Add5~52\ = CARRY((!FALLING_BLOCK_I2(20) & !\Add5~50\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => FALLING_BLOCK_I2(20),
	datad => VCC,
	cin => \Add5~50\,
	combout => \Add5~51_combout\,
	cout => \Add5~52\);

-- Location: LCCOMB_X17_Y14_N8
\Add5~91\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add5~91_combout\ = (!\Add5~51_combout\ & (((\FALLING_BLOCK_F2[25]~4_combout\ & \FALLING_BLOCK_I2[20]~0_combout\)) # (!\FALLING_BLOCK_F2[31]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FALLING_BLOCK_F2[31]~6_combout\,
	datab => \FALLING_BLOCK_F2[25]~4_combout\,
	datac => \FALLING_BLOCK_I2[20]~0_combout\,
	datad => \Add5~51_combout\,
	combout => \Add5~91_combout\);

-- Location: FF_X17_Y14_N9
\FALLING_BLOCK_I2[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK|TEMPORAL~clkctrl_outclk\,
	d => \Add5~91_combout\,
	ena => \FALLING_BLOCK_I2[10]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => FALLING_BLOCK_I2(20));

-- Location: LCCOMB_X16_Y14_N10
\Add5~53\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add5~53_combout\ = (FALLING_BLOCK_I2(21) & ((\Add5~52\) # (GND))) # (!FALLING_BLOCK_I2(21) & (!\Add5~52\))
-- \Add5~54\ = CARRY((FALLING_BLOCK_I2(21)) # (!\Add5~52\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => FALLING_BLOCK_I2(21),
	datad => VCC,
	cin => \Add5~52\,
	combout => \Add5~53_combout\,
	cout => \Add5~54\);

-- Location: LCCOMB_X17_Y14_N12
\Add5~92\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add5~92_combout\ = (!\Add5~53_combout\ & (((\FALLING_BLOCK_F2[25]~4_combout\ & \FALLING_BLOCK_I2[20]~0_combout\)) # (!\FALLING_BLOCK_F2[31]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FALLING_BLOCK_F2[31]~6_combout\,
	datab => \FALLING_BLOCK_F2[25]~4_combout\,
	datac => \FALLING_BLOCK_I2[20]~0_combout\,
	datad => \Add5~53_combout\,
	combout => \Add5~92_combout\);

-- Location: FF_X17_Y14_N13
\FALLING_BLOCK_I2[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK|TEMPORAL~clkctrl_outclk\,
	d => \Add5~92_combout\,
	ena => \FALLING_BLOCK_I2[10]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => FALLING_BLOCK_I2(21));

-- Location: LCCOMB_X16_Y14_N12
\Add5~55\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add5~55_combout\ = (FALLING_BLOCK_I2(22) & (!\Add5~54\ & VCC)) # (!FALLING_BLOCK_I2(22) & (\Add5~54\ $ (GND)))
-- \Add5~56\ = CARRY((!FALLING_BLOCK_I2(22) & !\Add5~54\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => FALLING_BLOCK_I2(22),
	datad => VCC,
	cin => \Add5~54\,
	combout => \Add5~55_combout\,
	cout => \Add5~56\);

-- Location: LCCOMB_X17_Y14_N18
\Add5~93\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add5~93_combout\ = (!\Add5~55_combout\ & (((\FALLING_BLOCK_F2[25]~4_combout\ & \FALLING_BLOCK_I2[20]~0_combout\)) # (!\FALLING_BLOCK_F2[31]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FALLING_BLOCK_F2[31]~6_combout\,
	datab => \FALLING_BLOCK_F2[25]~4_combout\,
	datac => \FALLING_BLOCK_I2[20]~0_combout\,
	datad => \Add5~55_combout\,
	combout => \Add5~93_combout\);

-- Location: FF_X17_Y14_N19
\FALLING_BLOCK_I2[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK|TEMPORAL~clkctrl_outclk\,
	d => \Add5~93_combout\,
	ena => \FALLING_BLOCK_I2[10]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => FALLING_BLOCK_I2(22));

-- Location: LCCOMB_X16_Y14_N14
\Add5~57\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add5~57_combout\ = (FALLING_BLOCK_I2(23) & ((\Add5~56\) # (GND))) # (!FALLING_BLOCK_I2(23) & (!\Add5~56\))
-- \Add5~58\ = CARRY((FALLING_BLOCK_I2(23)) # (!\Add5~56\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => FALLING_BLOCK_I2(23),
	datad => VCC,
	cin => \Add5~56\,
	combout => \Add5~57_combout\,
	cout => \Add5~58\);

-- Location: LCCOMB_X17_Y14_N0
\Add5~94\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add5~94_combout\ = (!\Add5~57_combout\ & (((\FALLING_BLOCK_F2[25]~4_combout\ & \FALLING_BLOCK_I2[20]~0_combout\)) # (!\FALLING_BLOCK_F2[31]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FALLING_BLOCK_F2[31]~6_combout\,
	datab => \FALLING_BLOCK_F2[25]~4_combout\,
	datac => \FALLING_BLOCK_I2[20]~0_combout\,
	datad => \Add5~57_combout\,
	combout => \Add5~94_combout\);

-- Location: FF_X17_Y14_N1
\FALLING_BLOCK_I2[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK|TEMPORAL~clkctrl_outclk\,
	d => \Add5~94_combout\,
	ena => \FALLING_BLOCK_I2[10]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => FALLING_BLOCK_I2(23));

-- Location: LCCOMB_X16_Y14_N30
\Add5~73\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add5~73_combout\ = \Add5~72\ $ (!FALLING_BLOCK_I2(31))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => FALLING_BLOCK_I2(31),
	cin => \Add5~72\,
	combout => \Add5~73_combout\);

-- Location: LCCOMB_X17_Y14_N28
\Add5~75\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add5~75_combout\ = (!\Add5~73_combout\ & (((\FALLING_BLOCK_F2[25]~4_combout\ & \FALLING_BLOCK_I2[20]~0_combout\)) # (!\FALLING_BLOCK_F2[31]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FALLING_BLOCK_F2[31]~6_combout\,
	datab => \FALLING_BLOCK_F2[25]~4_combout\,
	datac => \FALLING_BLOCK_I2[20]~0_combout\,
	datad => \Add5~73_combout\,
	combout => \Add5~75_combout\);

-- Location: FF_X17_Y14_N29
\FALLING_BLOCK_I2[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK|TEMPORAL~clkctrl_outclk\,
	d => \Add5~75_combout\,
	ena => \FALLING_BLOCK_I2[10]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => FALLING_BLOCK_I2(31));

-- Location: LCCOMB_X16_Y13_N10
\Add5~80\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add5~80_combout\ = (!\Add5~69_combout\ & (((\FALLING_BLOCK_I2[20]~0_combout\ & \FALLING_BLOCK_F2[25]~4_combout\)) # (!\FALLING_BLOCK_F2[31]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add5~69_combout\,
	datab => \FALLING_BLOCK_I2[20]~0_combout\,
	datac => \FALLING_BLOCK_F2[31]~6_combout\,
	datad => \FALLING_BLOCK_F2[25]~4_combout\,
	combout => \Add5~80_combout\);

-- Location: FF_X16_Y13_N11
\FALLING_BLOCK_I2[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK|TEMPORAL~clkctrl_outclk\,
	d => \Add5~80_combout\,
	ena => \FALLING_BLOCK_I2[10]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => FALLING_BLOCK_I2(29));

-- Location: LCCOMB_X16_Y13_N30
\LessThan44~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan44~1_combout\ = (!FALLING_BLOCK_I2(29)) # (!FALLING_BLOCK_I2(30))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => FALLING_BLOCK_I2(30),
	datad => FALLING_BLOCK_I2(29),
	combout => \LessThan44~1_combout\);

-- Location: LCCOMB_X17_Y15_N2
\Add5~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add5~22_combout\ = (!\Add5~14_combout\ & (((\FALLING_BLOCK_I2[20]~0_combout\ & \FALLING_BLOCK_F2[25]~4_combout\)) # (!\FALLING_BLOCK_F2[31]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add5~14_combout\,
	datab => \FALLING_BLOCK_I2[20]~0_combout\,
	datac => \FALLING_BLOCK_F2[25]~4_combout\,
	datad => \FALLING_BLOCK_F2[31]~6_combout\,
	combout => \Add5~22_combout\);

-- Location: FF_X17_Y15_N3
\FALLING_BLOCK_I2[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK|TEMPORAL~clkctrl_outclk\,
	d => \Add5~22_combout\,
	ena => \FALLING_BLOCK_I2[10]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => FALLING_BLOCK_I2(7));

-- Location: LCCOMB_X17_Y15_N10
\Add5~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add5~26_combout\ = ((\FALLING_BLOCK_F2[31]~6_combout\ & ((!\FALLING_BLOCK_I2[20]~0_combout\) # (!\FALLING_BLOCK_F2[25]~4_combout\)))) # (!\Add5~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101110111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FALLING_BLOCK_F2[31]~6_combout\,
	datab => \Add5~6_combout\,
	datac => \FALLING_BLOCK_F2[25]~4_combout\,
	datad => \FALLING_BLOCK_I2[20]~0_combout\,
	combout => \Add5~26_combout\);

-- Location: FF_X16_Y15_N31
\FALLING_BLOCK_I2[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK|TEMPORAL~clkctrl_outclk\,
	asdata => \Add5~26_combout\,
	sload => VCC,
	ena => \FALLING_BLOCK_I2[10]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => FALLING_BLOCK_I2(3));

-- Location: LCCOMB_X17_Y15_N22
\LessThan44~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan44~7_combout\ = (!FALLING_BLOCK_I2(2) & (!FALLING_BLOCK_I2(3) & (!FALLING_BLOCK_I2(0) & FALLING_BLOCK_I2(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => FALLING_BLOCK_I2(2),
	datab => FALLING_BLOCK_I2(3),
	datac => FALLING_BLOCK_I2(0),
	datad => FALLING_BLOCK_I2(1),
	combout => \LessThan44~7_combout\);

-- Location: LCCOMB_X19_Y15_N4
\Add5~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add5~25_combout\ = (\Add5~8_combout\) # ((\FALLING_BLOCK_F2[31]~6_combout\ & ((!\FALLING_BLOCK_I2[20]~0_combout\) # (!\FALLING_BLOCK_F2[25]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FALLING_BLOCK_F2[25]~4_combout\,
	datab => \Add5~8_combout\,
	datac => \FALLING_BLOCK_I2[20]~0_combout\,
	datad => \FALLING_BLOCK_F2[31]~6_combout\,
	combout => \Add5~25_combout\);

-- Location: LCCOMB_X20_Y15_N8
\FALLING_BLOCK_I2[4]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \FALLING_BLOCK_I2[4]~feeder_combout\ = \Add5~25_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add5~25_combout\,
	combout => \FALLING_BLOCK_I2[4]~feeder_combout\);

-- Location: FF_X20_Y15_N9
\FALLING_BLOCK_I2[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK|TEMPORAL~clkctrl_outclk\,
	d => \FALLING_BLOCK_I2[4]~feeder_combout\,
	ena => \FALLING_BLOCK_I2[10]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => FALLING_BLOCK_I2(4));

-- Location: LCCOMB_X17_Y15_N28
\LessThan44~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan44~8_combout\ = (!FALLING_BLOCK_I2(6) & (((\LessThan44~7_combout\ & FALLING_BLOCK_I2(4))) # (!FALLING_BLOCK_I2(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => FALLING_BLOCK_I2(5),
	datab => FALLING_BLOCK_I2(6),
	datac => \LessThan44~7_combout\,
	datad => FALLING_BLOCK_I2(4),
	combout => \LessThan44~8_combout\);

-- Location: LCCOMB_X17_Y15_N14
\LessThan44~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan44~9_combout\ = (\LessThan44~6_combout\) # ((FALLING_BLOCK_I2(8) & ((\LessThan44~8_combout\) # (!FALLING_BLOCK_I2(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan44~6_combout\,
	datab => FALLING_BLOCK_I2(7),
	datac => FALLING_BLOCK_I2(8),
	datad => \LessThan44~8_combout\,
	combout => \LessThan44~9_combout\);

-- Location: LCCOMB_X16_Y13_N14
\FALLING_BLOCK_F2[31]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \FALLING_BLOCK_F2[31]~6_combout\ = (FALLING_BLOCK_I2(31) & ((\LessThan44~0_combout\) # ((\LessThan44~1_combout\) # (\LessThan44~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan44~0_combout\,
	datab => FALLING_BLOCK_I2(31),
	datac => \LessThan44~1_combout\,
	datad => \LessThan44~9_combout\,
	combout => \FALLING_BLOCK_F2[31]~6_combout\);

-- Location: LCCOMB_X17_Y13_N0
\DRAW3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DRAW3~0_combout\ = (\DRAW3~q\) # ((!\FALLING_BLOCK_F2[25]~4_combout\ & (\Equal0~10_combout\ & \FALLING_BLOCK_F2[31]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FALLING_BLOCK_F2[25]~4_combout\,
	datab => \Equal0~10_combout\,
	datac => \DRAW3~q\,
	datad => \FALLING_BLOCK_F2[31]~6_combout\,
	combout => \DRAW3~0_combout\);

-- Location: FF_X17_Y13_N1
DRAW3 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK|TEMPORAL~clkctrl_outclk\,
	d => \DRAW3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DRAW3~q\);

-- Location: LCCOMB_X17_Y13_N6
\FALLING_BLOCK_F2[30]~37\ : cycloneiii_lcell_comb
-- Equation(s):
-- \FALLING_BLOCK_F2[30]~37_combout\ = (!\DRAW3~q\ & (\Equal0~10_combout\ & ((\FALLING_BLOCK_F2[31]~6_combout\) # (\FALLING_BLOCK_F2[25]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FALLING_BLOCK_F2[31]~6_combout\,
	datab => \DRAW3~q\,
	datac => \FALLING_BLOCK_F2[25]~4_combout\,
	datad => \Equal0~10_combout\,
	combout => \FALLING_BLOCK_F2[30]~37_combout\);

-- Location: FF_X17_Y12_N3
\FALLING_BLOCK_F2[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK|TEMPORAL~clkctrl_outclk\,
	d => \FALLING_BLOCK_F2~27_combout\,
	ena => \FALLING_BLOCK_F2[30]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => FALLING_BLOCK_F2(21));

-- Location: LCCOMB_X19_Y12_N12
\Add2~44\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~44_combout\ = (FALLING_BLOCK_F2(22) & (!\Add2~43\ & VCC)) # (!FALLING_BLOCK_F2(22) & (\Add2~43\ $ (GND)))
-- \Add2~45\ = CARRY((!FALLING_BLOCK_F2(22) & !\Add2~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => FALLING_BLOCK_F2(22),
	datad => VCC,
	cin => \Add2~43\,
	combout => \Add2~44_combout\,
	cout => \Add2~45\);

-- Location: LCCOMB_X17_Y12_N8
\FALLING_BLOCK_F2~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \FALLING_BLOCK_F2~28_combout\ = (!\Add2~44_combout\ & \FALLING_BLOCK_F2[25]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add2~44_combout\,
	datad => \FALLING_BLOCK_F2[25]~4_combout\,
	combout => \FALLING_BLOCK_F2~28_combout\);

-- Location: FF_X17_Y12_N9
\FALLING_BLOCK_F2[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK|TEMPORAL~clkctrl_outclk\,
	d => \FALLING_BLOCK_F2~28_combout\,
	ena => \FALLING_BLOCK_F2[30]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => FALLING_BLOCK_F2(22));

-- Location: LCCOMB_X19_Y12_N16
\Add2~48\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~48_combout\ = (FALLING_BLOCK_F2(24) & (!\Add2~47\ & VCC)) # (!FALLING_BLOCK_F2(24) & (\Add2~47\ $ (GND)))
-- \Add2~49\ = CARRY((!FALLING_BLOCK_F2(24) & !\Add2~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => FALLING_BLOCK_F2(24),
	datad => VCC,
	cin => \Add2~47\,
	combout => \Add2~48_combout\,
	cout => \Add2~49\);

-- Location: LCCOMB_X20_Y12_N26
\FALLING_BLOCK_F2~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \FALLING_BLOCK_F2~30_combout\ = (!\Add2~48_combout\ & \FALLING_BLOCK_F2[25]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add2~48_combout\,
	datad => \FALLING_BLOCK_F2[25]~4_combout\,
	combout => \FALLING_BLOCK_F2~30_combout\);

-- Location: FF_X20_Y12_N27
\FALLING_BLOCK_F2[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK|TEMPORAL~clkctrl_outclk\,
	d => \FALLING_BLOCK_F2~30_combout\,
	ena => \FALLING_BLOCK_F2[30]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => FALLING_BLOCK_F2(24));

-- Location: LCCOMB_X19_Y12_N18
\Add2~50\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~50_combout\ = (FALLING_BLOCK_F2(25) & ((\Add2~49\) # (GND))) # (!FALLING_BLOCK_F2(25) & (!\Add2~49\))
-- \Add2~51\ = CARRY((FALLING_BLOCK_F2(25)) # (!\Add2~49\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => FALLING_BLOCK_F2(25),
	datad => VCC,
	cin => \Add2~49\,
	combout => \Add2~50_combout\,
	cout => \Add2~51\);

-- Location: LCCOMB_X20_Y12_N24
\FALLING_BLOCK_F2~31\ : cycloneiii_lcell_comb
-- Equation(s):
-- \FALLING_BLOCK_F2~31_combout\ = (!\Add2~50_combout\ & \FALLING_BLOCK_F2[25]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add2~50_combout\,
	datad => \FALLING_BLOCK_F2[25]~4_combout\,
	combout => \FALLING_BLOCK_F2~31_combout\);

-- Location: FF_X20_Y12_N25
\FALLING_BLOCK_F2[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK|TEMPORAL~clkctrl_outclk\,
	d => \FALLING_BLOCK_F2~31_combout\,
	ena => \FALLING_BLOCK_F2[30]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => FALLING_BLOCK_F2(25));

-- Location: LCCOMB_X19_Y12_N20
\Add2~52\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~52_combout\ = (FALLING_BLOCK_F2(26) & (!\Add2~51\ & VCC)) # (!FALLING_BLOCK_F2(26) & (\Add2~51\ $ (GND)))
-- \Add2~53\ = CARRY((!FALLING_BLOCK_F2(26) & !\Add2~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => FALLING_BLOCK_F2(26),
	datad => VCC,
	cin => \Add2~51\,
	combout => \Add2~52_combout\,
	cout => \Add2~53\);

-- Location: LCCOMB_X20_Y12_N22
\FALLING_BLOCK_F2~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \FALLING_BLOCK_F2~32_combout\ = (!\Add2~52_combout\ & \FALLING_BLOCK_F2[25]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add2~52_combout\,
	datad => \FALLING_BLOCK_F2[25]~4_combout\,
	combout => \FALLING_BLOCK_F2~32_combout\);

-- Location: FF_X20_Y12_N23
\FALLING_BLOCK_F2[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK|TEMPORAL~clkctrl_outclk\,
	d => \FALLING_BLOCK_F2~32_combout\,
	ena => \FALLING_BLOCK_F2[30]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => FALLING_BLOCK_F2(26));

-- Location: LCCOMB_X19_Y12_N22
\Add2~54\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~54_combout\ = (FALLING_BLOCK_F2(27) & ((\Add2~53\) # (GND))) # (!FALLING_BLOCK_F2(27) & (!\Add2~53\))
-- \Add2~55\ = CARRY((FALLING_BLOCK_F2(27)) # (!\Add2~53\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => FALLING_BLOCK_F2(27),
	datad => VCC,
	cin => \Add2~53\,
	combout => \Add2~54_combout\,
	cout => \Add2~55\);

-- Location: LCCOMB_X20_Y12_N8
\FALLING_BLOCK_F2~33\ : cycloneiii_lcell_comb
-- Equation(s):
-- \FALLING_BLOCK_F2~33_combout\ = (!\Add2~54_combout\ & \FALLING_BLOCK_F2[25]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add2~54_combout\,
	datad => \FALLING_BLOCK_F2[25]~4_combout\,
	combout => \FALLING_BLOCK_F2~33_combout\);

-- Location: FF_X20_Y12_N9
\FALLING_BLOCK_F2[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK|TEMPORAL~clkctrl_outclk\,
	d => \FALLING_BLOCK_F2~33_combout\,
	ena => \FALLING_BLOCK_F2[30]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => FALLING_BLOCK_F2(27));

-- Location: LCCOMB_X19_Y12_N24
\Add2~56\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~56_combout\ = (FALLING_BLOCK_F2(28) & (!\Add2~55\ & VCC)) # (!FALLING_BLOCK_F2(28) & (\Add2~55\ $ (GND)))
-- \Add2~57\ = CARRY((!FALLING_BLOCK_F2(28) & !\Add2~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => FALLING_BLOCK_F2(28),
	datad => VCC,
	cin => \Add2~55\,
	combout => \Add2~56_combout\,
	cout => \Add2~57\);

-- Location: LCCOMB_X20_Y12_N14
\FALLING_BLOCK_F2~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \FALLING_BLOCK_F2~34_combout\ = (!\Add2~56_combout\ & \FALLING_BLOCK_F2[25]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add2~56_combout\,
	datad => \FALLING_BLOCK_F2[25]~4_combout\,
	combout => \FALLING_BLOCK_F2~34_combout\);

-- Location: FF_X20_Y12_N15
\FALLING_BLOCK_F2[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK|TEMPORAL~clkctrl_outclk\,
	d => \FALLING_BLOCK_F2~34_combout\,
	ena => \FALLING_BLOCK_F2[30]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => FALLING_BLOCK_F2(28));

-- Location: LCCOMB_X20_Y12_N20
\LessThan42~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan42~5_combout\ = (FALLING_BLOCK_F2(26) & (FALLING_BLOCK_F2(27) & (FALLING_BLOCK_F2(28) & FALLING_BLOCK_F2(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => FALLING_BLOCK_F2(26),
	datab => FALLING_BLOCK_F2(27),
	datac => FALLING_BLOCK_F2(28),
	datad => FALLING_BLOCK_F2(25),
	combout => \LessThan42~5_combout\);

-- Location: LCCOMB_X19_Y12_N4
\Add2~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~36_combout\ = (FALLING_BLOCK_F2(18) & (!\Add2~35\ & VCC)) # (!FALLING_BLOCK_F2(18) & (\Add2~35\ $ (GND)))
-- \Add2~37\ = CARRY((!FALLING_BLOCK_F2(18) & !\Add2~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => FALLING_BLOCK_F2(18),
	datad => VCC,
	cin => \Add2~35\,
	combout => \Add2~36_combout\,
	cout => \Add2~37\);

-- Location: LCCOMB_X17_Y12_N30
\FALLING_BLOCK_F2~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \FALLING_BLOCK_F2~24_combout\ = (!\Add2~36_combout\ & \FALLING_BLOCK_F2[25]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add2~36_combout\,
	datad => \FALLING_BLOCK_F2[25]~4_combout\,
	combout => \FALLING_BLOCK_F2~24_combout\);

-- Location: FF_X17_Y12_N31
\FALLING_BLOCK_F2[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK|TEMPORAL~clkctrl_outclk\,
	d => \FALLING_BLOCK_F2~24_combout\,
	ena => \FALLING_BLOCK_F2[30]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => FALLING_BLOCK_F2(18));

-- Location: LCCOMB_X19_Y12_N2
\Add2~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~34_combout\ = (FALLING_BLOCK_F2(17) & ((\Add2~33\) # (GND))) # (!FALLING_BLOCK_F2(17) & (!\Add2~33\))
-- \Add2~35\ = CARRY((FALLING_BLOCK_F2(17)) # (!\Add2~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => FALLING_BLOCK_F2(17),
	datad => VCC,
	cin => \Add2~33\,
	combout => \Add2~34_combout\,
	cout => \Add2~35\);

-- Location: LCCOMB_X17_Y12_N24
\FALLING_BLOCK_F2~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \FALLING_BLOCK_F2~23_combout\ = (!\Add2~34_combout\ & \FALLING_BLOCK_F2[25]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add2~34_combout\,
	datad => \FALLING_BLOCK_F2[25]~4_combout\,
	combout => \FALLING_BLOCK_F2~23_combout\);

-- Location: FF_X17_Y12_N25
\FALLING_BLOCK_F2[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK|TEMPORAL~clkctrl_outclk\,
	d => \FALLING_BLOCK_F2~23_combout\,
	ena => \FALLING_BLOCK_F2[30]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => FALLING_BLOCK_F2(17));

-- Location: LCCOMB_X17_Y12_N28
\LessThan42~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan42~2_combout\ = (FALLING_BLOCK_F2(20) & (FALLING_BLOCK_F2(19) & (FALLING_BLOCK_F2(18) & FALLING_BLOCK_F2(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => FALLING_BLOCK_F2(20),
	datab => FALLING_BLOCK_F2(19),
	datac => FALLING_BLOCK_F2(18),
	datad => FALLING_BLOCK_F2(17),
	combout => \LessThan42~2_combout\);

-- Location: LCCOMB_X20_Y13_N26
\FALLING_BLOCK_F2~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \FALLING_BLOCK_F2~10_combout\ = (!\Add2~12_combout\ & \FALLING_BLOCK_F2[25]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~12_combout\,
	datac => \FALLING_BLOCK_F2[25]~4_combout\,
	combout => \FALLING_BLOCK_F2~10_combout\);

-- Location: FF_X19_Y13_N17
\FALLING_BLOCK_F2[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK|TEMPORAL~clkctrl_outclk\,
	asdata => \FALLING_BLOCK_F2~10_combout\,
	sload => VCC,
	ena => \FALLING_BLOCK_F2[30]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => FALLING_BLOCK_F2(6));

-- Location: LCCOMB_X19_Y13_N0
\Add2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~0_combout\ = FALLING_BLOCK_F2(0) $ (GND)
-- \Add2~1\ = CARRY(!FALLING_BLOCK_F2(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => FALLING_BLOCK_F2(0),
	datad => VCC,
	combout => \Add2~0_combout\,
	cout => \Add2~1\);

-- Location: LCCOMB_X19_Y13_N4
\Add2~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~4_combout\ = (FALLING_BLOCK_F2(2) & (\Add2~3\ $ (GND))) # (!FALLING_BLOCK_F2(2) & ((GND) # (!\Add2~3\)))
-- \Add2~5\ = CARRY((!\Add2~3\) # (!FALLING_BLOCK_F2(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => FALLING_BLOCK_F2(2),
	datad => VCC,
	cin => \Add2~3\,
	combout => \Add2~4_combout\,
	cout => \Add2~5\);

-- Location: LCCOMB_X20_Y13_N30
\FALLING_BLOCK_F2~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \FALLING_BLOCK_F2~14_combout\ = (!\Add2~4_combout\) # (!\FALLING_BLOCK_F2[25]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FALLING_BLOCK_F2[25]~4_combout\,
	datac => \Add2~4_combout\,
	combout => \FALLING_BLOCK_F2~14_combout\);

-- Location: FF_X19_Y13_N9
\FALLING_BLOCK_F2[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK|TEMPORAL~clkctrl_outclk\,
	asdata => \FALLING_BLOCK_F2~14_combout\,
	sload => VCC,
	ena => \FALLING_BLOCK_F2[30]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => FALLING_BLOCK_F2(2));

-- Location: LCCOMB_X19_Y13_N6
\Add2~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~6_combout\ = (FALLING_BLOCK_F2(3) & ((\Add2~5\) # (GND))) # (!FALLING_BLOCK_F2(3) & (!\Add2~5\))
-- \Add2~7\ = CARRY((FALLING_BLOCK_F2(3)) # (!\Add2~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => FALLING_BLOCK_F2(3),
	datad => VCC,
	cin => \Add2~5\,
	combout => \Add2~6_combout\,
	cout => \Add2~7\);

-- Location: LCCOMB_X17_Y13_N24
\FALLING_BLOCK_F2~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \FALLING_BLOCK_F2~13_combout\ = (!\FALLING_BLOCK_F2[25]~4_combout\) # (!\Add2~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add2~6_combout\,
	datac => \FALLING_BLOCK_F2[25]~4_combout\,
	combout => \FALLING_BLOCK_F2~13_combout\);

-- Location: FF_X19_Y13_N19
\FALLING_BLOCK_F2[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK|TEMPORAL~clkctrl_outclk\,
	asdata => \FALLING_BLOCK_F2~13_combout\,
	sload => VCC,
	ena => \FALLING_BLOCK_F2[30]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => FALLING_BLOCK_F2(3));

-- Location: LCCOMB_X19_Y13_N8
\Add2~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~8_combout\ = (FALLING_BLOCK_F2(4) & (\Add2~7\ $ (GND))) # (!FALLING_BLOCK_F2(4) & (!\Add2~7\ & VCC))
-- \Add2~9\ = CARRY((FALLING_BLOCK_F2(4) & !\Add2~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => FALLING_BLOCK_F2(4),
	datad => VCC,
	cin => \Add2~7\,
	combout => \Add2~8_combout\,
	cout => \Add2~9\);

-- Location: LCCOMB_X19_Y15_N0
\FALLING_BLOCK_F2~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \FALLING_BLOCK_F2~12_combout\ = (\Add2~8_combout\) # (!\FALLING_BLOCK_F2[25]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add2~8_combout\,
	datad => \FALLING_BLOCK_F2[25]~4_combout\,
	combout => \FALLING_BLOCK_F2~12_combout\);

-- Location: FF_X19_Y15_N1
\FALLING_BLOCK_F2[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK|TEMPORAL~clkctrl_outclk\,
	d => \FALLING_BLOCK_F2~12_combout\,
	ena => \FALLING_BLOCK_F2[30]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => FALLING_BLOCK_F2(4));

-- Location: LCCOMB_X19_Y13_N10
\Add2~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~10_combout\ = (FALLING_BLOCK_F2(5) & ((\Add2~9\) # (GND))) # (!FALLING_BLOCK_F2(5) & (!\Add2~9\))
-- \Add2~11\ = CARRY((FALLING_BLOCK_F2(5)) # (!\Add2~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => FALLING_BLOCK_F2(5),
	datad => VCC,
	cin => \Add2~9\,
	combout => \Add2~10_combout\,
	cout => \Add2~11\);

-- Location: LCCOMB_X19_Y13_N14
\Add2~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~14_combout\ = (FALLING_BLOCK_F2(7) & ((\Add2~13\) # (GND))) # (!FALLING_BLOCK_F2(7) & (!\Add2~13\))
-- \Add2~15\ = CARRY((FALLING_BLOCK_F2(7)) # (!\Add2~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => FALLING_BLOCK_F2(7),
	datad => VCC,
	cin => \Add2~13\,
	combout => \Add2~14_combout\,
	cout => \Add2~15\);

-- Location: LCCOMB_X19_Y13_N16
\Add2~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~16_combout\ = (FALLING_BLOCK_F2(8) & (\Add2~15\ $ (GND))) # (!FALLING_BLOCK_F2(8) & (!\Add2~15\ & VCC))
-- \Add2~17\ = CARRY((FALLING_BLOCK_F2(8) & !\Add2~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => FALLING_BLOCK_F2(8),
	datad => VCC,
	cin => \Add2~15\,
	combout => \Add2~16_combout\,
	cout => \Add2~17\);

-- Location: LCCOMB_X20_Y12_N4
\FALLING_BLOCK_F2~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \FALLING_BLOCK_F2~8_combout\ = (\Add2~16_combout\ & \FALLING_BLOCK_F2[25]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add2~16_combout\,
	datad => \FALLING_BLOCK_F2[25]~4_combout\,
	combout => \FALLING_BLOCK_F2~8_combout\);

-- Location: FF_X20_Y12_N5
\FALLING_BLOCK_F2[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK|TEMPORAL~clkctrl_outclk\,
	d => \FALLING_BLOCK_F2~8_combout\,
	ena => \FALLING_BLOCK_F2[30]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => FALLING_BLOCK_F2(8));

-- Location: LCCOMB_X19_Y13_N18
\Add2~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~18_combout\ = (FALLING_BLOCK_F2(9) & ((\Add2~17\) # (GND))) # (!FALLING_BLOCK_F2(9) & (!\Add2~17\))
-- \Add2~19\ = CARRY((FALLING_BLOCK_F2(9)) # (!\Add2~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => FALLING_BLOCK_F2(9),
	datad => VCC,
	cin => \Add2~17\,
	combout => \Add2~18_combout\,
	cout => \Add2~19\);

-- Location: LCCOMB_X19_Y13_N20
\Add2~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~20_combout\ = (FALLING_BLOCK_F2(10) & (!\Add2~19\ & VCC)) # (!FALLING_BLOCK_F2(10) & (\Add2~19\ $ (GND)))
-- \Add2~21\ = CARRY((!FALLING_BLOCK_F2(10) & !\Add2~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => FALLING_BLOCK_F2(10),
	datad => VCC,
	cin => \Add2~19\,
	combout => \Add2~20_combout\,
	cout => \Add2~21\);

-- Location: LCCOMB_X17_Y13_N28
\FALLING_BLOCK_F2~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \FALLING_BLOCK_F2~5_combout\ = (!\Add2~20_combout\ & \FALLING_BLOCK_F2[25]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add2~20_combout\,
	datad => \FALLING_BLOCK_F2[25]~4_combout\,
	combout => \FALLING_BLOCK_F2~5_combout\);

-- Location: FF_X17_Y13_N29
\FALLING_BLOCK_F2[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK|TEMPORAL~clkctrl_outclk\,
	d => \FALLING_BLOCK_F2~5_combout\,
	ena => \FALLING_BLOCK_F2[30]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => FALLING_BLOCK_F2(10));

-- Location: LCCOMB_X19_Y13_N24
\Add2~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~24_combout\ = (FALLING_BLOCK_F2(12) & (!\Add2~23\ & VCC)) # (!FALLING_BLOCK_F2(12) & (\Add2~23\ $ (GND)))
-- \Add2~25\ = CARRY((!FALLING_BLOCK_F2(12) & !\Add2~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => FALLING_BLOCK_F2(12),
	datad => VCC,
	cin => \Add2~23\,
	combout => \Add2~24_combout\,
	cout => \Add2~25\);

-- Location: LCCOMB_X17_Y13_N22
\FALLING_BLOCK_F2~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \FALLING_BLOCK_F2~18_combout\ = (\FALLING_BLOCK_F2[25]~4_combout\ & !\Add2~24_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FALLING_BLOCK_F2[25]~4_combout\,
	datad => \Add2~24_combout\,
	combout => \FALLING_BLOCK_F2~18_combout\);

-- Location: FF_X17_Y13_N23
\FALLING_BLOCK_F2[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK|TEMPORAL~clkctrl_outclk\,
	d => \FALLING_BLOCK_F2~18_combout\,
	ena => \FALLING_BLOCK_F2[30]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => FALLING_BLOCK_F2(12));

-- Location: LCCOMB_X19_Y13_N28
\Add2~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~28_combout\ = (FALLING_BLOCK_F2(14) & (!\Add2~27\ & VCC)) # (!FALLING_BLOCK_F2(14) & (\Add2~27\ $ (GND)))
-- \Add2~29\ = CARRY((!FALLING_BLOCK_F2(14) & !\Add2~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => FALLING_BLOCK_F2(14),
	datad => VCC,
	cin => \Add2~27\,
	combout => \Add2~28_combout\,
	cout => \Add2~29\);

-- Location: LCCOMB_X17_Y13_N16
\FALLING_BLOCK_F2~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \FALLING_BLOCK_F2~20_combout\ = (!\Add2~28_combout\ & \FALLING_BLOCK_F2[25]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add2~28_combout\,
	datad => \FALLING_BLOCK_F2[25]~4_combout\,
	combout => \FALLING_BLOCK_F2~20_combout\);

-- Location: FF_X17_Y13_N17
\FALLING_BLOCK_F2[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK|TEMPORAL~clkctrl_outclk\,
	d => \FALLING_BLOCK_F2~20_combout\,
	ena => \FALLING_BLOCK_F2[30]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => FALLING_BLOCK_F2(14));

-- Location: LCCOMB_X17_Y13_N2
\FALLING_BLOCK_F2~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \FALLING_BLOCK_F2~19_combout\ = (!\Add2~26_combout\ & \FALLING_BLOCK_F2[25]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~26_combout\,
	datad => \FALLING_BLOCK_F2[25]~4_combout\,
	combout => \FALLING_BLOCK_F2~19_combout\);

-- Location: FF_X17_Y13_N3
\FALLING_BLOCK_F2[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK|TEMPORAL~clkctrl_outclk\,
	d => \FALLING_BLOCK_F2~19_combout\,
	ena => \FALLING_BLOCK_F2[30]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => FALLING_BLOCK_F2(13));

-- Location: LCCOMB_X17_Y13_N30
\LessThan42~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan42~1_combout\ = (FALLING_BLOCK_F2(16) & (FALLING_BLOCK_F2(14) & (FALLING_BLOCK_F2(15) & FALLING_BLOCK_F2(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => FALLING_BLOCK_F2(16),
	datab => FALLING_BLOCK_F2(14),
	datac => FALLING_BLOCK_F2(15),
	datad => FALLING_BLOCK_F2(13),
	combout => \LessThan42~1_combout\);

-- Location: LCCOMB_X17_Y12_N18
\FALLING_BLOCK_F2~29\ : cycloneiii_lcell_comb
-- Equation(s):
-- \FALLING_BLOCK_F2~29_combout\ = (!\Add2~46_combout\ & \FALLING_BLOCK_F2[25]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~46_combout\,
	datad => \FALLING_BLOCK_F2[25]~4_combout\,
	combout => \FALLING_BLOCK_F2~29_combout\);

-- Location: FF_X17_Y12_N19
\FALLING_BLOCK_F2[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK|TEMPORAL~clkctrl_outclk\,
	d => \FALLING_BLOCK_F2~29_combout\,
	ena => \FALLING_BLOCK_F2[30]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => FALLING_BLOCK_F2(23));

-- Location: LCCOMB_X17_Y12_N12
\LessThan42~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan42~3_combout\ = (FALLING_BLOCK_F2(24) & (FALLING_BLOCK_F2(21) & (FALLING_BLOCK_F2(22) & FALLING_BLOCK_F2(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => FALLING_BLOCK_F2(24),
	datab => FALLING_BLOCK_F2(21),
	datac => FALLING_BLOCK_F2(22),
	datad => FALLING_BLOCK_F2(23),
	combout => \LessThan42~3_combout\);

-- Location: LCCOMB_X17_Y12_N10
\LessThan42~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan42~4_combout\ = (\LessThan42~0_combout\ & (\LessThan42~2_combout\ & (\LessThan42~1_combout\ & \LessThan42~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan42~0_combout\,
	datab => \LessThan42~2_combout\,
	datac => \LessThan42~1_combout\,
	datad => \LessThan42~3_combout\,
	combout => \LessThan42~4_combout\);

-- Location: LCCOMB_X19_Y12_N28
\Add2~60\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~60_combout\ = (FALLING_BLOCK_F2(30) & (!\Add2~59\ & VCC)) # (!FALLING_BLOCK_F2(30) & (\Add2~59\ $ (GND)))
-- \Add2~61\ = CARRY((!FALLING_BLOCK_F2(30) & !\Add2~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => FALLING_BLOCK_F2(30),
	datad => VCC,
	cin => \Add2~59\,
	combout => \Add2~60_combout\,
	cout => \Add2~61\);

-- Location: LCCOMB_X20_Y12_N12
\FALLING_BLOCK_F2[30]~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \FALLING_BLOCK_F2[30]~36_combout\ = (\FALLING_BLOCK_F2[30]~37_combout\ & (\FALLING_BLOCK_F2[25]~4_combout\ & (!\Add2~60_combout\))) # (!\FALLING_BLOCK_F2[30]~37_combout\ & (((FALLING_BLOCK_F2(30)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FALLING_BLOCK_F2[25]~4_combout\,
	datab => \Add2~60_combout\,
	datac => FALLING_BLOCK_F2(30),
	datad => \FALLING_BLOCK_F2[30]~37_combout\,
	combout => \FALLING_BLOCK_F2[30]~36_combout\);

-- Location: FF_X20_Y12_N13
\FALLING_BLOCK_F2[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK|TEMPORAL~clkctrl_outclk\,
	d => \FALLING_BLOCK_F2[30]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => FALLING_BLOCK_F2(30));

-- Location: LCCOMB_X20_Y12_N2
\LessThan42~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan42~6_combout\ = (FALLING_BLOCK_F2(29) & (\LessThan42~5_combout\ & (\LessThan42~4_combout\ & FALLING_BLOCK_F2(30))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => FALLING_BLOCK_F2(29),
	datab => \LessThan42~5_combout\,
	datac => \LessThan42~4_combout\,
	datad => FALLING_BLOCK_F2(30),
	combout => \LessThan42~6_combout\);

-- Location: LCCOMB_X20_Y13_N28
\FALLING_BLOCK_F2~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \FALLING_BLOCK_F2~11_combout\ = (!\Add2~10_combout\ & \FALLING_BLOCK_F2[25]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~10_combout\,
	datac => \FALLING_BLOCK_F2[25]~4_combout\,
	combout => \FALLING_BLOCK_F2~11_combout\);

-- Location: FF_X19_Y13_N31
\FALLING_BLOCK_F2[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK|TEMPORAL~clkctrl_outclk\,
	asdata => \FALLING_BLOCK_F2~11_combout\,
	sload => VCC,
	ena => \FALLING_BLOCK_F2[30]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => FALLING_BLOCK_F2(5));

-- Location: LCCOMB_X19_Y15_N2
\LessThan42~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan42~7_combout\ = ((FALLING_BLOCK_F2(2)) # ((FALLING_BLOCK_F2(3)) # (!FALLING_BLOCK_F2(4)))) # (!FALLING_BLOCK_F2(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => FALLING_BLOCK_F2(1),
	datab => FALLING_BLOCK_F2(2),
	datac => FALLING_BLOCK_F2(3),
	datad => FALLING_BLOCK_F2(4),
	combout => \LessThan42~7_combout\);

-- Location: LCCOMB_X19_Y15_N8
\LessThan42~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan42~8_combout\ = (FALLING_BLOCK_F2(7) & ((FALLING_BLOCK_F2(6)) # ((FALLING_BLOCK_F2(5) & \LessThan42~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => FALLING_BLOCK_F2(7),
	datab => FALLING_BLOCK_F2(6),
	datac => FALLING_BLOCK_F2(5),
	datad => \LessThan42~7_combout\,
	combout => \LessThan42~8_combout\);

-- Location: LCCOMB_X20_Y12_N0
\FALLING_BLOCK_F2[25]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \FALLING_BLOCK_F2[25]~4_combout\ = ((\LessThan42~6_combout\ & ((\LessThan42~8_combout\) # (!FALLING_BLOCK_F2(8))))) # (!FALLING_BLOCK_F2(31))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110101011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => FALLING_BLOCK_F2(31),
	datab => \LessThan42~6_combout\,
	datac => FALLING_BLOCK_F2(8),
	datad => \LessThan42~8_combout\,
	combout => \FALLING_BLOCK_F2[25]~4_combout\);

-- Location: LCCOMB_X19_Y13_N30
\Add2~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~30_combout\ = (FALLING_BLOCK_F2(15) & ((\Add2~29\) # (GND))) # (!FALLING_BLOCK_F2(15) & (!\Add2~29\))
-- \Add2~31\ = CARRY((FALLING_BLOCK_F2(15)) # (!\Add2~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => FALLING_BLOCK_F2(15),
	datad => VCC,
	cin => \Add2~29\,
	combout => \Add2~30_combout\,
	cout => \Add2~31\);

-- Location: LCCOMB_X17_Y13_N14
\FALLING_BLOCK_F2~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \FALLING_BLOCK_F2~21_combout\ = (\FALLING_BLOCK_F2[25]~4_combout\ & !\Add2~30_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FALLING_BLOCK_F2[25]~4_combout\,
	datad => \Add2~30_combout\,
	combout => \FALLING_BLOCK_F2~21_combout\);

-- Location: FF_X17_Y13_N15
\FALLING_BLOCK_F2[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK|TEMPORAL~clkctrl_outclk\,
	d => \FALLING_BLOCK_F2~21_combout\,
	ena => \FALLING_BLOCK_F2[30]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => FALLING_BLOCK_F2(15));

-- Location: LCCOMB_X19_Y12_N0
\Add2~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~32_combout\ = (FALLING_BLOCK_F2(16) & (!\Add2~31\ & VCC)) # (!FALLING_BLOCK_F2(16) & (\Add2~31\ $ (GND)))
-- \Add2~33\ = CARRY((!FALLING_BLOCK_F2(16) & !\Add2~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => FALLING_BLOCK_F2(16),
	datad => VCC,
	cin => \Add2~31\,
	combout => \Add2~32_combout\,
	cout => \Add2~33\);

-- Location: LCCOMB_X17_Y13_N20
\FALLING_BLOCK_F2~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \FALLING_BLOCK_F2~22_combout\ = (!\Add2~32_combout\ & \FALLING_BLOCK_F2[25]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add2~32_combout\,
	datad => \FALLING_BLOCK_F2[25]~4_combout\,
	combout => \FALLING_BLOCK_F2~22_combout\);

-- Location: FF_X17_Y13_N21
\FALLING_BLOCK_F2[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK|TEMPORAL~clkctrl_outclk\,
	d => \FALLING_BLOCK_F2~22_combout\,
	ena => \FALLING_BLOCK_F2[30]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => FALLING_BLOCK_F2(16));

-- Location: LCCOMB_X17_Y12_N0
\FALLING_BLOCK_F2~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \FALLING_BLOCK_F2~25_combout\ = (!\Add2~38_combout\ & \FALLING_BLOCK_F2[25]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add2~38_combout\,
	datad => \FALLING_BLOCK_F2[25]~4_combout\,
	combout => \FALLING_BLOCK_F2~25_combout\);

-- Location: FF_X17_Y12_N1
\FALLING_BLOCK_F2[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK|TEMPORAL~clkctrl_outclk\,
	d => \FALLING_BLOCK_F2~25_combout\,
	ena => \FALLING_BLOCK_F2[30]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => FALLING_BLOCK_F2(19));

-- Location: LCCOMB_X17_Y12_N20
\LessThan41~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan41~5_combout\ = (FALLING_BLOCK_F2(18)) # ((FALLING_BLOCK_F2(19)) # ((FALLING_BLOCK_F2(16)) # (FALLING_BLOCK_F2(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => FALLING_BLOCK_F2(18),
	datab => FALLING_BLOCK_F2(19),
	datac => FALLING_BLOCK_F2(16),
	datad => FALLING_BLOCK_F2(17),
	combout => \LessThan41~5_combout\);

-- Location: LCCOMB_X17_Y13_N4
\LessThan41~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan41~4_combout\ = (FALLING_BLOCK_F2(12)) # ((FALLING_BLOCK_F2(14)) # ((FALLING_BLOCK_F2(15)) # (FALLING_BLOCK_F2(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => FALLING_BLOCK_F2(12),
	datab => FALLING_BLOCK_F2(14),
	datac => FALLING_BLOCK_F2(15),
	datad => FALLING_BLOCK_F2(13),
	combout => \LessThan41~4_combout\);

-- Location: LCCOMB_X20_Y12_N28
\LessThan41~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan41~7_combout\ = (FALLING_BLOCK_F2(24)) # ((FALLING_BLOCK_F2(27)) # ((FALLING_BLOCK_F2(26)) # (FALLING_BLOCK_F2(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => FALLING_BLOCK_F2(24),
	datab => FALLING_BLOCK_F2(27),
	datac => FALLING_BLOCK_F2(26),
	datad => FALLING_BLOCK_F2(25),
	combout => \LessThan41~7_combout\);

-- Location: LCCOMB_X17_Y12_N16
\LessThan41~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan41~8_combout\ = (\LessThan41~6_combout\) # ((\LessThan41~5_combout\) # ((\LessThan41~4_combout\) # (\LessThan41~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan41~6_combout\,
	datab => \LessThan41~5_combout\,
	datac => \LessThan41~4_combout\,
	datad => \LessThan41~7_combout\,
	combout => \LessThan41~8_combout\);

-- Location: LCCOMB_X19_Y12_N30
\Add2~62\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~62_combout\ = \Add2~61\ $ (!FALLING_BLOCK_F2(31))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => FALLING_BLOCK_F2(31),
	cin => \Add2~61\,
	combout => \Add2~62_combout\);

-- Location: LCCOMB_X17_Y15_N20
\FALLING_BLOCK_F2[31]~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \FALLING_BLOCK_F2[31]~38_combout\ = (\FALLING_BLOCK_F2[25]~4_combout\ & ((\Add2~62_combout\))) # (!\FALLING_BLOCK_F2[25]~4_combout\ & (\FALLING_BLOCK_F2[31]~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FALLING_BLOCK_F2[31]~6_combout\,
	datac => \FALLING_BLOCK_F2[25]~4_combout\,
	datad => \Add2~62_combout\,
	combout => \FALLING_BLOCK_F2[31]~38_combout\);

-- Location: LCCOMB_X17_Y15_N30
\FALLING_BLOCK_F2[31]~39\ : cycloneiii_lcell_comb
-- Equation(s):
-- \FALLING_BLOCK_F2[31]~39_combout\ = (\Equal0~10_combout\ & ((\DRAW3~q\ & (FALLING_BLOCK_F2(31))) # (!\DRAW3~q\ & ((!\FALLING_BLOCK_F2[31]~38_combout\))))) # (!\Equal0~10_combout\ & (((FALLING_BLOCK_F2(31)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~10_combout\,
	datab => \DRAW3~q\,
	datac => FALLING_BLOCK_F2(31),
	datad => \FALLING_BLOCK_F2[31]~38_combout\,
	combout => \FALLING_BLOCK_F2[31]~39_combout\);

-- Location: FF_X17_Y15_N31
\FALLING_BLOCK_F2[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK|TEMPORAL~clkctrl_outclk\,
	d => \FALLING_BLOCK_F2[31]~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => FALLING_BLOCK_F2(31));

-- Location: LCCOMB_X17_Y13_N12
\FALLING_BLOCK_F2~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \FALLING_BLOCK_F2~17_combout\ = (!\Add2~22_combout\ & \FALLING_BLOCK_F2[25]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~22_combout\,
	datad => \FALLING_BLOCK_F2[25]~4_combout\,
	combout => \FALLING_BLOCK_F2~17_combout\);

-- Location: FF_X17_Y13_N13
\FALLING_BLOCK_F2[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK|TEMPORAL~clkctrl_outclk\,
	d => \FALLING_BLOCK_F2~17_combout\,
	ena => \FALLING_BLOCK_F2[30]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => FALLING_BLOCK_F2(11));

-- Location: LCCOMB_X20_Y12_N18
\LessThan41~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan41~0_combout\ = (FALLING_BLOCK_F2(9)) # (((FALLING_BLOCK_F2(11)) # (FALLING_BLOCK_F2(10))) # (!FALLING_BLOCK_F2(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => FALLING_BLOCK_F2(9),
	datab => FALLING_BLOCK_F2(8),
	datac => FALLING_BLOCK_F2(11),
	datad => FALLING_BLOCK_F2(10),
	combout => \LessThan41~0_combout\);

-- Location: LCCOMB_X19_Y15_N30
\LessThan41~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan41~1_combout\ = ((FALLING_BLOCK_F2(5)) # ((FALLING_BLOCK_F2(2) & FALLING_BLOCK_F2(3)))) # (!FALLING_BLOCK_F2(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => FALLING_BLOCK_F2(4),
	datab => FALLING_BLOCK_F2(2),
	datac => FALLING_BLOCK_F2(5),
	datad => FALLING_BLOCK_F2(3),
	combout => \LessThan41~1_combout\);

-- Location: LCCOMB_X20_Y12_N16
\LessThan41~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan41~2_combout\ = (\LessThan41~0_combout\) # ((FALLING_BLOCK_F2(7) & ((FALLING_BLOCK_F2(6)) # (\LessThan41~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => FALLING_BLOCK_F2(7),
	datab => \LessThan41~0_combout\,
	datac => FALLING_BLOCK_F2(6),
	datad => \LessThan41~1_combout\,
	combout => \LessThan41~2_combout\);

-- Location: LCCOMB_X20_Y12_N10
\FALLING_BLOCK_I2[20]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \FALLING_BLOCK_I2[20]~0_combout\ = (FALLING_BLOCK_F2(31)) # ((!\LessThan41~3_combout\ & (!\LessThan41~8_combout\ & !\LessThan41~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan41~3_combout\,
	datab => \LessThan41~8_combout\,
	datac => FALLING_BLOCK_F2(31),
	datad => \LessThan41~2_combout\,
	combout => \FALLING_BLOCK_I2[20]~0_combout\);

-- Location: LCCOMB_X17_Y14_N24
\Add5~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add5~20_combout\ = (!\Add5~18_combout\ & (((\FALLING_BLOCK_I2[20]~0_combout\ & \FALLING_BLOCK_F2[25]~4_combout\)) # (!\FALLING_BLOCK_F2[31]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add5~18_combout\,
	datab => \FALLING_BLOCK_I2[20]~0_combout\,
	datac => \FALLING_BLOCK_F2[25]~4_combout\,
	datad => \FALLING_BLOCK_F2[31]~6_combout\,
	combout => \Add5~20_combout\);

-- Location: FF_X17_Y14_N25
\FALLING_BLOCK_I2[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK|TEMPORAL~clkctrl_outclk\,
	d => \Add5~20_combout\,
	ena => \FALLING_BLOCK_I2[10]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => FALLING_BLOCK_I2(9));

-- Location: LCCOMB_X20_Y15_N10
\LessThan7~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan7~1_cout\ = CARRY((\SYNC|Add3~0_combout\ & FALLING_BLOCK_I2(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SYNC|Add3~0_combout\,
	datab => FALLING_BLOCK_I2(0),
	datad => VCC,
	cout => \LessThan7~1_cout\);

-- Location: LCCOMB_X20_Y15_N12
\LessThan7~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan7~3_cout\ = CARRY((FALLING_BLOCK_I2(1) & ((!\LessThan7~1_cout\) # (!\SYNC|Add3~2_combout\))) # (!FALLING_BLOCK_I2(1) & (!\SYNC|Add3~2_combout\ & !\LessThan7~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => FALLING_BLOCK_I2(1),
	datab => \SYNC|Add3~2_combout\,
	datad => VCC,
	cin => \LessThan7~1_cout\,
	cout => \LessThan7~3_cout\);

-- Location: LCCOMB_X20_Y15_N14
\LessThan7~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan7~5_cout\ = CARRY((\SYNC|Add3~4_combout\ & ((FALLING_BLOCK_I2(2)) # (!\LessThan7~3_cout\))) # (!\SYNC|Add3~4_combout\ & (FALLING_BLOCK_I2(2) & !\LessThan7~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SYNC|Add3~4_combout\,
	datab => FALLING_BLOCK_I2(2),
	datad => VCC,
	cin => \LessThan7~3_cout\,
	cout => \LessThan7~5_cout\);

-- Location: LCCOMB_X20_Y15_N16
\LessThan7~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan7~7_cout\ = CARRY((FALLING_BLOCK_I2(3) & (!\SYNC|Add3~6_combout\ & !\LessThan7~5_cout\)) # (!FALLING_BLOCK_I2(3) & ((!\LessThan7~5_cout\) # (!\SYNC|Add3~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => FALLING_BLOCK_I2(3),
	datab => \SYNC|Add3~6_combout\,
	datad => VCC,
	cin => \LessThan7~5_cout\,
	cout => \LessThan7~7_cout\);

-- Location: LCCOMB_X20_Y15_N18
\LessThan7~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan7~9_cout\ = CARRY((\SYNC|Add3~8_combout\ & ((!\LessThan7~7_cout\) # (!FALLING_BLOCK_I2(4)))) # (!\SYNC|Add3~8_combout\ & (!FALLING_BLOCK_I2(4) & !\LessThan7~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SYNC|Add3~8_combout\,
	datab => FALLING_BLOCK_I2(4),
	datad => VCC,
	cin => \LessThan7~7_cout\,
	cout => \LessThan7~9_cout\);

-- Location: LCCOMB_X20_Y15_N20
\LessThan7~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan7~11_cout\ = CARRY((FALLING_BLOCK_I2(5) & (!\SYNC|Add3~10_combout\ & !\LessThan7~9_cout\)) # (!FALLING_BLOCK_I2(5) & ((!\LessThan7~9_cout\) # (!\SYNC|Add3~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => FALLING_BLOCK_I2(5),
	datab => \SYNC|Add3~10_combout\,
	datad => VCC,
	cin => \LessThan7~9_cout\,
	cout => \LessThan7~11_cout\);

-- Location: LCCOMB_X20_Y15_N22
\LessThan7~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan7~13_cout\ = CARRY((FALLING_BLOCK_I2(6) & ((\SYNC|Add3~12_combout\) # (!\LessThan7~11_cout\))) # (!FALLING_BLOCK_I2(6) & (\SYNC|Add3~12_combout\ & !\LessThan7~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => FALLING_BLOCK_I2(6),
	datab => \SYNC|Add3~12_combout\,
	datad => VCC,
	cin => \LessThan7~11_cout\,
	cout => \LessThan7~13_cout\);

-- Location: LCCOMB_X20_Y15_N24
\LessThan7~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan7~15_cout\ = CARRY((\SYNC|Add3~14_combout\ & (!FALLING_BLOCK_I2(7) & !\LessThan7~13_cout\)) # (!\SYNC|Add3~14_combout\ & ((!\LessThan7~13_cout\) # (!FALLING_BLOCK_I2(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SYNC|Add3~14_combout\,
	datab => FALLING_BLOCK_I2(7),
	datad => VCC,
	cin => \LessThan7~13_cout\,
	cout => \LessThan7~15_cout\);

-- Location: LCCOMB_X20_Y15_N26
\LessThan7~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan7~17_cout\ = CARRY((FALLING_BLOCK_I2(8) & (\SYNC|Add3~16_combout\ & !\LessThan7~15_cout\)) # (!FALLING_BLOCK_I2(8) & ((\SYNC|Add3~16_combout\) # (!\LessThan7~15_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => FALLING_BLOCK_I2(8),
	datab => \SYNC|Add3~16_combout\,
	datad => VCC,
	cin => \LessThan7~15_cout\,
	cout => \LessThan7~17_cout\);

-- Location: LCCOMB_X20_Y15_N28
\LessThan7~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan7~18_combout\ = (FALLING_BLOCK_I2(9) & ((\LessThan7~17_cout\) # (\SYNC|Add3~18_combout\))) # (!FALLING_BLOCK_I2(9) & (\LessThan7~17_cout\ & \SYNC|Add3~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => FALLING_BLOCK_I2(9),
	datad => \SYNC|Add3~18_combout\,
	cin => \LessThan7~17_cout\,
	combout => \LessThan7~18_combout\);

-- Location: LCCOMB_X20_Y15_N2
\process_0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \process_0~6_combout\ = (\process_0~3_combout\ & ((\LessThan7~18_combout\) # (!FALLING_BLOCK_I2(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => FALLING_BLOCK_I2(10),
	datab => \process_0~3_combout\,
	datad => \LessThan7~18_combout\,
	combout => \process_0~6_combout\);

-- Location: LCCOMB_X17_Y13_N10
\FALLING_BLOCK_F2~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \FALLING_BLOCK_F2~7_combout\ = (\FALLING_BLOCK_F2[25]~4_combout\ & !\Add2~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FALLING_BLOCK_F2[25]~4_combout\,
	datad => \Add2~18_combout\,
	combout => \FALLING_BLOCK_F2~7_combout\);

-- Location: FF_X17_Y13_N11
\FALLING_BLOCK_F2[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK|TEMPORAL~clkctrl_outclk\,
	d => \FALLING_BLOCK_F2~7_combout\,
	ena => \FALLING_BLOCK_F2[30]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => FALLING_BLOCK_F2(9));

-- Location: LCCOMB_X17_Y13_N18
\FALLING_BLOCK_F2~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \FALLING_BLOCK_F2~9_combout\ = (\FALLING_BLOCK_F2[25]~4_combout\ & !\Add2~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FALLING_BLOCK_F2[25]~4_combout\,
	datad => \Add2~14_combout\,
	combout => \FALLING_BLOCK_F2~9_combout\);

-- Location: FF_X19_Y13_N7
\FALLING_BLOCK_F2[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK|TEMPORAL~clkctrl_outclk\,
	asdata => \FALLING_BLOCK_F2~9_combout\,
	sload => VCC,
	ena => \FALLING_BLOCK_F2[30]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => FALLING_BLOCK_F2(7));

-- Location: LCCOMB_X19_Y14_N18
\FALLING_BLOCK_F2~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \FALLING_BLOCK_F2~16_combout\ = (!\Add2~0_combout\) # (!\FALLING_BLOCK_F2[25]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FALLING_BLOCK_F2[25]~4_combout\,
	datad => \Add2~0_combout\,
	combout => \FALLING_BLOCK_F2~16_combout\);

-- Location: FF_X19_Y13_N27
\FALLING_BLOCK_F2[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK|TEMPORAL~clkctrl_outclk\,
	asdata => \FALLING_BLOCK_F2~16_combout\,
	sload => VCC,
	ena => \FALLING_BLOCK_F2[30]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => FALLING_BLOCK_F2(0));

-- Location: LCCOMB_X19_Y15_N10
\LessThan6~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan6~1_cout\ = CARRY((!\SYNC|Add3~0_combout\ & !FALLING_BLOCK_F2(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SYNC|Add3~0_combout\,
	datab => FALLING_BLOCK_F2(0),
	datad => VCC,
	cout => \LessThan6~1_cout\);

-- Location: LCCOMB_X19_Y15_N12
\LessThan6~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan6~3_cout\ = CARRY((FALLING_BLOCK_F2(1) & (\SYNC|Add3~2_combout\ & !\LessThan6~1_cout\)) # (!FALLING_BLOCK_F2(1) & ((\SYNC|Add3~2_combout\) # (!\LessThan6~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => FALLING_BLOCK_F2(1),
	datab => \SYNC|Add3~2_combout\,
	datad => VCC,
	cin => \LessThan6~1_cout\,
	cout => \LessThan6~3_cout\);

-- Location: LCCOMB_X19_Y15_N14
\LessThan6~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan6~5_cout\ = CARRY((\SYNC|Add3~4_combout\ & (!FALLING_BLOCK_F2(2) & !\LessThan6~3_cout\)) # (!\SYNC|Add3~4_combout\ & ((!\LessThan6~3_cout\) # (!FALLING_BLOCK_F2(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SYNC|Add3~4_combout\,
	datab => FALLING_BLOCK_F2(2),
	datad => VCC,
	cin => \LessThan6~3_cout\,
	cout => \LessThan6~5_cout\);

-- Location: LCCOMB_X19_Y15_N16
\LessThan6~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan6~7_cout\ = CARRY((\SYNC|Add3~6_combout\ & ((FALLING_BLOCK_F2(3)) # (!\LessThan6~5_cout\))) # (!\SYNC|Add3~6_combout\ & (FALLING_BLOCK_F2(3) & !\LessThan6~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SYNC|Add3~6_combout\,
	datab => FALLING_BLOCK_F2(3),
	datad => VCC,
	cin => \LessThan6~5_cout\,
	cout => \LessThan6~7_cout\);

-- Location: LCCOMB_X19_Y15_N18
\LessThan6~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan6~9_cout\ = CARRY((\SYNC|Add3~8_combout\ & (FALLING_BLOCK_F2(4) & !\LessThan6~7_cout\)) # (!\SYNC|Add3~8_combout\ & ((FALLING_BLOCK_F2(4)) # (!\LessThan6~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SYNC|Add3~8_combout\,
	datab => FALLING_BLOCK_F2(4),
	datad => VCC,
	cin => \LessThan6~7_cout\,
	cout => \LessThan6~9_cout\);

-- Location: LCCOMB_X19_Y15_N20
\LessThan6~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan6~11_cout\ = CARRY((\SYNC|Add3~10_combout\ & ((FALLING_BLOCK_F2(5)) # (!\LessThan6~9_cout\))) # (!\SYNC|Add3~10_combout\ & (FALLING_BLOCK_F2(5) & !\LessThan6~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SYNC|Add3~10_combout\,
	datab => FALLING_BLOCK_F2(5),
	datad => VCC,
	cin => \LessThan6~9_cout\,
	cout => \LessThan6~11_cout\);

-- Location: LCCOMB_X19_Y15_N22
\LessThan6~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan6~13_cout\ = CARRY((FALLING_BLOCK_F2(6) & (!\SYNC|Add3~12_combout\ & !\LessThan6~11_cout\)) # (!FALLING_BLOCK_F2(6) & ((!\LessThan6~11_cout\) # (!\SYNC|Add3~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => FALLING_BLOCK_F2(6),
	datab => \SYNC|Add3~12_combout\,
	datad => VCC,
	cin => \LessThan6~11_cout\,
	cout => \LessThan6~13_cout\);

-- Location: LCCOMB_X19_Y15_N24
\LessThan6~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan6~15_cout\ = CARRY((\SYNC|Add3~14_combout\ & ((FALLING_BLOCK_F2(7)) # (!\LessThan6~13_cout\))) # (!\SYNC|Add3~14_combout\ & (FALLING_BLOCK_F2(7) & !\LessThan6~13_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SYNC|Add3~14_combout\,
	datab => FALLING_BLOCK_F2(7),
	datad => VCC,
	cin => \LessThan6~13_cout\,
	cout => \LessThan6~15_cout\);

-- Location: LCCOMB_X19_Y15_N26
\LessThan6~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan6~17_cout\ = CARRY((FALLING_BLOCK_F2(8) & ((!\LessThan6~15_cout\) # (!\SYNC|Add3~16_combout\))) # (!FALLING_BLOCK_F2(8) & (!\SYNC|Add3~16_combout\ & !\LessThan6~15_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => FALLING_BLOCK_F2(8),
	datab => \SYNC|Add3~16_combout\,
	datad => VCC,
	cin => \LessThan6~15_cout\,
	cout => \LessThan6~17_cout\);

-- Location: LCCOMB_X19_Y15_N28
\LessThan6~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan6~18_combout\ = (\SYNC|Add3~18_combout\ & (!FALLING_BLOCK_F2(9) & \LessThan6~17_cout\)) # (!\SYNC|Add3~18_combout\ & ((\LessThan6~17_cout\) # (!FALLING_BLOCK_F2(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000101110001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SYNC|Add3~18_combout\,
	datab => FALLING_BLOCK_F2(9),
	cin => \LessThan6~17_cout\,
	combout => \LessThan6~18_combout\);

-- Location: LCCOMB_X20_Y15_N0
\process_0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \process_0~8_combout\ = ((!\LessThan6~18_combout\) # (!\process_0~6_combout\)) # (!FALLING_BLOCK_F2(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => FALLING_BLOCK_F2(10),
	datab => \process_0~6_combout\,
	datac => \LessThan6~18_combout\,
	combout => \process_0~8_combout\);

-- Location: LCCOMB_X23_Y14_N0
\FALLING_BLOCK_F~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \FALLING_BLOCK_F~12_combout\ = (\Add0~4_combout\ & !\FALLING_BLOCK_F[27]~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~4_combout\,
	datad => \FALLING_BLOCK_F[27]~3_combout\,
	combout => \FALLING_BLOCK_F~12_combout\);

-- Location: LCCOMB_X23_Y16_N26
\FALLING_BLOCK_F[27]~35\ : cycloneiii_lcell_comb
-- Equation(s):
-- \FALLING_BLOCK_F[27]~35_combout\ = (FALLING_BLOCK_F(31)) # (\FALLING_BLOCK_F[27]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => FALLING_BLOCK_F(31),
	datad => \FALLING_BLOCK_F[27]~0_combout\,
	combout => \FALLING_BLOCK_F[27]~35_combout\);

-- Location: LCCOMB_X24_Y16_N26
\FALLING_BLOCK_F~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \FALLING_BLOCK_F~23_combout\ = (\Add0~32_combout\ & ((FALLING_BLOCK_F(31)) # (\FALLING_BLOCK_F[27]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~32_combout\,
	datac => FALLING_BLOCK_F(31),
	datad => \FALLING_BLOCK_F[27]~0_combout\,
	combout => \FALLING_BLOCK_F~23_combout\);

-- Location: FF_X24_Y16_N27
\FALLING_BLOCK_F[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK|TEMPORAL~clkctrl_outclk\,
	d => \FALLING_BLOCK_F~23_combout\,
	ena => \FALLING_BLOCK_F[10]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => FALLING_BLOCK_F(16));

-- Location: LCCOMB_X24_Y14_N20
\Add0~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~20_combout\ = (FALLING_BLOCK_F(10) & (\Add0~19\ $ (GND))) # (!FALLING_BLOCK_F(10) & (!\Add0~19\ & VCC))
-- \Add0~21\ = CARRY((FALLING_BLOCK_F(10) & !\Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => FALLING_BLOCK_F(10),
	datad => VCC,
	cin => \Add0~19\,
	combout => \Add0~20_combout\,
	cout => \Add0~21\);

-- Location: LCCOMB_X24_Y14_N22
\Add0~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~22_combout\ = (FALLING_BLOCK_F(11) & (!\Add0~21\)) # (!FALLING_BLOCK_F(11) & ((\Add0~21\) # (GND)))
-- \Add0~23\ = CARRY((!\Add0~21\) # (!FALLING_BLOCK_F(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => FALLING_BLOCK_F(11),
	datad => VCC,
	cin => \Add0~21\,
	combout => \Add0~22_combout\,
	cout => \Add0~23\);

-- Location: LCCOMB_X24_Y14_N24
\Add0~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~24_combout\ = (FALLING_BLOCK_F(12) & (\Add0~23\ $ (GND))) # (!FALLING_BLOCK_F(12) & (!\Add0~23\ & VCC))
-- \Add0~25\ = CARRY((FALLING_BLOCK_F(12) & !\Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => FALLING_BLOCK_F(12),
	datad => VCC,
	cin => \Add0~23\,
	combout => \Add0~24_combout\,
	cout => \Add0~25\);

-- Location: LCCOMB_X24_Y16_N8
\FALLING_BLOCK_F~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \FALLING_BLOCK_F~25_combout\ = (\Add0~24_combout\ & ((FALLING_BLOCK_F(31)) # (\FALLING_BLOCK_F[27]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => FALLING_BLOCK_F(31),
	datac => \Add0~24_combout\,
	datad => \FALLING_BLOCK_F[27]~0_combout\,
	combout => \FALLING_BLOCK_F~25_combout\);

-- Location: FF_X24_Y16_N9
\FALLING_BLOCK_F[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK|TEMPORAL~clkctrl_outclk\,
	d => \FALLING_BLOCK_F~25_combout\,
	ena => \FALLING_BLOCK_F[10]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => FALLING_BLOCK_F(12));

-- Location: LCCOMB_X24_Y14_N26
\Add0~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~26_combout\ = (FALLING_BLOCK_F(13) & (!\Add0~25\)) # (!FALLING_BLOCK_F(13) & ((\Add0~25\) # (GND)))
-- \Add0~27\ = CARRY((!\Add0~25\) # (!FALLING_BLOCK_F(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => FALLING_BLOCK_F(13),
	datad => VCC,
	cin => \Add0~25\,
	combout => \Add0~26_combout\,
	cout => \Add0~27\);

-- Location: LCCOMB_X24_Y16_N28
\FALLING_BLOCK_F~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \FALLING_BLOCK_F~20_combout\ = (\Add0~26_combout\ & ((FALLING_BLOCK_F(31)) # (\FALLING_BLOCK_F[27]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => FALLING_BLOCK_F(31),
	datab => \Add0~26_combout\,
	datad => \FALLING_BLOCK_F[27]~0_combout\,
	combout => \FALLING_BLOCK_F~20_combout\);

-- Location: FF_X24_Y16_N29
\FALLING_BLOCK_F[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK|TEMPORAL~clkctrl_outclk\,
	d => \FALLING_BLOCK_F~20_combout\,
	ena => \FALLING_BLOCK_F[10]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => FALLING_BLOCK_F(13));

-- Location: LCCOMB_X24_Y14_N30
\Add0~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~30_combout\ = (FALLING_BLOCK_F(15) & (!\Add0~29\)) # (!FALLING_BLOCK_F(15) & ((\Add0~29\) # (GND)))
-- \Add0~31\ = CARRY((!\Add0~29\) # (!FALLING_BLOCK_F(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => FALLING_BLOCK_F(15),
	datad => VCC,
	cin => \Add0~29\,
	combout => \Add0~30_combout\,
	cout => \Add0~31\);

-- Location: LCCOMB_X24_Y16_N16
\FALLING_BLOCK_F~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \FALLING_BLOCK_F~22_combout\ = (\Add0~30_combout\ & ((FALLING_BLOCK_F(31)) # (\FALLING_BLOCK_F[27]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => FALLING_BLOCK_F(31),
	datab => \Add0~30_combout\,
	datad => \FALLING_BLOCK_F[27]~0_combout\,
	combout => \FALLING_BLOCK_F~22_combout\);

-- Location: FF_X24_Y16_N17
\FALLING_BLOCK_F[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK|TEMPORAL~clkctrl_outclk\,
	d => \FALLING_BLOCK_F~22_combout\,
	ena => \FALLING_BLOCK_F[10]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => FALLING_BLOCK_F(15));

-- Location: LCCOMB_X24_Y13_N2
\Add0~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~34_combout\ = (FALLING_BLOCK_F(17) & (!\Add0~33\)) # (!FALLING_BLOCK_F(17) & ((\Add0~33\) # (GND)))
-- \Add0~35\ = CARRY((!\Add0~33\) # (!FALLING_BLOCK_F(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => FALLING_BLOCK_F(17),
	datad => VCC,
	cin => \Add0~33\,
	combout => \Add0~34_combout\,
	cout => \Add0~35\);

-- Location: LCCOMB_X24_Y13_N4
\Add0~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~36_combout\ = (FALLING_BLOCK_F(18) & (\Add0~35\ $ (GND))) # (!FALLING_BLOCK_F(18) & (!\Add0~35\ & VCC))
-- \Add0~37\ = CARRY((FALLING_BLOCK_F(18) & !\Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => FALLING_BLOCK_F(18),
	datad => VCC,
	cin => \Add0~35\,
	combout => \Add0~36_combout\,
	cout => \Add0~37\);

-- Location: LCCOMB_X23_Y16_N2
\FALLING_BLOCK_F~27\ : cycloneiii_lcell_comb
-- Equation(s):
-- \FALLING_BLOCK_F~27_combout\ = (\Add0~36_combout\ & ((\FALLING_BLOCK_F[27]~0_combout\) # (FALLING_BLOCK_F(31))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FALLING_BLOCK_F[27]~0_combout\,
	datab => \Add0~36_combout\,
	datad => FALLING_BLOCK_F(31),
	combout => \FALLING_BLOCK_F~27_combout\);

-- Location: FF_X23_Y16_N3
\FALLING_BLOCK_F[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK|TEMPORAL~clkctrl_outclk\,
	d => \FALLING_BLOCK_F~27_combout\,
	ena => \FALLING_BLOCK_F[10]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => FALLING_BLOCK_F(18));

-- Location: LCCOMB_X24_Y13_N6
\Add0~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~38_combout\ = (FALLING_BLOCK_F(19) & (!\Add0~37\)) # (!FALLING_BLOCK_F(19) & ((\Add0~37\) # (GND)))
-- \Add0~39\ = CARRY((!\Add0~37\) # (!FALLING_BLOCK_F(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => FALLING_BLOCK_F(19),
	datad => VCC,
	cin => \Add0~37\,
	combout => \Add0~38_combout\,
	cout => \Add0~39\);

-- Location: LCCOMB_X23_Y16_N12
\FALLING_BLOCK_F~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \FALLING_BLOCK_F~28_combout\ = (\Add0~38_combout\ & ((\FALLING_BLOCK_F[27]~0_combout\) # (FALLING_BLOCK_F(31))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FALLING_BLOCK_F[27]~0_combout\,
	datab => \Add0~38_combout\,
	datad => FALLING_BLOCK_F(31),
	combout => \FALLING_BLOCK_F~28_combout\);

-- Location: FF_X23_Y16_N13
\FALLING_BLOCK_F[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK|TEMPORAL~clkctrl_outclk\,
	d => \FALLING_BLOCK_F~28_combout\,
	ena => \FALLING_BLOCK_F[10]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => FALLING_BLOCK_F(19));

-- Location: LCCOMB_X24_Y13_N8
\Add0~40\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~40_combout\ = (FALLING_BLOCK_F(20) & (\Add0~39\ $ (GND))) # (!FALLING_BLOCK_F(20) & (!\Add0~39\ & VCC))
-- \Add0~41\ = CARRY((FALLING_BLOCK_F(20) & !\Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => FALLING_BLOCK_F(20),
	datad => VCC,
	cin => \Add0~39\,
	combout => \Add0~40_combout\,
	cout => \Add0~41\);

-- Location: LCCOMB_X24_Y13_N10
\Add0~42\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~42_combout\ = (FALLING_BLOCK_F(21) & (!\Add0~41\)) # (!FALLING_BLOCK_F(21) & ((\Add0~41\) # (GND)))
-- \Add0~43\ = CARRY((!\Add0~41\) # (!FALLING_BLOCK_F(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => FALLING_BLOCK_F(21),
	datad => VCC,
	cin => \Add0~41\,
	combout => \Add0~42_combout\,
	cout => \Add0~43\);

-- Location: LCCOMB_X24_Y13_N12
\Add0~44\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~44_combout\ = (FALLING_BLOCK_F(22) & (\Add0~43\ $ (GND))) # (!FALLING_BLOCK_F(22) & (!\Add0~43\ & VCC))
-- \Add0~45\ = CARRY((FALLING_BLOCK_F(22) & !\Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => FALLING_BLOCK_F(22),
	datad => VCC,
	cin => \Add0~43\,
	combout => \Add0~44_combout\,
	cout => \Add0~45\);

-- Location: LCCOMB_X24_Y16_N22
\FALLING_BLOCK_F~31\ : cycloneiii_lcell_comb
-- Equation(s):
-- \FALLING_BLOCK_F~31_combout\ = (\Add0~44_combout\ & ((FALLING_BLOCK_F(31)) # (\FALLING_BLOCK_F[27]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => FALLING_BLOCK_F(31),
	datac => \Add0~44_combout\,
	datad => \FALLING_BLOCK_F[27]~0_combout\,
	combout => \FALLING_BLOCK_F~31_combout\);

-- Location: FF_X24_Y16_N23
\FALLING_BLOCK_F[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK|TEMPORAL~clkctrl_outclk\,
	d => \FALLING_BLOCK_F~31_combout\,
	ena => \FALLING_BLOCK_F[10]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => FALLING_BLOCK_F(22));

-- Location: LCCOMB_X24_Y13_N14
\Add0~46\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~46_combout\ = (FALLING_BLOCK_F(23) & (!\Add0~45\)) # (!FALLING_BLOCK_F(23) & ((\Add0~45\) # (GND)))
-- \Add0~47\ = CARRY((!\Add0~45\) # (!FALLING_BLOCK_F(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => FALLING_BLOCK_F(23),
	datad => VCC,
	cin => \Add0~45\,
	combout => \Add0~46_combout\,
	cout => \Add0~47\);

-- Location: LCCOMB_X24_Y16_N12
\FALLING_BLOCK_F~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \FALLING_BLOCK_F~32_combout\ = (\Add0~46_combout\ & ((FALLING_BLOCK_F(31)) # (\FALLING_BLOCK_F[27]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => FALLING_BLOCK_F(31),
	datac => \Add0~46_combout\,
	datad => \FALLING_BLOCK_F[27]~0_combout\,
	combout => \FALLING_BLOCK_F~32_combout\);

-- Location: FF_X24_Y16_N13
\FALLING_BLOCK_F[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK|TEMPORAL~clkctrl_outclk\,
	d => \FALLING_BLOCK_F~32_combout\,
	ena => \FALLING_BLOCK_F[10]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => FALLING_BLOCK_F(23));

-- Location: LCCOMB_X24_Y13_N16
\Add0~48\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~48_combout\ = (FALLING_BLOCK_F(24) & (\Add0~47\ $ (GND))) # (!FALLING_BLOCK_F(24) & (!\Add0~47\ & VCC))
-- \Add0~49\ = CARRY((FALLING_BLOCK_F(24) & !\Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => FALLING_BLOCK_F(24),
	datad => VCC,
	cin => \Add0~47\,
	combout => \Add0~48_combout\,
	cout => \Add0~49\);

-- Location: LCCOMB_X24_Y16_N14
\FALLING_BLOCK_F~33\ : cycloneiii_lcell_comb
-- Equation(s):
-- \FALLING_BLOCK_F~33_combout\ = (\Add0~48_combout\ & ((\FALLING_BLOCK_F[27]~0_combout\) # (FALLING_BLOCK_F(31))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FALLING_BLOCK_F[27]~0_combout\,
	datac => \Add0~48_combout\,
	datad => FALLING_BLOCK_F(31),
	combout => \FALLING_BLOCK_F~33_combout\);

-- Location: FF_X24_Y16_N15
\FALLING_BLOCK_F[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK|TEMPORAL~clkctrl_outclk\,
	d => \FALLING_BLOCK_F~33_combout\,
	ena => \FALLING_BLOCK_F[10]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => FALLING_BLOCK_F(24));

-- Location: LCCOMB_X24_Y13_N20
\Add0~52\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~52_combout\ = (FALLING_BLOCK_F(26) & (\Add0~51\ $ (GND))) # (!FALLING_BLOCK_F(26) & (!\Add0~51\ & VCC))
-- \Add0~53\ = CARRY((FALLING_BLOCK_F(26) & !\Add0~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => FALLING_BLOCK_F(26),
	datad => VCC,
	cin => \Add0~51\,
	combout => \Add0~52_combout\,
	cout => \Add0~53\);

-- Location: LCCOMB_X23_Y13_N6
\FALLING_BLOCK_F~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \FALLING_BLOCK_F~17_combout\ = (\Add0~52_combout\ & ((\FALLING_BLOCK_F[27]~0_combout\) # (FALLING_BLOCK_F(31))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FALLING_BLOCK_F[27]~0_combout\,
	datac => \Add0~52_combout\,
	datad => FALLING_BLOCK_F(31),
	combout => \FALLING_BLOCK_F~17_combout\);

-- Location: FF_X23_Y13_N7
\FALLING_BLOCK_F[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK|TEMPORAL~clkctrl_outclk\,
	d => \FALLING_BLOCK_F~17_combout\,
	ena => \FALLING_BLOCK_F[10]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => FALLING_BLOCK_F(26));

-- Location: LCCOMB_X24_Y13_N22
\Add0~54\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~54_combout\ = (FALLING_BLOCK_F(27) & (!\Add0~53\)) # (!FALLING_BLOCK_F(27) & ((\Add0~53\) # (GND)))
-- \Add0~55\ = CARRY((!\Add0~53\) # (!FALLING_BLOCK_F(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => FALLING_BLOCK_F(27),
	datad => VCC,
	cin => \Add0~53\,
	combout => \Add0~54_combout\,
	cout => \Add0~55\);

-- Location: LCCOMB_X23_Y13_N4
\FALLING_BLOCK_F~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \FALLING_BLOCK_F~18_combout\ = (\Add0~54_combout\ & ((FALLING_BLOCK_F(31)) # (\FALLING_BLOCK_F[27]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => FALLING_BLOCK_F(31),
	datac => \FALLING_BLOCK_F[27]~0_combout\,
	datad => \Add0~54_combout\,
	combout => \FALLING_BLOCK_F~18_combout\);

-- Location: FF_X23_Y13_N5
\FALLING_BLOCK_F[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK|TEMPORAL~clkctrl_outclk\,
	d => \FALLING_BLOCK_F~18_combout\,
	ena => \FALLING_BLOCK_F[10]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => FALLING_BLOCK_F(27));

-- Location: LCCOMB_X24_Y13_N26
\Add0~58\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~58_combout\ = (FALLING_BLOCK_F(29) & (!\Add0~57\)) # (!FALLING_BLOCK_F(29) & ((\Add0~57\) # (GND)))
-- \Add0~59\ = CARRY((!\Add0~57\) # (!FALLING_BLOCK_F(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => FALLING_BLOCK_F(29),
	datad => VCC,
	cin => \Add0~57\,
	combout => \Add0~58_combout\,
	cout => \Add0~59\);

-- Location: LCCOMB_X23_Y13_N2
\FALLING_BLOCK_F~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \FALLING_BLOCK_F~34_combout\ = (\Add0~58_combout\ & ((FALLING_BLOCK_F(31)) # (\FALLING_BLOCK_F[27]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => FALLING_BLOCK_F(31),
	datac => \FALLING_BLOCK_F[27]~0_combout\,
	datad => \Add0~58_combout\,
	combout => \FALLING_BLOCK_F~34_combout\);

-- Location: FF_X23_Y13_N3
\FALLING_BLOCK_F[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK|TEMPORAL~clkctrl_outclk\,
	d => \FALLING_BLOCK_F~34_combout\,
	ena => \FALLING_BLOCK_F[10]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => FALLING_BLOCK_F(29));

-- Location: LCCOMB_X23_Y13_N8
\FALLING_BLOCK_F[30]~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \FALLING_BLOCK_F[30]~36_combout\ = (\FALLING_BLOCK_F[10]~5_combout\ & (\FALLING_BLOCK_F[27]~35_combout\ & ((\Add0~60_combout\)))) # (!\FALLING_BLOCK_F[10]~5_combout\ & (((FALLING_BLOCK_F(30)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FALLING_BLOCK_F[10]~5_combout\,
	datab => \FALLING_BLOCK_F[27]~35_combout\,
	datac => FALLING_BLOCK_F(30),
	datad => \Add0~60_combout\,
	combout => \FALLING_BLOCK_F[30]~36_combout\);

-- Location: FF_X23_Y13_N9
\FALLING_BLOCK_F[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK|TEMPORAL~clkctrl_outclk\,
	d => \FALLING_BLOCK_F[30]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => FALLING_BLOCK_F(30));

-- Location: LCCOMB_X23_Y13_N22
\LessThan31~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan31~7_combout\ = (!FALLING_BLOCK_F(30) & !FALLING_BLOCK_F(29))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => FALLING_BLOCK_F(30),
	datad => FALLING_BLOCK_F(29),
	combout => \LessThan31~7_combout\);

-- Location: LCCOMB_X24_Y16_N0
\FALLING_BLOCK_F~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \FALLING_BLOCK_F~30_combout\ = (\Add0~42_combout\ & ((\FALLING_BLOCK_F[27]~0_combout\) # (FALLING_BLOCK_F(31))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FALLING_BLOCK_F[27]~0_combout\,
	datac => FALLING_BLOCK_F(31),
	datad => \Add0~42_combout\,
	combout => \FALLING_BLOCK_F~30_combout\);

-- Location: FF_X24_Y16_N1
\FALLING_BLOCK_F[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK|TEMPORAL~clkctrl_outclk\,
	d => \FALLING_BLOCK_F~30_combout\,
	ena => \FALLING_BLOCK_F[10]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => FALLING_BLOCK_F(21));

-- Location: LCCOMB_X24_Y16_N4
\LessThan31~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan31~5_combout\ = (!FALLING_BLOCK_F(22) & (!FALLING_BLOCK_F(21) & (!FALLING_BLOCK_F(24) & !FALLING_BLOCK_F(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => FALLING_BLOCK_F(22),
	datab => FALLING_BLOCK_F(21),
	datac => FALLING_BLOCK_F(24),
	datad => FALLING_BLOCK_F(23),
	combout => \LessThan31~5_combout\);

-- Location: LCCOMB_X23_Y16_N14
\FALLING_BLOCK_F~29\ : cycloneiii_lcell_comb
-- Equation(s):
-- \FALLING_BLOCK_F~29_combout\ = (\Add0~40_combout\ & ((FALLING_BLOCK_F(31)) # (\FALLING_BLOCK_F[27]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => FALLING_BLOCK_F(31),
	datac => \Add0~40_combout\,
	datad => \FALLING_BLOCK_F[27]~0_combout\,
	combout => \FALLING_BLOCK_F~29_combout\);

-- Location: FF_X23_Y16_N15
\FALLING_BLOCK_F[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK|TEMPORAL~clkctrl_outclk\,
	d => \FALLING_BLOCK_F~29_combout\,
	ena => \FALLING_BLOCK_F[10]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => FALLING_BLOCK_F(20));

-- Location: LCCOMB_X23_Y16_N16
\FALLING_BLOCK_F~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \FALLING_BLOCK_F~26_combout\ = (\Add0~34_combout\ & ((\FALLING_BLOCK_F[27]~0_combout\) # (FALLING_BLOCK_F(31))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FALLING_BLOCK_F[27]~0_combout\,
	datab => FALLING_BLOCK_F(31),
	datad => \Add0~34_combout\,
	combout => \FALLING_BLOCK_F~26_combout\);

-- Location: FF_X23_Y16_N17
\FALLING_BLOCK_F[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK|TEMPORAL~clkctrl_outclk\,
	d => \FALLING_BLOCK_F~26_combout\,
	ena => \FALLING_BLOCK_F[10]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => FALLING_BLOCK_F(17));

-- Location: LCCOMB_X23_Y16_N4
\LessThan31~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan31~4_combout\ = (!FALLING_BLOCK_F(19) & (!FALLING_BLOCK_F(18) & (!FALLING_BLOCK_F(20) & !FALLING_BLOCK_F(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => FALLING_BLOCK_F(19),
	datab => FALLING_BLOCK_F(18),
	datac => FALLING_BLOCK_F(20),
	datad => FALLING_BLOCK_F(17),
	combout => \LessThan31~4_combout\);

-- Location: LCCOMB_X24_Y16_N20
\LessThan31~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan31~2_combout\ = (!FALLING_BLOCK_F(14) & (!FALLING_BLOCK_F(13) & (!FALLING_BLOCK_F(16) & !FALLING_BLOCK_F(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => FALLING_BLOCK_F(14),
	datab => FALLING_BLOCK_F(13),
	datac => FALLING_BLOCK_F(16),
	datad => FALLING_BLOCK_F(15),
	combout => \LessThan31~2_combout\);

-- Location: LCCOMB_X24_Y16_N2
\FALLING_BLOCK_F~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \FALLING_BLOCK_F~24_combout\ = (\Add0~22_combout\ & ((FALLING_BLOCK_F(31)) # (\FALLING_BLOCK_F[27]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => FALLING_BLOCK_F(31),
	datac => \Add0~22_combout\,
	datad => \FALLING_BLOCK_F[27]~0_combout\,
	combout => \FALLING_BLOCK_F~24_combout\);

-- Location: FF_X24_Y16_N3
\FALLING_BLOCK_F[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK|TEMPORAL~clkctrl_outclk\,
	d => \FALLING_BLOCK_F~24_combout\,
	ena => \FALLING_BLOCK_F[10]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => FALLING_BLOCK_F(11));

-- Location: LCCOMB_X24_Y16_N10
\LessThan31~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan31~3_combout\ = (\LessThan31~1_combout\ & (\LessThan31~2_combout\ & (!FALLING_BLOCK_F(12) & !FALLING_BLOCK_F(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan31~1_combout\,
	datab => \LessThan31~2_combout\,
	datac => FALLING_BLOCK_F(12),
	datad => FALLING_BLOCK_F(11),
	combout => \LessThan31~3_combout\);

-- Location: LCCOMB_X24_Y16_N30
\LessThan31~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan31~6_combout\ = (\LessThan31~0_combout\ & (\LessThan31~5_combout\ & (\LessThan31~4_combout\ & \LessThan31~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan31~0_combout\,
	datab => \LessThan31~5_combout\,
	datac => \LessThan31~4_combout\,
	datad => \LessThan31~3_combout\,
	combout => \LessThan31~6_combout\);

-- Location: LCCOMB_X24_Y16_N24
\FALLING_BLOCK_F~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \FALLING_BLOCK_F~6_combout\ = (\Add0~16_combout\ & !\FALLING_BLOCK_F[27]~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~16_combout\,
	datad => \FALLING_BLOCK_F[27]~3_combout\,
	combout => \FALLING_BLOCK_F~6_combout\);

-- Location: FF_X24_Y16_N25
\FALLING_BLOCK_F[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK|TEMPORAL~clkctrl_outclk\,
	d => \FALLING_BLOCK_F~6_combout\,
	ena => \FALLING_BLOCK_F[10]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => FALLING_BLOCK_F(8));

-- Location: LCCOMB_X24_Y15_N4
\FALLING_BLOCK_F[27]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \FALLING_BLOCK_F[27]~0_combout\ = (\LessThan31~7_combout\ & (\LessThan31~6_combout\ & ((\LessThan32~1_combout\) # (!FALLING_BLOCK_F(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan32~1_combout\,
	datab => \LessThan31~7_combout\,
	datac => \LessThan31~6_combout\,
	datad => FALLING_BLOCK_F(8),
	combout => \FALLING_BLOCK_F[27]~0_combout\);

-- Location: LCCOMB_X23_Y13_N12
\FALLING_BLOCK_F[31]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \FALLING_BLOCK_F[31]~2_combout\ = (!\DRAW1~q\ & \Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAW1~q\,
	datad => \Equal0~10_combout\,
	combout => \FALLING_BLOCK_F[31]~2_combout\);

-- Location: LCCOMB_X23_Y13_N24
\FALLING_BLOCK_F[31]~37\ : cycloneiii_lcell_comb
-- Equation(s):
-- \FALLING_BLOCK_F[31]~37_combout\ = (\FALLING_BLOCK_F[31]~2_combout\ & (\Add0~62_combout\ & ((\FALLING_BLOCK_F[27]~0_combout\) # (FALLING_BLOCK_F(31))))) # (!\FALLING_BLOCK_F[31]~2_combout\ & (((FALLING_BLOCK_F(31)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~62_combout\,
	datab => \FALLING_BLOCK_F[27]~0_combout\,
	datac => FALLING_BLOCK_F(31),
	datad => \FALLING_BLOCK_F[31]~2_combout\,
	combout => \FALLING_BLOCK_F[31]~37_combout\);

-- Location: FF_X23_Y13_N25
\FALLING_BLOCK_F[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK|TEMPORAL~clkctrl_outclk\,
	d => \FALLING_BLOCK_F[31]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => FALLING_BLOCK_F(31));

-- Location: LCCOMB_X22_Y13_N0
\FALLING_BLOCK_I[0]~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \FALLING_BLOCK_I[0]~32_combout\ = FALLING_BLOCK_I(0) $ (VCC)
-- \FALLING_BLOCK_I[0]~33\ = CARRY(FALLING_BLOCK_I(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => FALLING_BLOCK_I(0),
	datad => VCC,
	combout => \FALLING_BLOCK_I[0]~32_combout\,
	cout => \FALLING_BLOCK_I[0]~33\);

-- Location: LCCOMB_X23_Y13_N28
\FALLING_BLOCK_I[4]~52\ : cycloneiii_lcell_comb
-- Equation(s):
-- \FALLING_BLOCK_I[4]~52_combout\ = (\FALLING_BLOCK_F[10]~1_combout\ & ((FALLING_BLOCK_F(31)) # ((\LessThan31~10_combout\) # (!\FALLING_BLOCK_F[27]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => FALLING_BLOCK_F(31),
	datab => \FALLING_BLOCK_F[27]~0_combout\,
	datac => \LessThan31~10_combout\,
	datad => \FALLING_BLOCK_F[10]~1_combout\,
	combout => \FALLING_BLOCK_I[4]~52_combout\);

-- Location: LCCOMB_X23_Y13_N30
\FALLING_BLOCK_I[10]~53\ : cycloneiii_lcell_comb
-- Equation(s):
-- \FALLING_BLOCK_I[10]~53_combout\ = (!FALLING_BLOCK_F(31) & (\FALLING_BLOCK_F[31]~2_combout\ & ((!\LessThan31~10_combout\) # (!\LessThan31~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan31~7_combout\,
	datab => FALLING_BLOCK_F(31),
	datac => \LessThan31~10_combout\,
	datad => \FALLING_BLOCK_F[31]~2_combout\,
	combout => \FALLING_BLOCK_I[10]~53_combout\);

-- Location: FF_X22_Y13_N1
\FALLING_BLOCK_I[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK|TEMPORAL~clkctrl_outclk\,
	d => \FALLING_BLOCK_I[0]~32_combout\,
	sclr => \FALLING_BLOCK_I[4]~52_combout\,
	ena => \FALLING_BLOCK_I[10]~53_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => FALLING_BLOCK_I(0));

-- Location: LCCOMB_X22_Y13_N2
\FALLING_BLOCK_I[1]~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \FALLING_BLOCK_I[1]~34_combout\ = (FALLING_BLOCK_I(1) & (!\FALLING_BLOCK_I[0]~33\)) # (!FALLING_BLOCK_I(1) & ((\FALLING_BLOCK_I[0]~33\) # (GND)))
-- \FALLING_BLOCK_I[1]~35\ = CARRY((!\FALLING_BLOCK_I[0]~33\) # (!FALLING_BLOCK_I(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => FALLING_BLOCK_I(1),
	datad => VCC,
	cin => \FALLING_BLOCK_I[0]~33\,
	combout => \FALLING_BLOCK_I[1]~34_combout\,
	cout => \FALLING_BLOCK_I[1]~35\);

-- Location: FF_X22_Y13_N3
\FALLING_BLOCK_I[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK|TEMPORAL~clkctrl_outclk\,
	d => \FALLING_BLOCK_I[1]~34_combout\,
	sclr => \FALLING_BLOCK_I[4]~52_combout\,
	ena => \FALLING_BLOCK_I[10]~53_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => FALLING_BLOCK_I(1));

-- Location: LCCOMB_X22_Y13_N4
\FALLING_BLOCK_I[2]~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \FALLING_BLOCK_I[2]~36_combout\ = (FALLING_BLOCK_I(2) & ((GND) # (!\FALLING_BLOCK_I[1]~35\))) # (!FALLING_BLOCK_I(2) & (\FALLING_BLOCK_I[1]~35\ $ (GND)))
-- \FALLING_BLOCK_I[2]~37\ = CARRY((FALLING_BLOCK_I(2)) # (!\FALLING_BLOCK_I[1]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => FALLING_BLOCK_I(2),
	datad => VCC,
	cin => \FALLING_BLOCK_I[1]~35\,
	combout => \FALLING_BLOCK_I[2]~36_combout\,
	cout => \FALLING_BLOCK_I[2]~37\);

-- Location: FF_X22_Y13_N5
\FALLING_BLOCK_I[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK|TEMPORAL~clkctrl_outclk\,
	d => \FALLING_BLOCK_I[2]~36_combout\,
	sclr => \FALLING_BLOCK_I[4]~52_combout\,
	ena => \FALLING_BLOCK_I[10]~53_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => FALLING_BLOCK_I(2));

-- Location: LCCOMB_X22_Y13_N6
\FALLING_BLOCK_I[3]~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \FALLING_BLOCK_I[3]~38_combout\ = (FALLING_BLOCK_I(3) & (!\FALLING_BLOCK_I[2]~37\)) # (!FALLING_BLOCK_I(3) & ((\FALLING_BLOCK_I[2]~37\) # (GND)))
-- \FALLING_BLOCK_I[3]~39\ = CARRY((!\FALLING_BLOCK_I[2]~37\) # (!FALLING_BLOCK_I(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => FALLING_BLOCK_I(3),
	datad => VCC,
	cin => \FALLING_BLOCK_I[2]~37\,
	combout => \FALLING_BLOCK_I[3]~38_combout\,
	cout => \FALLING_BLOCK_I[3]~39\);

-- Location: LCCOMB_X22_Y13_N8
\FALLING_BLOCK_I[4]~40\ : cycloneiii_lcell_comb
-- Equation(s):
-- \FALLING_BLOCK_I[4]~40_combout\ = (FALLING_BLOCK_I(4) & (\FALLING_BLOCK_I[3]~39\ $ (GND))) # (!FALLING_BLOCK_I(4) & (!\FALLING_BLOCK_I[3]~39\ & VCC))
-- \FALLING_BLOCK_I[4]~41\ = CARRY((FALLING_BLOCK_I(4) & !\FALLING_BLOCK_I[3]~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => FALLING_BLOCK_I(4),
	datad => VCC,
	cin => \FALLING_BLOCK_I[3]~39\,
	combout => \FALLING_BLOCK_I[4]~40_combout\,
	cout => \FALLING_BLOCK_I[4]~41\);

-- Location: FF_X22_Y13_N9
\FALLING_BLOCK_I[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK|TEMPORAL~clkctrl_outclk\,
	d => \FALLING_BLOCK_I[4]~40_combout\,
	sclr => \FALLING_BLOCK_I[4]~52_combout\,
	ena => \FALLING_BLOCK_I[10]~53_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => FALLING_BLOCK_I(4));

-- Location: LCCOMB_X22_Y13_N10
\FALLING_BLOCK_I[5]~42\ : cycloneiii_lcell_comb
-- Equation(s):
-- \FALLING_BLOCK_I[5]~42_combout\ = (FALLING_BLOCK_I(5) & (!\FALLING_BLOCK_I[4]~41\)) # (!FALLING_BLOCK_I(5) & ((\FALLING_BLOCK_I[4]~41\) # (GND)))
-- \FALLING_BLOCK_I[5]~43\ = CARRY((!\FALLING_BLOCK_I[4]~41\) # (!FALLING_BLOCK_I(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => FALLING_BLOCK_I(5),
	datad => VCC,
	cin => \FALLING_BLOCK_I[4]~41\,
	combout => \FALLING_BLOCK_I[5]~42_combout\,
	cout => \FALLING_BLOCK_I[5]~43\);

-- Location: LCCOMB_X22_Y13_N14
\FALLING_BLOCK_I[7]~46\ : cycloneiii_lcell_comb
-- Equation(s):
-- \FALLING_BLOCK_I[7]~46_combout\ = (FALLING_BLOCK_I(7) & (!\FALLING_BLOCK_I[6]~45\)) # (!FALLING_BLOCK_I(7) & ((\FALLING_BLOCK_I[6]~45\) # (GND)))
-- \FALLING_BLOCK_I[7]~47\ = CARRY((!\FALLING_BLOCK_I[6]~45\) # (!FALLING_BLOCK_I(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => FALLING_BLOCK_I(7),
	datad => VCC,
	cin => \FALLING_BLOCK_I[6]~45\,
	combout => \FALLING_BLOCK_I[7]~46_combout\,
	cout => \FALLING_BLOCK_I[7]~47\);

-- Location: FF_X22_Y13_N15
\FALLING_BLOCK_I[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK|TEMPORAL~clkctrl_outclk\,
	d => \FALLING_BLOCK_I[7]~46_combout\,
	sclr => \FALLING_BLOCK_I[4]~52_combout\,
	ena => \FALLING_BLOCK_I[10]~53_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => FALLING_BLOCK_I(7));

-- Location: LCCOMB_X22_Y13_N16
\FALLING_BLOCK_I[8]~48\ : cycloneiii_lcell_comb
-- Equation(s):
-- \FALLING_BLOCK_I[8]~48_combout\ = (FALLING_BLOCK_I(8) & (\FALLING_BLOCK_I[7]~47\ $ (GND))) # (!FALLING_BLOCK_I(8) & (!\FALLING_BLOCK_I[7]~47\ & VCC))
-- \FALLING_BLOCK_I[8]~49\ = CARRY((FALLING_BLOCK_I(8) & !\FALLING_BLOCK_I[7]~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => FALLING_BLOCK_I(8),
	datad => VCC,
	cin => \FALLING_BLOCK_I[7]~47\,
	combout => \FALLING_BLOCK_I[8]~48_combout\,
	cout => \FALLING_BLOCK_I[8]~49\);

-- Location: FF_X22_Y13_N17
\FALLING_BLOCK_I[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK|TEMPORAL~clkctrl_outclk\,
	d => \FALLING_BLOCK_I[8]~48_combout\,
	sclr => \FALLING_BLOCK_I[4]~52_combout\,
	ena => \FALLING_BLOCK_I[10]~53_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => FALLING_BLOCK_I(8));

-- Location: LCCOMB_X22_Y13_N18
\FALLING_BLOCK_I[9]~50\ : cycloneiii_lcell_comb
-- Equation(s):
-- \FALLING_BLOCK_I[9]~50_combout\ = (FALLING_BLOCK_I(9) & (!\FALLING_BLOCK_I[8]~49\)) # (!FALLING_BLOCK_I(9) & ((\FALLING_BLOCK_I[8]~49\) # (GND)))
-- \FALLING_BLOCK_I[9]~51\ = CARRY((!\FALLING_BLOCK_I[8]~49\) # (!FALLING_BLOCK_I(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => FALLING_BLOCK_I(9),
	datad => VCC,
	cin => \FALLING_BLOCK_I[8]~49\,
	combout => \FALLING_BLOCK_I[9]~50_combout\,
	cout => \FALLING_BLOCK_I[9]~51\);

-- Location: FF_X22_Y13_N19
\FALLING_BLOCK_I[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK|TEMPORAL~clkctrl_outclk\,
	d => \FALLING_BLOCK_I[9]~50_combout\,
	sclr => \FALLING_BLOCK_I[4]~52_combout\,
	ena => \FALLING_BLOCK_I[10]~53_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => FALLING_BLOCK_I(9));

-- Location: LCCOMB_X22_Y13_N20
\FALLING_BLOCK_I[10]~54\ : cycloneiii_lcell_comb
-- Equation(s):
-- \FALLING_BLOCK_I[10]~54_combout\ = (FALLING_BLOCK_I(10) & (\FALLING_BLOCK_I[9]~51\ $ (GND))) # (!FALLING_BLOCK_I(10) & (!\FALLING_BLOCK_I[9]~51\ & VCC))
-- \FALLING_BLOCK_I[10]~55\ = CARRY((FALLING_BLOCK_I(10) & !\FALLING_BLOCK_I[9]~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => FALLING_BLOCK_I(10),
	datad => VCC,
	cin => \FALLING_BLOCK_I[9]~51\,
	combout => \FALLING_BLOCK_I[10]~54_combout\,
	cout => \FALLING_BLOCK_I[10]~55\);

-- Location: FF_X22_Y13_N21
\FALLING_BLOCK_I[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK|TEMPORAL~clkctrl_outclk\,
	d => \FALLING_BLOCK_I[10]~54_combout\,
	sclr => \FALLING_BLOCK_I[4]~52_combout\,
	ena => \FALLING_BLOCK_I[10]~53_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => FALLING_BLOCK_I(10));

-- Location: LCCOMB_X22_Y13_N24
\FALLING_BLOCK_I[12]~58\ : cycloneiii_lcell_comb
-- Equation(s):
-- \FALLING_BLOCK_I[12]~58_combout\ = (FALLING_BLOCK_I(12) & (\FALLING_BLOCK_I[11]~57\ $ (GND))) # (!FALLING_BLOCK_I(12) & (!\FALLING_BLOCK_I[11]~57\ & VCC))
-- \FALLING_BLOCK_I[12]~59\ = CARRY((FALLING_BLOCK_I(12) & !\FALLING_BLOCK_I[11]~57\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => FALLING_BLOCK_I(12),
	datad => VCC,
	cin => \FALLING_BLOCK_I[11]~57\,
	combout => \FALLING_BLOCK_I[12]~58_combout\,
	cout => \FALLING_BLOCK_I[12]~59\);

-- Location: FF_X22_Y13_N25
\FALLING_BLOCK_I[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK|TEMPORAL~clkctrl_outclk\,
	d => \FALLING_BLOCK_I[12]~58_combout\,
	sclr => \FALLING_BLOCK_I[4]~52_combout\,
	ena => \FALLING_BLOCK_I[10]~53_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => FALLING_BLOCK_I(12));

-- Location: LCCOMB_X22_Y13_N28
\FALLING_BLOCK_I[14]~62\ : cycloneiii_lcell_comb
-- Equation(s):
-- \FALLING_BLOCK_I[14]~62_combout\ = (FALLING_BLOCK_I(14) & (\FALLING_BLOCK_I[13]~61\ $ (GND))) # (!FALLING_BLOCK_I(14) & (!\FALLING_BLOCK_I[13]~61\ & VCC))
-- \FALLING_BLOCK_I[14]~63\ = CARRY((FALLING_BLOCK_I(14) & !\FALLING_BLOCK_I[13]~61\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => FALLING_BLOCK_I(14),
	datad => VCC,
	cin => \FALLING_BLOCK_I[13]~61\,
	combout => \FALLING_BLOCK_I[14]~62_combout\,
	cout => \FALLING_BLOCK_I[14]~63\);

-- Location: FF_X22_Y13_N29
\FALLING_BLOCK_I[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK|TEMPORAL~clkctrl_outclk\,
	d => \FALLING_BLOCK_I[14]~62_combout\,
	sclr => \FALLING_BLOCK_I[4]~52_combout\,
	ena => \FALLING_BLOCK_I[10]~53_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => FALLING_BLOCK_I(14));

-- Location: LCCOMB_X22_Y12_N0
\FALLING_BLOCK_I[16]~66\ : cycloneiii_lcell_comb
-- Equation(s):
-- \FALLING_BLOCK_I[16]~66_combout\ = (FALLING_BLOCK_I(16) & (\FALLING_BLOCK_I[15]~65\ $ (GND))) # (!FALLING_BLOCK_I(16) & (!\FALLING_BLOCK_I[15]~65\ & VCC))
-- \FALLING_BLOCK_I[16]~67\ = CARRY((FALLING_BLOCK_I(16) & !\FALLING_BLOCK_I[15]~65\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => FALLING_BLOCK_I(16),
	datad => VCC,
	cin => \FALLING_BLOCK_I[15]~65\,
	combout => \FALLING_BLOCK_I[16]~66_combout\,
	cout => \FALLING_BLOCK_I[16]~67\);

-- Location: FF_X22_Y12_N1
\FALLING_BLOCK_I[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK|TEMPORAL~clkctrl_outclk\,
	d => \FALLING_BLOCK_I[16]~66_combout\,
	sclr => \FALLING_BLOCK_I[4]~52_combout\,
	ena => \FALLING_BLOCK_I[10]~53_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => FALLING_BLOCK_I(16));

-- Location: LCCOMB_X22_Y12_N2
\FALLING_BLOCK_I[17]~68\ : cycloneiii_lcell_comb
-- Equation(s):
-- \FALLING_BLOCK_I[17]~68_combout\ = (FALLING_BLOCK_I(17) & (!\FALLING_BLOCK_I[16]~67\)) # (!FALLING_BLOCK_I(17) & ((\FALLING_BLOCK_I[16]~67\) # (GND)))
-- \FALLING_BLOCK_I[17]~69\ = CARRY((!\FALLING_BLOCK_I[16]~67\) # (!FALLING_BLOCK_I(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => FALLING_BLOCK_I(17),
	datad => VCC,
	cin => \FALLING_BLOCK_I[16]~67\,
	combout => \FALLING_BLOCK_I[17]~68_combout\,
	cout => \FALLING_BLOCK_I[17]~69\);

-- Location: FF_X22_Y12_N3
\FALLING_BLOCK_I[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK|TEMPORAL~clkctrl_outclk\,
	d => \FALLING_BLOCK_I[17]~68_combout\,
	sclr => \FALLING_BLOCK_I[4]~52_combout\,
	ena => \FALLING_BLOCK_I[10]~53_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => FALLING_BLOCK_I(17));

-- Location: LCCOMB_X22_Y12_N4
\FALLING_BLOCK_I[18]~70\ : cycloneiii_lcell_comb
-- Equation(s):
-- \FALLING_BLOCK_I[18]~70_combout\ = (FALLING_BLOCK_I(18) & (\FALLING_BLOCK_I[17]~69\ $ (GND))) # (!FALLING_BLOCK_I(18) & (!\FALLING_BLOCK_I[17]~69\ & VCC))
-- \FALLING_BLOCK_I[18]~71\ = CARRY((FALLING_BLOCK_I(18) & !\FALLING_BLOCK_I[17]~69\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => FALLING_BLOCK_I(18),
	datad => VCC,
	cin => \FALLING_BLOCK_I[17]~69\,
	combout => \FALLING_BLOCK_I[18]~70_combout\,
	cout => \FALLING_BLOCK_I[18]~71\);

-- Location: FF_X22_Y12_N5
\FALLING_BLOCK_I[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK|TEMPORAL~clkctrl_outclk\,
	d => \FALLING_BLOCK_I[18]~70_combout\,
	sclr => \FALLING_BLOCK_I[4]~52_combout\,
	ena => \FALLING_BLOCK_I[10]~53_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => FALLING_BLOCK_I(18));

-- Location: LCCOMB_X22_Y12_N8
\FALLING_BLOCK_I[20]~74\ : cycloneiii_lcell_comb
-- Equation(s):
-- \FALLING_BLOCK_I[20]~74_combout\ = (FALLING_BLOCK_I(20) & (\FALLING_BLOCK_I[19]~73\ $ (GND))) # (!FALLING_BLOCK_I(20) & (!\FALLING_BLOCK_I[19]~73\ & VCC))
-- \FALLING_BLOCK_I[20]~75\ = CARRY((FALLING_BLOCK_I(20) & !\FALLING_BLOCK_I[19]~73\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => FALLING_BLOCK_I(20),
	datad => VCC,
	cin => \FALLING_BLOCK_I[19]~73\,
	combout => \FALLING_BLOCK_I[20]~74_combout\,
	cout => \FALLING_BLOCK_I[20]~75\);

-- Location: FF_X22_Y12_N9
\FALLING_BLOCK_I[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK|TEMPORAL~clkctrl_outclk\,
	d => \FALLING_BLOCK_I[20]~74_combout\,
	sclr => \FALLING_BLOCK_I[4]~52_combout\,
	ena => \FALLING_BLOCK_I[10]~53_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => FALLING_BLOCK_I(20));

-- Location: LCCOMB_X22_Y12_N14
\FALLING_BLOCK_I[23]~80\ : cycloneiii_lcell_comb
-- Equation(s):
-- \FALLING_BLOCK_I[23]~80_combout\ = (FALLING_BLOCK_I(23) & (!\FALLING_BLOCK_I[22]~79\)) # (!FALLING_BLOCK_I(23) & ((\FALLING_BLOCK_I[22]~79\) # (GND)))
-- \FALLING_BLOCK_I[23]~81\ = CARRY((!\FALLING_BLOCK_I[22]~79\) # (!FALLING_BLOCK_I(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => FALLING_BLOCK_I(23),
	datad => VCC,
	cin => \FALLING_BLOCK_I[22]~79\,
	combout => \FALLING_BLOCK_I[23]~80_combout\,
	cout => \FALLING_BLOCK_I[23]~81\);

-- Location: FF_X22_Y12_N15
\FALLING_BLOCK_I[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK|TEMPORAL~clkctrl_outclk\,
	d => \FALLING_BLOCK_I[23]~80_combout\,
	sclr => \FALLING_BLOCK_I[4]~52_combout\,
	ena => \FALLING_BLOCK_I[10]~53_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => FALLING_BLOCK_I(23));

-- Location: LCCOMB_X22_Y12_N16
\FALLING_BLOCK_I[24]~82\ : cycloneiii_lcell_comb
-- Equation(s):
-- \FALLING_BLOCK_I[24]~82_combout\ = (FALLING_BLOCK_I(24) & (\FALLING_BLOCK_I[23]~81\ $ (GND))) # (!FALLING_BLOCK_I(24) & (!\FALLING_BLOCK_I[23]~81\ & VCC))
-- \FALLING_BLOCK_I[24]~83\ = CARRY((FALLING_BLOCK_I(24) & !\FALLING_BLOCK_I[23]~81\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => FALLING_BLOCK_I(24),
	datad => VCC,
	cin => \FALLING_BLOCK_I[23]~81\,
	combout => \FALLING_BLOCK_I[24]~82_combout\,
	cout => \FALLING_BLOCK_I[24]~83\);

-- Location: FF_X22_Y12_N17
\FALLING_BLOCK_I[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK|TEMPORAL~clkctrl_outclk\,
	d => \FALLING_BLOCK_I[24]~82_combout\,
	sclr => \FALLING_BLOCK_I[4]~52_combout\,
	ena => \FALLING_BLOCK_I[10]~53_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => FALLING_BLOCK_I(24));

-- Location: LCCOMB_X22_Y12_N18
\FALLING_BLOCK_I[25]~84\ : cycloneiii_lcell_comb
-- Equation(s):
-- \FALLING_BLOCK_I[25]~84_combout\ = (FALLING_BLOCK_I(25) & (!\FALLING_BLOCK_I[24]~83\)) # (!FALLING_BLOCK_I(25) & ((\FALLING_BLOCK_I[24]~83\) # (GND)))
-- \FALLING_BLOCK_I[25]~85\ = CARRY((!\FALLING_BLOCK_I[24]~83\) # (!FALLING_BLOCK_I(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => FALLING_BLOCK_I(25),
	datad => VCC,
	cin => \FALLING_BLOCK_I[24]~83\,
	combout => \FALLING_BLOCK_I[25]~84_combout\,
	cout => \FALLING_BLOCK_I[25]~85\);

-- Location: FF_X22_Y12_N19
\FALLING_BLOCK_I[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK|TEMPORAL~clkctrl_outclk\,
	d => \FALLING_BLOCK_I[25]~84_combout\,
	sclr => \FALLING_BLOCK_I[4]~52_combout\,
	ena => \FALLING_BLOCK_I[10]~53_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => FALLING_BLOCK_I(25));

-- Location: LCCOMB_X22_Y12_N20
\FALLING_BLOCK_I[26]~86\ : cycloneiii_lcell_comb
-- Equation(s):
-- \FALLING_BLOCK_I[26]~86_combout\ = (FALLING_BLOCK_I(26) & (\FALLING_BLOCK_I[25]~85\ $ (GND))) # (!FALLING_BLOCK_I(26) & (!\FALLING_BLOCK_I[25]~85\ & VCC))
-- \FALLING_BLOCK_I[26]~87\ = CARRY((FALLING_BLOCK_I(26) & !\FALLING_BLOCK_I[25]~85\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => FALLING_BLOCK_I(26),
	datad => VCC,
	cin => \FALLING_BLOCK_I[25]~85\,
	combout => \FALLING_BLOCK_I[26]~86_combout\,
	cout => \FALLING_BLOCK_I[26]~87\);

-- Location: FF_X22_Y12_N21
\FALLING_BLOCK_I[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK|TEMPORAL~clkctrl_outclk\,
	d => \FALLING_BLOCK_I[26]~86_combout\,
	sclr => \FALLING_BLOCK_I[4]~52_combout\,
	ena => \FALLING_BLOCK_I[10]~53_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => FALLING_BLOCK_I(26));

-- Location: LCCOMB_X22_Y12_N22
\FALLING_BLOCK_I[27]~88\ : cycloneiii_lcell_comb
-- Equation(s):
-- \FALLING_BLOCK_I[27]~88_combout\ = (FALLING_BLOCK_I(27) & (!\FALLING_BLOCK_I[26]~87\)) # (!FALLING_BLOCK_I(27) & ((\FALLING_BLOCK_I[26]~87\) # (GND)))
-- \FALLING_BLOCK_I[27]~89\ = CARRY((!\FALLING_BLOCK_I[26]~87\) # (!FALLING_BLOCK_I(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => FALLING_BLOCK_I(27),
	datad => VCC,
	cin => \FALLING_BLOCK_I[26]~87\,
	combout => \FALLING_BLOCK_I[27]~88_combout\,
	cout => \FALLING_BLOCK_I[27]~89\);

-- Location: FF_X22_Y12_N23
\FALLING_BLOCK_I[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK|TEMPORAL~clkctrl_outclk\,
	d => \FALLING_BLOCK_I[27]~88_combout\,
	sclr => \FALLING_BLOCK_I[4]~52_combout\,
	ena => \FALLING_BLOCK_I[10]~53_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => FALLING_BLOCK_I(27));

-- Location: LCCOMB_X22_Y12_N24
\FALLING_BLOCK_I[28]~90\ : cycloneiii_lcell_comb
-- Equation(s):
-- \FALLING_BLOCK_I[28]~90_combout\ = (FALLING_BLOCK_I(28) & (\FALLING_BLOCK_I[27]~89\ $ (GND))) # (!FALLING_BLOCK_I(28) & (!\FALLING_BLOCK_I[27]~89\ & VCC))
-- \FALLING_BLOCK_I[28]~91\ = CARRY((FALLING_BLOCK_I(28) & !\FALLING_BLOCK_I[27]~89\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => FALLING_BLOCK_I(28),
	datad => VCC,
	cin => \FALLING_BLOCK_I[27]~89\,
	combout => \FALLING_BLOCK_I[28]~90_combout\,
	cout => \FALLING_BLOCK_I[28]~91\);

-- Location: FF_X22_Y12_N25
\FALLING_BLOCK_I[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK|TEMPORAL~clkctrl_outclk\,
	d => \FALLING_BLOCK_I[28]~90_combout\,
	sclr => \FALLING_BLOCK_I[4]~52_combout\,
	ena => \FALLING_BLOCK_I[10]~53_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => FALLING_BLOCK_I(28));

-- Location: LCCOMB_X23_Y12_N0
\LessThan34~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan34~0_combout\ = (FALLING_BLOCK_I(25)) # ((FALLING_BLOCK_I(26)) # ((FALLING_BLOCK_I(27)) # (FALLING_BLOCK_I(28))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => FALLING_BLOCK_I(25),
	datab => FALLING_BLOCK_I(26),
	datac => FALLING_BLOCK_I(27),
	datad => FALLING_BLOCK_I(28),
	combout => \LessThan34~0_combout\);

-- Location: FF_X22_Y13_N7
\FALLING_BLOCK_I[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK|TEMPORAL~clkctrl_outclk\,
	d => \FALLING_BLOCK_I[3]~38_combout\,
	sclr => \FALLING_BLOCK_I[4]~52_combout\,
	ena => \FALLING_BLOCK_I[10]~53_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => FALLING_BLOCK_I(3));

-- Location: LCCOMB_X23_Y15_N28
\LessThan34~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan34~7_combout\ = (FALLING_BLOCK_I(1) & (FALLING_BLOCK_I(0) & (FALLING_BLOCK_I(3) & FALLING_BLOCK_I(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => FALLING_BLOCK_I(1),
	datab => FALLING_BLOCK_I(0),
	datac => FALLING_BLOCK_I(3),
	datad => FALLING_BLOCK_I(2),
	combout => \LessThan34~7_combout\);

-- Location: FF_X22_Y13_N11
\FALLING_BLOCK_I[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK|TEMPORAL~clkctrl_outclk\,
	d => \FALLING_BLOCK_I[5]~42_combout\,
	sclr => \FALLING_BLOCK_I[4]~52_combout\,
	ena => \FALLING_BLOCK_I[10]~53_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => FALLING_BLOCK_I(5));

-- Location: LCCOMB_X23_Y15_N22
\LessThan34~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan34~8_combout\ = (FALLING_BLOCK_I(6) & ((FALLING_BLOCK_I(5)) # ((\LessThan34~7_combout\ & FALLING_BLOCK_I(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => FALLING_BLOCK_I(6),
	datab => \LessThan34~7_combout\,
	datac => FALLING_BLOCK_I(4),
	datad => FALLING_BLOCK_I(5),
	combout => \LessThan34~8_combout\);

-- Location: LCCOMB_X23_Y15_N24
\LessThan34~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan34~9_combout\ = (\LessThan34~6_combout\) # ((FALLING_BLOCK_I(8) & ((\LessThan34~8_combout\) # (FALLING_BLOCK_I(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan34~6_combout\,
	datab => FALLING_BLOCK_I(8),
	datac => \LessThan34~8_combout\,
	datad => FALLING_BLOCK_I(7),
	combout => \LessThan34~9_combout\);

-- Location: LCCOMB_X22_Y12_N26
\FALLING_BLOCK_I[29]~92\ : cycloneiii_lcell_comb
-- Equation(s):
-- \FALLING_BLOCK_I[29]~92_combout\ = (FALLING_BLOCK_I(29) & (!\FALLING_BLOCK_I[28]~91\)) # (!FALLING_BLOCK_I(29) & ((\FALLING_BLOCK_I[28]~91\) # (GND)))
-- \FALLING_BLOCK_I[29]~93\ = CARRY((!\FALLING_BLOCK_I[28]~91\) # (!FALLING_BLOCK_I(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => FALLING_BLOCK_I(29),
	datad => VCC,
	cin => \FALLING_BLOCK_I[28]~91\,
	combout => \FALLING_BLOCK_I[29]~92_combout\,
	cout => \FALLING_BLOCK_I[29]~93\);

-- Location: FF_X22_Y12_N27
\FALLING_BLOCK_I[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK|TEMPORAL~clkctrl_outclk\,
	d => \FALLING_BLOCK_I[29]~92_combout\,
	sclr => \FALLING_BLOCK_I[4]~52_combout\,
	ena => \FALLING_BLOCK_I[10]~53_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => FALLING_BLOCK_I(29));

-- Location: FF_X22_Y12_N29
\FALLING_BLOCK_I[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK|TEMPORAL~clkctrl_outclk\,
	d => \FALLING_BLOCK_I[30]~94_combout\,
	sclr => \FALLING_BLOCK_I[4]~52_combout\,
	ena => \FALLING_BLOCK_I[10]~53_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => FALLING_BLOCK_I(30));

-- Location: LCCOMB_X23_Y12_N6
\LessThan34~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan34~1_combout\ = (FALLING_BLOCK_I(29)) # (FALLING_BLOCK_I(30))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => FALLING_BLOCK_I(29),
	datad => FALLING_BLOCK_I(30),
	combout => \LessThan34~1_combout\);

-- Location: LCCOMB_X23_Y13_N18
\FALLING_BLOCK_F[10]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \FALLING_BLOCK_F[10]~1_combout\ = (!FALLING_BLOCK_I(31) & ((\LessThan34~0_combout\) # ((\LessThan34~9_combout\) # (\LessThan34~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => FALLING_BLOCK_I(31),
	datab => \LessThan34~0_combout\,
	datac => \LessThan34~9_combout\,
	datad => \LessThan34~1_combout\,
	combout => \FALLING_BLOCK_F[10]~1_combout\);

-- Location: LCCOMB_X23_Y13_N26
\FALLING_BLOCK_F[10]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \FALLING_BLOCK_F[10]~5_combout\ = (\FALLING_BLOCK_F[31]~2_combout\ & ((FALLING_BLOCK_F(31)) # ((\FALLING_BLOCK_F[27]~0_combout\) # (\FALLING_BLOCK_F[10]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FALLING_BLOCK_F[31]~2_combout\,
	datab => FALLING_BLOCK_F(31),
	datac => \FALLING_BLOCK_F[27]~0_combout\,
	datad => \FALLING_BLOCK_F[10]~1_combout\,
	combout => \FALLING_BLOCK_F[10]~5_combout\);

-- Location: FF_X24_Y14_N19
\FALLING_BLOCK_F[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK|TEMPORAL~clkctrl_outclk\,
	asdata => \FALLING_BLOCK_F~12_combout\,
	sload => VCC,
	ena => \FALLING_BLOCK_F[10]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => FALLING_BLOCK_F(2));

-- Location: LCCOMB_X24_Y14_N0
\Add0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = FALLING_BLOCK_F(0) $ (VCC)
-- \Add0~1\ = CARRY(FALLING_BLOCK_F(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => FALLING_BLOCK_F(0),
	datad => VCC,
	combout => \Add0~0_combout\,
	cout => \Add0~1\);

-- Location: LCCOMB_X23_Y14_N30
\FALLING_BLOCK_F~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \FALLING_BLOCK_F~14_combout\ = (\Add0~0_combout\ & !\FALLING_BLOCK_F[27]~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~0_combout\,
	datad => \FALLING_BLOCK_F[27]~3_combout\,
	combout => \FALLING_BLOCK_F~14_combout\);

-- Location: FF_X24_Y14_N1
\FALLING_BLOCK_F[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK|TEMPORAL~clkctrl_outclk\,
	asdata => \FALLING_BLOCK_F~14_combout\,
	sload => VCC,
	ena => \FALLING_BLOCK_F[10]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => FALLING_BLOCK_F(0));

-- Location: LCCOMB_X24_Y14_N2
\Add0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~2_combout\ = (FALLING_BLOCK_F(1) & (!\Add0~1\)) # (!FALLING_BLOCK_F(1) & ((\Add0~1\) # (GND)))
-- \Add0~3\ = CARRY((!\Add0~1\) # (!FALLING_BLOCK_F(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => FALLING_BLOCK_F(1),
	datad => VCC,
	cin => \Add0~1\,
	combout => \Add0~2_combout\,
	cout => \Add0~3\);

-- Location: LCCOMB_X23_Y16_N8
\FALLING_BLOCK_F~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \FALLING_BLOCK_F~13_combout\ = (\Add0~2_combout\ & !\FALLING_BLOCK_F[27]~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~2_combout\,
	datad => \FALLING_BLOCK_F[27]~3_combout\,
	combout => \FALLING_BLOCK_F~13_combout\);

-- Location: FF_X24_Y14_N15
\FALLING_BLOCK_F[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK|TEMPORAL~clkctrl_outclk\,
	asdata => \FALLING_BLOCK_F~13_combout\,
	sload => VCC,
	ena => \FALLING_BLOCK_F[10]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => FALLING_BLOCK_F(1));

-- Location: LCCOMB_X24_Y14_N6
\Add0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~6_combout\ = (FALLING_BLOCK_F(3) & (!\Add0~5\)) # (!FALLING_BLOCK_F(3) & ((\Add0~5\) # (GND)))
-- \Add0~7\ = CARRY((!\Add0~5\) # (!FALLING_BLOCK_F(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => FALLING_BLOCK_F(3),
	datad => VCC,
	cin => \Add0~5\,
	combout => \Add0~6_combout\,
	cout => \Add0~7\);

-- Location: LCCOMB_X23_Y16_N22
\FALLING_BLOCK_F~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \FALLING_BLOCK_F~11_combout\ = (\Add0~6_combout\ & !\FALLING_BLOCK_F[27]~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~6_combout\,
	datad => \FALLING_BLOCK_F[27]~3_combout\,
	combout => \FALLING_BLOCK_F~11_combout\);

-- Location: FF_X24_Y14_N17
\FALLING_BLOCK_F[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK|TEMPORAL~clkctrl_outclk\,
	asdata => \FALLING_BLOCK_F~11_combout\,
	sload => VCC,
	ena => \FALLING_BLOCK_F[10]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => FALLING_BLOCK_F(3));

-- Location: LCCOMB_X24_Y14_N8
\Add0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~8_combout\ = (FALLING_BLOCK_F(4) & (\Add0~7\ $ (GND))) # (!FALLING_BLOCK_F(4) & (!\Add0~7\ & VCC))
-- \Add0~9\ = CARRY((FALLING_BLOCK_F(4) & !\Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => FALLING_BLOCK_F(4),
	datad => VCC,
	cin => \Add0~7\,
	combout => \Add0~8_combout\,
	cout => \Add0~9\);

-- Location: LCCOMB_X23_Y15_N26
\FALLING_BLOCK_F~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \FALLING_BLOCK_F~10_combout\ = (!\FALLING_BLOCK_F[27]~3_combout\ & \Add0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FALLING_BLOCK_F[27]~3_combout\,
	datad => \Add0~8_combout\,
	combout => \FALLING_BLOCK_F~10_combout\);

-- Location: FF_X24_Y15_N9
\FALLING_BLOCK_F[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK|TEMPORAL~clkctrl_outclk\,
	asdata => \FALLING_BLOCK_F~10_combout\,
	sload => VCC,
	ena => \FALLING_BLOCK_F[10]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => FALLING_BLOCK_F(4));

-- Location: LCCOMB_X24_Y14_N10
\Add0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~10_combout\ = (FALLING_BLOCK_F(5) & (!\Add0~9\)) # (!FALLING_BLOCK_F(5) & ((\Add0~9\) # (GND)))
-- \Add0~11\ = CARRY((!\Add0~9\) # (!FALLING_BLOCK_F(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => FALLING_BLOCK_F(5),
	datad => VCC,
	cin => \Add0~9\,
	combout => \Add0~10_combout\,
	cout => \Add0~11\);

-- Location: LCCOMB_X24_Y16_N18
\FALLING_BLOCK_F~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \FALLING_BLOCK_F~9_combout\ = (\Add0~10_combout\ & !\FALLING_BLOCK_F[27]~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~10_combout\,
	datad => \FALLING_BLOCK_F[27]~3_combout\,
	combout => \FALLING_BLOCK_F~9_combout\);

-- Location: FF_X24_Y16_N19
\FALLING_BLOCK_F[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK|TEMPORAL~clkctrl_outclk\,
	d => \FALLING_BLOCK_F~9_combout\,
	ena => \FALLING_BLOCK_F[10]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => FALLING_BLOCK_F(5));

-- Location: LCCOMB_X24_Y14_N12
\Add0~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~12_combout\ = (FALLING_BLOCK_F(6) & (\Add0~11\ $ (GND))) # (!FALLING_BLOCK_F(6) & (!\Add0~11\ & VCC))
-- \Add0~13\ = CARRY((FALLING_BLOCK_F(6) & !\Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => FALLING_BLOCK_F(6),
	datad => VCC,
	cin => \Add0~11\,
	combout => \Add0~12_combout\,
	cout => \Add0~13\);

-- Location: LCCOMB_X23_Y16_N30
\FALLING_BLOCK_F~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \FALLING_BLOCK_F~8_combout\ = (\Add0~12_combout\ & !\FALLING_BLOCK_F[27]~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~12_combout\,
	datad => \FALLING_BLOCK_F[27]~3_combout\,
	combout => \FALLING_BLOCK_F~8_combout\);

-- Location: FF_X23_Y16_N31
\FALLING_BLOCK_F[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK|TEMPORAL~clkctrl_outclk\,
	d => \FALLING_BLOCK_F~8_combout\,
	ena => \FALLING_BLOCK_F[10]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => FALLING_BLOCK_F(6));

-- Location: LCCOMB_X24_Y15_N2
\LessThan31~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan31~8_combout\ = (!FALLING_BLOCK_F(1) & (!FALLING_BLOCK_F(4) & (!FALLING_BLOCK_F(3) & !FALLING_BLOCK_F(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => FALLING_BLOCK_F(1),
	datab => FALLING_BLOCK_F(4),
	datac => FALLING_BLOCK_F(3),
	datad => FALLING_BLOCK_F(2),
	combout => \LessThan31~8_combout\);

-- Location: LCCOMB_X24_Y15_N0
\LessThan31~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan31~9_combout\ = ((!FALLING_BLOCK_F(5) & (!FALLING_BLOCK_F(6) & \LessThan31~8_combout\))) # (!FALLING_BLOCK_F(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => FALLING_BLOCK_F(7),
	datab => FALLING_BLOCK_F(5),
	datac => FALLING_BLOCK_F(6),
	datad => \LessThan31~8_combout\,
	combout => \LessThan31~9_combout\);

-- Location: LCCOMB_X24_Y15_N6
\LessThan31~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan31~10_combout\ = (\LessThan31~9_combout\ & (\LessThan31~6_combout\ & !FALLING_BLOCK_F(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LessThan31~9_combout\,
	datac => \LessThan31~6_combout\,
	datad => FALLING_BLOCK_F(8),
	combout => \LessThan31~10_combout\);

-- Location: LCCOMB_X23_Y13_N20
\FALLING_BLOCK_F[27]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \FALLING_BLOCK_F[27]~3_combout\ = (!FALLING_BLOCK_F(31) & ((\LessThan31~10_combout\ & (!\LessThan31~7_combout\)) # (!\LessThan31~10_combout\ & ((!\FALLING_BLOCK_F[27]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan31~7_combout\,
	datab => \LessThan31~10_combout\,
	datac => \FALLING_BLOCK_F[27]~0_combout\,
	datad => FALLING_BLOCK_F(31),
	combout => \FALLING_BLOCK_F[27]~3_combout\);

-- Location: LCCOMB_X24_Y14_N14
\Add0~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~14_combout\ = (FALLING_BLOCK_F(7) & (!\Add0~13\)) # (!FALLING_BLOCK_F(7) & ((\Add0~13\) # (GND)))
-- \Add0~15\ = CARRY((!\Add0~13\) # (!FALLING_BLOCK_F(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => FALLING_BLOCK_F(7),
	datad => VCC,
	cin => \Add0~13\,
	combout => \Add0~14_combout\,
	cout => \Add0~15\);

-- Location: LCCOMB_X24_Y14_N16
\Add0~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~16_combout\ = (FALLING_BLOCK_F(8) & (\Add0~15\ $ (GND))) # (!FALLING_BLOCK_F(8) & (!\Add0~15\ & VCC))
-- \Add0~17\ = CARRY((FALLING_BLOCK_F(8) & !\Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => FALLING_BLOCK_F(8),
	datad => VCC,
	cin => \Add0~15\,
	combout => \Add0~16_combout\,
	cout => \Add0~17\);

-- Location: LCCOMB_X24_Y14_N18
\Add0~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~18_combout\ = (FALLING_BLOCK_F(9) & (!\Add0~17\)) # (!FALLING_BLOCK_F(9) & ((\Add0~17\) # (GND)))
-- \Add0~19\ = CARRY((!\Add0~17\) # (!FALLING_BLOCK_F(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => FALLING_BLOCK_F(9),
	datad => VCC,
	cin => \Add0~17\,
	combout => \Add0~18_combout\,
	cout => \Add0~19\);

-- Location: LCCOMB_X23_Y16_N20
\FALLING_BLOCK_F~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \FALLING_BLOCK_F~4_combout\ = (!\FALLING_BLOCK_F[27]~3_combout\ & \Add0~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FALLING_BLOCK_F[27]~3_combout\,
	datad => \Add0~18_combout\,
	combout => \FALLING_BLOCK_F~4_combout\);

-- Location: FF_X23_Y16_N21
\FALLING_BLOCK_F[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK|TEMPORAL~clkctrl_outclk\,
	d => \FALLING_BLOCK_F~4_combout\,
	ena => \FALLING_BLOCK_F[10]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => FALLING_BLOCK_F(9));

-- Location: LCCOMB_X23_Y16_N24
\FALLING_BLOCK_F~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \FALLING_BLOCK_F~15_combout\ = (\Add0~20_combout\ & !\FALLING_BLOCK_F[27]~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~20_combout\,
	datad => \FALLING_BLOCK_F[27]~3_combout\,
	combout => \FALLING_BLOCK_F~15_combout\);

-- Location: FF_X23_Y16_N25
\FALLING_BLOCK_F[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK|TEMPORAL~clkctrl_outclk\,
	d => \FALLING_BLOCK_F~15_combout\,
	ena => \FALLING_BLOCK_F[10]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => FALLING_BLOCK_F(10));

-- Location: LCCOMB_X23_Y14_N26
\FALLING_BLOCK_F~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \FALLING_BLOCK_F~7_combout\ = (\Add0~14_combout\ & !\FALLING_BLOCK_F[27]~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~14_combout\,
	datad => \FALLING_BLOCK_F[27]~3_combout\,
	combout => \FALLING_BLOCK_F~7_combout\);

-- Location: FF_X24_Y14_N31
\FALLING_BLOCK_F[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK|TEMPORAL~clkctrl_outclk\,
	asdata => \FALLING_BLOCK_F~7_combout\,
	sload => VCC,
	ena => \FALLING_BLOCK_F[10]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => FALLING_BLOCK_F(7));

-- Location: LCCOMB_X24_Y15_N10
\LessThan0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~1_cout\ = CARRY((!\SYNC|Add3~0_combout\ & FALLING_BLOCK_F(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SYNC|Add3~0_combout\,
	datab => FALLING_BLOCK_F(0),
	datad => VCC,
	cout => \LessThan0~1_cout\);

-- Location: LCCOMB_X24_Y15_N12
\LessThan0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~3_cout\ = CARRY((FALLING_BLOCK_F(1) & (\SYNC|Add3~2_combout\ & !\LessThan0~1_cout\)) # (!FALLING_BLOCK_F(1) & ((\SYNC|Add3~2_combout\) # (!\LessThan0~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => FALLING_BLOCK_F(1),
	datab => \SYNC|Add3~2_combout\,
	datad => VCC,
	cin => \LessThan0~1_cout\,
	cout => \LessThan0~3_cout\);

-- Location: LCCOMB_X24_Y15_N14
\LessThan0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~5_cout\ = CARRY((FALLING_BLOCK_F(2) & ((!\LessThan0~3_cout\) # (!\SYNC|Add3~4_combout\))) # (!FALLING_BLOCK_F(2) & (!\SYNC|Add3~4_combout\ & !\LessThan0~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => FALLING_BLOCK_F(2),
	datab => \SYNC|Add3~4_combout\,
	datad => VCC,
	cin => \LessThan0~3_cout\,
	cout => \LessThan0~5_cout\);

-- Location: LCCOMB_X24_Y15_N16
\LessThan0~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~7_cout\ = CARRY((FALLING_BLOCK_F(3) & (\SYNC|Add3~6_combout\ & !\LessThan0~5_cout\)) # (!FALLING_BLOCK_F(3) & ((\SYNC|Add3~6_combout\) # (!\LessThan0~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => FALLING_BLOCK_F(3),
	datab => \SYNC|Add3~6_combout\,
	datad => VCC,
	cin => \LessThan0~5_cout\,
	cout => \LessThan0~7_cout\);

-- Location: LCCOMB_X24_Y15_N18
\LessThan0~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~9_cout\ = CARRY((\SYNC|Add3~8_combout\ & (FALLING_BLOCK_F(4) & !\LessThan0~7_cout\)) # (!\SYNC|Add3~8_combout\ & ((FALLING_BLOCK_F(4)) # (!\LessThan0~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SYNC|Add3~8_combout\,
	datab => FALLING_BLOCK_F(4),
	datad => VCC,
	cin => \LessThan0~7_cout\,
	cout => \LessThan0~9_cout\);

-- Location: LCCOMB_X24_Y15_N20
\LessThan0~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~11_cout\ = CARRY((\SYNC|Add3~10_combout\ & ((!\LessThan0~9_cout\) # (!FALLING_BLOCK_F(5)))) # (!\SYNC|Add3~10_combout\ & (!FALLING_BLOCK_F(5) & !\LessThan0~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SYNC|Add3~10_combout\,
	datab => FALLING_BLOCK_F(5),
	datad => VCC,
	cin => \LessThan0~9_cout\,
	cout => \LessThan0~11_cout\);

-- Location: LCCOMB_X24_Y15_N22
\LessThan0~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~13_cout\ = CARRY((\SYNC|Add3~12_combout\ & (FALLING_BLOCK_F(6) & !\LessThan0~11_cout\)) # (!\SYNC|Add3~12_combout\ & ((FALLING_BLOCK_F(6)) # (!\LessThan0~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SYNC|Add3~12_combout\,
	datab => FALLING_BLOCK_F(6),
	datad => VCC,
	cin => \LessThan0~11_cout\,
	cout => \LessThan0~13_cout\);

-- Location: LCCOMB_X24_Y15_N24
\LessThan0~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~15_cout\ = CARRY((\SYNC|Add3~14_combout\ & ((!\LessThan0~13_cout\) # (!FALLING_BLOCK_F(7)))) # (!\SYNC|Add3~14_combout\ & (!FALLING_BLOCK_F(7) & !\LessThan0~13_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SYNC|Add3~14_combout\,
	datab => FALLING_BLOCK_F(7),
	datad => VCC,
	cin => \LessThan0~13_cout\,
	cout => \LessThan0~15_cout\);

-- Location: LCCOMB_X24_Y15_N26
\LessThan0~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~17_cout\ = CARRY((\SYNC|Add3~16_combout\ & (FALLING_BLOCK_F(8) & !\LessThan0~15_cout\)) # (!\SYNC|Add3~16_combout\ & ((FALLING_BLOCK_F(8)) # (!\LessThan0~15_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SYNC|Add3~16_combout\,
	datab => FALLING_BLOCK_F(8),
	datad => VCC,
	cin => \LessThan0~15_cout\,
	cout => \LessThan0~17_cout\);

-- Location: LCCOMB_X24_Y15_N28
\LessThan0~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~18_combout\ = (FALLING_BLOCK_F(9) & ((\LessThan0~17_cout\) # (!\SYNC|Add3~18_combout\))) # (!FALLING_BLOCK_F(9) & (\LessThan0~17_cout\ & !\SYNC|Add3~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011111010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => FALLING_BLOCK_F(9),
	datad => \SYNC|Add3~18_combout\,
	cin => \LessThan0~17_cout\,
	combout => \LessThan0~18_combout\);

-- Location: LCCOMB_X23_Y15_N0
\LessThan1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan1~1_cout\ = CARRY((\SYNC|Add3~0_combout\ & !FALLING_BLOCK_I(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SYNC|Add3~0_combout\,
	datab => FALLING_BLOCK_I(0),
	datad => VCC,
	cout => \LessThan1~1_cout\);

-- Location: LCCOMB_X23_Y15_N2
\LessThan1~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan1~3_cout\ = CARRY((FALLING_BLOCK_I(1) & ((!\LessThan1~1_cout\) # (!\SYNC|Add3~2_combout\))) # (!FALLING_BLOCK_I(1) & (!\SYNC|Add3~2_combout\ & !\LessThan1~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => FALLING_BLOCK_I(1),
	datab => \SYNC|Add3~2_combout\,
	datad => VCC,
	cin => \LessThan1~1_cout\,
	cout => \LessThan1~3_cout\);

-- Location: LCCOMB_X23_Y15_N4
\LessThan1~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan1~5_cout\ = CARRY((\SYNC|Add3~4_combout\ & ((!\LessThan1~3_cout\) # (!FALLING_BLOCK_I(2)))) # (!\SYNC|Add3~4_combout\ & (!FALLING_BLOCK_I(2) & !\LessThan1~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SYNC|Add3~4_combout\,
	datab => FALLING_BLOCK_I(2),
	datad => VCC,
	cin => \LessThan1~3_cout\,
	cout => \LessThan1~5_cout\);

-- Location: LCCOMB_X23_Y15_N6
\LessThan1~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan1~7_cout\ = CARRY((FALLING_BLOCK_I(3) & ((!\LessThan1~5_cout\) # (!\SYNC|Add3~6_combout\))) # (!FALLING_BLOCK_I(3) & (!\SYNC|Add3~6_combout\ & !\LessThan1~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => FALLING_BLOCK_I(3),
	datab => \SYNC|Add3~6_combout\,
	datad => VCC,
	cin => \LessThan1~5_cout\,
	cout => \LessThan1~7_cout\);

-- Location: LCCOMB_X23_Y15_N8
\LessThan1~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan1~9_cout\ = CARRY((\SYNC|Add3~8_combout\ & ((!\LessThan1~7_cout\) # (!FALLING_BLOCK_I(4)))) # (!\SYNC|Add3~8_combout\ & (!FALLING_BLOCK_I(4) & !\LessThan1~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SYNC|Add3~8_combout\,
	datab => FALLING_BLOCK_I(4),
	datad => VCC,
	cin => \LessThan1~7_cout\,
	cout => \LessThan1~9_cout\);

-- Location: LCCOMB_X23_Y15_N10
\LessThan1~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan1~11_cout\ = CARRY((FALLING_BLOCK_I(5) & ((!\LessThan1~9_cout\) # (!\SYNC|Add3~10_combout\))) # (!FALLING_BLOCK_I(5) & (!\SYNC|Add3~10_combout\ & !\LessThan1~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => FALLING_BLOCK_I(5),
	datab => \SYNC|Add3~10_combout\,
	datad => VCC,
	cin => \LessThan1~9_cout\,
	cout => \LessThan1~11_cout\);

-- Location: LCCOMB_X23_Y15_N12
\LessThan1~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan1~13_cout\ = CARRY((FALLING_BLOCK_I(6) & (\SYNC|Add3~12_combout\ & !\LessThan1~11_cout\)) # (!FALLING_BLOCK_I(6) & ((\SYNC|Add3~12_combout\) # (!\LessThan1~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => FALLING_BLOCK_I(6),
	datab => \SYNC|Add3~12_combout\,
	datad => VCC,
	cin => \LessThan1~11_cout\,
	cout => \LessThan1~13_cout\);

-- Location: LCCOMB_X23_Y15_N14
\LessThan1~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan1~15_cout\ = CARRY((FALLING_BLOCK_I(7) & ((!\LessThan1~13_cout\) # (!\SYNC|Add3~14_combout\))) # (!FALLING_BLOCK_I(7) & (!\SYNC|Add3~14_combout\ & !\LessThan1~13_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => FALLING_BLOCK_I(7),
	datab => \SYNC|Add3~14_combout\,
	datad => VCC,
	cin => \LessThan1~13_cout\,
	cout => \LessThan1~15_cout\);

-- Location: LCCOMB_X23_Y15_N16
\LessThan1~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan1~17_cout\ = CARRY((\SYNC|Add3~16_combout\ & ((!\LessThan1~15_cout\) # (!FALLING_BLOCK_I(8)))) # (!\SYNC|Add3~16_combout\ & (!FALLING_BLOCK_I(8) & !\LessThan1~15_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SYNC|Add3~16_combout\,
	datab => FALLING_BLOCK_I(8),
	datad => VCC,
	cin => \LessThan1~15_cout\,
	cout => \LessThan1~17_cout\);

-- Location: LCCOMB_X23_Y15_N18
\LessThan1~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan1~18_combout\ = (\SYNC|Add3~18_combout\ & ((\LessThan1~17_cout\) # (!FALLING_BLOCK_I(9)))) # (!\SYNC|Add3~18_combout\ & (!FALLING_BLOCK_I(9) & \LessThan1~17_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001010110010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SYNC|Add3~18_combout\,
	datab => FALLING_BLOCK_I(9),
	cin => \LessThan1~17_cout\,
	combout => \LessThan1~18_combout\);

-- Location: LCCOMB_X23_Y14_N28
\process_0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \process_0~10_combout\ = (\process_0~3_combout\ & ((FALLING_BLOCK_I(10)) # (\LessThan1~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => FALLING_BLOCK_I(10),
	datac => \process_0~3_combout\,
	datad => \LessThan1~18_combout\,
	combout => \process_0~10_combout\);

-- Location: LCCOMB_X23_Y14_N24
\process_0~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \process_0~14_combout\ = (!FALLING_BLOCK_F(10) & (\LessThan0~18_combout\ & \process_0~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => FALLING_BLOCK_F(10),
	datac => \LessThan0~18_combout\,
	datad => \process_0~10_combout\,
	combout => \process_0~14_combout\);

-- Location: LCCOMB_X21_Y18_N28
\FALLING_BLOCK_F1~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \FALLING_BLOCK_F1~12_combout\ = (\Add1~2_combout\ & \FALLING_BLOCK_F1[3]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add1~2_combout\,
	datad => \FALLING_BLOCK_F1[3]~0_combout\,
	combout => \FALLING_BLOCK_F1~12_combout\);

-- Location: FF_X23_Y18_N7
\FALLING_BLOCK_F1[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK|TEMPORAL~clkctrl_outclk\,
	asdata => \FALLING_BLOCK_F1~12_combout\,
	sload => VCC,
	ena => \FALLING_BLOCK_F1[10]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => FALLING_BLOCK_F1(1));

-- Location: LCCOMB_X21_Y18_N8
\LessThan3~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan3~1_cout\ = CARRY((!FALLING_BLOCK_F1(0) & !\SYNC|Add3~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => FALLING_BLOCK_F1(0),
	datab => \SYNC|Add3~0_combout\,
	datad => VCC,
	cout => \LessThan3~1_cout\);

-- Location: LCCOMB_X21_Y18_N10
\LessThan3~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan3~3_cout\ = CARRY((\SYNC|Add3~2_combout\ & ((!\LessThan3~1_cout\) # (!FALLING_BLOCK_F1(1)))) # (!\SYNC|Add3~2_combout\ & (!FALLING_BLOCK_F1(1) & !\LessThan3~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SYNC|Add3~2_combout\,
	datab => FALLING_BLOCK_F1(1),
	datad => VCC,
	cin => \LessThan3~1_cout\,
	cout => \LessThan3~3_cout\);

-- Location: LCCOMB_X21_Y18_N12
\LessThan3~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan3~5_cout\ = CARRY((FALLING_BLOCK_F1(2) & ((!\LessThan3~3_cout\) # (!\SYNC|Add3~4_combout\))) # (!FALLING_BLOCK_F1(2) & (!\SYNC|Add3~4_combout\ & !\LessThan3~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => FALLING_BLOCK_F1(2),
	datab => \SYNC|Add3~4_combout\,
	datad => VCC,
	cin => \LessThan3~3_cout\,
	cout => \LessThan3~5_cout\);

-- Location: LCCOMB_X21_Y18_N14
\LessThan3~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan3~7_cout\ = CARRY((FALLING_BLOCK_F1(3) & ((\SYNC|Add3~6_combout\) # (!\LessThan3~5_cout\))) # (!FALLING_BLOCK_F1(3) & (\SYNC|Add3~6_combout\ & !\LessThan3~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => FALLING_BLOCK_F1(3),
	datab => \SYNC|Add3~6_combout\,
	datad => VCC,
	cin => \LessThan3~5_cout\,
	cout => \LessThan3~7_cout\);

-- Location: LCCOMB_X21_Y18_N16
\LessThan3~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan3~9_cout\ = CARRY((\SYNC|Add3~8_combout\ & (!FALLING_BLOCK_F1(4) & !\LessThan3~7_cout\)) # (!\SYNC|Add3~8_combout\ & ((!\LessThan3~7_cout\) # (!FALLING_BLOCK_F1(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SYNC|Add3~8_combout\,
	datab => FALLING_BLOCK_F1(4),
	datad => VCC,
	cin => \LessThan3~7_cout\,
	cout => \LessThan3~9_cout\);

-- Location: LCCOMB_X21_Y18_N18
\LessThan3~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan3~11_cout\ = CARRY((\SYNC|Add3~10_combout\ & ((FALLING_BLOCK_F1(5)) # (!\LessThan3~9_cout\))) # (!\SYNC|Add3~10_combout\ & (FALLING_BLOCK_F1(5) & !\LessThan3~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SYNC|Add3~10_combout\,
	datab => FALLING_BLOCK_F1(5),
	datad => VCC,
	cin => \LessThan3~9_cout\,
	cout => \LessThan3~11_cout\);

-- Location: LCCOMB_X21_Y18_N20
\LessThan3~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan3~13_cout\ = CARRY((\SYNC|Add3~12_combout\ & (!FALLING_BLOCK_F1(6) & !\LessThan3~11_cout\)) # (!\SYNC|Add3~12_combout\ & ((!\LessThan3~11_cout\) # (!FALLING_BLOCK_F1(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SYNC|Add3~12_combout\,
	datab => FALLING_BLOCK_F1(6),
	datad => VCC,
	cin => \LessThan3~11_cout\,
	cout => \LessThan3~13_cout\);

-- Location: LCCOMB_X21_Y18_N22
\LessThan3~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan3~15_cout\ = CARRY((FALLING_BLOCK_F1(7) & (\SYNC|Add3~14_combout\ & !\LessThan3~13_cout\)) # (!FALLING_BLOCK_F1(7) & ((\SYNC|Add3~14_combout\) # (!\LessThan3~13_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => FALLING_BLOCK_F1(7),
	datab => \SYNC|Add3~14_combout\,
	datad => VCC,
	cin => \LessThan3~13_cout\,
	cout => \LessThan3~15_cout\);

-- Location: LCCOMB_X21_Y18_N24
\LessThan3~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan3~17_cout\ = CARRY((FALLING_BLOCK_F1(8) & (!\SYNC|Add3~16_combout\ & !\LessThan3~15_cout\)) # (!FALLING_BLOCK_F1(8) & ((!\LessThan3~15_cout\) # (!\SYNC|Add3~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => FALLING_BLOCK_F1(8),
	datab => \SYNC|Add3~16_combout\,
	datad => VCC,
	cin => \LessThan3~15_cout\,
	cout => \LessThan3~17_cout\);

-- Location: LCCOMB_X21_Y18_N26
\LessThan3~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan3~18_combout\ = (FALLING_BLOCK_F1(9) & (\LessThan3~17_cout\ & !\SYNC|Add3~18_combout\)) # (!FALLING_BLOCK_F1(9) & ((\LessThan3~17_cout\) # (!\SYNC|Add3~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011110101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => FALLING_BLOCK_F1(9),
	datad => \SYNC|Add3~18_combout\,
	cin => \LessThan3~17_cout\,
	combout => \LessThan3~18_combout\);

-- Location: LCCOMB_X20_Y14_N2
\process_0~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \process_0~13_combout\ = (FALLING_BLOCK_F1(10) & (\LessThan3~18_combout\ & \process_0~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => FALLING_BLOCK_F1(10),
	datab => \LessThan3~18_combout\,
	datad => \process_0~4_combout\,
	combout => \process_0~13_combout\);

-- Location: LCCOMB_X20_Y14_N16
\R~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \R~9_combout\ = (!\process_0~14_combout\ & ((\process_0~11_combout\) # (!\process_0~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~11_combout\,
	datab => \process_0~14_combout\,
	datad => \process_0~13_combout\,
	combout => \R~9_combout\);

-- Location: LCCOMB_X20_Y14_N10
\R~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \R~10_combout\ = (\R~9_combout\ & ((\process_0~11_combout\) # ((\process_0~8_combout\) # (!\process_0~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~11_combout\,
	datab => \process_0~5_combout\,
	datac => \process_0~8_combout\,
	datad => \R~9_combout\,
	combout => \R~10_combout\);

-- Location: LCCOMB_X20_Y14_N20
\R~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \R~11_combout\ = ((!\process_0~11_combout\ & (!\process_0~12_combout\ & \R[0]~8_combout\))) # (!\R~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~11_combout\,
	datab => \process_0~12_combout\,
	datac => \R[0]~8_combout\,
	datad => \R~10_combout\,
	combout => \R~11_combout\);

-- Location: LCCOMB_X20_Y14_N0
\R~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \R~18_combout\ = (\R~11_combout\) # ((\R~12_combout\ & ((\R~17_combout\) # (!\process_0~23_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~23_combout\,
	datab => \R~12_combout\,
	datac => \R~17_combout\,
	datad => \R~11_combout\,
	combout => \R~18_combout\);

-- Location: FF_X20_Y14_N1
\R[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK|TEMPORAL~clkctrl_outclk\,
	d => \R~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \R[0]~reg0_q\);

-- Location: LCCOMB_X20_Y13_N6
\LessThan8~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan8~1_cout\ = CARRY((\Add2~0_combout\ & !\SYNC|Add3~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~0_combout\,
	datab => \SYNC|Add3~0_combout\,
	datad => VCC,
	cout => \LessThan8~1_cout\);

-- Location: LCCOMB_X20_Y13_N8
\LessThan8~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan8~3_cout\ = CARRY((\Add2~2_combout\ & (\SYNC|Add3~2_combout\ & !\LessThan8~1_cout\)) # (!\Add2~2_combout\ & ((\SYNC|Add3~2_combout\) # (!\LessThan8~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~2_combout\,
	datab => \SYNC|Add3~2_combout\,
	datad => VCC,
	cin => \LessThan8~1_cout\,
	cout => \LessThan8~3_cout\);

-- Location: LCCOMB_X20_Y13_N10
\LessThan8~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan8~5_cout\ = CARRY((\SYNC|Add3~4_combout\ & (\Add2~4_combout\ & !\LessThan8~3_cout\)) # (!\SYNC|Add3~4_combout\ & ((\Add2~4_combout\) # (!\LessThan8~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SYNC|Add3~4_combout\,
	datab => \Add2~4_combout\,
	datad => VCC,
	cin => \LessThan8~3_cout\,
	cout => \LessThan8~5_cout\);

-- Location: LCCOMB_X20_Y13_N12
\LessThan8~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan8~7_cout\ = CARRY((\SYNC|Add3~6_combout\ & ((!\LessThan8~5_cout\) # (!\Add2~6_combout\))) # (!\SYNC|Add3~6_combout\ & (!\Add2~6_combout\ & !\LessThan8~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SYNC|Add3~6_combout\,
	datab => \Add2~6_combout\,
	datad => VCC,
	cin => \LessThan8~5_cout\,
	cout => \LessThan8~7_cout\);

-- Location: LCCOMB_X20_Y13_N14
\LessThan8~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan8~9_cout\ = CARRY((\Add2~8_combout\ & ((!\LessThan8~7_cout\) # (!\SYNC|Add3~8_combout\))) # (!\Add2~8_combout\ & (!\SYNC|Add3~8_combout\ & !\LessThan8~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~8_combout\,
	datab => \SYNC|Add3~8_combout\,
	datad => VCC,
	cin => \LessThan8~7_cout\,
	cout => \LessThan8~9_cout\);

-- Location: LCCOMB_X20_Y13_N16
\LessThan8~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan8~11_cout\ = CARRY((\SYNC|Add3~10_combout\ & ((!\LessThan8~9_cout\) # (!\Add2~10_combout\))) # (!\SYNC|Add3~10_combout\ & (!\Add2~10_combout\ & !\LessThan8~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SYNC|Add3~10_combout\,
	datab => \Add2~10_combout\,
	datad => VCC,
	cin => \LessThan8~9_cout\,
	cout => \LessThan8~11_cout\);

-- Location: LCCOMB_X20_Y13_N18
\LessThan8~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan8~13_cout\ = CARRY((\Add2~12_combout\ & ((!\LessThan8~11_cout\) # (!\SYNC|Add3~12_combout\))) # (!\Add2~12_combout\ & (!\SYNC|Add3~12_combout\ & !\LessThan8~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~12_combout\,
	datab => \SYNC|Add3~12_combout\,
	datad => VCC,
	cin => \LessThan8~11_cout\,
	cout => \LessThan8~13_cout\);

-- Location: LCCOMB_X20_Y13_N20
\LessThan8~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan8~15_cout\ = CARRY((\Add2~14_combout\ & (\SYNC|Add3~14_combout\ & !\LessThan8~13_cout\)) # (!\Add2~14_combout\ & ((\SYNC|Add3~14_combout\) # (!\LessThan8~13_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~14_combout\,
	datab => \SYNC|Add3~14_combout\,
	datad => VCC,
	cin => \LessThan8~13_cout\,
	cout => \LessThan8~15_cout\);

-- Location: LCCOMB_X20_Y13_N22
\LessThan8~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan8~17_cout\ = CARRY((\SYNC|Add3~16_combout\ & (\Add2~16_combout\ & !\LessThan8~15_cout\)) # (!\SYNC|Add3~16_combout\ & ((\Add2~16_combout\) # (!\LessThan8~15_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SYNC|Add3~16_combout\,
	datab => \Add2~16_combout\,
	datad => VCC,
	cin => \LessThan8~15_cout\,
	cout => \LessThan8~17_cout\);

-- Location: LCCOMB_X20_Y13_N24
\LessThan8~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan8~18_combout\ = (\Add2~18_combout\ & ((\LessThan8~17_cout\) # (!\SYNC|Add3~18_combout\))) # (!\Add2~18_combout\ & (\LessThan8~17_cout\ & !\SYNC|Add3~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011111010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~18_combout\,
	datad => \SYNC|Add3~18_combout\,
	cin => \LessThan8~17_cout\,
	combout => \LessThan8~18_combout\);

-- Location: LCCOMB_X20_Y13_N0
\process_0~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \process_0~7_combout\ = (\Add2~20_combout\) # ((!\LessThan8~18_combout\) # (!\process_0~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~20_combout\,
	datac => \process_0~6_combout\,
	datad => \LessThan8~18_combout\,
	combout => \process_0~7_combout\);

-- Location: LCCOMB_X20_Y14_N6
\B~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \B~3_combout\ = (!\process_0~11_combout\ & (\process_0~7_combout\ & \process_0~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~11_combout\,
	datab => \process_0~7_combout\,
	datad => \process_0~5_combout\,
	combout => \B~3_combout\);

-- Location: IOIBUF_X0_Y21_N8
\MI~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_MI,
	o => \MI~input_o\);

-- Location: FF_X21_Y14_N27
\DEBMI|Q1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK100|C100HZ~clkctrl_outclk\,
	asdata => \MI~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DEBMI|Q1~q\);

-- Location: LCCOMB_X21_Y14_N4
\DEBMI|Q2~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DEBMI|Q2~feeder_combout\ = \DEBMI|Q1~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DEBMI|Q1~q\,
	combout => \DEBMI|Q2~feeder_combout\);

-- Location: FF_X21_Y14_N5
\DEBMI|Q2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK100|C100HZ~clkctrl_outclk\,
	d => \DEBMI|Q2~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DEBMI|Q2~q\);

-- Location: FF_X21_Y14_N3
\DEBMI|Q3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK100|C100HZ~clkctrl_outclk\,
	asdata => \DEBMI|Q2~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DEBMI|Q3~q\);

-- Location: LCCOMB_X21_Y14_N2
\DEBMI|QOUT~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DEBMI|QOUT~0_combout\ = (\DEBMI|Q1~q\ & (\DEBMI|Q2~q\ & \DEBMI|Q3~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DEBMI|Q1~q\,
	datab => \DEBMI|Q2~q\,
	datac => \DEBMI|Q3~q\,
	combout => \DEBMI|QOUT~0_combout\);

-- Location: LCCOMB_X21_Y11_N16
\G~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \G~2_combout\ = ((\process_0~18_combout\ & ((\DEBMI|QOUT~0_combout\))) # (!\process_0~18_combout\ & (!\process_0~24_combout\))) # (!\process_0~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001101110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~24_combout\,
	datab => \process_0~16_combout\,
	datac => \DEBMI|QOUT~0_combout\,
	datad => \process_0~18_combout\,
	combout => \G~2_combout\);

-- Location: LCCOMB_X21_Y11_N24
\R~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \R~22_combout\ = (\process_0~16_combout\ & (!\process_0~20_combout\ & ((!\DEBMI|QOUT~0_combout\) # (!\process_0~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~18_combout\,
	datab => \DEBMI|QOUT~0_combout\,
	datac => \process_0~16_combout\,
	datad => \process_0~20_combout\,
	combout => \R~22_combout\);

-- Location: LCCOMB_X26_Y15_N14
\LessThan19~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan19~4_combout\ = ((\LessThan21~0_combout\ & \LessThan19~5_combout\)) # (!\SYNC|Add2~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan21~0_combout\,
	datac => \LessThan19~5_combout\,
	datad => \SYNC|Add2~3_combout\,
	combout => \LessThan19~4_combout\);

-- Location: LCCOMB_X21_Y11_N30
\R~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \R~19_combout\ = ((!\LessThan19~4_combout\) # (!\LessThan20~1_combout\)) # (!\process_0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~0_combout\,
	datac => \LessThan20~1_combout\,
	datad => \LessThan19~4_combout\,
	combout => \R~19_combout\);

-- Location: LCCOMB_X21_Y11_N28
\R~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \R~20_combout\ = (\process_0~9_combout\ & (\DEBSI|QOUT~0_combout\)) # (!\process_0~9_combout\ & ((!\process_0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~9_combout\,
	datac => \DEBSI|QOUT~0_combout\,
	datad => \process_0~2_combout\,
	combout => \R~20_combout\);

-- Location: LCCOMB_X21_Y11_N14
\R~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \R~21_combout\ = (\DEBLA|QOUT~0_combout\ & ((\process_0~21_combout\) # ((\R~20_combout\)))) # (!\DEBLA|QOUT~0_combout\ & (((\R~19_combout\ & \R~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~21_combout\,
	datab => \DEBLA|QOUT~0_combout\,
	datac => \R~19_combout\,
	datad => \R~20_combout\,
	combout => \R~21_combout\);

-- Location: LCCOMB_X22_Y14_N18
\G~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \G~1_combout\ = ((\process_0~22_combout\ & (!\DEBSOL|QOUT~0_combout\)) # (!\process_0~22_combout\ & ((!\R~21_combout\)))) # (!\R~22_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~22_combout\,
	datab => \DEBSOL|QOUT~0_combout\,
	datac => \R~22_combout\,
	datad => \R~21_combout\,
	combout => \G~1_combout\);

-- Location: LCCOMB_X22_Y14_N28
\R~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \R~23_combout\ = (\process_0~23_combout\ & (((!\G~1_combout\) # (!\process_0~17_combout\)) # (!\G~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~23_combout\,
	datab => \G~2_combout\,
	datac => \process_0~17_combout\,
	datad => \G~1_combout\,
	combout => \R~23_combout\);

-- Location: LCCOMB_X20_Y14_N26
\R~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \R~24_combout\ = ((\B~3_combout\ & ((\R~23_combout\) # (!\process_0~15_combout\)))) # (!\R~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010101110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \R~10_combout\,
	datab => \process_0~15_combout\,
	datac => \B~3_combout\,
	datad => \R~23_combout\,
	combout => \R~24_combout\);

-- Location: FF_X20_Y14_N27
\R[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK|TEMPORAL~clkctrl_outclk\,
	d => \R~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \R[1]~reg0_q\);

-- Location: LCCOMB_X21_Y14_N6
\R[0]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \R[0]~7_combout\ = (\process_0~5_combout\ & (\process_0~7_combout\ & \process_0~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \process_0~5_combout\,
	datac => \process_0~7_combout\,
	datad => \process_0~8_combout\,
	combout => \R[0]~7_combout\);

-- Location: LCCOMB_X21_Y14_N30
\G[0]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \G[0]~3_combout\ = (\process_0~12_combout\ & (\R[0]~6_combout\ & (!\process_0~9_combout\ & \R[0]~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~12_combout\,
	datab => \R[0]~6_combout\,
	datac => \process_0~9_combout\,
	datad => \R[0]~7_combout\,
	combout => \G[0]~3_combout\);

-- Location: LCCOMB_X22_Y14_N4
\B~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \B~19_combout\ = (\G[0]~3_combout\ & (((\Add0~20_combout\) # (!\process_0~10_combout\)) # (!\LessThan2~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan2~18_combout\,
	datab => \process_0~10_combout\,
	datac => \Add0~20_combout\,
	datad => \G[0]~3_combout\,
	combout => \B~19_combout\);

-- Location: LCCOMB_X22_Y14_N6
\process_0~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \process_0~23_combout\ = ((!\DEBDO|QOUT~0_combout\) # (!\process_0~0_combout\)) # (!\process_0~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~3_combout\,
	datac => \process_0~0_combout\,
	datad => \DEBDO|QOUT~0_combout\,
	combout => \process_0~23_combout\);

-- Location: LCCOMB_X22_Y14_N14
\G~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \G~5_combout\ = ((\process_0~7_combout\ & (\process_0~15_combout\ & !\process_0~23_combout\))) # (!\process_0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111110001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~7_combout\,
	datab => \process_0~15_combout\,
	datac => \process_0~8_combout\,
	datad => \process_0~23_combout\,
	combout => \G~5_combout\);

-- Location: LCCOMB_X23_Y14_N4
\LessThan2~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan2~1_cout\ = CARRY((!\SYNC|Add3~0_combout\ & \Add0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SYNC|Add3~0_combout\,
	datab => \Add0~0_combout\,
	datad => VCC,
	cout => \LessThan2~1_cout\);

-- Location: LCCOMB_X23_Y14_N6
\LessThan2~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan2~3_cout\ = CARRY((\Add0~2_combout\ & (\SYNC|Add3~2_combout\ & !\LessThan2~1_cout\)) # (!\Add0~2_combout\ & ((\SYNC|Add3~2_combout\) # (!\LessThan2~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~2_combout\,
	datab => \SYNC|Add3~2_combout\,
	datad => VCC,
	cin => \LessThan2~1_cout\,
	cout => \LessThan2~3_cout\);

-- Location: LCCOMB_X23_Y14_N8
\LessThan2~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan2~5_cout\ = CARRY((\Add0~4_combout\ & ((!\LessThan2~3_cout\) # (!\SYNC|Add3~4_combout\))) # (!\Add0~4_combout\ & (!\SYNC|Add3~4_combout\ & !\LessThan2~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~4_combout\,
	datab => \SYNC|Add3~4_combout\,
	datad => VCC,
	cin => \LessThan2~3_cout\,
	cout => \LessThan2~5_cout\);

-- Location: LCCOMB_X23_Y14_N10
\LessThan2~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan2~7_cout\ = CARRY((\Add0~6_combout\ & (\SYNC|Add3~6_combout\ & !\LessThan2~5_cout\)) # (!\Add0~6_combout\ & ((\SYNC|Add3~6_combout\) # (!\LessThan2~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~6_combout\,
	datab => \SYNC|Add3~6_combout\,
	datad => VCC,
	cin => \LessThan2~5_cout\,
	cout => \LessThan2~7_cout\);

-- Location: LCCOMB_X23_Y14_N12
\LessThan2~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan2~9_cout\ = CARRY((\SYNC|Add3~8_combout\ & (\Add0~8_combout\ & !\LessThan2~7_cout\)) # (!\SYNC|Add3~8_combout\ & ((\Add0~8_combout\) # (!\LessThan2~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SYNC|Add3~8_combout\,
	datab => \Add0~8_combout\,
	datad => VCC,
	cin => \LessThan2~7_cout\,
	cout => \LessThan2~9_cout\);

-- Location: LCCOMB_X23_Y14_N14
\LessThan2~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan2~11_cout\ = CARRY((\SYNC|Add3~10_combout\ & ((!\LessThan2~9_cout\) # (!\Add0~10_combout\))) # (!\SYNC|Add3~10_combout\ & (!\Add0~10_combout\ & !\LessThan2~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SYNC|Add3~10_combout\,
	datab => \Add0~10_combout\,
	datad => VCC,
	cin => \LessThan2~9_cout\,
	cout => \LessThan2~11_cout\);

-- Location: LCCOMB_X23_Y14_N16
\LessThan2~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan2~13_cout\ = CARRY((\SYNC|Add3~12_combout\ & (\Add0~12_combout\ & !\LessThan2~11_cout\)) # (!\SYNC|Add3~12_combout\ & ((\Add0~12_combout\) # (!\LessThan2~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SYNC|Add3~12_combout\,
	datab => \Add0~12_combout\,
	datad => VCC,
	cin => \LessThan2~11_cout\,
	cout => \LessThan2~13_cout\);

-- Location: LCCOMB_X23_Y14_N18
\LessThan2~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan2~15_cout\ = CARRY((\SYNC|Add3~14_combout\ & ((!\LessThan2~13_cout\) # (!\Add0~14_combout\))) # (!\SYNC|Add3~14_combout\ & (!\Add0~14_combout\ & !\LessThan2~13_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SYNC|Add3~14_combout\,
	datab => \Add0~14_combout\,
	datad => VCC,
	cin => \LessThan2~13_cout\,
	cout => \LessThan2~15_cout\);

-- Location: LCCOMB_X23_Y14_N20
\LessThan2~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan2~17_cout\ = CARRY((\SYNC|Add3~16_combout\ & (\Add0~16_combout\ & !\LessThan2~15_cout\)) # (!\SYNC|Add3~16_combout\ & ((\Add0~16_combout\) # (!\LessThan2~15_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SYNC|Add3~16_combout\,
	datab => \Add0~16_combout\,
	datad => VCC,
	cin => \LessThan2~15_cout\,
	cout => \LessThan2~17_cout\);

-- Location: LCCOMB_X23_Y14_N22
\LessThan2~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan2~18_combout\ = (\SYNC|Add3~18_combout\ & (\LessThan2~17_cout\ & \Add0~18_combout\)) # (!\SYNC|Add3~18_combout\ & ((\LessThan2~17_cout\) # (\Add0~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010101010000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SYNC|Add3~18_combout\,
	datad => \Add0~18_combout\,
	cin => \LessThan2~17_cout\,
	combout => \LessThan2~18_combout\);

-- Location: LCCOMB_X23_Y14_N2
\process_0~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \process_0~11_combout\ = (!\Add0~20_combout\ & (\LessThan2~18_combout\ & \process_0~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~20_combout\,
	datac => \LessThan2~18_combout\,
	datad => \process_0~10_combout\,
	combout => \process_0~11_combout\);

-- Location: LCCOMB_X21_Y14_N16
\G~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \G~4_combout\ = (\process_0~5_combout\ & (!\process_0~11_combout\ & !\G[0]~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \process_0~5_combout\,
	datac => \process_0~11_combout\,
	datad => \G[0]~3_combout\,
	combout => \G~4_combout\);

-- Location: LCCOMB_X22_Y14_N12
\G~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \G~6_combout\ = (\process_0~17_combout\ & (\G~2_combout\ & \G~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~17_combout\,
	datab => \G~2_combout\,
	datad => \G~1_combout\,
	combout => \G~6_combout\);

-- Location: LCCOMB_X22_Y14_N2
\G~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \G~8_combout\ = (\G~4_combout\ & ((\G~5_combout\) # ((\G~7_combout\ & \G~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G~7_combout\,
	datab => \G~5_combout\,
	datac => \G~4_combout\,
	datad => \G~6_combout\,
	combout => \G~8_combout\);

-- Location: LCCOMB_X22_Y14_N0
\G~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \G~14_combout\ = ((\G~8_combout\) # ((\G~13_combout\ & \B~19_combout\))) # (!\R~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G~13_combout\,
	datab => \R~9_combout\,
	datac => \B~19_combout\,
	datad => \G~8_combout\,
	combout => \G~14_combout\);

-- Location: FF_X22_Y14_N1
\G[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK|TEMPORAL~clkctrl_outclk\,
	d => \G~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G[0]~reg0_q\);

-- Location: LCCOMB_X20_Y15_N30
\process_0~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \process_0~25_combout\ = (\SYNC|Add3~8_combout\) # ((\SYNC|Add3~6_combout\) # (\SYNC|Add3~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SYNC|Add3~8_combout\,
	datab => \SYNC|Add3~6_combout\,
	datad => \SYNC|Add3~4_combout\,
	combout => \process_0~25_combout\);

-- Location: LCCOMB_X20_Y15_N4
\process_0~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \process_0~26_combout\ = (\SYNC|Add3~14_combout\ & (((!\SYNC|Add3~12_combout\)) # (!\SYNC|Add3~10_combout\))) # (!\SYNC|Add3~14_combout\ & (\SYNC|Add3~10_combout\ & (\process_0~25_combout\ & \SYNC|Add3~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SYNC|Add3~14_combout\,
	datab => \SYNC|Add3~10_combout\,
	datac => \process_0~25_combout\,
	datad => \SYNC|Add3~12_combout\,
	combout => \process_0~26_combout\);

-- Location: LCCOMB_X20_Y15_N6
\process_0~27\ : cycloneiii_lcell_comb
-- Equation(s):
-- \process_0~27_combout\ = (\SYNC|Add3~18_combout\) # ((!\SYNC|Add3~16_combout\) # (!\process_0~26_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SYNC|Add3~18_combout\,
	datac => \process_0~26_combout\,
	datad => \SYNC|Add3~16_combout\,
	combout => \process_0~27_combout\);

-- Location: LCCOMB_X21_Y13_N28
\process_0~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \process_0~28_combout\ = ((\process_0~27_combout\) # ((\SYNC|Add2~3_combout\ & !\LessThan13~5_combout\))) # (!\LessThan14~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SYNC|Add2~3_combout\,
	datab => \LessThan14~5_combout\,
	datac => \LessThan13~5_combout\,
	datad => \process_0~27_combout\,
	combout => \process_0~28_combout\);

-- Location: LCCOMB_X19_Y14_N0
\G~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \G~15_combout\ = (\process_0~12_combout\ & ((\process_0~27_combout\) # (!\process_0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \process_0~27_combout\,
	datac => \process_0~3_combout\,
	datad => \process_0~12_combout\,
	combout => \G~15_combout\);

-- Location: LCCOMB_X19_Y14_N12
\G~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \G~19_combout\ = (\R[0]~8_combout\ & (((\G~15_combout\)))) # (!\R[0]~8_combout\ & (\process_0~5_combout\ & ((\process_0~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~5_combout\,
	datab => \G~15_combout\,
	datac => \R[0]~8_combout\,
	datad => \process_0~7_combout\,
	combout => \G~19_combout\);

-- Location: LCCOMB_X19_Y14_N26
\G~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \G~20_combout\ = (!\process_0~11_combout\ & (\G~19_combout\ & ((\process_0~28_combout\) # (!\R[0]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~11_combout\,
	datab => \process_0~28_combout\,
	datac => \R[0]~8_combout\,
	datad => \G~19_combout\,
	combout => \G~20_combout\);

-- Location: LCCOMB_X19_Y14_N20
\G~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \G~21_combout\ = (\R[0]~8_combout\ & (\process_0~29_combout\)) # (!\R[0]~8_combout\ & ((\process_0~23_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~29_combout\,
	datac => \process_0~23_combout\,
	datad => \R[0]~8_combout\,
	combout => \G~21_combout\);

-- Location: LCCOMB_X27_Y14_N24
\G~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \G~10_combout\ = (!\G~9_combout\ & (!\LessThan22~1_combout\ & (\SYNC|Add2~4_combout\ & \G~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G~9_combout\,
	datab => \LessThan22~1_combout\,
	datac => \SYNC|Add2~4_combout\,
	datad => \G~0_combout\,
	combout => \G~10_combout\);

-- Location: LCCOMB_X21_Y13_N20
\G~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \G~11_combout\ = (!\process_0~27_combout\ & ((\G~10_combout\) # ((\LessThan20~1_combout\ & \LessThan19~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan20~1_combout\,
	datab => \LessThan19~4_combout\,
	datac => \G~10_combout\,
	datad => \process_0~27_combout\,
	combout => \G~11_combout\);

-- Location: LCCOMB_X19_Y14_N6
\G~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \G~22_combout\ = (\G~21_combout\ & ((\R[0]~8_combout\ & (\G~11_combout\)) # (!\R[0]~8_combout\ & ((!\R~17_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \R[0]~8_combout\,
	datab => \G~21_combout\,
	datac => \G~11_combout\,
	datad => \R~17_combout\,
	combout => \G~22_combout\);

-- Location: LCCOMB_X19_Y14_N16
\G~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \G~23_combout\ = (\G~18_combout\) # (((\G~20_combout\ & \G~22_combout\)) # (!\R~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101110111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G~18_combout\,
	datab => \R~9_combout\,
	datac => \G~20_combout\,
	datad => \G~22_combout\,
	combout => \G~23_combout\);

-- Location: FF_X19_Y14_N17
\G[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK|TEMPORAL~clkctrl_outclk\,
	d => \G~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G[1]~reg0_q\);

-- Location: LCCOMB_X20_Y14_N28
\B~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \B~4_combout\ = (\R[0]~25_combout\ & (\process_0~12_combout\ & (\R[0]~6_combout\ & \B~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \R[0]~25_combout\,
	datab => \process_0~12_combout\,
	datac => \R[0]~6_combout\,
	datad => \B~3_combout\,
	combout => \B~4_combout\);

-- Location: LCCOMB_X20_Y14_N14
\B~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \B~5_combout\ = (!\process_0~13_combout\ & (!\process_0~14_combout\ & (\process_0~8_combout\ & \B~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~13_combout\,
	datab => \process_0~14_combout\,
	datac => \process_0~8_combout\,
	datad => \B~4_combout\,
	combout => \B~5_combout\);

-- Location: LCCOMB_X20_Y14_N30
\process_0~31\ : cycloneiii_lcell_comb
-- Equation(s):
-- \process_0~31_combout\ = (\LessThan11~2_combout\) # ((\process_0~27_combout\) # (!\LessThan12~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LessThan11~2_combout\,
	datac => \process_0~27_combout\,
	datad => \LessThan12~2_combout\,
	combout => \process_0~31_combout\);

-- Location: LCCOMB_X21_Y13_N22
\process_0~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \process_0~30_combout\ = ((\process_0~27_combout\) # ((\SYNC|Add2~3_combout\ & !\LessThan15~1_combout\))) # (!\LessThan16~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SYNC|Add2~3_combout\,
	datab => \LessThan15~1_combout\,
	datac => \LessThan16~0_combout\,
	datad => \process_0~27_combout\,
	combout => \process_0~30_combout\);

-- Location: LCCOMB_X21_Y13_N24
\G~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \G~12_combout\ = (\process_0~28_combout\ & (((\process_0~29_combout\ & \G~11_combout\)) # (!\process_0~30_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~29_combout\,
	datab => \G~11_combout\,
	datac => \process_0~30_combout\,
	datad => \process_0~28_combout\,
	combout => \G~12_combout\);

-- Location: LCCOMB_X21_Y13_N14
\G~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \G~13_combout\ = (\process_0~27_combout\ & (((\G~12_combout\) # (!\process_0~31_combout\)))) # (!\process_0~27_combout\ & (!\process_0~3_combout\ & ((\G~12_combout\) # (!\process_0~31_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101100001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~27_combout\,
	datab => \process_0~3_combout\,
	datac => \process_0~31_combout\,
	datad => \G~12_combout\,
	combout => \G~13_combout\);

-- Location: LCCOMB_X20_Y14_N4
\G~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \G~24_combout\ = (\B~5_combout\ & \G~13_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B~5_combout\,
	datad => \G~13_combout\,
	combout => \G~24_combout\);

-- Location: FF_X20_Y14_N5
\G[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK|TEMPORAL~clkctrl_outclk\,
	d => \G~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G[2]~reg0_q\);

-- Location: FF_X20_Y14_N23
\G[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK|TEMPORAL~clkctrl_outclk\,
	asdata => \G~24_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G[3]~reg0_q\);

-- Location: LCCOMB_X20_Y13_N2
\B~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \B~9_combout\ = (\process_0~31_combout\ & (\process_0~28_combout\ & ((\process_0~27_combout\) # (!\process_0~3_combout\)))) # (!\process_0~31_combout\ & (((\process_0~27_combout\)) # (!\process_0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001101010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~31_combout\,
	datab => \process_0~3_combout\,
	datac => \process_0~27_combout\,
	datad => \process_0~28_combout\,
	combout => \B~9_combout\);

-- Location: LCCOMB_X21_Y13_N0
\B~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \B~7_combout\ = (\process_0~30_combout\ & (((\LessThan11~2_combout\) # (\process_0~27_combout\)) # (!\LessThan12~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan12~2_combout\,
	datab => \LessThan11~2_combout\,
	datac => \process_0~30_combout\,
	datad => \process_0~27_combout\,
	combout => \B~7_combout\);

-- Location: LCCOMB_X27_Y15_N30
\LessThan17~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan17~5_combout\ = (!\SYNC|COUNTER_H\(6) & (\SYNC|COUNTER_H\(4) & !\SYNC|COUNTER_H\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SYNC|COUNTER_H\(6),
	datab => \SYNC|COUNTER_H\(4),
	datad => \SYNC|COUNTER_H\(5),
	combout => \LessThan17~5_combout\);

-- Location: LCCOMB_X26_Y15_N0
\LessThan18~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan18~0_combout\ = (\SYNC|Add2~3_combout\ & (((\SYNC|LessThan0~0_combout\ & \LessThan17~5_combout\)) # (!\LessThan21~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan21~0_combout\,
	datab => \SYNC|LessThan0~0_combout\,
	datac => \LessThan17~5_combout\,
	datad => \SYNC|Add2~3_combout\,
	combout => \LessThan18~0_combout\);

-- Location: LCCOMB_X21_Y13_N26
\process_0~29\ : cycloneiii_lcell_comb
-- Equation(s):
-- \process_0~29_combout\ = ((\process_0~27_combout\) # ((\SYNC|Add2~3_combout\ & !\LessThan17~8_combout\))) # (!\LessThan18~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SYNC|Add2~3_combout\,
	datab => \LessThan18~0_combout\,
	datac => \LessThan17~8_combout\,
	datad => \process_0~27_combout\,
	combout => \process_0~29_combout\);

-- Location: LCCOMB_X20_Y13_N4
\B~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \B~10_combout\ = ((\B~7_combout\ & ((\B~8_combout\) # (!\process_0~29_combout\)))) # (!\B~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~8_combout\,
	datab => \B~9_combout\,
	datac => \B~7_combout\,
	datad => \process_0~29_combout\,
	combout => \B~10_combout\);

-- Location: LCCOMB_X22_Y14_N24
\B~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \B~6_combout\ = (\process_0~15_combout\ & (!\G[0]~3_combout\ & (\B~3_combout\ & !\R~23_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~15_combout\,
	datab => \G[0]~3_combout\,
	datac => \B~3_combout\,
	datad => \R~23_combout\,
	combout => \B~6_combout\);

-- Location: LCCOMB_X22_Y14_N22
\B~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \B~11_combout\ = ((\B~6_combout\) # ((\B~19_combout\ & \B~10_combout\))) # (!\R~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \R~10_combout\,
	datab => \B~19_combout\,
	datac => \B~10_combout\,
	datad => \B~6_combout\,
	combout => \B~11_combout\);

-- Location: FF_X22_Y14_N23
\B[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK|TEMPORAL~clkctrl_outclk\,
	d => \B~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B[0]~reg0_q\);

-- Location: LCCOMB_X19_Y14_N24
\R~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \R~26_combout\ = (\process_0~5_combout\ & ((\Add0~20_combout\) # ((!\process_0~10_combout\) # (!\LessThan2~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~20_combout\,
	datab => \LessThan2~18_combout\,
	datac => \process_0~5_combout\,
	datad => \process_0~10_combout\,
	combout => \R~26_combout\);

-- Location: LCCOMB_X19_Y14_N14
\B~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \B~15_combout\ = ((\R[0]~8_combout\) # ((\process_0~7_combout\ & !\process_0~15_combout\))) # (!\process_0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~8_combout\,
	datab => \process_0~7_combout\,
	datac => \R[0]~8_combout\,
	datad => \process_0~15_combout\,
	combout => \B~15_combout\);

-- Location: LCCOMB_X19_Y14_N4
\B~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \B~16_combout\ = (\B~15_combout\) # ((\process_0~23_combout\ & (\process_0~7_combout\ & !\R~17_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~23_combout\,
	datab => \process_0~7_combout\,
	datac => \B~15_combout\,
	datad => \R~17_combout\,
	combout => \B~16_combout\);

-- Location: LCCOMB_X19_Y14_N8
\B~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \B~12_combout\ = (!\process_0~11_combout\ & (\R[0]~8_combout\ & \process_0~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~11_combout\,
	datac => \R[0]~8_combout\,
	datad => \process_0~12_combout\,
	combout => \B~12_combout\);

-- Location: LCCOMB_X20_Y14_N18
\B~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \B~13_combout\ = (\B~7_combout\ & ((\B~8_combout\) # ((!\process_0~29_combout\) # (!\R[0]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~8_combout\,
	datab => \B~7_combout\,
	datac => \R[0]~8_combout\,
	datad => \process_0~29_combout\,
	combout => \B~13_combout\);

-- Location: LCCOMB_X19_Y14_N2
\B~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \B~14_combout\ = ((\B~12_combout\ & ((\B~13_combout\) # (!\B~9_combout\)))) # (!\R~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001101110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~9_combout\,
	datab => \R~9_combout\,
	datac => \B~12_combout\,
	datad => \B~13_combout\,
	combout => \B~14_combout\);

-- Location: LCCOMB_X19_Y14_N10
\B~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \B~17_combout\ = (\B~14_combout\) # ((!\R[0]~8_combout\ & (\R~26_combout\ & \B~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \R[0]~8_combout\,
	datab => \R~26_combout\,
	datac => \B~16_combout\,
	datad => \B~14_combout\,
	combout => \B~17_combout\);

-- Location: FF_X19_Y14_N11
\B[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK|TEMPORAL~clkctrl_outclk\,
	d => \B~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B[1]~reg0_q\);

-- Location: LCCOMB_X20_Y14_N8
\B~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \B~18_combout\ = (\B~5_combout\ & \B~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B~5_combout\,
	datad => \B~10_combout\,
	combout => \B~18_combout\);

-- Location: FF_X20_Y14_N9
\B[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK|TEMPORAL~clkctrl_outclk\,
	d => \B~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B[2]~reg0_q\);

-- Location: FF_X20_Y14_N3
\B[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK|TEMPORAL~clkctrl_outclk\,
	asdata => \B~18_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B[3]~reg0_q\);

-- Location: IOIBUF_X41_Y15_N1
\CLK_50MHz~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLK_50MHz,
	o => \CLK_50MHz~input_o\);

-- Location: CLKCTRL_G9
\CLK_50MHz~inputclkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLK_50MHz~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLK_50MHz~inputclkctrl_outclk\);

-- Location: LCCOMB_X10_Y11_N0
\PIANOSPEAKER|COUNTER440[0]~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PIANOSPEAKER|COUNTER440[0]~32_combout\ = \PIANOSPEAKER|COUNTER440\(0) $ (VCC)
-- \PIANOSPEAKER|COUNTER440[0]~33\ = CARRY(\PIANOSPEAKER|COUNTER440\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PIANOSPEAKER|COUNTER440\(0),
	datad => VCC,
	combout => \PIANOSPEAKER|COUNTER440[0]~32_combout\,
	cout => \PIANOSPEAKER|COUNTER440[0]~33\);

-- Location: LCCOMB_X10_Y10_N10
\PIANOSPEAKER|COUNTER440[21]~74\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PIANOSPEAKER|COUNTER440[21]~74_combout\ = (\PIANOSPEAKER|COUNTER440\(21) & (!\PIANOSPEAKER|COUNTER440[20]~73\)) # (!\PIANOSPEAKER|COUNTER440\(21) & ((\PIANOSPEAKER|COUNTER440[20]~73\) # (GND)))
-- \PIANOSPEAKER|COUNTER440[21]~75\ = CARRY((!\PIANOSPEAKER|COUNTER440[20]~73\) # (!\PIANOSPEAKER|COUNTER440\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PIANOSPEAKER|COUNTER440\(21),
	datad => VCC,
	cin => \PIANOSPEAKER|COUNTER440[20]~73\,
	combout => \PIANOSPEAKER|COUNTER440[21]~74_combout\,
	cout => \PIANOSPEAKER|COUNTER440[21]~75\);

-- Location: FF_X10_Y10_N11
\PIANOSPEAKER|COUNTER440[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \PIANOSPEAKER|COUNTER440[21]~74_combout\,
	sclr => \PIANOSPEAKER|LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PIANOSPEAKER|COUNTER440\(21));

-- Location: LCCOMB_X11_Y10_N2
\PIANOSPEAKER|LessThan0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PIANOSPEAKER|LessThan0~6_combout\ = (!\PIANOSPEAKER|COUNTER440\(22) & (!\PIANOSPEAKER|COUNTER440\(21) & (!\PIANOSPEAKER|COUNTER440\(24) & !\PIANOSPEAKER|COUNTER440\(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PIANOSPEAKER|COUNTER440\(22),
	datab => \PIANOSPEAKER|COUNTER440\(21),
	datac => \PIANOSPEAKER|COUNTER440\(24),
	datad => \PIANOSPEAKER|COUNTER440\(23),
	combout => \PIANOSPEAKER|LessThan0~6_combout\);

-- Location: LCCOMB_X10_Y10_N26
\PIANOSPEAKER|COUNTER440[29]~90\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PIANOSPEAKER|COUNTER440[29]~90_combout\ = (\PIANOSPEAKER|COUNTER440\(29) & (!\PIANOSPEAKER|COUNTER440[28]~89\)) # (!\PIANOSPEAKER|COUNTER440\(29) & ((\PIANOSPEAKER|COUNTER440[28]~89\) # (GND)))
-- \PIANOSPEAKER|COUNTER440[29]~91\ = CARRY((!\PIANOSPEAKER|COUNTER440[28]~89\) # (!\PIANOSPEAKER|COUNTER440\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PIANOSPEAKER|COUNTER440\(29),
	datad => VCC,
	cin => \PIANOSPEAKER|COUNTER440[28]~89\,
	combout => \PIANOSPEAKER|COUNTER440[29]~90_combout\,
	cout => \PIANOSPEAKER|COUNTER440[29]~91\);

-- Location: FF_X10_Y10_N27
\PIANOSPEAKER|COUNTER440[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \PIANOSPEAKER|COUNTER440[29]~90_combout\,
	sclr => \PIANOSPEAKER|LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PIANOSPEAKER|COUNTER440\(29));

-- Location: LCCOMB_X10_Y10_N22
\PIANOSPEAKER|COUNTER440[27]~86\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PIANOSPEAKER|COUNTER440[27]~86_combout\ = (\PIANOSPEAKER|COUNTER440\(27) & (!\PIANOSPEAKER|COUNTER440[26]~85\)) # (!\PIANOSPEAKER|COUNTER440\(27) & ((\PIANOSPEAKER|COUNTER440[26]~85\) # (GND)))
-- \PIANOSPEAKER|COUNTER440[27]~87\ = CARRY((!\PIANOSPEAKER|COUNTER440[26]~85\) # (!\PIANOSPEAKER|COUNTER440\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PIANOSPEAKER|COUNTER440\(27),
	datad => VCC,
	cin => \PIANOSPEAKER|COUNTER440[26]~85\,
	combout => \PIANOSPEAKER|COUNTER440[27]~86_combout\,
	cout => \PIANOSPEAKER|COUNTER440[27]~87\);

-- Location: FF_X10_Y10_N23
\PIANOSPEAKER|COUNTER440[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \PIANOSPEAKER|COUNTER440[27]~86_combout\,
	sclr => \PIANOSPEAKER|LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PIANOSPEAKER|COUNTER440\(27));

-- Location: LCCOMB_X11_Y11_N20
\PIANOSPEAKER|LessThan0~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PIANOSPEAKER|LessThan0~7_combout\ = (!\PIANOSPEAKER|COUNTER440\(28) & (!\PIANOSPEAKER|COUNTER440\(27) & (!\PIANOSPEAKER|COUNTER440\(26) & !\PIANOSPEAKER|COUNTER440\(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PIANOSPEAKER|COUNTER440\(28),
	datab => \PIANOSPEAKER|COUNTER440\(27),
	datac => \PIANOSPEAKER|COUNTER440\(26),
	datad => \PIANOSPEAKER|COUNTER440\(25),
	combout => \PIANOSPEAKER|LessThan0~7_combout\);

-- Location: LCCOMB_X11_Y11_N26
\PIANOSPEAKER|LessThan0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PIANOSPEAKER|LessThan0~8_combout\ = (!\PIANOSPEAKER|COUNTER440\(30) & (!\PIANOSPEAKER|COUNTER440\(29) & \PIANOSPEAKER|LessThan0~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PIANOSPEAKER|COUNTER440\(30),
	datac => \PIANOSPEAKER|COUNTER440\(29),
	datad => \PIANOSPEAKER|LessThan0~7_combout\,
	combout => \PIANOSPEAKER|LessThan0~8_combout\);

-- Location: LCCOMB_X10_Y11_N30
\PIANOSPEAKER|COUNTER440[15]~62\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PIANOSPEAKER|COUNTER440[15]~62_combout\ = (\PIANOSPEAKER|COUNTER440\(15) & (!\PIANOSPEAKER|COUNTER440[14]~61\)) # (!\PIANOSPEAKER|COUNTER440\(15) & ((\PIANOSPEAKER|COUNTER440[14]~61\) # (GND)))
-- \PIANOSPEAKER|COUNTER440[15]~63\ = CARRY((!\PIANOSPEAKER|COUNTER440[14]~61\) # (!\PIANOSPEAKER|COUNTER440\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PIANOSPEAKER|COUNTER440\(15),
	datad => VCC,
	cin => \PIANOSPEAKER|COUNTER440[14]~61\,
	combout => \PIANOSPEAKER|COUNTER440[15]~62_combout\,
	cout => \PIANOSPEAKER|COUNTER440[15]~63\);

-- Location: FF_X10_Y11_N31
\PIANOSPEAKER|COUNTER440[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \PIANOSPEAKER|COUNTER440[15]~62_combout\,
	sclr => \PIANOSPEAKER|LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PIANOSPEAKER|COUNTER440\(15));

-- Location: LCCOMB_X10_Y11_N6
\PIANOSPEAKER|COUNTER440[3]~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PIANOSPEAKER|COUNTER440[3]~38_combout\ = (\PIANOSPEAKER|COUNTER440\(3) & (!\PIANOSPEAKER|COUNTER440[2]~37\)) # (!\PIANOSPEAKER|COUNTER440\(3) & ((\PIANOSPEAKER|COUNTER440[2]~37\) # (GND)))
-- \PIANOSPEAKER|COUNTER440[3]~39\ = CARRY((!\PIANOSPEAKER|COUNTER440[2]~37\) # (!\PIANOSPEAKER|COUNTER440\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PIANOSPEAKER|COUNTER440\(3),
	datad => VCC,
	cin => \PIANOSPEAKER|COUNTER440[2]~37\,
	combout => \PIANOSPEAKER|COUNTER440[3]~38_combout\,
	cout => \PIANOSPEAKER|COUNTER440[3]~39\);

-- Location: FF_X10_Y11_N7
\PIANOSPEAKER|COUNTER440[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \PIANOSPEAKER|COUNTER440[3]~38_combout\,
	sclr => \PIANOSPEAKER|LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PIANOSPEAKER|COUNTER440\(3));

-- Location: LCCOMB_X11_Y11_N4
\PIANOSPEAKER|LessThan0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PIANOSPEAKER|LessThan0~1_combout\ = ((!\PIANOSPEAKER|COUNTER440\(2) & (!\PIANOSPEAKER|COUNTER440\(4) & !\PIANOSPEAKER|COUNTER440\(3)))) # (!\PIANOSPEAKER|COUNTER440\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PIANOSPEAKER|COUNTER440\(5),
	datab => \PIANOSPEAKER|COUNTER440\(2),
	datac => \PIANOSPEAKER|COUNTER440\(4),
	datad => \PIANOSPEAKER|COUNTER440\(3),
	combout => \PIANOSPEAKER|LessThan0~1_combout\);

-- Location: LCCOMB_X10_Y11_N12
\PIANOSPEAKER|COUNTER440[6]~44\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PIANOSPEAKER|COUNTER440[6]~44_combout\ = (\PIANOSPEAKER|COUNTER440\(6) & (\PIANOSPEAKER|COUNTER440[5]~43\ $ (GND))) # (!\PIANOSPEAKER|COUNTER440\(6) & (!\PIANOSPEAKER|COUNTER440[5]~43\ & VCC))
-- \PIANOSPEAKER|COUNTER440[6]~45\ = CARRY((\PIANOSPEAKER|COUNTER440\(6) & !\PIANOSPEAKER|COUNTER440[5]~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PIANOSPEAKER|COUNTER440\(6),
	datad => VCC,
	cin => \PIANOSPEAKER|COUNTER440[5]~43\,
	combout => \PIANOSPEAKER|COUNTER440[6]~44_combout\,
	cout => \PIANOSPEAKER|COUNTER440[6]~45\);

-- Location: FF_X10_Y11_N13
\PIANOSPEAKER|COUNTER440[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \PIANOSPEAKER|COUNTER440[6]~44_combout\,
	sclr => \PIANOSPEAKER|LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PIANOSPEAKER|COUNTER440\(6));

-- Location: LCCOMB_X11_Y11_N2
\PIANOSPEAKER|LessThan0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PIANOSPEAKER|LessThan0~2_combout\ = (((!\PIANOSPEAKER|COUNTER440\(6)) # (!\PIANOSPEAKER|COUNTER440\(8))) # (!\PIANOSPEAKER|COUNTER440\(9))) # (!\PIANOSPEAKER|COUNTER440\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PIANOSPEAKER|COUNTER440\(7),
	datab => \PIANOSPEAKER|COUNTER440\(9),
	datac => \PIANOSPEAKER|COUNTER440\(8),
	datad => \PIANOSPEAKER|COUNTER440\(6),
	combout => \PIANOSPEAKER|LessThan0~2_combout\);

-- Location: LCCOMB_X11_Y11_N28
\PIANOSPEAKER|LessThan0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PIANOSPEAKER|LessThan0~3_combout\ = (\PIANOSPEAKER|LessThan0~0_combout\) # ((!\PIANOSPEAKER|COUNTER440\(10) & ((\PIANOSPEAKER|LessThan0~1_combout\) # (\PIANOSPEAKER|LessThan0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PIANOSPEAKER|LessThan0~0_combout\,
	datab => \PIANOSPEAKER|COUNTER440\(10),
	datac => \PIANOSPEAKER|LessThan0~1_combout\,
	datad => \PIANOSPEAKER|LessThan0~2_combout\,
	combout => \PIANOSPEAKER|LessThan0~3_combout\);

-- Location: LCCOMB_X11_Y11_N6
\PIANOSPEAKER|LessThan0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PIANOSPEAKER|LessThan0~4_combout\ = (((!\PIANOSPEAKER|COUNTER440\(14) & \PIANOSPEAKER|LessThan0~3_combout\)) # (!\PIANOSPEAKER|COUNTER440\(15))) # (!\PIANOSPEAKER|COUNTER440\(16))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PIANOSPEAKER|COUNTER440\(16),
	datab => \PIANOSPEAKER|COUNTER440\(14),
	datac => \PIANOSPEAKER|COUNTER440\(15),
	datad => \PIANOSPEAKER|LessThan0~3_combout\,
	combout => \PIANOSPEAKER|LessThan0~4_combout\);

-- Location: LCCOMB_X11_Y11_N12
\PIANOSPEAKER|LessThan0~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PIANOSPEAKER|LessThan0~9_combout\ = (\PIANOSPEAKER|LessThan0~5_combout\ & (\PIANOSPEAKER|LessThan0~6_combout\ & (\PIANOSPEAKER|LessThan0~8_combout\ & \PIANOSPEAKER|LessThan0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PIANOSPEAKER|LessThan0~5_combout\,
	datab => \PIANOSPEAKER|LessThan0~6_combout\,
	datac => \PIANOSPEAKER|LessThan0~8_combout\,
	datad => \PIANOSPEAKER|LessThan0~4_combout\,
	combout => \PIANOSPEAKER|LessThan0~9_combout\);

-- Location: LCCOMB_X11_Y11_N30
\PIANOSPEAKER|LessThan0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PIANOSPEAKER|LessThan0~10_combout\ = (!\PIANOSPEAKER|COUNTER440\(31) & !\PIANOSPEAKER|LessThan0~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \PIANOSPEAKER|COUNTER440\(31),
	datad => \PIANOSPEAKER|LessThan0~9_combout\,
	combout => \PIANOSPEAKER|LessThan0~10_combout\);

-- Location: FF_X10_Y11_N1
\PIANOSPEAKER|COUNTER440[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \PIANOSPEAKER|COUNTER440[0]~32_combout\,
	sclr => \PIANOSPEAKER|LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PIANOSPEAKER|COUNTER440\(0));

-- Location: LCCOMB_X10_Y11_N2
\PIANOSPEAKER|COUNTER440[1]~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PIANOSPEAKER|COUNTER440[1]~34_combout\ = (\PIANOSPEAKER|COUNTER440\(1) & (!\PIANOSPEAKER|COUNTER440[0]~33\)) # (!\PIANOSPEAKER|COUNTER440\(1) & ((\PIANOSPEAKER|COUNTER440[0]~33\) # (GND)))
-- \PIANOSPEAKER|COUNTER440[1]~35\ = CARRY((!\PIANOSPEAKER|COUNTER440[0]~33\) # (!\PIANOSPEAKER|COUNTER440\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PIANOSPEAKER|COUNTER440\(1),
	datad => VCC,
	cin => \PIANOSPEAKER|COUNTER440[0]~33\,
	combout => \PIANOSPEAKER|COUNTER440[1]~34_combout\,
	cout => \PIANOSPEAKER|COUNTER440[1]~35\);

-- Location: FF_X10_Y11_N3
\PIANOSPEAKER|COUNTER440[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \PIANOSPEAKER|COUNTER440[1]~34_combout\,
	sclr => \PIANOSPEAKER|LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PIANOSPEAKER|COUNTER440\(1));

-- Location: LCCOMB_X10_Y11_N4
\PIANOSPEAKER|COUNTER440[2]~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PIANOSPEAKER|COUNTER440[2]~36_combout\ = (\PIANOSPEAKER|COUNTER440\(2) & (\PIANOSPEAKER|COUNTER440[1]~35\ $ (GND))) # (!\PIANOSPEAKER|COUNTER440\(2) & (!\PIANOSPEAKER|COUNTER440[1]~35\ & VCC))
-- \PIANOSPEAKER|COUNTER440[2]~37\ = CARRY((\PIANOSPEAKER|COUNTER440\(2) & !\PIANOSPEAKER|COUNTER440[1]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PIANOSPEAKER|COUNTER440\(2),
	datad => VCC,
	cin => \PIANOSPEAKER|COUNTER440[1]~35\,
	combout => \PIANOSPEAKER|COUNTER440[2]~36_combout\,
	cout => \PIANOSPEAKER|COUNTER440[2]~37\);

-- Location: FF_X10_Y11_N5
\PIANOSPEAKER|COUNTER440[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \PIANOSPEAKER|COUNTER440[2]~36_combout\,
	sclr => \PIANOSPEAKER|LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PIANOSPEAKER|COUNTER440\(2));

-- Location: LCCOMB_X10_Y11_N8
\PIANOSPEAKER|COUNTER440[4]~40\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PIANOSPEAKER|COUNTER440[4]~40_combout\ = (\PIANOSPEAKER|COUNTER440\(4) & (\PIANOSPEAKER|COUNTER440[3]~39\ $ (GND))) # (!\PIANOSPEAKER|COUNTER440\(4) & (!\PIANOSPEAKER|COUNTER440[3]~39\ & VCC))
-- \PIANOSPEAKER|COUNTER440[4]~41\ = CARRY((\PIANOSPEAKER|COUNTER440\(4) & !\PIANOSPEAKER|COUNTER440[3]~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PIANOSPEAKER|COUNTER440\(4),
	datad => VCC,
	cin => \PIANOSPEAKER|COUNTER440[3]~39\,
	combout => \PIANOSPEAKER|COUNTER440[4]~40_combout\,
	cout => \PIANOSPEAKER|COUNTER440[4]~41\);

-- Location: FF_X10_Y11_N9
\PIANOSPEAKER|COUNTER440[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \PIANOSPEAKER|COUNTER440[4]~40_combout\,
	sclr => \PIANOSPEAKER|LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PIANOSPEAKER|COUNTER440\(4));

-- Location: LCCOMB_X10_Y11_N14
\PIANOSPEAKER|COUNTER440[7]~46\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PIANOSPEAKER|COUNTER440[7]~46_combout\ = (\PIANOSPEAKER|COUNTER440\(7) & (!\PIANOSPEAKER|COUNTER440[6]~45\)) # (!\PIANOSPEAKER|COUNTER440\(7) & ((\PIANOSPEAKER|COUNTER440[6]~45\) # (GND)))
-- \PIANOSPEAKER|COUNTER440[7]~47\ = CARRY((!\PIANOSPEAKER|COUNTER440[6]~45\) # (!\PIANOSPEAKER|COUNTER440\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PIANOSPEAKER|COUNTER440\(7),
	datad => VCC,
	cin => \PIANOSPEAKER|COUNTER440[6]~45\,
	combout => \PIANOSPEAKER|COUNTER440[7]~46_combout\,
	cout => \PIANOSPEAKER|COUNTER440[7]~47\);

-- Location: FF_X10_Y11_N15
\PIANOSPEAKER|COUNTER440[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \PIANOSPEAKER|COUNTER440[7]~46_combout\,
	sclr => \PIANOSPEAKER|LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PIANOSPEAKER|COUNTER440\(7));

-- Location: LCCOMB_X10_Y11_N16
\PIANOSPEAKER|COUNTER440[8]~48\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PIANOSPEAKER|COUNTER440[8]~48_combout\ = (\PIANOSPEAKER|COUNTER440\(8) & (\PIANOSPEAKER|COUNTER440[7]~47\ $ (GND))) # (!\PIANOSPEAKER|COUNTER440\(8) & (!\PIANOSPEAKER|COUNTER440[7]~47\ & VCC))
-- \PIANOSPEAKER|COUNTER440[8]~49\ = CARRY((\PIANOSPEAKER|COUNTER440\(8) & !\PIANOSPEAKER|COUNTER440[7]~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PIANOSPEAKER|COUNTER440\(8),
	datad => VCC,
	cin => \PIANOSPEAKER|COUNTER440[7]~47\,
	combout => \PIANOSPEAKER|COUNTER440[8]~48_combout\,
	cout => \PIANOSPEAKER|COUNTER440[8]~49\);

-- Location: FF_X10_Y11_N17
\PIANOSPEAKER|COUNTER440[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \PIANOSPEAKER|COUNTER440[8]~48_combout\,
	sclr => \PIANOSPEAKER|LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PIANOSPEAKER|COUNTER440\(8));

-- Location: LCCOMB_X10_Y11_N18
\PIANOSPEAKER|COUNTER440[9]~50\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PIANOSPEAKER|COUNTER440[9]~50_combout\ = (\PIANOSPEAKER|COUNTER440\(9) & (!\PIANOSPEAKER|COUNTER440[8]~49\)) # (!\PIANOSPEAKER|COUNTER440\(9) & ((\PIANOSPEAKER|COUNTER440[8]~49\) # (GND)))
-- \PIANOSPEAKER|COUNTER440[9]~51\ = CARRY((!\PIANOSPEAKER|COUNTER440[8]~49\) # (!\PIANOSPEAKER|COUNTER440\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PIANOSPEAKER|COUNTER440\(9),
	datad => VCC,
	cin => \PIANOSPEAKER|COUNTER440[8]~49\,
	combout => \PIANOSPEAKER|COUNTER440[9]~50_combout\,
	cout => \PIANOSPEAKER|COUNTER440[9]~51\);

-- Location: FF_X10_Y11_N19
\PIANOSPEAKER|COUNTER440[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \PIANOSPEAKER|COUNTER440[9]~50_combout\,
	sclr => \PIANOSPEAKER|LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PIANOSPEAKER|COUNTER440\(9));

-- Location: LCCOMB_X10_Y11_N20
\PIANOSPEAKER|COUNTER440[10]~52\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PIANOSPEAKER|COUNTER440[10]~52_combout\ = (\PIANOSPEAKER|COUNTER440\(10) & (\PIANOSPEAKER|COUNTER440[9]~51\ $ (GND))) # (!\PIANOSPEAKER|COUNTER440\(10) & (!\PIANOSPEAKER|COUNTER440[9]~51\ & VCC))
-- \PIANOSPEAKER|COUNTER440[10]~53\ = CARRY((\PIANOSPEAKER|COUNTER440\(10) & !\PIANOSPEAKER|COUNTER440[9]~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PIANOSPEAKER|COUNTER440\(10),
	datad => VCC,
	cin => \PIANOSPEAKER|COUNTER440[9]~51\,
	combout => \PIANOSPEAKER|COUNTER440[10]~52_combout\,
	cout => \PIANOSPEAKER|COUNTER440[10]~53\);

-- Location: FF_X10_Y11_N21
\PIANOSPEAKER|COUNTER440[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \PIANOSPEAKER|COUNTER440[10]~52_combout\,
	sclr => \PIANOSPEAKER|LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PIANOSPEAKER|COUNTER440\(10));

-- Location: LCCOMB_X10_Y11_N24
\PIANOSPEAKER|COUNTER440[12]~56\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PIANOSPEAKER|COUNTER440[12]~56_combout\ = (\PIANOSPEAKER|COUNTER440\(12) & (\PIANOSPEAKER|COUNTER440[11]~55\ $ (GND))) # (!\PIANOSPEAKER|COUNTER440\(12) & (!\PIANOSPEAKER|COUNTER440[11]~55\ & VCC))
-- \PIANOSPEAKER|COUNTER440[12]~57\ = CARRY((\PIANOSPEAKER|COUNTER440\(12) & !\PIANOSPEAKER|COUNTER440[11]~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PIANOSPEAKER|COUNTER440\(12),
	datad => VCC,
	cin => \PIANOSPEAKER|COUNTER440[11]~55\,
	combout => \PIANOSPEAKER|COUNTER440[12]~56_combout\,
	cout => \PIANOSPEAKER|COUNTER440[12]~57\);

-- Location: FF_X10_Y11_N25
\PIANOSPEAKER|COUNTER440[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \PIANOSPEAKER|COUNTER440[12]~56_combout\,
	sclr => \PIANOSPEAKER|LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PIANOSPEAKER|COUNTER440\(12));

-- Location: LCCOMB_X10_Y11_N28
\PIANOSPEAKER|COUNTER440[14]~60\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PIANOSPEAKER|COUNTER440[14]~60_combout\ = (\PIANOSPEAKER|COUNTER440\(14) & (\PIANOSPEAKER|COUNTER440[13]~59\ $ (GND))) # (!\PIANOSPEAKER|COUNTER440\(14) & (!\PIANOSPEAKER|COUNTER440[13]~59\ & VCC))
-- \PIANOSPEAKER|COUNTER440[14]~61\ = CARRY((\PIANOSPEAKER|COUNTER440\(14) & !\PIANOSPEAKER|COUNTER440[13]~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PIANOSPEAKER|COUNTER440\(14),
	datad => VCC,
	cin => \PIANOSPEAKER|COUNTER440[13]~59\,
	combout => \PIANOSPEAKER|COUNTER440[14]~60_combout\,
	cout => \PIANOSPEAKER|COUNTER440[14]~61\);

-- Location: FF_X10_Y11_N29
\PIANOSPEAKER|COUNTER440[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \PIANOSPEAKER|COUNTER440[14]~60_combout\,
	sclr => \PIANOSPEAKER|LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PIANOSPEAKER|COUNTER440\(14));

-- Location: LCCOMB_X10_Y10_N0
\PIANOSPEAKER|COUNTER440[16]~64\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PIANOSPEAKER|COUNTER440[16]~64_combout\ = (\PIANOSPEAKER|COUNTER440\(16) & (\PIANOSPEAKER|COUNTER440[15]~63\ $ (GND))) # (!\PIANOSPEAKER|COUNTER440\(16) & (!\PIANOSPEAKER|COUNTER440[15]~63\ & VCC))
-- \PIANOSPEAKER|COUNTER440[16]~65\ = CARRY((\PIANOSPEAKER|COUNTER440\(16) & !\PIANOSPEAKER|COUNTER440[15]~63\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PIANOSPEAKER|COUNTER440\(16),
	datad => VCC,
	cin => \PIANOSPEAKER|COUNTER440[15]~63\,
	combout => \PIANOSPEAKER|COUNTER440[16]~64_combout\,
	cout => \PIANOSPEAKER|COUNTER440[16]~65\);

-- Location: FF_X10_Y10_N1
\PIANOSPEAKER|COUNTER440[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \PIANOSPEAKER|COUNTER440[16]~64_combout\,
	sclr => \PIANOSPEAKER|LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PIANOSPEAKER|COUNTER440\(16));

-- Location: LCCOMB_X10_Y10_N2
\PIANOSPEAKER|COUNTER440[17]~66\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PIANOSPEAKER|COUNTER440[17]~66_combout\ = (\PIANOSPEAKER|COUNTER440\(17) & (!\PIANOSPEAKER|COUNTER440[16]~65\)) # (!\PIANOSPEAKER|COUNTER440\(17) & ((\PIANOSPEAKER|COUNTER440[16]~65\) # (GND)))
-- \PIANOSPEAKER|COUNTER440[17]~67\ = CARRY((!\PIANOSPEAKER|COUNTER440[16]~65\) # (!\PIANOSPEAKER|COUNTER440\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PIANOSPEAKER|COUNTER440\(17),
	datad => VCC,
	cin => \PIANOSPEAKER|COUNTER440[16]~65\,
	combout => \PIANOSPEAKER|COUNTER440[17]~66_combout\,
	cout => \PIANOSPEAKER|COUNTER440[17]~67\);

-- Location: FF_X10_Y10_N3
\PIANOSPEAKER|COUNTER440[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \PIANOSPEAKER|COUNTER440[17]~66_combout\,
	sclr => \PIANOSPEAKER|LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PIANOSPEAKER|COUNTER440\(17));

-- Location: LCCOMB_X10_Y10_N4
\PIANOSPEAKER|COUNTER440[18]~68\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PIANOSPEAKER|COUNTER440[18]~68_combout\ = (\PIANOSPEAKER|COUNTER440\(18) & (\PIANOSPEAKER|COUNTER440[17]~67\ $ (GND))) # (!\PIANOSPEAKER|COUNTER440\(18) & (!\PIANOSPEAKER|COUNTER440[17]~67\ & VCC))
-- \PIANOSPEAKER|COUNTER440[18]~69\ = CARRY((\PIANOSPEAKER|COUNTER440\(18) & !\PIANOSPEAKER|COUNTER440[17]~67\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PIANOSPEAKER|COUNTER440\(18),
	datad => VCC,
	cin => \PIANOSPEAKER|COUNTER440[17]~67\,
	combout => \PIANOSPEAKER|COUNTER440[18]~68_combout\,
	cout => \PIANOSPEAKER|COUNTER440[18]~69\);

-- Location: FF_X10_Y10_N5
\PIANOSPEAKER|COUNTER440[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \PIANOSPEAKER|COUNTER440[18]~68_combout\,
	sclr => \PIANOSPEAKER|LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PIANOSPEAKER|COUNTER440\(18));

-- Location: LCCOMB_X10_Y10_N8
\PIANOSPEAKER|COUNTER440[20]~72\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PIANOSPEAKER|COUNTER440[20]~72_combout\ = (\PIANOSPEAKER|COUNTER440\(20) & (\PIANOSPEAKER|COUNTER440[19]~71\ $ (GND))) # (!\PIANOSPEAKER|COUNTER440\(20) & (!\PIANOSPEAKER|COUNTER440[19]~71\ & VCC))
-- \PIANOSPEAKER|COUNTER440[20]~73\ = CARRY((\PIANOSPEAKER|COUNTER440\(20) & !\PIANOSPEAKER|COUNTER440[19]~71\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PIANOSPEAKER|COUNTER440\(20),
	datad => VCC,
	cin => \PIANOSPEAKER|COUNTER440[19]~71\,
	combout => \PIANOSPEAKER|COUNTER440[20]~72_combout\,
	cout => \PIANOSPEAKER|COUNTER440[20]~73\);

-- Location: FF_X10_Y10_N9
\PIANOSPEAKER|COUNTER440[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \PIANOSPEAKER|COUNTER440[20]~72_combout\,
	sclr => \PIANOSPEAKER|LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PIANOSPEAKER|COUNTER440\(20));

-- Location: LCCOMB_X10_Y10_N14
\PIANOSPEAKER|COUNTER440[23]~78\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PIANOSPEAKER|COUNTER440[23]~78_combout\ = (\PIANOSPEAKER|COUNTER440\(23) & (!\PIANOSPEAKER|COUNTER440[22]~77\)) # (!\PIANOSPEAKER|COUNTER440\(23) & ((\PIANOSPEAKER|COUNTER440[22]~77\) # (GND)))
-- \PIANOSPEAKER|COUNTER440[23]~79\ = CARRY((!\PIANOSPEAKER|COUNTER440[22]~77\) # (!\PIANOSPEAKER|COUNTER440\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PIANOSPEAKER|COUNTER440\(23),
	datad => VCC,
	cin => \PIANOSPEAKER|COUNTER440[22]~77\,
	combout => \PIANOSPEAKER|COUNTER440[23]~78_combout\,
	cout => \PIANOSPEAKER|COUNTER440[23]~79\);

-- Location: FF_X10_Y10_N15
\PIANOSPEAKER|COUNTER440[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \PIANOSPEAKER|COUNTER440[23]~78_combout\,
	sclr => \PIANOSPEAKER|LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PIANOSPEAKER|COUNTER440\(23));

-- Location: LCCOMB_X10_Y10_N16
\PIANOSPEAKER|COUNTER440[24]~80\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PIANOSPEAKER|COUNTER440[24]~80_combout\ = (\PIANOSPEAKER|COUNTER440\(24) & (\PIANOSPEAKER|COUNTER440[23]~79\ $ (GND))) # (!\PIANOSPEAKER|COUNTER440\(24) & (!\PIANOSPEAKER|COUNTER440[23]~79\ & VCC))
-- \PIANOSPEAKER|COUNTER440[24]~81\ = CARRY((\PIANOSPEAKER|COUNTER440\(24) & !\PIANOSPEAKER|COUNTER440[23]~79\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PIANOSPEAKER|COUNTER440\(24),
	datad => VCC,
	cin => \PIANOSPEAKER|COUNTER440[23]~79\,
	combout => \PIANOSPEAKER|COUNTER440[24]~80_combout\,
	cout => \PIANOSPEAKER|COUNTER440[24]~81\);

-- Location: FF_X10_Y10_N17
\PIANOSPEAKER|COUNTER440[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \PIANOSPEAKER|COUNTER440[24]~80_combout\,
	sclr => \PIANOSPEAKER|LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PIANOSPEAKER|COUNTER440\(24));

-- Location: LCCOMB_X10_Y10_N18
\PIANOSPEAKER|COUNTER440[25]~82\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PIANOSPEAKER|COUNTER440[25]~82_combout\ = (\PIANOSPEAKER|COUNTER440\(25) & (!\PIANOSPEAKER|COUNTER440[24]~81\)) # (!\PIANOSPEAKER|COUNTER440\(25) & ((\PIANOSPEAKER|COUNTER440[24]~81\) # (GND)))
-- \PIANOSPEAKER|COUNTER440[25]~83\ = CARRY((!\PIANOSPEAKER|COUNTER440[24]~81\) # (!\PIANOSPEAKER|COUNTER440\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PIANOSPEAKER|COUNTER440\(25),
	datad => VCC,
	cin => \PIANOSPEAKER|COUNTER440[24]~81\,
	combout => \PIANOSPEAKER|COUNTER440[25]~82_combout\,
	cout => \PIANOSPEAKER|COUNTER440[25]~83\);

-- Location: FF_X10_Y10_N19
\PIANOSPEAKER|COUNTER440[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \PIANOSPEAKER|COUNTER440[25]~82_combout\,
	sclr => \PIANOSPEAKER|LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PIANOSPEAKER|COUNTER440\(25));

-- Location: LCCOMB_X10_Y10_N20
\PIANOSPEAKER|COUNTER440[26]~84\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PIANOSPEAKER|COUNTER440[26]~84_combout\ = (\PIANOSPEAKER|COUNTER440\(26) & (\PIANOSPEAKER|COUNTER440[25]~83\ $ (GND))) # (!\PIANOSPEAKER|COUNTER440\(26) & (!\PIANOSPEAKER|COUNTER440[25]~83\ & VCC))
-- \PIANOSPEAKER|COUNTER440[26]~85\ = CARRY((\PIANOSPEAKER|COUNTER440\(26) & !\PIANOSPEAKER|COUNTER440[25]~83\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PIANOSPEAKER|COUNTER440\(26),
	datad => VCC,
	cin => \PIANOSPEAKER|COUNTER440[25]~83\,
	combout => \PIANOSPEAKER|COUNTER440[26]~84_combout\,
	cout => \PIANOSPEAKER|COUNTER440[26]~85\);

-- Location: FF_X10_Y10_N21
\PIANOSPEAKER|COUNTER440[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \PIANOSPEAKER|COUNTER440[26]~84_combout\,
	sclr => \PIANOSPEAKER|LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PIANOSPEAKER|COUNTER440\(26));

-- Location: LCCOMB_X10_Y10_N24
\PIANOSPEAKER|COUNTER440[28]~88\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PIANOSPEAKER|COUNTER440[28]~88_combout\ = (\PIANOSPEAKER|COUNTER440\(28) & (\PIANOSPEAKER|COUNTER440[27]~87\ $ (GND))) # (!\PIANOSPEAKER|COUNTER440\(28) & (!\PIANOSPEAKER|COUNTER440[27]~87\ & VCC))
-- \PIANOSPEAKER|COUNTER440[28]~89\ = CARRY((\PIANOSPEAKER|COUNTER440\(28) & !\PIANOSPEAKER|COUNTER440[27]~87\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PIANOSPEAKER|COUNTER440\(28),
	datad => VCC,
	cin => \PIANOSPEAKER|COUNTER440[27]~87\,
	combout => \PIANOSPEAKER|COUNTER440[28]~88_combout\,
	cout => \PIANOSPEAKER|COUNTER440[28]~89\);

-- Location: FF_X10_Y10_N25
\PIANOSPEAKER|COUNTER440[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \PIANOSPEAKER|COUNTER440[28]~88_combout\,
	sclr => \PIANOSPEAKER|LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PIANOSPEAKER|COUNTER440\(28));

-- Location: LCCOMB_X10_Y10_N28
\PIANOSPEAKER|COUNTER440[30]~92\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PIANOSPEAKER|COUNTER440[30]~92_combout\ = (\PIANOSPEAKER|COUNTER440\(30) & (\PIANOSPEAKER|COUNTER440[29]~91\ $ (GND))) # (!\PIANOSPEAKER|COUNTER440\(30) & (!\PIANOSPEAKER|COUNTER440[29]~91\ & VCC))
-- \PIANOSPEAKER|COUNTER440[30]~93\ = CARRY((\PIANOSPEAKER|COUNTER440\(30) & !\PIANOSPEAKER|COUNTER440[29]~91\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PIANOSPEAKER|COUNTER440\(30),
	datad => VCC,
	cin => \PIANOSPEAKER|COUNTER440[29]~91\,
	combout => \PIANOSPEAKER|COUNTER440[30]~92_combout\,
	cout => \PIANOSPEAKER|COUNTER440[30]~93\);

-- Location: FF_X10_Y10_N29
\PIANOSPEAKER|COUNTER440[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \PIANOSPEAKER|COUNTER440[30]~92_combout\,
	sclr => \PIANOSPEAKER|LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PIANOSPEAKER|COUNTER440\(30));

-- Location: LCCOMB_X10_Y10_N30
\PIANOSPEAKER|COUNTER440[31]~94\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PIANOSPEAKER|COUNTER440[31]~94_combout\ = \PIANOSPEAKER|COUNTER440\(31) $ (\PIANOSPEAKER|COUNTER440[30]~93\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PIANOSPEAKER|COUNTER440\(31),
	cin => \PIANOSPEAKER|COUNTER440[30]~93\,
	combout => \PIANOSPEAKER|COUNTER440[31]~94_combout\);

-- Location: FF_X10_Y10_N31
\PIANOSPEAKER|COUNTER440[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \PIANOSPEAKER|COUNTER440[31]~94_combout\,
	sclr => \PIANOSPEAKER|LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PIANOSPEAKER|COUNTER440\(31));

-- Location: LCCOMB_X11_Y11_N24
\PIANOSPEAKER|CLK_440HZ~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PIANOSPEAKER|CLK_440HZ~0_combout\ = \PIANOSPEAKER|CLK_440HZ~q\ $ (((!\PIANOSPEAKER|COUNTER440\(31) & !\PIANOSPEAKER|LessThan0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PIANOSPEAKER|COUNTER440\(31),
	datac => \PIANOSPEAKER|CLK_440HZ~q\,
	datad => \PIANOSPEAKER|LessThan0~9_combout\,
	combout => \PIANOSPEAKER|CLK_440HZ~0_combout\);

-- Location: FF_X11_Y11_N25
\PIANOSPEAKER|CLK_440HZ\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \PIANOSPEAKER|CLK_440HZ~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PIANOSPEAKER|CLK_440HZ~q\);

-- Location: LCCOMB_X10_Y4_N0
\PIANOSPEAKER|COUNTER659[0]~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PIANOSPEAKER|COUNTER659[0]~32_combout\ = \PIANOSPEAKER|COUNTER659\(0) $ (VCC)
-- \PIANOSPEAKER|COUNTER659[0]~33\ = CARRY(\PIANOSPEAKER|COUNTER659\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PIANOSPEAKER|COUNTER659\(0),
	datad => VCC,
	combout => \PIANOSPEAKER|COUNTER659[0]~32_combout\,
	cout => \PIANOSPEAKER|COUNTER659[0]~33\);

-- Location: LCCOMB_X10_Y4_N30
\PIANOSPEAKER|COUNTER659[15]~62\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PIANOSPEAKER|COUNTER659[15]~62_combout\ = (\PIANOSPEAKER|COUNTER659\(15) & (!\PIANOSPEAKER|COUNTER659[14]~61\)) # (!\PIANOSPEAKER|COUNTER659\(15) & ((\PIANOSPEAKER|COUNTER659[14]~61\) # (GND)))
-- \PIANOSPEAKER|COUNTER659[15]~63\ = CARRY((!\PIANOSPEAKER|COUNTER659[14]~61\) # (!\PIANOSPEAKER|COUNTER659\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PIANOSPEAKER|COUNTER659\(15),
	datad => VCC,
	cin => \PIANOSPEAKER|COUNTER659[14]~61\,
	combout => \PIANOSPEAKER|COUNTER659[15]~62_combout\,
	cout => \PIANOSPEAKER|COUNTER659[15]~63\);

-- Location: FF_X10_Y4_N31
\PIANOSPEAKER|COUNTER659[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \PIANOSPEAKER|COUNTER659[15]~62_combout\,
	sclr => \PIANOSPEAKER|LessThan4~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PIANOSPEAKER|COUNTER659\(15));

-- Location: LCCOMB_X10_Y4_N26
\PIANOSPEAKER|COUNTER659[13]~58\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PIANOSPEAKER|COUNTER659[13]~58_combout\ = (\PIANOSPEAKER|COUNTER659\(13) & (!\PIANOSPEAKER|COUNTER659[12]~57\)) # (!\PIANOSPEAKER|COUNTER659\(13) & ((\PIANOSPEAKER|COUNTER659[12]~57\) # (GND)))
-- \PIANOSPEAKER|COUNTER659[13]~59\ = CARRY((!\PIANOSPEAKER|COUNTER659[12]~57\) # (!\PIANOSPEAKER|COUNTER659\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PIANOSPEAKER|COUNTER659\(13),
	datad => VCC,
	cin => \PIANOSPEAKER|COUNTER659[12]~57\,
	combout => \PIANOSPEAKER|COUNTER659[13]~58_combout\,
	cout => \PIANOSPEAKER|COUNTER659[13]~59\);

-- Location: FF_X10_Y4_N27
\PIANOSPEAKER|COUNTER659[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \PIANOSPEAKER|COUNTER659[13]~58_combout\,
	sclr => \PIANOSPEAKER|LessThan4~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PIANOSPEAKER|COUNTER659\(13));

-- Location: LCCOMB_X10_Y4_N12
\PIANOSPEAKER|COUNTER659[6]~44\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PIANOSPEAKER|COUNTER659[6]~44_combout\ = (\PIANOSPEAKER|COUNTER659\(6) & (\PIANOSPEAKER|COUNTER659[5]~43\ $ (GND))) # (!\PIANOSPEAKER|COUNTER659\(6) & (!\PIANOSPEAKER|COUNTER659[5]~43\ & VCC))
-- \PIANOSPEAKER|COUNTER659[6]~45\ = CARRY((\PIANOSPEAKER|COUNTER659\(6) & !\PIANOSPEAKER|COUNTER659[5]~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PIANOSPEAKER|COUNTER659\(6),
	datad => VCC,
	cin => \PIANOSPEAKER|COUNTER659[5]~43\,
	combout => \PIANOSPEAKER|COUNTER659[6]~44_combout\,
	cout => \PIANOSPEAKER|COUNTER659[6]~45\);

-- Location: FF_X10_Y4_N13
\PIANOSPEAKER|COUNTER659[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \PIANOSPEAKER|COUNTER659[6]~44_combout\,
	sclr => \PIANOSPEAKER|LessThan4~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PIANOSPEAKER|COUNTER659\(6));

-- Location: LCCOMB_X10_Y4_N10
\PIANOSPEAKER|COUNTER659[5]~42\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PIANOSPEAKER|COUNTER659[5]~42_combout\ = (\PIANOSPEAKER|COUNTER659\(5) & (!\PIANOSPEAKER|COUNTER659[4]~41\)) # (!\PIANOSPEAKER|COUNTER659\(5) & ((\PIANOSPEAKER|COUNTER659[4]~41\) # (GND)))
-- \PIANOSPEAKER|COUNTER659[5]~43\ = CARRY((!\PIANOSPEAKER|COUNTER659[4]~41\) # (!\PIANOSPEAKER|COUNTER659\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PIANOSPEAKER|COUNTER659\(5),
	datad => VCC,
	cin => \PIANOSPEAKER|COUNTER659[4]~41\,
	combout => \PIANOSPEAKER|COUNTER659[5]~42_combout\,
	cout => \PIANOSPEAKER|COUNTER659[5]~43\);

-- Location: FF_X10_Y4_N11
\PIANOSPEAKER|COUNTER659[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \PIANOSPEAKER|COUNTER659[5]~42_combout\,
	sclr => \PIANOSPEAKER|LessThan4~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PIANOSPEAKER|COUNTER659\(5));

-- Location: LCCOMB_X11_Y4_N22
\PIANOSPEAKER|LessThan4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PIANOSPEAKER|LessThan4~0_combout\ = (!\PIANOSPEAKER|COUNTER659\(7) & (!\PIANOSPEAKER|COUNTER659\(8) & ((!\PIANOSPEAKER|COUNTER659\(5)) # (!\PIANOSPEAKER|COUNTER659\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PIANOSPEAKER|COUNTER659\(7),
	datab => \PIANOSPEAKER|COUNTER659\(6),
	datac => \PIANOSPEAKER|COUNTER659\(8),
	datad => \PIANOSPEAKER|COUNTER659\(5),
	combout => \PIANOSPEAKER|LessThan4~0_combout\);

-- Location: LCCOMB_X10_Y4_N22
\PIANOSPEAKER|COUNTER659[11]~54\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PIANOSPEAKER|COUNTER659[11]~54_combout\ = (\PIANOSPEAKER|COUNTER659\(11) & (!\PIANOSPEAKER|COUNTER659[10]~53\)) # (!\PIANOSPEAKER|COUNTER659\(11) & ((\PIANOSPEAKER|COUNTER659[10]~53\) # (GND)))
-- \PIANOSPEAKER|COUNTER659[11]~55\ = CARRY((!\PIANOSPEAKER|COUNTER659[10]~53\) # (!\PIANOSPEAKER|COUNTER659\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PIANOSPEAKER|COUNTER659\(11),
	datad => VCC,
	cin => \PIANOSPEAKER|COUNTER659[10]~53\,
	combout => \PIANOSPEAKER|COUNTER659[11]~54_combout\,
	cout => \PIANOSPEAKER|COUNTER659[11]~55\);

-- Location: FF_X10_Y4_N23
\PIANOSPEAKER|COUNTER659[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \PIANOSPEAKER|COUNTER659[11]~54_combout\,
	sclr => \PIANOSPEAKER|LessThan4~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PIANOSPEAKER|COUNTER659\(11));

-- Location: LCCOMB_X11_Y4_N16
\PIANOSPEAKER|LessThan4~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PIANOSPEAKER|LessThan4~1_combout\ = ((!\PIANOSPEAKER|COUNTER659\(9) & (!\PIANOSPEAKER|COUNTER659\(10) & \PIANOSPEAKER|LessThan4~0_combout\))) # (!\PIANOSPEAKER|COUNTER659\(11))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PIANOSPEAKER|COUNTER659\(9),
	datab => \PIANOSPEAKER|COUNTER659\(10),
	datac => \PIANOSPEAKER|LessThan4~0_combout\,
	datad => \PIANOSPEAKER|COUNTER659\(11),
	combout => \PIANOSPEAKER|LessThan4~1_combout\);

-- Location: LCCOMB_X11_Y4_N18
\PIANOSPEAKER|LessThan4~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PIANOSPEAKER|LessThan4~2_combout\ = ((!\PIANOSPEAKER|COUNTER659\(12) & \PIANOSPEAKER|LessThan4~1_combout\)) # (!\PIANOSPEAKER|COUNTER659\(13))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PIANOSPEAKER|COUNTER659\(12),
	datac => \PIANOSPEAKER|COUNTER659\(13),
	datad => \PIANOSPEAKER|LessThan4~1_combout\,
	combout => \PIANOSPEAKER|LessThan4~2_combout\);

-- Location: LCCOMB_X11_Y4_N12
\PIANOSPEAKER|LessThan4~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PIANOSPEAKER|LessThan4~3_combout\ = ((!\PIANOSPEAKER|COUNTER659\(14) & (!\PIANOSPEAKER|COUNTER659\(15) & \PIANOSPEAKER|LessThan4~2_combout\))) # (!\PIANOSPEAKER|COUNTER659\(16))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PIANOSPEAKER|COUNTER659\(14),
	datab => \PIANOSPEAKER|COUNTER659\(15),
	datac => \PIANOSPEAKER|COUNTER659\(16),
	datad => \PIANOSPEAKER|LessThan4~2_combout\,
	combout => \PIANOSPEAKER|LessThan4~3_combout\);

-- Location: LCCOMB_X11_Y4_N20
\PIANOSPEAKER|LessThan4~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PIANOSPEAKER|LessThan4~9_combout\ = (!\PIANOSPEAKER|COUNTER659\(31) & ((!\PIANOSPEAKER|LessThan4~3_combout\) # (!\PIANOSPEAKER|LessThan4~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PIANOSPEAKER|COUNTER659\(31),
	datac => \PIANOSPEAKER|LessThan4~8_combout\,
	datad => \PIANOSPEAKER|LessThan4~3_combout\,
	combout => \PIANOSPEAKER|LessThan4~9_combout\);

-- Location: FF_X10_Y4_N1
\PIANOSPEAKER|COUNTER659[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \PIANOSPEAKER|COUNTER659[0]~32_combout\,
	sclr => \PIANOSPEAKER|LessThan4~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PIANOSPEAKER|COUNTER659\(0));

-- Location: LCCOMB_X10_Y4_N2
\PIANOSPEAKER|COUNTER659[1]~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PIANOSPEAKER|COUNTER659[1]~34_combout\ = (\PIANOSPEAKER|COUNTER659\(1) & (!\PIANOSPEAKER|COUNTER659[0]~33\)) # (!\PIANOSPEAKER|COUNTER659\(1) & ((\PIANOSPEAKER|COUNTER659[0]~33\) # (GND)))
-- \PIANOSPEAKER|COUNTER659[1]~35\ = CARRY((!\PIANOSPEAKER|COUNTER659[0]~33\) # (!\PIANOSPEAKER|COUNTER659\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PIANOSPEAKER|COUNTER659\(1),
	datad => VCC,
	cin => \PIANOSPEAKER|COUNTER659[0]~33\,
	combout => \PIANOSPEAKER|COUNTER659[1]~34_combout\,
	cout => \PIANOSPEAKER|COUNTER659[1]~35\);

-- Location: FF_X10_Y4_N3
\PIANOSPEAKER|COUNTER659[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \PIANOSPEAKER|COUNTER659[1]~34_combout\,
	sclr => \PIANOSPEAKER|LessThan4~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PIANOSPEAKER|COUNTER659\(1));

-- Location: LCCOMB_X10_Y4_N4
\PIANOSPEAKER|COUNTER659[2]~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PIANOSPEAKER|COUNTER659[2]~36_combout\ = (\PIANOSPEAKER|COUNTER659\(2) & (\PIANOSPEAKER|COUNTER659[1]~35\ $ (GND))) # (!\PIANOSPEAKER|COUNTER659\(2) & (!\PIANOSPEAKER|COUNTER659[1]~35\ & VCC))
-- \PIANOSPEAKER|COUNTER659[2]~37\ = CARRY((\PIANOSPEAKER|COUNTER659\(2) & !\PIANOSPEAKER|COUNTER659[1]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PIANOSPEAKER|COUNTER659\(2),
	datad => VCC,
	cin => \PIANOSPEAKER|COUNTER659[1]~35\,
	combout => \PIANOSPEAKER|COUNTER659[2]~36_combout\,
	cout => \PIANOSPEAKER|COUNTER659[2]~37\);

-- Location: FF_X10_Y4_N5
\PIANOSPEAKER|COUNTER659[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \PIANOSPEAKER|COUNTER659[2]~36_combout\,
	sclr => \PIANOSPEAKER|LessThan4~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PIANOSPEAKER|COUNTER659\(2));

-- Location: LCCOMB_X10_Y4_N8
\PIANOSPEAKER|COUNTER659[4]~40\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PIANOSPEAKER|COUNTER659[4]~40_combout\ = (\PIANOSPEAKER|COUNTER659\(4) & (\PIANOSPEAKER|COUNTER659[3]~39\ $ (GND))) # (!\PIANOSPEAKER|COUNTER659\(4) & (!\PIANOSPEAKER|COUNTER659[3]~39\ & VCC))
-- \PIANOSPEAKER|COUNTER659[4]~41\ = CARRY((\PIANOSPEAKER|COUNTER659\(4) & !\PIANOSPEAKER|COUNTER659[3]~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PIANOSPEAKER|COUNTER659\(4),
	datad => VCC,
	cin => \PIANOSPEAKER|COUNTER659[3]~39\,
	combout => \PIANOSPEAKER|COUNTER659[4]~40_combout\,
	cout => \PIANOSPEAKER|COUNTER659[4]~41\);

-- Location: FF_X10_Y4_N9
\PIANOSPEAKER|COUNTER659[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \PIANOSPEAKER|COUNTER659[4]~40_combout\,
	sclr => \PIANOSPEAKER|LessThan4~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PIANOSPEAKER|COUNTER659\(4));

-- Location: LCCOMB_X10_Y4_N14
\PIANOSPEAKER|COUNTER659[7]~46\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PIANOSPEAKER|COUNTER659[7]~46_combout\ = (\PIANOSPEAKER|COUNTER659\(7) & (!\PIANOSPEAKER|COUNTER659[6]~45\)) # (!\PIANOSPEAKER|COUNTER659\(7) & ((\PIANOSPEAKER|COUNTER659[6]~45\) # (GND)))
-- \PIANOSPEAKER|COUNTER659[7]~47\ = CARRY((!\PIANOSPEAKER|COUNTER659[6]~45\) # (!\PIANOSPEAKER|COUNTER659\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PIANOSPEAKER|COUNTER659\(7),
	datad => VCC,
	cin => \PIANOSPEAKER|COUNTER659[6]~45\,
	combout => \PIANOSPEAKER|COUNTER659[7]~46_combout\,
	cout => \PIANOSPEAKER|COUNTER659[7]~47\);

-- Location: FF_X10_Y4_N15
\PIANOSPEAKER|COUNTER659[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \PIANOSPEAKER|COUNTER659[7]~46_combout\,
	sclr => \PIANOSPEAKER|LessThan4~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PIANOSPEAKER|COUNTER659\(7));

-- Location: LCCOMB_X10_Y4_N16
\PIANOSPEAKER|COUNTER659[8]~48\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PIANOSPEAKER|COUNTER659[8]~48_combout\ = (\PIANOSPEAKER|COUNTER659\(8) & (\PIANOSPEAKER|COUNTER659[7]~47\ $ (GND))) # (!\PIANOSPEAKER|COUNTER659\(8) & (!\PIANOSPEAKER|COUNTER659[7]~47\ & VCC))
-- \PIANOSPEAKER|COUNTER659[8]~49\ = CARRY((\PIANOSPEAKER|COUNTER659\(8) & !\PIANOSPEAKER|COUNTER659[7]~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PIANOSPEAKER|COUNTER659\(8),
	datad => VCC,
	cin => \PIANOSPEAKER|COUNTER659[7]~47\,
	combout => \PIANOSPEAKER|COUNTER659[8]~48_combout\,
	cout => \PIANOSPEAKER|COUNTER659[8]~49\);

-- Location: FF_X10_Y4_N17
\PIANOSPEAKER|COUNTER659[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \PIANOSPEAKER|COUNTER659[8]~48_combout\,
	sclr => \PIANOSPEAKER|LessThan4~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PIANOSPEAKER|COUNTER659\(8));

-- Location: LCCOMB_X10_Y4_N18
\PIANOSPEAKER|COUNTER659[9]~50\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PIANOSPEAKER|COUNTER659[9]~50_combout\ = (\PIANOSPEAKER|COUNTER659\(9) & (!\PIANOSPEAKER|COUNTER659[8]~49\)) # (!\PIANOSPEAKER|COUNTER659\(9) & ((\PIANOSPEAKER|COUNTER659[8]~49\) # (GND)))
-- \PIANOSPEAKER|COUNTER659[9]~51\ = CARRY((!\PIANOSPEAKER|COUNTER659[8]~49\) # (!\PIANOSPEAKER|COUNTER659\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PIANOSPEAKER|COUNTER659\(9),
	datad => VCC,
	cin => \PIANOSPEAKER|COUNTER659[8]~49\,
	combout => \PIANOSPEAKER|COUNTER659[9]~50_combout\,
	cout => \PIANOSPEAKER|COUNTER659[9]~51\);

-- Location: FF_X10_Y4_N19
\PIANOSPEAKER|COUNTER659[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \PIANOSPEAKER|COUNTER659[9]~50_combout\,
	sclr => \PIANOSPEAKER|LessThan4~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PIANOSPEAKER|COUNTER659\(9));

-- Location: LCCOMB_X10_Y4_N20
\PIANOSPEAKER|COUNTER659[10]~52\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PIANOSPEAKER|COUNTER659[10]~52_combout\ = (\PIANOSPEAKER|COUNTER659\(10) & (\PIANOSPEAKER|COUNTER659[9]~51\ $ (GND))) # (!\PIANOSPEAKER|COUNTER659\(10) & (!\PIANOSPEAKER|COUNTER659[9]~51\ & VCC))
-- \PIANOSPEAKER|COUNTER659[10]~53\ = CARRY((\PIANOSPEAKER|COUNTER659\(10) & !\PIANOSPEAKER|COUNTER659[9]~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PIANOSPEAKER|COUNTER659\(10),
	datad => VCC,
	cin => \PIANOSPEAKER|COUNTER659[9]~51\,
	combout => \PIANOSPEAKER|COUNTER659[10]~52_combout\,
	cout => \PIANOSPEAKER|COUNTER659[10]~53\);

-- Location: FF_X10_Y4_N21
\PIANOSPEAKER|COUNTER659[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \PIANOSPEAKER|COUNTER659[10]~52_combout\,
	sclr => \PIANOSPEAKER|LessThan4~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PIANOSPEAKER|COUNTER659\(10));

-- Location: LCCOMB_X10_Y4_N24
\PIANOSPEAKER|COUNTER659[12]~56\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PIANOSPEAKER|COUNTER659[12]~56_combout\ = (\PIANOSPEAKER|COUNTER659\(12) & (\PIANOSPEAKER|COUNTER659[11]~55\ $ (GND))) # (!\PIANOSPEAKER|COUNTER659\(12) & (!\PIANOSPEAKER|COUNTER659[11]~55\ & VCC))
-- \PIANOSPEAKER|COUNTER659[12]~57\ = CARRY((\PIANOSPEAKER|COUNTER659\(12) & !\PIANOSPEAKER|COUNTER659[11]~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PIANOSPEAKER|COUNTER659\(12),
	datad => VCC,
	cin => \PIANOSPEAKER|COUNTER659[11]~55\,
	combout => \PIANOSPEAKER|COUNTER659[12]~56_combout\,
	cout => \PIANOSPEAKER|COUNTER659[12]~57\);

-- Location: FF_X10_Y4_N25
\PIANOSPEAKER|COUNTER659[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \PIANOSPEAKER|COUNTER659[12]~56_combout\,
	sclr => \PIANOSPEAKER|LessThan4~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PIANOSPEAKER|COUNTER659\(12));

-- Location: LCCOMB_X10_Y4_N28
\PIANOSPEAKER|COUNTER659[14]~60\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PIANOSPEAKER|COUNTER659[14]~60_combout\ = (\PIANOSPEAKER|COUNTER659\(14) & (\PIANOSPEAKER|COUNTER659[13]~59\ $ (GND))) # (!\PIANOSPEAKER|COUNTER659\(14) & (!\PIANOSPEAKER|COUNTER659[13]~59\ & VCC))
-- \PIANOSPEAKER|COUNTER659[14]~61\ = CARRY((\PIANOSPEAKER|COUNTER659\(14) & !\PIANOSPEAKER|COUNTER659[13]~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PIANOSPEAKER|COUNTER659\(14),
	datad => VCC,
	cin => \PIANOSPEAKER|COUNTER659[13]~59\,
	combout => \PIANOSPEAKER|COUNTER659[14]~60_combout\,
	cout => \PIANOSPEAKER|COUNTER659[14]~61\);

-- Location: FF_X10_Y4_N29
\PIANOSPEAKER|COUNTER659[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \PIANOSPEAKER|COUNTER659[14]~60_combout\,
	sclr => \PIANOSPEAKER|LessThan4~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PIANOSPEAKER|COUNTER659\(14));

-- Location: LCCOMB_X10_Y3_N0
\PIANOSPEAKER|COUNTER659[16]~64\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PIANOSPEAKER|COUNTER659[16]~64_combout\ = (\PIANOSPEAKER|COUNTER659\(16) & (\PIANOSPEAKER|COUNTER659[15]~63\ $ (GND))) # (!\PIANOSPEAKER|COUNTER659\(16) & (!\PIANOSPEAKER|COUNTER659[15]~63\ & VCC))
-- \PIANOSPEAKER|COUNTER659[16]~65\ = CARRY((\PIANOSPEAKER|COUNTER659\(16) & !\PIANOSPEAKER|COUNTER659[15]~63\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PIANOSPEAKER|COUNTER659\(16),
	datad => VCC,
	cin => \PIANOSPEAKER|COUNTER659[15]~63\,
	combout => \PIANOSPEAKER|COUNTER659[16]~64_combout\,
	cout => \PIANOSPEAKER|COUNTER659[16]~65\);

-- Location: FF_X10_Y3_N1
\PIANOSPEAKER|COUNTER659[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \PIANOSPEAKER|COUNTER659[16]~64_combout\,
	sclr => \PIANOSPEAKER|LessThan4~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PIANOSPEAKER|COUNTER659\(16));

-- Location: LCCOMB_X10_Y3_N2
\PIANOSPEAKER|COUNTER659[17]~66\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PIANOSPEAKER|COUNTER659[17]~66_combout\ = (\PIANOSPEAKER|COUNTER659\(17) & (!\PIANOSPEAKER|COUNTER659[16]~65\)) # (!\PIANOSPEAKER|COUNTER659\(17) & ((\PIANOSPEAKER|COUNTER659[16]~65\) # (GND)))
-- \PIANOSPEAKER|COUNTER659[17]~67\ = CARRY((!\PIANOSPEAKER|COUNTER659[16]~65\) # (!\PIANOSPEAKER|COUNTER659\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PIANOSPEAKER|COUNTER659\(17),
	datad => VCC,
	cin => \PIANOSPEAKER|COUNTER659[16]~65\,
	combout => \PIANOSPEAKER|COUNTER659[17]~66_combout\,
	cout => \PIANOSPEAKER|COUNTER659[17]~67\);

-- Location: FF_X10_Y3_N3
\PIANOSPEAKER|COUNTER659[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \PIANOSPEAKER|COUNTER659[17]~66_combout\,
	sclr => \PIANOSPEAKER|LessThan4~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PIANOSPEAKER|COUNTER659\(17));

-- Location: LCCOMB_X10_Y3_N4
\PIANOSPEAKER|COUNTER659[18]~68\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PIANOSPEAKER|COUNTER659[18]~68_combout\ = (\PIANOSPEAKER|COUNTER659\(18) & (\PIANOSPEAKER|COUNTER659[17]~67\ $ (GND))) # (!\PIANOSPEAKER|COUNTER659\(18) & (!\PIANOSPEAKER|COUNTER659[17]~67\ & VCC))
-- \PIANOSPEAKER|COUNTER659[18]~69\ = CARRY((\PIANOSPEAKER|COUNTER659\(18) & !\PIANOSPEAKER|COUNTER659[17]~67\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PIANOSPEAKER|COUNTER659\(18),
	datad => VCC,
	cin => \PIANOSPEAKER|COUNTER659[17]~67\,
	combout => \PIANOSPEAKER|COUNTER659[18]~68_combout\,
	cout => \PIANOSPEAKER|COUNTER659[18]~69\);

-- Location: FF_X10_Y3_N5
\PIANOSPEAKER|COUNTER659[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \PIANOSPEAKER|COUNTER659[18]~68_combout\,
	sclr => \PIANOSPEAKER|LessThan4~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PIANOSPEAKER|COUNTER659\(18));

-- Location: LCCOMB_X10_Y3_N6
\PIANOSPEAKER|COUNTER659[19]~70\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PIANOSPEAKER|COUNTER659[19]~70_combout\ = (\PIANOSPEAKER|COUNTER659\(19) & (!\PIANOSPEAKER|COUNTER659[18]~69\)) # (!\PIANOSPEAKER|COUNTER659\(19) & ((\PIANOSPEAKER|COUNTER659[18]~69\) # (GND)))
-- \PIANOSPEAKER|COUNTER659[19]~71\ = CARRY((!\PIANOSPEAKER|COUNTER659[18]~69\) # (!\PIANOSPEAKER|COUNTER659\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PIANOSPEAKER|COUNTER659\(19),
	datad => VCC,
	cin => \PIANOSPEAKER|COUNTER659[18]~69\,
	combout => \PIANOSPEAKER|COUNTER659[19]~70_combout\,
	cout => \PIANOSPEAKER|COUNTER659[19]~71\);

-- Location: FF_X10_Y3_N7
\PIANOSPEAKER|COUNTER659[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \PIANOSPEAKER|COUNTER659[19]~70_combout\,
	sclr => \PIANOSPEAKER|LessThan4~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PIANOSPEAKER|COUNTER659\(19));

-- Location: LCCOMB_X10_Y3_N8
\PIANOSPEAKER|COUNTER659[20]~72\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PIANOSPEAKER|COUNTER659[20]~72_combout\ = (\PIANOSPEAKER|COUNTER659\(20) & (\PIANOSPEAKER|COUNTER659[19]~71\ $ (GND))) # (!\PIANOSPEAKER|COUNTER659\(20) & (!\PIANOSPEAKER|COUNTER659[19]~71\ & VCC))
-- \PIANOSPEAKER|COUNTER659[20]~73\ = CARRY((\PIANOSPEAKER|COUNTER659\(20) & !\PIANOSPEAKER|COUNTER659[19]~71\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PIANOSPEAKER|COUNTER659\(20),
	datad => VCC,
	cin => \PIANOSPEAKER|COUNTER659[19]~71\,
	combout => \PIANOSPEAKER|COUNTER659[20]~72_combout\,
	cout => \PIANOSPEAKER|COUNTER659[20]~73\);

-- Location: FF_X10_Y3_N9
\PIANOSPEAKER|COUNTER659[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \PIANOSPEAKER|COUNTER659[20]~72_combout\,
	sclr => \PIANOSPEAKER|LessThan4~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PIANOSPEAKER|COUNTER659\(20));

-- Location: LCCOMB_X11_Y3_N0
\PIANOSPEAKER|LessThan4~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PIANOSPEAKER|LessThan4~4_combout\ = (!\PIANOSPEAKER|COUNTER659\(17) & (!\PIANOSPEAKER|COUNTER659\(19) & (!\PIANOSPEAKER|COUNTER659\(18) & !\PIANOSPEAKER|COUNTER659\(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PIANOSPEAKER|COUNTER659\(17),
	datab => \PIANOSPEAKER|COUNTER659\(19),
	datac => \PIANOSPEAKER|COUNTER659\(18),
	datad => \PIANOSPEAKER|COUNTER659\(20),
	combout => \PIANOSPEAKER|LessThan4~4_combout\);

-- Location: LCCOMB_X10_Y3_N10
\PIANOSPEAKER|COUNTER659[21]~74\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PIANOSPEAKER|COUNTER659[21]~74_combout\ = (\PIANOSPEAKER|COUNTER659\(21) & (!\PIANOSPEAKER|COUNTER659[20]~73\)) # (!\PIANOSPEAKER|COUNTER659\(21) & ((\PIANOSPEAKER|COUNTER659[20]~73\) # (GND)))
-- \PIANOSPEAKER|COUNTER659[21]~75\ = CARRY((!\PIANOSPEAKER|COUNTER659[20]~73\) # (!\PIANOSPEAKER|COUNTER659\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PIANOSPEAKER|COUNTER659\(21),
	datad => VCC,
	cin => \PIANOSPEAKER|COUNTER659[20]~73\,
	combout => \PIANOSPEAKER|COUNTER659[21]~74_combout\,
	cout => \PIANOSPEAKER|COUNTER659[21]~75\);

-- Location: LCCOMB_X10_Y3_N14
\PIANOSPEAKER|COUNTER659[23]~78\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PIANOSPEAKER|COUNTER659[23]~78_combout\ = (\PIANOSPEAKER|COUNTER659\(23) & (!\PIANOSPEAKER|COUNTER659[22]~77\)) # (!\PIANOSPEAKER|COUNTER659\(23) & ((\PIANOSPEAKER|COUNTER659[22]~77\) # (GND)))
-- \PIANOSPEAKER|COUNTER659[23]~79\ = CARRY((!\PIANOSPEAKER|COUNTER659[22]~77\) # (!\PIANOSPEAKER|COUNTER659\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PIANOSPEAKER|COUNTER659\(23),
	datad => VCC,
	cin => \PIANOSPEAKER|COUNTER659[22]~77\,
	combout => \PIANOSPEAKER|COUNTER659[23]~78_combout\,
	cout => \PIANOSPEAKER|COUNTER659[23]~79\);

-- Location: FF_X10_Y3_N15
\PIANOSPEAKER|COUNTER659[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \PIANOSPEAKER|COUNTER659[23]~78_combout\,
	sclr => \PIANOSPEAKER|LessThan4~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PIANOSPEAKER|COUNTER659\(23));

-- Location: LCCOMB_X10_Y3_N16
\PIANOSPEAKER|COUNTER659[24]~80\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PIANOSPEAKER|COUNTER659[24]~80_combout\ = (\PIANOSPEAKER|COUNTER659\(24) & (\PIANOSPEAKER|COUNTER659[23]~79\ $ (GND))) # (!\PIANOSPEAKER|COUNTER659\(24) & (!\PIANOSPEAKER|COUNTER659[23]~79\ & VCC))
-- \PIANOSPEAKER|COUNTER659[24]~81\ = CARRY((\PIANOSPEAKER|COUNTER659\(24) & !\PIANOSPEAKER|COUNTER659[23]~79\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PIANOSPEAKER|COUNTER659\(24),
	datad => VCC,
	cin => \PIANOSPEAKER|COUNTER659[23]~79\,
	combout => \PIANOSPEAKER|COUNTER659[24]~80_combout\,
	cout => \PIANOSPEAKER|COUNTER659[24]~81\);

-- Location: FF_X10_Y3_N17
\PIANOSPEAKER|COUNTER659[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \PIANOSPEAKER|COUNTER659[24]~80_combout\,
	sclr => \PIANOSPEAKER|LessThan4~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PIANOSPEAKER|COUNTER659\(24));

-- Location: LCCOMB_X10_Y3_N18
\PIANOSPEAKER|COUNTER659[25]~82\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PIANOSPEAKER|COUNTER659[25]~82_combout\ = (\PIANOSPEAKER|COUNTER659\(25) & (!\PIANOSPEAKER|COUNTER659[24]~81\)) # (!\PIANOSPEAKER|COUNTER659\(25) & ((\PIANOSPEAKER|COUNTER659[24]~81\) # (GND)))
-- \PIANOSPEAKER|COUNTER659[25]~83\ = CARRY((!\PIANOSPEAKER|COUNTER659[24]~81\) # (!\PIANOSPEAKER|COUNTER659\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PIANOSPEAKER|COUNTER659\(25),
	datad => VCC,
	cin => \PIANOSPEAKER|COUNTER659[24]~81\,
	combout => \PIANOSPEAKER|COUNTER659[25]~82_combout\,
	cout => \PIANOSPEAKER|COUNTER659[25]~83\);

-- Location: FF_X10_Y3_N19
\PIANOSPEAKER|COUNTER659[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \PIANOSPEAKER|COUNTER659[25]~82_combout\,
	sclr => \PIANOSPEAKER|LessThan4~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PIANOSPEAKER|COUNTER659\(25));

-- Location: LCCOMB_X10_Y3_N20
\PIANOSPEAKER|COUNTER659[26]~84\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PIANOSPEAKER|COUNTER659[26]~84_combout\ = (\PIANOSPEAKER|COUNTER659\(26) & (\PIANOSPEAKER|COUNTER659[25]~83\ $ (GND))) # (!\PIANOSPEAKER|COUNTER659\(26) & (!\PIANOSPEAKER|COUNTER659[25]~83\ & VCC))
-- \PIANOSPEAKER|COUNTER659[26]~85\ = CARRY((\PIANOSPEAKER|COUNTER659\(26) & !\PIANOSPEAKER|COUNTER659[25]~83\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PIANOSPEAKER|COUNTER659\(26),
	datad => VCC,
	cin => \PIANOSPEAKER|COUNTER659[25]~83\,
	combout => \PIANOSPEAKER|COUNTER659[26]~84_combout\,
	cout => \PIANOSPEAKER|COUNTER659[26]~85\);

-- Location: FF_X10_Y3_N21
\PIANOSPEAKER|COUNTER659[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \PIANOSPEAKER|COUNTER659[26]~84_combout\,
	sclr => \PIANOSPEAKER|LessThan4~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PIANOSPEAKER|COUNTER659\(26));

-- Location: FF_X10_Y3_N23
\PIANOSPEAKER|COUNTER659[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \PIANOSPEAKER|COUNTER659[27]~86_combout\,
	sclr => \PIANOSPEAKER|LessThan4~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PIANOSPEAKER|COUNTER659\(27));

-- Location: LCCOMB_X11_Y3_N28
\PIANOSPEAKER|LessThan4~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PIANOSPEAKER|LessThan4~6_combout\ = (!\PIANOSPEAKER|COUNTER659\(28) & (!\PIANOSPEAKER|COUNTER659\(26) & (!\PIANOSPEAKER|COUNTER659\(25) & !\PIANOSPEAKER|COUNTER659\(27))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PIANOSPEAKER|COUNTER659\(28),
	datab => \PIANOSPEAKER|COUNTER659\(26),
	datac => \PIANOSPEAKER|COUNTER659\(25),
	datad => \PIANOSPEAKER|COUNTER659\(27),
	combout => \PIANOSPEAKER|LessThan4~6_combout\);

-- Location: FF_X10_Y3_N11
\PIANOSPEAKER|COUNTER659[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \PIANOSPEAKER|COUNTER659[21]~74_combout\,
	sclr => \PIANOSPEAKER|LessThan4~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PIANOSPEAKER|COUNTER659\(21));

-- Location: LCCOMB_X11_Y3_N14
\PIANOSPEAKER|LessThan4~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PIANOSPEAKER|LessThan4~5_combout\ = (!\PIANOSPEAKER|COUNTER659\(22) & (!\PIANOSPEAKER|COUNTER659\(21) & (!\PIANOSPEAKER|COUNTER659\(24) & !\PIANOSPEAKER|COUNTER659\(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PIANOSPEAKER|COUNTER659\(22),
	datab => \PIANOSPEAKER|COUNTER659\(21),
	datac => \PIANOSPEAKER|COUNTER659\(24),
	datad => \PIANOSPEAKER|COUNTER659\(23),
	combout => \PIANOSPEAKER|LessThan4~5_combout\);

-- Location: LCCOMB_X11_Y4_N14
\PIANOSPEAKER|LessThan4~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PIANOSPEAKER|LessThan4~8_combout\ = (\PIANOSPEAKER|LessThan4~7_combout\ & (\PIANOSPEAKER|LessThan4~4_combout\ & (\PIANOSPEAKER|LessThan4~6_combout\ & \PIANOSPEAKER|LessThan4~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PIANOSPEAKER|LessThan4~7_combout\,
	datab => \PIANOSPEAKER|LessThan4~4_combout\,
	datac => \PIANOSPEAKER|LessThan4~6_combout\,
	datad => \PIANOSPEAKER|LessThan4~5_combout\,
	combout => \PIANOSPEAKER|LessThan4~8_combout\);

-- Location: LCCOMB_X11_Y4_N8
\PIANOSPEAKER|CLK_659HZ~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PIANOSPEAKER|CLK_659HZ~0_combout\ = \PIANOSPEAKER|CLK_659HZ~q\ $ (((!\PIANOSPEAKER|COUNTER659\(31) & ((!\PIANOSPEAKER|LessThan4~3_combout\) # (!\PIANOSPEAKER|LessThan4~8_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000110100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PIANOSPEAKER|COUNTER659\(31),
	datab => \PIANOSPEAKER|LessThan4~8_combout\,
	datac => \PIANOSPEAKER|CLK_659HZ~q\,
	datad => \PIANOSPEAKER|LessThan4~3_combout\,
	combout => \PIANOSPEAKER|CLK_659HZ~0_combout\);

-- Location: FF_X11_Y4_N9
\PIANOSPEAKER|CLK_659HZ\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \PIANOSPEAKER|CLK_659HZ~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PIANOSPEAKER|CLK_659HZ~q\);

-- Location: LCCOMB_X22_Y11_N18
\PIANOSPEAKER|SPEK~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PIANOSPEAKER|SPEK~1_combout\ = (\DEBSOL|Q2~q\ & (\PIANOSPEAKER|CLK_659HZ~q\ & (\DEBSOL|Q3~q\ & \DEBSOL|Q1~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DEBSOL|Q2~q\,
	datab => \PIANOSPEAKER|CLK_659HZ~q\,
	datac => \DEBSOL|Q3~q\,
	datad => \DEBSOL|Q1~q\,
	combout => \PIANOSPEAKER|SPEK~1_combout\);

-- Location: LCCOMB_X31_Y13_N0
\PIANOSPEAKER|COUNTER800[0]~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PIANOSPEAKER|COUNTER800[0]~32_combout\ = \PIANOSPEAKER|COUNTER800\(0) $ (VCC)
-- \PIANOSPEAKER|COUNTER800[0]~33\ = CARRY(\PIANOSPEAKER|COUNTER800\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PIANOSPEAKER|COUNTER800\(0),
	datad => VCC,
	combout => \PIANOSPEAKER|COUNTER800[0]~32_combout\,
	cout => \PIANOSPEAKER|COUNTER800[0]~33\);

-- Location: FF_X31_Y13_N1
\PIANOSPEAKER|COUNTER800[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \PIANOSPEAKER|COUNTER800[0]~32_combout\,
	sclr => \PIANOSPEAKER|LessThan7~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PIANOSPEAKER|COUNTER800\(0));

-- Location: LCCOMB_X31_Y13_N2
\PIANOSPEAKER|COUNTER800[1]~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PIANOSPEAKER|COUNTER800[1]~34_combout\ = (\PIANOSPEAKER|COUNTER800\(1) & (!\PIANOSPEAKER|COUNTER800[0]~33\)) # (!\PIANOSPEAKER|COUNTER800\(1) & ((\PIANOSPEAKER|COUNTER800[0]~33\) # (GND)))
-- \PIANOSPEAKER|COUNTER800[1]~35\ = CARRY((!\PIANOSPEAKER|COUNTER800[0]~33\) # (!\PIANOSPEAKER|COUNTER800\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PIANOSPEAKER|COUNTER800\(1),
	datad => VCC,
	cin => \PIANOSPEAKER|COUNTER800[0]~33\,
	combout => \PIANOSPEAKER|COUNTER800[1]~34_combout\,
	cout => \PIANOSPEAKER|COUNTER800[1]~35\);

-- Location: FF_X31_Y13_N3
\PIANOSPEAKER|COUNTER800[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \PIANOSPEAKER|COUNTER800[1]~34_combout\,
	sclr => \PIANOSPEAKER|LessThan7~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PIANOSPEAKER|COUNTER800\(1));

-- Location: LCCOMB_X31_Y13_N4
\PIANOSPEAKER|COUNTER800[2]~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PIANOSPEAKER|COUNTER800[2]~36_combout\ = (\PIANOSPEAKER|COUNTER800\(2) & (\PIANOSPEAKER|COUNTER800[1]~35\ $ (GND))) # (!\PIANOSPEAKER|COUNTER800\(2) & (!\PIANOSPEAKER|COUNTER800[1]~35\ & VCC))
-- \PIANOSPEAKER|COUNTER800[2]~37\ = CARRY((\PIANOSPEAKER|COUNTER800\(2) & !\PIANOSPEAKER|COUNTER800[1]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PIANOSPEAKER|COUNTER800\(2),
	datad => VCC,
	cin => \PIANOSPEAKER|COUNTER800[1]~35\,
	combout => \PIANOSPEAKER|COUNTER800[2]~36_combout\,
	cout => \PIANOSPEAKER|COUNTER800[2]~37\);

-- Location: FF_X31_Y13_N5
\PIANOSPEAKER|COUNTER800[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \PIANOSPEAKER|COUNTER800[2]~36_combout\,
	sclr => \PIANOSPEAKER|LessThan7~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PIANOSPEAKER|COUNTER800\(2));

-- Location: LCCOMB_X31_Y13_N8
\PIANOSPEAKER|COUNTER800[4]~40\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PIANOSPEAKER|COUNTER800[4]~40_combout\ = (\PIANOSPEAKER|COUNTER800\(4) & (\PIANOSPEAKER|COUNTER800[3]~39\ $ (GND))) # (!\PIANOSPEAKER|COUNTER800\(4) & (!\PIANOSPEAKER|COUNTER800[3]~39\ & VCC))
-- \PIANOSPEAKER|COUNTER800[4]~41\ = CARRY((\PIANOSPEAKER|COUNTER800\(4) & !\PIANOSPEAKER|COUNTER800[3]~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PIANOSPEAKER|COUNTER800\(4),
	datad => VCC,
	cin => \PIANOSPEAKER|COUNTER800[3]~39\,
	combout => \PIANOSPEAKER|COUNTER800[4]~40_combout\,
	cout => \PIANOSPEAKER|COUNTER800[4]~41\);

-- Location: FF_X31_Y13_N9
\PIANOSPEAKER|COUNTER800[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \PIANOSPEAKER|COUNTER800[4]~40_combout\,
	sclr => \PIANOSPEAKER|LessThan7~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PIANOSPEAKER|COUNTER800\(4));

-- Location: LCCOMB_X31_Y13_N14
\PIANOSPEAKER|COUNTER800[7]~46\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PIANOSPEAKER|COUNTER800[7]~46_combout\ = (\PIANOSPEAKER|COUNTER800\(7) & (!\PIANOSPEAKER|COUNTER800[6]~45\)) # (!\PIANOSPEAKER|COUNTER800\(7) & ((\PIANOSPEAKER|COUNTER800[6]~45\) # (GND)))
-- \PIANOSPEAKER|COUNTER800[7]~47\ = CARRY((!\PIANOSPEAKER|COUNTER800[6]~45\) # (!\PIANOSPEAKER|COUNTER800\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PIANOSPEAKER|COUNTER800\(7),
	datad => VCC,
	cin => \PIANOSPEAKER|COUNTER800[6]~45\,
	combout => \PIANOSPEAKER|COUNTER800[7]~46_combout\,
	cout => \PIANOSPEAKER|COUNTER800[7]~47\);

-- Location: FF_X31_Y13_N15
\PIANOSPEAKER|COUNTER800[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \PIANOSPEAKER|COUNTER800[7]~46_combout\,
	sclr => \PIANOSPEAKER|LessThan7~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PIANOSPEAKER|COUNTER800\(7));

-- Location: LCCOMB_X31_Y13_N16
\PIANOSPEAKER|COUNTER800[8]~48\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PIANOSPEAKER|COUNTER800[8]~48_combout\ = (\PIANOSPEAKER|COUNTER800\(8) & (\PIANOSPEAKER|COUNTER800[7]~47\ $ (GND))) # (!\PIANOSPEAKER|COUNTER800\(8) & (!\PIANOSPEAKER|COUNTER800[7]~47\ & VCC))
-- \PIANOSPEAKER|COUNTER800[8]~49\ = CARRY((\PIANOSPEAKER|COUNTER800\(8) & !\PIANOSPEAKER|COUNTER800[7]~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PIANOSPEAKER|COUNTER800\(8),
	datad => VCC,
	cin => \PIANOSPEAKER|COUNTER800[7]~47\,
	combout => \PIANOSPEAKER|COUNTER800[8]~48_combout\,
	cout => \PIANOSPEAKER|COUNTER800[8]~49\);

-- Location: FF_X31_Y13_N17
\PIANOSPEAKER|COUNTER800[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \PIANOSPEAKER|COUNTER800[8]~48_combout\,
	sclr => \PIANOSPEAKER|LessThan7~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PIANOSPEAKER|COUNTER800\(8));

-- Location: LCCOMB_X31_Y13_N18
\PIANOSPEAKER|COUNTER800[9]~50\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PIANOSPEAKER|COUNTER800[9]~50_combout\ = (\PIANOSPEAKER|COUNTER800\(9) & (!\PIANOSPEAKER|COUNTER800[8]~49\)) # (!\PIANOSPEAKER|COUNTER800\(9) & ((\PIANOSPEAKER|COUNTER800[8]~49\) # (GND)))
-- \PIANOSPEAKER|COUNTER800[9]~51\ = CARRY((!\PIANOSPEAKER|COUNTER800[8]~49\) # (!\PIANOSPEAKER|COUNTER800\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PIANOSPEAKER|COUNTER800\(9),
	datad => VCC,
	cin => \PIANOSPEAKER|COUNTER800[8]~49\,
	combout => \PIANOSPEAKER|COUNTER800[9]~50_combout\,
	cout => \PIANOSPEAKER|COUNTER800[9]~51\);

-- Location: FF_X31_Y13_N19
\PIANOSPEAKER|COUNTER800[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \PIANOSPEAKER|COUNTER800[9]~50_combout\,
	sclr => \PIANOSPEAKER|LessThan7~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PIANOSPEAKER|COUNTER800\(9));

-- Location: LCCOMB_X31_Y13_N20
\PIANOSPEAKER|COUNTER800[10]~52\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PIANOSPEAKER|COUNTER800[10]~52_combout\ = (\PIANOSPEAKER|COUNTER800\(10) & (\PIANOSPEAKER|COUNTER800[9]~51\ $ (GND))) # (!\PIANOSPEAKER|COUNTER800\(10) & (!\PIANOSPEAKER|COUNTER800[9]~51\ & VCC))
-- \PIANOSPEAKER|COUNTER800[10]~53\ = CARRY((\PIANOSPEAKER|COUNTER800\(10) & !\PIANOSPEAKER|COUNTER800[9]~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PIANOSPEAKER|COUNTER800\(10),
	datad => VCC,
	cin => \PIANOSPEAKER|COUNTER800[9]~51\,
	combout => \PIANOSPEAKER|COUNTER800[10]~52_combout\,
	cout => \PIANOSPEAKER|COUNTER800[10]~53\);

-- Location: FF_X31_Y13_N21
\PIANOSPEAKER|COUNTER800[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \PIANOSPEAKER|COUNTER800[10]~52_combout\,
	sclr => \PIANOSPEAKER|LessThan7~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PIANOSPEAKER|COUNTER800\(10));

-- Location: LCCOMB_X31_Y13_N24
\PIANOSPEAKER|COUNTER800[12]~56\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PIANOSPEAKER|COUNTER800[12]~56_combout\ = (\PIANOSPEAKER|COUNTER800\(12) & (\PIANOSPEAKER|COUNTER800[11]~55\ $ (GND))) # (!\PIANOSPEAKER|COUNTER800\(12) & (!\PIANOSPEAKER|COUNTER800[11]~55\ & VCC))
-- \PIANOSPEAKER|COUNTER800[12]~57\ = CARRY((\PIANOSPEAKER|COUNTER800\(12) & !\PIANOSPEAKER|COUNTER800[11]~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PIANOSPEAKER|COUNTER800\(12),
	datad => VCC,
	cin => \PIANOSPEAKER|COUNTER800[11]~55\,
	combout => \PIANOSPEAKER|COUNTER800[12]~56_combout\,
	cout => \PIANOSPEAKER|COUNTER800[12]~57\);

-- Location: FF_X31_Y13_N25
\PIANOSPEAKER|COUNTER800[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \PIANOSPEAKER|COUNTER800[12]~56_combout\,
	sclr => \PIANOSPEAKER|LessThan7~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PIANOSPEAKER|COUNTER800\(12));

-- Location: LCCOMB_X31_Y13_N26
\PIANOSPEAKER|COUNTER800[13]~58\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PIANOSPEAKER|COUNTER800[13]~58_combout\ = (\PIANOSPEAKER|COUNTER800\(13) & (!\PIANOSPEAKER|COUNTER800[12]~57\)) # (!\PIANOSPEAKER|COUNTER800\(13) & ((\PIANOSPEAKER|COUNTER800[12]~57\) # (GND)))
-- \PIANOSPEAKER|COUNTER800[13]~59\ = CARRY((!\PIANOSPEAKER|COUNTER800[12]~57\) # (!\PIANOSPEAKER|COUNTER800\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PIANOSPEAKER|COUNTER800\(13),
	datad => VCC,
	cin => \PIANOSPEAKER|COUNTER800[12]~57\,
	combout => \PIANOSPEAKER|COUNTER800[13]~58_combout\,
	cout => \PIANOSPEAKER|COUNTER800[13]~59\);

-- Location: LCCOMB_X31_Y13_N28
\PIANOSPEAKER|COUNTER800[14]~60\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PIANOSPEAKER|COUNTER800[14]~60_combout\ = (\PIANOSPEAKER|COUNTER800\(14) & (\PIANOSPEAKER|COUNTER800[13]~59\ $ (GND))) # (!\PIANOSPEAKER|COUNTER800\(14) & (!\PIANOSPEAKER|COUNTER800[13]~59\ & VCC))
-- \PIANOSPEAKER|COUNTER800[14]~61\ = CARRY((\PIANOSPEAKER|COUNTER800\(14) & !\PIANOSPEAKER|COUNTER800[13]~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PIANOSPEAKER|COUNTER800\(14),
	datad => VCC,
	cin => \PIANOSPEAKER|COUNTER800[13]~59\,
	combout => \PIANOSPEAKER|COUNTER800[14]~60_combout\,
	cout => \PIANOSPEAKER|COUNTER800[14]~61\);

-- Location: FF_X31_Y13_N29
\PIANOSPEAKER|COUNTER800[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \PIANOSPEAKER|COUNTER800[14]~60_combout\,
	sclr => \PIANOSPEAKER|LessThan7~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PIANOSPEAKER|COUNTER800\(14));

-- Location: FF_X31_Y13_N27
\PIANOSPEAKER|COUNTER800[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \PIANOSPEAKER|COUNTER800[13]~58_combout\,
	sclr => \PIANOSPEAKER|LessThan7~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PIANOSPEAKER|COUNTER800\(13));

-- Location: LCCOMB_X32_Y13_N28
\PIANOSPEAKER|LessThan7~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PIANOSPEAKER|LessThan7~8_combout\ = (((!\PIANOSPEAKER|COUNTER800\(12)) # (!\PIANOSPEAKER|COUNTER800\(13))) # (!\PIANOSPEAKER|COUNTER800\(14))) # (!\PIANOSPEAKER|COUNTER800\(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PIANOSPEAKER|COUNTER800\(15),
	datab => \PIANOSPEAKER|COUNTER800\(14),
	datac => \PIANOSPEAKER|COUNTER800\(13),
	datad => \PIANOSPEAKER|COUNTER800\(12),
	combout => \PIANOSPEAKER|LessThan7~8_combout\);

-- Location: LCCOMB_X31_Y12_N0
\PIANOSPEAKER|COUNTER800[16]~64\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PIANOSPEAKER|COUNTER800[16]~64_combout\ = (\PIANOSPEAKER|COUNTER800\(16) & (\PIANOSPEAKER|COUNTER800[15]~63\ $ (GND))) # (!\PIANOSPEAKER|COUNTER800\(16) & (!\PIANOSPEAKER|COUNTER800[15]~63\ & VCC))
-- \PIANOSPEAKER|COUNTER800[16]~65\ = CARRY((\PIANOSPEAKER|COUNTER800\(16) & !\PIANOSPEAKER|COUNTER800[15]~63\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PIANOSPEAKER|COUNTER800\(16),
	datad => VCC,
	cin => \PIANOSPEAKER|COUNTER800[15]~63\,
	combout => \PIANOSPEAKER|COUNTER800[16]~64_combout\,
	cout => \PIANOSPEAKER|COUNTER800[16]~65\);

-- Location: FF_X31_Y12_N1
\PIANOSPEAKER|COUNTER800[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \PIANOSPEAKER|COUNTER800[16]~64_combout\,
	sclr => \PIANOSPEAKER|LessThan7~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PIANOSPEAKER|COUNTER800\(16));

-- Location: LCCOMB_X31_Y12_N2
\PIANOSPEAKER|COUNTER800[17]~66\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PIANOSPEAKER|COUNTER800[17]~66_combout\ = (\PIANOSPEAKER|COUNTER800\(17) & (!\PIANOSPEAKER|COUNTER800[16]~65\)) # (!\PIANOSPEAKER|COUNTER800\(17) & ((\PIANOSPEAKER|COUNTER800[16]~65\) # (GND)))
-- \PIANOSPEAKER|COUNTER800[17]~67\ = CARRY((!\PIANOSPEAKER|COUNTER800[16]~65\) # (!\PIANOSPEAKER|COUNTER800\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PIANOSPEAKER|COUNTER800\(17),
	datad => VCC,
	cin => \PIANOSPEAKER|COUNTER800[16]~65\,
	combout => \PIANOSPEAKER|COUNTER800[17]~66_combout\,
	cout => \PIANOSPEAKER|COUNTER800[17]~67\);

-- Location: FF_X31_Y12_N3
\PIANOSPEAKER|COUNTER800[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \PIANOSPEAKER|COUNTER800[17]~66_combout\,
	sclr => \PIANOSPEAKER|LessThan7~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PIANOSPEAKER|COUNTER800\(17));

-- Location: LCCOMB_X31_Y12_N4
\PIANOSPEAKER|COUNTER800[18]~68\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PIANOSPEAKER|COUNTER800[18]~68_combout\ = (\PIANOSPEAKER|COUNTER800\(18) & (\PIANOSPEAKER|COUNTER800[17]~67\ $ (GND))) # (!\PIANOSPEAKER|COUNTER800\(18) & (!\PIANOSPEAKER|COUNTER800[17]~67\ & VCC))
-- \PIANOSPEAKER|COUNTER800[18]~69\ = CARRY((\PIANOSPEAKER|COUNTER800\(18) & !\PIANOSPEAKER|COUNTER800[17]~67\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PIANOSPEAKER|COUNTER800\(18),
	datad => VCC,
	cin => \PIANOSPEAKER|COUNTER800[17]~67\,
	combout => \PIANOSPEAKER|COUNTER800[18]~68_combout\,
	cout => \PIANOSPEAKER|COUNTER800[18]~69\);

-- Location: FF_X31_Y12_N5
\PIANOSPEAKER|COUNTER800[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \PIANOSPEAKER|COUNTER800[18]~68_combout\,
	sclr => \PIANOSPEAKER|LessThan7~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PIANOSPEAKER|COUNTER800\(18));

-- Location: LCCOMB_X31_Y12_N6
\PIANOSPEAKER|COUNTER800[19]~70\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PIANOSPEAKER|COUNTER800[19]~70_combout\ = (\PIANOSPEAKER|COUNTER800\(19) & (!\PIANOSPEAKER|COUNTER800[18]~69\)) # (!\PIANOSPEAKER|COUNTER800\(19) & ((\PIANOSPEAKER|COUNTER800[18]~69\) # (GND)))
-- \PIANOSPEAKER|COUNTER800[19]~71\ = CARRY((!\PIANOSPEAKER|COUNTER800[18]~69\) # (!\PIANOSPEAKER|COUNTER800\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PIANOSPEAKER|COUNTER800\(19),
	datad => VCC,
	cin => \PIANOSPEAKER|COUNTER800[18]~69\,
	combout => \PIANOSPEAKER|COUNTER800[19]~70_combout\,
	cout => \PIANOSPEAKER|COUNTER800[19]~71\);

-- Location: LCCOMB_X31_Y12_N8
\PIANOSPEAKER|COUNTER800[20]~72\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PIANOSPEAKER|COUNTER800[20]~72_combout\ = (\PIANOSPEAKER|COUNTER800\(20) & (\PIANOSPEAKER|COUNTER800[19]~71\ $ (GND))) # (!\PIANOSPEAKER|COUNTER800\(20) & (!\PIANOSPEAKER|COUNTER800[19]~71\ & VCC))
-- \PIANOSPEAKER|COUNTER800[20]~73\ = CARRY((\PIANOSPEAKER|COUNTER800\(20) & !\PIANOSPEAKER|COUNTER800[19]~71\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PIANOSPEAKER|COUNTER800\(20),
	datad => VCC,
	cin => \PIANOSPEAKER|COUNTER800[19]~71\,
	combout => \PIANOSPEAKER|COUNTER800[20]~72_combout\,
	cout => \PIANOSPEAKER|COUNTER800[20]~73\);

-- Location: FF_X31_Y12_N9
\PIANOSPEAKER|COUNTER800[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \PIANOSPEAKER|COUNTER800[20]~72_combout\,
	sclr => \PIANOSPEAKER|LessThan7~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PIANOSPEAKER|COUNTER800\(20));

-- Location: LCCOMB_X31_Y12_N14
\PIANOSPEAKER|COUNTER800[23]~78\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PIANOSPEAKER|COUNTER800[23]~78_combout\ = (\PIANOSPEAKER|COUNTER800\(23) & (!\PIANOSPEAKER|COUNTER800[22]~77\)) # (!\PIANOSPEAKER|COUNTER800\(23) & ((\PIANOSPEAKER|COUNTER800[22]~77\) # (GND)))
-- \PIANOSPEAKER|COUNTER800[23]~79\ = CARRY((!\PIANOSPEAKER|COUNTER800[22]~77\) # (!\PIANOSPEAKER|COUNTER800\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PIANOSPEAKER|COUNTER800\(23),
	datad => VCC,
	cin => \PIANOSPEAKER|COUNTER800[22]~77\,
	combout => \PIANOSPEAKER|COUNTER800[23]~78_combout\,
	cout => \PIANOSPEAKER|COUNTER800[23]~79\);

-- Location: FF_X31_Y12_N15
\PIANOSPEAKER|COUNTER800[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \PIANOSPEAKER|COUNTER800[23]~78_combout\,
	sclr => \PIANOSPEAKER|LessThan7~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PIANOSPEAKER|COUNTER800\(23));

-- Location: LCCOMB_X31_Y12_N16
\PIANOSPEAKER|COUNTER800[24]~80\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PIANOSPEAKER|COUNTER800[24]~80_combout\ = (\PIANOSPEAKER|COUNTER800\(24) & (\PIANOSPEAKER|COUNTER800[23]~79\ $ (GND))) # (!\PIANOSPEAKER|COUNTER800\(24) & (!\PIANOSPEAKER|COUNTER800[23]~79\ & VCC))
-- \PIANOSPEAKER|COUNTER800[24]~81\ = CARRY((\PIANOSPEAKER|COUNTER800\(24) & !\PIANOSPEAKER|COUNTER800[23]~79\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PIANOSPEAKER|COUNTER800\(24),
	datad => VCC,
	cin => \PIANOSPEAKER|COUNTER800[23]~79\,
	combout => \PIANOSPEAKER|COUNTER800[24]~80_combout\,
	cout => \PIANOSPEAKER|COUNTER800[24]~81\);

-- Location: FF_X31_Y12_N17
\PIANOSPEAKER|COUNTER800[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \PIANOSPEAKER|COUNTER800[24]~80_combout\,
	sclr => \PIANOSPEAKER|LessThan7~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PIANOSPEAKER|COUNTER800\(24));

-- Location: LCCOMB_X31_Y12_N18
\PIANOSPEAKER|COUNTER800[25]~82\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PIANOSPEAKER|COUNTER800[25]~82_combout\ = (\PIANOSPEAKER|COUNTER800\(25) & (!\PIANOSPEAKER|COUNTER800[24]~81\)) # (!\PIANOSPEAKER|COUNTER800\(25) & ((\PIANOSPEAKER|COUNTER800[24]~81\) # (GND)))
-- \PIANOSPEAKER|COUNTER800[25]~83\ = CARRY((!\PIANOSPEAKER|COUNTER800[24]~81\) # (!\PIANOSPEAKER|COUNTER800\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PIANOSPEAKER|COUNTER800\(25),
	datad => VCC,
	cin => \PIANOSPEAKER|COUNTER800[24]~81\,
	combout => \PIANOSPEAKER|COUNTER800[25]~82_combout\,
	cout => \PIANOSPEAKER|COUNTER800[25]~83\);

-- Location: FF_X31_Y12_N19
\PIANOSPEAKER|COUNTER800[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \PIANOSPEAKER|COUNTER800[25]~82_combout\,
	sclr => \PIANOSPEAKER|LessThan7~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PIANOSPEAKER|COUNTER800\(25));

-- Location: LCCOMB_X31_Y12_N20
\PIANOSPEAKER|COUNTER800[26]~84\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PIANOSPEAKER|COUNTER800[26]~84_combout\ = (\PIANOSPEAKER|COUNTER800\(26) & (\PIANOSPEAKER|COUNTER800[25]~83\ $ (GND))) # (!\PIANOSPEAKER|COUNTER800\(26) & (!\PIANOSPEAKER|COUNTER800[25]~83\ & VCC))
-- \PIANOSPEAKER|COUNTER800[26]~85\ = CARRY((\PIANOSPEAKER|COUNTER800\(26) & !\PIANOSPEAKER|COUNTER800[25]~83\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PIANOSPEAKER|COUNTER800\(26),
	datad => VCC,
	cin => \PIANOSPEAKER|COUNTER800[25]~83\,
	combout => \PIANOSPEAKER|COUNTER800[26]~84_combout\,
	cout => \PIANOSPEAKER|COUNTER800[26]~85\);

-- Location: FF_X31_Y12_N21
\PIANOSPEAKER|COUNTER800[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \PIANOSPEAKER|COUNTER800[26]~84_combout\,
	sclr => \PIANOSPEAKER|LessThan7~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PIANOSPEAKER|COUNTER800\(26));

-- Location: LCCOMB_X31_Y12_N22
\PIANOSPEAKER|COUNTER800[27]~86\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PIANOSPEAKER|COUNTER800[27]~86_combout\ = (\PIANOSPEAKER|COUNTER800\(27) & (!\PIANOSPEAKER|COUNTER800[26]~85\)) # (!\PIANOSPEAKER|COUNTER800\(27) & ((\PIANOSPEAKER|COUNTER800[26]~85\) # (GND)))
-- \PIANOSPEAKER|COUNTER800[27]~87\ = CARRY((!\PIANOSPEAKER|COUNTER800[26]~85\) # (!\PIANOSPEAKER|COUNTER800\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PIANOSPEAKER|COUNTER800\(27),
	datad => VCC,
	cin => \PIANOSPEAKER|COUNTER800[26]~85\,
	combout => \PIANOSPEAKER|COUNTER800[27]~86_combout\,
	cout => \PIANOSPEAKER|COUNTER800[27]~87\);

-- Location: LCCOMB_X31_Y12_N24
\PIANOSPEAKER|COUNTER800[28]~88\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PIANOSPEAKER|COUNTER800[28]~88_combout\ = (\PIANOSPEAKER|COUNTER800\(28) & (\PIANOSPEAKER|COUNTER800[27]~87\ $ (GND))) # (!\PIANOSPEAKER|COUNTER800\(28) & (!\PIANOSPEAKER|COUNTER800[27]~87\ & VCC))
-- \PIANOSPEAKER|COUNTER800[28]~89\ = CARRY((\PIANOSPEAKER|COUNTER800\(28) & !\PIANOSPEAKER|COUNTER800[27]~87\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PIANOSPEAKER|COUNTER800\(28),
	datad => VCC,
	cin => \PIANOSPEAKER|COUNTER800[27]~87\,
	combout => \PIANOSPEAKER|COUNTER800[28]~88_combout\,
	cout => \PIANOSPEAKER|COUNTER800[28]~89\);

-- Location: FF_X31_Y12_N25
\PIANOSPEAKER|COUNTER800[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \PIANOSPEAKER|COUNTER800[28]~88_combout\,
	sclr => \PIANOSPEAKER|LessThan7~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PIANOSPEAKER|COUNTER800\(28));

-- Location: LCCOMB_X31_Y12_N26
\PIANOSPEAKER|COUNTER800[29]~90\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PIANOSPEAKER|COUNTER800[29]~90_combout\ = (\PIANOSPEAKER|COUNTER800\(29) & (!\PIANOSPEAKER|COUNTER800[28]~89\)) # (!\PIANOSPEAKER|COUNTER800\(29) & ((\PIANOSPEAKER|COUNTER800[28]~89\) # (GND)))
-- \PIANOSPEAKER|COUNTER800[29]~91\ = CARRY((!\PIANOSPEAKER|COUNTER800[28]~89\) # (!\PIANOSPEAKER|COUNTER800\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PIANOSPEAKER|COUNTER800\(29),
	datad => VCC,
	cin => \PIANOSPEAKER|COUNTER800[28]~89\,
	combout => \PIANOSPEAKER|COUNTER800[29]~90_combout\,
	cout => \PIANOSPEAKER|COUNTER800[29]~91\);

-- Location: LCCOMB_X31_Y12_N28
\PIANOSPEAKER|COUNTER800[30]~92\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PIANOSPEAKER|COUNTER800[30]~92_combout\ = (\PIANOSPEAKER|COUNTER800\(30) & (\PIANOSPEAKER|COUNTER800[29]~91\ $ (GND))) # (!\PIANOSPEAKER|COUNTER800\(30) & (!\PIANOSPEAKER|COUNTER800[29]~91\ & VCC))
-- \PIANOSPEAKER|COUNTER800[30]~93\ = CARRY((\PIANOSPEAKER|COUNTER800\(30) & !\PIANOSPEAKER|COUNTER800[29]~91\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PIANOSPEAKER|COUNTER800\(30),
	datad => VCC,
	cin => \PIANOSPEAKER|COUNTER800[29]~91\,
	combout => \PIANOSPEAKER|COUNTER800[30]~92_combout\,
	cout => \PIANOSPEAKER|COUNTER800[30]~93\);

-- Location: FF_X31_Y12_N29
\PIANOSPEAKER|COUNTER800[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \PIANOSPEAKER|COUNTER800[30]~92_combout\,
	sclr => \PIANOSPEAKER|LessThan7~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PIANOSPEAKER|COUNTER800\(30));

-- Location: LCCOMB_X31_Y12_N30
\PIANOSPEAKER|COUNTER800[31]~94\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PIANOSPEAKER|COUNTER800[31]~94_combout\ = \PIANOSPEAKER|COUNTER800\(31) $ (\PIANOSPEAKER|COUNTER800[30]~93\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PIANOSPEAKER|COUNTER800\(31),
	cin => \PIANOSPEAKER|COUNTER800[30]~93\,
	combout => \PIANOSPEAKER|COUNTER800[31]~94_combout\);

-- Location: FF_X31_Y12_N31
\PIANOSPEAKER|COUNTER800[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \PIANOSPEAKER|COUNTER800[31]~94_combout\,
	sclr => \PIANOSPEAKER|LessThan7~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PIANOSPEAKER|COUNTER800\(31));

-- Location: FF_X31_Y12_N23
\PIANOSPEAKER|COUNTER800[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \PIANOSPEAKER|COUNTER800[27]~86_combout\,
	sclr => \PIANOSPEAKER|LessThan7~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PIANOSPEAKER|COUNTER800\(27));

-- Location: LCCOMB_X32_Y12_N0
\PIANOSPEAKER|LessThan7~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PIANOSPEAKER|LessThan7~2_combout\ = (!\PIANOSPEAKER|COUNTER800\(24) & (!\PIANOSPEAKER|COUNTER800\(25) & (!\PIANOSPEAKER|COUNTER800\(26) & !\PIANOSPEAKER|COUNTER800\(27))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PIANOSPEAKER|COUNTER800\(24),
	datab => \PIANOSPEAKER|COUNTER800\(25),
	datac => \PIANOSPEAKER|COUNTER800\(26),
	datad => \PIANOSPEAKER|COUNTER800\(27),
	combout => \PIANOSPEAKER|LessThan7~2_combout\);

-- Location: FF_X31_Y12_N27
\PIANOSPEAKER|COUNTER800[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \PIANOSPEAKER|COUNTER800[29]~90_combout\,
	sclr => \PIANOSPEAKER|LessThan7~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PIANOSPEAKER|COUNTER800\(29));

-- Location: LCCOMB_X32_Y12_N2
\PIANOSPEAKER|LessThan7~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PIANOSPEAKER|LessThan7~3_combout\ = (!\PIANOSPEAKER|COUNTER800\(28) & (!\PIANOSPEAKER|COUNTER800\(29) & !\PIANOSPEAKER|COUNTER800\(30)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PIANOSPEAKER|COUNTER800\(28),
	datac => \PIANOSPEAKER|COUNTER800\(29),
	datad => \PIANOSPEAKER|COUNTER800\(30),
	combout => \PIANOSPEAKER|LessThan7~3_combout\);

-- Location: FF_X31_Y12_N7
\PIANOSPEAKER|COUNTER800[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \PIANOSPEAKER|COUNTER800[19]~70_combout\,
	sclr => \PIANOSPEAKER|LessThan7~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PIANOSPEAKER|COUNTER800\(19));

-- Location: LCCOMB_X32_Y12_N24
\PIANOSPEAKER|LessThan7~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PIANOSPEAKER|LessThan7~0_combout\ = (!\PIANOSPEAKER|COUNTER800\(16) & (!\PIANOSPEAKER|COUNTER800\(18) & (!\PIANOSPEAKER|COUNTER800\(19) & !\PIANOSPEAKER|COUNTER800\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PIANOSPEAKER|COUNTER800\(16),
	datab => \PIANOSPEAKER|COUNTER800\(18),
	datac => \PIANOSPEAKER|COUNTER800\(19),
	datad => \PIANOSPEAKER|COUNTER800\(17),
	combout => \PIANOSPEAKER|LessThan7~0_combout\);

-- Location: LCCOMB_X32_Y13_N12
\PIANOSPEAKER|LessThan7~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PIANOSPEAKER|LessThan7~4_combout\ = (\PIANOSPEAKER|LessThan7~1_combout\ & (\PIANOSPEAKER|LessThan7~2_combout\ & (\PIANOSPEAKER|LessThan7~3_combout\ & \PIANOSPEAKER|LessThan7~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PIANOSPEAKER|LessThan7~1_combout\,
	datab => \PIANOSPEAKER|LessThan7~2_combout\,
	datac => \PIANOSPEAKER|LessThan7~3_combout\,
	datad => \PIANOSPEAKER|LessThan7~0_combout\,
	combout => \PIANOSPEAKER|LessThan7~4_combout\);

-- Location: LCCOMB_X32_Y13_N30
\PIANOSPEAKER|LessThan7~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PIANOSPEAKER|LessThan7~9_combout\ = (!\PIANOSPEAKER|COUNTER800\(31) & (((!\PIANOSPEAKER|LessThan7~7_combout\ & !\PIANOSPEAKER|LessThan7~8_combout\)) # (!\PIANOSPEAKER|LessThan7~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PIANOSPEAKER|LessThan7~7_combout\,
	datab => \PIANOSPEAKER|LessThan7~8_combout\,
	datac => \PIANOSPEAKER|COUNTER800\(31),
	datad => \PIANOSPEAKER|LessThan7~4_combout\,
	combout => \PIANOSPEAKER|LessThan7~9_combout\);

-- Location: LCCOMB_X29_Y11_N24
\PIANOSPEAKER|CLK_800HZ~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PIANOSPEAKER|CLK_800HZ~0_combout\ = \PIANOSPEAKER|CLK_800HZ~q\ $ (\PIANOSPEAKER|LessThan7~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \PIANOSPEAKER|CLK_800HZ~q\,
	datad => \PIANOSPEAKER|LessThan7~9_combout\,
	combout => \PIANOSPEAKER|CLK_800HZ~0_combout\);

-- Location: FF_X29_Y11_N25
\PIANOSPEAKER|CLK_800HZ\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \PIANOSPEAKER|CLK_800HZ~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PIANOSPEAKER|CLK_800HZ~q\);

-- Location: LCCOMB_X22_Y11_N20
\PIANOSPEAKER|SPEK~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PIANOSPEAKER|SPEK~2_combout\ = (\DEBSI|QOUT~0_combout\ & (\PIANOSPEAKER|CLK_784HZ~q\)) # (!\DEBSI|QOUT~0_combout\ & (((\PIANOSPEAKER|CLK_800HZ~q\ & \DEBDOB|QOUT~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PIANOSPEAKER|CLK_784HZ~q\,
	datab => \PIANOSPEAKER|CLK_800HZ~q\,
	datac => \DEBSI|QOUT~0_combout\,
	datad => \DEBDOB|QOUT~0_combout\,
	combout => \PIANOSPEAKER|SPEK~2_combout\);

-- Location: LCCOMB_X22_Y11_N16
\PIANOSPEAKER|SPEK~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PIANOSPEAKER|SPEK~3_combout\ = (!\DEBSOL|QOUT~0_combout\ & ((\DEBLA|QOUT~0_combout\ & (\PIANOSPEAKER|CLK_698HZ~q\)) # (!\DEBLA|QOUT~0_combout\ & ((\PIANOSPEAKER|SPEK~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PIANOSPEAKER|CLK_698HZ~q\,
	datab => \DEBLA|QOUT~0_combout\,
	datac => \DEBSOL|QOUT~0_combout\,
	datad => \PIANOSPEAKER|SPEK~2_combout\,
	combout => \PIANOSPEAKER|SPEK~3_combout\);

-- Location: LCCOMB_X22_Y11_N24
\PIANOSPEAKER|SPEK~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PIANOSPEAKER|SPEK~4_combout\ = (\DEBFA|QOUT~0_combout\ & (\PIANOSPEAKER|CLK_587HZ~q\)) # (!\DEBFA|QOUT~0_combout\ & (((\PIANOSPEAKER|SPEK~1_combout\) # (\PIANOSPEAKER|SPEK~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PIANOSPEAKER|CLK_587HZ~q\,
	datab => \DEBFA|QOUT~0_combout\,
	datac => \PIANOSPEAKER|SPEK~1_combout\,
	datad => \PIANOSPEAKER|SPEK~3_combout\,
	combout => \PIANOSPEAKER|SPEK~4_combout\);

-- Location: LCCOMB_X22_Y11_N2
\PIANOSPEAKER|SPEK~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PIANOSPEAKER|SPEK~5_combout\ = (\DERE|QOUT~0_combout\ & ((\DEBMI|QOUT~0_combout\ & ((\PIANOSPEAKER|SPEK~4_combout\))) # (!\DEBMI|QOUT~0_combout\ & (\PIANOSPEAKER|CLK_523HZ~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PIANOSPEAKER|CLK_523HZ~q\,
	datab => \DEBMI|QOUT~0_combout\,
	datac => \DERE|QOUT~0_combout\,
	datad => \PIANOSPEAKER|SPEK~4_combout\,
	combout => \PIANOSPEAKER|SPEK~5_combout\);

-- Location: LCCOMB_X22_Y11_N12
\PIANOSPEAKER|SPEK~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PIANOSPEAKER|SPEK~6_combout\ = (\DEBDO|QOUT~0_combout\ & ((\PIANOSPEAKER|SPEK~0_combout\) # ((\PIANOSPEAKER|SPEK~5_combout\)))) # (!\DEBDO|QOUT~0_combout\ & (((\PIANOSPEAKER|CLK_440HZ~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PIANOSPEAKER|SPEK~0_combout\,
	datab => \DEBDO|QOUT~0_combout\,
	datac => \PIANOSPEAKER|CLK_440HZ~q\,
	datad => \PIANOSPEAKER|SPEK~5_combout\,
	combout => \PIANOSPEAKER|SPEK~6_combout\);

-- Location: FF_X22_Y11_N13
\PIANOSPEAKER|SPEK\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \PIANOSPEAKER|SPEK~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PIANOSPEAKER|SPEK~q\);

-- Location: IOIBUF_X28_Y0_N1
\IZQ~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_IZQ,
	o => \IZQ~input_o\);

-- Location: IOIBUF_X21_Y29_N15
\DER~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DER,
	o => \DER~input_o\);

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

ww_SPEAKER <= \SPEAKER~output_o\;
END structure;


