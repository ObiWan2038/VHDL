library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity decoder is
 port(
 a : in STD_LOGIC_VECTOR(1 downto 0);
 b : out STD_LOGIC_VECTOR(3 downto 0)
 );
end decoder;

architecture Behavioral of decoder is

begin
b(0) <= not a(0) and not a(1);
b(1) <= not a(0) and a(1);
b(2) <= a(0) and not a(1);
b(3) <= a(0) and a(1);

end Behavioral;
