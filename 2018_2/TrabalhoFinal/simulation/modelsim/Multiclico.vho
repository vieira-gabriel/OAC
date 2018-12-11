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

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 13.0.0 Build 156 04/24/2013 SJ Web Edition"

-- DATE "12/11/2018 11:03:03"

-- 
-- Device: Altera EP2C70F896C6 Package FBGA896
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEII;
LIBRARY IEEE;
USE CYCLONEII.CYCLONEII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	mips_multi IS
    PORT (
	clk : IN std_logic;
	clk_rom : IN std_logic;
	rst : IN std_logic;
	debug : IN std_logic_vector(1 DOWNTO 0);
	data : OUT std_logic_vector(31 DOWNTO 0)
	);
END mips_multi;

-- Design Ports Information
-- data[0]	=>  Location: PIN_A12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- data[1]	=>  Location: PIN_B11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- data[2]	=>  Location: PIN_B15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- data[3]	=>  Location: PIN_B13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- data[4]	=>  Location: PIN_D15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- data[5]	=>  Location: PIN_J13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- data[6]	=>  Location: PIN_AJ14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- data[7]	=>  Location: PIN_C16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- data[8]	=>  Location: PIN_F13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- data[9]	=>  Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- data[10]	=>  Location: PIN_B16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- data[11]	=>  Location: PIN_B14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- data[12]	=>  Location: PIN_C15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- data[13]	=>  Location: PIN_AJ12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- data[14]	=>  Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- data[15]	=>  Location: PIN_C12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- data[16]	=>  Location: PIN_E14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- data[17]	=>  Location: PIN_N3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- data[18]	=>  Location: PIN_E13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- data[19]	=>  Location: PIN_H14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- data[20]	=>  Location: PIN_B12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- data[21]	=>  Location: PIN_AH12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- data[22]	=>  Location: PIN_G13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- data[23]	=>  Location: PIN_D12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- data[24]	=>  Location: PIN_H13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- data[25]	=>  Location: PIN_C14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- data[26]	=>  Location: PIN_K1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- data[27]	=>  Location: PIN_G14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- data[28]	=>  Location: PIN_D14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- data[29]	=>  Location: PIN_AK12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- data[30]	=>  Location: PIN_A14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- data[31]	=>  Location: PIN_E15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- debug[1]	=>  Location: PIN_G15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- debug[0]	=>  Location: PIN_H15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- clk	=>  Location: PIN_T2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- rst	=>  Location: PIN_R2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- clk_rom	=>  Location: PIN_T3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF mips_multi IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_clk_rom : std_logic;
SIGNAL ww_rst : std_logic;
SIGNAL ww_debug : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_data : std_logic_vector(31 DOWNTO 0);
SIGNAL \mem|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \mem|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \mem|altsyncram_component|auto_generated|ram_block1a0_PORTABYTEENAMASKS_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \mem|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \mem|altsyncram_component|auto_generated|ram_block1a16_PORTADATAIN_bus\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \mem|altsyncram_component|auto_generated|ram_block1a16_PORTAADDR_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \mem|altsyncram_component|auto_generated|ram_block1a16_PORTABYTEENAMASKS_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \mem|altsyncram_component|auto_generated|ram_block1a16_PORTADATAOUT_bus\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \bcoreg|breg32_rtl_1|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \bcoreg|breg32_rtl_1|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \bcoreg|breg32_rtl_1|auto_generated|ram_block1a0_PORTBADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \bcoreg|breg32_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \bcoreg|breg32_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \bcoreg|breg32_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \bcoreg|breg32_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \bcoreg|breg32_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \clk~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk_rom~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rst~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \alu|tmp[3]~6_combout\ : std_logic;
SIGNAL \alu|tmp[4]~8_combout\ : std_logic;
SIGNAL \alu|tmp[5]~10_combout\ : std_logic;
SIGNAL \alu|tmp[8]~16_combout\ : std_logic;
SIGNAL \alu|tmp[12]~24_combout\ : std_logic;
SIGNAL \alu|Add1~6_combout\ : std_logic;
SIGNAL \alu|Add1~8_combout\ : std_logic;
SIGNAL \alu|Add1~10_combout\ : std_logic;
SIGNAL \alu|Add1~12_combout\ : std_logic;
SIGNAL \alu|Add1~18_combout\ : std_logic;
SIGNAL \alu|Add1~24_combout\ : std_logic;
SIGNAL \alu|Add1~44_combout\ : std_logic;
SIGNAL \alu|Add1~60_combout\ : std_logic;
SIGNAL \bcoreg|breg32_rtl_1|auto_generated|ram_block1a8\ : std_logic;
SIGNAL \bcoreg|breg32_rtl_1|auto_generated|ram_block1a2\ : std_logic;
SIGNAL \bcoreg|breg32_rtl_1|auto_generated|ram_block1a29\ : std_logic;
SIGNAL \bcoreg|breg32_rtl_1|auto_generated|ram_block1a28\ : std_logic;
SIGNAL \bcoreg|breg32_rtl_1|auto_generated|ram_block1a26\ : std_logic;
SIGNAL \bcoreg|breg32_rtl_1|auto_generated|ram_block1a23\ : std_logic;
SIGNAL \bcoreg|breg32_rtl_1|auto_generated|ram_block1a17\ : std_logic;
SIGNAL \bcoreg|breg32_rtl_1|auto_generated|ram_block1a13\ : std_logic;
SIGNAL \bcoreg|breg32_rtl_1|auto_generated|ram_block1a9\ : std_logic;
SIGNAL \bcoreg|breg32_rtl_0|auto_generated|ram_block1a7\ : std_logic;
SIGNAL \bcoreg|breg32_rtl_0|auto_generated|ram_block1a6\ : std_logic;
SIGNAL \bcoreg|breg32_rtl_0|auto_generated|ram_block1a30\ : std_logic;
SIGNAL \bcoreg|breg32_rtl_0|auto_generated|ram_block1a25\ : std_logic;
SIGNAL \bcoreg|breg32_rtl_0|auto_generated|ram_block1a23\ : std_logic;
SIGNAL \bcoreg|breg32_rtl_0|auto_generated|ram_block1a22\ : std_logic;
SIGNAL \bcoreg|breg32_rtl_0|auto_generated|ram_block1a20\ : std_logic;
SIGNAL \bcoreg|breg32_rtl_0|auto_generated|ram_block1a19\ : std_logic;
SIGNAL \bcoreg|breg32_rtl_0|auto_generated|ram_block1a15\ : std_logic;
SIGNAL \bcoreg|breg32_rtl_0|auto_generated|ram_block1a13\ : std_logic;
SIGNAL \bcoreg|breg32_rtl_0|auto_generated|ram_block1a12\ : std_logic;
SIGNAL \bcoreg|breg32_rtl_0|auto_generated|ram_block1a11\ : std_logic;
SIGNAL \actr|alu_ctr~3_combout\ : std_logic;
SIGNAL \actr|alu_ctr[1]~10_combout\ : std_logic;
SIGNAL \alu|ShiftLeft0~15_combout\ : std_logic;
SIGNAL \alu|Mux31~2_combout\ : std_logic;
SIGNAL \mux_ulaB|m_out[27]~8_combout\ : std_logic;
SIGNAL \mux_ulaB|m_out[10]~32_combout\ : std_logic;
SIGNAL \mux_ulaB|m_out[9]~34_combout\ : std_logic;
SIGNAL \alu|ShiftRight1~14_combout\ : std_logic;
SIGNAL \alu|ShiftRight1~15_combout\ : std_logic;
SIGNAL \alu|ShiftRight1~16_combout\ : std_logic;
SIGNAL \alu|ShiftRight0~23_combout\ : std_logic;
SIGNAL \actr|alu_ctr[1]~17_combout\ : std_logic;
SIGNAL \alu|ShiftLeft0~23_combout\ : std_logic;
SIGNAL \alu|ShiftLeft0~24_combout\ : std_logic;
SIGNAL \alu|Mux30~5_combout\ : std_logic;
SIGNAL \alu|Mux30~6_combout\ : std_logic;
SIGNAL \alu|Mux30~8_combout\ : std_logic;
SIGNAL \alu|Mux29~7_combout\ : std_logic;
SIGNAL \alu|Mux29~19_combout\ : std_logic;
SIGNAL \alu|Mux29~20_combout\ : std_logic;
SIGNAL \alu|Mux26~6_combout\ : std_logic;
SIGNAL \alu|Mux24~0_combout\ : std_logic;
SIGNAL \alu|Mux23~3_combout\ : std_logic;
SIGNAL \alu|ShiftLeft0~54_combout\ : std_logic;
SIGNAL \alu|Mux21~2_combout\ : std_logic;
SIGNAL \alu|ShiftRight0~84_combout\ : std_logic;
SIGNAL \alu|Mux17~2_combout\ : std_logic;
SIGNAL \alu|ShiftLeft0~83_combout\ : std_logic;
SIGNAL \alu|Mux16~2_combout\ : std_logic;
SIGNAL \alu|Mux16~3_combout\ : std_logic;
SIGNAL \alu|Mux13~2_combout\ : std_logic;
SIGNAL \alu|a32~35_combout\ : std_logic;
SIGNAL \alu|ShiftLeft0~104_combout\ : std_logic;
SIGNAL \alu|a32~36_combout\ : std_logic;
SIGNAL \alu|Mux11~2_combout\ : std_logic;
SIGNAL \alu|ShiftLeft0~107_combout\ : std_logic;
SIGNAL \alu|ShiftLeft0~109_combout\ : std_logic;
SIGNAL \alu|ShiftLeft0~110_combout\ : std_logic;
SIGNAL \alu|Mux10~14_combout\ : std_logic;
SIGNAL \alu|Mux8~0_combout\ : std_logic;
SIGNAL \alu|a32~39_combout\ : std_logic;
SIGNAL \alu|a32~40_combout\ : std_logic;
SIGNAL \alu|a32~41_combout\ : std_logic;
SIGNAL \alu|Mux6~2_combout\ : std_logic;
SIGNAL \alu|Mux6~7_combout\ : std_logic;
SIGNAL \alu|ShiftLeft0~122_combout\ : std_logic;
SIGNAL \alu|Mux5~0_combout\ : std_logic;
SIGNAL \alu|Mux5~1_combout\ : std_logic;
SIGNAL \alu|Mux5~7_combout\ : std_logic;
SIGNAL \alu|ShiftLeft0~123_combout\ : std_logic;
SIGNAL \alu|ShiftLeft0~124_combout\ : std_logic;
SIGNAL \alu|Mux4~0_combout\ : std_logic;
SIGNAL \alu|Mux4~1_combout\ : std_logic;
SIGNAL \alu|Mux4~2_combout\ : std_logic;
SIGNAL \alu|Mux3~4_combout\ : std_logic;
SIGNAL \alu|Mux3~6_combout\ : std_logic;
SIGNAL \alu|ShiftLeft0~127_combout\ : std_logic;
SIGNAL \alu|ShiftLeft0~128_combout\ : std_logic;
SIGNAL \alu|Mux2~5_combout\ : std_logic;
SIGNAL \alu|Mux2~6_combout\ : std_logic;
SIGNAL \alu|ShiftLeft0~130_combout\ : std_logic;
SIGNAL \alu|a32~44_combout\ : std_logic;
SIGNAL \alu|Mux1~8_combout\ : std_logic;
SIGNAL \alu|Mux1~9_combout\ : std_logic;
SIGNAL \alu|ShiftLeft0~136_combout\ : std_logic;
SIGNAL \ctr_mips|nstate.rtype_ex_st~2_combout\ : std_logic;
SIGNAL \ctr_mips|Mux0~1_combout\ : std_logic;
SIGNAL \bcoreg|breg32~40_combout\ : std_logic;
SIGNAL \bcoreg|breg32~41_combout\ : std_logic;
SIGNAL \alu|Equal0~4_combout\ : std_logic;
SIGNAL \alu|Equal0~5_combout\ : std_logic;
SIGNAL \alu|Equal0~6_combout\ : std_logic;
SIGNAL \ctr_mips|Equal8~0_combout\ : std_logic;
SIGNAL \pc|sr_out~30_combout\ : std_logic;
SIGNAL \bcoreg|regA[23]~8_combout\ : std_logic;
SIGNAL \bcoreg|regA[15]~16_combout\ : std_logic;
SIGNAL \bcoreg|regA[6]~17_combout\ : std_logic;
SIGNAL \bcoreg|regA[11]~22_combout\ : std_logic;
SIGNAL \bcoreg|regA[7]~26_combout\ : std_logic;
SIGNAL \bcoreg|regB[13]~19_combout\ : std_logic;
SIGNAL \bcoreg|regB[9]~23_combout\ : std_logic;
SIGNAL \breg_data_mux|m_out[4]~5_combout\ : std_logic;
SIGNAL \breg_data_mux|m_out[6]~27_combout\ : std_logic;
SIGNAL \breg_data_mux|m_out[5]~30_combout\ : std_logic;
SIGNAL \breg_data_mux|m_out[5]~31_combout\ : std_logic;
SIGNAL \breg_data_mux|m_out[3]~41_combout\ : std_logic;
SIGNAL \breg_data_mux|m_out[3]~42_combout\ : std_logic;
SIGNAL \breg_data_mux|m_out[2]~44_combout\ : std_logic;
SIGNAL \breg_data_mux|m_out[1]~47_combout\ : std_logic;
SIGNAL \breg_data_mux|m_out[1]~48_combout\ : std_logic;
SIGNAL \alu|a32~45_combout\ : std_logic;
SIGNAL \alu|Mux30~16_combout\ : std_logic;
SIGNAL \alu|a32~46_combout\ : std_logic;
SIGNAL \alu|a32~50_combout\ : std_logic;
SIGNAL \alu|a32~54_combout\ : std_logic;
SIGNAL \alu|a32~55_combout\ : std_logic;
SIGNAL \alu|ShiftRight0~87_combout\ : std_logic;
SIGNAL \alu|a32~59_combout\ : std_logic;
SIGNAL \alu|ShiftRight0~88_combout\ : std_logic;
SIGNAL \mux_store|m_out[17]~65_combout\ : std_logic;
SIGNAL \mux_store|m_out[20]~69_combout\ : std_logic;
SIGNAL \rdm|sr_out[26]~feeder_combout\ : std_logic;
SIGNAL \rdm|sr_out[28]~feeder_combout\ : std_logic;
SIGNAL \bcoreg|breg32_rtl_0_bypass[11]~feeder_combout\ : std_logic;
SIGNAL \bcoreg|breg32_rtl_0_bypass[7]~feeder_combout\ : std_logic;
SIGNAL \bcoreg|breg32_rtl_1_bypass[19]~feeder_combout\ : std_logic;
SIGNAL \bcoreg|breg32_rtl_1_bypass[23]~feeder_combout\ : std_logic;
SIGNAL \bcoreg|breg32_rtl_1_bypass[33]~feeder_combout\ : std_logic;
SIGNAL \clk_rom~combout\ : std_logic;
SIGNAL \clk_rom~clkctrl_outclk\ : std_logic;
SIGNAL \ctr_mips|pstate.decode_st~0_combout\ : std_logic;
SIGNAL \rst~combout\ : std_logic;
SIGNAL \rst~clkctrl_outclk\ : std_logic;
SIGNAL \ctr_mips|pstate.decode_st~regout\ : std_logic;
SIGNAL \pc|sr_out[8]~22_combout\ : std_logic;
SIGNAL \ctr_mips|pstate.fetch_st~_wirecell_combout\ : std_logic;
SIGNAL \clk~combout\ : std_logic;
SIGNAL \clk~clkctrl_outclk\ : std_logic;
SIGNAL \mux_ulaB|Equal2~0_combout\ : std_logic;
SIGNAL \mux_ulaB|m_out[0]~2_combout\ : std_logic;
SIGNAL \mux_ulaB|m_out[0]~3_combout\ : std_logic;
SIGNAL \alu|Add1~0_combout\ : std_logic;
SIGNAL \ctr_mips|nstate.jump_ex_st~0_combout\ : std_logic;
SIGNAL \ctr_mips|pstate.jump_ex_st~regout\ : std_logic;
SIGNAL \pc|sr_out~31_combout\ : std_logic;
SIGNAL \actr|alu_ctr~9_combout\ : std_logic;
SIGNAL \b_enab|byteenable[2]~14_combout\ : std_logic;
SIGNAL \ctr_mips|Equal2~1_combout\ : std_logic;
SIGNAL \mux_store|m_out[3]~63_combout\ : std_logic;
SIGNAL \mux_store|m_out[1]~21_combout\ : std_logic;
SIGNAL \ctr_mips|pstate.ldreg_st~regout\ : std_logic;
SIGNAL \mux_store|m_out[3]~23_combout\ : std_logic;
SIGNAL \mux_store|m_out[4]~24_combout\ : std_logic;
SIGNAL \mux_store|m_out[6]~26_combout\ : std_logic;
SIGNAL \mux_store|m_out[7]~27_combout\ : std_logic;
SIGNAL \mux_store|Equal1~0_combout\ : std_logic;
SIGNAL \ctr_mips|wich_store[0]~0_combout\ : std_logic;
SIGNAL \mux_store|m_out[8]~64_combout\ : std_logic;
SIGNAL \mux_store|m_out[8]~28_combout\ : std_logic;
SIGNAL \mux_store|m_out[9]~29_combout\ : std_logic;
SIGNAL \mux_ulaB|m_out[21]~14_combout\ : std_logic;
SIGNAL \actr|alu_ctr~4_combout\ : std_logic;
SIGNAL \actr|alu_ctr~11_combout\ : std_logic;
SIGNAL \actr|alu_ctr~12_combout\ : std_logic;
SIGNAL \actr|alu_ctr~5_combout\ : std_logic;
SIGNAL \actr|alu_ctr[1]~6_combout\ : std_logic;
SIGNAL \actr|alu_ctr[1]~7_combout\ : std_logic;
SIGNAL \actr|alu_ctr[1]~13_combout\ : std_logic;
SIGNAL \actr|alu_ctr[1]~14_combout\ : std_logic;
SIGNAL \alu|Mux14~8_combout\ : std_logic;
SIGNAL \alu|Mux29~2_combout\ : std_logic;
SIGNAL \actr|alu_ctr[1]~24_combout\ : std_logic;
SIGNAL \alu|Mux29~5_combout\ : std_logic;
SIGNAL \alu|Mux14~6_combout\ : std_logic;
SIGNAL \ctr_mips|WideOr0~combout\ : std_logic;
SIGNAL \mux_ulaB|m_out[23]~12_combout\ : std_logic;
SIGNAL \alu|Mux8~6_combout\ : std_logic;
SIGNAL \mux_ulaB|m_out[1]~48_combout\ : std_logic;
SIGNAL \alu|tmp[0]~1\ : std_logic;
SIGNAL \alu|tmp[1]~2_combout\ : std_logic;
SIGNAL \alu|Mux30~7_combout\ : std_logic;
SIGNAL \pc|sr_out[5]~25_combout\ : std_logic;
SIGNAL \alu|Mux9~11_combout\ : std_logic;
SIGNAL \pc|sr_out~32_combout\ : std_logic;
SIGNAL \mux_ulaA|m_out[1]~30_combout\ : std_logic;
SIGNAL \mux_ulaB|m_out[18]~17_combout\ : std_logic;
SIGNAL \mux_ulaB|m_out[2]~19_combout\ : std_logic;
SIGNAL \mux_ulaB|m_out[17]~20_combout\ : std_logic;
SIGNAL \alu|ShiftLeft0~98_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \rdm|sr_out[31]~feeder_combout\ : std_logic;
SIGNAL \mux_store|m_out[13]~33_combout\ : std_logic;
SIGNAL \mux_ulaB|m_out[16]~21_combout\ : std_logic;
SIGNAL \alu|ShiftRight1~11_combout\ : std_logic;
SIGNAL \mux_ulaB|m_out[14]~24_combout\ : std_logic;
SIGNAL \mux_ulaB|m_out[14]~25_combout\ : std_logic;
SIGNAL \alu|ShiftRight1~43_combout\ : std_logic;
SIGNAL \alu|ShiftRight1~44_combout\ : std_logic;
SIGNAL \alu|ShiftRight0~73_combout\ : std_logic;
SIGNAL \ir|sr_out[21]~feeder_combout\ : std_logic;
SIGNAL \breg_data_mux|m_out[15]~25_combout\ : std_logic;
SIGNAL \breg_data_mux|m_out[8]~39_combout\ : std_logic;
SIGNAL \bcoreg|breg32_rtl_1_bypass[27]~feeder_combout\ : std_logic;
SIGNAL \bcoreg|regB[8]~24_combout\ : std_logic;
SIGNAL \mux_store|m_out[24]~45_combout\ : std_logic;
SIGNAL \actr|alu_ctr~23_combout\ : std_logic;
SIGNAL \mux_store|m_out[24]~46_combout\ : std_logic;
SIGNAL \mux_store|m_out[24]~47_combout\ : std_logic;
SIGNAL \mux_store|m_out[24]~48_combout\ : std_logic;
SIGNAL \breg_data_mux|m_out[7]~40_combout\ : std_logic;
SIGNAL \breg_data_mux|m_out[9]~38_combout\ : std_logic;
SIGNAL \alu|ShiftRight1~32_combout\ : std_logic;
SIGNAL \alu|ShiftRight1~31_combout\ : std_logic;
SIGNAL \alu|ShiftRight1~33_combout\ : std_logic;
SIGNAL \alu|ShiftRight0~52_combout\ : std_logic;
SIGNAL \b_enab|byteenable[1]~9_combout\ : std_logic;
SIGNAL \b_enab|byteenable[1]~10_combout\ : std_logic;
SIGNAL \mux_ulaB|m_out[13]~26_combout\ : std_logic;
SIGNAL \mux_ulaB|m_out[13]~27_combout\ : std_logic;
SIGNAL \mux_ulaB|m_out[11]~30_combout\ : std_logic;
SIGNAL \mux_ulaB|m_out[11]~31_combout\ : std_logic;
SIGNAL \alu|ShiftRight1~46_combout\ : std_logic;
SIGNAL \mux_ulaB|m_out[10]~33_combout\ : std_logic;
SIGNAL \mux_ulaB|m_out[12]~28_combout\ : std_logic;
SIGNAL \mux_ulaB|m_out[12]~29_combout\ : std_logic;
SIGNAL \alu|ShiftRight1~45_combout\ : std_logic;
SIGNAL \alu|ShiftRight1~47_combout\ : std_logic;
SIGNAL \alu|ShiftRight0~53_combout\ : std_logic;
SIGNAL \alu|Mux21~10_combout\ : std_logic;
SIGNAL \alu|Mux29~3_combout\ : std_logic;
SIGNAL \alu|Mux29~4_combout\ : std_logic;
SIGNAL \mux_ulaB|m_out[2]~49_combout\ : std_logic;
SIGNAL \mux_ulaB|m_out[2]~50_combout\ : std_logic;
SIGNAL \alu|ShiftLeft0~26_combout\ : std_logic;
SIGNAL \alu|ShiftLeft0~27_combout\ : std_logic;
SIGNAL \mux_store|m_out[26]~51_combout\ : std_logic;
SIGNAL \breg_data_mux|m_out[26]~14_combout\ : std_logic;
SIGNAL \bcoreg|regB[26]~6_combout\ : std_logic;
SIGNAL \mux_store|m_out[26]~52_combout\ : std_logic;
SIGNAL \alu|ShiftRight1~10_combout\ : std_logic;
SIGNAL \alu|ShiftRight1~29_combout\ : std_logic;
SIGNAL \alu|ShiftRight1~48_combout\ : std_logic;
SIGNAL \alu|ShiftRight1~12_combout\ : std_logic;
SIGNAL \alu|ShiftRight1~49_combout\ : std_logic;
SIGNAL \alu|ShiftRight0~57_combout\ : std_logic;
SIGNAL \alu|Mux20~10_combout\ : std_logic;
SIGNAL \alu|ShiftLeft0~22_combout\ : std_logic;
SIGNAL \alu|ShiftLeft0~29_combout\ : std_logic;
SIGNAL \alu|ShiftLeft0~44_combout\ : std_logic;
SIGNAL \alu|ShiftLeft0~61_combout\ : std_logic;
SIGNAL \alu|ShiftRight0~32_combout\ : std_logic;
SIGNAL \alu|ShiftLeft0~62_combout\ : std_logic;
SIGNAL \mux_ulaB|m_out[5]~42_combout\ : std_logic;
SIGNAL \mux_ulaB|m_out[5]~43_combout\ : std_logic;
SIGNAL \alu|ShiftLeft0~46_combout\ : std_logic;
SIGNAL \alu|ShiftLeft0~45_combout\ : std_logic;
SIGNAL \alu|ShiftLeft0~143_combout\ : std_logic;
SIGNAL \alu|ShiftLeft0~63_combout\ : std_logic;
SIGNAL \pc|sr_out[11]~19_combout\ : std_logic;
SIGNAL \mux_ulaA|m_out[11]~22_combout\ : std_logic;
SIGNAL \alu|Mux29~14_combout\ : std_logic;
SIGNAL \alu|Mux20~7_combout\ : std_logic;
SIGNAL \alu|ShiftRight0~19_combout\ : std_logic;
SIGNAL \alu|ShiftRight0~20_combout\ : std_logic;
SIGNAL \breg_data_mux|m_out[13]~34_combout\ : std_logic;
SIGNAL \pc|sr_out[15]~15_combout\ : std_logic;
SIGNAL \mux_ulaA|m_out[15]~16_combout\ : std_logic;
SIGNAL \breg_data_mux|m_out[28]~12_combout\ : std_logic;
SIGNAL \bcoreg|breg32_rtl_1_bypass[67]~feeder_combout\ : std_logic;
SIGNAL \bcoreg|regB[28]~4_combout\ : std_logic;
SIGNAL \mux_store|m_out[28]~55_combout\ : std_logic;
SIGNAL \mux_store|m_out[28]~56_combout\ : std_logic;
SIGNAL \breg_data_mux|m_out[29]~11_combout\ : std_logic;
SIGNAL \bcoreg|regB[29]~3_combout\ : std_logic;
SIGNAL \mux_store|m_out[29]~57_combout\ : std_logic;
SIGNAL \mux_store|m_out[29]~58_combout\ : std_logic;
SIGNAL \mux_store|m_out[30]~59_combout\ : std_logic;
SIGNAL \mux_store|m_out[30]~60_combout\ : std_logic;
SIGNAL \mux_store|m_out[31]~61_combout\ : std_logic;
SIGNAL \mux_store|m_out[31]~62_combout\ : std_logic;
SIGNAL \actr|alu_ctr~22_combout\ : std_logic;
SIGNAL \b_enab|byteenable[3]~11_combout\ : std_logic;
SIGNAL \b_enab|byteenable[3]~12_combout\ : std_logic;
SIGNAL \alu|ShiftLeft0~70_combout\ : std_logic;
SIGNAL \alu|ShiftLeft0~69_combout\ : std_logic;
SIGNAL \alu|ShiftLeft0~100_combout\ : std_logic;
SIGNAL \pc|sr_out[3]~1_combout\ : std_logic;
SIGNAL \alu|ShiftLeft0~140_combout\ : std_logic;
SIGNAL \alu|ShiftLeft0~28_combout\ : std_logic;
SIGNAL \mux_ulaB|m_out[19]~16_combout\ : std_logic;
SIGNAL \bcoreg|breg32_rtl_1_bypass[49]~feeder_combout\ : std_logic;
SIGNAL \bcoreg|regA[19]~12_combout\ : std_logic;
SIGNAL \mux_ulaA|m_out[19]~12_combout\ : std_logic;
SIGNAL \alu|ShiftLeft0~30_combout\ : std_logic;
SIGNAL \pc|sr_out[4]~2_combout\ : std_logic;
SIGNAL \mux_ulaA|m_out[4]~0_combout\ : std_logic;
SIGNAL \alu|ShiftLeft0~21_combout\ : std_logic;
SIGNAL \alu|Mux10~11_combout\ : std_logic;
SIGNAL \alu|Mux10~21_combout\ : std_logic;
SIGNAL \alu|Mux12~0_combout\ : std_logic;
SIGNAL \alu|ShiftLeft0~101_combout\ : std_logic;
SIGNAL \alu|ShiftLeft0~102_combout\ : std_logic;
SIGNAL \alu|ShiftLeft0~103_combout\ : std_logic;
SIGNAL \alu|Mux12~1_combout\ : std_logic;
SIGNAL \alu|Mux29~9_combout\ : std_logic;
SIGNAL \alu|Mux12~2_combout\ : std_logic;
SIGNAL \pc|sr_out[18]~12_combout\ : std_logic;
SIGNAL \mux_ulaA|m_out[18]~13_combout\ : std_logic;
SIGNAL \alu|Add1~31\ : std_logic;
SIGNAL \alu|Add1~33\ : std_logic;
SIGNAL \alu|Add1~35\ : std_logic;
SIGNAL \alu|Add1~37\ : std_logic;
SIGNAL \alu|Add1~38_combout\ : std_logic;
SIGNAL \alu|Mux10~9_combout\ : std_logic;
SIGNAL \alu|Mux12~3_combout\ : std_logic;
SIGNAL \pc|sr_out[12]~18_combout\ : std_logic;
SIGNAL \bcoreg|regA[12]~21_combout\ : std_logic;
SIGNAL \mux_ulaA|m_out[12]~21_combout\ : std_logic;
SIGNAL \mux_ulaB|m_out[9]~35_combout\ : std_logic;
SIGNAL \mux_ulaB|m_out[8]~36_combout\ : std_logic;
SIGNAL \mux_ulaB|m_out[8]~37_combout\ : std_logic;
SIGNAL \mux_ulaA|m_out[7]~26_combout\ : std_logic;
SIGNAL \bcoreg|breg32_rtl_1_bypass[51]~feeder_combout\ : std_logic;
SIGNAL \bcoreg|regA[20]~11_combout\ : std_logic;
SIGNAL \mux_ulaA|m_out[20]~11_combout\ : std_logic;
SIGNAL \mux_ulaB|m_out[31]~4_combout\ : std_logic;
SIGNAL \alu|ShiftRight0~59_combout\ : std_logic;
SIGNAL \alu|ShiftRight0~11_combout\ : std_logic;
SIGNAL \alu|ShiftRight0~12_combout\ : std_logic;
SIGNAL \alu|ShiftRight0~13_combout\ : std_logic;
SIGNAL \alu|ShiftRight0~60_combout\ : std_logic;
SIGNAL \alu|ShiftRight0~61_combout\ : std_logic;
SIGNAL \alu|ShiftRight1~63_combout\ : std_logic;
SIGNAL \alu|ShiftRight1~64_combout\ : std_logic;
SIGNAL \alu|Add1~39\ : std_logic;
SIGNAL \alu|Add1~40_combout\ : std_logic;
SIGNAL \alu|Mux11~3_combout\ : std_logic;
SIGNAL \alu|Mux7~12_combout\ : std_logic;
SIGNAL \alu|ShiftLeft0~84_combout\ : std_logic;
SIGNAL \alu|ShiftLeft0~64_combout\ : std_logic;
SIGNAL \alu|ShiftLeft0~65_combout\ : std_logic;
SIGNAL \alu|ShiftLeft0~86_combout\ : std_logic;
SIGNAL \alu|Mux7~2_combout\ : std_logic;
SIGNAL \alu|ShiftLeft0~105_combout\ : std_logic;
SIGNAL \alu|ShiftLeft0~117_combout\ : std_logic;
SIGNAL \alu|ShiftLeft0~114_combout\ : std_logic;
SIGNAL \alu|ShiftLeft0~118_combout\ : std_logic;
SIGNAL \alu|Mux7~3_combout\ : std_logic;
SIGNAL \alu|ShiftLeft0~31_combout\ : std_logic;
SIGNAL \alu|ShiftLeft0~32_combout\ : std_logic;
SIGNAL \alu|ShiftLeft0~51_combout\ : std_logic;
SIGNAL \alu|ShiftLeft0~52_combout\ : std_logic;
SIGNAL \alu|Mux7~4_combout\ : std_logic;
SIGNAL \alu|ShiftLeft0~119_combout\ : std_logic;
SIGNAL \alu|ShiftLeft0~120_combout\ : std_logic;
SIGNAL \alu|Mux6~0_combout\ : std_logic;
SIGNAL \alu|ShiftLeft0~53_combout\ : std_logic;
SIGNAL \alu|ShiftLeft0~35_combout\ : std_logic;
SIGNAL \mux_ulaB|m_out[3]~46_combout\ : std_logic;
SIGNAL \mux_ulaB|m_out[3]~47_combout\ : std_logic;
SIGNAL \alu|ShiftLeft0~36_combout\ : std_logic;
SIGNAL \alu|ShiftLeft0~37_combout\ : std_logic;
SIGNAL \alu|ShiftLeft0~55_combout\ : std_logic;
SIGNAL \alu|ShiftLeft0~43_combout\ : std_logic;
SIGNAL \alu|ShiftLeft0~56_combout\ : std_logic;
SIGNAL \alu|Mux6~1_combout\ : std_logic;
SIGNAL \alu|ShiftRight1~23_combout\ : std_logic;
SIGNAL \alu|ShiftRight0~44_combout\ : std_logic;
SIGNAL \alu|ShiftRight0~45_combout\ : std_logic;
SIGNAL \pc|sr_out[27]~3_combout\ : std_logic;
SIGNAL \ir|sr_out[25]~feeder_combout\ : std_logic;
SIGNAL \mux_ulaB|m_out[30]~5_combout\ : std_logic;
SIGNAL \alu|Mux2~14_combout\ : std_logic;
SIGNAL \mux_ulaB|m_out[29]~6_combout\ : std_logic;
SIGNAL \alu|Mux2~15_combout\ : std_logic;
SIGNAL \alu|Mux2~4_combout\ : std_logic;
SIGNAL \alu|Mux2~7_combout\ : std_logic;
SIGNAL \alu|ShiftLeft0~71_combout\ : std_logic;
SIGNAL \alu|ShiftLeft0~72_combout\ : std_logic;
SIGNAL \alu|ShiftLeft0~68_combout\ : std_logic;
SIGNAL \alu|ShiftLeft0~73_combout\ : std_logic;
SIGNAL \alu|Mux2~8_combout\ : std_logic;
SIGNAL \mux_ulaB|m_out[28]~7_combout\ : std_logic;
SIGNAL \mux_ulaA|m_out[27]~4_combout\ : std_logic;
SIGNAL \mux_ulaB|m_out[26]~9_combout\ : std_logic;
SIGNAL \pc|sr_out[25]~5_combout\ : std_logic;
SIGNAL \bcoreg|regA[25]~6_combout\ : std_logic;
SIGNAL \rgA|sr_out[25]~feeder_combout\ : std_logic;
SIGNAL \mux_ulaA|m_out[25]~6_combout\ : std_logic;
SIGNAL \mux_ulaB|m_out[22]~13_combout\ : std_logic;
SIGNAL \alu|tmp[19]~39\ : std_logic;
SIGNAL \alu|tmp[20]~41\ : std_logic;
SIGNAL \alu|tmp[21]~43\ : std_logic;
SIGNAL \alu|tmp[22]~45\ : std_logic;
SIGNAL \alu|tmp[23]~47\ : std_logic;
SIGNAL \alu|tmp[24]~49\ : std_logic;
SIGNAL \alu|tmp[25]~51\ : std_logic;
SIGNAL \alu|tmp[26]~53\ : std_logic;
SIGNAL \alu|tmp[27]~55\ : std_logic;
SIGNAL \alu|tmp[28]~57\ : std_logic;
SIGNAL \alu|tmp[29]~58_combout\ : std_logic;
SIGNAL \alu|Mux2~9_combout\ : std_logic;
SIGNAL \alu|ShiftRight1~25_combout\ : std_logic;
SIGNAL \alu|ShiftRight1~71_combout\ : std_logic;
SIGNAL \breg_data_mux|m_out[31]~50_combout\ : std_logic;
SIGNAL \bcoreg|breg32_rtl_0|auto_generated|ram_block1a28\ : std_logic;
SIGNAL \bcoreg|regA[28]~3_combout\ : std_logic;
SIGNAL \mux_ulaA|m_out[28]~3_combout\ : std_logic;
SIGNAL \mux_ulaB|m_out[25]~10_combout\ : std_logic;
SIGNAL \pc|sr_out[22]~8_combout\ : std_logic;
SIGNAL \bcoreg|regA[22]~9_combout\ : std_logic;
SIGNAL \mux_ulaA|m_out[22]~9_combout\ : std_logic;
SIGNAL \alu|Add1~41\ : std_logic;
SIGNAL \alu|Add1~43\ : std_logic;
SIGNAL \alu|Add1~45\ : std_logic;
SIGNAL \alu|Add1~47\ : std_logic;
SIGNAL \alu|Add1~49\ : std_logic;
SIGNAL \alu|Add1~51\ : std_logic;
SIGNAL \alu|Add1~53\ : std_logic;
SIGNAL \alu|Add1~55\ : std_logic;
SIGNAL \alu|Add1~57\ : std_logic;
SIGNAL \alu|Add1~58_combout\ : std_logic;
SIGNAL \alu|Mux2~10_combout\ : std_logic;
SIGNAL \alu|Mux2~11_combout\ : std_logic;
SIGNAL \alu|Mux2~12_combout\ : std_logic;
SIGNAL \alu|Mux2~13_combout\ : std_logic;
SIGNAL \pc|sr_out~29_combout\ : std_logic;
SIGNAL \pc|sr_out[31]~28_combout\ : std_logic;
SIGNAL \bcoreg|breg32_rtl_0|auto_generated|ram_block1a29\ : std_logic;
SIGNAL \bcoreg|regA[29]~2_combout\ : std_logic;
SIGNAL \mux_ulaA|m_out[29]~2_combout\ : std_logic;
SIGNAL \alu|tmp[29]~59\ : std_logic;
SIGNAL \alu|tmp[30]~60_combout\ : std_logic;
SIGNAL \alu|Mux1~4_combout\ : std_logic;
SIGNAL \alu|ShiftRight0~10_combout\ : std_logic;
SIGNAL \alu|Mux1~5_combout\ : std_logic;
SIGNAL \pc|sr_out~27_combout\ : std_logic;
SIGNAL \bcoreg|breg32_rtl_1_bypass[71]~feeder_combout\ : std_logic;
SIGNAL \bcoreg|regA[30]~1_combout\ : std_logic;
SIGNAL \mux_ulaA|m_out[30]~1_combout\ : std_logic;
SIGNAL \alu|Mux1~6_combout\ : std_logic;
SIGNAL \alu|Mux1~11_combout\ : std_logic;
SIGNAL \alu|Mux1~7_combout\ : std_logic;
SIGNAL \alu|Mux1~2_combout\ : std_logic;
SIGNAL \alu|ShiftLeft0~131_combout\ : std_logic;
SIGNAL \alu|ShiftLeft0~121_combout\ : std_logic;
SIGNAL \alu|ShiftLeft0~129_combout\ : std_logic;
SIGNAL \alu|ShiftLeft0~132_combout\ : std_logic;
SIGNAL \alu|ShiftLeft0~133_combout\ : std_logic;
SIGNAL \alu|ShiftRight0~22_combout\ : std_logic;
SIGNAL \alu|ShiftLeft0~74_combout\ : std_logic;
SIGNAL \alu|ShiftLeft0~75_combout\ : std_logic;
SIGNAL \alu|ShiftLeft0~76_combout\ : std_logic;
SIGNAL \alu|ShiftLeft0~77_combout\ : std_logic;
SIGNAL \alu|ShiftLeft0~78_combout\ : std_logic;
SIGNAL \alu|ShiftLeft0~134_combout\ : std_logic;
SIGNAL \alu|Mux1~3_combout\ : std_logic;
SIGNAL \alu|Mux1~10_combout\ : std_logic;
SIGNAL \breg_data_mux|m_out[30]~10_combout\ : std_logic;
SIGNAL \bcoreg|breg32_rtl_0|auto_generated|ram_block1a27\ : std_logic;
SIGNAL \bcoreg|regA[27]~4_combout\ : std_logic;
SIGNAL \alu|a32~43_combout\ : std_logic;
SIGNAL \alu|Mux4~7_combout\ : std_logic;
SIGNAL \alu|ShiftRight1~53_combout\ : std_logic;
SIGNAL \alu|ShiftRight1~51_combout\ : std_logic;
SIGNAL \alu|ShiftRight1~50_combout\ : std_logic;
SIGNAL \alu|ShiftRight1~52_combout\ : std_logic;
SIGNAL \alu|ShiftRight1~54_combout\ : std_logic;
SIGNAL \alu|ShiftRight1~76_combout\ : std_logic;
SIGNAL \alu|Add1~54_combout\ : std_logic;
SIGNAL \alu|Mux4~3_combout\ : std_logic;
SIGNAL \alu|tmp[27]~54_combout\ : std_logic;
SIGNAL \alu|Mux4~4_combout\ : std_logic;
SIGNAL \alu|Mux4~5_combout\ : std_logic;
SIGNAL \alu|Mux4~6_combout\ : std_logic;
SIGNAL \alu|Mux4~8_combout\ : std_logic;
SIGNAL \alu|Mux4~combout\ : std_logic;
SIGNAL \breg_data_mux|m_out[27]~13_combout\ : std_logic;
SIGNAL \bcoreg|breg32_rtl_1|auto_generated|ram_block1a30\ : std_logic;
SIGNAL \bcoreg|regB[30]~2_combout\ : std_logic;
SIGNAL \alu|ShiftRight1~24_combout\ : std_logic;
SIGNAL \alu|ShiftRight0~46_combout\ : std_logic;
SIGNAL \alu|ShiftRight0~80_combout\ : std_logic;
SIGNAL \alu|ShiftRight1~68_combout\ : std_logic;
SIGNAL \alu|ShiftRight1~69_combout\ : std_logic;
SIGNAL \alu|Add1~50_combout\ : std_logic;
SIGNAL \alu|Mux6~3_combout\ : std_logic;
SIGNAL \alu|tmp[25]~50_combout\ : std_logic;
SIGNAL \alu|Mux6~4_combout\ : std_logic;
SIGNAL \alu|Mux6~5_combout\ : std_logic;
SIGNAL \alu|Mux6~6_combout\ : std_logic;
SIGNAL \alu|Mux6~8_combout\ : std_logic;
SIGNAL \alu|Mux6~combout\ : std_logic;
SIGNAL \breg_data_mux|m_out[25]~15_combout\ : std_logic;
SIGNAL \bcoreg|breg32_rtl_0|auto_generated|ram_block1a24\ : std_logic;
SIGNAL \bcoreg|breg32_rtl_1_bypass[59]~feeder_combout\ : std_logic;
SIGNAL \bcoreg|regA[24]~7_combout\ : std_logic;
SIGNAL \pc|sr_out[24]~6_combout\ : std_logic;
SIGNAL \mux_ulaA|m_out[24]~7_combout\ : std_logic;
SIGNAL \mux_ulaB|m_out[24]~11_combout\ : std_logic;
SIGNAL \alu|Mux7~10_combout\ : std_logic;
SIGNAL \alu|ShiftRight0~78_combout\ : std_logic;
SIGNAL \alu|ShiftRight0~79_combout\ : std_logic;
SIGNAL \alu|tmp[24]~48_combout\ : std_logic;
SIGNAL \alu|Mux7~5_combout\ : std_logic;
SIGNAL \alu|ShiftRight0~16_combout\ : std_logic;
SIGNAL \alu|ShiftRight1~74_combout\ : std_logic;
SIGNAL \alu|Add1~48_combout\ : std_logic;
SIGNAL \alu|Mux7~6_combout\ : std_logic;
SIGNAL \alu|Mux7~7_combout\ : std_logic;
SIGNAL \alu|Mux7~8_combout\ : std_logic;
SIGNAL \alu|Mux7~9_combout\ : std_logic;
SIGNAL \alu|Mux7~11_combout\ : std_logic;
SIGNAL \alu|Mux7~combout\ : std_logic;
SIGNAL \breg_data_mux|m_out[24]~16_combout\ : std_logic;
SIGNAL \bcoreg|breg32_rtl_1|auto_generated|ram_block1a20\ : std_logic;
SIGNAL \bcoreg|regB[20]~12_combout\ : std_logic;
SIGNAL \mux_ulaB|m_out[20]~15_combout\ : std_logic;
SIGNAL \alu|tmp[20]~40_combout\ : std_logic;
SIGNAL \alu|Mux11~4_combout\ : std_logic;
SIGNAL \alu|Mux11~5_combout\ : std_logic;
SIGNAL \alu|ShiftLeft0~85_combout\ : std_logic;
SIGNAL \alu|ShiftLeft0~106_combout\ : std_logic;
SIGNAL \alu|ShiftLeft0~141_combout\ : std_logic;
SIGNAL \alu|ShiftLeft0~33_combout\ : std_logic;
SIGNAL \alu|ShiftLeft0~142_combout\ : std_logic;
SIGNAL \alu|Mux11~0_combout\ : std_logic;
SIGNAL \alu|Mux11~1_combout\ : std_logic;
SIGNAL \alu|Mux11~6_combout\ : std_logic;
SIGNAL \alu|Mux11~7_combout\ : std_logic;
SIGNAL \breg_data_mux|m_out[20]~20_combout\ : std_logic;
SIGNAL \bcoreg|breg32_rtl_1|auto_generated|ram_block1a6\ : std_logic;
SIGNAL \bcoreg|regB[6]~26_combout\ : std_logic;
SIGNAL \mux_ulaB|m_out[6]~40_combout\ : std_logic;
SIGNAL \mux_ulaB|m_out[6]~41_combout\ : std_logic;
SIGNAL \alu|tmp[1]~3\ : std_logic;
SIGNAL \alu|tmp[2]~5\ : std_logic;
SIGNAL \alu|tmp[3]~7\ : std_logic;
SIGNAL \alu|tmp[4]~9\ : std_logic;
SIGNAL \alu|tmp[5]~11\ : std_logic;
SIGNAL \alu|tmp[6]~13\ : std_logic;
SIGNAL \alu|tmp[7]~15\ : std_logic;
SIGNAL \alu|tmp[8]~17\ : std_logic;
SIGNAL \alu|tmp[9]~19\ : std_logic;
SIGNAL \alu|tmp[10]~21\ : std_logic;
SIGNAL \alu|tmp[11]~23\ : std_logic;
SIGNAL \alu|tmp[12]~25\ : std_logic;
SIGNAL \alu|tmp[13]~27\ : std_logic;
SIGNAL \alu|tmp[14]~29\ : std_logic;
SIGNAL \alu|tmp[15]~31\ : std_logic;
SIGNAL \alu|tmp[16]~33\ : std_logic;
SIGNAL \alu|tmp[17]~35\ : std_logic;
SIGNAL \alu|tmp[18]~37\ : std_logic;
SIGNAL \alu|tmp[19]~38_combout\ : std_logic;
SIGNAL \alu|Mux12~4_combout\ : std_logic;
SIGNAL \alu|ShiftRight0~54_combout\ : std_logic;
SIGNAL \alu|ShiftRight0~55_combout\ : std_logic;
SIGNAL \alu|ShiftRight0~56_combout\ : std_logic;
SIGNAL \alu|Mux12~5_combout\ : std_logic;
SIGNAL \alu|Mux12~6_combout\ : std_logic;
SIGNAL \alu|Mux12~7_combout\ : std_logic;
SIGNAL \breg_data_mux|m_out[19]~21_combout\ : std_logic;
SIGNAL \bcoreg|breg32_rtl_0|auto_generated|ram_block1a18\ : std_logic;
SIGNAL \bcoreg|regA[18]~13_combout\ : std_logic;
SIGNAL \alu|a32~34_combout\ : std_logic;
SIGNAL \alu|Mux13~0_combout\ : std_logic;
SIGNAL \alu|Mux13~1_combout\ : std_logic;
SIGNAL \alu|ShiftRight0~48_combout\ : std_logic;
SIGNAL \alu|ShiftRight1~34_combout\ : std_logic;
SIGNAL \alu|ShiftRight1~35_combout\ : std_logic;
SIGNAL \alu|ShiftRight0~49_combout\ : std_logic;
SIGNAL \alu|ShiftRight0~50_combout\ : std_logic;
SIGNAL \alu|ShiftRight0~51_combout\ : std_logic;
SIGNAL \alu|tmp[18]~36_combout\ : std_logic;
SIGNAL \alu|Add1~36_combout\ : std_logic;
SIGNAL \alu|ShiftRight1~36_combout\ : std_logic;
SIGNAL \alu|ShiftRight1~37_combout\ : std_logic;
SIGNAL \alu|ShiftRight1~38_combout\ : std_logic;
SIGNAL \alu|ShiftRight1~39_combout\ : std_logic;
SIGNAL \alu|Mux13~3_combout\ : std_logic;
SIGNAL \alu|Mux13~4_combout\ : std_logic;
SIGNAL \alu|Mux13~5_combout\ : std_logic;
SIGNAL \alu|Mux13~6_combout\ : std_logic;
SIGNAL \alu|Mux13~7_combout\ : std_logic;
SIGNAL \breg_data_mux|m_out[18]~22_combout\ : std_logic;
SIGNAL \bcoreg|breg32_rtl_1|auto_generated|ram_block1a16\ : std_logic;
SIGNAL \bcoreg|regB[16]~16_combout\ : std_logic;
SIGNAL \alu|ShiftLeft0~92_combout\ : std_logic;
SIGNAL \bcoreg|regB[17]~15_combout\ : std_logic;
SIGNAL \alu|ShiftLeft0~93_combout\ : std_logic;
SIGNAL \alu|ShiftLeft0~94_combout\ : std_logic;
SIGNAL \alu|ShiftLeft0~91_combout\ : std_logic;
SIGNAL \alu|ShiftLeft0~95_combout\ : std_logic;
SIGNAL \alu|ShiftLeft0~96_combout\ : std_logic;
SIGNAL \pc|sr_out[17]~13_combout\ : std_logic;
SIGNAL \alu|a32~61_combout\ : std_logic;
SIGNAL \alu|Mux14~4_combout\ : std_logic;
SIGNAL \alu|Mux14~5_combout\ : std_logic;
SIGNAL \alu|ShiftRight0~43_combout\ : std_logic;
SIGNAL \alu|ShiftRight0~40_combout\ : std_logic;
SIGNAL \alu|ShiftRight0~39_combout\ : std_logic;
SIGNAL \alu|ShiftRight0~41_combout\ : std_logic;
SIGNAL \alu|Mux22~3_combout\ : std_logic;
SIGNAL \alu|ShiftRight0~47_combout\ : std_logic;
SIGNAL \alu|Mux10~10_combout\ : std_logic;
SIGNAL \alu|tmp[17]~34_combout\ : std_logic;
SIGNAL \bcoreg|breg32_rtl_0|auto_generated|ram_block1a17\ : std_logic;
SIGNAL \bcoreg|regA[17]~14_combout\ : std_logic;
SIGNAL \mux_ulaA|m_out[17]~14_combout\ : std_logic;
SIGNAL \alu|Mux14~0_combout\ : std_logic;
SIGNAL \alu|ShiftRight1~26_combout\ : std_logic;
SIGNAL \alu|ShiftRight1~27_combout\ : std_logic;
SIGNAL \alu|ShiftRight1~28_combout\ : std_logic;
SIGNAL \alu|Add1~34_combout\ : std_logic;
SIGNAL \alu|Mux14~1_combout\ : std_logic;
SIGNAL \alu|Mux14~2_combout\ : std_logic;
SIGNAL \alu|Mux14~3_combout\ : std_logic;
SIGNAL \alu|Mux14~7_combout\ : std_logic;
SIGNAL \alu|Mux14~9_combout\ : std_logic;
SIGNAL \breg_data_mux|m_out[17]~23_combout\ : std_logic;
SIGNAL \bcoreg|breg32_rtl_0|auto_generated|ram_block1a16\ : std_logic;
SIGNAL \bcoreg|regA[16]~15_combout\ : std_logic;
SIGNAL \mux_ulaA|m_out[16]~15_combout\ : std_logic;
SIGNAL \alu|Add1~32_combout\ : std_logic;
SIGNAL \alu|ShiftRight0~17_combout\ : std_logic;
SIGNAL \alu|ShiftRight0~18_combout\ : std_logic;
SIGNAL \alu|Mux23~2_combout\ : std_logic;
SIGNAL \alu|ShiftRight0~21_combout\ : std_logic;
SIGNAL \alu|Mux15~4_combout\ : std_logic;
SIGNAL \alu|Mux15~7_combout\ : std_logic;
SIGNAL \alu|a32~60_combout\ : std_logic;
SIGNAL \alu|Mux15~0_combout\ : std_logic;
SIGNAL \alu|ShiftLeft0~89_combout\ : std_logic;
SIGNAL \alu|ShiftLeft0~49_combout\ : std_logic;
SIGNAL \alu|ShiftLeft0~50_combout\ : std_logic;
SIGNAL \alu|ShiftLeft0~87_combout\ : std_logic;
SIGNAL \alu|ShiftLeft0~88_combout\ : std_logic;
SIGNAL \alu|ShiftLeft0~90_combout\ : std_logic;
SIGNAL \alu|Mux15~1_combout\ : std_logic;
SIGNAL \alu|tmp[16]~32_combout\ : std_logic;
SIGNAL \alu|Mux15~2_combout\ : std_logic;
SIGNAL \alu|Mux15~3_combout\ : std_logic;
SIGNAL \alu|Mux30~15_combout\ : std_logic;
SIGNAL \alu|Mux15~5_combout\ : std_logic;
SIGNAL \alu|Mux15~6_combout\ : std_logic;
SIGNAL \alu|Mux15~8_combout\ : std_logic;
SIGNAL \breg_data_mux|m_out[16]~24_combout\ : std_logic;
SIGNAL \bcoreg|breg32_rtl_0|auto_generated|ram_block1a14\ : std_logic;
SIGNAL \bcoreg|regA[14]~19_combout\ : std_logic;
SIGNAL \mux_ulaA|m_out[14]~19_combout\ : std_logic;
SIGNAL \bcoreg|breg32_rtl_0|auto_generated|ram_block1a10\ : std_logic;
SIGNAL \bcoreg|regA[10]~23_combout\ : std_logic;
SIGNAL \pc|sr_out[10]~20_combout\ : std_logic;
SIGNAL \mux_ulaA|m_out[10]~23_combout\ : std_logic;
SIGNAL \mux_ulaA|m_out[9]~24_combout\ : std_logic;
SIGNAL \bcoreg|breg32_rtl_0|auto_generated|ram_block1a8\ : std_logic;
SIGNAL \bcoreg|regA[8]~25_combout\ : std_logic;
SIGNAL \mux_ulaA|m_out[8]~25_combout\ : std_logic;
SIGNAL \pc|sr_out[6]~24_combout\ : std_logic;
SIGNAL \mux_ulaA|m_out[6]~17_combout\ : std_logic;
SIGNAL \alu|Add1~1\ : std_logic;
SIGNAL \alu|Add1~3\ : std_logic;
SIGNAL \alu|Add1~5\ : std_logic;
SIGNAL \alu|Add1~7\ : std_logic;
SIGNAL \alu|Add1~9\ : std_logic;
SIGNAL \alu|Add1~11\ : std_logic;
SIGNAL \alu|Add1~13\ : std_logic;
SIGNAL \alu|Add1~15\ : std_logic;
SIGNAL \alu|Add1~17\ : std_logic;
SIGNAL \alu|Add1~19\ : std_logic;
SIGNAL \alu|Add1~21\ : std_logic;
SIGNAL \alu|Add1~23\ : std_logic;
SIGNAL \alu|Add1~25\ : std_logic;
SIGNAL \alu|Add1~27\ : std_logic;
SIGNAL \alu|Add1~29\ : std_logic;
SIGNAL \alu|Add1~30_combout\ : std_logic;
SIGNAL \alu|ShiftLeft0~25_combout\ : std_logic;
SIGNAL \alu|ShiftRight0~76_combout\ : std_logic;
SIGNAL \alu|ShiftRight1~59_combout\ : std_logic;
SIGNAL \alu|ShiftRight1~58_combout\ : std_logic;
SIGNAL \alu|ShiftRight1~60_combout\ : std_logic;
SIGNAL \alu|ShiftRight0~77_combout\ : std_logic;
SIGNAL \alu|Mux16~9_combout\ : std_logic;
SIGNAL \alu|Mux16~10_combout\ : std_logic;
SIGNAL \alu|Mux16~11_combout\ : std_logic;
SIGNAL \alu|Mux16~12_combout\ : std_logic;
SIGNAL \alu|tmp[15]~30_combout\ : std_logic;
SIGNAL \alu|Mux16~4_combout\ : std_logic;
SIGNAL \alu|Mux16~6_combout\ : std_logic;
SIGNAL \alu|Mux16~7_combout\ : std_logic;
SIGNAL \alu|Mux16~5_combout\ : std_logic;
SIGNAL \alu|Mux16~14_combout\ : std_logic;
SIGNAL \alu|Mux16~8_combout\ : std_logic;
SIGNAL \alu|Mux16~13_combout\ : std_logic;
SIGNAL \breg_data_mux|m_out[15]~26_combout\ : std_logic;
SIGNAL \bcoreg|breg32_rtl_1|auto_generated|ram_block1a27\ : std_logic;
SIGNAL \bcoreg|regB[27]~5_combout\ : std_logic;
SIGNAL \alu|ShiftRight0~14_combout\ : std_logic;
SIGNAL \alu|ShiftRight0~15_combout\ : std_logic;
SIGNAL \alu|ShiftRight0~62_combout\ : std_logic;
SIGNAL \alu|ShiftRight0~24_combout\ : std_logic;
SIGNAL \alu|ShiftRight0~63_combout\ : std_logic;
SIGNAL \alu|Mux19~10_combout\ : std_logic;
SIGNAL \alu|a32~56_combout\ : std_logic;
SIGNAL \alu|Mux19~7_combout\ : std_logic;
SIGNAL \alu|ShiftRight0~83_combout\ : std_logic;
SIGNAL \alu|Mux19~2_combout\ : std_logic;
SIGNAL \alu|ShiftRight1~70_combout\ : std_logic;
SIGNAL \alu|Mux29~6_combout\ : std_logic;
SIGNAL \alu|Mux19~3_combout\ : std_logic;
SIGNAL \alu|Mux29~10_combout\ : std_logic;
SIGNAL \alu|Mux19~4_combout\ : std_logic;
SIGNAL \alu|Mux19~5_combout\ : std_logic;
SIGNAL \alu|Mux19~6_combout\ : std_logic;
SIGNAL \alu|Mux19~8_combout\ : std_logic;
SIGNAL \alu|Mux19~9_combout\ : std_logic;
SIGNAL \alu|Mux19~11_combout\ : std_logic;
SIGNAL \breg_data_mux|m_out[12]~35_combout\ : std_logic;
SIGNAL \bcoreg|breg32_rtl_1|auto_generated|ram_block1a31\ : std_logic;
SIGNAL \bcoreg|breg32_rtl_1_bypass[73]~feeder_combout\ : std_logic;
SIGNAL \bcoreg|regB[31]~1_combout\ : std_logic;
SIGNAL \alu|ShiftRight0~82_combout\ : std_logic;
SIGNAL \alu|Mux20~2_combout\ : std_logic;
SIGNAL \alu|Add1~22_combout\ : std_logic;
SIGNAL \alu|Mux20~3_combout\ : std_logic;
SIGNAL \alu|tmp[11]~22_combout\ : std_logic;
SIGNAL \alu|Mux20~4_combout\ : std_logic;
SIGNAL \alu|Mux20~5_combout\ : std_logic;
SIGNAL \alu|Mux20~6_combout\ : std_logic;
SIGNAL \alu|Mux20~8_combout\ : std_logic;
SIGNAL \alu|Mux20~9_combout\ : std_logic;
SIGNAL \alu|Mux20~11_combout\ : std_logic;
SIGNAL \breg_data_mux|m_out[11]~36_combout\ : std_logic;
SIGNAL \bcoreg|breg32_rtl_1|auto_generated|ram_block1a3\ : std_logic;
SIGNAL \bcoreg|breg32_rtl_1_bypass[17]~feeder_combout\ : std_logic;
SIGNAL \bcoreg|regB[3]~29_combout\ : std_logic;
SIGNAL \mux_store|m_out[27]~53_combout\ : std_logic;
SIGNAL \mux_store|m_out[27]~54_combout\ : std_logic;
SIGNAL \bcoreg|breg32_rtl_0|auto_generated|ram_block1a0~portbdataout\ : std_logic;
SIGNAL \bcoreg|regA[0]~27_combout\ : std_logic;
SIGNAL \alu|ShiftRight0~86_combout\ : std_logic;
SIGNAL \alu|ShiftLeft0~57_combout\ : std_logic;
SIGNAL \alu|ShiftRight0~25_combout\ : std_logic;
SIGNAL \alu|ShiftLeft0~58_combout\ : std_logic;
SIGNAL \alu|ShiftLeft0~59_combout\ : std_logic;
SIGNAL \alu|ShiftLeft0~60_combout\ : std_logic;
SIGNAL \alu|Mux21~7_combout\ : std_logic;
SIGNAL \alu|ShiftRight0~81_combout\ : std_logic;
SIGNAL \alu|tmp[10]~20_combout\ : std_logic;
SIGNAL \alu|Add1~20_combout\ : std_logic;
SIGNAL \alu|ShiftRight1~75_combout\ : std_logic;
SIGNAL \alu|Mux21~3_combout\ : std_logic;
SIGNAL \alu|Mux21~4_combout\ : std_logic;
SIGNAL \alu|Mux21~5_combout\ : std_logic;
SIGNAL \alu|Mux21~6_combout\ : std_logic;
SIGNAL \alu|Mux21~8_combout\ : std_logic;
SIGNAL \alu|Mux21~9_combout\ : std_logic;
SIGNAL \alu|Mux21~11_combout\ : std_logic;
SIGNAL \breg_data_mux|m_out[10]~37_combout\ : std_logic;
SIGNAL \bcoreg|breg32_rtl_1|auto_generated|ram_block1a7\ : std_logic;
SIGNAL \bcoreg|regB[7]~25_combout\ : std_logic;
SIGNAL \mux_store|m_out[15]~35_combout\ : std_logic;
SIGNAL \mux_ulaB|m_out[4]~44_combout\ : std_logic;
SIGNAL \mux_ulaB|m_out[4]~45_combout\ : std_logic;
SIGNAL \alu|ShiftLeft0~39_combout\ : std_logic;
SIGNAL \alu|ShiftLeft0~40_combout\ : std_logic;
SIGNAL \alu|ShiftLeft0~41_combout\ : std_logic;
SIGNAL \alu|Mux25~11_combout\ : std_logic;
SIGNAL \alu|ShiftRight1~40_combout\ : std_logic;
SIGNAL \alu|ShiftRight1~41_combout\ : std_logic;
SIGNAL \alu|ShiftRight1~42_combout\ : std_logic;
SIGNAL \alu|Mux25~13_combout\ : std_logic;
SIGNAL \alu|Mux25~3_combout\ : std_logic;
SIGNAL \alu|Mux25~4_combout\ : std_logic;
SIGNAL \alu|ShiftRight0~70_combout\ : std_logic;
SIGNAL \alu|ShiftLeft0~42_combout\ : std_logic;
SIGNAL \alu|ShiftRight0~69_combout\ : std_logic;
SIGNAL \alu|ShiftRight0~71_combout\ : std_logic;
SIGNAL \alu|tmp[6]~12_combout\ : std_logic;
SIGNAL \alu|Mux25~5_combout\ : std_logic;
SIGNAL \alu|ShiftRight1~66_combout\ : std_logic;
SIGNAL \alu|Mux25~6_combout\ : std_logic;
SIGNAL \alu|Mux25~7_combout\ : std_logic;
SIGNAL \alu|Mux25~8_combout\ : std_logic;
SIGNAL \alu|Mux25~9_combout\ : std_logic;
SIGNAL \alu|Mux25~10_combout\ : std_logic;
SIGNAL \alu|Mux25~12_combout\ : std_logic;
SIGNAL \alu|Mux25~combout\ : std_logic;
SIGNAL \ctr_mips|pstate.writereg_st~regout\ : std_logic;
SIGNAL \ctr_mips|nstate.branch_ex_st~0_combout\ : std_logic;
SIGNAL \ctr_mips|unsig~0_combout\ : std_logic;
SIGNAL \breg_data_mux|m_out[3]~0_combout\ : std_logic;
SIGNAL \breg_data_mux|m_out[6]~28_combout\ : std_logic;
SIGNAL \breg_data_mux|m_out[6]~29_combout\ : std_logic;
SIGNAL \bcoreg|breg32_rtl_1|auto_generated|ram_block1a25\ : std_logic;
SIGNAL \bcoreg|regB[25]~7_combout\ : std_logic;
SIGNAL \mux_store|m_out[25]~49_combout\ : std_logic;
SIGNAL \mux_store|m_out[25]~50_combout\ : std_logic;
SIGNAL \ir|sr_out[22]~feeder_combout\ : std_logic;
SIGNAL \bcoreg|Equal0~0_combout\ : std_logic;
SIGNAL \bcoreg|Equal0~1_combout\ : std_logic;
SIGNAL \bcoreg|breg32_rtl_0|auto_generated|ram_block1a4\ : std_logic;
SIGNAL \bcoreg|regA[4]~0_combout\ : std_logic;
SIGNAL \alu|a32~48_combout\ : std_logic;
SIGNAL \alu|ShiftRight0~28_combout\ : std_logic;
SIGNAL \alu|ShiftRight1~18_combout\ : std_logic;
SIGNAL \alu|ShiftRight0~29_combout\ : std_logic;
SIGNAL \alu|Mux27~0_combout\ : std_logic;
SIGNAL \alu|Mux27~1_combout\ : std_logic;
SIGNAL \alu|Mux27~2_combout\ : std_logic;
SIGNAL \alu|Mux27~3_combout\ : std_logic;
SIGNAL \alu|Mux27~4_combout\ : std_logic;
SIGNAL \alu|Mux27~5_combout\ : std_logic;
SIGNAL \alu|Mux27~6_combout\ : std_logic;
SIGNAL \alu|Mux27~7_combout\ : std_logic;
SIGNAL \alu|Mux27~combout\ : std_logic;
SIGNAL \regULA|sr_out[4]~feeder_combout\ : std_logic;
SIGNAL \breg_data_mux|m_out[4]~6_combout\ : std_logic;
SIGNAL \breg_data_mux|m_out[4]~7_combout\ : std_logic;
SIGNAL \bcoreg|breg32_rtl_1|auto_generated|ram_block1a24\ : std_logic;
SIGNAL \bcoreg|regB[24]~8_combout\ : std_logic;
SIGNAL \alu|ShiftRight0~42_combout\ : std_logic;
SIGNAL \alu|ShiftRight1~30_combout\ : std_logic;
SIGNAL \alu|ShiftRight0~72_combout\ : std_logic;
SIGNAL \alu|Mux17~10_combout\ : std_logic;
SIGNAL \pc|sr_out[14]~16_combout\ : std_logic;
SIGNAL \alu|a32~58_combout\ : std_logic;
SIGNAL \alu|Mux17~7_combout\ : std_logic;
SIGNAL \alu|ShiftRight0~85_combout\ : std_logic;
SIGNAL \alu|ShiftRight1~72_combout\ : std_logic;
SIGNAL \alu|Add1~28_combout\ : std_logic;
SIGNAL \alu|Mux17~3_combout\ : std_logic;
SIGNAL \alu|tmp[14]~28_combout\ : std_logic;
SIGNAL \alu|Mux17~4_combout\ : std_logic;
SIGNAL \alu|Mux17~5_combout\ : std_logic;
SIGNAL \alu|Mux17~6_combout\ : std_logic;
SIGNAL \alu|Mux17~8_combout\ : std_logic;
SIGNAL \alu|Mux17~9_combout\ : std_logic;
SIGNAL \alu|Mux17~11_combout\ : std_logic;
SIGNAL \breg_data_mux|m_out[14]~33_combout\ : std_logic;
SIGNAL \bcoreg|breg32_rtl_1|auto_generated|ram_block1a14\ : std_logic;
SIGNAL \bcoreg|regB[14]~18_combout\ : std_logic;
SIGNAL \mux_store|m_out[14]~34_combout\ : std_logic;
SIGNAL \mux_byte|m_out[7]~0_combout\ : std_logic;
SIGNAL \mux_byte|m_out[7]~1_combout\ : std_logic;
SIGNAL \breg_data_mux|m_out[31]~8_combout\ : std_logic;
SIGNAL \breg_data_mux|m_out[31]~9_combout\ : std_logic;
SIGNAL \breg_data_mux|m_out[23]~17_combout\ : std_logic;
SIGNAL \bcoreg|breg32_rtl_1_bypass[57]~feeder_combout\ : std_logic;
SIGNAL \bcoreg|regB[23]~9_combout\ : std_logic;
SIGNAL \mux_store|m_out[23]~72_combout\ : std_logic;
SIGNAL \mux_store|m_out[17]~66_combout\ : std_logic;
SIGNAL \mux_store|m_out[23]~44_combout\ : std_logic;
SIGNAL \bcoreg|breg32_rtl_0|auto_generated|ram_block1a2\ : std_logic;
SIGNAL \bcoreg|regA[2]~29_combout\ : std_logic;
SIGNAL \mux_ulaA|m_out[2]~29_combout\ : std_logic;
SIGNAL \alu|ShiftRight1~61_combout\ : std_logic;
SIGNAL \alu|ShiftRight1~62_combout\ : std_logic;
SIGNAL \alu|ShiftRight0~58_combout\ : std_logic;
SIGNAL \alu|Mux29~18_combout\ : std_logic;
SIGNAL \alu|ShiftRight1~22_combout\ : std_logic;
SIGNAL \alu|ShiftRight1~56_combout\ : std_logic;
SIGNAL \alu|ShiftRight1~57_combout\ : std_logic;
SIGNAL \alu|Mux28~10_combout\ : std_logic;
SIGNAL \alu|ShiftRight1~21_combout\ : std_logic;
SIGNAL \alu|Mux28~11_combout\ : std_logic;
SIGNAL \alu|a32~47_combout\ : std_logic;
SIGNAL \alu|Mux28~7_combout\ : std_logic;
SIGNAL \alu|Mux28~2_combout\ : std_logic;
SIGNAL \alu|ShiftRight1~55_combout\ : std_logic;
SIGNAL \alu|Mux28~3_combout\ : std_logic;
SIGNAL \alu|Mux28~4_combout\ : std_logic;
SIGNAL \alu|Mux28~5_combout\ : std_logic;
SIGNAL \alu|Mux28~6_combout\ : std_logic;
SIGNAL \alu|Mux28~8_combout\ : std_logic;
SIGNAL \alu|Mux28~9_combout\ : std_logic;
SIGNAL \alu|Mux28~12_combout\ : std_logic;
SIGNAL \breg_data_mux|m_out[3]~43_combout\ : std_logic;
SIGNAL \bcoreg|breg32_rtl_1|auto_generated|ram_block1a15\ : std_logic;
SIGNAL \bcoreg|regB[15]~17_combout\ : std_logic;
SIGNAL \mux_ulaB|m_out[15]~22_combout\ : std_logic;
SIGNAL \mux_ulaB|m_out[15]~23_combout\ : std_logic;
SIGNAL \alu|ShiftLeft0~97_combout\ : std_logic;
SIGNAL \alu|ShiftLeft0~99_combout\ : std_logic;
SIGNAL \alu|ShiftLeft0~108_combout\ : std_logic;
SIGNAL \alu|ShiftLeft0~111_combout\ : std_logic;
SIGNAL \alu|ShiftLeft0~112_combout\ : std_logic;
SIGNAL \alu|ShiftLeft0~113_combout\ : std_logic;
SIGNAL \alu|a32~38_combout\ : std_logic;
SIGNAL \alu|Mux9~7_combout\ : std_logic;
SIGNAL \alu|Mux9~8_combout\ : std_logic;
SIGNAL \alu|Mux9~6_combout\ : std_logic;
SIGNAL \alu|Mux9~9_combout\ : std_logic;
SIGNAL \alu|Mux9~2_combout\ : std_logic;
SIGNAL \alu|Mux9~3_combout\ : std_logic;
SIGNAL \alu|tmp[22]~44_combout\ : std_logic;
SIGNAL \alu|Mux9~4_combout\ : std_logic;
SIGNAL \alu|Mux9~5_combout\ : std_logic;
SIGNAL \alu|Mux9~10_combout\ : std_logic;
SIGNAL \breg_data_mux|m_out[22]~18_combout\ : std_logic;
SIGNAL \bcoreg|breg32_rtl_1|auto_generated|ram_block1a22\ : std_logic;
SIGNAL \bcoreg|regB[22]~10_combout\ : std_logic;
SIGNAL \mux_store|m_out[22]~71_combout\ : std_logic;
SIGNAL \mux_store|m_out[22]~43_combout\ : std_logic;
SIGNAL \bcoreg|breg32_rtl_1|auto_generated|ram_block1a12\ : std_logic;
SIGNAL \bcoreg|regB[12]~20_combout\ : std_logic;
SIGNAL \mux_store|m_out[12]~32_combout\ : std_logic;
SIGNAL \mux_ulaA|m_out[5]~18_combout\ : std_logic;
SIGNAL \alu|ShiftRight0~67_combout\ : std_logic;
SIGNAL \alu|ShiftRight0~35_combout\ : std_logic;
SIGNAL \alu|ShiftRight0~68_combout\ : std_logic;
SIGNAL \alu|Mux18~10_combout\ : std_logic;
SIGNAL \bcoreg|regA[13]~20_combout\ : std_logic;
SIGNAL \alu|a32~57_combout\ : std_logic;
SIGNAL \alu|Mux18~7_combout\ : std_logic;
SIGNAL \alu|tmp[13]~26_combout\ : std_logic;
SIGNAL \alu|Mux18~2_combout\ : std_logic;
SIGNAL \alu|Add1~26_combout\ : std_logic;
SIGNAL \alu|Mux18~3_combout\ : std_logic;
SIGNAL \alu|Mux18~4_combout\ : std_logic;
SIGNAL \alu|Mux18~5_combout\ : std_logic;
SIGNAL \alu|Mux18~6_combout\ : std_logic;
SIGNAL \alu|Mux18~8_combout\ : std_logic;
SIGNAL \alu|Mux18~9_combout\ : std_logic;
SIGNAL \alu|Mux18~11_combout\ : std_logic;
SIGNAL \pc|sr_out[13]~17_combout\ : std_logic;
SIGNAL \mux_ulaA|m_out[13]~20_combout\ : std_logic;
SIGNAL \alu|ShiftLeft0~17_combout\ : std_logic;
SIGNAL \alu|ShiftLeft0~18_combout\ : std_logic;
SIGNAL \alu|ShiftLeft0~19_combout\ : std_logic;
SIGNAL \alu|Mux30~4_combout\ : std_logic;
SIGNAL \alu|Mux30~9_combout\ : std_logic;
SIGNAL \alu|Mux30~17_combout\ : std_logic;
SIGNAL \alu|ShiftRight0~30_combout\ : std_logic;
SIGNAL \alu|ShiftRight0~31_combout\ : std_logic;
SIGNAL \alu|ShiftRight0~36_combout\ : std_logic;
SIGNAL \alu|ShiftRight0~33_combout\ : std_logic;
SIGNAL \alu|ShiftRight0~34_combout\ : std_logic;
SIGNAL \alu|Mux22~2_combout\ : std_logic;
SIGNAL \alu|ShiftRight0~89_combout\ : std_logic;
SIGNAL \alu|ShiftRight0~37_combout\ : std_logic;
SIGNAL \alu|ShiftRight0~38_combout\ : std_logic;
SIGNAL \alu|ShiftRight0~90_combout\ : std_logic;
SIGNAL \alu|Mux30~10_combout\ : std_logic;
SIGNAL \alu|Mux30~11_combout\ : std_logic;
SIGNAL \alu|Add1~2_combout\ : std_logic;
SIGNAL \alu|Mux30~12_combout\ : std_logic;
SIGNAL \alu|Mux30~13_combout\ : std_logic;
SIGNAL \alu|Mux30~14_combout\ : std_logic;
SIGNAL \breg_data_mux|m_out[1]~49_combout\ : std_logic;
SIGNAL \bcoreg|breg32_rtl_0|auto_generated|ram_block1a1\ : std_logic;
SIGNAL \bcoreg|regA[1]~30_combout\ : std_logic;
SIGNAL \alu|ShiftRight1~73_combout\ : std_logic;
SIGNAL \alu|ShiftLeft0~80_combout\ : std_logic;
SIGNAL \alu|ShiftLeft0~81_combout\ : std_logic;
SIGNAL \alu|ShiftLeft0~82_combout\ : std_logic;
SIGNAL \alu|ShiftLeft0~47_combout\ : std_logic;
SIGNAL \alu|ShiftLeft0~48_combout\ : std_logic;
SIGNAL \alu|Mux8~4_combout\ : std_logic;
SIGNAL \alu|Mux8~5_combout\ : std_logic;
SIGNAL \alu|Mux8~7_combout\ : std_logic;
SIGNAL \alu|ShiftRight1~67_combout\ : std_logic;
SIGNAL \alu|Add1~46_combout\ : std_logic;
SIGNAL \alu|Mux8~1_combout\ : std_logic;
SIGNAL \alu|tmp[23]~46_combout\ : std_logic;
SIGNAL \alu|Mux8~2_combout\ : std_logic;
SIGNAL \alu|ShiftRight0~74_combout\ : std_logic;
SIGNAL \alu|ShiftRight0~75_combout\ : std_logic;
SIGNAL \alu|Mux8~3_combout\ : std_logic;
SIGNAL \alu|Mux8~8_combout\ : std_logic;
SIGNAL \pc|sr_out[23]~7_combout\ : std_logic;
SIGNAL \mux_ulaA|m_out[23]~8_combout\ : std_logic;
SIGNAL \alu|ShiftLeft0~13_combout\ : std_logic;
SIGNAL \alu|ShiftLeft0~12_combout\ : std_logic;
SIGNAL \bcoreg|breg32_rtl_0|auto_generated|ram_block1a21\ : std_logic;
SIGNAL \bcoreg|regA[21]~10_combout\ : std_logic;
SIGNAL \mux_ulaA|m_out[21]~10_combout\ : std_logic;
SIGNAL \alu|ShiftLeft0~14_combout\ : std_logic;
SIGNAL \alu|ShiftLeft0~16_combout\ : std_logic;
SIGNAL \alu|Mux10~20_combout\ : std_logic;
SIGNAL \alu|ShiftLeft0~34_combout\ : std_logic;
SIGNAL \alu|ShiftLeft0~38_combout\ : std_logic;
SIGNAL \alu|a32~37_combout\ : std_logic;
SIGNAL \alu|Mux10~12_combout\ : std_logic;
SIGNAL \alu|Mux10~13_combout\ : std_logic;
SIGNAL \alu|ShiftRight0~65_combout\ : std_logic;
SIGNAL \alu|ShiftRight0~64_combout\ : std_logic;
SIGNAL \alu|ShiftRight0~66_combout\ : std_logic;
SIGNAL \alu|ShiftRight1~65_combout\ : std_logic;
SIGNAL \alu|Add1~42_combout\ : std_logic;
SIGNAL \alu|Mux10~15_combout\ : std_logic;
SIGNAL \alu|tmp[21]~42_combout\ : std_logic;
SIGNAL \alu|Mux10~16_combout\ : std_logic;
SIGNAL \alu|Mux10~17_combout\ : std_logic;
SIGNAL \alu|Mux10~18_combout\ : std_logic;
SIGNAL \alu|Mux10~19_combout\ : std_logic;
SIGNAL \breg_data_mux|m_out[21]~19_combout\ : std_logic;
SIGNAL \bcoreg|breg32_rtl_1_bypass[53]~feeder_combout\ : std_logic;
SIGNAL \bcoreg|breg32_rtl_1|auto_generated|ram_block1a21\ : std_logic;
SIGNAL \bcoreg|regB[21]~11_combout\ : std_logic;
SIGNAL \mux_store|m_out[21]~70_combout\ : std_logic;
SIGNAL \mux_store|m_out[21]~42_combout\ : std_logic;
SIGNAL \bcoreg|breg32_rtl_1|auto_generated|ram_block1a11\ : std_logic;
SIGNAL \bcoreg|regB[11]~21_combout\ : std_logic;
SIGNAL \mux_store|m_out[11]~31_combout\ : std_logic;
SIGNAL \mux_reg_add|m_out[4]~4_combout\ : std_logic;
SIGNAL \bcoreg|breg32_rtl_1|auto_generated|ram_block1a10\ : std_logic;
SIGNAL \bcoreg|regB[10]~22_combout\ : std_logic;
SIGNAL \mux_store|m_out[10]~30_combout\ : std_logic;
SIGNAL \mux_reg_add|m_out[3]~3_combout\ : std_logic;
SIGNAL \bcoreg|breg32_rtl_1|auto_generated|ram_block1a4\ : std_logic;
SIGNAL \bcoreg|regB[4]~28_combout\ : std_logic;
SIGNAL \mux_store|m_out[20]~41_combout\ : std_logic;
SIGNAL \ir|sr_out[17]~feeder_combout\ : std_logic;
SIGNAL \mux_reg_add|m_out[1]~1_combout\ : std_logic;
SIGNAL \bcoreg|breg32_rtl_1|auto_generated|ram_block1a19\ : std_logic;
SIGNAL \bcoreg|regB[19]~13_combout\ : std_logic;
SIGNAL \mux_store|m_out[19]~68_combout\ : std_logic;
SIGNAL \mux_store|m_out[19]~40_combout\ : std_logic;
SIGNAL \mux_reg_add|m_out[2]~2_combout\ : std_logic;
SIGNAL \bcoreg|breg32_rtl_0_bypass[5]~feeder_combout\ : std_logic;
SIGNAL \bcoreg|breg32~39_combout\ : std_logic;
SIGNAL \bcoreg|breg32_rtl_0_bypass[12]~feeder_combout\ : std_logic;
SIGNAL \bcoreg|breg32_rtl_0_bypass[1]~feeder_combout\ : std_logic;
SIGNAL \bcoreg|breg32~38_combout\ : std_logic;
SIGNAL \bcoreg|breg32~45\ : std_logic;
SIGNAL \bcoreg|breg32_rtl_1|auto_generated|ram_block1a18\ : std_logic;
SIGNAL \bcoreg|regB[18]~14_combout\ : std_logic;
SIGNAL \mux_store|m_out[18]~67_combout\ : std_logic;
SIGNAL \mux_store|m_out[18]~39_combout\ : std_logic;
SIGNAL \bcoreg|breg32~42_combout\ : std_logic;
SIGNAL \bcoreg|breg32_rtl_0_bypass[9]~feeder_combout\ : std_logic;
SIGNAL \ctr_mips|Mux8~0_combout\ : std_logic;
SIGNAL \ctr_mips|nstate.arith_imm_st~0_combout\ : std_logic;
SIGNAL \ctr_mips|pstate.arith_imm_st~regout\ : std_logic;
SIGNAL \ctr_mips|WideOr1~0_combout\ : std_logic;
SIGNAL \bcoreg|breg32~43_combout\ : std_logic;
SIGNAL \bcoreg|breg32~combout\ : std_logic;
SIGNAL \bcoreg|breg32_rtl_0|auto_generated|ram_block1a5\ : std_logic;
SIGNAL \bcoreg|regA[5]~18_combout\ : std_logic;
SIGNAL \rgA|sr_out[5]~feeder_combout\ : std_logic;
SIGNAL \alu|a32~49_combout\ : std_logic;
SIGNAL \alu|Mux26~0_combout\ : std_logic;
SIGNAL \alu|Mux26~1_combout\ : std_logic;
SIGNAL \alu|Mux26~2_combout\ : std_logic;
SIGNAL \alu|Mux26~3_combout\ : std_logic;
SIGNAL \alu|Mux26~4_combout\ : std_logic;
SIGNAL \alu|Mux26~5_combout\ : std_logic;
SIGNAL \alu|Mux26~7_combout\ : std_logic;
SIGNAL \alu|Mux26~combout\ : std_logic;
SIGNAL \regULA|sr_out[5]~feeder_combout\ : std_logic;
SIGNAL \breg_data_mux|m_out[5]~32_combout\ : std_logic;
SIGNAL \bcoreg|breg32_rtl_1_bypass[21]~feeder_combout\ : std_logic;
SIGNAL \bcoreg|breg32_rtl_1|auto_generated|ram_block1a5\ : std_logic;
SIGNAL \bcoreg|regB[5]~27_combout\ : std_logic;
SIGNAL \mux_store|m_out[5]~25_combout\ : std_logic;
SIGNAL \breg_data_mux|m_out[2]~45_combout\ : std_logic;
SIGNAL \breg_data_mux|m_out[2]~46_combout\ : std_logic;
SIGNAL \bcoreg|breg32_rtl_1_bypass[15]~feeder_combout\ : std_logic;
SIGNAL \bcoreg|regB[2]~30_combout\ : std_logic;
SIGNAL \mux_store|m_out[2]~22_combout\ : std_logic;
SIGNAL \mux_reg_add|m_out[0]~0_combout\ : std_logic;
SIGNAL \bcoreg|breg32_rtl_1|auto_generated|ram_block1a1\ : std_logic;
SIGNAL \bcoreg|regB[1]~31_combout\ : std_logic;
SIGNAL \mux_store|m_out[17]~38_combout\ : std_logic;
SIGNAL \ctr_mips|Equal2~0_combout\ : std_logic;
SIGNAL \b_enab|byteenable[0]~8_combout\ : std_logic;
SIGNAL \b_enab|byteenable[0]~13_combout\ : std_logic;
SIGNAL \actr|alu_ctr~8_combout\ : std_logic;
SIGNAL \actr|alu_ctr[0]~15_combout\ : std_logic;
SIGNAL \actr|alu_ctr[0]~16_combout\ : std_logic;
SIGNAL \alu|Mux3~0_combout\ : std_logic;
SIGNAL \alu|Mux3~1_combout\ : std_logic;
SIGNAL \alu|tmp[28]~56_combout\ : std_logic;
SIGNAL \alu|Add1~56_combout\ : std_logic;
SIGNAL \alu|Mux3~7_combout\ : std_logic;
SIGNAL \alu|Mux3~8_combout\ : std_logic;
SIGNAL \alu|Mux3~9_combout\ : std_logic;
SIGNAL \alu|ShiftLeft0~66_combout\ : std_logic;
SIGNAL \alu|ShiftLeft0~67_combout\ : std_logic;
SIGNAL \alu|ShiftLeft0~126_combout\ : std_logic;
SIGNAL \alu|Mux3~2_combout\ : std_logic;
SIGNAL \alu|ShiftLeft0~125_combout\ : std_logic;
SIGNAL \alu|Mux3~3_combout\ : std_logic;
SIGNAL \alu|Mux3~5_combout\ : std_logic;
SIGNAL \alu|Mux3~10_combout\ : std_logic;
SIGNAL \alu|Equal0~0_combout\ : std_logic;
SIGNAL \alu|Equal0~1_combout\ : std_logic;
SIGNAL \alu|Equal0~2_combout\ : std_logic;
SIGNAL \alu|Equal0~3_combout\ : std_logic;
SIGNAL \alu|Equal0~7_combout\ : std_logic;
SIGNAL \alu|Equal0~8_combout\ : std_logic;
SIGNAL \alu|Equal0~9_combout\ : std_logic;
SIGNAL \pc_wr_s~0_combout\ : std_logic;
SIGNAL \pc|sr_out[0]~26_combout\ : std_logic;
SIGNAL \mux_ulaA|m_out[0]~27_combout\ : std_logic;
SIGNAL \alu|ShiftLeft0~20_combout\ : std_logic;
SIGNAL \alu|Mux31~0_combout\ : std_logic;
SIGNAL \alu|Mux31~1_combout\ : std_logic;
SIGNAL \alu|ShiftRight0~26_combout\ : std_logic;
SIGNAL \alu|ShiftRight0~27_combout\ : std_logic;
SIGNAL \alu|ShiftRight1~17_combout\ : std_logic;
SIGNAL \alu|ShiftRight1~19_combout\ : std_logic;
SIGNAL \alu|ShiftRight1~13_combout\ : std_logic;
SIGNAL \alu|ShiftRight1~20_combout\ : std_logic;
SIGNAL \alu|Mux31~6_combout\ : std_logic;
SIGNAL \alu|Mux31~4_combout\ : std_logic;
SIGNAL \alu|Add1~59\ : std_logic;
SIGNAL \alu|Add1~61\ : std_logic;
SIGNAL \alu|Add1~62_combout\ : std_logic;
SIGNAL \alu|Mux31~10_combout\ : std_logic;
SIGNAL \alu|Mux31~9_combout\ : std_logic;
SIGNAL \alu|Mux0~5_combout\ : std_logic;
SIGNAL \alu|Mux0~6_combout\ : std_logic;
SIGNAL \alu|Mux0~7_combout\ : std_logic;
SIGNAL \alu|Mux0~2_combout\ : std_logic;
SIGNAL \alu|Mux0~3_combout\ : std_logic;
SIGNAL \alu|ShiftLeft0~79_combout\ : std_logic;
SIGNAL \alu|ShiftLeft0~135_combout\ : std_logic;
SIGNAL \alu|ShiftLeft0~137_combout\ : std_logic;
SIGNAL \alu|ShiftLeft0~138_combout\ : std_logic;
SIGNAL \alu|ShiftLeft0~139_combout\ : std_logic;
SIGNAL \alu|ShiftLeft0~115_combout\ : std_logic;
SIGNAL \alu|ShiftLeft0~116_combout\ : std_logic;
SIGNAL \alu|Mux0~0_combout\ : std_logic;
SIGNAL \alu|Mux0~1_combout\ : std_logic;
SIGNAL \alu|Mux0~4_combout\ : std_logic;
SIGNAL \alu|Mux0~8_combout\ : std_logic;
SIGNAL \pc|sr_out~33_combout\ : std_logic;
SIGNAL \bcoreg|breg32_rtl_0|auto_generated|ram_block1a31\ : std_logic;
SIGNAL \bcoreg|regA[31]~31_combout\ : std_logic;
SIGNAL \mux_ulaA|m_out[31]~31_combout\ : std_logic;
SIGNAL \alu|tmp[30]~61\ : std_logic;
SIGNAL \alu|tmp[31]~62_combout\ : std_logic;
SIGNAL \alu|tmp[0]~0_combout\ : std_logic;
SIGNAL \alu|Mux31~3_combout\ : std_logic;
SIGNAL \alu|Mux31~5_combout\ : std_logic;
SIGNAL \alu|Mux31~7_combout\ : std_logic;
SIGNAL \alu|Mux31~8_combout\ : std_logic;
SIGNAL \breg_data_mux|m_out[3]~1_combout\ : std_logic;
SIGNAL \breg_data_mux|m_out[0]~2_combout\ : std_logic;
SIGNAL \breg_data_mux|m_out[0]~3_combout\ : std_logic;
SIGNAL \breg_data_mux|m_out[0]~4_combout\ : std_logic;
SIGNAL \bcoreg|breg32_rtl_0|auto_generated|ram_block1a3\ : std_logic;
SIGNAL \bcoreg|regA[3]~28_combout\ : std_logic;
SIGNAL \mux_ulaA|m_out[3]~28_combout\ : std_logic;
SIGNAL \alu|Mux22~12_combout\ : std_logic;
SIGNAL \bcoreg|breg32_rtl_0|auto_generated|ram_block1a9\ : std_logic;
SIGNAL \bcoreg|regA[9]~24_combout\ : std_logic;
SIGNAL \alu|a32~53_combout\ : std_logic;
SIGNAL \alu|Mux22~9_combout\ : std_logic;
SIGNAL \alu|tmp[9]~18_combout\ : std_logic;
SIGNAL \alu|Mux22~4_combout\ : std_logic;
SIGNAL \alu|Mux22~5_combout\ : std_logic;
SIGNAL \alu|Mux22~6_combout\ : std_logic;
SIGNAL \alu|Mux22~7_combout\ : std_logic;
SIGNAL \alu|Mux22~8_combout\ : std_logic;
SIGNAL \alu|Mux22~10_combout\ : std_logic;
SIGNAL \alu|Mux22~11_combout\ : std_logic;
SIGNAL \alu|Mux22~13_combout\ : std_logic;
SIGNAL \pc|sr_out[9]~21_combout\ : std_logic;
SIGNAL \mux_mem|m_out[9]~7_combout\ : std_logic;
SIGNAL \mux_mem|m_out[8]~6_combout\ : std_logic;
SIGNAL \ctr_mips|nstate.branch_ex_st~1_combout\ : std_logic;
SIGNAL \ctr_mips|pstate.branch_ex_st~regout\ : std_logic;
SIGNAL \pc|sr_out[7]~23_combout\ : std_logic;
SIGNAL \mux_mem|m_out[7]~5_combout\ : std_logic;
SIGNAL \ctr_mips|nstate.rtype_ex_st~3_combout\ : std_logic;
SIGNAL \ctr_mips|pstate.rtype_ex_st~regout\ : std_logic;
SIGNAL \actr|alu_ctr~2_combout\ : std_logic;
SIGNAL \alu|Mux10~6_combout\ : std_logic;
SIGNAL \alu|Mux10~7_combout\ : std_logic;
SIGNAL \alu|Mux10~8_combout\ : std_logic;
SIGNAL \alu|Mux25~2_combout\ : std_logic;
SIGNAL \alu|Mux23~11_combout\ : std_logic;
SIGNAL \alu|a32~52_combout\ : std_logic;
SIGNAL \alu|Mux23~8_combout\ : std_logic;
SIGNAL \alu|Add1~16_combout\ : std_logic;
SIGNAL \alu|Mux23~4_combout\ : std_logic;
SIGNAL \alu|Mux23~5_combout\ : std_logic;
SIGNAL \alu|Mux23~6_combout\ : std_logic;
SIGNAL \alu|Mux23~7_combout\ : std_logic;
SIGNAL \alu|Mux23~9_combout\ : std_logic;
SIGNAL \alu|Mux23~10_combout\ : std_logic;
SIGNAL \alu|Mux23~12_combout\ : std_logic;
SIGNAL \mux_mem|m_out[6]~4_combout\ : std_logic;
SIGNAL \ctr_mips|Mux5~1_combout\ : std_logic;
SIGNAL \ctr_mips|Mux5~0_combout\ : std_logic;
SIGNAL \ctr_mips|Mux5~2_combout\ : std_logic;
SIGNAL \ctr_mips|nstate.c_mem_add_st~0_combout\ : std_logic;
SIGNAL \ctr_mips|pstate.c_mem_add_st~regout\ : std_logic;
SIGNAL \ctr_mips|WideNor0~0_combout\ : std_logic;
SIGNAL \ctr_mips|Mux0~0_combout\ : std_logic;
SIGNAL \ctr_mips|Selector0~0_combout\ : std_logic;
SIGNAL \ctr_mips|Selector0~1_combout\ : std_logic;
SIGNAL \ctr_mips|Selector0~2_combout\ : std_logic;
SIGNAL \ctr_mips|pstate.fetch_st~regout\ : std_logic;
SIGNAL \mux_ulaB|m_out[0]~18_combout\ : std_logic;
SIGNAL \mux_ulaB|m_out[7]~38_combout\ : std_logic;
SIGNAL \mux_ulaB|m_out[7]~39_combout\ : std_logic;
SIGNAL \alu|a32~51_combout\ : std_logic;
SIGNAL \alu|Mux24~6_combout\ : std_logic;
SIGNAL \alu|tmp[7]~14_combout\ : std_logic;
SIGNAL \alu|Add1~14_combout\ : std_logic;
SIGNAL \alu|Mux24~1_combout\ : std_logic;
SIGNAL \alu|Mux24~2_combout\ : std_logic;
SIGNAL \alu|Mux24~3_combout\ : std_logic;
SIGNAL \alu|Mux24~4_combout\ : std_logic;
SIGNAL \alu|Mux24~5_combout\ : std_logic;
SIGNAL \alu|Mux24~7_combout\ : std_logic;
SIGNAL \alu|Mux24~combout\ : std_logic;
SIGNAL \regULA|sr_out[7]~feeder_combout\ : std_logic;
SIGNAL \mux_mem|m_out[5]~3_combout\ : std_logic;
SIGNAL \ctr_mips|Mux7~0_combout\ : std_logic;
SIGNAL \ctr_mips|nstate.writemem_st~0_combout\ : std_logic;
SIGNAL \ctr_mips|pstate.writemem_st~regout\ : std_logic;
SIGNAL \mux_mem|m_out[4]~2_combout\ : std_logic;
SIGNAL \ctr_mips|Mux6~0_combout\ : std_logic;
SIGNAL \ctr_mips|nstate.readmem_st~0_combout\ : std_logic;
SIGNAL \ctr_mips|pstate.readmem_st~regout\ : std_logic;
SIGNAL \mux_mem|m_out[3]~1_combout\ : std_logic;
SIGNAL \actr|alu_ctr[3]~20_combout\ : std_logic;
SIGNAL \actr|alu_ctr[3]~19_combout\ : std_logic;
SIGNAL \actr|alu_ctr[3]~18_combout\ : std_logic;
SIGNAL \actr|alu_ctr[3]~21_combout\ : std_logic;
SIGNAL \alu|Mux29~15_combout\ : std_logic;
SIGNAL \alu|tmp[2]~4_combout\ : std_logic;
SIGNAL \alu|Add1~4_combout\ : std_logic;
SIGNAL \alu|Mux29~8_combout\ : std_logic;
SIGNAL \alu|Mux29~11_combout\ : std_logic;
SIGNAL \alu|Mux29~12_combout\ : std_logic;
SIGNAL \alu|Mux29~13_combout\ : std_logic;
SIGNAL \alu|Mux29~16_combout\ : std_logic;
SIGNAL \alu|Mux29~17_combout\ : std_logic;
SIGNAL \alu|Mux29~21_combout\ : std_logic;
SIGNAL \pc|sr_out[2]~0_combout\ : std_logic;
SIGNAL \mux_mem|m_out[2]~0_combout\ : std_logic;
SIGNAL \mux_store|m_out[16]~36_combout\ : std_logic;
SIGNAL \mux_store|m_out[16]~37_combout\ : std_logic;
SIGNAL \ir|sr_out[19]~feeder_combout\ : std_logic;
SIGNAL \bcoreg|Equal1~0_combout\ : std_logic;
SIGNAL \bcoreg|Equal1~1_combout\ : std_logic;
SIGNAL \bcoreg|breg32_rtl_1|auto_generated|ram_block1a0~portbdataout\ : std_logic;
SIGNAL \bcoreg|regB[0]~0_combout\ : std_logic;
SIGNAL \mux_store|m_out[0]~20_combout\ : std_logic;
SIGNAL \data~0_combout\ : std_logic;
SIGNAL \data~1_combout\ : std_logic;
SIGNAL \data~2_combout\ : std_logic;
SIGNAL \data~3_combout\ : std_logic;
SIGNAL \data~4_combout\ : std_logic;
SIGNAL \data~5_combout\ : std_logic;
SIGNAL \data~6_combout\ : std_logic;
SIGNAL \data~7_combout\ : std_logic;
SIGNAL \data~8_combout\ : std_logic;
SIGNAL \data~9_combout\ : std_logic;
SIGNAL \data~10_combout\ : std_logic;
SIGNAL \data~11_combout\ : std_logic;
SIGNAL \data~12_combout\ : std_logic;
SIGNAL \data~13_combout\ : std_logic;
SIGNAL \data~14_combout\ : std_logic;
SIGNAL \data~15_combout\ : std_logic;
SIGNAL \data~16_combout\ : std_logic;
SIGNAL \data~17_combout\ : std_logic;
SIGNAL \data~18_combout\ : std_logic;
SIGNAL \data~19_combout\ : std_logic;
SIGNAL \data~20_combout\ : std_logic;
SIGNAL \data~21_combout\ : std_logic;
SIGNAL \data~22_combout\ : std_logic;
SIGNAL \data~23_combout\ : std_logic;
SIGNAL \data~24_combout\ : std_logic;
SIGNAL \data~25_combout\ : std_logic;
SIGNAL \data~26_combout\ : std_logic;
SIGNAL \data~27_combout\ : std_logic;
SIGNAL \data~28_combout\ : std_logic;
SIGNAL \data~29_combout\ : std_logic;
SIGNAL \data~30_combout\ : std_logic;
SIGNAL \data~31_combout\ : std_logic;
SIGNAL \pc|sr_out[16]~14_combout\ : std_logic;
SIGNAL \data~32_combout\ : std_logic;
SIGNAL \data~33_combout\ : std_logic;
SIGNAL \data~34_combout\ : std_logic;
SIGNAL \data~35_combout\ : std_logic;
SIGNAL \data~36_combout\ : std_logic;
SIGNAL \data~37_combout\ : std_logic;
SIGNAL \pc|sr_out[19]~11_combout\ : std_logic;
SIGNAL \data~38_combout\ : std_logic;
SIGNAL \data~39_combout\ : std_logic;
SIGNAL \pc|sr_out[20]~10_combout\ : std_logic;
SIGNAL \data~40_combout\ : std_logic;
SIGNAL \data~41_combout\ : std_logic;
SIGNAL \pc|sr_out[21]~9_combout\ : std_logic;
SIGNAL \data~42_combout\ : std_logic;
SIGNAL \data~43_combout\ : std_logic;
SIGNAL \data~44_combout\ : std_logic;
SIGNAL \data~45_combout\ : std_logic;
SIGNAL \data~46_combout\ : std_logic;
SIGNAL \data~47_combout\ : std_logic;
SIGNAL \data~48_combout\ : std_logic;
SIGNAL \data~49_combout\ : std_logic;
SIGNAL \data~50_combout\ : std_logic;
SIGNAL \data~51_combout\ : std_logic;
SIGNAL \bcoreg|breg32_rtl_0|auto_generated|ram_block1a26\ : std_logic;
SIGNAL \bcoreg|regA[26]~5_combout\ : std_logic;
SIGNAL \alu|a32~42_combout\ : std_logic;
SIGNAL \mux_ulaA|m_out[26]~5_combout\ : std_logic;
SIGNAL \alu|Mux5~2_combout\ : std_logic;
SIGNAL \alu|Add1~52_combout\ : std_logic;
SIGNAL \alu|Mux5~3_combout\ : std_logic;
SIGNAL \alu|tmp[26]~52_combout\ : std_logic;
SIGNAL \alu|Mux5~4_combout\ : std_logic;
SIGNAL \alu|Mux5~5_combout\ : std_logic;
SIGNAL \alu|Mux5~6_combout\ : std_logic;
SIGNAL \alu|Mux5~8_combout\ : std_logic;
SIGNAL \alu|Mux5~combout\ : std_logic;
SIGNAL \pc|sr_out[26]~4_combout\ : std_logic;
SIGNAL \data~52_combout\ : std_logic;
SIGNAL \data~53_combout\ : std_logic;
SIGNAL \data~54_combout\ : std_logic;
SIGNAL \data~55_combout\ : std_logic;
SIGNAL \data~56_combout\ : std_logic;
SIGNAL \data~57_combout\ : std_logic;
SIGNAL \data~58_combout\ : std_logic;
SIGNAL \data~59_combout\ : std_logic;
SIGNAL \data~60_combout\ : std_logic;
SIGNAL \data~61_combout\ : std_logic;
SIGNAL \data~62_combout\ : std_logic;
SIGNAL \data~63_combout\ : std_logic;
SIGNAL \mem|altsyncram_component|auto_generated|q_a\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \debug~combout\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \rdm|sr_out\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \bcoreg|breg32_rtl_1_bypass\ : std_logic_vector(0 TO 74);
SIGNAL \bcoreg|breg32_rtl_0_bypass\ : std_logic_vector(0 TO 74);
SIGNAL \ir|sr_out\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \rgA|sr_out\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \rgB|sr_out\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \regULA|sr_out\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \pc|sr_out\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \ctr_mips|ALT_INV_pstate.fetch_st~_wirecell_combout\ : std_logic;
SIGNAL \ctr_mips|ALT_INV_pstate.fetch_st~regout\ : std_logic;

BEGIN

ww_clk <= clk;
ww_clk_rom <= clk_rom;
ww_rst <= rst;
ww_debug <= debug;
data <= ww_data;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\mem|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\ <= (\mux_store|m_out[15]~35_combout\ & \mux_store|m_out[14]~34_combout\ & \mux_store|m_out[13]~33_combout\ & \mux_store|m_out[12]~32_combout\ & \mux_store|m_out[11]~31_combout\ & 
\mux_store|m_out[10]~30_combout\ & \mux_store|m_out[9]~29_combout\ & \mux_store|m_out[8]~28_combout\ & \mux_store|m_out[7]~27_combout\ & \mux_store|m_out[6]~26_combout\ & \mux_store|m_out[5]~25_combout\ & \mux_store|m_out[4]~24_combout\ & 
\mux_store|m_out[3]~23_combout\ & \mux_store|m_out[2]~22_combout\ & \mux_store|m_out[1]~21_combout\ & \mux_store|m_out[0]~20_combout\);

\mem|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\mux_mem|m_out[9]~7_combout\ & \mux_mem|m_out[8]~6_combout\ & \mux_mem|m_out[7]~5_combout\ & \mux_mem|m_out[6]~4_combout\ & \mux_mem|m_out[5]~3_combout\ & 
\mux_mem|m_out[4]~2_combout\ & \mux_mem|m_out[3]~1_combout\ & \mux_mem|m_out[2]~0_combout\);

\mem|altsyncram_component|auto_generated|ram_block1a0_PORTABYTEENAMASKS_bus\ <= (\b_enab|byteenable[1]~10_combout\ & \b_enab|byteenable[0]~13_combout\);

\mem|altsyncram_component|auto_generated|q_a\(0) <= \mem|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(0);
\mem|altsyncram_component|auto_generated|q_a\(1) <= \mem|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(1);
\mem|altsyncram_component|auto_generated|q_a\(2) <= \mem|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(2);
\mem|altsyncram_component|auto_generated|q_a\(3) <= \mem|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(3);
\mem|altsyncram_component|auto_generated|q_a\(4) <= \mem|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(4);
\mem|altsyncram_component|auto_generated|q_a\(5) <= \mem|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(5);
\mem|altsyncram_component|auto_generated|q_a\(6) <= \mem|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(6);
\mem|altsyncram_component|auto_generated|q_a\(7) <= \mem|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(7);
\mem|altsyncram_component|auto_generated|q_a\(8) <= \mem|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(8);
\mem|altsyncram_component|auto_generated|q_a\(9) <= \mem|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(9);
\mem|altsyncram_component|auto_generated|q_a\(10) <= \mem|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(10);
\mem|altsyncram_component|auto_generated|q_a\(11) <= \mem|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(11);
\mem|altsyncram_component|auto_generated|q_a\(12) <= \mem|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(12);
\mem|altsyncram_component|auto_generated|q_a\(13) <= \mem|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(13);
\mem|altsyncram_component|auto_generated|q_a\(14) <= \mem|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(14);
\mem|altsyncram_component|auto_generated|q_a\(15) <= \mem|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(15);

\mem|altsyncram_component|auto_generated|ram_block1a16_PORTADATAIN_bus\ <= (\mux_store|m_out[31]~62_combout\ & \mux_store|m_out[30]~60_combout\ & \mux_store|m_out[29]~58_combout\ & \mux_store|m_out[28]~56_combout\ & \mux_store|m_out[27]~54_combout\ & 
\mux_store|m_out[26]~52_combout\ & \mux_store|m_out[25]~50_combout\ & \mux_store|m_out[24]~48_combout\ & \mux_store|m_out[23]~44_combout\ & \mux_store|m_out[22]~43_combout\ & \mux_store|m_out[21]~42_combout\ & \mux_store|m_out[20]~41_combout\ & 
\mux_store|m_out[19]~40_combout\ & \mux_store|m_out[18]~39_combout\ & \mux_store|m_out[17]~38_combout\ & \mux_store|m_out[16]~37_combout\);

\mem|altsyncram_component|auto_generated|ram_block1a16_PORTAADDR_bus\ <= (\mux_mem|m_out[9]~7_combout\ & \mux_mem|m_out[8]~6_combout\ & \mux_mem|m_out[7]~5_combout\ & \mux_mem|m_out[6]~4_combout\ & \mux_mem|m_out[5]~3_combout\ & 
\mux_mem|m_out[4]~2_combout\ & \mux_mem|m_out[3]~1_combout\ & \mux_mem|m_out[2]~0_combout\);

\mem|altsyncram_component|auto_generated|ram_block1a16_PORTABYTEENAMASKS_bus\ <= (\b_enab|byteenable[3]~12_combout\ & \b_enab|byteenable[2]~14_combout\);

\mem|altsyncram_component|auto_generated|q_a\(16) <= \mem|altsyncram_component|auto_generated|ram_block1a16_PORTADATAOUT_bus\(0);
\mem|altsyncram_component|auto_generated|q_a\(17) <= \mem|altsyncram_component|auto_generated|ram_block1a16_PORTADATAOUT_bus\(1);
\mem|altsyncram_component|auto_generated|q_a\(18) <= \mem|altsyncram_component|auto_generated|ram_block1a16_PORTADATAOUT_bus\(2);
\mem|altsyncram_component|auto_generated|q_a\(19) <= \mem|altsyncram_component|auto_generated|ram_block1a16_PORTADATAOUT_bus\(3);
\mem|altsyncram_component|auto_generated|q_a\(20) <= \mem|altsyncram_component|auto_generated|ram_block1a16_PORTADATAOUT_bus\(4);
\mem|altsyncram_component|auto_generated|q_a\(21) <= \mem|altsyncram_component|auto_generated|ram_block1a16_PORTADATAOUT_bus\(5);
\mem|altsyncram_component|auto_generated|q_a\(22) <= \mem|altsyncram_component|auto_generated|ram_block1a16_PORTADATAOUT_bus\(6);
\mem|altsyncram_component|auto_generated|q_a\(23) <= \mem|altsyncram_component|auto_generated|ram_block1a16_PORTADATAOUT_bus\(7);
\mem|altsyncram_component|auto_generated|q_a\(24) <= \mem|altsyncram_component|auto_generated|ram_block1a16_PORTADATAOUT_bus\(8);
\mem|altsyncram_component|auto_generated|q_a\(25) <= \mem|altsyncram_component|auto_generated|ram_block1a16_PORTADATAOUT_bus\(9);
\mem|altsyncram_component|auto_generated|q_a\(26) <= \mem|altsyncram_component|auto_generated|ram_block1a16_PORTADATAOUT_bus\(10);
\mem|altsyncram_component|auto_generated|q_a\(27) <= \mem|altsyncram_component|auto_generated|ram_block1a16_PORTADATAOUT_bus\(11);
\mem|altsyncram_component|auto_generated|q_a\(28) <= \mem|altsyncram_component|auto_generated|ram_block1a16_PORTADATAOUT_bus\(12);
\mem|altsyncram_component|auto_generated|q_a\(29) <= \mem|altsyncram_component|auto_generated|ram_block1a16_PORTADATAOUT_bus\(13);
\mem|altsyncram_component|auto_generated|q_a\(30) <= \mem|altsyncram_component|auto_generated|ram_block1a16_PORTADATAOUT_bus\(14);
\mem|altsyncram_component|auto_generated|q_a\(31) <= \mem|altsyncram_component|auto_generated|ram_block1a16_PORTADATAOUT_bus\(15);

\bcoreg|breg32_rtl_1|auto_generated|ram_block1a0_PORTADATAIN_bus\ <= (\breg_data_mux|m_out[31]~50_combout\ & \breg_data_mux|m_out[30]~10_combout\ & \breg_data_mux|m_out[29]~11_combout\ & \breg_data_mux|m_out[28]~12_combout\ & 
\breg_data_mux|m_out[27]~13_combout\ & \breg_data_mux|m_out[26]~14_combout\ & \breg_data_mux|m_out[25]~15_combout\ & \breg_data_mux|m_out[24]~16_combout\ & \breg_data_mux|m_out[23]~17_combout\ & \breg_data_mux|m_out[22]~18_combout\ & 
\breg_data_mux|m_out[21]~19_combout\ & \breg_data_mux|m_out[20]~20_combout\ & \breg_data_mux|m_out[19]~21_combout\ & \breg_data_mux|m_out[18]~22_combout\ & \breg_data_mux|m_out[17]~23_combout\ & \breg_data_mux|m_out[16]~24_combout\ & 
\breg_data_mux|m_out[15]~26_combout\ & \breg_data_mux|m_out[14]~33_combout\ & \breg_data_mux|m_out[13]~34_combout\ & \breg_data_mux|m_out[12]~35_combout\ & \breg_data_mux|m_out[11]~36_combout\ & \breg_data_mux|m_out[10]~37_combout\ & 
\breg_data_mux|m_out[9]~38_combout\ & \breg_data_mux|m_out[8]~39_combout\ & \breg_data_mux|m_out[7]~40_combout\ & \breg_data_mux|m_out[6]~29_combout\ & \breg_data_mux|m_out[5]~32_combout\ & \breg_data_mux|m_out[4]~7_combout\ & 
\breg_data_mux|m_out[3]~43_combout\ & \breg_data_mux|m_out[2]~46_combout\ & \breg_data_mux|m_out[1]~49_combout\ & \breg_data_mux|m_out[0]~4_combout\);

\bcoreg|breg32_rtl_1|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\mux_reg_add|m_out[4]~4_combout\ & \mux_reg_add|m_out[3]~3_combout\ & \mux_reg_add|m_out[2]~2_combout\ & \mux_reg_add|m_out[1]~1_combout\ & \mux_reg_add|m_out[0]~0_combout\);

\bcoreg|breg32_rtl_1|auto_generated|ram_block1a0_PORTBADDR_bus\ <= (\mem|altsyncram_component|auto_generated|q_a\(20) & \mem|altsyncram_component|auto_generated|q_a\(19) & \mem|altsyncram_component|auto_generated|q_a\(18) & 
\mem|altsyncram_component|auto_generated|q_a\(17) & \mem|altsyncram_component|auto_generated|q_a\(16));

\bcoreg|breg32_rtl_1|auto_generated|ram_block1a0~portbdataout\ <= \bcoreg|breg32_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(0);
\bcoreg|breg32_rtl_1|auto_generated|ram_block1a1\ <= \bcoreg|breg32_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(1);
\bcoreg|breg32_rtl_1|auto_generated|ram_block1a2\ <= \bcoreg|breg32_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(2);
\bcoreg|breg32_rtl_1|auto_generated|ram_block1a3\ <= \bcoreg|breg32_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(3);
\bcoreg|breg32_rtl_1|auto_generated|ram_block1a4\ <= \bcoreg|breg32_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(4);
\bcoreg|breg32_rtl_1|auto_generated|ram_block1a5\ <= \bcoreg|breg32_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(5);
\bcoreg|breg32_rtl_1|auto_generated|ram_block1a6\ <= \bcoreg|breg32_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(6);
\bcoreg|breg32_rtl_1|auto_generated|ram_block1a7\ <= \bcoreg|breg32_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(7);
\bcoreg|breg32_rtl_1|auto_generated|ram_block1a8\ <= \bcoreg|breg32_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(8);
\bcoreg|breg32_rtl_1|auto_generated|ram_block1a9\ <= \bcoreg|breg32_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(9);
\bcoreg|breg32_rtl_1|auto_generated|ram_block1a10\ <= \bcoreg|breg32_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(10);
\bcoreg|breg32_rtl_1|auto_generated|ram_block1a11\ <= \bcoreg|breg32_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(11);
\bcoreg|breg32_rtl_1|auto_generated|ram_block1a12\ <= \bcoreg|breg32_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(12);
\bcoreg|breg32_rtl_1|auto_generated|ram_block1a13\ <= \bcoreg|breg32_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(13);
\bcoreg|breg32_rtl_1|auto_generated|ram_block1a14\ <= \bcoreg|breg32_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(14);
\bcoreg|breg32_rtl_1|auto_generated|ram_block1a15\ <= \bcoreg|breg32_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(15);
\bcoreg|breg32_rtl_1|auto_generated|ram_block1a16\ <= \bcoreg|breg32_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(16);
\bcoreg|breg32_rtl_1|auto_generated|ram_block1a17\ <= \bcoreg|breg32_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(17);
\bcoreg|breg32_rtl_1|auto_generated|ram_block1a18\ <= \bcoreg|breg32_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(18);
\bcoreg|breg32_rtl_1|auto_generated|ram_block1a19\ <= \bcoreg|breg32_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(19);
\bcoreg|breg32_rtl_1|auto_generated|ram_block1a20\ <= \bcoreg|breg32_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(20);
\bcoreg|breg32_rtl_1|auto_generated|ram_block1a21\ <= \bcoreg|breg32_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(21);
\bcoreg|breg32_rtl_1|auto_generated|ram_block1a22\ <= \bcoreg|breg32_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(22);
\bcoreg|breg32_rtl_1|auto_generated|ram_block1a23\ <= \bcoreg|breg32_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(23);
\bcoreg|breg32_rtl_1|auto_generated|ram_block1a24\ <= \bcoreg|breg32_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(24);
\bcoreg|breg32_rtl_1|auto_generated|ram_block1a25\ <= \bcoreg|breg32_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(25);
\bcoreg|breg32_rtl_1|auto_generated|ram_block1a26\ <= \bcoreg|breg32_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(26);
\bcoreg|breg32_rtl_1|auto_generated|ram_block1a27\ <= \bcoreg|breg32_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(27);
\bcoreg|breg32_rtl_1|auto_generated|ram_block1a28\ <= \bcoreg|breg32_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(28);
\bcoreg|breg32_rtl_1|auto_generated|ram_block1a29\ <= \bcoreg|breg32_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(29);
\bcoreg|breg32_rtl_1|auto_generated|ram_block1a30\ <= \bcoreg|breg32_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(30);
\bcoreg|breg32_rtl_1|auto_generated|ram_block1a31\ <= \bcoreg|breg32_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(31);

\bcoreg|breg32_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\ <= (\breg_data_mux|m_out[31]~50_combout\ & \breg_data_mux|m_out[30]~10_combout\ & \breg_data_mux|m_out[29]~11_combout\ & \breg_data_mux|m_out[28]~12_combout\ & 
\breg_data_mux|m_out[27]~13_combout\ & \breg_data_mux|m_out[26]~14_combout\ & \breg_data_mux|m_out[25]~15_combout\ & \breg_data_mux|m_out[24]~16_combout\ & \breg_data_mux|m_out[23]~17_combout\ & \breg_data_mux|m_out[22]~18_combout\ & 
\breg_data_mux|m_out[21]~19_combout\ & \breg_data_mux|m_out[20]~20_combout\ & \breg_data_mux|m_out[19]~21_combout\ & \breg_data_mux|m_out[18]~22_combout\ & \breg_data_mux|m_out[17]~23_combout\ & \breg_data_mux|m_out[16]~24_combout\ & 
\breg_data_mux|m_out[15]~26_combout\ & \breg_data_mux|m_out[14]~33_combout\ & \breg_data_mux|m_out[13]~34_combout\ & \breg_data_mux|m_out[12]~35_combout\ & \breg_data_mux|m_out[11]~36_combout\ & \breg_data_mux|m_out[10]~37_combout\ & 
\breg_data_mux|m_out[9]~38_combout\ & \breg_data_mux|m_out[8]~39_combout\ & \breg_data_mux|m_out[7]~40_combout\ & \breg_data_mux|m_out[6]~29_combout\ & \breg_data_mux|m_out[5]~32_combout\ & \breg_data_mux|m_out[4]~7_combout\ & 
\breg_data_mux|m_out[3]~43_combout\ & \breg_data_mux|m_out[2]~46_combout\ & \breg_data_mux|m_out[1]~49_combout\ & \breg_data_mux|m_out[0]~4_combout\);

\bcoreg|breg32_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\mux_reg_add|m_out[4]~4_combout\ & \mux_reg_add|m_out[3]~3_combout\ & \mux_reg_add|m_out[2]~2_combout\ & \mux_reg_add|m_out[1]~1_combout\ & \mux_reg_add|m_out[0]~0_combout\);

\bcoreg|breg32_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\ <= (\mem|altsyncram_component|auto_generated|q_a\(25) & \mem|altsyncram_component|auto_generated|q_a\(24) & \mem|altsyncram_component|auto_generated|q_a\(23) & 
\mem|altsyncram_component|auto_generated|q_a\(22) & \mem|altsyncram_component|auto_generated|q_a\(21));

\bcoreg|breg32_rtl_0|auto_generated|ram_block1a0~portbdataout\ <= \bcoreg|breg32_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(0);
\bcoreg|breg32_rtl_0|auto_generated|ram_block1a1\ <= \bcoreg|breg32_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(1);
\bcoreg|breg32_rtl_0|auto_generated|ram_block1a2\ <= \bcoreg|breg32_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(2);
\bcoreg|breg32_rtl_0|auto_generated|ram_block1a3\ <= \bcoreg|breg32_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(3);
\bcoreg|breg32_rtl_0|auto_generated|ram_block1a4\ <= \bcoreg|breg32_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(4);
\bcoreg|breg32_rtl_0|auto_generated|ram_block1a5\ <= \bcoreg|breg32_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(5);
\bcoreg|breg32_rtl_0|auto_generated|ram_block1a6\ <= \bcoreg|breg32_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(6);
\bcoreg|breg32_rtl_0|auto_generated|ram_block1a7\ <= \bcoreg|breg32_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(7);
\bcoreg|breg32_rtl_0|auto_generated|ram_block1a8\ <= \bcoreg|breg32_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(8);
\bcoreg|breg32_rtl_0|auto_generated|ram_block1a9\ <= \bcoreg|breg32_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(9);
\bcoreg|breg32_rtl_0|auto_generated|ram_block1a10\ <= \bcoreg|breg32_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(10);
\bcoreg|breg32_rtl_0|auto_generated|ram_block1a11\ <= \bcoreg|breg32_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(11);
\bcoreg|breg32_rtl_0|auto_generated|ram_block1a12\ <= \bcoreg|breg32_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(12);
\bcoreg|breg32_rtl_0|auto_generated|ram_block1a13\ <= \bcoreg|breg32_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(13);
\bcoreg|breg32_rtl_0|auto_generated|ram_block1a14\ <= \bcoreg|breg32_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(14);
\bcoreg|breg32_rtl_0|auto_generated|ram_block1a15\ <= \bcoreg|breg32_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(15);
\bcoreg|breg32_rtl_0|auto_generated|ram_block1a16\ <= \bcoreg|breg32_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(16);
\bcoreg|breg32_rtl_0|auto_generated|ram_block1a17\ <= \bcoreg|breg32_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(17);
\bcoreg|breg32_rtl_0|auto_generated|ram_block1a18\ <= \bcoreg|breg32_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(18);
\bcoreg|breg32_rtl_0|auto_generated|ram_block1a19\ <= \bcoreg|breg32_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(19);
\bcoreg|breg32_rtl_0|auto_generated|ram_block1a20\ <= \bcoreg|breg32_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(20);
\bcoreg|breg32_rtl_0|auto_generated|ram_block1a21\ <= \bcoreg|breg32_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(21);
\bcoreg|breg32_rtl_0|auto_generated|ram_block1a22\ <= \bcoreg|breg32_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(22);
\bcoreg|breg32_rtl_0|auto_generated|ram_block1a23\ <= \bcoreg|breg32_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(23);
\bcoreg|breg32_rtl_0|auto_generated|ram_block1a24\ <= \bcoreg|breg32_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(24);
\bcoreg|breg32_rtl_0|auto_generated|ram_block1a25\ <= \bcoreg|breg32_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(25);
\bcoreg|breg32_rtl_0|auto_generated|ram_block1a26\ <= \bcoreg|breg32_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(26);
\bcoreg|breg32_rtl_0|auto_generated|ram_block1a27\ <= \bcoreg|breg32_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(27);
\bcoreg|breg32_rtl_0|auto_generated|ram_block1a28\ <= \bcoreg|breg32_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(28);
\bcoreg|breg32_rtl_0|auto_generated|ram_block1a29\ <= \bcoreg|breg32_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(29);
\bcoreg|breg32_rtl_0|auto_generated|ram_block1a30\ <= \bcoreg|breg32_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(30);
\bcoreg|breg32_rtl_0|auto_generated|ram_block1a31\ <= \bcoreg|breg32_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(31);

\clk~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \clk~combout\);

\clk_rom~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \clk_rom~combout\);

\rst~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \rst~combout\);
\ctr_mips|ALT_INV_pstate.fetch_st~_wirecell_combout\ <= NOT \ctr_mips|pstate.fetch_st~_wirecell_combout\;
\ctr_mips|ALT_INV_pstate.fetch_st~regout\ <= NOT \ctr_mips|pstate.fetch_st~regout\;

-- Location: LCFF_X44_Y33_N25
\pc|sr_out[28]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \pc|sr_out~30_combout\,
	sclr => \rst~combout\,
	ena => \pc|sr_out[31]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pc|sr_out\(28));

-- Location: LCCOMB_X41_Y37_N6
\alu|tmp[3]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|tmp[3]~6_combout\ = (\mux_ulaA|m_out[3]~28_combout\ & ((\mux_ulaB|m_out[3]~47_combout\ & (!\alu|tmp[2]~5\)) # (!\mux_ulaB|m_out[3]~47_combout\ & (\alu|tmp[2]~5\ & VCC)))) # (!\mux_ulaA|m_out[3]~28_combout\ & ((\mux_ulaB|m_out[3]~47_combout\ & 
-- ((\alu|tmp[2]~5\) # (GND))) # (!\mux_ulaB|m_out[3]~47_combout\ & (!\alu|tmp[2]~5\))))
-- \alu|tmp[3]~7\ = CARRY((\mux_ulaA|m_out[3]~28_combout\ & (\mux_ulaB|m_out[3]~47_combout\ & !\alu|tmp[2]~5\)) # (!\mux_ulaA|m_out[3]~28_combout\ & ((\mux_ulaB|m_out[3]~47_combout\) # (!\alu|tmp[2]~5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mux_ulaA|m_out[3]~28_combout\,
	datab => \mux_ulaB|m_out[3]~47_combout\,
	datad => VCC,
	cin => \alu|tmp[2]~5\,
	combout => \alu|tmp[3]~6_combout\,
	cout => \alu|tmp[3]~7\);

-- Location: LCCOMB_X41_Y37_N8
\alu|tmp[4]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|tmp[4]~8_combout\ = ((\mux_ulaA|m_out[4]~0_combout\ $ (\mux_ulaB|m_out[4]~45_combout\ $ (\alu|tmp[3]~7\)))) # (GND)
-- \alu|tmp[4]~9\ = CARRY((\mux_ulaA|m_out[4]~0_combout\ & ((!\alu|tmp[3]~7\) # (!\mux_ulaB|m_out[4]~45_combout\))) # (!\mux_ulaA|m_out[4]~0_combout\ & (!\mux_ulaB|m_out[4]~45_combout\ & !\alu|tmp[3]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mux_ulaA|m_out[4]~0_combout\,
	datab => \mux_ulaB|m_out[4]~45_combout\,
	datad => VCC,
	cin => \alu|tmp[3]~7\,
	combout => \alu|tmp[4]~8_combout\,
	cout => \alu|tmp[4]~9\);

-- Location: LCCOMB_X41_Y37_N10
\alu|tmp[5]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|tmp[5]~10_combout\ = (\mux_ulaA|m_out[5]~18_combout\ & ((\mux_ulaB|m_out[5]~43_combout\ & (!\alu|tmp[4]~9\)) # (!\mux_ulaB|m_out[5]~43_combout\ & (\alu|tmp[4]~9\ & VCC)))) # (!\mux_ulaA|m_out[5]~18_combout\ & ((\mux_ulaB|m_out[5]~43_combout\ & 
-- ((\alu|tmp[4]~9\) # (GND))) # (!\mux_ulaB|m_out[5]~43_combout\ & (!\alu|tmp[4]~9\))))
-- \alu|tmp[5]~11\ = CARRY((\mux_ulaA|m_out[5]~18_combout\ & (\mux_ulaB|m_out[5]~43_combout\ & !\alu|tmp[4]~9\)) # (!\mux_ulaA|m_out[5]~18_combout\ & ((\mux_ulaB|m_out[5]~43_combout\) # (!\alu|tmp[4]~9\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mux_ulaA|m_out[5]~18_combout\,
	datab => \mux_ulaB|m_out[5]~43_combout\,
	datad => VCC,
	cin => \alu|tmp[4]~9\,
	combout => \alu|tmp[5]~10_combout\,
	cout => \alu|tmp[5]~11\);

-- Location: LCCOMB_X41_Y37_N16
\alu|tmp[8]~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|tmp[8]~16_combout\ = ((\mux_ulaA|m_out[8]~25_combout\ $ (\mux_ulaB|m_out[8]~37_combout\ $ (\alu|tmp[7]~15\)))) # (GND)
-- \alu|tmp[8]~17\ = CARRY((\mux_ulaA|m_out[8]~25_combout\ & ((!\alu|tmp[7]~15\) # (!\mux_ulaB|m_out[8]~37_combout\))) # (!\mux_ulaA|m_out[8]~25_combout\ & (!\mux_ulaB|m_out[8]~37_combout\ & !\alu|tmp[7]~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mux_ulaA|m_out[8]~25_combout\,
	datab => \mux_ulaB|m_out[8]~37_combout\,
	datad => VCC,
	cin => \alu|tmp[7]~15\,
	combout => \alu|tmp[8]~16_combout\,
	cout => \alu|tmp[8]~17\);

-- Location: LCCOMB_X41_Y37_N24
\alu|tmp[12]~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|tmp[12]~24_combout\ = ((\mux_ulaB|m_out[12]~29_combout\ $ (\mux_ulaA|m_out[12]~21_combout\ $ (\alu|tmp[11]~23\)))) # (GND)
-- \alu|tmp[12]~25\ = CARRY((\mux_ulaB|m_out[12]~29_combout\ & (\mux_ulaA|m_out[12]~21_combout\ & !\alu|tmp[11]~23\)) # (!\mux_ulaB|m_out[12]~29_combout\ & ((\mux_ulaA|m_out[12]~21_combout\) # (!\alu|tmp[11]~23\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mux_ulaB|m_out[12]~29_combout\,
	datab => \mux_ulaA|m_out[12]~21_combout\,
	datad => VCC,
	cin => \alu|tmp[11]~23\,
	combout => \alu|tmp[12]~24_combout\,
	cout => \alu|tmp[12]~25\);

-- Location: LCCOMB_X41_Y33_N6
\alu|Add1~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Add1~6_combout\ = (\mux_ulaB|m_out[3]~47_combout\ & ((\mux_ulaA|m_out[3]~28_combout\ & (\alu|Add1~5\ & VCC)) # (!\mux_ulaA|m_out[3]~28_combout\ & (!\alu|Add1~5\)))) # (!\mux_ulaB|m_out[3]~47_combout\ & ((\mux_ulaA|m_out[3]~28_combout\ & 
-- (!\alu|Add1~5\)) # (!\mux_ulaA|m_out[3]~28_combout\ & ((\alu|Add1~5\) # (GND)))))
-- \alu|Add1~7\ = CARRY((\mux_ulaB|m_out[3]~47_combout\ & (!\mux_ulaA|m_out[3]~28_combout\ & !\alu|Add1~5\)) # (!\mux_ulaB|m_out[3]~47_combout\ & ((!\alu|Add1~5\) # (!\mux_ulaA|m_out[3]~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mux_ulaB|m_out[3]~47_combout\,
	datab => \mux_ulaA|m_out[3]~28_combout\,
	datad => VCC,
	cin => \alu|Add1~5\,
	combout => \alu|Add1~6_combout\,
	cout => \alu|Add1~7\);

-- Location: LCCOMB_X41_Y33_N8
\alu|Add1~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Add1~8_combout\ = ((\mux_ulaB|m_out[4]~45_combout\ $ (\mux_ulaA|m_out[4]~0_combout\ $ (!\alu|Add1~7\)))) # (GND)
-- \alu|Add1~9\ = CARRY((\mux_ulaB|m_out[4]~45_combout\ & ((\mux_ulaA|m_out[4]~0_combout\) # (!\alu|Add1~7\))) # (!\mux_ulaB|m_out[4]~45_combout\ & (\mux_ulaA|m_out[4]~0_combout\ & !\alu|Add1~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mux_ulaB|m_out[4]~45_combout\,
	datab => \mux_ulaA|m_out[4]~0_combout\,
	datad => VCC,
	cin => \alu|Add1~7\,
	combout => \alu|Add1~8_combout\,
	cout => \alu|Add1~9\);

-- Location: LCCOMB_X41_Y33_N10
\alu|Add1~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Add1~10_combout\ = (\mux_ulaA|m_out[5]~18_combout\ & ((\mux_ulaB|m_out[5]~43_combout\ & (\alu|Add1~9\ & VCC)) # (!\mux_ulaB|m_out[5]~43_combout\ & (!\alu|Add1~9\)))) # (!\mux_ulaA|m_out[5]~18_combout\ & ((\mux_ulaB|m_out[5]~43_combout\ & 
-- (!\alu|Add1~9\)) # (!\mux_ulaB|m_out[5]~43_combout\ & ((\alu|Add1~9\) # (GND)))))
-- \alu|Add1~11\ = CARRY((\mux_ulaA|m_out[5]~18_combout\ & (!\mux_ulaB|m_out[5]~43_combout\ & !\alu|Add1~9\)) # (!\mux_ulaA|m_out[5]~18_combout\ & ((!\alu|Add1~9\) # (!\mux_ulaB|m_out[5]~43_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mux_ulaA|m_out[5]~18_combout\,
	datab => \mux_ulaB|m_out[5]~43_combout\,
	datad => VCC,
	cin => \alu|Add1~9\,
	combout => \alu|Add1~10_combout\,
	cout => \alu|Add1~11\);

-- Location: LCCOMB_X41_Y33_N12
\alu|Add1~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Add1~12_combout\ = ((\mux_ulaB|m_out[6]~41_combout\ $ (\mux_ulaA|m_out[6]~17_combout\ $ (!\alu|Add1~11\)))) # (GND)
-- \alu|Add1~13\ = CARRY((\mux_ulaB|m_out[6]~41_combout\ & ((\mux_ulaA|m_out[6]~17_combout\) # (!\alu|Add1~11\))) # (!\mux_ulaB|m_out[6]~41_combout\ & (\mux_ulaA|m_out[6]~17_combout\ & !\alu|Add1~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mux_ulaB|m_out[6]~41_combout\,
	datab => \mux_ulaA|m_out[6]~17_combout\,
	datad => VCC,
	cin => \alu|Add1~11\,
	combout => \alu|Add1~12_combout\,
	cout => \alu|Add1~13\);

-- Location: LCCOMB_X41_Y33_N18
\alu|Add1~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Add1~18_combout\ = (\mux_ulaB|m_out[9]~35_combout\ & ((\mux_ulaA|m_out[9]~24_combout\ & (\alu|Add1~17\ & VCC)) # (!\mux_ulaA|m_out[9]~24_combout\ & (!\alu|Add1~17\)))) # (!\mux_ulaB|m_out[9]~35_combout\ & ((\mux_ulaA|m_out[9]~24_combout\ & 
-- (!\alu|Add1~17\)) # (!\mux_ulaA|m_out[9]~24_combout\ & ((\alu|Add1~17\) # (GND)))))
-- \alu|Add1~19\ = CARRY((\mux_ulaB|m_out[9]~35_combout\ & (!\mux_ulaA|m_out[9]~24_combout\ & !\alu|Add1~17\)) # (!\mux_ulaB|m_out[9]~35_combout\ & ((!\alu|Add1~17\) # (!\mux_ulaA|m_out[9]~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mux_ulaB|m_out[9]~35_combout\,
	datab => \mux_ulaA|m_out[9]~24_combout\,
	datad => VCC,
	cin => \alu|Add1~17\,
	combout => \alu|Add1~18_combout\,
	cout => \alu|Add1~19\);

-- Location: LCCOMB_X41_Y33_N24
\alu|Add1~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Add1~24_combout\ = ((\mux_ulaB|m_out[12]~29_combout\ $ (\mux_ulaA|m_out[12]~21_combout\ $ (!\alu|Add1~23\)))) # (GND)
-- \alu|Add1~25\ = CARRY((\mux_ulaB|m_out[12]~29_combout\ & ((\mux_ulaA|m_out[12]~21_combout\) # (!\alu|Add1~23\))) # (!\mux_ulaB|m_out[12]~29_combout\ & (\mux_ulaA|m_out[12]~21_combout\ & !\alu|Add1~23\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mux_ulaB|m_out[12]~29_combout\,
	datab => \mux_ulaA|m_out[12]~21_combout\,
	datad => VCC,
	cin => \alu|Add1~23\,
	combout => \alu|Add1~24_combout\,
	cout => \alu|Add1~25\);

-- Location: LCCOMB_X41_Y32_N12
\alu|Add1~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Add1~44_combout\ = ((\mux_ulaB|m_out[22]~13_combout\ $ (\mux_ulaA|m_out[22]~9_combout\ $ (!\alu|Add1~43\)))) # (GND)
-- \alu|Add1~45\ = CARRY((\mux_ulaB|m_out[22]~13_combout\ & ((\mux_ulaA|m_out[22]~9_combout\) # (!\alu|Add1~43\))) # (!\mux_ulaB|m_out[22]~13_combout\ & (\mux_ulaA|m_out[22]~9_combout\ & !\alu|Add1~43\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mux_ulaB|m_out[22]~13_combout\,
	datab => \mux_ulaA|m_out[22]~9_combout\,
	datad => VCC,
	cin => \alu|Add1~43\,
	combout => \alu|Add1~44_combout\,
	cout => \alu|Add1~45\);

-- Location: LCCOMB_X41_Y32_N28
\alu|Add1~60\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Add1~60_combout\ = ((\mux_ulaA|m_out[30]~1_combout\ $ (\mux_ulaB|m_out[30]~5_combout\ $ (!\alu|Add1~59\)))) # (GND)
-- \alu|Add1~61\ = CARRY((\mux_ulaA|m_out[30]~1_combout\ & ((\mux_ulaB|m_out[30]~5_combout\) # (!\alu|Add1~59\))) # (!\mux_ulaA|m_out[30]~1_combout\ & (\mux_ulaB|m_out[30]~5_combout\ & !\alu|Add1~59\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mux_ulaA|m_out[30]~1_combout\,
	datab => \mux_ulaB|m_out[30]~5_combout\,
	datad => VCC,
	cin => \alu|Add1~59\,
	combout => \alu|Add1~60_combout\,
	cout => \alu|Add1~61\);

-- Location: M4K_X37_Y34
\bcoreg|breg32_rtl_1|auto_generated|ram_block1a0\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => X"00000000000000007FFFEFFC1000800000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/Multiciclo.ram0_breg_9a0f9e64.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "breg:bcoreg|altsyncram:breg32_rtl_1|altsyncram_dbi1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 5,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 32,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 31,
	port_a_logical_ram_depth => 32,
	port_a_logical_ram_width => 32,
	port_a_write_enable_clear => "none",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 5,
	port_b_byte_enable_clear => "none",
	port_b_data_in_clear => "none",
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 32,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 31,
	port_b_logical_ram_depth => 32,
	port_b_logical_ram_width => 32,
	port_b_read_enable_write_enable_clear => "none",
	port_b_read_enable_write_enable_clock => "clock0",
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	portawe => \ctr_mips|WideOr1~0_combout\,
	portbrewe => VCC,
	portbaddrstall => \ctr_mips|ALT_INV_pstate.fetch_st~_wirecell_combout\,
	clk0 => \clk~clkctrl_outclk\,
	portadatain => \bcoreg|breg32_rtl_1|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portaaddr => \bcoreg|breg32_rtl_1|auto_generated|ram_block1a0_PORTAADDR_bus\,
	portbaddr => \bcoreg|breg32_rtl_1|auto_generated|ram_block1a0_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \bcoreg|breg32_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\);

-- Location: M4K_X37_Y32
\bcoreg|breg32_rtl_0|auto_generated|ram_block1a0\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => X"00000000000000007FFFEFFC1000800000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/Multiciclo.ram0_breg_9a0f9e64.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "breg:bcoreg|altsyncram:breg32_rtl_0|altsyncram_dbi1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 5,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 32,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 31,
	port_a_logical_ram_depth => 32,
	port_a_logical_ram_width => 32,
	port_a_write_enable_clear => "none",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 5,
	port_b_byte_enable_clear => "none",
	port_b_data_in_clear => "none",
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 32,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 31,
	port_b_logical_ram_depth => 32,
	port_b_logical_ram_width => 32,
	port_b_read_enable_write_enable_clear => "none",
	port_b_read_enable_write_enable_clock => "clock0",
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	portawe => \ctr_mips|WideOr1~0_combout\,
	portbrewe => VCC,
	portbaddrstall => \ctr_mips|ALT_INV_pstate.fetch_st~_wirecell_combout\,
	clk0 => \clk~clkctrl_outclk\,
	portadatain => \bcoreg|breg32_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portaaddr => \bcoreg|breg32_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\,
	portbaddr => \bcoreg|breg32_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \bcoreg|breg32_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X38_Y35_N2
\actr|alu_ctr~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \actr|alu_ctr~3_combout\ = (\ir|sr_out\(1) & \ir|sr_out\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir|sr_out\(1),
	datad => \ir|sr_out\(0),
	combout => \actr|alu_ctr~3_combout\);

-- Location: LCCOMB_X39_Y35_N6
\actr|alu_ctr[1]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \actr|alu_ctr[1]~10_combout\ = (\ir|sr_out\(1) & ((\ir|sr_out\(0) & (!\actr|alu_ctr~9_combout\)) # (!\ir|sr_out\(0) & ((!\actr|alu_ctr~8_combout\))))) # (!\ir|sr_out\(1) & ((\ir|sr_out\(0)) # ((!\actr|alu_ctr~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110101101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir|sr_out\(1),
	datab => \ir|sr_out\(0),
	datac => \actr|alu_ctr~9_combout\,
	datad => \actr|alu_ctr~8_combout\,
	combout => \actr|alu_ctr[1]~10_combout\);

-- Location: LCFF_X43_Y31_N13
\rgA|sr_out[23]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \bcoreg|regA[23]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rgA|sr_out\(23));

-- Location: LCFF_X42_Y32_N17
\rgA|sr_out[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \bcoreg|regA[15]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rgA|sr_out\(15));

-- Location: LCCOMB_X42_Y32_N0
\alu|ShiftLeft0~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftLeft0~15_combout\ = (\mux_ulaA|m_out[17]~14_combout\) # ((\mux_ulaA|m_out[15]~16_combout\) # ((\mux_ulaA|m_out[16]~15_combout\) # (\mux_ulaA|m_out[18]~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_ulaA|m_out[17]~14_combout\,
	datab => \mux_ulaA|m_out[15]~16_combout\,
	datac => \mux_ulaA|m_out[16]~15_combout\,
	datad => \mux_ulaA|m_out[18]~13_combout\,
	combout => \alu|ShiftLeft0~15_combout\);

-- Location: LCFF_X43_Y36_N25
\rgA|sr_out[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \bcoreg|regA[6]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rgA|sr_out\(6));

-- Location: LCFF_X43_Y35_N25
\rgA|sr_out[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \bcoreg|regA[11]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rgA|sr_out\(11));

-- Location: LCFF_X44_Y35_N13
\rgA|sr_out[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \bcoreg|regA[7]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rgA|sr_out\(7));

-- Location: LCCOMB_X44_Y30_N16
\alu|Mux31~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux31~2_combout\ = (\actr|alu_ctr[0]~16_combout\ & ((\mux_ulaA|m_out[0]~27_combout\) # (\mux_ulaB|m_out[0]~3_combout\))) # (!\actr|alu_ctr[0]~16_combout\ & (\mux_ulaA|m_out[0]~27_combout\ & \mux_ulaB|m_out[0]~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \actr|alu_ctr[0]~16_combout\,
	datac => \mux_ulaA|m_out[0]~27_combout\,
	datad => \mux_ulaB|m_out[0]~3_combout\,
	combout => \alu|Mux31~2_combout\);

-- Location: LCCOMB_X40_Y31_N2
\mux_ulaB|m_out[27]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux_ulaB|m_out[27]~8_combout\ = (\rgB|sr_out\(27) & (\ctr_mips|pstate.fetch_st~regout\ & (!\ctr_mips|pstate.c_mem_add_st~regout\ & !\ctr_mips|pstate.decode_st~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rgB|sr_out\(27),
	datab => \ctr_mips|pstate.fetch_st~regout\,
	datac => \ctr_mips|pstate.c_mem_add_st~regout\,
	datad => \ctr_mips|pstate.decode_st~regout\,
	combout => \mux_ulaB|m_out[27]~8_combout\);

-- Location: LCFF_X42_Y35_N13
\rgB|sr_out[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \bcoreg|regB[13]~19_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rgB|sr_out\(13));

-- Location: LCCOMB_X38_Y37_N16
\mux_ulaB|m_out[10]~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux_ulaB|m_out[10]~32_combout\ = (\ctr_mips|pstate.decode_st~regout\ & (\ir|sr_out\(10))) # (!\ctr_mips|pstate.decode_st~regout\ & ((\ctr_mips|pstate.c_mem_add_st~regout\ & (\ir|sr_out\(10))) # (!\ctr_mips|pstate.c_mem_add_st~regout\ & 
-- ((\rgB|sr_out\(10))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir|sr_out\(10),
	datab => \rgB|sr_out\(10),
	datac => \ctr_mips|pstate.decode_st~regout\,
	datad => \ctr_mips|pstate.c_mem_add_st~regout\,
	combout => \mux_ulaB|m_out[10]~32_combout\);

-- Location: LCFF_X42_Y35_N1
\rgB|sr_out[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \bcoreg|regB[9]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rgB|sr_out\(9));

-- Location: LCCOMB_X42_Y35_N20
\mux_ulaB|m_out[9]~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux_ulaB|m_out[9]~34_combout\ = (\ctr_mips|pstate.decode_st~regout\ & (((\ir|sr_out\(9))))) # (!\ctr_mips|pstate.decode_st~regout\ & ((\ctr_mips|pstate.c_mem_add_st~regout\ & ((\ir|sr_out\(9)))) # (!\ctr_mips|pstate.c_mem_add_st~regout\ & 
-- (\rgB|sr_out\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctr_mips|pstate.decode_st~regout\,
	datab => \rgB|sr_out\(9),
	datac => \ir|sr_out\(9),
	datad => \ctr_mips|pstate.c_mem_add_st~regout\,
	combout => \mux_ulaB|m_out[9]~34_combout\);

-- Location: LCCOMB_X44_Y30_N12
\alu|ShiftRight1~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftRight1~14_combout\ = (!\mux_ulaA|m_out[1]~30_combout\ & ((\mux_ulaA|m_out[0]~27_combout\ & (\mux_ulaB|m_out[1]~48_combout\)) # (!\mux_ulaA|m_out[0]~27_combout\ & ((\mux_ulaB|m_out[0]~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_ulaB|m_out[1]~48_combout\,
	datab => \mux_ulaA|m_out[1]~30_combout\,
	datac => \mux_ulaA|m_out[0]~27_combout\,
	datad => \mux_ulaB|m_out[0]~3_combout\,
	combout => \alu|ShiftRight1~14_combout\);

-- Location: LCCOMB_X41_Y34_N8
\alu|ShiftRight1~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftRight1~15_combout\ = (\mux_ulaA|m_out[0]~27_combout\ & ((\mux_ulaB|m_out[3]~47_combout\))) # (!\mux_ulaA|m_out[0]~27_combout\ & (\mux_ulaB|m_out[2]~50_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_ulaB|m_out[2]~50_combout\,
	datac => \mux_ulaB|m_out[3]~47_combout\,
	datad => \mux_ulaA|m_out[0]~27_combout\,
	combout => \alu|ShiftRight1~15_combout\);

-- Location: LCCOMB_X44_Y30_N6
\alu|ShiftRight1~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftRight1~16_combout\ = (\alu|ShiftLeft0~140_combout\ & ((\alu|ShiftRight1~14_combout\) # ((\mux_ulaA|m_out[1]~30_combout\ & \alu|ShiftRight1~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|ShiftRight1~14_combout\,
	datab => \mux_ulaA|m_out[1]~30_combout\,
	datac => \alu|ShiftLeft0~140_combout\,
	datad => \alu|ShiftRight1~15_combout\,
	combout => \alu|ShiftRight1~16_combout\);

-- Location: LCCOMB_X45_Y37_N6
\alu|ShiftRight0~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftRight0~23_combout\ = (\mux_ulaA|m_out[1]~30_combout\ & ((\mux_ulaA|m_out[0]~27_combout\ & (\mux_ulaB|m_out[15]~23_combout\)) # (!\mux_ulaA|m_out[0]~27_combout\ & ((\mux_ulaB|m_out[14]~25_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_ulaA|m_out[0]~27_combout\,
	datab => \mux_ulaA|m_out[1]~30_combout\,
	datac => \mux_ulaB|m_out[15]~23_combout\,
	datad => \mux_ulaB|m_out[14]~25_combout\,
	combout => \alu|ShiftRight0~23_combout\);

-- Location: LCCOMB_X40_Y35_N20
\actr|alu_ctr[1]~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \actr|alu_ctr[1]~17_combout\ = (\ir|sr_out\(0)) # ((\ir|sr_out\(1) & ((!\actr|alu_ctr~8_combout\))) # (!\ir|sr_out\(1) & (!\actr|alu_ctr~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir|sr_out\(1),
	datab => \ir|sr_out\(0),
	datac => \actr|alu_ctr~9_combout\,
	datad => \actr|alu_ctr~8_combout\,
	combout => \actr|alu_ctr[1]~17_combout\);

-- Location: LCCOMB_X39_Y31_N22
\alu|ShiftLeft0~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftLeft0~23_combout\ = (!\mux_ulaA|m_out[1]~30_combout\ & (\alu|ShiftLeft0~22_combout\ & \alu|ShiftLeft0~140_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mux_ulaA|m_out[1]~30_combout\,
	datac => \alu|ShiftLeft0~22_combout\,
	datad => \alu|ShiftLeft0~140_combout\,
	combout => \alu|ShiftLeft0~23_combout\);

-- Location: LCCOMB_X43_Y37_N30
\alu|ShiftLeft0~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftLeft0~24_combout\ = (!\mux_ulaA|m_out[4]~0_combout\ & (\alu|ShiftLeft0~23_combout\ & (!\alu|ShiftLeft0~19_combout\ & !\alu|ShiftLeft0~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_ulaA|m_out[4]~0_combout\,
	datab => \alu|ShiftLeft0~23_combout\,
	datac => \alu|ShiftLeft0~19_combout\,
	datad => \alu|ShiftLeft0~16_combout\,
	combout => \alu|ShiftLeft0~24_combout\);

-- Location: LCCOMB_X43_Y37_N8
\alu|Mux30~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux30~5_combout\ = (\mux_ulaA|m_out[1]~30_combout\ & ((\actr|alu_ctr[0]~16_combout\) # ((\mux_ulaB|m_out[1]~48_combout\ & !\actr|alu_ctr[3]~21_combout\)))) # (!\mux_ulaA|m_out[1]~30_combout\ & (\actr|alu_ctr[0]~16_combout\ & 
-- ((\mux_ulaB|m_out[1]~48_combout\) # (\actr|alu_ctr[3]~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_ulaA|m_out[1]~30_combout\,
	datab => \mux_ulaB|m_out[1]~48_combout\,
	datac => \actr|alu_ctr[0]~16_combout\,
	datad => \actr|alu_ctr[3]~21_combout\,
	combout => \alu|Mux30~5_combout\);

-- Location: LCCOMB_X43_Y37_N10
\alu|Mux30~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux30~6_combout\ = (\actr|alu_ctr[3]~21_combout\ & ((\alu|Mux30~5_combout\ & (\alu|a32~45_combout\)) # (!\alu|Mux30~5_combout\ & ((\alu|ShiftLeft0~24_combout\))))) # (!\actr|alu_ctr[3]~21_combout\ & (((\alu|Mux30~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|a32~45_combout\,
	datab => \actr|alu_ctr[3]~21_combout\,
	datac => \alu|Mux30~5_combout\,
	datad => \alu|ShiftLeft0~24_combout\,
	combout => \alu|Mux30~6_combout\);

-- Location: LCCOMB_X43_Y37_N24
\alu|Mux30~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux30~8_combout\ = (!\mux_ulaA|m_out[1]~30_combout\ & (!\mux_ulaB|m_out[1]~48_combout\ & (!\actr|alu_ctr[0]~16_combout\ & \actr|alu_ctr[3]~21_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_ulaA|m_out[1]~30_combout\,
	datab => \mux_ulaB|m_out[1]~48_combout\,
	datac => \actr|alu_ctr[0]~16_combout\,
	datad => \actr|alu_ctr[3]~21_combout\,
	combout => \alu|Mux30~8_combout\);

-- Location: LCCOMB_X39_Y34_N20
\alu|Mux29~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux29~7_combout\ = (\actr|alu_ctr[0]~16_combout\ & (\actr|alu_ctr[1]~14_combout\ & ((\mux_ulaB|m_out[2]~50_combout\) # (\mux_ulaA|m_out[2]~29_combout\)))) # (!\actr|alu_ctr[0]~16_combout\ & (((\mux_ulaB|m_out[2]~50_combout\ & 
-- \mux_ulaA|m_out[2]~29_combout\)) # (!\actr|alu_ctr[1]~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_ulaB|m_out[2]~50_combout\,
	datab => \actr|alu_ctr[0]~16_combout\,
	datac => \mux_ulaA|m_out[2]~29_combout\,
	datad => \actr|alu_ctr[1]~14_combout\,
	combout => \alu|Mux29~7_combout\);

-- Location: LCCOMB_X44_Y38_N24
\alu|Mux29~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux29~19_combout\ = (\alu|ShiftLeft0~140_combout\ & (((\alu|ShiftRight1~15_combout\ & !\alu|Mux29~18_combout\)))) # (!\alu|ShiftLeft0~140_combout\ & ((\alu|ShiftRight1~42_combout\) # ((\alu|Mux29~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|ShiftRight1~42_combout\,
	datab => \alu|ShiftLeft0~140_combout\,
	datac => \alu|ShiftRight1~15_combout\,
	datad => \alu|Mux29~18_combout\,
	combout => \alu|Mux29~19_combout\);

-- Location: LCCOMB_X44_Y38_N22
\alu|Mux29~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux29~20_combout\ = (\alu|Mux29~19_combout\ & (((\alu|ShiftRight0~53_combout\) # (!\alu|Mux29~18_combout\)))) # (!\alu|Mux29~19_combout\ & (\alu|ShiftRight1~18_combout\ & ((\alu|Mux29~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|Mux29~19_combout\,
	datab => \alu|ShiftRight1~18_combout\,
	datac => \alu|ShiftRight0~53_combout\,
	datad => \alu|Mux29~18_combout\,
	combout => \alu|Mux29~20_combout\);

-- Location: LCCOMB_X42_Y34_N12
\alu|Mux26~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux26~6_combout\ = (\alu|Mux29~14_combout\) # ((\mux_ulaA|m_out[5]~18_combout\) # (\mux_ulaB|m_out[5]~43_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|Mux29~14_combout\,
	datac => \mux_ulaA|m_out[5]~18_combout\,
	datad => \mux_ulaB|m_out[5]~43_combout\,
	combout => \alu|Mux26~6_combout\);

-- Location: LCCOMB_X42_Y36_N20
\alu|Mux24~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux24~0_combout\ = (\actr|alu_ctr[0]~16_combout\ & (\actr|alu_ctr[1]~14_combout\ & ((\mux_ulaB|m_out[7]~39_combout\) # (\mux_ulaA|m_out[7]~26_combout\)))) # (!\actr|alu_ctr[0]~16_combout\ & (((\mux_ulaB|m_out[7]~39_combout\ & 
-- \mux_ulaA|m_out[7]~26_combout\)) # (!\actr|alu_ctr[1]~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_ulaB|m_out[7]~39_combout\,
	datab => \actr|alu_ctr[0]~16_combout\,
	datac => \mux_ulaA|m_out[7]~26_combout\,
	datad => \actr|alu_ctr[1]~14_combout\,
	combout => \alu|Mux24~0_combout\);

-- Location: LCCOMB_X45_Y35_N24
\alu|Mux23~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux23~3_combout\ = (\actr|alu_ctr[0]~16_combout\ & (\actr|alu_ctr[1]~14_combout\ & ((\mux_ulaA|m_out[8]~25_combout\) # (\mux_ulaB|m_out[8]~37_combout\)))) # (!\actr|alu_ctr[0]~16_combout\ & (((\mux_ulaA|m_out[8]~25_combout\ & 
-- \mux_ulaB|m_out[8]~37_combout\)) # (!\actr|alu_ctr[1]~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \actr|alu_ctr[0]~16_combout\,
	datab => \mux_ulaA|m_out[8]~25_combout\,
	datac => \mux_ulaB|m_out[8]~37_combout\,
	datad => \actr|alu_ctr[1]~14_combout\,
	combout => \alu|Mux23~3_combout\);

-- Location: LCCOMB_X47_Y35_N16
\alu|ShiftLeft0~54\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftLeft0~54_combout\ = (!\mux_ulaA|m_out[0]~27_combout\ & ((\mux_ulaA|m_out[1]~30_combout\ & (\mux_ulaB|m_out[7]~39_combout\)) # (!\mux_ulaA|m_out[1]~30_combout\ & ((\mux_ulaB|m_out[9]~35_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_ulaA|m_out[1]~30_combout\,
	datab => \mux_ulaB|m_out[7]~39_combout\,
	datac => \mux_ulaB|m_out[9]~35_combout\,
	datad => \mux_ulaA|m_out[0]~27_combout\,
	combout => \alu|ShiftLeft0~54_combout\);

-- Location: LCCOMB_X44_Y36_N16
\alu|Mux21~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux21~2_combout\ = (\actr|alu_ctr[0]~16_combout\ & (\actr|alu_ctr[1]~14_combout\ & ((\mux_ulaA|m_out[10]~23_combout\) # (\mux_ulaB|m_out[10]~33_combout\)))) # (!\actr|alu_ctr[0]~16_combout\ & (((\mux_ulaA|m_out[10]~23_combout\ & 
-- \mux_ulaB|m_out[10]~33_combout\)) # (!\actr|alu_ctr[1]~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_ulaA|m_out[10]~23_combout\,
	datab => \mux_ulaB|m_out[10]~33_combout\,
	datac => \actr|alu_ctr[0]~16_combout\,
	datad => \actr|alu_ctr[1]~14_combout\,
	combout => \alu|Mux21~2_combout\);

-- Location: LCCOMB_X39_Y30_N10
\alu|ShiftRight0~84\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftRight0~84_combout\ = (\mux_ulaA|m_out[1]~30_combout\ & (\rgB|sr_out\(31))) # (!\mux_ulaA|m_out[1]~30_combout\ & ((\alu|ShiftLeft0~140_combout\ & ((\alu|ShiftRight1~51_combout\))) # (!\alu|ShiftLeft0~140_combout\ & (\rgB|sr_out\(31)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rgB|sr_out\(31),
	datab => \mux_ulaA|m_out[1]~30_combout\,
	datac => \alu|ShiftRight1~51_combout\,
	datad => \alu|ShiftLeft0~140_combout\,
	combout => \alu|ShiftRight0~84_combout\);

-- Location: LCCOMB_X42_Y30_N24
\alu|Mux17~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux17~2_combout\ = (\actr|alu_ctr[0]~16_combout\ & (\actr|alu_ctr[1]~14_combout\ & ((\mux_ulaB|m_out[14]~25_combout\) # (\mux_ulaA|m_out[14]~19_combout\)))) # (!\actr|alu_ctr[0]~16_combout\ & (((\mux_ulaB|m_out[14]~25_combout\ & 
-- \mux_ulaA|m_out[14]~19_combout\)) # (!\actr|alu_ctr[1]~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001110000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_ulaB|m_out[14]~25_combout\,
	datab => \actr|alu_ctr[0]~16_combout\,
	datac => \actr|alu_ctr[1]~14_combout\,
	datad => \mux_ulaA|m_out[14]~19_combout\,
	combout => \alu|Mux17~2_combout\);

-- Location: LCCOMB_X44_Y34_N26
\alu|ShiftLeft0~83\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftLeft0~83_combout\ = (\alu|ShiftLeft0~21_combout\ & ((\mux_ulaA|m_out[3]~28_combout\ & (\alu|ShiftLeft0~79_combout\)) # (!\mux_ulaA|m_out[3]~28_combout\ & ((\alu|ShiftLeft0~82_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|ShiftLeft0~79_combout\,
	datab => \mux_ulaA|m_out[3]~28_combout\,
	datac => \alu|ShiftLeft0~82_combout\,
	datad => \alu|ShiftLeft0~21_combout\,
	combout => \alu|ShiftLeft0~83_combout\);

-- Location: LCCOMB_X41_Y34_N12
\alu|Mux16~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux16~2_combout\ = (\mux_ulaB|m_out[15]~23_combout\ & ((\actr|alu_ctr[0]~16_combout\) # ((\mux_ulaA|m_out[15]~16_combout\ & !\actr|alu_ctr[3]~21_combout\)))) # (!\mux_ulaB|m_out[15]~23_combout\ & (\actr|alu_ctr[0]~16_combout\ & 
-- ((\mux_ulaA|m_out[15]~16_combout\) # (\actr|alu_ctr[3]~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_ulaB|m_out[15]~23_combout\,
	datab => \mux_ulaA|m_out[15]~16_combout\,
	datac => \actr|alu_ctr[0]~16_combout\,
	datad => \actr|alu_ctr[3]~21_combout\,
	combout => \alu|Mux16~2_combout\);

-- Location: LCCOMB_X44_Y34_N12
\alu|Mux16~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux16~3_combout\ = (\alu|Mux16~2_combout\ & ((\alu|a32~59_combout\) # ((!\actr|alu_ctr[3]~21_combout\)))) # (!\alu|Mux16~2_combout\ & (((\actr|alu_ctr[3]~21_combout\ & \alu|ShiftLeft0~83_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|Mux16~2_combout\,
	datab => \alu|a32~59_combout\,
	datac => \actr|alu_ctr[3]~21_combout\,
	datad => \alu|ShiftLeft0~83_combout\,
	combout => \alu|Mux16~3_combout\);

-- Location: LCCOMB_X41_Y30_N6
\alu|Mux13~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux13~2_combout\ = (\actr|alu_ctr[0]~16_combout\ & (\actr|alu_ctr[1]~14_combout\ & ((\mux_ulaB|m_out[18]~17_combout\) # (\mux_ulaA|m_out[18]~13_combout\)))) # (!\actr|alu_ctr[0]~16_combout\ & (((\mux_ulaB|m_out[18]~17_combout\ & 
-- \mux_ulaA|m_out[18]~13_combout\)) # (!\actr|alu_ctr[1]~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_ulaB|m_out[18]~17_combout\,
	datab => \actr|alu_ctr[0]~16_combout\,
	datac => \mux_ulaA|m_out[18]~13_combout\,
	datad => \actr|alu_ctr[1]~14_combout\,
	combout => \alu|Mux13~2_combout\);

-- Location: LCCOMB_X39_Y32_N26
\alu|a32~35\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|a32~35_combout\ = \mux_ulaB|m_out[19]~16_combout\ $ (((\ctr_mips|WideOr0~combout\ & ((\rgA|sr_out\(19)))) # (!\ctr_mips|WideOr0~combout\ & (\pc|sr_out\(19)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|sr_out\(19),
	datab => \ctr_mips|WideOr0~combout\,
	datac => \mux_ulaB|m_out[19]~16_combout\,
	datad => \rgA|sr_out\(19),
	combout => \alu|a32~35_combout\);

-- Location: LCCOMB_X45_Y36_N6
\alu|ShiftLeft0~104\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftLeft0~104_combout\ = (\mux_ulaA|m_out[0]~27_combout\ & (\rgB|sr_out\(19))) # (!\mux_ulaA|m_out[0]~27_combout\ & ((\rgB|sr_out\(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rgB|sr_out\(19),
	datac => \rgB|sr_out\(20),
	datad => \mux_ulaA|m_out[0]~27_combout\,
	combout => \alu|ShiftLeft0~104_combout\);

-- Location: LCCOMB_X40_Y33_N10
\alu|a32~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|a32~36_combout\ = \mux_ulaB|m_out[20]~15_combout\ $ (((\ctr_mips|WideOr0~combout\ & ((\rgA|sr_out\(20)))) # (!\ctr_mips|WideOr0~combout\ & (\pc|sr_out\(20)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011010011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctr_mips|WideOr0~combout\,
	datab => \mux_ulaB|m_out[20]~15_combout\,
	datac => \pc|sr_out\(20),
	datad => \rgA|sr_out\(20),
	combout => \alu|a32~36_combout\);

-- Location: LCCOMB_X41_Y30_N10
\alu|Mux11~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux11~2_combout\ = (\actr|alu_ctr[0]~16_combout\ & (\actr|alu_ctr[1]~14_combout\ & ((\mux_ulaB|m_out[20]~15_combout\) # (\mux_ulaA|m_out[20]~11_combout\)))) # (!\actr|alu_ctr[0]~16_combout\ & (((\mux_ulaB|m_out[20]~15_combout\ & 
-- \mux_ulaA|m_out[20]~11_combout\)) # (!\actr|alu_ctr[1]~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_ulaB|m_out[20]~15_combout\,
	datab => \actr|alu_ctr[0]~16_combout\,
	datac => \mux_ulaA|m_out[20]~11_combout\,
	datad => \actr|alu_ctr[1]~14_combout\,
	combout => \alu|Mux11~2_combout\);

-- Location: LCCOMB_X38_Y36_N26
\alu|ShiftLeft0~107\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftLeft0~107_combout\ = (\mux_ulaA|m_out[0]~27_combout\ & ((\mux_ulaA|m_out[1]~30_combout\ & ((\rgB|sr_out\(18)))) # (!\mux_ulaA|m_out[1]~30_combout\ & (\rgB|sr_out\(20)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rgB|sr_out\(20),
	datab => \rgB|sr_out\(18),
	datac => \mux_ulaA|m_out[0]~27_combout\,
	datad => \mux_ulaA|m_out[1]~30_combout\,
	combout => \alu|ShiftLeft0~107_combout\);

-- Location: LCCOMB_X38_Y36_N24
\alu|ShiftLeft0~109\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftLeft0~109_combout\ = (!\mux_ulaB|Equal2~0_combout\ & ((\alu|ShiftLeft0~107_combout\) # ((\alu|ShiftLeft0~108_combout\ & !\mux_ulaA|m_out[0]~27_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|ShiftLeft0~108_combout\,
	datab => \mux_ulaB|Equal2~0_combout\,
	datac => \mux_ulaA|m_out[0]~27_combout\,
	datad => \alu|ShiftLeft0~107_combout\,
	combout => \alu|ShiftLeft0~109_combout\);

-- Location: LCCOMB_X38_Y32_N26
\alu|ShiftLeft0~110\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftLeft0~110_combout\ = (\mux_ulaA|m_out[2]~29_combout\ & ((\alu|ShiftLeft0~95_combout\))) # (!\mux_ulaA|m_out[2]~29_combout\ & (\alu|ShiftLeft0~109_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mux_ulaA|m_out[2]~29_combout\,
	datac => \alu|ShiftLeft0~109_combout\,
	datad => \alu|ShiftLeft0~95_combout\,
	combout => \alu|ShiftLeft0~110_combout\);

-- Location: LCCOMB_X42_Y31_N30
\alu|Mux10~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux10~14_combout\ = (\actr|alu_ctr[1]~14_combout\ & ((\mux_ulaA|m_out[21]~10_combout\ & ((\actr|alu_ctr[0]~16_combout\) # (\mux_ulaB|m_out[21]~14_combout\))) # (!\mux_ulaA|m_out[21]~10_combout\ & (\actr|alu_ctr[0]~16_combout\ & 
-- \mux_ulaB|m_out[21]~14_combout\)))) # (!\actr|alu_ctr[1]~14_combout\ & (((!\actr|alu_ctr[0]~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101110000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_ulaA|m_out[21]~10_combout\,
	datab => \actr|alu_ctr[1]~14_combout\,
	datac => \actr|alu_ctr[0]~16_combout\,
	datad => \mux_ulaB|m_out[21]~14_combout\,
	combout => \alu|Mux10~14_combout\);

-- Location: LCCOMB_X43_Y31_N24
\alu|Mux8~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux8~0_combout\ = (\actr|alu_ctr[1]~14_combout\ & ((\mux_ulaB|m_out[23]~12_combout\ & ((\mux_ulaA|m_out[23]~8_combout\) # (\actr|alu_ctr[0]~16_combout\))) # (!\mux_ulaB|m_out[23]~12_combout\ & (\mux_ulaA|m_out[23]~8_combout\ & 
-- \actr|alu_ctr[0]~16_combout\)))) # (!\actr|alu_ctr[1]~14_combout\ & (((!\actr|alu_ctr[0]~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100011010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \actr|alu_ctr[1]~14_combout\,
	datab => \mux_ulaB|m_out[23]~12_combout\,
	datac => \mux_ulaA|m_out[23]~8_combout\,
	datad => \actr|alu_ctr[0]~16_combout\,
	combout => \alu|Mux8~0_combout\);

-- Location: LCCOMB_X43_Y31_N20
\alu|a32~39\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|a32~39_combout\ = \mux_ulaB|m_out[23]~12_combout\ $ (((\ctr_mips|WideOr0~combout\ & (\rgA|sr_out\(23))) # (!\ctr_mips|WideOr0~combout\ & ((\pc|sr_out\(23))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100011110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rgA|sr_out\(23),
	datab => \ctr_mips|WideOr0~combout\,
	datac => \pc|sr_out\(23),
	datad => \mux_ulaB|m_out[23]~12_combout\,
	combout => \alu|a32~39_combout\);

-- Location: LCCOMB_X44_Y32_N6
\alu|a32~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|a32~40_combout\ = \mux_ulaB|m_out[24]~11_combout\ $ (((\ctr_mips|WideOr0~combout\ & (\rgA|sr_out\(24))) # (!\ctr_mips|WideOr0~combout\ & ((\pc|sr_out\(24))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010011111011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctr_mips|WideOr0~combout\,
	datab => \rgA|sr_out\(24),
	datac => \pc|sr_out\(24),
	datad => \mux_ulaB|m_out[24]~11_combout\,
	combout => \alu|a32~40_combout\);

-- Location: LCCOMB_X40_Y32_N28
\alu|a32~41\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|a32~41_combout\ = \mux_ulaB|m_out[25]~10_combout\ $ (((\ctr_mips|WideOr0~combout\ & (\rgA|sr_out\(25))) # (!\ctr_mips|WideOr0~combout\ & ((\pc|sr_out\(25))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100011110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rgA|sr_out\(25),
	datab => \ctr_mips|WideOr0~combout\,
	datac => \pc|sr_out\(25),
	datad => \mux_ulaB|m_out[25]~10_combout\,
	combout => \alu|a32~41_combout\);

-- Location: LCCOMB_X40_Y32_N6
\alu|Mux6~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux6~2_combout\ = (\actr|alu_ctr[1]~14_combout\ & ((\mux_ulaA|m_out[25]~6_combout\ & ((\actr|alu_ctr[0]~16_combout\) # (\mux_ulaB|m_out[25]~10_combout\))) # (!\mux_ulaA|m_out[25]~6_combout\ & (\actr|alu_ctr[0]~16_combout\ & 
-- \mux_ulaB|m_out[25]~10_combout\)))) # (!\actr|alu_ctr[1]~14_combout\ & (((!\actr|alu_ctr[0]~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101110000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_ulaA|m_out[25]~6_combout\,
	datab => \actr|alu_ctr[1]~14_combout\,
	datac => \actr|alu_ctr[0]~16_combout\,
	datad => \mux_ulaB|m_out[25]~10_combout\,
	combout => \alu|Mux6~2_combout\);

-- Location: LCCOMB_X40_Y32_N20
\alu|Mux6~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux6~7_combout\ = (\mux_ulaA|m_out[25]~6_combout\) # ((\alu|Mux29~14_combout\) # (\mux_ulaB|m_out[25]~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_ulaA|m_out[25]~6_combout\,
	datac => \alu|Mux29~14_combout\,
	datad => \mux_ulaB|m_out[25]~10_combout\,
	combout => \alu|Mux6~7_combout\);

-- Location: LCCOMB_X40_Y29_N4
\alu|ShiftLeft0~122\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftLeft0~122_combout\ = (!\mux_ulaB|Equal2~0_combout\ & ((\mux_ulaA|m_out[0]~27_combout\ & (\alu|ShiftLeft0~119_combout\)) # (!\mux_ulaA|m_out[0]~27_combout\ & ((\alu|ShiftLeft0~121_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_ulaA|m_out[0]~27_combout\,
	datab => \mux_ulaB|Equal2~0_combout\,
	datac => \alu|ShiftLeft0~119_combout\,
	datad => \alu|ShiftLeft0~121_combout\,
	combout => \alu|ShiftLeft0~122_combout\);

-- Location: LCCOMB_X43_Y32_N6
\alu|Mux5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux5~0_combout\ = (\alu|ShiftRight0~88_combout\ & ((\alu|Mux7~2_combout\ & ((\alu|ShiftLeft0~112_combout\))) # (!\alu|Mux7~2_combout\ & (\alu|ShiftLeft0~122_combout\)))) # (!\alu|ShiftRight0~88_combout\ & (((\alu|Mux7~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|ShiftLeft0~122_combout\,
	datab => \alu|ShiftRight0~88_combout\,
	datac => \alu|ShiftLeft0~112_combout\,
	datad => \alu|Mux7~2_combout\,
	combout => \alu|Mux5~0_combout\);

-- Location: LCCOMB_X43_Y32_N24
\alu|Mux5~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux5~1_combout\ = (\alu|Mux5~0_combout\ & ((\alu|ShiftRight0~88_combout\) # ((\alu|ShiftLeft0~60_combout\)))) # (!\alu|Mux5~0_combout\ & (!\alu|ShiftRight0~88_combout\ & (\alu|ShiftLeft0~100_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|Mux5~0_combout\,
	datab => \alu|ShiftRight0~88_combout\,
	datac => \alu|ShiftLeft0~100_combout\,
	datad => \alu|ShiftLeft0~60_combout\,
	combout => \alu|Mux5~1_combout\);

-- Location: LCCOMB_X43_Y36_N26
\alu|Mux5~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux5~7_combout\ = (\mux_ulaA|m_out[26]~5_combout\) # ((\alu|Mux29~14_combout\) # (\mux_ulaB|m_out[26]~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_ulaA|m_out[26]~5_combout\,
	datac => \alu|Mux29~14_combout\,
	datad => \mux_ulaB|m_out[26]~9_combout\,
	combout => \alu|Mux5~7_combout\);

-- Location: LCCOMB_X40_Y30_N20
\alu|ShiftLeft0~123\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftLeft0~123_combout\ = (!\mux_ulaA|m_out[0]~27_combout\ & ((\mux_ulaA|m_out[1]~30_combout\ & ((\rgB|sr_out\(25)))) # (!\mux_ulaA|m_out[1]~30_combout\ & (\rgB|sr_out\(27)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rgB|sr_out\(27),
	datab => \rgB|sr_out\(25),
	datac => \mux_ulaA|m_out[0]~27_combout\,
	datad => \mux_ulaA|m_out[1]~30_combout\,
	combout => \alu|ShiftLeft0~123_combout\);

-- Location: LCCOMB_X40_Y30_N26
\alu|ShiftLeft0~124\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftLeft0~124_combout\ = (!\mux_ulaB|Equal2~0_combout\ & ((\alu|ShiftLeft0~123_combout\) # ((\mux_ulaA|m_out[0]~27_combout\ & \alu|ShiftLeft0~121_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|ShiftLeft0~123_combout\,
	datab => \mux_ulaB|Equal2~0_combout\,
	datac => \mux_ulaA|m_out[0]~27_combout\,
	datad => \alu|ShiftLeft0~121_combout\,
	combout => \alu|ShiftLeft0~124_combout\);

-- Location: LCCOMB_X45_Y32_N22
\alu|Mux4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux4~0_combout\ = (\alu|ShiftRight0~88_combout\ & (\alu|ShiftLeft0~124_combout\ & ((!\alu|Mux7~2_combout\)))) # (!\alu|ShiftRight0~88_combout\ & (((\alu|ShiftLeft0~103_combout\) # (\alu|Mux7~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|ShiftLeft0~124_combout\,
	datab => \alu|ShiftRight0~88_combout\,
	datac => \alu|ShiftLeft0~103_combout\,
	datad => \alu|Mux7~2_combout\,
	combout => \alu|Mux4~0_combout\);

-- Location: LCCOMB_X45_Y32_N24
\alu|Mux4~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux4~1_combout\ = (\alu|Mux7~2_combout\ & ((\alu|Mux4~0_combout\ & ((\alu|ShiftLeft0~63_combout\))) # (!\alu|Mux4~0_combout\ & (\alu|ShiftLeft0~115_combout\)))) # (!\alu|Mux7~2_combout\ & (\alu|Mux4~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|Mux7~2_combout\,
	datab => \alu|Mux4~0_combout\,
	datac => \alu|ShiftLeft0~115_combout\,
	datad => \alu|ShiftLeft0~63_combout\,
	combout => \alu|Mux4~1_combout\);

-- Location: LCCOMB_X45_Y32_N20
\alu|Mux4~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux4~2_combout\ = (\actr|alu_ctr[0]~16_combout\ & (\actr|alu_ctr[1]~14_combout\ & ((\mux_ulaB|m_out[27]~8_combout\) # (\mux_ulaA|m_out[27]~4_combout\)))) # (!\actr|alu_ctr[0]~16_combout\ & (((\mux_ulaB|m_out[27]~8_combout\ & 
-- \mux_ulaA|m_out[27]~4_combout\)) # (!\actr|alu_ctr[1]~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_ulaB|m_out[27]~8_combout\,
	datab => \actr|alu_ctr[0]~16_combout\,
	datac => \mux_ulaA|m_out[27]~4_combout\,
	datad => \actr|alu_ctr[1]~14_combout\,
	combout => \alu|Mux4~2_combout\);

-- Location: LCCOMB_X39_Y30_N2
\alu|Mux3~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux3~4_combout\ = (\mux_ulaB|m_out[28]~7_combout\ & (!\alu|Mux2~4_combout\ & ((\alu|Mux2~15_combout\) # (!\mux_ulaA|m_out[28]~3_combout\)))) # (!\mux_ulaB|m_out[28]~7_combout\ & (\alu|Mux2~4_combout\ $ (((\mux_ulaA|m_out[28]~3_combout\) # 
-- (\alu|Mux2~15_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000111110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_ulaB|m_out[28]~7_combout\,
	datab => \mux_ulaA|m_out[28]~3_combout\,
	datac => \alu|Mux2~15_combout\,
	datad => \alu|Mux2~4_combout\,
	combout => \alu|Mux3~4_combout\);

-- Location: LCCOMB_X40_Y30_N14
\alu|Mux3~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux3~6_combout\ = (\actr|alu_ctr[0]~16_combout\ & (\actr|alu_ctr[1]~14_combout\ & ((\mux_ulaA|m_out[28]~3_combout\) # (\mux_ulaB|m_out[28]~7_combout\)))) # (!\actr|alu_ctr[0]~16_combout\ & (((\mux_ulaA|m_out[28]~3_combout\ & 
-- \mux_ulaB|m_out[28]~7_combout\)) # (!\actr|alu_ctr[1]~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_ulaA|m_out[28]~3_combout\,
	datab => \mux_ulaB|m_out[28]~7_combout\,
	datac => \actr|alu_ctr[0]~16_combout\,
	datad => \actr|alu_ctr[1]~14_combout\,
	combout => \alu|Mux3~6_combout\);

-- Location: LCCOMB_X40_Y30_N30
\alu|ShiftLeft0~127\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftLeft0~127_combout\ = (!\mux_ulaB|Equal2~0_combout\ & ((\mux_ulaA|m_out[0]~27_combout\ & ((\rgB|sr_out\(26)))) # (!\mux_ulaA|m_out[0]~27_combout\ & (\rgB|sr_out\(27)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rgB|sr_out\(27),
	datab => \mux_ulaB|Equal2~0_combout\,
	datac => \rgB|sr_out\(26),
	datad => \mux_ulaA|m_out[0]~27_combout\,
	combout => \alu|ShiftLeft0~127_combout\);

-- Location: LCCOMB_X39_Y30_N28
\alu|ShiftLeft0~128\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftLeft0~128_combout\ = (!\mux_ulaB|Equal2~0_combout\ & ((\mux_ulaA|m_out[0]~27_combout\ & (\rgB|sr_out\(28))) # (!\mux_ulaA|m_out[0]~27_combout\ & ((\rgB|sr_out\(29))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_ulaB|Equal2~0_combout\,
	datab => \mux_ulaA|m_out[0]~27_combout\,
	datac => \rgB|sr_out\(28),
	datad => \rgB|sr_out\(29),
	combout => \alu|ShiftLeft0~128_combout\);

-- Location: LCCOMB_X39_Y30_N22
\alu|Mux2~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux2~5_combout\ = (\alu|ShiftLeft0~140_combout\ & (\alu|ShiftLeft0~128_combout\ & (!\alu|Mux29~18_combout\))) # (!\alu|ShiftLeft0~140_combout\ & (((\alu|Mux29~18_combout\) # (\alu|ShiftLeft0~120_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110101011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|ShiftLeft0~140_combout\,
	datab => \alu|ShiftLeft0~128_combout\,
	datac => \alu|Mux29~18_combout\,
	datad => \alu|ShiftLeft0~120_combout\,
	combout => \alu|Mux2~5_combout\);

-- Location: LCCOMB_X39_Y30_N20
\alu|Mux2~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux2~6_combout\ = (\alu|Mux29~18_combout\ & ((\alu|Mux2~5_combout\ & ((\alu|ShiftLeft0~110_combout\))) # (!\alu|Mux2~5_combout\ & (\alu|ShiftLeft0~127_combout\)))) # (!\alu|Mux29~18_combout\ & (((\alu|Mux2~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|Mux29~18_combout\,
	datab => \alu|ShiftLeft0~127_combout\,
	datac => \alu|ShiftLeft0~110_combout\,
	datad => \alu|Mux2~5_combout\,
	combout => \alu|Mux2~6_combout\);

-- Location: LCCOMB_X40_Y30_N6
\alu|ShiftLeft0~130\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftLeft0~130_combout\ = (\mux_ulaA|m_out[0]~27_combout\ & ((\mux_ulaA|m_out[1]~30_combout\ & (\rgB|sr_out\(27))) # (!\mux_ulaA|m_out[1]~30_combout\ & ((\rgB|sr_out\(29))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rgB|sr_out\(27),
	datab => \mux_ulaA|m_out[1]~30_combout\,
	datac => \mux_ulaA|m_out[0]~27_combout\,
	datad => \rgB|sr_out\(29),
	combout => \alu|ShiftLeft0~130_combout\);

-- Location: LCCOMB_X42_Y33_N20
\alu|a32~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|a32~44_combout\ = \mux_ulaB|m_out[30]~5_combout\ $ (((\ctr_mips|WideOr0~combout\ & ((\rgA|sr_out\(30)))) # (!\ctr_mips|WideOr0~combout\ & (\pc|sr_out\(30)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_ulaB|m_out[30]~5_combout\,
	datab => \pc|sr_out\(30),
	datac => \rgA|sr_out\(30),
	datad => \ctr_mips|WideOr0~combout\,
	combout => \alu|a32~44_combout\);

-- Location: LCCOMB_X42_Y30_N10
\alu|Mux1~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux1~8_combout\ = (\alu|ShiftLeft0~21_combout\ & (\actr|alu_ctr[0]~16_combout\ & (!\actr|alu_ctr[3]~21_combout\ & \alu|ShiftRight1~72_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|ShiftLeft0~21_combout\,
	datab => \actr|alu_ctr[0]~16_combout\,
	datac => \actr|alu_ctr[3]~21_combout\,
	datad => \alu|ShiftRight1~72_combout\,
	combout => \alu|Mux1~8_combout\);

-- Location: LCCOMB_X42_Y33_N6
\alu|Mux1~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux1~9_combout\ = (\alu|Mux1~8_combout\) # ((!\actr|alu_ctr[3]~21_combout\ & (!\actr|alu_ctr[0]~16_combout\ & \alu|Add1~60_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \actr|alu_ctr[3]~21_combout\,
	datab => \actr|alu_ctr[0]~16_combout\,
	datac => \alu|Mux1~8_combout\,
	datad => \alu|Add1~60_combout\,
	combout => \alu|Mux1~9_combout\);

-- Location: LCCOMB_X40_Y30_N24
\alu|ShiftLeft0~136\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftLeft0~136_combout\ = (\alu|ShiftLeft0~123_combout\) # ((\mux_ulaA|m_out[0]~27_combout\ & \alu|ShiftLeft0~121_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_ulaA|m_out[0]~27_combout\,
	datac => \alu|ShiftLeft0~123_combout\,
	datad => \alu|ShiftLeft0~121_combout\,
	combout => \alu|ShiftLeft0~136_combout\);

-- Location: LCCOMB_X35_Y33_N16
\ctr_mips|nstate.rtype_ex_st~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \ctr_mips|nstate.rtype_ex_st~2_combout\ = (!\ir|sr_out\(31) & (!\ir|sr_out\(26) & (\ctr_mips|pstate.decode_st~regout\ & !\ir|sr_out\(28))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir|sr_out\(31),
	datab => \ir|sr_out\(26),
	datac => \ctr_mips|pstate.decode_st~regout\,
	datad => \ir|sr_out\(28),
	combout => \ctr_mips|nstate.rtype_ex_st~2_combout\);

-- Location: LCCOMB_X38_Y33_N8
\ctr_mips|Mux0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \ctr_mips|Mux0~1_combout\ = (\ir|sr_out\(31) & (\ir|sr_out\(29) & (\ir|sr_out\(28)))) # (!\ir|sr_out\(31) & (((!\ir|sr_out\(28) & \ir|sr_out\(26)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir|sr_out\(31),
	datab => \ir|sr_out\(29),
	datac => \ir|sr_out\(28),
	datad => \ir|sr_out\(26),
	combout => \ctr_mips|Mux0~1_combout\);

-- Location: LCFF_X36_Y37_N25
\bcoreg|breg32_rtl_0_bypass[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \bcoreg|breg32_rtl_0_bypass[11]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bcoreg|breg32_rtl_0_bypass\(11));

-- Location: LCFF_X36_Y30_N13
\bcoreg|breg32_rtl_0_bypass[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \mux_reg_add|m_out[1]~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bcoreg|breg32_rtl_0_bypass\(3));

-- Location: LCFF_X36_Y30_N7
\bcoreg|breg32_rtl_0_bypass[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \bcoreg|breg32_rtl_0_bypass[7]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bcoreg|breg32_rtl_0_bypass\(7));

-- Location: LCCOMB_X36_Y31_N16
\bcoreg|breg32~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \bcoreg|breg32~40_combout\ = (\bcoreg|breg32_rtl_0_bypass\(0) & (\ir|sr_out\(20) $ (!\bcoreg|breg32_rtl_0_bypass\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000010010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir|sr_out\(20),
	datab => \bcoreg|breg32_rtl_0_bypass\(9),
	datac => \bcoreg|breg32_rtl_0_bypass\(0),
	combout => \bcoreg|breg32~40_combout\);

-- Location: LCFF_X36_Y37_N13
\bcoreg|breg32_rtl_1_bypass[19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \bcoreg|breg32_rtl_1_bypass[19]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bcoreg|breg32_rtl_1_bypass\(19));

-- Location: LCCOMB_X36_Y30_N16
\bcoreg|breg32~41\ : cycloneii_lcell_comb
-- Equation(s):
-- \bcoreg|breg32~41_combout\ = (\bcoreg|breg32_rtl_0_bypass\(3) & (\ir|sr_out\(22) & (\bcoreg|breg32_rtl_0_bypass\(1) $ (!\ir|sr_out\(21))))) # (!\bcoreg|breg32_rtl_0_bypass\(3) & (!\ir|sr_out\(22) & (\bcoreg|breg32_rtl_0_bypass\(1) $ (!\ir|sr_out\(21)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcoreg|breg32_rtl_0_bypass\(3),
	datab => \bcoreg|breg32_rtl_0_bypass\(1),
	datac => \ir|sr_out\(21),
	datad => \ir|sr_out\(22),
	combout => \bcoreg|breg32~41_combout\);

-- Location: LCCOMB_X43_Y33_N30
\alu|Equal0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Equal0~4_combout\ = (!\alu|Mux15~8_combout\ & (!\alu|Mux1~10_combout\ & (!\alu|Mux30~14_combout\ & !\alu|Mux16~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|Mux15~8_combout\,
	datab => \alu|Mux1~10_combout\,
	datac => \alu|Mux30~14_combout\,
	datad => \alu|Mux16~13_combout\,
	combout => \alu|Equal0~4_combout\);

-- Location: LCCOMB_X43_Y33_N24
\alu|Equal0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Equal0~5_combout\ = (!\alu|Mux8~8_combout\ & (!\alu|Mux9~10_combout\ & (!\alu|Mux10~19_combout\ & \alu|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|Mux8~8_combout\,
	datab => \alu|Mux9~10_combout\,
	datac => \alu|Mux10~19_combout\,
	datad => \alu|Equal0~4_combout\,
	combout => \alu|Equal0~5_combout\);

-- Location: LCCOMB_X43_Y33_N10
\alu|Equal0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Equal0~6_combout\ = (!\alu|Mux19~11_combout\ & (!\alu|Mux18~11_combout\ & (\alu|Equal0~5_combout\ & !\alu|Mux17~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|Mux19~11_combout\,
	datab => \alu|Mux18~11_combout\,
	datac => \alu|Equal0~5_combout\,
	datad => \alu|Mux17~11_combout\,
	combout => \alu|Equal0~6_combout\);

-- Location: LCCOMB_X35_Y33_N2
\ctr_mips|Equal8~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ctr_mips|Equal8~0_combout\ = ((\ir|sr_out\(31)) # ((\ir|sr_out\(26)) # (!\ctr_mips|nstate.branch_ex_st~0_combout\))) # (!\ir|sr_out\(28))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir|sr_out\(28),
	datab => \ir|sr_out\(31),
	datac => \ctr_mips|nstate.branch_ex_st~0_combout\,
	datad => \ir|sr_out\(26),
	combout => \ctr_mips|Equal8~0_combout\);

-- Location: LCCOMB_X44_Y33_N24
\pc|sr_out~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \pc|sr_out~30_combout\ = (\ctr_mips|pstate.branch_ex_st~regout\ & (\regULA|sr_out\(28))) # (!\ctr_mips|pstate.branch_ex_st~regout\ & ((\ctr_mips|pstate.jump_ex_st~regout\ & (\regULA|sr_out\(28))) # (!\ctr_mips|pstate.jump_ex_st~regout\ & 
-- ((\alu|Mux3~10_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regULA|sr_out\(28),
	datab => \ctr_mips|pstate.branch_ex_st~regout\,
	datac => \alu|Mux3~10_combout\,
	datad => \ctr_mips|pstate.jump_ex_st~regout\,
	combout => \pc|sr_out~30_combout\);

-- Location: LCFF_X43_Y32_N15
\regULA|sr_out[26]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \alu|Mux5~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regULA|sr_out\(26));

-- Location: LCCOMB_X43_Y31_N12
\bcoreg|regA[23]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \bcoreg|regA[23]~8_combout\ = (!\bcoreg|Equal0~1_combout\ & ((\bcoreg|breg32~combout\ & ((\bcoreg|breg32_rtl_1_bypass\(57)))) # (!\bcoreg|breg32~combout\ & (\bcoreg|breg32_rtl_0|auto_generated|ram_block1a23\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcoreg|breg32_rtl_0|auto_generated|ram_block1a23\,
	datab => \bcoreg|breg32_rtl_1_bypass\(57),
	datac => \bcoreg|Equal0~1_combout\,
	datad => \bcoreg|breg32~combout\,
	combout => \bcoreg|regA[23]~8_combout\);

-- Location: LCFF_X42_Y32_N19
\bcoreg|breg32_rtl_1_bypass[41]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \breg_data_mux|m_out[15]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bcoreg|breg32_rtl_1_bypass\(41));

-- Location: LCCOMB_X42_Y32_N16
\bcoreg|regA[15]~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \bcoreg|regA[15]~16_combout\ = (!\bcoreg|Equal0~1_combout\ & ((\bcoreg|breg32~combout\ & ((\bcoreg|breg32_rtl_1_bypass\(41)))) # (!\bcoreg|breg32~combout\ & (\bcoreg|breg32_rtl_0|auto_generated|ram_block1a15\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcoreg|Equal0~1_combout\,
	datab => \bcoreg|breg32_rtl_0|auto_generated|ram_block1a15\,
	datac => \bcoreg|breg32~combout\,
	datad => \bcoreg|breg32_rtl_1_bypass\(41),
	combout => \bcoreg|regA[15]~16_combout\);

-- Location: LCFF_X36_Y34_N7
\bcoreg|breg32_rtl_1_bypass[23]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \bcoreg|breg32_rtl_1_bypass[23]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bcoreg|breg32_rtl_1_bypass\(23));

-- Location: LCCOMB_X43_Y36_N24
\bcoreg|regA[6]~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \bcoreg|regA[6]~17_combout\ = (!\bcoreg|Equal0~1_combout\ & ((\bcoreg|breg32~combout\ & (\bcoreg|breg32_rtl_1_bypass\(23))) # (!\bcoreg|breg32~combout\ & ((\bcoreg|breg32_rtl_0|auto_generated|ram_block1a6\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcoreg|Equal0~1_combout\,
	datab => \bcoreg|breg32_rtl_1_bypass\(23),
	datac => \bcoreg|breg32_rtl_0|auto_generated|ram_block1a6\,
	datad => \bcoreg|breg32~combout\,
	combout => \bcoreg|regA[6]~17_combout\);

-- Location: LCFF_X36_Y34_N17
\bcoreg|breg32_rtl_1_bypass[33]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \bcoreg|breg32_rtl_1_bypass[33]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bcoreg|breg32_rtl_1_bypass\(33));

-- Location: LCCOMB_X43_Y35_N24
\bcoreg|regA[11]~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \bcoreg|regA[11]~22_combout\ = (!\bcoreg|Equal0~1_combout\ & ((\bcoreg|breg32~combout\ & ((\bcoreg|breg32_rtl_1_bypass\(33)))) # (!\bcoreg|breg32~combout\ & (\bcoreg|breg32_rtl_0|auto_generated|ram_block1a11\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcoreg|Equal0~1_combout\,
	datab => \bcoreg|breg32~combout\,
	datac => \bcoreg|breg32_rtl_0|auto_generated|ram_block1a11\,
	datad => \bcoreg|breg32_rtl_1_bypass\(33),
	combout => \bcoreg|regA[11]~22_combout\);

-- Location: LCFF_X38_Y35_N3
\bcoreg|breg32_rtl_1_bypass[25]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \breg_data_mux|m_out[7]~40_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bcoreg|breg32_rtl_1_bypass\(25));

-- Location: LCCOMB_X44_Y35_N12
\bcoreg|regA[7]~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \bcoreg|regA[7]~26_combout\ = (!\bcoreg|Equal0~1_combout\ & ((\bcoreg|breg32~combout\ & ((\bcoreg|breg32_rtl_1_bypass\(25)))) # (!\bcoreg|breg32~combout\ & (\bcoreg|breg32_rtl_0|auto_generated|ram_block1a7\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcoreg|Equal0~1_combout\,
	datab => \bcoreg|breg32_rtl_0|auto_generated|ram_block1a7\,
	datac => \bcoreg|breg32_rtl_1_bypass\(25),
	datad => \bcoreg|breg32~combout\,
	combout => \bcoreg|regA[7]~26_combout\);

-- Location: LCFF_X41_Y34_N11
\regULA|sr_out[31]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \alu|Mux0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regULA|sr_out\(31));

-- Location: LCCOMB_X36_Y37_N6
\bcoreg|regB[13]~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \bcoreg|regB[13]~19_combout\ = (!\bcoreg|Equal1~1_combout\ & ((\bcoreg|breg32~45\ & (\bcoreg|breg32_rtl_1_bypass\(37))) # (!\bcoreg|breg32~45\ & ((\bcoreg|breg32_rtl_1|auto_generated|ram_block1a13\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcoreg|breg32_rtl_1_bypass\(37),
	datab => \bcoreg|Equal1~1_combout\,
	datac => \bcoreg|breg32~45\,
	datad => \bcoreg|breg32_rtl_1|auto_generated|ram_block1a13\,
	combout => \bcoreg|regB[13]~19_combout\);

-- Location: LCCOMB_X42_Y35_N0
\bcoreg|regB[9]~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \bcoreg|regB[9]~23_combout\ = (!\bcoreg|Equal1~1_combout\ & ((\bcoreg|breg32~45\ & ((\bcoreg|breg32_rtl_1_bypass\(29)))) # (!\bcoreg|breg32~45\ & (\bcoreg|breg32_rtl_1|auto_generated|ram_block1a9\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcoreg|breg32_rtl_1|auto_generated|ram_block1a9\,
	datab => \bcoreg|breg32_rtl_1_bypass\(29),
	datac => \bcoreg|breg32~45\,
	datad => \bcoreg|Equal1~1_combout\,
	combout => \bcoreg|regB[9]~23_combout\);

-- Location: LCFF_X36_Y35_N7
\rdm|sr_out[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \mem|altsyncram_component|auto_generated|q_a\(8),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rdm|sr_out\(8));

-- Location: LCFF_X38_Y33_N5
\rdm|sr_out[28]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \rdm|sr_out[28]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rdm|sr_out\(28));

-- Location: LCFF_X38_Y33_N11
\rdm|sr_out[20]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \mem|altsyncram_component|auto_generated|q_a\(20),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rdm|sr_out\(20));

-- Location: LCCOMB_X38_Y33_N10
\breg_data_mux|m_out[4]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \breg_data_mux|m_out[4]~5_combout\ = (\breg_data_mux|m_out[3]~0_combout\ & (\breg_data_mux|m_out[3]~1_combout\)) # (!\breg_data_mux|m_out[3]~0_combout\ & ((\breg_data_mux|m_out[3]~1_combout\ & ((\rdm|sr_out\(28)))) # (!\breg_data_mux|m_out[3]~1_combout\ & 
-- (\rdm|sr_out\(20)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \breg_data_mux|m_out[3]~0_combout\,
	datab => \breg_data_mux|m_out[3]~1_combout\,
	datac => \rdm|sr_out\(20),
	datad => \rdm|sr_out\(28),
	combout => \breg_data_mux|m_out[4]~5_combout\);

-- Location: LCFF_X36_Y33_N11
\rdm|sr_out[30]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \mem|altsyncram_component|auto_generated|q_a\(30),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rdm|sr_out\(30));

-- Location: LCFF_X36_Y33_N1
\rdm|sr_out[22]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \mem|altsyncram_component|auto_generated|q_a\(22),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rdm|sr_out\(22));

-- Location: LCCOMB_X36_Y33_N0
\breg_data_mux|m_out[6]~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \breg_data_mux|m_out[6]~27_combout\ = (\breg_data_mux|m_out[3]~1_combout\ & ((\rdm|sr_out\(30)) # ((\breg_data_mux|m_out[3]~0_combout\)))) # (!\breg_data_mux|m_out[3]~1_combout\ & (((\rdm|sr_out\(22) & !\breg_data_mux|m_out[3]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rdm|sr_out\(30),
	datab => \breg_data_mux|m_out[3]~1_combout\,
	datac => \rdm|sr_out\(22),
	datad => \breg_data_mux|m_out[3]~0_combout\,
	combout => \breg_data_mux|m_out[6]~27_combout\);

-- Location: LCFF_X36_Y33_N3
\rdm|sr_out[29]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \mem|altsyncram_component|auto_generated|q_a\(29),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rdm|sr_out\(29));

-- Location: LCFF_X38_Y35_N27
\rdm|sr_out[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \mem|altsyncram_component|auto_generated|q_a\(5),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rdm|sr_out\(5));

-- Location: LCFF_X38_Y33_N13
\rdm|sr_out[21]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \mem|altsyncram_component|auto_generated|q_a\(21),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rdm|sr_out\(21));

-- Location: LCCOMB_X38_Y33_N12
\breg_data_mux|m_out[5]~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \breg_data_mux|m_out[5]~30_combout\ = (\breg_data_mux|m_out[3]~0_combout\ & ((\rdm|sr_out\(5)) # ((\breg_data_mux|m_out[3]~1_combout\)))) # (!\breg_data_mux|m_out[3]~0_combout\ & (((\rdm|sr_out\(21) & !\breg_data_mux|m_out[3]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \breg_data_mux|m_out[3]~0_combout\,
	datab => \rdm|sr_out\(5),
	datac => \rdm|sr_out\(21),
	datad => \breg_data_mux|m_out[3]~1_combout\,
	combout => \breg_data_mux|m_out[5]~30_combout\);

-- Location: LCFF_X38_Y34_N13
\rdm|sr_out[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \mem|altsyncram_component|auto_generated|q_a\(13),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rdm|sr_out\(13));

-- Location: LCCOMB_X38_Y34_N12
\breg_data_mux|m_out[5]~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \breg_data_mux|m_out[5]~31_combout\ = (\breg_data_mux|m_out[3]~1_combout\ & ((\breg_data_mux|m_out[5]~30_combout\ & ((\rdm|sr_out\(13)))) # (!\breg_data_mux|m_out[5]~30_combout\ & (\rdm|sr_out\(29))))) # (!\breg_data_mux|m_out[3]~1_combout\ & 
-- (((\breg_data_mux|m_out[5]~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \breg_data_mux|m_out[3]~1_combout\,
	datab => \rdm|sr_out\(29),
	datac => \rdm|sr_out\(13),
	datad => \breg_data_mux|m_out[5]~30_combout\,
	combout => \breg_data_mux|m_out[5]~31_combout\);

-- Location: LCFF_X38_Y33_N15
\rdm|sr_out[27]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \mem|altsyncram_component|auto_generated|q_a\(27),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rdm|sr_out\(27));

-- Location: LCFF_X38_Y35_N15
\rdm|sr_out[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \mem|altsyncram_component|auto_generated|q_a\(3),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rdm|sr_out\(3));

-- Location: LCFF_X38_Y33_N25
\rdm|sr_out[19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \mem|altsyncram_component|auto_generated|q_a\(19),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rdm|sr_out\(19));

-- Location: LCCOMB_X38_Y33_N24
\breg_data_mux|m_out[3]~41\ : cycloneii_lcell_comb
-- Equation(s):
-- \breg_data_mux|m_out[3]~41_combout\ = (\breg_data_mux|m_out[3]~0_combout\ & ((\rdm|sr_out\(3)) # ((\breg_data_mux|m_out[3]~1_combout\)))) # (!\breg_data_mux|m_out[3]~0_combout\ & (((\rdm|sr_out\(19) & !\breg_data_mux|m_out[3]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \breg_data_mux|m_out[3]~0_combout\,
	datab => \rdm|sr_out\(3),
	datac => \rdm|sr_out\(19),
	datad => \breg_data_mux|m_out[3]~1_combout\,
	combout => \breg_data_mux|m_out[3]~41_combout\);

-- Location: LCFF_X38_Y35_N25
\rdm|sr_out[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \mem|altsyncram_component|auto_generated|q_a\(11),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rdm|sr_out\(11));

-- Location: LCCOMB_X38_Y33_N14
\breg_data_mux|m_out[3]~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \breg_data_mux|m_out[3]~42_combout\ = (\breg_data_mux|m_out[3]~41_combout\ & (((\rdm|sr_out\(11))) # (!\breg_data_mux|m_out[3]~1_combout\))) # (!\breg_data_mux|m_out[3]~41_combout\ & (\breg_data_mux|m_out[3]~1_combout\ & (\rdm|sr_out\(27))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \breg_data_mux|m_out[3]~41_combout\,
	datab => \breg_data_mux|m_out[3]~1_combout\,
	datac => \rdm|sr_out\(27),
	datad => \rdm|sr_out\(11),
	combout => \breg_data_mux|m_out[3]~42_combout\);

-- Location: LCFF_X38_Y33_N31
\rdm|sr_out[26]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \rdm|sr_out[26]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rdm|sr_out\(26));

-- Location: LCFF_X38_Y33_N1
\rdm|sr_out[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \mem|altsyncram_component|auto_generated|q_a\(18),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rdm|sr_out\(18));

-- Location: LCCOMB_X38_Y33_N0
\breg_data_mux|m_out[2]~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \breg_data_mux|m_out[2]~44_combout\ = (\breg_data_mux|m_out[3]~0_combout\ & (((\breg_data_mux|m_out[3]~1_combout\)))) # (!\breg_data_mux|m_out[3]~0_combout\ & ((\breg_data_mux|m_out[3]~1_combout\ & (\rdm|sr_out\(26))) # 
-- (!\breg_data_mux|m_out[3]~1_combout\ & ((\rdm|sr_out\(18))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \breg_data_mux|m_out[3]~0_combout\,
	datab => \rdm|sr_out\(26),
	datac => \rdm|sr_out\(18),
	datad => \breg_data_mux|m_out[3]~1_combout\,
	combout => \breg_data_mux|m_out[2]~44_combout\);

-- Location: LCFF_X36_Y33_N21
\rdm|sr_out[25]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \mem|altsyncram_component|auto_generated|q_a\(25),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rdm|sr_out\(25));

-- Location: LCFF_X38_Y35_N23
\rdm|sr_out[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \mem|altsyncram_component|auto_generated|q_a\(1),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rdm|sr_out\(1));

-- Location: LCFF_X38_Y33_N3
\rdm|sr_out[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \mem|altsyncram_component|auto_generated|q_a\(17),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rdm|sr_out\(17));

-- Location: LCCOMB_X38_Y33_N2
\breg_data_mux|m_out[1]~47\ : cycloneii_lcell_comb
-- Equation(s):
-- \breg_data_mux|m_out[1]~47_combout\ = (\breg_data_mux|m_out[3]~0_combout\ & ((\breg_data_mux|m_out[3]~1_combout\) # ((\rdm|sr_out\(1))))) # (!\breg_data_mux|m_out[3]~0_combout\ & (!\breg_data_mux|m_out[3]~1_combout\ & (\rdm|sr_out\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \breg_data_mux|m_out[3]~0_combout\,
	datab => \breg_data_mux|m_out[3]~1_combout\,
	datac => \rdm|sr_out\(17),
	datad => \rdm|sr_out\(1),
	combout => \breg_data_mux|m_out[1]~47_combout\);

-- Location: LCFF_X36_Y35_N5
\rdm|sr_out[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \mem|altsyncram_component|auto_generated|q_a\(9),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rdm|sr_out\(9));

-- Location: LCCOMB_X36_Y33_N20
\breg_data_mux|m_out[1]~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \breg_data_mux|m_out[1]~48_combout\ = (\breg_data_mux|m_out[1]~47_combout\ & (((\rdm|sr_out\(9))) # (!\breg_data_mux|m_out[3]~1_combout\))) # (!\breg_data_mux|m_out[1]~47_combout\ & (\breg_data_mux|m_out[3]~1_combout\ & (\rdm|sr_out\(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \breg_data_mux|m_out[1]~47_combout\,
	datab => \breg_data_mux|m_out[3]~1_combout\,
	datac => \rdm|sr_out\(25),
	datad => \rdm|sr_out\(9),
	combout => \breg_data_mux|m_out[1]~48_combout\);

-- Location: LCCOMB_X43_Y37_N6
\alu|a32~45\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|a32~45_combout\ = \mux_ulaB|m_out[1]~48_combout\ $ (((\ctr_mips|WideOr0~combout\ & ((\rgA|sr_out\(1)))) # (!\ctr_mips|WideOr0~combout\ & (\pc|sr_out\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011010011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_ulaB|m_out[1]~48_combout\,
	datab => \ctr_mips|WideOr0~combout\,
	datac => \pc|sr_out\(1),
	datad => \rgA|sr_out\(1),
	combout => \alu|a32~45_combout\);

-- Location: LCCOMB_X43_Y37_N12
\alu|Mux30~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux30~16_combout\ = (!\actr|alu_ctr[3]~21_combout\ & (!\alu|ShiftLeft0~19_combout\ & (\actr|alu_ctr[0]~16_combout\ & !\alu|ShiftLeft0~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \actr|alu_ctr[3]~21_combout\,
	datab => \alu|ShiftLeft0~19_combout\,
	datac => \actr|alu_ctr[0]~16_combout\,
	datad => \alu|ShiftLeft0~16_combout\,
	combout => \alu|Mux30~16_combout\);

-- Location: LCCOMB_X39_Y33_N6
\alu|a32~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|a32~46_combout\ = \mux_ulaB|m_out[2]~50_combout\ $ (((\ctr_mips|WideOr0~combout\ & (\rgA|sr_out\(2))) # (!\ctr_mips|WideOr0~combout\ & ((\pc|sr_out\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101100101101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_ulaB|m_out[2]~50_combout\,
	datab => \ctr_mips|WideOr0~combout\,
	datac => \rgA|sr_out\(2),
	datad => \pc|sr_out\(2),
	combout => \alu|a32~46_combout\);

-- Location: LCCOMB_X43_Y36_N10
\alu|a32~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|a32~50_combout\ = \mux_ulaB|m_out[6]~41_combout\ $ (((\ctr_mips|WideOr0~combout\ & ((\rgA|sr_out\(6)))) # (!\ctr_mips|WideOr0~combout\ & (\pc|sr_out\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_ulaB|m_out[6]~41_combout\,
	datab => \pc|sr_out\(6),
	datac => \rgA|sr_out\(6),
	datad => \ctr_mips|WideOr0~combout\,
	combout => \alu|a32~50_combout\);

-- Location: LCCOMB_X44_Y36_N10
\alu|a32~54\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|a32~54_combout\ = \mux_ulaB|m_out[10]~33_combout\ $ (((\ctr_mips|WideOr0~combout\ & ((\rgA|sr_out\(10)))) # (!\ctr_mips|WideOr0~combout\ & (\pc|sr_out\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001110111100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|sr_out\(10),
	datab => \ctr_mips|WideOr0~combout\,
	datac => \rgA|sr_out\(10),
	datad => \mux_ulaB|m_out[10]~33_combout\,
	combout => \alu|a32~54_combout\);

-- Location: LCCOMB_X43_Y35_N28
\alu|a32~55\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|a32~55_combout\ = \mux_ulaB|m_out[11]~31_combout\ $ (((\ctr_mips|WideOr0~combout\ & ((\rgA|sr_out\(11)))) # (!\ctr_mips|WideOr0~combout\ & (\pc|sr_out\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_ulaB|m_out[11]~31_combout\,
	datab => \pc|sr_out\(11),
	datac => \rgA|sr_out\(11),
	datad => \ctr_mips|WideOr0~combout\,
	combout => \alu|a32~55_combout\);

-- Location: LCCOMB_X39_Y30_N12
\alu|ShiftRight0~87\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftRight0~87_combout\ = (!\ctr_mips|pstate.c_mem_add_st~regout\ & (!\ctr_mips|pstate.decode_st~regout\ & (\ctr_mips|pstate.fetch_st~regout\ & \alu|ShiftRight0~84_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctr_mips|pstate.c_mem_add_st~regout\,
	datab => \ctr_mips|pstate.decode_st~regout\,
	datac => \ctr_mips|pstate.fetch_st~regout\,
	datad => \alu|ShiftRight0~84_combout\,
	combout => \alu|ShiftRight0~87_combout\);

-- Location: LCCOMB_X42_Y32_N20
\alu|a32~59\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|a32~59_combout\ = \mux_ulaB|m_out[15]~23_combout\ $ (((\ctr_mips|WideOr0~combout\ & (\rgA|sr_out\(15))) # (!\ctr_mips|WideOr0~combout\ & ((\pc|sr_out\(15))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110001101101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rgA|sr_out\(15),
	datab => \mux_ulaB|m_out[15]~23_combout\,
	datac => \ctr_mips|WideOr0~combout\,
	datad => \pc|sr_out\(15),
	combout => \alu|a32~59_combout\);

-- Location: LCCOMB_X42_Y37_N16
\alu|ShiftRight0~88\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftRight0~88_combout\ = (!\mux_ulaA|m_out[3]~28_combout\ & ((\ctr_mips|WideOr0~combout\ & ((!\rgA|sr_out\(4)))) # (!\ctr_mips|WideOr0~combout\ & (!\pc|sr_out\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_ulaA|m_out[3]~28_combout\,
	datab => \pc|sr_out\(4),
	datac => \rgA|sr_out\(4),
	datad => \ctr_mips|WideOr0~combout\,
	combout => \alu|ShiftRight0~88_combout\);

-- Location: LCCOMB_X35_Y36_N0
\mux_store|m_out[17]~65\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux_store|m_out[17]~65_combout\ = (\rgB|sr_out\(17) & (((!\ctr_mips|Equal2~0_combout\) # (!\ctr_mips|pstate.writemem_st~regout\)) # (!\ir|sr_out\(31))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir|sr_out\(31),
	datab => \ctr_mips|pstate.writemem_st~regout\,
	datac => \rgB|sr_out\(17),
	datad => \ctr_mips|Equal2~0_combout\,
	combout => \mux_store|m_out[17]~65_combout\);

-- Location: LCCOMB_X36_Y36_N10
\mux_store|m_out[20]~69\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux_store|m_out[20]~69_combout\ = (\rgB|sr_out\(20) & (((!\ctr_mips|Equal2~0_combout\) # (!\ctr_mips|pstate.writemem_st~regout\)) # (!\ir|sr_out\(31))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir|sr_out\(31),
	datab => \rgB|sr_out\(20),
	datac => \ctr_mips|pstate.writemem_st~regout\,
	datad => \ctr_mips|Equal2~0_combout\,
	combout => \mux_store|m_out[20]~69_combout\);

-- Location: LCCOMB_X38_Y33_N30
\rdm|sr_out[26]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \rdm|sr_out[26]~feeder_combout\ = \mem|altsyncram_component|auto_generated|q_a\(26)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mem|altsyncram_component|auto_generated|q_a\(26),
	combout => \rdm|sr_out[26]~feeder_combout\);

-- Location: LCCOMB_X38_Y33_N4
\rdm|sr_out[28]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \rdm|sr_out[28]~feeder_combout\ = \mem|altsyncram_component|auto_generated|q_a\(28)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mem|altsyncram_component|auto_generated|q_a\(28),
	combout => \rdm|sr_out[28]~feeder_combout\);

-- Location: LCCOMB_X36_Y37_N24
\bcoreg|breg32_rtl_0_bypass[11]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \bcoreg|breg32_rtl_0_bypass[11]~feeder_combout\ = \breg_data_mux|m_out[0]~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \breg_data_mux|m_out[0]~4_combout\,
	combout => \bcoreg|breg32_rtl_0_bypass[11]~feeder_combout\);

-- Location: LCCOMB_X36_Y30_N6
\bcoreg|breg32_rtl_0_bypass[7]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \bcoreg|breg32_rtl_0_bypass[7]~feeder_combout\ = \mux_reg_add|m_out[3]~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mux_reg_add|m_out[3]~3_combout\,
	combout => \bcoreg|breg32_rtl_0_bypass[7]~feeder_combout\);

-- Location: LCCOMB_X36_Y37_N12
\bcoreg|breg32_rtl_1_bypass[19]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \bcoreg|breg32_rtl_1_bypass[19]~feeder_combout\ = \breg_data_mux|m_out[4]~7_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \breg_data_mux|m_out[4]~7_combout\,
	combout => \bcoreg|breg32_rtl_1_bypass[19]~feeder_combout\);

-- Location: LCCOMB_X36_Y34_N6
\bcoreg|breg32_rtl_1_bypass[23]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \bcoreg|breg32_rtl_1_bypass[23]~feeder_combout\ = \breg_data_mux|m_out[6]~29_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \breg_data_mux|m_out[6]~29_combout\,
	combout => \bcoreg|breg32_rtl_1_bypass[23]~feeder_combout\);

-- Location: LCCOMB_X36_Y34_N16
\bcoreg|breg32_rtl_1_bypass[33]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \bcoreg|breg32_rtl_1_bypass[33]~feeder_combout\ = \breg_data_mux|m_out[11]~36_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \breg_data_mux|m_out[11]~36_combout\,
	combout => \bcoreg|breg32_rtl_1_bypass[33]~feeder_combout\);

-- Location: PIN_T3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\clk_rom~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_clk_rom,
	combout => \clk_rom~combout\);

-- Location: CLKCTRL_G1
\clk_rom~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk_rom~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk_rom~clkctrl_outclk\);

-- Location: LCCOMB_X42_Y35_N12
\ctr_mips|pstate.decode_st~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ctr_mips|pstate.decode_st~0_combout\ = !\ctr_mips|pstate.fetch_st~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ctr_mips|pstate.fetch_st~regout\,
	combout => \ctr_mips|pstate.decode_st~0_combout\);

-- Location: PIN_R2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\rst~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_rst,
	combout => \rst~combout\);

-- Location: CLKCTRL_G2
\rst~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \rst~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \rst~clkctrl_outclk\);

-- Location: LCFF_X41_Y35_N11
\ctr_mips|pstate.decode_st\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \ctr_mips|pstate.decode_st~0_combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ctr_mips|pstate.decode_st~regout\);

-- Location: LCFF_X39_Y35_N29
\ir|sr_out[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \mem|altsyncram_component|auto_generated|q_a\(0),
	sload => VCC,
	ena => \ctr_mips|ALT_INV_pstate.fetch_st~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ir|sr_out\(0));

-- Location: LCCOMB_X44_Y35_N0
\pc|sr_out[8]~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \pc|sr_out[8]~22_combout\ = (\ctr_mips|pstate.branch_ex_st~regout\ & (\regULA|sr_out\(8))) # (!\ctr_mips|pstate.branch_ex_st~regout\ & ((\alu|Mux23~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctr_mips|pstate.branch_ex_st~regout\,
	datab => \regULA|sr_out\(8),
	datad => \alu|Mux23~12_combout\,
	combout => \pc|sr_out[8]~22_combout\);

-- Location: LCCOMB_X36_Y32_N16
\ctr_mips|pstate.fetch_st~_wirecell\ : cycloneii_lcell_comb
-- Equation(s):
-- \ctr_mips|pstate.fetch_st~_wirecell_combout\ = !\ctr_mips|pstate.fetch_st~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctr_mips|pstate.fetch_st~regout\,
	combout => \ctr_mips|pstate.fetch_st~_wirecell_combout\);

-- Location: PIN_T2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\clk~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_clk,
	combout => \clk~combout\);

-- Location: CLKCTRL_G3
\clk~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~clkctrl_outclk\);

-- Location: LCCOMB_X41_Y35_N10
\mux_ulaB|Equal2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux_ulaB|Equal2~0_combout\ = ((\ctr_mips|pstate.decode_st~regout\) # (\ctr_mips|pstate.c_mem_add_st~regout\)) # (!\ctr_mips|pstate.fetch_st~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctr_mips|pstate.fetch_st~regout\,
	datac => \ctr_mips|pstate.decode_st~regout\,
	datad => \ctr_mips|pstate.c_mem_add_st~regout\,
	combout => \mux_ulaB|Equal2~0_combout\);

-- Location: LCCOMB_X41_Y35_N12
\mux_ulaB|m_out[0]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux_ulaB|m_out[0]~2_combout\ = (\ctr_mips|pstate.fetch_st~regout\ & (\ctr_mips|pstate.c_mem_add_st~regout\ & !\ctr_mips|pstate.decode_st~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctr_mips|pstate.fetch_st~regout\,
	datab => \ctr_mips|pstate.c_mem_add_st~regout\,
	datad => \ctr_mips|pstate.decode_st~regout\,
	combout => \mux_ulaB|m_out[0]~2_combout\);

-- Location: LCCOMB_X41_Y35_N18
\mux_ulaB|m_out[0]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux_ulaB|m_out[0]~3_combout\ = (\rgB|sr_out\(0) & (((\ir|sr_out\(0) & \mux_ulaB|m_out[0]~2_combout\)) # (!\mux_ulaB|Equal2~0_combout\))) # (!\rgB|sr_out\(0) & (\ir|sr_out\(0) & ((\mux_ulaB|m_out[0]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rgB|sr_out\(0),
	datab => \ir|sr_out\(0),
	datac => \mux_ulaB|Equal2~0_combout\,
	datad => \mux_ulaB|m_out[0]~2_combout\,
	combout => \mux_ulaB|m_out[0]~3_combout\);

-- Location: LCCOMB_X41_Y33_N0
\alu|Add1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Add1~0_combout\ = (\mux_ulaA|m_out[0]~27_combout\ & (\mux_ulaB|m_out[0]~3_combout\ $ (VCC))) # (!\mux_ulaA|m_out[0]~27_combout\ & (\mux_ulaB|m_out[0]~3_combout\ & VCC))
-- \alu|Add1~1\ = CARRY((\mux_ulaA|m_out[0]~27_combout\ & \mux_ulaB|m_out[0]~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_ulaA|m_out[0]~27_combout\,
	datab => \mux_ulaB|m_out[0]~3_combout\,
	datad => VCC,
	combout => \alu|Add1~0_combout\,
	cout => \alu|Add1~1\);

-- Location: LCCOMB_X35_Y33_N20
\ctr_mips|nstate.jump_ex_st~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ctr_mips|nstate.jump_ex_st~0_combout\ = (\ctr_mips|nstate.rtype_ex_st~2_combout\ & (\ir|sr_out\(27) & (!\ir|sr_out\(30) & !\ir|sr_out\(29))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctr_mips|nstate.rtype_ex_st~2_combout\,
	datab => \ir|sr_out\(27),
	datac => \ir|sr_out\(30),
	datad => \ir|sr_out\(29),
	combout => \ctr_mips|nstate.jump_ex_st~0_combout\);

-- Location: LCFF_X35_Y33_N21
\ctr_mips|pstate.jump_ex_st\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \ctr_mips|nstate.jump_ex_st~0_combout\,
	aclr => \rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ctr_mips|pstate.jump_ex_st~regout\);

-- Location: LCCOMB_X44_Y33_N6
\pc|sr_out~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \pc|sr_out~31_combout\ = (\ctr_mips|pstate.branch_ex_st~regout\ & (((\regULA|sr_out\(0))))) # (!\ctr_mips|pstate.branch_ex_st~regout\ & (\alu|Mux31~8_combout\ & ((!\ctr_mips|pstate.jump_ex_st~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|Mux31~8_combout\,
	datab => \ctr_mips|pstate.branch_ex_st~regout\,
	datac => \regULA|sr_out\(0),
	datad => \ctr_mips|pstate.jump_ex_st~regout\,
	combout => \pc|sr_out~31_combout\);

-- Location: LCCOMB_X40_Y35_N8
\actr|alu_ctr~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \actr|alu_ctr~9_combout\ = (!\ir|sr_out\(2) & (!\ir|sr_out\(5) & \actr|alu_ctr~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir|sr_out\(2),
	datab => \ir|sr_out\(5),
	datad => \actr|alu_ctr~2_combout\,
	combout => \actr|alu_ctr~9_combout\);

-- Location: LCCOMB_X36_Y33_N22
\b_enab|byteenable[2]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \b_enab|byteenable[2]~14_combout\ = ((\ir|sr_out\(1) & !\ir|sr_out\(0))) # (!\b_enab|byteenable[0]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001110111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir|sr_out\(1),
	datab => \b_enab|byteenable[0]~8_combout\,
	datad => \ir|sr_out\(0),
	combout => \b_enab|byteenable[2]~14_combout\);

-- Location: LCCOMB_X36_Y33_N18
\ctr_mips|Equal2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \ctr_mips|Equal2~1_combout\ = (\ir|sr_out\(31) & (!\ir|sr_out\(26) & \ctr_mips|Equal2~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir|sr_out\(31),
	datab => \ir|sr_out\(26),
	datad => \ctr_mips|Equal2~0_combout\,
	combout => \ctr_mips|Equal2~1_combout\);

-- Location: LCCOMB_X36_Y33_N26
\mux_store|m_out[3]~63\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux_store|m_out[3]~63_combout\ = ((\ir|sr_out\(1) & ((\ir|sr_out\(0)) # (!\ctr_mips|Equal2~1_combout\)))) # (!\b_enab|byteenable[0]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir|sr_out\(0),
	datab => \b_enab|byteenable[0]~8_combout\,
	datac => \ir|sr_out\(1),
	datad => \ctr_mips|Equal2~1_combout\,
	combout => \mux_store|m_out[3]~63_combout\);

-- Location: LCCOMB_X36_Y35_N18
\mux_store|m_out[1]~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux_store|m_out[1]~21_combout\ = (\rgB|sr_out\(1) & \mux_store|m_out[3]~63_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rgB|sr_out\(1),
	datad => \mux_store|m_out[3]~63_combout\,
	combout => \mux_store|m_out[1]~21_combout\);

-- Location: LCFF_X39_Y33_N29
\regULA|sr_out[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \alu|Mux29~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regULA|sr_out\(2));

-- Location: LCFF_X38_Y35_N17
\ctr_mips|pstate.ldreg_st\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \ctr_mips|pstate.readmem_st~regout\,
	aclr => \rst~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ctr_mips|pstate.ldreg_st~regout\);

-- Location: LCFF_X38_Y35_N29
\rdm|sr_out[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \mem|altsyncram_component|auto_generated|q_a\(2),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rdm|sr_out\(2));

-- Location: LCCOMB_X36_Y35_N28
\mux_store|m_out[3]~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux_store|m_out[3]~23_combout\ = (\rgB|sr_out\(3) & \mux_store|m_out[3]~63_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rgB|sr_out\(3),
	datad => \mux_store|m_out[3]~63_combout\,
	combout => \mux_store|m_out[3]~23_combout\);

-- Location: LCCOMB_X36_Y33_N24
\mux_store|m_out[4]~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux_store|m_out[4]~24_combout\ = (\rgB|sr_out\(4) & \mux_store|m_out[3]~63_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rgB|sr_out\(4),
	datad => \mux_store|m_out[3]~63_combout\,
	combout => \mux_store|m_out[4]~24_combout\);

-- Location: LCCOMB_X36_Y35_N8
\mux_store|m_out[6]~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux_store|m_out[6]~26_combout\ = (\rgB|sr_out\(6) & \mux_store|m_out[3]~63_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rgB|sr_out\(6),
	datad => \mux_store|m_out[3]~63_combout\,
	combout => \mux_store|m_out[6]~26_combout\);

-- Location: LCCOMB_X36_Y35_N22
\mux_store|m_out[7]~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux_store|m_out[7]~27_combout\ = (\rgB|sr_out\(7) & \mux_store|m_out[3]~63_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rgB|sr_out\(7),
	datad => \mux_store|m_out[3]~63_combout\,
	combout => \mux_store|m_out[7]~27_combout\);

-- Location: LCCOMB_X36_Y33_N30
\mux_store|Equal1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux_store|Equal1~0_combout\ = (\ir|sr_out\(31) & (\ctr_mips|pstate.writemem_st~regout\ & (!\ir|sr_out\(26) & \ctr_mips|Equal2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir|sr_out\(31),
	datab => \ctr_mips|pstate.writemem_st~regout\,
	datac => \ir|sr_out\(26),
	datad => \ctr_mips|Equal2~0_combout\,
	combout => \mux_store|Equal1~0_combout\);

-- Location: LCCOMB_X36_Y33_N12
\ctr_mips|wich_store[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ctr_mips|wich_store[0]~0_combout\ = (((!\ctr_mips|Equal2~0_combout\) # (!\ir|sr_out\(31))) # (!\ir|sr_out\(26))) # (!\ctr_mips|pstate.writemem_st~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctr_mips|pstate.writemem_st~regout\,
	datab => \ir|sr_out\(26),
	datac => \ir|sr_out\(31),
	datad => \ctr_mips|Equal2~0_combout\,
	combout => \ctr_mips|wich_store[0]~0_combout\);

-- Location: LCCOMB_X35_Y33_N10
\mux_store|m_out[8]~64\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux_store|m_out[8]~64_combout\ = (\ir|sr_out\(1) & (((!\mux_store|Equal1~0_combout\)) # (!\ir|sr_out\(0)))) # (!\ir|sr_out\(1) & (((\ctr_mips|wich_store[0]~0_combout\ & !\mux_store|Equal1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir|sr_out\(0),
	datab => \ir|sr_out\(1),
	datac => \ctr_mips|wich_store[0]~0_combout\,
	datad => \mux_store|Equal1~0_combout\,
	combout => \mux_store|m_out[8]~64_combout\);

-- Location: LCCOMB_X36_Y35_N24
\mux_store|m_out[8]~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux_store|m_out[8]~28_combout\ = (\mux_store|m_out[8]~64_combout\ & ((\mux_store|Equal1~0_combout\ & ((\rgB|sr_out\(0)))) # (!\mux_store|Equal1~0_combout\ & (\rgB|sr_out\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rgB|sr_out\(8),
	datab => \mux_store|Equal1~0_combout\,
	datac => \rgB|sr_out\(0),
	datad => \mux_store|m_out[8]~64_combout\,
	combout => \mux_store|m_out[8]~28_combout\);

-- Location: LCCOMB_X36_Y35_N26
\mux_store|m_out[9]~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux_store|m_out[9]~29_combout\ = (\mux_store|m_out[8]~64_combout\ & ((\mux_store|Equal1~0_combout\ & ((\rgB|sr_out\(1)))) # (!\mux_store|Equal1~0_combout\ & (\rgB|sr_out\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rgB|sr_out\(9),
	datab => \mux_store|Equal1~0_combout\,
	datac => \rgB|sr_out\(1),
	datad => \mux_store|m_out[8]~64_combout\,
	combout => \mux_store|m_out[9]~29_combout\);

-- Location: LCCOMB_X39_Y36_N22
\mux_ulaB|m_out[21]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux_ulaB|m_out[21]~14_combout\ = (!\ctr_mips|pstate.c_mem_add_st~regout\ & (\rgB|sr_out\(21) & (!\ctr_mips|pstate.decode_st~regout\ & \ctr_mips|pstate.fetch_st~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctr_mips|pstate.c_mem_add_st~regout\,
	datab => \rgB|sr_out\(21),
	datac => \ctr_mips|pstate.decode_st~regout\,
	datad => \ctr_mips|pstate.fetch_st~regout\,
	combout => \mux_ulaB|m_out[21]~14_combout\);

-- Location: LCCOMB_X39_Y35_N8
\actr|alu_ctr~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \actr|alu_ctr~4_combout\ = (\actr|alu_ctr~3_combout\ & (\ir|sr_out\(2) & (\ir|sr_out\(5) & \actr|alu_ctr~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \actr|alu_ctr~3_combout\,
	datab => \ir|sr_out\(2),
	datac => \ir|sr_out\(5),
	datad => \actr|alu_ctr~2_combout\,
	combout => \actr|alu_ctr~4_combout\);

-- Location: LCCOMB_X39_Y35_N0
\actr|alu_ctr~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \actr|alu_ctr~11_combout\ = (!\ir|sr_out\(1) & (!\ir|sr_out\(0) & \actr|alu_ctr~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir|sr_out\(1),
	datab => \ir|sr_out\(0),
	datad => \actr|alu_ctr~8_combout\,
	combout => \actr|alu_ctr~11_combout\);

-- Location: LCCOMB_X39_Y35_N18
\actr|alu_ctr~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \actr|alu_ctr~12_combout\ = (\ir|sr_out\(0) & (!\ir|sr_out\(1) & \actr|alu_ctr~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ir|sr_out\(0),
	datac => \ir|sr_out\(1),
	datad => \actr|alu_ctr~8_combout\,
	combout => \actr|alu_ctr~12_combout\);

-- Location: LCCOMB_X39_Y35_N30
\actr|alu_ctr~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \actr|alu_ctr~5_combout\ = (\ir|sr_out\(5) & (!\ir|sr_out\(0) & (!\ir|sr_out\(2) & \actr|alu_ctr~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir|sr_out\(5),
	datab => \ir|sr_out\(0),
	datac => \ir|sr_out\(2),
	datad => \actr|alu_ctr~2_combout\,
	combout => \actr|alu_ctr~5_combout\);

-- Location: LCCOMB_X39_Y35_N20
\actr|alu_ctr[1]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \actr|alu_ctr[1]~6_combout\ = (\actr|alu_ctr~3_combout\ & (!\ir|sr_out\(5) & (!\ir|sr_out\(2) & \actr|alu_ctr~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \actr|alu_ctr~3_combout\,
	datab => \ir|sr_out\(5),
	datac => \ir|sr_out\(2),
	datad => \actr|alu_ctr~2_combout\,
	combout => \actr|alu_ctr[1]~6_combout\);

-- Location: LCCOMB_X39_Y35_N10
\actr|alu_ctr[1]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \actr|alu_ctr[1]~7_combout\ = (\ctr_mips|pstate.branch_ex_st~regout\) # ((\actr|alu_ctr~5_combout\) # ((\actr|alu_ctr[1]~6_combout\) # (!\alu|Mux10~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctr_mips|pstate.branch_ex_st~regout\,
	datab => \actr|alu_ctr~5_combout\,
	datac => \actr|alu_ctr[1]~6_combout\,
	datad => \alu|Mux10~7_combout\,
	combout => \actr|alu_ctr[1]~7_combout\);

-- Location: LCCOMB_X39_Y35_N16
\actr|alu_ctr[1]~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \actr|alu_ctr[1]~13_combout\ = (\actr|alu_ctr[1]~10_combout\ & (!\actr|alu_ctr~11_combout\ & (!\actr|alu_ctr~12_combout\ & \actr|alu_ctr[1]~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \actr|alu_ctr[1]~10_combout\,
	datab => \actr|alu_ctr~11_combout\,
	datac => \actr|alu_ctr~12_combout\,
	datad => \actr|alu_ctr[1]~7_combout\,
	combout => \actr|alu_ctr[1]~13_combout\);

-- Location: LCCOMB_X39_Y35_N28
\actr|alu_ctr[1]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \actr|alu_ctr[1]~14_combout\ = (!\actr|alu_ctr[1]~13_combout\ & ((\actr|alu_ctr[1]~7_combout\) # (\actr|alu_ctr~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \actr|alu_ctr[1]~7_combout\,
	datab => \actr|alu_ctr~4_combout\,
	datad => \actr|alu_ctr[1]~13_combout\,
	combout => \actr|alu_ctr[1]~14_combout\);

-- Location: LCCOMB_X43_Y31_N6
\alu|Mux14~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux14~8_combout\ = (!\actr|alu_ctr[0]~16_combout\ & (\alu|Mux10~8_combout\ & (\actr|alu_ctr[3]~21_combout\ & \actr|alu_ctr[1]~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \actr|alu_ctr[0]~16_combout\,
	datab => \alu|Mux10~8_combout\,
	datac => \actr|alu_ctr[3]~21_combout\,
	datad => \actr|alu_ctr[1]~14_combout\,
	combout => \alu|Mux14~8_combout\);

-- Location: LCCOMB_X43_Y32_N30
\alu|Mux29~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux29~2_combout\ = (!\alu|Mux10~8_combout\ & (\actr|alu_ctr[3]~21_combout\ & \actr|alu_ctr[1]~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \alu|Mux10~8_combout\,
	datac => \actr|alu_ctr[3]~21_combout\,
	datad => \actr|alu_ctr[1]~14_combout\,
	combout => \alu|Mux29~2_combout\);

-- Location: LCCOMB_X39_Y35_N26
\actr|alu_ctr[1]~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \actr|alu_ctr[1]~24_combout\ = (\actr|alu_ctr[1]~7_combout\) # ((\actr|alu_ctr~8_combout\ & (\ir|sr_out\(0) & \ir|sr_out\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \actr|alu_ctr~8_combout\,
	datab => \ir|sr_out\(0),
	datac => \ir|sr_out\(1),
	datad => \actr|alu_ctr[1]~7_combout\,
	combout => \actr|alu_ctr[1]~24_combout\);

-- Location: LCCOMB_X43_Y34_N18
\alu|Mux29~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux29~5_combout\ = (\actr|alu_ctr[1]~13_combout\) # ((!\alu|Mux10~8_combout\) # (!\actr|alu_ctr[1]~24_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \actr|alu_ctr[1]~13_combout\,
	datab => \actr|alu_ctr[1]~24_combout\,
	datad => \alu|Mux10~8_combout\,
	combout => \alu|Mux29~5_combout\);

-- Location: LCCOMB_X43_Y31_N0
\alu|Mux14~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux14~6_combout\ = (!\actr|alu_ctr[3]~21_combout\ & ((\alu|Mux29~5_combout\) # (\actr|alu_ctr[0]~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \actr|alu_ctr[3]~21_combout\,
	datac => \alu|Mux29~5_combout\,
	datad => \actr|alu_ctr[0]~16_combout\,
	combout => \alu|Mux14~6_combout\);

-- Location: LCCOMB_X40_Y35_N0
\ctr_mips|WideOr0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ctr_mips|WideOr0~combout\ = (\ctr_mips|pstate.rtype_ex_st~regout\) # ((\ctr_mips|pstate.c_mem_add_st~regout\) # (\ctr_mips|pstate.branch_ex_st~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctr_mips|pstate.rtype_ex_st~regout\,
	datab => \ctr_mips|pstate.c_mem_add_st~regout\,
	datad => \ctr_mips|pstate.branch_ex_st~regout\,
	combout => \ctr_mips|WideOr0~combout\);

-- Location: LCCOMB_X41_Y38_N18
\mux_ulaB|m_out[23]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux_ulaB|m_out[23]~12_combout\ = (\rgB|sr_out\(23) & (!\ctr_mips|pstate.c_mem_add_st~regout\ & (\ctr_mips|pstate.fetch_st~regout\ & !\ctr_mips|pstate.decode_st~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rgB|sr_out\(23),
	datab => \ctr_mips|pstate.c_mem_add_st~regout\,
	datac => \ctr_mips|pstate.fetch_st~regout\,
	datad => \ctr_mips|pstate.decode_st~regout\,
	combout => \mux_ulaB|m_out[23]~12_combout\);

-- Location: LCCOMB_X43_Y31_N18
\alu|Mux8~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux8~6_combout\ = (!\mux_ulaB|m_out[23]~12_combout\ & ((\ctr_mips|WideOr0~combout\ & (!\rgA|sr_out\(23))) # (!\ctr_mips|WideOr0~combout\ & ((!\pc|sr_out\(23))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rgA|sr_out\(23),
	datab => \ctr_mips|WideOr0~combout\,
	datac => \pc|sr_out\(23),
	datad => \mux_ulaB|m_out[23]~12_combout\,
	combout => \alu|Mux8~6_combout\);

-- Location: LCCOMB_X41_Y35_N28
\mux_ulaB|m_out[1]~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux_ulaB|m_out[1]~48_combout\ = (\ir|sr_out\(1) & ((\mux_ulaB|m_out[0]~2_combout\) # ((!\mux_ulaB|Equal2~0_combout\ & \rgB|sr_out\(1))))) # (!\ir|sr_out\(1) & (!\mux_ulaB|Equal2~0_combout\ & (\rgB|sr_out\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir|sr_out\(1),
	datab => \mux_ulaB|Equal2~0_combout\,
	datac => \rgB|sr_out\(1),
	datad => \mux_ulaB|m_out[0]~2_combout\,
	combout => \mux_ulaB|m_out[1]~48_combout\);

-- Location: LCCOMB_X41_Y37_N0
\alu|tmp[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|tmp[0]~0_combout\ = (\mux_ulaB|m_out[0]~3_combout\ & (\mux_ulaA|m_out[0]~27_combout\ $ (VCC))) # (!\mux_ulaB|m_out[0]~3_combout\ & ((\mux_ulaA|m_out[0]~27_combout\) # (GND)))
-- \alu|tmp[0]~1\ = CARRY((\mux_ulaA|m_out[0]~27_combout\) # (!\mux_ulaB|m_out[0]~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_ulaB|m_out[0]~3_combout\,
	datab => \mux_ulaA|m_out[0]~27_combout\,
	datad => VCC,
	combout => \alu|tmp[0]~0_combout\,
	cout => \alu|tmp[0]~1\);

-- Location: LCCOMB_X41_Y37_N2
\alu|tmp[1]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|tmp[1]~2_combout\ = (\mux_ulaA|m_out[1]~30_combout\ & ((\mux_ulaB|m_out[1]~48_combout\ & (!\alu|tmp[0]~1\)) # (!\mux_ulaB|m_out[1]~48_combout\ & (\alu|tmp[0]~1\ & VCC)))) # (!\mux_ulaA|m_out[1]~30_combout\ & ((\mux_ulaB|m_out[1]~48_combout\ & 
-- ((\alu|tmp[0]~1\) # (GND))) # (!\mux_ulaB|m_out[1]~48_combout\ & (!\alu|tmp[0]~1\))))
-- \alu|tmp[1]~3\ = CARRY((\mux_ulaA|m_out[1]~30_combout\ & (\mux_ulaB|m_out[1]~48_combout\ & !\alu|tmp[0]~1\)) # (!\mux_ulaA|m_out[1]~30_combout\ & ((\mux_ulaB|m_out[1]~48_combout\) # (!\alu|tmp[0]~1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mux_ulaA|m_out[1]~30_combout\,
	datab => \mux_ulaB|m_out[1]~48_combout\,
	datad => VCC,
	cin => \alu|tmp[0]~1\,
	combout => \alu|tmp[1]~2_combout\,
	cout => \alu|tmp[1]~3\);

-- Location: LCCOMB_X42_Y37_N4
\alu|Mux30~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux30~7_combout\ = (!\actr|alu_ctr[3]~21_combout\ & (!\actr|alu_ctr[0]~16_combout\ & \alu|tmp[1]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \actr|alu_ctr[3]~21_combout\,
	datab => \actr|alu_ctr[0]~16_combout\,
	datad => \alu|tmp[1]~2_combout\,
	combout => \alu|Mux30~7_combout\);

-- Location: LCCOMB_X42_Y34_N24
\pc|sr_out[5]~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \pc|sr_out[5]~25_combout\ = (\ctr_mips|pstate.branch_ex_st~regout\ & ((\regULA|sr_out\(5)))) # (!\ctr_mips|pstate.branch_ex_st~regout\ & (\alu|Mux26~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctr_mips|pstate.branch_ex_st~regout\,
	datab => \alu|Mux26~combout\,
	datad => \regULA|sr_out\(5),
	combout => \pc|sr_out[5]~25_combout\);

-- Location: LCCOMB_X39_Y35_N4
\alu|Mux9~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux9~11_combout\ = (!\actr|alu_ctr[1]~13_combout\ & (\actr|alu_ctr[3]~21_combout\ & ((\actr|alu_ctr[1]~7_combout\) # (\actr|alu_ctr~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \actr|alu_ctr[1]~13_combout\,
	datab => \actr|alu_ctr[1]~7_combout\,
	datac => \actr|alu_ctr~4_combout\,
	datad => \actr|alu_ctr[3]~21_combout\,
	combout => \alu|Mux9~11_combout\);

-- Location: LCCOMB_X35_Y35_N28
\pc|sr_out~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \pc|sr_out~32_combout\ = (\ctr_mips|pstate.branch_ex_st~regout\ & (\regULA|sr_out\(1))) # (!\ctr_mips|pstate.branch_ex_st~regout\ & (((!\ctr_mips|pstate.jump_ex_st~regout\ & \alu|Mux30~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctr_mips|pstate.branch_ex_st~regout\,
	datab => \regULA|sr_out\(1),
	datac => \ctr_mips|pstate.jump_ex_st~regout\,
	datad => \alu|Mux30~14_combout\,
	combout => \pc|sr_out~32_combout\);

-- Location: LCFF_X35_Y35_N29
\pc|sr_out[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \pc|sr_out~32_combout\,
	sclr => \rst~combout\,
	ena => \pc|sr_out[0]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pc|sr_out\(1));

-- Location: LCCOMB_X40_Y35_N22
\mux_ulaA|m_out[1]~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux_ulaA|m_out[1]~30_combout\ = (\ctr_mips|WideOr0~combout\ & (\rgA|sr_out\(1))) # (!\ctr_mips|WideOr0~combout\ & ((\pc|sr_out\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rgA|sr_out\(1),
	datab => \pc|sr_out\(1),
	datad => \ctr_mips|WideOr0~combout\,
	combout => \mux_ulaA|m_out[1]~30_combout\);

-- Location: LCCOMB_X39_Y36_N26
\mux_ulaB|m_out[18]~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux_ulaB|m_out[18]~17_combout\ = (\rgB|sr_out\(18) & (\ctr_mips|pstate.fetch_st~regout\ & (!\ctr_mips|pstate.decode_st~regout\ & !\ctr_mips|pstate.c_mem_add_st~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rgB|sr_out\(18),
	datab => \ctr_mips|pstate.fetch_st~regout\,
	datac => \ctr_mips|pstate.decode_st~regout\,
	datad => \ctr_mips|pstate.c_mem_add_st~regout\,
	combout => \mux_ulaB|m_out[18]~17_combout\);

-- Location: LCCOMB_X41_Y35_N14
\mux_ulaB|m_out[2]~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux_ulaB|m_out[2]~19_combout\ = (!\ctr_mips|pstate.decode_st~regout\ & !\ctr_mips|pstate.c_mem_add_st~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctr_mips|pstate.decode_st~regout\,
	datad => \ctr_mips|pstate.c_mem_add_st~regout\,
	combout => \mux_ulaB|m_out[2]~19_combout\);

-- Location: LCCOMB_X38_Y37_N22
\mux_ulaB|m_out[17]~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux_ulaB|m_out[17]~20_combout\ = (\mux_ulaB|m_out[0]~18_combout\ & (\rgB|sr_out\(17) & ((\mux_ulaB|m_out[2]~19_combout\)))) # (!\mux_ulaB|m_out[0]~18_combout\ & (((\ir|sr_out\(15) & !\mux_ulaB|m_out[2]~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rgB|sr_out\(17),
	datab => \ir|sr_out\(15),
	datac => \mux_ulaB|m_out[0]~18_combout\,
	datad => \mux_ulaB|m_out[2]~19_combout\,
	combout => \mux_ulaB|m_out[17]~20_combout\);

-- Location: LCCOMB_X38_Y37_N8
\alu|ShiftLeft0~98\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftLeft0~98_combout\ = (\mux_ulaA|m_out[0]~27_combout\ & ((\mux_ulaB|m_out[17]~20_combout\))) # (!\mux_ulaA|m_out[0]~27_combout\ & (\mux_ulaB|m_out[18]~17_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mux_ulaB|m_out[18]~17_combout\,
	datac => \mux_ulaA|m_out[0]~27_combout\,
	datad => \mux_ulaB|m_out[17]~20_combout\,
	combout => \alu|ShiftLeft0~98_combout\);

-- Location: LCCOMB_X38_Y33_N22
\~QUARTUS_CREATED_GND~I\ : cycloneii_lcell_comb
-- Equation(s):
-- \~QUARTUS_CREATED_GND~I_combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~QUARTUS_CREATED_GND~I_combout\);

-- Location: LCFF_X38_Y35_N19
\rdm|sr_out[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \mem|altsyncram_component|auto_generated|q_a\(15),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rdm|sr_out\(15));

-- Location: LCCOMB_X38_Y33_N18
\rdm|sr_out[31]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \rdm|sr_out[31]~feeder_combout\ = \mem|altsyncram_component|auto_generated|q_a\(31)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mem|altsyncram_component|auto_generated|q_a\(31),
	combout => \rdm|sr_out[31]~feeder_combout\);

-- Location: LCFF_X38_Y33_N19
\rdm|sr_out[31]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \rdm|sr_out[31]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rdm|sr_out\(31));

-- Location: LCCOMB_X36_Y35_N2
\mux_store|m_out[13]~33\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux_store|m_out[13]~33_combout\ = (\mux_store|m_out[8]~64_combout\ & ((\mux_store|Equal1~0_combout\ & ((\rgB|sr_out\(5)))) # (!\mux_store|Equal1~0_combout\ & (\rgB|sr_out\(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rgB|sr_out\(13),
	datab => \mux_store|Equal1~0_combout\,
	datac => \rgB|sr_out\(5),
	datad => \mux_store|m_out[8]~64_combout\,
	combout => \mux_store|m_out[13]~33_combout\);

-- Location: LCCOMB_X38_Y37_N0
\mux_ulaB|m_out[16]~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux_ulaB|m_out[16]~21_combout\ = (\mux_ulaB|m_out[0]~18_combout\ & (\rgB|sr_out\(16) & ((\mux_ulaB|m_out[2]~19_combout\)))) # (!\mux_ulaB|m_out[0]~18_combout\ & (((\ir|sr_out\(14) & !\mux_ulaB|m_out[2]~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rgB|sr_out\(16),
	datab => \ir|sr_out\(14),
	datac => \mux_ulaB|m_out[0]~18_combout\,
	datad => \mux_ulaB|m_out[2]~19_combout\,
	combout => \mux_ulaB|m_out[16]~21_combout\);

-- Location: LCCOMB_X41_Y38_N30
\alu|ShiftRight1~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftRight1~11_combout\ = (\mux_ulaA|m_out[0]~27_combout\ & ((\mux_ulaB|m_out[17]~20_combout\))) # (!\mux_ulaA|m_out[0]~27_combout\ & (\mux_ulaB|m_out[16]~21_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_ulaA|m_out[0]~27_combout\,
	datac => \mux_ulaB|m_out[16]~21_combout\,
	datad => \mux_ulaB|m_out[17]~20_combout\,
	combout => \alu|ShiftRight1~11_combout\);

-- Location: LCCOMB_X38_Y37_N14
\mux_ulaB|m_out[14]~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux_ulaB|m_out[14]~24_combout\ = (\ctr_mips|pstate.decode_st~regout\ & (((\ir|sr_out\(14))))) # (!\ctr_mips|pstate.decode_st~regout\ & ((\ctr_mips|pstate.c_mem_add_st~regout\ & ((\ir|sr_out\(14)))) # (!\ctr_mips|pstate.c_mem_add_st~regout\ & 
-- (\rgB|sr_out\(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rgB|sr_out\(14),
	datab => \ctr_mips|pstate.decode_st~regout\,
	datac => \ir|sr_out\(14),
	datad => \ctr_mips|pstate.c_mem_add_st~regout\,
	combout => \mux_ulaB|m_out[14]~24_combout\);

-- Location: LCCOMB_X38_Y37_N2
\mux_ulaB|m_out[14]~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux_ulaB|m_out[14]~25_combout\ = (\mux_ulaB|m_out[0]~18_combout\ & (((\mux_ulaB|m_out[14]~24_combout\)))) # (!\mux_ulaB|m_out[0]~18_combout\ & (\ir|sr_out\(12) & ((!\mux_ulaB|m_out[2]~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir|sr_out\(12),
	datab => \mux_ulaB|m_out[14]~24_combout\,
	datac => \mux_ulaB|m_out[0]~18_combout\,
	datad => \mux_ulaB|m_out[2]~19_combout\,
	combout => \mux_ulaB|m_out[14]~25_combout\);

-- Location: LCCOMB_X42_Y38_N12
\alu|ShiftRight1~43\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftRight1~43_combout\ = (!\mux_ulaA|m_out[1]~30_combout\ & ((\mux_ulaA|m_out[0]~27_combout\ & (\mux_ulaB|m_out[15]~23_combout\)) # (!\mux_ulaA|m_out[0]~27_combout\ & ((\mux_ulaB|m_out[14]~25_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_ulaB|m_out[15]~23_combout\,
	datab => \mux_ulaA|m_out[1]~30_combout\,
	datac => \mux_ulaA|m_out[0]~27_combout\,
	datad => \mux_ulaB|m_out[14]~25_combout\,
	combout => \alu|ShiftRight1~43_combout\);

-- Location: LCCOMB_X42_Y38_N30
\alu|ShiftRight1~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftRight1~44_combout\ = (\alu|ShiftRight1~43_combout\) # ((\mux_ulaA|m_out[1]~30_combout\ & \alu|ShiftRight1~11_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mux_ulaA|m_out[1]~30_combout\,
	datac => \alu|ShiftRight1~11_combout\,
	datad => \alu|ShiftRight1~43_combout\,
	combout => \alu|ShiftRight1~44_combout\);

-- Location: LCCOMB_X43_Y38_N18
\alu|ShiftRight0~73\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftRight0~73_combout\ = (\mux_ulaA|m_out[2]~29_combout\ & (\alu|ShiftRight1~33_combout\ & (!\mux_ulaB|Equal2~0_combout\))) # (!\mux_ulaA|m_out[2]~29_combout\ & (((\alu|ShiftRight1~44_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|ShiftRight1~33_combout\,
	datab => \mux_ulaB|Equal2~0_combout\,
	datac => \alu|ShiftRight1~44_combout\,
	datad => \mux_ulaA|m_out[2]~29_combout\,
	combout => \alu|ShiftRight0~73_combout\);

-- Location: LCCOMB_X36_Y31_N22
\ir|sr_out[21]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \ir|sr_out[21]~feeder_combout\ = \mem|altsyncram_component|auto_generated|q_a\(21)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mem|altsyncram_component|auto_generated|q_a\(21),
	combout => \ir|sr_out[21]~feeder_combout\);

-- Location: LCFF_X36_Y31_N23
\ir|sr_out[21]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \ir|sr_out[21]~feeder_combout\,
	ena => \ctr_mips|ALT_INV_pstate.fetch_st~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ir|sr_out\(21));

-- Location: LCCOMB_X38_Y35_N8
\breg_data_mux|m_out[15]~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \breg_data_mux|m_out[15]~25_combout\ = (\mux_byte|m_out[7]~1_combout\ & (\ctr_mips|pstate.ldreg_st~regout\ & ((!\ir|sr_out\(28)) # (!\ctr_mips|unsig~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctr_mips|unsig~0_combout\,
	datab => \mux_byte|m_out[7]~1_combout\,
	datac => \ctr_mips|pstate.ldreg_st~regout\,
	datad => \ir|sr_out\(28),
	combout => \breg_data_mux|m_out[15]~25_combout\);

-- Location: LCCOMB_X36_Y34_N30
\breg_data_mux|m_out[8]~39\ : cycloneii_lcell_comb
-- Equation(s):
-- \breg_data_mux|m_out[8]~39_combout\ = (\breg_data_mux|m_out[15]~25_combout\) # ((!\ctr_mips|pstate.ldreg_st~regout\ & \regULA|sr_out\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctr_mips|pstate.ldreg_st~regout\,
	datab => \breg_data_mux|m_out[15]~25_combout\,
	datad => \regULA|sr_out\(8),
	combout => \breg_data_mux|m_out[8]~39_combout\);

-- Location: LCCOMB_X38_Y34_N10
\bcoreg|breg32_rtl_1_bypass[27]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \bcoreg|breg32_rtl_1_bypass[27]~feeder_combout\ = \breg_data_mux|m_out[8]~39_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \breg_data_mux|m_out[8]~39_combout\,
	combout => \bcoreg|breg32_rtl_1_bypass[27]~feeder_combout\);

-- Location: LCFF_X38_Y34_N11
\bcoreg|breg32_rtl_1_bypass[27]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \bcoreg|breg32_rtl_1_bypass[27]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bcoreg|breg32_rtl_1_bypass\(27));

-- Location: LCCOMB_X38_Y34_N6
\bcoreg|regB[8]~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \bcoreg|regB[8]~24_combout\ = (!\bcoreg|Equal1~1_combout\ & ((\bcoreg|breg32~45\ & ((\bcoreg|breg32_rtl_1_bypass\(27)))) # (!\bcoreg|breg32~45\ & (\bcoreg|breg32_rtl_1|auto_generated|ram_block1a8\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcoreg|breg32_rtl_1|auto_generated|ram_block1a8\,
	datab => \bcoreg|breg32~45\,
	datac => \bcoreg|Equal1~1_combout\,
	datad => \bcoreg|breg32_rtl_1_bypass\(27),
	combout => \bcoreg|regB[8]~24_combout\);

-- Location: LCFF_X40_Y35_N1
\rgB|sr_out[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \bcoreg|regB[8]~24_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rgB|sr_out\(8));

-- Location: LCCOMB_X34_Y33_N8
\mux_store|m_out[24]~45\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux_store|m_out[24]~45_combout\ = (\ir|sr_out\(26) & (\ir|sr_out\(31) & (\ctr_mips|Equal2~0_combout\ & !\ir|sr_out\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir|sr_out\(26),
	datab => \ir|sr_out\(31),
	datac => \ctr_mips|Equal2~0_combout\,
	datad => \ir|sr_out\(1),
	combout => \mux_store|m_out[24]~45_combout\);

-- Location: LCCOMB_X38_Y35_N24
\actr|alu_ctr~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \actr|alu_ctr~23_combout\ = (!\ir|sr_out\(1) & !\ir|sr_out\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir|sr_out\(1),
	datad => \ir|sr_out\(0),
	combout => \actr|alu_ctr~23_combout\);

-- Location: LCCOMB_X34_Y33_N30
\mux_store|m_out[24]~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux_store|m_out[24]~46_combout\ = (!\ir|sr_out\(26) & (\ir|sr_out\(31) & (\ctr_mips|Equal2~0_combout\ & \actr|alu_ctr~23_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir|sr_out\(26),
	datab => \ir|sr_out\(31),
	datac => \ctr_mips|Equal2~0_combout\,
	datad => \actr|alu_ctr~23_combout\,
	combout => \mux_store|m_out[24]~46_combout\);

-- Location: LCCOMB_X34_Y33_N28
\mux_store|m_out[24]~47\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux_store|m_out[24]~47_combout\ = (\rgB|sr_out\(0) & ((\mux_store|m_out[24]~46_combout\) # ((\rgB|sr_out\(8) & \mux_store|m_out[24]~45_combout\)))) # (!\rgB|sr_out\(0) & (\rgB|sr_out\(8) & (\mux_store|m_out[24]~45_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rgB|sr_out\(0),
	datab => \rgB|sr_out\(8),
	datac => \mux_store|m_out[24]~45_combout\,
	datad => \mux_store|m_out[24]~46_combout\,
	combout => \mux_store|m_out[24]~47_combout\);

-- Location: LCCOMB_X34_Y33_N6
\mux_store|m_out[24]~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux_store|m_out[24]~48_combout\ = (\b_enab|byteenable[0]~8_combout\ & (\ctr_mips|pstate.writemem_st~regout\ & ((\mux_store|m_out[24]~47_combout\)))) # (!\b_enab|byteenable[0]~8_combout\ & ((\rgB|sr_out\(24)) # ((\ctr_mips|pstate.writemem_st~regout\ & 
-- \mux_store|m_out[24]~47_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b_enab|byteenable[0]~8_combout\,
	datab => \ctr_mips|pstate.writemem_st~regout\,
	datac => \rgB|sr_out\(24),
	datad => \mux_store|m_out[24]~47_combout\,
	combout => \mux_store|m_out[24]~48_combout\);

-- Location: LCCOMB_X38_Y35_N14
\breg_data_mux|m_out[7]~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \breg_data_mux|m_out[7]~40_combout\ = (\ctr_mips|pstate.ldreg_st~regout\ & ((\mux_byte|m_out[7]~1_combout\))) # (!\ctr_mips|pstate.ldreg_st~regout\ & (\regULA|sr_out\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regULA|sr_out\(7),
	datab => \ctr_mips|pstate.ldreg_st~regout\,
	datad => \mux_byte|m_out[7]~1_combout\,
	combout => \breg_data_mux|m_out[7]~40_combout\);

-- Location: LCCOMB_X44_Y35_N16
\breg_data_mux|m_out[9]~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \breg_data_mux|m_out[9]~38_combout\ = (\breg_data_mux|m_out[15]~25_combout\) # ((!\ctr_mips|pstate.ldreg_st~regout\ & \regULA|sr_out\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \breg_data_mux|m_out[15]~25_combout\,
	datac => \ctr_mips|pstate.ldreg_st~regout\,
	datad => \regULA|sr_out\(9),
	combout => \breg_data_mux|m_out[9]~38_combout\);

-- Location: LCCOMB_X40_Y38_N8
\alu|ShiftRight1~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftRight1~32_combout\ = (\mux_ulaA|m_out[1]~30_combout\ & ((\rgB|sr_out\(21)))) # (!\mux_ulaA|m_out[1]~30_combout\ & (\rgB|sr_out\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rgB|sr_out\(19),
	datac => \mux_ulaA|m_out[1]~30_combout\,
	datad => \rgB|sr_out\(21),
	combout => \alu|ShiftRight1~32_combout\);

-- Location: LCCOMB_X40_Y38_N14
\alu|ShiftRight1~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftRight1~31_combout\ = (!\mux_ulaA|m_out[0]~27_combout\ & ((\mux_ulaA|m_out[1]~30_combout\ & (\rgB|sr_out\(20))) # (!\mux_ulaA|m_out[1]~30_combout\ & ((\rgB|sr_out\(18))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rgB|sr_out\(20),
	datab => \rgB|sr_out\(18),
	datac => \mux_ulaA|m_out[1]~30_combout\,
	datad => \mux_ulaA|m_out[0]~27_combout\,
	combout => \alu|ShiftRight1~31_combout\);

-- Location: LCCOMB_X40_Y38_N18
\alu|ShiftRight1~33\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftRight1~33_combout\ = (\alu|ShiftRight1~31_combout\) # ((\alu|ShiftRight1~32_combout\ & \mux_ulaA|m_out[0]~27_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \alu|ShiftRight1~32_combout\,
	datac => \alu|ShiftRight1~31_combout\,
	datad => \mux_ulaA|m_out[0]~27_combout\,
	combout => \alu|ShiftRight1~33_combout\);

-- Location: LCCOMB_X40_Y36_N22
\alu|ShiftRight0~52\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftRight0~52_combout\ = (!\mux_ulaB|Equal2~0_combout\ & ((\mux_ulaA|m_out[2]~29_combout\ & (\alu|ShiftRight1~30_combout\)) # (!\mux_ulaA|m_out[2]~29_combout\ & ((\alu|ShiftRight1~33_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_ulaA|m_out[2]~29_combout\,
	datab => \mux_ulaB|Equal2~0_combout\,
	datac => \alu|ShiftRight1~30_combout\,
	datad => \alu|ShiftRight1~33_combout\,
	combout => \alu|ShiftRight0~52_combout\);

-- Location: LCCOMB_X35_Y33_N14
\b_enab|byteenable[1]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \b_enab|byteenable[1]~9_combout\ = (!\ir|sr_out\(1) & ((\ir|sr_out\(0) & ((\mux_store|Equal1~0_combout\))) # (!\ir|sr_out\(0) & (!\ctr_mips|wich_store[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir|sr_out\(0),
	datab => \ir|sr_out\(1),
	datac => \ctr_mips|wich_store[0]~0_combout\,
	datad => \mux_store|Equal1~0_combout\,
	combout => \b_enab|byteenable[1]~9_combout\);

-- Location: LCCOMB_X36_Y33_N4
\b_enab|byteenable[1]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \b_enab|byteenable[1]~10_combout\ = (\b_enab|byteenable[1]~9_combout\) # ((\ctr_mips|wich_store[0]~0_combout\ & (!\b_enab|byteenable[0]~8_combout\ & !\mux_store|Equal1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctr_mips|wich_store[0]~0_combout\,
	datab => \b_enab|byteenable[0]~8_combout\,
	datac => \mux_store|Equal1~0_combout\,
	datad => \b_enab|byteenable[1]~9_combout\,
	combout => \b_enab|byteenable[1]~10_combout\);

-- Location: M4K_X37_Y35
\mem|altsyncram_component|auto_generated|ram_block1a0\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init1 => X"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000A000900080007000600050004000300020001",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000B00000003000018800001202A884000008020182010200000100170243F0030F0582250200014000A",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "../mips_rom.mif",
	init_file_layout => "port_a",
	logical_ram_name => "mem_mips:mem|altsyncram:altsyncram_component|altsyncram_i7h1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 8,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_mask_width => 2,
	port_a_byte_size => 8,
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 16,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 255,
	port_a_logical_ram_depth => 256,
	port_a_logical_ram_width => 32,
	port_a_write_enable_clear => "none",
	port_b_address_width => 8,
	port_b_data_width => 16,
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	portawe => \ctr_mips|pstate.writemem_st~regout\,
	clk0 => \clk_rom~clkctrl_outclk\,
	portadatain => \mem|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portaaddr => \mem|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\,
	portabyteenamasks => \mem|altsyncram_component|auto_generated|ram_block1a0_PORTABYTEENAMASKS_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \mem|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\);

-- Location: LCFF_X42_Y35_N5
\ir|sr_out[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \mem|altsyncram_component|auto_generated|q_a\(13),
	sload => VCC,
	ena => \ctr_mips|ALT_INV_pstate.fetch_st~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ir|sr_out\(13));

-- Location: LCCOMB_X42_Y35_N4
\mux_ulaB|m_out[13]~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux_ulaB|m_out[13]~26_combout\ = (\ctr_mips|pstate.c_mem_add_st~regout\ & (((\ir|sr_out\(13))))) # (!\ctr_mips|pstate.c_mem_add_st~regout\ & ((\ctr_mips|pstate.decode_st~regout\ & ((\ir|sr_out\(13)))) # (!\ctr_mips|pstate.decode_st~regout\ & 
-- (\rgB|sr_out\(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rgB|sr_out\(13),
	datab => \ctr_mips|pstate.c_mem_add_st~regout\,
	datac => \ir|sr_out\(13),
	datad => \ctr_mips|pstate.decode_st~regout\,
	combout => \mux_ulaB|m_out[13]~26_combout\);

-- Location: LCCOMB_X42_Y35_N28
\mux_ulaB|m_out[13]~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux_ulaB|m_out[13]~27_combout\ = (\mux_ulaB|m_out[0]~18_combout\ & (((\mux_ulaB|m_out[13]~26_combout\)))) # (!\mux_ulaB|m_out[0]~18_combout\ & (\ir|sr_out\(11) & ((!\mux_ulaB|m_out[2]~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir|sr_out\(11),
	datab => \mux_ulaB|m_out[0]~18_combout\,
	datac => \mux_ulaB|m_out[13]~26_combout\,
	datad => \mux_ulaB|m_out[2]~19_combout\,
	combout => \mux_ulaB|m_out[13]~27_combout\);

-- Location: LCFF_X42_Y35_N21
\ir|sr_out[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \mem|altsyncram_component|auto_generated|q_a\(9),
	sload => VCC,
	ena => \ctr_mips|ALT_INV_pstate.fetch_st~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ir|sr_out\(9));

-- Location: LCCOMB_X42_Y35_N10
\mux_ulaB|m_out[11]~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux_ulaB|m_out[11]~30_combout\ = (\ctr_mips|pstate.decode_st~regout\ & (((\ir|sr_out\(11))))) # (!\ctr_mips|pstate.decode_st~regout\ & ((\ctr_mips|pstate.c_mem_add_st~regout\ & ((\ir|sr_out\(11)))) # (!\ctr_mips|pstate.c_mem_add_st~regout\ & 
-- (\rgB|sr_out\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctr_mips|pstate.decode_st~regout\,
	datab => \rgB|sr_out\(11),
	datac => \ir|sr_out\(11),
	datad => \ctr_mips|pstate.c_mem_add_st~regout\,
	combout => \mux_ulaB|m_out[11]~30_combout\);

-- Location: LCCOMB_X42_Y35_N14
\mux_ulaB|m_out[11]~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux_ulaB|m_out[11]~31_combout\ = (\mux_ulaB|m_out[0]~18_combout\ & (((\mux_ulaB|m_out[11]~30_combout\)))) # (!\mux_ulaB|m_out[0]~18_combout\ & (!\mux_ulaB|m_out[2]~19_combout\ & (\ir|sr_out\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_ulaB|m_out[2]~19_combout\,
	datab => \ir|sr_out\(9),
	datac => \mux_ulaB|m_out[0]~18_combout\,
	datad => \mux_ulaB|m_out[11]~30_combout\,
	combout => \mux_ulaB|m_out[11]~31_combout\);

-- Location: LCCOMB_X40_Y37_N8
\alu|ShiftRight1~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftRight1~46_combout\ = (\mux_ulaA|m_out[1]~30_combout\ & (\mux_ulaB|m_out[13]~27_combout\)) # (!\mux_ulaA|m_out[1]~30_combout\ & ((\mux_ulaB|m_out[11]~31_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mux_ulaA|m_out[1]~30_combout\,
	datac => \mux_ulaB|m_out[13]~27_combout\,
	datad => \mux_ulaB|m_out[11]~31_combout\,
	combout => \alu|ShiftRight1~46_combout\);

-- Location: LCFF_X41_Y35_N9
\ir|sr_out[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \mem|altsyncram_component|auto_generated|q_a\(8),
	sload => VCC,
	ena => \ctr_mips|ALT_INV_pstate.fetch_st~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ir|sr_out\(8));

-- Location: LCCOMB_X38_Y37_N10
\mux_ulaB|m_out[10]~33\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux_ulaB|m_out[10]~33_combout\ = (\mux_ulaB|m_out[0]~18_combout\ & (\mux_ulaB|m_out[10]~32_combout\)) # (!\mux_ulaB|m_out[0]~18_combout\ & (((\ir|sr_out\(8) & !\mux_ulaB|m_out[2]~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_ulaB|m_out[10]~32_combout\,
	datab => \ir|sr_out\(8),
	datac => \mux_ulaB|m_out[0]~18_combout\,
	datad => \mux_ulaB|m_out[2]~19_combout\,
	combout => \mux_ulaB|m_out[10]~33_combout\);

-- Location: LCFF_X38_Y37_N5
\ir|sr_out[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \mem|altsyncram_component|auto_generated|q_a\(12),
	sload => VCC,
	ena => \ctr_mips|ALT_INV_pstate.fetch_st~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ir|sr_out\(12));

-- Location: LCCOMB_X38_Y37_N4
\mux_ulaB|m_out[12]~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux_ulaB|m_out[12]~28_combout\ = (\ctr_mips|pstate.decode_st~regout\ & (((\ir|sr_out\(12))))) # (!\ctr_mips|pstate.decode_st~regout\ & ((\ctr_mips|pstate.c_mem_add_st~regout\ & ((\ir|sr_out\(12)))) # (!\ctr_mips|pstate.c_mem_add_st~regout\ & 
-- (\rgB|sr_out\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rgB|sr_out\(12),
	datab => \ctr_mips|pstate.decode_st~regout\,
	datac => \ir|sr_out\(12),
	datad => \ctr_mips|pstate.c_mem_add_st~regout\,
	combout => \mux_ulaB|m_out[12]~28_combout\);

-- Location: LCCOMB_X38_Y37_N28
\mux_ulaB|m_out[12]~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux_ulaB|m_out[12]~29_combout\ = (\mux_ulaB|m_out[0]~18_combout\ & (((\mux_ulaB|m_out[12]~28_combout\)))) # (!\mux_ulaB|m_out[0]~18_combout\ & (\ir|sr_out\(10) & ((!\mux_ulaB|m_out[2]~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir|sr_out\(10),
	datab => \mux_ulaB|m_out[0]~18_combout\,
	datac => \mux_ulaB|m_out[12]~28_combout\,
	datad => \mux_ulaB|m_out[2]~19_combout\,
	combout => \mux_ulaB|m_out[12]~29_combout\);

-- Location: LCCOMB_X40_Y37_N22
\alu|ShiftRight1~45\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftRight1~45_combout\ = (!\mux_ulaA|m_out[0]~27_combout\ & ((\mux_ulaA|m_out[1]~30_combout\ & ((\mux_ulaB|m_out[12]~29_combout\))) # (!\mux_ulaA|m_out[1]~30_combout\ & (\mux_ulaB|m_out[10]~33_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_ulaA|m_out[0]~27_combout\,
	datab => \mux_ulaB|m_out[10]~33_combout\,
	datac => \mux_ulaA|m_out[1]~30_combout\,
	datad => \mux_ulaB|m_out[12]~29_combout\,
	combout => \alu|ShiftRight1~45_combout\);

-- Location: LCCOMB_X40_Y37_N18
\alu|ShiftRight1~47\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftRight1~47_combout\ = (\alu|ShiftRight1~45_combout\) # ((\mux_ulaA|m_out[0]~27_combout\ & \alu|ShiftRight1~46_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_ulaA|m_out[0]~27_combout\,
	datac => \alu|ShiftRight1~46_combout\,
	datad => \alu|ShiftRight1~45_combout\,
	combout => \alu|ShiftRight1~47_combout\);

-- Location: LCCOMB_X43_Y38_N20
\alu|ShiftRight0~53\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftRight0~53_combout\ = (\mux_ulaA|m_out[2]~29_combout\ & (\alu|ShiftRight1~44_combout\)) # (!\mux_ulaA|m_out[2]~29_combout\ & ((\alu|ShiftRight1~47_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mux_ulaA|m_out[2]~29_combout\,
	datac => \alu|ShiftRight1~44_combout\,
	datad => \alu|ShiftRight1~47_combout\,
	combout => \alu|ShiftRight0~53_combout\);

-- Location: LCCOMB_X44_Y36_N8
\alu|Mux21~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux21~10_combout\ = (\mux_ulaA|m_out[3]~28_combout\ & (\alu|ShiftRight0~52_combout\)) # (!\mux_ulaA|m_out[3]~28_combout\ & ((\alu|ShiftRight0~53_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \alu|ShiftRight0~52_combout\,
	datac => \mux_ulaA|m_out[3]~28_combout\,
	datad => \alu|ShiftRight0~53_combout\,
	combout => \alu|Mux21~10_combout\);

-- Location: LCCOMB_X43_Y32_N4
\alu|Mux29~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux29~3_combout\ = (\actr|alu_ctr[3]~21_combout\ & ((\alu|Mux10~8_combout\) # ((\actr|alu_ctr[0]~16_combout\) # (!\actr|alu_ctr[1]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|Mux10~8_combout\,
	datab => \actr|alu_ctr[1]~14_combout\,
	datac => \actr|alu_ctr[3]~21_combout\,
	datad => \actr|alu_ctr[0]~16_combout\,
	combout => \alu|Mux29~3_combout\);

-- Location: LCCOMB_X43_Y32_N16
\alu|Mux29~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux29~4_combout\ = (\alu|Mux29~2_combout\ & ((\alu|ShiftLeft0~21_combout\) # (\alu|Mux29~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|ShiftLeft0~21_combout\,
	datab => \alu|Mux29~3_combout\,
	datad => \alu|Mux29~2_combout\,
	combout => \alu|Mux29~4_combout\);

-- Location: LCCOMB_X39_Y35_N2
\mux_ulaB|m_out[2]~49\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux_ulaB|m_out[2]~49_combout\ = (\ctr_mips|pstate.c_mem_add_st~regout\ & (((\ir|sr_out\(2) & \ctr_mips|pstate.fetch_st~regout\)))) # (!\ctr_mips|pstate.c_mem_add_st~regout\ & ((\rgB|sr_out\(2)) # ((!\ctr_mips|pstate.fetch_st~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rgB|sr_out\(2),
	datab => \ir|sr_out\(2),
	datac => \ctr_mips|pstate.c_mem_add_st~regout\,
	datad => \ctr_mips|pstate.fetch_st~regout\,
	combout => \mux_ulaB|m_out[2]~49_combout\);

-- Location: LCCOMB_X40_Y31_N22
\mux_ulaB|m_out[2]~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux_ulaB|m_out[2]~50_combout\ = (\ctr_mips|pstate.decode_st~regout\ & (\ir|sr_out\(0))) # (!\ctr_mips|pstate.decode_st~regout\ & ((\mux_ulaB|m_out[2]~49_combout\) # ((\ir|sr_out\(0) & !\ctr_mips|pstate.fetch_st~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir|sr_out\(0),
	datab => \ctr_mips|pstate.fetch_st~regout\,
	datac => \ctr_mips|pstate.decode_st~regout\,
	datad => \mux_ulaB|m_out[2]~49_combout\,
	combout => \mux_ulaB|m_out[2]~50_combout\);

-- Location: LCCOMB_X45_Y34_N18
\alu|ShiftLeft0~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftLeft0~26_combout\ = (!\mux_ulaA|m_out[0]~27_combout\ & ((\mux_ulaA|m_out[1]~30_combout\ & (\mux_ulaB|m_out[0]~3_combout\)) # (!\mux_ulaA|m_out[1]~30_combout\ & ((\mux_ulaB|m_out[2]~50_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_ulaA|m_out[1]~30_combout\,
	datab => \mux_ulaB|m_out[0]~3_combout\,
	datac => \mux_ulaA|m_out[0]~27_combout\,
	datad => \mux_ulaB|m_out[2]~50_combout\,
	combout => \alu|ShiftLeft0~26_combout\);

-- Location: LCCOMB_X45_Y34_N16
\alu|ShiftLeft0~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftLeft0~27_combout\ = (\alu|ShiftLeft0~26_combout\) # ((!\mux_ulaA|m_out[1]~30_combout\ & (\mux_ulaB|m_out[1]~48_combout\ & \mux_ulaA|m_out[0]~27_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_ulaA|m_out[1]~30_combout\,
	datab => \alu|ShiftLeft0~26_combout\,
	datac => \mux_ulaB|m_out[1]~48_combout\,
	datad => \mux_ulaA|m_out[0]~27_combout\,
	combout => \alu|ShiftLeft0~27_combout\);

-- Location: LCCOMB_X34_Y33_N4
\mux_store|m_out[26]~51\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux_store|m_out[26]~51_combout\ = (\rgB|sr_out\(2) & ((\mux_store|m_out[24]~46_combout\) # ((\rgB|sr_out\(10) & \mux_store|m_out[24]~45_combout\)))) # (!\rgB|sr_out\(2) & (\rgB|sr_out\(10) & (\mux_store|m_out[24]~45_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rgB|sr_out\(2),
	datab => \rgB|sr_out\(10),
	datac => \mux_store|m_out[24]~45_combout\,
	datad => \mux_store|m_out[24]~46_combout\,
	combout => \mux_store|m_out[26]~51_combout\);

-- Location: LCCOMB_X38_Y31_N24
\breg_data_mux|m_out[26]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \breg_data_mux|m_out[26]~14_combout\ = (\breg_data_mux|m_out[31]~9_combout\) # ((\regULA|sr_out\(26) & !\ctr_mips|pstate.ldreg_st~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regULA|sr_out\(26),
	datab => \ctr_mips|pstate.ldreg_st~regout\,
	datad => \breg_data_mux|m_out[31]~9_combout\,
	combout => \breg_data_mux|m_out[26]~14_combout\);

-- Location: LCFF_X38_Y31_N1
\bcoreg|breg32_rtl_1_bypass[63]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \breg_data_mux|m_out[26]~14_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bcoreg|breg32_rtl_1_bypass\(63));

-- Location: LCCOMB_X39_Y36_N30
\bcoreg|regB[26]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \bcoreg|regB[26]~6_combout\ = (!\bcoreg|Equal1~1_combout\ & ((\bcoreg|breg32~45\ & ((\bcoreg|breg32_rtl_1_bypass\(63)))) # (!\bcoreg|breg32~45\ & (\bcoreg|breg32_rtl_1|auto_generated|ram_block1a26\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcoreg|breg32_rtl_1|auto_generated|ram_block1a26\,
	datab => \bcoreg|breg32~45\,
	datac => \bcoreg|breg32_rtl_1_bypass\(63),
	datad => \bcoreg|Equal1~1_combout\,
	combout => \bcoreg|regB[26]~6_combout\);

-- Location: LCFF_X40_Y36_N13
\rgB|sr_out[26]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \bcoreg|regB[26]~6_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rgB|sr_out\(26));

-- Location: LCCOMB_X34_Y33_N26
\mux_store|m_out[26]~52\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux_store|m_out[26]~52_combout\ = (\b_enab|byteenable[0]~8_combout\ & (\ctr_mips|pstate.writemem_st~regout\ & (\mux_store|m_out[26]~51_combout\))) # (!\b_enab|byteenable[0]~8_combout\ & ((\rgB|sr_out\(26)) # ((\ctr_mips|pstate.writemem_st~regout\ & 
-- \mux_store|m_out[26]~51_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b_enab|byteenable[0]~8_combout\,
	datab => \ctr_mips|pstate.writemem_st~regout\,
	datac => \mux_store|m_out[26]~51_combout\,
	datad => \rgB|sr_out\(26),
	combout => \mux_store|m_out[26]~52_combout\);

-- Location: LCCOMB_X40_Y38_N16
\alu|ShiftRight1~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftRight1~10_combout\ = (\mux_ulaA|m_out[1]~30_combout\ & (\rgB|sr_out\(26))) # (!\mux_ulaA|m_out[1]~30_combout\ & ((\rgB|sr_out\(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rgB|sr_out\(26),
	datac => \mux_ulaA|m_out[1]~30_combout\,
	datad => \rgB|sr_out\(24),
	combout => \alu|ShiftRight1~10_combout\);

-- Location: LCCOMB_X39_Y38_N22
\alu|ShiftRight1~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftRight1~29_combout\ = (\mux_ulaA|m_out[1]~30_combout\ & ((\rgB|sr_out\(25)))) # (!\mux_ulaA|m_out[1]~30_combout\ & (\rgB|sr_out\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rgB|sr_out\(23),
	datac => \rgB|sr_out\(25),
	datad => \mux_ulaA|m_out[1]~30_combout\,
	combout => \alu|ShiftRight1~29_combout\);

-- Location: LCCOMB_X40_Y38_N28
\alu|ShiftRight1~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftRight1~48_combout\ = (\mux_ulaA|m_out[0]~27_combout\ & (\alu|ShiftRight1~10_combout\)) # (!\mux_ulaA|m_out[0]~27_combout\ & ((\alu|ShiftRight1~29_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mux_ulaA|m_out[0]~27_combout\,
	datac => \alu|ShiftRight1~10_combout\,
	datad => \alu|ShiftRight1~29_combout\,
	combout => \alu|ShiftRight1~48_combout\);

-- Location: LCCOMB_X40_Y38_N4
\alu|ShiftRight1~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftRight1~12_combout\ = (\mux_ulaA|m_out[1]~30_combout\ & ((\rgB|sr_out\(22)))) # (!\mux_ulaA|m_out[1]~30_combout\ & (\rgB|sr_out\(20)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rgB|sr_out\(20),
	datab => \rgB|sr_out\(22),
	datad => \mux_ulaA|m_out[1]~30_combout\,
	combout => \alu|ShiftRight1~12_combout\);

-- Location: LCCOMB_X40_Y38_N30
\alu|ShiftRight1~49\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftRight1~49_combout\ = (\mux_ulaA|m_out[0]~27_combout\ & (\alu|ShiftRight1~12_combout\)) # (!\mux_ulaA|m_out[0]~27_combout\ & ((\alu|ShiftRight1~32_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \alu|ShiftRight1~12_combout\,
	datac => \alu|ShiftRight1~32_combout\,
	datad => \mux_ulaA|m_out[0]~27_combout\,
	combout => \alu|ShiftRight1~49_combout\);

-- Location: LCCOMB_X40_Y38_N24
\alu|ShiftRight0~57\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftRight0~57_combout\ = (!\mux_ulaB|Equal2~0_combout\ & ((\mux_ulaA|m_out[2]~29_combout\ & (\alu|ShiftRight1~48_combout\)) # (!\mux_ulaA|m_out[2]~29_combout\ & ((\alu|ShiftRight1~49_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_ulaB|Equal2~0_combout\,
	datab => \alu|ShiftRight1~48_combout\,
	datac => \mux_ulaA|m_out[2]~29_combout\,
	datad => \alu|ShiftRight1~49_combout\,
	combout => \alu|ShiftRight0~57_combout\);

-- Location: LCCOMB_X44_Y38_N30
\alu|Mux20~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux20~10_combout\ = (\mux_ulaA|m_out[3]~28_combout\ & (\alu|ShiftRight0~57_combout\)) # (!\mux_ulaA|m_out[3]~28_combout\ & ((\alu|ShiftRight0~58_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_ulaA|m_out[3]~28_combout\,
	datac => \alu|ShiftRight0~57_combout\,
	datad => \alu|ShiftRight0~58_combout\,
	combout => \alu|Mux20~10_combout\);

-- Location: LCCOMB_X40_Y31_N8
\alu|ShiftLeft0~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftLeft0~22_combout\ = (\mux_ulaA|m_out[0]~27_combout\ & ((\mux_ulaB|m_out[0]~3_combout\))) # (!\mux_ulaA|m_out[0]~27_combout\ & (\mux_ulaB|m_out[1]~48_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mux_ulaA|m_out[0]~27_combout\,
	datac => \mux_ulaB|m_out[1]~48_combout\,
	datad => \mux_ulaB|m_out[0]~3_combout\,
	combout => \alu|ShiftLeft0~22_combout\);

-- Location: LCCOMB_X40_Y31_N30
\alu|ShiftLeft0~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftLeft0~29_combout\ = (!\mux_ulaA|m_out[1]~30_combout\ & ((\mux_ulaA|m_out[0]~27_combout\ & ((\mux_ulaB|m_out[2]~50_combout\))) # (!\mux_ulaA|m_out[0]~27_combout\ & (\mux_ulaB|m_out[3]~47_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_ulaB|m_out[3]~47_combout\,
	datab => \mux_ulaB|m_out[2]~50_combout\,
	datac => \mux_ulaA|m_out[0]~27_combout\,
	datad => \mux_ulaA|m_out[1]~30_combout\,
	combout => \alu|ShiftLeft0~29_combout\);

-- Location: LCCOMB_X39_Y31_N30
\alu|ShiftLeft0~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftLeft0~44_combout\ = (\alu|ShiftLeft0~29_combout\) # ((\mux_ulaA|m_out[1]~30_combout\ & \alu|ShiftLeft0~22_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mux_ulaA|m_out[1]~30_combout\,
	datac => \alu|ShiftLeft0~22_combout\,
	datad => \alu|ShiftLeft0~29_combout\,
	combout => \alu|ShiftLeft0~44_combout\);

-- Location: LCCOMB_X42_Y35_N6
\alu|ShiftLeft0~61\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftLeft0~61_combout\ = (!\mux_ulaA|m_out[0]~27_combout\ & ((\mux_ulaA|m_out[1]~30_combout\ & (\mux_ulaB|m_out[9]~35_combout\)) # (!\mux_ulaA|m_out[1]~30_combout\ & ((\mux_ulaB|m_out[11]~31_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_ulaB|m_out[9]~35_combout\,
	datab => \mux_ulaA|m_out[1]~30_combout\,
	datac => \mux_ulaB|m_out[11]~31_combout\,
	datad => \mux_ulaA|m_out[0]~27_combout\,
	combout => \alu|ShiftLeft0~61_combout\);

-- Location: LCCOMB_X39_Y37_N16
\alu|ShiftRight0~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftRight0~32_combout\ = (!\mux_ulaA|m_out[1]~30_combout\ & (\mux_ulaA|m_out[0]~27_combout\ & \mux_ulaB|m_out[10]~33_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_ulaA|m_out[1]~30_combout\,
	datac => \mux_ulaA|m_out[0]~27_combout\,
	datad => \mux_ulaB|m_out[10]~33_combout\,
	combout => \alu|ShiftRight0~32_combout\);

-- Location: LCCOMB_X40_Y31_N0
\alu|ShiftLeft0~62\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftLeft0~62_combout\ = (\alu|ShiftLeft0~61_combout\) # ((\alu|ShiftRight0~32_combout\) # ((\mux_ulaB|m_out[8]~37_combout\ & \alu|ShiftRight0~86_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_ulaB|m_out[8]~37_combout\,
	datab => \alu|ShiftRight0~86_combout\,
	datac => \alu|ShiftLeft0~61_combout\,
	datad => \alu|ShiftRight0~32_combout\,
	combout => \alu|ShiftLeft0~62_combout\);

-- Location: LCCOMB_X40_Y35_N28
\mux_ulaB|m_out[5]~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux_ulaB|m_out[5]~42_combout\ = (\ctr_mips|pstate.c_mem_add_st~regout\ & (((\ir|sr_out\(5))))) # (!\ctr_mips|pstate.c_mem_add_st~regout\ & ((\ctr_mips|pstate.decode_st~regout\ & (\ir|sr_out\(5))) # (!\ctr_mips|pstate.decode_st~regout\ & 
-- ((\rgB|sr_out\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctr_mips|pstate.c_mem_add_st~regout\,
	datab => \ctr_mips|pstate.decode_st~regout\,
	datac => \ir|sr_out\(5),
	datad => \rgB|sr_out\(5),
	combout => \mux_ulaB|m_out[5]~42_combout\);

-- Location: LCCOMB_X41_Y35_N20
\mux_ulaB|m_out[5]~43\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux_ulaB|m_out[5]~43_combout\ = (\mux_ulaB|m_out[0]~18_combout\ & (((\mux_ulaB|m_out[5]~42_combout\)))) # (!\mux_ulaB|m_out[0]~18_combout\ & (\ir|sr_out\(3) & (!\mux_ulaB|m_out[2]~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir|sr_out\(3),
	datab => \mux_ulaB|m_out[2]~19_combout\,
	datac => \mux_ulaB|m_out[0]~18_combout\,
	datad => \mux_ulaB|m_out[5]~42_combout\,
	combout => \mux_ulaB|m_out[5]~43_combout\);

-- Location: LCCOMB_X40_Y31_N4
\alu|ShiftLeft0~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftLeft0~46_combout\ = (!\mux_ulaA|m_out[0]~27_combout\ & ((\mux_ulaA|m_out[1]~30_combout\ & ((\mux_ulaB|m_out[5]~43_combout\))) # (!\mux_ulaA|m_out[1]~30_combout\ & (\mux_ulaB|m_out[7]~39_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_ulaB|m_out[7]~39_combout\,
	datab => \mux_ulaA|m_out[1]~30_combout\,
	datac => \mux_ulaA|m_out[0]~27_combout\,
	datad => \mux_ulaB|m_out[5]~43_combout\,
	combout => \alu|ShiftLeft0~46_combout\);

-- Location: LCCOMB_X41_Y31_N2
\alu|ShiftLeft0~45\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftLeft0~45_combout\ = (\mux_ulaA|m_out[0]~27_combout\ & ((\mux_ulaA|m_out[1]~30_combout\ & ((\mux_ulaB|m_out[4]~45_combout\))) # (!\mux_ulaA|m_out[1]~30_combout\ & (\mux_ulaB|m_out[6]~41_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_ulaB|m_out[6]~41_combout\,
	datab => \mux_ulaA|m_out[1]~30_combout\,
	datac => \mux_ulaB|m_out[4]~45_combout\,
	datad => \mux_ulaA|m_out[0]~27_combout\,
	combout => \alu|ShiftLeft0~45_combout\);

-- Location: LCCOMB_X40_Y31_N28
\alu|ShiftLeft0~143\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftLeft0~143_combout\ = (\mux_ulaA|m_out[2]~29_combout\ & (((\alu|ShiftLeft0~46_combout\) # (\alu|ShiftLeft0~45_combout\)))) # (!\mux_ulaA|m_out[2]~29_combout\ & (\alu|ShiftLeft0~62_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_ulaA|m_out[2]~29_combout\,
	datab => \alu|ShiftLeft0~62_combout\,
	datac => \alu|ShiftLeft0~46_combout\,
	datad => \alu|ShiftLeft0~45_combout\,
	combout => \alu|ShiftLeft0~143_combout\);

-- Location: LCCOMB_X40_Y31_N18
\alu|ShiftLeft0~63\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftLeft0~63_combout\ = (\mux_ulaA|m_out[3]~28_combout\ & (!\mux_ulaA|m_out[2]~29_combout\ & (\alu|ShiftLeft0~44_combout\))) # (!\mux_ulaA|m_out[3]~28_combout\ & (((\alu|ShiftLeft0~143_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_ulaA|m_out[2]~29_combout\,
	datab => \mux_ulaA|m_out[3]~28_combout\,
	datac => \alu|ShiftLeft0~44_combout\,
	datad => \alu|ShiftLeft0~143_combout\,
	combout => \alu|ShiftLeft0~63_combout\);

-- Location: LCCOMB_X43_Y35_N26
\pc|sr_out[11]~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \pc|sr_out[11]~19_combout\ = (\ctr_mips|pstate.branch_ex_st~regout\ & (\regULA|sr_out\(11))) # (!\ctr_mips|pstate.branch_ex_st~regout\ & ((\alu|Mux20~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctr_mips|pstate.branch_ex_st~regout\,
	datab => \regULA|sr_out\(11),
	datad => \alu|Mux20~11_combout\,
	combout => \pc|sr_out[11]~19_combout\);

-- Location: LCFF_X43_Y35_N27
\pc|sr_out[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \pc|sr_out[11]~19_combout\,
	sdata => \ir|sr_out\(9),
	sclr => \rst~combout\,
	sload => \ctr_mips|pstate.jump_ex_st~regout\,
	ena => \pc|sr_out[0]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pc|sr_out\(11));

-- Location: LCCOMB_X43_Y35_N6
\mux_ulaA|m_out[11]~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux_ulaA|m_out[11]~22_combout\ = (\ctr_mips|WideOr0~combout\ & (\rgA|sr_out\(11))) # (!\ctr_mips|WideOr0~combout\ & ((\pc|sr_out\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rgA|sr_out\(11),
	datab => \pc|sr_out\(11),
	datac => \ctr_mips|WideOr0~combout\,
	combout => \mux_ulaA|m_out[11]~22_combout\);

-- Location: LCCOMB_X40_Y35_N26
\alu|Mux29~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux29~14_combout\ = ((\actr|alu_ctr[1]~7_combout\ & (\actr|alu_ctr[0]~15_combout\ & !\actr|alu_ctr~11_combout\))) # (!\actr|alu_ctr[1]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \actr|alu_ctr[1]~7_combout\,
	datab => \actr|alu_ctr[0]~15_combout\,
	datac => \actr|alu_ctr~11_combout\,
	datad => \actr|alu_ctr[1]~14_combout\,
	combout => \alu|Mux29~14_combout\);

-- Location: LCCOMB_X43_Y30_N20
\alu|Mux20~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux20~7_combout\ = (\mux_ulaA|m_out[11]~22_combout\) # ((\mux_ulaB|m_out[11]~31_combout\) # (\alu|Mux29~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mux_ulaA|m_out[11]~22_combout\,
	datac => \mux_ulaB|m_out[11]~31_combout\,
	datad => \alu|Mux29~14_combout\,
	combout => \alu|Mux20~7_combout\);

-- Location: LCCOMB_X42_Y38_N24
\alu|ShiftRight0~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftRight0~19_combout\ = (\mux_ulaA|m_out[1]~30_combout\ & (\rgB|sr_out\(23))) # (!\mux_ulaA|m_out[1]~30_combout\ & ((\rgB|sr_out\(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rgB|sr_out\(23),
	datac => \rgB|sr_out\(21),
	datad => \mux_ulaA|m_out[1]~30_combout\,
	combout => \alu|ShiftRight0~19_combout\);

-- Location: LCCOMB_X41_Y38_N6
\alu|ShiftRight0~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftRight0~20_combout\ = (\mux_ulaA|m_out[0]~27_combout\ & ((\alu|ShiftRight0~19_combout\))) # (!\mux_ulaA|m_out[0]~27_combout\ & (\alu|ShiftRight1~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_ulaA|m_out[0]~27_combout\,
	datac => \alu|ShiftRight1~12_combout\,
	datad => \alu|ShiftRight0~19_combout\,
	combout => \alu|ShiftRight0~20_combout\);

-- Location: LCCOMB_X36_Y34_N14
\breg_data_mux|m_out[13]~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \breg_data_mux|m_out[13]~34_combout\ = (\breg_data_mux|m_out[15]~25_combout\) # ((\regULA|sr_out\(13) & !\ctr_mips|pstate.ldreg_st~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regULA|sr_out\(13),
	datac => \ctr_mips|pstate.ldreg_st~regout\,
	datad => \breg_data_mux|m_out[15]~25_combout\,
	combout => \breg_data_mux|m_out[13]~34_combout\);

-- Location: LCCOMB_X42_Y32_N30
\pc|sr_out[15]~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \pc|sr_out[15]~15_combout\ = (\ctr_mips|pstate.branch_ex_st~regout\ & ((\regULA|sr_out\(15)))) # (!\ctr_mips|pstate.branch_ex_st~regout\ & (\alu|Mux16~13_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|Mux16~13_combout\,
	datab => \ctr_mips|pstate.branch_ex_st~regout\,
	datad => \regULA|sr_out\(15),
	combout => \pc|sr_out[15]~15_combout\);

-- Location: LCFF_X42_Y32_N31
\pc|sr_out[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \pc|sr_out[15]~15_combout\,
	sdata => \ir|sr_out\(13),
	sclr => \rst~combout\,
	sload => \ctr_mips|pstate.jump_ex_st~regout\,
	ena => \pc|sr_out[0]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pc|sr_out\(15));

-- Location: LCCOMB_X42_Y32_N2
\mux_ulaA|m_out[15]~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux_ulaA|m_out[15]~16_combout\ = (\ctr_mips|WideOr0~combout\ & (\rgA|sr_out\(15))) # (!\ctr_mips|WideOr0~combout\ & ((\pc|sr_out\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rgA|sr_out\(15),
	datab => \pc|sr_out\(15),
	datad => \ctr_mips|WideOr0~combout\,
	combout => \mux_ulaA|m_out[15]~16_combout\);

-- Location: LCFF_X40_Y30_N29
\regULA|sr_out[28]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \alu|Mux3~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regULA|sr_out\(28));

-- Location: LCCOMB_X38_Y31_N18
\breg_data_mux|m_out[28]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \breg_data_mux|m_out[28]~12_combout\ = (\breg_data_mux|m_out[31]~9_combout\) # ((!\ctr_mips|pstate.ldreg_st~regout\ & \regULA|sr_out\(28)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ctr_mips|pstate.ldreg_st~regout\,
	datac => \regULA|sr_out\(28),
	datad => \breg_data_mux|m_out[31]~9_combout\,
	combout => \breg_data_mux|m_out[28]~12_combout\);

-- Location: LCCOMB_X38_Y31_N26
\bcoreg|breg32_rtl_1_bypass[67]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \bcoreg|breg32_rtl_1_bypass[67]~feeder_combout\ = \breg_data_mux|m_out[28]~12_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \breg_data_mux|m_out[28]~12_combout\,
	combout => \bcoreg|breg32_rtl_1_bypass[67]~feeder_combout\);

-- Location: LCFF_X38_Y31_N27
\bcoreg|breg32_rtl_1_bypass[67]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \bcoreg|breg32_rtl_1_bypass[67]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bcoreg|breg32_rtl_1_bypass\(67));

-- Location: LCCOMB_X38_Y34_N8
\bcoreg|regB[28]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \bcoreg|regB[28]~4_combout\ = (!\bcoreg|Equal1~1_combout\ & ((\bcoreg|breg32~45\ & ((\bcoreg|breg32_rtl_1_bypass\(67)))) # (!\bcoreg|breg32~45\ & (\bcoreg|breg32_rtl_1|auto_generated|ram_block1a28\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcoreg|breg32_rtl_1|auto_generated|ram_block1a28\,
	datab => \bcoreg|breg32~45\,
	datac => \bcoreg|Equal1~1_combout\,
	datad => \bcoreg|breg32_rtl_1_bypass\(67),
	combout => \bcoreg|regB[28]~4_combout\);

-- Location: LCFF_X40_Y36_N11
\rgB|sr_out[28]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \bcoreg|regB[28]~4_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rgB|sr_out\(28));

-- Location: LCCOMB_X34_Y33_N18
\mux_store|m_out[28]~55\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux_store|m_out[28]~55_combout\ = (\rgB|sr_out\(12) & ((\mux_store|m_out[24]~45_combout\) # ((\rgB|sr_out\(4) & \mux_store|m_out[24]~46_combout\)))) # (!\rgB|sr_out\(12) & (\rgB|sr_out\(4) & ((\mux_store|m_out[24]~46_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rgB|sr_out\(12),
	datab => \rgB|sr_out\(4),
	datac => \mux_store|m_out[24]~45_combout\,
	datad => \mux_store|m_out[24]~46_combout\,
	combout => \mux_store|m_out[28]~55_combout\);

-- Location: LCCOMB_X34_Y33_N16
\mux_store|m_out[28]~56\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux_store|m_out[28]~56_combout\ = (\b_enab|byteenable[0]~8_combout\ & (\ctr_mips|pstate.writemem_st~regout\ & ((\mux_store|m_out[28]~55_combout\)))) # (!\b_enab|byteenable[0]~8_combout\ & ((\rgB|sr_out\(28)) # ((\ctr_mips|pstate.writemem_st~regout\ & 
-- \mux_store|m_out[28]~55_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b_enab|byteenable[0]~8_combout\,
	datab => \ctr_mips|pstate.writemem_st~regout\,
	datac => \rgB|sr_out\(28),
	datad => \mux_store|m_out[28]~55_combout\,
	combout => \mux_store|m_out[28]~56_combout\);

-- Location: LCCOMB_X38_Y31_N4
\breg_data_mux|m_out[29]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \breg_data_mux|m_out[29]~11_combout\ = (\breg_data_mux|m_out[31]~9_combout\) # ((\regULA|sr_out\(29) & !\ctr_mips|pstate.ldreg_st~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regULA|sr_out\(29),
	datab => \ctr_mips|pstate.ldreg_st~regout\,
	datad => \breg_data_mux|m_out[31]~9_combout\,
	combout => \breg_data_mux|m_out[29]~11_combout\);

-- Location: LCFF_X40_Y31_N13
\bcoreg|breg32_rtl_1_bypass[69]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \breg_data_mux|m_out[29]~11_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bcoreg|breg32_rtl_1_bypass\(69));

-- Location: LCCOMB_X41_Y38_N16
\bcoreg|regB[29]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \bcoreg|regB[29]~3_combout\ = (!\bcoreg|Equal1~1_combout\ & ((\bcoreg|breg32~45\ & ((\bcoreg|breg32_rtl_1_bypass\(69)))) # (!\bcoreg|breg32~45\ & (\bcoreg|breg32_rtl_1|auto_generated|ram_block1a29\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcoreg|breg32_rtl_1|auto_generated|ram_block1a29\,
	datab => \bcoreg|breg32_rtl_1_bypass\(69),
	datac => \bcoreg|breg32~45\,
	datad => \bcoreg|Equal1~1_combout\,
	combout => \bcoreg|regB[29]~3_combout\);

-- Location: LCFF_X40_Y38_N27
\rgB|sr_out[29]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \bcoreg|regB[29]~3_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rgB|sr_out\(29));

-- Location: LCCOMB_X34_Y33_N14
\mux_store|m_out[29]~57\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux_store|m_out[29]~57_combout\ = (\rgB|sr_out\(13) & ((\mux_store|m_out[24]~45_combout\) # ((\rgB|sr_out\(5) & \mux_store|m_out[24]~46_combout\)))) # (!\rgB|sr_out\(13) & (\rgB|sr_out\(5) & ((\mux_store|m_out[24]~46_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rgB|sr_out\(13),
	datab => \rgB|sr_out\(5),
	datac => \mux_store|m_out[24]~45_combout\,
	datad => \mux_store|m_out[24]~46_combout\,
	combout => \mux_store|m_out[29]~57_combout\);

-- Location: LCCOMB_X35_Y33_N24
\mux_store|m_out[29]~58\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux_store|m_out[29]~58_combout\ = (\ctr_mips|pstate.writemem_st~regout\ & ((\mux_store|m_out[29]~57_combout\) # ((\rgB|sr_out\(29) & !\b_enab|byteenable[0]~8_combout\)))) # (!\ctr_mips|pstate.writemem_st~regout\ & (\rgB|sr_out\(29) & 
-- (!\b_enab|byteenable[0]~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctr_mips|pstate.writemem_st~regout\,
	datab => \rgB|sr_out\(29),
	datac => \b_enab|byteenable[0]~8_combout\,
	datad => \mux_store|m_out[29]~57_combout\,
	combout => \mux_store|m_out[29]~58_combout\);

-- Location: LCCOMB_X34_Y33_N12
\mux_store|m_out[30]~59\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux_store|m_out[30]~59_combout\ = (\rgB|sr_out\(6) & ((\mux_store|m_out[24]~46_combout\) # ((\rgB|sr_out\(14) & \mux_store|m_out[24]~45_combout\)))) # (!\rgB|sr_out\(6) & (\rgB|sr_out\(14) & (\mux_store|m_out[24]~45_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rgB|sr_out\(6),
	datab => \rgB|sr_out\(14),
	datac => \mux_store|m_out[24]~45_combout\,
	datad => \mux_store|m_out[24]~46_combout\,
	combout => \mux_store|m_out[30]~59_combout\);

-- Location: LCCOMB_X34_Y33_N10
\mux_store|m_out[30]~60\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux_store|m_out[30]~60_combout\ = (\rgB|sr_out\(30) & (((\ctr_mips|pstate.writemem_st~regout\ & \mux_store|m_out[30]~59_combout\)) # (!\b_enab|byteenable[0]~8_combout\))) # (!\rgB|sr_out\(30) & (\ctr_mips|pstate.writemem_st~regout\ & 
-- ((\mux_store|m_out[30]~59_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rgB|sr_out\(30),
	datab => \ctr_mips|pstate.writemem_st~regout\,
	datac => \b_enab|byteenable[0]~8_combout\,
	datad => \mux_store|m_out[30]~59_combout\,
	combout => \mux_store|m_out[30]~60_combout\);

-- Location: LCCOMB_X34_Y33_N0
\mux_store|m_out[31]~61\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux_store|m_out[31]~61_combout\ = (\rgB|sr_out\(7) & ((\mux_store|m_out[24]~46_combout\) # ((\rgB|sr_out\(15) & \mux_store|m_out[24]~45_combout\)))) # (!\rgB|sr_out\(7) & (\rgB|sr_out\(15) & (\mux_store|m_out[24]~45_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rgB|sr_out\(7),
	datab => \rgB|sr_out\(15),
	datac => \mux_store|m_out[24]~45_combout\,
	datad => \mux_store|m_out[24]~46_combout\,
	combout => \mux_store|m_out[31]~61_combout\);

-- Location: LCCOMB_X34_Y33_N2
\mux_store|m_out[31]~62\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux_store|m_out[31]~62_combout\ = (\b_enab|byteenable[0]~8_combout\ & (\ctr_mips|pstate.writemem_st~regout\ & ((\mux_store|m_out[31]~61_combout\)))) # (!\b_enab|byteenable[0]~8_combout\ & ((\rgB|sr_out\(31)) # ((\ctr_mips|pstate.writemem_st~regout\ & 
-- \mux_store|m_out[31]~61_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b_enab|byteenable[0]~8_combout\,
	datab => \ctr_mips|pstate.writemem_st~regout\,
	datac => \rgB|sr_out\(31),
	datad => \mux_store|m_out[31]~61_combout\,
	combout => \mux_store|m_out[31]~62_combout\);

-- Location: LCCOMB_X38_Y35_N0
\actr|alu_ctr~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \actr|alu_ctr~22_combout\ = (\ir|sr_out\(1) & !\ir|sr_out\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ir|sr_out\(1),
	datad => \ir|sr_out\(0),
	combout => \actr|alu_ctr~22_combout\);

-- Location: LCCOMB_X35_Y33_N0
\b_enab|byteenable[3]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \b_enab|byteenable[3]~11_combout\ = (((\ir|sr_out\(26) & \actr|alu_ctr~22_combout\)) # (!\ir|sr_out\(31))) # (!\ctr_mips|Equal2~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011101110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctr_mips|Equal2~0_combout\,
	datab => \ir|sr_out\(31),
	datac => \ir|sr_out\(26),
	datad => \actr|alu_ctr~22_combout\,
	combout => \b_enab|byteenable[3]~11_combout\);

-- Location: LCCOMB_X35_Y33_N6
\b_enab|byteenable[3]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \b_enab|byteenable[3]~12_combout\ = ((\b_enab|byteenable[3]~11_combout\) # ((\actr|alu_ctr~3_combout\ & \ctr_mips|Equal2~1_combout\))) # (!\ctr_mips|pstate.writemem_st~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \actr|alu_ctr~3_combout\,
	datab => \ctr_mips|Equal2~1_combout\,
	datac => \ctr_mips|pstate.writemem_st~regout\,
	datad => \b_enab|byteenable[3]~11_combout\,
	combout => \b_enab|byteenable[3]~12_combout\);

-- Location: M4K_X37_Y33
\mem|altsyncram_component|auto_generated|ram_block1a16\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000081000001080AE1100022042004800118E1102430000000034323C0101AC200D200C0128012820092008",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "../mips_rom.mif",
	init_file_layout => "port_a",
	logical_ram_name => "mem_mips:mem|altsyncram:altsyncram_component|altsyncram_i7h1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 8,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_mask_width => 2,
	port_a_byte_size => 8,
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 16,
	port_a_first_address => 0,
	port_a_first_bit_number => 16,
	port_a_last_address => 255,
	port_a_logical_ram_depth => 256,
	port_a_logical_ram_width => 32,
	port_a_write_enable_clear => "none",
	port_b_address_width => 8,
	port_b_data_width => 16,
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	portawe => \ctr_mips|pstate.writemem_st~regout\,
	clk0 => \clk_rom~clkctrl_outclk\,
	portadatain => \mem|altsyncram_component|auto_generated|ram_block1a16_PORTADATAIN_bus\,
	portaaddr => \mem|altsyncram_component|auto_generated|ram_block1a16_PORTAADDR_bus\,
	portabyteenamasks => \mem|altsyncram_component|auto_generated|ram_block1a16_PORTABYTEENAMASKS_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \mem|altsyncram_component|auto_generated|ram_block1a16_PORTADATAOUT_bus\);

-- Location: LCFF_X38_Y30_N27
\bcoreg|breg32_rtl_1_bypass[43]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \breg_data_mux|m_out[16]~24_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bcoreg|breg32_rtl_1_bypass\(43));

-- Location: LCCOMB_X38_Y32_N30
\alu|ShiftLeft0~70\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftLeft0~70_combout\ = (!\mux_ulaA|m_out[0]~27_combout\ & ((\mux_ulaA|m_out[1]~30_combout\ & (\mux_ulaB|m_out[11]~31_combout\)) # (!\mux_ulaA|m_out[1]~30_combout\ & ((\mux_ulaB|m_out[13]~27_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_ulaA|m_out[0]~27_combout\,
	datab => \mux_ulaA|m_out[1]~30_combout\,
	datac => \mux_ulaB|m_out[11]~31_combout\,
	datad => \mux_ulaB|m_out[13]~27_combout\,
	combout => \alu|ShiftLeft0~70_combout\);

-- Location: LCCOMB_X38_Y32_N24
\alu|ShiftLeft0~69\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftLeft0~69_combout\ = (\mux_ulaA|m_out[0]~27_combout\ & ((\mux_ulaA|m_out[1]~30_combout\ & (\mux_ulaB|m_out[10]~33_combout\)) # (!\mux_ulaA|m_out[1]~30_combout\ & ((\mux_ulaB|m_out[12]~29_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_ulaA|m_out[0]~27_combout\,
	datab => \mux_ulaA|m_out[1]~30_combout\,
	datac => \mux_ulaB|m_out[10]~33_combout\,
	datad => \mux_ulaB|m_out[12]~29_combout\,
	combout => \alu|ShiftLeft0~69_combout\);

-- Location: LCCOMB_X44_Y37_N26
\alu|ShiftLeft0~100\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftLeft0~100_combout\ = (\mux_ulaA|m_out[2]~29_combout\ & (\alu|ShiftLeft0~75_combout\)) # (!\mux_ulaA|m_out[2]~29_combout\ & ((\alu|ShiftLeft0~99_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|ShiftLeft0~75_combout\,
	datac => \mux_ulaA|m_out[2]~29_combout\,
	datad => \alu|ShiftLeft0~99_combout\,
	combout => \alu|ShiftLeft0~100_combout\);

-- Location: LCCOMB_X39_Y33_N8
\pc|sr_out[3]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \pc|sr_out[3]~1_combout\ = (\ctr_mips|pstate.branch_ex_st~regout\ & ((\regULA|sr_out\(3)))) # (!\ctr_mips|pstate.branch_ex_st~regout\ & (\alu|Mux28~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|Mux28~12_combout\,
	datab => \ctr_mips|pstate.branch_ex_st~regout\,
	datad => \regULA|sr_out\(3),
	combout => \pc|sr_out[3]~1_combout\);

-- Location: LCFF_X39_Y33_N9
\pc|sr_out[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \pc|sr_out[3]~1_combout\,
	sdata => \ir|sr_out\(1),
	sclr => \rst~combout\,
	sload => \ctr_mips|pstate.jump_ex_st~regout\,
	ena => \pc|sr_out[0]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pc|sr_out\(3));

-- Location: LCCOMB_X39_Y33_N16
\alu|ShiftLeft0~140\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftLeft0~140_combout\ = (!\mux_ulaA|m_out[2]~29_combout\ & ((\ctr_mips|WideOr0~combout\ & (!\rgA|sr_out\(3))) # (!\ctr_mips|WideOr0~combout\ & ((!\pc|sr_out\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rgA|sr_out\(3),
	datab => \pc|sr_out\(3),
	datac => \mux_ulaA|m_out[2]~29_combout\,
	datad => \ctr_mips|WideOr0~combout\,
	combout => \alu|ShiftLeft0~140_combout\);

-- Location: LCCOMB_X45_Y33_N20
\alu|ShiftLeft0~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftLeft0~28_combout\ = (\alu|ShiftLeft0~27_combout\ & \alu|ShiftLeft0~140_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \alu|ShiftLeft0~27_combout\,
	datad => \alu|ShiftLeft0~140_combout\,
	combout => \alu|ShiftLeft0~28_combout\);

-- Location: LCFF_X38_Y32_N7
\bcoreg|breg32_rtl_1_bypass[47]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \breg_data_mux|m_out[18]~22_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bcoreg|breg32_rtl_1_bypass\(47));

-- Location: LCCOMB_X39_Y36_N14
\mux_ulaB|m_out[19]~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux_ulaB|m_out[19]~16_combout\ = (\rgB|sr_out\(19) & (\ctr_mips|pstate.fetch_st~regout\ & (!\ctr_mips|pstate.decode_st~regout\ & !\ctr_mips|pstate.c_mem_add_st~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rgB|sr_out\(19),
	datab => \ctr_mips|pstate.fetch_st~regout\,
	datac => \ctr_mips|pstate.decode_st~regout\,
	datad => \ctr_mips|pstate.c_mem_add_st~regout\,
	combout => \mux_ulaB|m_out[19]~16_combout\);

-- Location: LCCOMB_X39_Y32_N10
\bcoreg|breg32_rtl_1_bypass[49]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \bcoreg|breg32_rtl_1_bypass[49]~feeder_combout\ = \breg_data_mux|m_out[19]~21_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \breg_data_mux|m_out[19]~21_combout\,
	combout => \bcoreg|breg32_rtl_1_bypass[49]~feeder_combout\);

-- Location: LCFF_X39_Y32_N11
\bcoreg|breg32_rtl_1_bypass[49]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \bcoreg|breg32_rtl_1_bypass[49]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bcoreg|breg32_rtl_1_bypass\(49));

-- Location: LCCOMB_X39_Y32_N30
\bcoreg|regA[19]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \bcoreg|regA[19]~12_combout\ = (!\bcoreg|Equal0~1_combout\ & ((\bcoreg|breg32~combout\ & ((\bcoreg|breg32_rtl_1_bypass\(49)))) # (!\bcoreg|breg32~combout\ & (\bcoreg|breg32_rtl_0|auto_generated|ram_block1a19\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcoreg|breg32_rtl_0|auto_generated|ram_block1a19\,
	datab => \bcoreg|Equal0~1_combout\,
	datac => \bcoreg|breg32~combout\,
	datad => \bcoreg|breg32_rtl_1_bypass\(49),
	combout => \bcoreg|regA[19]~12_combout\);

-- Location: LCFF_X39_Y32_N31
\rgA|sr_out[19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \bcoreg|regA[19]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rgA|sr_out\(19));

-- Location: LCCOMB_X39_Y32_N4
\mux_ulaA|m_out[19]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux_ulaA|m_out[19]~12_combout\ = (\ctr_mips|WideOr0~combout\ & ((\rgA|sr_out\(19)))) # (!\ctr_mips|WideOr0~combout\ & (\pc|sr_out\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|sr_out\(19),
	datab => \rgA|sr_out\(19),
	datad => \ctr_mips|WideOr0~combout\,
	combout => \mux_ulaA|m_out[19]~12_combout\);

-- Location: LCCOMB_X39_Y31_N4
\alu|ShiftLeft0~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftLeft0~30_combout\ = (\alu|ShiftLeft0~140_combout\ & ((\alu|ShiftLeft0~29_combout\) # ((\mux_ulaA|m_out[1]~30_combout\ & \alu|ShiftLeft0~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_ulaA|m_out[1]~30_combout\,
	datab => \alu|ShiftLeft0~29_combout\,
	datac => \alu|ShiftLeft0~22_combout\,
	datad => \alu|ShiftLeft0~140_combout\,
	combout => \alu|ShiftLeft0~30_combout\);

-- Location: LCCOMB_X43_Y33_N20
\pc|sr_out[4]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \pc|sr_out[4]~2_combout\ = (\ctr_mips|pstate.branch_ex_st~regout\ & (\regULA|sr_out\(4))) # (!\ctr_mips|pstate.branch_ex_st~regout\ & ((\alu|Mux27~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regULA|sr_out\(4),
	datab => \ctr_mips|pstate.branch_ex_st~regout\,
	datad => \alu|Mux27~combout\,
	combout => \pc|sr_out[4]~2_combout\);

-- Location: LCFF_X43_Y33_N21
\pc|sr_out[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \pc|sr_out[4]~2_combout\,
	sdata => \ir|sr_out\(2),
	sclr => \rst~combout\,
	sload => \ctr_mips|pstate.jump_ex_st~regout\,
	ena => \pc|sr_out[0]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pc|sr_out\(4));

-- Location: LCCOMB_X42_Y37_N26
\mux_ulaA|m_out[4]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux_ulaA|m_out[4]~0_combout\ = (\ctr_mips|WideOr0~combout\ & ((\rgA|sr_out\(4)))) # (!\ctr_mips|WideOr0~combout\ & (\pc|sr_out\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \pc|sr_out\(4),
	datac => \rgA|sr_out\(4),
	datad => \ctr_mips|WideOr0~combout\,
	combout => \mux_ulaA|m_out[4]~0_combout\);

-- Location: LCCOMB_X43_Y34_N10
\alu|ShiftLeft0~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftLeft0~21_combout\ = (!\mux_ulaA|m_out[4]~0_combout\ & (!\alu|ShiftLeft0~19_combout\ & !\alu|ShiftLeft0~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mux_ulaA|m_out[4]~0_combout\,
	datac => \alu|ShiftLeft0~19_combout\,
	datad => \alu|ShiftLeft0~16_combout\,
	combout => \alu|ShiftLeft0~21_combout\);

-- Location: LCCOMB_X39_Y31_N8
\alu|Mux10~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux10~11_combout\ = (\actr|alu_ctr[0]~16_combout\) # ((\mux_ulaA|m_out[3]~28_combout\ & \alu|ShiftLeft0~21_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \actr|alu_ctr[0]~16_combout\,
	datab => \mux_ulaA|m_out[3]~28_combout\,
	datad => \alu|ShiftLeft0~21_combout\,
	combout => \alu|Mux10~11_combout\);

-- Location: LCCOMB_X43_Y34_N6
\alu|Mux10~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux10~21_combout\ = (\actr|alu_ctr[0]~16_combout\) # ((!\alu|ShiftLeft0~19_combout\ & (\mux_ulaA|m_out[4]~0_combout\ & !\alu|ShiftLeft0~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|ShiftLeft0~19_combout\,
	datab => \mux_ulaA|m_out[4]~0_combout\,
	datac => \actr|alu_ctr[0]~16_combout\,
	datad => \alu|ShiftLeft0~16_combout\,
	combout => \alu|Mux10~21_combout\);

-- Location: LCCOMB_X38_Y32_N0
\alu|Mux12~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux12~0_combout\ = (\alu|Mux10~11_combout\ & ((\alu|a32~35_combout\) # ((!\alu|Mux10~21_combout\)))) # (!\alu|Mux10~11_combout\ & (((\alu|ShiftLeft0~30_combout\ & \alu|Mux10~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|a32~35_combout\,
	datab => \alu|ShiftLeft0~30_combout\,
	datac => \alu|Mux10~11_combout\,
	datad => \alu|Mux10~21_combout\,
	combout => \alu|Mux12~0_combout\);

-- Location: LCCOMB_X38_Y36_N14
\alu|ShiftLeft0~101\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftLeft0~101_combout\ = (\mux_ulaA|m_out[0]~27_combout\ & ((\rgB|sr_out\(18)))) # (!\mux_ulaA|m_out[0]~27_combout\ & (\rgB|sr_out\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rgB|sr_out\(19),
	datac => \rgB|sr_out\(18),
	datad => \mux_ulaA|m_out[0]~27_combout\,
	combout => \alu|ShiftLeft0~101_combout\);

-- Location: LCCOMB_X38_Y36_N16
\alu|ShiftLeft0~102\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftLeft0~102_combout\ = (\mux_ulaA|m_out[1]~30_combout\ & (((\alu|ShiftLeft0~94_combout\)))) # (!\mux_ulaA|m_out[1]~30_combout\ & (!\mux_ulaB|Equal2~0_combout\ & (\alu|ShiftLeft0~101_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_ulaB|Equal2~0_combout\,
	datab => \mux_ulaA|m_out[1]~30_combout\,
	datac => \alu|ShiftLeft0~101_combout\,
	datad => \alu|ShiftLeft0~94_combout\,
	combout => \alu|ShiftLeft0~102_combout\);

-- Location: LCCOMB_X45_Y32_N16
\alu|ShiftLeft0~103\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftLeft0~103_combout\ = (\mux_ulaA|m_out[2]~29_combout\ & ((\alu|ShiftLeft0~81_combout\))) # (!\mux_ulaA|m_out[2]~29_combout\ & (\alu|ShiftLeft0~102_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \alu|ShiftLeft0~102_combout\,
	datac => \mux_ulaA|m_out[2]~29_combout\,
	datad => \alu|ShiftLeft0~81_combout\,
	combout => \alu|ShiftLeft0~103_combout\);

-- Location: LCCOMB_X39_Y32_N8
\alu|Mux12~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux12~1_combout\ = (\alu|Mux10~20_combout\ & (((\alu|Mux12~0_combout\)))) # (!\alu|Mux10~20_combout\ & ((\alu|Mux12~0_combout\ & (\alu|ShiftLeft0~143_combout\)) # (!\alu|Mux12~0_combout\ & ((\alu|ShiftLeft0~103_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|ShiftLeft0~143_combout\,
	datab => \alu|Mux10~20_combout\,
	datac => \alu|Mux12~0_combout\,
	datad => \alu|ShiftLeft0~103_combout\,
	combout => \alu|Mux12~1_combout\);

-- Location: LCCOMB_X43_Y32_N26
\alu|Mux29~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux29~9_combout\ = ((!\actr|alu_ctr[0]~16_combout\ & !\actr|alu_ctr[1]~14_combout\)) # (!\alu|Mux10~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \alu|Mux10~8_combout\,
	datac => \actr|alu_ctr[0]~16_combout\,
	datad => \actr|alu_ctr[1]~14_combout\,
	combout => \alu|Mux29~9_combout\);

-- Location: LCCOMB_X39_Y32_N22
\alu|Mux12~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux12~2_combout\ = (\actr|alu_ctr[1]~14_combout\ & ((\mux_ulaA|m_out[19]~12_combout\ & ((\mux_ulaB|m_out[19]~16_combout\) # (\actr|alu_ctr[0]~16_combout\))) # (!\mux_ulaA|m_out[19]~12_combout\ & (\mux_ulaB|m_out[19]~16_combout\ & 
-- \actr|alu_ctr[0]~16_combout\)))) # (!\actr|alu_ctr[1]~14_combout\ & (((!\actr|alu_ctr[0]~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100011010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \actr|alu_ctr[1]~14_combout\,
	datab => \mux_ulaA|m_out[19]~12_combout\,
	datac => \mux_ulaB|m_out[19]~16_combout\,
	datad => \actr|alu_ctr[0]~16_combout\,
	combout => \alu|Mux12~2_combout\);

-- Location: LCCOMB_X42_Y32_N28
\pc|sr_out[18]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \pc|sr_out[18]~12_combout\ = (\ctr_mips|pstate.branch_ex_st~regout\ & (\regULA|sr_out\(18))) # (!\ctr_mips|pstate.branch_ex_st~regout\ & ((\alu|Mux13~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regULA|sr_out\(18),
	datab => \ctr_mips|pstate.branch_ex_st~regout\,
	datad => \alu|Mux13~7_combout\,
	combout => \pc|sr_out[18]~12_combout\);

-- Location: LCFF_X36_Y33_N29
\ir|sr_out[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \mem|altsyncram_component|auto_generated|q_a\(16),
	sload => VCC,
	ena => \ctr_mips|ALT_INV_pstate.fetch_st~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ir|sr_out\(16));

-- Location: LCFF_X42_Y32_N29
\pc|sr_out[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \pc|sr_out[18]~12_combout\,
	sdata => \ir|sr_out\(16),
	sclr => \rst~combout\,
	sload => \ctr_mips|pstate.jump_ex_st~regout\,
	ena => \pc|sr_out[0]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pc|sr_out\(18));

-- Location: LCCOMB_X42_Y32_N6
\mux_ulaA|m_out[18]~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux_ulaA|m_out[18]~13_combout\ = (\ctr_mips|WideOr0~combout\ & (\rgA|sr_out\(18))) # (!\ctr_mips|WideOr0~combout\ & ((\pc|sr_out\(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rgA|sr_out\(18),
	datab => \pc|sr_out\(18),
	datad => \ctr_mips|WideOr0~combout\,
	combout => \mux_ulaA|m_out[18]~13_combout\);

-- Location: LCCOMB_X41_Y33_N30
\alu|Add1~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Add1~30_combout\ = (\mux_ulaB|m_out[15]~23_combout\ & ((\mux_ulaA|m_out[15]~16_combout\ & (\alu|Add1~29\ & VCC)) # (!\mux_ulaA|m_out[15]~16_combout\ & (!\alu|Add1~29\)))) # (!\mux_ulaB|m_out[15]~23_combout\ & ((\mux_ulaA|m_out[15]~16_combout\ & 
-- (!\alu|Add1~29\)) # (!\mux_ulaA|m_out[15]~16_combout\ & ((\alu|Add1~29\) # (GND)))))
-- \alu|Add1~31\ = CARRY((\mux_ulaB|m_out[15]~23_combout\ & (!\mux_ulaA|m_out[15]~16_combout\ & !\alu|Add1~29\)) # (!\mux_ulaB|m_out[15]~23_combout\ & ((!\alu|Add1~29\) # (!\mux_ulaA|m_out[15]~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mux_ulaB|m_out[15]~23_combout\,
	datab => \mux_ulaA|m_out[15]~16_combout\,
	datad => VCC,
	cin => \alu|Add1~29\,
	combout => \alu|Add1~30_combout\,
	cout => \alu|Add1~31\);

-- Location: LCCOMB_X41_Y32_N0
\alu|Add1~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Add1~32_combout\ = ((\mux_ulaB|m_out[16]~21_combout\ $ (\mux_ulaA|m_out[16]~15_combout\ $ (!\alu|Add1~31\)))) # (GND)
-- \alu|Add1~33\ = CARRY((\mux_ulaB|m_out[16]~21_combout\ & ((\mux_ulaA|m_out[16]~15_combout\) # (!\alu|Add1~31\))) # (!\mux_ulaB|m_out[16]~21_combout\ & (\mux_ulaA|m_out[16]~15_combout\ & !\alu|Add1~31\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mux_ulaB|m_out[16]~21_combout\,
	datab => \mux_ulaA|m_out[16]~15_combout\,
	datad => VCC,
	cin => \alu|Add1~31\,
	combout => \alu|Add1~32_combout\,
	cout => \alu|Add1~33\);

-- Location: LCCOMB_X41_Y32_N2
\alu|Add1~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Add1~34_combout\ = (\mux_ulaA|m_out[17]~14_combout\ & ((\mux_ulaB|m_out[17]~20_combout\ & (\alu|Add1~33\ & VCC)) # (!\mux_ulaB|m_out[17]~20_combout\ & (!\alu|Add1~33\)))) # (!\mux_ulaA|m_out[17]~14_combout\ & ((\mux_ulaB|m_out[17]~20_combout\ & 
-- (!\alu|Add1~33\)) # (!\mux_ulaB|m_out[17]~20_combout\ & ((\alu|Add1~33\) # (GND)))))
-- \alu|Add1~35\ = CARRY((\mux_ulaA|m_out[17]~14_combout\ & (!\mux_ulaB|m_out[17]~20_combout\ & !\alu|Add1~33\)) # (!\mux_ulaA|m_out[17]~14_combout\ & ((!\alu|Add1~33\) # (!\mux_ulaB|m_out[17]~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mux_ulaA|m_out[17]~14_combout\,
	datab => \mux_ulaB|m_out[17]~20_combout\,
	datad => VCC,
	cin => \alu|Add1~33\,
	combout => \alu|Add1~34_combout\,
	cout => \alu|Add1~35\);

-- Location: LCCOMB_X41_Y32_N4
\alu|Add1~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Add1~36_combout\ = ((\mux_ulaB|m_out[18]~17_combout\ $ (\mux_ulaA|m_out[18]~13_combout\ $ (!\alu|Add1~35\)))) # (GND)
-- \alu|Add1~37\ = CARRY((\mux_ulaB|m_out[18]~17_combout\ & ((\mux_ulaA|m_out[18]~13_combout\) # (!\alu|Add1~35\))) # (!\mux_ulaB|m_out[18]~17_combout\ & (\mux_ulaA|m_out[18]~13_combout\ & !\alu|Add1~35\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mux_ulaB|m_out[18]~17_combout\,
	datab => \mux_ulaA|m_out[18]~13_combout\,
	datad => VCC,
	cin => \alu|Add1~35\,
	combout => \alu|Add1~36_combout\,
	cout => \alu|Add1~37\);

-- Location: LCCOMB_X41_Y32_N6
\alu|Add1~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Add1~38_combout\ = (\mux_ulaA|m_out[19]~12_combout\ & ((\mux_ulaB|m_out[19]~16_combout\ & (\alu|Add1~37\ & VCC)) # (!\mux_ulaB|m_out[19]~16_combout\ & (!\alu|Add1~37\)))) # (!\mux_ulaA|m_out[19]~12_combout\ & ((\mux_ulaB|m_out[19]~16_combout\ & 
-- (!\alu|Add1~37\)) # (!\mux_ulaB|m_out[19]~16_combout\ & ((\alu|Add1~37\) # (GND)))))
-- \alu|Add1~39\ = CARRY((\mux_ulaA|m_out[19]~12_combout\ & (!\mux_ulaB|m_out[19]~16_combout\ & !\alu|Add1~37\)) # (!\mux_ulaA|m_out[19]~12_combout\ & ((!\alu|Add1~37\) # (!\mux_ulaB|m_out[19]~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mux_ulaA|m_out[19]~12_combout\,
	datab => \mux_ulaB|m_out[19]~16_combout\,
	datad => VCC,
	cin => \alu|Add1~37\,
	combout => \alu|Add1~38_combout\,
	cout => \alu|Add1~39\);

-- Location: LCCOMB_X43_Y34_N12
\alu|Mux10~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux10~9_combout\ = (\actr|alu_ctr[1]~13_combout\ & (((\alu|ShiftLeft0~21_combout\) # (!\actr|alu_ctr[0]~16_combout\)))) # (!\actr|alu_ctr[1]~13_combout\ & (!\actr|alu_ctr[1]~24_combout\ & ((\alu|ShiftLeft0~21_combout\) # 
-- (!\actr|alu_ctr[0]~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101100001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \actr|alu_ctr[1]~13_combout\,
	datab => \actr|alu_ctr[1]~24_combout\,
	datac => \actr|alu_ctr[0]~16_combout\,
	datad => \alu|ShiftLeft0~21_combout\,
	combout => \alu|Mux10~9_combout\);

-- Location: LCCOMB_X39_Y32_N24
\alu|Mux12~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux12~3_combout\ = (\alu|Mux12~2_combout\ & (((\alu|Add1~38_combout\) # (!\alu|Mux10~9_combout\)))) # (!\alu|Mux12~2_combout\ & (\alu|ShiftRight1~55_combout\ & ((\alu|Mux10~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|ShiftRight1~55_combout\,
	datab => \alu|Mux12~2_combout\,
	datac => \alu|Add1~38_combout\,
	datad => \alu|Mux10~9_combout\,
	combout => \alu|Mux12~3_combout\);

-- Location: LCCOMB_X43_Y35_N8
\pc|sr_out[12]~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \pc|sr_out[12]~18_combout\ = (\ctr_mips|pstate.branch_ex_st~regout\ & (\regULA|sr_out\(12))) # (!\ctr_mips|pstate.branch_ex_st~regout\ & ((\alu|Mux19~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctr_mips|pstate.branch_ex_st~regout\,
	datab => \regULA|sr_out\(12),
	datad => \alu|Mux19~11_combout\,
	combout => \pc|sr_out[12]~18_combout\);

-- Location: LCFF_X38_Y37_N27
\ir|sr_out[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \mem|altsyncram_component|auto_generated|q_a\(10),
	sload => VCC,
	ena => \ctr_mips|ALT_INV_pstate.fetch_st~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ir|sr_out\(10));

-- Location: LCFF_X43_Y35_N9
\pc|sr_out[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \pc|sr_out[12]~18_combout\,
	sdata => \ir|sr_out\(10),
	sclr => \rst~combout\,
	sload => \ctr_mips|pstate.jump_ex_st~regout\,
	ena => \pc|sr_out[0]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pc|sr_out\(12));

-- Location: LCFF_X43_Y35_N19
\bcoreg|breg32_rtl_1_bypass[35]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \breg_data_mux|m_out[12]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bcoreg|breg32_rtl_1_bypass\(35));

-- Location: LCCOMB_X43_Y35_N4
\bcoreg|regA[12]~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \bcoreg|regA[12]~21_combout\ = (!\bcoreg|Equal0~1_combout\ & ((\bcoreg|breg32~combout\ & ((\bcoreg|breg32_rtl_1_bypass\(35)))) # (!\bcoreg|breg32~combout\ & (\bcoreg|breg32_rtl_0|auto_generated|ram_block1a12\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcoreg|breg32_rtl_0|auto_generated|ram_block1a12\,
	datab => \bcoreg|breg32_rtl_1_bypass\(35),
	datac => \bcoreg|breg32~combout\,
	datad => \bcoreg|Equal0~1_combout\,
	combout => \bcoreg|regA[12]~21_combout\);

-- Location: LCFF_X43_Y35_N5
\rgA|sr_out[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \bcoreg|regA[12]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rgA|sr_out\(12));

-- Location: LCCOMB_X43_Y35_N30
\mux_ulaA|m_out[12]~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux_ulaA|m_out[12]~21_combout\ = (\ctr_mips|WideOr0~combout\ & ((\rgA|sr_out\(12)))) # (!\ctr_mips|WideOr0~combout\ & (\pc|sr_out\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \pc|sr_out\(12),
	datac => \ctr_mips|WideOr0~combout\,
	datad => \rgA|sr_out\(12),
	combout => \mux_ulaA|m_out[12]~21_combout\);

-- Location: LCFF_X42_Y35_N23
\ir|sr_out[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \mem|altsyncram_component|auto_generated|q_a\(7),
	sload => VCC,
	ena => \ctr_mips|ALT_INV_pstate.fetch_st~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ir|sr_out\(7));

-- Location: LCCOMB_X42_Y35_N24
\mux_ulaB|m_out[9]~35\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux_ulaB|m_out[9]~35_combout\ = (\mux_ulaB|m_out[0]~18_combout\ & (\mux_ulaB|m_out[9]~34_combout\)) # (!\mux_ulaB|m_out[0]~18_combout\ & (((\ir|sr_out\(7) & !\mux_ulaB|m_out[2]~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_ulaB|m_out[9]~34_combout\,
	datab => \ir|sr_out\(7),
	datac => \mux_ulaB|m_out[0]~18_combout\,
	datad => \mux_ulaB|m_out[2]~19_combout\,
	combout => \mux_ulaB|m_out[9]~35_combout\);

-- Location: LCCOMB_X41_Y35_N8
\mux_ulaB|m_out[8]~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux_ulaB|m_out[8]~36_combout\ = (\ctr_mips|pstate.decode_st~regout\ & (((\ir|sr_out\(8))))) # (!\ctr_mips|pstate.decode_st~regout\ & ((\ctr_mips|pstate.c_mem_add_st~regout\ & (\ir|sr_out\(8))) # (!\ctr_mips|pstate.c_mem_add_st~regout\ & 
-- ((\rgB|sr_out\(8))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctr_mips|pstate.decode_st~regout\,
	datab => \ctr_mips|pstate.c_mem_add_st~regout\,
	datac => \ir|sr_out\(8),
	datad => \rgB|sr_out\(8),
	combout => \mux_ulaB|m_out[8]~36_combout\);

-- Location: LCCOMB_X41_Y35_N16
\mux_ulaB|m_out[8]~37\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux_ulaB|m_out[8]~37_combout\ = (\mux_ulaB|m_out[0]~18_combout\ & (((\mux_ulaB|m_out[8]~36_combout\)))) # (!\mux_ulaB|m_out[0]~18_combout\ & (\ir|sr_out\(6) & (!\mux_ulaB|m_out[2]~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir|sr_out\(6),
	datab => \mux_ulaB|m_out[2]~19_combout\,
	datac => \mux_ulaB|m_out[8]~36_combout\,
	datad => \mux_ulaB|m_out[0]~18_combout\,
	combout => \mux_ulaB|m_out[8]~37_combout\);

-- Location: LCCOMB_X44_Y35_N6
\mux_ulaA|m_out[7]~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux_ulaA|m_out[7]~26_combout\ = (\ctr_mips|WideOr0~combout\ & (\rgA|sr_out\(7))) # (!\ctr_mips|WideOr0~combout\ & ((\pc|sr_out\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rgA|sr_out\(7),
	datab => \pc|sr_out\(7),
	datac => \ctr_mips|WideOr0~combout\,
	combout => \mux_ulaA|m_out[7]~26_combout\);

-- Location: LCCOMB_X40_Y33_N8
\bcoreg|breg32_rtl_1_bypass[51]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \bcoreg|breg32_rtl_1_bypass[51]~feeder_combout\ = \breg_data_mux|m_out[20]~20_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \breg_data_mux|m_out[20]~20_combout\,
	combout => \bcoreg|breg32_rtl_1_bypass[51]~feeder_combout\);

-- Location: LCFF_X40_Y33_N9
\bcoreg|breg32_rtl_1_bypass[51]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \bcoreg|breg32_rtl_1_bypass[51]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bcoreg|breg32_rtl_1_bypass\(51));

-- Location: LCCOMB_X40_Y33_N22
\bcoreg|regA[20]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \bcoreg|regA[20]~11_combout\ = (!\bcoreg|Equal0~1_combout\ & ((\bcoreg|breg32~combout\ & ((\bcoreg|breg32_rtl_1_bypass\(51)))) # (!\bcoreg|breg32~combout\ & (\bcoreg|breg32_rtl_0|auto_generated|ram_block1a20\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcoreg|breg32_rtl_0|auto_generated|ram_block1a20\,
	datab => \bcoreg|Equal0~1_combout\,
	datac => \bcoreg|breg32_rtl_1_bypass\(51),
	datad => \bcoreg|breg32~combout\,
	combout => \bcoreg|regA[20]~11_combout\);

-- Location: LCFF_X40_Y33_N23
\rgA|sr_out[20]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \bcoreg|regA[20]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rgA|sr_out\(20));

-- Location: LCCOMB_X40_Y33_N0
\mux_ulaA|m_out[20]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux_ulaA|m_out[20]~11_combout\ = (\ctr_mips|WideOr0~combout\ & ((\rgA|sr_out\(20)))) # (!\ctr_mips|WideOr0~combout\ & (\pc|sr_out\(20)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|sr_out\(20),
	datab => \rgA|sr_out\(20),
	datac => \ctr_mips|WideOr0~combout\,
	combout => \mux_ulaA|m_out[20]~11_combout\);

-- Location: LCCOMB_X39_Y31_N24
\mux_ulaB|m_out[31]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux_ulaB|m_out[31]~4_combout\ = (\rgB|sr_out\(31) & (!\ctr_mips|pstate.c_mem_add_st~regout\ & (!\ctr_mips|pstate.decode_st~regout\ & \ctr_mips|pstate.fetch_st~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rgB|sr_out\(31),
	datab => \ctr_mips|pstate.c_mem_add_st~regout\,
	datac => \ctr_mips|pstate.decode_st~regout\,
	datad => \ctr_mips|pstate.fetch_st~regout\,
	combout => \mux_ulaB|m_out[31]~4_combout\);

-- Location: LCCOMB_X41_Y30_N16
\alu|ShiftRight0~59\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftRight0~59_combout\ = (!\mux_ulaA|m_out[3]~28_combout\ & ((\mux_ulaA|m_out[2]~29_combout\ & (\alu|ShiftRight0~15_combout\)) # (!\mux_ulaA|m_out[2]~29_combout\ & ((\alu|ShiftRight0~20_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_ulaA|m_out[3]~28_combout\,
	datab => \mux_ulaA|m_out[2]~29_combout\,
	datac => \alu|ShiftRight0~15_combout\,
	datad => \alu|ShiftRight0~20_combout\,
	combout => \alu|ShiftRight0~59_combout\);

-- Location: LCCOMB_X41_Y38_N0
\alu|ShiftRight0~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftRight0~11_combout\ = (\mux_ulaA|m_out[0]~27_combout\ & ((\mux_ulaA|m_out[1]~30_combout\ & (\rgB|sr_out\(31))) # (!\mux_ulaA|m_out[1]~30_combout\ & ((\rgB|sr_out\(29))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rgB|sr_out\(31),
	datab => \rgB|sr_out\(29),
	datac => \mux_ulaA|m_out[0]~27_combout\,
	datad => \mux_ulaA|m_out[1]~30_combout\,
	combout => \alu|ShiftRight0~11_combout\);

-- Location: LCCOMB_X41_Y38_N14
\alu|ShiftRight0~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftRight0~12_combout\ = (!\mux_ulaA|m_out[0]~27_combout\ & ((\mux_ulaA|m_out[1]~30_combout\ & (\rgB|sr_out\(30))) # (!\mux_ulaA|m_out[1]~30_combout\ & ((\rgB|sr_out\(28))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rgB|sr_out\(30),
	datab => \rgB|sr_out\(28),
	datac => \mux_ulaA|m_out[0]~27_combout\,
	datad => \mux_ulaA|m_out[1]~30_combout\,
	combout => \alu|ShiftRight0~12_combout\);

-- Location: LCCOMB_X42_Y38_N4
\alu|ShiftRight0~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftRight0~13_combout\ = (\alu|ShiftRight0~11_combout\) # (\alu|ShiftRight0~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \alu|ShiftRight0~11_combout\,
	datad => \alu|ShiftRight0~12_combout\,
	combout => \alu|ShiftRight0~13_combout\);

-- Location: LCCOMB_X41_Y30_N18
\alu|ShiftRight0~60\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftRight0~60_combout\ = (\mux_ulaA|m_out[3]~28_combout\ & ((\mux_ulaA|m_out[2]~29_combout\ & (\rgB|sr_out\(31))) # (!\mux_ulaA|m_out[2]~29_combout\ & ((\alu|ShiftRight0~13_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rgB|sr_out\(31),
	datab => \mux_ulaA|m_out[2]~29_combout\,
	datac => \mux_ulaA|m_out[3]~28_combout\,
	datad => \alu|ShiftRight0~13_combout\,
	combout => \alu|ShiftRight0~60_combout\);

-- Location: LCCOMB_X41_Y30_N24
\alu|ShiftRight0~61\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftRight0~61_combout\ = (!\mux_ulaB|Equal2~0_combout\ & ((\alu|ShiftRight0~59_combout\) # (\alu|ShiftRight0~60_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mux_ulaB|Equal2~0_combout\,
	datac => \alu|ShiftRight0~59_combout\,
	datad => \alu|ShiftRight0~60_combout\,
	combout => \alu|ShiftRight0~61_combout\);

-- Location: LCCOMB_X42_Y38_N14
\alu|ShiftRight1~63\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftRight1~63_combout\ = (!\mux_ulaB|Equal2~0_combout\ & ((\alu|ShiftRight0~11_combout\) # (\alu|ShiftRight0~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_ulaB|Equal2~0_combout\,
	datac => \alu|ShiftRight0~11_combout\,
	datad => \alu|ShiftRight0~12_combout\,
	combout => \alu|ShiftRight1~63_combout\);

-- Location: LCCOMB_X42_Y38_N20
\alu|ShiftRight1~64\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftRight1~64_combout\ = (\mux_ulaA|m_out[3]~28_combout\ & (!\mux_ulaA|m_out[2]~29_combout\ & (\alu|ShiftRight1~63_combout\))) # (!\mux_ulaA|m_out[3]~28_combout\ & (((\alu|ShiftRight0~62_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_ulaA|m_out[3]~28_combout\,
	datab => \mux_ulaA|m_out[2]~29_combout\,
	datac => \alu|ShiftRight1~63_combout\,
	datad => \alu|ShiftRight0~62_combout\,
	combout => \alu|ShiftRight1~64_combout\);

-- Location: LCCOMB_X41_Y32_N8
\alu|Add1~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Add1~40_combout\ = ((\mux_ulaB|m_out[20]~15_combout\ $ (\mux_ulaA|m_out[20]~11_combout\ $ (!\alu|Add1~39\)))) # (GND)
-- \alu|Add1~41\ = CARRY((\mux_ulaB|m_out[20]~15_combout\ & ((\mux_ulaA|m_out[20]~11_combout\) # (!\alu|Add1~39\))) # (!\mux_ulaB|m_out[20]~15_combout\ & (\mux_ulaA|m_out[20]~11_combout\ & !\alu|Add1~39\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mux_ulaB|m_out[20]~15_combout\,
	datab => \mux_ulaA|m_out[20]~11_combout\,
	datad => VCC,
	cin => \alu|Add1~39\,
	combout => \alu|Add1~40_combout\,
	cout => \alu|Add1~41\);

-- Location: LCCOMB_X41_Y30_N20
\alu|Mux11~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux11~3_combout\ = (\alu|Mux11~2_combout\ & (((\alu|Add1~40_combout\) # (!\alu|Mux10~9_combout\)))) # (!\alu|Mux11~2_combout\ & (\alu|ShiftRight1~64_combout\ & (\alu|Mux10~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|Mux11~2_combout\,
	datab => \alu|ShiftRight1~64_combout\,
	datac => \alu|Mux10~9_combout\,
	datad => \alu|Add1~40_combout\,
	combout => \alu|Mux11~3_combout\);

-- Location: LCCOMB_X44_Y38_N12
\alu|Mux7~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux7~12_combout\ = (\alu|Mux29~2_combout\ & ((\actr|alu_ctr[0]~16_combout\) # ((!\alu|ShiftLeft0~19_combout\ & !\alu|ShiftLeft0~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \actr|alu_ctr[0]~16_combout\,
	datab => \alu|ShiftLeft0~19_combout\,
	datac => \alu|ShiftLeft0~16_combout\,
	datad => \alu|Mux29~2_combout\,
	combout => \alu|Mux7~12_combout\);

-- Location: LCCOMB_X45_Y37_N14
\alu|ShiftLeft0~84\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftLeft0~84_combout\ = (!\mux_ulaA|m_out[1]~30_combout\ & ((\mux_ulaA|m_out[0]~27_combout\ & (\mux_ulaB|m_out[15]~23_combout\)) # (!\mux_ulaA|m_out[0]~27_combout\ & ((\mux_ulaB|m_out[16]~21_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_ulaA|m_out[1]~30_combout\,
	datab => \mux_ulaB|m_out[15]~23_combout\,
	datac => \mux_ulaA|m_out[0]~27_combout\,
	datad => \mux_ulaB|m_out[16]~21_combout\,
	combout => \alu|ShiftLeft0~84_combout\);

-- Location: LCCOMB_X47_Y37_N2
\alu|ShiftLeft0~64\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftLeft0~64_combout\ = (\mux_ulaA|m_out[1]~30_combout\ & ((\mux_ulaA|m_out[0]~27_combout\) # ((\mux_ulaB|m_out[10]~33_combout\)))) # (!\mux_ulaA|m_out[1]~30_combout\ & (!\mux_ulaA|m_out[0]~27_combout\ & ((\mux_ulaB|m_out[12]~29_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_ulaA|m_out[1]~30_combout\,
	datab => \mux_ulaA|m_out[0]~27_combout\,
	datac => \mux_ulaB|m_out[10]~33_combout\,
	datad => \mux_ulaB|m_out[12]~29_combout\,
	combout => \alu|ShiftLeft0~64_combout\);

-- Location: LCCOMB_X47_Y37_N16
\alu|ShiftLeft0~65\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftLeft0~65_combout\ = (\mux_ulaA|m_out[0]~27_combout\ & ((\alu|ShiftLeft0~64_combout\ & ((\mux_ulaB|m_out[9]~35_combout\))) # (!\alu|ShiftLeft0~64_combout\ & (\mux_ulaB|m_out[11]~31_combout\)))) # (!\mux_ulaA|m_out[0]~27_combout\ & 
-- (((\alu|ShiftLeft0~64_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_ulaB|m_out[11]~31_combout\,
	datab => \mux_ulaA|m_out[0]~27_combout\,
	datac => \mux_ulaB|m_out[9]~35_combout\,
	datad => \alu|ShiftLeft0~64_combout\,
	combout => \alu|ShiftLeft0~65_combout\);

-- Location: LCCOMB_X45_Y34_N28
\alu|ShiftLeft0~86\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftLeft0~86_combout\ = (\mux_ulaA|m_out[2]~29_combout\ & (((\alu|ShiftLeft0~65_combout\)))) # (!\mux_ulaA|m_out[2]~29_combout\ & ((\alu|ShiftLeft0~85_combout\) # ((\alu|ShiftLeft0~84_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|ShiftLeft0~85_combout\,
	datab => \mux_ulaA|m_out[2]~29_combout\,
	datac => \alu|ShiftLeft0~84_combout\,
	datad => \alu|ShiftLeft0~65_combout\,
	combout => \alu|ShiftLeft0~86_combout\);

-- Location: LCCOMB_X45_Y36_N28
\alu|Mux7~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux7~2_combout\ = (\mux_ulaA|m_out[4]~0_combout\) # ((!\mux_ulaA|m_out[3]~28_combout\ & \mux_ulaA|m_out[2]~29_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mux_ulaA|m_out[3]~28_combout\,
	datac => \mux_ulaA|m_out[4]~0_combout\,
	datad => \mux_ulaA|m_out[2]~29_combout\,
	combout => \alu|Mux7~2_combout\);

-- Location: LCCOMB_X45_Y36_N16
\alu|ShiftLeft0~105\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftLeft0~105_combout\ = (\mux_ulaA|m_out[1]~30_combout\ & (((\alu|ShiftLeft0~98_combout\)))) # (!\mux_ulaA|m_out[1]~30_combout\ & (\alu|ShiftLeft0~104_combout\ & (!\mux_ulaB|Equal2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|ShiftLeft0~104_combout\,
	datab => \mux_ulaB|Equal2~0_combout\,
	datac => \mux_ulaA|m_out[1]~30_combout\,
	datad => \alu|ShiftLeft0~98_combout\,
	combout => \alu|ShiftLeft0~105_combout\);

-- Location: LCCOMB_X38_Y36_N20
\alu|ShiftLeft0~117\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftLeft0~117_combout\ = (\mux_ulaA|m_out[1]~30_combout\ & (\rgB|sr_out\(22))) # (!\mux_ulaA|m_out[1]~30_combout\ & ((\rgB|sr_out\(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rgB|sr_out\(22),
	datab => \mux_ulaA|m_out[1]~30_combout\,
	datac => \rgB|sr_out\(24),
	combout => \alu|ShiftLeft0~117_combout\);

-- Location: LCCOMB_X38_Y36_N0
\alu|ShiftLeft0~114\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftLeft0~114_combout\ = (\mux_ulaA|m_out[1]~30_combout\ & (\rgB|sr_out\(21))) # (!\mux_ulaA|m_out[1]~30_combout\ & ((\rgB|sr_out\(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rgB|sr_out\(21),
	datab => \rgB|sr_out\(23),
	datad => \mux_ulaA|m_out[1]~30_combout\,
	combout => \alu|ShiftLeft0~114_combout\);

-- Location: LCCOMB_X38_Y36_N2
\alu|ShiftLeft0~118\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftLeft0~118_combout\ = (!\mux_ulaB|Equal2~0_combout\ & ((\mux_ulaA|m_out[0]~27_combout\ & ((\alu|ShiftLeft0~114_combout\))) # (!\mux_ulaA|m_out[0]~27_combout\ & (\alu|ShiftLeft0~117_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_ulaB|Equal2~0_combout\,
	datab => \mux_ulaA|m_out[0]~27_combout\,
	datac => \alu|ShiftLeft0~117_combout\,
	datad => \alu|ShiftLeft0~114_combout\,
	combout => \alu|ShiftLeft0~118_combout\);

-- Location: LCCOMB_X45_Y36_N22
\alu|Mux7~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux7~3_combout\ = (\alu|ShiftRight0~88_combout\ & ((\alu|Mux7~2_combout\ & (\alu|ShiftLeft0~105_combout\)) # (!\alu|Mux7~2_combout\ & ((\alu|ShiftLeft0~118_combout\))))) # (!\alu|ShiftRight0~88_combout\ & (\alu|Mux7~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|ShiftRight0~88_combout\,
	datab => \alu|Mux7~2_combout\,
	datac => \alu|ShiftLeft0~105_combout\,
	datad => \alu|ShiftLeft0~118_combout\,
	combout => \alu|Mux7~3_combout\);

-- Location: LCCOMB_X45_Y34_N22
\alu|ShiftLeft0~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftLeft0~31_combout\ = (\mux_ulaA|m_out[1]~30_combout\ & (((\mux_ulaB|m_out[2]~50_combout\) # (\mux_ulaA|m_out[0]~27_combout\)))) # (!\mux_ulaA|m_out[1]~30_combout\ & (\mux_ulaB|m_out[4]~45_combout\ & ((!\mux_ulaA|m_out[0]~27_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_ulaA|m_out[1]~30_combout\,
	datab => \mux_ulaB|m_out[4]~45_combout\,
	datac => \mux_ulaB|m_out[2]~50_combout\,
	datad => \mux_ulaA|m_out[0]~27_combout\,
	combout => \alu|ShiftLeft0~31_combout\);

-- Location: LCCOMB_X45_Y34_N8
\alu|ShiftLeft0~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftLeft0~32_combout\ = (\mux_ulaA|m_out[0]~27_combout\ & ((\alu|ShiftLeft0~31_combout\ & ((\mux_ulaB|m_out[1]~48_combout\))) # (!\alu|ShiftLeft0~31_combout\ & (\mux_ulaB|m_out[3]~47_combout\)))) # (!\mux_ulaA|m_out[0]~27_combout\ & 
-- (((\alu|ShiftLeft0~31_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_ulaB|m_out[3]~47_combout\,
	datab => \mux_ulaA|m_out[0]~27_combout\,
	datac => \mux_ulaB|m_out[1]~48_combout\,
	datad => \alu|ShiftLeft0~31_combout\,
	combout => \alu|ShiftLeft0~32_combout\);

-- Location: LCCOMB_X45_Y34_N4
\alu|ShiftLeft0~51\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftLeft0~51_combout\ = (!\mux_ulaA|m_out[3]~28_combout\ & ((\mux_ulaA|m_out[2]~29_combout\ & ((\alu|ShiftLeft0~32_combout\))) # (!\mux_ulaA|m_out[2]~29_combout\ & (\alu|ShiftLeft0~50_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|ShiftLeft0~50_combout\,
	datab => \mux_ulaA|m_out[2]~29_combout\,
	datac => \alu|ShiftLeft0~32_combout\,
	datad => \mux_ulaA|m_out[3]~28_combout\,
	combout => \alu|ShiftLeft0~51_combout\);

-- Location: LCCOMB_X45_Y34_N2
\alu|ShiftLeft0~52\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftLeft0~52_combout\ = (\alu|ShiftLeft0~51_combout\) # ((!\alu|ShiftLeft0~42_combout\ & (\mux_ulaA|m_out[3]~28_combout\ & \mux_ulaB|m_out[0]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|ShiftLeft0~42_combout\,
	datab => \mux_ulaA|m_out[3]~28_combout\,
	datac => \alu|ShiftLeft0~51_combout\,
	datad => \mux_ulaB|m_out[0]~3_combout\,
	combout => \alu|ShiftLeft0~52_combout\);

-- Location: LCCOMB_X45_Y34_N10
\alu|Mux7~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux7~4_combout\ = (\alu|ShiftRight0~88_combout\ & (((\alu|Mux7~3_combout\)))) # (!\alu|ShiftRight0~88_combout\ & ((\alu|Mux7~3_combout\ & ((\alu|ShiftLeft0~52_combout\))) # (!\alu|Mux7~3_combout\ & (\alu|ShiftLeft0~86_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|ShiftRight0~88_combout\,
	datab => \alu|ShiftLeft0~86_combout\,
	datac => \alu|Mux7~3_combout\,
	datad => \alu|ShiftLeft0~52_combout\,
	combout => \alu|Mux7~4_combout\);

-- Location: LCCOMB_X40_Y30_N16
\alu|ShiftLeft0~119\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftLeft0~119_combout\ = (\mux_ulaA|m_out[1]~30_combout\ & ((\rgB|sr_out\(23)))) # (!\mux_ulaA|m_out[1]~30_combout\ & (\rgB|sr_out\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rgB|sr_out\(25),
	datac => \rgB|sr_out\(23),
	datad => \mux_ulaA|m_out[1]~30_combout\,
	combout => \alu|ShiftLeft0~119_combout\);

-- Location: LCCOMB_X38_Y32_N16
\alu|ShiftLeft0~120\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftLeft0~120_combout\ = (!\mux_ulaB|Equal2~0_combout\ & ((\mux_ulaA|m_out[0]~27_combout\ & ((\alu|ShiftLeft0~117_combout\))) # (!\mux_ulaA|m_out[0]~27_combout\ & (\alu|ShiftLeft0~119_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_ulaA|m_out[0]~27_combout\,
	datab => \mux_ulaB|Equal2~0_combout\,
	datac => \alu|ShiftLeft0~119_combout\,
	datad => \alu|ShiftLeft0~117_combout\,
	combout => \alu|ShiftLeft0~120_combout\);

-- Location: LCCOMB_X38_Y32_N14
\alu|Mux6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux6~0_combout\ = (\alu|ShiftRight0~88_combout\ & (!\alu|Mux7~2_combout\ & (\alu|ShiftLeft0~120_combout\))) # (!\alu|ShiftRight0~88_combout\ & ((\alu|Mux7~2_combout\) # ((\alu|ShiftLeft0~96_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010101100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|ShiftRight0~88_combout\,
	datab => \alu|Mux7~2_combout\,
	datac => \alu|ShiftLeft0~120_combout\,
	datad => \alu|ShiftLeft0~96_combout\,
	combout => \alu|Mux6~0_combout\);

-- Location: LCCOMB_X44_Y37_N16
\alu|ShiftLeft0~53\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftLeft0~53_combout\ = (\mux_ulaA|m_out[0]~27_combout\ & ((\mux_ulaA|m_out[1]~30_combout\ & (\mux_ulaB|m_out[6]~41_combout\)) # (!\mux_ulaA|m_out[1]~30_combout\ & ((\mux_ulaB|m_out[8]~37_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_ulaB|m_out[6]~41_combout\,
	datab => \mux_ulaA|m_out[0]~27_combout\,
	datac => \mux_ulaB|m_out[8]~37_combout\,
	datad => \mux_ulaA|m_out[1]~30_combout\,
	combout => \alu|ShiftLeft0~53_combout\);

-- Location: LCCOMB_X41_Y31_N20
\alu|ShiftLeft0~35\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftLeft0~35_combout\ = (\mux_ulaA|m_out[0]~27_combout\ & ((\mux_ulaA|m_out[1]~30_combout\ & (\mux_ulaB|m_out[2]~50_combout\)) # (!\mux_ulaA|m_out[1]~30_combout\ & ((\mux_ulaB|m_out[4]~45_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_ulaA|m_out[0]~27_combout\,
	datab => \mux_ulaB|m_out[2]~50_combout\,
	datac => \mux_ulaB|m_out[4]~45_combout\,
	datad => \mux_ulaA|m_out[1]~30_combout\,
	combout => \alu|ShiftLeft0~35_combout\);

-- Location: LCCOMB_X40_Y35_N12
\mux_ulaB|m_out[3]~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux_ulaB|m_out[3]~46_combout\ = (\ctr_mips|pstate.decode_st~regout\ & (((\ir|sr_out\(3))))) # (!\ctr_mips|pstate.decode_st~regout\ & ((\ctr_mips|pstate.c_mem_add_st~regout\ & ((\ir|sr_out\(3)))) # (!\ctr_mips|pstate.c_mem_add_st~regout\ & 
-- (\rgB|sr_out\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rgB|sr_out\(3),
	datab => \ctr_mips|pstate.decode_st~regout\,
	datac => \ir|sr_out\(3),
	datad => \ctr_mips|pstate.c_mem_add_st~regout\,
	combout => \mux_ulaB|m_out[3]~46_combout\);

-- Location: LCCOMB_X41_Y35_N26
\mux_ulaB|m_out[3]~47\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux_ulaB|m_out[3]~47_combout\ = (\mux_ulaB|m_out[0]~18_combout\ & (((\mux_ulaB|m_out[3]~46_combout\)))) # (!\mux_ulaB|m_out[0]~18_combout\ & (\ir|sr_out\(1) & (!\mux_ulaB|m_out[2]~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir|sr_out\(1),
	datab => \mux_ulaB|m_out[0]~18_combout\,
	datac => \mux_ulaB|m_out[2]~19_combout\,
	datad => \mux_ulaB|m_out[3]~46_combout\,
	combout => \mux_ulaB|m_out[3]~47_combout\);

-- Location: LCCOMB_X41_Y31_N6
\alu|ShiftLeft0~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftLeft0~36_combout\ = (\mux_ulaA|m_out[1]~30_combout\ & (\mux_ulaB|m_out[3]~47_combout\)) # (!\mux_ulaA|m_out[1]~30_combout\ & ((\mux_ulaB|m_out[5]~43_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mux_ulaB|m_out[3]~47_combout\,
	datac => \mux_ulaB|m_out[5]~43_combout\,
	datad => \mux_ulaA|m_out[1]~30_combout\,
	combout => \alu|ShiftLeft0~36_combout\);

-- Location: LCCOMB_X41_Y31_N16
\alu|ShiftLeft0~37\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftLeft0~37_combout\ = (\alu|ShiftLeft0~35_combout\) # ((!\mux_ulaA|m_out[0]~27_combout\ & \alu|ShiftLeft0~36_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mux_ulaA|m_out[0]~27_combout\,
	datac => \alu|ShiftLeft0~35_combout\,
	datad => \alu|ShiftLeft0~36_combout\,
	combout => \alu|ShiftLeft0~37_combout\);

-- Location: LCCOMB_X47_Y33_N20
\alu|ShiftLeft0~55\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftLeft0~55_combout\ = (\mux_ulaA|m_out[2]~29_combout\ & (((\alu|ShiftLeft0~37_combout\)))) # (!\mux_ulaA|m_out[2]~29_combout\ & ((\alu|ShiftLeft0~54_combout\) # ((\alu|ShiftLeft0~53_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|ShiftLeft0~54_combout\,
	datab => \mux_ulaA|m_out[2]~29_combout\,
	datac => \alu|ShiftLeft0~53_combout\,
	datad => \alu|ShiftLeft0~37_combout\,
	combout => \alu|ShiftLeft0~55_combout\);

-- Location: LCCOMB_X41_Y31_N22
\alu|ShiftLeft0~43\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftLeft0~43_combout\ = (!\mux_ulaA|m_out[1]~30_combout\ & (\mux_ulaA|m_out[3]~28_combout\ & !\mux_ulaA|m_out[2]~29_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mux_ulaA|m_out[1]~30_combout\,
	datac => \mux_ulaA|m_out[3]~28_combout\,
	datad => \mux_ulaA|m_out[2]~29_combout\,
	combout => \alu|ShiftLeft0~43_combout\);

-- Location: LCCOMB_X47_Y33_N30
\alu|ShiftLeft0~56\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftLeft0~56_combout\ = (\alu|ShiftLeft0~22_combout\ & ((\alu|ShiftLeft0~43_combout\) # ((!\mux_ulaA|m_out[3]~28_combout\ & \alu|ShiftLeft0~55_combout\)))) # (!\alu|ShiftLeft0~22_combout\ & (!\mux_ulaA|m_out[3]~28_combout\ & 
-- (\alu|ShiftLeft0~55_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|ShiftLeft0~22_combout\,
	datab => \mux_ulaA|m_out[3]~28_combout\,
	datac => \alu|ShiftLeft0~55_combout\,
	datad => \alu|ShiftLeft0~43_combout\,
	combout => \alu|ShiftLeft0~56_combout\);

-- Location: LCCOMB_X38_Y32_N8
\alu|Mux6~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux6~1_combout\ = (\alu|Mux7~2_combout\ & ((\alu|Mux6~0_combout\ & ((\alu|ShiftLeft0~56_combout\))) # (!\alu|Mux6~0_combout\ & (\alu|ShiftLeft0~109_combout\)))) # (!\alu|Mux7~2_combout\ & (((\alu|Mux6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|ShiftLeft0~109_combout\,
	datab => \alu|Mux7~2_combout\,
	datac => \alu|Mux6~0_combout\,
	datad => \alu|ShiftLeft0~56_combout\,
	combout => \alu|Mux6~1_combout\);

-- Location: LCCOMB_X39_Y37_N2
\alu|ShiftRight1~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftRight1~23_combout\ = (\mux_ulaA|m_out[1]~30_combout\ & (\rgB|sr_out\(28))) # (!\mux_ulaA|m_out[1]~30_combout\ & ((\rgB|sr_out\(26))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rgB|sr_out\(28),
	datac => \rgB|sr_out\(26),
	datad => \mux_ulaA|m_out[1]~30_combout\,
	combout => \alu|ShiftRight1~23_combout\);

-- Location: LCCOMB_X39_Y37_N0
\alu|ShiftRight0~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftRight0~44_combout\ = (\mux_ulaA|m_out[0]~27_combout\ & ((\alu|ShiftRight1~23_combout\))) # (!\mux_ulaA|m_out[0]~27_combout\ & (\alu|ShiftRight0~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_ulaA|m_out[0]~27_combout\,
	datac => \alu|ShiftRight0~14_combout\,
	datad => \alu|ShiftRight1~23_combout\,
	combout => \alu|ShiftRight0~44_combout\);

-- Location: LCCOMB_X39_Y38_N16
\alu|ShiftRight0~45\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftRight0~45_combout\ = (\rgB|sr_out\(31) & ((\ctr_mips|WideOr0~combout\ & ((\rgA|sr_out\(1)))) # (!\ctr_mips|WideOr0~combout\ & (\pc|sr_out\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctr_mips|WideOr0~combout\,
	datab => \pc|sr_out\(1),
	datac => \rgA|sr_out\(1),
	datad => \rgB|sr_out\(31),
	combout => \alu|ShiftRight0~45_combout\);

-- Location: LCCOMB_X43_Y34_N4
\pc|sr_out[27]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \pc|sr_out[27]~3_combout\ = (\ctr_mips|pstate.branch_ex_st~regout\ & (\regULA|sr_out\(27))) # (!\ctr_mips|pstate.branch_ex_st~regout\ & ((\alu|Mux4~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctr_mips|pstate.branch_ex_st~regout\,
	datab => \regULA|sr_out\(27),
	datad => \alu|Mux4~combout\,
	combout => \pc|sr_out[27]~3_combout\);

-- Location: LCCOMB_X36_Y32_N2
\ir|sr_out[25]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \ir|sr_out[25]~feeder_combout\ = \mem|altsyncram_component|auto_generated|q_a\(25)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mem|altsyncram_component|auto_generated|q_a\(25),
	combout => \ir|sr_out[25]~feeder_combout\);

-- Location: LCFF_X36_Y32_N3
\ir|sr_out[25]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \ir|sr_out[25]~feeder_combout\,
	ena => \ctr_mips|ALT_INV_pstate.fetch_st~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ir|sr_out\(25));

-- Location: LCFF_X43_Y34_N5
\pc|sr_out[27]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \pc|sr_out[27]~3_combout\,
	sdata => \ir|sr_out\(25),
	sclr => \rst~combout\,
	sload => \ctr_mips|pstate.jump_ex_st~regout\,
	ena => \pc|sr_out[0]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pc|sr_out\(27));

-- Location: LCCOMB_X41_Y38_N26
\mux_ulaB|m_out[30]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux_ulaB|m_out[30]~5_combout\ = (!\ctr_mips|pstate.c_mem_add_st~regout\ & (\rgB|sr_out\(30) & (\ctr_mips|pstate.fetch_st~regout\ & !\ctr_mips|pstate.decode_st~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctr_mips|pstate.c_mem_add_st~regout\,
	datab => \rgB|sr_out\(30),
	datac => \ctr_mips|pstate.fetch_st~regout\,
	datad => \ctr_mips|pstate.decode_st~regout\,
	combout => \mux_ulaB|m_out[30]~5_combout\);

-- Location: LCCOMB_X39_Y31_N26
\alu|Mux2~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux2~14_combout\ = (\actr|alu_ctr[0]~16_combout\) # ((\alu|Mux10~7_combout\ & ((\ir|sr_out\(1)) # (!\actr|alu_ctr~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \actr|alu_ctr~5_combout\,
	datab => \alu|Mux10~7_combout\,
	datac => \ir|sr_out\(1),
	datad => \actr|alu_ctr[0]~16_combout\,
	combout => \alu|Mux2~14_combout\);

-- Location: LCCOMB_X41_Y38_N20
\mux_ulaB|m_out[29]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux_ulaB|m_out[29]~6_combout\ = (!\ctr_mips|pstate.c_mem_add_st~regout\ & (\rgB|sr_out\(29) & (\ctr_mips|pstate.fetch_st~regout\ & !\ctr_mips|pstate.decode_st~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctr_mips|pstate.c_mem_add_st~regout\,
	datab => \rgB|sr_out\(29),
	datac => \ctr_mips|pstate.fetch_st~regout\,
	datad => \ctr_mips|pstate.decode_st~regout\,
	combout => \mux_ulaB|m_out[29]~6_combout\);

-- Location: LCCOMB_X39_Y31_N16
\alu|Mux2~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux2~15_combout\ = \actr|alu_ctr[0]~16_combout\ $ ((((\actr|alu_ctr~5_combout\ & !\ir|sr_out\(1))) # (!\alu|Mux10~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010000111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \actr|alu_ctr~5_combout\,
	datab => \alu|Mux10~7_combout\,
	datac => \ir|sr_out\(1),
	datad => \actr|alu_ctr[0]~16_combout\,
	combout => \alu|Mux2~15_combout\);

-- Location: LCCOMB_X39_Y30_N0
\alu|Mux2~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux2~4_combout\ = (\alu|Mux10~8_combout\) # ((!\actr|alu_ctr[0]~16_combout\ & \mux_ulaA|m_out[4]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \actr|alu_ctr[0]~16_combout\,
	datac => \mux_ulaA|m_out[4]~0_combout\,
	datad => \alu|Mux10~8_combout\,
	combout => \alu|Mux2~4_combout\);

-- Location: LCCOMB_X39_Y30_N14
\alu|Mux2~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux2~7_combout\ = (\mux_ulaA|m_out[29]~2_combout\ & (!\alu|Mux2~4_combout\ & ((\alu|Mux2~15_combout\) # (!\mux_ulaB|m_out[29]~6_combout\)))) # (!\mux_ulaA|m_out[29]~2_combout\ & (\alu|Mux2~4_combout\ $ (((\mux_ulaB|m_out[29]~6_combout\) # 
-- (\alu|Mux2~15_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000111110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_ulaA|m_out[29]~2_combout\,
	datab => \mux_ulaB|m_out[29]~6_combout\,
	datac => \alu|Mux2~15_combout\,
	datad => \alu|Mux2~4_combout\,
	combout => \alu|Mux2~7_combout\);

-- Location: LCCOMB_X38_Y32_N4
\alu|ShiftLeft0~71\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftLeft0~71_combout\ = (\alu|ShiftLeft0~69_combout\) # (\alu|ShiftLeft0~70_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \alu|ShiftLeft0~69_combout\,
	datad => \alu|ShiftLeft0~70_combout\,
	combout => \alu|ShiftLeft0~71_combout\);

-- Location: LCCOMB_X39_Y34_N10
\alu|ShiftLeft0~72\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftLeft0~72_combout\ = (\mux_ulaA|m_out[2]~29_combout\ & ((\alu|ShiftLeft0~54_combout\) # ((\alu|ShiftLeft0~53_combout\)))) # (!\mux_ulaA|m_out[2]~29_combout\ & (((\alu|ShiftLeft0~71_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|ShiftLeft0~54_combout\,
	datab => \mux_ulaA|m_out[2]~29_combout\,
	datac => \alu|ShiftLeft0~53_combout\,
	datad => \alu|ShiftLeft0~71_combout\,
	combout => \alu|ShiftLeft0~72_combout\);

-- Location: LCCOMB_X39_Y31_N6
\alu|ShiftLeft0~68\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftLeft0~68_combout\ = (\mux_ulaA|m_out[2]~29_combout\ & (((!\mux_ulaA|m_out[1]~30_combout\ & \alu|ShiftLeft0~22_combout\)))) # (!\mux_ulaA|m_out[2]~29_combout\ & (\alu|ShiftLeft0~37_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|ShiftLeft0~37_combout\,
	datab => \mux_ulaA|m_out[1]~30_combout\,
	datac => \alu|ShiftLeft0~22_combout\,
	datad => \mux_ulaA|m_out[2]~29_combout\,
	combout => \alu|ShiftLeft0~68_combout\);

-- Location: LCCOMB_X38_Y34_N0
\alu|ShiftLeft0~73\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftLeft0~73_combout\ = (\mux_ulaA|m_out[3]~28_combout\ & ((\alu|ShiftLeft0~68_combout\))) # (!\mux_ulaA|m_out[3]~28_combout\ & (\alu|ShiftLeft0~72_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_ulaA|m_out[3]~28_combout\,
	datab => \alu|ShiftLeft0~72_combout\,
	datac => \alu|ShiftLeft0~68_combout\,
	combout => \alu|ShiftLeft0~73_combout\);

-- Location: LCCOMB_X39_Y30_N8
\alu|Mux2~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux2~8_combout\ = (\alu|Mux2~14_combout\ & (((\alu|Mux2~7_combout\)))) # (!\alu|Mux2~14_combout\ & ((\alu|Mux2~7_combout\ & (\alu|Mux2~6_combout\)) # (!\alu|Mux2~7_combout\ & ((\alu|ShiftLeft0~73_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|Mux2~6_combout\,
	datab => \alu|Mux2~14_combout\,
	datac => \alu|Mux2~7_combout\,
	datad => \alu|ShiftLeft0~73_combout\,
	combout => \alu|Mux2~8_combout\);

-- Location: LCCOMB_X39_Y30_N24
\mux_ulaB|m_out[28]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux_ulaB|m_out[28]~7_combout\ = (!\ctr_mips|pstate.c_mem_add_st~regout\ & (\rgB|sr_out\(28) & (\ctr_mips|pstate.fetch_st~regout\ & !\ctr_mips|pstate.decode_st~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctr_mips|pstate.c_mem_add_st~regout\,
	datab => \rgB|sr_out\(28),
	datac => \ctr_mips|pstate.fetch_st~regout\,
	datad => \ctr_mips|pstate.decode_st~regout\,
	combout => \mux_ulaB|m_out[28]~7_combout\);

-- Location: LCCOMB_X43_Y34_N14
\mux_ulaA|m_out[27]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux_ulaA|m_out[27]~4_combout\ = (\ctr_mips|WideOr0~combout\ & ((\rgA|sr_out\(27)))) # (!\ctr_mips|WideOr0~combout\ & (\pc|sr_out\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \pc|sr_out\(27),
	datac => \rgA|sr_out\(27),
	datad => \ctr_mips|WideOr0~combout\,
	combout => \mux_ulaA|m_out[27]~4_combout\);

-- Location: LCCOMB_X40_Y36_N12
\mux_ulaB|m_out[26]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux_ulaB|m_out[26]~9_combout\ = (!\ctr_mips|pstate.decode_st~regout\ & (\ctr_mips|pstate.fetch_st~regout\ & (\rgB|sr_out\(26) & !\ctr_mips|pstate.c_mem_add_st~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctr_mips|pstate.decode_st~regout\,
	datab => \ctr_mips|pstate.fetch_st~regout\,
	datac => \rgB|sr_out\(26),
	datad => \ctr_mips|pstate.c_mem_add_st~regout\,
	combout => \mux_ulaB|m_out[26]~9_combout\);

-- Location: LCCOMB_X40_Y32_N4
\pc|sr_out[25]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \pc|sr_out[25]~5_combout\ = (\ctr_mips|pstate.branch_ex_st~regout\ & ((\regULA|sr_out\(25)))) # (!\ctr_mips|pstate.branch_ex_st~regout\ & (\alu|Mux6~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|Mux6~combout\,
	datab => \ctr_mips|pstate.branch_ex_st~regout\,
	datad => \regULA|sr_out\(25),
	combout => \pc|sr_out[25]~5_combout\);

-- Location: LCFF_X40_Y32_N5
\pc|sr_out[25]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \pc|sr_out[25]~5_combout\,
	sdata => \ir|sr_out\(23),
	sclr => \rst~combout\,
	sload => \ctr_mips|pstate.jump_ex_st~regout\,
	ena => \pc|sr_out[0]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pc|sr_out\(25));

-- Location: LCFF_X38_Y31_N7
\bcoreg|breg32_rtl_1_bypass[61]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \breg_data_mux|m_out[25]~15_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bcoreg|breg32_rtl_1_bypass\(61));

-- Location: LCCOMB_X38_Y31_N28
\bcoreg|regA[25]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \bcoreg|regA[25]~6_combout\ = (!\bcoreg|Equal0~1_combout\ & ((\bcoreg|breg32~combout\ & ((\bcoreg|breg32_rtl_1_bypass\(61)))) # (!\bcoreg|breg32~combout\ & (\bcoreg|breg32_rtl_0|auto_generated|ram_block1a25\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcoreg|breg32_rtl_0|auto_generated|ram_block1a25\,
	datab => \bcoreg|Equal0~1_combout\,
	datac => \bcoreg|breg32~combout\,
	datad => \bcoreg|breg32_rtl_1_bypass\(61),
	combout => \bcoreg|regA[25]~6_combout\);

-- Location: LCCOMB_X40_Y32_N14
\rgA|sr_out[25]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \rgA|sr_out[25]~feeder_combout\ = \bcoreg|regA[25]~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \bcoreg|regA[25]~6_combout\,
	combout => \rgA|sr_out[25]~feeder_combout\);

-- Location: LCFF_X40_Y32_N15
\rgA|sr_out[25]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \rgA|sr_out[25]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rgA|sr_out\(25));

-- Location: LCCOMB_X40_Y32_N24
\mux_ulaA|m_out[25]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux_ulaA|m_out[25]~6_combout\ = (\ctr_mips|WideOr0~combout\ & ((\rgA|sr_out\(25)))) # (!\ctr_mips|WideOr0~combout\ & (\pc|sr_out\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \pc|sr_out\(25),
	datac => \ctr_mips|WideOr0~combout\,
	datad => \rgA|sr_out\(25),
	combout => \mux_ulaA|m_out[25]~6_combout\);

-- Location: LCCOMB_X39_Y38_N20
\mux_ulaB|m_out[22]~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux_ulaB|m_out[22]~13_combout\ = (!\ctr_mips|pstate.c_mem_add_st~regout\ & (\ctr_mips|pstate.fetch_st~regout\ & (!\ctr_mips|pstate.decode_st~regout\ & \rgB|sr_out\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctr_mips|pstate.c_mem_add_st~regout\,
	datab => \ctr_mips|pstate.fetch_st~regout\,
	datac => \ctr_mips|pstate.decode_st~regout\,
	datad => \rgB|sr_out\(22),
	combout => \mux_ulaB|m_out[22]~13_combout\);

-- Location: LCCOMB_X41_Y36_N6
\alu|tmp[19]~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|tmp[19]~38_combout\ = (\mux_ulaA|m_out[19]~12_combout\ & ((\mux_ulaB|m_out[19]~16_combout\ & (!\alu|tmp[18]~37\)) # (!\mux_ulaB|m_out[19]~16_combout\ & (\alu|tmp[18]~37\ & VCC)))) # (!\mux_ulaA|m_out[19]~12_combout\ & 
-- ((\mux_ulaB|m_out[19]~16_combout\ & ((\alu|tmp[18]~37\) # (GND))) # (!\mux_ulaB|m_out[19]~16_combout\ & (!\alu|tmp[18]~37\))))
-- \alu|tmp[19]~39\ = CARRY((\mux_ulaA|m_out[19]~12_combout\ & (\mux_ulaB|m_out[19]~16_combout\ & !\alu|tmp[18]~37\)) # (!\mux_ulaA|m_out[19]~12_combout\ & ((\mux_ulaB|m_out[19]~16_combout\) # (!\alu|tmp[18]~37\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mux_ulaA|m_out[19]~12_combout\,
	datab => \mux_ulaB|m_out[19]~16_combout\,
	datad => VCC,
	cin => \alu|tmp[18]~37\,
	combout => \alu|tmp[19]~38_combout\,
	cout => \alu|tmp[19]~39\);

-- Location: LCCOMB_X41_Y36_N8
\alu|tmp[20]~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|tmp[20]~40_combout\ = ((\mux_ulaA|m_out[20]~11_combout\ $ (\mux_ulaB|m_out[20]~15_combout\ $ (\alu|tmp[19]~39\)))) # (GND)
-- \alu|tmp[20]~41\ = CARRY((\mux_ulaA|m_out[20]~11_combout\ & ((!\alu|tmp[19]~39\) # (!\mux_ulaB|m_out[20]~15_combout\))) # (!\mux_ulaA|m_out[20]~11_combout\ & (!\mux_ulaB|m_out[20]~15_combout\ & !\alu|tmp[19]~39\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mux_ulaA|m_out[20]~11_combout\,
	datab => \mux_ulaB|m_out[20]~15_combout\,
	datad => VCC,
	cin => \alu|tmp[19]~39\,
	combout => \alu|tmp[20]~40_combout\,
	cout => \alu|tmp[20]~41\);

-- Location: LCCOMB_X41_Y36_N10
\alu|tmp[21]~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|tmp[21]~42_combout\ = (\mux_ulaA|m_out[21]~10_combout\ & ((\mux_ulaB|m_out[21]~14_combout\ & (!\alu|tmp[20]~41\)) # (!\mux_ulaB|m_out[21]~14_combout\ & (\alu|tmp[20]~41\ & VCC)))) # (!\mux_ulaA|m_out[21]~10_combout\ & 
-- ((\mux_ulaB|m_out[21]~14_combout\ & ((\alu|tmp[20]~41\) # (GND))) # (!\mux_ulaB|m_out[21]~14_combout\ & (!\alu|tmp[20]~41\))))
-- \alu|tmp[21]~43\ = CARRY((\mux_ulaA|m_out[21]~10_combout\ & (\mux_ulaB|m_out[21]~14_combout\ & !\alu|tmp[20]~41\)) # (!\mux_ulaA|m_out[21]~10_combout\ & ((\mux_ulaB|m_out[21]~14_combout\) # (!\alu|tmp[20]~41\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mux_ulaA|m_out[21]~10_combout\,
	datab => \mux_ulaB|m_out[21]~14_combout\,
	datad => VCC,
	cin => \alu|tmp[20]~41\,
	combout => \alu|tmp[21]~42_combout\,
	cout => \alu|tmp[21]~43\);

-- Location: LCCOMB_X41_Y36_N12
\alu|tmp[22]~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|tmp[22]~44_combout\ = ((\mux_ulaA|m_out[22]~9_combout\ $ (\mux_ulaB|m_out[22]~13_combout\ $ (\alu|tmp[21]~43\)))) # (GND)
-- \alu|tmp[22]~45\ = CARRY((\mux_ulaA|m_out[22]~9_combout\ & ((!\alu|tmp[21]~43\) # (!\mux_ulaB|m_out[22]~13_combout\))) # (!\mux_ulaA|m_out[22]~9_combout\ & (!\mux_ulaB|m_out[22]~13_combout\ & !\alu|tmp[21]~43\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mux_ulaA|m_out[22]~9_combout\,
	datab => \mux_ulaB|m_out[22]~13_combout\,
	datad => VCC,
	cin => \alu|tmp[21]~43\,
	combout => \alu|tmp[22]~44_combout\,
	cout => \alu|tmp[22]~45\);

-- Location: LCCOMB_X41_Y36_N14
\alu|tmp[23]~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|tmp[23]~46_combout\ = (\mux_ulaA|m_out[23]~8_combout\ & ((\mux_ulaB|m_out[23]~12_combout\ & (!\alu|tmp[22]~45\)) # (!\mux_ulaB|m_out[23]~12_combout\ & (\alu|tmp[22]~45\ & VCC)))) # (!\mux_ulaA|m_out[23]~8_combout\ & ((\mux_ulaB|m_out[23]~12_combout\ 
-- & ((\alu|tmp[22]~45\) # (GND))) # (!\mux_ulaB|m_out[23]~12_combout\ & (!\alu|tmp[22]~45\))))
-- \alu|tmp[23]~47\ = CARRY((\mux_ulaA|m_out[23]~8_combout\ & (\mux_ulaB|m_out[23]~12_combout\ & !\alu|tmp[22]~45\)) # (!\mux_ulaA|m_out[23]~8_combout\ & ((\mux_ulaB|m_out[23]~12_combout\) # (!\alu|tmp[22]~45\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mux_ulaA|m_out[23]~8_combout\,
	datab => \mux_ulaB|m_out[23]~12_combout\,
	datad => VCC,
	cin => \alu|tmp[22]~45\,
	combout => \alu|tmp[23]~46_combout\,
	cout => \alu|tmp[23]~47\);

-- Location: LCCOMB_X41_Y36_N16
\alu|tmp[24]~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|tmp[24]~48_combout\ = ((\mux_ulaB|m_out[24]~11_combout\ $ (\mux_ulaA|m_out[24]~7_combout\ $ (\alu|tmp[23]~47\)))) # (GND)
-- \alu|tmp[24]~49\ = CARRY((\mux_ulaB|m_out[24]~11_combout\ & (\mux_ulaA|m_out[24]~7_combout\ & !\alu|tmp[23]~47\)) # (!\mux_ulaB|m_out[24]~11_combout\ & ((\mux_ulaA|m_out[24]~7_combout\) # (!\alu|tmp[23]~47\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mux_ulaB|m_out[24]~11_combout\,
	datab => \mux_ulaA|m_out[24]~7_combout\,
	datad => VCC,
	cin => \alu|tmp[23]~47\,
	combout => \alu|tmp[24]~48_combout\,
	cout => \alu|tmp[24]~49\);

-- Location: LCCOMB_X41_Y36_N18
\alu|tmp[25]~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|tmp[25]~50_combout\ = (\mux_ulaB|m_out[25]~10_combout\ & ((\mux_ulaA|m_out[25]~6_combout\ & (!\alu|tmp[24]~49\)) # (!\mux_ulaA|m_out[25]~6_combout\ & ((\alu|tmp[24]~49\) # (GND))))) # (!\mux_ulaB|m_out[25]~10_combout\ & 
-- ((\mux_ulaA|m_out[25]~6_combout\ & (\alu|tmp[24]~49\ & VCC)) # (!\mux_ulaA|m_out[25]~6_combout\ & (!\alu|tmp[24]~49\))))
-- \alu|tmp[25]~51\ = CARRY((\mux_ulaB|m_out[25]~10_combout\ & ((!\alu|tmp[24]~49\) # (!\mux_ulaA|m_out[25]~6_combout\))) # (!\mux_ulaB|m_out[25]~10_combout\ & (!\mux_ulaA|m_out[25]~6_combout\ & !\alu|tmp[24]~49\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mux_ulaB|m_out[25]~10_combout\,
	datab => \mux_ulaA|m_out[25]~6_combout\,
	datad => VCC,
	cin => \alu|tmp[24]~49\,
	combout => \alu|tmp[25]~50_combout\,
	cout => \alu|tmp[25]~51\);

-- Location: LCCOMB_X41_Y36_N20
\alu|tmp[26]~52\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|tmp[26]~52_combout\ = ((\mux_ulaA|m_out[26]~5_combout\ $ (\mux_ulaB|m_out[26]~9_combout\ $ (\alu|tmp[25]~51\)))) # (GND)
-- \alu|tmp[26]~53\ = CARRY((\mux_ulaA|m_out[26]~5_combout\ & ((!\alu|tmp[25]~51\) # (!\mux_ulaB|m_out[26]~9_combout\))) # (!\mux_ulaA|m_out[26]~5_combout\ & (!\mux_ulaB|m_out[26]~9_combout\ & !\alu|tmp[25]~51\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mux_ulaA|m_out[26]~5_combout\,
	datab => \mux_ulaB|m_out[26]~9_combout\,
	datad => VCC,
	cin => \alu|tmp[25]~51\,
	combout => \alu|tmp[26]~52_combout\,
	cout => \alu|tmp[26]~53\);

-- Location: LCCOMB_X41_Y36_N22
\alu|tmp[27]~54\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|tmp[27]~54_combout\ = (\mux_ulaB|m_out[27]~8_combout\ & ((\mux_ulaA|m_out[27]~4_combout\ & (!\alu|tmp[26]~53\)) # (!\mux_ulaA|m_out[27]~4_combout\ & ((\alu|tmp[26]~53\) # (GND))))) # (!\mux_ulaB|m_out[27]~8_combout\ & ((\mux_ulaA|m_out[27]~4_combout\ 
-- & (\alu|tmp[26]~53\ & VCC)) # (!\mux_ulaA|m_out[27]~4_combout\ & (!\alu|tmp[26]~53\))))
-- \alu|tmp[27]~55\ = CARRY((\mux_ulaB|m_out[27]~8_combout\ & ((!\alu|tmp[26]~53\) # (!\mux_ulaA|m_out[27]~4_combout\))) # (!\mux_ulaB|m_out[27]~8_combout\ & (!\mux_ulaA|m_out[27]~4_combout\ & !\alu|tmp[26]~53\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mux_ulaB|m_out[27]~8_combout\,
	datab => \mux_ulaA|m_out[27]~4_combout\,
	datad => VCC,
	cin => \alu|tmp[26]~53\,
	combout => \alu|tmp[27]~54_combout\,
	cout => \alu|tmp[27]~55\);

-- Location: LCCOMB_X41_Y36_N24
\alu|tmp[28]~56\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|tmp[28]~56_combout\ = ((\mux_ulaA|m_out[28]~3_combout\ $ (\mux_ulaB|m_out[28]~7_combout\ $ (\alu|tmp[27]~55\)))) # (GND)
-- \alu|tmp[28]~57\ = CARRY((\mux_ulaA|m_out[28]~3_combout\ & ((!\alu|tmp[27]~55\) # (!\mux_ulaB|m_out[28]~7_combout\))) # (!\mux_ulaA|m_out[28]~3_combout\ & (!\mux_ulaB|m_out[28]~7_combout\ & !\alu|tmp[27]~55\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mux_ulaA|m_out[28]~3_combout\,
	datab => \mux_ulaB|m_out[28]~7_combout\,
	datad => VCC,
	cin => \alu|tmp[27]~55\,
	combout => \alu|tmp[28]~56_combout\,
	cout => \alu|tmp[28]~57\);

-- Location: LCCOMB_X41_Y36_N26
\alu|tmp[29]~58\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|tmp[29]~58_combout\ = (\mux_ulaB|m_out[29]~6_combout\ & ((\mux_ulaA|m_out[29]~2_combout\ & (!\alu|tmp[28]~57\)) # (!\mux_ulaA|m_out[29]~2_combout\ & ((\alu|tmp[28]~57\) # (GND))))) # (!\mux_ulaB|m_out[29]~6_combout\ & ((\mux_ulaA|m_out[29]~2_combout\ 
-- & (\alu|tmp[28]~57\ & VCC)) # (!\mux_ulaA|m_out[29]~2_combout\ & (!\alu|tmp[28]~57\))))
-- \alu|tmp[29]~59\ = CARRY((\mux_ulaB|m_out[29]~6_combout\ & ((!\alu|tmp[28]~57\) # (!\mux_ulaA|m_out[29]~2_combout\))) # (!\mux_ulaB|m_out[29]~6_combout\ & (!\mux_ulaA|m_out[29]~2_combout\ & !\alu|tmp[28]~57\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mux_ulaB|m_out[29]~6_combout\,
	datab => \mux_ulaA|m_out[29]~2_combout\,
	datad => VCC,
	cin => \alu|tmp[28]~57\,
	combout => \alu|tmp[29]~58_combout\,
	cout => \alu|tmp[29]~59\);

-- Location: LCCOMB_X39_Y34_N28
\alu|Mux2~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux2~9_combout\ = (\actr|alu_ctr[1]~14_combout\ & ((\mux_ulaA|m_out[29]~2_combout\ & ((\mux_ulaB|m_out[29]~6_combout\) # (\actr|alu_ctr[0]~16_combout\))) # (!\mux_ulaA|m_out[29]~2_combout\ & (\mux_ulaB|m_out[29]~6_combout\ & 
-- \actr|alu_ctr[0]~16_combout\)))) # (!\actr|alu_ctr[1]~14_combout\ & (((!\actr|alu_ctr[0]~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100010110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_ulaA|m_out[29]~2_combout\,
	datab => \actr|alu_ctr[1]~14_combout\,
	datac => \mux_ulaB|m_out[29]~6_combout\,
	datad => \actr|alu_ctr[0]~16_combout\,
	combout => \alu|Mux2~9_combout\);

-- Location: LCCOMB_X40_Y38_N0
\alu|ShiftRight1~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftRight1~25_combout\ = (\mux_ulaB|Equal2~0_combout\ & (((\mux_ulaB|m_out[31]~4_combout\ & \alu|ShiftRight1~73_combout\)))) # (!\mux_ulaB|Equal2~0_combout\ & ((\alu|ShiftRight1~24_combout\) # ((\mux_ulaB|m_out[31]~4_combout\ & 
-- \alu|ShiftRight1~73_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_ulaB|Equal2~0_combout\,
	datab => \alu|ShiftRight1~24_combout\,
	datac => \mux_ulaB|m_out[31]~4_combout\,
	datad => \alu|ShiftRight1~73_combout\,
	combout => \alu|ShiftRight1~25_combout\);

-- Location: LCCOMB_X39_Y34_N16
\alu|ShiftRight1~71\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftRight1~71_combout\ = (\alu|ShiftLeft0~140_combout\ & \alu|ShiftRight1~25_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \alu|ShiftLeft0~140_combout\,
	datac => \alu|ShiftRight1~25_combout\,
	combout => \alu|ShiftRight1~71_combout\);

-- Location: LCCOMB_X38_Y30_N6
\breg_data_mux|m_out[31]~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \breg_data_mux|m_out[31]~50_combout\ = (\breg_data_mux|m_out[31]~9_combout\) # ((\regULA|sr_out\(31) & !\ctr_mips|pstate.ldreg_st~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regULA|sr_out\(31),
	datab => \ctr_mips|pstate.ldreg_st~regout\,
	datac => \breg_data_mux|m_out[31]~9_combout\,
	combout => \breg_data_mux|m_out[31]~50_combout\);

-- Location: LCCOMB_X38_Y31_N12
\bcoreg|regA[28]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \bcoreg|regA[28]~3_combout\ = (!\bcoreg|Equal0~1_combout\ & ((\bcoreg|breg32~combout\ & (\bcoreg|breg32_rtl_1_bypass\(67))) # (!\bcoreg|breg32~combout\ & ((\bcoreg|breg32_rtl_0|auto_generated|ram_block1a28\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcoreg|breg32_rtl_1_bypass\(67),
	datab => \bcoreg|breg32~combout\,
	datac => \bcoreg|breg32_rtl_0|auto_generated|ram_block1a28\,
	datad => \bcoreg|Equal0~1_combout\,
	combout => \bcoreg|regA[28]~3_combout\);

-- Location: LCFF_X40_Y31_N21
\rgA|sr_out[28]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \bcoreg|regA[28]~3_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rgA|sr_out\(28));

-- Location: LCCOMB_X40_Y31_N20
\mux_ulaA|m_out[28]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux_ulaA|m_out[28]~3_combout\ = (\ctr_mips|WideOr0~combout\ & ((\rgA|sr_out\(28)))) # (!\ctr_mips|WideOr0~combout\ & (\pc|sr_out\(28)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|sr_out\(28),
	datac => \rgA|sr_out\(28),
	datad => \ctr_mips|WideOr0~combout\,
	combout => \mux_ulaA|m_out[28]~3_combout\);

-- Location: LCCOMB_X41_Y35_N24
\mux_ulaB|m_out[25]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux_ulaB|m_out[25]~10_combout\ = (\rgB|sr_out\(25) & (!\ctr_mips|pstate.c_mem_add_st~regout\ & (\ctr_mips|pstate.fetch_st~regout\ & !\ctr_mips|pstate.decode_st~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rgB|sr_out\(25),
	datab => \ctr_mips|pstate.c_mem_add_st~regout\,
	datac => \ctr_mips|pstate.fetch_st~regout\,
	datad => \ctr_mips|pstate.decode_st~regout\,
	combout => \mux_ulaB|m_out[25]~10_combout\);

-- Location: LCCOMB_X43_Y31_N26
\pc|sr_out[22]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \pc|sr_out[22]~8_combout\ = (\ctr_mips|pstate.branch_ex_st~regout\ & (\regULA|sr_out\(22))) # (!\ctr_mips|pstate.branch_ex_st~regout\ & ((\alu|Mux9~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regULA|sr_out\(22),
	datab => \alu|Mux9~10_combout\,
	datad => \ctr_mips|pstate.branch_ex_st~regout\,
	combout => \pc|sr_out[22]~8_combout\);

-- Location: LCFF_X36_Y32_N17
\ir|sr_out[20]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \mem|altsyncram_component|auto_generated|q_a\(20),
	sload => VCC,
	ena => \ctr_mips|ALT_INV_pstate.fetch_st~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ir|sr_out\(20));

-- Location: LCFF_X43_Y31_N27
\pc|sr_out[22]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \pc|sr_out[22]~8_combout\,
	sdata => \ir|sr_out\(20),
	sclr => \rst~combout\,
	sload => \ctr_mips|pstate.jump_ex_st~regout\,
	ena => \pc|sr_out[0]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pc|sr_out\(22));

-- Location: LCCOMB_X44_Y31_N20
\bcoreg|regA[22]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \bcoreg|regA[22]~9_combout\ = (!\bcoreg|Equal0~1_combout\ & ((\bcoreg|breg32~combout\ & ((\bcoreg|breg32_rtl_1_bypass\(55)))) # (!\bcoreg|breg32~combout\ & (\bcoreg|breg32_rtl_0|auto_generated|ram_block1a22\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcoreg|breg32_rtl_0|auto_generated|ram_block1a22\,
	datab => \bcoreg|Equal0~1_combout\,
	datac => \bcoreg|breg32_rtl_1_bypass\(55),
	datad => \bcoreg|breg32~combout\,
	combout => \bcoreg|regA[22]~9_combout\);

-- Location: LCFF_X44_Y31_N21
\rgA|sr_out[22]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \bcoreg|regA[22]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rgA|sr_out\(22));

-- Location: LCCOMB_X44_Y31_N18
\mux_ulaA|m_out[22]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux_ulaA|m_out[22]~9_combout\ = (\ctr_mips|WideOr0~combout\ & ((\rgA|sr_out\(22)))) # (!\ctr_mips|WideOr0~combout\ & (\pc|sr_out\(22)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \pc|sr_out\(22),
	datac => \rgA|sr_out\(22),
	datad => \ctr_mips|WideOr0~combout\,
	combout => \mux_ulaA|m_out[22]~9_combout\);

-- Location: LCCOMB_X41_Y32_N10
\alu|Add1~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Add1~42_combout\ = (\mux_ulaA|m_out[21]~10_combout\ & ((\mux_ulaB|m_out[21]~14_combout\ & (\alu|Add1~41\ & VCC)) # (!\mux_ulaB|m_out[21]~14_combout\ & (!\alu|Add1~41\)))) # (!\mux_ulaA|m_out[21]~10_combout\ & ((\mux_ulaB|m_out[21]~14_combout\ & 
-- (!\alu|Add1~41\)) # (!\mux_ulaB|m_out[21]~14_combout\ & ((\alu|Add1~41\) # (GND)))))
-- \alu|Add1~43\ = CARRY((\mux_ulaA|m_out[21]~10_combout\ & (!\mux_ulaB|m_out[21]~14_combout\ & !\alu|Add1~41\)) # (!\mux_ulaA|m_out[21]~10_combout\ & ((!\alu|Add1~41\) # (!\mux_ulaB|m_out[21]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mux_ulaA|m_out[21]~10_combout\,
	datab => \mux_ulaB|m_out[21]~14_combout\,
	datad => VCC,
	cin => \alu|Add1~41\,
	combout => \alu|Add1~42_combout\,
	cout => \alu|Add1~43\);

-- Location: LCCOMB_X41_Y32_N14
\alu|Add1~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Add1~46_combout\ = (\mux_ulaA|m_out[23]~8_combout\ & ((\mux_ulaB|m_out[23]~12_combout\ & (\alu|Add1~45\ & VCC)) # (!\mux_ulaB|m_out[23]~12_combout\ & (!\alu|Add1~45\)))) # (!\mux_ulaA|m_out[23]~8_combout\ & ((\mux_ulaB|m_out[23]~12_combout\ & 
-- (!\alu|Add1~45\)) # (!\mux_ulaB|m_out[23]~12_combout\ & ((\alu|Add1~45\) # (GND)))))
-- \alu|Add1~47\ = CARRY((\mux_ulaA|m_out[23]~8_combout\ & (!\mux_ulaB|m_out[23]~12_combout\ & !\alu|Add1~45\)) # (!\mux_ulaA|m_out[23]~8_combout\ & ((!\alu|Add1~45\) # (!\mux_ulaB|m_out[23]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mux_ulaA|m_out[23]~8_combout\,
	datab => \mux_ulaB|m_out[23]~12_combout\,
	datad => VCC,
	cin => \alu|Add1~45\,
	combout => \alu|Add1~46_combout\,
	cout => \alu|Add1~47\);

-- Location: LCCOMB_X41_Y32_N16
\alu|Add1~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Add1~48_combout\ = ((\mux_ulaB|m_out[24]~11_combout\ $ (\mux_ulaA|m_out[24]~7_combout\ $ (!\alu|Add1~47\)))) # (GND)
-- \alu|Add1~49\ = CARRY((\mux_ulaB|m_out[24]~11_combout\ & ((\mux_ulaA|m_out[24]~7_combout\) # (!\alu|Add1~47\))) # (!\mux_ulaB|m_out[24]~11_combout\ & (\mux_ulaA|m_out[24]~7_combout\ & !\alu|Add1~47\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mux_ulaB|m_out[24]~11_combout\,
	datab => \mux_ulaA|m_out[24]~7_combout\,
	datad => VCC,
	cin => \alu|Add1~47\,
	combout => \alu|Add1~48_combout\,
	cout => \alu|Add1~49\);

-- Location: LCCOMB_X41_Y32_N18
\alu|Add1~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Add1~50_combout\ = (\mux_ulaA|m_out[25]~6_combout\ & ((\mux_ulaB|m_out[25]~10_combout\ & (\alu|Add1~49\ & VCC)) # (!\mux_ulaB|m_out[25]~10_combout\ & (!\alu|Add1~49\)))) # (!\mux_ulaA|m_out[25]~6_combout\ & ((\mux_ulaB|m_out[25]~10_combout\ & 
-- (!\alu|Add1~49\)) # (!\mux_ulaB|m_out[25]~10_combout\ & ((\alu|Add1~49\) # (GND)))))
-- \alu|Add1~51\ = CARRY((\mux_ulaA|m_out[25]~6_combout\ & (!\mux_ulaB|m_out[25]~10_combout\ & !\alu|Add1~49\)) # (!\mux_ulaA|m_out[25]~6_combout\ & ((!\alu|Add1~49\) # (!\mux_ulaB|m_out[25]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mux_ulaA|m_out[25]~6_combout\,
	datab => \mux_ulaB|m_out[25]~10_combout\,
	datad => VCC,
	cin => \alu|Add1~49\,
	combout => \alu|Add1~50_combout\,
	cout => \alu|Add1~51\);

-- Location: LCCOMB_X41_Y32_N20
\alu|Add1~52\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Add1~52_combout\ = ((\mux_ulaA|m_out[26]~5_combout\ $ (\mux_ulaB|m_out[26]~9_combout\ $ (!\alu|Add1~51\)))) # (GND)
-- \alu|Add1~53\ = CARRY((\mux_ulaA|m_out[26]~5_combout\ & ((\mux_ulaB|m_out[26]~9_combout\) # (!\alu|Add1~51\))) # (!\mux_ulaA|m_out[26]~5_combout\ & (\mux_ulaB|m_out[26]~9_combout\ & !\alu|Add1~51\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mux_ulaA|m_out[26]~5_combout\,
	datab => \mux_ulaB|m_out[26]~9_combout\,
	datad => VCC,
	cin => \alu|Add1~51\,
	combout => \alu|Add1~52_combout\,
	cout => \alu|Add1~53\);

-- Location: LCCOMB_X41_Y32_N22
\alu|Add1~54\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Add1~54_combout\ = (\mux_ulaB|m_out[27]~8_combout\ & ((\mux_ulaA|m_out[27]~4_combout\ & (\alu|Add1~53\ & VCC)) # (!\mux_ulaA|m_out[27]~4_combout\ & (!\alu|Add1~53\)))) # (!\mux_ulaB|m_out[27]~8_combout\ & ((\mux_ulaA|m_out[27]~4_combout\ & 
-- (!\alu|Add1~53\)) # (!\mux_ulaA|m_out[27]~4_combout\ & ((\alu|Add1~53\) # (GND)))))
-- \alu|Add1~55\ = CARRY((\mux_ulaB|m_out[27]~8_combout\ & (!\mux_ulaA|m_out[27]~4_combout\ & !\alu|Add1~53\)) # (!\mux_ulaB|m_out[27]~8_combout\ & ((!\alu|Add1~53\) # (!\mux_ulaA|m_out[27]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mux_ulaB|m_out[27]~8_combout\,
	datab => \mux_ulaA|m_out[27]~4_combout\,
	datad => VCC,
	cin => \alu|Add1~53\,
	combout => \alu|Add1~54_combout\,
	cout => \alu|Add1~55\);

-- Location: LCCOMB_X41_Y32_N24
\alu|Add1~56\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Add1~56_combout\ = ((\mux_ulaB|m_out[28]~7_combout\ $ (\mux_ulaA|m_out[28]~3_combout\ $ (!\alu|Add1~55\)))) # (GND)
-- \alu|Add1~57\ = CARRY((\mux_ulaB|m_out[28]~7_combout\ & ((\mux_ulaA|m_out[28]~3_combout\) # (!\alu|Add1~55\))) # (!\mux_ulaB|m_out[28]~7_combout\ & (\mux_ulaA|m_out[28]~3_combout\ & !\alu|Add1~55\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mux_ulaB|m_out[28]~7_combout\,
	datab => \mux_ulaA|m_out[28]~3_combout\,
	datad => VCC,
	cin => \alu|Add1~55\,
	combout => \alu|Add1~56_combout\,
	cout => \alu|Add1~57\);

-- Location: LCCOMB_X41_Y32_N26
\alu|Add1~58\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Add1~58_combout\ = (\mux_ulaB|m_out[29]~6_combout\ & ((\mux_ulaA|m_out[29]~2_combout\ & (\alu|Add1~57\ & VCC)) # (!\mux_ulaA|m_out[29]~2_combout\ & (!\alu|Add1~57\)))) # (!\mux_ulaB|m_out[29]~6_combout\ & ((\mux_ulaA|m_out[29]~2_combout\ & 
-- (!\alu|Add1~57\)) # (!\mux_ulaA|m_out[29]~2_combout\ & ((\alu|Add1~57\) # (GND)))))
-- \alu|Add1~59\ = CARRY((\mux_ulaB|m_out[29]~6_combout\ & (!\mux_ulaA|m_out[29]~2_combout\ & !\alu|Add1~57\)) # (!\mux_ulaB|m_out[29]~6_combout\ & ((!\alu|Add1~57\) # (!\mux_ulaA|m_out[29]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mux_ulaB|m_out[29]~6_combout\,
	datab => \mux_ulaA|m_out[29]~2_combout\,
	datad => VCC,
	cin => \alu|Add1~57\,
	combout => \alu|Add1~58_combout\,
	cout => \alu|Add1~59\);

-- Location: LCCOMB_X39_Y34_N30
\alu|Mux2~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux2~10_combout\ = (\alu|Mux10~9_combout\ & ((\alu|Mux2~9_combout\ & ((\alu|Add1~58_combout\))) # (!\alu|Mux2~9_combout\ & (\alu|ShiftRight1~71_combout\)))) # (!\alu|Mux10~9_combout\ & (\alu|Mux2~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|Mux10~9_combout\,
	datab => \alu|Mux2~9_combout\,
	datac => \alu|ShiftRight1~71_combout\,
	datad => \alu|Add1~58_combout\,
	combout => \alu|Mux2~10_combout\);

-- Location: LCCOMB_X39_Y34_N8
\alu|Mux2~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux2~11_combout\ = (\alu|Mux10~10_combout\ & (\alu|Mux29~9_combout\ & (\alu|tmp[29]~58_combout\))) # (!\alu|Mux10~10_combout\ & (((\alu|Mux2~10_combout\)) # (!\alu|Mux29~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010110010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|Mux10~10_combout\,
	datab => \alu|Mux29~9_combout\,
	datac => \alu|tmp[29]~58_combout\,
	datad => \alu|Mux2~10_combout\,
	combout => \alu|Mux2~11_combout\);

-- Location: LCCOMB_X39_Y30_N26
\alu|Mux2~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux2~12_combout\ = (\alu|Mux29~5_combout\ & (((\alu|Mux2~11_combout\)))) # (!\alu|Mux29~5_combout\ & ((\alu|Mux2~11_combout\ & (\alu|ShiftRight0~87_combout\)) # (!\alu|Mux2~11_combout\ & ((\mux_ulaB|m_out[31]~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|ShiftRight0~87_combout\,
	datab => \mux_ulaB|m_out[31]~4_combout\,
	datac => \alu|Mux29~5_combout\,
	datad => \alu|Mux2~11_combout\,
	combout => \alu|Mux2~12_combout\);

-- Location: LCCOMB_X39_Y30_N4
\alu|Mux2~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux2~13_combout\ = (\alu|Mux3~1_combout\ & ((\actr|alu_ctr[3]~21_combout\ & (\alu|Mux2~8_combout\)) # (!\actr|alu_ctr[3]~21_combout\ & ((\alu|Mux2~12_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \actr|alu_ctr[3]~21_combout\,
	datab => \alu|Mux3~1_combout\,
	datac => \alu|Mux2~8_combout\,
	datad => \alu|Mux2~12_combout\,
	combout => \alu|Mux2~13_combout\);

-- Location: LCFF_X39_Y30_N5
\regULA|sr_out[29]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \alu|Mux2~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regULA|sr_out\(29));

-- Location: LCCOMB_X42_Y33_N22
\pc|sr_out~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \pc|sr_out~29_combout\ = (\ctr_mips|pstate.jump_ex_st~regout\ & (((\regULA|sr_out\(29))))) # (!\ctr_mips|pstate.jump_ex_st~regout\ & ((\ctr_mips|pstate.branch_ex_st~regout\ & (\regULA|sr_out\(29))) # (!\ctr_mips|pstate.branch_ex_st~regout\ & 
-- ((\alu|Mux2~13_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctr_mips|pstate.jump_ex_st~regout\,
	datab => \ctr_mips|pstate.branch_ex_st~regout\,
	datac => \regULA|sr_out\(29),
	datad => \alu|Mux2~13_combout\,
	combout => \pc|sr_out~29_combout\);

-- Location: LCCOMB_X43_Y33_N8
\pc|sr_out[31]~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \pc|sr_out[31]~28_combout\ = (\rst~combout\) # ((!\ctr_mips|pstate.jump_ex_st~regout\ & ((!\pc_wr_s~0_combout\) # (!\ctr_mips|pstate.fetch_st~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctr_mips|pstate.fetch_st~regout\,
	datab => \ctr_mips|pstate.jump_ex_st~regout\,
	datac => \rst~combout\,
	datad => \pc_wr_s~0_combout\,
	combout => \pc|sr_out[31]~28_combout\);

-- Location: LCFF_X42_Y33_N23
\pc|sr_out[29]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \pc|sr_out~29_combout\,
	sclr => \rst~combout\,
	ena => \pc|sr_out[31]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pc|sr_out\(29));

-- Location: LCCOMB_X40_Y31_N6
\bcoreg|regA[29]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \bcoreg|regA[29]~2_combout\ = (!\bcoreg|Equal0~1_combout\ & ((\bcoreg|breg32~combout\ & ((\bcoreg|breg32_rtl_1_bypass\(69)))) # (!\bcoreg|breg32~combout\ & (\bcoreg|breg32_rtl_0|auto_generated|ram_block1a29\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcoreg|breg32~combout\,
	datab => \bcoreg|breg32_rtl_0|auto_generated|ram_block1a29\,
	datac => \bcoreg|breg32_rtl_1_bypass\(69),
	datad => \bcoreg|Equal0~1_combout\,
	combout => \bcoreg|regA[29]~2_combout\);

-- Location: LCFF_X41_Y31_N5
\rgA|sr_out[29]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \bcoreg|regA[29]~2_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rgA|sr_out\(29));

-- Location: LCCOMB_X41_Y31_N4
\mux_ulaA|m_out[29]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux_ulaA|m_out[29]~2_combout\ = (\ctr_mips|WideOr0~combout\ & ((\rgA|sr_out\(29)))) # (!\ctr_mips|WideOr0~combout\ & (\pc|sr_out\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \pc|sr_out\(29),
	datac => \rgA|sr_out\(29),
	datad => \ctr_mips|WideOr0~combout\,
	combout => \mux_ulaA|m_out[29]~2_combout\);

-- Location: LCCOMB_X41_Y36_N28
\alu|tmp[30]~60\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|tmp[30]~60_combout\ = ((\mux_ulaA|m_out[30]~1_combout\ $ (\mux_ulaB|m_out[30]~5_combout\ $ (\alu|tmp[29]~59\)))) # (GND)
-- \alu|tmp[30]~61\ = CARRY((\mux_ulaA|m_out[30]~1_combout\ & ((!\alu|tmp[29]~59\) # (!\mux_ulaB|m_out[30]~5_combout\))) # (!\mux_ulaA|m_out[30]~1_combout\ & (!\mux_ulaB|m_out[30]~5_combout\ & !\alu|tmp[29]~59\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mux_ulaA|m_out[30]~1_combout\,
	datab => \mux_ulaB|m_out[30]~5_combout\,
	datad => VCC,
	cin => \alu|tmp[29]~59\,
	combout => \alu|tmp[30]~60_combout\,
	cout => \alu|tmp[30]~61\);

-- Location: LCCOMB_X42_Y33_N8
\alu|Mux1~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux1~4_combout\ = (!\actr|alu_ctr[3]~21_combout\ & (!\actr|alu_ctr[0]~16_combout\ & \alu|tmp[30]~60_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \actr|alu_ctr[3]~21_combout\,
	datac => \actr|alu_ctr[0]~16_combout\,
	datad => \alu|tmp[30]~60_combout\,
	combout => \alu|Mux1~4_combout\);

-- Location: LCCOMB_X41_Y34_N20
\alu|ShiftRight0~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftRight0~10_combout\ = (!\mux_ulaA|m_out[3]~28_combout\ & (!\mux_ulaA|m_out[2]~29_combout\ & (!\mux_ulaA|m_out[1]~30_combout\ & !\mux_ulaA|m_out[0]~27_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_ulaA|m_out[3]~28_combout\,
	datab => \mux_ulaA|m_out[2]~29_combout\,
	datac => \mux_ulaA|m_out[1]~30_combout\,
	datad => \mux_ulaA|m_out[0]~27_combout\,
	combout => \alu|ShiftRight0~10_combout\);

-- Location: LCCOMB_X42_Y30_N20
\alu|Mux1~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux1~5_combout\ = (\alu|ShiftRight0~10_combout\ & ((\alu|ShiftLeft0~21_combout\ & (\rgB|sr_out\(30))) # (!\alu|ShiftLeft0~21_combout\ & ((\rgB|sr_out\(31)))))) # (!\alu|ShiftRight0~10_combout\ & (((\rgB|sr_out\(31)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rgB|sr_out\(30),
	datab => \alu|ShiftRight0~10_combout\,
	datac => \rgB|sr_out\(31),
	datad => \alu|ShiftLeft0~21_combout\,
	combout => \alu|Mux1~5_combout\);

-- Location: LCCOMB_X42_Y33_N28
\pc|sr_out~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \pc|sr_out~27_combout\ = (\ctr_mips|pstate.branch_ex_st~regout\ & (\regULA|sr_out\(30))) # (!\ctr_mips|pstate.branch_ex_st~regout\ & ((\ctr_mips|pstate.jump_ex_st~regout\ & (\regULA|sr_out\(30))) # (!\ctr_mips|pstate.jump_ex_st~regout\ & 
-- ((\alu|Mux1~10_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regULA|sr_out\(30),
	datab => \ctr_mips|pstate.branch_ex_st~regout\,
	datac => \ctr_mips|pstate.jump_ex_st~regout\,
	datad => \alu|Mux1~10_combout\,
	combout => \pc|sr_out~27_combout\);

-- Location: LCFF_X42_Y33_N29
\pc|sr_out[30]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \pc|sr_out~27_combout\,
	sclr => \rst~combout\,
	ena => \pc|sr_out[31]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pc|sr_out\(30));

-- Location: LCCOMB_X38_Y31_N16
\bcoreg|breg32_rtl_1_bypass[71]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \bcoreg|breg32_rtl_1_bypass[71]~feeder_combout\ = \breg_data_mux|m_out[30]~10_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \breg_data_mux|m_out[30]~10_combout\,
	combout => \bcoreg|breg32_rtl_1_bypass[71]~feeder_combout\);

-- Location: LCFF_X38_Y31_N17
\bcoreg|breg32_rtl_1_bypass[71]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \bcoreg|breg32_rtl_1_bypass[71]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bcoreg|breg32_rtl_1_bypass\(71));

-- Location: LCCOMB_X42_Y33_N24
\bcoreg|regA[30]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \bcoreg|regA[30]~1_combout\ = (!\bcoreg|Equal0~1_combout\ & ((\bcoreg|breg32~combout\ & ((\bcoreg|breg32_rtl_1_bypass\(71)))) # (!\bcoreg|breg32~combout\ & (\bcoreg|breg32_rtl_0|auto_generated|ram_block1a30\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcoreg|breg32_rtl_0|auto_generated|ram_block1a30\,
	datab => \bcoreg|Equal0~1_combout\,
	datac => \bcoreg|breg32_rtl_1_bypass\(71),
	datad => \bcoreg|breg32~combout\,
	combout => \bcoreg|regA[30]~1_combout\);

-- Location: LCFF_X42_Y33_N25
\rgA|sr_out[30]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \bcoreg|regA[30]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rgA|sr_out\(30));

-- Location: LCCOMB_X42_Y33_N18
\mux_ulaA|m_out[30]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux_ulaA|m_out[30]~1_combout\ = (\ctr_mips|WideOr0~combout\ & ((\rgA|sr_out\(30)))) # (!\ctr_mips|WideOr0~combout\ & (\pc|sr_out\(30)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \pc|sr_out\(30),
	datac => \rgA|sr_out\(30),
	datad => \ctr_mips|WideOr0~combout\,
	combout => \mux_ulaA|m_out[30]~1_combout\);

-- Location: LCCOMB_X42_Y33_N2
\alu|Mux1~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux1~6_combout\ = (\actr|alu_ctr[3]~21_combout\ & ((\mux_ulaB|m_out[30]~5_combout\) # ((\mux_ulaA|m_out[30]~1_combout\)))) # (!\actr|alu_ctr[3]~21_combout\ & (((\mux_ulaB|Equal2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_ulaB|m_out[30]~5_combout\,
	datab => \mux_ulaA|m_out[30]~1_combout\,
	datac => \actr|alu_ctr[3]~21_combout\,
	datad => \mux_ulaB|Equal2~0_combout\,
	combout => \alu|Mux1~6_combout\);

-- Location: LCCOMB_X42_Y33_N26
\alu|Mux1~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux1~11_combout\ = (!\alu|Mux1~6_combout\ & ((\actr|alu_ctr[3]~21_combout\ & (!\actr|alu_ctr[0]~16_combout\)) # (!\actr|alu_ctr[3]~21_combout\ & (\actr|alu_ctr[0]~16_combout\ & \alu|Mux1~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \actr|alu_ctr[3]~21_combout\,
	datab => \actr|alu_ctr[0]~16_combout\,
	datac => \alu|Mux1~5_combout\,
	datad => \alu|Mux1~6_combout\,
	combout => \alu|Mux1~11_combout\);

-- Location: LCCOMB_X42_Y33_N4
\alu|Mux1~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux1~7_combout\ = (\actr|alu_ctr[1]~14_combout\ & (\alu|Mux10~8_combout\ & ((\alu|Mux1~11_combout\)))) # (!\actr|alu_ctr[1]~14_combout\ & (((\alu|Mux1~4_combout\)) # (!\alu|Mux10~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100101010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \actr|alu_ctr[1]~14_combout\,
	datab => \alu|Mux10~8_combout\,
	datac => \alu|Mux1~4_combout\,
	datad => \alu|Mux1~11_combout\,
	combout => \alu|Mux1~7_combout\);

-- Location: LCCOMB_X42_Y33_N14
\alu|Mux1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux1~2_combout\ = (\mux_ulaB|m_out[30]~5_combout\ & ((\actr|alu_ctr[0]~16_combout\) # ((!\actr|alu_ctr[3]~21_combout\ & \mux_ulaA|m_out[30]~1_combout\)))) # (!\mux_ulaB|m_out[30]~5_combout\ & (\actr|alu_ctr[0]~16_combout\ & 
-- ((\actr|alu_ctr[3]~21_combout\) # (\mux_ulaA|m_out[30]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_ulaB|m_out[30]~5_combout\,
	datab => \actr|alu_ctr[0]~16_combout\,
	datac => \actr|alu_ctr[3]~21_combout\,
	datad => \mux_ulaA|m_out[30]~1_combout\,
	combout => \alu|Mux1~2_combout\);

-- Location: LCCOMB_X40_Y30_N4
\alu|ShiftLeft0~131\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftLeft0~131_combout\ = (!\mux_ulaA|m_out[0]~27_combout\ & ((\mux_ulaA|m_out[1]~30_combout\ & (\rgB|sr_out\(28))) # (!\mux_ulaA|m_out[1]~30_combout\ & ((\rgB|sr_out\(30))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rgB|sr_out\(28),
	datab => \rgB|sr_out\(30),
	datac => \mux_ulaA|m_out[0]~27_combout\,
	datad => \mux_ulaA|m_out[1]~30_combout\,
	combout => \alu|ShiftLeft0~131_combout\);

-- Location: LCCOMB_X40_Y30_N18
\alu|ShiftLeft0~121\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftLeft0~121_combout\ = (\mux_ulaA|m_out[1]~30_combout\ & (\rgB|sr_out\(24))) # (!\mux_ulaA|m_out[1]~30_combout\ & ((\rgB|sr_out\(26))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rgB|sr_out\(24),
	datac => \rgB|sr_out\(26),
	datad => \mux_ulaA|m_out[1]~30_combout\,
	combout => \alu|ShiftLeft0~121_combout\);

-- Location: LCCOMB_X40_Y30_N12
\alu|ShiftLeft0~129\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftLeft0~129_combout\ = (\mux_ulaA|m_out[0]~27_combout\ & (\alu|ShiftLeft0~119_combout\)) # (!\mux_ulaA|m_out[0]~27_combout\ & ((\alu|ShiftLeft0~121_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_ulaA|m_out[0]~27_combout\,
	datac => \alu|ShiftLeft0~119_combout\,
	datad => \alu|ShiftLeft0~121_combout\,
	combout => \alu|ShiftLeft0~129_combout\);

-- Location: LCCOMB_X40_Y30_N22
\alu|ShiftLeft0~132\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftLeft0~132_combout\ = (\mux_ulaA|m_out[2]~29_combout\ & (((\alu|ShiftLeft0~129_combout\)))) # (!\mux_ulaA|m_out[2]~29_combout\ & ((\alu|ShiftLeft0~130_combout\) # ((\alu|ShiftLeft0~131_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|ShiftLeft0~130_combout\,
	datab => \mux_ulaA|m_out[2]~29_combout\,
	datac => \alu|ShiftLeft0~131_combout\,
	datad => \alu|ShiftLeft0~129_combout\,
	combout => \alu|ShiftLeft0~132_combout\);

-- Location: LCCOMB_X41_Y34_N14
\alu|ShiftLeft0~133\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftLeft0~133_combout\ = (\mux_ulaA|m_out[3]~28_combout\ & (((\alu|ShiftLeft0~113_combout\)))) # (!\mux_ulaA|m_out[3]~28_combout\ & (\alu|ShiftLeft0~132_combout\ & (!\mux_ulaB|Equal2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_ulaA|m_out[3]~28_combout\,
	datab => \alu|ShiftLeft0~132_combout\,
	datac => \mux_ulaB|Equal2~0_combout\,
	datad => \alu|ShiftLeft0~113_combout\,
	combout => \alu|ShiftLeft0~133_combout\);

-- Location: LCCOMB_X45_Y37_N28
\alu|ShiftRight0~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftRight0~22_combout\ = (\mux_ulaA|m_out[0]~27_combout\ & (!\mux_ulaA|m_out[1]~30_combout\ & \mux_ulaB|m_out[13]~27_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_ulaA|m_out[0]~27_combout\,
	datac => \mux_ulaA|m_out[1]~30_combout\,
	datad => \mux_ulaB|m_out[13]~27_combout\,
	combout => \alu|ShiftRight0~22_combout\);

-- Location: LCCOMB_X45_Y37_N30
\alu|ShiftLeft0~74\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftLeft0~74_combout\ = (!\mux_ulaA|m_out[0]~27_combout\ & ((\mux_ulaA|m_out[1]~30_combout\ & (\mux_ulaB|m_out[12]~29_combout\)) # (!\mux_ulaA|m_out[1]~30_combout\ & ((\mux_ulaB|m_out[14]~25_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_ulaA|m_out[0]~27_combout\,
	datab => \mux_ulaA|m_out[1]~30_combout\,
	datac => \mux_ulaB|m_out[12]~29_combout\,
	datad => \mux_ulaB|m_out[14]~25_combout\,
	combout => \alu|ShiftLeft0~74_combout\);

-- Location: LCCOMB_X45_Y37_N8
\alu|ShiftLeft0~75\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftLeft0~75_combout\ = (\alu|ShiftRight0~22_combout\) # ((\alu|ShiftLeft0~74_combout\) # ((\mux_ulaB|m_out[11]~31_combout\ & \alu|ShiftRight0~86_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_ulaB|m_out[11]~31_combout\,
	datab => \alu|ShiftRight0~22_combout\,
	datac => \alu|ShiftRight0~86_combout\,
	datad => \alu|ShiftLeft0~74_combout\,
	combout => \alu|ShiftLeft0~75_combout\);

-- Location: LCCOMB_X41_Y34_N30
\alu|ShiftLeft0~76\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftLeft0~76_combout\ = (\mux_ulaA|m_out[2]~29_combout\ & (\alu|ShiftLeft0~58_combout\)) # (!\mux_ulaA|m_out[2]~29_combout\ & ((\alu|ShiftLeft0~75_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mux_ulaA|m_out[2]~29_combout\,
	datac => \alu|ShiftLeft0~58_combout\,
	datad => \alu|ShiftLeft0~75_combout\,
	combout => \alu|ShiftLeft0~76_combout\);

-- Location: LCCOMB_X41_Y34_N28
\alu|ShiftLeft0~77\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftLeft0~77_combout\ = (\mux_ulaA|m_out[3]~28_combout\ & (\mux_ulaA|m_out[2]~29_combout\ & (\alu|ShiftLeft0~27_combout\))) # (!\mux_ulaA|m_out[3]~28_combout\ & (((\alu|ShiftLeft0~76_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_ulaA|m_out[3]~28_combout\,
	datab => \mux_ulaA|m_out[2]~29_combout\,
	datac => \alu|ShiftLeft0~27_combout\,
	datad => \alu|ShiftLeft0~76_combout\,
	combout => \alu|ShiftLeft0~77_combout\);

-- Location: LCCOMB_X41_Y34_N18
\alu|ShiftLeft0~78\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftLeft0~78_combout\ = (\alu|ShiftLeft0~77_combout\) # ((!\mux_ulaA|m_out[2]~29_combout\ & (\alu|ShiftLeft0~40_combout\ & \mux_ulaA|m_out[3]~28_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_ulaA|m_out[2]~29_combout\,
	datab => \alu|ShiftLeft0~40_combout\,
	datac => \mux_ulaA|m_out[3]~28_combout\,
	datad => \alu|ShiftLeft0~77_combout\,
	combout => \alu|ShiftLeft0~78_combout\);

-- Location: LCCOMB_X41_Y34_N24
\alu|ShiftLeft0~134\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftLeft0~134_combout\ = (!\alu|ShiftLeft0~25_combout\ & ((\mux_ulaA|m_out[4]~0_combout\ & ((\alu|ShiftLeft0~78_combout\))) # (!\mux_ulaA|m_out[4]~0_combout\ & (\alu|ShiftLeft0~133_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|ShiftLeft0~25_combout\,
	datab => \mux_ulaA|m_out[4]~0_combout\,
	datac => \alu|ShiftLeft0~133_combout\,
	datad => \alu|ShiftLeft0~78_combout\,
	combout => \alu|ShiftLeft0~134_combout\);

-- Location: LCCOMB_X42_Y33_N30
\alu|Mux1~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux1~3_combout\ = (\actr|alu_ctr[3]~21_combout\ & ((\alu|Mux1~2_combout\ & (\alu|a32~44_combout\)) # (!\alu|Mux1~2_combout\ & ((\alu|ShiftLeft0~134_combout\))))) # (!\actr|alu_ctr[3]~21_combout\ & (((\alu|Mux1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|a32~44_combout\,
	datab => \actr|alu_ctr[3]~21_combout\,
	datac => \alu|Mux1~2_combout\,
	datad => \alu|ShiftLeft0~134_combout\,
	combout => \alu|Mux1~3_combout\);

-- Location: LCCOMB_X42_Y33_N16
\alu|Mux1~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux1~10_combout\ = (\alu|Mux10~8_combout\ & (((\alu|Mux1~7_combout\)))) # (!\alu|Mux10~8_combout\ & ((\alu|Mux1~7_combout\ & (\alu|Mux1~9_combout\)) # (!\alu|Mux1~7_combout\ & ((\alu|Mux1~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|Mux1~9_combout\,
	datab => \alu|Mux10~8_combout\,
	datac => \alu|Mux1~7_combout\,
	datad => \alu|Mux1~3_combout\,
	combout => \alu|Mux1~10_combout\);

-- Location: LCFF_X42_Y33_N17
\regULA|sr_out[30]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \alu|Mux1~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regULA|sr_out\(30));

-- Location: LCCOMB_X38_Y31_N10
\breg_data_mux|m_out[30]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \breg_data_mux|m_out[30]~10_combout\ = (\breg_data_mux|m_out[31]~9_combout\) # ((!\ctr_mips|pstate.ldreg_st~regout\ & \regULA|sr_out\(30)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \breg_data_mux|m_out[31]~9_combout\,
	datab => \ctr_mips|pstate.ldreg_st~regout\,
	datad => \regULA|sr_out\(30),
	combout => \breg_data_mux|m_out[30]~10_combout\);

-- Location: LCFF_X38_Y31_N15
\bcoreg|breg32_rtl_1_bypass[65]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \breg_data_mux|m_out[27]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bcoreg|breg32_rtl_1_bypass\(65));

-- Location: LCCOMB_X39_Y31_N20
\bcoreg|regA[27]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \bcoreg|regA[27]~4_combout\ = (!\bcoreg|Equal0~1_combout\ & ((\bcoreg|breg32~combout\ & ((\bcoreg|breg32_rtl_1_bypass\(65)))) # (!\bcoreg|breg32~combout\ & (\bcoreg|breg32_rtl_0|auto_generated|ram_block1a27\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcoreg|breg32~combout\,
	datab => \bcoreg|breg32_rtl_0|auto_generated|ram_block1a27\,
	datac => \bcoreg|Equal0~1_combout\,
	datad => \bcoreg|breg32_rtl_1_bypass\(65),
	combout => \bcoreg|regA[27]~4_combout\);

-- Location: LCFF_X43_Y32_N17
\rgA|sr_out[27]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \bcoreg|regA[27]~4_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rgA|sr_out\(27));

-- Location: LCCOMB_X45_Y32_N30
\alu|a32~43\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|a32~43_combout\ = \mux_ulaB|m_out[27]~8_combout\ $ (((\ctr_mips|WideOr0~combout\ & ((\rgA|sr_out\(27)))) # (!\ctr_mips|WideOr0~combout\ & (\pc|sr_out\(27)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011010100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_ulaB|m_out[27]~8_combout\,
	datab => \pc|sr_out\(27),
	datac => \ctr_mips|WideOr0~combout\,
	datad => \rgA|sr_out\(27),
	combout => \alu|a32~43_combout\);

-- Location: LCCOMB_X45_Y32_N26
\alu|Mux4~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux4~7_combout\ = (\mux_ulaB|m_out[27]~8_combout\) # ((\mux_ulaA|m_out[27]~4_combout\) # (\alu|Mux29~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_ulaB|m_out[27]~8_combout\,
	datac => \mux_ulaA|m_out[27]~4_combout\,
	datad => \alu|Mux29~14_combout\,
	combout => \alu|Mux4~7_combout\);

-- Location: LCCOMB_X40_Y36_N2
\alu|ShiftRight1~53\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftRight1~53_combout\ = (\mux_ulaA|m_out[2]~29_combout\ & (!\mux_ulaA|m_out[1]~30_combout\ & (\mux_ulaB|m_out[31]~4_combout\ & !\mux_ulaA|m_out[0]~27_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_ulaA|m_out[2]~29_combout\,
	datab => \mux_ulaA|m_out[1]~30_combout\,
	datac => \mux_ulaB|m_out[31]~4_combout\,
	datad => \mux_ulaA|m_out[0]~27_combout\,
	combout => \alu|ShiftRight1~53_combout\);

-- Location: LCCOMB_X41_Y34_N6
\alu|ShiftRight1~51\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftRight1~51_combout\ = (\mux_ulaA|m_out[0]~27_combout\ & (\rgB|sr_out\(30))) # (!\mux_ulaA|m_out[0]~27_combout\ & ((\rgB|sr_out\(29))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rgB|sr_out\(30),
	datac => \mux_ulaA|m_out[0]~27_combout\,
	datad => \rgB|sr_out\(29),
	combout => \alu|ShiftRight1~51_combout\);

-- Location: LCCOMB_X40_Y36_N10
\alu|ShiftRight1~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftRight1~50_combout\ = (!\mux_ulaA|m_out[1]~30_combout\ & ((\mux_ulaA|m_out[0]~27_combout\ & ((\rgB|sr_out\(28)))) # (!\mux_ulaA|m_out[0]~27_combout\ & (\rgB|sr_out\(27)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rgB|sr_out\(27),
	datab => \mux_ulaA|m_out[1]~30_combout\,
	datac => \rgB|sr_out\(28),
	datad => \mux_ulaA|m_out[0]~27_combout\,
	combout => \alu|ShiftRight1~50_combout\);

-- Location: LCCOMB_X40_Y36_N16
\alu|ShiftRight1~52\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftRight1~52_combout\ = (\alu|ShiftRight1~50_combout\) # ((\mux_ulaA|m_out[1]~30_combout\ & \alu|ShiftRight1~51_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mux_ulaA|m_out[1]~30_combout\,
	datac => \alu|ShiftRight1~51_combout\,
	datad => \alu|ShiftRight1~50_combout\,
	combout => \alu|ShiftRight1~52_combout\);

-- Location: LCCOMB_X40_Y36_N28
\alu|ShiftRight1~54\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftRight1~54_combout\ = (\alu|ShiftRight1~53_combout\) # ((!\mux_ulaA|m_out[2]~29_combout\ & (\alu|ShiftRight1~52_combout\ & !\mux_ulaB|Equal2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_ulaA|m_out[2]~29_combout\,
	datab => \alu|ShiftRight1~53_combout\,
	datac => \alu|ShiftRight1~52_combout\,
	datad => \mux_ulaB|Equal2~0_combout\,
	combout => \alu|ShiftRight1~54_combout\);

-- Location: LCCOMB_X40_Y36_N30
\alu|ShiftRight1~76\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftRight1~76_combout\ = (\alu|ShiftRight1~54_combout\ & ((\ctr_mips|WideOr0~combout\ & ((!\rgA|sr_out\(3)))) # (!\ctr_mips|WideOr0~combout\ & (!\pc|sr_out\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|sr_out\(3),
	datab => \ctr_mips|WideOr0~combout\,
	datac => \rgA|sr_out\(3),
	datad => \alu|ShiftRight1~54_combout\,
	combout => \alu|ShiftRight1~76_combout\);

-- Location: LCCOMB_X45_Y32_N14
\alu|Mux4~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux4~3_combout\ = (\alu|Mux4~2_combout\ & (((\alu|Add1~54_combout\)) # (!\alu|Mux10~9_combout\))) # (!\alu|Mux4~2_combout\ & (\alu|Mux10~9_combout\ & (\alu|ShiftRight1~76_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|Mux4~2_combout\,
	datab => \alu|Mux10~9_combout\,
	datac => \alu|ShiftRight1~76_combout\,
	datad => \alu|Add1~54_combout\,
	combout => \alu|Mux4~3_combout\);

-- Location: LCCOMB_X45_Y32_N0
\alu|Mux4~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux4~4_combout\ = (\alu|Mux10~10_combout\ & (\alu|Mux29~9_combout\ & ((\alu|tmp[27]~54_combout\)))) # (!\alu|Mux10~10_combout\ & (((\alu|Mux4~3_combout\)) # (!\alu|Mux29~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100101010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|Mux10~10_combout\,
	datab => \alu|Mux29~9_combout\,
	datac => \alu|Mux4~3_combout\,
	datad => \alu|tmp[27]~54_combout\,
	combout => \alu|Mux4~4_combout\);

-- Location: LCCOMB_X45_Y32_N6
\alu|Mux4~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux4~5_combout\ = (\alu|Mux29~5_combout\ & (((\alu|Mux4~4_combout\)))) # (!\alu|Mux29~5_combout\ & ((\alu|Mux4~4_combout\ & ((\alu|ShiftRight0~82_combout\))) # (!\alu|Mux4~4_combout\ & (\mux_ulaB|m_out[31]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_ulaB|m_out[31]~4_combout\,
	datab => \alu|Mux29~5_combout\,
	datac => \alu|ShiftRight0~82_combout\,
	datad => \alu|Mux4~4_combout\,
	combout => \alu|Mux4~5_combout\);

-- Location: LCCOMB_X45_Y32_N28
\alu|Mux4~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux4~6_combout\ = (\alu|Mux4~5_combout\ & ((\actr|alu_ctr[0]~16_combout\) # (\alu|Mux29~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \actr|alu_ctr[0]~16_combout\,
	datac => \alu|Mux29~5_combout\,
	datad => \alu|Mux4~5_combout\,
	combout => \alu|Mux4~6_combout\);

-- Location: LCCOMB_X45_Y32_N12
\alu|Mux4~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux4~8_combout\ = (\alu|Mux29~2_combout\ & (((\alu|Mux29~3_combout\)))) # (!\alu|Mux29~2_combout\ & ((\alu|Mux29~3_combout\ & (!\alu|Mux4~7_combout\)) # (!\alu|Mux29~3_combout\ & ((\alu|Mux4~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010110110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|Mux29~2_combout\,
	datab => \alu|Mux4~7_combout\,
	datac => \alu|Mux29~3_combout\,
	datad => \alu|Mux4~6_combout\,
	combout => \alu|Mux4~8_combout\);

-- Location: LCCOMB_X45_Y32_N2
\alu|Mux4\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux4~combout\ = (\alu|Mux7~12_combout\ & ((\alu|Mux4~8_combout\ & ((\alu|a32~43_combout\))) # (!\alu|Mux4~8_combout\ & (\alu|Mux4~1_combout\)))) # (!\alu|Mux7~12_combout\ & (((\alu|Mux4~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|Mux4~1_combout\,
	datab => \alu|a32~43_combout\,
	datac => \alu|Mux7~12_combout\,
	datad => \alu|Mux4~8_combout\,
	combout => \alu|Mux4~combout\);

-- Location: LCFF_X45_Y32_N3
\regULA|sr_out[27]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \alu|Mux4~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regULA|sr_out\(27));

-- Location: LCCOMB_X38_Y31_N14
\breg_data_mux|m_out[27]~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \breg_data_mux|m_out[27]~13_combout\ = (\breg_data_mux|m_out[31]~9_combout\) # ((!\ctr_mips|pstate.ldreg_st~regout\ & \regULA|sr_out\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ctr_mips|pstate.ldreg_st~regout\,
	datac => \regULA|sr_out\(27),
	datad => \breg_data_mux|m_out[31]~9_combout\,
	combout => \breg_data_mux|m_out[27]~13_combout\);

-- Location: LCCOMB_X41_Y38_N24
\bcoreg|regB[30]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \bcoreg|regB[30]~2_combout\ = (!\bcoreg|Equal1~1_combout\ & ((\bcoreg|breg32~45\ & (\bcoreg|breg32_rtl_1_bypass\(71))) # (!\bcoreg|breg32~45\ & ((\bcoreg|breg32_rtl_1|auto_generated|ram_block1a30\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcoreg|breg32_rtl_1_bypass\(71),
	datab => \bcoreg|breg32~45\,
	datac => \bcoreg|breg32_rtl_1|auto_generated|ram_block1a30\,
	datad => \bcoreg|Equal1~1_combout\,
	combout => \bcoreg|regB[30]~2_combout\);

-- Location: LCFF_X41_Y38_N25
\rgB|sr_out[30]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \bcoreg|regB[30]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rgB|sr_out\(30));

-- Location: LCCOMB_X40_Y38_N26
\alu|ShiftRight1~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftRight1~24_combout\ = (!\mux_ulaA|m_out[1]~30_combout\ & ((\mux_ulaA|m_out[0]~27_combout\ & (\rgB|sr_out\(30))) # (!\mux_ulaA|m_out[0]~27_combout\ & ((\rgB|sr_out\(29))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_ulaA|m_out[1]~30_combout\,
	datab => \rgB|sr_out\(30),
	datac => \rgB|sr_out\(29),
	datad => \mux_ulaA|m_out[0]~27_combout\,
	combout => \alu|ShiftRight1~24_combout\);

-- Location: LCCOMB_X39_Y37_N14
\alu|ShiftRight0~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftRight0~46_combout\ = (\mux_ulaA|m_out[2]~29_combout\ & (((\alu|ShiftRight0~45_combout\) # (\alu|ShiftRight1~24_combout\)))) # (!\mux_ulaA|m_out[2]~29_combout\ & (\alu|ShiftRight0~44_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_ulaA|m_out[2]~29_combout\,
	datab => \alu|ShiftRight0~44_combout\,
	datac => \alu|ShiftRight0~45_combout\,
	datad => \alu|ShiftRight1~24_combout\,
	combout => \alu|ShiftRight0~46_combout\);

-- Location: LCCOMB_X39_Y37_N20
\alu|ShiftRight0~80\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftRight0~80_combout\ = (!\mux_ulaB|Equal2~0_combout\ & ((\mux_ulaA|m_out[3]~28_combout\ & (\rgB|sr_out\(31))) # (!\mux_ulaA|m_out[3]~28_combout\ & ((\alu|ShiftRight0~46_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_ulaB|Equal2~0_combout\,
	datab => \rgB|sr_out\(31),
	datac => \mux_ulaA|m_out[3]~28_combout\,
	datad => \alu|ShiftRight0~46_combout\,
	combout => \alu|ShiftRight0~80_combout\);

-- Location: LCCOMB_X39_Y36_N8
\alu|ShiftRight1~68\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftRight1~68_combout\ = (!\mux_ulaA|m_out[3]~28_combout\ & (!\mux_ulaA|m_out[2]~29_combout\ & (!\mux_ulaB|Equal2~0_combout\ & \alu|ShiftRight0~44_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_ulaA|m_out[3]~28_combout\,
	datab => \mux_ulaA|m_out[2]~29_combout\,
	datac => \mux_ulaB|Equal2~0_combout\,
	datad => \alu|ShiftRight0~44_combout\,
	combout => \alu|ShiftRight1~68_combout\);

-- Location: LCCOMB_X40_Y32_N22
\alu|ShiftRight1~69\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftRight1~69_combout\ = (\alu|ShiftRight1~68_combout\) # ((!\mux_ulaA|m_out[3]~28_combout\ & (\mux_ulaA|m_out[2]~29_combout\ & \alu|ShiftRight1~25_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_ulaA|m_out[3]~28_combout\,
	datab => \mux_ulaA|m_out[2]~29_combout\,
	datac => \alu|ShiftRight1~25_combout\,
	datad => \alu|ShiftRight1~68_combout\,
	combout => \alu|ShiftRight1~69_combout\);

-- Location: LCCOMB_X40_Y32_N8
\alu|Mux6~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux6~3_combout\ = (\alu|Mux6~2_combout\ & (((\alu|Add1~50_combout\) # (!\alu|Mux10~9_combout\)))) # (!\alu|Mux6~2_combout\ & (\alu|ShiftRight1~69_combout\ & (\alu|Mux10~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|Mux6~2_combout\,
	datab => \alu|ShiftRight1~69_combout\,
	datac => \alu|Mux10~9_combout\,
	datad => \alu|Add1~50_combout\,
	combout => \alu|Mux6~3_combout\);

-- Location: LCCOMB_X40_Y32_N30
\alu|Mux6~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux6~4_combout\ = (\alu|Mux10~10_combout\ & (\alu|Mux29~9_combout\ & ((\alu|tmp[25]~50_combout\)))) # (!\alu|Mux10~10_combout\ & (((\alu|Mux6~3_combout\)) # (!\alu|Mux29~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100101010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|Mux10~10_combout\,
	datab => \alu|Mux29~9_combout\,
	datac => \alu|Mux6~3_combout\,
	datad => \alu|tmp[25]~50_combout\,
	combout => \alu|Mux6~4_combout\);

-- Location: LCCOMB_X40_Y32_N12
\alu|Mux6~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux6~5_combout\ = (\alu|Mux29~5_combout\ & (((\alu|Mux6~4_combout\)))) # (!\alu|Mux29~5_combout\ & ((\alu|Mux6~4_combout\ & ((\alu|ShiftRight0~80_combout\))) # (!\alu|Mux6~4_combout\ & (\mux_ulaB|m_out[31]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_ulaB|m_out[31]~4_combout\,
	datab => \alu|Mux29~5_combout\,
	datac => \alu|ShiftRight0~80_combout\,
	datad => \alu|Mux6~4_combout\,
	combout => \alu|Mux6~5_combout\);

-- Location: LCCOMB_X40_Y32_N10
\alu|Mux6~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux6~6_combout\ = (\alu|Mux6~5_combout\ & ((\alu|Mux29~5_combout\) # (\actr|alu_ctr[0]~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \alu|Mux29~5_combout\,
	datac => \actr|alu_ctr[0]~16_combout\,
	datad => \alu|Mux6~5_combout\,
	combout => \alu|Mux6~6_combout\);

-- Location: LCCOMB_X40_Y32_N26
\alu|Mux6~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux6~8_combout\ = (\alu|Mux29~2_combout\ & (((\alu|Mux29~3_combout\)))) # (!\alu|Mux29~2_combout\ & ((\alu|Mux29~3_combout\ & (!\alu|Mux6~7_combout\)) # (!\alu|Mux29~3_combout\ & ((\alu|Mux6~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001111010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|Mux6~7_combout\,
	datab => \alu|Mux29~2_combout\,
	datac => \alu|Mux29~3_combout\,
	datad => \alu|Mux6~6_combout\,
	combout => \alu|Mux6~8_combout\);

-- Location: LCCOMB_X44_Y32_N16
\alu|Mux6\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux6~combout\ = (\alu|Mux7~12_combout\ & ((\alu|Mux6~8_combout\ & (\alu|a32~41_combout\)) # (!\alu|Mux6~8_combout\ & ((\alu|Mux6~1_combout\))))) # (!\alu|Mux7~12_combout\ & (((\alu|Mux6~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|a32~41_combout\,
	datab => \alu|Mux7~12_combout\,
	datac => \alu|Mux6~1_combout\,
	datad => \alu|Mux6~8_combout\,
	combout => \alu|Mux6~combout\);

-- Location: LCFF_X44_Y32_N17
\regULA|sr_out[25]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \alu|Mux6~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regULA|sr_out\(25));

-- Location: LCCOMB_X40_Y32_N18
\breg_data_mux|m_out[25]~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \breg_data_mux|m_out[25]~15_combout\ = (\breg_data_mux|m_out[31]~9_combout\) # ((!\ctr_mips|pstate.ldreg_st~regout\ & \regULA|sr_out\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \breg_data_mux|m_out[31]~9_combout\,
	datac => \ctr_mips|pstate.ldreg_st~regout\,
	datad => \regULA|sr_out\(25),
	combout => \breg_data_mux|m_out[25]~15_combout\);

-- Location: LCCOMB_X38_Y30_N24
\bcoreg|breg32_rtl_1_bypass[59]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \bcoreg|breg32_rtl_1_bypass[59]~feeder_combout\ = \breg_data_mux|m_out[24]~16_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \breg_data_mux|m_out[24]~16_combout\,
	combout => \bcoreg|breg32_rtl_1_bypass[59]~feeder_combout\);

-- Location: LCFF_X38_Y30_N25
\bcoreg|breg32_rtl_1_bypass[59]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \bcoreg|breg32_rtl_1_bypass[59]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bcoreg|breg32_rtl_1_bypass\(59));

-- Location: LCCOMB_X44_Y32_N30
\bcoreg|regA[24]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \bcoreg|regA[24]~7_combout\ = (!\bcoreg|Equal0~1_combout\ & ((\bcoreg|breg32~combout\ & ((\bcoreg|breg32_rtl_1_bypass\(59)))) # (!\bcoreg|breg32~combout\ & (\bcoreg|breg32_rtl_0|auto_generated|ram_block1a24\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcoreg|breg32~combout\,
	datab => \bcoreg|breg32_rtl_0|auto_generated|ram_block1a24\,
	datac => \bcoreg|breg32_rtl_1_bypass\(59),
	datad => \bcoreg|Equal0~1_combout\,
	combout => \bcoreg|regA[24]~7_combout\);

-- Location: LCFF_X44_Y32_N31
\rgA|sr_out[24]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \bcoreg|regA[24]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rgA|sr_out\(24));

-- Location: LCCOMB_X44_Y32_N20
\pc|sr_out[24]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \pc|sr_out[24]~6_combout\ = (\ctr_mips|pstate.branch_ex_st~regout\ & (\regULA|sr_out\(24))) # (!\ctr_mips|pstate.branch_ex_st~regout\ & ((\alu|Mux7~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regULA|sr_out\(24),
	datab => \alu|Mux7~combout\,
	datad => \ctr_mips|pstate.branch_ex_st~regout\,
	combout => \pc|sr_out[24]~6_combout\);

-- Location: LCFF_X44_Y32_N21
\pc|sr_out[24]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \pc|sr_out[24]~6_combout\,
	sdata => \ir|sr_out\(22),
	sclr => \rst~combout\,
	sload => \ctr_mips|pstate.jump_ex_st~regout\,
	ena => \pc|sr_out[0]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pc|sr_out\(24));

-- Location: LCCOMB_X44_Y32_N4
\mux_ulaA|m_out[24]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux_ulaA|m_out[24]~7_combout\ = (\ctr_mips|WideOr0~combout\ & (\rgA|sr_out\(24))) # (!\ctr_mips|WideOr0~combout\ & ((\pc|sr_out\(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rgA|sr_out\(24),
	datac => \pc|sr_out\(24),
	datad => \ctr_mips|WideOr0~combout\,
	combout => \mux_ulaA|m_out[24]~7_combout\);

-- Location: LCCOMB_X39_Y36_N18
\mux_ulaB|m_out[24]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux_ulaB|m_out[24]~11_combout\ = (!\ctr_mips|pstate.c_mem_add_st~regout\ & (!\ctr_mips|pstate.decode_st~regout\ & (\rgB|sr_out\(24) & \ctr_mips|pstate.fetch_st~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctr_mips|pstate.c_mem_add_st~regout\,
	datab => \ctr_mips|pstate.decode_st~regout\,
	datac => \rgB|sr_out\(24),
	datad => \ctr_mips|pstate.fetch_st~regout\,
	combout => \mux_ulaB|m_out[24]~11_combout\);

-- Location: LCCOMB_X44_Y32_N18
\alu|Mux7~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux7~10_combout\ = (\alu|Mux29~14_combout\) # ((\mux_ulaA|m_out[24]~7_combout\) # (\mux_ulaB|m_out[24]~11_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|Mux29~14_combout\,
	datac => \mux_ulaA|m_out[24]~7_combout\,
	datad => \mux_ulaB|m_out[24]~11_combout\,
	combout => \alu|Mux7~10_combout\);

-- Location: LCCOMB_X42_Y38_N28
\alu|ShiftRight0~78\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftRight0~78_combout\ = (!\mux_ulaA|m_out[3]~28_combout\ & ((\mux_ulaA|m_out[2]~29_combout\ & (\alu|ShiftRight0~13_combout\)) # (!\mux_ulaA|m_out[2]~29_combout\ & ((\alu|ShiftRight0~15_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_ulaA|m_out[3]~28_combout\,
	datab => \alu|ShiftRight0~13_combout\,
	datac => \alu|ShiftRight0~15_combout\,
	datad => \mux_ulaA|m_out[2]~29_combout\,
	combout => \alu|ShiftRight0~78_combout\);

-- Location: LCCOMB_X43_Y38_N8
\alu|ShiftRight0~79\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftRight0~79_combout\ = (!\mux_ulaB|Equal2~0_combout\ & ((\alu|ShiftRight0~78_combout\) # ((\mux_ulaA|m_out[3]~28_combout\ & \rgB|sr_out\(31)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_ulaB|Equal2~0_combout\,
	datab => \mux_ulaA|m_out[3]~28_combout\,
	datac => \rgB|sr_out\(31),
	datad => \alu|ShiftRight0~78_combout\,
	combout => \alu|ShiftRight0~79_combout\);

-- Location: LCCOMB_X43_Y32_N18
\alu|Mux7~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux7~5_combout\ = (\actr|alu_ctr[1]~14_combout\ & ((\mux_ulaA|m_out[24]~7_combout\ & ((\mux_ulaB|m_out[24]~11_combout\) # (\actr|alu_ctr[0]~16_combout\))) # (!\mux_ulaA|m_out[24]~7_combout\ & (\mux_ulaB|m_out[24]~11_combout\ & 
-- \actr|alu_ctr[0]~16_combout\)))) # (!\actr|alu_ctr[1]~14_combout\ & (((!\actr|alu_ctr[0]~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100010110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_ulaA|m_out[24]~7_combout\,
	datab => \actr|alu_ctr[1]~14_combout\,
	datac => \mux_ulaB|m_out[24]~11_combout\,
	datad => \actr|alu_ctr[0]~16_combout\,
	combout => \alu|Mux7~5_combout\);

-- Location: LCCOMB_X42_Y38_N2
\alu|ShiftRight0~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftRight0~16_combout\ = (!\mux_ulaB|Equal2~0_combout\ & ((\mux_ulaA|m_out[2]~29_combout\ & (\alu|ShiftRight0~13_combout\)) # (!\mux_ulaA|m_out[2]~29_combout\ & ((\alu|ShiftRight0~15_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_ulaB|Equal2~0_combout\,
	datab => \alu|ShiftRight0~13_combout\,
	datac => \alu|ShiftRight0~15_combout\,
	datad => \mux_ulaA|m_out[2]~29_combout\,
	combout => \alu|ShiftRight0~16_combout\);

-- Location: LCCOMB_X42_Y38_N6
\alu|ShiftRight1~74\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftRight1~74_combout\ = (\alu|ShiftRight0~16_combout\ & ((\ctr_mips|WideOr0~combout\ & ((!\rgA|sr_out\(3)))) # (!\ctr_mips|WideOr0~combout\ & (!\pc|sr_out\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|sr_out\(3),
	datab => \rgA|sr_out\(3),
	datac => \ctr_mips|WideOr0~combout\,
	datad => \alu|ShiftRight0~16_combout\,
	combout => \alu|ShiftRight1~74_combout\);

-- Location: LCCOMB_X43_Y32_N12
\alu|Mux7~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux7~6_combout\ = (\alu|Mux10~9_combout\ & ((\alu|Mux7~5_combout\ & ((\alu|Add1~48_combout\))) # (!\alu|Mux7~5_combout\ & (\alu|ShiftRight1~74_combout\)))) # (!\alu|Mux10~9_combout\ & (\alu|Mux7~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|Mux10~9_combout\,
	datab => \alu|Mux7~5_combout\,
	datac => \alu|ShiftRight1~74_combout\,
	datad => \alu|Add1~48_combout\,
	combout => \alu|Mux7~6_combout\);

-- Location: LCCOMB_X44_Y32_N12
\alu|Mux7~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux7~7_combout\ = (\alu|Mux10~10_combout\ & (\alu|Mux29~9_combout\ & (\alu|tmp[24]~48_combout\))) # (!\alu|Mux10~10_combout\ & (((\alu|Mux7~6_combout\)) # (!\alu|Mux29~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010110010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|Mux10~10_combout\,
	datab => \alu|Mux29~9_combout\,
	datac => \alu|tmp[24]~48_combout\,
	datad => \alu|Mux7~6_combout\,
	combout => \alu|Mux7~7_combout\);

-- Location: LCCOMB_X44_Y32_N22
\alu|Mux7~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux7~8_combout\ = (\alu|Mux29~5_combout\ & (((\alu|Mux7~7_combout\)))) # (!\alu|Mux29~5_combout\ & ((\alu|Mux7~7_combout\ & ((\alu|ShiftRight0~79_combout\))) # (!\alu|Mux7~7_combout\ & (\mux_ulaB|m_out[31]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_ulaB|m_out[31]~4_combout\,
	datab => \alu|ShiftRight0~79_combout\,
	datac => \alu|Mux29~5_combout\,
	datad => \alu|Mux7~7_combout\,
	combout => \alu|Mux7~8_combout\);

-- Location: LCCOMB_X44_Y32_N28
\alu|Mux7~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux7~9_combout\ = (\alu|Mux7~8_combout\ & ((\actr|alu_ctr[0]~16_combout\) # (\alu|Mux29~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \actr|alu_ctr[0]~16_combout\,
	datac => \alu|Mux29~5_combout\,
	datad => \alu|Mux7~8_combout\,
	combout => \alu|Mux7~9_combout\);

-- Location: LCCOMB_X44_Y32_N0
\alu|Mux7~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux7~11_combout\ = (\alu|Mux29~2_combout\ & (((\alu|Mux29~3_combout\)))) # (!\alu|Mux29~2_combout\ & ((\alu|Mux29~3_combout\ & (!\alu|Mux7~10_combout\)) # (!\alu|Mux29~3_combout\ & ((\alu|Mux7~9_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010110110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|Mux29~2_combout\,
	datab => \alu|Mux7~10_combout\,
	datac => \alu|Mux29~3_combout\,
	datad => \alu|Mux7~9_combout\,
	combout => \alu|Mux7~11_combout\);

-- Location: LCCOMB_X44_Y32_N14
\alu|Mux7\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux7~combout\ = (\alu|Mux7~12_combout\ & ((\alu|Mux7~11_combout\ & (\alu|a32~40_combout\)) # (!\alu|Mux7~11_combout\ & ((\alu|Mux7~4_combout\))))) # (!\alu|Mux7~12_combout\ & (((\alu|Mux7~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|a32~40_combout\,
	datab => \alu|Mux7~12_combout\,
	datac => \alu|Mux7~4_combout\,
	datad => \alu|Mux7~11_combout\,
	combout => \alu|Mux7~combout\);

-- Location: LCFF_X44_Y32_N15
\regULA|sr_out[24]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \alu|Mux7~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regULA|sr_out\(24));

-- Location: LCCOMB_X38_Y30_N10
\breg_data_mux|m_out[24]~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \breg_data_mux|m_out[24]~16_combout\ = (\breg_data_mux|m_out[31]~9_combout\) # ((\regULA|sr_out\(24) & !\ctr_mips|pstate.ldreg_st~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \breg_data_mux|m_out[31]~9_combout\,
	datac => \regULA|sr_out\(24),
	datad => \ctr_mips|pstate.ldreg_st~regout\,
	combout => \breg_data_mux|m_out[24]~16_combout\);

-- Location: LCCOMB_X39_Y36_N28
\bcoreg|regB[20]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \bcoreg|regB[20]~12_combout\ = (!\bcoreg|Equal1~1_combout\ & ((\bcoreg|breg32~45\ & (\bcoreg|breg32_rtl_1_bypass\(51))) # (!\bcoreg|breg32~45\ & ((\bcoreg|breg32_rtl_1|auto_generated|ram_block1a20\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcoreg|Equal1~1_combout\,
	datab => \bcoreg|breg32_rtl_1_bypass\(51),
	datac => \bcoreg|breg32_rtl_1|auto_generated|ram_block1a20\,
	datad => \bcoreg|breg32~45\,
	combout => \bcoreg|regB[20]~12_combout\);

-- Location: LCFF_X39_Y36_N29
\rgB|sr_out[20]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \bcoreg|regB[20]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rgB|sr_out\(20));

-- Location: LCCOMB_X39_Y36_N10
\mux_ulaB|m_out[20]~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux_ulaB|m_out[20]~15_combout\ = (!\ctr_mips|pstate.c_mem_add_st~regout\ & (\rgB|sr_out\(20) & (!\ctr_mips|pstate.decode_st~regout\ & \ctr_mips|pstate.fetch_st~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctr_mips|pstate.c_mem_add_st~regout\,
	datab => \rgB|sr_out\(20),
	datac => \ctr_mips|pstate.decode_st~regout\,
	datad => \ctr_mips|pstate.fetch_st~regout\,
	combout => \mux_ulaB|m_out[20]~15_combout\);

-- Location: LCCOMB_X41_Y30_N26
\alu|Mux11~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux11~4_combout\ = (\alu|Mux10~10_combout\ & (\alu|Mux29~9_combout\ & ((\alu|tmp[20]~40_combout\)))) # (!\alu|Mux10~10_combout\ & (((\alu|Mux11~3_combout\)) # (!\alu|Mux29~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100101010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|Mux10~10_combout\,
	datab => \alu|Mux29~9_combout\,
	datac => \alu|Mux11~3_combout\,
	datad => \alu|tmp[20]~40_combout\,
	combout => \alu|Mux11~4_combout\);

-- Location: LCCOMB_X41_Y30_N12
\alu|Mux11~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux11~5_combout\ = (\alu|Mux29~5_combout\ & (((\alu|Mux11~4_combout\)))) # (!\alu|Mux29~5_combout\ & ((\alu|Mux11~4_combout\ & ((\alu|ShiftRight0~61_combout\))) # (!\alu|Mux11~4_combout\ & (\mux_ulaB|m_out[31]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|Mux29~5_combout\,
	datab => \mux_ulaB|m_out[31]~4_combout\,
	datac => \alu|ShiftRight0~61_combout\,
	datad => \alu|Mux11~4_combout\,
	combout => \alu|Mux11~5_combout\);

-- Location: LCCOMB_X45_Y37_N16
\alu|ShiftLeft0~85\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftLeft0~85_combout\ = (\mux_ulaA|m_out[1]~30_combout\ & ((\mux_ulaA|m_out[0]~27_combout\ & (\mux_ulaB|m_out[13]~27_combout\)) # (!\mux_ulaA|m_out[0]~27_combout\ & ((\mux_ulaB|m_out[14]~25_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_ulaB|m_out[13]~27_combout\,
	datab => \mux_ulaA|m_out[1]~30_combout\,
	datac => \mux_ulaA|m_out[0]~27_combout\,
	datad => \mux_ulaB|m_out[14]~25_combout\,
	combout => \alu|ShiftLeft0~85_combout\);

-- Location: LCCOMB_X45_Y36_N18
\alu|ShiftLeft0~106\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftLeft0~106_combout\ = (\mux_ulaA|m_out[2]~29_combout\ & (((\alu|ShiftLeft0~85_combout\) # (\alu|ShiftLeft0~84_combout\)))) # (!\mux_ulaA|m_out[2]~29_combout\ & (\alu|ShiftLeft0~105_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|ShiftLeft0~105_combout\,
	datab => \mux_ulaA|m_out[2]~29_combout\,
	datac => \alu|ShiftLeft0~85_combout\,
	datad => \alu|ShiftLeft0~84_combout\,
	combout => \alu|ShiftLeft0~106_combout\);

-- Location: LCCOMB_X44_Y33_N18
\alu|ShiftLeft0~141\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftLeft0~141_combout\ = (!\mux_ulaA|m_out[1]~30_combout\ & ((\ctr_mips|WideOr0~combout\ & (!\rgA|sr_out\(0))) # (!\ctr_mips|WideOr0~combout\ & ((!\pc|sr_out\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rgA|sr_out\(0),
	datab => \ctr_mips|WideOr0~combout\,
	datac => \mux_ulaA|m_out[1]~30_combout\,
	datad => \pc|sr_out\(0),
	combout => \alu|ShiftLeft0~141_combout\);

-- Location: LCCOMB_X45_Y34_N30
\alu|ShiftLeft0~33\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftLeft0~33_combout\ = (\mux_ulaA|m_out[2]~29_combout\ & (\mux_ulaB|m_out[0]~3_combout\ & ((\alu|ShiftLeft0~141_combout\)))) # (!\mux_ulaA|m_out[2]~29_combout\ & (((\alu|ShiftLeft0~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_ulaA|m_out[2]~29_combout\,
	datab => \mux_ulaB|m_out[0]~3_combout\,
	datac => \alu|ShiftLeft0~32_combout\,
	datad => \alu|ShiftLeft0~141_combout\,
	combout => \alu|ShiftLeft0~33_combout\);

-- Location: LCCOMB_X42_Y37_N20
\alu|ShiftLeft0~142\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftLeft0~142_combout\ = (\alu|ShiftLeft0~33_combout\ & ((\ctr_mips|WideOr0~combout\ & (!\rgA|sr_out\(3))) # (!\ctr_mips|WideOr0~combout\ & ((!\pc|sr_out\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctr_mips|WideOr0~combout\,
	datab => \rgA|sr_out\(3),
	datac => \pc|sr_out\(3),
	datad => \alu|ShiftLeft0~33_combout\,
	combout => \alu|ShiftLeft0~142_combout\);

-- Location: LCCOMB_X42_Y37_N28
\alu|Mux11~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux11~0_combout\ = (\alu|Mux10~21_combout\ & ((\alu|Mux10~11_combout\ & (\alu|a32~36_combout\)) # (!\alu|Mux10~11_combout\ & ((\alu|ShiftLeft0~142_combout\))))) # (!\alu|Mux10~21_combout\ & (((\alu|Mux10~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|a32~36_combout\,
	datab => \alu|Mux10~21_combout\,
	datac => \alu|ShiftLeft0~142_combout\,
	datad => \alu|Mux10~11_combout\,
	combout => \alu|Mux11~0_combout\);

-- Location: LCCOMB_X42_Y37_N18
\alu|Mux11~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux11~1_combout\ = (\alu|Mux10~20_combout\ & (((\alu|Mux11~0_combout\)))) # (!\alu|Mux10~20_combout\ & ((\alu|Mux11~0_combout\ & (\alu|ShiftLeft0~66_combout\)) # (!\alu|Mux11~0_combout\ & ((\alu|ShiftLeft0~106_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|ShiftLeft0~66_combout\,
	datab => \alu|ShiftLeft0~106_combout\,
	datac => \alu|Mux10~20_combout\,
	datad => \alu|Mux11~0_combout\,
	combout => \alu|Mux11~1_combout\);

-- Location: LCCOMB_X40_Y33_N12
\alu|Mux11~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux11~6_combout\ = (\alu|Mux14~6_combout\ & ((\alu|Mux11~5_combout\) # ((\alu|Mux29~2_combout\ & \alu|Mux11~1_combout\)))) # (!\alu|Mux14~6_combout\ & (\alu|Mux29~2_combout\ & ((\alu|Mux11~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|Mux14~6_combout\,
	datab => \alu|Mux29~2_combout\,
	datac => \alu|Mux11~5_combout\,
	datad => \alu|Mux11~1_combout\,
	combout => \alu|Mux11~6_combout\);

-- Location: LCCOMB_X40_Y33_N14
\alu|Mux11~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux11~7_combout\ = (\alu|Mux11~6_combout\) # ((!\mux_ulaB|m_out[20]~15_combout\ & (!\mux_ulaA|m_out[20]~11_combout\ & \alu|Mux14~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_ulaB|m_out[20]~15_combout\,
	datab => \mux_ulaA|m_out[20]~11_combout\,
	datac => \alu|Mux14~8_combout\,
	datad => \alu|Mux11~6_combout\,
	combout => \alu|Mux11~7_combout\);

-- Location: LCFF_X40_Y33_N15
\regULA|sr_out[20]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \alu|Mux11~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regULA|sr_out\(20));

-- Location: LCCOMB_X40_Y33_N30
\breg_data_mux|m_out[20]~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \breg_data_mux|m_out[20]~20_combout\ = (\breg_data_mux|m_out[31]~9_combout\) # ((\regULA|sr_out\(20) & !\ctr_mips|pstate.ldreg_st~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \breg_data_mux|m_out[31]~9_combout\,
	datab => \regULA|sr_out\(20),
	datac => \ctr_mips|pstate.ldreg_st~regout\,
	combout => \breg_data_mux|m_out[20]~20_combout\);

-- Location: LCCOMB_X36_Y34_N22
\bcoreg|regB[6]~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \bcoreg|regB[6]~26_combout\ = (!\bcoreg|Equal1~1_combout\ & ((\bcoreg|breg32~45\ & (\bcoreg|breg32_rtl_1_bypass\(23))) # (!\bcoreg|breg32~45\ & ((\bcoreg|breg32_rtl_1|auto_generated|ram_block1a6\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcoreg|breg32_rtl_1_bypass\(23),
	datab => \bcoreg|breg32~45\,
	datac => \bcoreg|breg32_rtl_1|auto_generated|ram_block1a6\,
	datad => \bcoreg|Equal1~1_combout\,
	combout => \bcoreg|regB[6]~26_combout\);

-- Location: LCFF_X40_Y35_N25
\rgB|sr_out[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \bcoreg|regB[6]~26_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rgB|sr_out\(6));

-- Location: LCCOMB_X41_Y35_N22
\mux_ulaB|m_out[6]~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux_ulaB|m_out[6]~40_combout\ = (\ctr_mips|pstate.decode_st~regout\ & (((\ir|sr_out\(6))))) # (!\ctr_mips|pstate.decode_st~regout\ & ((\ctr_mips|pstate.c_mem_add_st~regout\ & ((\ir|sr_out\(6)))) # (!\ctr_mips|pstate.c_mem_add_st~regout\ & 
-- (\rgB|sr_out\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctr_mips|pstate.decode_st~regout\,
	datab => \rgB|sr_out\(6),
	datac => \ir|sr_out\(6),
	datad => \ctr_mips|pstate.c_mem_add_st~regout\,
	combout => \mux_ulaB|m_out[6]~40_combout\);

-- Location: LCCOMB_X41_Y35_N30
\mux_ulaB|m_out[6]~41\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux_ulaB|m_out[6]~41_combout\ = (\mux_ulaB|m_out[0]~18_combout\ & (((\mux_ulaB|m_out[6]~40_combout\)))) # (!\mux_ulaB|m_out[0]~18_combout\ & (\ir|sr_out\(4) & (!\mux_ulaB|m_out[2]~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_ulaB|m_out[0]~18_combout\,
	datab => \ir|sr_out\(4),
	datac => \mux_ulaB|m_out[2]~19_combout\,
	datad => \mux_ulaB|m_out[6]~40_combout\,
	combout => \mux_ulaB|m_out[6]~41_combout\);

-- Location: LCCOMB_X41_Y37_N4
\alu|tmp[2]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|tmp[2]~4_combout\ = ((\mux_ulaA|m_out[2]~29_combout\ $ (\mux_ulaB|m_out[2]~50_combout\ $ (\alu|tmp[1]~3\)))) # (GND)
-- \alu|tmp[2]~5\ = CARRY((\mux_ulaA|m_out[2]~29_combout\ & ((!\alu|tmp[1]~3\) # (!\mux_ulaB|m_out[2]~50_combout\))) # (!\mux_ulaA|m_out[2]~29_combout\ & (!\mux_ulaB|m_out[2]~50_combout\ & !\alu|tmp[1]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mux_ulaA|m_out[2]~29_combout\,
	datab => \mux_ulaB|m_out[2]~50_combout\,
	datad => VCC,
	cin => \alu|tmp[1]~3\,
	combout => \alu|tmp[2]~4_combout\,
	cout => \alu|tmp[2]~5\);

-- Location: LCCOMB_X41_Y37_N12
\alu|tmp[6]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|tmp[6]~12_combout\ = ((\mux_ulaA|m_out[6]~17_combout\ $ (\mux_ulaB|m_out[6]~41_combout\ $ (\alu|tmp[5]~11\)))) # (GND)
-- \alu|tmp[6]~13\ = CARRY((\mux_ulaA|m_out[6]~17_combout\ & ((!\alu|tmp[5]~11\) # (!\mux_ulaB|m_out[6]~41_combout\))) # (!\mux_ulaA|m_out[6]~17_combout\ & (!\mux_ulaB|m_out[6]~41_combout\ & !\alu|tmp[5]~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mux_ulaA|m_out[6]~17_combout\,
	datab => \mux_ulaB|m_out[6]~41_combout\,
	datad => VCC,
	cin => \alu|tmp[5]~11\,
	combout => \alu|tmp[6]~12_combout\,
	cout => \alu|tmp[6]~13\);

-- Location: LCCOMB_X41_Y37_N14
\alu|tmp[7]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|tmp[7]~14_combout\ = (\mux_ulaB|m_out[7]~39_combout\ & ((\mux_ulaA|m_out[7]~26_combout\ & (!\alu|tmp[6]~13\)) # (!\mux_ulaA|m_out[7]~26_combout\ & ((\alu|tmp[6]~13\) # (GND))))) # (!\mux_ulaB|m_out[7]~39_combout\ & ((\mux_ulaA|m_out[7]~26_combout\ & 
-- (\alu|tmp[6]~13\ & VCC)) # (!\mux_ulaA|m_out[7]~26_combout\ & (!\alu|tmp[6]~13\))))
-- \alu|tmp[7]~15\ = CARRY((\mux_ulaB|m_out[7]~39_combout\ & ((!\alu|tmp[6]~13\) # (!\mux_ulaA|m_out[7]~26_combout\))) # (!\mux_ulaB|m_out[7]~39_combout\ & (!\mux_ulaA|m_out[7]~26_combout\ & !\alu|tmp[6]~13\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mux_ulaB|m_out[7]~39_combout\,
	datab => \mux_ulaA|m_out[7]~26_combout\,
	datad => VCC,
	cin => \alu|tmp[6]~13\,
	combout => \alu|tmp[7]~14_combout\,
	cout => \alu|tmp[7]~15\);

-- Location: LCCOMB_X41_Y37_N18
\alu|tmp[9]~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|tmp[9]~18_combout\ = (\mux_ulaA|m_out[9]~24_combout\ & ((\mux_ulaB|m_out[9]~35_combout\ & (!\alu|tmp[8]~17\)) # (!\mux_ulaB|m_out[9]~35_combout\ & (\alu|tmp[8]~17\ & VCC)))) # (!\mux_ulaA|m_out[9]~24_combout\ & ((\mux_ulaB|m_out[9]~35_combout\ & 
-- ((\alu|tmp[8]~17\) # (GND))) # (!\mux_ulaB|m_out[9]~35_combout\ & (!\alu|tmp[8]~17\))))
-- \alu|tmp[9]~19\ = CARRY((\mux_ulaA|m_out[9]~24_combout\ & (\mux_ulaB|m_out[9]~35_combout\ & !\alu|tmp[8]~17\)) # (!\mux_ulaA|m_out[9]~24_combout\ & ((\mux_ulaB|m_out[9]~35_combout\) # (!\alu|tmp[8]~17\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mux_ulaA|m_out[9]~24_combout\,
	datab => \mux_ulaB|m_out[9]~35_combout\,
	datad => VCC,
	cin => \alu|tmp[8]~17\,
	combout => \alu|tmp[9]~18_combout\,
	cout => \alu|tmp[9]~19\);

-- Location: LCCOMB_X41_Y37_N20
\alu|tmp[10]~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|tmp[10]~20_combout\ = ((\mux_ulaA|m_out[10]~23_combout\ $ (\mux_ulaB|m_out[10]~33_combout\ $ (\alu|tmp[9]~19\)))) # (GND)
-- \alu|tmp[10]~21\ = CARRY((\mux_ulaA|m_out[10]~23_combout\ & ((!\alu|tmp[9]~19\) # (!\mux_ulaB|m_out[10]~33_combout\))) # (!\mux_ulaA|m_out[10]~23_combout\ & (!\mux_ulaB|m_out[10]~33_combout\ & !\alu|tmp[9]~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mux_ulaA|m_out[10]~23_combout\,
	datab => \mux_ulaB|m_out[10]~33_combout\,
	datad => VCC,
	cin => \alu|tmp[9]~19\,
	combout => \alu|tmp[10]~20_combout\,
	cout => \alu|tmp[10]~21\);

-- Location: LCCOMB_X41_Y37_N22
\alu|tmp[11]~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|tmp[11]~22_combout\ = (\mux_ulaA|m_out[11]~22_combout\ & ((\mux_ulaB|m_out[11]~31_combout\ & (!\alu|tmp[10]~21\)) # (!\mux_ulaB|m_out[11]~31_combout\ & (\alu|tmp[10]~21\ & VCC)))) # (!\mux_ulaA|m_out[11]~22_combout\ & 
-- ((\mux_ulaB|m_out[11]~31_combout\ & ((\alu|tmp[10]~21\) # (GND))) # (!\mux_ulaB|m_out[11]~31_combout\ & (!\alu|tmp[10]~21\))))
-- \alu|tmp[11]~23\ = CARRY((\mux_ulaA|m_out[11]~22_combout\ & (\mux_ulaB|m_out[11]~31_combout\ & !\alu|tmp[10]~21\)) # (!\mux_ulaA|m_out[11]~22_combout\ & ((\mux_ulaB|m_out[11]~31_combout\) # (!\alu|tmp[10]~21\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mux_ulaA|m_out[11]~22_combout\,
	datab => \mux_ulaB|m_out[11]~31_combout\,
	datad => VCC,
	cin => \alu|tmp[10]~21\,
	combout => \alu|tmp[11]~22_combout\,
	cout => \alu|tmp[11]~23\);

-- Location: LCCOMB_X41_Y37_N26
\alu|tmp[13]~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|tmp[13]~26_combout\ = (\mux_ulaA|m_out[13]~20_combout\ & ((\mux_ulaB|m_out[13]~27_combout\ & (!\alu|tmp[12]~25\)) # (!\mux_ulaB|m_out[13]~27_combout\ & (\alu|tmp[12]~25\ & VCC)))) # (!\mux_ulaA|m_out[13]~20_combout\ & 
-- ((\mux_ulaB|m_out[13]~27_combout\ & ((\alu|tmp[12]~25\) # (GND))) # (!\mux_ulaB|m_out[13]~27_combout\ & (!\alu|tmp[12]~25\))))
-- \alu|tmp[13]~27\ = CARRY((\mux_ulaA|m_out[13]~20_combout\ & (\mux_ulaB|m_out[13]~27_combout\ & !\alu|tmp[12]~25\)) # (!\mux_ulaA|m_out[13]~20_combout\ & ((\mux_ulaB|m_out[13]~27_combout\) # (!\alu|tmp[12]~25\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mux_ulaA|m_out[13]~20_combout\,
	datab => \mux_ulaB|m_out[13]~27_combout\,
	datad => VCC,
	cin => \alu|tmp[12]~25\,
	combout => \alu|tmp[13]~26_combout\,
	cout => \alu|tmp[13]~27\);

-- Location: LCCOMB_X41_Y37_N28
\alu|tmp[14]~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|tmp[14]~28_combout\ = ((\mux_ulaB|m_out[14]~25_combout\ $ (\mux_ulaA|m_out[14]~19_combout\ $ (\alu|tmp[13]~27\)))) # (GND)
-- \alu|tmp[14]~29\ = CARRY((\mux_ulaB|m_out[14]~25_combout\ & (\mux_ulaA|m_out[14]~19_combout\ & !\alu|tmp[13]~27\)) # (!\mux_ulaB|m_out[14]~25_combout\ & ((\mux_ulaA|m_out[14]~19_combout\) # (!\alu|tmp[13]~27\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mux_ulaB|m_out[14]~25_combout\,
	datab => \mux_ulaA|m_out[14]~19_combout\,
	datad => VCC,
	cin => \alu|tmp[13]~27\,
	combout => \alu|tmp[14]~28_combout\,
	cout => \alu|tmp[14]~29\);

-- Location: LCCOMB_X41_Y37_N30
\alu|tmp[15]~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|tmp[15]~30_combout\ = (\mux_ulaA|m_out[15]~16_combout\ & ((\mux_ulaB|m_out[15]~23_combout\ & (!\alu|tmp[14]~29\)) # (!\mux_ulaB|m_out[15]~23_combout\ & (\alu|tmp[14]~29\ & VCC)))) # (!\mux_ulaA|m_out[15]~16_combout\ & 
-- ((\mux_ulaB|m_out[15]~23_combout\ & ((\alu|tmp[14]~29\) # (GND))) # (!\mux_ulaB|m_out[15]~23_combout\ & (!\alu|tmp[14]~29\))))
-- \alu|tmp[15]~31\ = CARRY((\mux_ulaA|m_out[15]~16_combout\ & (\mux_ulaB|m_out[15]~23_combout\ & !\alu|tmp[14]~29\)) # (!\mux_ulaA|m_out[15]~16_combout\ & ((\mux_ulaB|m_out[15]~23_combout\) # (!\alu|tmp[14]~29\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mux_ulaA|m_out[15]~16_combout\,
	datab => \mux_ulaB|m_out[15]~23_combout\,
	datad => VCC,
	cin => \alu|tmp[14]~29\,
	combout => \alu|tmp[15]~30_combout\,
	cout => \alu|tmp[15]~31\);

-- Location: LCCOMB_X41_Y36_N0
\alu|tmp[16]~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|tmp[16]~32_combout\ = ((\mux_ulaB|m_out[16]~21_combout\ $ (\mux_ulaA|m_out[16]~15_combout\ $ (\alu|tmp[15]~31\)))) # (GND)
-- \alu|tmp[16]~33\ = CARRY((\mux_ulaB|m_out[16]~21_combout\ & (\mux_ulaA|m_out[16]~15_combout\ & !\alu|tmp[15]~31\)) # (!\mux_ulaB|m_out[16]~21_combout\ & ((\mux_ulaA|m_out[16]~15_combout\) # (!\alu|tmp[15]~31\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mux_ulaB|m_out[16]~21_combout\,
	datab => \mux_ulaA|m_out[16]~15_combout\,
	datad => VCC,
	cin => \alu|tmp[15]~31\,
	combout => \alu|tmp[16]~32_combout\,
	cout => \alu|tmp[16]~33\);

-- Location: LCCOMB_X41_Y36_N2
\alu|tmp[17]~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|tmp[17]~34_combout\ = (\mux_ulaA|m_out[17]~14_combout\ & ((\mux_ulaB|m_out[17]~20_combout\ & (!\alu|tmp[16]~33\)) # (!\mux_ulaB|m_out[17]~20_combout\ & (\alu|tmp[16]~33\ & VCC)))) # (!\mux_ulaA|m_out[17]~14_combout\ & 
-- ((\mux_ulaB|m_out[17]~20_combout\ & ((\alu|tmp[16]~33\) # (GND))) # (!\mux_ulaB|m_out[17]~20_combout\ & (!\alu|tmp[16]~33\))))
-- \alu|tmp[17]~35\ = CARRY((\mux_ulaA|m_out[17]~14_combout\ & (\mux_ulaB|m_out[17]~20_combout\ & !\alu|tmp[16]~33\)) # (!\mux_ulaA|m_out[17]~14_combout\ & ((\mux_ulaB|m_out[17]~20_combout\) # (!\alu|tmp[16]~33\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mux_ulaA|m_out[17]~14_combout\,
	datab => \mux_ulaB|m_out[17]~20_combout\,
	datad => VCC,
	cin => \alu|tmp[16]~33\,
	combout => \alu|tmp[17]~34_combout\,
	cout => \alu|tmp[17]~35\);

-- Location: LCCOMB_X41_Y36_N4
\alu|tmp[18]~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|tmp[18]~36_combout\ = ((\mux_ulaA|m_out[18]~13_combout\ $ (\mux_ulaB|m_out[18]~17_combout\ $ (\alu|tmp[17]~35\)))) # (GND)
-- \alu|tmp[18]~37\ = CARRY((\mux_ulaA|m_out[18]~13_combout\ & ((!\alu|tmp[17]~35\) # (!\mux_ulaB|m_out[18]~17_combout\))) # (!\mux_ulaA|m_out[18]~13_combout\ & (!\mux_ulaB|m_out[18]~17_combout\ & !\alu|tmp[17]~35\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mux_ulaA|m_out[18]~13_combout\,
	datab => \mux_ulaB|m_out[18]~17_combout\,
	datad => VCC,
	cin => \alu|tmp[17]~35\,
	combout => \alu|tmp[18]~36_combout\,
	cout => \alu|tmp[18]~37\);

-- Location: LCCOMB_X39_Y32_N14
\alu|Mux12~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux12~4_combout\ = (\alu|Mux10~10_combout\ & (\alu|Mux29~9_combout\ & ((\alu|tmp[19]~38_combout\)))) # (!\alu|Mux10~10_combout\ & (((\alu|Mux12~3_combout\)) # (!\alu|Mux29~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100101010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|Mux10~10_combout\,
	datab => \alu|Mux29~9_combout\,
	datac => \alu|Mux12~3_combout\,
	datad => \alu|tmp[19]~38_combout\,
	combout => \alu|Mux12~4_combout\);

-- Location: LCCOMB_X41_Y38_N8
\alu|ShiftRight0~54\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftRight0~54_combout\ = (!\mux_ulaA|m_out[3]~28_combout\ & ((\mux_ulaA|m_out[2]~29_combout\ & ((\alu|ShiftRight1~48_combout\))) # (!\mux_ulaA|m_out[2]~29_combout\ & (\alu|ShiftRight1~49_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_ulaA|m_out[2]~29_combout\,
	datab => \mux_ulaA|m_out[3]~28_combout\,
	datac => \alu|ShiftRight1~49_combout\,
	datad => \alu|ShiftRight1~48_combout\,
	combout => \alu|ShiftRight0~54_combout\);

-- Location: LCCOMB_X41_Y38_N10
\alu|ShiftRight0~55\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftRight0~55_combout\ = (\mux_ulaA|m_out[3]~28_combout\ & ((\mux_ulaA|m_out[2]~29_combout\ & (\rgB|sr_out\(31))) # (!\mux_ulaA|m_out[2]~29_combout\ & ((\alu|ShiftRight1~52_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rgB|sr_out\(31),
	datab => \mux_ulaA|m_out[3]~28_combout\,
	datac => \alu|ShiftRight1~52_combout\,
	datad => \mux_ulaA|m_out[2]~29_combout\,
	combout => \alu|ShiftRight0~55_combout\);

-- Location: LCCOMB_X41_Y38_N28
\alu|ShiftRight0~56\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftRight0~56_combout\ = (!\mux_ulaB|Equal2~0_combout\ & ((\alu|ShiftRight0~54_combout\) # (\alu|ShiftRight0~55_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_ulaB|Equal2~0_combout\,
	datac => \alu|ShiftRight0~54_combout\,
	datad => \alu|ShiftRight0~55_combout\,
	combout => \alu|ShiftRight0~56_combout\);

-- Location: LCCOMB_X39_Y32_N0
\alu|Mux12~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux12~5_combout\ = (\alu|Mux29~5_combout\ & (((\alu|Mux12~4_combout\)))) # (!\alu|Mux29~5_combout\ & ((\alu|Mux12~4_combout\ & ((\alu|ShiftRight0~56_combout\))) # (!\alu|Mux12~4_combout\ & (\mux_ulaB|m_out[31]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_ulaB|m_out[31]~4_combout\,
	datab => \alu|Mux29~5_combout\,
	datac => \alu|Mux12~4_combout\,
	datad => \alu|ShiftRight0~56_combout\,
	combout => \alu|Mux12~5_combout\);

-- Location: LCCOMB_X39_Y32_N2
\alu|Mux12~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux12~6_combout\ = (\alu|Mux29~2_combout\ & ((\alu|Mux12~1_combout\) # ((\alu|Mux14~6_combout\ & \alu|Mux12~5_combout\)))) # (!\alu|Mux29~2_combout\ & (((\alu|Mux14~6_combout\ & \alu|Mux12~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|Mux29~2_combout\,
	datab => \alu|Mux12~1_combout\,
	datac => \alu|Mux14~6_combout\,
	datad => \alu|Mux12~5_combout\,
	combout => \alu|Mux12~6_combout\);

-- Location: LCCOMB_X39_Y32_N28
\alu|Mux12~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux12~7_combout\ = (\alu|Mux12~6_combout\) # ((\alu|Mux14~8_combout\ & (!\mux_ulaB|m_out[19]~16_combout\ & !\mux_ulaA|m_out[19]~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|Mux14~8_combout\,
	datab => \mux_ulaB|m_out[19]~16_combout\,
	datac => \mux_ulaA|m_out[19]~12_combout\,
	datad => \alu|Mux12~6_combout\,
	combout => \alu|Mux12~7_combout\);

-- Location: LCFF_X39_Y32_N29
\regULA|sr_out[19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \alu|Mux12~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regULA|sr_out\(19));

-- Location: LCCOMB_X38_Y31_N0
\breg_data_mux|m_out[19]~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \breg_data_mux|m_out[19]~21_combout\ = (\breg_data_mux|m_out[31]~9_combout\) # ((!\ctr_mips|pstate.ldreg_st~regout\ & \regULA|sr_out\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctr_mips|pstate.ldreg_st~regout\,
	datab => \regULA|sr_out\(19),
	datad => \breg_data_mux|m_out[31]~9_combout\,
	combout => \breg_data_mux|m_out[19]~21_combout\);

-- Location: LCCOMB_X42_Y32_N24
\bcoreg|regA[18]~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \bcoreg|regA[18]~13_combout\ = (!\bcoreg|Equal0~1_combout\ & ((\bcoreg|breg32~combout\ & (\bcoreg|breg32_rtl_1_bypass\(47))) # (!\bcoreg|breg32~combout\ & ((\bcoreg|breg32_rtl_0|auto_generated|ram_block1a18\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcoreg|Equal0~1_combout\,
	datab => \bcoreg|breg32_rtl_1_bypass\(47),
	datac => \bcoreg|breg32~combout\,
	datad => \bcoreg|breg32_rtl_0|auto_generated|ram_block1a18\,
	combout => \bcoreg|regA[18]~13_combout\);

-- Location: LCFF_X42_Y32_N25
\rgA|sr_out[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \bcoreg|regA[18]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rgA|sr_out\(18));

-- Location: LCCOMB_X41_Y31_N8
\alu|a32~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|a32~34_combout\ = \mux_ulaB|m_out[18]~17_combout\ $ (((\ctr_mips|WideOr0~combout\ & (\rgA|sr_out\(18))) # (!\ctr_mips|WideOr0~combout\ & ((\pc|sr_out\(18))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_ulaB|m_out[18]~17_combout\,
	datab => \rgA|sr_out\(18),
	datac => \pc|sr_out\(18),
	datad => \ctr_mips|WideOr0~combout\,
	combout => \alu|a32~34_combout\);

-- Location: LCCOMB_X40_Y37_N10
\alu|Mux13~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux13~0_combout\ = (\alu|Mux10~21_combout\ & ((\alu|Mux10~11_combout\ & ((\alu|a32~34_combout\))) # (!\alu|Mux10~11_combout\ & (\alu|ShiftLeft0~28_combout\)))) # (!\alu|Mux10~21_combout\ & (((\alu|Mux10~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|Mux10~21_combout\,
	datab => \alu|ShiftLeft0~28_combout\,
	datac => \alu|a32~34_combout\,
	datad => \alu|Mux10~11_combout\,
	combout => \alu|Mux13~0_combout\);

-- Location: LCCOMB_X40_Y37_N4
\alu|Mux13~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux13~1_combout\ = (\alu|Mux10~20_combout\ & (((\alu|Mux13~0_combout\)))) # (!\alu|Mux10~20_combout\ & ((\alu|Mux13~0_combout\ & ((\alu|ShiftLeft0~59_combout\))) # (!\alu|Mux13~0_combout\ & (\alu|ShiftLeft0~100_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|Mux10~20_combout\,
	datab => \alu|ShiftLeft0~100_combout\,
	datac => \alu|ShiftLeft0~59_combout\,
	datad => \alu|Mux13~0_combout\,
	combout => \alu|Mux13~1_combout\);

-- Location: LCCOMB_X43_Y38_N24
\alu|ShiftRight0~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftRight0~48_combout\ = (!\mux_ulaA|m_out[3]~28_combout\ & ((\mux_ulaA|m_out[2]~29_combout\ & ((\alu|ShiftRight1~30_combout\))) # (!\mux_ulaA|m_out[2]~29_combout\ & (\alu|ShiftRight1~33_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_ulaA|m_out[2]~29_combout\,
	datab => \mux_ulaA|m_out[3]~28_combout\,
	datac => \alu|ShiftRight1~33_combout\,
	datad => \alu|ShiftRight1~30_combout\,
	combout => \alu|ShiftRight0~48_combout\);

-- Location: LCCOMB_X40_Y36_N18
\alu|ShiftRight1~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftRight1~34_combout\ = (\mux_ulaA|m_out[0]~27_combout\ & ((\mux_ulaA|m_out[1]~30_combout\ & ((\rgB|sr_out\(29)))) # (!\mux_ulaA|m_out[1]~30_combout\ & (\rgB|sr_out\(27)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rgB|sr_out\(27),
	datab => \rgB|sr_out\(29),
	datac => \mux_ulaA|m_out[1]~30_combout\,
	datad => \mux_ulaA|m_out[0]~27_combout\,
	combout => \alu|ShiftRight1~34_combout\);

-- Location: LCCOMB_X40_Y36_N0
\alu|ShiftRight1~35\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftRight1~35_combout\ = (\alu|ShiftRight1~34_combout\) # ((!\mux_ulaA|m_out[0]~27_combout\ & \alu|ShiftRight1~23_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mux_ulaA|m_out[0]~27_combout\,
	datac => \alu|ShiftRight1~23_combout\,
	datad => \alu|ShiftRight1~34_combout\,
	combout => \alu|ShiftRight1~35_combout\);

-- Location: LCCOMB_X43_Y38_N30
\alu|ShiftRight0~49\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftRight0~49_combout\ = (\mux_ulaA|m_out[0]~27_combout\ & (((\rgB|sr_out\(31))))) # (!\mux_ulaA|m_out[0]~27_combout\ & ((\mux_ulaA|m_out[1]~30_combout\ & ((\rgB|sr_out\(31)))) # (!\mux_ulaA|m_out[1]~30_combout\ & (\rgB|sr_out\(30)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rgB|sr_out\(30),
	datab => \rgB|sr_out\(31),
	datac => \mux_ulaA|m_out[0]~27_combout\,
	datad => \mux_ulaA|m_out[1]~30_combout\,
	combout => \alu|ShiftRight0~49_combout\);

-- Location: LCCOMB_X43_Y38_N0
\alu|ShiftRight0~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftRight0~50_combout\ = (\mux_ulaA|m_out[2]~29_combout\ & ((\alu|ShiftRight0~49_combout\))) # (!\mux_ulaA|m_out[2]~29_combout\ & (\alu|ShiftRight1~35_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mux_ulaA|m_out[2]~29_combout\,
	datac => \alu|ShiftRight1~35_combout\,
	datad => \alu|ShiftRight0~49_combout\,
	combout => \alu|ShiftRight0~50_combout\);

-- Location: LCCOMB_X43_Y38_N10
\alu|ShiftRight0~51\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftRight0~51_combout\ = (!\mux_ulaB|Equal2~0_combout\ & ((\alu|ShiftRight0~48_combout\) # ((\mux_ulaA|m_out[3]~28_combout\ & \alu|ShiftRight0~50_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_ulaB|Equal2~0_combout\,
	datab => \mux_ulaA|m_out[3]~28_combout\,
	datac => \alu|ShiftRight0~48_combout\,
	datad => \alu|ShiftRight0~50_combout\,
	combout => \alu|ShiftRight0~51_combout\);

-- Location: LCCOMB_X41_Y35_N6
\alu|ShiftRight1~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftRight1~36_combout\ = (!\mux_ulaB|Equal2~0_combout\ & ((\mux_ulaA|m_out[0]~27_combout\ & (\rgB|sr_out\(31))) # (!\mux_ulaA|m_out[0]~27_combout\ & ((\rgB|sr_out\(30))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rgB|sr_out\(31),
	datab => \rgB|sr_out\(30),
	datac => \mux_ulaB|Equal2~0_combout\,
	datad => \mux_ulaA|m_out[0]~27_combout\,
	combout => \alu|ShiftRight1~36_combout\);

-- Location: LCCOMB_X40_Y36_N6
\alu|ShiftRight1~37\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftRight1~37_combout\ = (\mux_ulaA|m_out[2]~29_combout\ & (!\mux_ulaA|m_out[1]~30_combout\ & \alu|ShiftRight1~36_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_ulaA|m_out[2]~29_combout\,
	datac => \mux_ulaA|m_out[1]~30_combout\,
	datad => \alu|ShiftRight1~36_combout\,
	combout => \alu|ShiftRight1~37_combout\);

-- Location: LCCOMB_X40_Y36_N8
\alu|ShiftRight1~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftRight1~38_combout\ = (\alu|ShiftRight1~37_combout\) # ((!\mux_ulaA|m_out[2]~29_combout\ & (\alu|ShiftRight1~35_combout\ & !\mux_ulaB|Equal2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_ulaA|m_out[2]~29_combout\,
	datab => \alu|ShiftRight1~35_combout\,
	datac => \mux_ulaB|Equal2~0_combout\,
	datad => \alu|ShiftRight1~37_combout\,
	combout => \alu|ShiftRight1~38_combout\);

-- Location: LCCOMB_X40_Y34_N8
\alu|ShiftRight1~39\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftRight1~39_combout\ = (\mux_ulaA|m_out[3]~28_combout\ & ((\alu|ShiftRight1~38_combout\))) # (!\mux_ulaA|m_out[3]~28_combout\ & (\alu|ShiftRight0~52_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mux_ulaA|m_out[3]~28_combout\,
	datac => \alu|ShiftRight0~52_combout\,
	datad => \alu|ShiftRight1~38_combout\,
	combout => \alu|ShiftRight1~39_combout\);

-- Location: LCCOMB_X41_Y30_N0
\alu|Mux13~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux13~3_combout\ = (\alu|Mux13~2_combout\ & (((\alu|Add1~36_combout\)) # (!\alu|Mux10~9_combout\))) # (!\alu|Mux13~2_combout\ & (\alu|Mux10~9_combout\ & ((\alu|ShiftRight1~39_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|Mux13~2_combout\,
	datab => \alu|Mux10~9_combout\,
	datac => \alu|Add1~36_combout\,
	datad => \alu|ShiftRight1~39_combout\,
	combout => \alu|Mux13~3_combout\);

-- Location: LCCOMB_X41_Y30_N30
\alu|Mux13~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux13~4_combout\ = (\alu|Mux10~10_combout\ & (\alu|Mux29~9_combout\ & (\alu|tmp[18]~36_combout\))) # (!\alu|Mux10~10_combout\ & (((\alu|Mux13~3_combout\)) # (!\alu|Mux29~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010110010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|Mux10~10_combout\,
	datab => \alu|Mux29~9_combout\,
	datac => \alu|tmp[18]~36_combout\,
	datad => \alu|Mux13~3_combout\,
	combout => \alu|Mux13~4_combout\);

-- Location: LCCOMB_X41_Y30_N4
\alu|Mux13~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux13~5_combout\ = (\alu|Mux29~5_combout\ & (((\alu|Mux13~4_combout\)))) # (!\alu|Mux29~5_combout\ & ((\alu|Mux13~4_combout\ & ((\alu|ShiftRight0~51_combout\))) # (!\alu|Mux13~4_combout\ & (\mux_ulaB|m_out[31]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|Mux29~5_combout\,
	datab => \mux_ulaB|m_out[31]~4_combout\,
	datac => \alu|ShiftRight0~51_combout\,
	datad => \alu|Mux13~4_combout\,
	combout => \alu|Mux13~5_combout\);

-- Location: LCCOMB_X40_Y33_N26
\alu|Mux13~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux13~6_combout\ = (\alu|Mux14~6_combout\ & ((\alu|Mux13~5_combout\) # ((\alu|Mux29~2_combout\ & \alu|Mux13~1_combout\)))) # (!\alu|Mux14~6_combout\ & (\alu|Mux29~2_combout\ & (\alu|Mux13~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|Mux14~6_combout\,
	datab => \alu|Mux29~2_combout\,
	datac => \alu|Mux13~1_combout\,
	datad => \alu|Mux13~5_combout\,
	combout => \alu|Mux13~6_combout\);

-- Location: LCCOMB_X40_Y33_N28
\alu|Mux13~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux13~7_combout\ = (\alu|Mux13~6_combout\) # ((!\mux_ulaA|m_out[18]~13_combout\ & (!\mux_ulaB|m_out[18]~17_combout\ & \alu|Mux14~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_ulaA|m_out[18]~13_combout\,
	datab => \mux_ulaB|m_out[18]~17_combout\,
	datac => \alu|Mux14~8_combout\,
	datad => \alu|Mux13~6_combout\,
	combout => \alu|Mux13~7_combout\);

-- Location: LCFF_X40_Y33_N29
\regULA|sr_out[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \alu|Mux13~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regULA|sr_out\(18));

-- Location: LCCOMB_X38_Y31_N20
\breg_data_mux|m_out[18]~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \breg_data_mux|m_out[18]~22_combout\ = (\breg_data_mux|m_out[31]~9_combout\) # ((!\ctr_mips|pstate.ldreg_st~regout\ & \regULA|sr_out\(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctr_mips|pstate.ldreg_st~regout\,
	datab => \regULA|sr_out\(18),
	datad => \breg_data_mux|m_out[31]~9_combout\,
	combout => \breg_data_mux|m_out[18]~22_combout\);

-- Location: LCCOMB_X38_Y37_N24
\bcoreg|regB[16]~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \bcoreg|regB[16]~16_combout\ = (!\bcoreg|Equal1~1_combout\ & ((\bcoreg|breg32~45\ & ((\bcoreg|breg32_rtl_1_bypass\(43)))) # (!\bcoreg|breg32~45\ & (\bcoreg|breg32_rtl_1|auto_generated|ram_block1a16\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcoreg|breg32~45\,
	datab => \bcoreg|Equal1~1_combout\,
	datac => \bcoreg|breg32_rtl_1|auto_generated|ram_block1a16\,
	datad => \bcoreg|breg32_rtl_1_bypass\(43),
	combout => \bcoreg|regB[16]~16_combout\);

-- Location: LCFF_X38_Y37_N25
\rgB|sr_out[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \bcoreg|regB[16]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rgB|sr_out\(16));

-- Location: LCCOMB_X38_Y36_N8
\alu|ShiftLeft0~92\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftLeft0~92_combout\ = (\mux_ulaA|m_out[0]~27_combout\ & ((\mux_ulaB|m_out[2]~19_combout\ & (\rgB|sr_out\(16))) # (!\mux_ulaB|m_out[2]~19_combout\ & ((\ir|sr_out\(14))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_ulaB|m_out[2]~19_combout\,
	datab => \rgB|sr_out\(16),
	datac => \ir|sr_out\(14),
	datad => \mux_ulaA|m_out[0]~27_combout\,
	combout => \alu|ShiftLeft0~92_combout\);

-- Location: LCFF_X38_Y31_N21
\bcoreg|breg32_rtl_1_bypass[45]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \breg_data_mux|m_out[17]~23_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bcoreg|breg32_rtl_1_bypass\(45));

-- Location: LCCOMB_X38_Y37_N20
\bcoreg|regB[17]~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \bcoreg|regB[17]~15_combout\ = (!\bcoreg|Equal1~1_combout\ & ((\bcoreg|breg32~45\ & ((\bcoreg|breg32_rtl_1_bypass\(45)))) # (!\bcoreg|breg32~45\ & (\bcoreg|breg32_rtl_1|auto_generated|ram_block1a17\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcoreg|breg32_rtl_1|auto_generated|ram_block1a17\,
	datab => \bcoreg|Equal1~1_combout\,
	datac => \bcoreg|breg32_rtl_1_bypass\(45),
	datad => \bcoreg|breg32~45\,
	combout => \bcoreg|regB[17]~15_combout\);

-- Location: LCFF_X38_Y37_N21
\rgB|sr_out[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \bcoreg|regB[17]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rgB|sr_out\(17));

-- Location: LCCOMB_X38_Y36_N10
\alu|ShiftLeft0~93\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftLeft0~93_combout\ = (!\mux_ulaA|m_out[0]~27_combout\ & ((\mux_ulaB|m_out[2]~19_combout\ & ((\rgB|sr_out\(17)))) # (!\mux_ulaB|m_out[2]~19_combout\ & (\ir|sr_out\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_ulaB|m_out[2]~19_combout\,
	datab => \ir|sr_out\(15),
	datac => \rgB|sr_out\(17),
	datad => \mux_ulaA|m_out[0]~27_combout\,
	combout => \alu|ShiftLeft0~93_combout\);

-- Location: LCCOMB_X38_Y36_N12
\alu|ShiftLeft0~94\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftLeft0~94_combout\ = (\alu|ShiftLeft0~92_combout\ & (\mux_ulaB|m_out[2]~19_combout\ $ ((!\mux_ulaB|m_out[0]~18_combout\)))) # (!\alu|ShiftLeft0~92_combout\ & (\alu|ShiftLeft0~93_combout\ & (\mux_ulaB|m_out[2]~19_combout\ $ 
-- (!\mux_ulaB|m_out[0]~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_ulaB|m_out[2]~19_combout\,
	datab => \mux_ulaB|m_out[0]~18_combout\,
	datac => \alu|ShiftLeft0~92_combout\,
	datad => \alu|ShiftLeft0~93_combout\,
	combout => \alu|ShiftLeft0~94_combout\);

-- Location: LCCOMB_X38_Y32_N22
\alu|ShiftLeft0~91\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftLeft0~91_combout\ = (\mux_ulaA|m_out[1]~30_combout\ & ((\mux_ulaA|m_out[0]~27_combout\ & ((\mux_ulaB|m_out[14]~25_combout\))) # (!\mux_ulaA|m_out[0]~27_combout\ & (\mux_ulaB|m_out[15]~23_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_ulaA|m_out[0]~27_combout\,
	datab => \mux_ulaA|m_out[1]~30_combout\,
	datac => \mux_ulaB|m_out[15]~23_combout\,
	datad => \mux_ulaB|m_out[14]~25_combout\,
	combout => \alu|ShiftLeft0~91_combout\);

-- Location: LCCOMB_X38_Y32_N12
\alu|ShiftLeft0~95\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftLeft0~95_combout\ = (\alu|ShiftLeft0~91_combout\) # ((!\mux_ulaA|m_out[1]~30_combout\ & \alu|ShiftLeft0~94_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mux_ulaA|m_out[1]~30_combout\,
	datac => \alu|ShiftLeft0~94_combout\,
	datad => \alu|ShiftLeft0~91_combout\,
	combout => \alu|ShiftLeft0~95_combout\);

-- Location: LCCOMB_X38_Y32_N18
\alu|ShiftLeft0~96\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftLeft0~96_combout\ = (\mux_ulaA|m_out[2]~29_combout\ & ((\alu|ShiftLeft0~70_combout\) # ((\alu|ShiftLeft0~69_combout\)))) # (!\mux_ulaA|m_out[2]~29_combout\ & (((\alu|ShiftLeft0~95_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_ulaA|m_out[2]~29_combout\,
	datab => \alu|ShiftLeft0~70_combout\,
	datac => \alu|ShiftLeft0~69_combout\,
	datad => \alu|ShiftLeft0~95_combout\,
	combout => \alu|ShiftLeft0~96_combout\);

-- Location: LCCOMB_X42_Y32_N26
\pc|sr_out[17]~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \pc|sr_out[17]~13_combout\ = (\ctr_mips|pstate.branch_ex_st~regout\ & (\regULA|sr_out\(17))) # (!\ctr_mips|pstate.branch_ex_st~regout\ & ((\alu|Mux14~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regULA|sr_out\(17),
	datab => \ctr_mips|pstate.branch_ex_st~regout\,
	datad => \alu|Mux14~9_combout\,
	combout => \pc|sr_out[17]~13_combout\);

-- Location: LCFF_X42_Y32_N27
\pc|sr_out[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \pc|sr_out[17]~13_combout\,
	sdata => \ir|sr_out\(15),
	sclr => \rst~combout\,
	sload => \ctr_mips|pstate.jump_ex_st~regout\,
	ena => \pc|sr_out[0]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pc|sr_out\(17));

-- Location: LCCOMB_X38_Y32_N20
\alu|a32~61\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|a32~61_combout\ = \mux_ulaB|m_out[17]~20_combout\ $ (((\ctr_mips|WideOr0~combout\ & (\rgA|sr_out\(17))) # (!\ctr_mips|WideOr0~combout\ & ((\pc|sr_out\(17))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110001101101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rgA|sr_out\(17),
	datab => \mux_ulaB|m_out[17]~20_combout\,
	datac => \ctr_mips|WideOr0~combout\,
	datad => \pc|sr_out\(17),
	combout => \alu|a32~61_combout\);

-- Location: LCCOMB_X38_Y32_N28
\alu|Mux14~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux14~4_combout\ = (\alu|Mux10~11_combout\ & (((\alu|a32~61_combout\) # (!\alu|Mux10~21_combout\)))) # (!\alu|Mux10~11_combout\ & (\alu|ShiftLeft0~23_combout\ & ((\alu|Mux10~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|ShiftLeft0~23_combout\,
	datab => \alu|Mux10~11_combout\,
	datac => \alu|a32~61_combout\,
	datad => \alu|Mux10~21_combout\,
	combout => \alu|Mux14~4_combout\);

-- Location: LCCOMB_X38_Y32_N2
\alu|Mux14~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux14~5_combout\ = (\alu|Mux10~20_combout\ & (((\alu|Mux14~4_combout\)))) # (!\alu|Mux10~20_combout\ & ((\alu|Mux14~4_combout\ & ((\alu|ShiftLeft0~55_combout\))) # (!\alu|Mux14~4_combout\ & (\alu|ShiftLeft0~96_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|Mux10~20_combout\,
	datab => \alu|ShiftLeft0~96_combout\,
	datac => \alu|ShiftLeft0~55_combout\,
	datad => \alu|Mux14~4_combout\,
	combout => \alu|Mux14~5_combout\);

-- Location: LCCOMB_X43_Y38_N16
\alu|ShiftRight0~43\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftRight0~43_combout\ = (\mux_ulaA|m_out[0]~27_combout\ & (\alu|ShiftRight0~42_combout\)) # (!\mux_ulaA|m_out[0]~27_combout\ & ((\alu|ShiftRight0~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_ulaA|m_out[0]~27_combout\,
	datac => \alu|ShiftRight0~42_combout\,
	datad => \alu|ShiftRight0~19_combout\,
	combout => \alu|ShiftRight0~43_combout\);

-- Location: LCCOMB_X39_Y37_N8
\alu|ShiftRight0~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftRight0~40_combout\ = (\mux_ulaA|m_out[0]~27_combout\ & (\rgB|sr_out\(20))) # (!\mux_ulaA|m_out[0]~27_combout\ & ((\rgB|sr_out\(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_ulaA|m_out[0]~27_combout\,
	datac => \rgB|sr_out\(20),
	datad => \rgB|sr_out\(19),
	combout => \alu|ShiftRight0~40_combout\);

-- Location: LCCOMB_X39_Y37_N30
\alu|ShiftRight0~39\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftRight0~39_combout\ = (!\mux_ulaA|m_out[1]~30_combout\ & ((\mux_ulaA|m_out[0]~27_combout\ & (\mux_ulaB|m_out[18]~17_combout\)) # (!\mux_ulaA|m_out[0]~27_combout\ & ((\mux_ulaB|m_out[17]~20_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_ulaA|m_out[1]~30_combout\,
	datab => \mux_ulaB|m_out[18]~17_combout\,
	datac => \mux_ulaA|m_out[0]~27_combout\,
	datad => \mux_ulaB|m_out[17]~20_combout\,
	combout => \alu|ShiftRight0~39_combout\);

-- Location: LCCOMB_X39_Y37_N18
\alu|ShiftRight0~41\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftRight0~41_combout\ = (\alu|ShiftRight0~39_combout\) # ((\mux_ulaA|m_out[1]~30_combout\ & (!\mux_ulaB|Equal2~0_combout\ & \alu|ShiftRight0~40_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_ulaA|m_out[1]~30_combout\,
	datab => \mux_ulaB|Equal2~0_combout\,
	datac => \alu|ShiftRight0~40_combout\,
	datad => \alu|ShiftRight0~39_combout\,
	combout => \alu|ShiftRight0~41_combout\);

-- Location: LCCOMB_X39_Y37_N28
\alu|Mux22~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux22~3_combout\ = (\mux_ulaA|m_out[2]~29_combout\ & (\alu|ShiftRight0~43_combout\ & (!\mux_ulaB|Equal2~0_combout\))) # (!\mux_ulaA|m_out[2]~29_combout\ & (((\alu|ShiftRight0~41_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_ulaA|m_out[2]~29_combout\,
	datab => \alu|ShiftRight0~43_combout\,
	datac => \mux_ulaB|Equal2~0_combout\,
	datad => \alu|ShiftRight0~41_combout\,
	combout => \alu|Mux22~3_combout\);

-- Location: LCCOMB_X39_Y37_N24
\alu|ShiftRight0~47\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftRight0~47_combout\ = (\mux_ulaA|m_out[3]~28_combout\ & (!\mux_ulaB|Equal2~0_combout\ & (\alu|ShiftRight0~46_combout\))) # (!\mux_ulaA|m_out[3]~28_combout\ & (((\alu|Mux22~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_ulaB|Equal2~0_combout\,
	datab => \alu|ShiftRight0~46_combout\,
	datac => \mux_ulaA|m_out[3]~28_combout\,
	datad => \alu|Mux22~3_combout\,
	combout => \alu|ShiftRight0~47_combout\);

-- Location: LCCOMB_X43_Y34_N26
\alu|Mux10~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux10~10_combout\ = (\alu|Mux10~8_combout\ & ((\actr|alu_ctr[1]~13_combout\) # ((!\alu|ShiftLeft0~21_combout\) # (!\actr|alu_ctr[1]~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \actr|alu_ctr[1]~13_combout\,
	datab => \actr|alu_ctr[1]~24_combout\,
	datac => \alu|Mux10~8_combout\,
	datad => \alu|ShiftLeft0~21_combout\,
	combout => \alu|Mux10~10_combout\);

-- Location: LCCOMB_X42_Y32_N4
\bcoreg|regA[17]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \bcoreg|regA[17]~14_combout\ = (!\bcoreg|Equal0~1_combout\ & ((\bcoreg|breg32~combout\ & ((\bcoreg|breg32_rtl_1_bypass\(45)))) # (!\bcoreg|breg32~combout\ & (\bcoreg|breg32_rtl_0|auto_generated|ram_block1a17\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcoreg|Equal0~1_combout\,
	datab => \bcoreg|breg32_rtl_0|auto_generated|ram_block1a17\,
	datac => \bcoreg|breg32_rtl_1_bypass\(45),
	datad => \bcoreg|breg32~combout\,
	combout => \bcoreg|regA[17]~14_combout\);

-- Location: LCFF_X42_Y32_N5
\rgA|sr_out[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \bcoreg|regA[17]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rgA|sr_out\(17));

-- Location: LCCOMB_X42_Y32_N10
\mux_ulaA|m_out[17]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux_ulaA|m_out[17]~14_combout\ = (\ctr_mips|WideOr0~combout\ & ((\rgA|sr_out\(17)))) # (!\ctr_mips|WideOr0~combout\ & (\pc|sr_out\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \pc|sr_out\(17),
	datac => \rgA|sr_out\(17),
	datad => \ctr_mips|WideOr0~combout\,
	combout => \mux_ulaA|m_out[17]~14_combout\);

-- Location: LCCOMB_X39_Y37_N22
\alu|Mux14~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux14~0_combout\ = (\actr|alu_ctr[1]~14_combout\ & ((\actr|alu_ctr[0]~16_combout\ & ((\mux_ulaA|m_out[17]~14_combout\) # (\mux_ulaB|m_out[17]~20_combout\))) # (!\actr|alu_ctr[0]~16_combout\ & (\mux_ulaA|m_out[17]~14_combout\ & 
-- \mux_ulaB|m_out[17]~20_combout\)))) # (!\actr|alu_ctr[1]~14_combout\ & (!\actr|alu_ctr[0]~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \actr|alu_ctr[1]~14_combout\,
	datab => \actr|alu_ctr[0]~16_combout\,
	datac => \mux_ulaA|m_out[17]~14_combout\,
	datad => \mux_ulaB|m_out[17]~20_combout\,
	combout => \alu|Mux14~0_combout\);

-- Location: LCCOMB_X43_Y38_N22
\alu|ShiftRight1~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftRight1~26_combout\ = (!\mux_ulaB|Equal2~0_combout\ & ((\mux_ulaA|m_out[3]~28_combout\ & ((\alu|ShiftRight0~44_combout\))) # (!\mux_ulaA|m_out[3]~28_combout\ & (\alu|ShiftRight0~43_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_ulaB|Equal2~0_combout\,
	datab => \mux_ulaA|m_out[3]~28_combout\,
	datac => \alu|ShiftRight0~43_combout\,
	datad => \alu|ShiftRight0~44_combout\,
	combout => \alu|ShiftRight1~26_combout\);

-- Location: LCCOMB_X39_Y37_N10
\alu|ShiftRight1~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftRight1~27_combout\ = (\mux_ulaA|m_out[2]~29_combout\ & ((\mux_ulaA|m_out[3]~28_combout\ & (\alu|ShiftRight1~25_combout\)) # (!\mux_ulaA|m_out[3]~28_combout\ & ((\alu|ShiftRight1~26_combout\))))) # (!\mux_ulaA|m_out[2]~29_combout\ & 
-- (\mux_ulaA|m_out[3]~28_combout\ & ((\alu|ShiftRight1~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_ulaA|m_out[2]~29_combout\,
	datab => \mux_ulaA|m_out[3]~28_combout\,
	datac => \alu|ShiftRight1~25_combout\,
	datad => \alu|ShiftRight1~26_combout\,
	combout => \alu|ShiftRight1~27_combout\);

-- Location: LCCOMB_X39_Y37_N4
\alu|ShiftRight1~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftRight1~28_combout\ = (\alu|ShiftRight1~27_combout\) # ((\alu|ShiftRight0~41_combout\ & \alu|ShiftLeft0~140_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \alu|ShiftRight0~41_combout\,
	datac => \alu|ShiftLeft0~140_combout\,
	datad => \alu|ShiftRight1~27_combout\,
	combout => \alu|ShiftRight1~28_combout\);

-- Location: LCCOMB_X40_Y37_N28
\alu|Mux14~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux14~1_combout\ = (\alu|Mux10~9_combout\ & ((\alu|Mux14~0_combout\ & ((\alu|Add1~34_combout\))) # (!\alu|Mux14~0_combout\ & (\alu|ShiftRight1~28_combout\)))) # (!\alu|Mux10~9_combout\ & (\alu|Mux14~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|Mux10~9_combout\,
	datab => \alu|Mux14~0_combout\,
	datac => \alu|ShiftRight1~28_combout\,
	datad => \alu|Add1~34_combout\,
	combout => \alu|Mux14~1_combout\);

-- Location: LCCOMB_X39_Y37_N12
\alu|Mux14~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux14~2_combout\ = (\alu|Mux29~9_combout\ & ((\alu|Mux10~10_combout\ & (\alu|tmp[17]~34_combout\)) # (!\alu|Mux10~10_combout\ & ((\alu|Mux14~1_combout\))))) # (!\alu|Mux29~9_combout\ & (!\alu|Mux10~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|Mux29~9_combout\,
	datab => \alu|Mux10~10_combout\,
	datac => \alu|tmp[17]~34_combout\,
	datad => \alu|Mux14~1_combout\,
	combout => \alu|Mux14~2_combout\);

-- Location: LCCOMB_X39_Y37_N26
\alu|Mux14~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux14~3_combout\ = (\alu|Mux29~5_combout\ & (((\alu|Mux14~2_combout\)))) # (!\alu|Mux29~5_combout\ & ((\alu|Mux14~2_combout\ & ((\alu|ShiftRight0~47_combout\))) # (!\alu|Mux14~2_combout\ & (\mux_ulaB|m_out[31]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|Mux29~5_combout\,
	datab => \mux_ulaB|m_out[31]~4_combout\,
	datac => \alu|ShiftRight0~47_combout\,
	datad => \alu|Mux14~2_combout\,
	combout => \alu|Mux14~3_combout\);

-- Location: LCCOMB_X40_Y33_N2
\alu|Mux14~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux14~7_combout\ = (\alu|Mux14~6_combout\ & ((\alu|Mux14~3_combout\) # ((\alu|Mux29~2_combout\ & \alu|Mux14~5_combout\)))) # (!\alu|Mux14~6_combout\ & (\alu|Mux29~2_combout\ & (\alu|Mux14~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|Mux14~6_combout\,
	datab => \alu|Mux29~2_combout\,
	datac => \alu|Mux14~5_combout\,
	datad => \alu|Mux14~3_combout\,
	combout => \alu|Mux14~7_combout\);

-- Location: LCCOMB_X40_Y33_N4
\alu|Mux14~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux14~9_combout\ = (\alu|Mux14~7_combout\) # ((!\mux_ulaA|m_out[17]~14_combout\ & (!\mux_ulaB|m_out[17]~20_combout\ & \alu|Mux14~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_ulaA|m_out[17]~14_combout\,
	datab => \mux_ulaB|m_out[17]~20_combout\,
	datac => \alu|Mux14~8_combout\,
	datad => \alu|Mux14~7_combout\,
	combout => \alu|Mux14~9_combout\);

-- Location: LCFF_X40_Y33_N5
\regULA|sr_out[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \alu|Mux14~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regULA|sr_out\(17));

-- Location: LCCOMB_X38_Y31_N8
\breg_data_mux|m_out[17]~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \breg_data_mux|m_out[17]~23_combout\ = (\breg_data_mux|m_out[31]~9_combout\) # ((!\ctr_mips|pstate.ldreg_st~regout\ & \regULA|sr_out\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \breg_data_mux|m_out[31]~9_combout\,
	datab => \ctr_mips|pstate.ldreg_st~regout\,
	datad => \regULA|sr_out\(17),
	combout => \breg_data_mux|m_out[17]~23_combout\);

-- Location: LCCOMB_X42_Y32_N8
\bcoreg|regA[16]~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \bcoreg|regA[16]~15_combout\ = (!\bcoreg|Equal0~1_combout\ & ((\bcoreg|breg32~combout\ & (\bcoreg|breg32_rtl_1_bypass\(43))) # (!\bcoreg|breg32~combout\ & ((\bcoreg|breg32_rtl_0|auto_generated|ram_block1a16\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcoreg|Equal0~1_combout\,
	datab => \bcoreg|breg32_rtl_1_bypass\(43),
	datac => \bcoreg|breg32~combout\,
	datad => \bcoreg|breg32_rtl_0|auto_generated|ram_block1a16\,
	combout => \bcoreg|regA[16]~15_combout\);

-- Location: LCFF_X42_Y32_N9
\rgA|sr_out[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \bcoreg|regA[16]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rgA|sr_out\(16));

-- Location: LCCOMB_X42_Y32_N14
\mux_ulaA|m_out[16]~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux_ulaA|m_out[16]~15_combout\ = (\ctr_mips|WideOr0~combout\ & ((\rgA|sr_out\(16)))) # (!\ctr_mips|WideOr0~combout\ & (\pc|sr_out\(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|sr_out\(16),
	datab => \rgA|sr_out\(16),
	datad => \ctr_mips|WideOr0~combout\,
	combout => \mux_ulaA|m_out[16]~15_combout\);

-- Location: LCCOMB_X40_Y38_N6
\alu|ShiftRight0~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftRight0~17_combout\ = (\mux_ulaA|m_out[0]~27_combout\ & ((\rgB|sr_out\(19)))) # (!\mux_ulaA|m_out[0]~27_combout\ & (\rgB|sr_out\(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rgB|sr_out\(18),
	datac => \rgB|sr_out\(19),
	datad => \mux_ulaA|m_out[0]~27_combout\,
	combout => \alu|ShiftRight0~17_combout\);

-- Location: LCCOMB_X41_Y38_N12
\alu|ShiftRight0~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftRight0~18_combout\ = (\mux_ulaA|m_out[1]~30_combout\ & (!\mux_ulaB|Equal2~0_combout\ & (\alu|ShiftRight0~17_combout\))) # (!\mux_ulaA|m_out[1]~30_combout\ & (((\alu|ShiftRight1~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_ulaB|Equal2~0_combout\,
	datab => \mux_ulaA|m_out[1]~30_combout\,
	datac => \alu|ShiftRight0~17_combout\,
	datad => \alu|ShiftRight1~11_combout\,
	combout => \alu|ShiftRight0~18_combout\);

-- Location: LCCOMB_X42_Y38_N18
\alu|Mux23~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux23~2_combout\ = (\mux_ulaA|m_out[2]~29_combout\ & (!\mux_ulaB|Equal2~0_combout\ & (\alu|ShiftRight0~20_combout\))) # (!\mux_ulaA|m_out[2]~29_combout\ & (((\alu|ShiftRight0~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_ulaA|m_out[2]~29_combout\,
	datab => \mux_ulaB|Equal2~0_combout\,
	datac => \alu|ShiftRight0~20_combout\,
	datad => \alu|ShiftRight0~18_combout\,
	combout => \alu|Mux23~2_combout\);

-- Location: LCCOMB_X43_Y30_N0
\alu|ShiftRight0~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftRight0~21_combout\ = (\mux_ulaA|m_out[3]~28_combout\ & ((\alu|ShiftRight0~16_combout\))) # (!\mux_ulaA|m_out[3]~28_combout\ & (\alu|Mux23~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \alu|Mux23~2_combout\,
	datac => \mux_ulaA|m_out[3]~28_combout\,
	datad => \alu|ShiftRight0~16_combout\,
	combout => \alu|ShiftRight0~21_combout\);

-- Location: LCCOMB_X43_Y30_N4
\alu|Mux15~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux15~4_combout\ = (\alu|ShiftLeft0~21_combout\ & (!\actr|alu_ctr[3]~21_combout\ & \alu|ShiftRight0~21_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \alu|ShiftLeft0~21_combout\,
	datac => \actr|alu_ctr[3]~21_combout\,
	datad => \alu|ShiftRight0~21_combout\,
	combout => \alu|Mux15~4_combout\);

-- Location: LCCOMB_X44_Y34_N22
\alu|Mux15~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux15~7_combout\ = (\actr|alu_ctr[0]~16_combout\ & (((\alu|Mux15~4_combout\)))) # (!\actr|alu_ctr[0]~16_combout\ & (!\actr|alu_ctr[3]~21_combout\ & (\alu|Add1~32_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \actr|alu_ctr[3]~21_combout\,
	datab => \actr|alu_ctr[0]~16_combout\,
	datac => \alu|Add1~32_combout\,
	datad => \alu|Mux15~4_combout\,
	combout => \alu|Mux15~7_combout\);

-- Location: LCCOMB_X42_Y32_N22
\alu|a32~60\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|a32~60_combout\ = \mux_ulaB|m_out[16]~21_combout\ $ (((\ctr_mips|WideOr0~combout\ & ((\rgA|sr_out\(16)))) # (!\ctr_mips|WideOr0~combout\ & (\pc|sr_out\(16)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011010111001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|sr_out\(16),
	datab => \rgA|sr_out\(16),
	datac => \ctr_mips|WideOr0~combout\,
	datad => \mux_ulaB|m_out[16]~21_combout\,
	combout => \alu|a32~60_combout\);

-- Location: LCCOMB_X44_Y34_N24
\alu|Mux15~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux15~0_combout\ = (\actr|alu_ctr[3]~21_combout\ & (((\actr|alu_ctr[0]~16_combout\)))) # (!\actr|alu_ctr[3]~21_combout\ & ((\mux_ulaB|m_out[16]~21_combout\ & ((\mux_ulaA|m_out[16]~15_combout\) # (\actr|alu_ctr[0]~16_combout\))) # 
-- (!\mux_ulaB|m_out[16]~21_combout\ & (\mux_ulaA|m_out[16]~15_combout\ & \actr|alu_ctr[0]~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \actr|alu_ctr[3]~21_combout\,
	datab => \mux_ulaB|m_out[16]~21_combout\,
	datac => \mux_ulaA|m_out[16]~15_combout\,
	datad => \actr|alu_ctr[0]~16_combout\,
	combout => \alu|Mux15~0_combout\);

-- Location: LCCOMB_X45_Y34_N26
\alu|ShiftLeft0~89\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftLeft0~89_combout\ = (\alu|ShiftRight0~10_combout\ & \mux_ulaB|m_out[0]~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \alu|ShiftRight0~10_combout\,
	datad => \mux_ulaB|m_out[0]~3_combout\,
	combout => \alu|ShiftLeft0~89_combout\);

-- Location: LCCOMB_X44_Y37_N28
\alu|ShiftLeft0~49\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftLeft0~49_combout\ = (\mux_ulaA|m_out[0]~27_combout\ & (((\mux_ulaA|m_out[1]~30_combout\)))) # (!\mux_ulaA|m_out[0]~27_combout\ & ((\mux_ulaA|m_out[1]~30_combout\ & (\mux_ulaB|m_out[6]~41_combout\)) # (!\mux_ulaA|m_out[1]~30_combout\ & 
-- ((\mux_ulaB|m_out[8]~37_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_ulaB|m_out[6]~41_combout\,
	datab => \mux_ulaA|m_out[0]~27_combout\,
	datac => \mux_ulaB|m_out[8]~37_combout\,
	datad => \mux_ulaA|m_out[1]~30_combout\,
	combout => \alu|ShiftLeft0~49_combout\);

-- Location: LCCOMB_X44_Y37_N6
\alu|ShiftLeft0~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftLeft0~50_combout\ = (\mux_ulaA|m_out[0]~27_combout\ & ((\alu|ShiftLeft0~49_combout\ & (\mux_ulaB|m_out[5]~43_combout\)) # (!\alu|ShiftLeft0~49_combout\ & ((\mux_ulaB|m_out[7]~39_combout\))))) # (!\mux_ulaA|m_out[0]~27_combout\ & 
-- (((\alu|ShiftLeft0~49_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_ulaB|m_out[5]~43_combout\,
	datab => \mux_ulaB|m_out[7]~39_combout\,
	datac => \mux_ulaA|m_out[0]~27_combout\,
	datad => \alu|ShiftLeft0~49_combout\,
	combout => \alu|ShiftLeft0~50_combout\);

-- Location: LCCOMB_X45_Y34_N14
\alu|ShiftLeft0~87\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftLeft0~87_combout\ = (\mux_ulaA|m_out[2]~29_combout\ & (\alu|ShiftLeft0~32_combout\)) # (!\mux_ulaA|m_out[2]~29_combout\ & ((\alu|ShiftLeft0~50_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_ulaA|m_out[2]~29_combout\,
	datac => \alu|ShiftLeft0~32_combout\,
	datad => \alu|ShiftLeft0~50_combout\,
	combout => \alu|ShiftLeft0~87_combout\);

-- Location: LCCOMB_X45_Y34_N20
\alu|ShiftLeft0~88\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftLeft0~88_combout\ = (\mux_ulaA|m_out[3]~28_combout\ & (\alu|ShiftLeft0~87_combout\)) # (!\mux_ulaA|m_out[3]~28_combout\ & ((\alu|ShiftLeft0~86_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mux_ulaA|m_out[3]~28_combout\,
	datac => \alu|ShiftLeft0~87_combout\,
	datad => \alu|ShiftLeft0~86_combout\,
	combout => \alu|ShiftLeft0~88_combout\);

-- Location: LCCOMB_X44_Y34_N30
\alu|ShiftLeft0~90\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftLeft0~90_combout\ = (!\alu|ShiftLeft0~25_combout\ & ((\mux_ulaA|m_out[4]~0_combout\ & (\alu|ShiftLeft0~89_combout\)) # (!\mux_ulaA|m_out[4]~0_combout\ & ((\alu|ShiftLeft0~88_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|ShiftLeft0~25_combout\,
	datab => \mux_ulaA|m_out[4]~0_combout\,
	datac => \alu|ShiftLeft0~89_combout\,
	datad => \alu|ShiftLeft0~88_combout\,
	combout => \alu|ShiftLeft0~90_combout\);

-- Location: LCCOMB_X44_Y34_N14
\alu|Mux15~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux15~1_combout\ = (\actr|alu_ctr[3]~21_combout\ & ((\alu|Mux15~0_combout\ & (\alu|a32~60_combout\)) # (!\alu|Mux15~0_combout\ & ((\alu|ShiftLeft0~90_combout\))))) # (!\actr|alu_ctr[3]~21_combout\ & (((\alu|Mux15~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \actr|alu_ctr[3]~21_combout\,
	datab => \alu|a32~60_combout\,
	datac => \alu|Mux15~0_combout\,
	datad => \alu|ShiftLeft0~90_combout\,
	combout => \alu|Mux15~1_combout\);

-- Location: LCCOMB_X45_Y34_N12
\alu|Mux15~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux15~2_combout\ = (!\actr|alu_ctr[0]~16_combout\ & (!\actr|alu_ctr[3]~21_combout\ & \alu|tmp[16]~32_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \actr|alu_ctr[0]~16_combout\,
	datab => \actr|alu_ctr[3]~21_combout\,
	datad => \alu|tmp[16]~32_combout\,
	combout => \alu|Mux15~2_combout\);

-- Location: LCCOMB_X44_Y34_N4
\alu|Mux15~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux15~3_combout\ = (!\mux_ulaA|m_out[16]~15_combout\ & (\actr|alu_ctr[3]~21_combout\ & !\mux_ulaB|m_out[16]~21_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mux_ulaA|m_out[16]~15_combout\,
	datac => \actr|alu_ctr[3]~21_combout\,
	datad => \mux_ulaB|m_out[16]~21_combout\,
	combout => \alu|Mux15~3_combout\);

-- Location: LCCOMB_X44_Y36_N26
\alu|Mux30~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux30~15_combout\ = \actr|alu_ctr[0]~16_combout\ $ (\actr|alu_ctr[3]~21_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \actr|alu_ctr[0]~16_combout\,
	datad => \actr|alu_ctr[3]~21_combout\,
	combout => \alu|Mux30~15_combout\);

-- Location: LCCOMB_X44_Y34_N18
\alu|Mux15~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux15~5_combout\ = (\alu|Mux30~15_combout\ & ((\alu|Mux16~5_combout\) # ((\alu|Mux15~3_combout\) # (\alu|Mux15~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|Mux16~5_combout\,
	datab => \alu|Mux15~3_combout\,
	datac => \alu|Mux30~15_combout\,
	datad => \alu|Mux15~4_combout\,
	combout => \alu|Mux15~5_combout\);

-- Location: LCCOMB_X44_Y34_N0
\alu|Mux15~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux15~6_combout\ = (\alu|Mux10~8_combout\ & ((\actr|alu_ctr[1]~14_combout\ & ((\alu|Mux15~5_combout\))) # (!\actr|alu_ctr[1]~14_combout\ & (\alu|Mux15~2_combout\)))) # (!\alu|Mux10~8_combout\ & (!\actr|alu_ctr[1]~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100100110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|Mux10~8_combout\,
	datab => \actr|alu_ctr[1]~14_combout\,
	datac => \alu|Mux15~2_combout\,
	datad => \alu|Mux15~5_combout\,
	combout => \alu|Mux15~6_combout\);

-- Location: LCCOMB_X44_Y34_N20
\alu|Mux15~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux15~8_combout\ = (\alu|Mux10~8_combout\ & (((\alu|Mux15~6_combout\)))) # (!\alu|Mux10~8_combout\ & ((\alu|Mux15~6_combout\ & (\alu|Mux15~7_combout\)) # (!\alu|Mux15~6_combout\ & ((\alu|Mux15~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|Mux10~8_combout\,
	datab => \alu|Mux15~7_combout\,
	datac => \alu|Mux15~1_combout\,
	datad => \alu|Mux15~6_combout\,
	combout => \alu|Mux15~8_combout\);

-- Location: LCFF_X44_Y34_N21
\regULA|sr_out[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \alu|Mux15~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regULA|sr_out\(16));

-- Location: LCCOMB_X38_Y30_N8
\breg_data_mux|m_out[16]~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \breg_data_mux|m_out[16]~24_combout\ = (\breg_data_mux|m_out[31]~9_combout\) # ((!\ctr_mips|pstate.ldreg_st~regout\ & \regULA|sr_out\(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ctr_mips|pstate.ldreg_st~regout\,
	datac => \breg_data_mux|m_out[31]~9_combout\,
	datad => \regULA|sr_out\(16),
	combout => \breg_data_mux|m_out[16]~24_combout\);

-- Location: LCCOMB_X43_Y35_N0
\bcoreg|regA[14]~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \bcoreg|regA[14]~19_combout\ = (!\bcoreg|Equal0~1_combout\ & ((\bcoreg|breg32~combout\ & (\bcoreg|breg32_rtl_1_bypass\(39))) # (!\bcoreg|breg32~combout\ & ((\bcoreg|breg32_rtl_0|auto_generated|ram_block1a14\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcoreg|Equal0~1_combout\,
	datab => \bcoreg|breg32_rtl_1_bypass\(39),
	datac => \bcoreg|breg32~combout\,
	datad => \bcoreg|breg32_rtl_0|auto_generated|ram_block1a14\,
	combout => \bcoreg|regA[14]~19_combout\);

-- Location: LCFF_X43_Y35_N1
\rgA|sr_out[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \bcoreg|regA[14]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rgA|sr_out\(14));

-- Location: LCCOMB_X43_Y35_N14
\mux_ulaA|m_out[14]~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux_ulaA|m_out[14]~19_combout\ = (\ctr_mips|WideOr0~combout\ & ((\rgA|sr_out\(14)))) # (!\ctr_mips|WideOr0~combout\ & (\pc|sr_out\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|sr_out\(14),
	datab => \rgA|sr_out\(14),
	datac => \ctr_mips|WideOr0~combout\,
	combout => \mux_ulaA|m_out[14]~19_combout\);

-- Location: LCFF_X44_Y35_N11
\bcoreg|breg32_rtl_1_bypass[31]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \breg_data_mux|m_out[10]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bcoreg|breg32_rtl_1_bypass\(31));

-- Location: LCCOMB_X44_Y35_N4
\bcoreg|regA[10]~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \bcoreg|regA[10]~23_combout\ = (!\bcoreg|Equal0~1_combout\ & ((\bcoreg|breg32~combout\ & (\bcoreg|breg32_rtl_1_bypass\(31))) # (!\bcoreg|breg32~combout\ & ((\bcoreg|breg32_rtl_0|auto_generated|ram_block1a10\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcoreg|breg32~combout\,
	datab => \bcoreg|breg32_rtl_1_bypass\(31),
	datac => \bcoreg|breg32_rtl_0|auto_generated|ram_block1a10\,
	datad => \bcoreg|Equal0~1_combout\,
	combout => \bcoreg|regA[10]~23_combout\);

-- Location: LCFF_X44_Y35_N5
\rgA|sr_out[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \bcoreg|regA[10]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rgA|sr_out\(10));

-- Location: LCCOMB_X44_Y35_N28
\pc|sr_out[10]~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \pc|sr_out[10]~20_combout\ = (\ctr_mips|pstate.branch_ex_st~regout\ & (\regULA|sr_out\(10))) # (!\ctr_mips|pstate.branch_ex_st~regout\ & ((\alu|Mux21~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctr_mips|pstate.branch_ex_st~regout\,
	datab => \regULA|sr_out\(10),
	datad => \alu|Mux21~11_combout\,
	combout => \pc|sr_out[10]~20_combout\);

-- Location: LCFF_X44_Y35_N29
\pc|sr_out[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \pc|sr_out[10]~20_combout\,
	sdata => \ir|sr_out\(8),
	sclr => \rst~combout\,
	sload => \ctr_mips|pstate.jump_ex_st~regout\,
	ena => \pc|sr_out[0]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pc|sr_out\(10));

-- Location: LCCOMB_X44_Y35_N14
\mux_ulaA|m_out[10]~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux_ulaA|m_out[10]~23_combout\ = (\ctr_mips|WideOr0~combout\ & (\rgA|sr_out\(10))) # (!\ctr_mips|WideOr0~combout\ & ((\pc|sr_out\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rgA|sr_out\(10),
	datac => \ctr_mips|WideOr0~combout\,
	datad => \pc|sr_out\(10),
	combout => \mux_ulaA|m_out[10]~23_combout\);

-- Location: LCCOMB_X44_Y35_N18
\mux_ulaA|m_out[9]~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux_ulaA|m_out[9]~24_combout\ = (\ctr_mips|WideOr0~combout\ & (\rgA|sr_out\(9))) # (!\ctr_mips|WideOr0~combout\ & ((\pc|sr_out\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rgA|sr_out\(9),
	datab => \pc|sr_out\(9),
	datac => \ctr_mips|WideOr0~combout\,
	combout => \mux_ulaA|m_out[9]~24_combout\);

-- Location: LCCOMB_X44_Y35_N8
\bcoreg|regA[8]~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \bcoreg|regA[8]~25_combout\ = (!\bcoreg|Equal0~1_combout\ & ((\bcoreg|breg32~combout\ & (\bcoreg|breg32_rtl_1_bypass\(27))) # (!\bcoreg|breg32~combout\ & ((\bcoreg|breg32_rtl_0|auto_generated|ram_block1a8\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcoreg|Equal0~1_combout\,
	datab => \bcoreg|breg32_rtl_1_bypass\(27),
	datac => \bcoreg|breg32_rtl_0|auto_generated|ram_block1a8\,
	datad => \bcoreg|breg32~combout\,
	combout => \bcoreg|regA[8]~25_combout\);

-- Location: LCFF_X44_Y35_N9
\rgA|sr_out[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \bcoreg|regA[8]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rgA|sr_out\(8));

-- Location: LCCOMB_X44_Y35_N26
\mux_ulaA|m_out[8]~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux_ulaA|m_out[8]~25_combout\ = (\ctr_mips|WideOr0~combout\ & ((\rgA|sr_out\(8)))) # (!\ctr_mips|WideOr0~combout\ & (\pc|sr_out\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \pc|sr_out\(8),
	datac => \ctr_mips|WideOr0~combout\,
	datad => \rgA|sr_out\(8),
	combout => \mux_ulaA|m_out[8]~25_combout\);

-- Location: LCCOMB_X43_Y36_N30
\pc|sr_out[6]~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \pc|sr_out[6]~24_combout\ = (\ctr_mips|pstate.branch_ex_st~regout\ & (\regULA|sr_out\(6))) # (!\ctr_mips|pstate.branch_ex_st~regout\ & ((\alu|Mux25~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regULA|sr_out\(6),
	datab => \alu|Mux25~combout\,
	datad => \ctr_mips|pstate.branch_ex_st~regout\,
	combout => \pc|sr_out[6]~24_combout\);

-- Location: LCFF_X43_Y36_N31
\pc|sr_out[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \pc|sr_out[6]~24_combout\,
	sdata => \ir|sr_out\(4),
	sclr => \rst~combout\,
	sload => \ctr_mips|pstate.jump_ex_st~regout\,
	ena => \pc|sr_out[0]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pc|sr_out\(6));

-- Location: LCCOMB_X43_Y36_N22
\mux_ulaA|m_out[6]~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux_ulaA|m_out[6]~17_combout\ = (\ctr_mips|WideOr0~combout\ & (\rgA|sr_out\(6))) # (!\ctr_mips|WideOr0~combout\ & ((\pc|sr_out\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rgA|sr_out\(6),
	datab => \pc|sr_out\(6),
	datad => \ctr_mips|WideOr0~combout\,
	combout => \mux_ulaA|m_out[6]~17_combout\);

-- Location: LCCOMB_X41_Y33_N2
\alu|Add1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Add1~2_combout\ = (\mux_ulaA|m_out[1]~30_combout\ & ((\mux_ulaB|m_out[1]~48_combout\ & (\alu|Add1~1\ & VCC)) # (!\mux_ulaB|m_out[1]~48_combout\ & (!\alu|Add1~1\)))) # (!\mux_ulaA|m_out[1]~30_combout\ & ((\mux_ulaB|m_out[1]~48_combout\ & 
-- (!\alu|Add1~1\)) # (!\mux_ulaB|m_out[1]~48_combout\ & ((\alu|Add1~1\) # (GND)))))
-- \alu|Add1~3\ = CARRY((\mux_ulaA|m_out[1]~30_combout\ & (!\mux_ulaB|m_out[1]~48_combout\ & !\alu|Add1~1\)) # (!\mux_ulaA|m_out[1]~30_combout\ & ((!\alu|Add1~1\) # (!\mux_ulaB|m_out[1]~48_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mux_ulaA|m_out[1]~30_combout\,
	datab => \mux_ulaB|m_out[1]~48_combout\,
	datad => VCC,
	cin => \alu|Add1~1\,
	combout => \alu|Add1~2_combout\,
	cout => \alu|Add1~3\);

-- Location: LCCOMB_X41_Y33_N4
\alu|Add1~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Add1~4_combout\ = ((\mux_ulaA|m_out[2]~29_combout\ $ (\mux_ulaB|m_out[2]~50_combout\ $ (!\alu|Add1~3\)))) # (GND)
-- \alu|Add1~5\ = CARRY((\mux_ulaA|m_out[2]~29_combout\ & ((\mux_ulaB|m_out[2]~50_combout\) # (!\alu|Add1~3\))) # (!\mux_ulaA|m_out[2]~29_combout\ & (\mux_ulaB|m_out[2]~50_combout\ & !\alu|Add1~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mux_ulaA|m_out[2]~29_combout\,
	datab => \mux_ulaB|m_out[2]~50_combout\,
	datad => VCC,
	cin => \alu|Add1~3\,
	combout => \alu|Add1~4_combout\,
	cout => \alu|Add1~5\);

-- Location: LCCOMB_X41_Y33_N14
\alu|Add1~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Add1~14_combout\ = (\mux_ulaA|m_out[7]~26_combout\ & ((\mux_ulaB|m_out[7]~39_combout\ & (\alu|Add1~13\ & VCC)) # (!\mux_ulaB|m_out[7]~39_combout\ & (!\alu|Add1~13\)))) # (!\mux_ulaA|m_out[7]~26_combout\ & ((\mux_ulaB|m_out[7]~39_combout\ & 
-- (!\alu|Add1~13\)) # (!\mux_ulaB|m_out[7]~39_combout\ & ((\alu|Add1~13\) # (GND)))))
-- \alu|Add1~15\ = CARRY((\mux_ulaA|m_out[7]~26_combout\ & (!\mux_ulaB|m_out[7]~39_combout\ & !\alu|Add1~13\)) # (!\mux_ulaA|m_out[7]~26_combout\ & ((!\alu|Add1~13\) # (!\mux_ulaB|m_out[7]~39_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mux_ulaA|m_out[7]~26_combout\,
	datab => \mux_ulaB|m_out[7]~39_combout\,
	datad => VCC,
	cin => \alu|Add1~13\,
	combout => \alu|Add1~14_combout\,
	cout => \alu|Add1~15\);

-- Location: LCCOMB_X41_Y33_N16
\alu|Add1~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Add1~16_combout\ = ((\mux_ulaB|m_out[8]~37_combout\ $ (\mux_ulaA|m_out[8]~25_combout\ $ (!\alu|Add1~15\)))) # (GND)
-- \alu|Add1~17\ = CARRY((\mux_ulaB|m_out[8]~37_combout\ & ((\mux_ulaA|m_out[8]~25_combout\) # (!\alu|Add1~15\))) # (!\mux_ulaB|m_out[8]~37_combout\ & (\mux_ulaA|m_out[8]~25_combout\ & !\alu|Add1~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mux_ulaB|m_out[8]~37_combout\,
	datab => \mux_ulaA|m_out[8]~25_combout\,
	datad => VCC,
	cin => \alu|Add1~15\,
	combout => \alu|Add1~16_combout\,
	cout => \alu|Add1~17\);

-- Location: LCCOMB_X41_Y33_N20
\alu|Add1~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Add1~20_combout\ = ((\mux_ulaB|m_out[10]~33_combout\ $ (\mux_ulaA|m_out[10]~23_combout\ $ (!\alu|Add1~19\)))) # (GND)
-- \alu|Add1~21\ = CARRY((\mux_ulaB|m_out[10]~33_combout\ & ((\mux_ulaA|m_out[10]~23_combout\) # (!\alu|Add1~19\))) # (!\mux_ulaB|m_out[10]~33_combout\ & (\mux_ulaA|m_out[10]~23_combout\ & !\alu|Add1~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mux_ulaB|m_out[10]~33_combout\,
	datab => \mux_ulaA|m_out[10]~23_combout\,
	datad => VCC,
	cin => \alu|Add1~19\,
	combout => \alu|Add1~20_combout\,
	cout => \alu|Add1~21\);

-- Location: LCCOMB_X41_Y33_N22
\alu|Add1~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Add1~22_combout\ = (\mux_ulaA|m_out[11]~22_combout\ & ((\mux_ulaB|m_out[11]~31_combout\ & (\alu|Add1~21\ & VCC)) # (!\mux_ulaB|m_out[11]~31_combout\ & (!\alu|Add1~21\)))) # (!\mux_ulaA|m_out[11]~22_combout\ & ((\mux_ulaB|m_out[11]~31_combout\ & 
-- (!\alu|Add1~21\)) # (!\mux_ulaB|m_out[11]~31_combout\ & ((\alu|Add1~21\) # (GND)))))
-- \alu|Add1~23\ = CARRY((\mux_ulaA|m_out[11]~22_combout\ & (!\mux_ulaB|m_out[11]~31_combout\ & !\alu|Add1~21\)) # (!\mux_ulaA|m_out[11]~22_combout\ & ((!\alu|Add1~21\) # (!\mux_ulaB|m_out[11]~31_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mux_ulaA|m_out[11]~22_combout\,
	datab => \mux_ulaB|m_out[11]~31_combout\,
	datad => VCC,
	cin => \alu|Add1~21\,
	combout => \alu|Add1~22_combout\,
	cout => \alu|Add1~23\);

-- Location: LCCOMB_X41_Y33_N26
\alu|Add1~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Add1~26_combout\ = (\mux_ulaA|m_out[13]~20_combout\ & ((\mux_ulaB|m_out[13]~27_combout\ & (\alu|Add1~25\ & VCC)) # (!\mux_ulaB|m_out[13]~27_combout\ & (!\alu|Add1~25\)))) # (!\mux_ulaA|m_out[13]~20_combout\ & ((\mux_ulaB|m_out[13]~27_combout\ & 
-- (!\alu|Add1~25\)) # (!\mux_ulaB|m_out[13]~27_combout\ & ((\alu|Add1~25\) # (GND)))))
-- \alu|Add1~27\ = CARRY((\mux_ulaA|m_out[13]~20_combout\ & (!\mux_ulaB|m_out[13]~27_combout\ & !\alu|Add1~25\)) # (!\mux_ulaA|m_out[13]~20_combout\ & ((!\alu|Add1~25\) # (!\mux_ulaB|m_out[13]~27_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mux_ulaA|m_out[13]~20_combout\,
	datab => \mux_ulaB|m_out[13]~27_combout\,
	datad => VCC,
	cin => \alu|Add1~25\,
	combout => \alu|Add1~26_combout\,
	cout => \alu|Add1~27\);

-- Location: LCCOMB_X41_Y33_N28
\alu|Add1~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Add1~28_combout\ = ((\mux_ulaB|m_out[14]~25_combout\ $ (\mux_ulaA|m_out[14]~19_combout\ $ (!\alu|Add1~27\)))) # (GND)
-- \alu|Add1~29\ = CARRY((\mux_ulaB|m_out[14]~25_combout\ & ((\mux_ulaA|m_out[14]~19_combout\) # (!\alu|Add1~27\))) # (!\mux_ulaB|m_out[14]~25_combout\ & (\mux_ulaA|m_out[14]~19_combout\ & !\alu|Add1~27\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mux_ulaB|m_out[14]~25_combout\,
	datab => \mux_ulaA|m_out[14]~19_combout\,
	datad => VCC,
	cin => \alu|Add1~27\,
	combout => \alu|Add1~28_combout\,
	cout => \alu|Add1~29\);

-- Location: LCCOMB_X43_Y34_N0
\alu|ShiftLeft0~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftLeft0~25_combout\ = (\alu|ShiftLeft0~19_combout\) # (\alu|ShiftLeft0~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \alu|ShiftLeft0~19_combout\,
	datad => \alu|ShiftLeft0~16_combout\,
	combout => \alu|ShiftLeft0~25_combout\);

-- Location: LCCOMB_X40_Y36_N26
\alu|ShiftRight0~76\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftRight0~76_combout\ = (!\mux_ulaB|Equal2~0_combout\ & ((\mux_ulaA|m_out[2]~29_combout\ & ((\alu|ShiftRight1~52_combout\))) # (!\mux_ulaA|m_out[2]~29_combout\ & (\alu|ShiftRight1~48_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_ulaA|m_out[2]~29_combout\,
	datab => \mux_ulaB|Equal2~0_combout\,
	datac => \alu|ShiftRight1~48_combout\,
	datad => \alu|ShiftRight1~52_combout\,
	combout => \alu|ShiftRight0~76_combout\);

-- Location: LCCOMB_X39_Y37_N6
\alu|ShiftRight1~59\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftRight1~59_combout\ = (!\mux_ulaA|m_out[1]~30_combout\ & (!\mux_ulaA|m_out[0]~27_combout\ & \mux_ulaB|m_out[15]~23_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_ulaA|m_out[1]~30_combout\,
	datac => \mux_ulaA|m_out[0]~27_combout\,
	datad => \mux_ulaB|m_out[15]~23_combout\,
	combout => \alu|ShiftRight1~59_combout\);

-- Location: LCCOMB_X39_Y38_N2
\alu|ShiftRight1~58\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftRight1~58_combout\ = (\mux_ulaA|m_out[0]~27_combout\ & ((\mux_ulaA|m_out[1]~30_combout\ & (\mux_ulaB|m_out[18]~17_combout\)) # (!\mux_ulaA|m_out[1]~30_combout\ & ((\mux_ulaB|m_out[16]~21_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_ulaB|m_out[18]~17_combout\,
	datab => \mux_ulaA|m_out[1]~30_combout\,
	datac => \mux_ulaA|m_out[0]~27_combout\,
	datad => \mux_ulaB|m_out[16]~21_combout\,
	combout => \alu|ShiftRight1~58_combout\);

-- Location: LCCOMB_X39_Y38_N24
\alu|ShiftRight1~60\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftRight1~60_combout\ = (\alu|ShiftRight1~59_combout\) # ((\alu|ShiftRight1~58_combout\) # ((\alu|ShiftRight1~73_combout\ & \mux_ulaB|m_out[17]~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|ShiftRight1~73_combout\,
	datab => \mux_ulaB|m_out[17]~20_combout\,
	datac => \alu|ShiftRight1~59_combout\,
	datad => \alu|ShiftRight1~58_combout\,
	combout => \alu|ShiftRight1~60_combout\);

-- Location: LCCOMB_X40_Y38_N2
\alu|ShiftRight0~77\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftRight0~77_combout\ = (\mux_ulaA|m_out[2]~29_combout\ & (!\mux_ulaB|Equal2~0_combout\ & (\alu|ShiftRight1~49_combout\))) # (!\mux_ulaA|m_out[2]~29_combout\ & (((\alu|ShiftRight1~60_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_ulaB|Equal2~0_combout\,
	datab => \alu|ShiftRight1~49_combout\,
	datac => \mux_ulaA|m_out[2]~29_combout\,
	datad => \alu|ShiftRight1~60_combout\,
	combout => \alu|ShiftRight0~77_combout\);

-- Location: LCCOMB_X40_Y38_N20
\alu|Mux16~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux16~9_combout\ = (\mux_ulaA|m_out[3]~28_combout\ & (\alu|ShiftRight0~76_combout\)) # (!\mux_ulaA|m_out[3]~28_combout\ & ((\alu|ShiftRight0~77_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mux_ulaA|m_out[3]~28_combout\,
	datac => \alu|ShiftRight0~76_combout\,
	datad => \alu|ShiftRight0~77_combout\,
	combout => \alu|Mux16~9_combout\);

-- Location: LCCOMB_X40_Y38_N22
\alu|Mux16~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux16~10_combout\ = (\mux_ulaA|m_out[4]~0_combout\ & (\mux_ulaB|m_out[31]~4_combout\ & ((\alu|ShiftRight0~10_combout\)))) # (!\mux_ulaA|m_out[4]~0_combout\ & (((\alu|Mux16~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_ulaB|m_out[31]~4_combout\,
	datab => \mux_ulaA|m_out[4]~0_combout\,
	datac => \alu|Mux16~9_combout\,
	datad => \alu|ShiftRight0~10_combout\,
	combout => \alu|Mux16~10_combout\);

-- Location: LCCOMB_X40_Y38_N12
\alu|Mux16~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux16~11_combout\ = (\actr|alu_ctr[0]~16_combout\ & (!\alu|ShiftLeft0~25_combout\ & (!\actr|alu_ctr[3]~21_combout\ & \alu|Mux16~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \actr|alu_ctr[0]~16_combout\,
	datab => \alu|ShiftLeft0~25_combout\,
	datac => \actr|alu_ctr[3]~21_combout\,
	datad => \alu|Mux16~10_combout\,
	combout => \alu|Mux16~11_combout\);

-- Location: LCCOMB_X40_Y38_N10
\alu|Mux16~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux16~12_combout\ = (\alu|Mux16~11_combout\) # ((!\actr|alu_ctr[0]~16_combout\ & (\alu|Add1~30_combout\ & !\actr|alu_ctr[3]~21_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \actr|alu_ctr[0]~16_combout\,
	datab => \alu|Add1~30_combout\,
	datac => \actr|alu_ctr[3]~21_combout\,
	datad => \alu|Mux16~11_combout\,
	combout => \alu|Mux16~12_combout\);

-- Location: LCCOMB_X44_Y34_N2
\alu|Mux16~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux16~4_combout\ = (!\actr|alu_ctr[3]~21_combout\ & (\alu|tmp[15]~30_combout\ & !\actr|alu_ctr[0]~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \actr|alu_ctr[3]~21_combout\,
	datac => \alu|tmp[15]~30_combout\,
	datad => \actr|alu_ctr[0]~16_combout\,
	combout => \alu|Mux16~4_combout\);

-- Location: LCCOMB_X44_Y38_N26
\alu|Mux16~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux16~6_combout\ = (\alu|ShiftLeft0~21_combout\ & ((\mux_ulaA|m_out[3]~28_combout\ & (\alu|ShiftRight0~76_combout\)) # (!\mux_ulaA|m_out[3]~28_combout\ & ((\alu|ShiftRight0~77_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_ulaA|m_out[3]~28_combout\,
	datab => \alu|ShiftLeft0~21_combout\,
	datac => \alu|ShiftRight0~76_combout\,
	datad => \alu|ShiftRight0~77_combout\,
	combout => \alu|Mux16~6_combout\);

-- Location: LCCOMB_X44_Y34_N8
\alu|Mux16~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux16~7_combout\ = (\actr|alu_ctr[3]~21_combout\ & (!\mux_ulaB|m_out[15]~23_combout\ & (!\mux_ulaA|m_out[15]~16_combout\))) # (!\actr|alu_ctr[3]~21_combout\ & (((\alu|Mux16~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_ulaB|m_out[15]~23_combout\,
	datab => \mux_ulaA|m_out[15]~16_combout\,
	datac => \actr|alu_ctr[3]~21_combout\,
	datad => \alu|Mux16~6_combout\,
	combout => \alu|Mux16~7_combout\);

-- Location: LCCOMB_X43_Y32_N8
\alu|Mux16~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux16~5_combout\ = (\mux_ulaB|m_out[31]~4_combout\ & (!\actr|alu_ctr[3]~21_combout\ & !\alu|ShiftLeft0~21_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mux_ulaB|m_out[31]~4_combout\,
	datac => \actr|alu_ctr[3]~21_combout\,
	datad => \alu|ShiftLeft0~21_combout\,
	combout => \alu|Mux16~5_combout\);

-- Location: LCCOMB_X44_Y34_N6
\alu|Mux16~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux16~14_combout\ = (\alu|Mux16~7_combout\ & (\actr|alu_ctr[3]~21_combout\ $ ((\actr|alu_ctr[0]~16_combout\)))) # (!\alu|Mux16~7_combout\ & (\alu|Mux16~5_combout\ & (\actr|alu_ctr[3]~21_combout\ $ (\actr|alu_ctr[0]~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \actr|alu_ctr[3]~21_combout\,
	datab => \actr|alu_ctr[0]~16_combout\,
	datac => \alu|Mux16~7_combout\,
	datad => \alu|Mux16~5_combout\,
	combout => \alu|Mux16~14_combout\);

-- Location: LCCOMB_X44_Y34_N10
\alu|Mux16~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux16~8_combout\ = (\alu|Mux10~8_combout\ & ((\actr|alu_ctr[1]~14_combout\ & ((\alu|Mux16~14_combout\))) # (!\actr|alu_ctr[1]~14_combout\ & (\alu|Mux16~4_combout\)))) # (!\alu|Mux10~8_combout\ & (((!\actr|alu_ctr[1]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110100001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|Mux10~8_combout\,
	datab => \alu|Mux16~4_combout\,
	datac => \actr|alu_ctr[1]~14_combout\,
	datad => \alu|Mux16~14_combout\,
	combout => \alu|Mux16~8_combout\);

-- Location: LCCOMB_X44_Y34_N16
\alu|Mux16~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux16~13_combout\ = (\alu|Mux10~8_combout\ & (((\alu|Mux16~8_combout\)))) # (!\alu|Mux10~8_combout\ & ((\alu|Mux16~8_combout\ & ((\alu|Mux16~12_combout\))) # (!\alu|Mux16~8_combout\ & (\alu|Mux16~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|Mux16~3_combout\,
	datab => \alu|Mux10~8_combout\,
	datac => \alu|Mux16~12_combout\,
	datad => \alu|Mux16~8_combout\,
	combout => \alu|Mux16~13_combout\);

-- Location: LCFF_X44_Y34_N17
\regULA|sr_out[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \alu|Mux16~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regULA|sr_out\(15));

-- Location: LCCOMB_X42_Y32_N18
\breg_data_mux|m_out[15]~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \breg_data_mux|m_out[15]~26_combout\ = (\breg_data_mux|m_out[15]~25_combout\) # ((!\ctr_mips|pstate.ldreg_st~regout\ & \regULA|sr_out\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ctr_mips|pstate.ldreg_st~regout\,
	datac => \breg_data_mux|m_out[15]~25_combout\,
	datad => \regULA|sr_out\(15),
	combout => \breg_data_mux|m_out[15]~26_combout\);

-- Location: LCCOMB_X39_Y36_N24
\bcoreg|regB[27]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \bcoreg|regB[27]~5_combout\ = (!\bcoreg|Equal1~1_combout\ & ((\bcoreg|breg32~45\ & (\bcoreg|breg32_rtl_1_bypass\(65))) # (!\bcoreg|breg32~45\ & ((\bcoreg|breg32_rtl_1|auto_generated|ram_block1a27\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcoreg|breg32_rtl_1_bypass\(65),
	datab => \bcoreg|breg32~45\,
	datac => \bcoreg|breg32_rtl_1|auto_generated|ram_block1a27\,
	datad => \bcoreg|Equal1~1_combout\,
	combout => \bcoreg|regB[27]~5_combout\);

-- Location: LCFF_X39_Y36_N25
\rgB|sr_out[27]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \bcoreg|regB[27]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rgB|sr_out\(27));

-- Location: LCCOMB_X40_Y37_N0
\alu|ShiftRight0~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftRight0~14_combout\ = (\mux_ulaA|m_out[1]~30_combout\ & ((\rgB|sr_out\(27)))) # (!\mux_ulaA|m_out[1]~30_combout\ & (\rgB|sr_out\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rgB|sr_out\(25),
	datab => \rgB|sr_out\(27),
	datad => \mux_ulaA|m_out[1]~30_combout\,
	combout => \alu|ShiftRight0~14_combout\);

-- Location: LCCOMB_X41_Y38_N4
\alu|ShiftRight0~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftRight0~15_combout\ = (\mux_ulaA|m_out[0]~27_combout\ & (\alu|ShiftRight0~14_combout\)) # (!\mux_ulaA|m_out[0]~27_combout\ & ((\alu|ShiftRight1~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_ulaA|m_out[0]~27_combout\,
	datac => \alu|ShiftRight0~14_combout\,
	datad => \alu|ShiftRight1~10_combout\,
	combout => \alu|ShiftRight0~15_combout\);

-- Location: LCCOMB_X42_Y38_N0
\alu|ShiftRight0~62\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftRight0~62_combout\ = (!\mux_ulaB|Equal2~0_combout\ & ((\mux_ulaA|m_out[2]~29_combout\ & ((\alu|ShiftRight0~15_combout\))) # (!\mux_ulaA|m_out[2]~29_combout\ & (\alu|ShiftRight0~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_ulaB|Equal2~0_combout\,
	datab => \alu|ShiftRight0~20_combout\,
	datac => \alu|ShiftRight0~15_combout\,
	datad => \mux_ulaA|m_out[2]~29_combout\,
	combout => \alu|ShiftRight0~62_combout\);

-- Location: LCCOMB_X45_Y37_N0
\alu|ShiftRight0~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftRight0~24_combout\ = (\alu|ShiftRight0~23_combout\) # ((\alu|ShiftRight0~22_combout\) # ((\mux_ulaB|m_out[12]~29_combout\ & \alu|ShiftLeft0~141_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|ShiftRight0~23_combout\,
	datab => \alu|ShiftRight0~22_combout\,
	datac => \mux_ulaB|m_out[12]~29_combout\,
	datad => \alu|ShiftLeft0~141_combout\,
	combout => \alu|ShiftRight0~24_combout\);

-- Location: LCCOMB_X42_Y38_N8
\alu|ShiftRight0~63\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftRight0~63_combout\ = (\mux_ulaA|m_out[2]~29_combout\ & ((\alu|ShiftRight0~18_combout\))) # (!\mux_ulaA|m_out[2]~29_combout\ & (\alu|ShiftRight0~24_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_ulaA|m_out[2]~29_combout\,
	datac => \alu|ShiftRight0~24_combout\,
	datad => \alu|ShiftRight0~18_combout\,
	combout => \alu|ShiftRight0~63_combout\);

-- Location: LCCOMB_X44_Y38_N16
\alu|Mux19~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux19~10_combout\ = (\mux_ulaA|m_out[3]~28_combout\ & (\alu|ShiftRight0~62_combout\)) # (!\mux_ulaA|m_out[3]~28_combout\ & ((\alu|ShiftRight0~63_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_ulaA|m_out[3]~28_combout\,
	datac => \alu|ShiftRight0~62_combout\,
	datad => \alu|ShiftRight0~63_combout\,
	combout => \alu|Mux19~10_combout\);

-- Location: LCCOMB_X45_Y33_N24
\alu|a32~56\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|a32~56_combout\ = \mux_ulaB|m_out[12]~29_combout\ $ (((\ctr_mips|WideOr0~combout\ & ((\rgA|sr_out\(12)))) # (!\ctr_mips|WideOr0~combout\ & (\pc|sr_out\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|sr_out\(12),
	datab => \rgA|sr_out\(12),
	datac => \mux_ulaB|m_out[12]~29_combout\,
	datad => \ctr_mips|WideOr0~combout\,
	combout => \alu|a32~56_combout\);

-- Location: LCCOMB_X45_Y33_N8
\alu|Mux19~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux19~7_combout\ = (\mux_ulaA|m_out[12]~21_combout\) # ((\mux_ulaB|m_out[12]~29_combout\) # (\alu|Mux29~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_ulaA|m_out[12]~21_combout\,
	datac => \mux_ulaB|m_out[12]~29_combout\,
	datad => \alu|Mux29~14_combout\,
	combout => \alu|Mux19~7_combout\);

-- Location: LCCOMB_X45_Y33_N16
\alu|ShiftRight0~83\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftRight0~83_combout\ = (!\mux_ulaB|Equal2~0_combout\ & ((\alu|ShiftLeft0~140_combout\ & (\alu|ShiftRight0~13_combout\)) # (!\alu|ShiftLeft0~140_combout\ & ((\rgB|sr_out\(31))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_ulaB|Equal2~0_combout\,
	datab => \alu|ShiftRight0~13_combout\,
	datac => \rgB|sr_out\(31),
	datad => \alu|ShiftLeft0~140_combout\,
	combout => \alu|ShiftRight0~83_combout\);

-- Location: LCCOMB_X45_Y33_N14
\alu|Mux19~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux19~2_combout\ = (\actr|alu_ctr[0]~16_combout\ & (\actr|alu_ctr[1]~14_combout\ & ((\mux_ulaA|m_out[12]~21_combout\) # (\mux_ulaB|m_out[12]~29_combout\)))) # (!\actr|alu_ctr[0]~16_combout\ & (((\mux_ulaA|m_out[12]~21_combout\ & 
-- \mux_ulaB|m_out[12]~29_combout\)) # (!\actr|alu_ctr[1]~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_ulaA|m_out[12]~21_combout\,
	datab => \actr|alu_ctr[0]~16_combout\,
	datac => \mux_ulaB|m_out[12]~29_combout\,
	datad => \actr|alu_ctr[1]~14_combout\,
	combout => \alu|Mux19~2_combout\);

-- Location: LCCOMB_X41_Y38_N22
\alu|ShiftRight1~70\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftRight1~70_combout\ = (!\mux_ulaB|Equal2~0_combout\ & (\alu|ShiftLeft0~140_combout\ & ((\alu|ShiftRight0~11_combout\) # (\alu|ShiftRight0~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_ulaB|Equal2~0_combout\,
	datab => \alu|ShiftRight0~11_combout\,
	datac => \alu|ShiftRight0~12_combout\,
	datad => \alu|ShiftLeft0~140_combout\,
	combout => \alu|ShiftRight1~70_combout\);

-- Location: LCCOMB_X43_Y34_N24
\alu|Mux29~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux29~6_combout\ = (\actr|alu_ctr[1]~13_combout\ & (((!\alu|ShiftLeft0~25_combout\) # (!\actr|alu_ctr[0]~16_combout\)))) # (!\actr|alu_ctr[1]~13_combout\ & (!\actr|alu_ctr[1]~24_combout\ & ((!\alu|ShiftLeft0~25_combout\) # 
-- (!\actr|alu_ctr[0]~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101110111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \actr|alu_ctr[1]~13_combout\,
	datab => \actr|alu_ctr[1]~24_combout\,
	datac => \actr|alu_ctr[0]~16_combout\,
	datad => \alu|ShiftLeft0~25_combout\,
	combout => \alu|Mux29~6_combout\);

-- Location: LCCOMB_X45_Y33_N4
\alu|Mux19~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux19~3_combout\ = (\alu|Mux19~2_combout\ & ((\alu|Add1~24_combout\) # ((!\alu|Mux29~6_combout\)))) # (!\alu|Mux19~2_combout\ & (((\alu|ShiftRight1~70_combout\ & \alu|Mux29~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|Add1~24_combout\,
	datab => \alu|Mux19~2_combout\,
	datac => \alu|ShiftRight1~70_combout\,
	datad => \alu|Mux29~6_combout\,
	combout => \alu|Mux19~3_combout\);

-- Location: LCCOMB_X43_Y34_N22
\alu|Mux29~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux29~10_combout\ = (\alu|Mux10~8_combout\ & ((\actr|alu_ctr[1]~13_combout\) # ((\alu|ShiftLeft0~25_combout\) # (!\actr|alu_ctr[1]~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \actr|alu_ctr[1]~13_combout\,
	datab => \alu|Mux10~8_combout\,
	datac => \actr|alu_ctr[1]~24_combout\,
	datad => \alu|ShiftLeft0~25_combout\,
	combout => \alu|Mux29~10_combout\);

-- Location: LCCOMB_X45_Y33_N18
\alu|Mux19~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux19~4_combout\ = (\alu|Mux29~9_combout\ & ((\alu|Mux29~10_combout\ & (\alu|tmp[12]~24_combout\)) # (!\alu|Mux29~10_combout\ & ((\alu|Mux19~3_combout\))))) # (!\alu|Mux29~9_combout\ & (((!\alu|Mux29~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|tmp[12]~24_combout\,
	datab => \alu|Mux29~9_combout\,
	datac => \alu|Mux19~3_combout\,
	datad => \alu|Mux29~10_combout\,
	combout => \alu|Mux19~4_combout\);

-- Location: LCCOMB_X45_Y33_N28
\alu|Mux19~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux19~5_combout\ = (\alu|Mux29~5_combout\ & (((\alu|Mux19~4_combout\)))) # (!\alu|Mux29~5_combout\ & ((\alu|Mux19~4_combout\ & ((\alu|ShiftRight0~83_combout\))) # (!\alu|Mux19~4_combout\ & (\mux_ulaB|m_out[31]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|Mux29~5_combout\,
	datab => \mux_ulaB|m_out[31]~4_combout\,
	datac => \alu|ShiftRight0~83_combout\,
	datad => \alu|Mux19~4_combout\,
	combout => \alu|Mux19~5_combout\);

-- Location: LCCOMB_X45_Y33_N26
\alu|Mux19~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux19~6_combout\ = (\alu|Mux19~5_combout\ & ((\alu|Mux29~5_combout\) # (\actr|alu_ctr[0]~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|Mux29~5_combout\,
	datac => \actr|alu_ctr[0]~16_combout\,
	datad => \alu|Mux19~5_combout\,
	combout => \alu|Mux19~6_combout\);

-- Location: LCCOMB_X45_Y33_N22
\alu|Mux19~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux19~8_combout\ = (\alu|Mux29~3_combout\ & ((\alu|Mux29~2_combout\) # ((!\alu|Mux19~7_combout\)))) # (!\alu|Mux29~3_combout\ & (!\alu|Mux29~2_combout\ & ((\alu|Mux19~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001101110001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|Mux29~3_combout\,
	datab => \alu|Mux29~2_combout\,
	datac => \alu|Mux19~7_combout\,
	datad => \alu|Mux19~6_combout\,
	combout => \alu|Mux19~8_combout\);

-- Location: LCCOMB_X45_Y33_N0
\alu|Mux19~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux19~9_combout\ = (\alu|Mux29~4_combout\ & ((\alu|Mux19~8_combout\ & ((\alu|a32~56_combout\))) # (!\alu|Mux19~8_combout\ & (\alu|ShiftLeft0~67_combout\)))) # (!\alu|Mux29~4_combout\ & (((\alu|Mux19~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|ShiftLeft0~67_combout\,
	datab => \alu|Mux29~4_combout\,
	datac => \alu|a32~56_combout\,
	datad => \alu|Mux19~8_combout\,
	combout => \alu|Mux19~9_combout\);

-- Location: LCCOMB_X45_Y33_N30
\alu|Mux19~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux19~11_combout\ = (\actr|alu_ctr[3]~21_combout\ & (((\alu|Mux19~9_combout\)))) # (!\actr|alu_ctr[3]~21_combout\ & ((\alu|Mux25~2_combout\ & (\alu|Mux19~10_combout\)) # (!\alu|Mux25~2_combout\ & ((\alu|Mux19~9_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \actr|alu_ctr[3]~21_combout\,
	datab => \alu|Mux19~10_combout\,
	datac => \alu|Mux25~2_combout\,
	datad => \alu|Mux19~9_combout\,
	combout => \alu|Mux19~11_combout\);

-- Location: LCFF_X45_Y33_N31
\regULA|sr_out[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \alu|Mux19~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regULA|sr_out\(12));

-- Location: LCCOMB_X43_Y35_N18
\breg_data_mux|m_out[12]~35\ : cycloneii_lcell_comb
-- Equation(s):
-- \breg_data_mux|m_out[12]~35_combout\ = (\breg_data_mux|m_out[15]~25_combout\) # ((\regULA|sr_out\(12) & !\ctr_mips|pstate.ldreg_st~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \regULA|sr_out\(12),
	datac => \ctr_mips|pstate.ldreg_st~regout\,
	datad => \breg_data_mux|m_out[15]~25_combout\,
	combout => \breg_data_mux|m_out[12]~35_combout\);

-- Location: LCCOMB_X38_Y30_N4
\bcoreg|breg32_rtl_1_bypass[73]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \bcoreg|breg32_rtl_1_bypass[73]~feeder_combout\ = \breg_data_mux|m_out[31]~50_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \breg_data_mux|m_out[31]~50_combout\,
	combout => \bcoreg|breg32_rtl_1_bypass[73]~feeder_combout\);

-- Location: LCFF_X38_Y30_N5
\bcoreg|breg32_rtl_1_bypass[73]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \bcoreg|breg32_rtl_1_bypass[73]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bcoreg|breg32_rtl_1_bypass\(73));

-- Location: LCCOMB_X39_Y38_N0
\bcoreg|regB[31]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \bcoreg|regB[31]~1_combout\ = (!\bcoreg|Equal1~1_combout\ & ((\bcoreg|breg32~45\ & ((\bcoreg|breg32_rtl_1_bypass\(73)))) # (!\bcoreg|breg32~45\ & (\bcoreg|breg32_rtl_1|auto_generated|ram_block1a31\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcoreg|Equal1~1_combout\,
	datab => \bcoreg|breg32_rtl_1|auto_generated|ram_block1a31\,
	datac => \bcoreg|breg32~45\,
	datad => \bcoreg|breg32_rtl_1_bypass\(73),
	combout => \bcoreg|regB[31]~1_combout\);

-- Location: LCFF_X40_Y38_N5
\rgB|sr_out[31]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \bcoreg|regB[31]~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rgB|sr_out\(31));

-- Location: LCCOMB_X44_Y30_N22
\alu|ShiftRight0~82\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftRight0~82_combout\ = (!\mux_ulaB|Equal2~0_combout\ & ((\alu|ShiftLeft0~140_combout\ & ((\alu|ShiftRight1~52_combout\))) # (!\alu|ShiftLeft0~140_combout\ & (\rgB|sr_out\(31)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_ulaB|Equal2~0_combout\,
	datab => \rgB|sr_out\(31),
	datac => \alu|ShiftLeft0~140_combout\,
	datad => \alu|ShiftRight1~52_combout\,
	combout => \alu|ShiftRight0~82_combout\);

-- Location: LCCOMB_X43_Y30_N26
\alu|Mux20~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux20~2_combout\ = (\actr|alu_ctr[0]~16_combout\ & (\actr|alu_ctr[1]~14_combout\ & ((\mux_ulaB|m_out[11]~31_combout\) # (\mux_ulaA|m_out[11]~22_combout\)))) # (!\actr|alu_ctr[0]~16_combout\ & (((\mux_ulaB|m_out[11]~31_combout\ & 
-- \mux_ulaA|m_out[11]~22_combout\)) # (!\actr|alu_ctr[1]~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_ulaB|m_out[11]~31_combout\,
	datab => \mux_ulaA|m_out[11]~22_combout\,
	datac => \actr|alu_ctr[0]~16_combout\,
	datad => \actr|alu_ctr[1]~14_combout\,
	combout => \alu|Mux20~2_combout\);

-- Location: LCCOMB_X43_Y30_N16
\alu|Mux20~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux20~3_combout\ = (\alu|Mux29~6_combout\ & ((\alu|Mux20~2_combout\ & (\alu|Add1~22_combout\)) # (!\alu|Mux20~2_combout\ & ((\alu|ShiftRight1~76_combout\))))) # (!\alu|Mux29~6_combout\ & (\alu|Mux20~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|Mux29~6_combout\,
	datab => \alu|Mux20~2_combout\,
	datac => \alu|Add1~22_combout\,
	datad => \alu|ShiftRight1~76_combout\,
	combout => \alu|Mux20~3_combout\);

-- Location: LCCOMB_X43_Y30_N30
\alu|Mux20~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux20~4_combout\ = (\alu|Mux29~10_combout\ & (\alu|Mux29~9_combout\ & ((\alu|tmp[11]~22_combout\)))) # (!\alu|Mux29~10_combout\ & (((\alu|Mux20~3_combout\)) # (!\alu|Mux29~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100101010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|Mux29~10_combout\,
	datab => \alu|Mux29~9_combout\,
	datac => \alu|Mux20~3_combout\,
	datad => \alu|tmp[11]~22_combout\,
	combout => \alu|Mux20~4_combout\);

-- Location: LCCOMB_X43_Y30_N12
\alu|Mux20~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux20~5_combout\ = (\alu|Mux29~5_combout\ & (((\alu|Mux20~4_combout\)))) # (!\alu|Mux29~5_combout\ & ((\alu|Mux20~4_combout\ & (\alu|ShiftRight0~82_combout\)) # (!\alu|Mux20~4_combout\ & ((\mux_ulaB|m_out[31]~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|Mux29~5_combout\,
	datab => \alu|ShiftRight0~82_combout\,
	datac => \mux_ulaB|m_out[31]~4_combout\,
	datad => \alu|Mux20~4_combout\,
	combout => \alu|Mux20~5_combout\);

-- Location: LCCOMB_X43_Y30_N18
\alu|Mux20~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux20~6_combout\ = (\alu|Mux20~5_combout\ & ((\alu|Mux29~5_combout\) # (\actr|alu_ctr[0]~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|Mux29~5_combout\,
	datac => \actr|alu_ctr[0]~16_combout\,
	datad => \alu|Mux20~5_combout\,
	combout => \alu|Mux20~6_combout\);

-- Location: LCCOMB_X43_Y30_N2
\alu|Mux20~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux20~8_combout\ = (\alu|Mux29~2_combout\ & (\alu|Mux29~3_combout\)) # (!\alu|Mux29~2_combout\ & ((\alu|Mux29~3_combout\ & (!\alu|Mux20~7_combout\)) # (!\alu|Mux29~3_combout\ & ((\alu|Mux20~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001110110001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|Mux29~2_combout\,
	datab => \alu|Mux29~3_combout\,
	datac => \alu|Mux20~7_combout\,
	datad => \alu|Mux20~6_combout\,
	combout => \alu|Mux20~8_combout\);

-- Location: LCCOMB_X43_Y30_N28
\alu|Mux20~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux20~9_combout\ = (\alu|Mux29~4_combout\ & ((\alu|Mux20~8_combout\ & (\alu|a32~55_combout\)) # (!\alu|Mux20~8_combout\ & ((\alu|ShiftLeft0~63_combout\))))) # (!\alu|Mux29~4_combout\ & (((\alu|Mux20~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|a32~55_combout\,
	datab => \alu|Mux29~4_combout\,
	datac => \alu|ShiftLeft0~63_combout\,
	datad => \alu|Mux20~8_combout\,
	combout => \alu|Mux20~9_combout\);

-- Location: LCCOMB_X43_Y30_N10
\alu|Mux20~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux20~11_combout\ = (\alu|Mux25~2_combout\ & ((\actr|alu_ctr[3]~21_combout\ & ((\alu|Mux20~9_combout\))) # (!\actr|alu_ctr[3]~21_combout\ & (\alu|Mux20~10_combout\)))) # (!\alu|Mux25~2_combout\ & (((\alu|Mux20~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|Mux25~2_combout\,
	datab => \alu|Mux20~10_combout\,
	datac => \actr|alu_ctr[3]~21_combout\,
	datad => \alu|Mux20~9_combout\,
	combout => \alu|Mux20~11_combout\);

-- Location: LCFF_X43_Y30_N11
\regULA|sr_out[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \alu|Mux20~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regULA|sr_out\(11));

-- Location: LCCOMB_X36_Y34_N28
\breg_data_mux|m_out[11]~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \breg_data_mux|m_out[11]~36_combout\ = (\breg_data_mux|m_out[15]~25_combout\) # ((\regULA|sr_out\(11) & !\ctr_mips|pstate.ldreg_st~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \regULA|sr_out\(11),
	datac => \ctr_mips|pstate.ldreg_st~regout\,
	datad => \breg_data_mux|m_out[15]~25_combout\,
	combout => \breg_data_mux|m_out[11]~36_combout\);

-- Location: LCCOMB_X39_Y33_N4
\bcoreg|breg32_rtl_1_bypass[17]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \bcoreg|breg32_rtl_1_bypass[17]~feeder_combout\ = \breg_data_mux|m_out[3]~43_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \breg_data_mux|m_out[3]~43_combout\,
	combout => \bcoreg|breg32_rtl_1_bypass[17]~feeder_combout\);

-- Location: LCFF_X39_Y33_N5
\bcoreg|breg32_rtl_1_bypass[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \bcoreg|breg32_rtl_1_bypass[17]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bcoreg|breg32_rtl_1_bypass\(17));

-- Location: LCCOMB_X38_Y37_N18
\bcoreg|regB[3]~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \bcoreg|regB[3]~29_combout\ = (!\bcoreg|Equal1~1_combout\ & ((\bcoreg|breg32~45\ & ((\bcoreg|breg32_rtl_1_bypass\(17)))) # (!\bcoreg|breg32~45\ & (\bcoreg|breg32_rtl_1|auto_generated|ram_block1a3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcoreg|breg32~45\,
	datab => \bcoreg|Equal1~1_combout\,
	datac => \bcoreg|breg32_rtl_1|auto_generated|ram_block1a3\,
	datad => \bcoreg|breg32_rtl_1_bypass\(17),
	combout => \bcoreg|regB[3]~29_combout\);

-- Location: LCFF_X39_Y35_N1
\rgB|sr_out[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \bcoreg|regB[3]~29_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rgB|sr_out\(3));

-- Location: LCCOMB_X34_Y33_N20
\mux_store|m_out[27]~53\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux_store|m_out[27]~53_combout\ = (\rgB|sr_out\(11) & ((\mux_store|m_out[24]~45_combout\) # ((\rgB|sr_out\(3) & \mux_store|m_out[24]~46_combout\)))) # (!\rgB|sr_out\(11) & (\rgB|sr_out\(3) & ((\mux_store|m_out[24]~46_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rgB|sr_out\(11),
	datab => \rgB|sr_out\(3),
	datac => \mux_store|m_out[24]~45_combout\,
	datad => \mux_store|m_out[24]~46_combout\,
	combout => \mux_store|m_out[27]~53_combout\);

-- Location: LCCOMB_X33_Y33_N4
\mux_store|m_out[27]~54\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux_store|m_out[27]~54_combout\ = (\rgB|sr_out\(27) & (((\ctr_mips|pstate.writemem_st~regout\ & \mux_store|m_out[27]~53_combout\)) # (!\b_enab|byteenable[0]~8_combout\))) # (!\rgB|sr_out\(27) & (\ctr_mips|pstate.writemem_st~regout\ & 
-- ((\mux_store|m_out[27]~53_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rgB|sr_out\(27),
	datab => \ctr_mips|pstate.writemem_st~regout\,
	datac => \b_enab|byteenable[0]~8_combout\,
	datad => \mux_store|m_out[27]~53_combout\,
	combout => \mux_store|m_out[27]~54_combout\);

-- Location: LCCOMB_X40_Y37_N20
\bcoreg|regA[0]~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \bcoreg|regA[0]~27_combout\ = (!\bcoreg|Equal0~1_combout\ & ((\bcoreg|breg32~combout\ & (\bcoreg|breg32_rtl_0_bypass\(11))) # (!\bcoreg|breg32~combout\ & ((\bcoreg|breg32_rtl_0|auto_generated|ram_block1a0~portbdataout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcoreg|breg32_rtl_0_bypass\(11),
	datab => \bcoreg|Equal0~1_combout\,
	datac => \bcoreg|breg32~combout\,
	datad => \bcoreg|breg32_rtl_0|auto_generated|ram_block1a0~portbdataout\,
	combout => \bcoreg|regA[0]~27_combout\);

-- Location: LCFF_X40_Y37_N21
\rgA|sr_out[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \bcoreg|regA[0]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rgA|sr_out\(0));

-- Location: LCCOMB_X40_Y37_N2
\alu|ShiftRight0~86\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftRight0~86_combout\ = (\mux_ulaA|m_out[1]~30_combout\ & ((\ctr_mips|WideOr0~combout\ & ((\rgA|sr_out\(0)))) # (!\ctr_mips|WideOr0~combout\ & (\pc|sr_out\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|sr_out\(0),
	datab => \ctr_mips|WideOr0~combout\,
	datac => \rgA|sr_out\(0),
	datad => \mux_ulaA|m_out[1]~30_combout\,
	combout => \alu|ShiftRight0~86_combout\);

-- Location: LCCOMB_X40_Y37_N24
\alu|ShiftLeft0~57\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftLeft0~57_combout\ = (!\mux_ulaA|m_out[0]~27_combout\ & ((\mux_ulaA|m_out[1]~30_combout\ & (\mux_ulaB|m_out[8]~37_combout\)) # (!\mux_ulaA|m_out[1]~30_combout\ & ((\mux_ulaB|m_out[10]~33_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_ulaA|m_out[0]~27_combout\,
	datab => \mux_ulaA|m_out[1]~30_combout\,
	datac => \mux_ulaB|m_out[8]~37_combout\,
	datad => \mux_ulaB|m_out[10]~33_combout\,
	combout => \alu|ShiftLeft0~57_combout\);

-- Location: LCCOMB_X44_Y37_N20
\alu|ShiftRight0~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftRight0~25_combout\ = (\mux_ulaA|m_out[0]~27_combout\ & (\mux_ulaB|m_out[9]~35_combout\ & !\mux_ulaA|m_out[1]~30_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mux_ulaA|m_out[0]~27_combout\,
	datac => \mux_ulaB|m_out[9]~35_combout\,
	datad => \mux_ulaA|m_out[1]~30_combout\,
	combout => \alu|ShiftRight0~25_combout\);

-- Location: LCCOMB_X40_Y37_N26
\alu|ShiftLeft0~58\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftLeft0~58_combout\ = (\alu|ShiftLeft0~57_combout\) # ((\alu|ShiftRight0~25_combout\) # ((\mux_ulaB|m_out[7]~39_combout\ & \alu|ShiftRight0~86_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_ulaB|m_out[7]~39_combout\,
	datab => \alu|ShiftRight0~86_combout\,
	datac => \alu|ShiftLeft0~57_combout\,
	datad => \alu|ShiftRight0~25_combout\,
	combout => \alu|ShiftLeft0~58_combout\);

-- Location: LCCOMB_X41_Y34_N16
\alu|ShiftLeft0~59\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftLeft0~59_combout\ = (\mux_ulaA|m_out[2]~29_combout\ & ((\alu|ShiftLeft0~40_combout\))) # (!\mux_ulaA|m_out[2]~29_combout\ & (\alu|ShiftLeft0~58_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mux_ulaA|m_out[2]~29_combout\,
	datac => \alu|ShiftLeft0~58_combout\,
	datad => \alu|ShiftLeft0~40_combout\,
	combout => \alu|ShiftLeft0~59_combout\);

-- Location: LCCOMB_X44_Y34_N28
\alu|ShiftLeft0~60\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftLeft0~60_combout\ = (\mux_ulaA|m_out[3]~28_combout\ & (!\mux_ulaA|m_out[2]~29_combout\ & (\alu|ShiftLeft0~27_combout\))) # (!\mux_ulaA|m_out[3]~28_combout\ & (((\alu|ShiftLeft0~59_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_ulaA|m_out[2]~29_combout\,
	datab => \mux_ulaA|m_out[3]~28_combout\,
	datac => \alu|ShiftLeft0~27_combout\,
	datad => \alu|ShiftLeft0~59_combout\,
	combout => \alu|ShiftLeft0~60_combout\);

-- Location: LCCOMB_X44_Y36_N2
\alu|Mux21~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux21~7_combout\ = (\mux_ulaA|m_out[10]~23_combout\) # ((\mux_ulaB|m_out[10]~33_combout\) # (\alu|Mux29~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_ulaA|m_out[10]~23_combout\,
	datab => \mux_ulaB|m_out[10]~33_combout\,
	datad => \alu|Mux29~14_combout\,
	combout => \alu|Mux21~7_combout\);

-- Location: LCCOMB_X43_Y38_N6
\alu|ShiftRight0~81\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftRight0~81_combout\ = (!\mux_ulaB|Equal2~0_combout\ & ((\mux_ulaA|m_out[3]~28_combout\ & (\rgB|sr_out\(31))) # (!\mux_ulaA|m_out[3]~28_combout\ & ((\alu|ShiftRight0~50_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_ulaB|Equal2~0_combout\,
	datab => \mux_ulaA|m_out[3]~28_combout\,
	datac => \rgB|sr_out\(31),
	datad => \alu|ShiftRight0~50_combout\,
	combout => \alu|ShiftRight0~81_combout\);

-- Location: LCCOMB_X40_Y36_N20
\alu|ShiftRight1~75\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftRight1~75_combout\ = (\alu|ShiftRight1~38_combout\ & ((\ctr_mips|WideOr0~combout\ & ((!\rgA|sr_out\(3)))) # (!\ctr_mips|WideOr0~combout\ & (!\pc|sr_out\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|sr_out\(3),
	datab => \ctr_mips|WideOr0~combout\,
	datac => \alu|ShiftRight1~38_combout\,
	datad => \rgA|sr_out\(3),
	combout => \alu|ShiftRight1~75_combout\);

-- Location: LCCOMB_X44_Y36_N18
\alu|Mux21~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux21~3_combout\ = (\alu|Mux21~2_combout\ & (((\alu|Add1~20_combout\)) # (!\alu|Mux29~6_combout\))) # (!\alu|Mux21~2_combout\ & (\alu|Mux29~6_combout\ & ((\alu|ShiftRight1~75_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|Mux21~2_combout\,
	datab => \alu|Mux29~6_combout\,
	datac => \alu|Add1~20_combout\,
	datad => \alu|ShiftRight1~75_combout\,
	combout => \alu|Mux21~3_combout\);

-- Location: LCCOMB_X44_Y36_N12
\alu|Mux21~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux21~4_combout\ = (\alu|Mux29~9_combout\ & ((\alu|Mux29~10_combout\ & (\alu|tmp[10]~20_combout\)) # (!\alu|Mux29~10_combout\ & ((\alu|Mux21~3_combout\))))) # (!\alu|Mux29~9_combout\ & (!\alu|Mux29~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|Mux29~9_combout\,
	datab => \alu|Mux29~10_combout\,
	datac => \alu|tmp[10]~20_combout\,
	datad => \alu|Mux21~3_combout\,
	combout => \alu|Mux21~4_combout\);

-- Location: LCCOMB_X44_Y36_N6
\alu|Mux21~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux21~5_combout\ = (\alu|Mux29~5_combout\ & (((\alu|Mux21~4_combout\)))) # (!\alu|Mux29~5_combout\ & ((\alu|Mux21~4_combout\ & ((\alu|ShiftRight0~81_combout\))) # (!\alu|Mux21~4_combout\ & (\mux_ulaB|m_out[31]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_ulaB|m_out[31]~4_combout\,
	datab => \alu|Mux29~5_combout\,
	datac => \alu|ShiftRight0~81_combout\,
	datad => \alu|Mux21~4_combout\,
	combout => \alu|Mux21~5_combout\);

-- Location: LCCOMB_X44_Y36_N4
\alu|Mux21~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux21~6_combout\ = (\alu|Mux21~5_combout\ & ((\actr|alu_ctr[0]~16_combout\) # (\alu|Mux29~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \actr|alu_ctr[0]~16_combout\,
	datac => \alu|Mux29~5_combout\,
	datad => \alu|Mux21~5_combout\,
	combout => \alu|Mux21~6_combout\);

-- Location: LCCOMB_X44_Y36_N28
\alu|Mux21~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux21~8_combout\ = (\alu|Mux29~2_combout\ & (((\alu|Mux29~3_combout\)))) # (!\alu|Mux29~2_combout\ & ((\alu|Mux29~3_combout\ & (!\alu|Mux21~7_combout\)) # (!\alu|Mux29~3_combout\ & ((\alu|Mux21~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|Mux29~2_combout\,
	datab => \alu|Mux21~7_combout\,
	datac => \alu|Mux21~6_combout\,
	datad => \alu|Mux29~3_combout\,
	combout => \alu|Mux21~8_combout\);

-- Location: LCCOMB_X44_Y36_N30
\alu|Mux21~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux21~9_combout\ = (\alu|Mux29~4_combout\ & ((\alu|Mux21~8_combout\ & (\alu|a32~54_combout\)) # (!\alu|Mux21~8_combout\ & ((\alu|ShiftLeft0~60_combout\))))) # (!\alu|Mux29~4_combout\ & (((\alu|Mux21~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|a32~54_combout\,
	datab => \alu|Mux29~4_combout\,
	datac => \alu|ShiftLeft0~60_combout\,
	datad => \alu|Mux21~8_combout\,
	combout => \alu|Mux21~9_combout\);

-- Location: LCCOMB_X44_Y36_N24
\alu|Mux21~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux21~11_combout\ = (\actr|alu_ctr[3]~21_combout\ & (((\alu|Mux21~9_combout\)))) # (!\actr|alu_ctr[3]~21_combout\ & ((\alu|Mux25~2_combout\ & (\alu|Mux21~10_combout\)) # (!\alu|Mux25~2_combout\ & ((\alu|Mux21~9_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \actr|alu_ctr[3]~21_combout\,
	datab => \alu|Mux21~10_combout\,
	datac => \alu|Mux25~2_combout\,
	datad => \alu|Mux21~9_combout\,
	combout => \alu|Mux21~11_combout\);

-- Location: LCFF_X44_Y36_N25
\regULA|sr_out[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \alu|Mux21~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regULA|sr_out\(10));

-- Location: LCCOMB_X44_Y35_N10
\breg_data_mux|m_out[10]~37\ : cycloneii_lcell_comb
-- Equation(s):
-- \breg_data_mux|m_out[10]~37_combout\ = (\breg_data_mux|m_out[15]~25_combout\) # ((\regULA|sr_out\(10) & !\ctr_mips|pstate.ldreg_st~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \regULA|sr_out\(10),
	datac => \breg_data_mux|m_out[15]~25_combout\,
	datad => \ctr_mips|pstate.ldreg_st~regout\,
	combout => \breg_data_mux|m_out[10]~37_combout\);

-- Location: LCCOMB_X42_Y35_N18
\bcoreg|regB[7]~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \bcoreg|regB[7]~25_combout\ = (!\bcoreg|Equal1~1_combout\ & ((\bcoreg|breg32~45\ & (\bcoreg|breg32_rtl_1_bypass\(25))) # (!\bcoreg|breg32~45\ & ((\bcoreg|breg32_rtl_1|auto_generated|ram_block1a7\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcoreg|breg32_rtl_1_bypass\(25),
	datab => \bcoreg|Equal1~1_combout\,
	datac => \bcoreg|breg32~45\,
	datad => \bcoreg|breg32_rtl_1|auto_generated|ram_block1a7\,
	combout => \bcoreg|regB[7]~25_combout\);

-- Location: LCFF_X42_Y35_N19
\rgB|sr_out[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \bcoreg|regB[7]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rgB|sr_out\(7));

-- Location: LCCOMB_X36_Y35_N14
\mux_store|m_out[15]~35\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux_store|m_out[15]~35_combout\ = (\mux_store|m_out[8]~64_combout\ & ((\mux_store|Equal1~0_combout\ & ((\rgB|sr_out\(7)))) # (!\mux_store|Equal1~0_combout\ & (\rgB|sr_out\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rgB|sr_out\(15),
	datab => \mux_store|Equal1~0_combout\,
	datac => \rgB|sr_out\(7),
	datad => \mux_store|m_out[8]~64_combout\,
	combout => \mux_store|m_out[15]~35_combout\);

-- Location: LCFF_X40_Y35_N23
\ir|sr_out[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \mem|altsyncram_component|auto_generated|q_a\(4),
	sload => VCC,
	ena => \ctr_mips|ALT_INV_pstate.fetch_st~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ir|sr_out\(4));

-- Location: LCCOMB_X41_Y35_N2
\mux_ulaB|m_out[4]~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux_ulaB|m_out[4]~44_combout\ = (\ctr_mips|pstate.decode_st~regout\ & (\ir|sr_out\(4))) # (!\ctr_mips|pstate.decode_st~regout\ & ((\ctr_mips|pstate.c_mem_add_st~regout\ & (\ir|sr_out\(4))) # (!\ctr_mips|pstate.c_mem_add_st~regout\ & 
-- ((\rgB|sr_out\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctr_mips|pstate.decode_st~regout\,
	datab => \ir|sr_out\(4),
	datac => \rgB|sr_out\(4),
	datad => \ctr_mips|pstate.c_mem_add_st~regout\,
	combout => \mux_ulaB|m_out[4]~44_combout\);

-- Location: LCCOMB_X41_Y35_N0
\mux_ulaB|m_out[4]~45\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux_ulaB|m_out[4]~45_combout\ = (\mux_ulaB|m_out[0]~18_combout\ & (((\mux_ulaB|m_out[4]~44_combout\)))) # (!\mux_ulaB|m_out[0]~18_combout\ & (\ir|sr_out\(2) & (!\mux_ulaB|m_out[2]~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir|sr_out\(2),
	datab => \mux_ulaB|m_out[0]~18_combout\,
	datac => \mux_ulaB|m_out[2]~19_combout\,
	datad => \mux_ulaB|m_out[4]~44_combout\,
	combout => \mux_ulaB|m_out[4]~45_combout\);

-- Location: LCCOMB_X41_Y31_N26
\alu|ShiftLeft0~39\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftLeft0~39_combout\ = (!\mux_ulaA|m_out[0]~27_combout\ & ((\mux_ulaA|m_out[1]~30_combout\ & ((\mux_ulaB|m_out[4]~45_combout\))) # (!\mux_ulaA|m_out[1]~30_combout\ & (\mux_ulaB|m_out[6]~41_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_ulaB|m_out[6]~41_combout\,
	datab => \mux_ulaA|m_out[1]~30_combout\,
	datac => \mux_ulaB|m_out[4]~45_combout\,
	datad => \mux_ulaA|m_out[0]~27_combout\,
	combout => \alu|ShiftLeft0~39_combout\);

-- Location: LCCOMB_X41_Y31_N28
\alu|ShiftLeft0~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftLeft0~40_combout\ = (\alu|ShiftLeft0~39_combout\) # ((\alu|ShiftLeft0~36_combout\ & \mux_ulaA|m_out[0]~27_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|ShiftLeft0~36_combout\,
	datab => \mux_ulaA|m_out[0]~27_combout\,
	datad => \alu|ShiftLeft0~39_combout\,
	combout => \alu|ShiftLeft0~40_combout\);

-- Location: LCCOMB_X44_Y31_N12
\alu|ShiftLeft0~41\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftLeft0~41_combout\ = (!\mux_ulaA|m_out[3]~28_combout\ & ((\mux_ulaA|m_out[2]~29_combout\ & ((\alu|ShiftLeft0~27_combout\))) # (!\mux_ulaA|m_out[2]~29_combout\ & (\alu|ShiftLeft0~40_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_ulaA|m_out[3]~28_combout\,
	datab => \mux_ulaA|m_out[2]~29_combout\,
	datac => \alu|ShiftLeft0~40_combout\,
	datad => \alu|ShiftLeft0~27_combout\,
	combout => \alu|ShiftLeft0~41_combout\);

-- Location: LCCOMB_X43_Y36_N0
\alu|Mux25~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux25~11_combout\ = (\mux_ulaA|m_out[6]~17_combout\) # ((\alu|Mux29~14_combout\) # (\mux_ulaB|m_out[6]~41_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mux_ulaA|m_out[6]~17_combout\,
	datac => \alu|Mux29~14_combout\,
	datad => \mux_ulaB|m_out[6]~41_combout\,
	combout => \alu|Mux25~11_combout\);

-- Location: LCCOMB_X45_Y38_N20
\alu|ShiftRight1~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftRight1~40_combout\ = (!\mux_ulaA|m_out[0]~27_combout\ & ((\mux_ulaA|m_out[1]~30_combout\ & ((\mux_ulaB|m_out[8]~37_combout\))) # (!\mux_ulaA|m_out[1]~30_combout\ & (\mux_ulaB|m_out[6]~41_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_ulaB|m_out[6]~41_combout\,
	datab => \mux_ulaA|m_out[1]~30_combout\,
	datac => \mux_ulaA|m_out[0]~27_combout\,
	datad => \mux_ulaB|m_out[8]~37_combout\,
	combout => \alu|ShiftRight1~40_combout\);

-- Location: LCCOMB_X45_Y38_N18
\alu|ShiftRight1~41\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftRight1~41_combout\ = (\mux_ulaA|m_out[1]~30_combout\ & (\mux_ulaB|m_out[9]~35_combout\)) # (!\mux_ulaA|m_out[1]~30_combout\ & ((\mux_ulaB|m_out[7]~39_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mux_ulaB|m_out[9]~35_combout\,
	datac => \mux_ulaB|m_out[7]~39_combout\,
	datad => \mux_ulaA|m_out[1]~30_combout\,
	combout => \alu|ShiftRight1~41_combout\);

-- Location: LCCOMB_X45_Y38_N16
\alu|ShiftRight1~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftRight1~42_combout\ = (\alu|ShiftRight1~40_combout\) # ((\mux_ulaA|m_out[0]~27_combout\ & \alu|ShiftRight1~41_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_ulaA|m_out[0]~27_combout\,
	datac => \alu|ShiftRight1~40_combout\,
	datad => \alu|ShiftRight1~41_combout\,
	combout => \alu|ShiftRight1~42_combout\);

-- Location: LCCOMB_X42_Y36_N16
\alu|Mux25~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux25~13_combout\ = ((\ctr_mips|WideOr0~combout\ & (\rgA|sr_out\(3))) # (!\ctr_mips|WideOr0~combout\ & ((\pc|sr_out\(3))))) # (!\alu|Mux25~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rgA|sr_out\(3),
	datab => \ctr_mips|WideOr0~combout\,
	datac => \pc|sr_out\(3),
	datad => \alu|Mux25~2_combout\,
	combout => \alu|Mux25~13_combout\);

-- Location: LCCOMB_X42_Y36_N10
\alu|Mux25~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux25~3_combout\ = (\alu|Mux25~2_combout\ & ((\mux_ulaA|m_out[3]~28_combout\) # (\mux_ulaA|m_out[2]~29_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_ulaA|m_out[3]~28_combout\,
	datac => \mux_ulaA|m_out[2]~29_combout\,
	datad => \alu|Mux25~2_combout\,
	combout => \alu|Mux25~3_combout\);

-- Location: LCCOMB_X42_Y36_N4
\alu|Mux25~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux25~4_combout\ = (\alu|Mux25~13_combout\ & ((\alu|Mux29~5_combout\) # ((\actr|alu_ctr[0]~16_combout\) # (\alu|Mux25~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|Mux29~5_combout\,
	datab => \actr|alu_ctr[0]~16_combout\,
	datac => \alu|Mux25~13_combout\,
	datad => \alu|Mux25~3_combout\,
	combout => \alu|Mux25~4_combout\);

-- Location: LCCOMB_X39_Y36_N6
\alu|ShiftRight0~70\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftRight0~70_combout\ = (!\mux_ulaA|m_out[3]~28_combout\ & ((\mux_ulaA|m_out[2]~29_combout\ & ((\alu|ShiftRight1~35_combout\))) # (!\mux_ulaA|m_out[2]~29_combout\ & (\alu|ShiftRight1~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_ulaA|m_out[3]~28_combout\,
	datab => \mux_ulaA|m_out[2]~29_combout\,
	datac => \alu|ShiftRight1~30_combout\,
	datad => \alu|ShiftRight1~35_combout\,
	combout => \alu|ShiftRight0~70_combout\);

-- Location: LCCOMB_X44_Y36_N22
\alu|ShiftLeft0~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftLeft0~42_combout\ = (\mux_ulaA|m_out[1]~30_combout\) # ((\mux_ulaA|m_out[2]~29_combout\) # (\mux_ulaA|m_out[0]~27_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mux_ulaA|m_out[1]~30_combout\,
	datac => \mux_ulaA|m_out[2]~29_combout\,
	datad => \mux_ulaA|m_out[0]~27_combout\,
	combout => \alu|ShiftLeft0~42_combout\);

-- Location: LCCOMB_X44_Y38_N4
\alu|ShiftRight0~69\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftRight0~69_combout\ = (\mux_ulaA|m_out[3]~28_combout\ & ((\alu|ShiftLeft0~42_combout\ & ((\rgB|sr_out\(31)))) # (!\alu|ShiftLeft0~42_combout\ & (\rgB|sr_out\(30)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rgB|sr_out\(30),
	datab => \rgB|sr_out\(31),
	datac => \mux_ulaA|m_out[3]~28_combout\,
	datad => \alu|ShiftLeft0~42_combout\,
	combout => \alu|ShiftRight0~69_combout\);

-- Location: LCCOMB_X43_Y38_N28
\alu|ShiftRight0~71\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftRight0~71_combout\ = (!\mux_ulaB|Equal2~0_combout\ & ((\alu|ShiftRight0~70_combout\) # (\alu|ShiftRight0~69_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_ulaB|Equal2~0_combout\,
	datac => \alu|ShiftRight0~70_combout\,
	datad => \alu|ShiftRight0~69_combout\,
	combout => \alu|ShiftRight0~71_combout\);

-- Location: LCCOMB_X41_Y31_N18
\alu|Mux25~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux25~5_combout\ = (\actr|alu_ctr[1]~14_combout\ & ((\mux_ulaB|m_out[6]~41_combout\ & ((\mux_ulaA|m_out[6]~17_combout\) # (\actr|alu_ctr[0]~16_combout\))) # (!\mux_ulaB|m_out[6]~41_combout\ & (\mux_ulaA|m_out[6]~17_combout\ & 
-- \actr|alu_ctr[0]~16_combout\)))) # (!\actr|alu_ctr[1]~14_combout\ & (((!\actr|alu_ctr[0]~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100010110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_ulaB|m_out[6]~41_combout\,
	datab => \actr|alu_ctr[1]~14_combout\,
	datac => \mux_ulaA|m_out[6]~17_combout\,
	datad => \actr|alu_ctr[0]~16_combout\,
	combout => \alu|Mux25~5_combout\);

-- Location: LCCOMB_X41_Y31_N0
\alu|ShiftRight1~66\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftRight1~66_combout\ = (\mux_ulaA|m_out[3]~28_combout\ & (\alu|ShiftLeft0~43_combout\ & (\alu|ShiftRight1~36_combout\))) # (!\mux_ulaA|m_out[3]~28_combout\ & ((\alu|ShiftRight0~72_combout\) # ((\alu|ShiftLeft0~43_combout\ & 
-- \alu|ShiftRight1~36_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_ulaA|m_out[3]~28_combout\,
	datab => \alu|ShiftLeft0~43_combout\,
	datac => \alu|ShiftRight1~36_combout\,
	datad => \alu|ShiftRight0~72_combout\,
	combout => \alu|ShiftRight1~66_combout\);

-- Location: LCCOMB_X41_Y31_N12
\alu|Mux25~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux25~6_combout\ = (\alu|Mux25~5_combout\ & ((\alu|Add1~12_combout\) # ((!\alu|Mux29~6_combout\)))) # (!\alu|Mux25~5_combout\ & (((\alu|Mux29~6_combout\ & \alu|ShiftRight1~66_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|Add1~12_combout\,
	datab => \alu|Mux25~5_combout\,
	datac => \alu|Mux29~6_combout\,
	datad => \alu|ShiftRight1~66_combout\,
	combout => \alu|Mux25~6_combout\);

-- Location: LCCOMB_X42_Y36_N26
\alu|Mux25~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux25~7_combout\ = (\alu|Mux29~9_combout\ & ((\alu|Mux29~10_combout\ & (\alu|tmp[6]~12_combout\)) # (!\alu|Mux29~10_combout\ & ((\alu|Mux25~6_combout\))))) # (!\alu|Mux29~9_combout\ & (((!\alu|Mux29~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|Mux29~9_combout\,
	datab => \alu|tmp[6]~12_combout\,
	datac => \alu|Mux29~10_combout\,
	datad => \alu|Mux25~6_combout\,
	combout => \alu|Mux25~7_combout\);

-- Location: LCCOMB_X42_Y36_N12
\alu|Mux25~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux25~8_combout\ = (\alu|Mux29~5_combout\ & (((\alu|Mux25~7_combout\)))) # (!\alu|Mux29~5_combout\ & ((\alu|Mux25~7_combout\ & (\alu|ShiftRight0~71_combout\)) # (!\alu|Mux25~7_combout\ & ((\mux_ulaB|m_out[31]~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|Mux29~5_combout\,
	datab => \alu|ShiftRight0~71_combout\,
	datac => \mux_ulaB|m_out[31]~4_combout\,
	datad => \alu|Mux25~7_combout\,
	combout => \alu|Mux25~8_combout\);

-- Location: LCCOMB_X42_Y36_N30
\alu|Mux25~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux25~9_combout\ = (\alu|Mux25~3_combout\ & (((\alu|ShiftRight0~73_combout\)) # (!\alu|Mux25~4_combout\))) # (!\alu|Mux25~3_combout\ & (\alu|Mux25~4_combout\ & ((\alu|Mux25~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|Mux25~3_combout\,
	datab => \alu|Mux25~4_combout\,
	datac => \alu|ShiftRight0~73_combout\,
	datad => \alu|Mux25~8_combout\,
	combout => \alu|Mux25~9_combout\);

-- Location: LCCOMB_X42_Y36_N24
\alu|Mux25~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux25~10_combout\ = (\alu|Mux25~13_combout\ & (((\alu|Mux25~9_combout\)))) # (!\alu|Mux25~13_combout\ & ((\alu|Mux25~9_combout\ & (\alu|ShiftRight1~47_combout\)) # (!\alu|Mux25~9_combout\ & ((\alu|ShiftRight1~42_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|ShiftRight1~47_combout\,
	datab => \alu|ShiftRight1~42_combout\,
	datac => \alu|Mux25~13_combout\,
	datad => \alu|Mux25~9_combout\,
	combout => \alu|Mux25~10_combout\);

-- Location: LCCOMB_X43_Y36_N2
\alu|Mux25~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux25~12_combout\ = (\alu|Mux29~2_combout\ & (((\alu|Mux29~3_combout\)))) # (!\alu|Mux29~2_combout\ & ((\alu|Mux29~3_combout\ & (!\alu|Mux25~11_combout\)) # (!\alu|Mux29~3_combout\ & ((\alu|Mux25~10_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010110110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|Mux29~2_combout\,
	datab => \alu|Mux25~11_combout\,
	datac => \alu|Mux29~3_combout\,
	datad => \alu|Mux25~10_combout\,
	combout => \alu|Mux25~12_combout\);

-- Location: LCCOMB_X43_Y36_N16
\alu|Mux25\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux25~combout\ = (\alu|Mux29~4_combout\ & ((\alu|Mux25~12_combout\ & (\alu|a32~50_combout\)) # (!\alu|Mux25~12_combout\ & ((\alu|ShiftLeft0~41_combout\))))) # (!\alu|Mux29~4_combout\ & (((\alu|Mux25~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|a32~50_combout\,
	datab => \alu|ShiftLeft0~41_combout\,
	datac => \alu|Mux29~4_combout\,
	datad => \alu|Mux25~12_combout\,
	combout => \alu|Mux25~combout\);

-- Location: LCFF_X43_Y36_N17
\regULA|sr_out[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \alu|Mux25~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regULA|sr_out\(6));

-- Location: LCFF_X36_Y35_N9
\rdm|sr_out[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \mem|altsyncram_component|auto_generated|q_a\(14),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rdm|sr_out\(14));

-- Location: LCFF_X36_Y35_N11
\rdm|sr_out[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \mem|altsyncram_component|auto_generated|q_a\(6),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rdm|sr_out\(6));

-- Location: LCFF_X36_Y34_N19
\ctr_mips|pstate.writereg_st\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \ctr_mips|pstate.rtype_ex_st~regout\,
	aclr => \rst~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ctr_mips|pstate.writereg_st~regout\);

-- Location: LCCOMB_X36_Y33_N16
\ctr_mips|nstate.branch_ex_st~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ctr_mips|nstate.branch_ex_st~0_combout\ = (!\ir|sr_out\(27) & (!\ir|sr_out\(29) & !\ir|sr_out\(30)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ir|sr_out\(27),
	datac => \ir|sr_out\(29),
	datad => \ir|sr_out\(30),
	combout => \ctr_mips|nstate.branch_ex_st~0_combout\);

-- Location: LCCOMB_X36_Y32_N6
\ctr_mips|unsig~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ctr_mips|unsig~0_combout\ = (\ir|sr_out\(31) & (\ctr_mips|pstate.writereg_st~regout\ & (\ir|sr_out\(26) & \ctr_mips|nstate.branch_ex_st~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir|sr_out\(31),
	datab => \ctr_mips|pstate.writereg_st~regout\,
	datac => \ir|sr_out\(26),
	datad => \ctr_mips|nstate.branch_ex_st~0_combout\,
	combout => \ctr_mips|unsig~0_combout\);

-- Location: LCCOMB_X38_Y35_N20
\breg_data_mux|m_out[3]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \breg_data_mux|m_out[3]~0_combout\ = \ir|sr_out\(1) $ (!\ctr_mips|unsig~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ir|sr_out\(1),
	datad => \ctr_mips|unsig~0_combout\,
	combout => \breg_data_mux|m_out[3]~0_combout\);

-- Location: LCCOMB_X36_Y35_N10
\breg_data_mux|m_out[6]~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \breg_data_mux|m_out[6]~28_combout\ = (\breg_data_mux|m_out[6]~27_combout\ & ((\rdm|sr_out\(14)) # ((!\breg_data_mux|m_out[3]~0_combout\)))) # (!\breg_data_mux|m_out[6]~27_combout\ & (((\rdm|sr_out\(6) & \breg_data_mux|m_out[3]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \breg_data_mux|m_out[6]~27_combout\,
	datab => \rdm|sr_out\(14),
	datac => \rdm|sr_out\(6),
	datad => \breg_data_mux|m_out[3]~0_combout\,
	combout => \breg_data_mux|m_out[6]~28_combout\);

-- Location: LCCOMB_X36_Y36_N16
\breg_data_mux|m_out[6]~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \breg_data_mux|m_out[6]~29_combout\ = (\ctr_mips|pstate.ldreg_st~regout\ & ((\breg_data_mux|m_out[6]~28_combout\))) # (!\ctr_mips|pstate.ldreg_st~regout\ & (\regULA|sr_out\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctr_mips|pstate.ldreg_st~regout\,
	datac => \regULA|sr_out\(6),
	datad => \breg_data_mux|m_out[6]~28_combout\,
	combout => \breg_data_mux|m_out[6]~29_combout\);

-- Location: LCCOMB_X39_Y38_N8
\bcoreg|regB[25]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \bcoreg|regB[25]~7_combout\ = (!\bcoreg|Equal1~1_combout\ & ((\bcoreg|breg32~45\ & (\bcoreg|breg32_rtl_1_bypass\(61))) # (!\bcoreg|breg32~45\ & ((\bcoreg|breg32_rtl_1|auto_generated|ram_block1a25\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcoreg|breg32_rtl_1_bypass\(61),
	datab => \bcoreg|breg32~45\,
	datac => \bcoreg|Equal1~1_combout\,
	datad => \bcoreg|breg32_rtl_1|auto_generated|ram_block1a25\,
	combout => \bcoreg|regB[25]~7_combout\);

-- Location: LCFF_X39_Y38_N9
\rgB|sr_out[25]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \bcoreg|regB[25]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rgB|sr_out\(25));

-- Location: LCCOMB_X34_Y33_N24
\mux_store|m_out[25]~49\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux_store|m_out[25]~49_combout\ = (\rgB|sr_out\(9) & ((\mux_store|m_out[24]~45_combout\) # ((\rgB|sr_out\(1) & \mux_store|m_out[24]~46_combout\)))) # (!\rgB|sr_out\(9) & (\rgB|sr_out\(1) & ((\mux_store|m_out[24]~46_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rgB|sr_out\(9),
	datab => \rgB|sr_out\(1),
	datac => \mux_store|m_out[24]~45_combout\,
	datad => \mux_store|m_out[24]~46_combout\,
	combout => \mux_store|m_out[25]~49_combout\);

-- Location: LCCOMB_X34_Y33_N22
\mux_store|m_out[25]~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux_store|m_out[25]~50_combout\ = (\b_enab|byteenable[0]~8_combout\ & (((\mux_store|m_out[25]~49_combout\ & \ctr_mips|pstate.writemem_st~regout\)))) # (!\b_enab|byteenable[0]~8_combout\ & ((\rgB|sr_out\(25)) # ((\mux_store|m_out[25]~49_combout\ & 
-- \ctr_mips|pstate.writemem_st~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b_enab|byteenable[0]~8_combout\,
	datab => \rgB|sr_out\(25),
	datac => \mux_store|m_out[25]~49_combout\,
	datad => \ctr_mips|pstate.writemem_st~regout\,
	combout => \mux_store|m_out[25]~50_combout\);

-- Location: LCCOMB_X38_Y33_N20
\ir|sr_out[22]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \ir|sr_out[22]~feeder_combout\ = \mem|altsyncram_component|auto_generated|q_a\(22)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mem|altsyncram_component|auto_generated|q_a\(22),
	combout => \ir|sr_out[22]~feeder_combout\);

-- Location: LCFF_X38_Y33_N21
\ir|sr_out[22]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \ir|sr_out[22]~feeder_combout\,
	ena => \ctr_mips|ALT_INV_pstate.fetch_st~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ir|sr_out\(22));

-- Location: LCCOMB_X36_Y31_N8
\bcoreg|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \bcoreg|Equal0~0_combout\ = (!\ir|sr_out\(24) & (!\ir|sr_out\(21) & (!\ir|sr_out\(22) & !\ir|sr_out\(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir|sr_out\(24),
	datab => \ir|sr_out\(21),
	datac => \ir|sr_out\(22),
	datad => \ir|sr_out\(23),
	combout => \bcoreg|Equal0~0_combout\);

-- Location: LCCOMB_X36_Y31_N30
\bcoreg|Equal0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \bcoreg|Equal0~1_combout\ = (\bcoreg|Equal0~0_combout\ & !\ir|sr_out\(25))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bcoreg|Equal0~0_combout\,
	datad => \ir|sr_out\(25),
	combout => \bcoreg|Equal0~1_combout\);

-- Location: LCCOMB_X42_Y37_N24
\bcoreg|regA[4]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \bcoreg|regA[4]~0_combout\ = (!\bcoreg|Equal0~1_combout\ & ((\bcoreg|breg32~combout\ & (\bcoreg|breg32_rtl_1_bypass\(19))) # (!\bcoreg|breg32~combout\ & ((\bcoreg|breg32_rtl_0|auto_generated|ram_block1a4\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcoreg|breg32_rtl_1_bypass\(19),
	datab => \bcoreg|breg32~combout\,
	datac => \bcoreg|Equal0~1_combout\,
	datad => \bcoreg|breg32_rtl_0|auto_generated|ram_block1a4\,
	combout => \bcoreg|regA[4]~0_combout\);

-- Location: LCFF_X42_Y37_N25
\rgA|sr_out[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \bcoreg|regA[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rgA|sr_out\(4));

-- Location: LCCOMB_X42_Y37_N10
\alu|a32~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|a32~48_combout\ = \mux_ulaB|m_out[4]~45_combout\ $ (((\ctr_mips|WideOr0~combout\ & (\rgA|sr_out\(4))) # (!\ctr_mips|WideOr0~combout\ & ((\pc|sr_out\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101100101101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_ulaB|m_out[4]~45_combout\,
	datab => \ctr_mips|WideOr0~combout\,
	datac => \rgA|sr_out\(4),
	datad => \pc|sr_out\(4),
	combout => \alu|a32~48_combout\);

-- Location: LCCOMB_X44_Y37_N2
\alu|ShiftRight0~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftRight0~28_combout\ = (\mux_ulaA|m_out[1]~30_combout\ & ((\mux_ulaA|m_out[0]~27_combout\ & (\mux_ulaB|m_out[7]~39_combout\)) # (!\mux_ulaA|m_out[0]~27_combout\ & ((\mux_ulaB|m_out[6]~41_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_ulaA|m_out[0]~27_combout\,
	datab => \mux_ulaB|m_out[7]~39_combout\,
	datac => \mux_ulaB|m_out[6]~41_combout\,
	datad => \mux_ulaA|m_out[1]~30_combout\,
	combout => \alu|ShiftRight0~28_combout\);

-- Location: LCCOMB_X44_Y37_N0
\alu|ShiftRight1~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftRight1~18_combout\ = (\mux_ulaA|m_out[0]~27_combout\ & (\mux_ulaB|m_out[5]~43_combout\)) # (!\mux_ulaA|m_out[0]~27_combout\ & ((\mux_ulaB|m_out[4]~45_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_ulaB|m_out[5]~43_combout\,
	datac => \mux_ulaA|m_out[0]~27_combout\,
	datad => \mux_ulaB|m_out[4]~45_combout\,
	combout => \alu|ShiftRight1~18_combout\);

-- Location: LCCOMB_X44_Y37_N14
\alu|ShiftRight0~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftRight0~29_combout\ = (\alu|ShiftRight0~28_combout\) # ((!\mux_ulaA|m_out[1]~30_combout\ & \alu|ShiftRight1~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \alu|ShiftRight0~28_combout\,
	datac => \mux_ulaA|m_out[1]~30_combout\,
	datad => \alu|ShiftRight1~18_combout\,
	combout => \alu|ShiftRight0~29_combout\);

-- Location: LCCOMB_X42_Y37_N22
\alu|Mux27~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux27~0_combout\ = (\actr|alu_ctr[0]~16_combout\ & (\actr|alu_ctr[1]~14_combout\ & ((\mux_ulaB|m_out[4]~45_combout\) # (\mux_ulaA|m_out[4]~0_combout\)))) # (!\actr|alu_ctr[0]~16_combout\ & (((\mux_ulaB|m_out[4]~45_combout\ & 
-- \mux_ulaA|m_out[4]~0_combout\)) # (!\actr|alu_ctr[1]~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001110000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_ulaB|m_out[4]~45_combout\,
	datab => \actr|alu_ctr[0]~16_combout\,
	datac => \actr|alu_ctr[1]~14_combout\,
	datad => \mux_ulaA|m_out[4]~0_combout\,
	combout => \alu|Mux27~0_combout\);

-- Location: LCCOMB_X42_Y38_N22
\alu|Mux27~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux27~1_combout\ = (\alu|Mux29~6_combout\ & ((\alu|Mux27~0_combout\ & (\alu|Add1~8_combout\)) # (!\alu|Mux27~0_combout\ & ((\alu|ShiftRight1~64_combout\))))) # (!\alu|Mux29~6_combout\ & (((\alu|Mux27~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|Add1~8_combout\,
	datab => \alu|Mux29~6_combout\,
	datac => \alu|ShiftRight1~64_combout\,
	datad => \alu|Mux27~0_combout\,
	combout => \alu|Mux27~1_combout\);

-- Location: LCCOMB_X42_Y38_N16
\alu|Mux27~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux27~2_combout\ = (\alu|Mux29~10_combout\ & (\alu|tmp[4]~8_combout\ & (\alu|Mux29~9_combout\))) # (!\alu|Mux29~10_combout\ & (((\alu|Mux27~1_combout\) # (!\alu|Mux29~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|tmp[4]~8_combout\,
	datab => \alu|Mux29~10_combout\,
	datac => \alu|Mux29~9_combout\,
	datad => \alu|Mux27~1_combout\,
	combout => \alu|Mux27~2_combout\);

-- Location: LCCOMB_X42_Y38_N26
\alu|Mux27~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux27~3_combout\ = (\alu|Mux29~5_combout\ & (((\alu|Mux27~2_combout\)))) # (!\alu|Mux29~5_combout\ & ((\alu|Mux27~2_combout\ & ((\alu|ShiftRight0~61_combout\))) # (!\alu|Mux27~2_combout\ & (\mux_ulaB|m_out[31]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_ulaB|m_out[31]~4_combout\,
	datab => \alu|Mux29~5_combout\,
	datac => \alu|Mux27~2_combout\,
	datad => \alu|ShiftRight0~61_combout\,
	combout => \alu|Mux27~3_combout\);

-- Location: LCCOMB_X42_Y38_N10
\alu|Mux27~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux27~4_combout\ = (\alu|Mux25~3_combout\ & ((\alu|ShiftRight0~63_combout\) # ((!\alu|Mux25~4_combout\)))) # (!\alu|Mux25~3_combout\ & (((\alu|Mux25~4_combout\ & \alu|Mux27~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|Mux25~3_combout\,
	datab => \alu|ShiftRight0~63_combout\,
	datac => \alu|Mux25~4_combout\,
	datad => \alu|Mux27~3_combout\,
	combout => \alu|Mux27~4_combout\);

-- Location: LCCOMB_X42_Y37_N8
\alu|Mux27~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux27~5_combout\ = (\alu|Mux25~13_combout\ & (((\alu|Mux27~4_combout\)))) # (!\alu|Mux25~13_combout\ & ((\alu|Mux27~4_combout\ & (\alu|ShiftRight0~27_combout\)) # (!\alu|Mux27~4_combout\ & ((\alu|ShiftRight0~29_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|ShiftRight0~27_combout\,
	datab => \alu|ShiftRight0~29_combout\,
	datac => \alu|Mux25~13_combout\,
	datad => \alu|Mux27~4_combout\,
	combout => \alu|Mux27~5_combout\);

-- Location: LCCOMB_X42_Y37_N30
\alu|Mux27~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux27~6_combout\ = (\alu|Mux29~14_combout\) # ((\mux_ulaB|m_out[4]~45_combout\) # (\mux_ulaA|m_out[4]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \alu|Mux29~14_combout\,
	datac => \mux_ulaB|m_out[4]~45_combout\,
	datad => \mux_ulaA|m_out[4]~0_combout\,
	combout => \alu|Mux27~6_combout\);

-- Location: LCCOMB_X42_Y37_N0
\alu|Mux27~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux27~7_combout\ = (\alu|Mux29~2_combout\ & (\alu|Mux29~3_combout\)) # (!\alu|Mux29~2_combout\ & ((\alu|Mux29~3_combout\ & ((!\alu|Mux27~6_combout\))) # (!\alu|Mux29~3_combout\ & (\alu|Mux27~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|Mux29~2_combout\,
	datab => \alu|Mux29~3_combout\,
	datac => \alu|Mux27~5_combout\,
	datad => \alu|Mux27~6_combout\,
	combout => \alu|Mux27~7_combout\);

-- Location: LCCOMB_X42_Y37_N6
\alu|Mux27\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux27~combout\ = (\alu|Mux29~4_combout\ & ((\alu|Mux27~7_combout\ & (\alu|a32~48_combout\)) # (!\alu|Mux27~7_combout\ & ((\alu|ShiftLeft0~142_combout\))))) # (!\alu|Mux29~4_combout\ & (((\alu|Mux27~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|Mux29~4_combout\,
	datab => \alu|a32~48_combout\,
	datac => \alu|ShiftLeft0~142_combout\,
	datad => \alu|Mux27~7_combout\,
	combout => \alu|Mux27~combout\);

-- Location: LCCOMB_X42_Y37_N12
\regULA|sr_out[4]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \regULA|sr_out[4]~feeder_combout\ = \alu|Mux27~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \alu|Mux27~combout\,
	combout => \regULA|sr_out[4]~feeder_combout\);

-- Location: LCFF_X42_Y37_N13
\regULA|sr_out[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \regULA|sr_out[4]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regULA|sr_out\(4));

-- Location: LCFF_X36_Y35_N31
\rdm|sr_out[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \mem|altsyncram_component|auto_generated|q_a\(12),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rdm|sr_out\(12));

-- Location: LCFF_X36_Y35_N29
\rdm|sr_out[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \mem|altsyncram_component|auto_generated|q_a\(4),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rdm|sr_out\(4));

-- Location: LCCOMB_X36_Y35_N30
\breg_data_mux|m_out[4]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \breg_data_mux|m_out[4]~6_combout\ = (\breg_data_mux|m_out[4]~5_combout\ & (((\rdm|sr_out\(12))) # (!\breg_data_mux|m_out[3]~0_combout\))) # (!\breg_data_mux|m_out[4]~5_combout\ & (\breg_data_mux|m_out[3]~0_combout\ & ((\rdm|sr_out\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \breg_data_mux|m_out[4]~5_combout\,
	datab => \breg_data_mux|m_out[3]~0_combout\,
	datac => \rdm|sr_out\(12),
	datad => \rdm|sr_out\(4),
	combout => \breg_data_mux|m_out[4]~6_combout\);

-- Location: LCCOMB_X36_Y35_N4
\breg_data_mux|m_out[4]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \breg_data_mux|m_out[4]~7_combout\ = (\ctr_mips|pstate.ldreg_st~regout\ & ((\breg_data_mux|m_out[4]~6_combout\))) # (!\ctr_mips|pstate.ldreg_st~regout\ & (\regULA|sr_out\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctr_mips|pstate.ldreg_st~regout\,
	datab => \regULA|sr_out\(4),
	datad => \breg_data_mux|m_out[4]~6_combout\,
	combout => \breg_data_mux|m_out[4]~7_combout\);

-- Location: LCCOMB_X39_Y38_N26
\bcoreg|regB[24]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \bcoreg|regB[24]~8_combout\ = (!\bcoreg|Equal1~1_combout\ & ((\bcoreg|breg32~45\ & ((\bcoreg|breg32_rtl_1_bypass\(59)))) # (!\bcoreg|breg32~45\ & (\bcoreg|breg32_rtl_1|auto_generated|ram_block1a24\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcoreg|Equal1~1_combout\,
	datab => \bcoreg|breg32~45\,
	datac => \bcoreg|breg32_rtl_1|auto_generated|ram_block1a24\,
	datad => \bcoreg|breg32_rtl_1_bypass\(59),
	combout => \bcoreg|regB[24]~8_combout\);

-- Location: LCFF_X39_Y38_N27
\rgB|sr_out[24]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \bcoreg|regB[24]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rgB|sr_out\(24));

-- Location: LCCOMB_X39_Y38_N14
\alu|ShiftRight0~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftRight0~42_combout\ = (\mux_ulaA|m_out[1]~30_combout\ & ((\rgB|sr_out\(24)))) # (!\mux_ulaA|m_out[1]~30_combout\ & (\rgB|sr_out\(22)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rgB|sr_out\(22),
	datab => \rgB|sr_out\(24),
	datad => \mux_ulaA|m_out[1]~30_combout\,
	combout => \alu|ShiftRight0~42_combout\);

-- Location: LCCOMB_X39_Y38_N28
\alu|ShiftRight1~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftRight1~30_combout\ = (\mux_ulaA|m_out[0]~27_combout\ & ((\alu|ShiftRight1~29_combout\))) # (!\mux_ulaA|m_out[0]~27_combout\ & (\alu|ShiftRight0~42_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_ulaA|m_out[0]~27_combout\,
	datac => \alu|ShiftRight0~42_combout\,
	datad => \alu|ShiftRight1~29_combout\,
	combout => \alu|ShiftRight1~30_combout\);

-- Location: LCCOMB_X40_Y36_N14
\alu|ShiftRight0~72\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftRight0~72_combout\ = (!\mux_ulaB|Equal2~0_combout\ & ((\mux_ulaA|m_out[2]~29_combout\ & ((\alu|ShiftRight1~35_combout\))) # (!\mux_ulaA|m_out[2]~29_combout\ & (\alu|ShiftRight1~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_ulaA|m_out[2]~29_combout\,
	datab => \mux_ulaB|Equal2~0_combout\,
	datac => \alu|ShiftRight1~30_combout\,
	datad => \alu|ShiftRight1~35_combout\,
	combout => \alu|ShiftRight0~72_combout\);

-- Location: LCCOMB_X43_Y30_N14
\alu|Mux17~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux17~10_combout\ = (\mux_ulaA|m_out[3]~28_combout\ & ((\alu|ShiftRight0~72_combout\))) # (!\mux_ulaA|m_out[3]~28_combout\ & (\alu|ShiftRight0~73_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \alu|ShiftRight0~73_combout\,
	datac => \mux_ulaA|m_out[3]~28_combout\,
	datad => \alu|ShiftRight0~72_combout\,
	combout => \alu|Mux17~10_combout\);

-- Location: LCCOMB_X43_Y35_N12
\pc|sr_out[14]~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \pc|sr_out[14]~16_combout\ = (\ctr_mips|pstate.branch_ex_st~regout\ & (\regULA|sr_out\(14))) # (!\ctr_mips|pstate.branch_ex_st~regout\ & ((\alu|Mux17~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctr_mips|pstate.branch_ex_st~regout\,
	datab => \regULA|sr_out\(14),
	datad => \alu|Mux17~11_combout\,
	combout => \pc|sr_out[14]~16_combout\);

-- Location: LCFF_X43_Y35_N13
\pc|sr_out[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \pc|sr_out[14]~16_combout\,
	sdata => \ir|sr_out\(12),
	sclr => \rst~combout\,
	sload => \ctr_mips|pstate.jump_ex_st~regout\,
	ena => \pc|sr_out[0]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pc|sr_out\(14));

-- Location: LCCOMB_X42_Y30_N26
\alu|a32~58\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|a32~58_combout\ = \mux_ulaB|m_out[14]~25_combout\ $ (((\ctr_mips|WideOr0~combout\ & (\rgA|sr_out\(14))) # (!\ctr_mips|WideOr0~combout\ & ((\pc|sr_out\(14))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110101111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctr_mips|WideOr0~combout\,
	datab => \rgA|sr_out\(14),
	datac => \mux_ulaB|m_out[14]~25_combout\,
	datad => \pc|sr_out\(14),
	combout => \alu|a32~58_combout\);

-- Location: LCCOMB_X42_Y30_N30
\alu|Mux17~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux17~7_combout\ = (\mux_ulaA|m_out[14]~19_combout\) # ((\mux_ulaB|m_out[14]~25_combout\) # (\alu|Mux29~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_ulaA|m_out[14]~19_combout\,
	datac => \mux_ulaB|m_out[14]~25_combout\,
	datad => \alu|Mux29~14_combout\,
	combout => \alu|Mux17~7_combout\);

-- Location: LCCOMB_X42_Y30_N16
\alu|ShiftRight0~85\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftRight0~85_combout\ = (!\mux_ulaB|Equal2~0_combout\ & ((\alu|ShiftRight0~10_combout\ & (\rgB|sr_out\(30))) # (!\alu|ShiftRight0~10_combout\ & ((\rgB|sr_out\(31))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rgB|sr_out\(30),
	datab => \alu|ShiftRight0~10_combout\,
	datac => \rgB|sr_out\(31),
	datad => \mux_ulaB|Equal2~0_combout\,
	combout => \alu|ShiftRight0~85_combout\);

-- Location: LCCOMB_X42_Y30_N22
\alu|ShiftRight1~72\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftRight1~72_combout\ = (!\mux_ulaA|m_out[1]~30_combout\ & (\alu|ShiftLeft0~140_combout\ & \alu|ShiftRight1~36_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mux_ulaA|m_out[1]~30_combout\,
	datac => \alu|ShiftLeft0~140_combout\,
	datad => \alu|ShiftRight1~36_combout\,
	combout => \alu|ShiftRight1~72_combout\);

-- Location: LCCOMB_X42_Y30_N14
\alu|Mux17~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux17~3_combout\ = (\alu|Mux17~2_combout\ & (((\alu|Add1~28_combout\) # (!\alu|Mux29~6_combout\)))) # (!\alu|Mux17~2_combout\ & (\alu|ShiftRight1~72_combout\ & (\alu|Mux29~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|Mux17~2_combout\,
	datab => \alu|ShiftRight1~72_combout\,
	datac => \alu|Mux29~6_combout\,
	datad => \alu|Add1~28_combout\,
	combout => \alu|Mux17~3_combout\);

-- Location: LCCOMB_X42_Y30_N12
\alu|Mux17~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux17~4_combout\ = (\alu|Mux29~9_combout\ & ((\alu|Mux29~10_combout\ & ((\alu|tmp[14]~28_combout\))) # (!\alu|Mux29~10_combout\ & (\alu|Mux17~3_combout\)))) # (!\alu|Mux29~9_combout\ & (!\alu|Mux29~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100100110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|Mux29~9_combout\,
	datab => \alu|Mux29~10_combout\,
	datac => \alu|Mux17~3_combout\,
	datad => \alu|tmp[14]~28_combout\,
	combout => \alu|Mux17~4_combout\);

-- Location: LCCOMB_X42_Y30_N6
\alu|Mux17~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux17~5_combout\ = (\alu|Mux29~5_combout\ & (((\alu|Mux17~4_combout\)))) # (!\alu|Mux29~5_combout\ & ((\alu|Mux17~4_combout\ & ((\alu|ShiftRight0~85_combout\))) # (!\alu|Mux17~4_combout\ & (\mux_ulaB|m_out[31]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_ulaB|m_out[31]~4_combout\,
	datab => \alu|Mux29~5_combout\,
	datac => \alu|ShiftRight0~85_combout\,
	datad => \alu|Mux17~4_combout\,
	combout => \alu|Mux17~5_combout\);

-- Location: LCCOMB_X42_Y30_N28
\alu|Mux17~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux17~6_combout\ = (\alu|Mux17~5_combout\ & ((\alu|Mux29~5_combout\) # (\actr|alu_ctr[0]~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \alu|Mux29~5_combout\,
	datac => \actr|alu_ctr[0]~16_combout\,
	datad => \alu|Mux17~5_combout\,
	combout => \alu|Mux17~6_combout\);

-- Location: LCCOMB_X42_Y30_N0
\alu|Mux17~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux17~8_combout\ = (\alu|Mux29~2_combout\ & (\alu|Mux29~3_combout\)) # (!\alu|Mux29~2_combout\ & ((\alu|Mux29~3_combout\ & (!\alu|Mux17~7_combout\)) # (!\alu|Mux29~3_combout\ & ((\alu|Mux17~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001110110001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|Mux29~2_combout\,
	datab => \alu|Mux29~3_combout\,
	datac => \alu|Mux17~7_combout\,
	datad => \alu|Mux17~6_combout\,
	combout => \alu|Mux17~8_combout\);

-- Location: LCCOMB_X42_Y30_N18
\alu|Mux17~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux17~9_combout\ = (\alu|Mux29~4_combout\ & ((\alu|Mux17~8_combout\ & (\alu|a32~58_combout\)) # (!\alu|Mux17~8_combout\ & ((\alu|ShiftLeft0~78_combout\))))) # (!\alu|Mux29~4_combout\ & (((\alu|Mux17~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|Mux29~4_combout\,
	datab => \alu|a32~58_combout\,
	datac => \alu|ShiftLeft0~78_combout\,
	datad => \alu|Mux17~8_combout\,
	combout => \alu|Mux17~9_combout\);

-- Location: LCCOMB_X42_Y30_N4
\alu|Mux17~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux17~11_combout\ = (\alu|Mux25~2_combout\ & ((\actr|alu_ctr[3]~21_combout\ & ((\alu|Mux17~9_combout\))) # (!\actr|alu_ctr[3]~21_combout\ & (\alu|Mux17~10_combout\)))) # (!\alu|Mux25~2_combout\ & (((\alu|Mux17~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|Mux25~2_combout\,
	datab => \actr|alu_ctr[3]~21_combout\,
	datac => \alu|Mux17~10_combout\,
	datad => \alu|Mux17~9_combout\,
	combout => \alu|Mux17~11_combout\);

-- Location: LCFF_X42_Y30_N5
\regULA|sr_out[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \alu|Mux17~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regULA|sr_out\(14));

-- Location: LCCOMB_X36_Y34_N8
\breg_data_mux|m_out[14]~33\ : cycloneii_lcell_comb
-- Equation(s):
-- \breg_data_mux|m_out[14]~33_combout\ = (\breg_data_mux|m_out[15]~25_combout\) # ((\regULA|sr_out\(14) & !\ctr_mips|pstate.ldreg_st~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \regULA|sr_out\(14),
	datac => \ctr_mips|pstate.ldreg_st~regout\,
	datad => \breg_data_mux|m_out[15]~25_combout\,
	combout => \breg_data_mux|m_out[14]~33_combout\);

-- Location: LCFF_X36_Y34_N13
\bcoreg|breg32_rtl_1_bypass[39]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \breg_data_mux|m_out[14]~33_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bcoreg|breg32_rtl_1_bypass\(39));

-- Location: LCCOMB_X38_Y37_N6
\bcoreg|regB[14]~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \bcoreg|regB[14]~18_combout\ = (!\bcoreg|Equal1~1_combout\ & ((\bcoreg|breg32~45\ & (\bcoreg|breg32_rtl_1_bypass\(39))) # (!\bcoreg|breg32~45\ & ((\bcoreg|breg32_rtl_1|auto_generated|ram_block1a14\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcoreg|breg32~45\,
	datab => \bcoreg|Equal1~1_combout\,
	datac => \bcoreg|breg32_rtl_1_bypass\(39),
	datad => \bcoreg|breg32_rtl_1|auto_generated|ram_block1a14\,
	combout => \bcoreg|regB[14]~18_combout\);

-- Location: LCFF_X38_Y37_N7
\rgB|sr_out[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \bcoreg|regB[14]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rgB|sr_out\(14));

-- Location: LCCOMB_X36_Y35_N12
\mux_store|m_out[14]~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux_store|m_out[14]~34_combout\ = (\mux_store|m_out[8]~64_combout\ & ((\mux_store|Equal1~0_combout\ & (\rgB|sr_out\(6))) # (!\mux_store|Equal1~0_combout\ & ((\rgB|sr_out\(14))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rgB|sr_out\(6),
	datab => \mux_store|Equal1~0_combout\,
	datac => \rgB|sr_out\(14),
	datad => \mux_store|m_out[8]~64_combout\,
	combout => \mux_store|m_out[14]~34_combout\);

-- Location: LCFF_X38_Y35_N13
\rdm|sr_out[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \mem|altsyncram_component|auto_generated|q_a\(7),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rdm|sr_out\(7));

-- Location: LCFF_X38_Y33_N29
\rdm|sr_out[23]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \mem|altsyncram_component|auto_generated|q_a\(23),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rdm|sr_out\(23));

-- Location: LCCOMB_X38_Y35_N12
\mux_byte|m_out[7]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux_byte|m_out[7]~0_combout\ = (\ir|sr_out\(1) & ((\ir|sr_out\(0)) # ((\rdm|sr_out\(23))))) # (!\ir|sr_out\(1) & (!\ir|sr_out\(0) & (\rdm|sr_out\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir|sr_out\(1),
	datab => \ir|sr_out\(0),
	datac => \rdm|sr_out\(7),
	datad => \rdm|sr_out\(23),
	combout => \mux_byte|m_out[7]~0_combout\);

-- Location: LCCOMB_X38_Y35_N30
\mux_byte|m_out[7]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux_byte|m_out[7]~1_combout\ = (\ir|sr_out\(0) & ((\mux_byte|m_out[7]~0_combout\ & ((\rdm|sr_out\(31)))) # (!\mux_byte|m_out[7]~0_combout\ & (\rdm|sr_out\(15))))) # (!\ir|sr_out\(0) & (((\mux_byte|m_out[7]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir|sr_out\(0),
	datab => \rdm|sr_out\(15),
	datac => \rdm|sr_out\(31),
	datad => \mux_byte|m_out[7]~0_combout\,
	combout => \mux_byte|m_out[7]~1_combout\);

-- Location: LCCOMB_X38_Y35_N18
\breg_data_mux|m_out[31]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \breg_data_mux|m_out[31]~8_combout\ = (!\ir|sr_out\(28) & ((\ir|sr_out\(1) & ((\rdm|sr_out\(15)))) # (!\ir|sr_out\(1) & (\rdm|sr_out\(31)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir|sr_out\(1),
	datab => \rdm|sr_out\(31),
	datac => \rdm|sr_out\(15),
	datad => \ir|sr_out\(28),
	combout => \breg_data_mux|m_out[31]~8_combout\);

-- Location: LCCOMB_X38_Y35_N16
\breg_data_mux|m_out[31]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \breg_data_mux|m_out[31]~9_combout\ = (\ctr_mips|pstate.ldreg_st~regout\ & ((\ctr_mips|unsig~0_combout\ & ((\breg_data_mux|m_out[31]~8_combout\))) # (!\ctr_mips|unsig~0_combout\ & (\mux_byte|m_out[7]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctr_mips|unsig~0_combout\,
	datab => \mux_byte|m_out[7]~1_combout\,
	datac => \ctr_mips|pstate.ldreg_st~regout\,
	datad => \breg_data_mux|m_out[31]~8_combout\,
	combout => \breg_data_mux|m_out[31]~9_combout\);

-- Location: LCFF_X43_Y31_N31
\regULA|sr_out[23]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \alu|Mux8~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regULA|sr_out\(23));

-- Location: LCCOMB_X40_Y32_N16
\breg_data_mux|m_out[23]~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \breg_data_mux|m_out[23]~17_combout\ = (\breg_data_mux|m_out[31]~9_combout\) # ((!\ctr_mips|pstate.ldreg_st~regout\ & \regULA|sr_out\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \breg_data_mux|m_out[31]~9_combout\,
	datac => \ctr_mips|pstate.ldreg_st~regout\,
	datad => \regULA|sr_out\(23),
	combout => \breg_data_mux|m_out[23]~17_combout\);

-- Location: LCCOMB_X40_Y32_N0
\bcoreg|breg32_rtl_1_bypass[57]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \bcoreg|breg32_rtl_1_bypass[57]~feeder_combout\ = \breg_data_mux|m_out[23]~17_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \breg_data_mux|m_out[23]~17_combout\,
	combout => \bcoreg|breg32_rtl_1_bypass[57]~feeder_combout\);

-- Location: LCFF_X40_Y32_N1
\bcoreg|breg32_rtl_1_bypass[57]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \bcoreg|breg32_rtl_1_bypass[57]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bcoreg|breg32_rtl_1_bypass\(57));

-- Location: LCCOMB_X39_Y38_N12
\bcoreg|regB[23]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \bcoreg|regB[23]~9_combout\ = (!\bcoreg|Equal1~1_combout\ & ((\bcoreg|breg32~45\ & ((\bcoreg|breg32_rtl_1_bypass\(57)))) # (!\bcoreg|breg32~45\ & (\bcoreg|breg32_rtl_1|auto_generated|ram_block1a23\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcoreg|breg32_rtl_1|auto_generated|ram_block1a23\,
	datab => \bcoreg|breg32~45\,
	datac => \bcoreg|Equal1~1_combout\,
	datad => \bcoreg|breg32_rtl_1_bypass\(57),
	combout => \bcoreg|regB[23]~9_combout\);

-- Location: LCFF_X39_Y38_N13
\rgB|sr_out[23]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \bcoreg|regB[23]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rgB|sr_out\(23));

-- Location: LCCOMB_X36_Y36_N26
\mux_store|m_out[23]~72\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux_store|m_out[23]~72_combout\ = (\rgB|sr_out\(23) & (((!\ctr_mips|Equal2~0_combout\) # (!\ctr_mips|pstate.writemem_st~regout\)) # (!\ir|sr_out\(31))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir|sr_out\(31),
	datab => \rgB|sr_out\(23),
	datac => \ctr_mips|pstate.writemem_st~regout\,
	datad => \ctr_mips|Equal2~0_combout\,
	combout => \mux_store|m_out[23]~72_combout\);

-- Location: LCCOMB_X36_Y36_N18
\mux_store|m_out[17]~66\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux_store|m_out[17]~66_combout\ = (\ir|sr_out\(0)) # ((\ir|sr_out\(1)) # (!\ctr_mips|wich_store[0]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir|sr_out\(0),
	datac => \ir|sr_out\(1),
	datad => \ctr_mips|wich_store[0]~0_combout\,
	combout => \mux_store|m_out[17]~66_combout\);

-- Location: LCCOMB_X36_Y36_N2
\mux_store|m_out[23]~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux_store|m_out[23]~44_combout\ = (\mux_store|m_out[23]~72_combout\) # ((\rgB|sr_out\(7) & (\mux_store|m_out[16]~36_combout\ & \mux_store|m_out[17]~66_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rgB|sr_out\(7),
	datab => \mux_store|m_out[23]~72_combout\,
	datac => \mux_store|m_out[16]~36_combout\,
	datad => \mux_store|m_out[17]~66_combout\,
	combout => \mux_store|m_out[23]~44_combout\);

-- Location: LCCOMB_X39_Y33_N14
\bcoreg|regA[2]~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \bcoreg|regA[2]~29_combout\ = (!\bcoreg|Equal0~1_combout\ & ((\bcoreg|breg32~combout\ & (\bcoreg|breg32_rtl_1_bypass\(15))) # (!\bcoreg|breg32~combout\ & ((\bcoreg|breg32_rtl_0|auto_generated|ram_block1a2\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcoreg|Equal0~1_combout\,
	datab => \bcoreg|breg32_rtl_1_bypass\(15),
	datac => \bcoreg|breg32~combout\,
	datad => \bcoreg|breg32_rtl_0|auto_generated|ram_block1a2\,
	combout => \bcoreg|regA[2]~29_combout\);

-- Location: LCFF_X39_Y33_N15
\rgA|sr_out[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \bcoreg|regA[2]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rgA|sr_out\(2));

-- Location: LCCOMB_X39_Y33_N24
\mux_ulaA|m_out[2]~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux_ulaA|m_out[2]~29_combout\ = (\ctr_mips|WideOr0~combout\ & (\rgA|sr_out\(2))) # (!\ctr_mips|WideOr0~combout\ & ((\pc|sr_out\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rgA|sr_out\(2),
	datac => \pc|sr_out\(2),
	datad => \ctr_mips|WideOr0~combout\,
	combout => \mux_ulaA|m_out[2]~29_combout\);

-- Location: LCCOMB_X40_Y37_N16
\alu|ShiftRight1~61\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftRight1~61_combout\ = (\mux_ulaA|m_out[0]~27_combout\ & ((\mux_ulaA|m_out[1]~30_combout\ & (\mux_ulaB|m_out[14]~25_combout\)) # (!\mux_ulaA|m_out[1]~30_combout\ & ((\mux_ulaB|m_out[12]~29_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_ulaA|m_out[0]~27_combout\,
	datab => \mux_ulaB|m_out[14]~25_combout\,
	datac => \mux_ulaA|m_out[1]~30_combout\,
	datad => \mux_ulaB|m_out[12]~29_combout\,
	combout => \alu|ShiftRight1~61_combout\);

-- Location: LCCOMB_X40_Y37_N30
\alu|ShiftRight1~62\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftRight1~62_combout\ = (\alu|ShiftRight1~61_combout\) # ((\alu|ShiftRight1~46_combout\ & !\mux_ulaA|m_out[0]~27_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \alu|ShiftRight1~46_combout\,
	datac => \alu|ShiftRight1~61_combout\,
	datad => \mux_ulaA|m_out[0]~27_combout\,
	combout => \alu|ShiftRight1~62_combout\);

-- Location: LCCOMB_X44_Y38_N28
\alu|ShiftRight0~58\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftRight0~58_combout\ = (\mux_ulaA|m_out[2]~29_combout\ & ((\alu|ShiftRight1~60_combout\))) # (!\mux_ulaA|m_out[2]~29_combout\ & (\alu|ShiftRight1~62_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mux_ulaA|m_out[2]~29_combout\,
	datac => \alu|ShiftRight1~62_combout\,
	datad => \alu|ShiftRight1~60_combout\,
	combout => \alu|ShiftRight0~58_combout\);

-- Location: LCCOMB_X45_Y36_N24
\alu|Mux29~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux29~18_combout\ = (\mux_ulaA|m_out[3]~28_combout\) # ((!\mux_ulaA|m_out[2]~29_combout\ & \mux_ulaA|m_out[1]~30_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mux_ulaA|m_out[2]~29_combout\,
	datac => \mux_ulaA|m_out[1]~30_combout\,
	datad => \mux_ulaA|m_out[3]~28_combout\,
	combout => \alu|Mux29~18_combout\);

-- Location: LCCOMB_X45_Y34_N6
\alu|ShiftRight1~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftRight1~22_combout\ = (\mux_ulaA|m_out[0]~27_combout\ & ((\mux_ulaB|m_out[4]~45_combout\))) # (!\mux_ulaA|m_out[0]~27_combout\ & (\mux_ulaB|m_out[3]~47_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mux_ulaA|m_out[0]~27_combout\,
	datac => \mux_ulaB|m_out[3]~47_combout\,
	datad => \mux_ulaB|m_out[4]~45_combout\,
	combout => \alu|ShiftRight1~22_combout\);

-- Location: LCCOMB_X45_Y38_N30
\alu|ShiftRight1~56\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftRight1~56_combout\ = (\mux_ulaA|m_out[0]~27_combout\ & ((\mux_ulaA|m_out[1]~30_combout\ & (\mux_ulaB|m_out[10]~33_combout\)) # (!\mux_ulaA|m_out[1]~30_combout\ & ((\mux_ulaB|m_out[8]~37_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_ulaB|m_out[10]~33_combout\,
	datab => \mux_ulaA|m_out[1]~30_combout\,
	datac => \mux_ulaA|m_out[0]~27_combout\,
	datad => \mux_ulaB|m_out[8]~37_combout\,
	combout => \alu|ShiftRight1~56_combout\);

-- Location: LCCOMB_X45_Y38_N0
\alu|ShiftRight1~57\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftRight1~57_combout\ = (\alu|ShiftRight1~56_combout\) # ((\alu|ShiftRight1~41_combout\ & !\mux_ulaA|m_out[0]~27_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \alu|ShiftRight1~41_combout\,
	datac => \mux_ulaA|m_out[0]~27_combout\,
	datad => \alu|ShiftRight1~56_combout\,
	combout => \alu|ShiftRight1~57_combout\);

-- Location: LCCOMB_X45_Y38_N14
\alu|Mux28~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux28~10_combout\ = (\alu|ShiftLeft0~140_combout\ & (!\alu|Mux29~18_combout\ & (\alu|ShiftRight1~22_combout\))) # (!\alu|ShiftLeft0~140_combout\ & ((\alu|Mux29~18_combout\) # ((\alu|ShiftRight1~57_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010101100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|ShiftLeft0~140_combout\,
	datab => \alu|Mux29~18_combout\,
	datac => \alu|ShiftRight1~22_combout\,
	datad => \alu|ShiftRight1~57_combout\,
	combout => \alu|Mux28~10_combout\);

-- Location: LCCOMB_X44_Y37_N8
\alu|ShiftRight1~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftRight1~21_combout\ = (\mux_ulaA|m_out[0]~27_combout\ & ((\mux_ulaB|m_out[6]~41_combout\))) # (!\mux_ulaA|m_out[0]~27_combout\ & (\mux_ulaB|m_out[5]~43_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_ulaB|m_out[5]~43_combout\,
	datab => \mux_ulaB|m_out[6]~41_combout\,
	datac => \mux_ulaA|m_out[0]~27_combout\,
	combout => \alu|ShiftRight1~21_combout\);

-- Location: LCCOMB_X44_Y38_N10
\alu|Mux28~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux28~11_combout\ = (\alu|Mux29~18_combout\ & ((\alu|Mux28~10_combout\ & (\alu|ShiftRight0~58_combout\)) # (!\alu|Mux28~10_combout\ & ((\alu|ShiftRight1~21_combout\))))) # (!\alu|Mux29~18_combout\ & (((\alu|Mux28~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|Mux29~18_combout\,
	datab => \alu|ShiftRight0~58_combout\,
	datac => \alu|Mux28~10_combout\,
	datad => \alu|ShiftRight1~21_combout\,
	combout => \alu|Mux28~11_combout\);

-- Location: LCCOMB_X42_Y37_N14
\alu|a32~47\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|a32~47_combout\ = \mux_ulaB|m_out[3]~47_combout\ $ (((\ctr_mips|WideOr0~combout\ & (\rgA|sr_out\(3))) # (!\ctr_mips|WideOr0~combout\ & ((\pc|sr_out\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110010101101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_ulaB|m_out[3]~47_combout\,
	datab => \rgA|sr_out\(3),
	datac => \ctr_mips|WideOr0~combout\,
	datad => \pc|sr_out\(3),
	combout => \alu|a32~47_combout\);

-- Location: LCCOMB_X40_Y34_N24
\alu|Mux28~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux28~7_combout\ = (\mux_ulaA|m_out[3]~28_combout\) # ((\mux_ulaB|m_out[3]~47_combout\) # (\alu|Mux29~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mux_ulaA|m_out[3]~28_combout\,
	datac => \mux_ulaB|m_out[3]~47_combout\,
	datad => \alu|Mux29~14_combout\,
	combout => \alu|Mux28~7_combout\);

-- Location: LCCOMB_X40_Y34_N14
\alu|Mux28~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux28~2_combout\ = (\actr|alu_ctr[0]~16_combout\ & (\actr|alu_ctr[1]~14_combout\ & ((\mux_ulaA|m_out[3]~28_combout\) # (\mux_ulaB|m_out[3]~47_combout\)))) # (!\actr|alu_ctr[0]~16_combout\ & (((\mux_ulaA|m_out[3]~28_combout\ & 
-- \mux_ulaB|m_out[3]~47_combout\)) # (!\actr|alu_ctr[1]~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \actr|alu_ctr[0]~16_combout\,
	datab => \mux_ulaA|m_out[3]~28_combout\,
	datac => \mux_ulaB|m_out[3]~47_combout\,
	datad => \actr|alu_ctr[1]~14_combout\,
	combout => \alu|Mux28~2_combout\);

-- Location: LCCOMB_X40_Y34_N20
\alu|ShiftRight1~55\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftRight1~55_combout\ = (\mux_ulaA|m_out[3]~28_combout\ & (\alu|ShiftRight1~54_combout\)) # (!\mux_ulaA|m_out[3]~28_combout\ & ((\alu|ShiftRight0~57_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mux_ulaA|m_out[3]~28_combout\,
	datac => \alu|ShiftRight1~54_combout\,
	datad => \alu|ShiftRight0~57_combout\,
	combout => \alu|ShiftRight1~55_combout\);

-- Location: LCCOMB_X40_Y34_N4
\alu|Mux28~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux28~3_combout\ = (\alu|Mux28~2_combout\ & ((\alu|Add1~6_combout\) # ((!\alu|Mux29~6_combout\)))) # (!\alu|Mux28~2_combout\ & (((\alu|ShiftRight1~55_combout\ & \alu|Mux29~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|Add1~6_combout\,
	datab => \alu|Mux28~2_combout\,
	datac => \alu|ShiftRight1~55_combout\,
	datad => \alu|Mux29~6_combout\,
	combout => \alu|Mux28~3_combout\);

-- Location: LCCOMB_X40_Y34_N30
\alu|Mux28~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux28~4_combout\ = (\alu|Mux29~10_combout\ & (\alu|tmp[3]~6_combout\ & ((\alu|Mux29~9_combout\)))) # (!\alu|Mux29~10_combout\ & (((\alu|Mux28~3_combout\) # (!\alu|Mux29~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|tmp[3]~6_combout\,
	datab => \alu|Mux29~10_combout\,
	datac => \alu|Mux28~3_combout\,
	datad => \alu|Mux29~9_combout\,
	combout => \alu|Mux28~4_combout\);

-- Location: LCCOMB_X40_Y34_N0
\alu|Mux28~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux28~5_combout\ = (\alu|Mux29~5_combout\ & (((\alu|Mux28~4_combout\)))) # (!\alu|Mux29~5_combout\ & ((\alu|Mux28~4_combout\ & ((\alu|ShiftRight0~56_combout\))) # (!\alu|Mux28~4_combout\ & (\mux_ulaB|m_out[31]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_ulaB|m_out[31]~4_combout\,
	datab => \alu|Mux29~5_combout\,
	datac => \alu|ShiftRight0~56_combout\,
	datad => \alu|Mux28~4_combout\,
	combout => \alu|Mux28~5_combout\);

-- Location: LCCOMB_X40_Y34_N10
\alu|Mux28~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux28~6_combout\ = (\alu|Mux28~5_combout\ & ((\actr|alu_ctr[0]~16_combout\) # (\alu|Mux29~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \actr|alu_ctr[0]~16_combout\,
	datab => \alu|Mux29~5_combout\,
	datad => \alu|Mux28~5_combout\,
	combout => \alu|Mux28~6_combout\);

-- Location: LCCOMB_X40_Y34_N6
\alu|Mux28~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux28~8_combout\ = (\alu|Mux29~2_combout\ & (\alu|Mux29~3_combout\)) # (!\alu|Mux29~2_combout\ & ((\alu|Mux29~3_combout\ & (!\alu|Mux28~7_combout\)) # (!\alu|Mux29~3_combout\ & ((\alu|Mux28~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001110110001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|Mux29~2_combout\,
	datab => \alu|Mux29~3_combout\,
	datac => \alu|Mux28~7_combout\,
	datad => \alu|Mux28~6_combout\,
	combout => \alu|Mux28~8_combout\);

-- Location: LCCOMB_X40_Y34_N12
\alu|Mux28~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux28~9_combout\ = (\alu|Mux29~4_combout\ & ((\alu|Mux28~8_combout\ & ((\alu|a32~47_combout\))) # (!\alu|Mux28~8_combout\ & (\alu|ShiftLeft0~30_combout\)))) # (!\alu|Mux29~4_combout\ & (((\alu|Mux28~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|ShiftLeft0~30_combout\,
	datab => \alu|a32~47_combout\,
	datac => \alu|Mux29~4_combout\,
	datad => \alu|Mux28~8_combout\,
	combout => \alu|Mux28~9_combout\);

-- Location: LCCOMB_X40_Y34_N2
\alu|Mux28~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux28~12_combout\ = (\actr|alu_ctr[3]~21_combout\ & (((\alu|Mux28~9_combout\)))) # (!\actr|alu_ctr[3]~21_combout\ & ((\alu|Mux25~2_combout\ & (\alu|Mux28~11_combout\)) # (!\alu|Mux25~2_combout\ & ((\alu|Mux28~9_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \actr|alu_ctr[3]~21_combout\,
	datab => \alu|Mux28~11_combout\,
	datac => \alu|Mux25~2_combout\,
	datad => \alu|Mux28~9_combout\,
	combout => \alu|Mux28~12_combout\);

-- Location: LCFF_X40_Y34_N3
\regULA|sr_out[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \alu|Mux28~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regULA|sr_out\(3));

-- Location: LCCOMB_X39_Y33_N30
\breg_data_mux|m_out[3]~43\ : cycloneii_lcell_comb
-- Equation(s):
-- \breg_data_mux|m_out[3]~43_combout\ = (\ctr_mips|pstate.ldreg_st~regout\ & (\breg_data_mux|m_out[3]~42_combout\)) # (!\ctr_mips|pstate.ldreg_st~regout\ & ((\regULA|sr_out\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \breg_data_mux|m_out[3]~42_combout\,
	datab => \regULA|sr_out\(3),
	datac => \ctr_mips|pstate.ldreg_st~regout\,
	combout => \breg_data_mux|m_out[3]~43_combout\);

-- Location: LCCOMB_X42_Y35_N30
\bcoreg|regB[15]~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \bcoreg|regB[15]~17_combout\ = (!\bcoreg|Equal1~1_combout\ & ((\bcoreg|breg32~45\ & (\bcoreg|breg32_rtl_1_bypass\(41))) # (!\bcoreg|breg32~45\ & ((\bcoreg|breg32_rtl_1|auto_generated|ram_block1a15\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcoreg|breg32_rtl_1_bypass\(41),
	datab => \bcoreg|breg32_rtl_1|auto_generated|ram_block1a15\,
	datac => \bcoreg|breg32~45\,
	datad => \bcoreg|Equal1~1_combout\,
	combout => \bcoreg|regB[15]~17_combout\);

-- Location: LCFF_X42_Y35_N31
\rgB|sr_out[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \bcoreg|regB[15]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rgB|sr_out\(15));

-- Location: LCCOMB_X42_Y35_N16
\mux_ulaB|m_out[15]~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux_ulaB|m_out[15]~22_combout\ = (\ctr_mips|pstate.decode_st~regout\ & (((\ir|sr_out\(15))))) # (!\ctr_mips|pstate.decode_st~regout\ & ((\ctr_mips|pstate.c_mem_add_st~regout\ & ((\ir|sr_out\(15)))) # (!\ctr_mips|pstate.c_mem_add_st~regout\ & 
-- (\rgB|sr_out\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctr_mips|pstate.decode_st~regout\,
	datab => \rgB|sr_out\(15),
	datac => \ir|sr_out\(15),
	datad => \ctr_mips|pstate.c_mem_add_st~regout\,
	combout => \mux_ulaB|m_out[15]~22_combout\);

-- Location: LCCOMB_X42_Y35_N2
\mux_ulaB|m_out[15]~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux_ulaB|m_out[15]~23_combout\ = (\mux_ulaB|m_out[0]~18_combout\ & (((\mux_ulaB|m_out[15]~22_combout\)))) # (!\mux_ulaB|m_out[0]~18_combout\ & (\ir|sr_out\(13) & ((!\mux_ulaB|m_out[2]~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir|sr_out\(13),
	datab => \mux_ulaB|m_out[0]~18_combout\,
	datac => \mux_ulaB|m_out[15]~22_combout\,
	datad => \mux_ulaB|m_out[2]~19_combout\,
	combout => \mux_ulaB|m_out[15]~23_combout\);

-- Location: LCCOMB_X45_Y37_N18
\alu|ShiftLeft0~97\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftLeft0~97_combout\ = (\mux_ulaA|m_out[1]~30_combout\ & ((\mux_ulaA|m_out[0]~27_combout\ & (\mux_ulaB|m_out[15]~23_combout\)) # (!\mux_ulaA|m_out[0]~27_combout\ & ((\mux_ulaB|m_out[16]~21_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_ulaA|m_out[0]~27_combout\,
	datab => \mux_ulaA|m_out[1]~30_combout\,
	datac => \mux_ulaB|m_out[15]~23_combout\,
	datad => \mux_ulaB|m_out[16]~21_combout\,
	combout => \alu|ShiftLeft0~97_combout\);

-- Location: LCCOMB_X45_Y37_N20
\alu|ShiftLeft0~99\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftLeft0~99_combout\ = (\alu|ShiftLeft0~97_combout\) # ((!\mux_ulaA|m_out[1]~30_combout\ & \alu|ShiftLeft0~98_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mux_ulaA|m_out[1]~30_combout\,
	datac => \alu|ShiftLeft0~98_combout\,
	datad => \alu|ShiftLeft0~97_combout\,
	combout => \alu|ShiftLeft0~99_combout\);

-- Location: LCCOMB_X39_Y36_N2
\alu|ShiftLeft0~108\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftLeft0~108_combout\ = (\mux_ulaA|m_out[1]~30_combout\ & (\rgB|sr_out\(19))) # (!\mux_ulaA|m_out[1]~30_combout\ & ((\rgB|sr_out\(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rgB|sr_out\(19),
	datac => \rgB|sr_out\(21),
	datad => \mux_ulaA|m_out[1]~30_combout\,
	combout => \alu|ShiftLeft0~108_combout\);

-- Location: LCCOMB_X38_Y36_N18
\alu|ShiftLeft0~111\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftLeft0~111_combout\ = (\mux_ulaA|m_out[1]~30_combout\ & (\rgB|sr_out\(20))) # (!\mux_ulaA|m_out[1]~30_combout\ & ((\rgB|sr_out\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rgB|sr_out\(20),
	datac => \rgB|sr_out\(22),
	datad => \mux_ulaA|m_out[1]~30_combout\,
	combout => \alu|ShiftLeft0~111_combout\);

-- Location: LCCOMB_X39_Y36_N0
\alu|ShiftLeft0~112\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftLeft0~112_combout\ = (!\mux_ulaB|Equal2~0_combout\ & ((\mux_ulaA|m_out[0]~27_combout\ & (\alu|ShiftLeft0~108_combout\)) # (!\mux_ulaA|m_out[0]~27_combout\ & ((\alu|ShiftLeft0~111_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_ulaB|Equal2~0_combout\,
	datab => \alu|ShiftLeft0~108_combout\,
	datac => \mux_ulaA|m_out[0]~27_combout\,
	datad => \alu|ShiftLeft0~111_combout\,
	combout => \alu|ShiftLeft0~112_combout\);

-- Location: LCCOMB_X45_Y37_N26
\alu|ShiftLeft0~113\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftLeft0~113_combout\ = (\mux_ulaA|m_out[2]~29_combout\ & (\alu|ShiftLeft0~99_combout\)) # (!\mux_ulaA|m_out[2]~29_combout\ & ((\alu|ShiftLeft0~112_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_ulaA|m_out[2]~29_combout\,
	datac => \alu|ShiftLeft0~99_combout\,
	datad => \alu|ShiftLeft0~112_combout\,
	combout => \alu|ShiftLeft0~113_combout\);

-- Location: LCCOMB_X44_Y31_N16
\alu|a32~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|a32~38_combout\ = \mux_ulaB|m_out[22]~13_combout\ $ (((\ctr_mips|WideOr0~combout\ & ((\rgA|sr_out\(22)))) # (!\ctr_mips|WideOr0~combout\ & (\pc|sr_out\(22)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_ulaB|m_out[22]~13_combout\,
	datab => \pc|sr_out\(22),
	datac => \rgA|sr_out\(22),
	datad => \ctr_mips|WideOr0~combout\,
	combout => \alu|a32~38_combout\);

-- Location: LCCOMB_X44_Y31_N30
\alu|Mux9~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux9~7_combout\ = (\alu|Mux10~21_combout\ & ((\alu|Mux10~11_combout\ & ((\alu|a32~38_combout\))) # (!\alu|Mux10~11_combout\ & (\alu|ShiftLeft0~41_combout\)))) # (!\alu|Mux10~21_combout\ & (((\alu|Mux10~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|ShiftLeft0~41_combout\,
	datab => \alu|Mux10~21_combout\,
	datac => \alu|a32~38_combout\,
	datad => \alu|Mux10~11_combout\,
	combout => \alu|Mux9~7_combout\);

-- Location: LCCOMB_X44_Y31_N8
\alu|Mux9~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux9~8_combout\ = (\alu|Mux10~20_combout\ & (((\alu|Mux9~7_combout\)))) # (!\alu|Mux10~20_combout\ & ((\alu|Mux9~7_combout\ & (\alu|ShiftLeft0~76_combout\)) # (!\alu|Mux9~7_combout\ & ((\alu|ShiftLeft0~113_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|ShiftLeft0~76_combout\,
	datab => \alu|ShiftLeft0~113_combout\,
	datac => \alu|Mux10~20_combout\,
	datad => \alu|Mux9~7_combout\,
	combout => \alu|Mux9~8_combout\);

-- Location: LCCOMB_X44_Y31_N26
\alu|Mux9~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux9~6_combout\ = (!\mux_ulaB|m_out[22]~13_combout\ & (!\actr|alu_ctr[0]~16_combout\ & (\alu|Mux10~8_combout\ & !\mux_ulaA|m_out[22]~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_ulaB|m_out[22]~13_combout\,
	datab => \actr|alu_ctr[0]~16_combout\,
	datac => \alu|Mux10~8_combout\,
	datad => \mux_ulaA|m_out[22]~9_combout\,
	combout => \alu|Mux9~6_combout\);

-- Location: LCCOMB_X44_Y31_N14
\alu|Mux9~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux9~9_combout\ = (\alu|Mux9~6_combout\) # ((!\alu|Mux10~8_combout\ & \alu|Mux9~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|Mux10~8_combout\,
	datac => \alu|Mux9~8_combout\,
	datad => \alu|Mux9~6_combout\,
	combout => \alu|Mux9~9_combout\);

-- Location: LCCOMB_X44_Y31_N10
\alu|Mux9~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux9~2_combout\ = (\actr|alu_ctr[0]~16_combout\ & (\actr|alu_ctr[1]~14_combout\ & ((\mux_ulaB|m_out[22]~13_combout\) # (\mux_ulaA|m_out[22]~9_combout\)))) # (!\actr|alu_ctr[0]~16_combout\ & (((\mux_ulaB|m_out[22]~13_combout\ & 
-- \mux_ulaA|m_out[22]~9_combout\)) # (!\actr|alu_ctr[1]~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001110000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_ulaB|m_out[22]~13_combout\,
	datab => \actr|alu_ctr[0]~16_combout\,
	datac => \actr|alu_ctr[1]~14_combout\,
	datad => \mux_ulaA|m_out[22]~9_combout\,
	combout => \alu|Mux9~2_combout\);

-- Location: LCCOMB_X44_Y31_N24
\alu|Mux9~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux9~3_combout\ = (\alu|Mux9~2_combout\ & ((\alu|Add1~44_combout\) # ((!\alu|Mux10~9_combout\)))) # (!\alu|Mux9~2_combout\ & (((\alu|Mux10~9_combout\ & \alu|ShiftRight1~66_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|Add1~44_combout\,
	datab => \alu|Mux9~2_combout\,
	datac => \alu|Mux10~9_combout\,
	datad => \alu|ShiftRight1~66_combout\,
	combout => \alu|Mux9~3_combout\);

-- Location: LCCOMB_X44_Y31_N22
\alu|Mux9~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux9~4_combout\ = (\alu|Mux29~9_combout\ & ((\alu|Mux10~10_combout\ & ((\alu|tmp[22]~44_combout\))) # (!\alu|Mux10~10_combout\ & (\alu|Mux9~3_combout\)))) # (!\alu|Mux29~9_combout\ & (!\alu|Mux10~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100100110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|Mux29~9_combout\,
	datab => \alu|Mux10~10_combout\,
	datac => \alu|Mux9~3_combout\,
	datad => \alu|tmp[22]~44_combout\,
	combout => \alu|Mux9~4_combout\);

-- Location: LCCOMB_X44_Y31_N28
\alu|Mux9~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux9~5_combout\ = (\alu|Mux29~5_combout\ & (((\alu|Mux9~4_combout\)))) # (!\alu|Mux29~5_combout\ & ((\alu|Mux9~4_combout\ & ((\alu|ShiftRight0~71_combout\))) # (!\alu|Mux9~4_combout\ & (\mux_ulaB|m_out[31]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_ulaB|m_out[31]~4_combout\,
	datab => \alu|Mux29~5_combout\,
	datac => \alu|ShiftRight0~71_combout\,
	datad => \alu|Mux9~4_combout\,
	combout => \alu|Mux9~5_combout\);

-- Location: LCCOMB_X44_Y31_N0
\alu|Mux9~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux9~10_combout\ = (\alu|Mux14~6_combout\ & ((\alu|Mux9~5_combout\) # ((\alu|Mux9~11_combout\ & \alu|Mux9~9_combout\)))) # (!\alu|Mux14~6_combout\ & (\alu|Mux9~11_combout\ & (\alu|Mux9~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|Mux14~6_combout\,
	datab => \alu|Mux9~11_combout\,
	datac => \alu|Mux9~9_combout\,
	datad => \alu|Mux9~5_combout\,
	combout => \alu|Mux9~10_combout\);

-- Location: LCFF_X44_Y31_N1
\regULA|sr_out[22]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \alu|Mux9~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regULA|sr_out\(22));

-- Location: LCCOMB_X38_Y31_N6
\breg_data_mux|m_out[22]~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \breg_data_mux|m_out[22]~18_combout\ = (\breg_data_mux|m_out[31]~9_combout\) # ((!\ctr_mips|pstate.ldreg_st~regout\ & \regULA|sr_out\(22)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctr_mips|pstate.ldreg_st~regout\,
	datab => \regULA|sr_out\(22),
	datad => \breg_data_mux|m_out[31]~9_combout\,
	combout => \breg_data_mux|m_out[22]~18_combout\);

-- Location: LCFF_X38_Y31_N31
\bcoreg|breg32_rtl_1_bypass[55]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \breg_data_mux|m_out[22]~18_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bcoreg|breg32_rtl_1_bypass\(55));

-- Location: LCCOMB_X39_Y38_N6
\bcoreg|regB[22]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \bcoreg|regB[22]~10_combout\ = (!\bcoreg|Equal1~1_combout\ & ((\bcoreg|breg32~45\ & (\bcoreg|breg32_rtl_1_bypass\(55))) # (!\bcoreg|breg32~45\ & ((\bcoreg|breg32_rtl_1|auto_generated|ram_block1a22\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcoreg|Equal1~1_combout\,
	datab => \bcoreg|breg32~45\,
	datac => \bcoreg|breg32_rtl_1_bypass\(55),
	datad => \bcoreg|breg32_rtl_1|auto_generated|ram_block1a22\,
	combout => \bcoreg|regB[22]~10_combout\);

-- Location: LCFF_X39_Y38_N7
\rgB|sr_out[22]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \bcoreg|regB[22]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rgB|sr_out\(22));

-- Location: LCCOMB_X36_Y36_N0
\mux_store|m_out[22]~71\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux_store|m_out[22]~71_combout\ = (\rgB|sr_out\(22) & (((!\ctr_mips|Equal2~0_combout\) # (!\ctr_mips|pstate.writemem_st~regout\)) # (!\ir|sr_out\(31))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir|sr_out\(31),
	datab => \rgB|sr_out\(22),
	datac => \ctr_mips|pstate.writemem_st~regout\,
	datad => \ctr_mips|Equal2~0_combout\,
	combout => \mux_store|m_out[22]~71_combout\);

-- Location: LCCOMB_X36_Y36_N8
\mux_store|m_out[22]~43\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux_store|m_out[22]~43_combout\ = (\mux_store|m_out[22]~71_combout\) # ((\rgB|sr_out\(6) & (\mux_store|m_out[16]~36_combout\ & \mux_store|m_out[17]~66_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rgB|sr_out\(6),
	datab => \mux_store|m_out[22]~71_combout\,
	datac => \mux_store|m_out[16]~36_combout\,
	datad => \mux_store|m_out[17]~66_combout\,
	combout => \mux_store|m_out[22]~43_combout\);

-- Location: LCCOMB_X38_Y37_N12
\bcoreg|regB[12]~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \bcoreg|regB[12]~20_combout\ = (!\bcoreg|Equal1~1_combout\ & ((\bcoreg|breg32~45\ & (\bcoreg|breg32_rtl_1_bypass\(35))) # (!\bcoreg|breg32~45\ & ((\bcoreg|breg32_rtl_1|auto_generated|ram_block1a12\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcoreg|breg32_rtl_1_bypass\(35),
	datab => \bcoreg|Equal1~1_combout\,
	datac => \bcoreg|breg32_rtl_1|auto_generated|ram_block1a12\,
	datad => \bcoreg|breg32~45\,
	combout => \bcoreg|regB[12]~20_combout\);

-- Location: LCFF_X38_Y37_N13
\rgB|sr_out[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \bcoreg|regB[12]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rgB|sr_out\(12));

-- Location: LCCOMB_X36_Y33_N14
\mux_store|m_out[12]~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux_store|m_out[12]~32_combout\ = (\mux_store|m_out[8]~64_combout\ & ((\mux_store|Equal1~0_combout\ & (\rgB|sr_out\(4))) # (!\mux_store|Equal1~0_combout\ & ((\rgB|sr_out\(12))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_store|Equal1~0_combout\,
	datab => \rgB|sr_out\(4),
	datac => \rgB|sr_out\(12),
	datad => \mux_store|m_out[8]~64_combout\,
	combout => \mux_store|m_out[12]~32_combout\);

-- Location: LCFF_X40_Y35_N13
\ir|sr_out[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \mem|altsyncram_component|auto_generated|q_a\(3),
	sload => VCC,
	ena => \ctr_mips|ALT_INV_pstate.fetch_st~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ir|sr_out\(3));

-- Location: LCFF_X42_Y34_N25
\pc|sr_out[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \pc|sr_out[5]~25_combout\,
	sdata => \ir|sr_out\(3),
	sclr => \rst~combout\,
	sload => \ctr_mips|pstate.jump_ex_st~regout\,
	ena => \pc|sr_out[0]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pc|sr_out\(5));

-- Location: LCCOMB_X42_Y34_N16
\mux_ulaA|m_out[5]~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux_ulaA|m_out[5]~18_combout\ = (\ctr_mips|WideOr0~combout\ & (\rgA|sr_out\(5))) # (!\ctr_mips|WideOr0~combout\ & ((\pc|sr_out\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rgA|sr_out\(5),
	datac => \pc|sr_out\(5),
	datad => \ctr_mips|WideOr0~combout\,
	combout => \mux_ulaA|m_out[5]~18_combout\);

-- Location: LCCOMB_X43_Y38_N12
\alu|ShiftRight0~67\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftRight0~67_combout\ = (!\mux_ulaB|Equal2~0_combout\ & ((\mux_ulaA|m_out[2]~29_combout\ & ((\alu|ShiftRight0~44_combout\))) # (!\mux_ulaA|m_out[2]~29_combout\ & (\alu|ShiftRight0~43_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_ulaA|m_out[2]~29_combout\,
	datab => \mux_ulaB|Equal2~0_combout\,
	datac => \alu|ShiftRight0~43_combout\,
	datad => \alu|ShiftRight0~44_combout\,
	combout => \alu|ShiftRight0~67_combout\);

-- Location: LCCOMB_X43_Y37_N0
\alu|ShiftRight0~35\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftRight0~35_combout\ = (\mux_ulaA|m_out[0]~27_combout\ & ((\mux_ulaA|m_out[1]~30_combout\ & (\mux_ulaB|m_out[16]~21_combout\)) # (!\mux_ulaA|m_out[1]~30_combout\ & ((\mux_ulaB|m_out[14]~25_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_ulaA|m_out[1]~30_combout\,
	datab => \mux_ulaA|m_out[0]~27_combout\,
	datac => \mux_ulaB|m_out[16]~21_combout\,
	datad => \mux_ulaB|m_out[14]~25_combout\,
	combout => \alu|ShiftRight0~35_combout\);

-- Location: LCCOMB_X43_Y37_N16
\alu|ShiftRight0~68\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftRight0~68_combout\ = (\mux_ulaA|m_out[2]~29_combout\ & (((\alu|ShiftRight0~41_combout\)))) # (!\mux_ulaA|m_out[2]~29_combout\ & ((\alu|ShiftRight0~36_combout\) # ((\alu|ShiftRight0~35_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|ShiftRight0~36_combout\,
	datab => \alu|ShiftRight0~35_combout\,
	datac => \mux_ulaA|m_out[2]~29_combout\,
	datad => \alu|ShiftRight0~41_combout\,
	combout => \alu|ShiftRight0~68_combout\);

-- Location: LCCOMB_X38_Y34_N28
\alu|Mux18~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux18~10_combout\ = (\mux_ulaA|m_out[3]~28_combout\ & (\alu|ShiftRight0~67_combout\)) # (!\mux_ulaA|m_out[3]~28_combout\ & ((\alu|ShiftRight0~68_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_ulaA|m_out[3]~28_combout\,
	datac => \alu|ShiftRight0~67_combout\,
	datad => \alu|ShiftRight0~68_combout\,
	combout => \alu|Mux18~10_combout\);

-- Location: LCFF_X36_Y34_N31
\bcoreg|breg32_rtl_1_bypass[37]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \breg_data_mux|m_out[13]~34_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bcoreg|breg32_rtl_1_bypass\(37));

-- Location: LCCOMB_X43_Y35_N20
\bcoreg|regA[13]~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \bcoreg|regA[13]~20_combout\ = (!\bcoreg|Equal0~1_combout\ & ((\bcoreg|breg32~combout\ & ((\bcoreg|breg32_rtl_1_bypass\(37)))) # (!\bcoreg|breg32~combout\ & (\bcoreg|breg32_rtl_0|auto_generated|ram_block1a13\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcoreg|breg32_rtl_0|auto_generated|ram_block1a13\,
	datab => \bcoreg|breg32~combout\,
	datac => \bcoreg|breg32_rtl_1_bypass\(37),
	datad => \bcoreg|Equal0~1_combout\,
	combout => \bcoreg|regA[13]~20_combout\);

-- Location: LCFF_X43_Y35_N21
\rgA|sr_out[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \bcoreg|regA[13]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rgA|sr_out\(13));

-- Location: LCCOMB_X43_Y35_N10
\alu|a32~57\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|a32~57_combout\ = \mux_ulaB|m_out[13]~27_combout\ $ (((\ctr_mips|WideOr0~combout\ & ((\rgA|sr_out\(13)))) # (!\ctr_mips|WideOr0~combout\ & (\pc|sr_out\(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001101111100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctr_mips|WideOr0~combout\,
	datab => \pc|sr_out\(13),
	datac => \rgA|sr_out\(13),
	datad => \mux_ulaB|m_out[13]~27_combout\,
	combout => \alu|a32~57_combout\);

-- Location: LCCOMB_X39_Y34_N24
\alu|Mux18~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux18~7_combout\ = (\mux_ulaB|m_out[13]~27_combout\) # ((\mux_ulaA|m_out[13]~20_combout\) # (\alu|Mux29~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_ulaB|m_out[13]~27_combout\,
	datac => \mux_ulaA|m_out[13]~20_combout\,
	datad => \alu|Mux29~14_combout\,
	combout => \alu|Mux18~7_combout\);

-- Location: LCCOMB_X39_Y34_N14
\alu|Mux18~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux18~2_combout\ = (\actr|alu_ctr[0]~16_combout\ & (\actr|alu_ctr[1]~14_combout\ & ((\mux_ulaB|m_out[13]~27_combout\) # (\mux_ulaA|m_out[13]~20_combout\)))) # (!\actr|alu_ctr[0]~16_combout\ & (((\mux_ulaB|m_out[13]~27_combout\ & 
-- \mux_ulaA|m_out[13]~20_combout\)) # (!\actr|alu_ctr[1]~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_ulaB|m_out[13]~27_combout\,
	datab => \actr|alu_ctr[0]~16_combout\,
	datac => \mux_ulaA|m_out[13]~20_combout\,
	datad => \actr|alu_ctr[1]~14_combout\,
	combout => \alu|Mux18~2_combout\);

-- Location: LCCOMB_X39_Y34_N12
\alu|Mux18~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux18~3_combout\ = (\alu|Mux29~6_combout\ & ((\alu|Mux18~2_combout\ & ((\alu|Add1~26_combout\))) # (!\alu|Mux18~2_combout\ & (\alu|ShiftRight1~71_combout\)))) # (!\alu|Mux29~6_combout\ & (((\alu|Mux18~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|ShiftRight1~71_combout\,
	datab => \alu|Mux29~6_combout\,
	datac => \alu|Mux18~2_combout\,
	datad => \alu|Add1~26_combout\,
	combout => \alu|Mux18~3_combout\);

-- Location: LCCOMB_X39_Y34_N26
\alu|Mux18~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux18~4_combout\ = (\alu|Mux29~9_combout\ & ((\alu|Mux29~10_combout\ & (\alu|tmp[13]~26_combout\)) # (!\alu|Mux29~10_combout\ & ((\alu|Mux18~3_combout\))))) # (!\alu|Mux29~9_combout\ & (!\alu|Mux29~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|Mux29~9_combout\,
	datab => \alu|Mux29~10_combout\,
	datac => \alu|tmp[13]~26_combout\,
	datad => \alu|Mux18~3_combout\,
	combout => \alu|Mux18~4_combout\);

-- Location: LCCOMB_X39_Y34_N0
\alu|Mux18~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux18~5_combout\ = (\alu|Mux29~5_combout\ & (((\alu|Mux18~4_combout\)))) # (!\alu|Mux29~5_combout\ & ((\alu|Mux18~4_combout\ & (\alu|ShiftRight0~87_combout\)) # (!\alu|Mux18~4_combout\ & ((\mux_ulaB|m_out[31]~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|ShiftRight0~87_combout\,
	datab => \mux_ulaB|m_out[31]~4_combout\,
	datac => \alu|Mux29~5_combout\,
	datad => \alu|Mux18~4_combout\,
	combout => \alu|Mux18~5_combout\);

-- Location: LCCOMB_X39_Y34_N6
\alu|Mux18~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux18~6_combout\ = (\alu|Mux18~5_combout\ & ((\actr|alu_ctr[0]~16_combout\) # (\alu|Mux29~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \actr|alu_ctr[0]~16_combout\,
	datac => \alu|Mux29~5_combout\,
	datad => \alu|Mux18~5_combout\,
	combout => \alu|Mux18~6_combout\);

-- Location: LCCOMB_X39_Y34_N22
\alu|Mux18~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux18~8_combout\ = (\alu|Mux29~2_combout\ & (\alu|Mux29~3_combout\)) # (!\alu|Mux29~2_combout\ & ((\alu|Mux29~3_combout\ & (!\alu|Mux18~7_combout\)) # (!\alu|Mux29~3_combout\ & ((\alu|Mux18~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001110110001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|Mux29~2_combout\,
	datab => \alu|Mux29~3_combout\,
	datac => \alu|Mux18~7_combout\,
	datad => \alu|Mux18~6_combout\,
	combout => \alu|Mux18~8_combout\);

-- Location: LCCOMB_X38_Y34_N2
\alu|Mux18~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux18~9_combout\ = (\alu|Mux29~4_combout\ & ((\alu|Mux18~8_combout\ & ((\alu|a32~57_combout\))) # (!\alu|Mux18~8_combout\ & (\alu|ShiftLeft0~73_combout\)))) # (!\alu|Mux29~4_combout\ & (((\alu|Mux18~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|ShiftLeft0~73_combout\,
	datab => \alu|a32~57_combout\,
	datac => \alu|Mux29~4_combout\,
	datad => \alu|Mux18~8_combout\,
	combout => \alu|Mux18~9_combout\);

-- Location: LCCOMB_X38_Y34_N16
\alu|Mux18~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux18~11_combout\ = (\actr|alu_ctr[3]~21_combout\ & (((\alu|Mux18~9_combout\)))) # (!\actr|alu_ctr[3]~21_combout\ & ((\alu|Mux25~2_combout\ & (\alu|Mux18~10_combout\)) # (!\alu|Mux25~2_combout\ & ((\alu|Mux18~9_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \actr|alu_ctr[3]~21_combout\,
	datab => \alu|Mux18~10_combout\,
	datac => \alu|Mux25~2_combout\,
	datad => \alu|Mux18~9_combout\,
	combout => \alu|Mux18~11_combout\);

-- Location: LCFF_X38_Y34_N17
\regULA|sr_out[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \alu|Mux18~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regULA|sr_out\(13));

-- Location: LCCOMB_X43_Y35_N2
\pc|sr_out[13]~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \pc|sr_out[13]~17_combout\ = (\ctr_mips|pstate.branch_ex_st~regout\ & (\regULA|sr_out\(13))) # (!\ctr_mips|pstate.branch_ex_st~regout\ & ((\alu|Mux18~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctr_mips|pstate.branch_ex_st~regout\,
	datab => \regULA|sr_out\(13),
	datad => \alu|Mux18~11_combout\,
	combout => \pc|sr_out[13]~17_combout\);

-- Location: LCFF_X43_Y35_N3
\pc|sr_out[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \pc|sr_out[13]~17_combout\,
	sdata => \ir|sr_out\(11),
	sclr => \rst~combout\,
	sload => \ctr_mips|pstate.jump_ex_st~regout\,
	ena => \pc|sr_out[0]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pc|sr_out\(13));

-- Location: LCCOMB_X43_Y35_N22
\mux_ulaA|m_out[13]~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux_ulaA|m_out[13]~20_combout\ = (\ctr_mips|WideOr0~combout\ & (\rgA|sr_out\(13))) # (!\ctr_mips|WideOr0~combout\ & ((\pc|sr_out\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rgA|sr_out\(13),
	datab => \pc|sr_out\(13),
	datac => \ctr_mips|WideOr0~combout\,
	combout => \mux_ulaA|m_out[13]~20_combout\);

-- Location: LCCOMB_X43_Y35_N16
\alu|ShiftLeft0~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftLeft0~17_combout\ = (\mux_ulaA|m_out[11]~22_combout\) # ((\mux_ulaA|m_out[12]~21_combout\) # ((\mux_ulaA|m_out[14]~19_combout\) # (\mux_ulaA|m_out[13]~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_ulaA|m_out[11]~22_combout\,
	datab => \mux_ulaA|m_out[12]~21_combout\,
	datac => \mux_ulaA|m_out[14]~19_combout\,
	datad => \mux_ulaA|m_out[13]~20_combout\,
	combout => \alu|ShiftLeft0~17_combout\);

-- Location: LCCOMB_X44_Y35_N20
\alu|ShiftLeft0~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftLeft0~18_combout\ = (\mux_ulaA|m_out[7]~26_combout\) # ((\mux_ulaA|m_out[8]~25_combout\) # ((\mux_ulaA|m_out[10]~23_combout\) # (\mux_ulaA|m_out[9]~24_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_ulaA|m_out[7]~26_combout\,
	datab => \mux_ulaA|m_out[8]~25_combout\,
	datac => \mux_ulaA|m_out[10]~23_combout\,
	datad => \mux_ulaA|m_out[9]~24_combout\,
	combout => \alu|ShiftLeft0~18_combout\);

-- Location: LCCOMB_X43_Y34_N20
\alu|ShiftLeft0~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftLeft0~19_combout\ = (\mux_ulaA|m_out[6]~17_combout\) # ((\mux_ulaA|m_out[5]~18_combout\) # ((\alu|ShiftLeft0~17_combout\) # (\alu|ShiftLeft0~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_ulaA|m_out[6]~17_combout\,
	datab => \mux_ulaA|m_out[5]~18_combout\,
	datac => \alu|ShiftLeft0~17_combout\,
	datad => \alu|ShiftLeft0~18_combout\,
	combout => \alu|ShiftLeft0~19_combout\);

-- Location: LCCOMB_X43_Y37_N4
\alu|Mux30~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux30~4_combout\ = (\mux_ulaB|m_out[31]~4_combout\ & ((\alu|ShiftLeft0~19_combout\) # (\alu|ShiftLeft0~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_ulaB|m_out[31]~4_combout\,
	datac => \alu|ShiftLeft0~19_combout\,
	datad => \alu|ShiftLeft0~16_combout\,
	combout => \alu|Mux30~4_combout\);

-- Location: LCCOMB_X43_Y37_N26
\alu|Mux30~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux30~9_combout\ = (\alu|Mux30~8_combout\) # ((\alu|Mux30~4_combout\ & (\actr|alu_ctr[0]~16_combout\ & !\actr|alu_ctr[3]~21_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|Mux30~8_combout\,
	datab => \alu|Mux30~4_combout\,
	datac => \actr|alu_ctr[0]~16_combout\,
	datad => \actr|alu_ctr[3]~21_combout\,
	combout => \alu|Mux30~9_combout\);

-- Location: LCCOMB_X43_Y37_N14
\alu|Mux30~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux30~17_combout\ = (\alu|ShiftRight0~47_combout\ & ((\ctr_mips|WideOr0~combout\ & (\rgA|sr_out\(4))) # (!\ctr_mips|WideOr0~combout\ & ((\pc|sr_out\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctr_mips|WideOr0~combout\,
	datab => \rgA|sr_out\(4),
	datac => \pc|sr_out\(4),
	datad => \alu|ShiftRight0~47_combout\,
	combout => \alu|Mux30~17_combout\);

-- Location: LCCOMB_X45_Y37_N4
\alu|ShiftRight0~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftRight0~30_combout\ = (\mux_ulaA|m_out[1]~30_combout\ & ((\mux_ulaA|m_out[0]~27_combout\ & (\mux_ulaB|m_out[8]~37_combout\)) # (!\mux_ulaA|m_out[0]~27_combout\ & ((\mux_ulaB|m_out[7]~39_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_ulaA|m_out[0]~27_combout\,
	datab => \mux_ulaA|m_out[1]~30_combout\,
	datac => \mux_ulaB|m_out[8]~37_combout\,
	datad => \mux_ulaB|m_out[7]~39_combout\,
	combout => \alu|ShiftRight0~30_combout\);

-- Location: LCCOMB_X44_Y37_N30
\alu|ShiftRight0~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftRight0~31_combout\ = (\alu|ShiftRight0~30_combout\) # ((!\mux_ulaA|m_out[1]~30_combout\ & \alu|ShiftRight1~21_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mux_ulaA|m_out[1]~30_combout\,
	datac => \alu|ShiftRight1~21_combout\,
	datad => \alu|ShiftRight0~30_combout\,
	combout => \alu|ShiftRight0~31_combout\);

-- Location: LCCOMB_X44_Y37_N4
\alu|ShiftRight0~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftRight0~36_combout\ = (!\mux_ulaA|m_out[0]~27_combout\ & ((\mux_ulaA|m_out[1]~30_combout\ & (\mux_ulaB|m_out[15]~23_combout\)) # (!\mux_ulaA|m_out[1]~30_combout\ & ((\mux_ulaB|m_out[13]~27_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_ulaA|m_out[0]~27_combout\,
	datab => \mux_ulaB|m_out[15]~23_combout\,
	datac => \mux_ulaB|m_out[13]~27_combout\,
	datad => \mux_ulaA|m_out[1]~30_combout\,
	combout => \alu|ShiftRight0~36_combout\);

-- Location: LCCOMB_X44_Y37_N12
\alu|ShiftRight0~33\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftRight0~33_combout\ = (\mux_ulaA|m_out[1]~30_combout\ & ((\mux_ulaA|m_out[0]~27_combout\ & ((\mux_ulaB|m_out[12]~29_combout\))) # (!\mux_ulaA|m_out[0]~27_combout\ & (\mux_ulaB|m_out[11]~31_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_ulaB|m_out[11]~31_combout\,
	datab => \mux_ulaB|m_out[12]~29_combout\,
	datac => \mux_ulaA|m_out[0]~27_combout\,
	datad => \mux_ulaA|m_out[1]~30_combout\,
	combout => \alu|ShiftRight0~33_combout\);

-- Location: LCCOMB_X44_Y37_N22
\alu|ShiftRight0~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftRight0~34_combout\ = (\alu|ShiftRight0~32_combout\) # ((\alu|ShiftRight0~33_combout\) # ((\alu|ShiftLeft0~141_combout\ & \mux_ulaB|m_out[9]~35_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|ShiftLeft0~141_combout\,
	datab => \mux_ulaB|m_out[9]~35_combout\,
	datac => \alu|ShiftRight0~32_combout\,
	datad => \alu|ShiftRight0~33_combout\,
	combout => \alu|ShiftRight0~34_combout\);

-- Location: LCCOMB_X44_Y37_N10
\alu|Mux22~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux22~2_combout\ = (\mux_ulaA|m_out[2]~29_combout\ & ((\alu|ShiftRight0~35_combout\) # ((\alu|ShiftRight0~36_combout\)))) # (!\mux_ulaA|m_out[2]~29_combout\ & (((\alu|ShiftRight0~34_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|ShiftRight0~35_combout\,
	datab => \alu|ShiftRight0~36_combout\,
	datac => \mux_ulaA|m_out[2]~29_combout\,
	datad => \alu|ShiftRight0~34_combout\,
	combout => \alu|Mux22~2_combout\);

-- Location: LCCOMB_X44_Y37_N24
\alu|ShiftRight0~89\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftRight0~89_combout\ = (\mux_ulaA|m_out[3]~28_combout\ & (((\alu|Mux22~2_combout\)))) # (!\mux_ulaA|m_out[3]~28_combout\ & (\alu|ShiftRight0~31_combout\ & (\mux_ulaA|m_out[2]~29_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_ulaA|m_out[3]~28_combout\,
	datab => \alu|ShiftRight0~31_combout\,
	datac => \mux_ulaA|m_out[2]~29_combout\,
	datad => \alu|Mux22~2_combout\,
	combout => \alu|ShiftRight0~89_combout\);

-- Location: LCCOMB_X45_Y34_N24
\alu|ShiftRight0~37\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftRight0~37_combout\ = (!\mux_ulaA|m_out[1]~30_combout\ & ((\mux_ulaA|m_out[0]~27_combout\ & (\mux_ulaB|m_out[2]~50_combout\)) # (!\mux_ulaA|m_out[0]~27_combout\ & ((\mux_ulaB|m_out[1]~48_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_ulaB|m_out[2]~50_combout\,
	datab => \mux_ulaA|m_out[1]~30_combout\,
	datac => \mux_ulaB|m_out[1]~48_combout\,
	datad => \mux_ulaA|m_out[0]~27_combout\,
	combout => \alu|ShiftRight0~37_combout\);

-- Location: LCCOMB_X45_Y34_N0
\alu|ShiftRight0~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftRight0~38_combout\ = (\alu|ShiftRight0~37_combout\) # ((\mux_ulaA|m_out[1]~30_combout\ & \alu|ShiftRight1~22_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mux_ulaA|m_out[1]~30_combout\,
	datac => \alu|ShiftRight0~37_combout\,
	datad => \alu|ShiftRight1~22_combout\,
	combout => \alu|ShiftRight0~38_combout\);

-- Location: LCCOMB_X44_Y37_N18
\alu|ShiftRight0~90\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftRight0~90_combout\ = (!\mux_ulaA|m_out[4]~0_combout\ & ((\alu|ShiftRight0~89_combout\) # ((\alu|ShiftLeft0~140_combout\ & \alu|ShiftRight0~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_ulaA|m_out[4]~0_combout\,
	datab => \alu|ShiftLeft0~140_combout\,
	datac => \alu|ShiftRight0~89_combout\,
	datad => \alu|ShiftRight0~38_combout\,
	combout => \alu|ShiftRight0~90_combout\);

-- Location: LCCOMB_X43_Y37_N18
\alu|Mux30~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux30~10_combout\ = (\alu|Mux30~9_combout\) # ((\alu|Mux30~16_combout\ & ((\alu|Mux30~17_combout\) # (\alu|ShiftRight0~90_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|Mux30~16_combout\,
	datab => \alu|Mux30~9_combout\,
	datac => \alu|Mux30~17_combout\,
	datad => \alu|ShiftRight0~90_combout\,
	combout => \alu|Mux30~10_combout\);

-- Location: LCCOMB_X43_Y37_N20
\alu|Mux30~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux30~11_combout\ = (\actr|alu_ctr[1]~14_combout\ & (\alu|Mux10~8_combout\ & ((\alu|Mux30~10_combout\)))) # (!\actr|alu_ctr[1]~14_combout\ & (((\alu|Mux30~7_combout\)) # (!\alu|Mux10~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100101010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \actr|alu_ctr[1]~14_combout\,
	datab => \alu|Mux10~8_combout\,
	datac => \alu|Mux30~7_combout\,
	datad => \alu|Mux30~10_combout\,
	combout => \alu|Mux30~11_combout\);

-- Location: LCCOMB_X43_Y37_N22
\alu|Mux30~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux30~12_combout\ = (!\alu|ShiftLeft0~25_combout\ & ((\alu|ShiftRight0~90_combout\) # ((\mux_ulaA|m_out[4]~0_combout\ & \alu|ShiftRight1~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_ulaA|m_out[4]~0_combout\,
	datab => \alu|ShiftLeft0~25_combout\,
	datac => \alu|ShiftRight1~28_combout\,
	datad => \alu|ShiftRight0~90_combout\,
	combout => \alu|Mux30~12_combout\);

-- Location: LCCOMB_X43_Y37_N28
\alu|Mux30~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux30~13_combout\ = (!\actr|alu_ctr[3]~21_combout\ & ((\actr|alu_ctr[0]~16_combout\ & ((\alu|Mux30~12_combout\))) # (!\actr|alu_ctr[0]~16_combout\ & (\alu|Add1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \actr|alu_ctr[0]~16_combout\,
	datab => \actr|alu_ctr[3]~21_combout\,
	datac => \alu|Add1~2_combout\,
	datad => \alu|Mux30~12_combout\,
	combout => \alu|Mux30~13_combout\);

-- Location: LCCOMB_X43_Y37_N2
\alu|Mux30~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux30~14_combout\ = (\alu|Mux10~8_combout\ & (((\alu|Mux30~11_combout\)))) # (!\alu|Mux10~8_combout\ & ((\alu|Mux30~11_combout\ & ((\alu|Mux30~13_combout\))) # (!\alu|Mux30~11_combout\ & (\alu|Mux30~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|Mux30~6_combout\,
	datab => \alu|Mux10~8_combout\,
	datac => \alu|Mux30~11_combout\,
	datad => \alu|Mux30~13_combout\,
	combout => \alu|Mux30~14_combout\);

-- Location: LCFF_X43_Y37_N3
\regULA|sr_out[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \alu|Mux30~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regULA|sr_out\(1));

-- Location: LCCOMB_X36_Y33_N8
\breg_data_mux|m_out[1]~49\ : cycloneii_lcell_comb
-- Equation(s):
-- \breg_data_mux|m_out[1]~49_combout\ = (\ctr_mips|pstate.ldreg_st~regout\ & (\breg_data_mux|m_out[1]~48_combout\)) # (!\ctr_mips|pstate.ldreg_st~regout\ & ((\regULA|sr_out\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \breg_data_mux|m_out[1]~48_combout\,
	datab => \regULA|sr_out\(1),
	datad => \ctr_mips|pstate.ldreg_st~regout\,
	combout => \breg_data_mux|m_out[1]~49_combout\);

-- Location: LCFF_X38_Y36_N29
\bcoreg|breg32_rtl_1_bypass[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \breg_data_mux|m_out[1]~49_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bcoreg|breg32_rtl_1_bypass\(13));

-- Location: LCCOMB_X38_Y36_N22
\bcoreg|regA[1]~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \bcoreg|regA[1]~30_combout\ = (!\bcoreg|Equal0~1_combout\ & ((\bcoreg|breg32~combout\ & (\bcoreg|breg32_rtl_1_bypass\(13))) # (!\bcoreg|breg32~combout\ & ((\bcoreg|breg32_rtl_0|auto_generated|ram_block1a1\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcoreg|breg32~combout\,
	datab => \bcoreg|breg32_rtl_1_bypass\(13),
	datac => \bcoreg|Equal0~1_combout\,
	datad => \bcoreg|breg32_rtl_0|auto_generated|ram_block1a1\,
	combout => \bcoreg|regA[1]~30_combout\);

-- Location: LCFF_X40_Y35_N19
\rgA|sr_out[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \bcoreg|regA[1]~30_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rgA|sr_out\(1));

-- Location: LCCOMB_X39_Y38_N10
\alu|ShiftRight1~73\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftRight1~73_combout\ = (!\mux_ulaA|m_out[0]~27_combout\ & ((\ctr_mips|WideOr0~combout\ & ((\rgA|sr_out\(1)))) # (!\ctr_mips|WideOr0~combout\ & (\pc|sr_out\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|sr_out\(1),
	datab => \rgA|sr_out\(1),
	datac => \ctr_mips|WideOr0~combout\,
	datad => \mux_ulaA|m_out[0]~27_combout\,
	combout => \alu|ShiftRight1~73_combout\);

-- Location: LCCOMB_X40_Y37_N12
\alu|ShiftLeft0~80\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftLeft0~80_combout\ = (\mux_ulaA|m_out[0]~27_combout\ & ((\mux_ulaA|m_out[1]~30_combout\ & ((\mux_ulaB|m_out[12]~29_combout\))) # (!\mux_ulaA|m_out[1]~30_combout\ & (\mux_ulaB|m_out[14]~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_ulaA|m_out[0]~27_combout\,
	datab => \mux_ulaB|m_out[14]~25_combout\,
	datac => \mux_ulaB|m_out[12]~29_combout\,
	datad => \mux_ulaA|m_out[1]~30_combout\,
	combout => \alu|ShiftLeft0~80_combout\);

-- Location: LCCOMB_X40_Y37_N14
\alu|ShiftLeft0~81\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftLeft0~81_combout\ = (\alu|ShiftRight1~59_combout\) # ((\alu|ShiftLeft0~80_combout\) # ((\mux_ulaB|m_out[13]~27_combout\ & \alu|ShiftRight1~73_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_ulaB|m_out[13]~27_combout\,
	datab => \alu|ShiftRight1~73_combout\,
	datac => \alu|ShiftRight1~59_combout\,
	datad => \alu|ShiftLeft0~80_combout\,
	combout => \alu|ShiftLeft0~81_combout\);

-- Location: LCCOMB_X40_Y31_N14
\alu|ShiftLeft0~82\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftLeft0~82_combout\ = (\mux_ulaA|m_out[2]~29_combout\ & ((\alu|ShiftLeft0~62_combout\))) # (!\mux_ulaA|m_out[2]~29_combout\ & (\alu|ShiftLeft0~81_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_ulaA|m_out[2]~29_combout\,
	datac => \alu|ShiftLeft0~81_combout\,
	datad => \alu|ShiftLeft0~62_combout\,
	combout => \alu|ShiftLeft0~82_combout\);

-- Location: LCCOMB_X40_Y31_N26
\alu|ShiftLeft0~47\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftLeft0~47_combout\ = (\alu|ShiftLeft0~46_combout\) # (\alu|ShiftLeft0~45_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \alu|ShiftLeft0~46_combout\,
	datad => \alu|ShiftLeft0~45_combout\,
	combout => \alu|ShiftLeft0~47_combout\);

-- Location: LCCOMB_X39_Y31_N0
\alu|ShiftLeft0~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftLeft0~48_combout\ = (!\mux_ulaA|m_out[3]~28_combout\ & ((\mux_ulaA|m_out[2]~29_combout\ & ((\alu|ShiftLeft0~44_combout\))) # (!\mux_ulaA|m_out[2]~29_combout\ & (\alu|ShiftLeft0~47_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_ulaA|m_out[3]~28_combout\,
	datab => \mux_ulaA|m_out[2]~29_combout\,
	datac => \alu|ShiftLeft0~47_combout\,
	datad => \alu|ShiftLeft0~44_combout\,
	combout => \alu|ShiftLeft0~48_combout\);

-- Location: LCCOMB_X39_Y31_N28
\alu|Mux8~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux8~4_combout\ = (\alu|Mux10~21_combout\ & ((\alu|Mux10~11_combout\ & (\alu|a32~39_combout\)) # (!\alu|Mux10~11_combout\ & ((\alu|ShiftLeft0~48_combout\))))) # (!\alu|Mux10~21_combout\ & (((\alu|Mux10~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|a32~39_combout\,
	datab => \alu|Mux10~21_combout\,
	datac => \alu|Mux10~11_combout\,
	datad => \alu|ShiftLeft0~48_combout\,
	combout => \alu|Mux8~4_combout\);

-- Location: LCCOMB_X39_Y31_N14
\alu|Mux8~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux8~5_combout\ = (\alu|Mux10~20_combout\ & (((\alu|Mux8~4_combout\)))) # (!\alu|Mux10~20_combout\ & ((\alu|Mux8~4_combout\ & ((\alu|ShiftLeft0~82_combout\))) # (!\alu|Mux8~4_combout\ & (\alu|ShiftLeft0~116_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|ShiftLeft0~116_combout\,
	datab => \alu|Mux10~20_combout\,
	datac => \alu|ShiftLeft0~82_combout\,
	datad => \alu|Mux8~4_combout\,
	combout => \alu|Mux8~5_combout\);

-- Location: LCCOMB_X43_Y31_N8
\alu|Mux8~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux8~7_combout\ = (\alu|Mux10~8_combout\ & (!\actr|alu_ctr[0]~16_combout\ & (\alu|Mux8~6_combout\))) # (!\alu|Mux10~8_combout\ & (((\alu|Mux8~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \actr|alu_ctr[0]~16_combout\,
	datab => \alu|Mux8~6_combout\,
	datac => \alu|Mux10~8_combout\,
	datad => \alu|Mux8~5_combout\,
	combout => \alu|Mux8~7_combout\);

-- Location: LCCOMB_X42_Y36_N14
\alu|ShiftRight1~67\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftRight1~67_combout\ = (\mux_ulaA|m_out[3]~28_combout\ & (!\alu|ShiftLeft0~42_combout\ & (\mux_ulaB|m_out[31]~4_combout\))) # (!\mux_ulaA|m_out[3]~28_combout\ & (((\alu|ShiftRight0~76_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_ulaA|m_out[3]~28_combout\,
	datab => \alu|ShiftLeft0~42_combout\,
	datac => \mux_ulaB|m_out[31]~4_combout\,
	datad => \alu|ShiftRight0~76_combout\,
	combout => \alu|ShiftRight1~67_combout\);

-- Location: LCCOMB_X43_Y31_N14
\alu|Mux8~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux8~1_combout\ = (\alu|Mux8~0_combout\ & (((\alu|Add1~46_combout\)) # (!\alu|Mux10~9_combout\))) # (!\alu|Mux8~0_combout\ & (\alu|Mux10~9_combout\ & (\alu|ShiftRight1~67_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|Mux8~0_combout\,
	datab => \alu|Mux10~9_combout\,
	datac => \alu|ShiftRight1~67_combout\,
	datad => \alu|Add1~46_combout\,
	combout => \alu|Mux8~1_combout\);

-- Location: LCCOMB_X43_Y31_N16
\alu|Mux8~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux8~2_combout\ = (\alu|Mux29~9_combout\ & ((\alu|Mux10~10_combout\ & ((\alu|tmp[23]~46_combout\))) # (!\alu|Mux10~10_combout\ & (\alu|Mux8~1_combout\)))) # (!\alu|Mux29~9_combout\ & (!\alu|Mux10~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100100110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|Mux29~9_combout\,
	datab => \alu|Mux10~10_combout\,
	datac => \alu|Mux8~1_combout\,
	datad => \alu|tmp[23]~46_combout\,
	combout => \alu|Mux8~2_combout\);

-- Location: LCCOMB_X40_Y36_N24
\alu|ShiftRight0~74\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftRight0~74_combout\ = (!\mux_ulaA|m_out[3]~28_combout\ & ((\mux_ulaA|m_out[2]~29_combout\ & (\alu|ShiftRight1~52_combout\)) # (!\mux_ulaA|m_out[2]~29_combout\ & ((\alu|ShiftRight1~48_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_ulaA|m_out[2]~29_combout\,
	datab => \mux_ulaA|m_out[3]~28_combout\,
	datac => \alu|ShiftRight1~52_combout\,
	datad => \alu|ShiftRight1~48_combout\,
	combout => \alu|ShiftRight0~74_combout\);

-- Location: LCCOMB_X45_Y36_N12
\alu|ShiftRight0~75\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftRight0~75_combout\ = (!\mux_ulaB|Equal2~0_combout\ & ((\alu|ShiftRight0~74_combout\) # ((\mux_ulaA|m_out[3]~28_combout\ & \rgB|sr_out\(31)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_ulaA|m_out[3]~28_combout\,
	datab => \rgB|sr_out\(31),
	datac => \mux_ulaB|Equal2~0_combout\,
	datad => \alu|ShiftRight0~74_combout\,
	combout => \alu|ShiftRight0~75_combout\);

-- Location: LCCOMB_X43_Y31_N10
\alu|Mux8~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux8~3_combout\ = (\alu|Mux29~5_combout\ & (((\alu|Mux8~2_combout\)))) # (!\alu|Mux29~5_combout\ & ((\alu|Mux8~2_combout\ & ((\alu|ShiftRight0~75_combout\))) # (!\alu|Mux8~2_combout\ & (\mux_ulaB|m_out[31]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|Mux29~5_combout\,
	datab => \mux_ulaB|m_out[31]~4_combout\,
	datac => \alu|Mux8~2_combout\,
	datad => \alu|ShiftRight0~75_combout\,
	combout => \alu|Mux8~3_combout\);

-- Location: LCCOMB_X43_Y31_N30
\alu|Mux8~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux8~8_combout\ = (\alu|Mux9~11_combout\ & ((\alu|Mux8~7_combout\) # ((\alu|Mux14~6_combout\ & \alu|Mux8~3_combout\)))) # (!\alu|Mux9~11_combout\ & (\alu|Mux14~6_combout\ & ((\alu|Mux8~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|Mux9~11_combout\,
	datab => \alu|Mux14~6_combout\,
	datac => \alu|Mux8~7_combout\,
	datad => \alu|Mux8~3_combout\,
	combout => \alu|Mux8~8_combout\);

-- Location: LCCOMB_X43_Y31_N4
\pc|sr_out[23]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \pc|sr_out[23]~7_combout\ = (\ctr_mips|pstate.branch_ex_st~regout\ & (\regULA|sr_out\(23))) # (!\ctr_mips|pstate.branch_ex_st~regout\ & ((\alu|Mux8~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regULA|sr_out\(23),
	datab => \ctr_mips|pstate.branch_ex_st~regout\,
	datad => \alu|Mux8~8_combout\,
	combout => \pc|sr_out[23]~7_combout\);

-- Location: LCFF_X43_Y31_N5
\pc|sr_out[23]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \pc|sr_out[23]~7_combout\,
	sdata => \ir|sr_out\(21),
	sclr => \rst~combout\,
	sload => \ctr_mips|pstate.jump_ex_st~regout\,
	ena => \pc|sr_out[0]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pc|sr_out\(23));

-- Location: LCCOMB_X43_Y31_N22
\mux_ulaA|m_out[23]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux_ulaA|m_out[23]~8_combout\ = (\ctr_mips|WideOr0~combout\ & (\rgA|sr_out\(23))) # (!\ctr_mips|WideOr0~combout\ & ((\pc|sr_out\(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rgA|sr_out\(23),
	datac => \pc|sr_out\(23),
	datad => \ctr_mips|WideOr0~combout\,
	combout => \mux_ulaA|m_out[23]~8_combout\);

-- Location: LCCOMB_X43_Y34_N30
\alu|ShiftLeft0~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftLeft0~13_combout\ = (\mux_ulaA|m_out[26]~5_combout\) # ((\mux_ulaA|m_out[23]~8_combout\) # ((\mux_ulaA|m_out[24]~7_combout\) # (\mux_ulaA|m_out[25]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_ulaA|m_out[26]~5_combout\,
	datab => \mux_ulaA|m_out[23]~8_combout\,
	datac => \mux_ulaA|m_out[24]~7_combout\,
	datad => \mux_ulaA|m_out[25]~6_combout\,
	combout => \alu|ShiftLeft0~13_combout\);

-- Location: LCCOMB_X43_Y34_N8
\alu|ShiftLeft0~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftLeft0~12_combout\ = (\mux_ulaA|m_out[30]~1_combout\) # ((\mux_ulaA|m_out[27]~4_combout\) # ((\mux_ulaA|m_out[28]~3_combout\) # (\mux_ulaA|m_out[29]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_ulaA|m_out[30]~1_combout\,
	datab => \mux_ulaA|m_out[27]~4_combout\,
	datac => \mux_ulaA|m_out[28]~3_combout\,
	datad => \mux_ulaA|m_out[29]~2_combout\,
	combout => \alu|ShiftLeft0~12_combout\);

-- Location: LCCOMB_X42_Y31_N14
\bcoreg|regA[21]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \bcoreg|regA[21]~10_combout\ = (!\bcoreg|Equal0~1_combout\ & ((\bcoreg|breg32~combout\ & ((\bcoreg|breg32_rtl_1_bypass\(53)))) # (!\bcoreg|breg32~combout\ & (\bcoreg|breg32_rtl_0|auto_generated|ram_block1a21\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcoreg|Equal0~1_combout\,
	datab => \bcoreg|breg32_rtl_0|auto_generated|ram_block1a21\,
	datac => \bcoreg|breg32~combout\,
	datad => \bcoreg|breg32_rtl_1_bypass\(53),
	combout => \bcoreg|regA[21]~10_combout\);

-- Location: LCFF_X42_Y31_N15
\rgA|sr_out[21]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \bcoreg|regA[21]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rgA|sr_out\(21));

-- Location: LCCOMB_X42_Y31_N24
\mux_ulaA|m_out[21]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux_ulaA|m_out[21]~10_combout\ = (\ctr_mips|WideOr0~combout\ & ((\rgA|sr_out\(21)))) # (!\ctr_mips|WideOr0~combout\ & (\pc|sr_out\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|sr_out\(21),
	datab => \rgA|sr_out\(21),
	datac => \ctr_mips|WideOr0~combout\,
	combout => \mux_ulaA|m_out[21]~10_combout\);

-- Location: LCCOMB_X43_Y34_N28
\alu|ShiftLeft0~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftLeft0~14_combout\ = (\mux_ulaA|m_out[19]~12_combout\) # ((\mux_ulaA|m_out[20]~11_combout\) # ((\mux_ulaA|m_out[21]~10_combout\) # (\mux_ulaA|m_out[22]~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_ulaA|m_out[19]~12_combout\,
	datab => \mux_ulaA|m_out[20]~11_combout\,
	datac => \mux_ulaA|m_out[21]~10_combout\,
	datad => \mux_ulaA|m_out[22]~9_combout\,
	combout => \alu|ShiftLeft0~14_combout\);

-- Location: LCCOMB_X43_Y34_N2
\alu|ShiftLeft0~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftLeft0~16_combout\ = (\alu|ShiftLeft0~15_combout\) # ((\alu|ShiftLeft0~13_combout\) # ((\alu|ShiftLeft0~12_combout\) # (\alu|ShiftLeft0~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|ShiftLeft0~15_combout\,
	datab => \alu|ShiftLeft0~13_combout\,
	datac => \alu|ShiftLeft0~12_combout\,
	datad => \alu|ShiftLeft0~14_combout\,
	combout => \alu|ShiftLeft0~16_combout\);

-- Location: LCCOMB_X43_Y34_N16
\alu|Mux10~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux10~20_combout\ = (\actr|alu_ctr[0]~16_combout\) # ((\alu|ShiftLeft0~16_combout\) # ((\alu|ShiftLeft0~19_combout\) # (\mux_ulaA|m_out[4]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \actr|alu_ctr[0]~16_combout\,
	datab => \alu|ShiftLeft0~16_combout\,
	datac => \alu|ShiftLeft0~19_combout\,
	datad => \mux_ulaA|m_out[4]~0_combout\,
	combout => \alu|Mux10~20_combout\);

-- Location: LCCOMB_X41_Y31_N30
\alu|ShiftLeft0~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftLeft0~34_combout\ = (!\mux_ulaA|m_out[3]~28_combout\ & (\alu|ShiftLeft0~22_combout\ & (!\mux_ulaA|m_out[1]~30_combout\ & \mux_ulaA|m_out[2]~29_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_ulaA|m_out[3]~28_combout\,
	datab => \alu|ShiftLeft0~22_combout\,
	datac => \mux_ulaA|m_out[1]~30_combout\,
	datad => \mux_ulaA|m_out[2]~29_combout\,
	combout => \alu|ShiftLeft0~34_combout\);

-- Location: LCCOMB_X41_Y31_N14
\alu|ShiftLeft0~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftLeft0~38_combout\ = (\alu|ShiftLeft0~34_combout\) # ((\alu|ShiftLeft0~140_combout\ & \alu|ShiftLeft0~37_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|ShiftLeft0~140_combout\,
	datac => \alu|ShiftLeft0~37_combout\,
	datad => \alu|ShiftLeft0~34_combout\,
	combout => \alu|ShiftLeft0~38_combout\);

-- Location: LCCOMB_X42_Y31_N22
\alu|a32~37\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|a32~37_combout\ = \mux_ulaB|m_out[21]~14_combout\ $ (((\ctr_mips|WideOr0~combout\ & ((\rgA|sr_out\(21)))) # (!\ctr_mips|WideOr0~combout\ & (\pc|sr_out\(21)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|sr_out\(21),
	datab => \mux_ulaB|m_out[21]~14_combout\,
	datac => \rgA|sr_out\(21),
	datad => \ctr_mips|WideOr0~combout\,
	combout => \alu|a32~37_combout\);

-- Location: LCCOMB_X41_Y31_N10
\alu|Mux10~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux10~12_combout\ = (\alu|Mux10~21_combout\ & ((\alu|Mux10~11_combout\ & ((\alu|a32~37_combout\))) # (!\alu|Mux10~11_combout\ & (\alu|ShiftLeft0~38_combout\)))) # (!\alu|Mux10~21_combout\ & (((\alu|Mux10~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|Mux10~21_combout\,
	datab => \alu|ShiftLeft0~38_combout\,
	datac => \alu|a32~37_combout\,
	datad => \alu|Mux10~11_combout\,
	combout => \alu|Mux10~12_combout\);

-- Location: LCCOMB_X42_Y31_N4
\alu|Mux10~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux10~13_combout\ = (\alu|Mux10~20_combout\ & (((\alu|Mux10~12_combout\)))) # (!\alu|Mux10~20_combout\ & ((\alu|Mux10~12_combout\ & ((\alu|ShiftLeft0~72_combout\))) # (!\alu|Mux10~12_combout\ & (\alu|ShiftLeft0~110_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|ShiftLeft0~110_combout\,
	datab => \alu|Mux10~20_combout\,
	datac => \alu|ShiftLeft0~72_combout\,
	datad => \alu|Mux10~12_combout\,
	combout => \alu|Mux10~13_combout\);

-- Location: LCCOMB_X43_Y38_N4
\alu|ShiftRight0~65\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftRight0~65_combout\ = (\mux_ulaA|m_out[2]~29_combout\ & (\rgB|sr_out\(31))) # (!\mux_ulaA|m_out[2]~29_combout\ & ((\alu|ShiftRight1~24_combout\) # ((\rgB|sr_out\(31) & \mux_ulaA|m_out[1]~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_ulaA|m_out[2]~29_combout\,
	datab => \rgB|sr_out\(31),
	datac => \alu|ShiftRight1~24_combout\,
	datad => \mux_ulaA|m_out[1]~30_combout\,
	combout => \alu|ShiftRight0~65_combout\);

-- Location: LCCOMB_X43_Y38_N2
\alu|ShiftRight0~64\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftRight0~64_combout\ = (!\mux_ulaA|m_out[3]~28_combout\ & ((\mux_ulaA|m_out[2]~29_combout\ & ((\alu|ShiftRight0~44_combout\))) # (!\mux_ulaA|m_out[2]~29_combout\ & (\alu|ShiftRight0~43_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_ulaA|m_out[2]~29_combout\,
	datab => \mux_ulaA|m_out[3]~28_combout\,
	datac => \alu|ShiftRight0~43_combout\,
	datad => \alu|ShiftRight0~44_combout\,
	combout => \alu|ShiftRight0~64_combout\);

-- Location: LCCOMB_X43_Y38_N26
\alu|ShiftRight0~66\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftRight0~66_combout\ = (!\mux_ulaB|Equal2~0_combout\ & ((\alu|ShiftRight0~64_combout\) # ((\mux_ulaA|m_out[3]~28_combout\ & \alu|ShiftRight0~65_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_ulaB|Equal2~0_combout\,
	datab => \mux_ulaA|m_out[3]~28_combout\,
	datac => \alu|ShiftRight0~65_combout\,
	datad => \alu|ShiftRight0~64_combout\,
	combout => \alu|ShiftRight0~66_combout\);

-- Location: LCCOMB_X43_Y38_N14
\alu|ShiftRight1~65\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftRight1~65_combout\ = (\mux_ulaA|m_out[3]~28_combout\ & (!\mux_ulaA|m_out[2]~29_combout\ & (\alu|ShiftRight1~25_combout\))) # (!\mux_ulaA|m_out[3]~28_combout\ & (((\alu|ShiftRight0~67_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_ulaA|m_out[2]~29_combout\,
	datab => \mux_ulaA|m_out[3]~28_combout\,
	datac => \alu|ShiftRight1~25_combout\,
	datad => \alu|ShiftRight0~67_combout\,
	combout => \alu|ShiftRight1~65_combout\);

-- Location: LCCOMB_X42_Y31_N0
\alu|Mux10~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux10~15_combout\ = (\alu|Mux10~14_combout\ & (((\alu|Add1~42_combout\)) # (!\alu|Mux10~9_combout\))) # (!\alu|Mux10~14_combout\ & (\alu|Mux10~9_combout\ & (\alu|ShiftRight1~65_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|Mux10~14_combout\,
	datab => \alu|Mux10~9_combout\,
	datac => \alu|ShiftRight1~65_combout\,
	datad => \alu|Add1~42_combout\,
	combout => \alu|Mux10~15_combout\);

-- Location: LCCOMB_X42_Y31_N18
\alu|Mux10~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux10~16_combout\ = (\alu|Mux29~9_combout\ & ((\alu|Mux10~10_combout\ & ((\alu|tmp[21]~42_combout\))) # (!\alu|Mux10~10_combout\ & (\alu|Mux10~15_combout\)))) # (!\alu|Mux29~9_combout\ & (((!\alu|Mux10~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110100001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|Mux29~9_combout\,
	datab => \alu|Mux10~15_combout\,
	datac => \alu|Mux10~10_combout\,
	datad => \alu|tmp[21]~42_combout\,
	combout => \alu|Mux10~16_combout\);

-- Location: LCCOMB_X42_Y31_N28
\alu|Mux10~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux10~17_combout\ = (\alu|Mux29~5_combout\ & (((\alu|Mux10~16_combout\)))) # (!\alu|Mux29~5_combout\ & ((\alu|Mux10~16_combout\ & (\alu|ShiftRight0~66_combout\)) # (!\alu|Mux10~16_combout\ & ((\mux_ulaB|m_out[31]~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|Mux29~5_combout\,
	datab => \alu|ShiftRight0~66_combout\,
	datac => \mux_ulaB|m_out[31]~4_combout\,
	datad => \alu|Mux10~16_combout\,
	combout => \alu|Mux10~17_combout\);

-- Location: LCCOMB_X42_Y31_N26
\alu|Mux10~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux10~18_combout\ = (\alu|Mux14~6_combout\ & ((\alu|Mux10~17_combout\) # ((\alu|Mux29~2_combout\ & \alu|Mux10~13_combout\)))) # (!\alu|Mux14~6_combout\ & (\alu|Mux29~2_combout\ & (\alu|Mux10~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|Mux14~6_combout\,
	datab => \alu|Mux29~2_combout\,
	datac => \alu|Mux10~13_combout\,
	datad => \alu|Mux10~17_combout\,
	combout => \alu|Mux10~18_combout\);

-- Location: LCCOMB_X42_Y31_N20
\alu|Mux10~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux10~19_combout\ = (\alu|Mux10~18_combout\) # ((!\mux_ulaA|m_out[21]~10_combout\ & (!\mux_ulaB|m_out[21]~14_combout\ & \alu|Mux14~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_ulaA|m_out[21]~10_combout\,
	datab => \mux_ulaB|m_out[21]~14_combout\,
	datac => \alu|Mux14~8_combout\,
	datad => \alu|Mux10~18_combout\,
	combout => \alu|Mux10~19_combout\);

-- Location: LCFF_X42_Y31_N21
\regULA|sr_out[21]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \alu|Mux10~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regULA|sr_out\(21));

-- Location: LCCOMB_X38_Y31_N22
\breg_data_mux|m_out[21]~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \breg_data_mux|m_out[21]~19_combout\ = (\breg_data_mux|m_out[31]~9_combout\) # ((!\ctr_mips|pstate.ldreg_st~regout\ & \regULA|sr_out\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ctr_mips|pstate.ldreg_st~regout\,
	datac => \regULA|sr_out\(21),
	datad => \breg_data_mux|m_out[31]~9_combout\,
	combout => \breg_data_mux|m_out[21]~19_combout\);

-- Location: LCCOMB_X38_Y33_N26
\bcoreg|breg32_rtl_1_bypass[53]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \bcoreg|breg32_rtl_1_bypass[53]~feeder_combout\ = \breg_data_mux|m_out[21]~19_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \breg_data_mux|m_out[21]~19_combout\,
	combout => \bcoreg|breg32_rtl_1_bypass[53]~feeder_combout\);

-- Location: LCFF_X38_Y33_N27
\bcoreg|breg32_rtl_1_bypass[53]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \bcoreg|breg32_rtl_1_bypass[53]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bcoreg|breg32_rtl_1_bypass\(53));

-- Location: LCCOMB_X39_Y36_N4
\bcoreg|regB[21]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \bcoreg|regB[21]~11_combout\ = (!\bcoreg|Equal1~1_combout\ & ((\bcoreg|breg32~45\ & (\bcoreg|breg32_rtl_1_bypass\(53))) # (!\bcoreg|breg32~45\ & ((\bcoreg|breg32_rtl_1|auto_generated|ram_block1a21\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcoreg|Equal1~1_combout\,
	datab => \bcoreg|breg32_rtl_1_bypass\(53),
	datac => \bcoreg|breg32_rtl_1|auto_generated|ram_block1a21\,
	datad => \bcoreg|breg32~45\,
	combout => \bcoreg|regB[21]~11_combout\);

-- Location: LCFF_X39_Y36_N5
\rgB|sr_out[21]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \bcoreg|regB[21]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rgB|sr_out\(21));

-- Location: LCCOMB_X35_Y36_N28
\mux_store|m_out[21]~70\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux_store|m_out[21]~70_combout\ = (\rgB|sr_out\(21) & (((!\ctr_mips|Equal2~0_combout\) # (!\ctr_mips|pstate.writemem_st~regout\)) # (!\ir|sr_out\(31))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir|sr_out\(31),
	datab => \ctr_mips|pstate.writemem_st~regout\,
	datac => \rgB|sr_out\(21),
	datad => \ctr_mips|Equal2~0_combout\,
	combout => \mux_store|m_out[21]~70_combout\);

-- Location: LCCOMB_X36_Y36_N22
\mux_store|m_out[21]~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux_store|m_out[21]~42_combout\ = (\mux_store|m_out[21]~70_combout\) # ((\rgB|sr_out\(5) & (\mux_store|m_out[16]~36_combout\ & \mux_store|m_out[17]~66_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rgB|sr_out\(5),
	datab => \mux_store|m_out[21]~70_combout\,
	datac => \mux_store|m_out[16]~36_combout\,
	datad => \mux_store|m_out[17]~66_combout\,
	combout => \mux_store|m_out[21]~42_combout\);

-- Location: LCCOMB_X42_Y35_N26
\bcoreg|regB[11]~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \bcoreg|regB[11]~21_combout\ = (!\bcoreg|Equal1~1_combout\ & ((\bcoreg|breg32~45\ & (\bcoreg|breg32_rtl_1_bypass\(33))) # (!\bcoreg|breg32~45\ & ((\bcoreg|breg32_rtl_1|auto_generated|ram_block1a11\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcoreg|breg32_rtl_1_bypass\(33),
	datab => \bcoreg|Equal1~1_combout\,
	datac => \bcoreg|breg32~45\,
	datad => \bcoreg|breg32_rtl_1|auto_generated|ram_block1a11\,
	combout => \bcoreg|regB[11]~21_combout\);

-- Location: LCFF_X42_Y35_N27
\rgB|sr_out[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \bcoreg|regB[11]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rgB|sr_out\(11));

-- Location: LCCOMB_X36_Y35_N20
\mux_store|m_out[11]~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux_store|m_out[11]~31_combout\ = (\mux_store|m_out[8]~64_combout\ & ((\mux_store|Equal1~0_combout\ & (\rgB|sr_out\(3))) # (!\mux_store|Equal1~0_combout\ & ((\rgB|sr_out\(11))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rgB|sr_out\(3),
	datab => \mux_store|Equal1~0_combout\,
	datac => \rgB|sr_out\(11),
	datad => \mux_store|m_out[8]~64_combout\,
	combout => \mux_store|m_out[11]~31_combout\);

-- Location: LCFF_X42_Y35_N17
\ir|sr_out[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \mem|altsyncram_component|auto_generated|q_a\(15),
	sload => VCC,
	ena => \ctr_mips|ALT_INV_pstate.fetch_st~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ir|sr_out\(15));

-- Location: LCCOMB_X36_Y31_N18
\mux_reg_add|m_out[4]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux_reg_add|m_out[4]~4_combout\ = (\ctr_mips|pstate.writereg_st~regout\ & (\ir|sr_out\(15))) # (!\ctr_mips|pstate.writereg_st~regout\ & ((\ir|sr_out\(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ir|sr_out\(15),
	datac => \ir|sr_out\(20),
	datad => \ctr_mips|pstate.writereg_st~regout\,
	combout => \mux_reg_add|m_out[4]~4_combout\);

-- Location: LCCOMB_X38_Y37_N30
\bcoreg|regB[10]~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \bcoreg|regB[10]~22_combout\ = (!\bcoreg|Equal1~1_combout\ & ((\bcoreg|breg32~45\ & ((\bcoreg|breg32_rtl_1_bypass\(31)))) # (!\bcoreg|breg32~45\ & (\bcoreg|breg32_rtl_1|auto_generated|ram_block1a10\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcoreg|breg32~45\,
	datab => \bcoreg|Equal1~1_combout\,
	datac => \bcoreg|breg32_rtl_1|auto_generated|ram_block1a10\,
	datad => \bcoreg|breg32_rtl_1_bypass\(31),
	combout => \bcoreg|regB[10]~22_combout\);

-- Location: LCFF_X38_Y37_N31
\rgB|sr_out[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \bcoreg|regB[10]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rgB|sr_out\(10));

-- Location: LCCOMB_X36_Y34_N24
\mux_store|m_out[10]~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux_store|m_out[10]~30_combout\ = (\mux_store|m_out[8]~64_combout\ & ((\mux_store|Equal1~0_combout\ & (\rgB|sr_out\(2))) # (!\mux_store|Equal1~0_combout\ & ((\rgB|sr_out\(10))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_store|Equal1~0_combout\,
	datab => \rgB|sr_out\(2),
	datac => \rgB|sr_out\(10),
	datad => \mux_store|m_out[8]~64_combout\,
	combout => \mux_store|m_out[10]~30_combout\);

-- Location: LCFF_X38_Y37_N15
\ir|sr_out[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \mem|altsyncram_component|auto_generated|q_a\(14),
	sload => VCC,
	ena => \ctr_mips|ALT_INV_pstate.fetch_st~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ir|sr_out\(14));

-- Location: LCCOMB_X36_Y30_N2
\mux_reg_add|m_out[3]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux_reg_add|m_out[3]~3_combout\ = (\ctr_mips|pstate.writereg_st~regout\ & ((\ir|sr_out\(14)))) # (!\ctr_mips|pstate.writereg_st~regout\ & (\ir|sr_out\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir|sr_out\(19),
	datac => \ir|sr_out\(14),
	datad => \ctr_mips|pstate.writereg_st~regout\,
	combout => \mux_reg_add|m_out[3]~3_combout\);

-- Location: LCCOMB_X36_Y37_N28
\bcoreg|regB[4]~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \bcoreg|regB[4]~28_combout\ = (!\bcoreg|Equal1~1_combout\ & ((\bcoreg|breg32~45\ & (\bcoreg|breg32_rtl_1_bypass\(19))) # (!\bcoreg|breg32~45\ & ((\bcoreg|breg32_rtl_1|auto_generated|ram_block1a4\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcoreg|breg32_rtl_1_bypass\(19),
	datab => \bcoreg|Equal1~1_combout\,
	datac => \bcoreg|breg32~45\,
	datad => \bcoreg|breg32_rtl_1|auto_generated|ram_block1a4\,
	combout => \bcoreg|regB[4]~28_combout\);

-- Location: LCFF_X41_Y35_N13
\rgB|sr_out[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \bcoreg|regB[4]~28_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rgB|sr_out\(4));

-- Location: LCCOMB_X36_Y36_N28
\mux_store|m_out[20]~41\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux_store|m_out[20]~41_combout\ = (\mux_store|m_out[20]~69_combout\) # ((\rgB|sr_out\(4) & (\mux_store|m_out[16]~36_combout\ & \mux_store|m_out[17]~66_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_store|m_out[20]~69_combout\,
	datab => \rgB|sr_out\(4),
	datac => \mux_store|m_out[16]~36_combout\,
	datad => \mux_store|m_out[17]~66_combout\,
	combout => \mux_store|m_out[20]~41_combout\);

-- Location: LCCOMB_X36_Y32_N8
\ir|sr_out[17]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \ir|sr_out[17]~feeder_combout\ = \mem|altsyncram_component|auto_generated|q_a\(17)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mem|altsyncram_component|auto_generated|q_a\(17),
	combout => \ir|sr_out[17]~feeder_combout\);

-- Location: LCFF_X36_Y32_N9
\ir|sr_out[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \ir|sr_out[17]~feeder_combout\,
	ena => \ctr_mips|ALT_INV_pstate.fetch_st~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ir|sr_out\(17));

-- Location: LCCOMB_X36_Y34_N26
\mux_reg_add|m_out[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux_reg_add|m_out[1]~1_combout\ = (\ctr_mips|pstate.writereg_st~regout\ & ((\ir|sr_out\(12)))) # (!\ctr_mips|pstate.writereg_st~regout\ & (\ir|sr_out\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ir|sr_out\(17),
	datac => \ir|sr_out\(12),
	datad => \ctr_mips|pstate.writereg_st~regout\,
	combout => \mux_reg_add|m_out[1]~1_combout\);

-- Location: LCCOMB_X39_Y36_N20
\bcoreg|regB[19]~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \bcoreg|regB[19]~13_combout\ = (!\bcoreg|Equal1~1_combout\ & ((\bcoreg|breg32~45\ & (\bcoreg|breg32_rtl_1_bypass\(49))) # (!\bcoreg|breg32~45\ & ((\bcoreg|breg32_rtl_1|auto_generated|ram_block1a19\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcoreg|breg32_rtl_1_bypass\(49),
	datab => \bcoreg|breg32~45\,
	datac => \bcoreg|breg32_rtl_1|auto_generated|ram_block1a19\,
	datad => \bcoreg|Equal1~1_combout\,
	combout => \bcoreg|regB[19]~13_combout\);

-- Location: LCFF_X39_Y36_N21
\rgB|sr_out[19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \bcoreg|regB[19]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rgB|sr_out\(19));

-- Location: LCCOMB_X36_Y36_N4
\mux_store|m_out[19]~68\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux_store|m_out[19]~68_combout\ = (\rgB|sr_out\(19) & (((!\ctr_mips|Equal2~0_combout\) # (!\ctr_mips|pstate.writemem_st~regout\)) # (!\ir|sr_out\(31))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir|sr_out\(31),
	datab => \rgB|sr_out\(19),
	datac => \ctr_mips|pstate.writemem_st~regout\,
	datad => \ctr_mips|Equal2~0_combout\,
	combout => \mux_store|m_out[19]~68_combout\);

-- Location: LCCOMB_X36_Y36_N30
\mux_store|m_out[19]~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux_store|m_out[19]~40_combout\ = (\mux_store|m_out[19]~68_combout\) # ((\rgB|sr_out\(3) & (\mux_store|m_out[16]~36_combout\ & \mux_store|m_out[17]~66_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rgB|sr_out\(3),
	datab => \mux_store|m_out[19]~68_combout\,
	datac => \mux_store|m_out[16]~36_combout\,
	datad => \mux_store|m_out[17]~66_combout\,
	combout => \mux_store|m_out[19]~40_combout\);

-- Location: LCFF_X36_Y33_N19
\ir|sr_out[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \mem|altsyncram_component|auto_generated|q_a\(18),
	sload => VCC,
	ena => \ctr_mips|ALT_INV_pstate.fetch_st~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ir|sr_out\(18));

-- Location: LCCOMB_X36_Y30_N0
\mux_reg_add|m_out[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux_reg_add|m_out[2]~2_combout\ = (\ctr_mips|pstate.writereg_st~regout\ & ((\ir|sr_out\(13)))) # (!\ctr_mips|pstate.writereg_st~regout\ & (\ir|sr_out\(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ir|sr_out\(18),
	datac => \ir|sr_out\(13),
	datad => \ctr_mips|pstate.writereg_st~regout\,
	combout => \mux_reg_add|m_out[2]~2_combout\);

-- Location: LCCOMB_X36_Y30_N8
\bcoreg|breg32_rtl_0_bypass[5]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \bcoreg|breg32_rtl_0_bypass[5]~feeder_combout\ = \mux_reg_add|m_out[2]~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mux_reg_add|m_out[2]~2_combout\,
	combout => \bcoreg|breg32_rtl_0_bypass[5]~feeder_combout\);

-- Location: LCFF_X36_Y30_N9
\bcoreg|breg32_rtl_0_bypass[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \bcoreg|breg32_rtl_0_bypass[5]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bcoreg|breg32_rtl_0_bypass\(5));

-- Location: LCCOMB_X36_Y30_N30
\bcoreg|breg32~39\ : cycloneii_lcell_comb
-- Equation(s):
-- \bcoreg|breg32~39_combout\ = (\bcoreg|breg32_rtl_0_bypass\(7) & (\ir|sr_out\(19) & (\bcoreg|breg32_rtl_0_bypass\(5) $ (!\ir|sr_out\(18))))) # (!\bcoreg|breg32_rtl_0_bypass\(7) & (!\ir|sr_out\(19) & (\bcoreg|breg32_rtl_0_bypass\(5) $ (!\ir|sr_out\(18)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcoreg|breg32_rtl_0_bypass\(7),
	datab => \bcoreg|breg32_rtl_0_bypass\(5),
	datac => \ir|sr_out\(19),
	datad => \ir|sr_out\(18),
	combout => \bcoreg|breg32~39_combout\);

-- Location: LCCOMB_X36_Y30_N4
\bcoreg|breg32_rtl_0_bypass[12]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \bcoreg|breg32_rtl_0_bypass[12]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \bcoreg|breg32_rtl_0_bypass[12]~feeder_combout\);

-- Location: LCFF_X36_Y30_N5
\bcoreg|breg32_rtl_0_bypass[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \bcoreg|breg32_rtl_0_bypass[12]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bcoreg|breg32_rtl_0_bypass\(12));

-- Location: LCCOMB_X36_Y30_N26
\bcoreg|breg32_rtl_0_bypass[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \bcoreg|breg32_rtl_0_bypass[1]~feeder_combout\ = \mux_reg_add|m_out[0]~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mux_reg_add|m_out[0]~0_combout\,
	combout => \bcoreg|breg32_rtl_0_bypass[1]~feeder_combout\);

-- Location: LCFF_X36_Y30_N27
\bcoreg|breg32_rtl_0_bypass[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \bcoreg|breg32_rtl_0_bypass[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bcoreg|breg32_rtl_0_bypass\(1));

-- Location: LCCOMB_X36_Y30_N28
\bcoreg|breg32~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \bcoreg|breg32~38_combout\ = (\bcoreg|breg32_rtl_0_bypass\(3) & (\ir|sr_out\(17) & (\ir|sr_out\(16) $ (!\bcoreg|breg32_rtl_0_bypass\(1))))) # (!\bcoreg|breg32_rtl_0_bypass\(3) & (!\ir|sr_out\(17) & (\ir|sr_out\(16) $ (!\bcoreg|breg32_rtl_0_bypass\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcoreg|breg32_rtl_0_bypass\(3),
	datab => \ir|sr_out\(17),
	datac => \ir|sr_out\(16),
	datad => \bcoreg|breg32_rtl_0_bypass\(1),
	combout => \bcoreg|breg32~38_combout\);

-- Location: LCCOMB_X36_Y30_N10
\bcoreg|breg32~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \bcoreg|breg32~45\ = ((\bcoreg|breg32~40_combout\ & (\bcoreg|breg32~39_combout\ & \bcoreg|breg32~38_combout\))) # (!\bcoreg|breg32_rtl_0_bypass\(12))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcoreg|breg32~40_combout\,
	datab => \bcoreg|breg32~39_combout\,
	datac => \bcoreg|breg32_rtl_0_bypass\(12),
	datad => \bcoreg|breg32~38_combout\,
	combout => \bcoreg|breg32~45\);

-- Location: LCCOMB_X39_Y36_N12
\bcoreg|regB[18]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \bcoreg|regB[18]~14_combout\ = (!\bcoreg|Equal1~1_combout\ & ((\bcoreg|breg32~45\ & (\bcoreg|breg32_rtl_1_bypass\(47))) # (!\bcoreg|breg32~45\ & ((\bcoreg|breg32_rtl_1|auto_generated|ram_block1a18\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcoreg|Equal1~1_combout\,
	datab => \bcoreg|breg32~45\,
	datac => \bcoreg|breg32_rtl_1_bypass\(47),
	datad => \bcoreg|breg32_rtl_1|auto_generated|ram_block1a18\,
	combout => \bcoreg|regB[18]~14_combout\);

-- Location: LCFF_X39_Y36_N13
\rgB|sr_out[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \bcoreg|regB[18]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rgB|sr_out\(18));

-- Location: LCCOMB_X35_Y36_N6
\mux_store|m_out[18]~67\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux_store|m_out[18]~67_combout\ = (\rgB|sr_out\(18) & (((!\ctr_mips|Equal2~0_combout\) # (!\ctr_mips|pstate.writemem_st~regout\)) # (!\ir|sr_out\(31))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir|sr_out\(31),
	datab => \ctr_mips|pstate.writemem_st~regout\,
	datac => \rgB|sr_out\(18),
	datad => \ctr_mips|Equal2~0_combout\,
	combout => \mux_store|m_out[18]~67_combout\);

-- Location: LCCOMB_X36_Y36_N12
\mux_store|m_out[18]~39\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux_store|m_out[18]~39_combout\ = (\mux_store|m_out[18]~67_combout\) # ((\rgB|sr_out\(2) & (\mux_store|m_out[16]~36_combout\ & \mux_store|m_out[17]~66_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rgB|sr_out\(2),
	datab => \mux_store|m_out[18]~67_combout\,
	datac => \mux_store|m_out[16]~36_combout\,
	datad => \mux_store|m_out[17]~66_combout\,
	combout => \mux_store|m_out[18]~39_combout\);

-- Location: LCFF_X36_Y33_N25
\ir|sr_out[23]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \mem|altsyncram_component|auto_generated|q_a\(23),
	sload => VCC,
	ena => \ctr_mips|ALT_INV_pstate.fetch_st~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ir|sr_out\(23));

-- Location: LCFF_X38_Y33_N23
\ir|sr_out[24]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \mem|altsyncram_component|auto_generated|q_a\(24),
	sload => VCC,
	ena => \ctr_mips|ALT_INV_pstate.fetch_st~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ir|sr_out\(24));

-- Location: LCCOMB_X36_Y30_N22
\bcoreg|breg32~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \bcoreg|breg32~42_combout\ = (\bcoreg|breg32_rtl_0_bypass\(7) & (\ir|sr_out\(24) & (\ir|sr_out\(23) $ (!\bcoreg|breg32_rtl_0_bypass\(5))))) # (!\bcoreg|breg32_rtl_0_bypass\(7) & (!\ir|sr_out\(24) & (\ir|sr_out\(23) $ (!\bcoreg|breg32_rtl_0_bypass\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcoreg|breg32_rtl_0_bypass\(7),
	datab => \ir|sr_out\(23),
	datac => \bcoreg|breg32_rtl_0_bypass\(5),
	datad => \ir|sr_out\(24),
	combout => \bcoreg|breg32~42_combout\);

-- Location: LCCOMB_X36_Y31_N26
\bcoreg|breg32_rtl_0_bypass[9]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \bcoreg|breg32_rtl_0_bypass[9]~feeder_combout\ = \mux_reg_add|m_out[4]~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mux_reg_add|m_out[4]~4_combout\,
	combout => \bcoreg|breg32_rtl_0_bypass[9]~feeder_combout\);

-- Location: LCFF_X36_Y31_N27
\bcoreg|breg32_rtl_0_bypass[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \bcoreg|breg32_rtl_0_bypass[9]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bcoreg|breg32_rtl_0_bypass\(9));

-- Location: LCCOMB_X35_Y33_N30
\ctr_mips|Mux8~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ctr_mips|Mux8~0_combout\ = (!\ir|sr_out\(27) & (\ir|sr_out\(29) & ((\ir|sr_out\(28)) # (!\ir|sr_out\(26)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir|sr_out\(28),
	datab => \ir|sr_out\(27),
	datac => \ir|sr_out\(26),
	datad => \ir|sr_out\(29),
	combout => \ctr_mips|Mux8~0_combout\);

-- Location: LCCOMB_X35_Y33_N18
\ctr_mips|nstate.arith_imm_st~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ctr_mips|nstate.arith_imm_st~0_combout\ = (!\ir|sr_out\(30) & (\ctr_mips|Mux8~0_combout\ & (\ctr_mips|pstate.c_mem_add_st~regout\ & !\ir|sr_out\(31))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir|sr_out\(30),
	datab => \ctr_mips|Mux8~0_combout\,
	datac => \ctr_mips|pstate.c_mem_add_st~regout\,
	datad => \ir|sr_out\(31),
	combout => \ctr_mips|nstate.arith_imm_st~0_combout\);

-- Location: LCFF_X35_Y33_N19
\ctr_mips|pstate.arith_imm_st\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \ctr_mips|nstate.arith_imm_st~0_combout\,
	aclr => \rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ctr_mips|pstate.arith_imm_st~regout\);

-- Location: LCCOMB_X36_Y31_N20
\ctr_mips|WideOr1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ctr_mips|WideOr1~0_combout\ = (\ctr_mips|pstate.writereg_st~regout\) # ((\ctr_mips|pstate.arith_imm_st~regout\) # (\ctr_mips|pstate.ldreg_st~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ctr_mips|pstate.writereg_st~regout\,
	datac => \ctr_mips|pstate.arith_imm_st~regout\,
	datad => \ctr_mips|pstate.ldreg_st~regout\,
	combout => \ctr_mips|WideOr1~0_combout\);

-- Location: LCFF_X36_Y31_N5
\bcoreg|breg32_rtl_0_bypass[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \ctr_mips|WideOr1~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bcoreg|breg32_rtl_0_bypass\(0));

-- Location: LCCOMB_X36_Y31_N6
\bcoreg|breg32~43\ : cycloneii_lcell_comb
-- Equation(s):
-- \bcoreg|breg32~43_combout\ = (\bcoreg|breg32_rtl_0_bypass\(0) & (\bcoreg|breg32_rtl_0_bypass\(9) $ (!\ir|sr_out\(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bcoreg|breg32_rtl_0_bypass\(9),
	datac => \bcoreg|breg32_rtl_0_bypass\(0),
	datad => \ir|sr_out\(25),
	combout => \bcoreg|breg32~43_combout\);

-- Location: LCCOMB_X36_Y30_N24
\bcoreg|breg32\ : cycloneii_lcell_comb
-- Equation(s):
-- \bcoreg|breg32~combout\ = ((\bcoreg|breg32~41_combout\ & (\bcoreg|breg32~42_combout\ & \bcoreg|breg32~43_combout\))) # (!\bcoreg|breg32_rtl_0_bypass\(12))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcoreg|breg32~41_combout\,
	datab => \bcoreg|breg32~42_combout\,
	datac => \bcoreg|breg32_rtl_0_bypass\(12),
	datad => \bcoreg|breg32~43_combout\,
	combout => \bcoreg|breg32~combout\);

-- Location: LCCOMB_X36_Y32_N24
\bcoreg|regA[5]~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \bcoreg|regA[5]~18_combout\ = (!\bcoreg|Equal0~1_combout\ & ((\bcoreg|breg32~combout\ & (\bcoreg|breg32_rtl_1_bypass\(21))) # (!\bcoreg|breg32~combout\ & ((\bcoreg|breg32_rtl_0|auto_generated|ram_block1a5\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcoreg|Equal0~1_combout\,
	datab => \bcoreg|breg32_rtl_1_bypass\(21),
	datac => \bcoreg|breg32~combout\,
	datad => \bcoreg|breg32_rtl_0|auto_generated|ram_block1a5\,
	combout => \bcoreg|regA[5]~18_combout\);

-- Location: LCCOMB_X42_Y34_N26
\rgA|sr_out[5]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \rgA|sr_out[5]~feeder_combout\ = \bcoreg|regA[5]~18_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \bcoreg|regA[5]~18_combout\,
	combout => \rgA|sr_out[5]~feeder_combout\);

-- Location: LCFF_X42_Y34_N27
\rgA|sr_out[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \rgA|sr_out[5]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rgA|sr_out\(5));

-- Location: LCCOMB_X42_Y34_N28
\alu|a32~49\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|a32~49_combout\ = \mux_ulaB|m_out[5]~43_combout\ $ (((\ctr_mips|WideOr0~combout\ & (\rgA|sr_out\(5))) # (!\ctr_mips|WideOr0~combout\ & ((\pc|sr_out\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010011111011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctr_mips|WideOr0~combout\,
	datab => \rgA|sr_out\(5),
	datac => \pc|sr_out\(5),
	datad => \mux_ulaB|m_out[5]~43_combout\,
	combout => \alu|a32~49_combout\);

-- Location: LCCOMB_X41_Y31_N24
\alu|Mux26~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux26~0_combout\ = (\actr|alu_ctr[1]~14_combout\ & ((\mux_ulaA|m_out[5]~18_combout\ & ((\mux_ulaB|m_out[5]~43_combout\) # (\actr|alu_ctr[0]~16_combout\))) # (!\mux_ulaA|m_out[5]~18_combout\ & (\mux_ulaB|m_out[5]~43_combout\ & 
-- \actr|alu_ctr[0]~16_combout\)))) # (!\actr|alu_ctr[1]~14_combout\ & (((!\actr|alu_ctr[0]~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100010110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_ulaA|m_out[5]~18_combout\,
	datab => \actr|alu_ctr[1]~14_combout\,
	datac => \mux_ulaB|m_out[5]~43_combout\,
	datad => \actr|alu_ctr[0]~16_combout\,
	combout => \alu|Mux26~0_combout\);

-- Location: LCCOMB_X42_Y34_N10
\alu|Mux26~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux26~1_combout\ = (\alu|Mux29~6_combout\ & ((\alu|Mux26~0_combout\ & (\alu|Add1~10_combout\)) # (!\alu|Mux26~0_combout\ & ((\alu|ShiftRight1~65_combout\))))) # (!\alu|Mux29~6_combout\ & (((\alu|Mux26~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|Add1~10_combout\,
	datab => \alu|Mux29~6_combout\,
	datac => \alu|ShiftRight1~65_combout\,
	datad => \alu|Mux26~0_combout\,
	combout => \alu|Mux26~1_combout\);

-- Location: LCCOMB_X42_Y34_N20
\alu|Mux26~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux26~2_combout\ = (\alu|Mux29~10_combout\ & (\alu|tmp[5]~10_combout\ & (\alu|Mux29~9_combout\))) # (!\alu|Mux29~10_combout\ & (((\alu|Mux26~1_combout\) # (!\alu|Mux29~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|tmp[5]~10_combout\,
	datab => \alu|Mux29~10_combout\,
	datac => \alu|Mux29~9_combout\,
	datad => \alu|Mux26~1_combout\,
	combout => \alu|Mux26~2_combout\);

-- Location: LCCOMB_X42_Y34_N14
\alu|Mux26~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux26~3_combout\ = (\alu|Mux29~5_combout\ & (((\alu|Mux26~2_combout\)))) # (!\alu|Mux29~5_combout\ & ((\alu|Mux26~2_combout\ & ((\alu|ShiftRight0~66_combout\))) # (!\alu|Mux26~2_combout\ & (\mux_ulaB|m_out[31]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_ulaB|m_out[31]~4_combout\,
	datab => \alu|Mux29~5_combout\,
	datac => \alu|Mux26~2_combout\,
	datad => \alu|ShiftRight0~66_combout\,
	combout => \alu|Mux26~3_combout\);

-- Location: LCCOMB_X42_Y34_N0
\alu|Mux26~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux26~4_combout\ = (\alu|Mux25~3_combout\ & ((\alu|ShiftRight0~68_combout\) # ((!\alu|Mux25~4_combout\)))) # (!\alu|Mux25~3_combout\ & (((\alu|Mux26~3_combout\ & \alu|Mux25~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|ShiftRight0~68_combout\,
	datab => \alu|Mux25~3_combout\,
	datac => \alu|Mux26~3_combout\,
	datad => \alu|Mux25~4_combout\,
	combout => \alu|Mux26~4_combout\);

-- Location: LCCOMB_X42_Y34_N6
\alu|Mux26~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux26~5_combout\ = (\alu|Mux25~13_combout\ & (((\alu|Mux26~4_combout\)))) # (!\alu|Mux25~13_combout\ & ((\alu|Mux26~4_combout\ & (\alu|ShiftRight0~34_combout\)) # (!\alu|Mux26~4_combout\ & ((\alu|ShiftRight0~31_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|ShiftRight0~34_combout\,
	datab => \alu|ShiftRight0~31_combout\,
	datac => \alu|Mux25~13_combout\,
	datad => \alu|Mux26~4_combout\,
	combout => \alu|Mux26~5_combout\);

-- Location: LCCOMB_X42_Y34_N22
\alu|Mux26~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux26~7_combout\ = (\alu|Mux29~3_combout\ & (((\alu|Mux29~2_combout\)) # (!\alu|Mux26~6_combout\))) # (!\alu|Mux29~3_combout\ & (((!\alu|Mux29~2_combout\ & \alu|Mux26~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100011111000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|Mux26~6_combout\,
	datab => \alu|Mux29~3_combout\,
	datac => \alu|Mux29~2_combout\,
	datad => \alu|Mux26~5_combout\,
	combout => \alu|Mux26~7_combout\);

-- Location: LCCOMB_X42_Y34_N8
\alu|Mux26\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux26~combout\ = (\alu|Mux29~4_combout\ & ((\alu|Mux26~7_combout\ & ((\alu|a32~49_combout\))) # (!\alu|Mux26~7_combout\ & (\alu|ShiftLeft0~38_combout\)))) # (!\alu|Mux29~4_combout\ & (((\alu|Mux26~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|ShiftLeft0~38_combout\,
	datab => \alu|a32~49_combout\,
	datac => \alu|Mux29~4_combout\,
	datad => \alu|Mux26~7_combout\,
	combout => \alu|Mux26~combout\);

-- Location: LCCOMB_X42_Y34_N18
\regULA|sr_out[5]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \regULA|sr_out[5]~feeder_combout\ = \alu|Mux26~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \alu|Mux26~combout\,
	combout => \regULA|sr_out[5]~feeder_combout\);

-- Location: LCFF_X42_Y34_N19
\regULA|sr_out[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \regULA|sr_out[5]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regULA|sr_out\(5));

-- Location: LCCOMB_X38_Y34_N18
\breg_data_mux|m_out[5]~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \breg_data_mux|m_out[5]~32_combout\ = (\ctr_mips|pstate.ldreg_st~regout\ & (\breg_data_mux|m_out[5]~31_combout\)) # (!\ctr_mips|pstate.ldreg_st~regout\ & ((\regULA|sr_out\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \breg_data_mux|m_out[5]~31_combout\,
	datab => \regULA|sr_out\(5),
	datac => \ctr_mips|pstate.ldreg_st~regout\,
	combout => \breg_data_mux|m_out[5]~32_combout\);

-- Location: LCCOMB_X38_Y34_N22
\bcoreg|breg32_rtl_1_bypass[21]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \bcoreg|breg32_rtl_1_bypass[21]~feeder_combout\ = \breg_data_mux|m_out[5]~32_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \breg_data_mux|m_out[5]~32_combout\,
	combout => \bcoreg|breg32_rtl_1_bypass[21]~feeder_combout\);

-- Location: LCFF_X38_Y34_N23
\bcoreg|breg32_rtl_1_bypass[21]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \bcoreg|breg32_rtl_1_bypass[21]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bcoreg|breg32_rtl_1_bypass\(21));

-- Location: LCCOMB_X39_Y36_N16
\bcoreg|regB[5]~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \bcoreg|regB[5]~27_combout\ = (!\bcoreg|Equal1~1_combout\ & ((\bcoreg|breg32~45\ & (\bcoreg|breg32_rtl_1_bypass\(21))) # (!\bcoreg|breg32~45\ & ((\bcoreg|breg32_rtl_1|auto_generated|ram_block1a5\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcoreg|Equal1~1_combout\,
	datab => \bcoreg|breg32_rtl_1_bypass\(21),
	datac => \bcoreg|breg32_rtl_1|auto_generated|ram_block1a5\,
	datad => \bcoreg|breg32~45\,
	combout => \bcoreg|regB[5]~27_combout\);

-- Location: LCFF_X39_Y36_N17
\rgB|sr_out[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \bcoreg|regB[5]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rgB|sr_out\(5));

-- Location: LCCOMB_X36_Y35_N6
\mux_store|m_out[5]~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux_store|m_out[5]~25_combout\ = (\rgB|sr_out\(5) & \mux_store|m_out[3]~63_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rgB|sr_out\(5),
	datad => \mux_store|m_out[3]~63_combout\,
	combout => \mux_store|m_out[5]~25_combout\);

-- Location: LCFF_X36_Y35_N23
\rdm|sr_out[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \mem|altsyncram_component|auto_generated|q_a\(10),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rdm|sr_out\(10));

-- Location: LCCOMB_X36_Y34_N10
\breg_data_mux|m_out[2]~45\ : cycloneii_lcell_comb
-- Equation(s):
-- \breg_data_mux|m_out[2]~45_combout\ = (\breg_data_mux|m_out[2]~44_combout\ & (((\rdm|sr_out\(10)) # (!\breg_data_mux|m_out[3]~0_combout\)))) # (!\breg_data_mux|m_out[2]~44_combout\ & (\rdm|sr_out\(2) & ((\breg_data_mux|m_out[3]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \breg_data_mux|m_out[2]~44_combout\,
	datab => \rdm|sr_out\(2),
	datac => \rdm|sr_out\(10),
	datad => \breg_data_mux|m_out[3]~0_combout\,
	combout => \breg_data_mux|m_out[2]~45_combout\);

-- Location: LCCOMB_X36_Y34_N4
\breg_data_mux|m_out[2]~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \breg_data_mux|m_out[2]~46_combout\ = (\ctr_mips|pstate.ldreg_st~regout\ & ((\breg_data_mux|m_out[2]~45_combout\))) # (!\ctr_mips|pstate.ldreg_st~regout\ & (\regULA|sr_out\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \regULA|sr_out\(2),
	datac => \ctr_mips|pstate.ldreg_st~regout\,
	datad => \breg_data_mux|m_out[2]~45_combout\,
	combout => \breg_data_mux|m_out[2]~46_combout\);

-- Location: LCCOMB_X39_Y33_N22
\bcoreg|breg32_rtl_1_bypass[15]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \bcoreg|breg32_rtl_1_bypass[15]~feeder_combout\ = \breg_data_mux|m_out[2]~46_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \breg_data_mux|m_out[2]~46_combout\,
	combout => \bcoreg|breg32_rtl_1_bypass[15]~feeder_combout\);

-- Location: LCFF_X39_Y33_N23
\bcoreg|breg32_rtl_1_bypass[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \bcoreg|breg32_rtl_1_bypass[15]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bcoreg|breg32_rtl_1_bypass\(15));

-- Location: LCCOMB_X38_Y35_N6
\bcoreg|regB[2]~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \bcoreg|regB[2]~30_combout\ = (!\bcoreg|Equal1~1_combout\ & ((\bcoreg|breg32~45\ & ((\bcoreg|breg32_rtl_1_bypass\(15)))) # (!\bcoreg|breg32~45\ & (\bcoreg|breg32_rtl_1|auto_generated|ram_block1a2\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcoreg|breg32_rtl_1|auto_generated|ram_block1a2\,
	datab => \bcoreg|Equal1~1_combout\,
	datac => \bcoreg|breg32_rtl_1_bypass\(15),
	datad => \bcoreg|breg32~45\,
	combout => \bcoreg|regB[2]~30_combout\);

-- Location: LCFF_X39_Y35_N25
\rgB|sr_out[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \bcoreg|regB[2]~30_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rgB|sr_out\(2));

-- Location: LCCOMB_X36_Y33_N10
\mux_store|m_out[2]~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux_store|m_out[2]~22_combout\ = (\rgB|sr_out\(2) & \mux_store|m_out[3]~63_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rgB|sr_out\(2),
	datad => \mux_store|m_out[3]~63_combout\,
	combout => \mux_store|m_out[2]~22_combout\);

-- Location: LCFF_X42_Y35_N11
\ir|sr_out[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \mem|altsyncram_component|auto_generated|q_a\(11),
	sload => VCC,
	ena => \ctr_mips|ALT_INV_pstate.fetch_st~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ir|sr_out\(11));

-- Location: LCCOMB_X36_Y30_N18
\mux_reg_add|m_out[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux_reg_add|m_out[0]~0_combout\ = (\ctr_mips|pstate.writereg_st~regout\ & ((\ir|sr_out\(11)))) # (!\ctr_mips|pstate.writereg_st~regout\ & (\ir|sr_out\(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir|sr_out\(16),
	datac => \ir|sr_out\(11),
	datad => \ctr_mips|pstate.writereg_st~regout\,
	combout => \mux_reg_add|m_out[0]~0_combout\);

-- Location: LCCOMB_X38_Y36_N28
\bcoreg|regB[1]~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \bcoreg|regB[1]~31_combout\ = (!\bcoreg|Equal1~1_combout\ & ((\bcoreg|breg32~45\ & ((\bcoreg|breg32_rtl_1_bypass\(13)))) # (!\bcoreg|breg32~45\ & (\bcoreg|breg32_rtl_1|auto_generated|ram_block1a1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcoreg|Equal1~1_combout\,
	datab => \bcoreg|breg32_rtl_1|auto_generated|ram_block1a1\,
	datac => \bcoreg|breg32_rtl_1_bypass\(13),
	datad => \bcoreg|breg32~45\,
	combout => \bcoreg|regB[1]~31_combout\);

-- Location: LCFF_X41_Y35_N29
\rgB|sr_out[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \bcoreg|regB[1]~31_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rgB|sr_out\(1));

-- Location: LCCOMB_X36_Y36_N6
\mux_store|m_out[17]~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux_store|m_out[17]~38_combout\ = (\mux_store|m_out[17]~65_combout\) # ((\rgB|sr_out\(1) & (\mux_store|m_out[16]~36_combout\ & \mux_store|m_out[17]~66_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_store|m_out[17]~65_combout\,
	datab => \rgB|sr_out\(1),
	datac => \mux_store|m_out[16]~36_combout\,
	datad => \mux_store|m_out[17]~66_combout\,
	combout => \mux_store|m_out[17]~38_combout\);

-- Location: LCFF_X36_Y33_N7
\ir|sr_out[28]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \mem|altsyncram_component|auto_generated|q_a\(28),
	sload => VCC,
	ena => \ctr_mips|ALT_INV_pstate.fetch_st~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ir|sr_out\(28));

-- Location: LCCOMB_X36_Y33_N6
\ctr_mips|Equal2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ctr_mips|Equal2~0_combout\ = (\ir|sr_out\(29) & (!\ir|sr_out\(27) & (!\ir|sr_out\(28) & !\ir|sr_out\(30))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir|sr_out\(29),
	datab => \ir|sr_out\(27),
	datac => \ir|sr_out\(28),
	datad => \ir|sr_out\(30),
	combout => \ctr_mips|Equal2~0_combout\);

-- Location: LCCOMB_X36_Y33_N28
\b_enab|byteenable[0]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \b_enab|byteenable[0]~8_combout\ = (\ir|sr_out\(31) & (\ctr_mips|pstate.writemem_st~regout\ & \ctr_mips|Equal2~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir|sr_out\(31),
	datab => \ctr_mips|pstate.writemem_st~regout\,
	datad => \ctr_mips|Equal2~0_combout\,
	combout => \b_enab|byteenable[0]~8_combout\);

-- Location: LCCOMB_X36_Y33_N2
\b_enab|byteenable[0]~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \b_enab|byteenable[0]~13_combout\ = ((!\ir|sr_out\(1) & !\ir|sr_out\(0))) # (!\b_enab|byteenable[0]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001101110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir|sr_out\(1),
	datab => \b_enab|byteenable[0]~8_combout\,
	datad => \ir|sr_out\(0),
	combout => \b_enab|byteenable[0]~13_combout\);

-- Location: LCFF_X39_Y35_N15
\ir|sr_out[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \mem|altsyncram_component|auto_generated|q_a\(2),
	sload => VCC,
	ena => \ctr_mips|ALT_INV_pstate.fetch_st~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ir|sr_out\(2));

-- Location: LCCOMB_X39_Y35_N12
\actr|alu_ctr~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \actr|alu_ctr~8_combout\ = (\ir|sr_out\(5) & (\ir|sr_out\(2) & \actr|alu_ctr~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ir|sr_out\(5),
	datac => \ir|sr_out\(2),
	datad => \actr|alu_ctr~2_combout\,
	combout => \actr|alu_ctr~8_combout\);

-- Location: LCCOMB_X40_Y35_N4
\actr|alu_ctr[0]~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \actr|alu_ctr[0]~15_combout\ = (\ir|sr_out\(1) & ((\actr|alu_ctr~9_combout\) # ((!\ir|sr_out\(0) & \actr|alu_ctr~8_combout\)))) # (!\ir|sr_out\(1) & (\ir|sr_out\(0) & ((\actr|alu_ctr~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir|sr_out\(1),
	datab => \ir|sr_out\(0),
	datac => \actr|alu_ctr~9_combout\,
	datad => \actr|alu_ctr~8_combout\,
	combout => \actr|alu_ctr[0]~15_combout\);

-- Location: LCCOMB_X40_Y35_N6
\actr|alu_ctr[0]~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \actr|alu_ctr[0]~16_combout\ = (\actr|alu_ctr[1]~7_combout\ & (((\actr|alu_ctr[0]~15_combout\ & !\actr|alu_ctr~11_combout\)))) # (!\actr|alu_ctr[1]~7_combout\ & (!\actr|alu_ctr~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \actr|alu_ctr~4_combout\,
	datab => \actr|alu_ctr[0]~15_combout\,
	datac => \actr|alu_ctr~11_combout\,
	datad => \actr|alu_ctr[1]~7_combout\,
	combout => \actr|alu_ctr[0]~16_combout\);

-- Location: LCCOMB_X39_Y30_N16
\alu|Mux3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux3~0_combout\ = (\actr|alu_ctr[3]~21_combout\ & (\actr|alu_ctr[1]~14_combout\ & ((\alu|Mux2~14_combout\) # (!\alu|ShiftLeft0~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \actr|alu_ctr[3]~21_combout\,
	datab => \actr|alu_ctr[1]~14_combout\,
	datac => \alu|ShiftLeft0~25_combout\,
	datad => \alu|Mux2~14_combout\,
	combout => \alu|Mux3~0_combout\);

-- Location: LCCOMB_X39_Y30_N18
\alu|Mux3~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux3~1_combout\ = (\alu|Mux3~0_combout\) # ((!\actr|alu_ctr[3]~21_combout\ & ((\alu|Mux29~5_combout\) # (\actr|alu_ctr[0]~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|Mux29~5_combout\,
	datab => \actr|alu_ctr[0]~16_combout\,
	datac => \alu|Mux3~0_combout\,
	datad => \actr|alu_ctr[3]~21_combout\,
	combout => \alu|Mux3~1_combout\);

-- Location: LCCOMB_X41_Y30_N22
\alu|Mux3~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux3~7_combout\ = (\alu|Mux3~6_combout\ & (((\alu|Add1~56_combout\)) # (!\alu|Mux10~9_combout\))) # (!\alu|Mux3~6_combout\ & (\alu|Mux10~9_combout\ & (\alu|ShiftRight1~70_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|Mux3~6_combout\,
	datab => \alu|Mux10~9_combout\,
	datac => \alu|ShiftRight1~70_combout\,
	datad => \alu|Add1~56_combout\,
	combout => \alu|Mux3~7_combout\);

-- Location: LCCOMB_X41_Y30_N28
\alu|Mux3~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux3~8_combout\ = (\alu|Mux10~10_combout\ & (\alu|Mux29~9_combout\ & (\alu|tmp[28]~56_combout\))) # (!\alu|Mux10~10_combout\ & (((\alu|Mux3~7_combout\)) # (!\alu|Mux29~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010110010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|Mux10~10_combout\,
	datab => \alu|Mux29~9_combout\,
	datac => \alu|tmp[28]~56_combout\,
	datad => \alu|Mux3~7_combout\,
	combout => \alu|Mux3~8_combout\);

-- Location: LCCOMB_X41_Y30_N14
\alu|Mux3~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux3~9_combout\ = (\alu|Mux29~5_combout\ & (((\alu|Mux3~8_combout\)))) # (!\alu|Mux29~5_combout\ & ((\alu|Mux3~8_combout\ & ((\alu|ShiftRight0~83_combout\))) # (!\alu|Mux3~8_combout\ & (\mux_ulaB|m_out[31]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|Mux29~5_combout\,
	datab => \mux_ulaB|m_out[31]~4_combout\,
	datac => \alu|ShiftRight0~83_combout\,
	datad => \alu|Mux3~8_combout\,
	combout => \alu|Mux3~9_combout\);

-- Location: LCCOMB_X47_Y37_N10
\alu|ShiftLeft0~66\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftLeft0~66_combout\ = (\mux_ulaA|m_out[2]~29_combout\ & ((\alu|ShiftLeft0~50_combout\))) # (!\mux_ulaA|m_out[2]~29_combout\ & (\alu|ShiftLeft0~65_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_ulaA|m_out[2]~29_combout\,
	datac => \alu|ShiftLeft0~65_combout\,
	datad => \alu|ShiftLeft0~50_combout\,
	combout => \alu|ShiftLeft0~66_combout\);

-- Location: LCCOMB_X45_Y33_N6
\alu|ShiftLeft0~67\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftLeft0~67_combout\ = (\mux_ulaA|m_out[3]~28_combout\ & (\alu|ShiftLeft0~33_combout\)) # (!\mux_ulaA|m_out[3]~28_combout\ & ((\alu|ShiftLeft0~66_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \alu|ShiftLeft0~33_combout\,
	datac => \mux_ulaA|m_out[3]~28_combout\,
	datad => \alu|ShiftLeft0~66_combout\,
	combout => \alu|ShiftLeft0~67_combout\);

-- Location: LCCOMB_X45_Y36_N2
\alu|ShiftLeft0~126\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftLeft0~126_combout\ = (!\mux_ulaB|Equal2~0_combout\ & ((\mux_ulaA|m_out[0]~27_combout\ & ((\rgB|sr_out\(27)))) # (!\mux_ulaA|m_out[0]~27_combout\ & (\rgB|sr_out\(28)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_ulaB|Equal2~0_combout\,
	datab => \rgB|sr_out\(28),
	datac => \rgB|sr_out\(27),
	datad => \mux_ulaA|m_out[0]~27_combout\,
	combout => \alu|ShiftLeft0~126_combout\);

-- Location: LCCOMB_X45_Y36_N8
\alu|Mux3~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux3~2_combout\ = (\alu|Mux29~18_combout\ & (!\alu|ShiftLeft0~140_combout\)) # (!\alu|Mux29~18_combout\ & ((\alu|ShiftLeft0~140_combout\ & ((\alu|ShiftLeft0~126_combout\))) # (!\alu|ShiftLeft0~140_combout\ & (\alu|ShiftLeft0~118_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|Mux29~18_combout\,
	datab => \alu|ShiftLeft0~140_combout\,
	datac => \alu|ShiftLeft0~118_combout\,
	datad => \alu|ShiftLeft0~126_combout\,
	combout => \alu|Mux3~2_combout\);

-- Location: LCCOMB_X45_Y36_N20
\alu|ShiftLeft0~125\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftLeft0~125_combout\ = (!\mux_ulaB|Equal2~0_combout\ & ((\mux_ulaA|m_out[0]~27_combout\ & ((\rgB|sr_out\(25)))) # (!\mux_ulaA|m_out[0]~27_combout\ & (\rgB|sr_out\(26)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rgB|sr_out\(26),
	datab => \rgB|sr_out\(25),
	datac => \mux_ulaB|Equal2~0_combout\,
	datad => \mux_ulaA|m_out[0]~27_combout\,
	combout => \alu|ShiftLeft0~125_combout\);

-- Location: LCCOMB_X45_Y36_N30
\alu|Mux3~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux3~3_combout\ = (\alu|Mux29~18_combout\ & ((\alu|Mux3~2_combout\ & ((\alu|ShiftLeft0~106_combout\))) # (!\alu|Mux3~2_combout\ & (\alu|ShiftLeft0~125_combout\)))) # (!\alu|Mux29~18_combout\ & (\alu|Mux3~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|Mux29~18_combout\,
	datab => \alu|Mux3~2_combout\,
	datac => \alu|ShiftLeft0~125_combout\,
	datad => \alu|ShiftLeft0~106_combout\,
	combout => \alu|Mux3~3_combout\);

-- Location: LCCOMB_X40_Y30_N0
\alu|Mux3~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux3~5_combout\ = (\alu|Mux3~4_combout\ & ((\alu|Mux2~14_combout\) # ((\alu|Mux3~3_combout\)))) # (!\alu|Mux3~4_combout\ & (!\alu|Mux2~14_combout\ & (\alu|ShiftLeft0~67_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|Mux3~4_combout\,
	datab => \alu|Mux2~14_combout\,
	datac => \alu|ShiftLeft0~67_combout\,
	datad => \alu|Mux3~3_combout\,
	combout => \alu|Mux3~5_combout\);

-- Location: LCCOMB_X40_Y30_N28
\alu|Mux3~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux3~10_combout\ = (\alu|Mux3~1_combout\ & ((\actr|alu_ctr[3]~21_combout\ & ((\alu|Mux3~5_combout\))) # (!\actr|alu_ctr[3]~21_combout\ & (\alu|Mux3~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \actr|alu_ctr[3]~21_combout\,
	datab => \alu|Mux3~1_combout\,
	datac => \alu|Mux3~9_combout\,
	datad => \alu|Mux3~5_combout\,
	combout => \alu|Mux3~10_combout\);

-- Location: LCCOMB_X40_Y33_N20
\alu|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Equal0~0_combout\ = (!\alu|Mux12~7_combout\ & (!\alu|Mux14~9_combout\ & (!\alu|Mux11~7_combout\ & !\alu|Mux13~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|Mux12~7_combout\,
	datab => \alu|Mux14~9_combout\,
	datac => \alu|Mux11~7_combout\,
	datad => \alu|Mux13~7_combout\,
	combout => \alu|Equal0~0_combout\);

-- Location: LCCOMB_X40_Y33_N18
\alu|Equal0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Equal0~1_combout\ = (!\alu|Mux0~8_combout\ & (!\alu|Mux3~10_combout\ & (\alu|Equal0~0_combout\ & !\alu|Mux2~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|Mux0~8_combout\,
	datab => \alu|Mux3~10_combout\,
	datac => \alu|Equal0~0_combout\,
	datad => \alu|Mux2~13_combout\,
	combout => \alu|Equal0~1_combout\);

-- Location: LCCOMB_X43_Y33_N14
\alu|Equal0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Equal0~2_combout\ = (!\alu|Mux21~11_combout\ & (!\alu|Mux23~12_combout\ & (!\alu|Mux22~13_combout\ & !\alu|Mux31~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|Mux21~11_combout\,
	datab => \alu|Mux23~12_combout\,
	datac => \alu|Mux22~13_combout\,
	datad => \alu|Mux31~8_combout\,
	combout => \alu|Equal0~2_combout\);

-- Location: LCCOMB_X43_Y33_N16
\alu|Equal0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Equal0~3_combout\ = (!\alu|Mux26~combout\ & (!\alu|Mux24~combout\ & (!\alu|Mux27~combout\ & !\alu|Mux25~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|Mux26~combout\,
	datab => \alu|Mux24~combout\,
	datac => \alu|Mux27~combout\,
	datad => \alu|Mux25~combout\,
	combout => \alu|Equal0~3_combout\);

-- Location: LCCOMB_X44_Y32_N2
\alu|Equal0~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Equal0~7_combout\ = (!\alu|Mux5~combout\ & (!\alu|Mux7~combout\ & (!\alu|Mux6~combout\ & !\alu|Mux4~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|Mux5~combout\,
	datab => \alu|Mux7~combout\,
	datac => \alu|Mux6~combout\,
	datad => \alu|Mux4~combout\,
	combout => \alu|Equal0~7_combout\);

-- Location: LCCOMB_X43_Y33_N12
\alu|Equal0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Equal0~8_combout\ = (!\alu|Mux28~12_combout\ & (!\alu|Mux29~21_combout\ & (!\alu|Mux20~11_combout\ & \alu|Equal0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|Mux28~12_combout\,
	datab => \alu|Mux29~21_combout\,
	datac => \alu|Mux20~11_combout\,
	datad => \alu|Equal0~7_combout\,
	combout => \alu|Equal0~8_combout\);

-- Location: LCCOMB_X43_Y33_N26
\alu|Equal0~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Equal0~9_combout\ = (\alu|Equal0~6_combout\ & (\alu|Equal0~2_combout\ & (\alu|Equal0~3_combout\ & \alu|Equal0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|Equal0~6_combout\,
	datab => \alu|Equal0~2_combout\,
	datac => \alu|Equal0~3_combout\,
	datad => \alu|Equal0~8_combout\,
	combout => \alu|Equal0~9_combout\);

-- Location: LCCOMB_X43_Y33_N28
\pc_wr_s~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \pc_wr_s~0_combout\ = (\ctr_mips|Equal8~0_combout\ $ (((!\alu|Equal0~9_combout\) # (!\alu|Equal0~1_combout\)))) # (!\ctr_mips|pstate.branch_ex_st~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011011101110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctr_mips|Equal8~0_combout\,
	datab => \ctr_mips|pstate.branch_ex_st~regout\,
	datac => \alu|Equal0~1_combout\,
	datad => \alu|Equal0~9_combout\,
	combout => \pc_wr_s~0_combout\);

-- Location: LCCOMB_X43_Y33_N6
\pc|sr_out[0]~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \pc|sr_out[0]~26_combout\ = ((\ctr_mips|pstate.jump_ex_st~regout\) # ((\rst~combout\) # (!\pc_wr_s~0_combout\))) # (!\ctr_mips|pstate.fetch_st~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctr_mips|pstate.fetch_st~regout\,
	datab => \ctr_mips|pstate.jump_ex_st~regout\,
	datac => \rst~combout\,
	datad => \pc_wr_s~0_combout\,
	combout => \pc|sr_out[0]~26_combout\);

-- Location: LCFF_X44_Y33_N7
\pc|sr_out[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \pc|sr_out~31_combout\,
	sclr => \rst~combout\,
	ena => \pc|sr_out[0]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pc|sr_out\(0));

-- Location: LCCOMB_X40_Y37_N6
\mux_ulaA|m_out[0]~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux_ulaA|m_out[0]~27_combout\ = (\ctr_mips|WideOr0~combout\ & (\rgA|sr_out\(0))) # (!\ctr_mips|WideOr0~combout\ & ((\pc|sr_out\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rgA|sr_out\(0),
	datac => \pc|sr_out\(0),
	datad => \ctr_mips|WideOr0~combout\,
	combout => \mux_ulaA|m_out[0]~27_combout\);

-- Location: LCCOMB_X41_Y34_N22
\alu|ShiftLeft0~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftLeft0~20_combout\ = ((\alu|ShiftLeft0~16_combout\) # ((\alu|ShiftLeft0~19_combout\) # (\mux_ulaA|m_out[4]~0_combout\))) # (!\alu|ShiftRight0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|ShiftRight0~10_combout\,
	datab => \alu|ShiftLeft0~16_combout\,
	datac => \alu|ShiftLeft0~19_combout\,
	datad => \mux_ulaA|m_out[4]~0_combout\,
	combout => \alu|ShiftLeft0~20_combout\);

-- Location: LCCOMB_X44_Y30_N28
\alu|Mux31~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux31~0_combout\ = (\mux_ulaB|m_out[0]~3_combout\ & (!\alu|Mux10~8_combout\ & ((!\alu|ShiftLeft0~20_combout\)))) # (!\mux_ulaB|m_out[0]~3_combout\ & (\alu|Mux10~8_combout\ & (!\mux_ulaA|m_out[0]~27_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_ulaB|m_out[0]~3_combout\,
	datab => \alu|Mux10~8_combout\,
	datac => \mux_ulaA|m_out[0]~27_combout\,
	datad => \alu|ShiftLeft0~20_combout\,
	combout => \alu|Mux31~0_combout\);

-- Location: LCCOMB_X44_Y30_N14
\alu|Mux31~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux31~1_combout\ = (\actr|alu_ctr[0]~16_combout\ & (!\alu|Mux10~8_combout\ & (\alu|Add1~0_combout\))) # (!\actr|alu_ctr[0]~16_combout\ & (((\alu|Mux31~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \actr|alu_ctr[0]~16_combout\,
	datab => \alu|Mux10~8_combout\,
	datac => \alu|Add1~0_combout\,
	datad => \alu|Mux31~0_combout\,
	combout => \alu|Mux31~1_combout\);

-- Location: LCCOMB_X45_Y37_N2
\alu|ShiftRight0~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftRight0~26_combout\ = (\mux_ulaA|m_out[1]~30_combout\ & ((\mux_ulaA|m_out[0]~27_combout\ & ((\mux_ulaB|m_out[11]~31_combout\))) # (!\mux_ulaA|m_out[0]~27_combout\ & (\mux_ulaB|m_out[10]~33_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_ulaA|m_out[0]~27_combout\,
	datab => \mux_ulaA|m_out[1]~30_combout\,
	datac => \mux_ulaB|m_out[10]~33_combout\,
	datad => \mux_ulaB|m_out[11]~31_combout\,
	combout => \alu|ShiftRight0~26_combout\);

-- Location: LCCOMB_X45_Y37_N24
\alu|ShiftRight0~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftRight0~27_combout\ = (\alu|ShiftRight0~26_combout\) # ((\alu|ShiftRight0~25_combout\) # ((\mux_ulaB|m_out[8]~37_combout\ & \alu|ShiftLeft0~141_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_ulaB|m_out[8]~37_combout\,
	datab => \alu|ShiftRight0~26_combout\,
	datac => \alu|ShiftRight0~25_combout\,
	datad => \alu|ShiftLeft0~141_combout\,
	combout => \alu|ShiftRight0~27_combout\);

-- Location: LCCOMB_X45_Y37_N10
\alu|ShiftRight1~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftRight1~17_combout\ = (\mux_ulaA|m_out[2]~29_combout\ & ((\alu|ShiftRight0~24_combout\))) # (!\mux_ulaA|m_out[2]~29_combout\ & (\alu|ShiftRight0~27_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_ulaA|m_out[2]~29_combout\,
	datac => \alu|ShiftRight0~27_combout\,
	datad => \alu|ShiftRight0~24_combout\,
	combout => \alu|ShiftRight1~17_combout\);

-- Location: LCCOMB_X44_Y30_N4
\alu|ShiftRight1~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftRight1~19_combout\ = (\mux_ulaA|m_out[3]~28_combout\ & (((\alu|ShiftRight1~17_combout\)))) # (!\mux_ulaA|m_out[3]~28_combout\ & (\mux_ulaA|m_out[2]~29_combout\ & ((\alu|ShiftRight0~29_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_ulaA|m_out[3]~28_combout\,
	datab => \mux_ulaA|m_out[2]~29_combout\,
	datac => \alu|ShiftRight1~17_combout\,
	datad => \alu|ShiftRight0~29_combout\,
	combout => \alu|ShiftRight1~19_combout\);

-- Location: LCCOMB_X44_Y30_N30
\alu|ShiftRight1~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftRight1~13_combout\ = (\mux_ulaA|m_out[4]~0_combout\ & (!\alu|ShiftLeft0~19_combout\ & (\alu|ShiftRight0~21_combout\ & !\alu|ShiftLeft0~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_ulaA|m_out[4]~0_combout\,
	datab => \alu|ShiftLeft0~19_combout\,
	datac => \alu|ShiftRight0~21_combout\,
	datad => \alu|ShiftLeft0~16_combout\,
	combout => \alu|ShiftRight1~13_combout\);

-- Location: LCCOMB_X44_Y30_N26
\alu|ShiftRight1~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftRight1~20_combout\ = (\alu|ShiftRight1~13_combout\) # ((\alu|ShiftLeft0~21_combout\ & ((\alu|ShiftRight1~16_combout\) # (\alu|ShiftRight1~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|ShiftRight1~16_combout\,
	datab => \alu|ShiftLeft0~21_combout\,
	datac => \alu|ShiftRight1~19_combout\,
	datad => \alu|ShiftRight1~13_combout\,
	combout => \alu|ShiftRight1~20_combout\);

-- Location: LCCOMB_X44_Y30_N8
\alu|Mux31~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux31~6_combout\ = (\actr|alu_ctr[0]~16_combout\ & ((\alu|ShiftRight1~20_combout\))) # (!\actr|alu_ctr[0]~16_combout\ & (\alu|Add1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \actr|alu_ctr[0]~16_combout\,
	datac => \alu|Add1~0_combout\,
	datad => \alu|ShiftRight1~20_combout\,
	combout => \alu|Mux31~6_combout\);

-- Location: LCCOMB_X44_Y30_N20
\alu|Mux31~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux31~4_combout\ = (\actr|alu_ctr[0]~16_combout\ & ((\alu|Mux30~4_combout\) # (\alu|ShiftRight1~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \actr|alu_ctr[0]~16_combout\,
	datac => \alu|Mux30~4_combout\,
	datad => \alu|ShiftRight1~20_combout\,
	combout => \alu|Mux31~4_combout\);

-- Location: LCCOMB_X41_Y32_N30
\alu|Add1~62\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Add1~62_combout\ = \mux_ulaB|m_out[31]~4_combout\ $ (\alu|Add1~61\ $ (\mux_ulaA|m_out[31]~31_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \mux_ulaB|m_out[31]~4_combout\,
	datad => \mux_ulaA|m_out[31]~31_combout\,
	cin => \alu|Add1~61\,
	combout => \alu|Add1~62_combout\);

-- Location: LCCOMB_X41_Y34_N26
\alu|Mux31~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux31~10_combout\ = (\actr|alu_ctr[0]~16_combout\ & (\mux_ulaB|m_out[31]~4_combout\ & (!\alu|ShiftLeft0~20_combout\))) # (!\actr|alu_ctr[0]~16_combout\ & (((\alu|Add1~62_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_ulaB|m_out[31]~4_combout\,
	datab => \alu|ShiftLeft0~20_combout\,
	datac => \actr|alu_ctr[0]~16_combout\,
	datad => \alu|Add1~62_combout\,
	combout => \alu|Mux31~10_combout\);

-- Location: LCCOMB_X44_Y33_N12
\alu|Mux31~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux31~9_combout\ = (\mux_ulaA|m_out[31]~31_combout\ & ((\mux_ulaB|m_out[31]~4_combout\) # (\actr|alu_ctr[0]~16_combout\))) # (!\mux_ulaA|m_out[31]~31_combout\ & (\mux_ulaB|m_out[31]~4_combout\ & \actr|alu_ctr[0]~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_ulaA|m_out[31]~31_combout\,
	datac => \mux_ulaB|m_out[31]~4_combout\,
	datad => \actr|alu_ctr[0]~16_combout\,
	combout => \alu|Mux31~9_combout\);

-- Location: LCCOMB_X41_Y34_N2
\alu|Mux0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux0~5_combout\ = (\actr|alu_ctr[0]~16_combout\ & (\mux_ulaB|m_out[31]~4_combout\)) # (!\actr|alu_ctr[0]~16_combout\ & ((\alu|tmp[31]~62_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_ulaB|m_out[31]~4_combout\,
	datab => \actr|alu_ctr[0]~16_combout\,
	datad => \alu|tmp[31]~62_combout\,
	combout => \alu|Mux0~5_combout\);

-- Location: LCCOMB_X41_Y34_N0
\alu|Mux0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux0~6_combout\ = (\alu|Mux10~8_combout\ & (\alu|Mux0~5_combout\ & (\actr|alu_ctr[1]~14_combout\ $ (!\actr|alu_ctr[0]~16_combout\)))) # (!\alu|Mux10~8_combout\ & (!\actr|alu_ctr[1]~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001001100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|Mux10~8_combout\,
	datab => \actr|alu_ctr[1]~14_combout\,
	datac => \actr|alu_ctr[0]~16_combout\,
	datad => \alu|Mux0~5_combout\,
	combout => \alu|Mux0~6_combout\);

-- Location: LCCOMB_X41_Y34_N4
\alu|Mux0~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux0~7_combout\ = (\alu|Mux10~8_combout\ & (((\alu|Mux0~6_combout\)))) # (!\alu|Mux10~8_combout\ & ((\alu|Mux0~6_combout\ & (\alu|Mux31~10_combout\)) # (!\alu|Mux0~6_combout\ & ((\alu|Mux31~9_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|Mux10~8_combout\,
	datab => \alu|Mux31~10_combout\,
	datac => \alu|Mux31~9_combout\,
	datad => \alu|Mux0~6_combout\,
	combout => \alu|Mux0~7_combout\);

-- Location: LCCOMB_X44_Y33_N26
\alu|Mux0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux0~2_combout\ = (!\mux_ulaB|m_out[31]~4_combout\ & ((\ctr_mips|WideOr0~combout\ & (!\rgA|sr_out\(31))) # (!\ctr_mips|WideOr0~combout\ & ((!\pc|sr_out\(31))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rgA|sr_out\(31),
	datab => \mux_ulaB|m_out[31]~4_combout\,
	datac => \pc|sr_out\(31),
	datad => \ctr_mips|WideOr0~combout\,
	combout => \alu|Mux0~2_combout\);

-- Location: LCCOMB_X44_Y33_N20
\alu|Mux0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux0~3_combout\ = (\alu|Mux10~8_combout\ & (((\alu|Mux0~2_combout\)))) # (!\alu|Mux10~8_combout\ & (\mux_ulaA|m_out[31]~31_combout\ $ ((\mux_ulaB|m_out[31]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_ulaA|m_out[31]~31_combout\,
	datab => \alu|Mux10~8_combout\,
	datac => \mux_ulaB|m_out[31]~4_combout\,
	datad => \alu|Mux0~2_combout\,
	combout => \alu|Mux0~3_combout\);

-- Location: LCCOMB_X40_Y31_N24
\alu|ShiftLeft0~79\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftLeft0~79_combout\ = (\mux_ulaA|m_out[2]~29_combout\ & (((\alu|ShiftLeft0~44_combout\)))) # (!\mux_ulaA|m_out[2]~29_combout\ & ((\alu|ShiftLeft0~45_combout\) # ((\alu|ShiftLeft0~46_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|ShiftLeft0~45_combout\,
	datab => \alu|ShiftLeft0~46_combout\,
	datac => \mux_ulaA|m_out[2]~29_combout\,
	datad => \alu|ShiftLeft0~44_combout\,
	combout => \alu|ShiftLeft0~79_combout\);

-- Location: LCCOMB_X44_Y33_N14
\alu|ShiftLeft0~135\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftLeft0~135_combout\ = (\mux_ulaA|m_out[3]~28_combout\ & ((\alu|ShiftLeft0~79_combout\))) # (!\mux_ulaA|m_out[3]~28_combout\ & (\alu|ShiftLeft0~82_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mux_ulaA|m_out[3]~28_combout\,
	datac => \alu|ShiftLeft0~82_combout\,
	datad => \alu|ShiftLeft0~79_combout\,
	combout => \alu|ShiftLeft0~135_combout\);

-- Location: LCCOMB_X39_Y30_N30
\alu|ShiftLeft0~137\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftLeft0~137_combout\ = (!\mux_ulaA|m_out[0]~27_combout\ & ((\mux_ulaA|m_out[1]~30_combout\ & (\rgB|sr_out\(29))) # (!\mux_ulaA|m_out[1]~30_combout\ & ((\rgB|sr_out\(31))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rgB|sr_out\(29),
	datab => \mux_ulaA|m_out[0]~27_combout\,
	datac => \mux_ulaA|m_out[1]~30_combout\,
	datad => \rgB|sr_out\(31),
	combout => \alu|ShiftLeft0~137_combout\);

-- Location: LCCOMB_X40_Y30_N2
\alu|ShiftLeft0~138\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftLeft0~138_combout\ = (\mux_ulaA|m_out[0]~27_combout\ & ((\mux_ulaA|m_out[1]~30_combout\ & (\rgB|sr_out\(28))) # (!\mux_ulaA|m_out[1]~30_combout\ & ((\rgB|sr_out\(30))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rgB|sr_out\(28),
	datab => \rgB|sr_out\(30),
	datac => \mux_ulaA|m_out[1]~30_combout\,
	datad => \mux_ulaA|m_out[0]~27_combout\,
	combout => \alu|ShiftLeft0~138_combout\);

-- Location: LCCOMB_X40_Y30_N8
\alu|ShiftLeft0~139\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftLeft0~139_combout\ = (\mux_ulaA|m_out[2]~29_combout\ & (\alu|ShiftLeft0~136_combout\)) # (!\mux_ulaA|m_out[2]~29_combout\ & (((\alu|ShiftLeft0~137_combout\) # (\alu|ShiftLeft0~138_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|ShiftLeft0~136_combout\,
	datab => \mux_ulaA|m_out[2]~29_combout\,
	datac => \alu|ShiftLeft0~137_combout\,
	datad => \alu|ShiftLeft0~138_combout\,
	combout => \alu|ShiftLeft0~139_combout\);

-- Location: LCCOMB_X38_Y36_N30
\alu|ShiftLeft0~115\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftLeft0~115_combout\ = (!\mux_ulaB|Equal2~0_combout\ & ((\mux_ulaA|m_out[0]~27_combout\ & (\alu|ShiftLeft0~111_combout\)) # (!\mux_ulaA|m_out[0]~27_combout\ & ((\alu|ShiftLeft0~114_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_ulaB|Equal2~0_combout\,
	datab => \alu|ShiftLeft0~111_combout\,
	datac => \mux_ulaA|m_out[0]~27_combout\,
	datad => \alu|ShiftLeft0~114_combout\,
	combout => \alu|ShiftLeft0~115_combout\);

-- Location: LCCOMB_X39_Y31_N10
\alu|ShiftLeft0~116\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftLeft0~116_combout\ = (\mux_ulaA|m_out[2]~29_combout\ & ((\alu|ShiftLeft0~102_combout\))) # (!\mux_ulaA|m_out[2]~29_combout\ & (\alu|ShiftLeft0~115_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mux_ulaA|m_out[2]~29_combout\,
	datac => \alu|ShiftLeft0~115_combout\,
	datad => \alu|ShiftLeft0~102_combout\,
	combout => \alu|ShiftLeft0~116_combout\);

-- Location: LCCOMB_X40_Y30_N10
\alu|Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux0~0_combout\ = (\mux_ulaA|m_out[3]~28_combout\ & (((\alu|ShiftLeft0~116_combout\)))) # (!\mux_ulaA|m_out[3]~28_combout\ & (!\mux_ulaB|Equal2~0_combout\ & (\alu|ShiftLeft0~139_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_ulaA|m_out[3]~28_combout\,
	datab => \mux_ulaB|Equal2~0_combout\,
	datac => \alu|ShiftLeft0~139_combout\,
	datad => \alu|ShiftLeft0~116_combout\,
	combout => \alu|Mux0~0_combout\);

-- Location: LCCOMB_X44_Y33_N0
\alu|Mux0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux0~1_combout\ = (!\alu|ShiftLeft0~25_combout\ & ((\mux_ulaA|m_out[4]~0_combout\ & (\alu|ShiftLeft0~135_combout\)) # (!\mux_ulaA|m_out[4]~0_combout\ & ((\alu|Mux0~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|ShiftLeft0~25_combout\,
	datab => \mux_ulaA|m_out[4]~0_combout\,
	datac => \alu|ShiftLeft0~135_combout\,
	datad => \alu|Mux0~0_combout\,
	combout => \alu|Mux0~1_combout\);

-- Location: LCCOMB_X44_Y33_N2
\alu|Mux0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux0~4_combout\ = (\actr|alu_ctr[0]~16_combout\ & (!\alu|Mux10~8_combout\ & (\alu|Mux0~3_combout\))) # (!\actr|alu_ctr[0]~16_combout\ & ((\alu|Mux10~8_combout\ & (\alu|Mux0~3_combout\)) # (!\alu|Mux10~8_combout\ & ((\alu|Mux0~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000101100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \actr|alu_ctr[0]~16_combout\,
	datab => \alu|Mux10~8_combout\,
	datac => \alu|Mux0~3_combout\,
	datad => \alu|Mux0~1_combout\,
	combout => \alu|Mux0~4_combout\);

-- Location: LCCOMB_X41_Y34_N10
\alu|Mux0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux0~8_combout\ = (\actr|alu_ctr[3]~21_combout\ & (\actr|alu_ctr[1]~14_combout\ & ((\alu|Mux0~4_combout\)))) # (!\actr|alu_ctr[3]~21_combout\ & (((\alu|Mux0~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \actr|alu_ctr[1]~14_combout\,
	datab => \actr|alu_ctr[3]~21_combout\,
	datac => \alu|Mux0~7_combout\,
	datad => \alu|Mux0~4_combout\,
	combout => \alu|Mux0~8_combout\);

-- Location: LCCOMB_X44_Y33_N16
\pc|sr_out~33\ : cycloneii_lcell_comb
-- Equation(s):
-- \pc|sr_out~33_combout\ = (\ctr_mips|pstate.jump_ex_st~regout\ & (\regULA|sr_out\(31))) # (!\ctr_mips|pstate.jump_ex_st~regout\ & ((\ctr_mips|pstate.branch_ex_st~regout\ & (\regULA|sr_out\(31))) # (!\ctr_mips|pstate.branch_ex_st~regout\ & 
-- ((\alu|Mux0~8_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regULA|sr_out\(31),
	datab => \ctr_mips|pstate.jump_ex_st~regout\,
	datac => \ctr_mips|pstate.branch_ex_st~regout\,
	datad => \alu|Mux0~8_combout\,
	combout => \pc|sr_out~33_combout\);

-- Location: LCFF_X44_Y33_N17
\pc|sr_out[31]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \pc|sr_out~33_combout\,
	sclr => \rst~combout\,
	ena => \pc|sr_out[31]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pc|sr_out\(31));

-- Location: LCCOMB_X39_Y33_N2
\bcoreg|regA[31]~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \bcoreg|regA[31]~31_combout\ = (!\bcoreg|Equal0~1_combout\ & ((\bcoreg|breg32~combout\ & ((\bcoreg|breg32_rtl_1_bypass\(73)))) # (!\bcoreg|breg32~combout\ & (\bcoreg|breg32_rtl_0|auto_generated|ram_block1a31\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcoreg|Equal0~1_combout\,
	datab => \bcoreg|breg32_rtl_0|auto_generated|ram_block1a31\,
	datac => \bcoreg|breg32~combout\,
	datad => \bcoreg|breg32_rtl_1_bypass\(73),
	combout => \bcoreg|regA[31]~31_combout\);

-- Location: LCFF_X39_Y33_N3
\rgA|sr_out[31]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \bcoreg|regA[31]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rgA|sr_out\(31));

-- Location: LCCOMB_X44_Y33_N10
\mux_ulaA|m_out[31]~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux_ulaA|m_out[31]~31_combout\ = (\ctr_mips|WideOr0~combout\ & ((\rgA|sr_out\(31)))) # (!\ctr_mips|WideOr0~combout\ & (\pc|sr_out\(31)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ctr_mips|WideOr0~combout\,
	datac => \pc|sr_out\(31),
	datad => \rgA|sr_out\(31),
	combout => \mux_ulaA|m_out[31]~31_combout\);

-- Location: LCCOMB_X41_Y36_N30
\alu|tmp[31]~62\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|tmp[31]~62_combout\ = \mux_ulaB|m_out[31]~4_combout\ $ (\alu|tmp[30]~61\ $ (!\mux_ulaA|m_out[31]~31_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mux_ulaB|m_out[31]~4_combout\,
	datad => \mux_ulaA|m_out[31]~31_combout\,
	cin => \alu|tmp[30]~61\,
	combout => \alu|tmp[31]~62_combout\);

-- Location: LCCOMB_X42_Y33_N0
\alu|Mux31~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux31~3_combout\ = (\actr|alu_ctr[0]~16_combout\ & (\alu|tmp[31]~62_combout\)) # (!\actr|alu_ctr[0]~16_combout\ & ((\alu|tmp[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \actr|alu_ctr[0]~16_combout\,
	datac => \alu|tmp[31]~62_combout\,
	datad => \alu|tmp[0]~0_combout\,
	combout => \alu|Mux31~3_combout\);

-- Location: LCCOMB_X44_Y30_N10
\alu|Mux31~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux31~5_combout\ = (\actr|alu_ctr[1]~14_combout\ & (\alu|Mux10~8_combout\ & (\alu|Mux31~4_combout\))) # (!\actr|alu_ctr[1]~14_combout\ & (((\alu|Mux31~3_combout\)) # (!\alu|Mux10~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010110010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \actr|alu_ctr[1]~14_combout\,
	datab => \alu|Mux10~8_combout\,
	datac => \alu|Mux31~4_combout\,
	datad => \alu|Mux31~3_combout\,
	combout => \alu|Mux31~5_combout\);

-- Location: LCCOMB_X44_Y30_N18
\alu|Mux31~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux31~7_combout\ = (\alu|Mux10~8_combout\ & (((\alu|Mux31~5_combout\)))) # (!\alu|Mux10~8_combout\ & ((\alu|Mux31~5_combout\ & ((\alu|Mux31~6_combout\))) # (!\alu|Mux31~5_combout\ & (\alu|Mux31~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|Mux31~2_combout\,
	datab => \alu|Mux10~8_combout\,
	datac => \alu|Mux31~6_combout\,
	datad => \alu|Mux31~5_combout\,
	combout => \alu|Mux31~7_combout\);

-- Location: LCCOMB_X44_Y30_N24
\alu|Mux31~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux31~8_combout\ = (\actr|alu_ctr[3]~21_combout\ & (\actr|alu_ctr[1]~14_combout\ & (\alu|Mux31~1_combout\))) # (!\actr|alu_ctr[3]~21_combout\ & (((\alu|Mux31~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \actr|alu_ctr[1]~14_combout\,
	datab => \actr|alu_ctr[3]~21_combout\,
	datac => \alu|Mux31~1_combout\,
	datad => \alu|Mux31~7_combout\,
	combout => \alu|Mux31~8_combout\);

-- Location: LCFF_X44_Y30_N25
\regULA|sr_out[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \alu|Mux31~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regULA|sr_out\(0));

-- Location: LCFF_X36_Y35_N17
\rdm|sr_out[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \mem|altsyncram_component|auto_generated|q_a\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rdm|sr_out\(0));

-- Location: LCCOMB_X38_Y35_N22
\breg_data_mux|m_out[3]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \breg_data_mux|m_out[3]~1_combout\ = (\ir|sr_out\(0) & !\ctr_mips|unsig~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir|sr_out\(0),
	datad => \ctr_mips|unsig~0_combout\,
	combout => \breg_data_mux|m_out[3]~1_combout\);

-- Location: LCFF_X38_Y33_N7
\rdm|sr_out[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \mem|altsyncram_component|auto_generated|q_a\(16),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rdm|sr_out\(16));

-- Location: LCFF_X36_Y35_N19
\rdm|sr_out[24]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \mem|altsyncram_component|auto_generated|q_a\(24),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rdm|sr_out\(24));

-- Location: LCCOMB_X38_Y33_N6
\breg_data_mux|m_out[0]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \breg_data_mux|m_out[0]~2_combout\ = (\breg_data_mux|m_out[3]~0_combout\ & (\breg_data_mux|m_out[3]~1_combout\)) # (!\breg_data_mux|m_out[3]~0_combout\ & ((\breg_data_mux|m_out[3]~1_combout\ & ((\rdm|sr_out\(24)))) # (!\breg_data_mux|m_out[3]~1_combout\ & 
-- (\rdm|sr_out\(16)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \breg_data_mux|m_out[3]~0_combout\,
	datab => \breg_data_mux|m_out[3]~1_combout\,
	datac => \rdm|sr_out\(16),
	datad => \rdm|sr_out\(24),
	combout => \breg_data_mux|m_out[0]~2_combout\);

-- Location: LCCOMB_X36_Y35_N16
\breg_data_mux|m_out[0]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \breg_data_mux|m_out[0]~3_combout\ = (\breg_data_mux|m_out[3]~0_combout\ & ((\breg_data_mux|m_out[0]~2_combout\ & (\rdm|sr_out\(8))) # (!\breg_data_mux|m_out[0]~2_combout\ & ((\rdm|sr_out\(0)))))) # (!\breg_data_mux|m_out[3]~0_combout\ & 
-- (((\breg_data_mux|m_out[0]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rdm|sr_out\(8),
	datab => \breg_data_mux|m_out[3]~0_combout\,
	datac => \rdm|sr_out\(0),
	datad => \breg_data_mux|m_out[0]~2_combout\,
	combout => \breg_data_mux|m_out[0]~3_combout\);

-- Location: LCCOMB_X36_Y34_N0
\breg_data_mux|m_out[0]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \breg_data_mux|m_out[0]~4_combout\ = (\ctr_mips|pstate.ldreg_st~regout\ & ((\breg_data_mux|m_out[0]~3_combout\))) # (!\ctr_mips|pstate.ldreg_st~regout\ & (\regULA|sr_out\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctr_mips|pstate.ldreg_st~regout\,
	datab => \regULA|sr_out\(0),
	datac => \breg_data_mux|m_out[0]~3_combout\,
	combout => \breg_data_mux|m_out[0]~4_combout\);

-- Location: LCCOMB_X39_Y33_N20
\bcoreg|regA[3]~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \bcoreg|regA[3]~28_combout\ = (!\bcoreg|Equal0~1_combout\ & ((\bcoreg|breg32~combout\ & ((\bcoreg|breg32_rtl_1_bypass\(17)))) # (!\bcoreg|breg32~combout\ & (\bcoreg|breg32_rtl_0|auto_generated|ram_block1a3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcoreg|breg32~combout\,
	datab => \bcoreg|breg32_rtl_0|auto_generated|ram_block1a3\,
	datac => \bcoreg|breg32_rtl_1_bypass\(17),
	datad => \bcoreg|Equal0~1_combout\,
	combout => \bcoreg|regA[3]~28_combout\);

-- Location: LCFF_X39_Y33_N21
\rgA|sr_out[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \bcoreg|regA[3]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rgA|sr_out\(3));

-- Location: LCCOMB_X40_Y36_N4
\mux_ulaA|m_out[3]~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux_ulaA|m_out[3]~28_combout\ = (\ctr_mips|WideOr0~combout\ & ((\rgA|sr_out\(3)))) # (!\ctr_mips|WideOr0~combout\ & (\pc|sr_out\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|sr_out\(3),
	datac => \rgA|sr_out\(3),
	datad => \ctr_mips|WideOr0~combout\,
	combout => \mux_ulaA|m_out[3]~28_combout\);

-- Location: LCCOMB_X47_Y37_N12
\alu|Mux22~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux22~12_combout\ = (\mux_ulaA|m_out[3]~28_combout\ & (\alu|Mux22~3_combout\)) # (!\mux_ulaA|m_out[3]~28_combout\ & ((\alu|Mux22~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mux_ulaA|m_out[3]~28_combout\,
	datac => \alu|Mux22~3_combout\,
	datad => \alu|Mux22~2_combout\,
	combout => \alu|Mux22~12_combout\);

-- Location: LCFF_X44_Y35_N17
\bcoreg|breg32_rtl_1_bypass[29]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \breg_data_mux|m_out[9]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bcoreg|breg32_rtl_1_bypass\(29));

-- Location: LCCOMB_X44_Y35_N24
\bcoreg|regA[9]~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \bcoreg|regA[9]~24_combout\ = (!\bcoreg|Equal0~1_combout\ & ((\bcoreg|breg32~combout\ & ((\bcoreg|breg32_rtl_1_bypass\(29)))) # (!\bcoreg|breg32~combout\ & (\bcoreg|breg32_rtl_0|auto_generated|ram_block1a9\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcoreg|Equal0~1_combout\,
	datab => \bcoreg|breg32_rtl_0|auto_generated|ram_block1a9\,
	datac => \bcoreg|breg32_rtl_1_bypass\(29),
	datad => \bcoreg|breg32~combout\,
	combout => \bcoreg|regA[9]~24_combout\);

-- Location: LCFF_X44_Y35_N25
\rgA|sr_out[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \bcoreg|regA[9]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rgA|sr_out\(9));

-- Location: LCCOMB_X45_Y35_N6
\alu|a32~53\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|a32~53_combout\ = \mux_ulaB|m_out[9]~35_combout\ $ (((\ctr_mips|WideOr0~combout\ & (\rgA|sr_out\(9))) # (!\ctr_mips|WideOr0~combout\ & ((\pc|sr_out\(9))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110010101101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_ulaB|m_out[9]~35_combout\,
	datab => \rgA|sr_out\(9),
	datac => \ctr_mips|WideOr0~combout\,
	datad => \pc|sr_out\(9),
	combout => \alu|a32~53_combout\);

-- Location: LCCOMB_X47_Y33_N14
\alu|Mux22~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux22~9_combout\ = (\mux_ulaB|m_out[9]~35_combout\) # ((\alu|Mux29~14_combout\) # (\mux_ulaA|m_out[9]~24_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_ulaB|m_out[9]~35_combout\,
	datac => \alu|Mux29~14_combout\,
	datad => \mux_ulaA|m_out[9]~24_combout\,
	combout => \alu|Mux22~9_combout\);

-- Location: LCCOMB_X47_Y33_N4
\alu|Mux22~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux22~4_combout\ = (\actr|alu_ctr[0]~16_combout\ & (\actr|alu_ctr[1]~14_combout\ & ((\mux_ulaB|m_out[9]~35_combout\) # (\mux_ulaA|m_out[9]~24_combout\)))) # (!\actr|alu_ctr[0]~16_combout\ & (((\mux_ulaB|m_out[9]~35_combout\ & 
-- \mux_ulaA|m_out[9]~24_combout\)) # (!\actr|alu_ctr[1]~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_ulaB|m_out[9]~35_combout\,
	datab => \mux_ulaA|m_out[9]~24_combout\,
	datac => \actr|alu_ctr[0]~16_combout\,
	datad => \actr|alu_ctr[1]~14_combout\,
	combout => \alu|Mux22~4_combout\);

-- Location: LCCOMB_X47_Y33_N18
\alu|Mux22~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux22~5_combout\ = (\alu|Mux22~4_combout\ & ((\alu|Add1~18_combout\) # ((!\alu|Mux29~6_combout\)))) # (!\alu|Mux22~4_combout\ & (((\alu|Mux29~6_combout\ & \alu|ShiftRight1~69_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|Add1~18_combout\,
	datab => \alu|Mux22~4_combout\,
	datac => \alu|Mux29~6_combout\,
	datad => \alu|ShiftRight1~69_combout\,
	combout => \alu|Mux22~5_combout\);

-- Location: LCCOMB_X47_Y33_N0
\alu|Mux22~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux22~6_combout\ = (\alu|Mux29~9_combout\ & ((\alu|Mux29~10_combout\ & (\alu|tmp[9]~18_combout\)) # (!\alu|Mux29~10_combout\ & ((\alu|Mux22~5_combout\))))) # (!\alu|Mux29~9_combout\ & (!\alu|Mux29~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|Mux29~9_combout\,
	datab => \alu|Mux29~10_combout\,
	datac => \alu|tmp[9]~18_combout\,
	datad => \alu|Mux22~5_combout\,
	combout => \alu|Mux22~6_combout\);

-- Location: LCCOMB_X47_Y33_N22
\alu|Mux22~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux22~7_combout\ = (\alu|Mux29~5_combout\ & (((\alu|Mux22~6_combout\)))) # (!\alu|Mux29~5_combout\ & ((\alu|Mux22~6_combout\ & (\alu|ShiftRight0~80_combout\)) # (!\alu|Mux22~6_combout\ & ((\mux_ulaB|m_out[31]~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|ShiftRight0~80_combout\,
	datab => \alu|Mux29~5_combout\,
	datac => \mux_ulaB|m_out[31]~4_combout\,
	datad => \alu|Mux22~6_combout\,
	combout => \alu|Mux22~7_combout\);

-- Location: LCCOMB_X47_Y33_N12
\alu|Mux22~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux22~8_combout\ = (\alu|Mux22~7_combout\ & ((\alu|Mux29~5_combout\) # (\actr|alu_ctr[0]~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \alu|Mux29~5_combout\,
	datac => \actr|alu_ctr[0]~16_combout\,
	datad => \alu|Mux22~7_combout\,
	combout => \alu|Mux22~8_combout\);

-- Location: LCCOMB_X47_Y33_N28
\alu|Mux22~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux22~10_combout\ = (\alu|Mux29~2_combout\ & (\alu|Mux29~3_combout\)) # (!\alu|Mux29~2_combout\ & ((\alu|Mux29~3_combout\ & (!\alu|Mux22~9_combout\)) # (!\alu|Mux29~3_combout\ & ((\alu|Mux22~8_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001110110001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|Mux29~2_combout\,
	datab => \alu|Mux29~3_combout\,
	datac => \alu|Mux22~9_combout\,
	datad => \alu|Mux22~8_combout\,
	combout => \alu|Mux22~10_combout\);

-- Location: LCCOMB_X47_Y33_N26
\alu|Mux22~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux22~11_combout\ = (\alu|Mux29~4_combout\ & ((\alu|Mux22~10_combout\ & ((\alu|a32~53_combout\))) # (!\alu|Mux22~10_combout\ & (\alu|ShiftLeft0~56_combout\)))) # (!\alu|Mux29~4_combout\ & (((\alu|Mux22~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|ShiftLeft0~56_combout\,
	datab => \alu|Mux29~4_combout\,
	datac => \alu|a32~53_combout\,
	datad => \alu|Mux22~10_combout\,
	combout => \alu|Mux22~11_combout\);

-- Location: LCCOMB_X47_Y33_N24
\alu|Mux22~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux22~13_combout\ = (\actr|alu_ctr[3]~21_combout\ & (((\alu|Mux22~11_combout\)))) # (!\actr|alu_ctr[3]~21_combout\ & ((\alu|Mux25~2_combout\ & (\alu|Mux22~12_combout\)) # (!\alu|Mux25~2_combout\ & ((\alu|Mux22~11_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \actr|alu_ctr[3]~21_combout\,
	datab => \alu|Mux25~2_combout\,
	datac => \alu|Mux22~12_combout\,
	datad => \alu|Mux22~11_combout\,
	combout => \alu|Mux22~13_combout\);

-- Location: LCFF_X47_Y33_N25
\regULA|sr_out[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \alu|Mux22~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regULA|sr_out\(9));

-- Location: LCCOMB_X44_Y35_N2
\pc|sr_out[9]~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \pc|sr_out[9]~21_combout\ = (\ctr_mips|pstate.branch_ex_st~regout\ & (\regULA|sr_out\(9))) # (!\ctr_mips|pstate.branch_ex_st~regout\ & ((\alu|Mux22~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctr_mips|pstate.branch_ex_st~regout\,
	datab => \regULA|sr_out\(9),
	datad => \alu|Mux22~13_combout\,
	combout => \pc|sr_out[9]~21_combout\);

-- Location: LCFF_X44_Y35_N3
\pc|sr_out[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \pc|sr_out[9]~21_combout\,
	sdata => \ir|sr_out\(7),
	sclr => \rst~combout\,
	sload => \ctr_mips|pstate.jump_ex_st~regout\,
	ena => \pc|sr_out[0]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pc|sr_out\(9));

-- Location: LCCOMB_X38_Y35_N26
\mux_mem|m_out[9]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux_mem|m_out[9]~7_combout\ = (!\ctr_mips|pstate.readmem_st~regout\ & (!\ctr_mips|pstate.writemem_st~regout\ & \pc|sr_out\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctr_mips|pstate.readmem_st~regout\,
	datab => \ctr_mips|pstate.writemem_st~regout\,
	datad => \pc|sr_out\(9),
	combout => \mux_mem|m_out[9]~7_combout\);

-- Location: LCFF_X41_Y35_N23
\ir|sr_out[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \mem|altsyncram_component|auto_generated|q_a\(6),
	sload => VCC,
	ena => \ctr_mips|ALT_INV_pstate.fetch_st~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ir|sr_out\(6));

-- Location: LCFF_X44_Y35_N1
\pc|sr_out[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \pc|sr_out[8]~22_combout\,
	sdata => \ir|sr_out\(6),
	sclr => \rst~combout\,
	sload => \ctr_mips|pstate.jump_ex_st~regout\,
	ena => \pc|sr_out[0]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pc|sr_out\(8));

-- Location: LCCOMB_X38_Y35_N28
\mux_mem|m_out[8]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux_mem|m_out[8]~6_combout\ = (!\ctr_mips|pstate.readmem_st~regout\ & (!\ctr_mips|pstate.writemem_st~regout\ & \pc|sr_out\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctr_mips|pstate.readmem_st~regout\,
	datab => \ctr_mips|pstate.writemem_st~regout\,
	datad => \pc|sr_out\(8),
	combout => \mux_mem|m_out[8]~6_combout\);

-- Location: LCFF_X36_Y33_N13
\ir|sr_out[31]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \mem|altsyncram_component|auto_generated|q_a\(31),
	sload => VCC,
	ena => \ctr_mips|ALT_INV_pstate.fetch_st~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ir|sr_out\(31));

-- Location: LCCOMB_X40_Y35_N10
\ctr_mips|nstate.branch_ex_st~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \ctr_mips|nstate.branch_ex_st~1_combout\ = (\ctr_mips|pstate.decode_st~regout\ & (!\ir|sr_out\(31) & (\ir|sr_out\(28) & \ctr_mips|nstate.branch_ex_st~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctr_mips|pstate.decode_st~regout\,
	datab => \ir|sr_out\(31),
	datac => \ir|sr_out\(28),
	datad => \ctr_mips|nstate.branch_ex_st~0_combout\,
	combout => \ctr_mips|nstate.branch_ex_st~1_combout\);

-- Location: LCFF_X40_Y35_N11
\ctr_mips|pstate.branch_ex_st\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \ctr_mips|nstate.branch_ex_st~1_combout\,
	aclr => \rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ctr_mips|pstate.branch_ex_st~regout\);

-- Location: LCCOMB_X44_Y35_N30
\pc|sr_out[7]~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \pc|sr_out[7]~23_combout\ = (\ctr_mips|pstate.branch_ex_st~regout\ & ((\regULA|sr_out\(7)))) # (!\ctr_mips|pstate.branch_ex_st~regout\ & (\alu|Mux24~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|Mux24~combout\,
	datab => \regULA|sr_out\(7),
	datad => \ctr_mips|pstate.branch_ex_st~regout\,
	combout => \pc|sr_out[7]~23_combout\);

-- Location: LCFF_X44_Y35_N31
\pc|sr_out[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \pc|sr_out[7]~23_combout\,
	sdata => \ir|sr_out\(5),
	sclr => \rst~combout\,
	sload => \ctr_mips|pstate.jump_ex_st~regout\,
	ena => \pc|sr_out[0]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pc|sr_out\(7));

-- Location: LCCOMB_X38_Y35_N10
\mux_mem|m_out[7]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux_mem|m_out[7]~5_combout\ = (\ctr_mips|pstate.readmem_st~regout\) # ((\ctr_mips|pstate.writemem_st~regout\) # (\pc|sr_out\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctr_mips|pstate.readmem_st~regout\,
	datab => \ctr_mips|pstate.writemem_st~regout\,
	datad => \pc|sr_out\(7),
	combout => \mux_mem|m_out[7]~5_combout\);

-- Location: LCFF_X36_Y33_N17
\ir|sr_out[29]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \mem|altsyncram_component|auto_generated|q_a\(29),
	sload => VCC,
	ena => \ctr_mips|ALT_INV_pstate.fetch_st~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ir|sr_out\(29));

-- Location: LCCOMB_X35_Y33_N12
\ctr_mips|nstate.rtype_ex_st~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \ctr_mips|nstate.rtype_ex_st~3_combout\ = (\ctr_mips|nstate.rtype_ex_st~2_combout\ & (!\ir|sr_out\(27) & (!\ir|sr_out\(30) & !\ir|sr_out\(29))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctr_mips|nstate.rtype_ex_st~2_combout\,
	datab => \ir|sr_out\(27),
	datac => \ir|sr_out\(30),
	datad => \ir|sr_out\(29),
	combout => \ctr_mips|nstate.rtype_ex_st~3_combout\);

-- Location: LCFF_X40_Y35_N31
\ctr_mips|pstate.rtype_ex_st\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \ctr_mips|nstate.rtype_ex_st~3_combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ctr_mips|pstate.rtype_ex_st~regout\);

-- Location: LCCOMB_X40_Y35_N24
\actr|alu_ctr~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \actr|alu_ctr~2_combout\ = (!\ir|sr_out\(3) & (\ctr_mips|pstate.rtype_ex_st~regout\ & !\ir|sr_out\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir|sr_out\(3),
	datab => \ctr_mips|pstate.rtype_ex_st~regout\,
	datad => \ir|sr_out\(4),
	combout => \actr|alu_ctr~2_combout\);

-- Location: LCCOMB_X39_Y35_N24
\alu|Mux10~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux10~6_combout\ = (\ir|sr_out\(2) & ((!\ir|sr_out\(5)))) # (!\ir|sr_out\(2) & ((\ir|sr_out\(0)) # (\ir|sr_out\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir|sr_out\(2),
	datab => \ir|sr_out\(0),
	datad => \ir|sr_out\(5),
	combout => \alu|Mux10~6_combout\);

-- Location: LCCOMB_X39_Y35_N22
\alu|Mux10~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux10~7_combout\ = ((\alu|Mux10~6_combout\) # ((\ir|sr_out\(1) & \ir|sr_out\(0)))) # (!\actr|alu_ctr~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir|sr_out\(1),
	datab => \ir|sr_out\(0),
	datac => \actr|alu_ctr~2_combout\,
	datad => \alu|Mux10~6_combout\,
	combout => \alu|Mux10~7_combout\);

-- Location: LCCOMB_X39_Y35_N14
\alu|Mux10~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux10~8_combout\ = (\alu|Mux10~7_combout\ & ((\ir|sr_out\(1)) # (!\actr|alu_ctr~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir|sr_out\(1),
	datab => \alu|Mux10~7_combout\,
	datad => \actr|alu_ctr~5_combout\,
	combout => \alu|Mux10~8_combout\);

-- Location: LCCOMB_X42_Y36_N0
\alu|Mux25~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux25~2_combout\ = (\actr|alu_ctr[0]~16_combout\ & (\alu|ShiftLeft0~21_combout\ & (\alu|Mux10~8_combout\ $ (!\actr|alu_ctr[1]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \actr|alu_ctr[0]~16_combout\,
	datab => \alu|Mux10~8_combout\,
	datac => \alu|ShiftLeft0~21_combout\,
	datad => \actr|alu_ctr[1]~14_combout\,
	combout => \alu|Mux25~2_combout\);

-- Location: LCCOMB_X45_Y35_N16
\alu|Mux23~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux23~11_combout\ = (\mux_ulaA|m_out[3]~28_combout\ & (\alu|Mux23~2_combout\)) # (!\mux_ulaA|m_out[3]~28_combout\ & ((\alu|ShiftRight1~17_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \alu|Mux23~2_combout\,
	datac => \mux_ulaA|m_out[3]~28_combout\,
	datad => \alu|ShiftRight1~17_combout\,
	combout => \alu|Mux23~11_combout\);

-- Location: LCCOMB_X45_Y35_N4
\alu|a32~52\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|a32~52_combout\ = \mux_ulaB|m_out[8]~37_combout\ $ (((\ctr_mips|WideOr0~combout\ & ((\rgA|sr_out\(8)))) # (!\ctr_mips|WideOr0~combout\ & (\pc|sr_out\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011010011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_ulaB|m_out[8]~37_combout\,
	datab => \ctr_mips|WideOr0~combout\,
	datac => \pc|sr_out\(8),
	datad => \rgA|sr_out\(8),
	combout => \alu|a32~52_combout\);

-- Location: LCCOMB_X45_Y35_N2
\alu|Mux23~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux23~8_combout\ = (\mux_ulaB|m_out[8]~37_combout\) # ((\mux_ulaA|m_out[8]~25_combout\) # (\alu|Mux29~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_ulaB|m_out[8]~37_combout\,
	datab => \mux_ulaA|m_out[8]~25_combout\,
	datad => \alu|Mux29~14_combout\,
	combout => \alu|Mux23~8_combout\);

-- Location: LCCOMB_X45_Y35_N18
\alu|Mux23~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux23~4_combout\ = (\alu|Mux23~3_combout\ & ((\alu|Add1~16_combout\) # ((!\alu|Mux29~6_combout\)))) # (!\alu|Mux23~3_combout\ & (((\alu|Mux29~6_combout\ & \alu|ShiftRight1~74_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|Mux23~3_combout\,
	datab => \alu|Add1~16_combout\,
	datac => \alu|Mux29~6_combout\,
	datad => \alu|ShiftRight1~74_combout\,
	combout => \alu|Mux23~4_combout\);

-- Location: LCCOMB_X45_Y35_N28
\alu|Mux23~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux23~5_combout\ = (\alu|Mux29~9_combout\ & ((\alu|Mux29~10_combout\ & (\alu|tmp[8]~16_combout\)) # (!\alu|Mux29~10_combout\ & ((\alu|Mux23~4_combout\))))) # (!\alu|Mux29~9_combout\ & (((!\alu|Mux29~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|tmp[8]~16_combout\,
	datab => \alu|Mux29~9_combout\,
	datac => \alu|Mux29~10_combout\,
	datad => \alu|Mux23~4_combout\,
	combout => \alu|Mux23~5_combout\);

-- Location: LCCOMB_X45_Y35_N10
\alu|Mux23~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux23~6_combout\ = (\alu|Mux29~5_combout\ & (((\alu|Mux23~5_combout\)))) # (!\alu|Mux29~5_combout\ & ((\alu|Mux23~5_combout\ & ((\alu|ShiftRight0~79_combout\))) # (!\alu|Mux23~5_combout\ & (\mux_ulaB|m_out[31]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_ulaB|m_out[31]~4_combout\,
	datab => \alu|Mux29~5_combout\,
	datac => \alu|ShiftRight0~79_combout\,
	datad => \alu|Mux23~5_combout\,
	combout => \alu|Mux23~6_combout\);

-- Location: LCCOMB_X45_Y35_N0
\alu|Mux23~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux23~7_combout\ = (\alu|Mux23~6_combout\ & ((\actr|alu_ctr[0]~16_combout\) # (\alu|Mux29~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \actr|alu_ctr[0]~16_combout\,
	datab => \alu|Mux29~5_combout\,
	datad => \alu|Mux23~6_combout\,
	combout => \alu|Mux23~7_combout\);

-- Location: LCCOMB_X45_Y35_N12
\alu|Mux23~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux23~9_combout\ = (\alu|Mux29~2_combout\ & (((\alu|Mux29~3_combout\)))) # (!\alu|Mux29~2_combout\ & ((\alu|Mux29~3_combout\ & (!\alu|Mux23~8_combout\)) # (!\alu|Mux29~3_combout\ & ((\alu|Mux23~7_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010110110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|Mux29~2_combout\,
	datab => \alu|Mux23~8_combout\,
	datac => \alu|Mux29~3_combout\,
	datad => \alu|Mux23~7_combout\,
	combout => \alu|Mux23~9_combout\);

-- Location: LCCOMB_X45_Y35_N30
\alu|Mux23~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux23~10_combout\ = (\alu|Mux29~4_combout\ & ((\alu|Mux23~9_combout\ & (\alu|a32~52_combout\)) # (!\alu|Mux23~9_combout\ & ((\alu|ShiftLeft0~52_combout\))))) # (!\alu|Mux29~4_combout\ & (((\alu|Mux23~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|Mux29~4_combout\,
	datab => \alu|a32~52_combout\,
	datac => \alu|ShiftLeft0~52_combout\,
	datad => \alu|Mux23~9_combout\,
	combout => \alu|Mux23~10_combout\);

-- Location: LCCOMB_X44_Y35_N22
\alu|Mux23~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux23~12_combout\ = (\actr|alu_ctr[3]~21_combout\ & (((\alu|Mux23~10_combout\)))) # (!\actr|alu_ctr[3]~21_combout\ & ((\alu|Mux25~2_combout\ & (\alu|Mux23~11_combout\)) # (!\alu|Mux25~2_combout\ & ((\alu|Mux23~10_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \actr|alu_ctr[3]~21_combout\,
	datab => \alu|Mux25~2_combout\,
	datac => \alu|Mux23~11_combout\,
	datad => \alu|Mux23~10_combout\,
	combout => \alu|Mux23~12_combout\);

-- Location: LCFF_X44_Y35_N23
\regULA|sr_out[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \alu|Mux23~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regULA|sr_out\(8));

-- Location: LCCOMB_X36_Y36_N24
\mux_mem|m_out[6]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux_mem|m_out[6]~4_combout\ = (\ctr_mips|pstate.readmem_st~regout\ & (((\regULA|sr_out\(8))))) # (!\ctr_mips|pstate.readmem_st~regout\ & ((\ctr_mips|pstate.writemem_st~regout\ & ((\regULA|sr_out\(8)))) # (!\ctr_mips|pstate.writemem_st~regout\ & 
-- (\pc|sr_out\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|sr_out\(6),
	datab => \ctr_mips|pstate.readmem_st~regout\,
	datac => \ctr_mips|pstate.writemem_st~regout\,
	datad => \regULA|sr_out\(8),
	combout => \mux_mem|m_out[6]~4_combout\);

-- Location: LCFF_X36_Y33_N31
\ir|sr_out[26]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \mem|altsyncram_component|auto_generated|q_a\(26),
	sload => VCC,
	ena => \ctr_mips|ALT_INV_pstate.fetch_st~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ir|sr_out\(26));

-- Location: LCCOMB_X35_Y33_N4
\ctr_mips|Mux5~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \ctr_mips|Mux5~1_combout\ = (\ir|sr_out\(29) & ((\ir|sr_out\(31) & ((!\ir|sr_out\(28)))) # (!\ir|sr_out\(31) & ((\ir|sr_out\(28)) # (!\ir|sr_out\(26)))))) # (!\ir|sr_out\(29) & (((\ir|sr_out\(31)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir|sr_out\(29),
	datab => \ir|sr_out\(26),
	datac => \ir|sr_out\(31),
	datad => \ir|sr_out\(28),
	combout => \ctr_mips|Mux5~1_combout\);

-- Location: LCCOMB_X35_Y33_N26
\ctr_mips|Mux5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ctr_mips|Mux5~0_combout\ = (\ir|sr_out\(26) & (\ir|sr_out\(31) & (\ir|sr_out\(27) & !\ir|sr_out\(28))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir|sr_out\(26),
	datab => \ir|sr_out\(31),
	datac => \ir|sr_out\(27),
	datad => \ir|sr_out\(28),
	combout => \ctr_mips|Mux5~0_combout\);

-- Location: LCCOMB_X35_Y33_N22
\ctr_mips|Mux5~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \ctr_mips|Mux5~2_combout\ = (!\ir|sr_out\(30) & ((\ctr_mips|Mux5~0_combout\) # ((!\ir|sr_out\(27) & \ctr_mips|Mux5~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir|sr_out\(30),
	datab => \ir|sr_out\(27),
	datac => \ctr_mips|Mux5~1_combout\,
	datad => \ctr_mips|Mux5~0_combout\,
	combout => \ctr_mips|Mux5~2_combout\);

-- Location: LCCOMB_X40_Y35_N14
\ctr_mips|nstate.c_mem_add_st~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ctr_mips|nstate.c_mem_add_st~0_combout\ = (\ctr_mips|pstate.decode_st~regout\ & \ctr_mips|Mux5~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ctr_mips|pstate.decode_st~regout\,
	datac => \ctr_mips|Mux5~2_combout\,
	combout => \ctr_mips|nstate.c_mem_add_st~0_combout\);

-- Location: LCFF_X40_Y35_N15
\ctr_mips|pstate.c_mem_add_st\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \ctr_mips|nstate.c_mem_add_st~0_combout\,
	aclr => \rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ctr_mips|pstate.c_mem_add_st~regout\);

-- Location: LCCOMB_X39_Y38_N18
\ctr_mips|WideNor0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ctr_mips|WideNor0~0_combout\ = (\ctr_mips|pstate.fetch_st~regout\ & (!\ctr_mips|pstate.c_mem_add_st~regout\ & (!\ctr_mips|pstate.rtype_ex_st~regout\ & !\ctr_mips|pstate.decode_st~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctr_mips|pstate.fetch_st~regout\,
	datab => \ctr_mips|pstate.c_mem_add_st~regout\,
	datac => \ctr_mips|pstate.rtype_ex_st~regout\,
	datad => \ctr_mips|pstate.decode_st~regout\,
	combout => \ctr_mips|WideNor0~0_combout\);

-- Location: LCCOMB_X38_Y35_N4
\ctr_mips|Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ctr_mips|Mux0~0_combout\ = (\ir|sr_out\(28)) # ((\ir|sr_out\(26) & ((!\ir|sr_out\(31)))) # (!\ir|sr_out\(26) & ((\ir|sr_out\(29)) # (\ir|sr_out\(31)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir|sr_out\(29),
	datab => \ir|sr_out\(28),
	datac => \ir|sr_out\(26),
	datad => \ir|sr_out\(31),
	combout => \ctr_mips|Mux0~0_combout\);

-- Location: LCCOMB_X38_Y38_N4
\ctr_mips|Selector0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ctr_mips|Selector0~0_combout\ = (\ir|sr_out\(30)) # ((\ir|sr_out\(27) & ((\ctr_mips|Mux0~0_combout\))) # (!\ir|sr_out\(27) & (\ctr_mips|Mux0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctr_mips|Mux0~1_combout\,
	datab => \ir|sr_out\(27),
	datac => \ir|sr_out\(30),
	datad => \ctr_mips|Mux0~0_combout\,
	combout => \ctr_mips|Selector0~0_combout\);

-- Location: LCCOMB_X39_Y38_N4
\ctr_mips|Selector0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \ctr_mips|Selector0~1_combout\ = (\ctr_mips|pstate.readmem_st~regout\ & (((\ctr_mips|Selector0~0_combout\ & \ctr_mips|pstate.decode_st~regout\)))) # (!\ctr_mips|pstate.readmem_st~regout\ & ((\ctr_mips|WideNor0~0_combout\) # 
-- ((\ctr_mips|Selector0~0_combout\ & \ctr_mips|pstate.decode_st~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctr_mips|pstate.readmem_st~regout\,
	datab => \ctr_mips|WideNor0~0_combout\,
	datac => \ctr_mips|Selector0~0_combout\,
	datad => \ctr_mips|pstate.decode_st~regout\,
	combout => \ctr_mips|Selector0~1_combout\);

-- Location: LCCOMB_X39_Y38_N30
\ctr_mips|Selector0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \ctr_mips|Selector0~2_combout\ = (!\ctr_mips|Selector0~1_combout\ & ((\ctr_mips|Mux5~2_combout\) # (!\ctr_mips|pstate.c_mem_add_st~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ctr_mips|pstate.c_mem_add_st~regout\,
	datac => \ctr_mips|Selector0~1_combout\,
	datad => \ctr_mips|Mux5~2_combout\,
	combout => \ctr_mips|Selector0~2_combout\);

-- Location: LCFF_X41_Y35_N25
\ctr_mips|pstate.fetch_st\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \ctr_mips|Selector0~2_combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ctr_mips|pstate.fetch_st~regout\);

-- Location: LCCOMB_X41_Y35_N4
\mux_ulaB|m_out[0]~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux_ulaB|m_out[0]~18_combout\ = (\ctr_mips|pstate.fetch_st~regout\ & !\ctr_mips|pstate.decode_st~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ctr_mips|pstate.fetch_st~regout\,
	datad => \ctr_mips|pstate.decode_st~regout\,
	combout => \mux_ulaB|m_out[0]~18_combout\);

-- Location: LCCOMB_X42_Y35_N22
\mux_ulaB|m_out[7]~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux_ulaB|m_out[7]~38_combout\ = (\ctr_mips|pstate.decode_st~regout\ & (((\ir|sr_out\(7))))) # (!\ctr_mips|pstate.decode_st~regout\ & ((\ctr_mips|pstate.c_mem_add_st~regout\ & ((\ir|sr_out\(7)))) # (!\ctr_mips|pstate.c_mem_add_st~regout\ & 
-- (\rgB|sr_out\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctr_mips|pstate.decode_st~regout\,
	datab => \rgB|sr_out\(7),
	datac => \ir|sr_out\(7),
	datad => \ctr_mips|pstate.c_mem_add_st~regout\,
	combout => \mux_ulaB|m_out[7]~38_combout\);

-- Location: LCCOMB_X42_Y35_N8
\mux_ulaB|m_out[7]~39\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux_ulaB|m_out[7]~39_combout\ = (\mux_ulaB|m_out[0]~18_combout\ & (((\mux_ulaB|m_out[7]~38_combout\)))) # (!\mux_ulaB|m_out[0]~18_combout\ & (!\mux_ulaB|m_out[2]~19_combout\ & (\ir|sr_out\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_ulaB|m_out[2]~19_combout\,
	datab => \mux_ulaB|m_out[0]~18_combout\,
	datac => \ir|sr_out\(5),
	datad => \mux_ulaB|m_out[7]~38_combout\,
	combout => \mux_ulaB|m_out[7]~39_combout\);

-- Location: LCCOMB_X45_Y35_N22
\alu|a32~51\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|a32~51_combout\ = \mux_ulaB|m_out[7]~39_combout\ $ (((\ctr_mips|WideOr0~combout\ & (\rgA|sr_out\(7))) # (!\ctr_mips|WideOr0~combout\ & ((\pc|sr_out\(7))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rgA|sr_out\(7),
	datab => \mux_ulaB|m_out[7]~39_combout\,
	datac => \pc|sr_out\(7),
	datad => \ctr_mips|WideOr0~combout\,
	combout => \alu|a32~51_combout\);

-- Location: LCCOMB_X43_Y36_N18
\alu|Mux24~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux24~6_combout\ = (\alu|Mux29~14_combout\) # ((\mux_ulaB|m_out[7]~39_combout\) # (\mux_ulaA|m_out[7]~26_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \alu|Mux29~14_combout\,
	datac => \mux_ulaB|m_out[7]~39_combout\,
	datad => \mux_ulaA|m_out[7]~26_combout\,
	combout => \alu|Mux24~6_combout\);

-- Location: LCCOMB_X42_Y36_N18
\alu|Mux24~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux24~1_combout\ = (\alu|Mux24~0_combout\ & (((\alu|Add1~14_combout\)) # (!\alu|Mux29~6_combout\))) # (!\alu|Mux24~0_combout\ & (\alu|Mux29~6_combout\ & (\alu|ShiftRight1~67_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|Mux24~0_combout\,
	datab => \alu|Mux29~6_combout\,
	datac => \alu|ShiftRight1~67_combout\,
	datad => \alu|Add1~14_combout\,
	combout => \alu|Mux24~1_combout\);

-- Location: LCCOMB_X42_Y36_N8
\alu|Mux24~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux24~2_combout\ = (\alu|Mux29~9_combout\ & ((\alu|Mux29~10_combout\ & (\alu|tmp[7]~14_combout\)) # (!\alu|Mux29~10_combout\ & ((\alu|Mux24~1_combout\))))) # (!\alu|Mux29~9_combout\ & (((!\alu|Mux29~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|Mux29~9_combout\,
	datab => \alu|tmp[7]~14_combout\,
	datac => \alu|Mux29~10_combout\,
	datad => \alu|Mux24~1_combout\,
	combout => \alu|Mux24~2_combout\);

-- Location: LCCOMB_X42_Y36_N22
\alu|Mux24~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux24~3_combout\ = (\alu|Mux29~5_combout\ & (((\alu|Mux24~2_combout\)))) # (!\alu|Mux29~5_combout\ & ((\alu|Mux24~2_combout\ & ((\alu|ShiftRight0~75_combout\))) # (!\alu|Mux24~2_combout\ & (\mux_ulaB|m_out[31]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|Mux29~5_combout\,
	datab => \mux_ulaB|m_out[31]~4_combout\,
	datac => \alu|Mux24~2_combout\,
	datad => \alu|ShiftRight0~75_combout\,
	combout => \alu|Mux24~3_combout\);

-- Location: LCCOMB_X42_Y36_N28
\alu|Mux24~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux24~4_combout\ = (\alu|Mux25~3_combout\ & (((\alu|ShiftRight0~77_combout\)) # (!\alu|Mux25~4_combout\))) # (!\alu|Mux25~3_combout\ & (\alu|Mux25~4_combout\ & ((\alu|Mux24~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|Mux25~3_combout\,
	datab => \alu|Mux25~4_combout\,
	datac => \alu|ShiftRight0~77_combout\,
	datad => \alu|Mux24~3_combout\,
	combout => \alu|Mux24~4_combout\);

-- Location: LCCOMB_X42_Y36_N2
\alu|Mux24~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux24~5_combout\ = (\alu|Mux25~13_combout\ & (((\alu|Mux24~4_combout\)))) # (!\alu|Mux25~13_combout\ & ((\alu|Mux24~4_combout\ & (\alu|ShiftRight1~62_combout\)) # (!\alu|Mux24~4_combout\ & ((\alu|ShiftRight1~57_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|ShiftRight1~62_combout\,
	datab => \alu|ShiftRight1~57_combout\,
	datac => \alu|Mux25~13_combout\,
	datad => \alu|Mux24~4_combout\,
	combout => \alu|Mux24~5_combout\);

-- Location: LCCOMB_X43_Y36_N28
\alu|Mux24~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux24~7_combout\ = (\alu|Mux29~2_combout\ & (((\alu|Mux29~3_combout\)))) # (!\alu|Mux29~2_combout\ & ((\alu|Mux29~3_combout\ & (!\alu|Mux24~6_combout\)) # (!\alu|Mux29~3_combout\ & ((\alu|Mux24~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010110110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|Mux29~2_combout\,
	datab => \alu|Mux24~6_combout\,
	datac => \alu|Mux29~3_combout\,
	datad => \alu|Mux24~5_combout\,
	combout => \alu|Mux24~7_combout\);

-- Location: LCCOMB_X43_Y36_N14
\alu|Mux24\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux24~combout\ = (\alu|Mux29~4_combout\ & ((\alu|Mux24~7_combout\ & ((\alu|a32~51_combout\))) # (!\alu|Mux24~7_combout\ & (\alu|ShiftLeft0~48_combout\)))) # (!\alu|Mux29~4_combout\ & (((\alu|Mux24~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|ShiftLeft0~48_combout\,
	datab => \alu|a32~51_combout\,
	datac => \alu|Mux29~4_combout\,
	datad => \alu|Mux24~7_combout\,
	combout => \alu|Mux24~combout\);

-- Location: LCCOMB_X43_Y36_N20
\regULA|sr_out[7]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \regULA|sr_out[7]~feeder_combout\ = \alu|Mux24~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \alu|Mux24~combout\,
	combout => \regULA|sr_out[7]~feeder_combout\);

-- Location: LCFF_X43_Y36_N21
\regULA|sr_out[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \regULA|sr_out[7]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regULA|sr_out\(7));

-- Location: LCCOMB_X36_Y37_N16
\mux_mem|m_out[5]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux_mem|m_out[5]~3_combout\ = (\ctr_mips|pstate.readmem_st~regout\ & (\regULA|sr_out\(7))) # (!\ctr_mips|pstate.readmem_st~regout\ & ((\ctr_mips|pstate.writemem_st~regout\ & (\regULA|sr_out\(7))) # (!\ctr_mips|pstate.writemem_st~regout\ & 
-- ((\pc|sr_out\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctr_mips|pstate.readmem_st~regout\,
	datab => \regULA|sr_out\(7),
	datac => \ctr_mips|pstate.writemem_st~regout\,
	datad => \pc|sr_out\(5),
	combout => \mux_mem|m_out[5]~3_combout\);

-- Location: LCFF_X36_Y33_N9
\ir|sr_out[27]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \mem|altsyncram_component|auto_generated|q_a\(27),
	sload => VCC,
	ena => \ctr_mips|ALT_INV_pstate.fetch_st~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ir|sr_out\(27));

-- Location: LCCOMB_X35_Y33_N28
\ctr_mips|Mux7~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ctr_mips|Mux7~0_combout\ = (!\ir|sr_out\(28) & (\ir|sr_out\(29) & ((\ir|sr_out\(26)) # (!\ir|sr_out\(27)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir|sr_out\(28),
	datab => \ir|sr_out\(27),
	datac => \ir|sr_out\(26),
	datad => \ir|sr_out\(29),
	combout => \ctr_mips|Mux7~0_combout\);

-- Location: LCCOMB_X35_Y33_N8
\ctr_mips|nstate.writemem_st~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ctr_mips|nstate.writemem_st~0_combout\ = (!\ir|sr_out\(30) & (\ctr_mips|Mux7~0_combout\ & (\ctr_mips|pstate.c_mem_add_st~regout\ & \ir|sr_out\(31))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir|sr_out\(30),
	datab => \ctr_mips|Mux7~0_combout\,
	datac => \ctr_mips|pstate.c_mem_add_st~regout\,
	datad => \ir|sr_out\(31),
	combout => \ctr_mips|nstate.writemem_st~0_combout\);

-- Location: LCFF_X35_Y33_N9
\ctr_mips|pstate.writemem_st\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \ctr_mips|nstate.writemem_st~0_combout\,
	aclr => \rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ctr_mips|pstate.writemem_st~regout\);

-- Location: LCCOMB_X38_Y36_N6
\mux_mem|m_out[4]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux_mem|m_out[4]~2_combout\ = (\ctr_mips|pstate.readmem_st~regout\ & (((\regULA|sr_out\(6))))) # (!\ctr_mips|pstate.readmem_st~regout\ & ((\ctr_mips|pstate.writemem_st~regout\ & ((\regULA|sr_out\(6)))) # (!\ctr_mips|pstate.writemem_st~regout\ & 
-- (\pc|sr_out\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|sr_out\(4),
	datab => \ctr_mips|pstate.readmem_st~regout\,
	datac => \ctr_mips|pstate.writemem_st~regout\,
	datad => \regULA|sr_out\(6),
	combout => \mux_mem|m_out[4]~2_combout\);

-- Location: LCFF_X36_Y33_N23
\ir|sr_out[30]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \mem|altsyncram_component|auto_generated|q_a\(30),
	sload => VCC,
	ena => \ctr_mips|ALT_INV_pstate.fetch_st~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ir|sr_out\(30));

-- Location: LCCOMB_X38_Y33_N16
\ctr_mips|Mux6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ctr_mips|Mux6~0_combout\ = (\ir|sr_out\(29)) # ((\ir|sr_out\(27) & ((\ir|sr_out\(28)) # (!\ir|sr_out\(26)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir|sr_out\(28),
	datab => \ir|sr_out\(29),
	datac => \ir|sr_out\(27),
	datad => \ir|sr_out\(26),
	combout => \ctr_mips|Mux6~0_combout\);

-- Location: LCCOMB_X36_Y34_N20
\ctr_mips|nstate.readmem_st~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ctr_mips|nstate.readmem_st~0_combout\ = (\ir|sr_out\(31) & (!\ir|sr_out\(30) & (!\ctr_mips|Mux6~0_combout\ & \ctr_mips|pstate.c_mem_add_st~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir|sr_out\(31),
	datab => \ir|sr_out\(30),
	datac => \ctr_mips|Mux6~0_combout\,
	datad => \ctr_mips|pstate.c_mem_add_st~regout\,
	combout => \ctr_mips|nstate.readmem_st~0_combout\);

-- Location: LCFF_X36_Y34_N21
\ctr_mips|pstate.readmem_st\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \ctr_mips|nstate.readmem_st~0_combout\,
	aclr => \rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ctr_mips|pstate.readmem_st~regout\);

-- Location: LCCOMB_X38_Y36_N4
\mux_mem|m_out[3]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux_mem|m_out[3]~1_combout\ = (\ctr_mips|pstate.writemem_st~regout\ & (((\regULA|sr_out\(5))))) # (!\ctr_mips|pstate.writemem_st~regout\ & ((\ctr_mips|pstate.readmem_st~regout\ & ((\regULA|sr_out\(5)))) # (!\ctr_mips|pstate.readmem_st~regout\ & 
-- (\pc|sr_out\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctr_mips|pstate.writemem_st~regout\,
	datab => \ctr_mips|pstate.readmem_st~regout\,
	datac => \pc|sr_out\(3),
	datad => \regULA|sr_out\(5),
	combout => \mux_mem|m_out[3]~1_combout\);

-- Location: LCFF_X40_Y35_N29
\ir|sr_out[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \mem|altsyncram_component|auto_generated|q_a\(5),
	sload => VCC,
	ena => \ctr_mips|ALT_INV_pstate.fetch_st~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ir|sr_out\(5));

-- Location: LCCOMB_X40_Y35_N18
\actr|alu_ctr[3]~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \actr|alu_ctr[3]~20_combout\ = (\ir|sr_out\(2)) # ((!\ir|sr_out\(3)) # (!\ir|sr_out\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir|sr_out\(2),
	datab => \ir|sr_out\(5),
	datad => \ir|sr_out\(3),
	combout => \actr|alu_ctr[3]~20_combout\);

-- Location: LCCOMB_X40_Y35_N30
\actr|alu_ctr[3]~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \actr|alu_ctr[3]~19_combout\ = ((\ir|sr_out\(0)) # ((\ir|sr_out\(4)) # (!\ctr_mips|pstate.rtype_ex_st~regout\))) # (!\ir|sr_out\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir|sr_out\(1),
	datab => \ir|sr_out\(0),
	datac => \ctr_mips|pstate.rtype_ex_st~regout\,
	datad => \ir|sr_out\(4),
	combout => \actr|alu_ctr[3]~19_combout\);

-- Location: LCCOMB_X40_Y35_N2
\actr|alu_ctr[3]~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \actr|alu_ctr[3]~18_combout\ = (!\actr|alu_ctr[1]~17_combout\ & (!\actr|alu_ctr~12_combout\ & (!\actr|alu_ctr~11_combout\ & \actr|alu_ctr[1]~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \actr|alu_ctr[1]~17_combout\,
	datab => \actr|alu_ctr~12_combout\,
	datac => \actr|alu_ctr~11_combout\,
	datad => \actr|alu_ctr[1]~7_combout\,
	combout => \actr|alu_ctr[3]~18_combout\);

-- Location: LCCOMB_X40_Y35_N16
\actr|alu_ctr[3]~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \actr|alu_ctr[3]~21_combout\ = (\actr|alu_ctr[3]~18_combout\) # ((!\actr|alu_ctr[1]~7_combout\ & ((\actr|alu_ctr[3]~20_combout\) # (\actr|alu_ctr[3]~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \actr|alu_ctr[1]~7_combout\,
	datab => \actr|alu_ctr[3]~20_combout\,
	datac => \actr|alu_ctr[3]~19_combout\,
	datad => \actr|alu_ctr[3]~18_combout\,
	combout => \actr|alu_ctr[3]~21_combout\);

-- Location: LCCOMB_X44_Y36_N20
\alu|Mux29~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux29~15_combout\ = (\alu|Mux29~14_combout\) # ((\mux_ulaA|m_out[2]~29_combout\) # (\mux_ulaB|m_out[2]~50_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|Mux29~14_combout\,
	datac => \mux_ulaA|m_out[2]~29_combout\,
	datad => \mux_ulaB|m_out[2]~50_combout\,
	combout => \alu|Mux29~15_combout\);

-- Location: LCCOMB_X40_Y34_N22
\alu|Mux29~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux29~8_combout\ = (\alu|Mux29~7_combout\ & ((\alu|Add1~4_combout\) # ((!\alu|Mux29~6_combout\)))) # (!\alu|Mux29~7_combout\ & (((\alu|ShiftRight1~39_combout\ & \alu|Mux29~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|Mux29~7_combout\,
	datab => \alu|Add1~4_combout\,
	datac => \alu|ShiftRight1~39_combout\,
	datad => \alu|Mux29~6_combout\,
	combout => \alu|Mux29~8_combout\);

-- Location: LCCOMB_X40_Y34_N16
\alu|Mux29~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux29~11_combout\ = (\alu|Mux29~10_combout\ & (\alu|tmp[2]~4_combout\ & (\alu|Mux29~9_combout\))) # (!\alu|Mux29~10_combout\ & (((\alu|Mux29~8_combout\) # (!\alu|Mux29~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010110000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|Mux29~10_combout\,
	datab => \alu|tmp[2]~4_combout\,
	datac => \alu|Mux29~9_combout\,
	datad => \alu|Mux29~8_combout\,
	combout => \alu|Mux29~11_combout\);

-- Location: LCCOMB_X40_Y34_N26
\alu|Mux29~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux29~12_combout\ = (\alu|Mux29~5_combout\ & (((\alu|Mux29~11_combout\)))) # (!\alu|Mux29~5_combout\ & ((\alu|Mux29~11_combout\ & ((\alu|ShiftRight0~51_combout\))) # (!\alu|Mux29~11_combout\ & (\mux_ulaB|m_out[31]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_ulaB|m_out[31]~4_combout\,
	datab => \alu|Mux29~5_combout\,
	datac => \alu|Mux29~11_combout\,
	datad => \alu|ShiftRight0~51_combout\,
	combout => \alu|Mux29~12_combout\);

-- Location: LCCOMB_X40_Y34_N28
\alu|Mux29~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux29~13_combout\ = (\alu|Mux29~12_combout\ & ((\actr|alu_ctr[0]~16_combout\) # (\alu|Mux29~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \actr|alu_ctr[0]~16_combout\,
	datab => \alu|Mux29~5_combout\,
	datad => \alu|Mux29~12_combout\,
	combout => \alu|Mux29~13_combout\);

-- Location: LCCOMB_X40_Y34_N18
\alu|Mux29~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux29~16_combout\ = (\alu|Mux29~2_combout\ & (\alu|Mux29~3_combout\)) # (!\alu|Mux29~2_combout\ & ((\alu|Mux29~3_combout\ & (!\alu|Mux29~15_combout\)) # (!\alu|Mux29~3_combout\ & ((\alu|Mux29~13_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001110110001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|Mux29~2_combout\,
	datab => \alu|Mux29~3_combout\,
	datac => \alu|Mux29~15_combout\,
	datad => \alu|Mux29~13_combout\,
	combout => \alu|Mux29~16_combout\);

-- Location: LCCOMB_X39_Y33_N12
\alu|Mux29~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux29~17_combout\ = (\alu|Mux29~4_combout\ & ((\alu|Mux29~16_combout\ & (\alu|a32~46_combout\)) # (!\alu|Mux29~16_combout\ & ((\alu|ShiftLeft0~28_combout\))))) # (!\alu|Mux29~4_combout\ & (((\alu|Mux29~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|a32~46_combout\,
	datab => \alu|Mux29~4_combout\,
	datac => \alu|ShiftLeft0~28_combout\,
	datad => \alu|Mux29~16_combout\,
	combout => \alu|Mux29~17_combout\);

-- Location: LCCOMB_X39_Y33_N28
\alu|Mux29~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux29~21_combout\ = (\actr|alu_ctr[3]~21_combout\ & (((\alu|Mux29~17_combout\)))) # (!\actr|alu_ctr[3]~21_combout\ & ((\alu|Mux25~2_combout\ & (\alu|Mux29~20_combout\)) # (!\alu|Mux25~2_combout\ & ((\alu|Mux29~17_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|Mux29~20_combout\,
	datab => \actr|alu_ctr[3]~21_combout\,
	datac => \alu|Mux25~2_combout\,
	datad => \alu|Mux29~17_combout\,
	combout => \alu|Mux29~21_combout\);

-- Location: LCCOMB_X39_Y33_N18
\pc|sr_out[2]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \pc|sr_out[2]~0_combout\ = (\ctr_mips|pstate.branch_ex_st~regout\ & (\regULA|sr_out\(2))) # (!\ctr_mips|pstate.branch_ex_st~regout\ & ((\alu|Mux29~21_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regULA|sr_out\(2),
	datab => \alu|Mux29~21_combout\,
	datad => \ctr_mips|pstate.branch_ex_st~regout\,
	combout => \pc|sr_out[2]~0_combout\);

-- Location: LCFF_X39_Y33_N19
\pc|sr_out[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \pc|sr_out[2]~0_combout\,
	sdata => \ir|sr_out\(0),
	sclr => \rst~combout\,
	sload => \ctr_mips|pstate.jump_ex_st~regout\,
	ena => \pc|sr_out[0]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pc|sr_out\(2));

-- Location: LCCOMB_X36_Y37_N18
\mux_mem|m_out[2]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux_mem|m_out[2]~0_combout\ = (\ctr_mips|pstate.readmem_st~regout\ & (((\regULA|sr_out\(4))))) # (!\ctr_mips|pstate.readmem_st~regout\ & ((\ctr_mips|pstate.writemem_st~regout\ & ((\regULA|sr_out\(4)))) # (!\ctr_mips|pstate.writemem_st~regout\ & 
-- (\pc|sr_out\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctr_mips|pstate.readmem_st~regout\,
	datab => \pc|sr_out\(2),
	datac => \ctr_mips|pstate.writemem_st~regout\,
	datad => \regULA|sr_out\(4),
	combout => \mux_mem|m_out[2]~0_combout\);

-- Location: LCFF_X38_Y35_N21
\ir|sr_out[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \mem|altsyncram_component|auto_generated|q_a\(1),
	sload => VCC,
	ena => \ctr_mips|ALT_INV_pstate.fetch_st~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ir|sr_out\(1));

-- Location: LCCOMB_X36_Y36_N14
\mux_store|m_out[16]~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux_store|m_out[16]~36_combout\ = (!\ir|sr_out\(1) & (\b_enab|byteenable[0]~8_combout\ & ((\ir|sr_out\(0)) # (!\mux_store|Equal1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir|sr_out\(0),
	datab => \ir|sr_out\(1),
	datac => \mux_store|Equal1~0_combout\,
	datad => \b_enab|byteenable[0]~8_combout\,
	combout => \mux_store|m_out[16]~36_combout\);

-- Location: LCCOMB_X36_Y36_N20
\mux_store|m_out[16]~37\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux_store|m_out[16]~37_combout\ = (\rgB|sr_out\(16) & (((\rgB|sr_out\(0) & \mux_store|m_out[16]~36_combout\)) # (!\b_enab|byteenable[0]~8_combout\))) # (!\rgB|sr_out\(16) & (\rgB|sr_out\(0) & (\mux_store|m_out[16]~36_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rgB|sr_out\(16),
	datab => \rgB|sr_out\(0),
	datac => \mux_store|m_out[16]~36_combout\,
	datad => \b_enab|byteenable[0]~8_combout\,
	combout => \mux_store|m_out[16]~37_combout\);

-- Location: LCCOMB_X36_Y32_N18
\ir|sr_out[19]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \ir|sr_out[19]~feeder_combout\ = \mem|altsyncram_component|auto_generated|q_a\(19)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mem|altsyncram_component|auto_generated|q_a\(19),
	combout => \ir|sr_out[19]~feeder_combout\);

-- Location: LCFF_X36_Y32_N19
\ir|sr_out[19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \ir|sr_out[19]~feeder_combout\,
	ena => \ctr_mips|ALT_INV_pstate.fetch_st~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ir|sr_out\(19));

-- Location: LCCOMB_X36_Y32_N20
\bcoreg|Equal1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \bcoreg|Equal1~0_combout\ = (!\ir|sr_out\(16) & (!\ir|sr_out\(19) & (!\ir|sr_out\(17) & !\ir|sr_out\(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir|sr_out\(16),
	datab => \ir|sr_out\(19),
	datac => \ir|sr_out\(17),
	datad => \ir|sr_out\(18),
	combout => \bcoreg|Equal1~0_combout\);

-- Location: LCCOMB_X36_Y32_N10
\bcoreg|Equal1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \bcoreg|Equal1~1_combout\ = (!\ir|sr_out\(20) & \bcoreg|Equal1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir|sr_out\(20),
	datac => \bcoreg|Equal1~0_combout\,
	combout => \bcoreg|Equal1~1_combout\);

-- Location: LCCOMB_X36_Y37_N30
\bcoreg|regB[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \bcoreg|regB[0]~0_combout\ = (!\bcoreg|Equal1~1_combout\ & ((\bcoreg|breg32~45\ & (\bcoreg|breg32_rtl_0_bypass\(11))) # (!\bcoreg|breg32~45\ & ((\bcoreg|breg32_rtl_1|auto_generated|ram_block1a0~portbdataout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcoreg|breg32_rtl_0_bypass\(11),
	datab => \bcoreg|Equal1~1_combout\,
	datac => \bcoreg|breg32~45\,
	datad => \bcoreg|breg32_rtl_1|auto_generated|ram_block1a0~portbdataout\,
	combout => \bcoreg|regB[0]~0_combout\);

-- Location: LCFF_X40_Y35_N9
\rgB|sr_out[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \bcoreg|regB[0]~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rgB|sr_out\(0));

-- Location: LCCOMB_X36_Y35_N0
\mux_store|m_out[0]~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux_store|m_out[0]~20_combout\ = (\rgB|sr_out\(0) & \mux_store|m_out[3]~63_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rgB|sr_out\(0),
	datad => \mux_store|m_out[3]~63_combout\,
	combout => \mux_store|m_out[0]~20_combout\);

-- Location: PIN_G15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\debug[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_debug(1),
	combout => \debug~combout\(1));

-- Location: PIN_H15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\debug[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_debug(0),
	combout => \debug~combout\(0));

-- Location: LCCOMB_X44_Y33_N28
\data~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \data~0_combout\ = (\debug~combout\(1) & (((\debug~combout\(0))))) # (!\debug~combout\(1) & ((\debug~combout\(0) & (\alu|Mux31~8_combout\)) # (!\debug~combout\(0) & ((\pc|sr_out\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|Mux31~8_combout\,
	datab => \debug~combout\(1),
	datac => \debug~combout\(0),
	datad => \pc|sr_out\(0),
	combout => \data~0_combout\);

-- Location: LCCOMB_X35_Y36_N24
\data~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \data~1_combout\ = (\data~0_combout\ & ((\mem|altsyncram_component|auto_generated|q_a\(0)) # ((!\debug~combout\(1))))) # (!\data~0_combout\ & (((\ir|sr_out\(0) & \debug~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|altsyncram_component|auto_generated|q_a\(0),
	datab => \ir|sr_out\(0),
	datac => \data~0_combout\,
	datad => \debug~combout\(1),
	combout => \data~1_combout\);

-- Location: LCCOMB_X35_Y35_N2
\data~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \data~2_combout\ = (\debug~combout\(0) & (\debug~combout\(1))) # (!\debug~combout\(0) & ((\debug~combout\(1) & (\ir|sr_out\(1))) # (!\debug~combout\(1) & ((\pc|sr_out\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debug~combout\(0),
	datab => \debug~combout\(1),
	datac => \ir|sr_out\(1),
	datad => \pc|sr_out\(1),
	combout => \data~2_combout\);

-- Location: LCCOMB_X35_Y35_N12
\data~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \data~3_combout\ = (\debug~combout\(0) & ((\data~2_combout\ & (\mem|altsyncram_component|auto_generated|q_a\(1))) # (!\data~2_combout\ & ((\alu|Mux30~14_combout\))))) # (!\debug~combout\(0) & (\data~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debug~combout\(0),
	datab => \data~2_combout\,
	datac => \mem|altsyncram_component|auto_generated|q_a\(1),
	datad => \alu|Mux30~14_combout\,
	combout => \data~3_combout\);

-- Location: LCCOMB_X39_Y33_N26
\data~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \data~4_combout\ = (\debug~combout\(1) & (((\debug~combout\(0))))) # (!\debug~combout\(1) & ((\debug~combout\(0) & (\alu|Mux29~21_combout\)) # (!\debug~combout\(0) & ((\pc|sr_out\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debug~combout\(1),
	datab => \alu|Mux29~21_combout\,
	datac => \debug~combout\(0),
	datad => \pc|sr_out\(2),
	combout => \data~4_combout\);

-- Location: LCCOMB_X47_Y35_N8
\data~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \data~5_combout\ = (\debug~combout\(1) & ((\data~4_combout\ & (\mem|altsyncram_component|auto_generated|q_a\(2))) # (!\data~4_combout\ & ((\ir|sr_out\(2)))))) # (!\debug~combout\(1) & (((\data~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|altsyncram_component|auto_generated|q_a\(2),
	datab => \debug~combout\(1),
	datac => \data~4_combout\,
	datad => \ir|sr_out\(2),
	combout => \data~5_combout\);

-- Location: LCCOMB_X39_Y33_N0
\data~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \data~6_combout\ = (\debug~combout\(1) & ((\debug~combout\(0)) # ((\ir|sr_out\(3))))) # (!\debug~combout\(1) & (!\debug~combout\(0) & (\pc|sr_out\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debug~combout\(1),
	datab => \debug~combout\(0),
	datac => \pc|sr_out\(3),
	datad => \ir|sr_out\(3),
	combout => \data~6_combout\);

-- Location: LCCOMB_X39_Y33_N10
\data~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \data~7_combout\ = (\data~6_combout\ & ((\mem|altsyncram_component|auto_generated|q_a\(3)) # ((!\debug~combout\(0))))) # (!\data~6_combout\ & (((\debug~combout\(0) & \alu|Mux28~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|altsyncram_component|auto_generated|q_a\(3),
	datab => \data~6_combout\,
	datac => \debug~combout\(0),
	datad => \alu|Mux28~12_combout\,
	combout => \data~7_combout\);

-- Location: LCCOMB_X47_Y35_N18
\data~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \data~8_combout\ = (\debug~combout\(0) & (((\alu|Mux27~combout\) # (\debug~combout\(1))))) # (!\debug~combout\(0) & (\pc|sr_out\(4) & ((!\debug~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debug~combout\(0),
	datab => \pc|sr_out\(4),
	datac => \alu|Mux27~combout\,
	datad => \debug~combout\(1),
	combout => \data~8_combout\);

-- Location: LCCOMB_X47_Y35_N4
\data~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \data~9_combout\ = (\data~8_combout\ & (((\mem|altsyncram_component|auto_generated|q_a\(4)) # (!\debug~combout\(1))))) # (!\data~8_combout\ & (\ir|sr_out\(4) & ((\debug~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir|sr_out\(4),
	datab => \data~8_combout\,
	datac => \mem|altsyncram_component|auto_generated|q_a\(4),
	datad => \debug~combout\(1),
	combout => \data~9_combout\);

-- Location: LCCOMB_X35_Y36_N10
\data~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \data~10_combout\ = (\debug~combout\(1) & ((\ir|sr_out\(5)) # ((\debug~combout\(0))))) # (!\debug~combout\(1) & (((!\debug~combout\(0) & \pc|sr_out\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debug~combout\(1),
	datab => \ir|sr_out\(5),
	datac => \debug~combout\(0),
	datad => \pc|sr_out\(5),
	combout => \data~10_combout\);

-- Location: LCCOMB_X35_Y36_N12
\data~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \data~11_combout\ = (\debug~combout\(0) & ((\data~10_combout\ & ((\mem|altsyncram_component|auto_generated|q_a\(5)))) # (!\data~10_combout\ & (\alu|Mux26~combout\)))) # (!\debug~combout\(0) & (((\data~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|Mux26~combout\,
	datab => \mem|altsyncram_component|auto_generated|q_a\(5),
	datac => \debug~combout\(0),
	datad => \data~10_combout\,
	combout => \data~11_combout\);

-- Location: LCCOMB_X45_Y36_N26
\data~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \data~12_combout\ = (\debug~combout\(0) & ((\alu|Mux25~combout\) # ((\debug~combout\(1))))) # (!\debug~combout\(0) & (((!\debug~combout\(1) & \pc|sr_out\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|Mux25~combout\,
	datab => \debug~combout\(0),
	datac => \debug~combout\(1),
	datad => \pc|sr_out\(6),
	combout => \data~12_combout\);

-- Location: LCCOMB_X47_Y35_N10
\data~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \data~13_combout\ = (\data~12_combout\ & ((\mem|altsyncram_component|auto_generated|q_a\(6)) # ((!\debug~combout\(1))))) # (!\data~12_combout\ & (((\ir|sr_out\(6) & \debug~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|altsyncram_component|auto_generated|q_a\(6),
	datab => \ir|sr_out\(6),
	datac => \data~12_combout\,
	datad => \debug~combout\(1),
	combout => \data~13_combout\);

-- Location: LCCOMB_X47_Y35_N20
\data~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \data~14_combout\ = (\debug~combout\(1) & ((\ir|sr_out\(7)) # ((\debug~combout\(0))))) # (!\debug~combout\(1) & (((\pc|sr_out\(7) & !\debug~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir|sr_out\(7),
	datab => \debug~combout\(1),
	datac => \pc|sr_out\(7),
	datad => \debug~combout\(0),
	combout => \data~14_combout\);

-- Location: LCCOMB_X47_Y35_N26
\data~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \data~15_combout\ = (\data~14_combout\ & ((\mem|altsyncram_component|auto_generated|q_a\(7)) # ((!\debug~combout\(0))))) # (!\data~14_combout\ & (((\alu|Mux24~combout\ & \debug~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data~14_combout\,
	datab => \mem|altsyncram_component|auto_generated|q_a\(7),
	datac => \alu|Mux24~combout\,
	datad => \debug~combout\(0),
	combout => \data~15_combout\);

-- Location: LCCOMB_X35_Y36_N2
\data~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \data~16_combout\ = (\debug~combout\(1) & (((\debug~combout\(0))))) # (!\debug~combout\(1) & ((\debug~combout\(0) & ((\alu|Mux23~12_combout\))) # (!\debug~combout\(0) & (\pc|sr_out\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debug~combout\(1),
	datab => \pc|sr_out\(8),
	datac => \debug~combout\(0),
	datad => \alu|Mux23~12_combout\,
	combout => \data~16_combout\);

-- Location: LCCOMB_X35_Y36_N4
\data~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \data~17_combout\ = (\debug~combout\(1) & ((\data~16_combout\ & ((\mem|altsyncram_component|auto_generated|q_a\(8)))) # (!\data~16_combout\ & (\ir|sr_out\(8))))) # (!\debug~combout\(1) & (\data~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debug~combout\(1),
	datab => \data~16_combout\,
	datac => \ir|sr_out\(8),
	datad => \mem|altsyncram_component|auto_generated|q_a\(8),
	combout => \data~17_combout\);

-- Location: LCCOMB_X36_Y32_N12
\data~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \data~18_combout\ = (\debug~combout\(1) & ((\ir|sr_out\(9)) # ((\debug~combout\(0))))) # (!\debug~combout\(1) & (((\pc|sr_out\(9) & !\debug~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debug~combout\(1),
	datab => \ir|sr_out\(9),
	datac => \pc|sr_out\(9),
	datad => \debug~combout\(0),
	combout => \data~18_combout\);

-- Location: LCCOMB_X36_Y32_N26
\data~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \data~19_combout\ = (\debug~combout\(0) & ((\data~18_combout\ & ((\mem|altsyncram_component|auto_generated|q_a\(9)))) # (!\data~18_combout\ & (\alu|Mux22~13_combout\)))) # (!\debug~combout\(0) & (((\data~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debug~combout\(0),
	datab => \alu|Mux22~13_combout\,
	datac => \mem|altsyncram_component|auto_generated|q_a\(9),
	datad => \data~18_combout\,
	combout => \data~19_combout\);

-- Location: LCCOMB_X47_Y35_N22
\data~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \data~20_combout\ = (\debug~combout\(0) & ((\debug~combout\(1)) # ((\alu|Mux21~11_combout\)))) # (!\debug~combout\(0) & (!\debug~combout\(1) & ((\pc|sr_out\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debug~combout\(0),
	datab => \debug~combout\(1),
	datac => \alu|Mux21~11_combout\,
	datad => \pc|sr_out\(10),
	combout => \data~20_combout\);

-- Location: LCCOMB_X47_Y35_N12
\data~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \data~21_combout\ = (\data~20_combout\ & ((\mem|altsyncram_component|auto_generated|q_a\(10)) # ((!\debug~combout\(1))))) # (!\data~20_combout\ & (((\ir|sr_out\(10) & \debug~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|altsyncram_component|auto_generated|q_a\(10),
	datab => \data~20_combout\,
	datac => \ir|sr_out\(10),
	datad => \debug~combout\(1),
	combout => \data~21_combout\);

-- Location: LCCOMB_X47_Y35_N14
\data~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \data~22_combout\ = (\debug~combout\(0) & (((\debug~combout\(1))))) # (!\debug~combout\(0) & ((\debug~combout\(1) & (\ir|sr_out\(11))) # (!\debug~combout\(1) & ((\pc|sr_out\(11))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debug~combout\(0),
	datab => \ir|sr_out\(11),
	datac => \pc|sr_out\(11),
	datad => \debug~combout\(1),
	combout => \data~22_combout\);

-- Location: LCCOMB_X47_Y35_N24
\data~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \data~23_combout\ = (\data~22_combout\ & ((\mem|altsyncram_component|auto_generated|q_a\(11)) # ((!\debug~combout\(0))))) # (!\data~22_combout\ & (((\alu|Mux20~11_combout\ & \debug~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|altsyncram_component|auto_generated|q_a\(11),
	datab => \alu|Mux20~11_combout\,
	datac => \data~22_combout\,
	datad => \debug~combout\(0),
	combout => \data~23_combout\);

-- Location: LCCOMB_X45_Y36_N10
\data~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \data~24_combout\ = (\debug~combout\(1) & (((\debug~combout\(0))))) # (!\debug~combout\(1) & ((\debug~combout\(0) & (\alu|Mux19~11_combout\)) # (!\debug~combout\(0) & ((\pc|sr_out\(12))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|Mux19~11_combout\,
	datab => \pc|sr_out\(12),
	datac => \debug~combout\(1),
	datad => \debug~combout\(0),
	combout => \data~24_combout\);

-- Location: LCCOMB_X45_Y36_N4
\data~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \data~25_combout\ = (\debug~combout\(1) & ((\data~24_combout\ & ((\mem|altsyncram_component|auto_generated|q_a\(12)))) # (!\data~24_combout\ & (\ir|sr_out\(12))))) # (!\debug~combout\(1) & (((\data~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir|sr_out\(12),
	datab => \mem|altsyncram_component|auto_generated|q_a\(12),
	datac => \debug~combout\(1),
	datad => \data~24_combout\,
	combout => \data~25_combout\);

-- Location: LCCOMB_X38_Y34_N26
\data~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \data~26_combout\ = (\debug~combout\(0) & (((\debug~combout\(1))))) # (!\debug~combout\(0) & ((\debug~combout\(1) & (\ir|sr_out\(13))) # (!\debug~combout\(1) & ((\pc|sr_out\(13))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir|sr_out\(13),
	datab => \pc|sr_out\(13),
	datac => \debug~combout\(0),
	datad => \debug~combout\(1),
	combout => \data~26_combout\);

-- Location: LCCOMB_X38_Y34_N24
\data~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \data~27_combout\ = (\debug~combout\(0) & ((\data~26_combout\ & ((\mem|altsyncram_component|auto_generated|q_a\(13)))) # (!\data~26_combout\ & (\alu|Mux18~11_combout\)))) # (!\debug~combout\(0) & (\data~26_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debug~combout\(0),
	datab => \data~26_combout\,
	datac => \alu|Mux18~11_combout\,
	datad => \mem|altsyncram_component|auto_generated|q_a\(13),
	combout => \data~27_combout\);

-- Location: LCCOMB_X35_Y35_N10
\data~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \data~28_combout\ = (\debug~combout\(1) & (((\debug~combout\(0))))) # (!\debug~combout\(1) & ((\debug~combout\(0) & (\alu|Mux17~11_combout\)) # (!\debug~combout\(0) & ((\pc|sr_out\(14))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|Mux17~11_combout\,
	datab => \debug~combout\(1),
	datac => \pc|sr_out\(14),
	datad => \debug~combout\(0),
	combout => \data~28_combout\);

-- Location: LCCOMB_X35_Y35_N20
\data~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \data~29_combout\ = (\data~28_combout\ & ((\mem|altsyncram_component|auto_generated|q_a\(14)) # ((!\debug~combout\(1))))) # (!\data~28_combout\ & (((\debug~combout\(1) & \ir|sr_out\(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data~28_combout\,
	datab => \mem|altsyncram_component|auto_generated|q_a\(14),
	datac => \debug~combout\(1),
	datad => \ir|sr_out\(14),
	combout => \data~29_combout\);

-- Location: LCCOMB_X35_Y35_N18
\data~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \data~30_combout\ = (\debug~combout\(1) & (((\ir|sr_out\(15)) # (\debug~combout\(0))))) # (!\debug~combout\(1) & (\pc|sr_out\(15) & ((!\debug~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|sr_out\(15),
	datab => \ir|sr_out\(15),
	datac => \debug~combout\(1),
	datad => \debug~combout\(0),
	combout => \data~30_combout\);

-- Location: LCCOMB_X35_Y35_N0
\data~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \data~31_combout\ = (\data~30_combout\ & ((\mem|altsyncram_component|auto_generated|q_a\(15)) # ((!\debug~combout\(0))))) # (!\data~30_combout\ & (((\alu|Mux16~13_combout\ & \debug~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|altsyncram_component|auto_generated|q_a\(15),
	datab => \data~30_combout\,
	datac => \alu|Mux16~13_combout\,
	datad => \debug~combout\(0),
	combout => \data~31_combout\);

-- Location: LCCOMB_X42_Y32_N12
\pc|sr_out[16]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \pc|sr_out[16]~14_combout\ = (\ctr_mips|pstate.branch_ex_st~regout\ & (\regULA|sr_out\(16))) # (!\ctr_mips|pstate.branch_ex_st~regout\ & ((\alu|Mux15~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regULA|sr_out\(16),
	datab => \ctr_mips|pstate.branch_ex_st~regout\,
	datad => \alu|Mux15~8_combout\,
	combout => \pc|sr_out[16]~14_combout\);

-- Location: LCFF_X42_Y32_N13
\pc|sr_out[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \pc|sr_out[16]~14_combout\,
	sdata => \ir|sr_out\(14),
	sclr => \rst~combout\,
	sload => \ctr_mips|pstate.jump_ex_st~regout\,
	ena => \pc|sr_out[0]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pc|sr_out\(16));

-- Location: LCCOMB_X36_Y31_N28
\data~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \data~32_combout\ = (\debug~combout\(1) & (((\debug~combout\(0))))) # (!\debug~combout\(1) & ((\debug~combout\(0) & (\alu|Mux15~8_combout\)) # (!\debug~combout\(0) & ((\pc|sr_out\(16))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|Mux15~8_combout\,
	datab => \debug~combout\(1),
	datac => \pc|sr_out\(16),
	datad => \debug~combout\(0),
	combout => \data~32_combout\);

-- Location: LCCOMB_X36_Y31_N2
\data~33\ : cycloneii_lcell_comb
-- Equation(s):
-- \data~33_combout\ = (\data~32_combout\ & ((\mem|altsyncram_component|auto_generated|q_a\(16)) # ((!\debug~combout\(1))))) # (!\data~32_combout\ & (((\debug~combout\(1) & \ir|sr_out\(16)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|altsyncram_component|auto_generated|q_a\(16),
	datab => \data~32_combout\,
	datac => \debug~combout\(1),
	datad => \ir|sr_out\(16),
	combout => \data~33_combout\);

-- Location: LCCOMB_X36_Y32_N14
\data~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \data~34_combout\ = (\debug~combout\(0) & (((\debug~combout\(1))))) # (!\debug~combout\(0) & ((\debug~combout\(1) & (\ir|sr_out\(17))) # (!\debug~combout\(1) & ((\pc|sr_out\(17))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debug~combout\(0),
	datab => \ir|sr_out\(17),
	datac => \pc|sr_out\(17),
	datad => \debug~combout\(1),
	combout => \data~34_combout\);

-- Location: LCCOMB_X36_Y32_N0
\data~35\ : cycloneii_lcell_comb
-- Equation(s):
-- \data~35_combout\ = (\data~34_combout\ & (((\mem|altsyncram_component|auto_generated|q_a\(17)) # (!\debug~combout\(0))))) # (!\data~34_combout\ & (\alu|Mux14~9_combout\ & ((\debug~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|Mux14~9_combout\,
	datab => \mem|altsyncram_component|auto_generated|q_a\(17),
	datac => \data~34_combout\,
	datad => \debug~combout\(0),
	combout => \data~35_combout\);

-- Location: LCCOMB_X36_Y31_N12
\data~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \data~36_combout\ = (\debug~combout\(1) & (((\debug~combout\(0))))) # (!\debug~combout\(1) & ((\debug~combout\(0) & (\alu|Mux13~7_combout\)) # (!\debug~combout\(0) & ((\pc|sr_out\(18))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|Mux13~7_combout\,
	datab => \debug~combout\(1),
	datac => \pc|sr_out\(18),
	datad => \debug~combout\(0),
	combout => \data~36_combout\);

-- Location: LCCOMB_X35_Y31_N0
\data~37\ : cycloneii_lcell_comb
-- Equation(s):
-- \data~37_combout\ = (\debug~combout\(1) & ((\data~36_combout\ & ((\mem|altsyncram_component|auto_generated|q_a\(18)))) # (!\data~36_combout\ & (\ir|sr_out\(18))))) # (!\debug~combout\(1) & (\data~36_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debug~combout\(1),
	datab => \data~36_combout\,
	datac => \ir|sr_out\(18),
	datad => \mem|altsyncram_component|auto_generated|q_a\(18),
	combout => \data~37_combout\);

-- Location: LCCOMB_X39_Y32_N12
\pc|sr_out[19]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \pc|sr_out[19]~11_combout\ = (\ctr_mips|pstate.branch_ex_st~regout\ & ((\regULA|sr_out\(19)))) # (!\ctr_mips|pstate.branch_ex_st~regout\ & (\alu|Mux12~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|Mux12~7_combout\,
	datab => \regULA|sr_out\(19),
	datad => \ctr_mips|pstate.branch_ex_st~regout\,
	combout => \pc|sr_out[19]~11_combout\);

-- Location: LCFF_X39_Y32_N13
\pc|sr_out[19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \pc|sr_out[19]~11_combout\,
	sdata => \ir|sr_out\(17),
	sclr => \rst~combout\,
	sload => \ctr_mips|pstate.jump_ex_st~regout\,
	ena => \pc|sr_out[0]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pc|sr_out\(19));

-- Location: LCCOMB_X36_Y32_N4
\data~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \data~38_combout\ = (\debug~combout\(1) & ((\ir|sr_out\(19)) # ((\debug~combout\(0))))) # (!\debug~combout\(1) & (((\pc|sr_out\(19) & !\debug~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debug~combout\(1),
	datab => \ir|sr_out\(19),
	datac => \pc|sr_out\(19),
	datad => \debug~combout\(0),
	combout => \data~38_combout\);

-- Location: LCCOMB_X36_Y32_N22
\data~39\ : cycloneii_lcell_comb
-- Equation(s):
-- \data~39_combout\ = (\debug~combout\(0) & ((\data~38_combout\ & ((\mem|altsyncram_component|auto_generated|q_a\(19)))) # (!\data~38_combout\ & (\alu|Mux12~7_combout\)))) # (!\debug~combout\(0) & (\data~38_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debug~combout\(0),
	datab => \data~38_combout\,
	datac => \alu|Mux12~7_combout\,
	datad => \mem|altsyncram_component|auto_generated|q_a\(19),
	combout => \data~39_combout\);

-- Location: LCCOMB_X40_Y33_N24
\pc|sr_out[20]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \pc|sr_out[20]~10_combout\ = (\ctr_mips|pstate.branch_ex_st~regout\ & (\regULA|sr_out\(20))) # (!\ctr_mips|pstate.branch_ex_st~regout\ & ((\alu|Mux11~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctr_mips|pstate.branch_ex_st~regout\,
	datab => \regULA|sr_out\(20),
	datad => \alu|Mux11~7_combout\,
	combout => \pc|sr_out[20]~10_combout\);

-- Location: LCFF_X40_Y33_N25
\pc|sr_out[20]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \pc|sr_out[20]~10_combout\,
	sdata => \ir|sr_out\(18),
	sclr => \rst~combout\,
	sload => \ctr_mips|pstate.jump_ex_st~regout\,
	ena => \pc|sr_out[0]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pc|sr_out\(20));

-- Location: LCCOMB_X36_Y31_N10
\data~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \data~40_combout\ = (\debug~combout\(0) & ((\debug~combout\(1)) # ((\alu|Mux11~7_combout\)))) # (!\debug~combout\(0) & (!\debug~combout\(1) & ((\pc|sr_out\(20)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debug~combout\(0),
	datab => \debug~combout\(1),
	datac => \alu|Mux11~7_combout\,
	datad => \pc|sr_out\(20),
	combout => \data~40_combout\);

-- Location: LCCOMB_X36_Y31_N0
\data~41\ : cycloneii_lcell_comb
-- Equation(s):
-- \data~41_combout\ = (\debug~combout\(1) & ((\data~40_combout\ & (\mem|altsyncram_component|auto_generated|q_a\(20))) # (!\data~40_combout\ & ((\ir|sr_out\(20)))))) # (!\debug~combout\(1) & (((\data~40_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|altsyncram_component|auto_generated|q_a\(20),
	datab => \debug~combout\(1),
	datac => \ir|sr_out\(20),
	datad => \data~40_combout\,
	combout => \data~41_combout\);

-- Location: LCCOMB_X42_Y31_N16
\pc|sr_out[21]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \pc|sr_out[21]~9_combout\ = (\ctr_mips|pstate.branch_ex_st~regout\ & ((\regULA|sr_out\(21)))) # (!\ctr_mips|pstate.branch_ex_st~regout\ & (\alu|Mux10~19_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|Mux10~19_combout\,
	datab => \ctr_mips|pstate.branch_ex_st~regout\,
	datad => \regULA|sr_out\(21),
	combout => \pc|sr_out[21]~9_combout\);

-- Location: LCFF_X42_Y31_N17
\pc|sr_out[21]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \pc|sr_out[21]~9_combout\,
	sdata => \ir|sr_out\(19),
	sclr => \rst~combout\,
	sload => \ctr_mips|pstate.jump_ex_st~regout\,
	ena => \pc|sr_out[0]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pc|sr_out\(21));

-- Location: LCCOMB_X36_Y31_N24
\data~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \data~42_combout\ = (\debug~combout\(0) & (\debug~combout\(1))) # (!\debug~combout\(0) & ((\debug~combout\(1) & ((\ir|sr_out\(21)))) # (!\debug~combout\(1) & (\pc|sr_out\(21)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debug~combout\(0),
	datab => \debug~combout\(1),
	datac => \pc|sr_out\(21),
	datad => \ir|sr_out\(21),
	combout => \data~42_combout\);

-- Location: LCCOMB_X36_Y31_N14
\data~43\ : cycloneii_lcell_comb
-- Equation(s):
-- \data~43_combout\ = (\data~42_combout\ & ((\mem|altsyncram_component|auto_generated|q_a\(21)) # ((!\debug~combout\(0))))) # (!\data~42_combout\ & (((\alu|Mux10~19_combout\ & \debug~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data~42_combout\,
	datab => \mem|altsyncram_component|auto_generated|q_a\(21),
	datac => \alu|Mux10~19_combout\,
	datad => \debug~combout\(0),
	combout => \data~43_combout\);

-- Location: LCCOMB_X35_Y35_N22
\data~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \data~44_combout\ = (\debug~combout\(0) & (((\debug~combout\(1)) # (\alu|Mux9~10_combout\)))) # (!\debug~combout\(0) & (\pc|sr_out\(22) & (!\debug~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debug~combout\(0),
	datab => \pc|sr_out\(22),
	datac => \debug~combout\(1),
	datad => \alu|Mux9~10_combout\,
	combout => \data~44_combout\);

-- Location: LCCOMB_X35_Y35_N8
\data~45\ : cycloneii_lcell_comb
-- Equation(s):
-- \data~45_combout\ = (\data~44_combout\ & (((\mem|altsyncram_component|auto_generated|q_a\(22)) # (!\debug~combout\(1))))) # (!\data~44_combout\ & (\ir|sr_out\(22) & (\debug~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir|sr_out\(22),
	datab => \data~44_combout\,
	datac => \debug~combout\(1),
	datad => \mem|altsyncram_component|auto_generated|q_a\(22),
	combout => \data~45_combout\);

-- Location: LCCOMB_X35_Y34_N0
\data~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \data~46_combout\ = (\debug~combout\(1) & ((\debug~combout\(0)) # ((\ir|sr_out\(23))))) # (!\debug~combout\(1) & (!\debug~combout\(0) & ((\pc|sr_out\(23)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debug~combout\(1),
	datab => \debug~combout\(0),
	datac => \ir|sr_out\(23),
	datad => \pc|sr_out\(23),
	combout => \data~46_combout\);

-- Location: LCCOMB_X35_Y34_N14
\data~47\ : cycloneii_lcell_comb
-- Equation(s):
-- \data~47_combout\ = (\data~46_combout\ & (((\mem|altsyncram_component|auto_generated|q_a\(23)) # (!\debug~combout\(0))))) # (!\data~46_combout\ & (\alu|Mux8~8_combout\ & (\debug~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|Mux8~8_combout\,
	datab => \data~46_combout\,
	datac => \debug~combout\(0),
	datad => \mem|altsyncram_component|auto_generated|q_a\(23),
	combout => \data~47_combout\);

-- Location: LCCOMB_X47_Y35_N6
\data~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \data~48_combout\ = (\debug~combout\(1) & (((\debug~combout\(0))))) # (!\debug~combout\(1) & ((\debug~combout\(0) & (\alu|Mux7~combout\)) # (!\debug~combout\(0) & ((\pc|sr_out\(24))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|Mux7~combout\,
	datab => \debug~combout\(1),
	datac => \pc|sr_out\(24),
	datad => \debug~combout\(0),
	combout => \data~48_combout\);

-- Location: LCCOMB_X35_Y35_N6
\data~49\ : cycloneii_lcell_comb
-- Equation(s):
-- \data~49_combout\ = (\data~48_combout\ & ((\mem|altsyncram_component|auto_generated|q_a\(24)) # ((!\debug~combout\(1))))) # (!\data~48_combout\ & (((\debug~combout\(1) & \ir|sr_out\(24)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|altsyncram_component|auto_generated|q_a\(24),
	datab => \data~48_combout\,
	datac => \debug~combout\(1),
	datad => \ir|sr_out\(24),
	combout => \data~49_combout\);

-- Location: LCCOMB_X35_Y35_N24
\data~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \data~50_combout\ = (\debug~combout\(0) & (((\debug~combout\(1))))) # (!\debug~combout\(0) & ((\debug~combout\(1) & (\ir|sr_out\(25))) # (!\debug~combout\(1) & ((\pc|sr_out\(25))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debug~combout\(0),
	datab => \ir|sr_out\(25),
	datac => \debug~combout\(1),
	datad => \pc|sr_out\(25),
	combout => \data~50_combout\);

-- Location: LCCOMB_X38_Y39_N0
\data~51\ : cycloneii_lcell_comb
-- Equation(s):
-- \data~51_combout\ = (\data~50_combout\ & ((\mem|altsyncram_component|auto_generated|q_a\(25)) # ((!\debug~combout\(0))))) # (!\data~50_combout\ & (((\debug~combout\(0) & \alu|Mux6~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|altsyncram_component|auto_generated|q_a\(25),
	datab => \data~50_combout\,
	datac => \debug~combout\(0),
	datad => \alu|Mux6~combout\,
	combout => \data~51_combout\);

-- Location: LCCOMB_X43_Y36_N4
\bcoreg|regA[26]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \bcoreg|regA[26]~5_combout\ = (!\bcoreg|Equal0~1_combout\ & ((\bcoreg|breg32~combout\ & (\bcoreg|breg32_rtl_1_bypass\(63))) # (!\bcoreg|breg32~combout\ & ((\bcoreg|breg32_rtl_0|auto_generated|ram_block1a26\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcoreg|breg32_rtl_1_bypass\(63),
	datab => \bcoreg|breg32_rtl_0|auto_generated|ram_block1a26\,
	datac => \bcoreg|Equal0~1_combout\,
	datad => \bcoreg|breg32~combout\,
	combout => \bcoreg|regA[26]~5_combout\);

-- Location: LCFF_X43_Y36_N5
\rgA|sr_out[26]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \bcoreg|regA[26]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rgA|sr_out\(26));

-- Location: LCCOMB_X43_Y36_N12
\alu|a32~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|a32~42_combout\ = \mux_ulaB|m_out[26]~9_combout\ $ (((\ctr_mips|WideOr0~combout\ & (\rgA|sr_out\(26))) # (!\ctr_mips|WideOr0~combout\ & ((\pc|sr_out\(26))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010011111011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctr_mips|WideOr0~combout\,
	datab => \rgA|sr_out\(26),
	datac => \pc|sr_out\(26),
	datad => \mux_ulaB|m_out[26]~9_combout\,
	combout => \alu|a32~42_combout\);

-- Location: LCCOMB_X43_Y36_N6
\mux_ulaA|m_out[26]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux_ulaA|m_out[26]~5_combout\ = (\ctr_mips|WideOr0~combout\ & (\rgA|sr_out\(26))) # (!\ctr_mips|WideOr0~combout\ & ((\pc|sr_out\(26))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rgA|sr_out\(26),
	datac => \pc|sr_out\(26),
	datad => \ctr_mips|WideOr0~combout\,
	combout => \mux_ulaA|m_out[26]~5_combout\);

-- Location: LCCOMB_X43_Y32_N2
\alu|Mux5~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux5~2_combout\ = (\actr|alu_ctr[0]~16_combout\ & (\actr|alu_ctr[1]~14_combout\ & ((\mux_ulaB|m_out[26]~9_combout\) # (\mux_ulaA|m_out[26]~5_combout\)))) # (!\actr|alu_ctr[0]~16_combout\ & (((\mux_ulaB|m_out[26]~9_combout\ & 
-- \mux_ulaA|m_out[26]~5_combout\)) # (!\actr|alu_ctr[1]~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \actr|alu_ctr[0]~16_combout\,
	datab => \mux_ulaB|m_out[26]~9_combout\,
	datac => \mux_ulaA|m_out[26]~5_combout\,
	datad => \actr|alu_ctr[1]~14_combout\,
	combout => \alu|Mux5~2_combout\);

-- Location: LCCOMB_X43_Y32_N20
\alu|Mux5~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux5~3_combout\ = (\alu|Mux10~9_combout\ & ((\alu|Mux5~2_combout\ & ((\alu|Add1~52_combout\))) # (!\alu|Mux5~2_combout\ & (\alu|ShiftRight1~75_combout\)))) # (!\alu|Mux10~9_combout\ & (\alu|Mux5~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|Mux10~9_combout\,
	datab => \alu|Mux5~2_combout\,
	datac => \alu|ShiftRight1~75_combout\,
	datad => \alu|Add1~52_combout\,
	combout => \alu|Mux5~3_combout\);

-- Location: LCCOMB_X43_Y32_N10
\alu|Mux5~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux5~4_combout\ = (\alu|Mux10~10_combout\ & (\alu|Mux29~9_combout\ & ((\alu|tmp[26]~52_combout\)))) # (!\alu|Mux10~10_combout\ & (((\alu|Mux5~3_combout\)) # (!\alu|Mux29~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100101010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|Mux10~10_combout\,
	datab => \alu|Mux29~9_combout\,
	datac => \alu|Mux5~3_combout\,
	datad => \alu|tmp[26]~52_combout\,
	combout => \alu|Mux5~4_combout\);

-- Location: LCCOMB_X43_Y32_N28
\alu|Mux5~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux5~5_combout\ = (\alu|Mux29~5_combout\ & (((\alu|Mux5~4_combout\)))) # (!\alu|Mux29~5_combout\ & ((\alu|Mux5~4_combout\ & ((\alu|ShiftRight0~81_combout\))) # (!\alu|Mux5~4_combout\ & (\mux_ulaB|m_out[31]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|Mux29~5_combout\,
	datab => \mux_ulaB|m_out[31]~4_combout\,
	datac => \alu|ShiftRight0~81_combout\,
	datad => \alu|Mux5~4_combout\,
	combout => \alu|Mux5~5_combout\);

-- Location: LCCOMB_X43_Y32_N22
\alu|Mux5~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux5~6_combout\ = (\alu|Mux5~5_combout\ & ((\alu|Mux29~5_combout\) # (\actr|alu_ctr[0]~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|Mux29~5_combout\,
	datab => \actr|alu_ctr[0]~16_combout\,
	datad => \alu|Mux5~5_combout\,
	combout => \alu|Mux5~6_combout\);

-- Location: LCCOMB_X43_Y32_N0
\alu|Mux5~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux5~8_combout\ = (\alu|Mux29~2_combout\ & (((\alu|Mux29~3_combout\)))) # (!\alu|Mux29~2_combout\ & ((\alu|Mux29~3_combout\ & (!\alu|Mux5~7_combout\)) # (!\alu|Mux29~3_combout\ & ((\alu|Mux5~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001111010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|Mux5~7_combout\,
	datab => \alu|Mux29~2_combout\,
	datac => \alu|Mux29~3_combout\,
	datad => \alu|Mux5~6_combout\,
	combout => \alu|Mux5~8_combout\);

-- Location: LCCOMB_X43_Y32_N14
\alu|Mux5\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux5~combout\ = (\alu|Mux7~12_combout\ & ((\alu|Mux5~8_combout\ & ((\alu|a32~42_combout\))) # (!\alu|Mux5~8_combout\ & (\alu|Mux5~1_combout\)))) # (!\alu|Mux7~12_combout\ & (((\alu|Mux5~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|Mux5~1_combout\,
	datab => \alu|a32~42_combout\,
	datac => \alu|Mux7~12_combout\,
	datad => \alu|Mux5~8_combout\,
	combout => \alu|Mux5~combout\);

-- Location: LCCOMB_X43_Y36_N8
\pc|sr_out[26]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \pc|sr_out[26]~4_combout\ = (\ctr_mips|pstate.branch_ex_st~regout\ & (\regULA|sr_out\(26))) # (!\ctr_mips|pstate.branch_ex_st~regout\ & ((\alu|Mux5~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regULA|sr_out\(26),
	datab => \alu|Mux5~combout\,
	datad => \ctr_mips|pstate.branch_ex_st~regout\,
	combout => \pc|sr_out[26]~4_combout\);

-- Location: LCFF_X43_Y36_N9
\pc|sr_out[26]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \pc|sr_out[26]~4_combout\,
	sdata => \ir|sr_out\(24),
	sclr => \rst~combout\,
	sload => \ctr_mips|pstate.jump_ex_st~regout\,
	ena => \pc|sr_out[0]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pc|sr_out\(26));

-- Location: LCCOMB_X35_Y36_N26
\data~52\ : cycloneii_lcell_comb
-- Equation(s):
-- \data~52_combout\ = (\debug~combout\(1) & (((\debug~combout\(0))))) # (!\debug~combout\(1) & ((\debug~combout\(0) & ((\alu|Mux5~combout\))) # (!\debug~combout\(0) & (\pc|sr_out\(26)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debug~combout\(1),
	datab => \pc|sr_out\(26),
	datac => \debug~combout\(0),
	datad => \alu|Mux5~combout\,
	combout => \data~52_combout\);

-- Location: LCCOMB_X35_Y35_N26
\data~53\ : cycloneii_lcell_comb
-- Equation(s):
-- \data~53_combout\ = (\data~52_combout\ & ((\mem|altsyncram_component|auto_generated|q_a\(26)) # ((!\debug~combout\(1))))) # (!\data~52_combout\ & (((\debug~combout\(1) & \ir|sr_out\(26)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data~52_combout\,
	datab => \mem|altsyncram_component|auto_generated|q_a\(26),
	datac => \debug~combout\(1),
	datad => \ir|sr_out\(26),
	combout => \data~53_combout\);

-- Location: LCCOMB_X36_Y32_N28
\data~54\ : cycloneii_lcell_comb
-- Equation(s):
-- \data~54_combout\ = (\debug~combout\(0) & (((\debug~combout\(1))))) # (!\debug~combout\(0) & ((\debug~combout\(1) & (\ir|sr_out\(27))) # (!\debug~combout\(1) & ((\pc|sr_out\(27))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debug~combout\(0),
	datab => \ir|sr_out\(27),
	datac => \pc|sr_out\(27),
	datad => \debug~combout\(1),
	combout => \data~54_combout\);

-- Location: LCCOMB_X36_Y32_N30
\data~55\ : cycloneii_lcell_comb
-- Equation(s):
-- \data~55_combout\ = (\data~54_combout\ & ((\mem|altsyncram_component|auto_generated|q_a\(27)) # ((!\debug~combout\(0))))) # (!\data~54_combout\ & (((\alu|Mux4~combout\ & \debug~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|altsyncram_component|auto_generated|q_a\(27),
	datab => \data~54_combout\,
	datac => \alu|Mux4~combout\,
	datad => \debug~combout\(0),
	combout => \data~55_combout\);

-- Location: LCCOMB_X44_Y33_N30
\data~56\ : cycloneii_lcell_comb
-- Equation(s):
-- \data~56_combout\ = (\debug~combout\(0) & (((\alu|Mux3~10_combout\) # (\debug~combout\(1))))) # (!\debug~combout\(0) & (\pc|sr_out\(28) & ((!\debug~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|sr_out\(28),
	datab => \debug~combout\(0),
	datac => \alu|Mux3~10_combout\,
	datad => \debug~combout\(1),
	combout => \data~56_combout\);

-- Location: LCCOMB_X44_Y33_N8
\data~57\ : cycloneii_lcell_comb
-- Equation(s):
-- \data~57_combout\ = (\data~56_combout\ & ((\mem|altsyncram_component|auto_generated|q_a\(28)) # ((!\debug~combout\(1))))) # (!\data~56_combout\ & (((\debug~combout\(1) & \ir|sr_out\(28)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|altsyncram_component|auto_generated|q_a\(28),
	datab => \data~56_combout\,
	datac => \debug~combout\(1),
	datad => \ir|sr_out\(28),
	combout => \data~57_combout\);

-- Location: LCCOMB_X38_Y34_N30
\data~58\ : cycloneii_lcell_comb
-- Equation(s):
-- \data~58_combout\ = (\debug~combout\(1) & (((\debug~combout\(0)) # (\ir|sr_out\(29))))) # (!\debug~combout\(1) & (\pc|sr_out\(29) & (!\debug~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debug~combout\(1),
	datab => \pc|sr_out\(29),
	datac => \debug~combout\(0),
	datad => \ir|sr_out\(29),
	combout => \data~58_combout\);

-- Location: LCCOMB_X38_Y34_N20
\data~59\ : cycloneii_lcell_comb
-- Equation(s):
-- \data~59_combout\ = (\debug~combout\(0) & ((\data~58_combout\ & (\mem|altsyncram_component|auto_generated|q_a\(29))) # (!\data~58_combout\ & ((\alu|Mux2~13_combout\))))) # (!\debug~combout\(0) & (\data~58_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debug~combout\(0),
	datab => \data~58_combout\,
	datac => \mem|altsyncram_component|auto_generated|q_a\(29),
	datad => \alu|Mux2~13_combout\,
	combout => \data~59_combout\);

-- Location: LCCOMB_X42_Y33_N10
\data~60\ : cycloneii_lcell_comb
-- Equation(s):
-- \data~60_combout\ = (\debug~combout\(1) & (((\debug~combout\(0))))) # (!\debug~combout\(1) & ((\debug~combout\(0) & (\alu|Mux1~10_combout\)) # (!\debug~combout\(0) & ((\pc|sr_out\(30))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debug~combout\(1),
	datab => \alu|Mux1~10_combout\,
	datac => \debug~combout\(0),
	datad => \pc|sr_out\(30),
	combout => \data~60_combout\);

-- Location: LCCOMB_X42_Y33_N12
\data~61\ : cycloneii_lcell_comb
-- Equation(s):
-- \data~61_combout\ = (\debug~combout\(1) & ((\data~60_combout\ & ((\mem|altsyncram_component|auto_generated|q_a\(30)))) # (!\data~60_combout\ & (\ir|sr_out\(30))))) # (!\debug~combout\(1) & (((\data~60_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debug~combout\(1),
	datab => \ir|sr_out\(30),
	datac => \mem|altsyncram_component|auto_generated|q_a\(30),
	datad => \data~60_combout\,
	combout => \data~61_combout\);

-- Location: LCCOMB_X44_Y33_N22
\data~62\ : cycloneii_lcell_comb
-- Equation(s):
-- \data~62_combout\ = (\debug~combout\(1) & (((\debug~combout\(0)) # (\ir|sr_out\(31))))) # (!\debug~combout\(1) & (\pc|sr_out\(31) & (!\debug~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|sr_out\(31),
	datab => \debug~combout\(1),
	datac => \debug~combout\(0),
	datad => \ir|sr_out\(31),
	combout => \data~62_combout\);

-- Location: LCCOMB_X44_Y33_N4
\data~63\ : cycloneii_lcell_comb
-- Equation(s):
-- \data~63_combout\ = (\debug~combout\(0) & ((\data~62_combout\ & (\mem|altsyncram_component|auto_generated|q_a\(31))) # (!\data~62_combout\ & ((\alu|Mux0~8_combout\))))) # (!\debug~combout\(0) & (((\data~62_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|altsyncram_component|auto_generated|q_a\(31),
	datab => \alu|Mux0~8_combout\,
	datac => \debug~combout\(0),
	datad => \data~62_combout\,
	combout => \data~63_combout\);

-- Location: PIN_A12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\data[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \data~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_data(0));

-- Location: PIN_B11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\data[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \data~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_data(1));

-- Location: PIN_B15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\data[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \data~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_data(2));

-- Location: PIN_B13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\data[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \data~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_data(3));

-- Location: PIN_D15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\data[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \data~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_data(4));

-- Location: PIN_J13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\data[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \data~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_data(5));

-- Location: PIN_AJ14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\data[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \data~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_data(6));

-- Location: PIN_C16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\data[7]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \data~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_data(7));

-- Location: PIN_F13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\data[8]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \data~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_data(8));

-- Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\data[9]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \data~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_data(9));

-- Location: PIN_B16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\data[10]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \data~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_data(10));

-- Location: PIN_B14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\data[11]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \data~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_data(11));

-- Location: PIN_C15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\data[12]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \data~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_data(12));

-- Location: PIN_AJ12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\data[13]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \data~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_data(13));

-- Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\data[14]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \data~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_data(14));

-- Location: PIN_C12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\data[15]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \data~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_data(15));

-- Location: PIN_E14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\data[16]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \data~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_data(16));

-- Location: PIN_N3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\data[17]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \data~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_data(17));

-- Location: PIN_E13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\data[18]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \data~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_data(18));

-- Location: PIN_H14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\data[19]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \data~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_data(19));

-- Location: PIN_B12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\data[20]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \data~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_data(20));

-- Location: PIN_AH12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\data[21]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \data~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_data(21));

-- Location: PIN_G13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\data[22]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \data~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_data(22));

-- Location: PIN_D12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\data[23]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \data~47_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_data(23));

-- Location: PIN_H13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\data[24]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \data~49_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_data(24));

-- Location: PIN_C14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\data[25]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \data~51_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_data(25));

-- Location: PIN_K1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\data[26]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \data~53_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_data(26));

-- Location: PIN_G14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\data[27]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \data~55_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_data(27));

-- Location: PIN_D14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\data[28]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \data~57_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_data(28));

-- Location: PIN_AK12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\data[29]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \data~59_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_data(29));

-- Location: PIN_A14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\data[30]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \data~61_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_data(30));

-- Location: PIN_E15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\data[31]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \data~63_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_data(31));
END structure;


