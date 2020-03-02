LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY mux4_to_1 IS
	PORT(
			sel : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
			w : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
			en : IN STD_LOGIC;
			f : OUT STD_LOGIC
	);
END mux4_to_1;

ARCHITECTURE arch OF mux4_to_1 IS
	SIGNAL temp : STD_LOGIC_VECTOR(3 DOWNTO 0);
	-----------------------------------------------------
	COMPONENT dec2_to_4 IS
		PORT(
			s : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
			en : IN STD_LOGIC;
			y : OUT STD_LOGIC_VECTOR(3 DOWNTO 0));
	END COMPONENT;
	-----------------------------------------------------
	COMPONENT extra_logic IS
		PORT(
			w, y : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
			f : OUT STD_LOGIC);
	END COMPONENT;
	-----------------------------------------------------
BEGIN
	dec: dec2_to_4 PORT MAP(sel, en, temp);
	e_logic: extra_logic PORT MAP(w, temp, f); 
END arch;
	
	