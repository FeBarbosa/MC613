LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY bin2dec IS
	PORT(
		bin : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
		dec : OUT STD_LOGIC_VECTOR(6 DOWNTO 0)
	);
END bin2dec;

ARCHITECTURE arch OF bin2dec IS
BEGIN

--	WITH bin SELECT
--		dec <= "1000000" WHEN "0000",
--				 "1111001" WHEN "0001",
--				 "0100100" WHEN "0010",
--				 "0110000" WHEN "0011",
--				 "0011001" WHEN "0100",
--				 "0110010" WHEN "0101",
--				 "0000010" WHEN "0110",
--				 "1111000" WHEN "0111",
--				 "0000000" WHEN "1000",
--				 "0011000" WHEN "1001",
--				 "0000111" WHEN OTHERS;

			 
	dec <= "1000000" WHEN bin = "0000" ELSE           -- 0
			 "1111001" WHEN bin = "0001" ELSE -- 1 
			 "0100100" WHEN bin = "0010" ELSE -- 2 
			 "0110000" WHEN bin = "0011" ELSE -- 3
			 "0011001" WHEN bin = "0100" ELSE -- 4
			 "0010010" WHEN bin = "0101" ELSE -- 5
			 "0000010" WHEN bin = "0110" ELSE -- 6
			 "1111000" WHEN bin = "0111" ELSE -- 7 
			 "0000000" WHEN bin = "1000" ELSE -- 8 
			 "0011000" WHEN bin = "1001" ELSE -- 9
			 "0000110";                       -- E (erro)
	 
END arch;


	
