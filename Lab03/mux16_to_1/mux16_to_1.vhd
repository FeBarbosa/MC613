LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY mux16_to_1 IS
	PORT(
			sel : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
			w : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
			en : IN STD_LOGIC;
			f : OUT STD_LOGIC
	);
END mux16_to_1;

ARCHITECTURE arch OF mux16_to_1 IS
	SIGNAL temp : STD_LOGIC_VECTOR(3 DOWNTO 0);
	---------------------------------------------------
	COMPONENT mux4_to_1 IS
		PORT(
				sel : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
				w : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
				en : IN STD_LOGIC;
				f : OUT STD_LOGIC
		);
	END COMPONENT;
	---------------------------------------------------
BEGIN
	gen: FOR i IN sel'RANGE GENERATE
		mux4 : mux4_to_1 PORT MAP(sel(1 DOWNTO 0), w(4*i+3 DOWNTO 4*i), en, temp(i));
	END GENERATE;
	
	muxf : mux4_to_1 PORT MAP(sel(3 DOWNTO 2), temp, en, f);	
END arch;
	