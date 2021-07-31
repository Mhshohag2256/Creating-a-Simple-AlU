library ieee;
use ieee.std_logic_1164.all;

package Shohag_alu_package is
	
	component Shohag_LPM_Adder_Subtractor_unsigned is
	PORT
	(
		add_sub		: IN STD_LOGIC;
		cin		: IN STD_LOGIC;
		dataa		: IN STD_LOGIC_VECTOR (31 DOWNTO 0);
		datab		: IN STD_LOGIC_VECTOR (31 DOWNTO 0);
		cout		: OUT STD_LOGIC ;
		overflow		: OUT STD_LOGIC ;
		result		: OUT STD_LOGIC_VECTOR (31 DOWNTO 0);
		zero : OUT std_logic;
		negative : OUT std_logic
	);
	end component;
	
	component Shohag_LPM_Adder_Subtractor_Signed is
	PORT
	(
		add_sub		: IN STD_LOGIC;
		cin		: IN STD_LOGIC;
		dataa		: IN STD_LOGIC_VECTOR (31 DOWNTO 0);
		datab		: IN STD_LOGIC_VECTOR (31 DOWNTO 0);
		cout		: OUT STD_LOGIC ;
		overflow		: OUT STD_LOGIC ;
		result		: OUT STD_LOGIC_VECTOR (31 DOWNTO 0);
		zero : OUT std_logic;
		negative : OUT std_logic
	);
	end component;
	
	component Shohag_bitwise_and is
	port(Shohag_input_a, Shohag_input_b : in std_logic_vector(31 downto 0);
		Shohag_output: out std_logic_vector(31 downto 0)
		);
	end component;
		
	component Shohag_bitwise_or is
	port(Shohag_input_a, Shohag_input_b : in std_logic_vector(31 downto 0);
		Shohag_output: out std_logic_vector(31 downto 0)
		);
	end component;
	
	component Shohag_bitwise_nor is
	port(Shohag_input_a, Shohag_input_b : in std_logic_vector(31 downto 0);
		Shohag_output: out std_logic_vector(31 downto 0)
		);
	end component;
	
	component Shohag_Register_N_VHDL is
	generic(N : integer := 32);
	port(
		clk : in std_logic;
		wren: in std_logic;
		rden : in std_logic;
		chen: in std_logic;
		data : in std_logic_vector(N-1 downto 0);
		q: out std_logic_vector(N-1 downto 0)
		);
	end component;
	
	component Shohag_RS_Register is
	generic(N : integer := 32);
	port(
		clk : in std_logic;
		wren: in std_logic;
		rden : in std_logic;
		chen: in std_logic;
		data : in std_logic_vector(N-1 downto 0);
		q: out std_logic_vector(N-1 downto 0)
		);
	end component;
	
	component Shohag_MAR_Register is
	generic(N : integer := 32);
	port(
		clk : in std_logic;
		wren: in std_logic;
		rden : in std_logic;
		chen: in std_logic;
		data : in std_logic_vector(N-1 downto 0);
		q: out std_logic_vector(N-1 downto 0)
		);
	end component;
	
	component Shohag_RT_Register is
	generic(N : integer := 32);
	port(
		clk : in std_logic;
		wren: in std_logic;
		rden : in std_logic;
		chen: in std_logic;
		data : in std_logic_vector(N-1 downto 0);
		q: out std_logic_vector(N-1 downto 0)
		);
	end component;
	
	component Shohag_RD_Register is
	generic(N : integer := 32);
	port(
		clk : in std_logic;
		wren: in std_logic;
		rden : in std_logic;
		chen: in std_logic;
		data : in std_logic_vector(N-1 downto 0);
		q: out std_logic_vector(N-1 downto 0)
		);
	end component;
	
	component Shohag_IMM_Register is
	generic(N : integer := 16);
	port(
		clk : in std_logic;
		wren: in std_logic;
		rden : in std_logic;
		chen: in std_logic;
		data : in std_logic_vector(N-1 downto 0);
		q: out std_logic_vector(N-1 downto 0)
		);
	end component;
	
	component Shohag_sra_operator is
	port(Shohag_input_a : in std_logic_vector(31 downto 0);
		Shohag_shift_amount : in std_logic_vector(15 downto 0);
		Shohag_output: out std_logic_vector(31 downto 0)
		);
	end component;
	
		component Shohag_sll_operator is
	port(Shohag_input_a : in std_logic_vector(31 downto 0);
		Shohag_shift_amount : in std_logic_vector(15 downto 0);
		Shohag_output: out std_logic_vector(31 downto 0)
		);
	end component;
	
	component Shohag_srl_operator is
	port(Shohag_input_a : in std_logic_vector(31 downto 0);
		Shohag_shift_amount : in std_logic_vector(15 downto 0);
		Shohag_output: out std_logic_vector(31 downto 0)
		);
	end component;



	component Shohag_operation_decoder is
	Port(
		Shohag_operation_code : in std_logic_vector(3 downto 0);
		Shohag_rs_data: in std_logic_vector(31 downto 0);
		Shohag_rt_data: in std_logic_vector(31 downto 0);
		Shohag_clock: in std_logic;
		Shohag_s_or_z: in std_logic;
		Shohag_IMM_data: in std_logic_vector(15 downto 0);
		Shohag_rd_data: out std_logic_vector(31 downto 0);
		Shohag_zero_flag : out std_logic := 'Z';
		Shohag_negative_flag: out std_logic := 'Z';
		Shohag_overflow_flag: out std_logic := 'Z' 
	
	);
	end component;

		
	
end Shohag_alu_package;
 

