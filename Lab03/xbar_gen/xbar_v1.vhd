LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY xbar_v1 IS
	PORT(
		x1, x2, s: IN STD_LOGIC;
		y1, y2 : OUT STD_LOGIC
	);
END xbar_v1;

ARCHITECTURE arch OF xbar_v1 IS
BEGIN
	WITH s SELECT
		y1 <= x2 WHEN '1',
				x1 WHEN OTHERS;
				
	WITH s SELECT
		y2 <= x1 WHEN '1',
				x2 WHEN OTHERS;
END arch;