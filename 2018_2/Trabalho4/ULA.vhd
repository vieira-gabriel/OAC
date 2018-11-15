entity ulaMIPS is
		generics (WSIZE : natural :=32);
		port (
				opcode			: in tsd_logic(4 downto 0)
				A, B				: in std_logic_vector (WSIZE-1 downto 0);
				Z					: out std_logic_vector (WSIZE-1 downto 0)
				zero, ovfl		: out std_logic);
		end ulaMIPS;