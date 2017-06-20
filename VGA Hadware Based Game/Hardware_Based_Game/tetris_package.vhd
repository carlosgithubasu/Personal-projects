
library ieee;
use ieee.numeric_std.all;
use ieee.std_logic_1164.all;




package tetris_package is


type     shape_type     is (SHAPE_T, SHAPE_SQUARE, SHAPE_STICK, SHAPE_L_L, SHAPE_L_R, SHAPE_DOG_L, SHAPE_DOG_R);
signal  piece_tye : shape_type;


signal rnd_count_r : integer range 0 to 6;

end package;