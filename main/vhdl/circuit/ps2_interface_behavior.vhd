--==============================================================================
--== Logisim-evolution goes FPGA automatic generated VHDL code                ==
--== https://github.com/logisim-evolution/                                    ==
--==                                                                          ==
--==                                                                          ==
--== Project   : MouseProject_modif                                           ==
--== Component : ps2_interface                                                ==
--==                                                                          ==
--==============================================================================

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;



architecture Behavioral of PS2_Interface is
	signal MOUSE_REGISTER : std_logic_vector(42 downto 0) := (others => '0');
	signal MOUSE_BITS : std_logic_vector(5 downto 0) := (others => '0');
	signal REGISTER_FULL : std_logic;
	signal IS_LEFT_PRESSED : std_logic := '0';
	signal IS_RIGHT_PRESSED : std_logic := '0';
	signal IDLE : std_logic := '1';
 
begin
	BIT_COUNT_PROCESS : process (PS2_CLOCK, RESET)
	begin
		if RESET = '0' then
			MOUSE_BITS <= (others => '0');
		elsif falling_edge(PS2_CLOCK) then
			if MOUSE_BITS <= 42 then
				MOUSE_BITS <= MOUSE_BITS + 1;
			else
				MOUSE_BITS <= (others => '0');
			end if;
		end if;
	end process;

	REGISTER_PROCESS : process (PS2_CLOCK, RESET)
	begin
		REGISTER_FULL <= '0';
		if RESET = '0' then
			MOUSE_REGISTER <= (others => '0');
		elsif falling_edge(PS2_CLOCK) then
			MOUSE_REGISTER <= MOUSE_REGISTER(41 downto 0) & PS2_DATA;
			if MOUSE_BITS = 42 then
				REGISTER_FULL <= '1';
			end if;
		end if;
	end process;

	SIGNAL_PROCESS: process (CLOCK)
	begin
		if rising_edge(CLOCK) then
			LEFT_CLICK <= '0';
			RIGHT_CLICK <= '0';
			
			if REGISTER_FULL = '1' then
				
				if MOUSE_REGISTER(41) = '1' and IS_LEFT_PRESSED = '0' then
					LEFT_CLICK <= '1';
				elsif MOUSE_REGISTER(40) = '1' and IS_RIGHT_PRESSED = '0' then
					RIGHT_CLICK <= '1';
				end if;
				IS_LEFT_PRESSED <= MOUSE_REGISTER(41);
				IS_RIGHT_PRESSED <= MOUSE_REGISTER(40);
			end if;	
		end if;
	end process;
end Behavioral;
