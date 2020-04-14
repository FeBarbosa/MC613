LIBRARY ieee;
USE ieee.std_logic_1164.all;

PACKAGE mux4_to_1_package IS
	COMPONENT mux4_to_1
		PORT(w0, w1, w2, w3 : IN STD_LOGIC;
		     s : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
		     f : OUT STD_LOGIC
		);
	END COMPONENT;
END mux4_to_1_package;
