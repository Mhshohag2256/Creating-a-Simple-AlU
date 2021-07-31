library IEEE;
use ieee.std_logic_1164.all;

entity Shohag_BITWISE_AND is
  port (A, B: in std_logic;
        C: out std_logic:='0');
 end Shohag_BITWISE_AND;
 
 architecture arch of Shohag_BITWISE_AND is
   begin
     C <= B when A = '1';
  end arch;