library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity ula is port(
						a , b: in  std_logic_vector(3 downto 0);
						sel  : in  std_logic_vector(2 downto 0);
						s	  : out std_logic_vector(3 downto 0)
);
end ula;
architecture somacomp of ula is
	signal sout: std_logic;
component comparador IS
	PORT ( 
			a, b : IN STD_LOGIC_VECTOR (3 DOWNTO 0);
			aMAIORb, aMENORb, aIGUALb : OUT STD_LOGIC 
			);
END component;
begin
	s1 : comparador port map(a,b,sout);
	with sel select
	s <= a + b when "000",
		  a - b when "001",
		  a or b when "010",
		  a and b when "011",
		  not(a) when "100",
		  "000" & sout when "101",
		 "XXXX" when others; 

end somacomp;

