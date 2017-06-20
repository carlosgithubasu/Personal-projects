-------------------------------------------------------------------------------
--	FILE:			rUART_sim.vhd
--
--	DESCRIPTION:	UART Receiver Simulation File (test bench). This file
--					simulates data coming in at the following conditions:
--						baud  		: 115200
--						data  		: 8 bit
--					  	parity  	: none
--				   		stop bits  	: 1
--
--					The following data sequence shall appear:
--					'7seg 1207'
--
--					The required simulation time is (801.4 uS)
--
-- 	ENGINEER:		Jordan Christman
-------------------------------------------------------------------------------
-- Libraries
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.all;
use std.textio.all ;
use ieee.std_logic_textio.all ;
use work.sim_mem_init.all;

-- Entity
entity rUART_sim is
end;

-- Architecture
architecture test of test_UART is
-- Our UART Receiver design component instantiation
component rUART
generic(
	baud 		: integer := 115200; 		-- We will be running at 115200 baud
	clk_rate	: integer := 100000000);	-- 100 MHz (BASYS 3 is 100 MHz)
port(
	data_out	: out std_logic_vector(7 downto 0);
	data_valid	: out std_logic;
	data_in		: in std_logic;
	reset		: in std_logic;
	clk			: in std_logic);
end component;

-- Simulation Constatnts
constant baud_rate 		: integer := 115200;
constant clock_rate  	: integer := 100000000;	 -- 100 MHz

-- Simulation Signals
signal data_out_sim 	: std_logic := '1';
signal data_valid_sim 	: std_logic := '1';
signal Rx_sim 			: std_logic := '1';
signal reset 			: std_logic := '0';
signal clk 				: std_logic := '0';

-- constant in_fname 				: string := "input.csv";
-- file input_file					: text;

begin
	-- UART_Terminal_HDL_Wrapper 
	dev_to_test:  rUART 
		generic map(baud_rate, clock_rate)
		port map(data_out_sim, data_valid_sim, Rx_sim, reset, clk);
	
	-- Generating a system clock
	clk_proc : process
		begin
		wait for 10 ns;
		clk <= not clk;
	end process clk_proc;
	
	-- Process that simulates data coming in Rx line 
	stimulus	: process
		begin
		wait for 3 us;
		reset <= '1';
		wait for 1 us;
		
		-- Simulate "7"
		Rx_sim <= '0';
		wait for 8.68 us;
		Rx_sim <= '1';
		wait for 26.04 us;
		Rx_sim <= '0';
		wait for 8.68 us;
		Rx_sim <= '1';
		wait for 17.36 us;
		Rx_sim <= '0';
		wait for 17.36 us;
		Rx_sim <= '1';
		wait for 8.68 us;
		
		-- Simulate "s"
		Rx_sim <= '0';
		wait for 8.68 us;
		Rx_sim <= '1';
		wait for 17.36 us;
		Rx_sim <= '0';
		wait for 17.36 us;
		Rx_sim <= '1';
		wait for 26.04 us;
		Rx_sim <= '0';
		wait for 8.68 us;
		Rx_sim <= '1';
		wait for 8.68 us;
		
		-- Simulate "e"
		Rx_sim <= '0';
		wait for 8.68 us;
		Rx_sim <= '1';
		wait for 8.68 us;
		Rx_sim <= '0';
		wait for 8.68 us;
		Rx_sim <= '1';
		wait for 8.68 us;
		Rx_sim <= '0';
		wait for 17.36 us;
		Rx_sim <= '1';
		wait for 17.36 us;
		Rx_sim <= '0';
		wait for 8.68 us;
		Rx_sim <= '1';
		wait for 8.68 us;
		
		-- Simulate "g"
		Rx_sim <= '0';
		wait for 8.68 us;
		Rx_sim <= '1';
		wait for 26.04 us;
		Rx_sim <= '0';
		wait for 17.36 us;
		Rx_sim <= '1';
		wait for 17.36 us;
		Rx_sim <= '0';
		wait for 8.68 us;
		Rx_sim <= '1';
		wait for 8.68 us;
		
		-- Simulate " "
		Rx_sim <= '0';
		wait for 52.08 us;
		Rx_sim <= '1';
		wait for 8.68 us;
		Rx_sim <= '0';
		wait for 17.36 us;
		Rx_sim <= '1';
		wait for 8.68 us;
		
		-- Simulate "1"
		Rx_sim <= '0';
		wait for 8.68 us;
		Rx_sim <= '1';
		wait for 8.68 us;
		Rx_sim <= '0';
		wait for  us;
		Rx_sim <= '1';
		wait for 8.68 us;
		
		-- Simulate "2"
		Rx_sim <= '0';
		wait for 17.36 us;
		Rx_sim <= '1';
		wait for 8.68 us;
		Rx_sim <= '0';
		wait for 17.36 us;
		Rx_sim <= '1';
		wait for 17.36 us;
		Rx_sim <= '0';
		wait for 17.36 us;
		Rx_sim <= '1';
		wait for 8.68 us;
		
		-- Simulate "0"
		Rx_sim <= '0';
		wait for 43.4 us;
		Rx_sim <= '1';
		wait for 17.36 us;
		Rx_sim <= '0';
		wait for 17.36 us;
		Rx_sim <= '1';
		wait for 8.68 us;
		
		-- Simulate "7"
		Rx_sim <= '0';
		wait for 8.68 us;
		Rx_sim <= '1';
		wait for 26.04 us;
		Rx_sim <= '0';
		wait for 8.68 us;
		Rx_sim <= '1';
		wait for 17.36 us;
		Rx_sim <= '0';
		wait for 17.36 us;
		Rx_sim <= '1';
		wait for 8.68 us;
		
		-- Report that UART Receiver has completed
		report "UART Receiver Test Completed";
	end process stimulus;
end test;
