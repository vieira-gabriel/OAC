-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- ***************************************************************************
-- This file contains a Vhdl test bench template that is freely editable to   
-- suit user's needs .Comments are provided in each section to help the user  
-- fill out necessary details.                                                
-- ***************************************************************************
-- Generated on "11/15/2018 22:13:40"
                                                            
-- Vhdl Test Bench template for design  :  ulaMIPS
-- 
-- Simulation tool : ModelSim-Altera (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY ulaMIPS_vhd_tst IS
END ulaMIPS_vhd_tst;
ARCHITECTURE ulaMIPS_arch OF ulaMIPS_vhd_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL a : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL b : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL opcode : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL ovfl : STD_LOGIC;
SIGNAL z : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL zero : STD_LOGIC;
COMPONENT ulaMIPS
	PORT (
	a : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
	b : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
	opcode : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	ovfl : OUT STD_LOGIC;
	z : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
	zero : OUT STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : ulaMIPS
	PORT MAP (
-- list connections between master ports and signals
	a => a,
	b => b,
	opcode => opcode,
	ovfl => ovfl,
	z => z,
	zero => zero
	);
init : PROCESS                                               
-- variable declarations                                     
BEGIN                                                        
        -- code that executes only once
		-- Teste AND
		opcode <= "0000";
		
		a <= x"FF00FF00";
		b <= x"F00FF00F";
		wait for 5 ns;
		
		-- Teste OR
		opcode <= "0001";
		
		a <= x"FF00FF00";
		b <= x"F00FF00F";
		wait for 5 ns;
		
		-- Teste ADD
		opcode <= "0010";
		
		a <= x"0000000A";
		b <= x"00000001";
		wait for 5 ns;	
		
		a <= x"F0000000";
		b <= x"0FFFFFFF";
		wait for 5 ns;
		
		a <= x"5FFFFFFF";
		b <= x"5FFFFFFF";
		wait for 5 ns;		-- overflow
		
		a <= x"80000000";
		b <= x"80000000";
		wait for 5 ns;		-- overflow
		
		a <= x"00000000";
		b <= x"00000000";
		wait for 5 ns;		-- zero
		
		-- Teste ADDU
		opcode <= "0011";
		
		a <= x"0000000A";
		b <= x"00000001";
		wait for 5 ns;	
		
		a <= x"F0000000";
		b <= x"0FFFFFFF";
		wait for 5 ns;
		
		a <= x"5FFFFFFF";
		b <= x"5FFFFFFF";
		wait for 5 ns;		-- overflow
		
		a <= x"80000000";
		b <= x"80000000";
		wait for 5 ns;		-- overflow
		
		a <= x"00000000";
		b <= x"00000000";
		wait for 5 ns;		-- zero
		
		-- Teste SUB
		opcode <= "0100";
		
		a <= x"00000000";
		b <= x"A0000000";
		wait for 5 ns;
		
		a <= x"A0000000";
		b <= x"60000000";
		wait for 5 ns;
		
		a <= x"80000000";
		b <= x"80000000";
		wait for 5 ns;		-- overflow
		
		a <= x"5FFFFFFF";
		b <= x"5FFFFFFF";
		wait for 5 ns;		-- overflow
		
		a <= x"A0000000";
		b <= x"A0000000";
		wait for 5 ns;		--zero
		
		-- Teste SUBU
		opcode <= "0101";
		
		a <= x"00000000";
		b <= x"A0000000";
		wait for 5 ns;
		
		a <= x"A0000000";
		b <= x"60000000";
		wait for 5 ns;
		
		a <= x"80000000";
		b <= x"80000000";
		wait for 5 ns;		-- overflow
		
		a <= x"5FFFFFFF";
		b <= x"5FFFFFFF";
		wait for 5 ns;		-- overflow
		
		a <= x"A0000000";
		b <= x"A0000000";
		wait for 5 ns;		--zero
		
		-- teste SLT
		opcode <= "0110";
		
		a <= x"000000C0";
		b <= x"000000A0";
		wait for 5 ns;
		
		a <= x"000000A0";
		b <= x"000000C0";
		wait for 5 ns;
		
		a <= x"000000C0";
		b <= x"000000C0";
		wait for 5 ns;
		
		a <= x"F00000C0";
		b <= x"000000A0";
		wait for 5 ns;
		
		a <= x"000000C0";
		b <= x"F00000A0";
		wait for 5 ns;
		
		a <= x"F00000C0";
		b <= x"F00000A0";
		wait for 5 ns;
		
		-- teste SLTU
		opcode <= "0111";
		
		a <= x"000000C0";
		b <= x"000000A0";
		wait for 5 ns;
		
		a <= x"000000A0";
		b <= x"000000C0";
		wait for 5 ns;
		
		a <= x"000000C0";
		b <= x"000000C0";
		wait for 5 ns;
		
		a <= x"F00000C0";
		b <= x"000000A0";
		wait for 5 ns;
		
		a <= x"000000C0";
		b <= x"F00000A0";
		wait for 5 ns;
		
		a <= x"F00000C0";
		b <= x"F00000A0";
		wait for 5 ns;
		
		-- Teste NOR
		opcode <= "1000";
		
		a <= x"FF00FF00";
		b <= x"F00FF00F";
		wait for 5 ns;
		
		a <= x"00000000";
		b <= x"00000000";
		wait for 5 ns;
		
		-- Teste XOR
		opcode <= "1001";
		
		a <= x"FF00FF00";
		b <= x"00000000";
		wait for 5 ns;
		
		a <= x"FF00FF00";
		b <= x"F00FF00F";
		wait for 5 ns;
		
		-- Teste SLL
		opcode <= "1010";
		
		a <= x"00000100";
		b <= x"FFFFFFFF";
		wait for 5 ns;
		
		a <= x"00000010";
		b <= x"FFFFFFFF";
		wait for 5 ns;
		
		-- Teste SRL
		opcode <= "1011";
		
		a <= x"00000100";
		b <= x"FFFFFFFF";
		wait for 5 ns;
		
		a <= x"00000010";
		b <= x"FFFFFFFF";
		wait for 5 ns;
		
		-- Teste SRA
		opcode <= "1100";
		
		a <= x"00000100";
		b <= x"FFFFFFFF";
		wait for 5 ns;
		
		a <= x"00000010";
		b <= x"FF000000";
		wait for 5 ns;
		
		-- Teste CLZ
		opcode <= "1101";
		
		a <= x"0000000F";
		wait for 5 ns;
		
		a <= x"0FFFFFF0";
		wait for 5 ns;
		
		a <= x"FFFFFFF0";
		wait for 5 ns;
		
		-- Teste CLO
		opcode <= "1110";
		
		a <= x"0000000F";
		wait for 5 ns;
		
		a <= x"0FFFFFF0";
		wait for 5 ns;
		
		a <= x"FFFFFFF0";
		wait for 5 ns;
		   
WAIT;                                                       
END PROCESS init;                                           
always : PROCESS                                              
-- optional sensitivity list                                  
-- (        )                                                 
-- variable declarations                                 
BEGIN                                                         
        -- code executes for every event on sensitivity list  
WAIT;                                                        
END PROCESS always;                                          
END ulaMIPS_arch;
