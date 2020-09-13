library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

ENTITY comparador IS
PORT ( 
		a, b : IN STD_LOGIC_VECTOR (3 DOWNTO 0);
		aMAIORb, aMENORb, aIGUALb : OUT STD_LOGIC 
		);
END comparador ;

ARCHITECTURE comportamento OF comparador IS
BEGIN
	aMAIORb <= '1' when a > b else '0';
	aMENORb <= '1' when a < b else '0';
	aIGUALb <= '1' when a = b else '0';
END comportamento;