LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;

ENTITY tb_mux16_to_1 IS
END ENTITY;

ARCHITECTURE test OF tb_mux16_to_1 IS
	SIGNAL w : STD_LOGIC_VECTOR(15 DOWNTO 0);
	SIGNAL s : STD_LOGIC_VECTOR(3 DOWNTO 0);
	SIGNAL f : STD_LOGIC;
BEGIN
	dut : entity work.mux16_to_1 PORT MAP(
		w => w,
		s => s,
		f => f
	);

	PROCESS
	BEGIN
		w <= STD_LOGIC_VECTOR(TO_UNSIGNED(1, w'length));	
		s <= STD_LOGIC_VECTOR(TO_UNSIGNED(1, s'length));
		WAIT FOR 50 ns;
		s <= STD_LOGIC_VECTOR(TO_UNSIGNED(0, s'length));	
		WAIT FOR 50 ns;
		w <= STD_LOGIC_VECTOR(TO_UNSIGNED(16, w'length));
		WAIT FOR 50 ns;
		s <= STD_LOGIC_VECTOR(TO_UNSIGNED(4, s'length));
		WAIT FOR 50 ns;
	END PROCESS;	
END test;
