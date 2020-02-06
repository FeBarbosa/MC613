LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY minimizado IS
PORT(
	a, b, c, d, e : IN STD_LOGIC;
	f : OUT STD_LOGIC
);
END minimizado;

ARCHITECTURE arch OF minimizado IS
BEGIN
	f <= (NOT a AND NOT b AND NOT c AND NOT e) OR (b AND c AND e) OR (b AND NOT c AND NOT d AND NOT e) OR (NOT b AND NOT c AND d AND NOT e) OR (c AND NOT d AND e);
END arch;