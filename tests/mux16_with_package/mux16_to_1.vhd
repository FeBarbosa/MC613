LIBRARY ieee;
USE ieee.std_logic_1164.all;
LIBRARY work;
USE work.mux4_to_1_package.all;

ENTITY mux16_to_1 IS
	PORT(w : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
	     s : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	     f : OUT STD_LOGIC 
	);
END mux16_to_1;

ARCHITECTURE arch OF mux16_to_1 IS
	SIGNAL temp : STD_LOGIC_VECTOR(3 DOWNTO 0);
BEGIN

	gen: FOR i IN s'RANGE GENERATE
		mux4partial : mux4_to_1 PORT MAP(w(4*i), w(4*i+1), w(i+2), w(i+3), s(1 DOWNTO 0), temp(i));
	END GENERATE;
	mux4final : mux4_to_1 PORT MAP(temp(0), temp(1), temp(2), temp(3), s(3 DOWNTO 2), f);

END arch;
