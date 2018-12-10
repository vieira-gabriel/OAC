-- Quartus II VHDL Template
-- Basic Shift Register

library ieee;
use ieee.std_logic_1164.all;
use work.mips_pkg.all;

entity mips_multi is
	port 
	(
		clk		: in std_logic;
		clk_rom	: in std_logic;
		rst	   : in std_logic;
		debug		: in std_logic_vector(1 downto 0);
		data  	: out std_logic_vector(WORD_SIZE-1 downto 0)
	);
end entity;

architecture rtl of mips_multi is

--=======================================================================
-- Convencoes:
--        _v - sufixo para std_logic_vector
--	       _s - sufixo para std_logic
--
--=======================================================================


signal 	pcin_v 		: std_logic_vector(WORD_SIZE-1 downto 0) := (others => '0');		-- entrada PC
signal 
			pcout_v,  		-- saida PC
			pccond_v,		-- PC somado ao offset
			pcbranch_v,		-- Saida primeiro mux PC
			pcjump_v,  		-- Endereco de Jump
			regdata_v,		-- entrada de dados BREG
			memout_v,		-- saida da memoria
			rdmout_v,		-- saida do registrador de dados da memoria
			rULA_out_v,		-- registrador na saida da ula
			memadd_v,		-- endereco da memoria
			datadd_v,		-- endereco de dado na memoria
			regAin_v,		-- saida A do BREG
			regBin_v,		-- saida B do BREG
			regA_v,			-- saida A do BREG
			regB_v,			-- saida B do BREG
			aluA_v,			-- entrada A da ULA
			aluB_v,			-- entrada B da ULA
			alu_out_v,		-- saida ULA
			instruction_v,	-- saida do reg de instrucoes
			imm32_x4_v,	   -- imediato extendido e multiplicado por 4
			imm32_v,		-- imediato extendido a 32 bits
			sb_out_v,
			sh_out_v,
			load_out_v,
			store_out_v,
			byte_out_v,
			half_out_v
			: std_logic_vector(WORD_SIZE-1 downto 0);
			
signal addsht2_v 			: std_logic_vector(WORD_SIZE-1 downto 0);
signal rset_s, clock_s 	: std_logic;
signal iwreg_v 			: std_logic_vector(4 downto 0);  -- indice registador escrito
signal alu_sel_v			: std_logic_vector(3 downto 0);  -- indice registador escrito
signal sel_aluB_v 		: std_logic_vector(1 downto 0);	-- seleciona entrada B da ula
signal alu_op_v			: std_logic_vector(1 downto 0);	-- codigo op ula
signal org_pc_v			: std_logic_vector(1 downto 0);	-- selecao entrada do PC
signal wich_load_v		: std_logic_vector(1 downto 0);
signal wich_store_v		: std_logic_vector(1 downto 0);
signal store_tipe_v		: std_logic_vector(2 downto 0);
signal ext_type_v			: std_logic_vector (1 DOWNTO 0);
signal mb_out_v			: std_logic_vector (7 DOWNTO 0);
signal mh_out_v			: std_logic_vector (15 DOWNTO 0);
signal unsig_v			: std_logic_vector (1 DOWNTO 0);
signal type_ext_v			: std_logic_vector(1 DOWNTO 0);

signal 	
			branch_s,		-- beq ou bne
			is_beq_s,    	-- beq
			is_bne_s,		-- bne
			ir_wr_s,			-- escreve instrucao no ir
			jump_s,			-- instrucao jump
			mem_read_s,		-- leitura memoria
			mem_reg_s,		-- controle dado breg
			mem_wr_s,		-- escrita na memoria
			--ovfl_s,			-- overflow da ULA
			pc_wr_s,			-- escreve pc
			reg_dst_s,		-- controle endereco reg
			reg_wr_s,		-- escreve breg
			sel_end_mem_s,	-- seleciona endereco memoria
			sel_aluA_s,		-- seleciona entrada A da ula
			zero_s,			-- sinal zero da ula
			unsig_s
			
			
			
			: std_logic;
			

alias    func_field_v 	: std_logic_vector(5 downto 0)  is instruction_v(5 downto 0);
alias    rs_field_v	 	: std_logic_vector(4 downto 0)  is instruction_v(25 downto 21);
alias    rt_field_v	 	: std_logic_vector(4 downto 0)  is instruction_v(20 downto 16);
alias    rd_field_v	 	: std_logic_vector(4 downto 0)  is instruction_v(15 downto 11);
alias    imm16_field_v	: std_logic_vector(15 downto 0) is instruction_v(15 downto 0);
alias 	imm26_field_v  : std_logic_vector(25 downto 0) is instruction_v(25 downto 0);
alias 	sht_field_v		: std_logic_vector(4 downto 0)  is instruction_v(10 downto 6);
alias    op_field_v		: std_logic_vector(5 downto 0)  is instruction_v(31 downto 26);
alias    a1a0_field_v		: std_logic_vector(1 downto 0)  is instruction_v(1 downto 0);
alias    a1_field_v		: std_logic is instruction_v(1);

alias	sb_field_v		: std_logic_vector(7 downto 0) is regB_v(7 downto 0);
alias	sh_field_v		: std_logic_vector(15 downto 0) is regB_v(15 downto 0);

alias	lb_one_v		: std_logic_vector(7 downto 0) is rdmout_v(7 downto 0);
alias	lb_two_v		: std_logic_vector(7 downto 0) is rdmout_v(15 downto 8);
alias	lb_three_v		: std_logic_vector(7 downto 0) is rdmout_v(23 downto 16);
alias	lb_four_v		: std_logic_vector(7 downto 0) is rdmout_v(31 downto 24);
alias	lh_down_v		: std_logic_vector(15 downto 0) is rdmout_v(15 downto 0);
alias	lh_up_v			: std_logic_vector(15 downto 0) is rdmout_v(31 downto 16);

begin

data 			<=  pcout_v when debug = "00" else
					 alu_out_v when debug = "01" else
					 instruction_v when debug = "10" else
					 memout_v;

pcjump_v 	<= pcout_v(31 downto 28) & imm26_field_v & "00";

pc_wr_s 		<= jump_s or (zero_s and is_beq_s) or ((not zero_s) and is_bne_s);

imm32_x4_v 	<= imm32_v(29 downto 0) & "00";

datadd_v		<= X"000000" & '1' & alu_out_v(8 downto 2);

unsig_v <= unsig_s & '0';

--=======================================================================
-- PC - Contador de programa
--=======================================================================
pc:	reg 
		generic map (SIZE => 32)
		port map (sr_in => pcin_v,
			  sr_out => pcout_v, 
			  rst => rst, 
			  clk => clk, 
			  enable => pc_wr_s
			 );

--=======================================================================
-- mux para enderecamento da memoria
--=======================================================================		
mux_mem: mux_2
		port map (
			in0 	=> pcout_v,
			in1 	=> datadd_v,
			sel 	=> sel_end_mem_s,
			m_out => memadd_v
			);

--=======================================================================
-- decoder para selecao do byte em SB
--=======================================================================
decoder_sb: decoder_b
	port map (
			d_in 	=> sb_field_v,
			sel 	=> a1a0_field_v,
			d_out => sb_out_v
			);
	
--=======================================================================
-- decoder para selecao dos dois bytes em SH
--=======================================================================
decoder_sh: decoder_h
	port map (
			d_in 	=> sh_field_v,
			sel 	=> a1_field_v,
			d_out => sh_out_v
			);
	
	
--=======================================================================
-- mux para encadeamento de qual store
--=======================================================================
mux_store:mux_3
		port map (
			in0 	=> sb_out_v,
			in1 	=> sh_out_v,
			in2 	=> regB_v,
			sel 	=> wich_store_v,
			m_out => store_out_v
			);
	
	
--=======================================================================
-- Memoria do MIPS
--=======================================================================		
mem:  mips_mem
	port map (
		address => memadd_v(9 downto 2), 
		data => store_out_v ,
		wren => mem_wr_s, 
		clk => clk_rom, 
		Q => memout_v 
	);
	
--=======================================================================
-- RI - registrador de instruções
--=======================================================================	
ir:	reg
		generic map (SIZE => 32)
		port map (
			sr_in => memout_v, 
			sr_out => instruction_v, 
			rst => '0', 
			clk => clk, 
			enable => ir_wr_s 
		);

--=======================================================================
-- RDM - registrador de dados da memoria
--=======================================================================
rdm:	regbuf 
		generic map (SIZE => 32)
		port map (
			sr_in => memout_v, 
			clk => clk, 
			sr_out => rdmout_v
		);
	
--=======================================================================
-- mux para selecao do byte de LB/LBU
--=======================================================================
	mux_byte: mux_4 
		generic map (W_SIZE => 8)
		port map (
			  in0 => lb_one_v,
			  in1 => lb_two_v,
			  in2 => lb_three_v,
			  in3 => lb_four_v,
			  sel => a1a0_field_v,
			  m_out => mb_out_v
			 );
	
--=======================================================================
-- mux para selecao de um dos bytes de LH/LHU
--=======================================================================
	mux_half: mux_2 
		generic map (SIZE => 16)
		port map (
			in0 => lh_up_v,
			in1 => lh_down_v,
			sel => a1_field_v,
			m_out =>mh_out_v 
		);
	
	
--=======================================================================
-- Resize do LB/LBU
--=======================================================================
res_byte: extsgn
	generic map (
		IN_SIZE => 8)
	port map (
			input =>mb_out_v ,
			ext_type => unsig_v, 
			output =>byte_out_v
		);
--=======================================================================
--  Resize do  LH/LHU
--=======================================================================
res_half: extsgn
	port map (
			input => mh_out_v,
			ext_type =>unsig_v , 
			output => half_out_v
		);
	
--=======================================================================
--  mux para selecao de load
--=======================================================================
	mux_load: mux_3
		port map (
			in0 	=>byte_out_v ,
			in1 	=> half_out_v,
			in2   => rdmout_v,
			sel 	=> wich_load_v,
			m_out =>load_out_v 
			);
	

--=======================================================================
-- Mux para enderecamento do registrador a ser escrito
--=======================================================================
mux_reg_add: mux_2 
		generic map (SIZE => 5)
		port map (in0 => rt_field_v,
					 in1 => rd_field_v,
					 sel => reg_dst_s,
					 m_out => iwreg_v);
					 
--=======================================================================
-- Mux de selecao de dado para escrita no banco de registradores
--=======================================================================					 
breg_data_mux: mux_2 
		generic map (SIZE => 32)
		port map (in0 => rULA_out_v,
					 in1 => load_out_v,
					 sel => mem_reg_s,
					 m_out => regdata_v);
		
--=======================================================================
-- Banco de registradores
--=======================================================================		
bcoreg: breg 
		port map (
			clk	=> clk,
			enable	=> reg_wr_s,
			idxA		=> rs_field_v,
			idxB		=> rt_field_v,
			idxwr		=> iwreg_v,
			data_in	=> regdata_v,
			regA 		=> regAin_v,
			regB 		=> regBin_v
			);
			
--=======================================================================
-- Registrador A
--=======================================================================			
rgA:	regbuf 
		generic map (SIZE => 32)
		port map (sr_in => regAin_v, clk => clk, sr_out => regA_v);

--=======================================================================
-- Registrador B
--=======================================================================
rgB:	regbuf 
		generic map (SIZE => 32)
		port map (sr_in => regBin_v, clk => clk, sr_out => regB_v);
		
--=======================================================================
-- Modulo de extensao de sinal: 16 para 32 bits
--=======================================================================
sgnx:	extsgn
		port map (
			input => imm16_field_v,
			ext_type => ext_type_v, 
			output => imm32_v
		);

--=======================================================================
-- Mux para selecao da entrada de cima da ula
--=======================================================================		
mux_ulaA: mux_2
		port map (
			in0 	=> pcout_v, 
			in1 	=> regA_v,
			sel 	=> sel_aluA_s,
			m_out => aluA_v
		);
		
--=======================================================================
-- Mux para selecao da entrada de baixo da ULA
--=======================================================================				
mux_ulaB: mux_4
		port map (
			in0 	=> regB_v, 
			in1 	=> INC_PC,
			in2	=> imm32_v,
			in3	=> imm32_x4_v,
			sel 	=> sel_aluB_v,
			m_out => aluB_v
		);	

--=======================================================================
-- Modulo de controle da ULA
--=======================================================================		
actr: alu_ctr
			port map (
				op_alu 	=> alu_op_v,
				funct	 	=> func_field_v,
				ext_type => ext_type_v,
				alu_ctr	=> alu_sel_v
				
			);

--=======================================================================
-- ULA
--=======================================================================		
alu:	ulamips 
		port map (
			aluctl => alu_sel_v,
			A 		 => aluA_v,
			B		 => aluB_v,
			aluout => alu_out_v,
			zero	 => zero_s
			--ovfl 	 => ovfl_s
		);
		
--=======================================================================
-- Registrador que armazena a saida da ULA
--=======================================================================			
regULA:	regbuf 
		generic map (SIZE => 32)
		port map (sr_in => alu_out_v, clk => clk, sr_out => rULA_out_v);		
		
--=======================================================================
-- Mux para selecao da entrada do PC
--=======================================================================		
mux_pc: mux_3
		port map (
			in0 	=> alu_out_v,
			in1 	=> rULA_out_v,
			in2   => pcjump_v,
			sel 	=> org_pc_v,
			m_out => pcin_v
			);
			
--=======================================================================
-- Unidade de Controle do MIPS
--=======================================================================		
ctr_mips: mips_control
		port map (	
			clk 		=> clk,
			rst 		=> rst,
			opcode 	=> op_field_v,	
			wr_ir		=> ir_wr_s,
			wr_pc		=> jump_s,
			wr_mem	=> mem_wr_s,
			is_beq	=> is_beq_s,
			is_bne	=> is_bne_s,
			s_datareg => mem_reg_s,
			op_alu	=> alu_op_v,
			s_mem_add => sel_end_mem_s,
			s_PCin	=> org_pc_v,
			s_aluAin => sel_aluA_s,
			s_aluBin => sel_aluB_v,
			wr_breg	=> reg_wr_s,
			s_reg_add => reg_dst_s,
			unsig => unsig_s,
			wich_load => wich_load_v,
			wich_store => wich_store_v,
			store_type => store_tipe_v,
			ext_type => type_ext_v
		);
		
--=======================================================================
-- BYTEENAB - Registrador com informações sobre o store
--=======================================================================
--b_enab:	reg 
--		generic map (SIZE => 5)
--		port map (sr_in => store_tipe_v && a1a0_field_v,
--			  sr_out => , 
--			  rst => rst, 
--			  clk => clk, 
--			  enable => 
--			 );
			 
end architecture;
