
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_signed.all;
use work.mips_pkg.all;

  entity decoder_h is
	  generic (SIZE : natural := 16);
	  port (
	 	  d_in	: in std_logic_vector(SIZE-1 downto 0);
		  sel		: in std_logic;
		  d_out		: out std_logic_vector(31 downto 0));
  end entity;

  architecture rtl of decoder_h is
  signal tmp : std_logic_vector(31 downto 0);
    begin
		d_out <= d_in(15 downto 0) & X"0000" when (sel = '1') else
					X"0000" & d_in(15 downto 0);
    end architecture;
