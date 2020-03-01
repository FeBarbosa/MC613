LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY xbar_stage_8 IS
	GENERIC(N : INTEGER := 8);
	PORT(
		x1, x2 : IN STD_LOGIC;
		s : IN STD_LOGIC_VECTOR(N-1 DOWNTO 0);
		y1, y2 : OUT STD_LOGIC
	);
END ENTITY;

ARCHITECTURE arch OF xbar_stage_8 IS
	-----------------------------------------------
	COMPONENT xbar_gen IS
		GENERIC (N : INTEGER := 8);
		PORT(
			vcc, gnd : IN STD_LOGIC;
			s : IN STD_LOGIC_VECTOR(N-1 DOWNTO 0);
			y1, y2 : OUT STD_LOGIC
		);
	END COMPONENT;
	-----------------------------------------------
BEGIN
	xbar : xbar_gen GENERIC MAP (N => N) PORT MAP (x1, x2, s, y1, y2);
END arch;
		
	