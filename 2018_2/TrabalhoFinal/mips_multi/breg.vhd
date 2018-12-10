-- Quartus II VHDL Template
-- Basic Shift Register

library ieee;
use ieee.std_logic_1164.all;
--use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
use work.mips_pkg.all;

entity breg is
	generic (
		SIZE : natural := 32;
		ADDR : natural := 5
	);
	port 
	(
		clk		: in  std_logic;
		enable	: in  std_logic;
		idxA		: in  std_logic_vector(ADDR-1 downto 0);
		idxB		: in  std_logic_vector(ADDR-1 downto 0);
		idxwr		: in  std_logic_vector(ADDR-1 downto 0);
		data_in	: in  std_logic_vector(SIZE-1 downto 0);
		regA 		: out std_logic_vector(SIZE-1 downto 0);
		regB 		: out std_logic_vector(SIZE-1 downto 0)
	);
end entity;

architecture rtl of breg is

signal breg32: word_array(31 downto 0) := (
	x"00000000", -- $ra
	x"00000000", -- $fp
	x"7fffeffc", -- $sp			Valor inicial no registrador de acordo com o MARS
	x"10008000", -- $gp			Valor inicial no registrador de acordo com o MARS
	x"00000000", -- $k1
	x"00000000", -- $k0
	x"00000000", -- $t9
	x"00000000", -- $t8
	x"00000000", -- $s7
	x"00000000", -- $s6
	x"00000000", -- $s5
	x"00000000", -- $s4
	x"00000000", -- $s3
	x"00000000", -- $s2
	x"00000000", -- $s1
	x"00000000", -- $s0
	x"00000000", -- $t7
	x"00000000", -- $t6
	x"00000000", -- $t5
	x"00000000", -- $t4
	x"00000000", -- $t3
	x"00000000", -- $t2
	x"00000000", -- $t1
	x"00000000", -- $t0
	x"00000000", -- $a3
	x"00000000", -- $a2
	x"00000000", -- $a1
	x"00000000", -- $a0
	x"00000000", -- $v1
	x"00000000", -- $v0
	x"00000000", -- $at
	x"00000000"  -- $zero
);

constant ZERO : std_logic_vector(SIZE-1 downto 0) := (others => '0');


begin
	regA <= ZERO32 when (idxA="00000") else breg32(conv_integer(idxA));
	regB <= ZERO32 when (idxB="00000") else breg32(conv_integer(idxB));
	process (clk)
	begin
		if (rising_edge(clk)) then
			if (enable = '1') then
				breg32(conv_integer(idxwr)) <= data_in;
			end if;
		end if;
	end process;
end rtl;
