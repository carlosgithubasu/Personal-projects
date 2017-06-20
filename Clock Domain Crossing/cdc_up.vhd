library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
 
entity cdc_up is
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
end cdc_up;

--IF CLK CPU > CLK GPU 
 
architecture Behavioral of cdc_up is
    signal r_data_cnt : std_logic_vector(3 downto 0) := (others => '0');
begin
 
    out_data_CPU <= in_data_GPU when r_data_cnt(3 downto 2) = "01" else (others => '0');
    out_data_CPU_valid <= '1' when r_data_cnt(3 downto 2) = "01" else '0';
 
    process(clk_CPU, rst)
    begin
        if rst = '1' then
            r_data_cnt <= (others => '0');
        elsif rising_edge(clk_CPU) then
            r_data_cnt <= r_data_cnt(2 downto 0) & in_data_GPU_valid;
        end if;
    end process;
end Behavioral;