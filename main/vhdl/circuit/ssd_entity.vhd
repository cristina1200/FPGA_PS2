--==============================================================================
--== Logisim-evolution goes FPGA automatic generated VHDL code                ==
--== https://github.com/logisim-evolution/                                    ==
--==                                                                          ==
--==                                                                          ==
--== Project   : MouseProject_modif                                           ==
--== Component : ssd                                                          ==
--==                                                                          ==
--==============================================================================


LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;


ENTITY ssd IS
   PORT ( CLK   : IN  std_logic;
          NR    : IN  std_logic_vector( 15 DOWNTO 0 );
          ANOD  : OUT std_logic_vector( 3 DOWNTO 0 );
          CATOD : OUT std_logic_vector( 6 DOWNTO 0 ) );
END ENTITY ssd;
