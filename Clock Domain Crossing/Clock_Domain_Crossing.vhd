library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
 
 
entity Clock_Domain_Crossing is
  Generic(
    CLK_COMPARE : integer range 0 to 1 := 0; --if in_clk_GPU > in_clk_CPU; 0 else 1;
    DATA_WIDTH : integer := 8
 
  );
  Port ( 
    rst : in std_logic;                 --reset , asynchronous signal
    clk_GPU : in std_logic;             --examples of clocks, GPU and CPU
    clk_CPU : in std_logic;                  
    in_data_GPU_valid : in std_logic;   --data available
    in_data_GPU : in std_logic_vector(DATA_WIDTH - 1 downto 0);  --data clk GPU
    out_data_CPU : out std_logic_vector(DATA_WIDTH - 1 downto 0);--data clk CPU
    out_data_CPU_valid : out std_logic  --data available in CPU clk
 
  );
end Clock_Domain_Crossing;
 
architecture Behavioral of Clock_Domain_Crossing is
 
    component cdc_down
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
    end component;
 
    component cdc_up
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
    end component;
begin
 
    cdc_down_if : if CLK_COMPARE = 0 generate  --if gpu clk GPU greater than  CPU clk, execute cdc_down else cdc_up
        cdc_down_map : cdc_down 
        generic map(
            DATA_WIDTH => DATA_WIDTH
        )
        Port map( 
            rst => rst,
            clk_GPU => clk_GPU,
            clk_CPU => clk_CPU,
            in_data_GPU_valid => in_data_GPU_valid,
            in_data_GPU => in_data_GPU,
            out_data_CPU => out_data_CPU, 
            out_data_CPU_valid =>  out_data_CPU_valid                    
        );          
    end generate cdc_down_if;
    cdc_up_if : if CLK_COMPARE = 1 generate
        cdc_up_map : cdc_up 
        generic map(
            DATA_WIDTH => DATA_WIDTH
        )
        Port map( 
            rst => rst,
            clk_GPU => clk_GPU,
            clk_CPU => clk_CPU,
            in_data_GPU_valid => in_data_GPU_valid,
            in_data_GPU => in_data_GPU,
            out_data_CPU => out_data_CPU, 
            out_data_CPU_valid =>  out_data_CPU_valid                    
        ); 
    end generate cdc_up_if;
 
end Behavioral;