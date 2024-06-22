--==============================================================================
--== Logisim-evolution goes FPGA automatic generated VHDL code                ==
--== https://github.com/logisim-evolution/                                    ==
--==                                                                          ==
--==                                                                          ==
--== Project   : MouseProject_modif                                           ==
--== Component : frequency_divider                                            ==
--==                                                                          ==
--==============================================================================

library ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_unsigned.all;




ARCHITECTURE Behavioral OF FREQUENCY_DIVIDER IS

BEGIN

	process(CLOCK_100)
	variable nr: std_logic_vector (15 downto 0) := (others => '0');
	begin
		if RESET = '0' then
			nr := (others => '0');
		elsif rising_edge(CLOCK_100) then
			nr := nr + 1;
		end if;
			CLK_DIVIDED <= nr(15);	
			if nr = "1111111111111111" then
				nr := (others => '0');
			end if;
	end process;

END Behavioral;
