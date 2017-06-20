--Carlos Perez Araujo , Tecnologico de Estudios Superiores de Monterrey
LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;

ENTITY TEST_RAM IS
END TEST_RAM;

ARCHITECTURE TEST OF TEST_RAM IS

	COMPONENT RAM_MEMORY IS
		PORT (
			ADDRESS : IN STD_LOGIC_VECTOR (3 DOWNTO 0 );
			WRITE_DATA : IN STD_LOGIC_VECTOR (15 DOWNTO 0 );
			READ_DATA : OUT STD_LOGIC_VECTOR (15 DOWNTO 0 );
			RW, CLK : IN STD_LOGIC
		);
	END COMPONENT;
	SIGNAL READ_DATA : STD_LOGIC_VECTOR(15 DOWNTO 0);
	SIGNAL ADDRESS : STD_LOGIC_VECTOR(3 DOWNTO 0);
	SIGNAL DATA : STD_LOGIC_VECTOR (15 DOWNTO 0);
	SIGNAL CLK : STD_LOGIC;
	SIGNAL RW : STD_LOGIC;
	
	constant CLK_period : time := 20 ns;
	
BEGIN
	PORTMAP : RAM_MEMORY
	PORT MAP(ADDRESS => ADDRESS, WRITE_DATA => DATA, READ_DATA => READ_DATA, RW => RW, CLK => CLK);


	
   -- Clock process definitions
   CLK_process :process
   begin
		CLK <= '0';
		wait for CLK_period/2;
		CLK <= '1';
		wait for CLK_period/2;
   end process;
	

	
		-- Stimulus process
		stim_proc: process
		begin		
      -- hold reset state for 20 ns.
      wait for 10 ns;	

		RW <= '0';
		ADDRESS <= "0000";
		DATA <= x"0123";
      wait for CLK_period;
		ADDRESS <= "0001";
		DATA <= x"4567";
      wait for CLK_period;
		ADDRESS <= "0010";
		DATA <= x"89AB";
      wait for CLK_period;
		ADDRESS <= "0011";
		DATA <= x"CDEF";
      wait for CLK_period;
		ADDRESS <= "0100";
		DATA <= x"0246";
      wait for CLK_period;
		ADDRESS <= "0101";
		DATA <= x"8ACE";
      wait for CLK_period;
		ADDRESS <= "0110";
		DATA <= x"FABC";
      wait for CLK_period;
      wait for CLK_period;
      wait for CLK_period;		
		RW <= '1';
		ADDRESS <= "0110";
      wait for CLK_period;
		ADDRESS <= "0101";
      wait for CLK_period;
		ADDRESS <= "0100";
      wait for CLK_period;
		ADDRESS <= "0011";
      wait for CLK_period;
		ADDRESS <= "0010";
      wait for CLK_period;
		ADDRESS <= "0001";
      wait for CLK_period;
		ADDRESS <= "0000";
      wait for CLK_period;	
      wait;
   end process;

END TEST;
