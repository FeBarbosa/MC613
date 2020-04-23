-- brief : lab05 - question 1

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity barrel_shifter is
  port(
    w : in  std_logic_vector (3 downto 0);
    s : in  std_logic_vector (1 downto 0);
    y : out std_logic_vector (3 downto 0)
  );
end barrel_shifter;

architecture rtl of barrel_shifter is
	signal temp : unsigned(3 DOWNTO 0);
begin
	temp <= unsigned(w);
	WITH s SELECT
		y <= std_logic_vector(temp ROR 1) WHEN "01",
		     std_logic_vector(temp ROR 2) WHEN "10",
		     std_logic_vector(temp ROR 3) WHEN "11",
		     std_logic_vector(temp) WHEN OTHERS;
end rtl;

