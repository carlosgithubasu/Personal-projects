--Carlos Perez Araujo , Tecnologico de Estudios Superiores de Monterrey
--DONE
LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;

ENTITY DATA_REGISTER IS   --REGISTER FILE
	PORT (
	      CLK         : IN STD_LOGIC;   
			REG_WRITE   : IN STD_LOGIC;  							--Enabler
			
			WRITE_REG   : IN STD_LOGIC_VECTOR (4 DOWNTO 0); --Registro al cual escribir
			
			
			READ_REG1   : IN STD_LOGIC_VECTOR (4 DOWNTO 0); --Direccion Salida/Lectura 1
			READ_REG2   : IN STD_LOGIC_VECTOR (4 DOWNTO 0); --Direccion Salida/Lectura 2
			
			WRITE_DATA  : IN STD_LOGIC_VECTOR (31 DOWNTO 0);--Datos Escritura 
			
			
			
			OUT1_32     : OUT STD_LOGIC_VECTOR (31 DOWNTO 0);--Salida 1   Data 1
			OUT2_32     : OUT STD_LOGIC_VECTOR (31 DOWNTO 0) --Salida 2   Data 2
	);
END DATA_REGISTER;

ARCHITECTURE Behavioral OF DATA_REGISTER IS

	SUBTYPE REGISTERX IS STD_LOGIC_VECTOR (31 DOWNTO 0);
--	TYPE REG_BANK IS ARRAY (0 TO 31) OF REGISTERX;               ESTE ES EL 32 X 32 Registro
--	SIGNAL ROM_MEMORY : REG_BANK := (OTHERS => (OTHERS => '0'));

	TYPE REG_BANK IS ARRAY (0 TO 31) OF REGISTERX;             --INITIALIZATION
	SIGNAL ROM_MEMORY : REG_BANK := (x"00000000",
												x"00000000",
												x"00000000",
												x"00000000",
												x"00000000",
												x"00000000",
												OTHERS => (OTHERS =>'0')
												);


BEGIN

	OUT1_32 <= ROM_MEMORY(TO_INTEGER(UNSIGNED(READ_REG1)));
	OUT2_32 <= ROM_MEMORY(TO_INTEGER(UNSIGNED(READ_REG2)));

	PROCESS (CLK)
	BEGIN
		IF FALLING_EDGE(CLK) AND REG_WRITE = '1' THEN
			IF WRITE_REG >= "00001" THEN
				ROM_MEMORY(TO_INTEGER(UNSIGNED(WRITE_REG))) <= WRITE_DATA;
			ELSE
				ROM_MEMORY(TO_INTEGER(UNSIGNED(WRITE_REG))) <= x"00000000";   --Mantener en ceros registro 1
			END IF;
		END IF;
	END PROCESS;

END Behavioral;
