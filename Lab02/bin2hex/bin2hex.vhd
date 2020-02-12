LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY bin2hex IS
	PORT(
		bin : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
		hex : OUT STD_LOGIC_VECTOR(6 DOWNTO 0)
	);
END bin2hex;

ARCHITECTURE arch OF bin2hex IS
BEGIN
	
END bin2hex;