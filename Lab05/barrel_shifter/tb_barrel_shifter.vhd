LIBRARY ieee;
USE ieee.std_logic_1164.all;

entity tb_barrel_shifter is
end entity;

architecture test of tb_barrel_shifter is
    signal w : std_logic_vector (3 downto 0);
    signal s : std_logic_vector (1 downto 0);
    signal y : std_logic_vector (3 downto 0);
begin

	dut : entity work.barrel_shifter port map(
		w => w,
		s => s,
		y => y
	);

	process
	begin
		s <= "00";
		w <= "1011";
		wait for 50 ns;
		s <= "01";
		wait for 50 ns;
		s <= "10";
		wait for 50 ns;
		s <= "11";
		wait for 50 ns;
	end process;
end test;
