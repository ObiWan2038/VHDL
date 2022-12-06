library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity NAND_2i_1o is
Port   (in1 : in std_logic;
        in2 : in std_logic;
        uitl: out std_logic); 
end NAND_2i_1o;

architecture Behavioral of NAND_2i_1o is

begin

uitl <= not(in1 and in2) OR ((not in1) and in2) OR (in1 and (not in2));


end Behavioral;
