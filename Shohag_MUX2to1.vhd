library ieee;
use ieee.std_logic_1164.all;
entity Shohag_MUX2to1 is
	Generic(N : INTEGER := 32);
	port( Shohag_v, Shohag_W: in std_logic_vector(N-1 downto 0);
	Shohag_selm : in std_logic;
	Shohag_F: out std_logic_vector(N-1 downto 0));
end Shohag_MUX2to1;

architecture behavior of Shohag_MUX2to1 is
begin
	process(Shohag_V, Shohag_W, Shohag_selm)
	begin
		if Shohag_selm = '0' then
			Shohag_F <= Shohag_V;
		elsif Shohag_selm = '1' then
			Shohag_F <= Shohag_W;
		else 
			Shohag_F <= (others => 'X');
		end if;
	end process;
end behavior;