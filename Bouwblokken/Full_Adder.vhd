library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity Full_Adder is
Port ( 
        M20:      in  std_logic;
        M19:      in  std_logic;
        L19:    in  std_logic;
        LD4B:      out std_logic;
        LD4G:   out std_logic
);
end Full_Adder;

architecture Behavioral of Full_Adder is
signal XOR1_OUT, AND1_OUT, AND2_OUT, XOR2_OUT, XOR3_OUT: std_logic;

begin

XOR1_OUT <= (M20 AND (NOT M19)) OR ((NOT M20) AND M19);
AND1_OUT <= M20 AND M19;
AND2_OUT <= L19 AND XOR1_OUT;
XOR2_OUT <= (XOR1_OUT AND (NOT L19)) OR ((NOT XOR1_OUT) AND L19);
XOR3_OUT <= (AND1_OUT AND (NOT AND2_OUT)) OR ((NOT AND1_OUT ) AND AND2_OUT );

LD4B <= XOR2_OUT ;
LD4B <= XOR3_OUT ; 

end Behavioral;

