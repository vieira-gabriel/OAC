library ieee;
use ieee.numeric_std.all;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity ulaMIPS is
	generic (WSIZE 		: natural := 32);
		port (
				a, b				: in std_logic_vector (WSIZE-1 downto 0);
				opcode			: in std_logic_vector(3 downto 0);
				z					: out std_logic_vector (WSIZE-1 downto 0);
				zero, ovfl		: out std_logic
				);
end ulaMIPS;

architecture Behavioral of ulaMIPS is
	signal result: std_logic_vector(WSIZE-1 downto 0);
	signal overflow: std_logic;
	
	
	begin
	ula_mips: process(opcode,a,b) 
	variable n : integer;
	begin
	overflow <= '0';
		case opcode is
		when "0000" =>	   		-- and
			result <= a and b;
 
		when "0001" =>	   		-- or
			result <= a or b;			
 
		when "0010" => 				-- add
			result <= std_logic_vector(unsigned(a) + unsigned(b));
			overflow <= (a(WSIZE-1) and b(WSIZE-1) and not(result(WSIZE-1))) or (not(a(WSIZE-1)) and not(b(WSIZE-1)) and result(WSIZE-1));
 
		when "0011" => 				-- addu
			result <= std_logic_vector(unsigned(a)+ unsigned(b));
 
		when "0100" => 				-- sub
			result <= std_logic_vector(unsigned(a) - unsigned(b));
			overflow <= (a(WSIZE-1) and b(WSIZE-1) and not(result(WSIZE-1))) or (not(a(WSIZE-1)) and not(b(WSIZE-1)) and result(WSIZE-1));
 
		when "0101" => 				-- subu
			result <= std_logic_vector(unsigned(a) - unsigned(b));
 
		when "0110" =>				-- slt
			if (a<b) then
				result <= x"00000001";
			else 
				result <= x"00000000";
			end if; 					
 
		when "0111" => 				-- sltu
			if (unsigned(a)<unsigned(b)) then
				result <= x"00000001";
			else 
				result <= x"00000000";
			end if; 				
 
		when "1000" =>				-- nor
			result <= a nor b;
 
		when "1001" =>				-- xor
			result <= a xor b;
 
		when "1010" => 				-- sll
  			result <= std_logic_vector(shift_left(unsigned(b), to_integer(unsigned(a))));
 
		when "1011" => 				-- srl
				result <= std_logic_vector(shift_right(unsigned(b),to_integer(unsigned(A))));
 
		when "1100" => 				-- sra
				result <= std_logic_vector(shift_right(signed(b), to_integer(unsigned(A))));
 
		when "1101" => 				-- clz
			n := 0;
			for i in a'range loop
				if a(i) = '0' then
					n := n + 1;
				end if;	
			end loop;
			result <= std_logic_vector(to_unsigned(n, result'length));
 
		when "1110" => 				-- clo
			n := 0;
			for i in a'range loop
				if a(i) = '1' then
					n := n + 1;
				end if;	
			end loop;
			result <= std_logic_vector(to_unsigned(n, result'length));
  
		when others => result <= std_logic_vector(unsigned(a) + unsigned(b)); -- add
		
 end case;
end process;
  zero <= '1' when result=x"00000000" else '0';
  z <= result;
  ovfl <= overflow;
end Behavioral;

