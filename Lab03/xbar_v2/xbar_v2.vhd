LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY xbar_v2 IS
	PORT(
		x1, x2, s: IN STD_LOGIC;
		y1, y2: OUT STD_LOGIC
	);
END xbar_v2;

ARCHITECTURE arch OF xbar_v2 IS
BEGIN
	y1 <=  x2 WHEN s='1' ELSE
			 x1;
	
	y2 <=  x1 WHEN s='1' ELSE
			 x2;
END arch;