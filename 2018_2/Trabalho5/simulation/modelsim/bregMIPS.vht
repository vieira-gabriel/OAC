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
-- Generated on "10/17/2018 20:21:43"
                                                            
-- Vhdl Test Bench template for design  :  bregMIPS
-- 
-- Simulation tool : ModelSim-Altera (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all; 
use ieee.numeric_std.all;                               

ENTITY bregMIPS_vhd_tst IS
END bregMIPS_vhd_tst;
ARCHITECTURE bregMIPS_arch OF bregMIPS_vhd_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clk : STD_LOGIC;
SIGNAL r1 : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL r2 : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL radd1 : STD_LOGIC_VECTOR(4 DOWNTO 0);
SIGNAL radd2 : STD_LOGIC_VECTOR(4 DOWNTO 0);
SIGNAL rst : STD_LOGIC;
SIGNAL wadd : STD_LOGIC_VECTOR(4 DOWNTO 0);
SIGNAL wdata : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL wren : STD_LOGIC;
COMPONENT bregMIPS
	PORT (
	clk : IN STD_LOGIC;
	r1 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
	r2 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
	radd1 : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
	radd2 : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
	rst : IN STD_LOGIC;
	wadd : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
	wdata : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
	wren : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : bregMIPS
	PORT MAP (
-- list connections between master ports and signals
	clk => clk,
	r1 => r1,
	r2 => r2,
	radd1 => radd1,
	radd2 => radd2,
	rst => rst,
	wadd => wadd,
	wdata => wdata,
	wren => wren
	);
init : PROCESS                                               
-- variable declarations                                     
BEGIN                                                        
        -- code that executes only once  
		  
		-- TESTE 1 --
		  
		  -- Preenchenco os registros com valores para serem lidos:
		  
		  wren <= '1';
		  
		  for i in 1 to 27 loop
				clk <= '0';
				wait for 2 ns;
				wadd <= std_logic_vector(to_unsigned(i, 5));
				wdata <= std_logic_vector(to_unsigned(i, 32));
				clk <= '1';
				wait for 2 ns;
			end loop;
			
			-- Pula registradores $gp e $sp
			
			for i in 30 to 31 loop
				clk <= '0';
				wait for 2 ns;
				wadd <= std_logic_vector(to_unsigned(i, 5));
				wdata <= std_logic_vector(to_unsigned(i, 32));
				clk <= '1';
				wait for 2 ns;
			end loop;
			
			-- Lendo R1
			
			wren <= '0';
				
			for i in 1 to 10 loop
				clk <= '0';
				wait for 2 ns;
				radd1 <= std_logic_vector(to_unsigned(i, 5));
				clk <= '1';
				wait for 2 ns;
			end loop;
			radd1 <= "00000";
			
			-- Lendo R2
			
			for i in 11 to 20 loop
				clk <= '0';
				wait for 2 ns;
				radd2 <= std_logic_vector(to_unsigned(i, 5));
				clk <= '1';
				wait for 2 ns;
			end loop;
			
			-- Lendo R1 e R2 simultaneamente
			
			for i in 21 to 31 loop
				clk <= '0';
				wait for 2 ns;
				radd1 <= std_logic_vector(to_unsigned(i, 5));
				radd2 <= std_logic_vector(to_unsigned(i, 5));
				clk <= '1';
				wait for 2 ns;
			end loop;
	
		-- TESTE 2 --
	
			-- Verificando se há alguma alteração em $zero
			
			wren <= '1';
			
			clk <= '0';
			wait for 2 ns;
			
			wdata <= x"12345678";
			wadd <= "00000";
			
			clk <= '1';
			wait for 2 ns;
			
			wren <= '0';
			
			clk <= '0';
			wait for 2 ns;
			
			radd1 <= "00000";
			radd2 <= "00000";
			
			clk <= '1';
			wait for 2 ns;
			
	
		-- TESTE 3 --
			
			-- Restaurando os valores iniciais dos registradores
			
			rst <= '1';
			
			clk <= '0';
			wait for 2 ns;
			clk <= '1';
			wait for 2 ns;
			
			-- Apresentando valores iniciais
			
			for i in 0 to 31 loop
				clk <= '0';
				wait for 2 ns;
				radd1 <= std_logic_vector(to_unsigned(i, 5));
				clk <= '1';
				wait for 2 ns;
			end loop;
	
		-- TESTE 4 --
		
			-- Escrita e leitura no mesmo ciclo, do mesmo registrador
			
			wren <= '1';
			
			clk <= '0';
			wait for 2 ns;
			
			radd1 <= "00001";
			radd2 <= "00001";
			
			wdata <= x"0000000A";
			wadd <= "00001";
			
			clk <= '1';
			wait for 2 ns;
			
			-- Colocado mais um ciclo
				
			clk <= '0';
			wait for 2 ns;
			clk <= '1';
			wait for 2 ns;
			
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
END bregMIPS_arch;
