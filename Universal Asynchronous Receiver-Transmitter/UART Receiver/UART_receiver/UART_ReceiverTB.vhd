
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.all;
use std.textio.all ;
use ieee.std_logic_textio.all ;

-- Entity
entity UART_ReceiverTB is
end;

-- Architecture
architecture test of UART_ReceiverTB is 
-- Our UART Receiver design component instantiation
component UART_Receiver
generic(
	baud 		: integer := 9600; 		-- We will be running at 115200 baud
	clk_rate	: integer := 50000000);	-- 100 MHz (BASYS 3 is 100 MHz)
port(
	data_out	: out std_logic_vector(7 downto 0);
	data_valid	: out std_logic;
	data_in		: in std_logic;
	reset		: in std_logic;
	clk			: in std_logic);
end component;

-- Simulation Constatnts
constant baud_rate 		: integer := 9600;
constant clock_rate  	: integer := 50000000;	 -- 100 MHz

-- Simulation Signals
signal data_out_sim 	: std_logic_vector(7 downto 0) := (others=> '0');
signal data_valid_sim: std_logic := '0';
signal Rx_sim 			: std_logic := '1';
signal reset 			: std_logic := '0';
signal clk 				: std_logic := '0';

-- constant in_fname 				: string := "input.csv";
-- file input_file					: text;

begin
	-- UART_Terminal_HDL_Wrapper 
	dev_to_test:  UART_Receiver
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
		wait for 104.167 us;
		Rx_sim <= '1';
		wait for 312.5 us;
		Rx_sim <= '0';
		wait for 104.167 us;
		Rx_sim <= '1';
		wait for 208.334 us;
		Rx_sim <= '0';
		wait for 208.334 us;
		Rx_sim <= '1';
		wait for  104.167 us;
		
		-- Simulate "s"
		Rx_sim <= '0';
		wait for 104.167 us;
		Rx_sim <= '1';
		wait for 208.334 us;
		Rx_sim <= '0';
		wait for 208.334 us;
		Rx_sim <= '1';
		wait for 312.5 us;
		Rx_sim <= '0';
		wait for 104.167 us;
		Rx_sim <= '1';
		wait for 104.167 us;
		
		-- Simulate "e"
		Rx_sim <= '0';
		wait for 104.167 us;
		Rx_sim <= '1';
		wait for 104.167 us;
		Rx_sim <= '0';
		wait for 104.167 us;
		Rx_sim <= '1';
		wait for 104.167 us;
		Rx_sim <= '0';
		wait for 208.334 us;
		Rx_sim <= '1';
		wait for 208.334 us;
		Rx_sim <= '0';
		wait for 104.167 us;
		Rx_sim <= '1';
		wait for 104.167 us;
		
		-- Simulate "g"
		Rx_sim <= '0';
		wait for 104.167 us;
		Rx_sim <= '1';
		wait for 312.5 us;
		Rx_sim <= '0';
		wait for 208.334 us;
		Rx_sim <= '1';
		wait for 208.334 us;
		Rx_sim <= '0';
		wait for 104.167 us;
		Rx_sim <= '1';
		wait for 104.167 us;
		
		-- Simulate " "
		Rx_sim <= '0';
		wait for 52.08 us;
		Rx_sim <= '1';
		wait for 104.167 us;
		Rx_sim <= '0';
		wait for 208.334 us;
		Rx_sim <= '1';
		wait for 104.167 us;
		
		-- Simulate "1"
		Rx_sim <= '0';
		wait for 104.167 us;
		Rx_sim <= '1';
		wait for 104.167 us;
		Rx_sim <= '0';
		wait for  us;
		Rx_sim <= '1';
		wait for 104.167 us;
		
		-- Simulate "2"
		Rx_sim <= '0';
		wait for 208.334 us;
		Rx_sim <= '1';
		wait for 104.167 us;
		Rx_sim <= '0';
		wait for 208.334 us;
		Rx_sim <= '1';
		wait for 208.334 us;
		Rx_sim <= '0';
		wait for 208.334 us;
		Rx_sim <= '1';
		wait for 104.167 us;
		
		-- Simulate "0"
		Rx_sim <= '0';
		wait for 43.4 us;
		Rx_sim <= '1';
		wait for 208.334 us;
		Rx_sim <= '0';
		wait for 208.334 us;
		Rx_sim <= '1';
		wait for 104.167 us;
		
		-- Simulate "7"
		Rx_sim <= '0';
		wait for 104.167 us;
		Rx_sim <= '1';
		wait for 312.5 us;
		Rx_sim <= '0';
		wait for 104.167 us;
		Rx_sim <= '1';
		wait for 208.334 us;
		Rx_sim <= '0';
		wait for 208.334 us;
		Rx_sim <= '1';
		wait for 104.167 us;
		
		-- Report that UART Receiver has completed
		report "UART Receiver Test Completed";
	end process stimulus;
end test;
