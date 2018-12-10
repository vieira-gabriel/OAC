LIBRARY IEEE;
USE IEEE.std_logic_1164.all;
USE IEEE.numeric_std.all;
use work.mips_pkg.all;

ENTITY mem_control IS

	PORT
	(
		
		store_type	:	IN std_logic_vector (2 DOWNTO 0);
		a1a0			: IN std_logic_vector (1 DOWNTO 0);		
		byteenable	: OUT std_logic_vector (3 DOWNTO 0)
	);
	
END ENTITY;
ARCHITECTURE control_mem OF mem_control IS	
	begin
		byteenable	<=	"1111" when (store_type = "001") else
							"1100" when (store_type = "010" and a1a0 = "10") else
							"0011" when (store_type = "010" and a1a0 = "00") else
							"1000" when (store_type = "100" and a1a0 = "11") else
							"0100" when (store_type = "100" and a1a0 = "10") else
							"0010" when (store_type = "100" and a1a0 = "01") else
							"0001" when (store_type = "100" and a1a0 = "00") else
							"0000";	
		
end control_mem;

		