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
	hex <= "1000000" WHEN bin = "0000" ELSE -- 0
			 "1111001" WHEN bin = "0001" ELSE -- 1
			 "0100100" WHEN bin = "0010" ELSE -- 2
			 "0110000" WHEN bin = "0011" ELSE -- 3
			 "0011001" WHEN bin = "0100" ELSE -- 4
			 "0010010" WHEN bin = "0101" ELSE -- 5
			 "0000010" WHEN bin = "0110" ELSE -- 6
			 "1111000" WHEN bin = "0111" ELSE -- 7
			 "0000000" WHEN bin = "1000" ELSE -- 8
			 "0011000" WHEN bin = "1001" ELSE -- 9
			 "0001000" WHEN bin = "1010" ELSE -- A
			 "0000011" WHEN bin = "1011" ELSE -- b
			 "1000110" WHEN bin = "1100" ELSE -- C
			 "0100001" WHEN bin = "1101" ELSE -- d
			 "0000110" WHEN bin = "1110" ELSE -- E
			 "0001110";                       -- F
END arch;