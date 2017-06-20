library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
 
entity cdc_down is
    generic(
        DATA_WIDTH : integer := 8
    );
    Port ( 
            rst : in std_logic;
            clk_GPU : in std_logic;
            clk_CPU : in std_logic;
            in_data_GPU_valid : in std_logic;
            in_data_GPU : in std_logic_vector(DATA_WIDTH - 1 downto 0);
            out_data_CPU : out std_logic_vector(DATA_WIDTH - 1 downto 0);
            out_data_CPU_valid : out std_logic
 
    );
end cdc_down;
 
architecture Behavioral of cdc_down is
 
    signal r_data_GPU : std_logic_vector(DATA_WIDTH - 1 downto 0) := (others => '0');
    signal r_data_CPU : std_logic_vector(DATA_WIDTH - 1 downto 0) := (others => '0');
    signal r_handshake_GPU : std_logic := '0';
    signal r_handshake_CPU : std_logic := '0';
 
begin
 
    out_data_CPU <= r_data_CPU;
    out_data_CPU_valid <= r_handshake_CPU;
 
    process(clk_GPU, rst)  --Process clk_CPU - in this case clk GPU > clk CPU
    begin
        if rst = '1' then
            r_handshake_GPU <= '0';	         
            r_data_GPU <= (others => '0');  
 
        elsif rising_edge(clk_GPU) then --When positive edge trigger of clk GPU
            if in_data_GPU_valid = '1' and r_handshake_GPU = '0' then --If valid data and we dont have requests 
				r_data_GPU <= in_data_GPU;  --fetches data clk GPU into register.
				r_handshake_GPU <= '1';     --request in GPU sets to one
		  end if;
		  else
			   if r_handshake_CPU = '1' then --if  there is a request from CPU
				    r_handshake_GPU <= '0';    
			     end if;
		    end if;
		end if;
    end process;
 
    process(clk_CPU, rst)    --clk process CPU
    begin
        if rst = '1' then
            r_handshake_CPU <= '0';
            r_data_CPU <= (others => '0');
        elsif rising_edge(clk_CPU) then
            if r_handshake_CPU = '0' and r_handshake_GPU = '1'  then
                r_handshake_CPU <= '1';  --if cpu available and gpu requesting, accept request and data
                r_data_CPU <= r_data_GPU;			
            
				elsif r_handshake_GPU = '0' then -- no request in GPU, CPU cero
                r_handshake_CPU <= '0';		
            end if;
        end if;    
    end process;
 
end Behavioral;