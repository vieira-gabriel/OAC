
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_signed.all;
use work.mips_pkg.all;

  entity decoder_b is
	  generic (SIZE : natural := 8);
	  port (
	 	  d_in	: in std_logic_vector(SIZE-1 downto 0);
		  sel		: in std_logic_vector(1 downto 0));
		  d_out		: out std_logic_vector(31 downto 0));
  end entity;

  architecture rtl of decoder_b is
  signal tmp : std_logic_vector(31 downto 0);
    begin
      if sel = "00" then
        d_out <= d_in(7 downto 0) & X"000000";
      else if sel = "01" then
         d_out <= X"00" & d_in(7 downto 0)& X"0000";
      else if sel = "10" then
         d_out <=X"0000" & d_in(7 downto 0)& X"00"; 
      else 
         d_out <= X"000000" & d_in(7 downto 0);
      end if;	
    end architecture;
