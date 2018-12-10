
library ieee;
use ieee.std_logic_1164.all;
use work.mips_pkg.all;

entity extsgn is
	generic (
		IN_SIZE : natural := 16;
		OUT_SIZE : natural := 32;
		SEL_SIZE : natural := 1
		);
	port (
		input : in std_logic_vector(IN_SIZE-1 downto 0);
		ext_type: in std_logic_vector(SEL_SIZE downto 0); 
		output: out std_logic_vector(OUT_SIZE-1 downto 0)
		);
end entity;
		
architecture wires of extsgn is
signal tmp : std_logic_vector(OUT_SIZE-1 downto 0);
begin
	if ext_type = "00" or "0" then
		output <= tmp;
		tmp(IN_SIZE-1 downto 0) <= input;
		tmp(OUT_SIZE-1 downto IN_SIZE) <= (others => input(IN_SIZE-1));
	else 
		output <= tmp;
		tmp(IN_SIZE-1 downto 0) <= input;
		tmp(OUT_SIZE-1 downto IN_SIZE) <= (others => '0');
	end if;	
end wires;
