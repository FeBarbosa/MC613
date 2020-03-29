LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY dec2_to_4 IS
	PORT(
			s : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
			en : IN STD_LOGIC;
			y : OUT STD_LOGIC_VECTOR(3 DOWNTO 0)
	);
END ENTITY;

ARCHITECTURE arch OF dec2_to_4 IS
BEGIN
	y <= "0000" WHEN en = '0' ELSE
		  "0001" WHEN s = "00" ELSE
		  "0010" WHEN s = "01" ELSE
		  "0100" WHEN s = "10" ELSE
		  "1000";
END;