library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
 
entity tb_Clock_Domain_Crossing is
end tb_Clock_Domain_Crossing;
 
architecture Behavioral of tb_Clock_Domain_Crossing is
 
    component Clock_Domain_Crossing 
    Generic(
        CLK_COMPARE : integer range 0 to 1 := 0; --if in_clk_GPU > in_clk_CPU; 0 else 1;
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
    end component;
 
    constant DATA_WIDTH : integer := 8;
    constant PERIOD_CLK_GPU :time := 10 us;
    constant PERIOD_CLK_CPU :time := 1 us;
	 signal clk_GPU : std_logic := '0';
    signal clk_CPU : std_logic := '0';
    signal in_data_GPU_valid : std_logic := '0';
    signal in_data_GPU : std_logic_vector(DATA_WIDTH - 1 downto 0) := (others => '0');
    signal out_data_CPU : std_logic_vector(DATA_WIDTH - 1 downto 0) := (others => '0');
    signal out_data_CPU_valid : std_logic := '0';
 
begin
    process
    begin
        clk_GPU <= '1';
        wait for PERIOD_CLK_GPU / 2;
        clk_GPU <= '0';
        wait for PERIOD_CLK_GPU / 2;
    end process;
 
    process
    begin
        clk_CPU <= '1';
        wait for PERIOD_CLK_CPU / 2;
        clk_CPU <= '0';
        wait for PERIOD_CLK_CPU / 2;
    end process;
 
    process
    begin
        in_data_GPU_valid <= '0';
        wait for PERIOD_CLK_GPU * 19;
        in_data_GPU_valid <= '1';
        wait for PERIOD_CLK_GPU;
		  
    end process;
 
    process(in_data_GPU_valid)
    begin
        if in_data_GPU_valid = '1' then
            in_data_GPU <= in_data_GPU + 1;
        end if;
    end process;
 
 
    clk_CMD : Clock_Domain_Crossing
    Generic map(
        CLK_COMPARE => 0, 
        DATA_WIDTH => DATA_WIDTH   
    )
    Port map( 
        rst => '0',
        clk_GPU => clk_GPU,
        clk_CPU => clk_CPU,
        in_data_GPU_valid => in_data_GPU_valid,
        in_data_GPU => in_data_GPU,
        out_data_CPU => out_data_CPU,
        out_data_CPU_valid => out_data_CPU_valid
    );
 
end Behavioral;