Library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

Entity Shohag_MDR IS
Port(
	Shohag_clock: in std_logic;
	Shohag_data: in std_logic_vector(31 downto 0);
	Shohag_write_addess: in std_logic_vector(3 downto 0);
	Shohag_we: in std_logic;
	Shohag_data_out: out std_logic_vector(31 downto 0)
);
end Shohag_MDR;

Architecture arch of Shohag_MDR is
	Type Shohag_Memory is array(0 to 16) of std_logic_vector(31 downto 0);
	signal Shohag_content: Shohag_Memory := (
	 x"00000001",  
	 x"00000002",
	 x"00000003",
	 x"00000004",
	 x"00000005",
	 x"00000006",
	 x"00000007",
	 x"00000008",
	 x"00000009",
	 x"0000000A",
	 others => x"00000000");	
begin
	process(Shohag_clock)
	 begin
		if (Shohag_clock'event and Shohag_clock = '1') then
			if(Shohag_we = '1') then
			Shohag_content(to_integer(unsigned(Shohag_write_addess))) <= Shohag_data;
		end if;
	end if;
	end process;
	Shohag_data_out <= Shohag_content(to_integer(unsigned(Shohag_write_addess)));
end arch;