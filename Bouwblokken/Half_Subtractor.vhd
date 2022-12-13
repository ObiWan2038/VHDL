library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity HALF_SUBTRACTOR is
  
Port (M20, M19 : in std_logic ;
      N15, G17 : out std_logic );

end HALF_SUBTRACTOR;

architecture Behavioral of HALF_SUBTRACTOR is

begin

N15 <= M20 XOR M19;
G17 <= (NOT M20) AND M19;


end Behavioral;
