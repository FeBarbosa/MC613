LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY xbar_v3 IS
	PORT(
		x1, x2, s : IN STD_LOGIC;
		y1, y2 : OUT STD_LOGIC
	);
END xbar_v3;

ARCHITECTURE arch OF xbar_v3 IS
BEGIN

	PROCESS (x1, x2, s)
	BEGIN
		IF s = '1' THEN
			y1 <= x2;
			y2 <= x1;
		ELSE
			y1 <= x1;
			y2 <= x2;
		END IF;
	END PROCESS;
	
END arch;