-------------------------------------------------------------------------------
--	FILE:			UART_Top.vhd
--
--	DESCRIPTION:	This design is used to implement a UART receiver and
--					transmitter working together.
--
-- 	ENGINEER:		Jordan Christman
-------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity UART_Top_entity is
generic(
	baud			: integer := 9600;
	clk_freq		: integer := 50000000);	-- 50 MHz
	
port(

	Rx_data_valid	: out std_logic;  --valid data
	RxData			: out std_logic_vector(7 downto 0); --yes
	Tx				   : out std_logic; --yes
	TxReady			: out std_logic; --im ready for more data
	TxData 			: in std_logic_vector(7 downto 0); --yes
	Rx				   : in std_logic;  --yes
	start_Tx 		: in std_logic;  --start
	reset 			: in std_logic; --yes
	clk 			   : in std_logic);--yes
end;

architecture behavior of UART_Top_entity is

-- Transmitter (Tx)
component UART_Transmitter
generic (
	baud		: integer := 9600;
	clk_rate	: integer := 50000000);
port (
	data_out	: out std_logic;
	tx_ready	: out std_logic;
	start 		: in std_logic;
	data_in 	: in std_logic_vector(7 downto 0);
	reset 		: in std_logic;
	clk 		: in std_logic);
end component;

-- Receiver (Rx)
component UART_Receiver
generic (
	baud 		: integer := 960;
	clk_rate	: integer := 50000000);
port (
	data_out 	: out std_logic_vector(7 downto 0);
	data_valid 	: out std_logic;
	data_in		: in std_logic;
	reset 		: in std_logic;
	clk 		: in std_logic);
end component;


begin
	-- Transmit UART
	transmitter: UART_Transmitter
		generic map(baud, clk_freq)
		port map(Tx, TxReady, start_Tx, TxData, reset, clk);
	
	-- Receive UART
	receiver:  UART_Receiver
		generic map(baud, clk_freq)
		port map(RxData, Rx_data_valid, Rx, reset, clk);
		
		
		
end behavior;