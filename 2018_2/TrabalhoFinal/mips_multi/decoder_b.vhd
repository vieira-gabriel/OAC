
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_signed.all;
use work.mips_pkg.all;

  entity decoder_b is
	  generic (SIZE : natural := 8);
	  port (
	 	  d_in	: in std_logic_vector(SIZE-1 downto 0);
		  sel		: in std_logic_vector(1 downto 0);
		  d_out		: out std_logic_vector(31 downto 0));
  end entity;

  architecture rtl of decoder_b is
  signal tmp : std_logic_vector(31 downto 0);
    begin
      d_out <= d_in(7 downto 0) & X"000000" when (sel = "00") else
					X"00" & d_in(7 downto 0)& X"0000" when (sel = "01") else
					X"0000" & d_in(7 downto 0)& X"00" when (sel = "10") else
					X"000000" & d_in(7 downto 0);
    end architecture;
