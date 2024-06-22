--==============================================================================
--== Logisim-evolution goes FPGA automatic generated VHDL code                ==
--== https://github.com/logisim-evolution/                                    ==
--==                                                                          ==
--==                                                                          ==
--== Project   : MouseProject_modif                                           ==
--== Component : ssd                                                          ==
--==                                                                          ==
--==============================================================================

library ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_unsigned.all;







ARCHITECTURE TypeArchitecture OF SSD IS

SIGNAL COUNTER: STD_LOGIC_VECTOR(1 DOWNTO 0) := "00";
SIGNAL D1, D2, D3, D4: STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL DIGIT: STD_LOGIC_VECTOR(3 DOWNTO 0);

COMPONENT CONVERTOR IS
  PORT (
	NR: IN STD_LOGIC_VECTOR(15 DOWNTO 0);
	DIGIT4, DIGIT3, DIGIT2, DIGIT1: OUT STD_LOGIC_VECTOR(3 DOWNTO 0)
    );
END COMPONENT;

BEGIN

C1: CONVERTOR PORT MAP(NR, D4, D3, D2, D1);

PROCESS(CLK)
BEGIN
	IF RISING_EDGE(CLK) THEN	
		COUNTER <= COUNTER + 1;
	END IF;
END PROCESS;

PROCESS(COUNTER)
BEGIN
	CASE COUNTER IS
		WHEN "00" => 
			ANOD <= "1000";
			DIGIT <= D4;
		WHEN "01" => 
			ANOD <= "0100";
			DIGIT <= D3;
		WHEN "10" =>
			ANOD <= "0010";
			DIGIT <= D2;
		WHEN "11" =>
			ANOD <= "0001";
			DIGIT <= D1;
		WHEN OTHERS =>
			ANOD <= "0000";
			DIGIT <= "1111";
	END CASE;


END PROCESS;

PROCESS(DIGIT)
BEGIN
	CASE DIGIT IS
		WHEN X"0" =>
			CATOD <=  "1111110"; 
		WHEN X"1" =>
			CATOD <=  "0000110"; 
		WHEN X"2" =>
			CATOD <=  "1011011"; 
		WHEN X"3" =>
			CATOD <=  "1001111"; 
		WHEN X"4" =>
			CATOD <=  "0100111"; 
		WHEN X"5" =>
			CATOD <=  "1101101"; 
		WHEN X"6" =>
			CATOD <=  "1111101"; 
		WHEN X"7" =>
			CATOD <=  "1000110"; 
		WHEN X"8" =>
			CATOD <=  "1111111"; 
		WHEN X"9" =>
			CATOD <=  "1100111"; 
		WHEN OTHERS =>
			CATOD <=  "0000000";
	END CASE;
END PROCESS;
	

END TypeArchitecture;



LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;

USE ieee.std_logic_unsigned.all;
ENTITY CONVERTOR IS
  PORT (
	NR: IN STD_LOGIC_VECTOR(15 DOWNTO 0);
	DIGIT4, DIGIT3, DIGIT2, DIGIT1: OUT STD_LOGIC_VECTOR(3 DOWNTO 0)
    );
END CONVERTOR;





ARCHITECTURE TypeArchitecture OF CONVERTOR IS

SIGNAL A1: INTEGER := 10_000;
SIGNAL A2: INTEGER := 1_000;
SIGNAL A3: INTEGER := 100;
SIGNAL A4: INTEGER := 10;

BEGIN

PROCESS(NR)
VARIABLE D1, D2, D3, D4: INTEGER;
VARIABLE AUX: INTEGER := 0;
BEGIN
	AUX := TO_INTEGER(UNSIGNED(NR));
	
	AUX := AUX MOD A1;
	D4 := AUX / A2;

	AUX := AUX MOD A2;
	D3 := AUX / A3;

	AUX := AUX MOD A3;
	D2 := AUX / A4;

	AUX := AUX MOD A4;
	D1 := AUX;

	DIGIT1 <= STD_LOGIC_VECTOR(TO_UNSIGNED(D1, DIGIT1'LENGTH));
	DIGIT2 <= STD_LOGIC_VECTOR(TO_UNSIGNED(D2, DIGIT2'LENGTH));
	DIGIT3 <= STD_LOGIC_VECTOR(TO_UNSIGNED(D3, DIGIT3'LENGTH));
	DIGIT4 <= STD_LOGIC_VECTOR(TO_UNSIGNED(D4, DIGIT4'LENGTH));
	
END PROCESS;


END TypeArchitecture;
