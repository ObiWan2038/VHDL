library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Binary_multiplier is
Port (A0,A1,B0,B1 : in std_logic ;
      C0,C1,C2,C3 : out std_logic );

end Binary_multiplier;

architecture Behavioral of Binary_multiplier is
signal AND1_OUT, AND2_OUT, AND3_OUT, AND4_OUT, AND5_OUT : std_logic ;

begin

AND1_OUT <= A0 AND B1;
AND2_OUT <= A0 AND B0;
AND3_OUT <= A1 AND B0;
AND4_OUT <= A1 AND B1;
AND5_OUT <= AND1_OUT AND AND3_OUT ;

C0 <= AND2_OUT ;
C1 <= AND1_OUT XOR AND3_OUT ;
C2 <= AND5_OUT XOR AND4_OUT ;
C3 <= AND5_OUT AND AND4_OUT ; 


end Behavioral;
