
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Labo_11_Oefening_2 is
--  Port ( );
Port( BTN3 : in std_logic;
      BTN2 : in std_logic ;
      BTN1 : in std_logic ;
      LD1  : out std_logic ;
      LD0  : out std_logic );
end Labo_11_Oefening_2;

architecture Behavioral of Labo_11_Oefening_2 is

begin

with ((BTN3 = '0' AND BTN2 = '0' AND BTN1 = '1') OR 
      (BTN3 = '0' AND BTN2 = '1' AND BTN1 = '0') OR
      (BTN3 = '1' AND BTN2 = '1' AND BTN1 = '0'))
select
LD1 <= '1' when TRUE,
       '0' when FALSE,
       '0' when others;
       
with ((BTN3 = '0' AND BTN2 = '0' AND BTN1 = '0') OR
      (BTN3 = '1' AND BTN2 = '0' AND BTN1 = '0')) 
select
LD0 <= '0' when TRUE, 
       '1' when FALSE, 
       '0' when others; 


end Behavioral;
