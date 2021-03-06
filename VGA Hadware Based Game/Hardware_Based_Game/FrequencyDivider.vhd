LIBRARY IEEE;
USE IEEE.NUMERIC_STD.ALL;
USE IEEE.STD_LOGIC_1164.ALL;


ENTITY FrequencyDivider IS
	PORT (
		CLK_IN, RST  : IN STD_LOGIC; 
		CLK_OUT      : OUT STD_LOGIC
	);
END FrequencyDivider;


ARCHITECTURE BEHAVIORAL OF FrequencyDivider IS

	SIGNAL TEMPORAL : STD_LOGIC := '0'; 

BEGIN
	CLK_OUT <= TEMPORAL; 

	PROCESS (CLK_IN, RST) 
BEGIN
	IF RST = '1' THEN
		TEMPORAL <= '0';
	ELSIF FALLING_EDGE(CLK_IN) THEN
		TEMPORAL <= NOT TEMPORAL; 
	END IF; 
END PROCESS;
END BEHAVIORAL;