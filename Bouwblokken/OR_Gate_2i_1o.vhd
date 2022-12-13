-- VHDL Code for OR gate

-- Header file declaration

library IEEE;
use IEEE.std_logic_1164.all;

-- Entity declaration

entity OR_Gate_2i_1o is

    port(A : in std_logic;      -- OR gate input
         B : in std_logic;      -- OR gate input
         Y : out std_logic);    -- OR gate output

end OR_Gate_2i_1o;

-- Dataflow Modelling Style
-- Architecture definition

architecture orLogic of OR_Gate_2i_1o is

 begin
    
    Y <= A OR B;

end orLogic;
