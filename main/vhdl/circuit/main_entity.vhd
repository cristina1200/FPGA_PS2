--==============================================================================
--== Logisim-evolution goes FPGA automatic generated VHDL code                ==
--== https://github.com/logisim-evolution/                                    ==
--==                                                                          ==
--==                                                                          ==
--== Project   : MouseProject_modif                                           ==
--== Component : main                                                         ==
--==                                                                          ==
--==============================================================================


LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;


ENTITY main IS
   PORT ( CLK     : IN  std_logic;
          PS_CLK  : IN  std_logic;
          PS_DATA : IN  std_logic;
          REVERSE : IN  std_logic;
          RST     : IN  std_logic;
          ANODS   : OUT std_logic_vector( 3 DOWNTO 0 );
          CATODS  : OUT std_logic_vector( 6 DOWNTO 0 );
          IS_LEFT : OUT std_logic );
END ENTITY main;
