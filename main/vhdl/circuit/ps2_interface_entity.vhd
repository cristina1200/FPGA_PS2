--==============================================================================
--== Logisim-evolution goes FPGA automatic generated VHDL code                ==
--== https://github.com/logisim-evolution/                                    ==
--==                                                                          ==
--==                                                                          ==
--== Project   : MouseProject_modif                                           ==
--== Component : ps2_interface                                                ==
--==                                                                          ==
--==============================================================================


LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;


ENTITY ps2_interface IS
   PORT ( CLOCK       : IN  std_logic;
          PS2_CLOCK   : IN  std_logic;
          PS2_DATA    : IN  std_logic;
          RESET       : IN  std_logic;
          LEFT_CLICK  : OUT std_logic;
          RIGHT_CLICK : OUT std_logic );
END ENTITY ps2_interface;
