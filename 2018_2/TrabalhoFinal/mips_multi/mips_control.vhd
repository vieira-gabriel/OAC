LIBRARY IEEE;
USE IEEE.std_logic_1164.all;
USE IEEE.numeric_std.all;
use work.mips_pkg.all;

ENTITY mips_control IS

	PORT
	(
		clk, rst	: IN std_logic;
		opcode	: IN std_logic_vector (5 DOWNTO 0);
		wr_ir		: OUT std_logic; 								--EscreveIR
		wr_pc		: OUT std_logic;								--EscrevePC
		wr_mem	: OUT std_logic;								--EscreveMEM
		wr_breg	: OUT std_logic;								--EscreveREG
		is_beq	: OUT std_logic; 								--EscrevePCCond
		is_bne	: OUT std_logic;								--IouD
		s_datareg: OUT std_logic;								--RegDst
		op_alu	: OUT std_logic_vector (1 DOWNTO 0);	--OpALU
		s_mem_add: OUT std_logic;								--LeMem
		s_PCin	: OUT std_logic_vector (1 DOWNTO 0);	--OrigPC
		s_aluAin : OUT std_logic;								--OrigAALU
		s_aluBin : OUT std_logic_vector (1 DOWNTO 0); 	--OrigBALU
		s_reg_add: OUT std_logic;								--MemparaReg
		unsig	: OUT std_logic;									--Unsigned (1 quando for LBU ou LHU)
		wich_load: OUT std_logic_vector (1 DOWNTO 0);	--QualLoad
		wich_store: OUT std_logic_vector (1 DOWNTO 0);	--QualStore
		store_type:	OUT std_logic_vector (2 DOWNTO 0);	--TipoEscrita
		ext_type: OUT std_logic_vector (1 DOWNTO 0);		--tipo de extensão de sinal
		lui_ctr: OUT std_logic
	);
	
END ENTITY;

ARCHITECTURE control_op OF mips_control IS

	type ctr_state is (	fetch_st,     -- 0000
								decode_st,    -- 0001
								c_mem_add_st, -- 0010
								readmem_st,
								lui_st,
								ldreg_st, 
								writemem_st, 
								rtype_ex_st, 
								writereg_st, 
								branch_ex_st, 
								jump_ex_st,
								arith_imm_st);  -- escreve resultado op arit. imediato

	signal pstate, nstate : ctr_state;

	BEGIN
	
reg: process(clk, rst)
	begin
		if (rst = '1') then 
			pstate <= fetch_st;
		elsif (rising_edge(clk)) then 
			pstate <= nstate;
		end if;
	end process;
		
logic: process (opcode, pstate)
	
	begin
		wr_ir			<= '0'; 		--EscreveIR
		wr_pc			<= '0'; 		--EscrevePC
		wr_mem		<= '0'; 		--EscreveMEM
		wr_breg		<= '0'; 		--EscreveREG
		is_beq 		<= '0'; 		--EscrevePCCond
		is_bne 		<= '0';		--IouD
		op_alu		<= "00"; 	--OpALU
		s_datareg 	<= '0';		--RegDst
		s_mem_add 	<= '0';		--LeMem
		s_PCin		<= "00"; 	--OrigPC
		s_aluAin 	<= '0';		--OrigAALU
		s_aluBin  	<= "00";	--OrigBALU
		s_reg_add 	<= '0';		--MemparaReg
		unsig			<= '0';
		wich_load	<= "11";
		wich_store	<= "10";
		store_type	<= "001";
		ext_type 	<= "00";
		lui_ctr		<= '0';
		
		case pstate is 
			when fetch_st 		=>	wr_pc <= '1';
										s_aluBin <= "01";
										wr_ir 	<= '1';
										ext_type <= "00";
								
			when decode_st 	=>	s_aluBin <= "11";
								
			when c_mem_add_st =>	s_aluAin <= '1';
										s_aluBin <= "10";
										if opcode = (iORI) then ext_type <= "01";
										end if;
										if opcode = (iANDI) then ext_type <= "10";
										end if;
							
										
			when readmem_st 	=>	s_mem_add <= '1';
										s_aluAin <= '1';
										if opcode = iLBU then unsig <= '1';
																	wich_load <= "00";
										else unsig <= '0';
										end if;
										if opcode = iLHU then unsig <= '1';
																	wich_load <= "01";
										else unsig <= '0';
										end if;
										if opcode = iLB then wich_load <= "00";
										elsif opcode = iLH then wich_load <= "01";
										end if;
			
			when lui_st			=>	lui_ctr <= '1';
										wr_breg <= '1';
			
								 
			when ldreg_st 		=>	s_datareg <= '1';
										wr_breg <= '1';
										if opcode = iLB then wich_load <= "00";
										elsif opcode = iLBU then 	unsig <= '1';
																			wich_load <= "00";
										elsif opcode = iLH then wich_load <= "01";
										elsif opcode = iLHU then 	unsig <= '1';
																			wich_load <= "01";
										end if;
								
			when writemem_st 	=> wr_mem 	 <= '1';
										s_mem_add <= '1';
										if opcode = iSB
										then wich_store <= "00";
												store_type <= "100";
										elsif opcode = iSH
										then wich_store <= "01";
												store_type <= "010";
										end if;
									
			when rtype_ex_st	=>	s_aluAin <= '1';
										op_alu <= "10";
									
			when writereg_st 	=>	s_reg_add <= '1';
										wr_breg <= '1';
																		  
			when branch_ex_st => s_aluAin <= '1';
										op_alu <= "01";
										s_PCin <= "01";
										if opcode = iBEQ 
										then is_beq <= '1';
										else is_bne <= '1';
										end if;
									
			when jump_ex_st 	=>	s_PCin  <= "10";
										wr_pc   <= '1';
															 
			when arith_imm_st => wr_breg <= '1';
		end case;
	end process;
	
new_state: process (opcode, pstate)
		begin
		
			nstate <= fetch_st;
			
			case pstate is
			when fetch_st => 	nstate <= decode_st;
			when decode_st =>	case opcode is
									when iRTYPE => nstate <= rtype_ex_st;
									when iLW | iLB | iLBU | iLH | iLHU | iSW | iSH | iSB | iADDI | iANDI | iORI => nstate <= c_mem_add_st;
									when iBEQ | iBNE => nstate <= branch_ex_st;
									when iJ => nstate <= jump_ex_st;
									when iLUI => nstate <= lui_st;
									when others => null;
									end case;
			when c_mem_add_st => case opcode is 
									when iLW | iLB | iLBU | iLH | iLHU => nstate <= readmem_st;
									when iSW | iSH | iSB => nstate <= writemem_st;
									when iADDI | iANDI | iORI  => nstate <= arith_imm_st;
									when others => null;
								 end case;
			when readmem_st 	=> nstate <= ldreg_st;
			when rtype_ex_st 	=> nstate <= writereg_st;
			when others 		=> nstate <= fetch_st;
			end case;
		end process;
		
end control_op;
				
	
