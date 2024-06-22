--==============================================================================
--== Logisim-evolution goes FPGA automatic generated VHDL code                ==
--== https://github.com/logisim-evolution/                                    ==
--==                                                                          ==
--==                                                                          ==
--== Project   : MouseProject_modif                                           ==
--== Component : frequency_divider                                            ==
--==                                                                          ==
--==============================================================================


LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;


ENTITY frequency_divider IS
   PORT ( CLOCK_100   : IN  std_logic;
          RESET       : IN  std_logic;
          CLK_DIVIDED : OUT std_logic );
END ENTITY frequency_divider;
