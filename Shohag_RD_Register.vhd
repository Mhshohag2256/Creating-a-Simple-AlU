library IEEE;
use IEEE.std_logic_1164.all;
use work.Shohag_alu_package.all;

entity Shohag_RD_Register is
	generic(N : integer := 32);
	port(
		clk : in std_logic;
		wren: in std_logic;
		rden : in std_logic;
		chen: in std_logic;
		data : in std_logic_vector(N-1 downto 0);
		q: out std_logic_vector(N-1 downto 0)
		);
end Shohag_RD_Register;

architecture arch of Shohag_RD_Register is
begin
	C1 : Shohag_Register_N_VHDL port map(clk, wren, rden, chen, data, q);
end arch;