library IEEE;
use ieee.std_logic_1164.all;

entity Shohag_BITWISE_OR is
  port (A, B: in std_logic;
        C: out std_logic:='1');
  end entity Shohag_BITWISE_OR;
      
  architecture arch of Shohag_BITWISE_OR is
    begin
      C <= B when A='0' else '1';
  end arch;