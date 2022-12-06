library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity AND_poort is
Port ( in1 : in std_logic;
        in2 : in std_logic;
        uitl : out std_logic);
end AND_poort;

architecture Behavioral of AND_poort is


begin
uitl <= in1 and in2;

end Behavioral
