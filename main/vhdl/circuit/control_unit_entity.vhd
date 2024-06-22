--==============================================================================
--== Logisim-evolution goes FPGA automatic generated VHDL code                ==
--== https://github.com/logisim-evolution/                                    ==
--==                                                                          ==
--==                                                                          ==
--== Project   : MouseProject_modif                                           ==
--== Component : control_unit                                                 ==
--==                                                                          ==
--==============================================================================


LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;


ENTITY control_unit IS
   PORT ( CLOCK       : IN  std_logic;
          LEFT_CLICK  : IN  std_logic;
          RESET       : IN  std_logic;
          REVERSE     : IN  std_logic;
          RIGHT_CLICK : IN  std_logic;
          IS_LEFT     : OUT std_logic;
          OUTNUMBER   : OUT std_logic_vector( 15 DOWNTO 0 ) );
END ENTITY control_unit;
