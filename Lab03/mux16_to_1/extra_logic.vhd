LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY extra_logic IS
	PORT(
			w, y : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
			f : OUT STD_LOGIC
	);
END ENTITY;

ARCHITECTURE arch OF extra_logic IS
	SIGNAL temp : STD_LOGIC_VECTOR(3 DOWNTO 0);
BEGIN
	gen1: FOR i IN 0 TO 3 GENERATE
		temp(i) <= w(i) AND y(i);
	END GENERATE;
	
	f <= (temp(0) OR temp(1) OR temp(2) OR temp(3));
END arch;