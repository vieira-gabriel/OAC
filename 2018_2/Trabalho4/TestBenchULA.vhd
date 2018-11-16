library ieee;
use ieee.numeric_std.all;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_signed.all;

entity TestBenchULA is
end TestBenchULA;

architecture TESTEBENCH of TestBenchULA is

signal opcode: std_logic_vector(3 downto 0);
signal a, b: std_logic_vector (31 downto 0);
signal z: std_logic_vector (31 downto 0);
signal zero, ovfl: std_logic;


	component ulaMIPS
		port (
			a, b: in std_logic_vector(31 downto 0):= "00000000000000000000000000000000";
			opcode: in std_logic_vector(3 downto 0):= "0000";
			zero, ovfl: out std_logic;
			z: out std_logic_vector(31 downto 0)
		);
	end component;
	begin
	process
	begin
		opcode <= "0000";
		a <= "00000000000000000000000000000001";
		b <= "00000000000000000000000000000001";
		wait for 20 ns;
		opcode <= "0001";
		a <= "00000000000000000000000000000000";
		b <= "00000001";
		wait for 20 ns;
		opcode <= "0010";
		a <= "00000000000000000000000000000001";
		b <= "00000000000000000000000000000001";
		wait for 20 ns;
		opcode <= "0001";
		a <= "00000000000000000000000000000001";
		b <= "00000000000000000000000000000001";
		wait for 20 ns;
	end process;
	
	
	ALU: ulaMIPS port map(
			a => a,
			b => b,
			opcode => opcode,
			z => z,
			zero => zero,
			ovfl => ovfl
	);
end TESTEBENCH;