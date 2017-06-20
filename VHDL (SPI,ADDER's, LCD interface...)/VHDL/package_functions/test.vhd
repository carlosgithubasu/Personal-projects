----------------------------------------------------------------------------------
-- Company:  ITESM MONTERREY
-- Engineer: :   Carlos Perez Araujo
-- Create Date:    16:26:58 02/19/2016 
-- Design Name:   Carlos Perez Araujo
-- Module Name:    test - Behavioral 
-- Project Name: test
----------------------------------------------------------------------------------
LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;
USE WORK.PACKAGE_LCD.ALL;

ENTITY test IS
    PORT (SELECTOR : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
		  DATA : OUT STD_LOGIC_VECTOR(8 DOWNTO 0)
		  );
END test;
ARCHITECTURE Behavioral OF test IS
BEGIN

DATA <= INIT_LCD("00") WHEN SELECTOR = "00" ELSE
        POS(1, 2) WHEN SELECTOR = "01" ELSE
        LIMPIAR('1') WHEN SELECTOR = "10" ELSE
        WRITE_CHAR('x');


END Behavioral;
