LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY original IS
PORT(
	a, b, c, d, e : IN  STD_LOGIC;
	f : OUT STD_LOGIC
);
END original;

ARCHITECTURE arch OF original IS
BEGIN
	f <= ( NOT a AND NOT b AND NOT c AND NOT d AND NOT e ) OR ( NOT a AND NOT b AND NOT c AND d AND NOT e ) OR ( NOT a AND NOT b AND c AND NOT d AND e ) OR ( NOT a AND b AND NOT c AND NOT d AND NOT e ) OR ( NOT a AND b AND c AND NOT d AND e ) OR ( NOT a AND b AND c AND d AND e ) OR ( a AND NOT b AND NOT c AND d AND NOT e ) OR ( a AND NOT b AND c AND NOT d AND e ) OR ( a AND b AND NOT c AND NOT d AND NOT e ) OR ( a AND b AND c AND NOT d AND e ) OR ( a AND b AND c AND d AND e );
END arch;
