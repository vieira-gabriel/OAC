library ieee;
use ieee.std_logic_1164.all;

entity hex7seg is
	port 
	(
		clk				: in std_logic;
		data_in 			: in  std_logic_vector(31 downto 0);
		data0				: out	std_logic_vector(6 downto 0);
		data1				: out	std_logic_vector(6 downto 0);
		data2				: out	std_logic_vector(6 downto 0);
		data3				: out	std_logic_vector(6 downto 0);
		data4				: out	std_logic_vector(6 downto 0);
		data5				: out	std_logic_vector(6 downto 0);
		data6				: out	std_logic_vector(6 downto 0);
		data7				: out	std_logic_vector(6 downto 0)
	);

end entity;

architecture rtl of hex7seg is

begin

	process (data_in)
	begin
		case data_in(31 downto 28) is
			when "0000" => data7 <= "1000000";
			when "0001" => data7 <= "1111001"; 
			when "0010" => data7 <= "0100100";
			when "0011" => data7 <= "0110000";
			when "0100" => data7	<= "0011001";
			when "0101" => data7 <= "0010010";
			when "0110" => data7 <= "0000010";
			when "0111" => data7 <= "1111000";
			when "1000" => data7 <= "0000000";
			when "1001" => data7 <= "0010000";
			when "1010" => data7 <= "0001000";
			when "1011" => data7 <= "0000011";
			when "1100" => data7 <= "1000110";
			when "1101" => data7 <= "0100001";
			when "1110" => data7 <= "0000110";
			when "1111" => data7 <= "0001110";
			when others => data7 <= "1000000";
			end case;
			
			case data_in(27 downto 24) is
			when "0000" => data6 <= "1000000";
			when "0001" => data6 <= "1111001"; 
			when "0010" => data6 <= "0100100";
			when "0011" => data6 <= "0110000";
			when "0100" => data6	<= "0011001";
			when "0101" => data6 <= "0010010";
			when "0110" => data6 <= "0000010";
			when "0111" => data6 <= "1111000";
			when "1000" => data6 <= "0000000";
			when "1001" => data6 <= "0010000";
			when "1010" => data6 <= "0001000";
			when "1011" => data6 <= "0000011";
			when "1100" => data6 <= "1000110";
			when "1101" => data6 <= "0100001";
			when "1110" => data6 <= "0000110";
			when "1111" => data6 <= "0001110";
			when others => data6 <= "1000000";
			end case;
			
			case data_in(23 downto 20) is
			when "0000" => data5 <= "1000000";
			when "0001" => data5 <= "1111001"; 
			when "0010" => data5 <= "0100100";
			when "0011" => data5 <= "0110000";
			when "0100" => data5	<= "0011001";
			when "0101" => data5 <= "0010010";
			when "0110" => data5 <= "0000010";
			when "0111" => data5 <= "1111000";
			when "1000" => data5 <= "0000000";
			when "1001" => data5 <= "0010000";
			when "1010" => data5 <= "0001000";
			when "1011" => data5 <= "0000011";
			when "1100" => data5 <= "1000110";
			when "1101" => data5 <= "0100001";
			when "1110" => data5 <= "0000110";
			when "1111" => data5 <= "0001110";
			when others => data5 <= "1000000";
			end case;
			
			case data_in(19 downto 16) is
			when "0000" => data4 <= "1000000";
			when "0001" => data4 <= "1111001"; 
			when "0010" => data4 <= "0100100";
			when "0011" => data4 <= "0110000";
			when "0100" => data4	<= "0011001";
			when "0101" => data4 <= "0010010";
			when "0110" => data4 <= "0000010";
			when "0111" => data4 <= "1111000";
			when "1000" => data4 <= "0000000";
			when "1001" => data4 <= "0010000";
			when "1010" => data4 <= "0001000";
			when "1011" => data4 <= "0000011";
			when "1100" => data4 <= "1000110";
			when "1101" => data4 <= "0100001";
			when "1110" => data4 <= "0000110";
			when "1111" => data4 <= "0001110";
			when others => data4 <= "1000000";
			end case;
			
			case data_in(15 downto 12) is
			when "0000" => data3 <= "1000000";
			when "0001" => data3 <= "1111001"; 
			when "0010" => data3 <= "0100100";
			when "0011" => data3 <= "0110000";
			when "0100" => data3	<= "0011001";
			when "0101" => data3 <= "0010010";
			when "0110" => data3 <= "0000010";
			when "0111" => data3 <= "1111000";
			when "1000" => data3 <= "0000000";
			when "1001" => data3 <= "0010000";
			when "1010" => data3 <= "0001000";
			when "1011" => data3 <= "0000011";
			when "1100" => data3 <= "1000110";
			when "1101" => data3 <= "0100001";
			when "1110" => data3 <= "0000110";
			when "1111" => data3 <= "0001110";
			when others => data3 <= "1000000";
			end case;
			
			case data_in(11 downto 8) is
			when "0000" => data2 <= "1000000";
			when "0001" => data2 <= "1111001"; 
			when "0010" => data2 <= "0100100";
			when "0011" => data2 <= "0110000";
			when "0100" => data2	<= "0011001";
			when "0101" => data2 <= "0010010";
			when "0110" => data2 <= "0000010";
			when "0111" => data2 <= "1111000";
			when "1000" => data2 <= "0000000";
			when "1001" => data2 <= "0010000";
			when "1010" => data2 <= "0001000";
			when "1011" => data2	<= "0000011";
			when "1100" => data2 <= "1000110";
			when "1101" => data2 <= "0100001";
			when "1110" => data2 <= "0000110";
			when "1111" => data2 <= "0001110";
			when others => data2 <= "1000000";
			end case;
			
			case data_in(7 downto 4) is
			when "0000" => data1 <= "1000000";
			when "0001" => data1 <= "1111001"; 
			when "0010" => data1 <= "0100100";
			when "0011" => data1 <= "0110000";
			when "0100" => data1	<= "0011001";
			when "0101" => data1 <= "0010010";
			when "0110" => data1 <= "0000010";
			when "0111" => data1 <= "1111000";
			when "1000" => data1 <= "0000000";
			when "1001" => data1 <= "0010000";
			when "1010" => data1 <= "0001000";
			when "1011" => data1	<= "0000011";
			when "1100" => data1 <= "1000110";
			when "1101" => data1 <= "0100001";
			when "1110" => data1 <= "0000110";
			when "1111" => data1 <= "0001110";
			when others => data1 <= "1000000";
			end case;
			
			case data_in(3 downto 0) is
			when "0000" => data0 <= "1000000";
			when "0001" => data0 <= "1111001"; 
			when "0010" => data0 <= "0100100";
			when "0011" => data0 <= "0110000";
			when "0100" => data0	<= "0011001";
			when "0101" => data0 <= "0010010";
			when "0110" => data0 <= "0000010";
			when "0111" => data0 <= "1111000";
			when "1000" => data0 <= "0000000";
			when "1001" => data0 <= "0010000";
			when "1010" => data0 <= "0001000";
			when "1011" => data0	<= "0000011";
			when "1100" => data0 <= "1000110";
			when "1101" => data0 <= "0100001";
			when "1110" => data0 <= "0000110";
			when "1111" => data0 <= "0001110";
			when others => data0 <= "1000000";
			end case;
	end process;

end rtl;
