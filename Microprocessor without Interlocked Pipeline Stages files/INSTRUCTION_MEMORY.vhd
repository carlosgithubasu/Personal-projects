--Carlos Perez Araujo , Tecnologico de Estudios Superiores de Monterrey

LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;

ENTITY INSTRUCTION_MEMORY IS
	PORT ( ADDRESS : IN STD_LOGIC_VECTOR ( 31 DOWNTO 0 );
			 INSTRUCTION : OUT STD_LOGIC_VECTOR ( 31 DOWNTO 0 ));
END INSTRUCTION_MEMORY;




ARCHITECTURE BEHAVIORAL OF INSTRUCTION_MEMORY IS 

BEGIN
PROCESS (ADDRESS) 
VARIABLE ADDRESS_INT : NATURAL := 0;
SUBTYPE INSTRUCTION_REGISTER IS STD_LOGIC_VECTOR( 31 DOWNTO 0 );
TYPE MEMORY IS ARRAY ( 0 TO 31 ) OF INSTRUCTION_REGISTER;
VARIABLE INSTRUCTION_STORAGE : MEMORY := 
										     ( 
												x"00004020", -- 0,0 		ADD R8, R0, R0
												x"8C010000", -- 1,4 		LW R1, 0x0(R0)
												x"8C020004", -- 2,8 		LW R2, 0x4(R0)
												x"8C030008", -- 3,C 		LW R3, 0x8(R0)
												x"00411820", -- 4,10 	ADD R3, R2, R1
												x"00412025", -- 5,14 	OR R4, R2, R1
												x"00412822", -- 6,18 	SUB R5, R2, R1
												x"00413024", -- 7,1C 	AND R6, R2, R1
												x"0800000A", -- 8,20 	J 10
												x"21080001", -- 9,24 	ADDI R8, R8, 0x1
												x"0008382A", -- 10,28 	SLT R7, R0, R8
												x"10E8FFFD", -- 11,2C 	BEQ R7, R8, 9
												x"3C092000", -- 12,30 	LUI R9, 0x2000
												x"3529E000", -- 13,34 	ORI R9, R9, 0xE000
												x"AD280000", -- 14,38 	SW R8, 0x0(R9)
												x"8D2A0000", -- 15,3C 	LW R10, 0x0(R9)
												x"00000008", -- 16,40 	JR R0

--												x"00001020", --0,0 ADD R2, R0, R0
--												x"20420001", --1,4 ADDI R2, R2, 0x1
--												x"AC020000", --2,8 SW R2, 0x(R0)
--												
--												x"00002020", --3,C ADD R4, R0, R0
--												x"00000820", --4,10 ADD R1, R0, R0
--												x"00001820", --5,14 ADD R3, R0, R0
--												x"20210007", --6,18 ADDI R1, R1, 0x7
--												x"20630001", --7,1C ADDI R3, R3, 0x1
--																								
--												x"00421020", --8,20 ADD R2, R2, R2
--												x"AC020000", --9,24 SW R2, 0x(R0)
--												x"00230822", --10,28 SUB R1, R1, R3
--												x"0023202A", --11,2C SLT R4, R1, R3
--												x"1004FFFB", --12,30 BEQ R0, R4 
--												x"00000008", --13,34 JR R0
												OTHERS => (OTHERS =>'0')
											  );
											  
										
BEGIN

   ADDRESS_INT := TO_INTEGER(UNSIGNED(ADDRESS(6 DOWNTO 2)));
	INSTRUCTION <= INSTRUCTION_STORAGE(ADDRESS_INT);
	
END PROCESS;
END BEHAVIORAL;
