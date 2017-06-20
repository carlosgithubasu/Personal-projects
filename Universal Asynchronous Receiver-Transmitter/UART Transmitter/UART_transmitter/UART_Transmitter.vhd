-----------------------------------------------------------------------------
--	DESCRIPTION:	This design is used to implement a UART transmitter.
-------------------------------------------------------------------------------
-- Libraries
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.all;


-- Entity Declaration
entity UART_Transmitter is
generic (
	baud 		: integer := 9600;		-- desired baud rate
	clk_rate	: integer := 50000000);  	-- 50 MHz
port (
	data_out	: out std_logic;	-- output data (Tx)
	tx_ready	: out std_logic;	-- indicate the Tx line is ready
	start 		: in std_logic;		
	data_in		: in std_logic_vector(7 downto 0);
	reset 		: in std_logic;
	clk 		: in std_logic);
end UART_Transmitter;






-- Architecture
architecture behavior of UART_Transmitter is
-------------------------------------------------------------------------------
-- Constants
-------------------------------------------------------------------------------
constant clk_frequency		   : integer := clk_rate;
constant clk_count_max			: integer := clk_frequency / baud;
constant clk_count_max_delay	: integer := clk_frequency / 19200; -- small delay between transmissions to let all signals stabilize and not incur in data loss problems
constant max_bits 				: integer := 10;

-------------------------------------------------------------------------------
-- Signals
-------------------------------------------------------------------------------
-- Counter Signals
signal clk_counter 				: integer range 0 to clk_count_max;
signal clk_delay_counter		: integer range 0 to clk_count_max_delay;
signal number_bits 				: integer range 0 to max_bits;

-- Signals used for edge detection circuitry
signal start_count_lead			: std_logic := '0';
signal start_count_follow		: std_logic := '0';
signal start_trans				: std_logic := '0';

-- Signals used for UART shift register
signal data_reg 				: std_logic_vector(9 downto 0) := (others => '1');

-- control signals
signal shift_data				: std_logic := '0';
signal done_shifting			: std_logic := '0';
signal load_data				: std_logic := '0';
signal transmit_done			: std_logic := '0';
signal tx_ready_reg             : std_logic := '0';
signal delay_clock              : std_logic := '0';
signal delay_clock_done         : std_logic := '0';

-- state machine type
type state_type is(init, load, shift);
signal state, nxt_state			: state_type;















begin
-------------------------------------------------------------------------------
--									STATE MACHINE
-------------------------------------------------------------------------------
	-- Two Step State Machine Process
	-- Step One
	
	
	state_proc: process(clk)
		begin
		if rising_edge(clk) then
			if(reset = '0') then
				state <= init;
			else
				state <= nxt_state;   --Assign state nxt_state
			end if;
		end if;
	end process state_proc;
	
	
	
	
	-- Indicate Tx is ready for data
	tx_ready <= transmit_done and tx_ready_reg and not delay_clock;
	
	

	-- Step Two
	nxt_state_proc: process(state, start_trans, done_shifting, delay_clock_done)
	begin
		nxt_state <= state;
		load_data <= '0';
		transmit_done <= '0';
		
		-- Complete the State Machine!
		case state is
			when init =>
			    transmit_done <= '1';
				 
				 
				 if(start_trans = '1') then
				    nxt_state <= load;
				 else
				    nxt_state <= init;
				 end if;
				 
				 if (delay_clock_done = '1') then
				     delay_clock <= '0';
				 else
				     delay_clock <= '1';                --Signal to trigger the delay
				 end if;
				
				
			when load =>
				load_data <= '1';
				nxt_state <= shift;
			
			when shift => 
			   
				if (done_shifting= '1') then
				    nxt_state <= init;
					 delay_clock<= '1';
				 else
				    nxt_state <= shift; 
					 
				 end if;
			

			when others =>
				nxt_state <= init;
				
		end case;
	end process nxt_state_proc;
	
	
	

-------------------------------------------------------------------------------
--								EDGE DETECTION
-------------------------------------------------------------------------------	
	-- edge detection circuitry
	start_trans <= start_count_lead and (not start_count_follow);
	
	-- Process to begin transmitting data
	-- This process fires off the State Machine
	begin_trans_proc: process(clk)
	begin
		if(rising_edge(clk)) then
		      
				start_count_lead<= start;
				start_count_follow <= start_count_lead;
			-- FIX THIS!!! Look at diagram in the Lecture!!
		end if;
	end process begin_trans_proc;
	
-------------------------------------------------------------------------------
--									COUNTERS
-------------------------------------------------------------------------------
	-- Setting end of shift register to output
	data_out <= data_reg(0);
	
	-- Process that counts the number of bits shifted
	count_bits_proc: process(clk)
	begin
		if(rising_edge(clk)) then
			if(reset = '0') then
				number_bits <= 0;
			elsif(number_bits = max_bits) then
				done_shifting <= '1';
				number_bits <= 0;
			elsif(load_data = '1') then
				data_reg <= '1' & data_in & '0';
				done_shifting <= '0';
			elsif(shift_data = '1') then
				data_reg <= '1' & data_reg(9 downto 1);
				number_bits <= number_bits + 1;
			end if;
		end if;
	end process count_bits_proc;
	
	-- Clock counters
	clock_count_proc: process(clk)
	begin
		if (rising_edge(clk)) then
			if(state = shift ) then
				if(clk_counter = clk_count_max) then
					shift_data <= '1';
					clk_counter <= 0;
				else
					clk_counter <= clk_counter + 1;
					shift_data <= '0';
				end if;
			end if;	
		end if;
	end process clock_count_proc;
	
	clock_delay_proc: process(clk)  
	begin
	   if(rising_edge(clk)) then
	       if(delay_clock = '1') then
	           if(clk_delay_counter < clk_count_max_delay) then
	               clk_delay_counter <= clk_delay_counter + 1;
	               delay_clock_done <= '0';
	           else
	               delay_clock_done <= '1';
	           end if;
	       else
	           -- Set counters to 0    
	           clk_delay_counter <= 0;
	       end if;
	   end if;
	end process clock_delay_proc;

    tx_ready_proc: process(clk)
    begin
        if(rising_edge(clk)) then
            if(start = '1') then
                tx_ready_reg <= '0';    -- indicate tx is not ready for data
            else
                tx_ready_reg <= '1';
            end if;
        end if;
    end process tx_ready_proc;
-------------------------------------------------------------------------------
--									TRANSMIT
-------------------------------------------------------------------------------	
end behavior;