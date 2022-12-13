

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;



entity Oefening_9 is
Port (BIN, A, B: in std_logic ;
    D, BOUT : out std_logic );
end Oefening_9;

architecture Behavioral of Oefening_9 is
signal XOR1_OUT, AND1_OUT, AND2_OUT : std_logic ;
begin

XOR1_OUT  <= A XOR B;
AND1_OUT  <= (not A) and B;
AND2_OUT  <= (not XOR1_OUT )and BIN;

D <= BIN xor XOR1_OUT ;
BOUT <= AND2_OUT or AND1_OUT ;

end Behavioral;
