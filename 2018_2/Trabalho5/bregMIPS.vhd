library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity bregMIPS is
	generic (WSIZE : natural := 32);
	port (
			clk, wren, rst			: in std_logic;
			radd1, radd2, wadd	: in std_logic_vector(4 downto 0);
			wdata						: in std_logic_vector(WSIZE-1 downto 0);
			r1, r2 					: out std_logic_vector(WSIZE-1 downto 0));
end bregMIPS;

architecture Behavior of bregMIPS is
	type reg is array(WSIZE-1 downto 0) of std_logic_vector(WSIZE-1 downto 0);
	signal reg_mem: reg := (
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

	
	begin
	r1 <= reg_mem(to_integer(unsigned(radd1)));
	r2 <= reg_mem(to_integer(unsigned(radd2)));
		
	breg_mips: process(clk)
		begin
			
		if(rising_edge(clk)) then
			if(rst = '1') then
				reg_mem <= (
					x"00000000", -- $ra
					x"00000000", -- $fp
					x"7fffeffc", -- $sp
					x"10008000", -- $gp
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
			end if;			
			if ((wren = '1') and (to_integer(unsigned(wadd)) /= 0)) then
				reg_mem(to_integer(unsigned(wadd))) <= wdata;
			end if;
		end if;	
		end process;
	
end Behavior;