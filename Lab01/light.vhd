LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY light IS
PORT(
	x1, x2 : IN STD_LOGIC;
	f : OUT STD_LOGIC
);
END light;

ARCHITECTURE logicFunction OF light IS
BEGIN
	f <= (NOT x1 AND X2) OR (x1 AND NOT X2);
END logicFunction;