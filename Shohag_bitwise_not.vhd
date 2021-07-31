library IEEE;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;

entity Shohag_BITWISE_NOT is 
  port (A : in std_logic_vector(3 downto 0);
        res: out std_logic_vector(3 downto 0));
      end entity Shohag_BITWISE_NOT;
      
  architecture arch of Shohag_BITWISE_NOT is
    signal res_buff : std_logic_vector(3 downto 0);
    begin
    process(A)
      begin
        for i in 0 to 3 loop
          if A(i) = '1' then
            res_buff(i) <= '0';
          else
            res_buff(i) <= '1';
          end if;
        end loop;
      end process;
        
        res <= res_buff;
        
      end arch;