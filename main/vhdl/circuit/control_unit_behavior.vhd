--==============================================================================
--== Logisim-evolution goes FPGA automatic generated VHDL code                ==
--== https://github.com/logisim-evolution/                                    ==
--==                                                                          ==
--==                                                                          ==
--== Project   : MouseProject_modif                                           ==
--== Component : control_unit                                                 ==
--==                                                                          ==
--==============================================================================

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;




ARCHITECTURE Behavioral OF CONTROL_UNIT IS

signal NUMBER: std_logic_vector(15 downto 0) := (others => '0');

BEGIN
	CONTROL_UNIT: process (CLOCK, RESET)
	begin
		if RESET = '0' then
			NUMBER <= (others => '0');
		elsif rising_edge(CLOCK) then
			if REVERSE = '1' then
				IS_LEFT <= '0';
				if LEFT_CLICK = '1' then
					if NUMBER < "0010011100001111" then
						NUMBER <= NUMBER + 1;
					else
						NUMBER <= "0010011100001111";
					end if;
				elsif RIGHT_CLICK = '1' then
					if NUMBER > 0 then
						NUMBER <= NUMBER - 1;
					else 
						NUMBER <= (others => '0');
					end if;
					
				end if;
			else
				IS_LEFT <= '1';
				if LEFT_CLICK = '1' then
					if NUMBER > 0 then
						NUMBER <= NUMBER - 1;
					else 
						NUMBER <= (others => '0');
					end if;
					
				elsif RIGHT_CLICK = '1' then
					if NUMBER < "0010011100001111" then
						NUMBER <= NUMBER + '1';
					else
						NUMBER <= "0010011100001111"; 
					end if;
					
				end if;
				
			end if;
		end if;
		OUTNUMBER <= NUMBER;
	end process;

END Behavioral;
