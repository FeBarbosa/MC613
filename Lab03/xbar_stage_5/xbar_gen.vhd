LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY xbar_gen IS
	GENERIC (N : INTEGER := 8);
	PORT(
		vcc, gnd : IN STD_LOGIC;
		s : IN STD_LOGIC_VECTOR(N-1 DOWNTO 0);
		y1, y2 : OUT STD_LOGIC
	);
END xbar_gen;

ARCHITECTURE arch OF xbar_gen IS
	-------------------------------------
	SIGNAL x1, x2 : STD_LOGIC_VECTOR(N DOWNTO 0);
	-------------------------------------
	COMPONENT xbar_v1 IS
		PORT(
			x1, x2, s: IN STD_LOGIC;
			y1, y2 : OUT STD_LOGIC
		);
	END COMPONENT;
	-------------------------------------
BEGIN
	
	x1(0) <= vcc;
	x2(0) <= gnd;
	
	gen : FOR i IN 0 TO N-1 GENERATE
		xbar : xbar_v1 PORT MAP(x1(i), x2(i), s(i), x1(i+1), x2(i+1));
	END GENERATE;
	
	y1 <= x1(N);
	y2 <= x2(N);
	
END arch;