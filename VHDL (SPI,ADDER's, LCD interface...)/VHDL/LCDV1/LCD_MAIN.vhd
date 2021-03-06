LIBRARY IEEE;
LIBRARY work;   --WE ADD OUR LIBRARIES

USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;
USE work.INSTRUCTION_PKG.ALL;

ENTITY LCD IS
	PORT (
		MCLK  : IN STD_LOGIC;  --MASTER CLOCK
		RS    : OUT STD_LOGIC; --REGISTER
		RW    : OUT STD_LOGIC; --READING AND WRITING
		EN    : OUT STD_LOGIC; --ENABLES THE LCD TO UNDERSTAND WHEN TO ATTEND FOR NEW INSTRUCTIONS
		DATA  : OUT STD_LOGIC_VECTOR (7 DOWNTO 0)
	);
END LCD;

ARCHITECTURE Behavioral OF LCD IS

   TYPE ROM IS ARRAY (0 TO 63) OF STD_LOGIC_VECTOR(8 DOWNTO 0);--64 INSTRUCTIONS FOR THE ROM


	CONSTANT FINISH : STD_LOGIC_VECTOR(8 DOWNTO 0) := (OTHERS => '0');
	CONSTANT CLEAR_SCREEN : STD_LOGIC_VECTOR(8 DOWNTO 0) := '0' & x"01"; --COMMAND TO CLEAR
	CONSTANT BEGIN_LOOP : STD_LOGIC_VECTOR(8 DOWNTO 0) := '1' & x"00";   --THIS INSTRUCTION IS IGNORED BY THE LCD, IT ONLY HELPS OUR CODE
	CONSTANT END_LOOP : STD_LOGIC_VECTOR(8 DOWNTO 0) := '1' & x"01";     --THIS INSTRUCTION IS IGNORED BY THE LCD, IT ONLY HELPS OUR CODE
	CONSTANT NOP : STD_LOGIC_VECTOR(8 DOWNTO 0) := '1' & x"02";          --NOTHING.
	CONSTANT DELAY_MS : STD_LOGIC_VECTOR(8 DOWNTO 0) := '1' & x"03";     --THIS IS A DELAY.

	SIGNAL INSTRUCTION_ROM : ROM;                                        --INSTRUCTION -> TYPE ROM
	SIGNAL DIR_ROM, DIR : INTEGER RANGE 0 TO 63 := 0;                    --ACTUAL ADDRESS OF THE ROM
	SIGNAL NEXT_OFFSET, NEXT_POS : INTEGER RANGE 1 TO 17 := 2;            
	SIGNAL GENERAL_DELAY : INTEGER RANGE 0 TO 1_000 := 0;               
	SIGNAL INSTRUCTION : STD_LOGIC_VECTOR(8 DOWNTO 0); 
	SIGNAL TEMP : STD_LOGIC_VECTOR(8 DOWNTO 0); --TEMPORAL
	


	SIGNAL NEXTPOS	: STD_LOGIC_VECTOR(8 DOWNTO 0);

	COMPONENT LCD_PROCESSOR IS
		PORT (
			CLK             : IN STD_LOGIC;
			INSTRUCTION_ROM : IN STD_LOGIC_VECTOR (8 DOWNTO 0);   --IT IS AN INPUT FOR OUR PROCESSOR
			GENERAL_DELAY	 : IN INTEGER RANGE 0 TO 1_000;		   --GENERAL DELAY	
			RS              : OUT STD_LOGIC;
			RW              : OUT STD_LOGIC;
			EN              : OUT STD_LOGIC;
			DIR_ROM         : OUT INTEGER RANGE 0 TO 63;
			NEXT_POS			 : OUT INTEGER RANGE 1 TO 17;			
			DATA            : OUT STD_LOGIC_VECTOR (7 DOWNTO 0)
		);
	END COMPONENT;
	
BEGIN

	DIR_ROM <= DIR;  --asigno a dir_rom mi direccion  esta en cero
	NEXT_OFFSET <= NEXT_POS;
	INSTRUCTION <= INSTRUCTION_ROM(DIR_ROM);  --MI INSTRUCCION EN EL INSTANTE
	GENERAL_DELAY	<= 100;
	
	P1 : LCD_PROCESSOR
	PORT MAP(MCLK, INSTRUCTION, GENERAL_DELAY, RS, RW, EN, DIR, NEXT_POS, DATA);

	
	TEMP<=SHIFT(1,1,1,0);
	
	
	INSTRUCTION_ROM(0) <= INIT_LCD(2);
	INSTRUCTION_ROM(1) <= SET_POS(1,1); --NO VA A AQUI 
	
	
	--Tener una funcion que  inicialize una senal en la next_pos y  que cuando la mandemos llamar (1) que
	--regrese esa next_pos y que actualize la nueva next_pos. 
	

	INSTRUCTION_ROM(2) <= BEGIN_LOOP;

	
	--TENEMOS UN DELAY AL PRINCIPIO PARA INICIALIZAR , ES TODO
	--TENEMOS UN DELAY PARA ESCRIBIR 
	--si lo hacemos aqui tenemos que hacer un process, y ese process esta mal cordinado  
	INSTRUCTION_ROM(3) <= PUT_CHAR('H'); --la mandas llamas y lo hace despues del t delay after write 1 ,2 etc 
	INSTRUCTION_ROM(4) <= PUT_CHAR('E');
	INSTRUCTION_ROM(5) <= PUT_CHAR('L');
	INSTRUCTION_ROM(6) <= PUT_CHAR('L');
	INSTRUCTION_ROM(7) <= PUT_CHAR('O');
	INSTRUCTION_ROM(8) <= PUT_CHAR(' ');
	INSTRUCTION_ROM(9) <= PUT_CHAR('W');
	INSTRUCTION_ROM(10) <= PUT_CHAR('O');
	INSTRUCTION_ROM(11) <= PUT_CHAR('R');
	INSTRUCTION_ROM(12) <= PUT_CHAR('L');
	INSTRUCTION_ROM(13) <= PUT_CHAR('D');
	
	INSTRUCTION_ROM(14) <= DELAY_MS;  --hace delay  y manda a nop que suma direccion
	INSTRUCTION_ROM(15) <= CLEAR_SCREEN;
	INSTRUCTION_ROM(16) <= SHIFT(0,0,0,1);  --AQUI ESTA EL PROBLEMA ***** CAMBIE ESTO
	--se puede actualizar una senal

--en set pocision lo que estamos haciendo es.... , 2 al principio	
	INSTRUCTION_ROM(17) <= END_LOOP;
	
	INSTRUCTION_ROM(18) <= FINISH;

END Behavioral;