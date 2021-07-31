library IEEE;
use IEEE.std_logic_1164.all;

entity Shohag_Register_N_VHDL is
	generic(N : integer := 32);
	port(
		clk : in std_logic;
		wren: in std_logic;
		rden : in std_logic;
		chen: in std_logic;
		data : in std_logic_vector(N-1 downto 0);
		q: out std_logic_vector(N-1 downto 0)
		);
end Shohag_Register_N_VHDL;

architecture arch of Shohag_Register_N_VHDL is
	signal storage : std_logic_vector(N-1 downto 0);

begin
	process (clk, wren)
	begin
		if(rising_edge(clk) and wren = '1')
			then storage <= data;
		end if;
	end process;
	
	process(rden, chen, storage)
	begin
		if(rden = '1' and chen = '1')
			then q <= storage;
		elsif(chen = '0')
			then q <= (others => 'Z');
		end if;
	end process;
end arch;