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
-- PROGRAM "Quartus II 32-bit"
-- VERSION "Version 13.1.0 Build 162 10/23/2013 SJ Web Edition"

-- DATE "06/13/2023 10:32:34"

-- 
-- Device: Altera EP3C40Q240C8 Package PQFP240
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIII;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIII.CYCLONEIII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	setup_control IS
    PORT (
	CLOCK_50 : IN std_logic;
	GPMC_DATA : INOUT std_logic_vector(15 DOWNTO 0);
	GPMC_ADDR : IN std_logic_vector(10 DOWNTO 1);
	GPMC_nPWE : IN std_logic;
	GPMC_nOE : IN std_logic;
	GPMC_FPGA_IRQ : IN std_logic;
	GPMC_nCS6 : IN std_logic;
	GPMC_CLK : IN std_logic
	);
END setup_control;

-- Design Ports Information
-- GPMC_FPGA_IRQ	=>  Location: PIN_183,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPMC_CLK	=>  Location: PIN_224,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPMC_DATA[0]	=>  Location: PIN_160,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPMC_DATA[1]	=>  Location: PIN_164,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPMC_DATA[2]	=>  Location: PIN_173,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPMC_DATA[3]	=>  Location: PIN_194,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPMC_DATA[4]	=>  Location: PIN_184,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPMC_DATA[5]	=>  Location: PIN_189,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPMC_DATA[6]	=>  Location: PIN_106,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPMC_DATA[7]	=>  Location: PIN_103,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPMC_DATA[8]	=>  Location: PIN_187,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPMC_DATA[9]	=>  Location: PIN_195,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPMC_DATA[10]	=>  Location: PIN_201,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPMC_DATA[11]	=>  Location: PIN_166,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPMC_DATA[12]	=>  Location: PIN_169,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPMC_DATA[13]	=>  Location: PIN_200,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPMC_DATA[14]	=>  Location: PIN_159,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPMC_DATA[15]	=>  Location: PIN_202,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPMC_nOE	=>  Location: PIN_197,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPMC_nCS6	=>  Location: PIN_196,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLOCK_50	=>  Location: PIN_31,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPMC_ADDR[4]	=>  Location: PIN_107,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPMC_ADDR[1]	=>  Location: PIN_203,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPMC_ADDR[3]	=>  Location: PIN_188,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPMC_ADDR[2]	=>  Location: PIN_146,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPMC_ADDR[10]	=>  Location: PIN_161,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPMC_ADDR[6]	=>  Location: PIN_145,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPMC_ADDR[7]	=>  Location: PIN_207,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPMC_ADDR[8]	=>  Location: PIN_149,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPMC_ADDR[9]	=>  Location: PIN_150,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPMC_ADDR[5]	=>  Location: PIN_171,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPMC_nPWE	=>  Location: PIN_144,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF setup_control IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_CLOCK_50 : std_logic;
SIGNAL ww_GPMC_ADDR : std_logic_vector(10 DOWNTO 1);
SIGNAL ww_GPMC_nPWE : std_logic;
SIGNAL ww_GPMC_nOE : std_logic;
SIGNAL ww_GPMC_FPGA_IRQ : std_logic;
SIGNAL ww_GPMC_nCS6 : std_logic;
SIGNAL ww_GPMC_CLK : std_logic;
SIGNAL \CLOCK_50~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \GPMC_FPGA_IRQ~input_o\ : std_logic;
SIGNAL \GPMC_CLK~input_o\ : std_logic;
SIGNAL \GPMC_DATA[0]~output_o\ : std_logic;
SIGNAL \GPMC_DATA[1]~output_o\ : std_logic;
SIGNAL \GPMC_DATA[2]~output_o\ : std_logic;
SIGNAL \GPMC_DATA[3]~output_o\ : std_logic;
SIGNAL \GPMC_DATA[4]~output_o\ : std_logic;
SIGNAL \GPMC_DATA[5]~output_o\ : std_logic;
SIGNAL \GPMC_DATA[6]~output_o\ : std_logic;
SIGNAL \GPMC_DATA[7]~output_o\ : std_logic;
SIGNAL \GPMC_DATA[8]~output_o\ : std_logic;
SIGNAL \GPMC_DATA[9]~output_o\ : std_logic;
SIGNAL \GPMC_DATA[10]~output_o\ : std_logic;
SIGNAL \GPMC_DATA[11]~output_o\ : std_logic;
SIGNAL \GPMC_DATA[12]~output_o\ : std_logic;
SIGNAL \GPMC_DATA[13]~output_o\ : std_logic;
SIGNAL \GPMC_DATA[14]~output_o\ : std_logic;
SIGNAL \GPMC_DATA[15]~output_o\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \CLOCK_50~inputclkctrl_outclk\ : std_logic;
SIGNAL \GPMC_ADDR[3]~input_o\ : std_logic;
SIGNAL \GPMC_ADDR[4]~input_o\ : std_logic;
SIGNAL \gpmc_driver|gpmc_addr_in[3]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out[0]~58_combout\ : std_logic;
SIGNAL \GPMC_ADDR[2]~input_o\ : std_logic;
SIGNAL \GPMC_DATA[0]~input_o\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_in[0]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[14][0]~feeder_combout\ : std_logic;
SIGNAL \GPMC_ADDR[10]~input_o\ : std_logic;
SIGNAL \GPMC_ADDR[9]~input_o\ : std_logic;
SIGNAL \GPMC_ADDR[6]~input_o\ : std_logic;
SIGNAL \GPMC_ADDR[8]~input_o\ : std_logic;
SIGNAL \GPMC_ADDR[7]~input_o\ : std_logic;
SIGNAL \gpmc_driver|LessThan0~0_combout\ : std_logic;
SIGNAL \GPMC_nCS6~input_o\ : std_logic;
SIGNAL \gpmc_driver|gpmc_ncs~q\ : std_logic;
SIGNAL \GPMC_nPWE~input_o\ : std_logic;
SIGNAL \gpmc_driver|gpmc_nwe~q\ : std_logic;
SIGNAL \gpmc_driver|Decoder0~21_combout\ : std_logic;
SIGNAL \gpmc_driver|Decoder0~22_combout\ : std_logic;
SIGNAL \GPMC_ADDR[5]~input_o\ : std_logic;
SIGNAL \GPMC_ADDR[1]~input_o\ : std_logic;
SIGNAL \gpmc_driver|Decoder0~34_combout\ : std_logic;
SIGNAL \gpmc_driver|Decoder0~35_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[14][0]~q\ : std_logic;
SIGNAL \gpmc_driver|Decoder0~33_combout\ : std_logic;
SIGNAL \gpmc_driver|Decoder0~38_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[15][0]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[13][0]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|Decoder0~36_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[13][0]~q\ : std_logic;
SIGNAL \gpmc_driver|Decoder0~28_combout\ : std_logic;
SIGNAL \gpmc_driver|Decoder0~37_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[12][0]~q\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~56_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~57_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[10][0]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|Decoder0~27_combout\ : std_logic;
SIGNAL \gpmc_driver|Decoder0~29_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[10][0]~q\ : std_logic;
SIGNAL \gpmc_driver|Decoder0~19_combout\ : std_logic;
SIGNAL \gpmc_driver|Decoder0~20_combout\ : std_logic;
SIGNAL \gpmc_driver|Decoder0~56_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[11][0]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[9][0]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|Decoder0~30_combout\ : std_logic;
SIGNAL \gpmc_driver|Decoder0~31_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[9][0]~q\ : std_logic;
SIGNAL \gpmc_driver|Decoder0~32_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[8][0]~q\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~53_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~54_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out[0]~48_combout\ : std_logic;
SIGNAL \gpmc_driver|Decoder0~54_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[3][0]~q\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out[0]~51_combout\ : std_logic;
SIGNAL \gpmc_driver|Decoder0~55_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[2][0]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[5][0]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|Decoder0~18_combout\ : std_logic;
SIGNAL \gpmc_driver|Decoder0~23_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[5][0]~q\ : std_logic;
SIGNAL \gpmc_driver|Decoder0~26_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[7][0]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[6][0]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|Decoder0~24_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[6][0]~q\ : std_logic;
SIGNAL \gpmc_driver|Decoder0~25_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[4][0]~q\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~49_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~50_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~52_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~55_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~340_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out[0]~0_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[26][0]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|Decoder0~57_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[26][0]~q\ : std_logic;
SIGNAL \gpmc_driver|Decoder0~42_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[30][0]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[22][0]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|Decoder0~39_combout\ : std_logic;
SIGNAL \gpmc_driver|Decoder0~40_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[22][0]~q\ : std_logic;
SIGNAL \gpmc_driver|Decoder0~58_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[18][0]~q\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~59_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~60_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[23][0]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|Decoder0~43_combout\ : std_logic;
SIGNAL \gpmc_driver|Decoder0~52_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[23][0]~q\ : std_logic;
SIGNAL \gpmc_driver|Decoder0~53_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[31][0]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[27][0]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|Decoder0~61_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[27][0]~q\ : std_logic;
SIGNAL \gpmc_driver|Decoder0~62_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[19][0]~q\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~66_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~67_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[24][0]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|Decoder0~48_combout\ : std_logic;
SIGNAL \gpmc_driver|Decoder0~49_combout\ : std_logic;
SIGNAL \gpmc_driver|Decoder0~59_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[24][0]~q\ : std_logic;
SIGNAL \gpmc_driver|Decoder0~51_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[28][0]~q\ : std_logic;
SIGNAL \gpmc_driver|Decoder0~60_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[16][0]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[20][0]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|Decoder0~41_combout\ : std_logic;
SIGNAL \gpmc_driver|Decoder0~50_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[20][0]~q\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~63_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~64_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[21][0]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|Decoder0~44_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[21][0]~q\ : std_logic;
SIGNAL \gpmc_driver|Decoder0~47_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[29][0]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[25][0]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|Decoder0~45_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[25][0]~q\ : std_logic;
SIGNAL \gpmc_driver|Decoder0~46_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[17][0]~q\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~61_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~62_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~65_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~68_combout\ : std_logic;
SIGNAL \gpmc_driver|LessThan0~1_combout\ : std_logic;
SIGNAL \GPMC_nOE~input_o\ : std_logic;
SIGNAL \gpmc_driver|gpmc_nre~q\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out[0]~69_combout\ : std_logic;
SIGNAL \gpmc_driver|GPMC_DATA~16_combout\ : std_logic;
SIGNAL \GPMC_DATA[1]~input_o\ : std_logic;
SIGNAL \gpmc_driver|ram[13][1]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[13][1]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[15][1]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[14][1]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[14][1]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[12][1]~q\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~76_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~77_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[7][1]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[7][1]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[6][1]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[5][1]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[5][1]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[4][1]~q\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~70_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~71_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[9][1]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[9][1]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[11][1]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[10][1]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[10][1]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[8][1]~q\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~73_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~74_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[3][1]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[3][1]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[2][1]~q\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~72_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~75_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~341_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out[1]~1_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[23][1]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[23][1]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[31][1]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[27][1]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[27][1]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[19][1]~q\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~85_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~86_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[21][1]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[21][1]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[25][1]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[25][1]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[17][1]~q\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~78_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[29][1]~q\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~79_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[24][1]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[24][1]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[28][1]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[16][1]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[20][1]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[20][1]~q\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~82_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~83_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[26][1]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[26][1]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[30][1]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[22][1]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[22][1]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[18][1]~q\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~80_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~81_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~84_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~87_combout\ : std_logic;
SIGNAL \GPMC_DATA[2]~input_o\ : std_logic;
SIGNAL \gpmc_driver|ram[14][2]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[14][2]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[15][2]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[13][2]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[13][2]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[12][2]~q\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~94_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~95_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[3][2]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[3][2]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[2][2]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[2][2]~q\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~92_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~342_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[5][2]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[5][2]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[4][2]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[9][2]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[9][2]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[8][2]~q\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~88_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~89_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[10][2]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[10][2]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[6][2]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[11][2]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[11][2]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[7][2]~q\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~90_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~91_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~93_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out[2]~2_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[26][2]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[26][2]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[30][2]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[22][2]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[22][2]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[18][2]~q\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~96_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~97_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[24][2]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[24][2]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[28][2]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[16][2]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[20][2]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[20][2]~q\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~100_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~101_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[21][2]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[21][2]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[29][2]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[25][2]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[25][2]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[17][2]~q\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~98_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~99_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~102_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[23][2]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[23][2]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[31][2]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[27][2]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[27][2]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[19][2]~q\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~103_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~104_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~105_combout\ : std_logic;
SIGNAL \GPMC_DATA[3]~input_o\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_in[3]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[13][3]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[13][3]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[15][3]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[14][3]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[14][3]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[12][3]~q\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~112_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~113_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[7][3]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[7][3]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[6][3]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[5][3]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[5][3]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[4][3]~q\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~106_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~107_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[9][3]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[9][3]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[11][3]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[10][3]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[10][3]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[8][3]~q\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~109_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~110_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[3][3]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[3][3]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[2][3]~q\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~108_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~111_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~343_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out[3]~3_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[23][3]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[23][3]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[31][3]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[27][3]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[27][3]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[19][3]~q\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~121_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~122_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[25][3]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[25][3]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[17][3]~q\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~114_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[21][3]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[21][3]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[29][3]~q\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~115_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[26][3]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[26][3]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[30][3]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[22][3]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[22][3]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[18][3]~q\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~116_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~117_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[16][3]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[20][3]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[20][3]~q\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~118_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[28][3]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[24][3]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[24][3]~q\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~119_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~120_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~123_combout\ : std_logic;
SIGNAL \GPMC_DATA[4]~input_o\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_in[4]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[14][4]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[14][4]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[15][4]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[13][4]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[13][4]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[12][4]~q\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~130_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~131_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[3][4]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[3][4]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[2][4]~q\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~128_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~344_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[5][4]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[5][4]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[4][4]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[8][4]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[8][4]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[9][4]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[9][4]~q\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~126_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~127_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[7][4]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[7][4]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[6][4]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[10][4]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[10][4]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[11][4]~q\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~124_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~125_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~129_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out[4]~4_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[22][4]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[22][4]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[18][4]~q\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~132_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[30][4]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[26][4]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[26][4]~q\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~133_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[23][4]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[23][4]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[31][4]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[27][4]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[27][4]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[19][4]~q\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~139_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~140_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[21][4]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[21][4]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[29][4]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[25][4]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[25][4]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[17][4]~q\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~134_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~135_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[24][4]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[24][4]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[28][4]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[16][4]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[20][4]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[20][4]~q\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~136_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~137_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~138_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~141_combout\ : std_logic;
SIGNAL \GPMC_DATA[5]~input_o\ : std_logic;
SIGNAL \gpmc_driver|ram[13][5]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[13][5]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[15][5]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[14][5]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[14][5]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[12][5]~q\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~148_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~149_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[7][5]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[7][5]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[6][5]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[5][5]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[5][5]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[4][5]~q\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~142_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~143_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[9][5]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[9][5]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[11][5]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[10][5]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[10][5]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[8][5]~q\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~145_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~146_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[3][5]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[3][5]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[2][5]~q\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~144_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~147_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~345_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out[5]~5_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[21][5]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[21][5]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[29][5]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[25][5]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[25][5]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[17][5]~q\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~150_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~151_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[23][5]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[23][5]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[31][5]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[27][5]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[27][5]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[19][5]~q\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~157_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~158_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[24][5]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[24][5]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[28][5]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[16][5]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[20][5]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[20][5]~q\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~154_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~155_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[26][5]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[26][5]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[30][5]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[22][5]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[22][5]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[18][5]~q\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~152_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~153_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~156_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~159_combout\ : std_logic;
SIGNAL \GPMC_DATA[6]~input_o\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_in[6]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[15][6]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[15][6]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[13][6]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[13][6]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[12][6]~q\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~160_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[14][6]~q\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out[6]~161_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[3][6]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[3][6]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[2][6]~q\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out[6]~162_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[9][6]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[9][6]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[8][6]~q\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~165_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[11][6]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[10][6]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[10][6]~q\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out[6]~166_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[5][6]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[5][6]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[7][6]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[6][6]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[6][6]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[4][6]~q\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~163_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~164_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out[6]~167_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out[6]~346_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out[6]~6_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[26][6]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[26][6]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[30][6]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[22][6]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[22][6]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[18][6]~q\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~168_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~169_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[21][6]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[21][6]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[29][6]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[25][6]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[25][6]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[17][6]~q\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~170_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~171_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[24][6]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[24][6]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[28][6]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[16][6]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[20][6]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[20][6]~q\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~172_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~173_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~174_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[23][6]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[23][6]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[31][6]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[27][6]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[27][6]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[19][6]~q\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~175_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~176_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~177_combout\ : std_logic;
SIGNAL \GPMC_DATA[7]~input_o\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_in[7]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[13][7]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[13][7]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[15][7]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[14][7]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[14][7]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[12][7]~q\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~184_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~185_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[7][7]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[7][7]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[6][7]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[5][7]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[5][7]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[4][7]~q\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~178_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~179_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[9][7]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[9][7]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[11][7]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[10][7]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[10][7]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[8][7]~q\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~181_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~182_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[3][7]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[3][7]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[2][7]~q\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~180_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~183_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~347_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out[7]~7_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[21][7]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[21][7]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[29][7]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[25][7]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[25][7]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[17][7]~q\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~186_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~187_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[23][7]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[23][7]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[31][7]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[27][7]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[27][7]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[19][7]~q\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~193_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~194_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[26][7]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[26][7]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[30][7]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[22][7]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[22][7]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[18][7]~q\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~188_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~189_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[24][7]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[24][7]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[28][7]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[20][7]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[20][7]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[16][7]~q\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~190_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~191_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~192_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~195_combout\ : std_logic;
SIGNAL \GPMC_DATA[8]~input_o\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_in[8]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[13][8]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[13][8]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[12][8]~q\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~202_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[14][8]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[14][8]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[15][8]~q\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~203_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[10][8]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[10][8]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[11][8]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[9][8]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[9][8]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[8][8]~q\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~199_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~200_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[3][8]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[2][8]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[5][8]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[5][8]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[7][8]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[6][8]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[6][8]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[4][8]~q\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~196_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~197_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~198_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~201_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~348_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out[8]~8_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[23][8]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[23][8]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[31][8]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[27][8]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[27][8]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[19][8]~q\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~211_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~212_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[26][8]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[26][8]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[30][8]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[22][8]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[22][8]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[18][8]~q\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~204_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~205_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[21][8]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[21][8]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[29][8]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[25][8]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[25][8]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[17][8]~q\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~206_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~207_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[24][8]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[24][8]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[28][8]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[20][8]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[20][8]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[16][8]~q\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~208_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~209_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~210_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~213_combout\ : std_logic;
SIGNAL \GPMC_DATA[9]~input_o\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_in[9]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[13][9]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[13][9]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[15][9]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[14][9]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[14][9]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[12][9]~q\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~220_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~221_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[3][9]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[3][9]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[2][9]~q\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~216_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[9][9]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[9][9]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[10][9]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[10][9]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[8][9]~q\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~217_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[11][9]~q\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~218_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[7][9]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[7][9]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[6][9]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[5][9]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[5][9]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[4][9]~q\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~214_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~215_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~219_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~349_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out[9]~9_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[25][9]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[25][9]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[17][9]~q\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~222_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[21][9]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[21][9]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[29][9]~q\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~223_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[23][9]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[23][9]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[31][9]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[27][9]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[27][9]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[19][9]~q\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~229_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~230_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[26][9]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[26][9]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[30][9]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[22][9]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[22][9]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[18][9]~q\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~224_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~225_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[24][9]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[24][9]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[28][9]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[20][9]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[20][9]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[16][9]~q\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~226_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~227_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~228_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~231_combout\ : std_logic;
SIGNAL \GPMC_DATA[10]~input_o\ : std_logic;
SIGNAL \gpmc_driver|ram[14][10]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[14][10]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[15][10]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[13][10]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[13][10]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[12][10]~q\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~238_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~239_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[3][10]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[3][10]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[2][10]~q\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~236_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~350_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[8][10]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[8][10]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[4][10]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[5][10]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[9][10]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[9][10]~q\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~234_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~235_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[7][10]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[7][10]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[6][10]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[10][10]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[10][10]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[11][10]~q\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~232_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~233_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~237_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out[10]~10_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[23][10]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[23][10]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[31][10]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[27][10]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[27][10]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[19][10]~q\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~247_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~248_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[26][10]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[26][10]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[30][10]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[22][10]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[22][10]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[18][10]~q\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~240_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~241_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[24][10]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[24][10]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[28][10]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[20][10]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[20][10]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[16][10]~q\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~244_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~245_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[21][10]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[21][10]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[29][10]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[25][10]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[25][10]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[17][10]~q\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~242_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~243_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~246_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~249_combout\ : std_logic;
SIGNAL \GPMC_DATA[11]~input_o\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_in[11]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[13][11]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[13][11]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[15][11]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[14][11]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[14][11]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[12][11]~q\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~256_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~257_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[3][11]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[3][11]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[2][11]~q\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~252_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[7][11]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[7][11]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[6][11]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[5][11]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[4][11]~q\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~250_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~251_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[9][11]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[9][11]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[11][11]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[8][11]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[10][11]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[10][11]~q\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~253_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~254_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~255_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~351_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out[11]~11_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[23][11]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[23][11]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[31][11]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[27][11]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[27][11]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[19][11]~q\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~265_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~266_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[21][11]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[21][11]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[29][11]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[25][11]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[25][11]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[17][11]~q\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~258_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~259_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[24][11]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[24][11]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[28][11]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[20][11]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[20][11]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[16][11]~q\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~262_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~263_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[26][11]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[26][11]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[30][11]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[22][11]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[22][11]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[18][11]~q\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~260_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~261_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~264_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~267_combout\ : std_logic;
SIGNAL \GPMC_DATA[12]~input_o\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_in[12]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[14][12]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[14][12]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[15][12]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[13][12]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[13][12]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[12][12]~q\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~274_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~275_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[5][12]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[5][12]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[4][12]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[8][12]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[9][12]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[9][12]~q\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~268_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~269_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[3][12]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[3][12]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[2][12]~q\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~272_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~352_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[10][12]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[10][12]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[6][12]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[11][12]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[11][12]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[7][12]~q\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~270_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~271_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~273_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out[12]~12_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[23][12]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[23][12]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[31][12]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[19][12]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[19][12]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[27][12]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[27][12]~q\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~283_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~284_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[22][12]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[22][12]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[18][12]~q\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~276_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[30][12]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[26][12]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[26][12]~q\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~277_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[24][12]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[24][12]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[28][12]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[20][12]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[20][12]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[16][12]~q\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~280_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~281_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[21][12]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[21][12]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[29][12]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[25][12]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[25][12]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[17][12]~q\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~278_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~279_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~282_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~285_combout\ : std_logic;
SIGNAL \GPMC_DATA[13]~input_o\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_in[13]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[14][13]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[14][13]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[12][13]~q\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~292_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[13][13]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[13][13]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[15][13]~q\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~293_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[3][13]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[3][13]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[2][13]~q\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~288_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[9][13]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[9][13]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[11][13]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[8][13]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[10][13]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[10][13]~q\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~289_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~290_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[7][13]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[7][13]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[6][13]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[5][13]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[5][13]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[4][13]~q\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~286_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~287_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~291_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~353_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out[13]~13_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[23][13]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[23][13]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[31][13]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[27][13]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[27][13]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[19][13]~q\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~301_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~302_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[21][13]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[21][13]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[25][13]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[25][13]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[17][13]~q\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~294_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[29][13]~q\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~295_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[24][13]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[24][13]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[28][13]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[20][13]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[20][13]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[16][13]~q\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~298_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~299_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[26][13]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[26][13]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[30][13]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[22][13]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[22][13]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[18][13]~q\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~296_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~297_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~300_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~303_combout\ : std_logic;
SIGNAL \GPMC_DATA[14]~input_o\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_in[14]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[14][14]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[14][14]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[15][14]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[13][14]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[13][14]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[12][14]~q\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~310_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~311_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[10][14]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[10][14]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[11][14]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[8][14]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[9][14]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[9][14]~q\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~307_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~308_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[3][14]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[2][14]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[5][14]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[5][14]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[7][14]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[6][14]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[6][14]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[4][14]~q\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~304_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~305_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~306_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~309_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~354_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out[14]~14_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[22][14]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[22][14]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[18][14]~q\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~312_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[26][14]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[26][14]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[30][14]~q\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~313_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[23][14]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[23][14]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[31][14]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[27][14]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[27][14]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[19][14]~q\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~319_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~320_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[24][14]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[24][14]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[28][14]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[20][14]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[20][14]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[16][14]~q\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~316_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~317_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[21][14]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[21][14]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[29][14]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[25][14]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[25][14]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[17][14]~q\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~314_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~315_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~318_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~321_combout\ : std_logic;
SIGNAL \GPMC_DATA[15]~input_o\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_in[15]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[13][15]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[13][15]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[15][15]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[14][15]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[14][15]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[12][15]~q\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~328_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~329_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[7][15]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[7][15]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[6][15]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[5][15]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[5][15]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[4][15]~q\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~322_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~323_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[9][15]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[9][15]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[11][15]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[8][15]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[10][15]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[10][15]~q\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~325_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~326_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[3][15]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[3][15]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[2][15]~q\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~324_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~327_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~355_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out[15]~15_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[23][15]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[23][15]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[31][15]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[31][15]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[27][15]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[27][15]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[19][15]~q\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~337_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~338_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[21][15]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[21][15]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[29][15]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[25][15]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[25][15]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[17][15]~q\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~330_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~331_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[26][15]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[26][15]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[30][15]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[22][15]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[22][15]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[18][15]~q\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~332_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~333_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[24][15]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[24][15]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[28][15]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[20][15]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[20][15]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[16][15]~q\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~334_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~335_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~336_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~339_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_addr_in\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \gpmc_driver|gpmc_data_in\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \gpmc_driver|gpmc_data_out\ : std_logic_vector(15 DOWNTO 0);

BEGIN

ww_CLOCK_50 <= CLOCK_50;
ww_GPMC_ADDR <= GPMC_ADDR;
ww_GPMC_nPWE <= GPMC_nPWE;
ww_GPMC_nOE <= GPMC_nOE;
ww_GPMC_FPGA_IRQ <= GPMC_FPGA_IRQ;
ww_GPMC_nCS6 <= GPMC_nCS6;
ww_GPMC_CLK <= GPMC_CLK;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\CLOCK_50~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLOCK_50~input_o\);

-- Location: IOOBUF_X67_Y25_N16
\GPMC_DATA[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gpmc_driver|gpmc_data_out\(0),
	oe => \gpmc_driver|GPMC_DATA~16_combout\,
	devoe => ww_devoe,
	o => \GPMC_DATA[0]~output_o\);

-- Location: IOOBUF_X67_Y27_N16
\GPMC_DATA[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gpmc_driver|gpmc_data_out\(1),
	oe => \gpmc_driver|GPMC_DATA~16_combout\,
	devoe => ww_devoe,
	o => \GPMC_DATA[1]~output_o\);

-- Location: IOOBUF_X67_Y35_N2
\GPMC_DATA[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gpmc_driver|gpmc_data_out\(2),
	oe => \gpmc_driver|GPMC_DATA~16_combout\,
	devoe => ww_devoe,
	o => \GPMC_DATA[2]~output_o\);

-- Location: IOOBUF_X50_Y43_N2
\GPMC_DATA[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gpmc_driver|gpmc_data_out\(3),
	oe => \gpmc_driver|GPMC_DATA~16_combout\,
	devoe => ww_devoe,
	o => \GPMC_DATA[3]~output_o\);

-- Location: IOOBUF_X61_Y43_N16
\GPMC_DATA[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gpmc_driver|gpmc_data_out\(4),
	oe => \gpmc_driver|GPMC_DATA~16_combout\,
	devoe => ww_devoe,
	o => \GPMC_DATA[4]~output_o\);

-- Location: IOOBUF_X54_Y43_N16
\GPMC_DATA[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gpmc_driver|gpmc_data_out\(5),
	oe => \gpmc_driver|GPMC_DATA~16_combout\,
	devoe => ww_devoe,
	o => \GPMC_DATA[5]~output_o\);

-- Location: IOOBUF_X48_Y0_N30
\GPMC_DATA[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gpmc_driver|gpmc_data_out\(6),
	oe => \gpmc_driver|GPMC_DATA~16_combout\,
	devoe => ww_devoe,
	o => \GPMC_DATA[6]~output_o\);

-- Location: IOOBUF_X45_Y0_N23
\GPMC_DATA[7]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gpmc_driver|gpmc_data_out\(7),
	oe => \gpmc_driver|GPMC_DATA~16_combout\,
	devoe => ww_devoe,
	o => \GPMC_DATA[7]~output_o\);

-- Location: IOOBUF_X56_Y43_N16
\GPMC_DATA[8]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gpmc_driver|gpmc_data_out\(8),
	oe => \gpmc_driver|GPMC_DATA~16_combout\,
	devoe => ww_devoe,
	o => \GPMC_DATA[8]~output_o\);

-- Location: IOOBUF_X50_Y43_N23
\GPMC_DATA[9]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gpmc_driver|gpmc_data_out\(9),
	oe => \gpmc_driver|GPMC_DATA~16_combout\,
	devoe => ww_devoe,
	o => \GPMC_DATA[9]~output_o\);

-- Location: IOOBUF_X45_Y43_N9
\GPMC_DATA[10]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gpmc_driver|gpmc_data_out\(10),
	oe => \gpmc_driver|GPMC_DATA~16_combout\,
	devoe => ww_devoe,
	o => \GPMC_DATA[10]~output_o\);

-- Location: IOOBUF_X67_Y28_N23
\GPMC_DATA[11]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gpmc_driver|gpmc_data_out\(11),
	oe => \gpmc_driver|GPMC_DATA~16_combout\,
	devoe => ww_devoe,
	o => \GPMC_DATA[11]~output_o\);

-- Location: IOOBUF_X67_Y31_N23
\GPMC_DATA[12]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gpmc_driver|gpmc_data_out\(12),
	oe => \gpmc_driver|GPMC_DATA~16_combout\,
	devoe => ww_devoe,
	o => \GPMC_DATA[12]~output_o\);

-- Location: IOOBUF_X45_Y43_N2
\GPMC_DATA[13]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gpmc_driver|gpmc_data_out\(13),
	oe => \gpmc_driver|GPMC_DATA~16_combout\,
	devoe => ww_devoe,
	o => \GPMC_DATA[13]~output_o\);

-- Location: IOOBUF_X67_Y25_N23
\GPMC_DATA[14]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gpmc_driver|gpmc_data_out\(14),
	oe => \gpmc_driver|GPMC_DATA~16_combout\,
	devoe => ww_devoe,
	o => \GPMC_DATA[14]~output_o\);

-- Location: IOOBUF_X45_Y43_N16
\GPMC_DATA[15]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gpmc_driver|gpmc_data_out\(15),
	oe => \gpmc_driver|GPMC_DATA~16_combout\,
	devoe => ww_devoe,
	o => \GPMC_DATA[15]~output_o\);

-- Location: IOIBUF_X0_Y21_N1
\CLOCK_50~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLOCK_50,
	o => \CLOCK_50~input_o\);

-- Location: CLKCTRL_G4
\CLOCK_50~inputclkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLOCK_50~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLOCK_50~inputclkctrl_outclk\);

-- Location: IOIBUF_X56_Y43_N22
\GPMC_ADDR[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_GPMC_ADDR(3),
	o => \GPMC_ADDR[3]~input_o\);

-- Location: FF_X49_Y30_N13
\gpmc_driver|gpmc_addr_in[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \GPMC_ADDR[3]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|gpmc_addr_in\(2));

-- Location: IOIBUF_X48_Y0_N22
\GPMC_ADDR[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_GPMC_ADDR(4),
	o => \GPMC_ADDR[4]~input_o\);

-- Location: LCCOMB_X49_Y30_N0
\gpmc_driver|gpmc_addr_in[3]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_addr_in[3]~feeder_combout\ = \GPMC_ADDR[4]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \GPMC_ADDR[4]~input_o\,
	combout => \gpmc_driver|gpmc_addr_in[3]~feeder_combout\);

-- Location: FF_X49_Y30_N1
\gpmc_driver|gpmc_addr_in[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|gpmc_addr_in[3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|gpmc_addr_in\(3));

-- Location: LCCOMB_X51_Y29_N26
\gpmc_driver|gpmc_data_out[0]~58\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out[0]~58_combout\ = (\gpmc_driver|gpmc_addr_in\(2) & \gpmc_driver|gpmc_addr_in\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gpmc_driver|gpmc_addr_in\(2),
	datad => \gpmc_driver|gpmc_addr_in\(3),
	combout => \gpmc_driver|gpmc_data_out[0]~58_combout\);

-- Location: IOIBUF_X67_Y19_N8
\GPMC_ADDR[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_GPMC_ADDR(2),
	o => \GPMC_ADDR[2]~input_o\);

-- Location: FF_X49_Y30_N29
\gpmc_driver|gpmc_addr_in[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \GPMC_ADDR[2]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|gpmc_addr_in\(1));

-- Location: IOIBUF_X67_Y25_N15
\GPMC_DATA[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPMC_DATA(0),
	o => \GPMC_DATA[0]~input_o\);

-- Location: LCCOMB_X53_Y28_N20
\gpmc_driver|gpmc_data_in[0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_in[0]~feeder_combout\ = \GPMC_DATA[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \GPMC_DATA[0]~input_o\,
	combout => \gpmc_driver|gpmc_data_in[0]~feeder_combout\);

-- Location: FF_X53_Y28_N21
\gpmc_driver|gpmc_data_in[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|gpmc_data_in[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|gpmc_data_in\(0));

-- Location: LCCOMB_X45_Y29_N0
\gpmc_driver|ram[14][0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[14][0]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gpmc_driver|gpmc_data_in\(0),
	combout => \gpmc_driver|ram[14][0]~feeder_combout\);

-- Location: IOIBUF_X67_Y26_N22
\GPMC_ADDR[10]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_GPMC_ADDR(10),
	o => \GPMC_ADDR[10]~input_o\);

-- Location: FF_X49_Y30_N3
\gpmc_driver|gpmc_addr_in[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \GPMC_ADDR[10]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|gpmc_addr_in\(9));

-- Location: IOIBUF_X67_Y22_N15
\GPMC_ADDR[9]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_GPMC_ADDR(9),
	o => \GPMC_ADDR[9]~input_o\);

-- Location: FF_X49_Y30_N7
\gpmc_driver|gpmc_addr_in[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \GPMC_ADDR[9]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|gpmc_addr_in\(8));

-- Location: IOIBUF_X67_Y18_N15
\GPMC_ADDR[6]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_GPMC_ADDR(6),
	o => \GPMC_ADDR[6]~input_o\);

-- Location: FF_X49_Y30_N9
\gpmc_driver|gpmc_addr_in[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \GPMC_ADDR[6]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|gpmc_addr_in\(5));

-- Location: IOIBUF_X67_Y22_N22
\GPMC_ADDR[8]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_GPMC_ADDR(8),
	o => \GPMC_ADDR[8]~input_o\);

-- Location: FF_X49_Y30_N17
\gpmc_driver|gpmc_addr_in[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \GPMC_ADDR[8]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|gpmc_addr_in\(7));

-- Location: IOIBUF_X38_Y43_N29
\GPMC_ADDR[7]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_GPMC_ADDR(7),
	o => \GPMC_ADDR[7]~input_o\);

-- Location: FF_X49_Y30_N11
\gpmc_driver|gpmc_addr_in[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \GPMC_ADDR[7]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|gpmc_addr_in\(6));

-- Location: LCCOMB_X49_Y30_N16
\gpmc_driver|LessThan0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|LessThan0~0_combout\ = (\gpmc_driver|gpmc_addr_in\(8)) # ((\gpmc_driver|gpmc_addr_in\(5)) # ((\gpmc_driver|gpmc_addr_in\(7)) # (\gpmc_driver|gpmc_addr_in\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(8),
	datab => \gpmc_driver|gpmc_addr_in\(5),
	datac => \gpmc_driver|gpmc_addr_in\(7),
	datad => \gpmc_driver|gpmc_addr_in\(6),
	combout => \gpmc_driver|LessThan0~0_combout\);

-- Location: IOIBUF_X48_Y43_N8
\GPMC_nCS6~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_GPMC_nCS6,
	o => \GPMC_nCS6~input_o\);

-- Location: FF_X49_Y30_N27
\gpmc_driver|gpmc_ncs\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \GPMC_nCS6~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|gpmc_ncs~q\);

-- Location: IOIBUF_X67_Y18_N22
\GPMC_nPWE~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_GPMC_nPWE,
	o => \GPMC_nPWE~input_o\);

-- Location: FF_X49_Y30_N19
\gpmc_driver|gpmc_nwe\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \GPMC_nPWE~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|gpmc_nwe~q\);

-- Location: LCCOMB_X49_Y30_N2
\gpmc_driver|Decoder0~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|Decoder0~21_combout\ = (!\gpmc_driver|gpmc_ncs~q\ & !\gpmc_driver|gpmc_nwe~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_ncs~q\,
	datad => \gpmc_driver|gpmc_nwe~q\,
	combout => \gpmc_driver|Decoder0~21_combout\);

-- Location: LCCOMB_X49_Y30_N12
\gpmc_driver|Decoder0~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|Decoder0~22_combout\ = (!\gpmc_driver|gpmc_addr_in\(9) & (!\gpmc_driver|LessThan0~0_combout\ & (\gpmc_driver|gpmc_addr_in\(2) & \gpmc_driver|Decoder0~21_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(9),
	datab => \gpmc_driver|LessThan0~0_combout\,
	datac => \gpmc_driver|gpmc_addr_in\(2),
	datad => \gpmc_driver|Decoder0~21_combout\,
	combout => \gpmc_driver|Decoder0~22_combout\);

-- Location: IOIBUF_X67_Y34_N8
\GPMC_ADDR[5]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_GPMC_ADDR(5),
	o => \GPMC_ADDR[5]~input_o\);

-- Location: FF_X49_Y30_N25
\gpmc_driver|gpmc_addr_in[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \GPMC_ADDR[5]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|gpmc_addr_in\(4));

-- Location: IOIBUF_X41_Y43_N8
\GPMC_ADDR[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_GPMC_ADDR(1),
	o => \GPMC_ADDR[1]~input_o\);

-- Location: FF_X49_Y30_N15
\gpmc_driver|gpmc_addr_in[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \GPMC_ADDR[1]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|gpmc_addr_in\(0));

-- Location: LCCOMB_X49_Y28_N4
\gpmc_driver|Decoder0~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|Decoder0~34_combout\ = (\gpmc_driver|gpmc_addr_in\(3) & !\gpmc_driver|gpmc_addr_in\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gpmc_driver|gpmc_addr_in\(3),
	datad => \gpmc_driver|gpmc_addr_in\(0),
	combout => \gpmc_driver|Decoder0~34_combout\);

-- Location: LCCOMB_X48_Y30_N20
\gpmc_driver|Decoder0~35\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|Decoder0~35_combout\ = (\gpmc_driver|gpmc_addr_in\(1) & (\gpmc_driver|Decoder0~22_combout\ & (!\gpmc_driver|gpmc_addr_in\(4) & \gpmc_driver|Decoder0~34_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(1),
	datab => \gpmc_driver|Decoder0~22_combout\,
	datac => \gpmc_driver|gpmc_addr_in\(4),
	datad => \gpmc_driver|Decoder0~34_combout\,
	combout => \gpmc_driver|Decoder0~35_combout\);

-- Location: FF_X45_Y29_N1
\gpmc_driver|ram[14][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[14][0]~feeder_combout\,
	ena => \gpmc_driver|Decoder0~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[14][0]~q\);

-- Location: LCCOMB_X49_Y30_N10
\gpmc_driver|Decoder0~33\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|Decoder0~33_combout\ = (\gpmc_driver|gpmc_addr_in\(0) & \gpmc_driver|gpmc_addr_in\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \gpmc_driver|gpmc_addr_in\(0),
	datad => \gpmc_driver|gpmc_addr_in\(3),
	combout => \gpmc_driver|Decoder0~33_combout\);

-- Location: LCCOMB_X48_Y30_N6
\gpmc_driver|Decoder0~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|Decoder0~38_combout\ = (!\gpmc_driver|gpmc_addr_in\(4) & (\gpmc_driver|gpmc_addr_in\(1) & (\gpmc_driver|Decoder0~22_combout\ & \gpmc_driver|Decoder0~33_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(4),
	datab => \gpmc_driver|gpmc_addr_in\(1),
	datac => \gpmc_driver|Decoder0~22_combout\,
	datad => \gpmc_driver|Decoder0~33_combout\,
	combout => \gpmc_driver|Decoder0~38_combout\);

-- Location: FF_X45_Y29_N27
\gpmc_driver|ram[15][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(0),
	sload => VCC,
	ena => \gpmc_driver|Decoder0~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[15][0]~q\);

-- Location: LCCOMB_X44_Y29_N4
\gpmc_driver|ram[13][0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[13][0]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gpmc_driver|gpmc_data_in\(0),
	combout => \gpmc_driver|ram[13][0]~feeder_combout\);

-- Location: LCCOMB_X48_Y30_N18
\gpmc_driver|Decoder0~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|Decoder0~36_combout\ = (!\gpmc_driver|gpmc_addr_in\(4) & (!\gpmc_driver|gpmc_addr_in\(1) & (\gpmc_driver|Decoder0~22_combout\ & \gpmc_driver|Decoder0~33_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(4),
	datab => \gpmc_driver|gpmc_addr_in\(1),
	datac => \gpmc_driver|Decoder0~22_combout\,
	datad => \gpmc_driver|Decoder0~33_combout\,
	combout => \gpmc_driver|Decoder0~36_combout\);

-- Location: FF_X44_Y29_N5
\gpmc_driver|ram[13][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[13][0]~feeder_combout\,
	ena => \gpmc_driver|Decoder0~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[13][0]~q\);

-- Location: LCCOMB_X49_Y30_N18
\gpmc_driver|Decoder0~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|Decoder0~28_combout\ = (!\gpmc_driver|gpmc_addr_in\(0) & (\gpmc_driver|gpmc_addr_in\(3) & !\gpmc_driver|gpmc_addr_in\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(0),
	datab => \gpmc_driver|gpmc_addr_in\(3),
	datad => \gpmc_driver|gpmc_addr_in\(4),
	combout => \gpmc_driver|Decoder0~28_combout\);

-- Location: LCCOMB_X48_Y30_N4
\gpmc_driver|Decoder0~37\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|Decoder0~37_combout\ = (\gpmc_driver|Decoder0~28_combout\ & (\gpmc_driver|Decoder0~22_combout\ & !\gpmc_driver|gpmc_addr_in\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|Decoder0~28_combout\,
	datac => \gpmc_driver|Decoder0~22_combout\,
	datad => \gpmc_driver|gpmc_addr_in\(1),
	combout => \gpmc_driver|Decoder0~37_combout\);

-- Location: FF_X44_Y29_N19
\gpmc_driver|ram[12][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(0),
	sload => VCC,
	ena => \gpmc_driver|Decoder0~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[12][0]~q\);

-- Location: LCCOMB_X44_Y29_N18
\gpmc_driver|gpmc_data_out~56\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~56_combout\ = (\gpmc_driver|gpmc_addr_in\(1) & (((\gpmc_driver|gpmc_addr_in\(0))))) # (!\gpmc_driver|gpmc_addr_in\(1) & ((\gpmc_driver|gpmc_addr_in\(0) & (\gpmc_driver|ram[13][0]~q\)) # (!\gpmc_driver|gpmc_addr_in\(0) & 
-- ((\gpmc_driver|ram[12][0]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(1),
	datab => \gpmc_driver|ram[13][0]~q\,
	datac => \gpmc_driver|ram[12][0]~q\,
	datad => \gpmc_driver|gpmc_addr_in\(0),
	combout => \gpmc_driver|gpmc_data_out~56_combout\);

-- Location: LCCOMB_X45_Y29_N26
\gpmc_driver|gpmc_data_out~57\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~57_combout\ = (\gpmc_driver|gpmc_addr_in\(1) & ((\gpmc_driver|gpmc_data_out~56_combout\ & ((\gpmc_driver|ram[15][0]~q\))) # (!\gpmc_driver|gpmc_data_out~56_combout\ & (\gpmc_driver|ram[14][0]~q\)))) # 
-- (!\gpmc_driver|gpmc_addr_in\(1) & (((\gpmc_driver|gpmc_data_out~56_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(1),
	datab => \gpmc_driver|ram[14][0]~q\,
	datac => \gpmc_driver|ram[15][0]~q\,
	datad => \gpmc_driver|gpmc_data_out~56_combout\,
	combout => \gpmc_driver|gpmc_data_out~57_combout\);

-- Location: LCCOMB_X46_Y28_N16
\gpmc_driver|ram[10][0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[10][0]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gpmc_driver|gpmc_data_in\(0),
	combout => \gpmc_driver|ram[10][0]~feeder_combout\);

-- Location: LCCOMB_X49_Y30_N30
\gpmc_driver|Decoder0~27\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|Decoder0~27_combout\ = (!\gpmc_driver|gpmc_ncs~q\ & (!\gpmc_driver|gpmc_nwe~q\ & (!\gpmc_driver|gpmc_addr_in\(9) & !\gpmc_driver|LessThan0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_ncs~q\,
	datab => \gpmc_driver|gpmc_nwe~q\,
	datac => \gpmc_driver|gpmc_addr_in\(9),
	datad => \gpmc_driver|LessThan0~0_combout\,
	combout => \gpmc_driver|Decoder0~27_combout\);

-- Location: LCCOMB_X46_Y30_N26
\gpmc_driver|Decoder0~29\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|Decoder0~29_combout\ = (\gpmc_driver|gpmc_addr_in\(1) & (!\gpmc_driver|gpmc_addr_in\(2) & (\gpmc_driver|Decoder0~28_combout\ & \gpmc_driver|Decoder0~27_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(1),
	datab => \gpmc_driver|gpmc_addr_in\(2),
	datac => \gpmc_driver|Decoder0~28_combout\,
	datad => \gpmc_driver|Decoder0~27_combout\,
	combout => \gpmc_driver|Decoder0~29_combout\);

-- Location: FF_X46_Y28_N17
\gpmc_driver|ram[10][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[10][0]~feeder_combout\,
	ena => \gpmc_driver|Decoder0~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[10][0]~q\);

-- Location: LCCOMB_X49_Y30_N24
\gpmc_driver|Decoder0~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|Decoder0~19_combout\ = (!\gpmc_driver|gpmc_ncs~q\ & (\gpmc_driver|gpmc_addr_in\(1) & !\gpmc_driver|gpmc_nwe~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_ncs~q\,
	datab => \gpmc_driver|gpmc_addr_in\(1),
	datad => \gpmc_driver|gpmc_nwe~q\,
	combout => \gpmc_driver|Decoder0~19_combout\);

-- Location: LCCOMB_X45_Y30_N6
\gpmc_driver|Decoder0~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|Decoder0~20_combout\ = (!\gpmc_driver|gpmc_addr_in\(2) & (!\gpmc_driver|gpmc_addr_in\(9) & (\gpmc_driver|Decoder0~19_combout\ & !\gpmc_driver|LessThan0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(2),
	datab => \gpmc_driver|gpmc_addr_in\(9),
	datac => \gpmc_driver|Decoder0~19_combout\,
	datad => \gpmc_driver|LessThan0~0_combout\,
	combout => \gpmc_driver|Decoder0~20_combout\);

-- Location: LCCOMB_X45_Y30_N26
\gpmc_driver|Decoder0~56\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|Decoder0~56_combout\ = (\gpmc_driver|gpmc_addr_in\(0) & (!\gpmc_driver|gpmc_addr_in\(4) & (\gpmc_driver|gpmc_addr_in\(3) & \gpmc_driver|Decoder0~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(0),
	datab => \gpmc_driver|gpmc_addr_in\(4),
	datac => \gpmc_driver|gpmc_addr_in\(3),
	datad => \gpmc_driver|Decoder0~20_combout\,
	combout => \gpmc_driver|Decoder0~56_combout\);

-- Location: FF_X48_Y28_N23
\gpmc_driver|ram[11][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(0),
	sload => VCC,
	ena => \gpmc_driver|Decoder0~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[11][0]~q\);

-- Location: LCCOMB_X45_Y28_N28
\gpmc_driver|ram[9][0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[9][0]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gpmc_driver|gpmc_data_in\(0),
	combout => \gpmc_driver|ram[9][0]~feeder_combout\);

-- Location: LCCOMB_X45_Y30_N28
\gpmc_driver|Decoder0~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|Decoder0~30_combout\ = (!\gpmc_driver|gpmc_addr_in\(1) & (!\gpmc_driver|gpmc_addr_in\(2) & \gpmc_driver|gpmc_addr_in\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \gpmc_driver|gpmc_addr_in\(1),
	datac => \gpmc_driver|gpmc_addr_in\(2),
	datad => \gpmc_driver|gpmc_addr_in\(0),
	combout => \gpmc_driver|Decoder0~30_combout\);

-- Location: LCCOMB_X45_Y30_N2
\gpmc_driver|Decoder0~31\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|Decoder0~31_combout\ = (!\gpmc_driver|gpmc_addr_in\(4) & (\gpmc_driver|Decoder0~30_combout\ & (\gpmc_driver|gpmc_addr_in\(3) & \gpmc_driver|Decoder0~27_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(4),
	datab => \gpmc_driver|Decoder0~30_combout\,
	datac => \gpmc_driver|gpmc_addr_in\(3),
	datad => \gpmc_driver|Decoder0~27_combout\,
	combout => \gpmc_driver|Decoder0~31_combout\);

-- Location: FF_X45_Y28_N29
\gpmc_driver|ram[9][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[9][0]~feeder_combout\,
	ena => \gpmc_driver|Decoder0~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[9][0]~q\);

-- Location: LCCOMB_X46_Y30_N28
\gpmc_driver|Decoder0~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|Decoder0~32_combout\ = (!\gpmc_driver|gpmc_addr_in\(1) & (!\gpmc_driver|gpmc_addr_in\(2) & (\gpmc_driver|Decoder0~28_combout\ & \gpmc_driver|Decoder0~27_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(1),
	datab => \gpmc_driver|gpmc_addr_in\(2),
	datac => \gpmc_driver|Decoder0~28_combout\,
	datad => \gpmc_driver|Decoder0~27_combout\,
	combout => \gpmc_driver|Decoder0~32_combout\);

-- Location: FF_X48_Y28_N21
\gpmc_driver|ram[8][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(0),
	sload => VCC,
	ena => \gpmc_driver|Decoder0~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[8][0]~q\);

-- Location: LCCOMB_X48_Y28_N20
\gpmc_driver|gpmc_data_out~53\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~53_combout\ = (\gpmc_driver|gpmc_addr_in\(1) & (((\gpmc_driver|gpmc_addr_in\(0))))) # (!\gpmc_driver|gpmc_addr_in\(1) & ((\gpmc_driver|gpmc_addr_in\(0) & (\gpmc_driver|ram[9][0]~q\)) # (!\gpmc_driver|gpmc_addr_in\(0) & 
-- ((\gpmc_driver|ram[8][0]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(1),
	datab => \gpmc_driver|ram[9][0]~q\,
	datac => \gpmc_driver|ram[8][0]~q\,
	datad => \gpmc_driver|gpmc_addr_in\(0),
	combout => \gpmc_driver|gpmc_data_out~53_combout\);

-- Location: LCCOMB_X48_Y28_N22
\gpmc_driver|gpmc_data_out~54\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~54_combout\ = (\gpmc_driver|gpmc_addr_in\(1) & ((\gpmc_driver|gpmc_data_out~53_combout\ & ((\gpmc_driver|ram[11][0]~q\))) # (!\gpmc_driver|gpmc_data_out~53_combout\ & (\gpmc_driver|ram[10][0]~q\)))) # 
-- (!\gpmc_driver|gpmc_addr_in\(1) & (((\gpmc_driver|gpmc_data_out~53_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(1),
	datab => \gpmc_driver|ram[10][0]~q\,
	datac => \gpmc_driver|ram[11][0]~q\,
	datad => \gpmc_driver|gpmc_data_out~53_combout\,
	combout => \gpmc_driver|gpmc_data_out~54_combout\);

-- Location: LCCOMB_X49_Y30_N22
\gpmc_driver|gpmc_data_out[0]~48\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out[0]~48_combout\ = (\gpmc_driver|gpmc_addr_in\(3)) # ((!\gpmc_driver|gpmc_addr_in\(2) & \gpmc_driver|gpmc_addr_in\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(2),
	datab => \gpmc_driver|gpmc_addr_in\(0),
	datad => \gpmc_driver|gpmc_addr_in\(3),
	combout => \gpmc_driver|gpmc_data_out[0]~48_combout\);

-- Location: LCCOMB_X45_Y30_N18
\gpmc_driver|Decoder0~54\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|Decoder0~54_combout\ = (\gpmc_driver|gpmc_addr_in\(0) & (!\gpmc_driver|gpmc_addr_in\(4) & (!\gpmc_driver|gpmc_addr_in\(3) & \gpmc_driver|Decoder0~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(0),
	datab => \gpmc_driver|gpmc_addr_in\(4),
	datac => \gpmc_driver|gpmc_addr_in\(3),
	datad => \gpmc_driver|Decoder0~20_combout\,
	combout => \gpmc_driver|Decoder0~54_combout\);

-- Location: FF_X52_Y28_N1
\gpmc_driver|ram[3][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(0),
	sload => VCC,
	ena => \gpmc_driver|Decoder0~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[3][0]~q\);

-- Location: LCCOMB_X49_Y30_N28
\gpmc_driver|gpmc_data_out[0]~51\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out[0]~51_combout\ = (\gpmc_driver|gpmc_addr_in\(3)) # (\gpmc_driver|gpmc_addr_in\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \gpmc_driver|gpmc_addr_in\(3),
	datad => \gpmc_driver|gpmc_addr_in\(2),
	combout => \gpmc_driver|gpmc_data_out[0]~51_combout\);

-- Location: LCCOMB_X45_Y30_N4
\gpmc_driver|Decoder0~55\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|Decoder0~55_combout\ = (!\gpmc_driver|gpmc_addr_in\(0) & (!\gpmc_driver|gpmc_addr_in\(3) & (!\gpmc_driver|gpmc_addr_in\(4) & \gpmc_driver|Decoder0~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(0),
	datab => \gpmc_driver|gpmc_addr_in\(3),
	datac => \gpmc_driver|gpmc_addr_in\(4),
	datad => \gpmc_driver|Decoder0~20_combout\,
	combout => \gpmc_driver|Decoder0~55_combout\);

-- Location: FF_X52_Y28_N7
\gpmc_driver|ram[2][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(0),
	sload => VCC,
	ena => \gpmc_driver|Decoder0~55_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[2][0]~q\);

-- Location: LCCOMB_X53_Y28_N16
\gpmc_driver|ram[5][0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[5][0]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gpmc_driver|gpmc_data_in\(0),
	combout => \gpmc_driver|ram[5][0]~feeder_combout\);

-- Location: LCCOMB_X50_Y28_N10
\gpmc_driver|Decoder0~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|Decoder0~18_combout\ = (!\gpmc_driver|gpmc_addr_in\(4) & !\gpmc_driver|gpmc_addr_in\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gpmc_driver|gpmc_addr_in\(4),
	datad => \gpmc_driver|gpmc_addr_in\(3),
	combout => \gpmc_driver|Decoder0~18_combout\);

-- Location: LCCOMB_X49_Y28_N24
\gpmc_driver|Decoder0~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|Decoder0~23_combout\ = (\gpmc_driver|gpmc_addr_in\(0) & (\gpmc_driver|Decoder0~18_combout\ & (!\gpmc_driver|gpmc_addr_in\(1) & \gpmc_driver|Decoder0~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(0),
	datab => \gpmc_driver|Decoder0~18_combout\,
	datac => \gpmc_driver|gpmc_addr_in\(1),
	datad => \gpmc_driver|Decoder0~22_combout\,
	combout => \gpmc_driver|Decoder0~23_combout\);

-- Location: FF_X53_Y28_N17
\gpmc_driver|ram[5][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[5][0]~feeder_combout\,
	ena => \gpmc_driver|Decoder0~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[5][0]~q\);

-- Location: LCCOMB_X49_Y28_N10
\gpmc_driver|Decoder0~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|Decoder0~26_combout\ = (\gpmc_driver|gpmc_addr_in\(0) & (\gpmc_driver|gpmc_addr_in\(1) & (\gpmc_driver|Decoder0~18_combout\ & \gpmc_driver|Decoder0~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(0),
	datab => \gpmc_driver|gpmc_addr_in\(1),
	datac => \gpmc_driver|Decoder0~18_combout\,
	datad => \gpmc_driver|Decoder0~22_combout\,
	combout => \gpmc_driver|Decoder0~26_combout\);

-- Location: FF_X50_Y28_N27
\gpmc_driver|ram[7][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(0),
	sload => VCC,
	ena => \gpmc_driver|Decoder0~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[7][0]~q\);

-- Location: LCCOMB_X51_Y28_N24
\gpmc_driver|ram[6][0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[6][0]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gpmc_driver|gpmc_data_in\(0),
	combout => \gpmc_driver|ram[6][0]~feeder_combout\);

-- Location: LCCOMB_X50_Y28_N0
\gpmc_driver|Decoder0~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|Decoder0~24_combout\ = (\gpmc_driver|gpmc_addr_in\(1) & (!\gpmc_driver|gpmc_addr_in\(0) & (\gpmc_driver|Decoder0~18_combout\ & \gpmc_driver|Decoder0~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(1),
	datab => \gpmc_driver|gpmc_addr_in\(0),
	datac => \gpmc_driver|Decoder0~18_combout\,
	datad => \gpmc_driver|Decoder0~22_combout\,
	combout => \gpmc_driver|Decoder0~24_combout\);

-- Location: FF_X51_Y28_N25
\gpmc_driver|ram[6][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[6][0]~feeder_combout\,
	ena => \gpmc_driver|Decoder0~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[6][0]~q\);

-- Location: LCCOMB_X50_Y28_N30
\gpmc_driver|Decoder0~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|Decoder0~25_combout\ = (!\gpmc_driver|gpmc_addr_in\(1) & (!\gpmc_driver|gpmc_addr_in\(0) & (\gpmc_driver|Decoder0~18_combout\ & \gpmc_driver|Decoder0~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(1),
	datab => \gpmc_driver|gpmc_addr_in\(0),
	datac => \gpmc_driver|Decoder0~18_combout\,
	datad => \gpmc_driver|Decoder0~22_combout\,
	combout => \gpmc_driver|Decoder0~25_combout\);

-- Location: FF_X50_Y28_N17
\gpmc_driver|ram[4][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(0),
	sload => VCC,
	ena => \gpmc_driver|Decoder0~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[4][0]~q\);

-- Location: LCCOMB_X50_Y28_N16
\gpmc_driver|gpmc_data_out~49\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~49_combout\ = (\gpmc_driver|gpmc_addr_in\(0) & (((\gpmc_driver|gpmc_addr_in\(1))))) # (!\gpmc_driver|gpmc_addr_in\(0) & ((\gpmc_driver|gpmc_addr_in\(1) & (\gpmc_driver|ram[6][0]~q\)) # (!\gpmc_driver|gpmc_addr_in\(1) & 
-- ((\gpmc_driver|ram[4][0]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(0),
	datab => \gpmc_driver|ram[6][0]~q\,
	datac => \gpmc_driver|ram[4][0]~q\,
	datad => \gpmc_driver|gpmc_addr_in\(1),
	combout => \gpmc_driver|gpmc_data_out~49_combout\);

-- Location: LCCOMB_X50_Y28_N26
\gpmc_driver|gpmc_data_out~50\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~50_combout\ = (\gpmc_driver|gpmc_addr_in\(0) & ((\gpmc_driver|gpmc_data_out~49_combout\ & ((\gpmc_driver|ram[7][0]~q\))) # (!\gpmc_driver|gpmc_data_out~49_combout\ & (\gpmc_driver|ram[5][0]~q\)))) # 
-- (!\gpmc_driver|gpmc_addr_in\(0) & (((\gpmc_driver|gpmc_data_out~49_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|ram[5][0]~q\,
	datab => \gpmc_driver|gpmc_addr_in\(0),
	datac => \gpmc_driver|ram[7][0]~q\,
	datad => \gpmc_driver|gpmc_data_out~49_combout\,
	combout => \gpmc_driver|gpmc_data_out~50_combout\);

-- Location: LCCOMB_X52_Y28_N6
\gpmc_driver|gpmc_data_out~52\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~52_combout\ = (\gpmc_driver|gpmc_data_out[0]~48_combout\ & (\gpmc_driver|gpmc_data_out[0]~51_combout\)) # (!\gpmc_driver|gpmc_data_out[0]~48_combout\ & ((\gpmc_driver|gpmc_data_out[0]~51_combout\ & 
-- ((\gpmc_driver|gpmc_data_out~50_combout\))) # (!\gpmc_driver|gpmc_data_out[0]~51_combout\ & (\gpmc_driver|ram[2][0]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_data_out[0]~48_combout\,
	datab => \gpmc_driver|gpmc_data_out[0]~51_combout\,
	datac => \gpmc_driver|ram[2][0]~q\,
	datad => \gpmc_driver|gpmc_data_out~50_combout\,
	combout => \gpmc_driver|gpmc_data_out~52_combout\);

-- Location: LCCOMB_X52_Y28_N0
\gpmc_driver|gpmc_data_out~55\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~55_combout\ = (\gpmc_driver|gpmc_data_out[0]~48_combout\ & ((\gpmc_driver|gpmc_data_out~52_combout\ & (\gpmc_driver|gpmc_data_out~54_combout\)) # (!\gpmc_driver|gpmc_data_out~52_combout\ & ((\gpmc_driver|ram[3][0]~q\))))) # 
-- (!\gpmc_driver|gpmc_data_out[0]~48_combout\ & (((\gpmc_driver|gpmc_data_out~52_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_data_out~54_combout\,
	datab => \gpmc_driver|gpmc_data_out[0]~48_combout\,
	datac => \gpmc_driver|ram[3][0]~q\,
	datad => \gpmc_driver|gpmc_data_out~52_combout\,
	combout => \gpmc_driver|gpmc_data_out~55_combout\);

-- Location: LCCOMB_X51_Y29_N28
\gpmc_driver|gpmc_data_out~340\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~340_combout\ = (\gpmc_driver|gpmc_data_out~55_combout\ & ((\gpmc_driver|gpmc_addr_in\(3)) # ((\gpmc_driver|gpmc_addr_in\(2)) # (\gpmc_driver|gpmc_addr_in\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(3),
	datab => \gpmc_driver|gpmc_addr_in\(2),
	datac => \gpmc_driver|gpmc_addr_in\(1),
	datad => \gpmc_driver|gpmc_data_out~55_combout\,
	combout => \gpmc_driver|gpmc_data_out~340_combout\);

-- Location: LCCOMB_X51_Y29_N24
\gpmc_driver|gpmc_data_out[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out[0]~0_combout\ = (\gpmc_driver|gpmc_data_out[0]~58_combout\ & (\gpmc_driver|gpmc_data_out~57_combout\)) # (!\gpmc_driver|gpmc_data_out[0]~58_combout\ & ((\gpmc_driver|gpmc_data_out~340_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_data_out[0]~58_combout\,
	datab => \gpmc_driver|gpmc_data_out~57_combout\,
	datad => \gpmc_driver|gpmc_data_out~340_combout\,
	combout => \gpmc_driver|gpmc_data_out[0]~0_combout\);

-- Location: LCCOMB_X50_Y33_N0
\gpmc_driver|ram[26][0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[26][0]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gpmc_driver|gpmc_data_in\(0),
	combout => \gpmc_driver|ram[26][0]~feeder_combout\);

-- Location: LCCOMB_X45_Y30_N16
\gpmc_driver|Decoder0~57\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|Decoder0~57_combout\ = (!\gpmc_driver|gpmc_addr_in\(0) & (\gpmc_driver|gpmc_addr_in\(3) & (\gpmc_driver|gpmc_addr_in\(4) & \gpmc_driver|Decoder0~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(0),
	datab => \gpmc_driver|gpmc_addr_in\(3),
	datac => \gpmc_driver|gpmc_addr_in\(4),
	datad => \gpmc_driver|Decoder0~20_combout\,
	combout => \gpmc_driver|Decoder0~57_combout\);

-- Location: FF_X50_Y33_N1
\gpmc_driver|ram[26][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[26][0]~feeder_combout\,
	ena => \gpmc_driver|Decoder0~57_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[26][0]~q\);

-- Location: LCCOMB_X49_Y28_N6
\gpmc_driver|Decoder0~42\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|Decoder0~42_combout\ = (\gpmc_driver|gpmc_addr_in\(4) & (\gpmc_driver|gpmc_addr_in\(1) & (\gpmc_driver|Decoder0~34_combout\ & \gpmc_driver|Decoder0~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(4),
	datab => \gpmc_driver|gpmc_addr_in\(1),
	datac => \gpmc_driver|Decoder0~34_combout\,
	datad => \gpmc_driver|Decoder0~22_combout\,
	combout => \gpmc_driver|Decoder0~42_combout\);

-- Location: FF_X50_Y33_N7
\gpmc_driver|ram[30][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(0),
	sload => VCC,
	ena => \gpmc_driver|Decoder0~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[30][0]~q\);

-- Location: LCCOMB_X49_Y33_N0
\gpmc_driver|ram[22][0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[22][0]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gpmc_driver|gpmc_data_in\(0),
	combout => \gpmc_driver|ram[22][0]~feeder_combout\);

-- Location: LCCOMB_X50_Y30_N22
\gpmc_driver|Decoder0~39\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|Decoder0~39_combout\ = (!\gpmc_driver|gpmc_addr_in\(3) & \gpmc_driver|gpmc_addr_in\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gpmc_driver|gpmc_addr_in\(3),
	datad => \gpmc_driver|gpmc_addr_in\(4),
	combout => \gpmc_driver|Decoder0~39_combout\);

-- Location: LCCOMB_X50_Y30_N16
\gpmc_driver|Decoder0~40\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|Decoder0~40_combout\ = (\gpmc_driver|Decoder0~39_combout\ & (\gpmc_driver|gpmc_addr_in\(1) & (\gpmc_driver|Decoder0~22_combout\ & !\gpmc_driver|gpmc_addr_in\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|Decoder0~39_combout\,
	datab => \gpmc_driver|gpmc_addr_in\(1),
	datac => \gpmc_driver|Decoder0~22_combout\,
	datad => \gpmc_driver|gpmc_addr_in\(0),
	combout => \gpmc_driver|Decoder0~40_combout\);

-- Location: FF_X49_Y33_N1
\gpmc_driver|ram[22][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[22][0]~feeder_combout\,
	ena => \gpmc_driver|Decoder0~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[22][0]~q\);

-- Location: LCCOMB_X45_Y30_N30
\gpmc_driver|Decoder0~58\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|Decoder0~58_combout\ = (!\gpmc_driver|gpmc_addr_in\(0) & (!\gpmc_driver|gpmc_addr_in\(3) & (\gpmc_driver|gpmc_addr_in\(4) & \gpmc_driver|Decoder0~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(0),
	datab => \gpmc_driver|gpmc_addr_in\(3),
	datac => \gpmc_driver|gpmc_addr_in\(4),
	datad => \gpmc_driver|Decoder0~20_combout\,
	combout => \gpmc_driver|Decoder0~58_combout\);

-- Location: FF_X49_Y33_N27
\gpmc_driver|ram[18][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(0),
	sload => VCC,
	ena => \gpmc_driver|Decoder0~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[18][0]~q\);

-- Location: LCCOMB_X49_Y33_N26
\gpmc_driver|gpmc_data_out~59\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~59_combout\ = (\gpmc_driver|gpmc_addr_in\(3) & (((\gpmc_driver|gpmc_addr_in\(2))))) # (!\gpmc_driver|gpmc_addr_in\(3) & ((\gpmc_driver|gpmc_addr_in\(2) & (\gpmc_driver|ram[22][0]~q\)) # (!\gpmc_driver|gpmc_addr_in\(2) & 
-- ((\gpmc_driver|ram[18][0]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(3),
	datab => \gpmc_driver|ram[22][0]~q\,
	datac => \gpmc_driver|ram[18][0]~q\,
	datad => \gpmc_driver|gpmc_addr_in\(2),
	combout => \gpmc_driver|gpmc_data_out~59_combout\);

-- Location: LCCOMB_X50_Y33_N6
\gpmc_driver|gpmc_data_out~60\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~60_combout\ = (\gpmc_driver|gpmc_addr_in\(3) & ((\gpmc_driver|gpmc_data_out~59_combout\ & ((\gpmc_driver|ram[30][0]~q\))) # (!\gpmc_driver|gpmc_data_out~59_combout\ & (\gpmc_driver|ram[26][0]~q\)))) # 
-- (!\gpmc_driver|gpmc_addr_in\(3) & (((\gpmc_driver|gpmc_data_out~59_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(3),
	datab => \gpmc_driver|ram[26][0]~q\,
	datac => \gpmc_driver|ram[30][0]~q\,
	datad => \gpmc_driver|gpmc_data_out~59_combout\,
	combout => \gpmc_driver|gpmc_data_out~60_combout\);

-- Location: LCCOMB_X50_Y32_N4
\gpmc_driver|ram[23][0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[23][0]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gpmc_driver|gpmc_data_in\(0),
	combout => \gpmc_driver|ram[23][0]~feeder_combout\);

-- Location: LCCOMB_X51_Y30_N20
\gpmc_driver|Decoder0~43\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|Decoder0~43_combout\ = (!\gpmc_driver|gpmc_addr_in\(3) & \gpmc_driver|gpmc_addr_in\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(3),
	datad => \gpmc_driver|gpmc_addr_in\(0),
	combout => \gpmc_driver|Decoder0~43_combout\);

-- Location: LCCOMB_X50_Y30_N10
\gpmc_driver|Decoder0~52\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|Decoder0~52_combout\ = (\gpmc_driver|gpmc_addr_in\(1) & (\gpmc_driver|gpmc_addr_in\(4) & (\gpmc_driver|Decoder0~22_combout\ & \gpmc_driver|Decoder0~43_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(1),
	datab => \gpmc_driver|gpmc_addr_in\(4),
	datac => \gpmc_driver|Decoder0~22_combout\,
	datad => \gpmc_driver|Decoder0~43_combout\,
	combout => \gpmc_driver|Decoder0~52_combout\);

-- Location: FF_X50_Y32_N5
\gpmc_driver|ram[23][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[23][0]~feeder_combout\,
	ena => \gpmc_driver|Decoder0~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[23][0]~q\);

-- Location: LCCOMB_X50_Y31_N0
\gpmc_driver|Decoder0~53\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|Decoder0~53_combout\ = (\gpmc_driver|gpmc_addr_in\(4) & (\gpmc_driver|gpmc_addr_in\(1) & (\gpmc_driver|Decoder0~33_combout\ & \gpmc_driver|Decoder0~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(4),
	datab => \gpmc_driver|gpmc_addr_in\(1),
	datac => \gpmc_driver|Decoder0~33_combout\,
	datad => \gpmc_driver|Decoder0~22_combout\,
	combout => \gpmc_driver|Decoder0~53_combout\);

-- Location: FF_X50_Y32_N7
\gpmc_driver|ram[31][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(0),
	sload => VCC,
	ena => \gpmc_driver|Decoder0~53_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[31][0]~q\);

-- Location: LCCOMB_X51_Y32_N12
\gpmc_driver|ram[27][0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[27][0]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gpmc_driver|gpmc_data_in\(0),
	combout => \gpmc_driver|ram[27][0]~feeder_combout\);

-- Location: LCCOMB_X45_Y30_N8
\gpmc_driver|Decoder0~61\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|Decoder0~61_combout\ = (\gpmc_driver|gpmc_addr_in\(0) & (\gpmc_driver|gpmc_addr_in\(4) & (\gpmc_driver|gpmc_addr_in\(3) & \gpmc_driver|Decoder0~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(0),
	datab => \gpmc_driver|gpmc_addr_in\(4),
	datac => \gpmc_driver|gpmc_addr_in\(3),
	datad => \gpmc_driver|Decoder0~20_combout\,
	combout => \gpmc_driver|Decoder0~61_combout\);

-- Location: FF_X51_Y32_N13
\gpmc_driver|ram[27][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[27][0]~feeder_combout\,
	ena => \gpmc_driver|Decoder0~61_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[27][0]~q\);

-- Location: LCCOMB_X45_Y30_N22
\gpmc_driver|Decoder0~62\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|Decoder0~62_combout\ = (\gpmc_driver|gpmc_addr_in\(0) & (!\gpmc_driver|gpmc_addr_in\(3) & (\gpmc_driver|gpmc_addr_in\(4) & \gpmc_driver|Decoder0~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(0),
	datab => \gpmc_driver|gpmc_addr_in\(3),
	datac => \gpmc_driver|gpmc_addr_in\(4),
	datad => \gpmc_driver|Decoder0~20_combout\,
	combout => \gpmc_driver|Decoder0~62_combout\);

-- Location: FF_X51_Y32_N23
\gpmc_driver|ram[19][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(0),
	sload => VCC,
	ena => \gpmc_driver|Decoder0~62_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[19][0]~q\);

-- Location: LCCOMB_X51_Y32_N22
\gpmc_driver|gpmc_data_out~66\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~66_combout\ = (\gpmc_driver|gpmc_addr_in\(3) & ((\gpmc_driver|ram[27][0]~q\) # ((\gpmc_driver|gpmc_addr_in\(2))))) # (!\gpmc_driver|gpmc_addr_in\(3) & (((\gpmc_driver|ram[19][0]~q\ & !\gpmc_driver|gpmc_addr_in\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|ram[27][0]~q\,
	datab => \gpmc_driver|gpmc_addr_in\(3),
	datac => \gpmc_driver|ram[19][0]~q\,
	datad => \gpmc_driver|gpmc_addr_in\(2),
	combout => \gpmc_driver|gpmc_data_out~66_combout\);

-- Location: LCCOMB_X50_Y32_N6
\gpmc_driver|gpmc_data_out~67\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~67_combout\ = (\gpmc_driver|gpmc_addr_in\(2) & ((\gpmc_driver|gpmc_data_out~66_combout\ & ((\gpmc_driver|ram[31][0]~q\))) # (!\gpmc_driver|gpmc_data_out~66_combout\ & (\gpmc_driver|ram[23][0]~q\)))) # 
-- (!\gpmc_driver|gpmc_addr_in\(2) & (((\gpmc_driver|gpmc_data_out~66_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(2),
	datab => \gpmc_driver|ram[23][0]~q\,
	datac => \gpmc_driver|ram[31][0]~q\,
	datad => \gpmc_driver|gpmc_data_out~66_combout\,
	combout => \gpmc_driver|gpmc_data_out~67_combout\);

-- Location: LCCOMB_X46_Y29_N6
\gpmc_driver|ram[24][0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[24][0]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gpmc_driver|gpmc_data_in\(0),
	combout => \gpmc_driver|ram[24][0]~feeder_combout\);

-- Location: LCCOMB_X49_Y30_N26
\gpmc_driver|Decoder0~48\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|Decoder0~48_combout\ = (!\gpmc_driver|gpmc_addr_in\(2) & (!\gpmc_driver|gpmc_addr_in\(9) & (!\gpmc_driver|gpmc_ncs~q\ & !\gpmc_driver|gpmc_nwe~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(2),
	datab => \gpmc_driver|gpmc_addr_in\(9),
	datac => \gpmc_driver|gpmc_ncs~q\,
	datad => \gpmc_driver|gpmc_nwe~q\,
	combout => \gpmc_driver|Decoder0~48_combout\);

-- Location: LCCOMB_X48_Y30_N12
\gpmc_driver|Decoder0~49\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|Decoder0~49_combout\ = (!\gpmc_driver|gpmc_addr_in\(1) & (\gpmc_driver|gpmc_addr_in\(4) & (!\gpmc_driver|LessThan0~0_combout\ & \gpmc_driver|Decoder0~48_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(1),
	datab => \gpmc_driver|gpmc_addr_in\(4),
	datac => \gpmc_driver|LessThan0~0_combout\,
	datad => \gpmc_driver|Decoder0~48_combout\,
	combout => \gpmc_driver|Decoder0~49_combout\);

-- Location: LCCOMB_X48_Y30_N14
\gpmc_driver|Decoder0~59\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|Decoder0~59_combout\ = (!\gpmc_driver|gpmc_addr_in\(0) & (\gpmc_driver|gpmc_addr_in\(3) & \gpmc_driver|Decoder0~49_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(0),
	datac => \gpmc_driver|gpmc_addr_in\(3),
	datad => \gpmc_driver|Decoder0~49_combout\,
	combout => \gpmc_driver|Decoder0~59_combout\);

-- Location: FF_X46_Y29_N7
\gpmc_driver|ram[24][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[24][0]~feeder_combout\,
	ena => \gpmc_driver|Decoder0~59_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[24][0]~q\);

-- Location: LCCOMB_X49_Y28_N12
\gpmc_driver|Decoder0~51\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|Decoder0~51_combout\ = (\gpmc_driver|gpmc_addr_in\(4) & (!\gpmc_driver|gpmc_addr_in\(1) & (\gpmc_driver|Decoder0~34_combout\ & \gpmc_driver|Decoder0~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(4),
	datab => \gpmc_driver|gpmc_addr_in\(1),
	datac => \gpmc_driver|Decoder0~34_combout\,
	datad => \gpmc_driver|Decoder0~22_combout\,
	combout => \gpmc_driver|Decoder0~51_combout\);

-- Location: FF_X50_Y29_N15
\gpmc_driver|ram[28][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(0),
	sload => VCC,
	ena => \gpmc_driver|Decoder0~51_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[28][0]~q\);

-- Location: LCCOMB_X49_Y30_N4
\gpmc_driver|Decoder0~60\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|Decoder0~60_combout\ = (!\gpmc_driver|gpmc_addr_in\(0) & (!\gpmc_driver|gpmc_addr_in\(3) & \gpmc_driver|Decoder0~49_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(0),
	datab => \gpmc_driver|gpmc_addr_in\(3),
	datad => \gpmc_driver|Decoder0~49_combout\,
	combout => \gpmc_driver|Decoder0~60_combout\);

-- Location: FF_X50_Y29_N13
\gpmc_driver|ram[16][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(0),
	sload => VCC,
	ena => \gpmc_driver|Decoder0~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[16][0]~q\);

-- Location: LCCOMB_X43_Y29_N8
\gpmc_driver|ram[20][0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[20][0]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gpmc_driver|gpmc_data_in\(0),
	combout => \gpmc_driver|ram[20][0]~feeder_combout\);

-- Location: LCCOMB_X49_Y30_N14
\gpmc_driver|Decoder0~41\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|Decoder0~41_combout\ = (!\gpmc_driver|gpmc_addr_in\(0) & !\gpmc_driver|gpmc_addr_in\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gpmc_driver|gpmc_addr_in\(0),
	datad => \gpmc_driver|gpmc_addr_in\(3),
	combout => \gpmc_driver|Decoder0~41_combout\);

-- Location: LCCOMB_X45_Y30_N12
\gpmc_driver|Decoder0~50\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|Decoder0~50_combout\ = (\gpmc_driver|gpmc_addr_in\(4) & (\gpmc_driver|Decoder0~22_combout\ & (!\gpmc_driver|gpmc_addr_in\(1) & \gpmc_driver|Decoder0~41_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(4),
	datab => \gpmc_driver|Decoder0~22_combout\,
	datac => \gpmc_driver|gpmc_addr_in\(1),
	datad => \gpmc_driver|Decoder0~41_combout\,
	combout => \gpmc_driver|Decoder0~50_combout\);

-- Location: FF_X43_Y29_N9
\gpmc_driver|ram[20][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[20][0]~feeder_combout\,
	ena => \gpmc_driver|Decoder0~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[20][0]~q\);

-- Location: LCCOMB_X50_Y29_N12
\gpmc_driver|gpmc_data_out~63\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~63_combout\ = (\gpmc_driver|gpmc_addr_in\(2) & ((\gpmc_driver|gpmc_addr_in\(3)) # ((\gpmc_driver|ram[20][0]~q\)))) # (!\gpmc_driver|gpmc_addr_in\(2) & (!\gpmc_driver|gpmc_addr_in\(3) & (\gpmc_driver|ram[16][0]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(2),
	datab => \gpmc_driver|gpmc_addr_in\(3),
	datac => \gpmc_driver|ram[16][0]~q\,
	datad => \gpmc_driver|ram[20][0]~q\,
	combout => \gpmc_driver|gpmc_data_out~63_combout\);

-- Location: LCCOMB_X50_Y29_N14
\gpmc_driver|gpmc_data_out~64\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~64_combout\ = (\gpmc_driver|gpmc_addr_in\(3) & ((\gpmc_driver|gpmc_data_out~63_combout\ & ((\gpmc_driver|ram[28][0]~q\))) # (!\gpmc_driver|gpmc_data_out~63_combout\ & (\gpmc_driver|ram[24][0]~q\)))) # 
-- (!\gpmc_driver|gpmc_addr_in\(3) & (((\gpmc_driver|gpmc_data_out~63_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(3),
	datab => \gpmc_driver|ram[24][0]~q\,
	datac => \gpmc_driver|ram[28][0]~q\,
	datad => \gpmc_driver|gpmc_data_out~63_combout\,
	combout => \gpmc_driver|gpmc_data_out~64_combout\);

-- Location: LCCOMB_X52_Y30_N8
\gpmc_driver|ram[21][0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[21][0]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gpmc_driver|gpmc_data_in\(0),
	combout => \gpmc_driver|ram[21][0]~feeder_combout\);

-- Location: LCCOMB_X51_Y30_N2
\gpmc_driver|Decoder0~44\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|Decoder0~44_combout\ = (\gpmc_driver|gpmc_addr_in\(4) & (!\gpmc_driver|gpmc_addr_in\(1) & (\gpmc_driver|Decoder0~22_combout\ & \gpmc_driver|Decoder0~43_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(4),
	datab => \gpmc_driver|gpmc_addr_in\(1),
	datac => \gpmc_driver|Decoder0~22_combout\,
	datad => \gpmc_driver|Decoder0~43_combout\,
	combout => \gpmc_driver|Decoder0~44_combout\);

-- Location: FF_X52_Y30_N9
\gpmc_driver|ram[21][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[21][0]~feeder_combout\,
	ena => \gpmc_driver|Decoder0~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[21][0]~q\);

-- Location: LCCOMB_X51_Y30_N0
\gpmc_driver|Decoder0~47\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|Decoder0~47_combout\ = (\gpmc_driver|Decoder0~22_combout\ & (\gpmc_driver|gpmc_addr_in\(4) & (\gpmc_driver|Decoder0~33_combout\ & !\gpmc_driver|gpmc_addr_in\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|Decoder0~22_combout\,
	datab => \gpmc_driver|gpmc_addr_in\(4),
	datac => \gpmc_driver|Decoder0~33_combout\,
	datad => \gpmc_driver|gpmc_addr_in\(1),
	combout => \gpmc_driver|Decoder0~47_combout\);

-- Location: FF_X52_Y30_N15
\gpmc_driver|ram[29][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(0),
	sload => VCC,
	ena => \gpmc_driver|Decoder0~47_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[29][0]~q\);

-- Location: LCCOMB_X53_Y30_N0
\gpmc_driver|ram[25][0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[25][0]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gpmc_driver|gpmc_data_in\(0),
	combout => \gpmc_driver|ram[25][0]~feeder_combout\);

-- Location: LCCOMB_X45_Y30_N24
\gpmc_driver|Decoder0~45\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|Decoder0~45_combout\ = (\gpmc_driver|gpmc_addr_in\(4) & (\gpmc_driver|Decoder0~30_combout\ & (\gpmc_driver|gpmc_addr_in\(3) & \gpmc_driver|Decoder0~27_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(4),
	datab => \gpmc_driver|Decoder0~30_combout\,
	datac => \gpmc_driver|gpmc_addr_in\(3),
	datad => \gpmc_driver|Decoder0~27_combout\,
	combout => \gpmc_driver|Decoder0~45_combout\);

-- Location: FF_X53_Y30_N1
\gpmc_driver|ram[25][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[25][0]~feeder_combout\,
	ena => \gpmc_driver|Decoder0~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[25][0]~q\);

-- Location: LCCOMB_X45_Y30_N10
\gpmc_driver|Decoder0~46\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|Decoder0~46_combout\ = (\gpmc_driver|gpmc_addr_in\(4) & (\gpmc_driver|Decoder0~30_combout\ & (!\gpmc_driver|gpmc_addr_in\(3) & \gpmc_driver|Decoder0~27_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(4),
	datab => \gpmc_driver|Decoder0~30_combout\,
	datac => \gpmc_driver|gpmc_addr_in\(3),
	datad => \gpmc_driver|Decoder0~27_combout\,
	combout => \gpmc_driver|Decoder0~46_combout\);

-- Location: FF_X53_Y30_N15
\gpmc_driver|ram[17][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(0),
	sload => VCC,
	ena => \gpmc_driver|Decoder0~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[17][0]~q\);

-- Location: LCCOMB_X53_Y30_N14
\gpmc_driver|gpmc_data_out~61\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~61_combout\ = (\gpmc_driver|gpmc_addr_in\(2) & (((\gpmc_driver|gpmc_addr_in\(3))))) # (!\gpmc_driver|gpmc_addr_in\(2) & ((\gpmc_driver|gpmc_addr_in\(3) & (\gpmc_driver|ram[25][0]~q\)) # (!\gpmc_driver|gpmc_addr_in\(3) & 
-- ((\gpmc_driver|ram[17][0]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(2),
	datab => \gpmc_driver|ram[25][0]~q\,
	datac => \gpmc_driver|ram[17][0]~q\,
	datad => \gpmc_driver|gpmc_addr_in\(3),
	combout => \gpmc_driver|gpmc_data_out~61_combout\);

-- Location: LCCOMB_X52_Y30_N14
\gpmc_driver|gpmc_data_out~62\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~62_combout\ = (\gpmc_driver|gpmc_addr_in\(2) & ((\gpmc_driver|gpmc_data_out~61_combout\ & ((\gpmc_driver|ram[29][0]~q\))) # (!\gpmc_driver|gpmc_data_out~61_combout\ & (\gpmc_driver|ram[21][0]~q\)))) # 
-- (!\gpmc_driver|gpmc_addr_in\(2) & (((\gpmc_driver|gpmc_data_out~61_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(2),
	datab => \gpmc_driver|ram[21][0]~q\,
	datac => \gpmc_driver|ram[29][0]~q\,
	datad => \gpmc_driver|gpmc_data_out~61_combout\,
	combout => \gpmc_driver|gpmc_data_out~62_combout\);

-- Location: LCCOMB_X51_Y29_N0
\gpmc_driver|gpmc_data_out~65\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~65_combout\ = (\gpmc_driver|gpmc_addr_in\(0) & (((\gpmc_driver|gpmc_addr_in\(1)) # (\gpmc_driver|gpmc_data_out~62_combout\)))) # (!\gpmc_driver|gpmc_addr_in\(0) & (\gpmc_driver|gpmc_data_out~64_combout\ & 
-- (!\gpmc_driver|gpmc_addr_in\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_data_out~64_combout\,
	datab => \gpmc_driver|gpmc_addr_in\(0),
	datac => \gpmc_driver|gpmc_addr_in\(1),
	datad => \gpmc_driver|gpmc_data_out~62_combout\,
	combout => \gpmc_driver|gpmc_data_out~65_combout\);

-- Location: LCCOMB_X51_Y29_N14
\gpmc_driver|gpmc_data_out~68\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~68_combout\ = (\gpmc_driver|gpmc_addr_in\(1) & ((\gpmc_driver|gpmc_data_out~65_combout\ & ((\gpmc_driver|gpmc_data_out~67_combout\))) # (!\gpmc_driver|gpmc_data_out~65_combout\ & (\gpmc_driver|gpmc_data_out~60_combout\)))) # 
-- (!\gpmc_driver|gpmc_addr_in\(1) & (((\gpmc_driver|gpmc_data_out~65_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(1),
	datab => \gpmc_driver|gpmc_data_out~60_combout\,
	datac => \gpmc_driver|gpmc_data_out~67_combout\,
	datad => \gpmc_driver|gpmc_data_out~65_combout\,
	combout => \gpmc_driver|gpmc_data_out~68_combout\);

-- Location: LCCOMB_X49_Y30_N6
\gpmc_driver|LessThan0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|LessThan0~1_combout\ = (\gpmc_driver|gpmc_addr_in\(9)) # (\gpmc_driver|LessThan0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \gpmc_driver|gpmc_addr_in\(9),
	datad => \gpmc_driver|LessThan0~0_combout\,
	combout => \gpmc_driver|LessThan0~1_combout\);

-- Location: IOIBUF_X48_Y43_N15
\GPMC_nOE~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_GPMC_nOE,
	o => \GPMC_nOE~input_o\);

-- Location: FF_X49_Y30_N21
\gpmc_driver|gpmc_nre\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \GPMC_nOE~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|gpmc_nre~q\);

-- Location: LCCOMB_X49_Y30_N20
\gpmc_driver|gpmc_data_out[0]~69\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out[0]~69_combout\ = (!\gpmc_driver|gpmc_ncs~q\ & (!\gpmc_driver|gpmc_nre~q\ & \gpmc_driver|gpmc_nwe~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_ncs~q\,
	datac => \gpmc_driver|gpmc_nre~q\,
	datad => \gpmc_driver|gpmc_nwe~q\,
	combout => \gpmc_driver|gpmc_data_out[0]~69_combout\);

-- Location: FF_X51_Y29_N25
\gpmc_driver|gpmc_data_out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|gpmc_data_out[0]~0_combout\,
	asdata => \gpmc_driver|gpmc_data_out~68_combout\,
	sclr => \gpmc_driver|LessThan0~1_combout\,
	sload => \gpmc_driver|gpmc_addr_in\(4),
	ena => \gpmc_driver|gpmc_data_out[0]~69_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|gpmc_data_out\(0));

-- Location: LCCOMB_X49_Y42_N28
\gpmc_driver|GPMC_DATA~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|GPMC_DATA~16_combout\ = (!\GPMC_nCS6~input_o\ & !\GPMC_nOE~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \GPMC_nCS6~input_o\,
	datad => \GPMC_nOE~input_o\,
	combout => \gpmc_driver|GPMC_DATA~16_combout\);

-- Location: IOIBUF_X67_Y27_N15
\GPMC_DATA[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPMC_DATA(1),
	o => \GPMC_DATA[1]~input_o\);

-- Location: FF_X53_Y28_N23
\gpmc_driver|gpmc_data_in[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \GPMC_DATA[1]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|gpmc_data_in\(1));

-- Location: LCCOMB_X43_Y32_N0
\gpmc_driver|ram[13][1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[13][1]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gpmc_driver|gpmc_data_in\(1),
	combout => \gpmc_driver|ram[13][1]~feeder_combout\);

-- Location: FF_X43_Y32_N1
\gpmc_driver|ram[13][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[13][1]~feeder_combout\,
	ena => \gpmc_driver|Decoder0~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[13][1]~q\);

-- Location: FF_X43_Y32_N15
\gpmc_driver|ram[15][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(1),
	sload => VCC,
	ena => \gpmc_driver|Decoder0~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[15][1]~q\);

-- Location: LCCOMB_X44_Y32_N24
\gpmc_driver|ram[14][1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[14][1]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gpmc_driver|gpmc_data_in\(1),
	combout => \gpmc_driver|ram[14][1]~feeder_combout\);

-- Location: FF_X44_Y32_N25
\gpmc_driver|ram[14][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[14][1]~feeder_combout\,
	ena => \gpmc_driver|Decoder0~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[14][1]~q\);

-- Location: FF_X44_Y32_N23
\gpmc_driver|ram[12][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(1),
	sload => VCC,
	ena => \gpmc_driver|Decoder0~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[12][1]~q\);

-- Location: LCCOMB_X44_Y32_N22
\gpmc_driver|gpmc_data_out~76\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~76_combout\ = (\gpmc_driver|gpmc_addr_in\(0) & (((\gpmc_driver|gpmc_addr_in\(1))))) # (!\gpmc_driver|gpmc_addr_in\(0) & ((\gpmc_driver|gpmc_addr_in\(1) & (\gpmc_driver|ram[14][1]~q\)) # (!\gpmc_driver|gpmc_addr_in\(1) & 
-- ((\gpmc_driver|ram[12][1]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|ram[14][1]~q\,
	datab => \gpmc_driver|gpmc_addr_in\(0),
	datac => \gpmc_driver|ram[12][1]~q\,
	datad => \gpmc_driver|gpmc_addr_in\(1),
	combout => \gpmc_driver|gpmc_data_out~76_combout\);

-- Location: LCCOMB_X43_Y32_N14
\gpmc_driver|gpmc_data_out~77\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~77_combout\ = (\gpmc_driver|gpmc_addr_in\(0) & ((\gpmc_driver|gpmc_data_out~76_combout\ & ((\gpmc_driver|ram[15][1]~q\))) # (!\gpmc_driver|gpmc_data_out~76_combout\ & (\gpmc_driver|ram[13][1]~q\)))) # 
-- (!\gpmc_driver|gpmc_addr_in\(0) & (((\gpmc_driver|gpmc_data_out~76_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(0),
	datab => \gpmc_driver|ram[13][1]~q\,
	datac => \gpmc_driver|ram[15][1]~q\,
	datad => \gpmc_driver|gpmc_data_out~76_combout\,
	combout => \gpmc_driver|gpmc_data_out~77_combout\);

-- Location: LCCOMB_X50_Y28_N6
\gpmc_driver|ram[7][1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[7][1]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gpmc_driver|gpmc_data_in\(1),
	combout => \gpmc_driver|ram[7][1]~feeder_combout\);

-- Location: FF_X50_Y28_N7
\gpmc_driver|ram[7][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[7][1]~feeder_combout\,
	ena => \gpmc_driver|Decoder0~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[7][1]~q\);

-- Location: FF_X51_Y28_N3
\gpmc_driver|ram[6][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(1),
	sload => VCC,
	ena => \gpmc_driver|Decoder0~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[6][1]~q\);

-- Location: LCCOMB_X53_Y28_N30
\gpmc_driver|ram[5][1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[5][1]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gpmc_driver|gpmc_data_in\(1),
	combout => \gpmc_driver|ram[5][1]~feeder_combout\);

-- Location: FF_X53_Y28_N31
\gpmc_driver|ram[5][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[5][1]~feeder_combout\,
	ena => \gpmc_driver|Decoder0~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[5][1]~q\);

-- Location: FF_X50_Y28_N13
\gpmc_driver|ram[4][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(1),
	sload => VCC,
	ena => \gpmc_driver|Decoder0~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[4][1]~q\);

-- Location: LCCOMB_X50_Y28_N12
\gpmc_driver|gpmc_data_out~70\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~70_combout\ = (\gpmc_driver|gpmc_addr_in\(1) & (((\gpmc_driver|gpmc_addr_in\(0))))) # (!\gpmc_driver|gpmc_addr_in\(1) & ((\gpmc_driver|gpmc_addr_in\(0) & (\gpmc_driver|ram[5][1]~q\)) # (!\gpmc_driver|gpmc_addr_in\(0) & 
-- ((\gpmc_driver|ram[4][1]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(1),
	datab => \gpmc_driver|ram[5][1]~q\,
	datac => \gpmc_driver|ram[4][1]~q\,
	datad => \gpmc_driver|gpmc_addr_in\(0),
	combout => \gpmc_driver|gpmc_data_out~70_combout\);

-- Location: LCCOMB_X51_Y28_N2
\gpmc_driver|gpmc_data_out~71\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~71_combout\ = (\gpmc_driver|gpmc_addr_in\(1) & ((\gpmc_driver|gpmc_data_out~70_combout\ & (\gpmc_driver|ram[7][1]~q\)) # (!\gpmc_driver|gpmc_data_out~70_combout\ & ((\gpmc_driver|ram[6][1]~q\))))) # 
-- (!\gpmc_driver|gpmc_addr_in\(1) & (((\gpmc_driver|gpmc_data_out~70_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(1),
	datab => \gpmc_driver|ram[7][1]~q\,
	datac => \gpmc_driver|ram[6][1]~q\,
	datad => \gpmc_driver|gpmc_data_out~70_combout\,
	combout => \gpmc_driver|gpmc_data_out~71_combout\);

-- Location: LCCOMB_X45_Y28_N10
\gpmc_driver|ram[9][1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[9][1]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gpmc_driver|gpmc_data_in\(1),
	combout => \gpmc_driver|ram[9][1]~feeder_combout\);

-- Location: FF_X45_Y28_N11
\gpmc_driver|ram[9][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[9][1]~feeder_combout\,
	ena => \gpmc_driver|Decoder0~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[9][1]~q\);

-- Location: FF_X48_Y28_N3
\gpmc_driver|ram[11][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(1),
	sload => VCC,
	ena => \gpmc_driver|Decoder0~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[11][1]~q\);

-- Location: LCCOMB_X46_Y28_N2
\gpmc_driver|ram[10][1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[10][1]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gpmc_driver|gpmc_data_in\(1),
	combout => \gpmc_driver|ram[10][1]~feeder_combout\);

-- Location: FF_X46_Y28_N3
\gpmc_driver|ram[10][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[10][1]~feeder_combout\,
	ena => \gpmc_driver|Decoder0~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[10][1]~q\);

-- Location: FF_X48_Y28_N25
\gpmc_driver|ram[8][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(1),
	sload => VCC,
	ena => \gpmc_driver|Decoder0~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[8][1]~q\);

-- Location: LCCOMB_X48_Y28_N24
\gpmc_driver|gpmc_data_out~73\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~73_combout\ = (\gpmc_driver|gpmc_addr_in\(0) & (((\gpmc_driver|gpmc_addr_in\(1))))) # (!\gpmc_driver|gpmc_addr_in\(0) & ((\gpmc_driver|gpmc_addr_in\(1) & (\gpmc_driver|ram[10][1]~q\)) # (!\gpmc_driver|gpmc_addr_in\(1) & 
-- ((\gpmc_driver|ram[8][1]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(0),
	datab => \gpmc_driver|ram[10][1]~q\,
	datac => \gpmc_driver|ram[8][1]~q\,
	datad => \gpmc_driver|gpmc_addr_in\(1),
	combout => \gpmc_driver|gpmc_data_out~73_combout\);

-- Location: LCCOMB_X48_Y28_N2
\gpmc_driver|gpmc_data_out~74\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~74_combout\ = (\gpmc_driver|gpmc_addr_in\(0) & ((\gpmc_driver|gpmc_data_out~73_combout\ & ((\gpmc_driver|ram[11][1]~q\))) # (!\gpmc_driver|gpmc_data_out~73_combout\ & (\gpmc_driver|ram[9][1]~q\)))) # 
-- (!\gpmc_driver|gpmc_addr_in\(0) & (((\gpmc_driver|gpmc_data_out~73_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|ram[9][1]~q\,
	datab => \gpmc_driver|gpmc_addr_in\(0),
	datac => \gpmc_driver|ram[11][1]~q\,
	datad => \gpmc_driver|gpmc_data_out~73_combout\,
	combout => \gpmc_driver|gpmc_data_out~74_combout\);

-- Location: LCCOMB_X52_Y28_N28
\gpmc_driver|ram[3][1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[3][1]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gpmc_driver|gpmc_data_in\(1),
	combout => \gpmc_driver|ram[3][1]~feeder_combout\);

-- Location: FF_X52_Y28_N29
\gpmc_driver|ram[3][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[3][1]~feeder_combout\,
	ena => \gpmc_driver|Decoder0~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[3][1]~q\);

-- Location: FF_X52_Y28_N19
\gpmc_driver|ram[2][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(1),
	sload => VCC,
	ena => \gpmc_driver|Decoder0~55_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[2][1]~q\);

-- Location: LCCOMB_X52_Y28_N18
\gpmc_driver|gpmc_data_out~72\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~72_combout\ = (\gpmc_driver|gpmc_data_out[0]~51_combout\ & (((\gpmc_driver|gpmc_data_out[0]~48_combout\)))) # (!\gpmc_driver|gpmc_data_out[0]~51_combout\ & ((\gpmc_driver|gpmc_data_out[0]~48_combout\ & 
-- (\gpmc_driver|ram[3][1]~q\)) # (!\gpmc_driver|gpmc_data_out[0]~48_combout\ & ((\gpmc_driver|ram[2][1]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_data_out[0]~51_combout\,
	datab => \gpmc_driver|ram[3][1]~q\,
	datac => \gpmc_driver|ram[2][1]~q\,
	datad => \gpmc_driver|gpmc_data_out[0]~48_combout\,
	combout => \gpmc_driver|gpmc_data_out~72_combout\);

-- Location: LCCOMB_X51_Y29_N16
\gpmc_driver|gpmc_data_out~75\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~75_combout\ = (\gpmc_driver|gpmc_data_out[0]~51_combout\ & ((\gpmc_driver|gpmc_data_out~72_combout\ & ((\gpmc_driver|gpmc_data_out~74_combout\))) # (!\gpmc_driver|gpmc_data_out~72_combout\ & 
-- (\gpmc_driver|gpmc_data_out~71_combout\)))) # (!\gpmc_driver|gpmc_data_out[0]~51_combout\ & (((\gpmc_driver|gpmc_data_out~72_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_data_out[0]~51_combout\,
	datab => \gpmc_driver|gpmc_data_out~71_combout\,
	datac => \gpmc_driver|gpmc_data_out~74_combout\,
	datad => \gpmc_driver|gpmc_data_out~72_combout\,
	combout => \gpmc_driver|gpmc_data_out~75_combout\);

-- Location: LCCOMB_X51_Y29_N18
\gpmc_driver|gpmc_data_out~341\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~341_combout\ = (\gpmc_driver|gpmc_data_out~75_combout\ & ((\gpmc_driver|gpmc_addr_in\(3)) # ((\gpmc_driver|gpmc_addr_in\(2)) # (\gpmc_driver|gpmc_addr_in\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(3),
	datab => \gpmc_driver|gpmc_addr_in\(2),
	datac => \gpmc_driver|gpmc_addr_in\(1),
	datad => \gpmc_driver|gpmc_data_out~75_combout\,
	combout => \gpmc_driver|gpmc_data_out~341_combout\);

-- Location: LCCOMB_X51_Y29_N22
\gpmc_driver|gpmc_data_out[1]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out[1]~1_combout\ = (\gpmc_driver|gpmc_data_out[0]~58_combout\ & (\gpmc_driver|gpmc_data_out~77_combout\)) # (!\gpmc_driver|gpmc_data_out[0]~58_combout\ & ((\gpmc_driver|gpmc_data_out~341_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_data_out[0]~58_combout\,
	datab => \gpmc_driver|gpmc_data_out~77_combout\,
	datad => \gpmc_driver|gpmc_data_out~341_combout\,
	combout => \gpmc_driver|gpmc_data_out[1]~1_combout\);

-- Location: LCCOMB_X50_Y32_N20
\gpmc_driver|ram[23][1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[23][1]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gpmc_driver|gpmc_data_in\(1),
	combout => \gpmc_driver|ram[23][1]~feeder_combout\);

-- Location: FF_X50_Y32_N21
\gpmc_driver|ram[23][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[23][1]~feeder_combout\,
	ena => \gpmc_driver|Decoder0~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[23][1]~q\);

-- Location: FF_X50_Y32_N11
\gpmc_driver|ram[31][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(1),
	sload => VCC,
	ena => \gpmc_driver|Decoder0~53_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[31][1]~q\);

-- Location: LCCOMB_X51_Y32_N4
\gpmc_driver|ram[27][1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[27][1]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gpmc_driver|gpmc_data_in\(1),
	combout => \gpmc_driver|ram[27][1]~feeder_combout\);

-- Location: FF_X51_Y32_N5
\gpmc_driver|ram[27][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[27][1]~feeder_combout\,
	ena => \gpmc_driver|Decoder0~61_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[27][1]~q\);

-- Location: FF_X51_Y32_N7
\gpmc_driver|ram[19][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(1),
	sload => VCC,
	ena => \gpmc_driver|Decoder0~62_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[19][1]~q\);

-- Location: LCCOMB_X51_Y32_N6
\gpmc_driver|gpmc_data_out~85\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~85_combout\ = (\gpmc_driver|gpmc_addr_in\(3) & ((\gpmc_driver|ram[27][1]~q\) # ((\gpmc_driver|gpmc_addr_in\(2))))) # (!\gpmc_driver|gpmc_addr_in\(3) & (((\gpmc_driver|ram[19][1]~q\ & !\gpmc_driver|gpmc_addr_in\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(3),
	datab => \gpmc_driver|ram[27][1]~q\,
	datac => \gpmc_driver|ram[19][1]~q\,
	datad => \gpmc_driver|gpmc_addr_in\(2),
	combout => \gpmc_driver|gpmc_data_out~85_combout\);

-- Location: LCCOMB_X50_Y32_N10
\gpmc_driver|gpmc_data_out~86\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~86_combout\ = (\gpmc_driver|gpmc_addr_in\(2) & ((\gpmc_driver|gpmc_data_out~85_combout\ & ((\gpmc_driver|ram[31][1]~q\))) # (!\gpmc_driver|gpmc_data_out~85_combout\ & (\gpmc_driver|ram[23][1]~q\)))) # 
-- (!\gpmc_driver|gpmc_addr_in\(2) & (((\gpmc_driver|gpmc_data_out~85_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(2),
	datab => \gpmc_driver|ram[23][1]~q\,
	datac => \gpmc_driver|ram[31][1]~q\,
	datad => \gpmc_driver|gpmc_data_out~85_combout\,
	combout => \gpmc_driver|gpmc_data_out~86_combout\);

-- Location: LCCOMB_X52_Y30_N12
\gpmc_driver|ram[21][1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[21][1]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gpmc_driver|gpmc_data_in\(1),
	combout => \gpmc_driver|ram[21][1]~feeder_combout\);

-- Location: FF_X52_Y30_N13
\gpmc_driver|ram[21][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[21][1]~feeder_combout\,
	ena => \gpmc_driver|Decoder0~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[21][1]~q\);

-- Location: LCCOMB_X53_Y30_N8
\gpmc_driver|ram[25][1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[25][1]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gpmc_driver|gpmc_data_in\(1),
	combout => \gpmc_driver|ram[25][1]~feeder_combout\);

-- Location: FF_X53_Y30_N9
\gpmc_driver|ram[25][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[25][1]~feeder_combout\,
	ena => \gpmc_driver|Decoder0~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[25][1]~q\);

-- Location: FF_X53_Y30_N11
\gpmc_driver|ram[17][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(1),
	sload => VCC,
	ena => \gpmc_driver|Decoder0~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[17][1]~q\);

-- Location: LCCOMB_X53_Y30_N10
\gpmc_driver|gpmc_data_out~78\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~78_combout\ = (\gpmc_driver|gpmc_addr_in\(2) & (((\gpmc_driver|gpmc_addr_in\(3))))) # (!\gpmc_driver|gpmc_addr_in\(2) & ((\gpmc_driver|gpmc_addr_in\(3) & (\gpmc_driver|ram[25][1]~q\)) # (!\gpmc_driver|gpmc_addr_in\(3) & 
-- ((\gpmc_driver|ram[17][1]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(2),
	datab => \gpmc_driver|ram[25][1]~q\,
	datac => \gpmc_driver|ram[17][1]~q\,
	datad => \gpmc_driver|gpmc_addr_in\(3),
	combout => \gpmc_driver|gpmc_data_out~78_combout\);

-- Location: FF_X52_Y30_N7
\gpmc_driver|ram[29][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(1),
	sload => VCC,
	ena => \gpmc_driver|Decoder0~47_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[29][1]~q\);

-- Location: LCCOMB_X52_Y30_N6
\gpmc_driver|gpmc_data_out~79\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~79_combout\ = (\gpmc_driver|gpmc_data_out~78_combout\ & (((\gpmc_driver|ram[29][1]~q\) # (!\gpmc_driver|gpmc_addr_in\(2))))) # (!\gpmc_driver|gpmc_data_out~78_combout\ & (\gpmc_driver|ram[21][1]~q\ & 
-- ((\gpmc_driver|gpmc_addr_in\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|ram[21][1]~q\,
	datab => \gpmc_driver|gpmc_data_out~78_combout\,
	datac => \gpmc_driver|ram[29][1]~q\,
	datad => \gpmc_driver|gpmc_addr_in\(2),
	combout => \gpmc_driver|gpmc_data_out~79_combout\);

-- Location: LCCOMB_X49_Y31_N14
\gpmc_driver|ram[24][1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[24][1]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gpmc_driver|gpmc_data_in\(1),
	combout => \gpmc_driver|ram[24][1]~feeder_combout\);

-- Location: FF_X49_Y31_N15
\gpmc_driver|ram[24][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[24][1]~feeder_combout\,
	ena => \gpmc_driver|Decoder0~59_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[24][1]~q\);

-- Location: FF_X50_Y29_N27
\gpmc_driver|ram[28][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(1),
	sload => VCC,
	ena => \gpmc_driver|Decoder0~51_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[28][1]~q\);

-- Location: FF_X50_Y29_N17
\gpmc_driver|ram[16][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(1),
	sload => VCC,
	ena => \gpmc_driver|Decoder0~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[16][1]~q\);

-- Location: LCCOMB_X50_Y30_N0
\gpmc_driver|ram[20][1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[20][1]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gpmc_driver|gpmc_data_in\(1),
	combout => \gpmc_driver|ram[20][1]~feeder_combout\);

-- Location: FF_X50_Y30_N1
\gpmc_driver|ram[20][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[20][1]~feeder_combout\,
	ena => \gpmc_driver|Decoder0~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[20][1]~q\);

-- Location: LCCOMB_X50_Y29_N16
\gpmc_driver|gpmc_data_out~82\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~82_combout\ = (\gpmc_driver|gpmc_addr_in\(2) & ((\gpmc_driver|gpmc_addr_in\(3)) # ((\gpmc_driver|ram[20][1]~q\)))) # (!\gpmc_driver|gpmc_addr_in\(2) & (!\gpmc_driver|gpmc_addr_in\(3) & (\gpmc_driver|ram[16][1]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(2),
	datab => \gpmc_driver|gpmc_addr_in\(3),
	datac => \gpmc_driver|ram[16][1]~q\,
	datad => \gpmc_driver|ram[20][1]~q\,
	combout => \gpmc_driver|gpmc_data_out~82_combout\);

-- Location: LCCOMB_X50_Y29_N26
\gpmc_driver|gpmc_data_out~83\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~83_combout\ = (\gpmc_driver|gpmc_addr_in\(3) & ((\gpmc_driver|gpmc_data_out~82_combout\ & ((\gpmc_driver|ram[28][1]~q\))) # (!\gpmc_driver|gpmc_data_out~82_combout\ & (\gpmc_driver|ram[24][1]~q\)))) # 
-- (!\gpmc_driver|gpmc_addr_in\(3) & (((\gpmc_driver|gpmc_data_out~82_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(3),
	datab => \gpmc_driver|ram[24][1]~q\,
	datac => \gpmc_driver|ram[28][1]~q\,
	datad => \gpmc_driver|gpmc_data_out~82_combout\,
	combout => \gpmc_driver|gpmc_data_out~83_combout\);

-- Location: LCCOMB_X50_Y33_N8
\gpmc_driver|ram[26][1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[26][1]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gpmc_driver|gpmc_data_in\(1),
	combout => \gpmc_driver|ram[26][1]~feeder_combout\);

-- Location: FF_X50_Y33_N9
\gpmc_driver|ram[26][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[26][1]~feeder_combout\,
	ena => \gpmc_driver|Decoder0~57_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[26][1]~q\);

-- Location: FF_X50_Y33_N3
\gpmc_driver|ram[30][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(1),
	sload => VCC,
	ena => \gpmc_driver|Decoder0~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[30][1]~q\);

-- Location: LCCOMB_X49_Y33_N28
\gpmc_driver|ram[22][1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[22][1]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gpmc_driver|gpmc_data_in\(1),
	combout => \gpmc_driver|ram[22][1]~feeder_combout\);

-- Location: FF_X49_Y33_N29
\gpmc_driver|ram[22][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[22][1]~feeder_combout\,
	ena => \gpmc_driver|Decoder0~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[22][1]~q\);

-- Location: FF_X49_Y33_N23
\gpmc_driver|ram[18][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(1),
	sload => VCC,
	ena => \gpmc_driver|Decoder0~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[18][1]~q\);

-- Location: LCCOMB_X49_Y33_N22
\gpmc_driver|gpmc_data_out~80\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~80_combout\ = (\gpmc_driver|gpmc_addr_in\(3) & (((\gpmc_driver|gpmc_addr_in\(2))))) # (!\gpmc_driver|gpmc_addr_in\(3) & ((\gpmc_driver|gpmc_addr_in\(2) & (\gpmc_driver|ram[22][1]~q\)) # (!\gpmc_driver|gpmc_addr_in\(2) & 
-- ((\gpmc_driver|ram[18][1]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(3),
	datab => \gpmc_driver|ram[22][1]~q\,
	datac => \gpmc_driver|ram[18][1]~q\,
	datad => \gpmc_driver|gpmc_addr_in\(2),
	combout => \gpmc_driver|gpmc_data_out~80_combout\);

-- Location: LCCOMB_X50_Y33_N2
\gpmc_driver|gpmc_data_out~81\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~81_combout\ = (\gpmc_driver|gpmc_addr_in\(3) & ((\gpmc_driver|gpmc_data_out~80_combout\ & ((\gpmc_driver|ram[30][1]~q\))) # (!\gpmc_driver|gpmc_data_out~80_combout\ & (\gpmc_driver|ram[26][1]~q\)))) # 
-- (!\gpmc_driver|gpmc_addr_in\(3) & (((\gpmc_driver|gpmc_data_out~80_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(3),
	datab => \gpmc_driver|ram[26][1]~q\,
	datac => \gpmc_driver|ram[30][1]~q\,
	datad => \gpmc_driver|gpmc_data_out~80_combout\,
	combout => \gpmc_driver|gpmc_data_out~81_combout\);

-- Location: LCCOMB_X51_Y29_N2
\gpmc_driver|gpmc_data_out~84\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~84_combout\ = (\gpmc_driver|gpmc_addr_in\(0) & (((\gpmc_driver|gpmc_addr_in\(1))))) # (!\gpmc_driver|gpmc_addr_in\(0) & ((\gpmc_driver|gpmc_addr_in\(1) & ((\gpmc_driver|gpmc_data_out~81_combout\))) # 
-- (!\gpmc_driver|gpmc_addr_in\(1) & (\gpmc_driver|gpmc_data_out~83_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_data_out~83_combout\,
	datab => \gpmc_driver|gpmc_addr_in\(0),
	datac => \gpmc_driver|gpmc_addr_in\(1),
	datad => \gpmc_driver|gpmc_data_out~81_combout\,
	combout => \gpmc_driver|gpmc_data_out~84_combout\);

-- Location: LCCOMB_X51_Y29_N8
\gpmc_driver|gpmc_data_out~87\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~87_combout\ = (\gpmc_driver|gpmc_addr_in\(0) & ((\gpmc_driver|gpmc_data_out~84_combout\ & (\gpmc_driver|gpmc_data_out~86_combout\)) # (!\gpmc_driver|gpmc_data_out~84_combout\ & ((\gpmc_driver|gpmc_data_out~79_combout\))))) # 
-- (!\gpmc_driver|gpmc_addr_in\(0) & (((\gpmc_driver|gpmc_data_out~84_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_data_out~86_combout\,
	datab => \gpmc_driver|gpmc_addr_in\(0),
	datac => \gpmc_driver|gpmc_data_out~79_combout\,
	datad => \gpmc_driver|gpmc_data_out~84_combout\,
	combout => \gpmc_driver|gpmc_data_out~87_combout\);

-- Location: FF_X51_Y29_N23
\gpmc_driver|gpmc_data_out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|gpmc_data_out[1]~1_combout\,
	asdata => \gpmc_driver|gpmc_data_out~87_combout\,
	sclr => \gpmc_driver|LessThan0~1_combout\,
	sload => \gpmc_driver|gpmc_addr_in\(4),
	ena => \gpmc_driver|gpmc_data_out[0]~69_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|gpmc_data_out\(1));

-- Location: IOIBUF_X67_Y35_N1
\GPMC_DATA[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPMC_DATA(2),
	o => \GPMC_DATA[2]~input_o\);

-- Location: FF_X54_Y31_N5
\gpmc_driver|gpmc_data_in[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \GPMC_DATA[2]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|gpmc_data_in\(2));

-- Location: LCCOMB_X45_Y29_N24
\gpmc_driver|ram[14][2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[14][2]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gpmc_driver|gpmc_data_in\(2),
	combout => \gpmc_driver|ram[14][2]~feeder_combout\);

-- Location: FF_X45_Y29_N25
\gpmc_driver|ram[14][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[14][2]~feeder_combout\,
	ena => \gpmc_driver|Decoder0~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[14][2]~q\);

-- Location: FF_X45_Y29_N31
\gpmc_driver|ram[15][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(2),
	sload => VCC,
	ena => \gpmc_driver|Decoder0~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[15][2]~q\);

-- Location: LCCOMB_X44_Y29_N16
\gpmc_driver|ram[13][2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[13][2]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gpmc_driver|gpmc_data_in\(2),
	combout => \gpmc_driver|ram[13][2]~feeder_combout\);

-- Location: FF_X44_Y29_N17
\gpmc_driver|ram[13][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[13][2]~feeder_combout\,
	ena => \gpmc_driver|Decoder0~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[13][2]~q\);

-- Location: FF_X44_Y29_N11
\gpmc_driver|ram[12][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(2),
	sload => VCC,
	ena => \gpmc_driver|Decoder0~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[12][2]~q\);

-- Location: LCCOMB_X44_Y29_N10
\gpmc_driver|gpmc_data_out~94\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~94_combout\ = (\gpmc_driver|gpmc_addr_in\(1) & (((\gpmc_driver|gpmc_addr_in\(0))))) # (!\gpmc_driver|gpmc_addr_in\(1) & ((\gpmc_driver|gpmc_addr_in\(0) & (\gpmc_driver|ram[13][2]~q\)) # (!\gpmc_driver|gpmc_addr_in\(0) & 
-- ((\gpmc_driver|ram[12][2]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(1),
	datab => \gpmc_driver|ram[13][2]~q\,
	datac => \gpmc_driver|ram[12][2]~q\,
	datad => \gpmc_driver|gpmc_addr_in\(0),
	combout => \gpmc_driver|gpmc_data_out~94_combout\);

-- Location: LCCOMB_X45_Y29_N30
\gpmc_driver|gpmc_data_out~95\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~95_combout\ = (\gpmc_driver|gpmc_addr_in\(1) & ((\gpmc_driver|gpmc_data_out~94_combout\ & ((\gpmc_driver|ram[15][2]~q\))) # (!\gpmc_driver|gpmc_data_out~94_combout\ & (\gpmc_driver|ram[14][2]~q\)))) # 
-- (!\gpmc_driver|gpmc_addr_in\(1) & (((\gpmc_driver|gpmc_data_out~94_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(1),
	datab => \gpmc_driver|ram[14][2]~q\,
	datac => \gpmc_driver|ram[15][2]~q\,
	datad => \gpmc_driver|gpmc_data_out~94_combout\,
	combout => \gpmc_driver|gpmc_data_out~95_combout\);

-- Location: LCCOMB_X48_Y30_N24
\gpmc_driver|ram[3][2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[3][2]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gpmc_driver|gpmc_data_in\(2),
	combout => \gpmc_driver|ram[3][2]~feeder_combout\);

-- Location: FF_X48_Y30_N25
\gpmc_driver|ram[3][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[3][2]~feeder_combout\,
	ena => \gpmc_driver|Decoder0~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[3][2]~q\);

-- Location: LCCOMB_X48_Y30_N22
\gpmc_driver|ram[2][2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[2][2]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gpmc_driver|gpmc_data_in\(2),
	combout => \gpmc_driver|ram[2][2]~feeder_combout\);

-- Location: FF_X48_Y30_N23
\gpmc_driver|ram[2][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[2][2]~feeder_combout\,
	ena => \gpmc_driver|Decoder0~55_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[2][2]~q\);

-- Location: LCCOMB_X49_Y30_N8
\gpmc_driver|gpmc_data_out~92\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~92_combout\ = (\gpmc_driver|gpmc_data_out[0]~48_combout\ & (\gpmc_driver|ram[3][2]~q\)) # (!\gpmc_driver|gpmc_data_out[0]~48_combout\ & ((\gpmc_driver|ram[2][2]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_data_out[0]~48_combout\,
	datab => \gpmc_driver|ram[3][2]~q\,
	datad => \gpmc_driver|ram[2][2]~q\,
	combout => \gpmc_driver|gpmc_data_out~92_combout\);

-- Location: LCCOMB_X50_Y30_N20
\gpmc_driver|gpmc_data_out~342\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~342_combout\ = (\gpmc_driver|gpmc_addr_in\(2) & (!\gpmc_driver|gpmc_addr_in\(1))) # (!\gpmc_driver|gpmc_addr_in\(2) & ((\gpmc_driver|gpmc_addr_in\(1) & (!\gpmc_driver|gpmc_addr_in\(3) & \gpmc_driver|gpmc_data_out~92_combout\)) # 
-- (!\gpmc_driver|gpmc_addr_in\(1) & (\gpmc_driver|gpmc_addr_in\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(2),
	datab => \gpmc_driver|gpmc_addr_in\(1),
	datac => \gpmc_driver|gpmc_addr_in\(3),
	datad => \gpmc_driver|gpmc_data_out~92_combout\,
	combout => \gpmc_driver|gpmc_data_out~342_combout\);

-- Location: LCCOMB_X53_Y28_N28
\gpmc_driver|ram[5][2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[5][2]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gpmc_driver|gpmc_data_in\(2),
	combout => \gpmc_driver|ram[5][2]~feeder_combout\);

-- Location: FF_X53_Y28_N29
\gpmc_driver|ram[5][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[5][2]~feeder_combout\,
	ena => \gpmc_driver|Decoder0~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[5][2]~q\);

-- Location: FF_X49_Y28_N1
\gpmc_driver|ram[4][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(2),
	sload => VCC,
	ena => \gpmc_driver|Decoder0~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[4][2]~q\);

-- Location: LCCOMB_X45_Y28_N16
\gpmc_driver|ram[9][2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[9][2]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gpmc_driver|gpmc_data_in\(2),
	combout => \gpmc_driver|ram[9][2]~feeder_combout\);

-- Location: FF_X45_Y28_N17
\gpmc_driver|ram[9][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[9][2]~feeder_combout\,
	ena => \gpmc_driver|Decoder0~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[9][2]~q\);

-- Location: FF_X48_Y28_N9
\gpmc_driver|ram[8][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(2),
	sload => VCC,
	ena => \gpmc_driver|Decoder0~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[8][2]~q\);

-- Location: LCCOMB_X48_Y28_N8
\gpmc_driver|gpmc_data_out~88\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~88_combout\ = (\gpmc_driver|gpmc_addr_in\(0) & ((\gpmc_driver|ram[9][2]~q\) # ((!\gpmc_driver|gpmc_data_out[0]~48_combout\)))) # (!\gpmc_driver|gpmc_addr_in\(0) & (((\gpmc_driver|ram[8][2]~q\ & 
-- \gpmc_driver|gpmc_data_out[0]~48_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|ram[9][2]~q\,
	datab => \gpmc_driver|gpmc_addr_in\(0),
	datac => \gpmc_driver|ram[8][2]~q\,
	datad => \gpmc_driver|gpmc_data_out[0]~48_combout\,
	combout => \gpmc_driver|gpmc_data_out~88_combout\);

-- Location: LCCOMB_X49_Y28_N0
\gpmc_driver|gpmc_data_out~89\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~89_combout\ = (\gpmc_driver|gpmc_data_out[0]~48_combout\ & (((\gpmc_driver|gpmc_data_out~88_combout\)))) # (!\gpmc_driver|gpmc_data_out[0]~48_combout\ & ((\gpmc_driver|gpmc_data_out~88_combout\ & (\gpmc_driver|ram[5][2]~q\)) # 
-- (!\gpmc_driver|gpmc_data_out~88_combout\ & ((\gpmc_driver|ram[4][2]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_data_out[0]~48_combout\,
	datab => \gpmc_driver|ram[5][2]~q\,
	datac => \gpmc_driver|ram[4][2]~q\,
	datad => \gpmc_driver|gpmc_data_out~88_combout\,
	combout => \gpmc_driver|gpmc_data_out~89_combout\);

-- Location: LCCOMB_X45_Y32_N8
\gpmc_driver|ram[10][2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[10][2]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gpmc_driver|gpmc_data_in\(2),
	combout => \gpmc_driver|ram[10][2]~feeder_combout\);

-- Location: FF_X45_Y32_N9
\gpmc_driver|ram[10][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[10][2]~feeder_combout\,
	ena => \gpmc_driver|Decoder0~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[10][2]~q\);

-- Location: FF_X46_Y31_N5
\gpmc_driver|ram[6][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(2),
	sload => VCC,
	ena => \gpmc_driver|Decoder0~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[6][2]~q\);

-- Location: LCCOMB_X45_Y30_N0
\gpmc_driver|ram[11][2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[11][2]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gpmc_driver|gpmc_data_in\(2),
	combout => \gpmc_driver|ram[11][2]~feeder_combout\);

-- Location: FF_X45_Y30_N1
\gpmc_driver|ram[11][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[11][2]~feeder_combout\,
	ena => \gpmc_driver|Decoder0~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[11][2]~q\);

-- Location: FF_X46_Y31_N19
\gpmc_driver|ram[7][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(2),
	sload => VCC,
	ena => \gpmc_driver|Decoder0~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[7][2]~q\);

-- Location: LCCOMB_X46_Y31_N18
\gpmc_driver|gpmc_data_out~90\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~90_combout\ = (\gpmc_driver|gpmc_addr_in\(0) & ((\gpmc_driver|gpmc_data_out[0]~48_combout\ & (\gpmc_driver|ram[11][2]~q\)) # (!\gpmc_driver|gpmc_data_out[0]~48_combout\ & ((\gpmc_driver|ram[7][2]~q\))))) # 
-- (!\gpmc_driver|gpmc_addr_in\(0) & (((\gpmc_driver|gpmc_data_out[0]~48_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|ram[11][2]~q\,
	datab => \gpmc_driver|gpmc_addr_in\(0),
	datac => \gpmc_driver|ram[7][2]~q\,
	datad => \gpmc_driver|gpmc_data_out[0]~48_combout\,
	combout => \gpmc_driver|gpmc_data_out~90_combout\);

-- Location: LCCOMB_X46_Y31_N4
\gpmc_driver|gpmc_data_out~91\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~91_combout\ = (\gpmc_driver|gpmc_addr_in\(0) & (((\gpmc_driver|gpmc_data_out~90_combout\)))) # (!\gpmc_driver|gpmc_addr_in\(0) & ((\gpmc_driver|gpmc_data_out~90_combout\ & (\gpmc_driver|ram[10][2]~q\)) # 
-- (!\gpmc_driver|gpmc_data_out~90_combout\ & ((\gpmc_driver|ram[6][2]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|ram[10][2]~q\,
	datab => \gpmc_driver|gpmc_addr_in\(0),
	datac => \gpmc_driver|ram[6][2]~q\,
	datad => \gpmc_driver|gpmc_data_out~90_combout\,
	combout => \gpmc_driver|gpmc_data_out~91_combout\);

-- Location: LCCOMB_X50_Y29_N20
\gpmc_driver|gpmc_data_out~93\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~93_combout\ = (\gpmc_driver|gpmc_data_out[0]~51_combout\ & ((\gpmc_driver|gpmc_data_out~342_combout\ & (\gpmc_driver|gpmc_data_out~89_combout\)) # (!\gpmc_driver|gpmc_data_out~342_combout\ & 
-- ((\gpmc_driver|gpmc_data_out~91_combout\))))) # (!\gpmc_driver|gpmc_data_out[0]~51_combout\ & (\gpmc_driver|gpmc_data_out~342_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_data_out[0]~51_combout\,
	datab => \gpmc_driver|gpmc_data_out~342_combout\,
	datac => \gpmc_driver|gpmc_data_out~89_combout\,
	datad => \gpmc_driver|gpmc_data_out~91_combout\,
	combout => \gpmc_driver|gpmc_data_out~93_combout\);

-- Location: LCCOMB_X51_Y29_N20
\gpmc_driver|gpmc_data_out[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out[2]~2_combout\ = (\gpmc_driver|gpmc_data_out[0]~58_combout\ & (\gpmc_driver|gpmc_data_out~95_combout\)) # (!\gpmc_driver|gpmc_data_out[0]~58_combout\ & ((\gpmc_driver|gpmc_data_out~93_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_data_out[0]~58_combout\,
	datab => \gpmc_driver|gpmc_data_out~95_combout\,
	datad => \gpmc_driver|gpmc_data_out~93_combout\,
	combout => \gpmc_driver|gpmc_data_out[2]~2_combout\);

-- Location: LCCOMB_X50_Y33_N4
\gpmc_driver|ram[26][2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[26][2]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gpmc_driver|gpmc_data_in\(2),
	combout => \gpmc_driver|ram[26][2]~feeder_combout\);

-- Location: FF_X50_Y33_N5
\gpmc_driver|ram[26][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[26][2]~feeder_combout\,
	ena => \gpmc_driver|Decoder0~57_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[26][2]~q\);

-- Location: FF_X50_Y33_N19
\gpmc_driver|ram[30][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(2),
	sload => VCC,
	ena => \gpmc_driver|Decoder0~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[30][2]~q\);

-- Location: LCCOMB_X49_Y33_N4
\gpmc_driver|ram[22][2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[22][2]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gpmc_driver|gpmc_data_in\(2),
	combout => \gpmc_driver|ram[22][2]~feeder_combout\);

-- Location: FF_X49_Y33_N5
\gpmc_driver|ram[22][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[22][2]~feeder_combout\,
	ena => \gpmc_driver|Decoder0~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[22][2]~q\);

-- Location: FF_X49_Y33_N11
\gpmc_driver|ram[18][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(2),
	sload => VCC,
	ena => \gpmc_driver|Decoder0~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[18][2]~q\);

-- Location: LCCOMB_X49_Y33_N10
\gpmc_driver|gpmc_data_out~96\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~96_combout\ = (\gpmc_driver|gpmc_addr_in\(3) & (((\gpmc_driver|gpmc_addr_in\(2))))) # (!\gpmc_driver|gpmc_addr_in\(3) & ((\gpmc_driver|gpmc_addr_in\(2) & (\gpmc_driver|ram[22][2]~q\)) # (!\gpmc_driver|gpmc_addr_in\(2) & 
-- ((\gpmc_driver|ram[18][2]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(3),
	datab => \gpmc_driver|ram[22][2]~q\,
	datac => \gpmc_driver|ram[18][2]~q\,
	datad => \gpmc_driver|gpmc_addr_in\(2),
	combout => \gpmc_driver|gpmc_data_out~96_combout\);

-- Location: LCCOMB_X50_Y33_N18
\gpmc_driver|gpmc_data_out~97\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~97_combout\ = (\gpmc_driver|gpmc_addr_in\(3) & ((\gpmc_driver|gpmc_data_out~96_combout\ & ((\gpmc_driver|ram[30][2]~q\))) # (!\gpmc_driver|gpmc_data_out~96_combout\ & (\gpmc_driver|ram[26][2]~q\)))) # 
-- (!\gpmc_driver|gpmc_addr_in\(3) & (((\gpmc_driver|gpmc_data_out~96_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(3),
	datab => \gpmc_driver|ram[26][2]~q\,
	datac => \gpmc_driver|ram[30][2]~q\,
	datad => \gpmc_driver|gpmc_data_out~96_combout\,
	combout => \gpmc_driver|gpmc_data_out~97_combout\);

-- Location: LCCOMB_X49_Y31_N16
\gpmc_driver|ram[24][2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[24][2]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gpmc_driver|gpmc_data_in\(2),
	combout => \gpmc_driver|ram[24][2]~feeder_combout\);

-- Location: FF_X49_Y31_N17
\gpmc_driver|ram[24][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[24][2]~feeder_combout\,
	ena => \gpmc_driver|Decoder0~59_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[24][2]~q\);

-- Location: FF_X50_Y29_N1
\gpmc_driver|ram[28][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(2),
	sload => VCC,
	ena => \gpmc_driver|Decoder0~51_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[28][2]~q\);

-- Location: FF_X50_Y29_N31
\gpmc_driver|ram[16][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(2),
	sload => VCC,
	ena => \gpmc_driver|Decoder0~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[16][2]~q\);

-- Location: LCCOMB_X50_Y30_N14
\gpmc_driver|ram[20][2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[20][2]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gpmc_driver|gpmc_data_in\(2),
	combout => \gpmc_driver|ram[20][2]~feeder_combout\);

-- Location: FF_X50_Y30_N15
\gpmc_driver|ram[20][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[20][2]~feeder_combout\,
	ena => \gpmc_driver|Decoder0~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[20][2]~q\);

-- Location: LCCOMB_X50_Y29_N30
\gpmc_driver|gpmc_data_out~100\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~100_combout\ = (\gpmc_driver|gpmc_addr_in\(2) & ((\gpmc_driver|gpmc_addr_in\(3)) # ((\gpmc_driver|ram[20][2]~q\)))) # (!\gpmc_driver|gpmc_addr_in\(2) & (!\gpmc_driver|gpmc_addr_in\(3) & (\gpmc_driver|ram[16][2]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(2),
	datab => \gpmc_driver|gpmc_addr_in\(3),
	datac => \gpmc_driver|ram[16][2]~q\,
	datad => \gpmc_driver|ram[20][2]~q\,
	combout => \gpmc_driver|gpmc_data_out~100_combout\);

-- Location: LCCOMB_X50_Y29_N0
\gpmc_driver|gpmc_data_out~101\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~101_combout\ = (\gpmc_driver|gpmc_addr_in\(3) & ((\gpmc_driver|gpmc_data_out~100_combout\ & ((\gpmc_driver|ram[28][2]~q\))) # (!\gpmc_driver|gpmc_data_out~100_combout\ & (\gpmc_driver|ram[24][2]~q\)))) # 
-- (!\gpmc_driver|gpmc_addr_in\(3) & (((\gpmc_driver|gpmc_data_out~100_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(3),
	datab => \gpmc_driver|ram[24][2]~q\,
	datac => \gpmc_driver|ram[28][2]~q\,
	datad => \gpmc_driver|gpmc_data_out~100_combout\,
	combout => \gpmc_driver|gpmc_data_out~101_combout\);

-- Location: LCCOMB_X52_Y30_N0
\gpmc_driver|ram[21][2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[21][2]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gpmc_driver|gpmc_data_in\(2),
	combout => \gpmc_driver|ram[21][2]~feeder_combout\);

-- Location: FF_X52_Y30_N1
\gpmc_driver|ram[21][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[21][2]~feeder_combout\,
	ena => \gpmc_driver|Decoder0~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[21][2]~q\);

-- Location: FF_X52_Y30_N19
\gpmc_driver|ram[29][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(2),
	sload => VCC,
	ena => \gpmc_driver|Decoder0~47_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[29][2]~q\);

-- Location: LCCOMB_X53_Y30_N28
\gpmc_driver|ram[25][2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[25][2]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gpmc_driver|gpmc_data_in\(2),
	combout => \gpmc_driver|ram[25][2]~feeder_combout\);

-- Location: FF_X53_Y30_N29
\gpmc_driver|ram[25][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[25][2]~feeder_combout\,
	ena => \gpmc_driver|Decoder0~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[25][2]~q\);

-- Location: FF_X53_Y30_N3
\gpmc_driver|ram[17][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(2),
	sload => VCC,
	ena => \gpmc_driver|Decoder0~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[17][2]~q\);

-- Location: LCCOMB_X53_Y30_N2
\gpmc_driver|gpmc_data_out~98\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~98_combout\ = (\gpmc_driver|gpmc_addr_in\(2) & (((\gpmc_driver|gpmc_addr_in\(3))))) # (!\gpmc_driver|gpmc_addr_in\(2) & ((\gpmc_driver|gpmc_addr_in\(3) & (\gpmc_driver|ram[25][2]~q\)) # (!\gpmc_driver|gpmc_addr_in\(3) & 
-- ((\gpmc_driver|ram[17][2]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(2),
	datab => \gpmc_driver|ram[25][2]~q\,
	datac => \gpmc_driver|ram[17][2]~q\,
	datad => \gpmc_driver|gpmc_addr_in\(3),
	combout => \gpmc_driver|gpmc_data_out~98_combout\);

-- Location: LCCOMB_X52_Y30_N18
\gpmc_driver|gpmc_data_out~99\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~99_combout\ = (\gpmc_driver|gpmc_addr_in\(2) & ((\gpmc_driver|gpmc_data_out~98_combout\ & ((\gpmc_driver|ram[29][2]~q\))) # (!\gpmc_driver|gpmc_data_out~98_combout\ & (\gpmc_driver|ram[21][2]~q\)))) # 
-- (!\gpmc_driver|gpmc_addr_in\(2) & (((\gpmc_driver|gpmc_data_out~98_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(2),
	datab => \gpmc_driver|ram[21][2]~q\,
	datac => \gpmc_driver|ram[29][2]~q\,
	datad => \gpmc_driver|gpmc_data_out~98_combout\,
	combout => \gpmc_driver|gpmc_data_out~99_combout\);

-- Location: LCCOMB_X51_Y29_N30
\gpmc_driver|gpmc_data_out~102\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~102_combout\ = (\gpmc_driver|gpmc_addr_in\(0) & (((\gpmc_driver|gpmc_addr_in\(1)) # (\gpmc_driver|gpmc_data_out~99_combout\)))) # (!\gpmc_driver|gpmc_addr_in\(0) & (\gpmc_driver|gpmc_data_out~101_combout\ & 
-- (!\gpmc_driver|gpmc_addr_in\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_data_out~101_combout\,
	datab => \gpmc_driver|gpmc_addr_in\(0),
	datac => \gpmc_driver|gpmc_addr_in\(1),
	datad => \gpmc_driver|gpmc_data_out~99_combout\,
	combout => \gpmc_driver|gpmc_data_out~102_combout\);

-- Location: LCCOMB_X52_Y32_N20
\gpmc_driver|ram[23][2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[23][2]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gpmc_driver|gpmc_data_in\(2),
	combout => \gpmc_driver|ram[23][2]~feeder_combout\);

-- Location: FF_X52_Y32_N21
\gpmc_driver|ram[23][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[23][2]~feeder_combout\,
	ena => \gpmc_driver|Decoder0~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[23][2]~q\);

-- Location: FF_X50_Y32_N13
\gpmc_driver|ram[31][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(2),
	sload => VCC,
	ena => \gpmc_driver|Decoder0~53_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[31][2]~q\);

-- Location: LCCOMB_X51_Y32_N8
\gpmc_driver|ram[27][2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[27][2]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gpmc_driver|gpmc_data_in\(2),
	combout => \gpmc_driver|ram[27][2]~feeder_combout\);

-- Location: FF_X51_Y32_N9
\gpmc_driver|ram[27][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[27][2]~feeder_combout\,
	ena => \gpmc_driver|Decoder0~61_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[27][2]~q\);

-- Location: FF_X51_Y32_N11
\gpmc_driver|ram[19][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(2),
	sload => VCC,
	ena => \gpmc_driver|Decoder0~62_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[19][2]~q\);

-- Location: LCCOMB_X51_Y32_N10
\gpmc_driver|gpmc_data_out~103\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~103_combout\ = (\gpmc_driver|gpmc_addr_in\(3) & ((\gpmc_driver|ram[27][2]~q\) # ((\gpmc_driver|gpmc_addr_in\(2))))) # (!\gpmc_driver|gpmc_addr_in\(3) & (((\gpmc_driver|ram[19][2]~q\ & !\gpmc_driver|gpmc_addr_in\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(3),
	datab => \gpmc_driver|ram[27][2]~q\,
	datac => \gpmc_driver|ram[19][2]~q\,
	datad => \gpmc_driver|gpmc_addr_in\(2),
	combout => \gpmc_driver|gpmc_data_out~103_combout\);

-- Location: LCCOMB_X50_Y32_N12
\gpmc_driver|gpmc_data_out~104\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~104_combout\ = (\gpmc_driver|gpmc_addr_in\(2) & ((\gpmc_driver|gpmc_data_out~103_combout\ & ((\gpmc_driver|ram[31][2]~q\))) # (!\gpmc_driver|gpmc_data_out~103_combout\ & (\gpmc_driver|ram[23][2]~q\)))) # 
-- (!\gpmc_driver|gpmc_addr_in\(2) & (((\gpmc_driver|gpmc_data_out~103_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(2),
	datab => \gpmc_driver|ram[23][2]~q\,
	datac => \gpmc_driver|ram[31][2]~q\,
	datad => \gpmc_driver|gpmc_data_out~103_combout\,
	combout => \gpmc_driver|gpmc_data_out~104_combout\);

-- Location: LCCOMB_X51_Y29_N4
\gpmc_driver|gpmc_data_out~105\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~105_combout\ = (\gpmc_driver|gpmc_addr_in\(1) & ((\gpmc_driver|gpmc_data_out~102_combout\ & ((\gpmc_driver|gpmc_data_out~104_combout\))) # (!\gpmc_driver|gpmc_data_out~102_combout\ & (\gpmc_driver|gpmc_data_out~97_combout\)))) # 
-- (!\gpmc_driver|gpmc_addr_in\(1) & (((\gpmc_driver|gpmc_data_out~102_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_data_out~97_combout\,
	datab => \gpmc_driver|gpmc_addr_in\(1),
	datac => \gpmc_driver|gpmc_data_out~102_combout\,
	datad => \gpmc_driver|gpmc_data_out~104_combout\,
	combout => \gpmc_driver|gpmc_data_out~105_combout\);

-- Location: FF_X51_Y29_N21
\gpmc_driver|gpmc_data_out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|gpmc_data_out[2]~2_combout\,
	asdata => \gpmc_driver|gpmc_data_out~105_combout\,
	sclr => \gpmc_driver|LessThan0~1_combout\,
	sload => \gpmc_driver|gpmc_addr_in\(4),
	ena => \gpmc_driver|gpmc_data_out[0]~69_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|gpmc_data_out\(2));

-- Location: IOIBUF_X50_Y43_N1
\GPMC_DATA[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPMC_DATA(3),
	o => \GPMC_DATA[3]~input_o\);

-- Location: LCCOMB_X51_Y33_N24
\gpmc_driver|gpmc_data_in[3]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_in[3]~feeder_combout\ = \GPMC_DATA[3]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \GPMC_DATA[3]~input_o\,
	combout => \gpmc_driver|gpmc_data_in[3]~feeder_combout\);

-- Location: FF_X51_Y33_N25
\gpmc_driver|gpmc_data_in[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|gpmc_data_in[3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|gpmc_data_in\(3));

-- Location: LCCOMB_X43_Y32_N16
\gpmc_driver|ram[13][3]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[13][3]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gpmc_driver|gpmc_data_in\(3),
	combout => \gpmc_driver|ram[13][3]~feeder_combout\);

-- Location: FF_X43_Y32_N17
\gpmc_driver|ram[13][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[13][3]~feeder_combout\,
	ena => \gpmc_driver|Decoder0~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[13][3]~q\);

-- Location: FF_X43_Y31_N21
\gpmc_driver|ram[15][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(3),
	sload => VCC,
	ena => \gpmc_driver|Decoder0~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[15][3]~q\);

-- Location: LCCOMB_X44_Y32_N4
\gpmc_driver|ram[14][3]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[14][3]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gpmc_driver|gpmc_data_in\(3),
	combout => \gpmc_driver|ram[14][3]~feeder_combout\);

-- Location: FF_X44_Y32_N5
\gpmc_driver|ram[14][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[14][3]~feeder_combout\,
	ena => \gpmc_driver|Decoder0~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[14][3]~q\);

-- Location: FF_X44_Y32_N19
\gpmc_driver|ram[12][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(3),
	sload => VCC,
	ena => \gpmc_driver|Decoder0~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[12][3]~q\);

-- Location: LCCOMB_X44_Y32_N18
\gpmc_driver|gpmc_data_out~112\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~112_combout\ = (\gpmc_driver|gpmc_addr_in\(0) & (((\gpmc_driver|gpmc_addr_in\(1))))) # (!\gpmc_driver|gpmc_addr_in\(0) & ((\gpmc_driver|gpmc_addr_in\(1) & (\gpmc_driver|ram[14][3]~q\)) # (!\gpmc_driver|gpmc_addr_in\(1) & 
-- ((\gpmc_driver|ram[12][3]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|ram[14][3]~q\,
	datab => \gpmc_driver|gpmc_addr_in\(0),
	datac => \gpmc_driver|ram[12][3]~q\,
	datad => \gpmc_driver|gpmc_addr_in\(1),
	combout => \gpmc_driver|gpmc_data_out~112_combout\);

-- Location: LCCOMB_X43_Y31_N20
\gpmc_driver|gpmc_data_out~113\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~113_combout\ = (\gpmc_driver|gpmc_addr_in\(0) & ((\gpmc_driver|gpmc_data_out~112_combout\ & ((\gpmc_driver|ram[15][3]~q\))) # (!\gpmc_driver|gpmc_data_out~112_combout\ & (\gpmc_driver|ram[13][3]~q\)))) # 
-- (!\gpmc_driver|gpmc_addr_in\(0) & (((\gpmc_driver|gpmc_data_out~112_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|ram[13][3]~q\,
	datab => \gpmc_driver|gpmc_addr_in\(0),
	datac => \gpmc_driver|ram[15][3]~q\,
	datad => \gpmc_driver|gpmc_data_out~112_combout\,
	combout => \gpmc_driver|gpmc_data_out~113_combout\);

-- Location: LCCOMB_X50_Y28_N18
\gpmc_driver|ram[7][3]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[7][3]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gpmc_driver|gpmc_data_in\(3),
	combout => \gpmc_driver|ram[7][3]~feeder_combout\);

-- Location: FF_X50_Y28_N19
\gpmc_driver|ram[7][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[7][3]~feeder_combout\,
	ena => \gpmc_driver|Decoder0~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[7][3]~q\);

-- Location: FF_X51_Y28_N1
\gpmc_driver|ram[6][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(3),
	sload => VCC,
	ena => \gpmc_driver|Decoder0~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[6][3]~q\);

-- Location: LCCOMB_X51_Y28_N22
\gpmc_driver|ram[5][3]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[5][3]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gpmc_driver|gpmc_data_in\(3),
	combout => \gpmc_driver|ram[5][3]~feeder_combout\);

-- Location: FF_X51_Y28_N23
\gpmc_driver|ram[5][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[5][3]~feeder_combout\,
	ena => \gpmc_driver|Decoder0~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[5][3]~q\);

-- Location: FF_X50_Y28_N5
\gpmc_driver|ram[4][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(3),
	sload => VCC,
	ena => \gpmc_driver|Decoder0~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[4][3]~q\);

-- Location: LCCOMB_X50_Y28_N4
\gpmc_driver|gpmc_data_out~106\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~106_combout\ = (\gpmc_driver|gpmc_addr_in\(1) & (((\gpmc_driver|gpmc_addr_in\(0))))) # (!\gpmc_driver|gpmc_addr_in\(1) & ((\gpmc_driver|gpmc_addr_in\(0) & (\gpmc_driver|ram[5][3]~q\)) # (!\gpmc_driver|gpmc_addr_in\(0) & 
-- ((\gpmc_driver|ram[4][3]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(1),
	datab => \gpmc_driver|ram[5][3]~q\,
	datac => \gpmc_driver|ram[4][3]~q\,
	datad => \gpmc_driver|gpmc_addr_in\(0),
	combout => \gpmc_driver|gpmc_data_out~106_combout\);

-- Location: LCCOMB_X51_Y28_N0
\gpmc_driver|gpmc_data_out~107\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~107_combout\ = (\gpmc_driver|gpmc_addr_in\(1) & ((\gpmc_driver|gpmc_data_out~106_combout\ & (\gpmc_driver|ram[7][3]~q\)) # (!\gpmc_driver|gpmc_data_out~106_combout\ & ((\gpmc_driver|ram[6][3]~q\))))) # 
-- (!\gpmc_driver|gpmc_addr_in\(1) & (((\gpmc_driver|gpmc_data_out~106_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(1),
	datab => \gpmc_driver|ram[7][3]~q\,
	datac => \gpmc_driver|ram[6][3]~q\,
	datad => \gpmc_driver|gpmc_data_out~106_combout\,
	combout => \gpmc_driver|gpmc_data_out~107_combout\);

-- Location: LCCOMB_X45_Y28_N14
\gpmc_driver|ram[9][3]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[9][3]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gpmc_driver|gpmc_data_in\(3),
	combout => \gpmc_driver|ram[9][3]~feeder_combout\);

-- Location: FF_X45_Y28_N15
\gpmc_driver|ram[9][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[9][3]~feeder_combout\,
	ena => \gpmc_driver|Decoder0~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[9][3]~q\);

-- Location: FF_X48_Y28_N1
\gpmc_driver|ram[11][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(3),
	sload => VCC,
	ena => \gpmc_driver|Decoder0~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[11][3]~q\);

-- Location: LCCOMB_X46_Y28_N0
\gpmc_driver|ram[10][3]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[10][3]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gpmc_driver|gpmc_data_in\(3),
	combout => \gpmc_driver|ram[10][3]~feeder_combout\);

-- Location: FF_X46_Y28_N1
\gpmc_driver|ram[10][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[10][3]~feeder_combout\,
	ena => \gpmc_driver|Decoder0~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[10][3]~q\);

-- Location: FF_X48_Y28_N19
\gpmc_driver|ram[8][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(3),
	sload => VCC,
	ena => \gpmc_driver|Decoder0~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[8][3]~q\);

-- Location: LCCOMB_X48_Y28_N18
\gpmc_driver|gpmc_data_out~109\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~109_combout\ = (\gpmc_driver|gpmc_addr_in\(0) & (((\gpmc_driver|gpmc_addr_in\(1))))) # (!\gpmc_driver|gpmc_addr_in\(0) & ((\gpmc_driver|gpmc_addr_in\(1) & (\gpmc_driver|ram[10][3]~q\)) # (!\gpmc_driver|gpmc_addr_in\(1) & 
-- ((\gpmc_driver|ram[8][3]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(0),
	datab => \gpmc_driver|ram[10][3]~q\,
	datac => \gpmc_driver|ram[8][3]~q\,
	datad => \gpmc_driver|gpmc_addr_in\(1),
	combout => \gpmc_driver|gpmc_data_out~109_combout\);

-- Location: LCCOMB_X48_Y28_N0
\gpmc_driver|gpmc_data_out~110\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~110_combout\ = (\gpmc_driver|gpmc_addr_in\(0) & ((\gpmc_driver|gpmc_data_out~109_combout\ & ((\gpmc_driver|ram[11][3]~q\))) # (!\gpmc_driver|gpmc_data_out~109_combout\ & (\gpmc_driver|ram[9][3]~q\)))) # 
-- (!\gpmc_driver|gpmc_addr_in\(0) & (((\gpmc_driver|gpmc_data_out~109_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|ram[9][3]~q\,
	datab => \gpmc_driver|gpmc_addr_in\(0),
	datac => \gpmc_driver|ram[11][3]~q\,
	datad => \gpmc_driver|gpmc_data_out~109_combout\,
	combout => \gpmc_driver|gpmc_data_out~110_combout\);

-- Location: LCCOMB_X52_Y28_N12
\gpmc_driver|ram[3][3]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[3][3]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gpmc_driver|gpmc_data_in\(3),
	combout => \gpmc_driver|ram[3][3]~feeder_combout\);

-- Location: FF_X52_Y28_N13
\gpmc_driver|ram[3][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[3][3]~feeder_combout\,
	ena => \gpmc_driver|Decoder0~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[3][3]~q\);

-- Location: FF_X52_Y28_N15
\gpmc_driver|ram[2][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(3),
	sload => VCC,
	ena => \gpmc_driver|Decoder0~55_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[2][3]~q\);

-- Location: LCCOMB_X52_Y28_N14
\gpmc_driver|gpmc_data_out~108\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~108_combout\ = (\gpmc_driver|gpmc_data_out[0]~51_combout\ & (((\gpmc_driver|gpmc_data_out[0]~48_combout\)))) # (!\gpmc_driver|gpmc_data_out[0]~51_combout\ & ((\gpmc_driver|gpmc_data_out[0]~48_combout\ & 
-- (\gpmc_driver|ram[3][3]~q\)) # (!\gpmc_driver|gpmc_data_out[0]~48_combout\ & ((\gpmc_driver|ram[2][3]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_data_out[0]~51_combout\,
	datab => \gpmc_driver|ram[3][3]~q\,
	datac => \gpmc_driver|ram[2][3]~q\,
	datad => \gpmc_driver|gpmc_data_out[0]~48_combout\,
	combout => \gpmc_driver|gpmc_data_out~108_combout\);

-- Location: LCCOMB_X51_Y29_N10
\gpmc_driver|gpmc_data_out~111\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~111_combout\ = (\gpmc_driver|gpmc_data_out[0]~51_combout\ & ((\gpmc_driver|gpmc_data_out~108_combout\ & ((\gpmc_driver|gpmc_data_out~110_combout\))) # (!\gpmc_driver|gpmc_data_out~108_combout\ & 
-- (\gpmc_driver|gpmc_data_out~107_combout\)))) # (!\gpmc_driver|gpmc_data_out[0]~51_combout\ & (((\gpmc_driver|gpmc_data_out~108_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_data_out[0]~51_combout\,
	datab => \gpmc_driver|gpmc_data_out~107_combout\,
	datac => \gpmc_driver|gpmc_data_out~110_combout\,
	datad => \gpmc_driver|gpmc_data_out~108_combout\,
	combout => \gpmc_driver|gpmc_data_out~111_combout\);

-- Location: LCCOMB_X51_Y29_N12
\gpmc_driver|gpmc_data_out~343\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~343_combout\ = (\gpmc_driver|gpmc_data_out~111_combout\ & ((\gpmc_driver|gpmc_addr_in\(3)) # ((\gpmc_driver|gpmc_addr_in\(2)) # (\gpmc_driver|gpmc_addr_in\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(3),
	datab => \gpmc_driver|gpmc_addr_in\(2),
	datac => \gpmc_driver|gpmc_addr_in\(1),
	datad => \gpmc_driver|gpmc_data_out~111_combout\,
	combout => \gpmc_driver|gpmc_data_out~343_combout\);

-- Location: LCCOMB_X51_Y31_N0
\gpmc_driver|gpmc_data_out[3]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out[3]~3_combout\ = (\gpmc_driver|gpmc_data_out[0]~58_combout\ & (\gpmc_driver|gpmc_data_out~113_combout\)) # (!\gpmc_driver|gpmc_data_out[0]~58_combout\ & ((\gpmc_driver|gpmc_data_out~343_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_data_out~113_combout\,
	datab => \gpmc_driver|gpmc_data_out[0]~58_combout\,
	datad => \gpmc_driver|gpmc_data_out~343_combout\,
	combout => \gpmc_driver|gpmc_data_out[3]~3_combout\);

-- Location: LCCOMB_X50_Y32_N30
\gpmc_driver|ram[23][3]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[23][3]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gpmc_driver|gpmc_data_in\(3),
	combout => \gpmc_driver|ram[23][3]~feeder_combout\);

-- Location: FF_X50_Y32_N31
\gpmc_driver|ram[23][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[23][3]~feeder_combout\,
	ena => \gpmc_driver|Decoder0~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[23][3]~q\);

-- Location: FF_X50_Y32_N1
\gpmc_driver|ram[31][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(3),
	sload => VCC,
	ena => \gpmc_driver|Decoder0~53_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[31][3]~q\);

-- Location: LCCOMB_X51_Y32_N16
\gpmc_driver|ram[27][3]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[27][3]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gpmc_driver|gpmc_data_in\(3),
	combout => \gpmc_driver|ram[27][3]~feeder_combout\);

-- Location: FF_X51_Y32_N17
\gpmc_driver|ram[27][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[27][3]~feeder_combout\,
	ena => \gpmc_driver|Decoder0~61_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[27][3]~q\);

-- Location: FF_X51_Y32_N19
\gpmc_driver|ram[19][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(3),
	sload => VCC,
	ena => \gpmc_driver|Decoder0~62_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[19][3]~q\);

-- Location: LCCOMB_X51_Y32_N18
\gpmc_driver|gpmc_data_out~121\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~121_combout\ = (\gpmc_driver|gpmc_addr_in\(3) & ((\gpmc_driver|ram[27][3]~q\) # ((\gpmc_driver|gpmc_addr_in\(2))))) # (!\gpmc_driver|gpmc_addr_in\(3) & (((\gpmc_driver|ram[19][3]~q\ & !\gpmc_driver|gpmc_addr_in\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(3),
	datab => \gpmc_driver|ram[27][3]~q\,
	datac => \gpmc_driver|ram[19][3]~q\,
	datad => \gpmc_driver|gpmc_addr_in\(2),
	combout => \gpmc_driver|gpmc_data_out~121_combout\);

-- Location: LCCOMB_X50_Y32_N0
\gpmc_driver|gpmc_data_out~122\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~122_combout\ = (\gpmc_driver|gpmc_addr_in\(2) & ((\gpmc_driver|gpmc_data_out~121_combout\ & ((\gpmc_driver|ram[31][3]~q\))) # (!\gpmc_driver|gpmc_data_out~121_combout\ & (\gpmc_driver|ram[23][3]~q\)))) # 
-- (!\gpmc_driver|gpmc_addr_in\(2) & (((\gpmc_driver|gpmc_data_out~121_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|ram[23][3]~q\,
	datab => \gpmc_driver|gpmc_addr_in\(2),
	datac => \gpmc_driver|ram[31][3]~q\,
	datad => \gpmc_driver|gpmc_data_out~121_combout\,
	combout => \gpmc_driver|gpmc_data_out~122_combout\);

-- Location: LCCOMB_X53_Y30_N16
\gpmc_driver|ram[25][3]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[25][3]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gpmc_driver|gpmc_data_in\(3),
	combout => \gpmc_driver|ram[25][3]~feeder_combout\);

-- Location: FF_X53_Y30_N17
\gpmc_driver|ram[25][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[25][3]~feeder_combout\,
	ena => \gpmc_driver|Decoder0~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[25][3]~q\);

-- Location: FF_X53_Y30_N31
\gpmc_driver|ram[17][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(3),
	sload => VCC,
	ena => \gpmc_driver|Decoder0~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[17][3]~q\);

-- Location: LCCOMB_X53_Y30_N30
\gpmc_driver|gpmc_data_out~114\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~114_combout\ = (\gpmc_driver|gpmc_addr_in\(2) & (((\gpmc_driver|gpmc_addr_in\(3))))) # (!\gpmc_driver|gpmc_addr_in\(2) & ((\gpmc_driver|gpmc_addr_in\(3) & (\gpmc_driver|ram[25][3]~q\)) # (!\gpmc_driver|gpmc_addr_in\(3) & 
-- ((\gpmc_driver|ram[17][3]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(2),
	datab => \gpmc_driver|ram[25][3]~q\,
	datac => \gpmc_driver|ram[17][3]~q\,
	datad => \gpmc_driver|gpmc_addr_in\(3),
	combout => \gpmc_driver|gpmc_data_out~114_combout\);

-- Location: LCCOMB_X52_Y30_N4
\gpmc_driver|ram[21][3]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[21][3]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gpmc_driver|gpmc_data_in\(3),
	combout => \gpmc_driver|ram[21][3]~feeder_combout\);

-- Location: FF_X52_Y30_N5
\gpmc_driver|ram[21][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[21][3]~feeder_combout\,
	ena => \gpmc_driver|Decoder0~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[21][3]~q\);

-- Location: FF_X52_Y30_N11
\gpmc_driver|ram[29][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(3),
	sload => VCC,
	ena => \gpmc_driver|Decoder0~47_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[29][3]~q\);

-- Location: LCCOMB_X52_Y30_N10
\gpmc_driver|gpmc_data_out~115\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~115_combout\ = (\gpmc_driver|gpmc_data_out~114_combout\ & (((\gpmc_driver|ram[29][3]~q\) # (!\gpmc_driver|gpmc_addr_in\(2))))) # (!\gpmc_driver|gpmc_data_out~114_combout\ & (\gpmc_driver|ram[21][3]~q\ & 
-- ((\gpmc_driver|gpmc_addr_in\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_data_out~114_combout\,
	datab => \gpmc_driver|ram[21][3]~q\,
	datac => \gpmc_driver|ram[29][3]~q\,
	datad => \gpmc_driver|gpmc_addr_in\(2),
	combout => \gpmc_driver|gpmc_data_out~115_combout\);

-- Location: LCCOMB_X50_Y33_N16
\gpmc_driver|ram[26][3]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[26][3]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gpmc_driver|gpmc_data_in\(3),
	combout => \gpmc_driver|ram[26][3]~feeder_combout\);

-- Location: FF_X50_Y33_N17
\gpmc_driver|ram[26][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[26][3]~feeder_combout\,
	ena => \gpmc_driver|Decoder0~57_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[26][3]~q\);

-- Location: FF_X50_Y33_N15
\gpmc_driver|ram[30][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(3),
	sload => VCC,
	ena => \gpmc_driver|Decoder0~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[30][3]~q\);

-- Location: LCCOMB_X49_Y33_N16
\gpmc_driver|ram[22][3]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[22][3]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gpmc_driver|gpmc_data_in\(3),
	combout => \gpmc_driver|ram[22][3]~feeder_combout\);

-- Location: FF_X49_Y33_N17
\gpmc_driver|ram[22][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[22][3]~feeder_combout\,
	ena => \gpmc_driver|Decoder0~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[22][3]~q\);

-- Location: FF_X49_Y33_N31
\gpmc_driver|ram[18][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(3),
	sload => VCC,
	ena => \gpmc_driver|Decoder0~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[18][3]~q\);

-- Location: LCCOMB_X49_Y33_N30
\gpmc_driver|gpmc_data_out~116\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~116_combout\ = (\gpmc_driver|gpmc_addr_in\(3) & (((\gpmc_driver|gpmc_addr_in\(2))))) # (!\gpmc_driver|gpmc_addr_in\(3) & ((\gpmc_driver|gpmc_addr_in\(2) & (\gpmc_driver|ram[22][3]~q\)) # (!\gpmc_driver|gpmc_addr_in\(2) & 
-- ((\gpmc_driver|ram[18][3]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(3),
	datab => \gpmc_driver|ram[22][3]~q\,
	datac => \gpmc_driver|ram[18][3]~q\,
	datad => \gpmc_driver|gpmc_addr_in\(2),
	combout => \gpmc_driver|gpmc_data_out~116_combout\);

-- Location: LCCOMB_X50_Y33_N14
\gpmc_driver|gpmc_data_out~117\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~117_combout\ = (\gpmc_driver|gpmc_addr_in\(3) & ((\gpmc_driver|gpmc_data_out~116_combout\ & ((\gpmc_driver|ram[30][3]~q\))) # (!\gpmc_driver|gpmc_data_out~116_combout\ & (\gpmc_driver|ram[26][3]~q\)))) # 
-- (!\gpmc_driver|gpmc_addr_in\(3) & (((\gpmc_driver|gpmc_data_out~116_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(3),
	datab => \gpmc_driver|ram[26][3]~q\,
	datac => \gpmc_driver|ram[30][3]~q\,
	datad => \gpmc_driver|gpmc_data_out~116_combout\,
	combout => \gpmc_driver|gpmc_data_out~117_combout\);

-- Location: FF_X50_Y29_N19
\gpmc_driver|ram[16][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(3),
	sload => VCC,
	ena => \gpmc_driver|Decoder0~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[16][3]~q\);

-- Location: LCCOMB_X50_Y30_N24
\gpmc_driver|ram[20][3]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[20][3]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gpmc_driver|gpmc_data_in\(3),
	combout => \gpmc_driver|ram[20][3]~feeder_combout\);

-- Location: FF_X50_Y30_N25
\gpmc_driver|ram[20][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[20][3]~feeder_combout\,
	ena => \gpmc_driver|Decoder0~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[20][3]~q\);

-- Location: LCCOMB_X50_Y29_N18
\gpmc_driver|gpmc_data_out~118\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~118_combout\ = (\gpmc_driver|gpmc_addr_in\(2) & ((\gpmc_driver|gpmc_addr_in\(3)) # ((\gpmc_driver|ram[20][3]~q\)))) # (!\gpmc_driver|gpmc_addr_in\(2) & (!\gpmc_driver|gpmc_addr_in\(3) & (\gpmc_driver|ram[16][3]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(2),
	datab => \gpmc_driver|gpmc_addr_in\(3),
	datac => \gpmc_driver|ram[16][3]~q\,
	datad => \gpmc_driver|ram[20][3]~q\,
	combout => \gpmc_driver|gpmc_data_out~118_combout\);

-- Location: FF_X50_Y29_N25
\gpmc_driver|ram[28][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(3),
	sload => VCC,
	ena => \gpmc_driver|Decoder0~51_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[28][3]~q\);

-- Location: LCCOMB_X49_Y31_N18
\gpmc_driver|ram[24][3]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[24][3]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gpmc_driver|gpmc_data_in\(3),
	combout => \gpmc_driver|ram[24][3]~feeder_combout\);

-- Location: FF_X49_Y31_N19
\gpmc_driver|ram[24][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[24][3]~feeder_combout\,
	ena => \gpmc_driver|Decoder0~59_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[24][3]~q\);

-- Location: LCCOMB_X50_Y29_N24
\gpmc_driver|gpmc_data_out~119\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~119_combout\ = (\gpmc_driver|gpmc_addr_in\(3) & ((\gpmc_driver|gpmc_data_out~118_combout\ & (\gpmc_driver|ram[28][3]~q\)) # (!\gpmc_driver|gpmc_data_out~118_combout\ & ((\gpmc_driver|ram[24][3]~q\))))) # 
-- (!\gpmc_driver|gpmc_addr_in\(3) & (\gpmc_driver|gpmc_data_out~118_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(3),
	datab => \gpmc_driver|gpmc_data_out~118_combout\,
	datac => \gpmc_driver|ram[28][3]~q\,
	datad => \gpmc_driver|ram[24][3]~q\,
	combout => \gpmc_driver|gpmc_data_out~119_combout\);

-- Location: LCCOMB_X51_Y31_N16
\gpmc_driver|gpmc_data_out~120\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~120_combout\ = (\gpmc_driver|gpmc_addr_in\(1) & ((\gpmc_driver|gpmc_addr_in\(0)) # ((\gpmc_driver|gpmc_data_out~117_combout\)))) # (!\gpmc_driver|gpmc_addr_in\(1) & (!\gpmc_driver|gpmc_addr_in\(0) & 
-- ((\gpmc_driver|gpmc_data_out~119_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(1),
	datab => \gpmc_driver|gpmc_addr_in\(0),
	datac => \gpmc_driver|gpmc_data_out~117_combout\,
	datad => \gpmc_driver|gpmc_data_out~119_combout\,
	combout => \gpmc_driver|gpmc_data_out~120_combout\);

-- Location: LCCOMB_X51_Y31_N30
\gpmc_driver|gpmc_data_out~123\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~123_combout\ = (\gpmc_driver|gpmc_addr_in\(0) & ((\gpmc_driver|gpmc_data_out~120_combout\ & (\gpmc_driver|gpmc_data_out~122_combout\)) # (!\gpmc_driver|gpmc_data_out~120_combout\ & ((\gpmc_driver|gpmc_data_out~115_combout\))))) 
-- # (!\gpmc_driver|gpmc_addr_in\(0) & (((\gpmc_driver|gpmc_data_out~120_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(0),
	datab => \gpmc_driver|gpmc_data_out~122_combout\,
	datac => \gpmc_driver|gpmc_data_out~115_combout\,
	datad => \gpmc_driver|gpmc_data_out~120_combout\,
	combout => \gpmc_driver|gpmc_data_out~123_combout\);

-- Location: FF_X51_Y31_N1
\gpmc_driver|gpmc_data_out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|gpmc_data_out[3]~3_combout\,
	asdata => \gpmc_driver|gpmc_data_out~123_combout\,
	sclr => \gpmc_driver|LessThan0~1_combout\,
	sload => \gpmc_driver|gpmc_addr_in\(4),
	ena => \gpmc_driver|gpmc_data_out[0]~69_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|gpmc_data_out\(3));

-- Location: IOIBUF_X61_Y43_N15
\GPMC_DATA[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPMC_DATA(4),
	o => \GPMC_DATA[4]~input_o\);

-- Location: LCCOMB_X51_Y33_N2
\gpmc_driver|gpmc_data_in[4]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_in[4]~feeder_combout\ = \GPMC_DATA[4]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \GPMC_DATA[4]~input_o\,
	combout => \gpmc_driver|gpmc_data_in[4]~feeder_combout\);

-- Location: FF_X51_Y33_N3
\gpmc_driver|gpmc_data_in[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|gpmc_data_in[4]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|gpmc_data_in\(4));

-- Location: LCCOMB_X45_Y29_N16
\gpmc_driver|ram[14][4]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[14][4]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gpmc_driver|gpmc_data_in\(4),
	combout => \gpmc_driver|ram[14][4]~feeder_combout\);

-- Location: FF_X45_Y29_N17
\gpmc_driver|ram[14][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[14][4]~feeder_combout\,
	ena => \gpmc_driver|Decoder0~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[14][4]~q\);

-- Location: FF_X45_Y29_N3
\gpmc_driver|ram[15][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(4),
	sload => VCC,
	ena => \gpmc_driver|Decoder0~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[15][4]~q\);

-- Location: LCCOMB_X44_Y29_N28
\gpmc_driver|ram[13][4]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[13][4]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gpmc_driver|gpmc_data_in\(4),
	combout => \gpmc_driver|ram[13][4]~feeder_combout\);

-- Location: FF_X44_Y29_N29
\gpmc_driver|ram[13][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[13][4]~feeder_combout\,
	ena => \gpmc_driver|Decoder0~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[13][4]~q\);

-- Location: FF_X44_Y29_N3
\gpmc_driver|ram[12][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(4),
	sload => VCC,
	ena => \gpmc_driver|Decoder0~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[12][4]~q\);

-- Location: LCCOMB_X44_Y29_N2
\gpmc_driver|gpmc_data_out~130\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~130_combout\ = (\gpmc_driver|gpmc_addr_in\(1) & (((\gpmc_driver|gpmc_addr_in\(0))))) # (!\gpmc_driver|gpmc_addr_in\(1) & ((\gpmc_driver|gpmc_addr_in\(0) & (\gpmc_driver|ram[13][4]~q\)) # (!\gpmc_driver|gpmc_addr_in\(0) & 
-- ((\gpmc_driver|ram[12][4]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(1),
	datab => \gpmc_driver|ram[13][4]~q\,
	datac => \gpmc_driver|ram[12][4]~q\,
	datad => \gpmc_driver|gpmc_addr_in\(0),
	combout => \gpmc_driver|gpmc_data_out~130_combout\);

-- Location: LCCOMB_X45_Y29_N2
\gpmc_driver|gpmc_data_out~131\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~131_combout\ = (\gpmc_driver|gpmc_addr_in\(1) & ((\gpmc_driver|gpmc_data_out~130_combout\ & ((\gpmc_driver|ram[15][4]~q\))) # (!\gpmc_driver|gpmc_data_out~130_combout\ & (\gpmc_driver|ram[14][4]~q\)))) # 
-- (!\gpmc_driver|gpmc_addr_in\(1) & (((\gpmc_driver|gpmc_data_out~130_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(1),
	datab => \gpmc_driver|ram[14][4]~q\,
	datac => \gpmc_driver|ram[15][4]~q\,
	datad => \gpmc_driver|gpmc_data_out~130_combout\,
	combout => \gpmc_driver|gpmc_data_out~131_combout\);

-- Location: LCCOMB_X48_Y30_N28
\gpmc_driver|ram[3][4]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[3][4]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gpmc_driver|gpmc_data_in\(4),
	combout => \gpmc_driver|ram[3][4]~feeder_combout\);

-- Location: FF_X48_Y30_N29
\gpmc_driver|ram[3][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[3][4]~feeder_combout\,
	ena => \gpmc_driver|Decoder0~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[3][4]~q\);

-- Location: FF_X48_Y30_N11
\gpmc_driver|ram[2][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(4),
	sload => VCC,
	ena => \gpmc_driver|Decoder0~55_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[2][4]~q\);

-- Location: LCCOMB_X48_Y30_N10
\gpmc_driver|gpmc_data_out~128\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~128_combout\ = (\gpmc_driver|gpmc_data_out[0]~48_combout\ & (\gpmc_driver|ram[3][4]~q\)) # (!\gpmc_driver|gpmc_data_out[0]~48_combout\ & ((\gpmc_driver|ram[2][4]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \gpmc_driver|ram[3][4]~q\,
	datac => \gpmc_driver|ram[2][4]~q\,
	datad => \gpmc_driver|gpmc_data_out[0]~48_combout\,
	combout => \gpmc_driver|gpmc_data_out~128_combout\);

-- Location: LCCOMB_X51_Y31_N2
\gpmc_driver|gpmc_data_out~344\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~344_combout\ = (\gpmc_driver|gpmc_addr_in\(3) & (((!\gpmc_driver|gpmc_addr_in\(1))))) # (!\gpmc_driver|gpmc_addr_in\(3) & ((\gpmc_driver|gpmc_addr_in\(2) & ((!\gpmc_driver|gpmc_addr_in\(1)))) # (!\gpmc_driver|gpmc_addr_in\(2) & 
-- (\gpmc_driver|gpmc_data_out~128_combout\ & \gpmc_driver|gpmc_addr_in\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_data_out~128_combout\,
	datab => \gpmc_driver|gpmc_addr_in\(3),
	datac => \gpmc_driver|gpmc_addr_in\(2),
	datad => \gpmc_driver|gpmc_addr_in\(1),
	combout => \gpmc_driver|gpmc_data_out~344_combout\);

-- Location: LCCOMB_X53_Y28_N14
\gpmc_driver|ram[5][4]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[5][4]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gpmc_driver|gpmc_data_in\(4),
	combout => \gpmc_driver|ram[5][4]~feeder_combout\);

-- Location: FF_X53_Y28_N15
\gpmc_driver|ram[5][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[5][4]~feeder_combout\,
	ena => \gpmc_driver|Decoder0~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[5][4]~q\);

-- Location: FF_X50_Y28_N25
\gpmc_driver|ram[4][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(4),
	sload => VCC,
	ena => \gpmc_driver|Decoder0~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[4][4]~q\);

-- Location: LCCOMB_X48_Y28_N14
\gpmc_driver|ram[8][4]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[8][4]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gpmc_driver|gpmc_data_in\(4),
	combout => \gpmc_driver|ram[8][4]~feeder_combout\);

-- Location: FF_X48_Y28_N15
\gpmc_driver|ram[8][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[8][4]~feeder_combout\,
	ena => \gpmc_driver|Decoder0~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[8][4]~q\);

-- Location: LCCOMB_X45_Y28_N12
\gpmc_driver|ram[9][4]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[9][4]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gpmc_driver|gpmc_data_in\(4),
	combout => \gpmc_driver|ram[9][4]~feeder_combout\);

-- Location: FF_X45_Y28_N13
\gpmc_driver|ram[9][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[9][4]~feeder_combout\,
	ena => \gpmc_driver|Decoder0~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[9][4]~q\);

-- Location: LCCOMB_X49_Y28_N14
\gpmc_driver|gpmc_data_out~126\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~126_combout\ = (\gpmc_driver|gpmc_addr_in\(0) & (((\gpmc_driver|ram[9][4]~q\) # (!\gpmc_driver|gpmc_data_out[0]~48_combout\)))) # (!\gpmc_driver|gpmc_addr_in\(0) & (\gpmc_driver|ram[8][4]~q\ & 
-- (\gpmc_driver|gpmc_data_out[0]~48_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|ram[8][4]~q\,
	datab => \gpmc_driver|gpmc_addr_in\(0),
	datac => \gpmc_driver|gpmc_data_out[0]~48_combout\,
	datad => \gpmc_driver|ram[9][4]~q\,
	combout => \gpmc_driver|gpmc_data_out~126_combout\);

-- Location: LCCOMB_X50_Y28_N24
\gpmc_driver|gpmc_data_out~127\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~127_combout\ = (\gpmc_driver|gpmc_data_out[0]~48_combout\ & (((\gpmc_driver|gpmc_data_out~126_combout\)))) # (!\gpmc_driver|gpmc_data_out[0]~48_combout\ & ((\gpmc_driver|gpmc_data_out~126_combout\ & (\gpmc_driver|ram[5][4]~q\)) 
-- # (!\gpmc_driver|gpmc_data_out~126_combout\ & ((\gpmc_driver|ram[4][4]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_data_out[0]~48_combout\,
	datab => \gpmc_driver|ram[5][4]~q\,
	datac => \gpmc_driver|ram[4][4]~q\,
	datad => \gpmc_driver|gpmc_data_out~126_combout\,
	combout => \gpmc_driver|gpmc_data_out~127_combout\);

-- Location: LCCOMB_X46_Y31_N8
\gpmc_driver|ram[7][4]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[7][4]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gpmc_driver|gpmc_data_in\(4),
	combout => \gpmc_driver|ram[7][4]~feeder_combout\);

-- Location: FF_X46_Y31_N9
\gpmc_driver|ram[7][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[7][4]~feeder_combout\,
	ena => \gpmc_driver|Decoder0~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[7][4]~q\);

-- Location: FF_X46_Y31_N11
\gpmc_driver|ram[6][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(4),
	sload => VCC,
	ena => \gpmc_driver|Decoder0~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[6][4]~q\);

-- Location: LCCOMB_X46_Y28_N30
\gpmc_driver|ram[10][4]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[10][4]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gpmc_driver|gpmc_data_in\(4),
	combout => \gpmc_driver|ram[10][4]~feeder_combout\);

-- Location: FF_X46_Y28_N31
\gpmc_driver|ram[10][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[10][4]~feeder_combout\,
	ena => \gpmc_driver|Decoder0~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[10][4]~q\);

-- Location: FF_X46_Y28_N25
\gpmc_driver|ram[11][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(4),
	sload => VCC,
	ena => \gpmc_driver|Decoder0~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[11][4]~q\);

-- Location: LCCOMB_X46_Y28_N24
\gpmc_driver|gpmc_data_out~124\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~124_combout\ = (\gpmc_driver|gpmc_addr_in\(0) & (((\gpmc_driver|ram[11][4]~q\) # (!\gpmc_driver|gpmc_data_out[0]~48_combout\)))) # (!\gpmc_driver|gpmc_addr_in\(0) & (\gpmc_driver|ram[10][4]~q\ & 
-- ((\gpmc_driver|gpmc_data_out[0]~48_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|ram[10][4]~q\,
	datab => \gpmc_driver|gpmc_addr_in\(0),
	datac => \gpmc_driver|ram[11][4]~q\,
	datad => \gpmc_driver|gpmc_data_out[0]~48_combout\,
	combout => \gpmc_driver|gpmc_data_out~124_combout\);

-- Location: LCCOMB_X46_Y31_N10
\gpmc_driver|gpmc_data_out~125\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~125_combout\ = (\gpmc_driver|gpmc_data_out[0]~48_combout\ & (((\gpmc_driver|gpmc_data_out~124_combout\)))) # (!\gpmc_driver|gpmc_data_out[0]~48_combout\ & ((\gpmc_driver|gpmc_data_out~124_combout\ & (\gpmc_driver|ram[7][4]~q\)) 
-- # (!\gpmc_driver|gpmc_data_out~124_combout\ & ((\gpmc_driver|ram[6][4]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_data_out[0]~48_combout\,
	datab => \gpmc_driver|ram[7][4]~q\,
	datac => \gpmc_driver|ram[6][4]~q\,
	datad => \gpmc_driver|gpmc_data_out~124_combout\,
	combout => \gpmc_driver|gpmc_data_out~125_combout\);

-- Location: LCCOMB_X51_Y31_N20
\gpmc_driver|gpmc_data_out~129\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~129_combout\ = (\gpmc_driver|gpmc_data_out[0]~51_combout\ & ((\gpmc_driver|gpmc_data_out~344_combout\ & (\gpmc_driver|gpmc_data_out~127_combout\)) # (!\gpmc_driver|gpmc_data_out~344_combout\ & 
-- ((\gpmc_driver|gpmc_data_out~125_combout\))))) # (!\gpmc_driver|gpmc_data_out[0]~51_combout\ & (\gpmc_driver|gpmc_data_out~344_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_data_out[0]~51_combout\,
	datab => \gpmc_driver|gpmc_data_out~344_combout\,
	datac => \gpmc_driver|gpmc_data_out~127_combout\,
	datad => \gpmc_driver|gpmc_data_out~125_combout\,
	combout => \gpmc_driver|gpmc_data_out~129_combout\);

-- Location: LCCOMB_X51_Y31_N26
\gpmc_driver|gpmc_data_out[4]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out[4]~4_combout\ = (\gpmc_driver|gpmc_data_out[0]~58_combout\ & (\gpmc_driver|gpmc_data_out~131_combout\)) # (!\gpmc_driver|gpmc_data_out[0]~58_combout\ & ((\gpmc_driver|gpmc_data_out~129_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_data_out[0]~58_combout\,
	datab => \gpmc_driver|gpmc_data_out~131_combout\,
	datad => \gpmc_driver|gpmc_data_out~129_combout\,
	combout => \gpmc_driver|gpmc_data_out[4]~4_combout\);

-- Location: LCCOMB_X49_Y33_N12
\gpmc_driver|ram[22][4]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[22][4]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gpmc_driver|gpmc_data_in\(4),
	combout => \gpmc_driver|ram[22][4]~feeder_combout\);

-- Location: FF_X49_Y33_N13
\gpmc_driver|ram[22][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[22][4]~feeder_combout\,
	ena => \gpmc_driver|Decoder0~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[22][4]~q\);

-- Location: FF_X49_Y33_N7
\gpmc_driver|ram[18][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(4),
	sload => VCC,
	ena => \gpmc_driver|Decoder0~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[18][4]~q\);

-- Location: LCCOMB_X49_Y33_N6
\gpmc_driver|gpmc_data_out~132\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~132_combout\ = (\gpmc_driver|gpmc_addr_in\(2) & ((\gpmc_driver|ram[22][4]~q\) # ((\gpmc_driver|gpmc_addr_in\(3))))) # (!\gpmc_driver|gpmc_addr_in\(2) & (((\gpmc_driver|ram[18][4]~q\ & !\gpmc_driver|gpmc_addr_in\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(2),
	datab => \gpmc_driver|ram[22][4]~q\,
	datac => \gpmc_driver|ram[18][4]~q\,
	datad => \gpmc_driver|gpmc_addr_in\(3),
	combout => \gpmc_driver|gpmc_data_out~132_combout\);

-- Location: FF_X50_Y33_N11
\gpmc_driver|ram[30][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(4),
	sload => VCC,
	ena => \gpmc_driver|Decoder0~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[30][4]~q\);

-- Location: LCCOMB_X50_Y33_N12
\gpmc_driver|ram[26][4]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[26][4]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gpmc_driver|gpmc_data_in\(4),
	combout => \gpmc_driver|ram[26][4]~feeder_combout\);

-- Location: FF_X50_Y33_N13
\gpmc_driver|ram[26][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[26][4]~feeder_combout\,
	ena => \gpmc_driver|Decoder0~57_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[26][4]~q\);

-- Location: LCCOMB_X50_Y33_N10
\gpmc_driver|gpmc_data_out~133\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~133_combout\ = (\gpmc_driver|gpmc_addr_in\(3) & ((\gpmc_driver|gpmc_data_out~132_combout\ & (\gpmc_driver|ram[30][4]~q\)) # (!\gpmc_driver|gpmc_data_out~132_combout\ & ((\gpmc_driver|ram[26][4]~q\))))) # 
-- (!\gpmc_driver|gpmc_addr_in\(3) & (\gpmc_driver|gpmc_data_out~132_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(3),
	datab => \gpmc_driver|gpmc_data_out~132_combout\,
	datac => \gpmc_driver|ram[30][4]~q\,
	datad => \gpmc_driver|ram[26][4]~q\,
	combout => \gpmc_driver|gpmc_data_out~133_combout\);

-- Location: LCCOMB_X50_Y32_N18
\gpmc_driver|ram[23][4]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[23][4]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gpmc_driver|gpmc_data_in\(4),
	combout => \gpmc_driver|ram[23][4]~feeder_combout\);

-- Location: FF_X50_Y32_N19
\gpmc_driver|ram[23][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[23][4]~feeder_combout\,
	ena => \gpmc_driver|Decoder0~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[23][4]~q\);

-- Location: FF_X50_Y32_N25
\gpmc_driver|ram[31][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(4),
	sload => VCC,
	ena => \gpmc_driver|Decoder0~53_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[31][4]~q\);

-- Location: LCCOMB_X51_Y32_N28
\gpmc_driver|ram[27][4]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[27][4]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gpmc_driver|gpmc_data_in\(4),
	combout => \gpmc_driver|ram[27][4]~feeder_combout\);

-- Location: FF_X51_Y32_N29
\gpmc_driver|ram[27][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[27][4]~feeder_combout\,
	ena => \gpmc_driver|Decoder0~61_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[27][4]~q\);

-- Location: FF_X51_Y32_N31
\gpmc_driver|ram[19][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(4),
	sload => VCC,
	ena => \gpmc_driver|Decoder0~62_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[19][4]~q\);

-- Location: LCCOMB_X51_Y32_N30
\gpmc_driver|gpmc_data_out~139\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~139_combout\ = (\gpmc_driver|gpmc_addr_in\(3) & ((\gpmc_driver|ram[27][4]~q\) # ((\gpmc_driver|gpmc_addr_in\(2))))) # (!\gpmc_driver|gpmc_addr_in\(3) & (((\gpmc_driver|ram[19][4]~q\ & !\gpmc_driver|gpmc_addr_in\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(3),
	datab => \gpmc_driver|ram[27][4]~q\,
	datac => \gpmc_driver|ram[19][4]~q\,
	datad => \gpmc_driver|gpmc_addr_in\(2),
	combout => \gpmc_driver|gpmc_data_out~139_combout\);

-- Location: LCCOMB_X50_Y32_N24
\gpmc_driver|gpmc_data_out~140\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~140_combout\ = (\gpmc_driver|gpmc_addr_in\(2) & ((\gpmc_driver|gpmc_data_out~139_combout\ & ((\gpmc_driver|ram[31][4]~q\))) # (!\gpmc_driver|gpmc_data_out~139_combout\ & (\gpmc_driver|ram[23][4]~q\)))) # 
-- (!\gpmc_driver|gpmc_addr_in\(2) & (((\gpmc_driver|gpmc_data_out~139_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(2),
	datab => \gpmc_driver|ram[23][4]~q\,
	datac => \gpmc_driver|ram[31][4]~q\,
	datad => \gpmc_driver|gpmc_data_out~139_combout\,
	combout => \gpmc_driver|gpmc_data_out~140_combout\);

-- Location: LCCOMB_X52_Y30_N24
\gpmc_driver|ram[21][4]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[21][4]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gpmc_driver|gpmc_data_in\(4),
	combout => \gpmc_driver|ram[21][4]~feeder_combout\);

-- Location: FF_X52_Y30_N25
\gpmc_driver|ram[21][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[21][4]~feeder_combout\,
	ena => \gpmc_driver|Decoder0~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[21][4]~q\);

-- Location: FF_X52_Y30_N3
\gpmc_driver|ram[29][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(4),
	sload => VCC,
	ena => \gpmc_driver|Decoder0~47_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[29][4]~q\);

-- Location: LCCOMB_X53_Y30_N4
\gpmc_driver|ram[25][4]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[25][4]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gpmc_driver|gpmc_data_in\(4),
	combout => \gpmc_driver|ram[25][4]~feeder_combout\);

-- Location: FF_X53_Y30_N5
\gpmc_driver|ram[25][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[25][4]~feeder_combout\,
	ena => \gpmc_driver|Decoder0~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[25][4]~q\);

-- Location: FF_X53_Y30_N23
\gpmc_driver|ram[17][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(4),
	sload => VCC,
	ena => \gpmc_driver|Decoder0~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[17][4]~q\);

-- Location: LCCOMB_X53_Y30_N22
\gpmc_driver|gpmc_data_out~134\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~134_combout\ = (\gpmc_driver|gpmc_addr_in\(2) & (((\gpmc_driver|gpmc_addr_in\(3))))) # (!\gpmc_driver|gpmc_addr_in\(2) & ((\gpmc_driver|gpmc_addr_in\(3) & (\gpmc_driver|ram[25][4]~q\)) # (!\gpmc_driver|gpmc_addr_in\(3) & 
-- ((\gpmc_driver|ram[17][4]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(2),
	datab => \gpmc_driver|ram[25][4]~q\,
	datac => \gpmc_driver|ram[17][4]~q\,
	datad => \gpmc_driver|gpmc_addr_in\(3),
	combout => \gpmc_driver|gpmc_data_out~134_combout\);

-- Location: LCCOMB_X52_Y30_N2
\gpmc_driver|gpmc_data_out~135\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~135_combout\ = (\gpmc_driver|gpmc_addr_in\(2) & ((\gpmc_driver|gpmc_data_out~134_combout\ & ((\gpmc_driver|ram[29][4]~q\))) # (!\gpmc_driver|gpmc_data_out~134_combout\ & (\gpmc_driver|ram[21][4]~q\)))) # 
-- (!\gpmc_driver|gpmc_addr_in\(2) & (((\gpmc_driver|gpmc_data_out~134_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(2),
	datab => \gpmc_driver|ram[21][4]~q\,
	datac => \gpmc_driver|ram[29][4]~q\,
	datad => \gpmc_driver|gpmc_data_out~134_combout\,
	combout => \gpmc_driver|gpmc_data_out~135_combout\);

-- Location: LCCOMB_X44_Y31_N12
\gpmc_driver|ram[24][4]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[24][4]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gpmc_driver|gpmc_data_in\(4),
	combout => \gpmc_driver|ram[24][4]~feeder_combout\);

-- Location: FF_X44_Y31_N13
\gpmc_driver|ram[24][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[24][4]~feeder_combout\,
	ena => \gpmc_driver|Decoder0~59_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[24][4]~q\);

-- Location: FF_X50_Y29_N9
\gpmc_driver|ram[28][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(4),
	sload => VCC,
	ena => \gpmc_driver|Decoder0~51_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[28][4]~q\);

-- Location: FF_X50_Y29_N7
\gpmc_driver|ram[16][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(4),
	sload => VCC,
	ena => \gpmc_driver|Decoder0~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[16][4]~q\);

-- Location: LCCOMB_X50_Y30_N30
\gpmc_driver|ram[20][4]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[20][4]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gpmc_driver|gpmc_data_in\(4),
	combout => \gpmc_driver|ram[20][4]~feeder_combout\);

-- Location: FF_X50_Y30_N31
\gpmc_driver|ram[20][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[20][4]~feeder_combout\,
	ena => \gpmc_driver|Decoder0~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[20][4]~q\);

-- Location: LCCOMB_X50_Y29_N6
\gpmc_driver|gpmc_data_out~136\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~136_combout\ = (\gpmc_driver|gpmc_addr_in\(2) & ((\gpmc_driver|gpmc_addr_in\(3)) # ((\gpmc_driver|ram[20][4]~q\)))) # (!\gpmc_driver|gpmc_addr_in\(2) & (!\gpmc_driver|gpmc_addr_in\(3) & (\gpmc_driver|ram[16][4]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(2),
	datab => \gpmc_driver|gpmc_addr_in\(3),
	datac => \gpmc_driver|ram[16][4]~q\,
	datad => \gpmc_driver|ram[20][4]~q\,
	combout => \gpmc_driver|gpmc_data_out~136_combout\);

-- Location: LCCOMB_X50_Y29_N8
\gpmc_driver|gpmc_data_out~137\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~137_combout\ = (\gpmc_driver|gpmc_addr_in\(3) & ((\gpmc_driver|gpmc_data_out~136_combout\ & ((\gpmc_driver|ram[28][4]~q\))) # (!\gpmc_driver|gpmc_data_out~136_combout\ & (\gpmc_driver|ram[24][4]~q\)))) # 
-- (!\gpmc_driver|gpmc_addr_in\(3) & (((\gpmc_driver|gpmc_data_out~136_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(3),
	datab => \gpmc_driver|ram[24][4]~q\,
	datac => \gpmc_driver|ram[28][4]~q\,
	datad => \gpmc_driver|gpmc_data_out~136_combout\,
	combout => \gpmc_driver|gpmc_data_out~137_combout\);

-- Location: LCCOMB_X51_Y31_N6
\gpmc_driver|gpmc_data_out~138\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~138_combout\ = (\gpmc_driver|gpmc_addr_in\(1) & (\gpmc_driver|gpmc_addr_in\(0))) # (!\gpmc_driver|gpmc_addr_in\(1) & ((\gpmc_driver|gpmc_addr_in\(0) & (\gpmc_driver|gpmc_data_out~135_combout\)) # (!\gpmc_driver|gpmc_addr_in\(0) 
-- & ((\gpmc_driver|gpmc_data_out~137_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(1),
	datab => \gpmc_driver|gpmc_addr_in\(0),
	datac => \gpmc_driver|gpmc_data_out~135_combout\,
	datad => \gpmc_driver|gpmc_data_out~137_combout\,
	combout => \gpmc_driver|gpmc_data_out~138_combout\);

-- Location: LCCOMB_X51_Y31_N4
\gpmc_driver|gpmc_data_out~141\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~141_combout\ = (\gpmc_driver|gpmc_addr_in\(1) & ((\gpmc_driver|gpmc_data_out~138_combout\ & ((\gpmc_driver|gpmc_data_out~140_combout\))) # (!\gpmc_driver|gpmc_data_out~138_combout\ & (\gpmc_driver|gpmc_data_out~133_combout\)))) 
-- # (!\gpmc_driver|gpmc_addr_in\(1) & (((\gpmc_driver|gpmc_data_out~138_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_data_out~133_combout\,
	datab => \gpmc_driver|gpmc_addr_in\(1),
	datac => \gpmc_driver|gpmc_data_out~140_combout\,
	datad => \gpmc_driver|gpmc_data_out~138_combout\,
	combout => \gpmc_driver|gpmc_data_out~141_combout\);

-- Location: FF_X51_Y31_N27
\gpmc_driver|gpmc_data_out[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|gpmc_data_out[4]~4_combout\,
	asdata => \gpmc_driver|gpmc_data_out~141_combout\,
	sclr => \gpmc_driver|LessThan0~1_combout\,
	sload => \gpmc_driver|gpmc_addr_in\(4),
	ena => \gpmc_driver|gpmc_data_out[0]~69_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|gpmc_data_out\(4));

-- Location: IOIBUF_X54_Y43_N15
\GPMC_DATA[5]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPMC_DATA(5),
	o => \GPMC_DATA[5]~input_o\);

-- Location: FF_X54_Y31_N3
\gpmc_driver|gpmc_data_in[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \GPMC_DATA[5]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|gpmc_data_in\(5));

-- Location: LCCOMB_X43_Y30_N0
\gpmc_driver|ram[13][5]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[13][5]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gpmc_driver|gpmc_data_in\(5),
	combout => \gpmc_driver|ram[13][5]~feeder_combout\);

-- Location: FF_X43_Y30_N1
\gpmc_driver|ram[13][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[13][5]~feeder_combout\,
	ena => \gpmc_driver|Decoder0~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[13][5]~q\);

-- Location: FF_X45_Y31_N5
\gpmc_driver|ram[15][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(5),
	sload => VCC,
	ena => \gpmc_driver|Decoder0~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[15][5]~q\);

-- Location: LCCOMB_X44_Y32_N8
\gpmc_driver|ram[14][5]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[14][5]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gpmc_driver|gpmc_data_in\(5),
	combout => \gpmc_driver|ram[14][5]~feeder_combout\);

-- Location: FF_X44_Y32_N9
\gpmc_driver|ram[14][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[14][5]~feeder_combout\,
	ena => \gpmc_driver|Decoder0~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[14][5]~q\);

-- Location: FF_X44_Y32_N11
\gpmc_driver|ram[12][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(5),
	sload => VCC,
	ena => \gpmc_driver|Decoder0~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[12][5]~q\);

-- Location: LCCOMB_X44_Y32_N10
\gpmc_driver|gpmc_data_out~148\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~148_combout\ = (\gpmc_driver|gpmc_addr_in\(0) & (((\gpmc_driver|gpmc_addr_in\(1))))) # (!\gpmc_driver|gpmc_addr_in\(0) & ((\gpmc_driver|gpmc_addr_in\(1) & (\gpmc_driver|ram[14][5]~q\)) # (!\gpmc_driver|gpmc_addr_in\(1) & 
-- ((\gpmc_driver|ram[12][5]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|ram[14][5]~q\,
	datab => \gpmc_driver|gpmc_addr_in\(0),
	datac => \gpmc_driver|ram[12][5]~q\,
	datad => \gpmc_driver|gpmc_addr_in\(1),
	combout => \gpmc_driver|gpmc_data_out~148_combout\);

-- Location: LCCOMB_X45_Y31_N4
\gpmc_driver|gpmc_data_out~149\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~149_combout\ = (\gpmc_driver|gpmc_addr_in\(0) & ((\gpmc_driver|gpmc_data_out~148_combout\ & ((\gpmc_driver|ram[15][5]~q\))) # (!\gpmc_driver|gpmc_data_out~148_combout\ & (\gpmc_driver|ram[13][5]~q\)))) # 
-- (!\gpmc_driver|gpmc_addr_in\(0) & (((\gpmc_driver|gpmc_data_out~148_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|ram[13][5]~q\,
	datab => \gpmc_driver|gpmc_addr_in\(0),
	datac => \gpmc_driver|ram[15][5]~q\,
	datad => \gpmc_driver|gpmc_data_out~148_combout\,
	combout => \gpmc_driver|gpmc_data_out~149_combout\);

-- Location: LCCOMB_X50_Y28_N28
\gpmc_driver|ram[7][5]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[7][5]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gpmc_driver|gpmc_data_in\(5),
	combout => \gpmc_driver|ram[7][5]~feeder_combout\);

-- Location: FF_X50_Y28_N29
\gpmc_driver|ram[7][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[7][5]~feeder_combout\,
	ena => \gpmc_driver|Decoder0~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[7][5]~q\);

-- Location: FF_X51_Y28_N5
\gpmc_driver|ram[6][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(5),
	sload => VCC,
	ena => \gpmc_driver|Decoder0~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[6][5]~q\);

-- Location: LCCOMB_X51_Y28_N18
\gpmc_driver|ram[5][5]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[5][5]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gpmc_driver|gpmc_data_in\(5),
	combout => \gpmc_driver|ram[5][5]~feeder_combout\);

-- Location: FF_X51_Y28_N19
\gpmc_driver|ram[5][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[5][5]~feeder_combout\,
	ena => \gpmc_driver|Decoder0~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[5][5]~q\);

-- Location: FF_X50_Y28_N15
\gpmc_driver|ram[4][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(5),
	sload => VCC,
	ena => \gpmc_driver|Decoder0~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[4][5]~q\);

-- Location: LCCOMB_X50_Y28_N14
\gpmc_driver|gpmc_data_out~142\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~142_combout\ = (\gpmc_driver|gpmc_addr_in\(1) & (((\gpmc_driver|gpmc_addr_in\(0))))) # (!\gpmc_driver|gpmc_addr_in\(1) & ((\gpmc_driver|gpmc_addr_in\(0) & (\gpmc_driver|ram[5][5]~q\)) # (!\gpmc_driver|gpmc_addr_in\(0) & 
-- ((\gpmc_driver|ram[4][5]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(1),
	datab => \gpmc_driver|ram[5][5]~q\,
	datac => \gpmc_driver|ram[4][5]~q\,
	datad => \gpmc_driver|gpmc_addr_in\(0),
	combout => \gpmc_driver|gpmc_data_out~142_combout\);

-- Location: LCCOMB_X51_Y28_N4
\gpmc_driver|gpmc_data_out~143\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~143_combout\ = (\gpmc_driver|gpmc_addr_in\(1) & ((\gpmc_driver|gpmc_data_out~142_combout\ & (\gpmc_driver|ram[7][5]~q\)) # (!\gpmc_driver|gpmc_data_out~142_combout\ & ((\gpmc_driver|ram[6][5]~q\))))) # 
-- (!\gpmc_driver|gpmc_addr_in\(1) & (((\gpmc_driver|gpmc_data_out~142_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(1),
	datab => \gpmc_driver|ram[7][5]~q\,
	datac => \gpmc_driver|ram[6][5]~q\,
	datad => \gpmc_driver|gpmc_data_out~142_combout\,
	combout => \gpmc_driver|gpmc_data_out~143_combout\);

-- Location: LCCOMB_X45_Y28_N30
\gpmc_driver|ram[9][5]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[9][5]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gpmc_driver|gpmc_data_in\(5),
	combout => \gpmc_driver|ram[9][5]~feeder_combout\);

-- Location: FF_X45_Y28_N31
\gpmc_driver|ram[9][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[9][5]~feeder_combout\,
	ena => \gpmc_driver|Decoder0~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[9][5]~q\);

-- Location: FF_X48_Y28_N31
\gpmc_driver|ram[11][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(5),
	sload => VCC,
	ena => \gpmc_driver|Decoder0~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[11][5]~q\);

-- Location: LCCOMB_X46_Y28_N10
\gpmc_driver|ram[10][5]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[10][5]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gpmc_driver|gpmc_data_in\(5),
	combout => \gpmc_driver|ram[10][5]~feeder_combout\);

-- Location: FF_X46_Y28_N11
\gpmc_driver|ram[10][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[10][5]~feeder_combout\,
	ena => \gpmc_driver|Decoder0~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[10][5]~q\);

-- Location: FF_X48_Y28_N29
\gpmc_driver|ram[8][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(5),
	sload => VCC,
	ena => \gpmc_driver|Decoder0~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[8][5]~q\);

-- Location: LCCOMB_X48_Y28_N28
\gpmc_driver|gpmc_data_out~145\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~145_combout\ = (\gpmc_driver|gpmc_addr_in\(0) & (((\gpmc_driver|gpmc_addr_in\(1))))) # (!\gpmc_driver|gpmc_addr_in\(0) & ((\gpmc_driver|gpmc_addr_in\(1) & (\gpmc_driver|ram[10][5]~q\)) # (!\gpmc_driver|gpmc_addr_in\(1) & 
-- ((\gpmc_driver|ram[8][5]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(0),
	datab => \gpmc_driver|ram[10][5]~q\,
	datac => \gpmc_driver|ram[8][5]~q\,
	datad => \gpmc_driver|gpmc_addr_in\(1),
	combout => \gpmc_driver|gpmc_data_out~145_combout\);

-- Location: LCCOMB_X48_Y28_N30
\gpmc_driver|gpmc_data_out~146\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~146_combout\ = (\gpmc_driver|gpmc_addr_in\(0) & ((\gpmc_driver|gpmc_data_out~145_combout\ & ((\gpmc_driver|ram[11][5]~q\))) # (!\gpmc_driver|gpmc_data_out~145_combout\ & (\gpmc_driver|ram[9][5]~q\)))) # 
-- (!\gpmc_driver|gpmc_addr_in\(0) & (((\gpmc_driver|gpmc_data_out~145_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|ram[9][5]~q\,
	datab => \gpmc_driver|gpmc_addr_in\(0),
	datac => \gpmc_driver|ram[11][5]~q\,
	datad => \gpmc_driver|gpmc_data_out~145_combout\,
	combout => \gpmc_driver|gpmc_data_out~146_combout\);

-- Location: LCCOMB_X52_Y28_N4
\gpmc_driver|ram[3][5]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[3][5]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gpmc_driver|gpmc_data_in\(5),
	combout => \gpmc_driver|ram[3][5]~feeder_combout\);

-- Location: FF_X52_Y28_N5
\gpmc_driver|ram[3][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[3][5]~feeder_combout\,
	ena => \gpmc_driver|Decoder0~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[3][5]~q\);

-- Location: FF_X52_Y28_N23
\gpmc_driver|ram[2][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(5),
	sload => VCC,
	ena => \gpmc_driver|Decoder0~55_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[2][5]~q\);

-- Location: LCCOMB_X52_Y28_N22
\gpmc_driver|gpmc_data_out~144\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~144_combout\ = (\gpmc_driver|gpmc_data_out[0]~51_combout\ & (((\gpmc_driver|gpmc_data_out[0]~48_combout\)))) # (!\gpmc_driver|gpmc_data_out[0]~51_combout\ & ((\gpmc_driver|gpmc_data_out[0]~48_combout\ & 
-- (\gpmc_driver|ram[3][5]~q\)) # (!\gpmc_driver|gpmc_data_out[0]~48_combout\ & ((\gpmc_driver|ram[2][5]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_data_out[0]~51_combout\,
	datab => \gpmc_driver|ram[3][5]~q\,
	datac => \gpmc_driver|ram[2][5]~q\,
	datad => \gpmc_driver|gpmc_data_out[0]~48_combout\,
	combout => \gpmc_driver|gpmc_data_out~144_combout\);

-- Location: LCCOMB_X51_Y28_N12
\gpmc_driver|gpmc_data_out~147\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~147_combout\ = (\gpmc_driver|gpmc_data_out[0]~51_combout\ & ((\gpmc_driver|gpmc_data_out~144_combout\ & ((\gpmc_driver|gpmc_data_out~146_combout\))) # (!\gpmc_driver|gpmc_data_out~144_combout\ & 
-- (\gpmc_driver|gpmc_data_out~143_combout\)))) # (!\gpmc_driver|gpmc_data_out[0]~51_combout\ & (((\gpmc_driver|gpmc_data_out~144_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_data_out[0]~51_combout\,
	datab => \gpmc_driver|gpmc_data_out~143_combout\,
	datac => \gpmc_driver|gpmc_data_out~146_combout\,
	datad => \gpmc_driver|gpmc_data_out~144_combout\,
	combout => \gpmc_driver|gpmc_data_out~147_combout\);

-- Location: LCCOMB_X51_Y31_N24
\gpmc_driver|gpmc_data_out~345\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~345_combout\ = (\gpmc_driver|gpmc_data_out~147_combout\ & ((\gpmc_driver|gpmc_addr_in\(1)) # ((\gpmc_driver|gpmc_addr_in\(3)) # (\gpmc_driver|gpmc_addr_in\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(1),
	datab => \gpmc_driver|gpmc_addr_in\(3),
	datac => \gpmc_driver|gpmc_addr_in\(2),
	datad => \gpmc_driver|gpmc_data_out~147_combout\,
	combout => \gpmc_driver|gpmc_data_out~345_combout\);

-- Location: LCCOMB_X51_Y31_N12
\gpmc_driver|gpmc_data_out[5]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out[5]~5_combout\ = (\gpmc_driver|gpmc_data_out[0]~58_combout\ & (\gpmc_driver|gpmc_data_out~149_combout\)) # (!\gpmc_driver|gpmc_data_out[0]~58_combout\ & ((\gpmc_driver|gpmc_data_out~345_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_data_out[0]~58_combout\,
	datab => \gpmc_driver|gpmc_data_out~149_combout\,
	datad => \gpmc_driver|gpmc_data_out~345_combout\,
	combout => \gpmc_driver|gpmc_data_out[5]~5_combout\);

-- Location: LCCOMB_X52_Y30_N16
\gpmc_driver|ram[21][5]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[21][5]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gpmc_driver|gpmc_data_in\(5),
	combout => \gpmc_driver|ram[21][5]~feeder_combout\);

-- Location: FF_X52_Y30_N17
\gpmc_driver|ram[21][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[21][5]~feeder_combout\,
	ena => \gpmc_driver|Decoder0~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[21][5]~q\);

-- Location: FF_X52_Y30_N27
\gpmc_driver|ram[29][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(5),
	sload => VCC,
	ena => \gpmc_driver|Decoder0~47_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[29][5]~q\);

-- Location: LCCOMB_X53_Y30_N20
\gpmc_driver|ram[25][5]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[25][5]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gpmc_driver|gpmc_data_in\(5),
	combout => \gpmc_driver|ram[25][5]~feeder_combout\);

-- Location: FF_X53_Y30_N21
\gpmc_driver|ram[25][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[25][5]~feeder_combout\,
	ena => \gpmc_driver|Decoder0~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[25][5]~q\);

-- Location: FF_X53_Y30_N7
\gpmc_driver|ram[17][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(5),
	sload => VCC,
	ena => \gpmc_driver|Decoder0~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[17][5]~q\);

-- Location: LCCOMB_X53_Y30_N6
\gpmc_driver|gpmc_data_out~150\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~150_combout\ = (\gpmc_driver|gpmc_addr_in\(2) & (((\gpmc_driver|gpmc_addr_in\(3))))) # (!\gpmc_driver|gpmc_addr_in\(2) & ((\gpmc_driver|gpmc_addr_in\(3) & (\gpmc_driver|ram[25][5]~q\)) # (!\gpmc_driver|gpmc_addr_in\(3) & 
-- ((\gpmc_driver|ram[17][5]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(2),
	datab => \gpmc_driver|ram[25][5]~q\,
	datac => \gpmc_driver|ram[17][5]~q\,
	datad => \gpmc_driver|gpmc_addr_in\(3),
	combout => \gpmc_driver|gpmc_data_out~150_combout\);

-- Location: LCCOMB_X52_Y30_N26
\gpmc_driver|gpmc_data_out~151\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~151_combout\ = (\gpmc_driver|gpmc_addr_in\(2) & ((\gpmc_driver|gpmc_data_out~150_combout\ & ((\gpmc_driver|ram[29][5]~q\))) # (!\gpmc_driver|gpmc_data_out~150_combout\ & (\gpmc_driver|ram[21][5]~q\)))) # 
-- (!\gpmc_driver|gpmc_addr_in\(2) & (((\gpmc_driver|gpmc_data_out~150_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(2),
	datab => \gpmc_driver|ram[21][5]~q\,
	datac => \gpmc_driver|ram[29][5]~q\,
	datad => \gpmc_driver|gpmc_data_out~150_combout\,
	combout => \gpmc_driver|gpmc_data_out~151_combout\);

-- Location: LCCOMB_X50_Y32_N14
\gpmc_driver|ram[23][5]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[23][5]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gpmc_driver|gpmc_data_in\(5),
	combout => \gpmc_driver|ram[23][5]~feeder_combout\);

-- Location: FF_X50_Y32_N15
\gpmc_driver|ram[23][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[23][5]~feeder_combout\,
	ena => \gpmc_driver|Decoder0~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[23][5]~q\);

-- Location: FF_X50_Y32_N29
\gpmc_driver|ram[31][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(5),
	sload => VCC,
	ena => \gpmc_driver|Decoder0~53_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[31][5]~q\);

-- Location: LCCOMB_X51_Y32_N0
\gpmc_driver|ram[27][5]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[27][5]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gpmc_driver|gpmc_data_in\(5),
	combout => \gpmc_driver|ram[27][5]~feeder_combout\);

-- Location: FF_X51_Y32_N1
\gpmc_driver|ram[27][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[27][5]~feeder_combout\,
	ena => \gpmc_driver|Decoder0~61_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[27][5]~q\);

-- Location: FF_X51_Y32_N3
\gpmc_driver|ram[19][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(5),
	sload => VCC,
	ena => \gpmc_driver|Decoder0~62_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[19][5]~q\);

-- Location: LCCOMB_X51_Y32_N2
\gpmc_driver|gpmc_data_out~157\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~157_combout\ = (\gpmc_driver|gpmc_addr_in\(3) & ((\gpmc_driver|ram[27][5]~q\) # ((\gpmc_driver|gpmc_addr_in\(2))))) # (!\gpmc_driver|gpmc_addr_in\(3) & (((\gpmc_driver|ram[19][5]~q\ & !\gpmc_driver|gpmc_addr_in\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(3),
	datab => \gpmc_driver|ram[27][5]~q\,
	datac => \gpmc_driver|ram[19][5]~q\,
	datad => \gpmc_driver|gpmc_addr_in\(2),
	combout => \gpmc_driver|gpmc_data_out~157_combout\);

-- Location: LCCOMB_X50_Y32_N28
\gpmc_driver|gpmc_data_out~158\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~158_combout\ = (\gpmc_driver|gpmc_addr_in\(2) & ((\gpmc_driver|gpmc_data_out~157_combout\ & ((\gpmc_driver|ram[31][5]~q\))) # (!\gpmc_driver|gpmc_data_out~157_combout\ & (\gpmc_driver|ram[23][5]~q\)))) # 
-- (!\gpmc_driver|gpmc_addr_in\(2) & (((\gpmc_driver|gpmc_data_out~157_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(2),
	datab => \gpmc_driver|ram[23][5]~q\,
	datac => \gpmc_driver|ram[31][5]~q\,
	datad => \gpmc_driver|gpmc_data_out~157_combout\,
	combout => \gpmc_driver|gpmc_data_out~158_combout\);

-- Location: LCCOMB_X46_Y29_N16
\gpmc_driver|ram[24][5]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[24][5]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gpmc_driver|gpmc_data_in\(5),
	combout => \gpmc_driver|ram[24][5]~feeder_combout\);

-- Location: FF_X46_Y29_N17
\gpmc_driver|ram[24][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[24][5]~feeder_combout\,
	ena => \gpmc_driver|Decoder0~59_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[24][5]~q\);

-- Location: FF_X50_Y29_N5
\gpmc_driver|ram[28][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(5),
	sload => VCC,
	ena => \gpmc_driver|Decoder0~51_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[28][5]~q\);

-- Location: FF_X50_Y29_N3
\gpmc_driver|ram[16][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(5),
	sload => VCC,
	ena => \gpmc_driver|Decoder0~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[16][5]~q\);

-- Location: LCCOMB_X50_Y30_N28
\gpmc_driver|ram[20][5]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[20][5]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gpmc_driver|gpmc_data_in\(5),
	combout => \gpmc_driver|ram[20][5]~feeder_combout\);

-- Location: FF_X50_Y30_N29
\gpmc_driver|ram[20][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[20][5]~feeder_combout\,
	ena => \gpmc_driver|Decoder0~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[20][5]~q\);

-- Location: LCCOMB_X50_Y29_N2
\gpmc_driver|gpmc_data_out~154\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~154_combout\ = (\gpmc_driver|gpmc_addr_in\(2) & ((\gpmc_driver|gpmc_addr_in\(3)) # ((\gpmc_driver|ram[20][5]~q\)))) # (!\gpmc_driver|gpmc_addr_in\(2) & (!\gpmc_driver|gpmc_addr_in\(3) & (\gpmc_driver|ram[16][5]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(2),
	datab => \gpmc_driver|gpmc_addr_in\(3),
	datac => \gpmc_driver|ram[16][5]~q\,
	datad => \gpmc_driver|ram[20][5]~q\,
	combout => \gpmc_driver|gpmc_data_out~154_combout\);

-- Location: LCCOMB_X50_Y29_N4
\gpmc_driver|gpmc_data_out~155\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~155_combout\ = (\gpmc_driver|gpmc_addr_in\(3) & ((\gpmc_driver|gpmc_data_out~154_combout\ & ((\gpmc_driver|ram[28][5]~q\))) # (!\gpmc_driver|gpmc_data_out~154_combout\ & (\gpmc_driver|ram[24][5]~q\)))) # 
-- (!\gpmc_driver|gpmc_addr_in\(3) & (((\gpmc_driver|gpmc_data_out~154_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(3),
	datab => \gpmc_driver|ram[24][5]~q\,
	datac => \gpmc_driver|ram[28][5]~q\,
	datad => \gpmc_driver|gpmc_data_out~154_combout\,
	combout => \gpmc_driver|gpmc_data_out~155_combout\);

-- Location: LCCOMB_X50_Y33_N20
\gpmc_driver|ram[26][5]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[26][5]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gpmc_driver|gpmc_data_in\(5),
	combout => \gpmc_driver|ram[26][5]~feeder_combout\);

-- Location: FF_X50_Y33_N21
\gpmc_driver|ram[26][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[26][5]~feeder_combout\,
	ena => \gpmc_driver|Decoder0~57_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[26][5]~q\);

-- Location: FF_X50_Y33_N31
\gpmc_driver|ram[30][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(5),
	sload => VCC,
	ena => \gpmc_driver|Decoder0~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[30][5]~q\);

-- Location: LCCOMB_X49_Y33_N20
\gpmc_driver|ram[22][5]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[22][5]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gpmc_driver|gpmc_data_in\(5),
	combout => \gpmc_driver|ram[22][5]~feeder_combout\);

-- Location: FF_X49_Y33_N21
\gpmc_driver|ram[22][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[22][5]~feeder_combout\,
	ena => \gpmc_driver|Decoder0~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[22][5]~q\);

-- Location: FF_X49_Y33_N15
\gpmc_driver|ram[18][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(5),
	sload => VCC,
	ena => \gpmc_driver|Decoder0~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[18][5]~q\);

-- Location: LCCOMB_X49_Y33_N14
\gpmc_driver|gpmc_data_out~152\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~152_combout\ = (\gpmc_driver|gpmc_addr_in\(3) & (((\gpmc_driver|gpmc_addr_in\(2))))) # (!\gpmc_driver|gpmc_addr_in\(3) & ((\gpmc_driver|gpmc_addr_in\(2) & (\gpmc_driver|ram[22][5]~q\)) # (!\gpmc_driver|gpmc_addr_in\(2) & 
-- ((\gpmc_driver|ram[18][5]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(3),
	datab => \gpmc_driver|ram[22][5]~q\,
	datac => \gpmc_driver|ram[18][5]~q\,
	datad => \gpmc_driver|gpmc_addr_in\(2),
	combout => \gpmc_driver|gpmc_data_out~152_combout\);

-- Location: LCCOMB_X50_Y33_N30
\gpmc_driver|gpmc_data_out~153\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~153_combout\ = (\gpmc_driver|gpmc_addr_in\(3) & ((\gpmc_driver|gpmc_data_out~152_combout\ & ((\gpmc_driver|ram[30][5]~q\))) # (!\gpmc_driver|gpmc_data_out~152_combout\ & (\gpmc_driver|ram[26][5]~q\)))) # 
-- (!\gpmc_driver|gpmc_addr_in\(3) & (((\gpmc_driver|gpmc_data_out~152_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(3),
	datab => \gpmc_driver|ram[26][5]~q\,
	datac => \gpmc_driver|ram[30][5]~q\,
	datad => \gpmc_driver|gpmc_data_out~152_combout\,
	combout => \gpmc_driver|gpmc_data_out~153_combout\);

-- Location: LCCOMB_X50_Y31_N24
\gpmc_driver|gpmc_data_out~156\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~156_combout\ = (\gpmc_driver|gpmc_addr_in\(0) & (\gpmc_driver|gpmc_addr_in\(1))) # (!\gpmc_driver|gpmc_addr_in\(0) & ((\gpmc_driver|gpmc_addr_in\(1) & ((\gpmc_driver|gpmc_data_out~153_combout\))) # 
-- (!\gpmc_driver|gpmc_addr_in\(1) & (\gpmc_driver|gpmc_data_out~155_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(0),
	datab => \gpmc_driver|gpmc_addr_in\(1),
	datac => \gpmc_driver|gpmc_data_out~155_combout\,
	datad => \gpmc_driver|gpmc_data_out~153_combout\,
	combout => \gpmc_driver|gpmc_data_out~156_combout\);

-- Location: LCCOMB_X50_Y31_N6
\gpmc_driver|gpmc_data_out~159\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~159_combout\ = (\gpmc_driver|gpmc_addr_in\(0) & ((\gpmc_driver|gpmc_data_out~156_combout\ & ((\gpmc_driver|gpmc_data_out~158_combout\))) # (!\gpmc_driver|gpmc_data_out~156_combout\ & (\gpmc_driver|gpmc_data_out~151_combout\)))) 
-- # (!\gpmc_driver|gpmc_addr_in\(0) & (((\gpmc_driver|gpmc_data_out~156_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(0),
	datab => \gpmc_driver|gpmc_data_out~151_combout\,
	datac => \gpmc_driver|gpmc_data_out~158_combout\,
	datad => \gpmc_driver|gpmc_data_out~156_combout\,
	combout => \gpmc_driver|gpmc_data_out~159_combout\);

-- Location: FF_X51_Y31_N13
\gpmc_driver|gpmc_data_out[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|gpmc_data_out[5]~5_combout\,
	asdata => \gpmc_driver|gpmc_data_out~159_combout\,
	sclr => \gpmc_driver|LessThan0~1_combout\,
	sload => \gpmc_driver|gpmc_addr_in\(4),
	ena => \gpmc_driver|gpmc_data_out[0]~69_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|gpmc_data_out\(5));

-- Location: IOIBUF_X48_Y0_N29
\GPMC_DATA[6]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPMC_DATA(6),
	o => \GPMC_DATA[6]~input_o\);

-- Location: LCCOMB_X44_Y28_N0
\gpmc_driver|gpmc_data_in[6]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_in[6]~feeder_combout\ = \GPMC_DATA[6]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \GPMC_DATA[6]~input_o\,
	combout => \gpmc_driver|gpmc_data_in[6]~feeder_combout\);

-- Location: FF_X44_Y28_N1
\gpmc_driver|gpmc_data_in[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|gpmc_data_in[6]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|gpmc_data_in\(6));

-- Location: LCCOMB_X43_Y32_N12
\gpmc_driver|ram[15][6]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[15][6]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gpmc_driver|gpmc_data_in\(6),
	combout => \gpmc_driver|ram[15][6]~feeder_combout\);

-- Location: FF_X43_Y32_N13
\gpmc_driver|ram[15][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[15][6]~feeder_combout\,
	ena => \gpmc_driver|Decoder0~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[15][6]~q\);

-- Location: LCCOMB_X43_Y32_N18
\gpmc_driver|ram[13][6]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[13][6]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gpmc_driver|gpmc_data_in\(6),
	combout => \gpmc_driver|ram[13][6]~feeder_combout\);

-- Location: FF_X43_Y32_N19
\gpmc_driver|ram[13][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[13][6]~feeder_combout\,
	ena => \gpmc_driver|Decoder0~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[13][6]~q\);

-- Location: FF_X44_Y32_N3
\gpmc_driver|ram[12][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(6),
	sload => VCC,
	ena => \gpmc_driver|Decoder0~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[12][6]~q\);

-- Location: LCCOMB_X44_Y32_N2
\gpmc_driver|gpmc_data_out~160\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~160_combout\ = (\gpmc_driver|gpmc_addr_in\(1) & (((\gpmc_driver|gpmc_addr_in\(0))))) # (!\gpmc_driver|gpmc_addr_in\(1) & ((\gpmc_driver|gpmc_addr_in\(0) & (\gpmc_driver|ram[13][6]~q\)) # (!\gpmc_driver|gpmc_addr_in\(0) & 
-- ((\gpmc_driver|ram[12][6]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|ram[13][6]~q\,
	datab => \gpmc_driver|gpmc_addr_in\(1),
	datac => \gpmc_driver|ram[12][6]~q\,
	datad => \gpmc_driver|gpmc_addr_in\(0),
	combout => \gpmc_driver|gpmc_data_out~160_combout\);

-- Location: FF_X44_Y32_N13
\gpmc_driver|ram[14][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(6),
	sload => VCC,
	ena => \gpmc_driver|Decoder0~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[14][6]~q\);

-- Location: LCCOMB_X44_Y32_N12
\gpmc_driver|gpmc_data_out[6]~161\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out[6]~161_combout\ = (\gpmc_driver|gpmc_data_out~160_combout\ & ((\gpmc_driver|ram[15][6]~q\) # ((!\gpmc_driver|gpmc_addr_in\(1))))) # (!\gpmc_driver|gpmc_data_out~160_combout\ & (((\gpmc_driver|ram[14][6]~q\ & 
-- \gpmc_driver|gpmc_addr_in\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|ram[15][6]~q\,
	datab => \gpmc_driver|gpmc_data_out~160_combout\,
	datac => \gpmc_driver|ram[14][6]~q\,
	datad => \gpmc_driver|gpmc_addr_in\(1),
	combout => \gpmc_driver|gpmc_data_out[6]~161_combout\);

-- Location: LCCOMB_X48_Y30_N8
\gpmc_driver|ram[3][6]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[3][6]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gpmc_driver|gpmc_data_in\(6),
	combout => \gpmc_driver|ram[3][6]~feeder_combout\);

-- Location: FF_X48_Y30_N9
\gpmc_driver|ram[3][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[3][6]~feeder_combout\,
	ena => \gpmc_driver|Decoder0~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[3][6]~q\);

-- Location: FF_X48_Y30_N27
\gpmc_driver|ram[2][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(6),
	sload => VCC,
	ena => \gpmc_driver|Decoder0~55_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[2][6]~q\);

-- Location: LCCOMB_X48_Y30_N26
\gpmc_driver|gpmc_data_out[6]~162\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out[6]~162_combout\ = (\gpmc_driver|gpmc_addr_in\(1) & ((\gpmc_driver|gpmc_data_out[0]~48_combout\ & (\gpmc_driver|ram[3][6]~q\)) # (!\gpmc_driver|gpmc_data_out[0]~48_combout\ & ((\gpmc_driver|ram[2][6]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(1),
	datab => \gpmc_driver|ram[3][6]~q\,
	datac => \gpmc_driver|ram[2][6]~q\,
	datad => \gpmc_driver|gpmc_data_out[0]~48_combout\,
	combout => \gpmc_driver|gpmc_data_out[6]~162_combout\);

-- Location: LCCOMB_X45_Y28_N8
\gpmc_driver|ram[9][6]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[9][6]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gpmc_driver|gpmc_data_in\(6),
	combout => \gpmc_driver|ram[9][6]~feeder_combout\);

-- Location: FF_X45_Y28_N9
\gpmc_driver|ram[9][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[9][6]~feeder_combout\,
	ena => \gpmc_driver|Decoder0~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[9][6]~q\);

-- Location: FF_X45_Y30_N15
\gpmc_driver|ram[8][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(6),
	sload => VCC,
	ena => \gpmc_driver|Decoder0~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[8][6]~q\);

-- Location: LCCOMB_X45_Y30_N14
\gpmc_driver|gpmc_data_out~165\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~165_combout\ = (\gpmc_driver|gpmc_addr_in\(0) & ((\gpmc_driver|ram[9][6]~q\) # ((\gpmc_driver|gpmc_addr_in\(1))))) # (!\gpmc_driver|gpmc_addr_in\(0) & (((\gpmc_driver|ram[8][6]~q\ & !\gpmc_driver|gpmc_addr_in\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(0),
	datab => \gpmc_driver|ram[9][6]~q\,
	datac => \gpmc_driver|ram[8][6]~q\,
	datad => \gpmc_driver|gpmc_addr_in\(1),
	combout => \gpmc_driver|gpmc_data_out~165_combout\);

-- Location: FF_X45_Y30_N21
\gpmc_driver|ram[11][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(6),
	sload => VCC,
	ena => \gpmc_driver|Decoder0~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[11][6]~q\);

-- Location: LCCOMB_X46_Y28_N20
\gpmc_driver|ram[10][6]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[10][6]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gpmc_driver|gpmc_data_in\(6),
	combout => \gpmc_driver|ram[10][6]~feeder_combout\);

-- Location: FF_X46_Y28_N21
\gpmc_driver|ram[10][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[10][6]~feeder_combout\,
	ena => \gpmc_driver|Decoder0~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[10][6]~q\);

-- Location: LCCOMB_X45_Y30_N20
\gpmc_driver|gpmc_data_out[6]~166\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out[6]~166_combout\ = (\gpmc_driver|gpmc_addr_in\(1) & ((\gpmc_driver|gpmc_data_out~165_combout\ & (\gpmc_driver|ram[11][6]~q\)) # (!\gpmc_driver|gpmc_data_out~165_combout\ & ((\gpmc_driver|ram[10][6]~q\))))) # 
-- (!\gpmc_driver|gpmc_addr_in\(1) & (\gpmc_driver|gpmc_data_out~165_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(1),
	datab => \gpmc_driver|gpmc_data_out~165_combout\,
	datac => \gpmc_driver|ram[11][6]~q\,
	datad => \gpmc_driver|ram[10][6]~q\,
	combout => \gpmc_driver|gpmc_data_out[6]~166_combout\);

-- Location: LCCOMB_X53_Y28_N8
\gpmc_driver|ram[5][6]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[5][6]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gpmc_driver|gpmc_data_in\(6),
	combout => \gpmc_driver|ram[5][6]~feeder_combout\);

-- Location: FF_X53_Y28_N9
\gpmc_driver|ram[5][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[5][6]~feeder_combout\,
	ena => \gpmc_driver|Decoder0~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[5][6]~q\);

-- Location: FF_X49_Y28_N3
\gpmc_driver|ram[7][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(6),
	sload => VCC,
	ena => \gpmc_driver|Decoder0~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[7][6]~q\);

-- Location: LCCOMB_X51_Y28_N10
\gpmc_driver|ram[6][6]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[6][6]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gpmc_driver|gpmc_data_in\(6),
	combout => \gpmc_driver|ram[6][6]~feeder_combout\);

-- Location: FF_X51_Y28_N11
\gpmc_driver|ram[6][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[6][6]~feeder_combout\,
	ena => \gpmc_driver|Decoder0~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[6][6]~q\);

-- Location: FF_X49_Y28_N17
\gpmc_driver|ram[4][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(6),
	sload => VCC,
	ena => \gpmc_driver|Decoder0~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[4][6]~q\);

-- Location: LCCOMB_X49_Y28_N16
\gpmc_driver|gpmc_data_out~163\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~163_combout\ = (\gpmc_driver|gpmc_addr_in\(0) & (((\gpmc_driver|gpmc_addr_in\(1))))) # (!\gpmc_driver|gpmc_addr_in\(0) & ((\gpmc_driver|gpmc_addr_in\(1) & (\gpmc_driver|ram[6][6]~q\)) # (!\gpmc_driver|gpmc_addr_in\(1) & 
-- ((\gpmc_driver|ram[4][6]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|ram[6][6]~q\,
	datab => \gpmc_driver|gpmc_addr_in\(0),
	datac => \gpmc_driver|ram[4][6]~q\,
	datad => \gpmc_driver|gpmc_addr_in\(1),
	combout => \gpmc_driver|gpmc_data_out~163_combout\);

-- Location: LCCOMB_X49_Y28_N2
\gpmc_driver|gpmc_data_out~164\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~164_combout\ = (\gpmc_driver|gpmc_addr_in\(0) & ((\gpmc_driver|gpmc_data_out~163_combout\ & ((\gpmc_driver|ram[7][6]~q\))) # (!\gpmc_driver|gpmc_data_out~163_combout\ & (\gpmc_driver|ram[5][6]~q\)))) # 
-- (!\gpmc_driver|gpmc_addr_in\(0) & (((\gpmc_driver|gpmc_data_out~163_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|ram[5][6]~q\,
	datab => \gpmc_driver|gpmc_addr_in\(0),
	datac => \gpmc_driver|ram[7][6]~q\,
	datad => \gpmc_driver|gpmc_data_out~163_combout\,
	combout => \gpmc_driver|gpmc_data_out~164_combout\);

-- Location: LCCOMB_X46_Y29_N2
\gpmc_driver|gpmc_data_out[6]~167\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out[6]~167_combout\ = (\gpmc_driver|gpmc_data_out[0]~48_combout\ & (\gpmc_driver|gpmc_data_out[6]~166_combout\)) # (!\gpmc_driver|gpmc_data_out[0]~48_combout\ & ((\gpmc_driver|gpmc_data_out~164_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \gpmc_driver|gpmc_data_out[0]~48_combout\,
	datac => \gpmc_driver|gpmc_data_out[6]~166_combout\,
	datad => \gpmc_driver|gpmc_data_out~164_combout\,
	combout => \gpmc_driver|gpmc_data_out[6]~167_combout\);

-- Location: LCCOMB_X46_Y29_N12
\gpmc_driver|gpmc_data_out[6]~346\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out[6]~346_combout\ = (\gpmc_driver|gpmc_addr_in\(2) & (((\gpmc_driver|gpmc_data_out[6]~167_combout\)))) # (!\gpmc_driver|gpmc_addr_in\(2) & ((\gpmc_driver|gpmc_addr_in\(3) & ((\gpmc_driver|gpmc_data_out[6]~167_combout\))) # 
-- (!\gpmc_driver|gpmc_addr_in\(3) & (\gpmc_driver|gpmc_data_out[6]~162_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(2),
	datab => \gpmc_driver|gpmc_addr_in\(3),
	datac => \gpmc_driver|gpmc_data_out[6]~162_combout\,
	datad => \gpmc_driver|gpmc_data_out[6]~167_combout\,
	combout => \gpmc_driver|gpmc_data_out[6]~346_combout\);

-- Location: LCCOMB_X46_Y29_N20
\gpmc_driver|gpmc_data_out[6]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out[6]~6_combout\ = (\gpmc_driver|gpmc_data_out[0]~58_combout\ & (\gpmc_driver|gpmc_data_out[6]~161_combout\)) # (!\gpmc_driver|gpmc_data_out[0]~58_combout\ & ((\gpmc_driver|gpmc_data_out[6]~346_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_data_out[6]~161_combout\,
	datab => \gpmc_driver|gpmc_data_out[0]~58_combout\,
	datad => \gpmc_driver|gpmc_data_out[6]~346_combout\,
	combout => \gpmc_driver|gpmc_data_out[6]~6_combout\);

-- Location: LCCOMB_X50_Y33_N28
\gpmc_driver|ram[26][6]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[26][6]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gpmc_driver|gpmc_data_in\(6),
	combout => \gpmc_driver|ram[26][6]~feeder_combout\);

-- Location: FF_X50_Y33_N29
\gpmc_driver|ram[26][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[26][6]~feeder_combout\,
	ena => \gpmc_driver|Decoder0~57_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[26][6]~q\);

-- Location: FF_X50_Y33_N23
\gpmc_driver|ram[30][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(6),
	sload => VCC,
	ena => \gpmc_driver|Decoder0~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[30][6]~q\);

-- Location: LCCOMB_X49_Y33_N8
\gpmc_driver|ram[22][6]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[22][6]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gpmc_driver|gpmc_data_in\(6),
	combout => \gpmc_driver|ram[22][6]~feeder_combout\);

-- Location: FF_X49_Y33_N9
\gpmc_driver|ram[22][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[22][6]~feeder_combout\,
	ena => \gpmc_driver|Decoder0~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[22][6]~q\);

-- Location: FF_X49_Y33_N3
\gpmc_driver|ram[18][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(6),
	sload => VCC,
	ena => \gpmc_driver|Decoder0~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[18][6]~q\);

-- Location: LCCOMB_X49_Y33_N2
\gpmc_driver|gpmc_data_out~168\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~168_combout\ = (\gpmc_driver|gpmc_addr_in\(3) & (((\gpmc_driver|gpmc_addr_in\(2))))) # (!\gpmc_driver|gpmc_addr_in\(3) & ((\gpmc_driver|gpmc_addr_in\(2) & (\gpmc_driver|ram[22][6]~q\)) # (!\gpmc_driver|gpmc_addr_in\(2) & 
-- ((\gpmc_driver|ram[18][6]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(3),
	datab => \gpmc_driver|ram[22][6]~q\,
	datac => \gpmc_driver|ram[18][6]~q\,
	datad => \gpmc_driver|gpmc_addr_in\(2),
	combout => \gpmc_driver|gpmc_data_out~168_combout\);

-- Location: LCCOMB_X50_Y33_N22
\gpmc_driver|gpmc_data_out~169\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~169_combout\ = (\gpmc_driver|gpmc_addr_in\(3) & ((\gpmc_driver|gpmc_data_out~168_combout\ & ((\gpmc_driver|ram[30][6]~q\))) # (!\gpmc_driver|gpmc_data_out~168_combout\ & (\gpmc_driver|ram[26][6]~q\)))) # 
-- (!\gpmc_driver|gpmc_addr_in\(3) & (((\gpmc_driver|gpmc_data_out~168_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(3),
	datab => \gpmc_driver|ram[26][6]~q\,
	datac => \gpmc_driver|ram[30][6]~q\,
	datad => \gpmc_driver|gpmc_data_out~168_combout\,
	combout => \gpmc_driver|gpmc_data_out~169_combout\);

-- Location: LCCOMB_X52_Y30_N28
\gpmc_driver|ram[21][6]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[21][6]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gpmc_driver|gpmc_data_in\(6),
	combout => \gpmc_driver|ram[21][6]~feeder_combout\);

-- Location: FF_X52_Y30_N29
\gpmc_driver|ram[21][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[21][6]~feeder_combout\,
	ena => \gpmc_driver|Decoder0~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[21][6]~q\);

-- Location: FF_X52_Y30_N31
\gpmc_driver|ram[29][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(6),
	sload => VCC,
	ena => \gpmc_driver|Decoder0~47_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[29][6]~q\);

-- Location: LCCOMB_X53_Y30_N12
\gpmc_driver|ram[25][6]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[25][6]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gpmc_driver|gpmc_data_in\(6),
	combout => \gpmc_driver|ram[25][6]~feeder_combout\);

-- Location: FF_X53_Y30_N13
\gpmc_driver|ram[25][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[25][6]~feeder_combout\,
	ena => \gpmc_driver|Decoder0~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[25][6]~q\);

-- Location: FF_X53_Y30_N19
\gpmc_driver|ram[17][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(6),
	sload => VCC,
	ena => \gpmc_driver|Decoder0~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[17][6]~q\);

-- Location: LCCOMB_X53_Y30_N18
\gpmc_driver|gpmc_data_out~170\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~170_combout\ = (\gpmc_driver|gpmc_addr_in\(2) & (((\gpmc_driver|gpmc_addr_in\(3))))) # (!\gpmc_driver|gpmc_addr_in\(2) & ((\gpmc_driver|gpmc_addr_in\(3) & (\gpmc_driver|ram[25][6]~q\)) # (!\gpmc_driver|gpmc_addr_in\(3) & 
-- ((\gpmc_driver|ram[17][6]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(2),
	datab => \gpmc_driver|ram[25][6]~q\,
	datac => \gpmc_driver|ram[17][6]~q\,
	datad => \gpmc_driver|gpmc_addr_in\(3),
	combout => \gpmc_driver|gpmc_data_out~170_combout\);

-- Location: LCCOMB_X52_Y30_N30
\gpmc_driver|gpmc_data_out~171\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~171_combout\ = (\gpmc_driver|gpmc_addr_in\(2) & ((\gpmc_driver|gpmc_data_out~170_combout\ & ((\gpmc_driver|ram[29][6]~q\))) # (!\gpmc_driver|gpmc_data_out~170_combout\ & (\gpmc_driver|ram[21][6]~q\)))) # 
-- (!\gpmc_driver|gpmc_addr_in\(2) & (((\gpmc_driver|gpmc_data_out~170_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(2),
	datab => \gpmc_driver|ram[21][6]~q\,
	datac => \gpmc_driver|ram[29][6]~q\,
	datad => \gpmc_driver|gpmc_data_out~170_combout\,
	combout => \gpmc_driver|gpmc_data_out~171_combout\);

-- Location: LCCOMB_X49_Y31_N28
\gpmc_driver|ram[24][6]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[24][6]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gpmc_driver|gpmc_data_in\(6),
	combout => \gpmc_driver|ram[24][6]~feeder_combout\);

-- Location: FF_X49_Y31_N29
\gpmc_driver|ram[24][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[24][6]~feeder_combout\,
	ena => \gpmc_driver|Decoder0~59_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[24][6]~q\);

-- Location: FF_X50_Y29_N29
\gpmc_driver|ram[28][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(6),
	sload => VCC,
	ena => \gpmc_driver|Decoder0~51_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[28][6]~q\);

-- Location: FF_X50_Y29_N11
\gpmc_driver|ram[16][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(6),
	sload => VCC,
	ena => \gpmc_driver|Decoder0~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[16][6]~q\);

-- Location: LCCOMB_X50_Y30_N6
\gpmc_driver|ram[20][6]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[20][6]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gpmc_driver|gpmc_data_in\(6),
	combout => \gpmc_driver|ram[20][6]~feeder_combout\);

-- Location: FF_X50_Y30_N7
\gpmc_driver|ram[20][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[20][6]~feeder_combout\,
	ena => \gpmc_driver|Decoder0~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[20][6]~q\);

-- Location: LCCOMB_X50_Y29_N10
\gpmc_driver|gpmc_data_out~172\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~172_combout\ = (\gpmc_driver|gpmc_addr_in\(2) & ((\gpmc_driver|gpmc_addr_in\(3)) # ((\gpmc_driver|ram[20][6]~q\)))) # (!\gpmc_driver|gpmc_addr_in\(2) & (!\gpmc_driver|gpmc_addr_in\(3) & (\gpmc_driver|ram[16][6]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(2),
	datab => \gpmc_driver|gpmc_addr_in\(3),
	datac => \gpmc_driver|ram[16][6]~q\,
	datad => \gpmc_driver|ram[20][6]~q\,
	combout => \gpmc_driver|gpmc_data_out~172_combout\);

-- Location: LCCOMB_X50_Y29_N28
\gpmc_driver|gpmc_data_out~173\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~173_combout\ = (\gpmc_driver|gpmc_addr_in\(3) & ((\gpmc_driver|gpmc_data_out~172_combout\ & ((\gpmc_driver|ram[28][6]~q\))) # (!\gpmc_driver|gpmc_data_out~172_combout\ & (\gpmc_driver|ram[24][6]~q\)))) # 
-- (!\gpmc_driver|gpmc_addr_in\(3) & (((\gpmc_driver|gpmc_data_out~172_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(3),
	datab => \gpmc_driver|ram[24][6]~q\,
	datac => \gpmc_driver|ram[28][6]~q\,
	datad => \gpmc_driver|gpmc_data_out~172_combout\,
	combout => \gpmc_driver|gpmc_data_out~173_combout\);

-- Location: LCCOMB_X46_Y29_N4
\gpmc_driver|gpmc_data_out~174\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~174_combout\ = (\gpmc_driver|gpmc_addr_in\(0) & ((\gpmc_driver|gpmc_addr_in\(1)) # ((\gpmc_driver|gpmc_data_out~171_combout\)))) # (!\gpmc_driver|gpmc_addr_in\(0) & (!\gpmc_driver|gpmc_addr_in\(1) & 
-- ((\gpmc_driver|gpmc_data_out~173_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(0),
	datab => \gpmc_driver|gpmc_addr_in\(1),
	datac => \gpmc_driver|gpmc_data_out~171_combout\,
	datad => \gpmc_driver|gpmc_data_out~173_combout\,
	combout => \gpmc_driver|gpmc_data_out~174_combout\);

-- Location: LCCOMB_X50_Y32_N26
\gpmc_driver|ram[23][6]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[23][6]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gpmc_driver|gpmc_data_in\(6),
	combout => \gpmc_driver|ram[23][6]~feeder_combout\);

-- Location: FF_X50_Y32_N27
\gpmc_driver|ram[23][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[23][6]~feeder_combout\,
	ena => \gpmc_driver|Decoder0~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[23][6]~q\);

-- Location: FF_X50_Y32_N9
\gpmc_driver|ram[31][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(6),
	sload => VCC,
	ena => \gpmc_driver|Decoder0~53_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[31][6]~q\);

-- Location: LCCOMB_X51_Y32_N20
\gpmc_driver|ram[27][6]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[27][6]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gpmc_driver|gpmc_data_in\(6),
	combout => \gpmc_driver|ram[27][6]~feeder_combout\);

-- Location: FF_X51_Y32_N21
\gpmc_driver|ram[27][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[27][6]~feeder_combout\,
	ena => \gpmc_driver|Decoder0~61_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[27][6]~q\);

-- Location: FF_X51_Y32_N27
\gpmc_driver|ram[19][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(6),
	sload => VCC,
	ena => \gpmc_driver|Decoder0~62_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[19][6]~q\);

-- Location: LCCOMB_X51_Y32_N26
\gpmc_driver|gpmc_data_out~175\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~175_combout\ = (\gpmc_driver|gpmc_addr_in\(3) & ((\gpmc_driver|ram[27][6]~q\) # ((\gpmc_driver|gpmc_addr_in\(2))))) # (!\gpmc_driver|gpmc_addr_in\(3) & (((\gpmc_driver|ram[19][6]~q\ & !\gpmc_driver|gpmc_addr_in\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(3),
	datab => \gpmc_driver|ram[27][6]~q\,
	datac => \gpmc_driver|ram[19][6]~q\,
	datad => \gpmc_driver|gpmc_addr_in\(2),
	combout => \gpmc_driver|gpmc_data_out~175_combout\);

-- Location: LCCOMB_X50_Y32_N8
\gpmc_driver|gpmc_data_out~176\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~176_combout\ = (\gpmc_driver|gpmc_addr_in\(2) & ((\gpmc_driver|gpmc_data_out~175_combout\ & ((\gpmc_driver|ram[31][6]~q\))) # (!\gpmc_driver|gpmc_data_out~175_combout\ & (\gpmc_driver|ram[23][6]~q\)))) # 
-- (!\gpmc_driver|gpmc_addr_in\(2) & (((\gpmc_driver|gpmc_data_out~175_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(2),
	datab => \gpmc_driver|ram[23][6]~q\,
	datac => \gpmc_driver|ram[31][6]~q\,
	datad => \gpmc_driver|gpmc_data_out~175_combout\,
	combout => \gpmc_driver|gpmc_data_out~176_combout\);

-- Location: LCCOMB_X46_Y29_N26
\gpmc_driver|gpmc_data_out~177\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~177_combout\ = (\gpmc_driver|gpmc_addr_in\(1) & ((\gpmc_driver|gpmc_data_out~174_combout\ & ((\gpmc_driver|gpmc_data_out~176_combout\))) # (!\gpmc_driver|gpmc_data_out~174_combout\ & (\gpmc_driver|gpmc_data_out~169_combout\)))) 
-- # (!\gpmc_driver|gpmc_addr_in\(1) & (((\gpmc_driver|gpmc_data_out~174_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_data_out~169_combout\,
	datab => \gpmc_driver|gpmc_addr_in\(1),
	datac => \gpmc_driver|gpmc_data_out~174_combout\,
	datad => \gpmc_driver|gpmc_data_out~176_combout\,
	combout => \gpmc_driver|gpmc_data_out~177_combout\);

-- Location: FF_X46_Y29_N21
\gpmc_driver|gpmc_data_out[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|gpmc_data_out[6]~6_combout\,
	asdata => \gpmc_driver|gpmc_data_out~177_combout\,
	sclr => \gpmc_driver|LessThan0~1_combout\,
	sload => \gpmc_driver|gpmc_addr_in\(4),
	ena => \gpmc_driver|gpmc_data_out[0]~69_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|gpmc_data_out\(6));

-- Location: IOIBUF_X45_Y0_N22
\GPMC_DATA[7]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPMC_DATA(7),
	o => \GPMC_DATA[7]~input_o\);

-- Location: LCCOMB_X44_Y28_N18
\gpmc_driver|gpmc_data_in[7]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_in[7]~feeder_combout\ = \GPMC_DATA[7]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \GPMC_DATA[7]~input_o\,
	combout => \gpmc_driver|gpmc_data_in[7]~feeder_combout\);

-- Location: FF_X44_Y28_N19
\gpmc_driver|gpmc_data_in[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|gpmc_data_in[7]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|gpmc_data_in\(7));

-- Location: LCCOMB_X43_Y30_N30
\gpmc_driver|ram[13][7]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[13][7]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gpmc_driver|gpmc_data_in\(7),
	combout => \gpmc_driver|ram[13][7]~feeder_combout\);

-- Location: FF_X43_Y30_N31
\gpmc_driver|ram[13][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[13][7]~feeder_combout\,
	ena => \gpmc_driver|Decoder0~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[13][7]~q\);

-- Location: FF_X45_Y29_N13
\gpmc_driver|ram[15][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(7),
	sload => VCC,
	ena => \gpmc_driver|Decoder0~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[15][7]~q\);

-- Location: LCCOMB_X44_Y32_N28
\gpmc_driver|ram[14][7]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[14][7]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gpmc_driver|gpmc_data_in\(7),
	combout => \gpmc_driver|ram[14][7]~feeder_combout\);

-- Location: FF_X44_Y32_N29
\gpmc_driver|ram[14][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[14][7]~feeder_combout\,
	ena => \gpmc_driver|Decoder0~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[14][7]~q\);

-- Location: FF_X44_Y32_N15
\gpmc_driver|ram[12][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(7),
	sload => VCC,
	ena => \gpmc_driver|Decoder0~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[12][7]~q\);

-- Location: LCCOMB_X44_Y32_N14
\gpmc_driver|gpmc_data_out~184\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~184_combout\ = (\gpmc_driver|gpmc_addr_in\(0) & (((\gpmc_driver|gpmc_addr_in\(1))))) # (!\gpmc_driver|gpmc_addr_in\(0) & ((\gpmc_driver|gpmc_addr_in\(1) & (\gpmc_driver|ram[14][7]~q\)) # (!\gpmc_driver|gpmc_addr_in\(1) & 
-- ((\gpmc_driver|ram[12][7]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(0),
	datab => \gpmc_driver|ram[14][7]~q\,
	datac => \gpmc_driver|ram[12][7]~q\,
	datad => \gpmc_driver|gpmc_addr_in\(1),
	combout => \gpmc_driver|gpmc_data_out~184_combout\);

-- Location: LCCOMB_X45_Y29_N12
\gpmc_driver|gpmc_data_out~185\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~185_combout\ = (\gpmc_driver|gpmc_addr_in\(0) & ((\gpmc_driver|gpmc_data_out~184_combout\ & ((\gpmc_driver|ram[15][7]~q\))) # (!\gpmc_driver|gpmc_data_out~184_combout\ & (\gpmc_driver|ram[13][7]~q\)))) # 
-- (!\gpmc_driver|gpmc_addr_in\(0) & (((\gpmc_driver|gpmc_data_out~184_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(0),
	datab => \gpmc_driver|ram[13][7]~q\,
	datac => \gpmc_driver|ram[15][7]~q\,
	datad => \gpmc_driver|gpmc_data_out~184_combout\,
	combout => \gpmc_driver|gpmc_data_out~185_combout\);

-- Location: LCCOMB_X50_Y28_N20
\gpmc_driver|ram[7][7]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[7][7]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gpmc_driver|gpmc_data_in\(7),
	combout => \gpmc_driver|ram[7][7]~feeder_combout\);

-- Location: FF_X50_Y28_N21
\gpmc_driver|ram[7][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[7][7]~feeder_combout\,
	ena => \gpmc_driver|Decoder0~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[7][7]~q\);

-- Location: FF_X51_Y28_N9
\gpmc_driver|ram[6][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(7),
	sload => VCC,
	ena => \gpmc_driver|Decoder0~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[6][7]~q\);

-- Location: LCCOMB_X51_Y28_N26
\gpmc_driver|ram[5][7]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[5][7]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gpmc_driver|gpmc_data_in\(7),
	combout => \gpmc_driver|ram[5][7]~feeder_combout\);

-- Location: FF_X51_Y28_N27
\gpmc_driver|ram[5][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[5][7]~feeder_combout\,
	ena => \gpmc_driver|Decoder0~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[5][7]~q\);

-- Location: FF_X50_Y28_N23
\gpmc_driver|ram[4][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(7),
	sload => VCC,
	ena => \gpmc_driver|Decoder0~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[4][7]~q\);

-- Location: LCCOMB_X50_Y28_N22
\gpmc_driver|gpmc_data_out~178\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~178_combout\ = (\gpmc_driver|gpmc_addr_in\(1) & (((\gpmc_driver|gpmc_addr_in\(0))))) # (!\gpmc_driver|gpmc_addr_in\(1) & ((\gpmc_driver|gpmc_addr_in\(0) & (\gpmc_driver|ram[5][7]~q\)) # (!\gpmc_driver|gpmc_addr_in\(0) & 
-- ((\gpmc_driver|ram[4][7]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(1),
	datab => \gpmc_driver|ram[5][7]~q\,
	datac => \gpmc_driver|ram[4][7]~q\,
	datad => \gpmc_driver|gpmc_addr_in\(0),
	combout => \gpmc_driver|gpmc_data_out~178_combout\);

-- Location: LCCOMB_X51_Y28_N8
\gpmc_driver|gpmc_data_out~179\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~179_combout\ = (\gpmc_driver|gpmc_addr_in\(1) & ((\gpmc_driver|gpmc_data_out~178_combout\ & (\gpmc_driver|ram[7][7]~q\)) # (!\gpmc_driver|gpmc_data_out~178_combout\ & ((\gpmc_driver|ram[6][7]~q\))))) # 
-- (!\gpmc_driver|gpmc_addr_in\(1) & (((\gpmc_driver|gpmc_data_out~178_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(1),
	datab => \gpmc_driver|ram[7][7]~q\,
	datac => \gpmc_driver|ram[6][7]~q\,
	datad => \gpmc_driver|gpmc_data_out~178_combout\,
	combout => \gpmc_driver|gpmc_data_out~179_combout\);

-- Location: LCCOMB_X45_Y28_N18
\gpmc_driver|ram[9][7]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[9][7]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gpmc_driver|gpmc_data_in\(7),
	combout => \gpmc_driver|ram[9][7]~feeder_combout\);

-- Location: FF_X45_Y28_N19
\gpmc_driver|ram[9][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[9][7]~feeder_combout\,
	ena => \gpmc_driver|Decoder0~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[9][7]~q\);

-- Location: FF_X48_Y28_N11
\gpmc_driver|ram[11][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(7),
	sload => VCC,
	ena => \gpmc_driver|Decoder0~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[11][7]~q\);

-- Location: LCCOMB_X46_Y28_N14
\gpmc_driver|ram[10][7]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[10][7]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gpmc_driver|gpmc_data_in\(7),
	combout => \gpmc_driver|ram[10][7]~feeder_combout\);

-- Location: FF_X46_Y28_N15
\gpmc_driver|ram[10][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[10][7]~feeder_combout\,
	ena => \gpmc_driver|Decoder0~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[10][7]~q\);

-- Location: FF_X48_Y28_N17
\gpmc_driver|ram[8][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(7),
	sload => VCC,
	ena => \gpmc_driver|Decoder0~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[8][7]~q\);

-- Location: LCCOMB_X48_Y28_N16
\gpmc_driver|gpmc_data_out~181\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~181_combout\ = (\gpmc_driver|gpmc_addr_in\(1) & ((\gpmc_driver|ram[10][7]~q\) # ((\gpmc_driver|gpmc_addr_in\(0))))) # (!\gpmc_driver|gpmc_addr_in\(1) & (((\gpmc_driver|ram[8][7]~q\ & !\gpmc_driver|gpmc_addr_in\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(1),
	datab => \gpmc_driver|ram[10][7]~q\,
	datac => \gpmc_driver|ram[8][7]~q\,
	datad => \gpmc_driver|gpmc_addr_in\(0),
	combout => \gpmc_driver|gpmc_data_out~181_combout\);

-- Location: LCCOMB_X48_Y28_N10
\gpmc_driver|gpmc_data_out~182\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~182_combout\ = (\gpmc_driver|gpmc_addr_in\(0) & ((\gpmc_driver|gpmc_data_out~181_combout\ & ((\gpmc_driver|ram[11][7]~q\))) # (!\gpmc_driver|gpmc_data_out~181_combout\ & (\gpmc_driver|ram[9][7]~q\)))) # 
-- (!\gpmc_driver|gpmc_addr_in\(0) & (((\gpmc_driver|gpmc_data_out~181_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|ram[9][7]~q\,
	datab => \gpmc_driver|gpmc_addr_in\(0),
	datac => \gpmc_driver|ram[11][7]~q\,
	datad => \gpmc_driver|gpmc_data_out~181_combout\,
	combout => \gpmc_driver|gpmc_data_out~182_combout\);

-- Location: LCCOMB_X52_Y28_N20
\gpmc_driver|ram[3][7]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[3][7]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gpmc_driver|gpmc_data_in\(7),
	combout => \gpmc_driver|ram[3][7]~feeder_combout\);

-- Location: FF_X52_Y28_N21
\gpmc_driver|ram[3][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[3][7]~feeder_combout\,
	ena => \gpmc_driver|Decoder0~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[3][7]~q\);

-- Location: FF_X52_Y28_N27
\gpmc_driver|ram[2][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(7),
	sload => VCC,
	ena => \gpmc_driver|Decoder0~55_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[2][7]~q\);

-- Location: LCCOMB_X52_Y28_N26
\gpmc_driver|gpmc_data_out~180\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~180_combout\ = (\gpmc_driver|gpmc_data_out[0]~51_combout\ & (((\gpmc_driver|gpmc_data_out[0]~48_combout\)))) # (!\gpmc_driver|gpmc_data_out[0]~51_combout\ & ((\gpmc_driver|gpmc_data_out[0]~48_combout\ & 
-- (\gpmc_driver|ram[3][7]~q\)) # (!\gpmc_driver|gpmc_data_out[0]~48_combout\ & ((\gpmc_driver|ram[2][7]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_data_out[0]~51_combout\,
	datab => \gpmc_driver|ram[3][7]~q\,
	datac => \gpmc_driver|ram[2][7]~q\,
	datad => \gpmc_driver|gpmc_data_out[0]~48_combout\,
	combout => \gpmc_driver|gpmc_data_out~180_combout\);

-- Location: LCCOMB_X51_Y28_N16
\gpmc_driver|gpmc_data_out~183\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~183_combout\ = (\gpmc_driver|gpmc_data_out[0]~51_combout\ & ((\gpmc_driver|gpmc_data_out~180_combout\ & ((\gpmc_driver|gpmc_data_out~182_combout\))) # (!\gpmc_driver|gpmc_data_out~180_combout\ & 
-- (\gpmc_driver|gpmc_data_out~179_combout\)))) # (!\gpmc_driver|gpmc_data_out[0]~51_combout\ & (((\gpmc_driver|gpmc_data_out~180_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_data_out[0]~51_combout\,
	datab => \gpmc_driver|gpmc_data_out~179_combout\,
	datac => \gpmc_driver|gpmc_data_out~182_combout\,
	datad => \gpmc_driver|gpmc_data_out~180_combout\,
	combout => \gpmc_driver|gpmc_data_out~183_combout\);

-- Location: LCCOMB_X46_Y29_N10
\gpmc_driver|gpmc_data_out~347\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~347_combout\ = (\gpmc_driver|gpmc_data_out~183_combout\ & ((\gpmc_driver|gpmc_addr_in\(2)) # ((\gpmc_driver|gpmc_addr_in\(1)) # (\gpmc_driver|gpmc_addr_in\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(2),
	datab => \gpmc_driver|gpmc_addr_in\(1),
	datac => \gpmc_driver|gpmc_addr_in\(3),
	datad => \gpmc_driver|gpmc_data_out~183_combout\,
	combout => \gpmc_driver|gpmc_data_out~347_combout\);

-- Location: LCCOMB_X46_Y29_N18
\gpmc_driver|gpmc_data_out[7]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out[7]~7_combout\ = (\gpmc_driver|gpmc_data_out[0]~58_combout\ & (\gpmc_driver|gpmc_data_out~185_combout\)) # (!\gpmc_driver|gpmc_data_out[0]~58_combout\ & ((\gpmc_driver|gpmc_data_out~347_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_data_out~185_combout\,
	datab => \gpmc_driver|gpmc_data_out[0]~58_combout\,
	datad => \gpmc_driver|gpmc_data_out~347_combout\,
	combout => \gpmc_driver|gpmc_data_out[7]~7_combout\);

-- Location: LCCOMB_X52_Y31_N0
\gpmc_driver|ram[21][7]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[21][7]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gpmc_driver|gpmc_data_in\(7),
	combout => \gpmc_driver|ram[21][7]~feeder_combout\);

-- Location: FF_X52_Y31_N1
\gpmc_driver|ram[21][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[21][7]~feeder_combout\,
	ena => \gpmc_driver|Decoder0~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[21][7]~q\);

-- Location: FF_X52_Y31_N11
\gpmc_driver|ram[29][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(7),
	sload => VCC,
	ena => \gpmc_driver|Decoder0~47_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[29][7]~q\);

-- Location: LCCOMB_X53_Y31_N0
\gpmc_driver|ram[25][7]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[25][7]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gpmc_driver|gpmc_data_in\(7),
	combout => \gpmc_driver|ram[25][7]~feeder_combout\);

-- Location: FF_X53_Y31_N1
\gpmc_driver|ram[25][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[25][7]~feeder_combout\,
	ena => \gpmc_driver|Decoder0~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[25][7]~q\);

-- Location: FF_X53_Y31_N7
\gpmc_driver|ram[17][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(7),
	sload => VCC,
	ena => \gpmc_driver|Decoder0~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[17][7]~q\);

-- Location: LCCOMB_X53_Y31_N6
\gpmc_driver|gpmc_data_out~186\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~186_combout\ = (\gpmc_driver|gpmc_addr_in\(3) & ((\gpmc_driver|ram[25][7]~q\) # ((\gpmc_driver|gpmc_addr_in\(2))))) # (!\gpmc_driver|gpmc_addr_in\(3) & (((\gpmc_driver|ram[17][7]~q\ & !\gpmc_driver|gpmc_addr_in\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(3),
	datab => \gpmc_driver|ram[25][7]~q\,
	datac => \gpmc_driver|ram[17][7]~q\,
	datad => \gpmc_driver|gpmc_addr_in\(2),
	combout => \gpmc_driver|gpmc_data_out~186_combout\);

-- Location: LCCOMB_X52_Y31_N10
\gpmc_driver|gpmc_data_out~187\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~187_combout\ = (\gpmc_driver|gpmc_addr_in\(2) & ((\gpmc_driver|gpmc_data_out~186_combout\ & ((\gpmc_driver|ram[29][7]~q\))) # (!\gpmc_driver|gpmc_data_out~186_combout\ & (\gpmc_driver|ram[21][7]~q\)))) # 
-- (!\gpmc_driver|gpmc_addr_in\(2) & (((\gpmc_driver|gpmc_data_out~186_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(2),
	datab => \gpmc_driver|ram[21][7]~q\,
	datac => \gpmc_driver|ram[29][7]~q\,
	datad => \gpmc_driver|gpmc_data_out~186_combout\,
	combout => \gpmc_driver|gpmc_data_out~187_combout\);

-- Location: LCCOMB_X50_Y32_N22
\gpmc_driver|ram[23][7]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[23][7]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gpmc_driver|gpmc_data_in\(7),
	combout => \gpmc_driver|ram[23][7]~feeder_combout\);

-- Location: FF_X50_Y32_N23
\gpmc_driver|ram[23][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[23][7]~feeder_combout\,
	ena => \gpmc_driver|Decoder0~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[23][7]~q\);

-- Location: FF_X50_Y32_N17
\gpmc_driver|ram[31][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(7),
	sload => VCC,
	ena => \gpmc_driver|Decoder0~53_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[31][7]~q\);

-- Location: LCCOMB_X51_Y32_N24
\gpmc_driver|ram[27][7]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[27][7]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gpmc_driver|gpmc_data_in\(7),
	combout => \gpmc_driver|ram[27][7]~feeder_combout\);

-- Location: FF_X51_Y32_N25
\gpmc_driver|ram[27][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[27][7]~feeder_combout\,
	ena => \gpmc_driver|Decoder0~61_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[27][7]~q\);

-- Location: FF_X51_Y32_N15
\gpmc_driver|ram[19][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(7),
	sload => VCC,
	ena => \gpmc_driver|Decoder0~62_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[19][7]~q\);

-- Location: LCCOMB_X51_Y32_N14
\gpmc_driver|gpmc_data_out~193\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~193_combout\ = (\gpmc_driver|gpmc_addr_in\(3) & ((\gpmc_driver|ram[27][7]~q\) # ((\gpmc_driver|gpmc_addr_in\(2))))) # (!\gpmc_driver|gpmc_addr_in\(3) & (((\gpmc_driver|ram[19][7]~q\ & !\gpmc_driver|gpmc_addr_in\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(3),
	datab => \gpmc_driver|ram[27][7]~q\,
	datac => \gpmc_driver|ram[19][7]~q\,
	datad => \gpmc_driver|gpmc_addr_in\(2),
	combout => \gpmc_driver|gpmc_data_out~193_combout\);

-- Location: LCCOMB_X50_Y32_N16
\gpmc_driver|gpmc_data_out~194\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~194_combout\ = (\gpmc_driver|gpmc_addr_in\(2) & ((\gpmc_driver|gpmc_data_out~193_combout\ & ((\gpmc_driver|ram[31][7]~q\))) # (!\gpmc_driver|gpmc_data_out~193_combout\ & (\gpmc_driver|ram[23][7]~q\)))) # 
-- (!\gpmc_driver|gpmc_addr_in\(2) & (((\gpmc_driver|gpmc_data_out~193_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|ram[23][7]~q\,
	datab => \gpmc_driver|gpmc_addr_in\(2),
	datac => \gpmc_driver|ram[31][7]~q\,
	datad => \gpmc_driver|gpmc_data_out~193_combout\,
	combout => \gpmc_driver|gpmc_data_out~194_combout\);

-- Location: LCCOMB_X49_Y29_N0
\gpmc_driver|ram[26][7]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[26][7]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gpmc_driver|gpmc_data_in\(7),
	combout => \gpmc_driver|ram[26][7]~feeder_combout\);

-- Location: FF_X49_Y29_N1
\gpmc_driver|ram[26][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[26][7]~feeder_combout\,
	ena => \gpmc_driver|Decoder0~57_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[26][7]~q\);

-- Location: FF_X49_Y29_N3
\gpmc_driver|ram[30][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(7),
	sload => VCC,
	ena => \gpmc_driver|Decoder0~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[30][7]~q\);

-- Location: LCCOMB_X48_Y29_N20
\gpmc_driver|ram[22][7]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[22][7]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gpmc_driver|gpmc_data_in\(7),
	combout => \gpmc_driver|ram[22][7]~feeder_combout\);

-- Location: FF_X48_Y29_N21
\gpmc_driver|ram[22][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[22][7]~feeder_combout\,
	ena => \gpmc_driver|Decoder0~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[22][7]~q\);

-- Location: FF_X48_Y29_N23
\gpmc_driver|ram[18][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(7),
	sload => VCC,
	ena => \gpmc_driver|Decoder0~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[18][7]~q\);

-- Location: LCCOMB_X48_Y29_N22
\gpmc_driver|gpmc_data_out~188\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~188_combout\ = (\gpmc_driver|gpmc_addr_in\(2) & ((\gpmc_driver|ram[22][7]~q\) # ((\gpmc_driver|gpmc_addr_in\(3))))) # (!\gpmc_driver|gpmc_addr_in\(2) & (((\gpmc_driver|ram[18][7]~q\ & !\gpmc_driver|gpmc_addr_in\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(2),
	datab => \gpmc_driver|ram[22][7]~q\,
	datac => \gpmc_driver|ram[18][7]~q\,
	datad => \gpmc_driver|gpmc_addr_in\(3),
	combout => \gpmc_driver|gpmc_data_out~188_combout\);

-- Location: LCCOMB_X49_Y29_N2
\gpmc_driver|gpmc_data_out~189\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~189_combout\ = (\gpmc_driver|gpmc_addr_in\(3) & ((\gpmc_driver|gpmc_data_out~188_combout\ & ((\gpmc_driver|ram[30][7]~q\))) # (!\gpmc_driver|gpmc_data_out~188_combout\ & (\gpmc_driver|ram[26][7]~q\)))) # 
-- (!\gpmc_driver|gpmc_addr_in\(3) & (((\gpmc_driver|gpmc_data_out~188_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|ram[26][7]~q\,
	datab => \gpmc_driver|gpmc_addr_in\(3),
	datac => \gpmc_driver|ram[30][7]~q\,
	datad => \gpmc_driver|gpmc_data_out~188_combout\,
	combout => \gpmc_driver|gpmc_data_out~189_combout\);

-- Location: LCCOMB_X44_Y31_N6
\gpmc_driver|ram[24][7]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[24][7]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gpmc_driver|gpmc_data_in\(7),
	combout => \gpmc_driver|ram[24][7]~feeder_combout\);

-- Location: FF_X44_Y31_N7
\gpmc_driver|ram[24][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[24][7]~feeder_combout\,
	ena => \gpmc_driver|Decoder0~59_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[24][7]~q\);

-- Location: FF_X45_Y31_N7
\gpmc_driver|ram[28][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(7),
	sload => VCC,
	ena => \gpmc_driver|Decoder0~51_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[28][7]~q\);

-- Location: LCCOMB_X44_Y30_N12
\gpmc_driver|ram[20][7]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[20][7]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gpmc_driver|gpmc_data_in\(7),
	combout => \gpmc_driver|ram[20][7]~feeder_combout\);

-- Location: FF_X44_Y30_N13
\gpmc_driver|ram[20][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[20][7]~feeder_combout\,
	ena => \gpmc_driver|Decoder0~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[20][7]~q\);

-- Location: FF_X44_Y30_N19
\gpmc_driver|ram[16][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(7),
	sload => VCC,
	ena => \gpmc_driver|Decoder0~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[16][7]~q\);

-- Location: LCCOMB_X44_Y30_N18
\gpmc_driver|gpmc_data_out~190\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~190_combout\ = (\gpmc_driver|gpmc_addr_in\(3) & (((\gpmc_driver|gpmc_addr_in\(2))))) # (!\gpmc_driver|gpmc_addr_in\(3) & ((\gpmc_driver|gpmc_addr_in\(2) & (\gpmc_driver|ram[20][7]~q\)) # (!\gpmc_driver|gpmc_addr_in\(2) & 
-- ((\gpmc_driver|ram[16][7]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|ram[20][7]~q\,
	datab => \gpmc_driver|gpmc_addr_in\(3),
	datac => \gpmc_driver|ram[16][7]~q\,
	datad => \gpmc_driver|gpmc_addr_in\(2),
	combout => \gpmc_driver|gpmc_data_out~190_combout\);

-- Location: LCCOMB_X45_Y31_N6
\gpmc_driver|gpmc_data_out~191\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~191_combout\ = (\gpmc_driver|gpmc_addr_in\(3) & ((\gpmc_driver|gpmc_data_out~190_combout\ & ((\gpmc_driver|ram[28][7]~q\))) # (!\gpmc_driver|gpmc_data_out~190_combout\ & (\gpmc_driver|ram[24][7]~q\)))) # 
-- (!\gpmc_driver|gpmc_addr_in\(3) & (((\gpmc_driver|gpmc_data_out~190_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(3),
	datab => \gpmc_driver|ram[24][7]~q\,
	datac => \gpmc_driver|ram[28][7]~q\,
	datad => \gpmc_driver|gpmc_data_out~190_combout\,
	combout => \gpmc_driver|gpmc_data_out~191_combout\);

-- Location: LCCOMB_X46_Y29_N0
\gpmc_driver|gpmc_data_out~192\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~192_combout\ = (\gpmc_driver|gpmc_addr_in\(0) & (\gpmc_driver|gpmc_addr_in\(1))) # (!\gpmc_driver|gpmc_addr_in\(0) & ((\gpmc_driver|gpmc_addr_in\(1) & (\gpmc_driver|gpmc_data_out~189_combout\)) # (!\gpmc_driver|gpmc_addr_in\(1) 
-- & ((\gpmc_driver|gpmc_data_out~191_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(0),
	datab => \gpmc_driver|gpmc_addr_in\(1),
	datac => \gpmc_driver|gpmc_data_out~189_combout\,
	datad => \gpmc_driver|gpmc_data_out~191_combout\,
	combout => \gpmc_driver|gpmc_data_out~192_combout\);

-- Location: LCCOMB_X46_Y29_N30
\gpmc_driver|gpmc_data_out~195\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~195_combout\ = (\gpmc_driver|gpmc_addr_in\(0) & ((\gpmc_driver|gpmc_data_out~192_combout\ & ((\gpmc_driver|gpmc_data_out~194_combout\))) # (!\gpmc_driver|gpmc_data_out~192_combout\ & (\gpmc_driver|gpmc_data_out~187_combout\)))) 
-- # (!\gpmc_driver|gpmc_addr_in\(0) & (((\gpmc_driver|gpmc_data_out~192_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(0),
	datab => \gpmc_driver|gpmc_data_out~187_combout\,
	datac => \gpmc_driver|gpmc_data_out~194_combout\,
	datad => \gpmc_driver|gpmc_data_out~192_combout\,
	combout => \gpmc_driver|gpmc_data_out~195_combout\);

-- Location: FF_X46_Y29_N19
\gpmc_driver|gpmc_data_out[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|gpmc_data_out[7]~7_combout\,
	asdata => \gpmc_driver|gpmc_data_out~195_combout\,
	sclr => \gpmc_driver|LessThan0~1_combout\,
	sload => \gpmc_driver|gpmc_addr_in\(4),
	ena => \gpmc_driver|gpmc_data_out[0]~69_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|gpmc_data_out\(7));

-- Location: IOIBUF_X56_Y43_N15
\GPMC_DATA[8]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPMC_DATA(8),
	o => \GPMC_DATA[8]~input_o\);

-- Location: LCCOMB_X53_Y28_N24
\gpmc_driver|gpmc_data_in[8]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_in[8]~feeder_combout\ = \GPMC_DATA[8]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \GPMC_DATA[8]~input_o\,
	combout => \gpmc_driver|gpmc_data_in[8]~feeder_combout\);

-- Location: FF_X53_Y28_N25
\gpmc_driver|gpmc_data_in[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|gpmc_data_in[8]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|gpmc_data_in\(8));

-- Location: LCCOMB_X44_Y29_N0
\gpmc_driver|ram[13][8]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[13][8]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gpmc_driver|gpmc_data_in\(8),
	combout => \gpmc_driver|ram[13][8]~feeder_combout\);

-- Location: FF_X44_Y29_N1
\gpmc_driver|ram[13][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[13][8]~feeder_combout\,
	ena => \gpmc_driver|Decoder0~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[13][8]~q\);

-- Location: FF_X44_Y29_N7
\gpmc_driver|ram[12][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(8),
	sload => VCC,
	ena => \gpmc_driver|Decoder0~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[12][8]~q\);

-- Location: LCCOMB_X44_Y29_N6
\gpmc_driver|gpmc_data_out~202\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~202_combout\ = (\gpmc_driver|gpmc_addr_in\(1) & (((\gpmc_driver|gpmc_addr_in\(0))))) # (!\gpmc_driver|gpmc_addr_in\(1) & ((\gpmc_driver|gpmc_addr_in\(0) & (\gpmc_driver|ram[13][8]~q\)) # (!\gpmc_driver|gpmc_addr_in\(0) & 
-- ((\gpmc_driver|ram[12][8]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(1),
	datab => \gpmc_driver|ram[13][8]~q\,
	datac => \gpmc_driver|ram[12][8]~q\,
	datad => \gpmc_driver|gpmc_addr_in\(0),
	combout => \gpmc_driver|gpmc_data_out~202_combout\);

-- Location: LCCOMB_X45_Y29_N18
\gpmc_driver|ram[14][8]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[14][8]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gpmc_driver|gpmc_data_in\(8),
	combout => \gpmc_driver|ram[14][8]~feeder_combout\);

-- Location: FF_X45_Y29_N19
\gpmc_driver|ram[14][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[14][8]~feeder_combout\,
	ena => \gpmc_driver|Decoder0~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[14][8]~q\);

-- Location: FF_X45_Y31_N13
\gpmc_driver|ram[15][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(8),
	sload => VCC,
	ena => \gpmc_driver|Decoder0~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[15][8]~q\);

-- Location: LCCOMB_X45_Y31_N12
\gpmc_driver|gpmc_data_out~203\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~203_combout\ = (\gpmc_driver|gpmc_data_out~202_combout\ & (((\gpmc_driver|ram[15][8]~q\) # (!\gpmc_driver|gpmc_addr_in\(1))))) # (!\gpmc_driver|gpmc_data_out~202_combout\ & (\gpmc_driver|ram[14][8]~q\ & 
-- ((\gpmc_driver|gpmc_addr_in\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_data_out~202_combout\,
	datab => \gpmc_driver|ram[14][8]~q\,
	datac => \gpmc_driver|ram[15][8]~q\,
	datad => \gpmc_driver|gpmc_addr_in\(1),
	combout => \gpmc_driver|gpmc_data_out~203_combout\);

-- Location: LCCOMB_X45_Y32_N26
\gpmc_driver|ram[10][8]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[10][8]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gpmc_driver|gpmc_data_in\(8),
	combout => \gpmc_driver|ram[10][8]~feeder_combout\);

-- Location: FF_X45_Y32_N27
\gpmc_driver|ram[10][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[10][8]~feeder_combout\,
	ena => \gpmc_driver|Decoder0~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[10][8]~q\);

-- Location: FF_X48_Y28_N27
\gpmc_driver|ram[11][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(8),
	sload => VCC,
	ena => \gpmc_driver|Decoder0~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[11][8]~q\);

-- Location: LCCOMB_X45_Y28_N4
\gpmc_driver|ram[9][8]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[9][8]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gpmc_driver|gpmc_data_in\(8),
	combout => \gpmc_driver|ram[9][8]~feeder_combout\);

-- Location: FF_X45_Y28_N5
\gpmc_driver|ram[9][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[9][8]~feeder_combout\,
	ena => \gpmc_driver|Decoder0~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[9][8]~q\);

-- Location: FF_X48_Y28_N13
\gpmc_driver|ram[8][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(8),
	sload => VCC,
	ena => \gpmc_driver|Decoder0~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[8][8]~q\);

-- Location: LCCOMB_X48_Y28_N12
\gpmc_driver|gpmc_data_out~199\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~199_combout\ = (\gpmc_driver|gpmc_addr_in\(1) & (((\gpmc_driver|gpmc_addr_in\(0))))) # (!\gpmc_driver|gpmc_addr_in\(1) & ((\gpmc_driver|gpmc_addr_in\(0) & (\gpmc_driver|ram[9][8]~q\)) # (!\gpmc_driver|gpmc_addr_in\(0) & 
-- ((\gpmc_driver|ram[8][8]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(1),
	datab => \gpmc_driver|ram[9][8]~q\,
	datac => \gpmc_driver|ram[8][8]~q\,
	datad => \gpmc_driver|gpmc_addr_in\(0),
	combout => \gpmc_driver|gpmc_data_out~199_combout\);

-- Location: LCCOMB_X48_Y28_N26
\gpmc_driver|gpmc_data_out~200\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~200_combout\ = (\gpmc_driver|gpmc_addr_in\(1) & ((\gpmc_driver|gpmc_data_out~199_combout\ & ((\gpmc_driver|ram[11][8]~q\))) # (!\gpmc_driver|gpmc_data_out~199_combout\ & (\gpmc_driver|ram[10][8]~q\)))) # 
-- (!\gpmc_driver|gpmc_addr_in\(1) & (((\gpmc_driver|gpmc_data_out~199_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(1),
	datab => \gpmc_driver|ram[10][8]~q\,
	datac => \gpmc_driver|ram[11][8]~q\,
	datad => \gpmc_driver|gpmc_data_out~199_combout\,
	combout => \gpmc_driver|gpmc_data_out~200_combout\);

-- Location: FF_X52_Y28_N17
\gpmc_driver|ram[3][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(8),
	sload => VCC,
	ena => \gpmc_driver|Decoder0~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[3][8]~q\);

-- Location: FF_X52_Y28_N11
\gpmc_driver|ram[2][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(8),
	sload => VCC,
	ena => \gpmc_driver|Decoder0~55_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[2][8]~q\);

-- Location: LCCOMB_X53_Y28_N2
\gpmc_driver|ram[5][8]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[5][8]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gpmc_driver|gpmc_data_in\(8),
	combout => \gpmc_driver|ram[5][8]~feeder_combout\);

-- Location: FF_X53_Y28_N3
\gpmc_driver|ram[5][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[5][8]~feeder_combout\,
	ena => \gpmc_driver|Decoder0~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[5][8]~q\);

-- Location: FF_X50_Y28_N9
\gpmc_driver|ram[7][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(8),
	sload => VCC,
	ena => \gpmc_driver|Decoder0~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[7][8]~q\);

-- Location: LCCOMB_X51_Y28_N14
\gpmc_driver|ram[6][8]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[6][8]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gpmc_driver|gpmc_data_in\(8),
	combout => \gpmc_driver|ram[6][8]~feeder_combout\);

-- Location: FF_X51_Y28_N15
\gpmc_driver|ram[6][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[6][8]~feeder_combout\,
	ena => \gpmc_driver|Decoder0~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[6][8]~q\);

-- Location: FF_X50_Y28_N3
\gpmc_driver|ram[4][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(8),
	sload => VCC,
	ena => \gpmc_driver|Decoder0~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[4][8]~q\);

-- Location: LCCOMB_X50_Y28_N2
\gpmc_driver|gpmc_data_out~196\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~196_combout\ = (\gpmc_driver|gpmc_addr_in\(0) & (((\gpmc_driver|gpmc_addr_in\(1))))) # (!\gpmc_driver|gpmc_addr_in\(0) & ((\gpmc_driver|gpmc_addr_in\(1) & (\gpmc_driver|ram[6][8]~q\)) # (!\gpmc_driver|gpmc_addr_in\(1) & 
-- ((\gpmc_driver|ram[4][8]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(0),
	datab => \gpmc_driver|ram[6][8]~q\,
	datac => \gpmc_driver|ram[4][8]~q\,
	datad => \gpmc_driver|gpmc_addr_in\(1),
	combout => \gpmc_driver|gpmc_data_out~196_combout\);

-- Location: LCCOMB_X50_Y28_N8
\gpmc_driver|gpmc_data_out~197\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~197_combout\ = (\gpmc_driver|gpmc_addr_in\(0) & ((\gpmc_driver|gpmc_data_out~196_combout\ & ((\gpmc_driver|ram[7][8]~q\))) # (!\gpmc_driver|gpmc_data_out~196_combout\ & (\gpmc_driver|ram[5][8]~q\)))) # 
-- (!\gpmc_driver|gpmc_addr_in\(0) & (((\gpmc_driver|gpmc_data_out~196_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|ram[5][8]~q\,
	datab => \gpmc_driver|gpmc_addr_in\(0),
	datac => \gpmc_driver|ram[7][8]~q\,
	datad => \gpmc_driver|gpmc_data_out~196_combout\,
	combout => \gpmc_driver|gpmc_data_out~197_combout\);

-- Location: LCCOMB_X52_Y28_N10
\gpmc_driver|gpmc_data_out~198\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~198_combout\ = (\gpmc_driver|gpmc_data_out[0]~48_combout\ & (\gpmc_driver|gpmc_data_out[0]~51_combout\)) # (!\gpmc_driver|gpmc_data_out[0]~48_combout\ & ((\gpmc_driver|gpmc_data_out[0]~51_combout\ & 
-- ((\gpmc_driver|gpmc_data_out~197_combout\))) # (!\gpmc_driver|gpmc_data_out[0]~51_combout\ & (\gpmc_driver|ram[2][8]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_data_out[0]~48_combout\,
	datab => \gpmc_driver|gpmc_data_out[0]~51_combout\,
	datac => \gpmc_driver|ram[2][8]~q\,
	datad => \gpmc_driver|gpmc_data_out~197_combout\,
	combout => \gpmc_driver|gpmc_data_out~198_combout\);

-- Location: LCCOMB_X52_Y28_N16
\gpmc_driver|gpmc_data_out~201\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~201_combout\ = (\gpmc_driver|gpmc_data_out[0]~48_combout\ & ((\gpmc_driver|gpmc_data_out~198_combout\ & (\gpmc_driver|gpmc_data_out~200_combout\)) # (!\gpmc_driver|gpmc_data_out~198_combout\ & ((\gpmc_driver|ram[3][8]~q\))))) # 
-- (!\gpmc_driver|gpmc_data_out[0]~48_combout\ & (((\gpmc_driver|gpmc_data_out~198_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_data_out[0]~48_combout\,
	datab => \gpmc_driver|gpmc_data_out~200_combout\,
	datac => \gpmc_driver|ram[3][8]~q\,
	datad => \gpmc_driver|gpmc_data_out~198_combout\,
	combout => \gpmc_driver|gpmc_data_out~201_combout\);

-- Location: LCCOMB_X51_Y31_N18
\gpmc_driver|gpmc_data_out~348\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~348_combout\ = (\gpmc_driver|gpmc_data_out~201_combout\ & ((\gpmc_driver|gpmc_addr_in\(1)) # ((\gpmc_driver|gpmc_addr_in\(3)) # (\gpmc_driver|gpmc_addr_in\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(1),
	datab => \gpmc_driver|gpmc_addr_in\(3),
	datac => \gpmc_driver|gpmc_addr_in\(2),
	datad => \gpmc_driver|gpmc_data_out~201_combout\,
	combout => \gpmc_driver|gpmc_data_out~348_combout\);

-- Location: LCCOMB_X51_Y31_N22
\gpmc_driver|gpmc_data_out[8]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out[8]~8_combout\ = (\gpmc_driver|gpmc_data_out[0]~58_combout\ & (\gpmc_driver|gpmc_data_out~203_combout\)) # (!\gpmc_driver|gpmc_data_out[0]~58_combout\ & ((\gpmc_driver|gpmc_data_out~348_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_data_out~203_combout\,
	datab => \gpmc_driver|gpmc_data_out[0]~58_combout\,
	datad => \gpmc_driver|gpmc_data_out~348_combout\,
	combout => \gpmc_driver|gpmc_data_out[8]~8_combout\);

-- Location: LCCOMB_X50_Y32_N2
\gpmc_driver|ram[23][8]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[23][8]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gpmc_driver|gpmc_data_in\(8),
	combout => \gpmc_driver|ram[23][8]~feeder_combout\);

-- Location: FF_X50_Y32_N3
\gpmc_driver|ram[23][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[23][8]~feeder_combout\,
	ena => \gpmc_driver|Decoder0~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[23][8]~q\);

-- Location: FF_X49_Y32_N29
\gpmc_driver|ram[31][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(8),
	sload => VCC,
	ena => \gpmc_driver|Decoder0~53_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[31][8]~q\);

-- Location: LCCOMB_X48_Y32_N12
\gpmc_driver|ram[27][8]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[27][8]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gpmc_driver|gpmc_data_in\(8),
	combout => \gpmc_driver|ram[27][8]~feeder_combout\);

-- Location: FF_X48_Y32_N13
\gpmc_driver|ram[27][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[27][8]~feeder_combout\,
	ena => \gpmc_driver|Decoder0~61_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[27][8]~q\);

-- Location: FF_X48_Y32_N3
\gpmc_driver|ram[19][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(8),
	sload => VCC,
	ena => \gpmc_driver|Decoder0~62_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[19][8]~q\);

-- Location: LCCOMB_X48_Y32_N2
\gpmc_driver|gpmc_data_out~211\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~211_combout\ = (\gpmc_driver|gpmc_addr_in\(2) & (((\gpmc_driver|gpmc_addr_in\(3))))) # (!\gpmc_driver|gpmc_addr_in\(2) & ((\gpmc_driver|gpmc_addr_in\(3) & (\gpmc_driver|ram[27][8]~q\)) # (!\gpmc_driver|gpmc_addr_in\(3) & 
-- ((\gpmc_driver|ram[19][8]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|ram[27][8]~q\,
	datab => \gpmc_driver|gpmc_addr_in\(2),
	datac => \gpmc_driver|ram[19][8]~q\,
	datad => \gpmc_driver|gpmc_addr_in\(3),
	combout => \gpmc_driver|gpmc_data_out~211_combout\);

-- Location: LCCOMB_X49_Y32_N28
\gpmc_driver|gpmc_data_out~212\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~212_combout\ = (\gpmc_driver|gpmc_addr_in\(2) & ((\gpmc_driver|gpmc_data_out~211_combout\ & ((\gpmc_driver|ram[31][8]~q\))) # (!\gpmc_driver|gpmc_data_out~211_combout\ & (\gpmc_driver|ram[23][8]~q\)))) # 
-- (!\gpmc_driver|gpmc_addr_in\(2) & (((\gpmc_driver|gpmc_data_out~211_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|ram[23][8]~q\,
	datab => \gpmc_driver|gpmc_addr_in\(2),
	datac => \gpmc_driver|ram[31][8]~q\,
	datad => \gpmc_driver|gpmc_data_out~211_combout\,
	combout => \gpmc_driver|gpmc_data_out~212_combout\);

-- Location: LCCOMB_X49_Y29_N4
\gpmc_driver|ram[26][8]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[26][8]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gpmc_driver|gpmc_data_in\(8),
	combout => \gpmc_driver|ram[26][8]~feeder_combout\);

-- Location: FF_X49_Y29_N5
\gpmc_driver|ram[26][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[26][8]~feeder_combout\,
	ena => \gpmc_driver|Decoder0~57_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[26][8]~q\);

-- Location: FF_X49_Y29_N27
\gpmc_driver|ram[30][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(8),
	sload => VCC,
	ena => \gpmc_driver|Decoder0~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[30][8]~q\);

-- Location: LCCOMB_X48_Y29_N28
\gpmc_driver|ram[22][8]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[22][8]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gpmc_driver|gpmc_data_in\(8),
	combout => \gpmc_driver|ram[22][8]~feeder_combout\);

-- Location: FF_X48_Y29_N29
\gpmc_driver|ram[22][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[22][8]~feeder_combout\,
	ena => \gpmc_driver|Decoder0~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[22][8]~q\);

-- Location: FF_X48_Y29_N19
\gpmc_driver|ram[18][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(8),
	sload => VCC,
	ena => \gpmc_driver|Decoder0~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[18][8]~q\);

-- Location: LCCOMB_X48_Y29_N18
\gpmc_driver|gpmc_data_out~204\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~204_combout\ = (\gpmc_driver|gpmc_addr_in\(2) & ((\gpmc_driver|ram[22][8]~q\) # ((\gpmc_driver|gpmc_addr_in\(3))))) # (!\gpmc_driver|gpmc_addr_in\(2) & (((\gpmc_driver|ram[18][8]~q\ & !\gpmc_driver|gpmc_addr_in\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(2),
	datab => \gpmc_driver|ram[22][8]~q\,
	datac => \gpmc_driver|ram[18][8]~q\,
	datad => \gpmc_driver|gpmc_addr_in\(3),
	combout => \gpmc_driver|gpmc_data_out~204_combout\);

-- Location: LCCOMB_X49_Y29_N26
\gpmc_driver|gpmc_data_out~205\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~205_combout\ = (\gpmc_driver|gpmc_addr_in\(3) & ((\gpmc_driver|gpmc_data_out~204_combout\ & ((\gpmc_driver|ram[30][8]~q\))) # (!\gpmc_driver|gpmc_data_out~204_combout\ & (\gpmc_driver|ram[26][8]~q\)))) # 
-- (!\gpmc_driver|gpmc_addr_in\(3) & (((\gpmc_driver|gpmc_data_out~204_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|ram[26][8]~q\,
	datab => \gpmc_driver|gpmc_addr_in\(3),
	datac => \gpmc_driver|ram[30][8]~q\,
	datad => \gpmc_driver|gpmc_data_out~204_combout\,
	combout => \gpmc_driver|gpmc_data_out~205_combout\);

-- Location: LCCOMB_X52_Y31_N8
\gpmc_driver|ram[21][8]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[21][8]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gpmc_driver|gpmc_data_in\(8),
	combout => \gpmc_driver|ram[21][8]~feeder_combout\);

-- Location: FF_X52_Y31_N9
\gpmc_driver|ram[21][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[21][8]~feeder_combout\,
	ena => \gpmc_driver|Decoder0~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[21][8]~q\);

-- Location: FF_X52_Y31_N15
\gpmc_driver|ram[29][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(8),
	sload => VCC,
	ena => \gpmc_driver|Decoder0~47_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[29][8]~q\);

-- Location: LCCOMB_X53_Y31_N28
\gpmc_driver|ram[25][8]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[25][8]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gpmc_driver|gpmc_data_in\(8),
	combout => \gpmc_driver|ram[25][8]~feeder_combout\);

-- Location: FF_X53_Y31_N29
\gpmc_driver|ram[25][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[25][8]~feeder_combout\,
	ena => \gpmc_driver|Decoder0~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[25][8]~q\);

-- Location: FF_X53_Y31_N19
\gpmc_driver|ram[17][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(8),
	sload => VCC,
	ena => \gpmc_driver|Decoder0~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[17][8]~q\);

-- Location: LCCOMB_X53_Y31_N18
\gpmc_driver|gpmc_data_out~206\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~206_combout\ = (\gpmc_driver|gpmc_addr_in\(3) & ((\gpmc_driver|ram[25][8]~q\) # ((\gpmc_driver|gpmc_addr_in\(2))))) # (!\gpmc_driver|gpmc_addr_in\(3) & (((\gpmc_driver|ram[17][8]~q\ & !\gpmc_driver|gpmc_addr_in\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(3),
	datab => \gpmc_driver|ram[25][8]~q\,
	datac => \gpmc_driver|ram[17][8]~q\,
	datad => \gpmc_driver|gpmc_addr_in\(2),
	combout => \gpmc_driver|gpmc_data_out~206_combout\);

-- Location: LCCOMB_X52_Y31_N14
\gpmc_driver|gpmc_data_out~207\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~207_combout\ = (\gpmc_driver|gpmc_addr_in\(2) & ((\gpmc_driver|gpmc_data_out~206_combout\ & ((\gpmc_driver|ram[29][8]~q\))) # (!\gpmc_driver|gpmc_data_out~206_combout\ & (\gpmc_driver|ram[21][8]~q\)))) # 
-- (!\gpmc_driver|gpmc_addr_in\(2) & (((\gpmc_driver|gpmc_data_out~206_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(2),
	datab => \gpmc_driver|ram[21][8]~q\,
	datac => \gpmc_driver|ram[29][8]~q\,
	datad => \gpmc_driver|gpmc_data_out~206_combout\,
	combout => \gpmc_driver|gpmc_data_out~207_combout\);

-- Location: LCCOMB_X44_Y31_N28
\gpmc_driver|ram[24][8]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[24][8]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gpmc_driver|gpmc_data_in\(8),
	combout => \gpmc_driver|ram[24][8]~feeder_combout\);

-- Location: FF_X44_Y31_N29
\gpmc_driver|ram[24][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[24][8]~feeder_combout\,
	ena => \gpmc_driver|Decoder0~59_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[24][8]~q\);

-- Location: FF_X44_Y31_N11
\gpmc_driver|ram[28][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(8),
	sload => VCC,
	ena => \gpmc_driver|Decoder0~51_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[28][8]~q\);

-- Location: LCCOMB_X44_Y30_N24
\gpmc_driver|ram[20][8]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[20][8]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gpmc_driver|gpmc_data_in\(8),
	combout => \gpmc_driver|ram[20][8]~feeder_combout\);

-- Location: FF_X44_Y30_N25
\gpmc_driver|ram[20][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[20][8]~feeder_combout\,
	ena => \gpmc_driver|Decoder0~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[20][8]~q\);

-- Location: FF_X44_Y30_N3
\gpmc_driver|ram[16][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(8),
	sload => VCC,
	ena => \gpmc_driver|Decoder0~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[16][8]~q\);

-- Location: LCCOMB_X44_Y30_N2
\gpmc_driver|gpmc_data_out~208\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~208_combout\ = (\gpmc_driver|gpmc_addr_in\(3) & (((\gpmc_driver|gpmc_addr_in\(2))))) # (!\gpmc_driver|gpmc_addr_in\(3) & ((\gpmc_driver|gpmc_addr_in\(2) & (\gpmc_driver|ram[20][8]~q\)) # (!\gpmc_driver|gpmc_addr_in\(2) & 
-- ((\gpmc_driver|ram[16][8]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|ram[20][8]~q\,
	datab => \gpmc_driver|gpmc_addr_in\(3),
	datac => \gpmc_driver|ram[16][8]~q\,
	datad => \gpmc_driver|gpmc_addr_in\(2),
	combout => \gpmc_driver|gpmc_data_out~208_combout\);

-- Location: LCCOMB_X44_Y31_N10
\gpmc_driver|gpmc_data_out~209\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~209_combout\ = (\gpmc_driver|gpmc_addr_in\(3) & ((\gpmc_driver|gpmc_data_out~208_combout\ & ((\gpmc_driver|ram[28][8]~q\))) # (!\gpmc_driver|gpmc_data_out~208_combout\ & (\gpmc_driver|ram[24][8]~q\)))) # 
-- (!\gpmc_driver|gpmc_addr_in\(3) & (((\gpmc_driver|gpmc_data_out~208_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(3),
	datab => \gpmc_driver|ram[24][8]~q\,
	datac => \gpmc_driver|ram[28][8]~q\,
	datad => \gpmc_driver|gpmc_data_out~208_combout\,
	combout => \gpmc_driver|gpmc_data_out~209_combout\);

-- Location: LCCOMB_X51_Y31_N10
\gpmc_driver|gpmc_data_out~210\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~210_combout\ = (\gpmc_driver|gpmc_addr_in\(1) & (\gpmc_driver|gpmc_addr_in\(0))) # (!\gpmc_driver|gpmc_addr_in\(1) & ((\gpmc_driver|gpmc_addr_in\(0) & (\gpmc_driver|gpmc_data_out~207_combout\)) # (!\gpmc_driver|gpmc_addr_in\(0) 
-- & ((\gpmc_driver|gpmc_data_out~209_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(1),
	datab => \gpmc_driver|gpmc_addr_in\(0),
	datac => \gpmc_driver|gpmc_data_out~207_combout\,
	datad => \gpmc_driver|gpmc_data_out~209_combout\,
	combout => \gpmc_driver|gpmc_data_out~210_combout\);

-- Location: LCCOMB_X51_Y31_N8
\gpmc_driver|gpmc_data_out~213\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~213_combout\ = (\gpmc_driver|gpmc_addr_in\(1) & ((\gpmc_driver|gpmc_data_out~210_combout\ & (\gpmc_driver|gpmc_data_out~212_combout\)) # (!\gpmc_driver|gpmc_data_out~210_combout\ & ((\gpmc_driver|gpmc_data_out~205_combout\))))) 
-- # (!\gpmc_driver|gpmc_addr_in\(1) & (((\gpmc_driver|gpmc_data_out~210_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_data_out~212_combout\,
	datab => \gpmc_driver|gpmc_addr_in\(1),
	datac => \gpmc_driver|gpmc_data_out~205_combout\,
	datad => \gpmc_driver|gpmc_data_out~210_combout\,
	combout => \gpmc_driver|gpmc_data_out~213_combout\);

-- Location: FF_X51_Y31_N23
\gpmc_driver|gpmc_data_out[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|gpmc_data_out[8]~8_combout\,
	asdata => \gpmc_driver|gpmc_data_out~213_combout\,
	sclr => \gpmc_driver|LessThan0~1_combout\,
	sload => \gpmc_driver|gpmc_addr_in\(4),
	ena => \gpmc_driver|gpmc_data_out[0]~69_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|gpmc_data_out\(8));

-- Location: IOIBUF_X50_Y43_N22
\GPMC_DATA[9]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPMC_DATA(9),
	o => \GPMC_DATA[9]~input_o\);

-- Location: LCCOMB_X48_Y33_N8
\gpmc_driver|gpmc_data_in[9]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_in[9]~feeder_combout\ = \GPMC_DATA[9]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \GPMC_DATA[9]~input_o\,
	combout => \gpmc_driver|gpmc_data_in[9]~feeder_combout\);

-- Location: FF_X48_Y33_N9
\gpmc_driver|gpmc_data_in[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|gpmc_data_in[9]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|gpmc_data_in\(9));

-- Location: LCCOMB_X45_Y33_N16
\gpmc_driver|ram[13][9]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[13][9]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gpmc_driver|gpmc_data_in\(9),
	combout => \gpmc_driver|ram[13][9]~feeder_combout\);

-- Location: FF_X45_Y33_N17
\gpmc_driver|ram[13][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[13][9]~feeder_combout\,
	ena => \gpmc_driver|Decoder0~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[13][9]~q\);

-- Location: FF_X45_Y31_N3
\gpmc_driver|ram[15][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(9),
	sload => VCC,
	ena => \gpmc_driver|Decoder0~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[15][9]~q\);

-- Location: LCCOMB_X44_Y32_N20
\gpmc_driver|ram[14][9]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[14][9]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gpmc_driver|gpmc_data_in\(9),
	combout => \gpmc_driver|ram[14][9]~feeder_combout\);

-- Location: FF_X44_Y32_N21
\gpmc_driver|ram[14][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[14][9]~feeder_combout\,
	ena => \gpmc_driver|Decoder0~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[14][9]~q\);

-- Location: FF_X44_Y32_N7
\gpmc_driver|ram[12][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(9),
	sload => VCC,
	ena => \gpmc_driver|Decoder0~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[12][9]~q\);

-- Location: LCCOMB_X44_Y32_N6
\gpmc_driver|gpmc_data_out~220\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~220_combout\ = (\gpmc_driver|gpmc_addr_in\(0) & (((\gpmc_driver|gpmc_addr_in\(1))))) # (!\gpmc_driver|gpmc_addr_in\(0) & ((\gpmc_driver|gpmc_addr_in\(1) & (\gpmc_driver|ram[14][9]~q\)) # (!\gpmc_driver|gpmc_addr_in\(1) & 
-- ((\gpmc_driver|ram[12][9]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(0),
	datab => \gpmc_driver|ram[14][9]~q\,
	datac => \gpmc_driver|ram[12][9]~q\,
	datad => \gpmc_driver|gpmc_addr_in\(1),
	combout => \gpmc_driver|gpmc_data_out~220_combout\);

-- Location: LCCOMB_X45_Y31_N2
\gpmc_driver|gpmc_data_out~221\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~221_combout\ = (\gpmc_driver|gpmc_addr_in\(0) & ((\gpmc_driver|gpmc_data_out~220_combout\ & ((\gpmc_driver|ram[15][9]~q\))) # (!\gpmc_driver|gpmc_data_out~220_combout\ & (\gpmc_driver|ram[13][9]~q\)))) # 
-- (!\gpmc_driver|gpmc_addr_in\(0) & (((\gpmc_driver|gpmc_data_out~220_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|ram[13][9]~q\,
	datab => \gpmc_driver|gpmc_addr_in\(0),
	datac => \gpmc_driver|ram[15][9]~q\,
	datad => \gpmc_driver|gpmc_data_out~220_combout\,
	combout => \gpmc_driver|gpmc_data_out~221_combout\);

-- Location: LCCOMB_X48_Y31_N16
\gpmc_driver|ram[3][9]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[3][9]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gpmc_driver|gpmc_data_in\(9),
	combout => \gpmc_driver|ram[3][9]~feeder_combout\);

-- Location: FF_X48_Y31_N17
\gpmc_driver|ram[3][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[3][9]~feeder_combout\,
	ena => \gpmc_driver|Decoder0~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[3][9]~q\);

-- Location: FF_X48_Y31_N3
\gpmc_driver|ram[2][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(9),
	sload => VCC,
	ena => \gpmc_driver|Decoder0~55_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[2][9]~q\);

-- Location: LCCOMB_X48_Y31_N2
\gpmc_driver|gpmc_data_out~216\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~216_combout\ = (\gpmc_driver|gpmc_data_out[0]~48_combout\ & ((\gpmc_driver|ram[3][9]~q\) # ((\gpmc_driver|gpmc_data_out[0]~51_combout\)))) # (!\gpmc_driver|gpmc_data_out[0]~48_combout\ & (((\gpmc_driver|ram[2][9]~q\ & 
-- !\gpmc_driver|gpmc_data_out[0]~51_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|ram[3][9]~q\,
	datab => \gpmc_driver|gpmc_data_out[0]~48_combout\,
	datac => \gpmc_driver|ram[2][9]~q\,
	datad => \gpmc_driver|gpmc_data_out[0]~51_combout\,
	combout => \gpmc_driver|gpmc_data_out~216_combout\);

-- Location: LCCOMB_X45_Y28_N6
\gpmc_driver|ram[9][9]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[9][9]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gpmc_driver|gpmc_data_in\(9),
	combout => \gpmc_driver|ram[9][9]~feeder_combout\);

-- Location: FF_X45_Y28_N7
\gpmc_driver|ram[9][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[9][9]~feeder_combout\,
	ena => \gpmc_driver|Decoder0~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[9][9]~q\);

-- Location: LCCOMB_X46_Y28_N4
\gpmc_driver|ram[10][9]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[10][9]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gpmc_driver|gpmc_data_in\(9),
	combout => \gpmc_driver|ram[10][9]~feeder_combout\);

-- Location: FF_X46_Y28_N5
\gpmc_driver|ram[10][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[10][9]~feeder_combout\,
	ena => \gpmc_driver|Decoder0~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[10][9]~q\);

-- Location: FF_X48_Y28_N5
\gpmc_driver|ram[8][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(9),
	sload => VCC,
	ena => \gpmc_driver|Decoder0~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[8][9]~q\);

-- Location: LCCOMB_X48_Y28_N4
\gpmc_driver|gpmc_data_out~217\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~217_combout\ = (\gpmc_driver|gpmc_addr_in\(0) & (((\gpmc_driver|gpmc_addr_in\(1))))) # (!\gpmc_driver|gpmc_addr_in\(0) & ((\gpmc_driver|gpmc_addr_in\(1) & (\gpmc_driver|ram[10][9]~q\)) # (!\gpmc_driver|gpmc_addr_in\(1) & 
-- ((\gpmc_driver|ram[8][9]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(0),
	datab => \gpmc_driver|ram[10][9]~q\,
	datac => \gpmc_driver|ram[8][9]~q\,
	datad => \gpmc_driver|gpmc_addr_in\(1),
	combout => \gpmc_driver|gpmc_data_out~217_combout\);

-- Location: FF_X48_Y28_N7
\gpmc_driver|ram[11][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(9),
	sload => VCC,
	ena => \gpmc_driver|Decoder0~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[11][9]~q\);

-- Location: LCCOMB_X48_Y28_N6
\gpmc_driver|gpmc_data_out~218\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~218_combout\ = (\gpmc_driver|gpmc_data_out~217_combout\ & (((\gpmc_driver|ram[11][9]~q\) # (!\gpmc_driver|gpmc_addr_in\(0))))) # (!\gpmc_driver|gpmc_data_out~217_combout\ & (\gpmc_driver|ram[9][9]~q\ & 
-- ((\gpmc_driver|gpmc_addr_in\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|ram[9][9]~q\,
	datab => \gpmc_driver|gpmc_data_out~217_combout\,
	datac => \gpmc_driver|ram[11][9]~q\,
	datad => \gpmc_driver|gpmc_addr_in\(0),
	combout => \gpmc_driver|gpmc_data_out~218_combout\);

-- Location: LCCOMB_X46_Y31_N6
\gpmc_driver|ram[7][9]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[7][9]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gpmc_driver|gpmc_data_in\(9),
	combout => \gpmc_driver|ram[7][9]~feeder_combout\);

-- Location: FF_X46_Y31_N7
\gpmc_driver|ram[7][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[7][9]~feeder_combout\,
	ena => \gpmc_driver|Decoder0~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[7][9]~q\);

-- Location: FF_X46_Y31_N25
\gpmc_driver|ram[6][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(9),
	sload => VCC,
	ena => \gpmc_driver|Decoder0~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[6][9]~q\);

-- Location: LCCOMB_X50_Y30_N8
\gpmc_driver|ram[5][9]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[5][9]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gpmc_driver|gpmc_data_in\(9),
	combout => \gpmc_driver|ram[5][9]~feeder_combout\);

-- Location: FF_X50_Y30_N9
\gpmc_driver|ram[5][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[5][9]~feeder_combout\,
	ena => \gpmc_driver|Decoder0~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[5][9]~q\);

-- Location: FF_X46_Y30_N17
\gpmc_driver|ram[4][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(9),
	sload => VCC,
	ena => \gpmc_driver|Decoder0~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[4][9]~q\);

-- Location: LCCOMB_X46_Y30_N16
\gpmc_driver|gpmc_data_out~214\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~214_combout\ = (\gpmc_driver|gpmc_addr_in\(1) & (((\gpmc_driver|gpmc_addr_in\(0))))) # (!\gpmc_driver|gpmc_addr_in\(1) & ((\gpmc_driver|gpmc_addr_in\(0) & (\gpmc_driver|ram[5][9]~q\)) # (!\gpmc_driver|gpmc_addr_in\(0) & 
-- ((\gpmc_driver|ram[4][9]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(1),
	datab => \gpmc_driver|ram[5][9]~q\,
	datac => \gpmc_driver|ram[4][9]~q\,
	datad => \gpmc_driver|gpmc_addr_in\(0),
	combout => \gpmc_driver|gpmc_data_out~214_combout\);

-- Location: LCCOMB_X46_Y31_N24
\gpmc_driver|gpmc_data_out~215\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~215_combout\ = (\gpmc_driver|gpmc_addr_in\(1) & ((\gpmc_driver|gpmc_data_out~214_combout\ & (\gpmc_driver|ram[7][9]~q\)) # (!\gpmc_driver|gpmc_data_out~214_combout\ & ((\gpmc_driver|ram[6][9]~q\))))) # 
-- (!\gpmc_driver|gpmc_addr_in\(1) & (((\gpmc_driver|gpmc_data_out~214_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|ram[7][9]~q\,
	datab => \gpmc_driver|gpmc_addr_in\(1),
	datac => \gpmc_driver|ram[6][9]~q\,
	datad => \gpmc_driver|gpmc_data_out~214_combout\,
	combout => \gpmc_driver|gpmc_data_out~215_combout\);

-- Location: LCCOMB_X48_Y31_N20
\gpmc_driver|gpmc_data_out~219\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~219_combout\ = (\gpmc_driver|gpmc_data_out[0]~51_combout\ & ((\gpmc_driver|gpmc_data_out~216_combout\ & (\gpmc_driver|gpmc_data_out~218_combout\)) # (!\gpmc_driver|gpmc_data_out~216_combout\ & 
-- ((\gpmc_driver|gpmc_data_out~215_combout\))))) # (!\gpmc_driver|gpmc_data_out[0]~51_combout\ & (\gpmc_driver|gpmc_data_out~216_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_data_out[0]~51_combout\,
	datab => \gpmc_driver|gpmc_data_out~216_combout\,
	datac => \gpmc_driver|gpmc_data_out~218_combout\,
	datad => \gpmc_driver|gpmc_data_out~215_combout\,
	combout => \gpmc_driver|gpmc_data_out~219_combout\);

-- Location: LCCOMB_X48_Y31_N28
\gpmc_driver|gpmc_data_out~349\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~349_combout\ = (\gpmc_driver|gpmc_data_out~219_combout\ & ((\gpmc_driver|gpmc_addr_in\(2)) # ((\gpmc_driver|gpmc_addr_in\(3)) # (\gpmc_driver|gpmc_addr_in\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(2),
	datab => \gpmc_driver|gpmc_addr_in\(3),
	datac => \gpmc_driver|gpmc_addr_in\(1),
	datad => \gpmc_driver|gpmc_data_out~219_combout\,
	combout => \gpmc_driver|gpmc_data_out~349_combout\);

-- Location: LCCOMB_X49_Y31_N4
\gpmc_driver|gpmc_data_out[9]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out[9]~9_combout\ = (\gpmc_driver|gpmc_data_out[0]~58_combout\ & (\gpmc_driver|gpmc_data_out~221_combout\)) # (!\gpmc_driver|gpmc_data_out[0]~58_combout\ & ((\gpmc_driver|gpmc_data_out~349_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_data_out~221_combout\,
	datab => \gpmc_driver|gpmc_data_out[0]~58_combout\,
	datad => \gpmc_driver|gpmc_data_out~349_combout\,
	combout => \gpmc_driver|gpmc_data_out[9]~9_combout\);

-- Location: LCCOMB_X53_Y31_N20
\gpmc_driver|ram[25][9]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[25][9]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gpmc_driver|gpmc_data_in\(9),
	combout => \gpmc_driver|ram[25][9]~feeder_combout\);

-- Location: FF_X53_Y31_N21
\gpmc_driver|ram[25][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[25][9]~feeder_combout\,
	ena => \gpmc_driver|Decoder0~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[25][9]~q\);

-- Location: FF_X53_Y31_N31
\gpmc_driver|ram[17][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(9),
	sload => VCC,
	ena => \gpmc_driver|Decoder0~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[17][9]~q\);

-- Location: LCCOMB_X53_Y31_N30
\gpmc_driver|gpmc_data_out~222\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~222_combout\ = (\gpmc_driver|gpmc_addr_in\(3) & ((\gpmc_driver|ram[25][9]~q\) # ((\gpmc_driver|gpmc_addr_in\(2))))) # (!\gpmc_driver|gpmc_addr_in\(3) & (((\gpmc_driver|ram[17][9]~q\ & !\gpmc_driver|gpmc_addr_in\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(3),
	datab => \gpmc_driver|ram[25][9]~q\,
	datac => \gpmc_driver|ram[17][9]~q\,
	datad => \gpmc_driver|gpmc_addr_in\(2),
	combout => \gpmc_driver|gpmc_data_out~222_combout\);

-- Location: LCCOMB_X52_Y31_N4
\gpmc_driver|ram[21][9]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[21][9]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gpmc_driver|gpmc_data_in\(9),
	combout => \gpmc_driver|ram[21][9]~feeder_combout\);

-- Location: FF_X52_Y31_N5
\gpmc_driver|ram[21][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[21][9]~feeder_combout\,
	ena => \gpmc_driver|Decoder0~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[21][9]~q\);

-- Location: FF_X52_Y31_N31
\gpmc_driver|ram[29][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(9),
	sload => VCC,
	ena => \gpmc_driver|Decoder0~47_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[29][9]~q\);

-- Location: LCCOMB_X52_Y31_N30
\gpmc_driver|gpmc_data_out~223\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~223_combout\ = (\gpmc_driver|gpmc_data_out~222_combout\ & (((\gpmc_driver|ram[29][9]~q\) # (!\gpmc_driver|gpmc_addr_in\(2))))) # (!\gpmc_driver|gpmc_data_out~222_combout\ & (\gpmc_driver|ram[21][9]~q\ & 
-- ((\gpmc_driver|gpmc_addr_in\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_data_out~222_combout\,
	datab => \gpmc_driver|ram[21][9]~q\,
	datac => \gpmc_driver|ram[29][9]~q\,
	datad => \gpmc_driver|gpmc_addr_in\(2),
	combout => \gpmc_driver|gpmc_data_out~223_combout\);

-- Location: LCCOMB_X49_Y32_N10
\gpmc_driver|ram[23][9]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[23][9]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gpmc_driver|gpmc_data_in\(9),
	combout => \gpmc_driver|ram[23][9]~feeder_combout\);

-- Location: FF_X49_Y32_N11
\gpmc_driver|ram[23][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[23][9]~feeder_combout\,
	ena => \gpmc_driver|Decoder0~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[23][9]~q\);

-- Location: FF_X49_Y32_N17
\gpmc_driver|ram[31][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(9),
	sload => VCC,
	ena => \gpmc_driver|Decoder0~53_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[31][9]~q\);

-- Location: LCCOMB_X48_Y32_N24
\gpmc_driver|ram[27][9]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[27][9]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gpmc_driver|gpmc_data_in\(9),
	combout => \gpmc_driver|ram[27][9]~feeder_combout\);

-- Location: FF_X48_Y32_N25
\gpmc_driver|ram[27][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[27][9]~feeder_combout\,
	ena => \gpmc_driver|Decoder0~61_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[27][9]~q\);

-- Location: FF_X48_Y32_N15
\gpmc_driver|ram[19][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(9),
	sload => VCC,
	ena => \gpmc_driver|Decoder0~62_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[19][9]~q\);

-- Location: LCCOMB_X48_Y32_N14
\gpmc_driver|gpmc_data_out~229\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~229_combout\ = (\gpmc_driver|gpmc_addr_in\(2) & (((\gpmc_driver|gpmc_addr_in\(3))))) # (!\gpmc_driver|gpmc_addr_in\(2) & ((\gpmc_driver|gpmc_addr_in\(3) & (\gpmc_driver|ram[27][9]~q\)) # (!\gpmc_driver|gpmc_addr_in\(3) & 
-- ((\gpmc_driver|ram[19][9]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|ram[27][9]~q\,
	datab => \gpmc_driver|gpmc_addr_in\(2),
	datac => \gpmc_driver|ram[19][9]~q\,
	datad => \gpmc_driver|gpmc_addr_in\(3),
	combout => \gpmc_driver|gpmc_data_out~229_combout\);

-- Location: LCCOMB_X49_Y32_N16
\gpmc_driver|gpmc_data_out~230\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~230_combout\ = (\gpmc_driver|gpmc_addr_in\(2) & ((\gpmc_driver|gpmc_data_out~229_combout\ & ((\gpmc_driver|ram[31][9]~q\))) # (!\gpmc_driver|gpmc_data_out~229_combout\ & (\gpmc_driver|ram[23][9]~q\)))) # 
-- (!\gpmc_driver|gpmc_addr_in\(2) & (((\gpmc_driver|gpmc_data_out~229_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|ram[23][9]~q\,
	datab => \gpmc_driver|gpmc_addr_in\(2),
	datac => \gpmc_driver|ram[31][9]~q\,
	datad => \gpmc_driver|gpmc_data_out~229_combout\,
	combout => \gpmc_driver|gpmc_data_out~230_combout\);

-- Location: LCCOMB_X50_Y33_N24
\gpmc_driver|ram[26][9]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[26][9]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gpmc_driver|gpmc_data_in\(9),
	combout => \gpmc_driver|ram[26][9]~feeder_combout\);

-- Location: FF_X50_Y33_N25
\gpmc_driver|ram[26][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[26][9]~feeder_combout\,
	ena => \gpmc_driver|Decoder0~57_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[26][9]~q\);

-- Location: FF_X50_Y33_N27
\gpmc_driver|ram[30][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(9),
	sload => VCC,
	ena => \gpmc_driver|Decoder0~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[30][9]~q\);

-- Location: LCCOMB_X49_Y33_N24
\gpmc_driver|ram[22][9]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[22][9]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gpmc_driver|gpmc_data_in\(9),
	combout => \gpmc_driver|ram[22][9]~feeder_combout\);

-- Location: FF_X49_Y33_N25
\gpmc_driver|ram[22][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[22][9]~feeder_combout\,
	ena => \gpmc_driver|Decoder0~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[22][9]~q\);

-- Location: FF_X49_Y33_N19
\gpmc_driver|ram[18][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(9),
	sload => VCC,
	ena => \gpmc_driver|Decoder0~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[18][9]~q\);

-- Location: LCCOMB_X49_Y33_N18
\gpmc_driver|gpmc_data_out~224\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~224_combout\ = (\gpmc_driver|gpmc_addr_in\(3) & (((\gpmc_driver|gpmc_addr_in\(2))))) # (!\gpmc_driver|gpmc_addr_in\(3) & ((\gpmc_driver|gpmc_addr_in\(2) & (\gpmc_driver|ram[22][9]~q\)) # (!\gpmc_driver|gpmc_addr_in\(2) & 
-- ((\gpmc_driver|ram[18][9]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(3),
	datab => \gpmc_driver|ram[22][9]~q\,
	datac => \gpmc_driver|ram[18][9]~q\,
	datad => \gpmc_driver|gpmc_addr_in\(2),
	combout => \gpmc_driver|gpmc_data_out~224_combout\);

-- Location: LCCOMB_X50_Y33_N26
\gpmc_driver|gpmc_data_out~225\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~225_combout\ = (\gpmc_driver|gpmc_addr_in\(3) & ((\gpmc_driver|gpmc_data_out~224_combout\ & ((\gpmc_driver|ram[30][9]~q\))) # (!\gpmc_driver|gpmc_data_out~224_combout\ & (\gpmc_driver|ram[26][9]~q\)))) # 
-- (!\gpmc_driver|gpmc_addr_in\(3) & (((\gpmc_driver|gpmc_data_out~224_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(3),
	datab => \gpmc_driver|ram[26][9]~q\,
	datac => \gpmc_driver|ram[30][9]~q\,
	datad => \gpmc_driver|gpmc_data_out~224_combout\,
	combout => \gpmc_driver|gpmc_data_out~225_combout\);

-- Location: LCCOMB_X49_Y31_N30
\gpmc_driver|ram[24][9]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[24][9]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gpmc_driver|gpmc_data_in\(9),
	combout => \gpmc_driver|ram[24][9]~feeder_combout\);

-- Location: FF_X49_Y31_N31
\gpmc_driver|ram[24][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[24][9]~feeder_combout\,
	ena => \gpmc_driver|Decoder0~59_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[24][9]~q\);

-- Location: FF_X51_Y30_N23
\gpmc_driver|ram[28][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(9),
	sload => VCC,
	ena => \gpmc_driver|Decoder0~51_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[28][9]~q\);

-- Location: LCCOMB_X50_Y30_N2
\gpmc_driver|ram[20][9]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[20][9]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gpmc_driver|gpmc_data_in\(9),
	combout => \gpmc_driver|ram[20][9]~feeder_combout\);

-- Location: FF_X50_Y30_N3
\gpmc_driver|ram[20][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[20][9]~feeder_combout\,
	ena => \gpmc_driver|Decoder0~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[20][9]~q\);

-- Location: FF_X51_Y30_N13
\gpmc_driver|ram[16][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(9),
	sload => VCC,
	ena => \gpmc_driver|Decoder0~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[16][9]~q\);

-- Location: LCCOMB_X51_Y30_N12
\gpmc_driver|gpmc_data_out~226\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~226_combout\ = (\gpmc_driver|gpmc_addr_in\(2) & ((\gpmc_driver|ram[20][9]~q\) # ((\gpmc_driver|gpmc_addr_in\(3))))) # (!\gpmc_driver|gpmc_addr_in\(2) & (((\gpmc_driver|ram[16][9]~q\ & !\gpmc_driver|gpmc_addr_in\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|ram[20][9]~q\,
	datab => \gpmc_driver|gpmc_addr_in\(2),
	datac => \gpmc_driver|ram[16][9]~q\,
	datad => \gpmc_driver|gpmc_addr_in\(3),
	combout => \gpmc_driver|gpmc_data_out~226_combout\);

-- Location: LCCOMB_X51_Y30_N22
\gpmc_driver|gpmc_data_out~227\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~227_combout\ = (\gpmc_driver|gpmc_addr_in\(3) & ((\gpmc_driver|gpmc_data_out~226_combout\ & ((\gpmc_driver|ram[28][9]~q\))) # (!\gpmc_driver|gpmc_data_out~226_combout\ & (\gpmc_driver|ram[24][9]~q\)))) # 
-- (!\gpmc_driver|gpmc_addr_in\(3) & (((\gpmc_driver|gpmc_data_out~226_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|ram[24][9]~q\,
	datab => \gpmc_driver|gpmc_addr_in\(3),
	datac => \gpmc_driver|ram[28][9]~q\,
	datad => \gpmc_driver|gpmc_data_out~226_combout\,
	combout => \gpmc_driver|gpmc_data_out~227_combout\);

-- Location: LCCOMB_X49_Y31_N12
\gpmc_driver|gpmc_data_out~228\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~228_combout\ = (\gpmc_driver|gpmc_addr_in\(1) & ((\gpmc_driver|gpmc_addr_in\(0)) # ((\gpmc_driver|gpmc_data_out~225_combout\)))) # (!\gpmc_driver|gpmc_addr_in\(1) & (!\gpmc_driver|gpmc_addr_in\(0) & 
-- ((\gpmc_driver|gpmc_data_out~227_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(1),
	datab => \gpmc_driver|gpmc_addr_in\(0),
	datac => \gpmc_driver|gpmc_data_out~225_combout\,
	datad => \gpmc_driver|gpmc_data_out~227_combout\,
	combout => \gpmc_driver|gpmc_data_out~228_combout\);

-- Location: LCCOMB_X49_Y31_N22
\gpmc_driver|gpmc_data_out~231\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~231_combout\ = (\gpmc_driver|gpmc_addr_in\(0) & ((\gpmc_driver|gpmc_data_out~228_combout\ & ((\gpmc_driver|gpmc_data_out~230_combout\))) # (!\gpmc_driver|gpmc_data_out~228_combout\ & (\gpmc_driver|gpmc_data_out~223_combout\)))) 
-- # (!\gpmc_driver|gpmc_addr_in\(0) & (((\gpmc_driver|gpmc_data_out~228_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_data_out~223_combout\,
	datab => \gpmc_driver|gpmc_addr_in\(0),
	datac => \gpmc_driver|gpmc_data_out~230_combout\,
	datad => \gpmc_driver|gpmc_data_out~228_combout\,
	combout => \gpmc_driver|gpmc_data_out~231_combout\);

-- Location: FF_X49_Y31_N5
\gpmc_driver|gpmc_data_out[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|gpmc_data_out[9]~9_combout\,
	asdata => \gpmc_driver|gpmc_data_out~231_combout\,
	sclr => \gpmc_driver|LessThan0~1_combout\,
	sload => \gpmc_driver|gpmc_addr_in\(4),
	ena => \gpmc_driver|gpmc_data_out[0]~69_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|gpmc_data_out\(9));

-- Location: IOIBUF_X45_Y43_N8
\GPMC_DATA[10]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPMC_DATA(10),
	o => \GPMC_DATA[10]~input_o\);

-- Location: FF_X45_Y33_N7
\gpmc_driver|gpmc_data_in[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \GPMC_DATA[10]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|gpmc_data_in\(10));

-- Location: LCCOMB_X45_Y29_N20
\gpmc_driver|ram[14][10]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[14][10]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(10)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gpmc_driver|gpmc_data_in\(10),
	combout => \gpmc_driver|ram[14][10]~feeder_combout\);

-- Location: FF_X45_Y29_N21
\gpmc_driver|ram[14][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[14][10]~feeder_combout\,
	ena => \gpmc_driver|Decoder0~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[14][10]~q\);

-- Location: FF_X45_Y29_N15
\gpmc_driver|ram[15][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(10),
	sload => VCC,
	ena => \gpmc_driver|Decoder0~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[15][10]~q\);

-- Location: LCCOMB_X44_Y29_N24
\gpmc_driver|ram[13][10]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[13][10]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(10)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gpmc_driver|gpmc_data_in\(10),
	combout => \gpmc_driver|ram[13][10]~feeder_combout\);

-- Location: FF_X44_Y29_N25
\gpmc_driver|ram[13][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[13][10]~feeder_combout\,
	ena => \gpmc_driver|Decoder0~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[13][10]~q\);

-- Location: FF_X44_Y29_N31
\gpmc_driver|ram[12][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(10),
	sload => VCC,
	ena => \gpmc_driver|Decoder0~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[12][10]~q\);

-- Location: LCCOMB_X44_Y29_N30
\gpmc_driver|gpmc_data_out~238\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~238_combout\ = (\gpmc_driver|gpmc_addr_in\(1) & (((\gpmc_driver|gpmc_addr_in\(0))))) # (!\gpmc_driver|gpmc_addr_in\(1) & ((\gpmc_driver|gpmc_addr_in\(0) & (\gpmc_driver|ram[13][10]~q\)) # (!\gpmc_driver|gpmc_addr_in\(0) & 
-- ((\gpmc_driver|ram[12][10]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(1),
	datab => \gpmc_driver|ram[13][10]~q\,
	datac => \gpmc_driver|ram[12][10]~q\,
	datad => \gpmc_driver|gpmc_addr_in\(0),
	combout => \gpmc_driver|gpmc_data_out~238_combout\);

-- Location: LCCOMB_X45_Y29_N14
\gpmc_driver|gpmc_data_out~239\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~239_combout\ = (\gpmc_driver|gpmc_addr_in\(1) & ((\gpmc_driver|gpmc_data_out~238_combout\ & ((\gpmc_driver|ram[15][10]~q\))) # (!\gpmc_driver|gpmc_data_out~238_combout\ & (\gpmc_driver|ram[14][10]~q\)))) # 
-- (!\gpmc_driver|gpmc_addr_in\(1) & (((\gpmc_driver|gpmc_data_out~238_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(1),
	datab => \gpmc_driver|ram[14][10]~q\,
	datac => \gpmc_driver|ram[15][10]~q\,
	datad => \gpmc_driver|gpmc_data_out~238_combout\,
	combout => \gpmc_driver|gpmc_data_out~239_combout\);

-- Location: LCCOMB_X48_Y30_N0
\gpmc_driver|ram[3][10]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[3][10]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(10)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gpmc_driver|gpmc_data_in\(10),
	combout => \gpmc_driver|ram[3][10]~feeder_combout\);

-- Location: FF_X48_Y30_N1
\gpmc_driver|ram[3][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[3][10]~feeder_combout\,
	ena => \gpmc_driver|Decoder0~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[3][10]~q\);

-- Location: FF_X48_Y30_N3
\gpmc_driver|ram[2][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(10),
	sload => VCC,
	ena => \gpmc_driver|Decoder0~55_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[2][10]~q\);

-- Location: LCCOMB_X48_Y30_N2
\gpmc_driver|gpmc_data_out~236\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~236_combout\ = (\gpmc_driver|gpmc_data_out[0]~48_combout\ & (\gpmc_driver|ram[3][10]~q\)) # (!\gpmc_driver|gpmc_data_out[0]~48_combout\ & ((\gpmc_driver|ram[2][10]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \gpmc_driver|ram[3][10]~q\,
	datac => \gpmc_driver|ram[2][10]~q\,
	datad => \gpmc_driver|gpmc_data_out[0]~48_combout\,
	combout => \gpmc_driver|gpmc_data_out~236_combout\);

-- Location: LCCOMB_X46_Y32_N16
\gpmc_driver|gpmc_data_out~350\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~350_combout\ = (\gpmc_driver|gpmc_addr_in\(1) & (!\gpmc_driver|gpmc_addr_in\(3) & (!\gpmc_driver|gpmc_addr_in\(2) & \gpmc_driver|gpmc_data_out~236_combout\))) # (!\gpmc_driver|gpmc_addr_in\(1) & ((\gpmc_driver|gpmc_addr_in\(3)) 
-- # ((\gpmc_driver|gpmc_addr_in\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(1),
	datab => \gpmc_driver|gpmc_addr_in\(3),
	datac => \gpmc_driver|gpmc_addr_in\(2),
	datad => \gpmc_driver|gpmc_data_out~236_combout\,
	combout => \gpmc_driver|gpmc_data_out~350_combout\);

-- Location: LCCOMB_X46_Y30_N18
\gpmc_driver|ram[8][10]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[8][10]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(10)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gpmc_driver|gpmc_data_in\(10),
	combout => \gpmc_driver|ram[8][10]~feeder_combout\);

-- Location: FF_X46_Y30_N19
\gpmc_driver|ram[8][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[8][10]~feeder_combout\,
	ena => \gpmc_driver|Decoder0~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[8][10]~q\);

-- Location: FF_X46_Y30_N5
\gpmc_driver|ram[4][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(10),
	sload => VCC,
	ena => \gpmc_driver|Decoder0~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[4][10]~q\);

-- Location: FF_X49_Y30_N23
\gpmc_driver|ram[5][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(10),
	sload => VCC,
	ena => \gpmc_driver|Decoder0~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[5][10]~q\);

-- Location: LCCOMB_X45_Y28_N24
\gpmc_driver|ram[9][10]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[9][10]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(10)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gpmc_driver|gpmc_data_in\(10),
	combout => \gpmc_driver|ram[9][10]~feeder_combout\);

-- Location: FF_X45_Y28_N25
\gpmc_driver|ram[9][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[9][10]~feeder_combout\,
	ena => \gpmc_driver|Decoder0~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[9][10]~q\);

-- Location: LCCOMB_X46_Y30_N6
\gpmc_driver|gpmc_data_out~234\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~234_combout\ = (\gpmc_driver|gpmc_addr_in\(0) & ((\gpmc_driver|gpmc_data_out[0]~48_combout\ & ((\gpmc_driver|ram[9][10]~q\))) # (!\gpmc_driver|gpmc_data_out[0]~48_combout\ & (\gpmc_driver|ram[5][10]~q\)))) # 
-- (!\gpmc_driver|gpmc_addr_in\(0) & (((\gpmc_driver|gpmc_data_out[0]~48_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(0),
	datab => \gpmc_driver|ram[5][10]~q\,
	datac => \gpmc_driver|ram[9][10]~q\,
	datad => \gpmc_driver|gpmc_data_out[0]~48_combout\,
	combout => \gpmc_driver|gpmc_data_out~234_combout\);

-- Location: LCCOMB_X46_Y30_N4
\gpmc_driver|gpmc_data_out~235\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~235_combout\ = (\gpmc_driver|gpmc_addr_in\(0) & (((\gpmc_driver|gpmc_data_out~234_combout\)))) # (!\gpmc_driver|gpmc_addr_in\(0) & ((\gpmc_driver|gpmc_data_out~234_combout\ & (\gpmc_driver|ram[8][10]~q\)) # 
-- (!\gpmc_driver|gpmc_data_out~234_combout\ & ((\gpmc_driver|ram[4][10]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(0),
	datab => \gpmc_driver|ram[8][10]~q\,
	datac => \gpmc_driver|ram[4][10]~q\,
	datad => \gpmc_driver|gpmc_data_out~234_combout\,
	combout => \gpmc_driver|gpmc_data_out~235_combout\);

-- Location: LCCOMB_X46_Y31_N20
\gpmc_driver|ram[7][10]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[7][10]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(10)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gpmc_driver|gpmc_data_in\(10),
	combout => \gpmc_driver|ram[7][10]~feeder_combout\);

-- Location: FF_X46_Y31_N21
\gpmc_driver|ram[7][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[7][10]~feeder_combout\,
	ena => \gpmc_driver|Decoder0~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[7][10]~q\);

-- Location: FF_X46_Y31_N27
\gpmc_driver|ram[6][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(10),
	sload => VCC,
	ena => \gpmc_driver|Decoder0~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[6][10]~q\);

-- Location: LCCOMB_X46_Y28_N26
\gpmc_driver|ram[10][10]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[10][10]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(10)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gpmc_driver|gpmc_data_in\(10),
	combout => \gpmc_driver|ram[10][10]~feeder_combout\);

-- Location: FF_X46_Y28_N27
\gpmc_driver|ram[10][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[10][10]~feeder_combout\,
	ena => \gpmc_driver|Decoder0~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[10][10]~q\);

-- Location: FF_X46_Y28_N13
\gpmc_driver|ram[11][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(10),
	sload => VCC,
	ena => \gpmc_driver|Decoder0~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[11][10]~q\);

-- Location: LCCOMB_X46_Y28_N12
\gpmc_driver|gpmc_data_out~232\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~232_combout\ = (\gpmc_driver|gpmc_addr_in\(0) & (((\gpmc_driver|ram[11][10]~q\) # (!\gpmc_driver|gpmc_data_out[0]~48_combout\)))) # (!\gpmc_driver|gpmc_addr_in\(0) & (\gpmc_driver|ram[10][10]~q\ & 
-- ((\gpmc_driver|gpmc_data_out[0]~48_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|ram[10][10]~q\,
	datab => \gpmc_driver|gpmc_addr_in\(0),
	datac => \gpmc_driver|ram[11][10]~q\,
	datad => \gpmc_driver|gpmc_data_out[0]~48_combout\,
	combout => \gpmc_driver|gpmc_data_out~232_combout\);

-- Location: LCCOMB_X46_Y31_N26
\gpmc_driver|gpmc_data_out~233\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~233_combout\ = (\gpmc_driver|gpmc_data_out[0]~48_combout\ & (((\gpmc_driver|gpmc_data_out~232_combout\)))) # (!\gpmc_driver|gpmc_data_out[0]~48_combout\ & ((\gpmc_driver|gpmc_data_out~232_combout\ & (\gpmc_driver|ram[7][10]~q\)) 
-- # (!\gpmc_driver|gpmc_data_out~232_combout\ & ((\gpmc_driver|ram[6][10]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_data_out[0]~48_combout\,
	datab => \gpmc_driver|ram[7][10]~q\,
	datac => \gpmc_driver|ram[6][10]~q\,
	datad => \gpmc_driver|gpmc_data_out~232_combout\,
	combout => \gpmc_driver|gpmc_data_out~233_combout\);

-- Location: LCCOMB_X46_Y32_N6
\gpmc_driver|gpmc_data_out~237\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~237_combout\ = (\gpmc_driver|gpmc_data_out[0]~51_combout\ & ((\gpmc_driver|gpmc_data_out~350_combout\ & (\gpmc_driver|gpmc_data_out~235_combout\)) # (!\gpmc_driver|gpmc_data_out~350_combout\ & 
-- ((\gpmc_driver|gpmc_data_out~233_combout\))))) # (!\gpmc_driver|gpmc_data_out[0]~51_combout\ & (\gpmc_driver|gpmc_data_out~350_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_data_out[0]~51_combout\,
	datab => \gpmc_driver|gpmc_data_out~350_combout\,
	datac => \gpmc_driver|gpmc_data_out~235_combout\,
	datad => \gpmc_driver|gpmc_data_out~233_combout\,
	combout => \gpmc_driver|gpmc_data_out~237_combout\);

-- Location: LCCOMB_X46_Y32_N20
\gpmc_driver|gpmc_data_out[10]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out[10]~10_combout\ = (\gpmc_driver|gpmc_data_out[0]~58_combout\ & (\gpmc_driver|gpmc_data_out~239_combout\)) # (!\gpmc_driver|gpmc_data_out[0]~58_combout\ & ((\gpmc_driver|gpmc_data_out~237_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_data_out~239_combout\,
	datab => \gpmc_driver|gpmc_data_out[0]~58_combout\,
	datad => \gpmc_driver|gpmc_data_out~237_combout\,
	combout => \gpmc_driver|gpmc_data_out[10]~10_combout\);

-- Location: LCCOMB_X49_Y32_N26
\gpmc_driver|ram[23][10]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[23][10]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(10)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gpmc_driver|gpmc_data_in\(10),
	combout => \gpmc_driver|ram[23][10]~feeder_combout\);

-- Location: FF_X49_Y32_N27
\gpmc_driver|ram[23][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[23][10]~feeder_combout\,
	ena => \gpmc_driver|Decoder0~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[23][10]~q\);

-- Location: FF_X49_Y32_N5
\gpmc_driver|ram[31][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(10),
	sload => VCC,
	ena => \gpmc_driver|Decoder0~53_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[31][10]~q\);

-- Location: LCCOMB_X48_Y32_N16
\gpmc_driver|ram[27][10]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[27][10]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(10)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gpmc_driver|gpmc_data_in\(10),
	combout => \gpmc_driver|ram[27][10]~feeder_combout\);

-- Location: FF_X48_Y32_N17
\gpmc_driver|ram[27][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[27][10]~feeder_combout\,
	ena => \gpmc_driver|Decoder0~61_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[27][10]~q\);

-- Location: FF_X48_Y32_N23
\gpmc_driver|ram[19][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(10),
	sload => VCC,
	ena => \gpmc_driver|Decoder0~62_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[19][10]~q\);

-- Location: LCCOMB_X48_Y32_N22
\gpmc_driver|gpmc_data_out~247\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~247_combout\ = (\gpmc_driver|gpmc_addr_in\(2) & (((\gpmc_driver|gpmc_addr_in\(3))))) # (!\gpmc_driver|gpmc_addr_in\(2) & ((\gpmc_driver|gpmc_addr_in\(3) & (\gpmc_driver|ram[27][10]~q\)) # (!\gpmc_driver|gpmc_addr_in\(3) & 
-- ((\gpmc_driver|ram[19][10]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|ram[27][10]~q\,
	datab => \gpmc_driver|gpmc_addr_in\(2),
	datac => \gpmc_driver|ram[19][10]~q\,
	datad => \gpmc_driver|gpmc_addr_in\(3),
	combout => \gpmc_driver|gpmc_data_out~247_combout\);

-- Location: LCCOMB_X49_Y32_N4
\gpmc_driver|gpmc_data_out~248\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~248_combout\ = (\gpmc_driver|gpmc_addr_in\(2) & ((\gpmc_driver|gpmc_data_out~247_combout\ & ((\gpmc_driver|ram[31][10]~q\))) # (!\gpmc_driver|gpmc_data_out~247_combout\ & (\gpmc_driver|ram[23][10]~q\)))) # 
-- (!\gpmc_driver|gpmc_addr_in\(2) & (((\gpmc_driver|gpmc_data_out~247_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|ram[23][10]~q\,
	datab => \gpmc_driver|gpmc_addr_in\(2),
	datac => \gpmc_driver|ram[31][10]~q\,
	datad => \gpmc_driver|gpmc_data_out~247_combout\,
	combout => \gpmc_driver|gpmc_data_out~248_combout\);

-- Location: LCCOMB_X49_Y29_N8
\gpmc_driver|ram[26][10]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[26][10]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(10)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gpmc_driver|gpmc_data_in\(10),
	combout => \gpmc_driver|ram[26][10]~feeder_combout\);

-- Location: FF_X49_Y29_N9
\gpmc_driver|ram[26][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[26][10]~feeder_combout\,
	ena => \gpmc_driver|Decoder0~57_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[26][10]~q\);

-- Location: FF_X49_Y29_N23
\gpmc_driver|ram[30][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(10),
	sload => VCC,
	ena => \gpmc_driver|Decoder0~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[30][10]~q\);

-- Location: LCCOMB_X48_Y29_N16
\gpmc_driver|ram[22][10]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[22][10]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(10)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gpmc_driver|gpmc_data_in\(10),
	combout => \gpmc_driver|ram[22][10]~feeder_combout\);

-- Location: FF_X48_Y29_N17
\gpmc_driver|ram[22][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[22][10]~feeder_combout\,
	ena => \gpmc_driver|Decoder0~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[22][10]~q\);

-- Location: FF_X48_Y29_N15
\gpmc_driver|ram[18][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(10),
	sload => VCC,
	ena => \gpmc_driver|Decoder0~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[18][10]~q\);

-- Location: LCCOMB_X48_Y29_N14
\gpmc_driver|gpmc_data_out~240\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~240_combout\ = (\gpmc_driver|gpmc_addr_in\(2) & ((\gpmc_driver|ram[22][10]~q\) # ((\gpmc_driver|gpmc_addr_in\(3))))) # (!\gpmc_driver|gpmc_addr_in\(2) & (((\gpmc_driver|ram[18][10]~q\ & !\gpmc_driver|gpmc_addr_in\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(2),
	datab => \gpmc_driver|ram[22][10]~q\,
	datac => \gpmc_driver|ram[18][10]~q\,
	datad => \gpmc_driver|gpmc_addr_in\(3),
	combout => \gpmc_driver|gpmc_data_out~240_combout\);

-- Location: LCCOMB_X49_Y29_N22
\gpmc_driver|gpmc_data_out~241\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~241_combout\ = (\gpmc_driver|gpmc_addr_in\(3) & ((\gpmc_driver|gpmc_data_out~240_combout\ & ((\gpmc_driver|ram[30][10]~q\))) # (!\gpmc_driver|gpmc_data_out~240_combout\ & (\gpmc_driver|ram[26][10]~q\)))) # 
-- (!\gpmc_driver|gpmc_addr_in\(3) & (((\gpmc_driver|gpmc_data_out~240_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|ram[26][10]~q\,
	datab => \gpmc_driver|gpmc_addr_in\(3),
	datac => \gpmc_driver|ram[30][10]~q\,
	datad => \gpmc_driver|gpmc_data_out~240_combout\,
	combout => \gpmc_driver|gpmc_data_out~241_combout\);

-- Location: LCCOMB_X44_Y31_N16
\gpmc_driver|ram[24][10]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[24][10]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(10)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gpmc_driver|gpmc_data_in\(10),
	combout => \gpmc_driver|ram[24][10]~feeder_combout\);

-- Location: FF_X44_Y31_N17
\gpmc_driver|ram[24][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[24][10]~feeder_combout\,
	ena => \gpmc_driver|Decoder0~59_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[24][10]~q\);

-- Location: FF_X45_Y31_N1
\gpmc_driver|ram[28][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(10),
	sload => VCC,
	ena => \gpmc_driver|Decoder0~51_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[28][10]~q\);

-- Location: LCCOMB_X44_Y30_N28
\gpmc_driver|ram[20][10]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[20][10]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(10)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gpmc_driver|gpmc_data_in\(10),
	combout => \gpmc_driver|ram[20][10]~feeder_combout\);

-- Location: FF_X44_Y30_N29
\gpmc_driver|ram[20][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[20][10]~feeder_combout\,
	ena => \gpmc_driver|Decoder0~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[20][10]~q\);

-- Location: FF_X44_Y30_N31
\gpmc_driver|ram[16][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(10),
	sload => VCC,
	ena => \gpmc_driver|Decoder0~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[16][10]~q\);

-- Location: LCCOMB_X44_Y30_N30
\gpmc_driver|gpmc_data_out~244\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~244_combout\ = (\gpmc_driver|gpmc_addr_in\(3) & (((\gpmc_driver|gpmc_addr_in\(2))))) # (!\gpmc_driver|gpmc_addr_in\(3) & ((\gpmc_driver|gpmc_addr_in\(2) & (\gpmc_driver|ram[20][10]~q\)) # (!\gpmc_driver|gpmc_addr_in\(2) & 
-- ((\gpmc_driver|ram[16][10]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|ram[20][10]~q\,
	datab => \gpmc_driver|gpmc_addr_in\(3),
	datac => \gpmc_driver|ram[16][10]~q\,
	datad => \gpmc_driver|gpmc_addr_in\(2),
	combout => \gpmc_driver|gpmc_data_out~244_combout\);

-- Location: LCCOMB_X45_Y31_N0
\gpmc_driver|gpmc_data_out~245\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~245_combout\ = (\gpmc_driver|gpmc_addr_in\(3) & ((\gpmc_driver|gpmc_data_out~244_combout\ & ((\gpmc_driver|ram[28][10]~q\))) # (!\gpmc_driver|gpmc_data_out~244_combout\ & (\gpmc_driver|ram[24][10]~q\)))) # 
-- (!\gpmc_driver|gpmc_addr_in\(3) & (((\gpmc_driver|gpmc_data_out~244_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|ram[24][10]~q\,
	datab => \gpmc_driver|gpmc_addr_in\(3),
	datac => \gpmc_driver|ram[28][10]~q\,
	datad => \gpmc_driver|gpmc_data_out~244_combout\,
	combout => \gpmc_driver|gpmc_data_out~245_combout\);

-- Location: LCCOMB_X52_Y30_N20
\gpmc_driver|ram[21][10]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[21][10]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(10)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gpmc_driver|gpmc_data_in\(10),
	combout => \gpmc_driver|ram[21][10]~feeder_combout\);

-- Location: FF_X52_Y30_N21
\gpmc_driver|ram[21][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[21][10]~feeder_combout\,
	ena => \gpmc_driver|Decoder0~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[21][10]~q\);

-- Location: FF_X52_Y30_N23
\gpmc_driver|ram[29][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(10),
	sload => VCC,
	ena => \gpmc_driver|Decoder0~47_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[29][10]~q\);

-- Location: LCCOMB_X53_Y30_N24
\gpmc_driver|ram[25][10]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[25][10]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(10)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gpmc_driver|gpmc_data_in\(10),
	combout => \gpmc_driver|ram[25][10]~feeder_combout\);

-- Location: FF_X53_Y30_N25
\gpmc_driver|ram[25][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[25][10]~feeder_combout\,
	ena => \gpmc_driver|Decoder0~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[25][10]~q\);

-- Location: FF_X53_Y30_N27
\gpmc_driver|ram[17][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(10),
	sload => VCC,
	ena => \gpmc_driver|Decoder0~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[17][10]~q\);

-- Location: LCCOMB_X53_Y30_N26
\gpmc_driver|gpmc_data_out~242\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~242_combout\ = (\gpmc_driver|gpmc_addr_in\(3) & ((\gpmc_driver|ram[25][10]~q\) # ((\gpmc_driver|gpmc_addr_in\(2))))) # (!\gpmc_driver|gpmc_addr_in\(3) & (((\gpmc_driver|ram[17][10]~q\ & !\gpmc_driver|gpmc_addr_in\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|ram[25][10]~q\,
	datab => \gpmc_driver|gpmc_addr_in\(3),
	datac => \gpmc_driver|ram[17][10]~q\,
	datad => \gpmc_driver|gpmc_addr_in\(2),
	combout => \gpmc_driver|gpmc_data_out~242_combout\);

-- Location: LCCOMB_X52_Y30_N22
\gpmc_driver|gpmc_data_out~243\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~243_combout\ = (\gpmc_driver|gpmc_addr_in\(2) & ((\gpmc_driver|gpmc_data_out~242_combout\ & ((\gpmc_driver|ram[29][10]~q\))) # (!\gpmc_driver|gpmc_data_out~242_combout\ & (\gpmc_driver|ram[21][10]~q\)))) # 
-- (!\gpmc_driver|gpmc_addr_in\(2) & (((\gpmc_driver|gpmc_data_out~242_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(2),
	datab => \gpmc_driver|ram[21][10]~q\,
	datac => \gpmc_driver|ram[29][10]~q\,
	datad => \gpmc_driver|gpmc_data_out~242_combout\,
	combout => \gpmc_driver|gpmc_data_out~243_combout\);

-- Location: LCCOMB_X46_Y32_N24
\gpmc_driver|gpmc_data_out~246\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~246_combout\ = (\gpmc_driver|gpmc_addr_in\(1) & (\gpmc_driver|gpmc_addr_in\(0))) # (!\gpmc_driver|gpmc_addr_in\(1) & ((\gpmc_driver|gpmc_addr_in\(0) & ((\gpmc_driver|gpmc_data_out~243_combout\))) # 
-- (!\gpmc_driver|gpmc_addr_in\(0) & (\gpmc_driver|gpmc_data_out~245_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(1),
	datab => \gpmc_driver|gpmc_addr_in\(0),
	datac => \gpmc_driver|gpmc_data_out~245_combout\,
	datad => \gpmc_driver|gpmc_data_out~243_combout\,
	combout => \gpmc_driver|gpmc_data_out~246_combout\);

-- Location: LCCOMB_X46_Y32_N26
\gpmc_driver|gpmc_data_out~249\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~249_combout\ = (\gpmc_driver|gpmc_addr_in\(1) & ((\gpmc_driver|gpmc_data_out~246_combout\ & (\gpmc_driver|gpmc_data_out~248_combout\)) # (!\gpmc_driver|gpmc_data_out~246_combout\ & ((\gpmc_driver|gpmc_data_out~241_combout\))))) 
-- # (!\gpmc_driver|gpmc_addr_in\(1) & (((\gpmc_driver|gpmc_data_out~246_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(1),
	datab => \gpmc_driver|gpmc_data_out~248_combout\,
	datac => \gpmc_driver|gpmc_data_out~241_combout\,
	datad => \gpmc_driver|gpmc_data_out~246_combout\,
	combout => \gpmc_driver|gpmc_data_out~249_combout\);

-- Location: FF_X46_Y32_N21
\gpmc_driver|gpmc_data_out[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|gpmc_data_out[10]~10_combout\,
	asdata => \gpmc_driver|gpmc_data_out~249_combout\,
	sclr => \gpmc_driver|LessThan0~1_combout\,
	sload => \gpmc_driver|gpmc_addr_in\(4),
	ena => \gpmc_driver|gpmc_data_out[0]~69_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|gpmc_data_out\(10));

-- Location: IOIBUF_X67_Y28_N22
\GPMC_DATA[11]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPMC_DATA(11),
	o => \GPMC_DATA[11]~input_o\);

-- Location: LCCOMB_X46_Y32_N14
\gpmc_driver|gpmc_data_in[11]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_in[11]~feeder_combout\ = \GPMC_DATA[11]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \GPMC_DATA[11]~input_o\,
	combout => \gpmc_driver|gpmc_data_in[11]~feeder_combout\);

-- Location: FF_X46_Y32_N15
\gpmc_driver|gpmc_data_in[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|gpmc_data_in[11]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|gpmc_data_in\(11));

-- Location: LCCOMB_X43_Y32_N2
\gpmc_driver|ram[13][11]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[13][11]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(11)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gpmc_driver|gpmc_data_in\(11),
	combout => \gpmc_driver|ram[13][11]~feeder_combout\);

-- Location: FF_X43_Y32_N3
\gpmc_driver|ram[13][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[13][11]~feeder_combout\,
	ena => \gpmc_driver|Decoder0~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[13][11]~q\);

-- Location: FF_X43_Y32_N25
\gpmc_driver|ram[15][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(11),
	sload => VCC,
	ena => \gpmc_driver|Decoder0~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[15][11]~q\);

-- Location: LCCOMB_X44_Y32_N16
\gpmc_driver|ram[14][11]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[14][11]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(11)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gpmc_driver|gpmc_data_in\(11),
	combout => \gpmc_driver|ram[14][11]~feeder_combout\);

-- Location: FF_X44_Y32_N17
\gpmc_driver|ram[14][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[14][11]~feeder_combout\,
	ena => \gpmc_driver|Decoder0~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[14][11]~q\);

-- Location: FF_X44_Y32_N27
\gpmc_driver|ram[12][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(11),
	sload => VCC,
	ena => \gpmc_driver|Decoder0~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[12][11]~q\);

-- Location: LCCOMB_X44_Y32_N26
\gpmc_driver|gpmc_data_out~256\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~256_combout\ = (\gpmc_driver|gpmc_addr_in\(0) & (((\gpmc_driver|gpmc_addr_in\(1))))) # (!\gpmc_driver|gpmc_addr_in\(0) & ((\gpmc_driver|gpmc_addr_in\(1) & (\gpmc_driver|ram[14][11]~q\)) # (!\gpmc_driver|gpmc_addr_in\(1) & 
-- ((\gpmc_driver|ram[12][11]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(0),
	datab => \gpmc_driver|ram[14][11]~q\,
	datac => \gpmc_driver|ram[12][11]~q\,
	datad => \gpmc_driver|gpmc_addr_in\(1),
	combout => \gpmc_driver|gpmc_data_out~256_combout\);

-- Location: LCCOMB_X43_Y32_N24
\gpmc_driver|gpmc_data_out~257\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~257_combout\ = (\gpmc_driver|gpmc_addr_in\(0) & ((\gpmc_driver|gpmc_data_out~256_combout\ & ((\gpmc_driver|ram[15][11]~q\))) # (!\gpmc_driver|gpmc_data_out~256_combout\ & (\gpmc_driver|ram[13][11]~q\)))) # 
-- (!\gpmc_driver|gpmc_addr_in\(0) & (((\gpmc_driver|gpmc_data_out~256_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(0),
	datab => \gpmc_driver|ram[13][11]~q\,
	datac => \gpmc_driver|ram[15][11]~q\,
	datad => \gpmc_driver|gpmc_data_out~256_combout\,
	combout => \gpmc_driver|gpmc_data_out~257_combout\);

-- Location: LCCOMB_X48_Y31_N30
\gpmc_driver|ram[3][11]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[3][11]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(11)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gpmc_driver|gpmc_data_in\(11),
	combout => \gpmc_driver|ram[3][11]~feeder_combout\);

-- Location: FF_X48_Y31_N31
\gpmc_driver|ram[3][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[3][11]~feeder_combout\,
	ena => \gpmc_driver|Decoder0~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[3][11]~q\);

-- Location: FF_X48_Y31_N9
\gpmc_driver|ram[2][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(11),
	sload => VCC,
	ena => \gpmc_driver|Decoder0~55_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[2][11]~q\);

-- Location: LCCOMB_X48_Y31_N8
\gpmc_driver|gpmc_data_out~252\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~252_combout\ = (\gpmc_driver|gpmc_data_out[0]~48_combout\ & ((\gpmc_driver|ram[3][11]~q\) # ((\gpmc_driver|gpmc_data_out[0]~51_combout\)))) # (!\gpmc_driver|gpmc_data_out[0]~48_combout\ & (((\gpmc_driver|ram[2][11]~q\ & 
-- !\gpmc_driver|gpmc_data_out[0]~51_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|ram[3][11]~q\,
	datab => \gpmc_driver|gpmc_data_out[0]~48_combout\,
	datac => \gpmc_driver|ram[2][11]~q\,
	datad => \gpmc_driver|gpmc_data_out[0]~51_combout\,
	combout => \gpmc_driver|gpmc_data_out~252_combout\);

-- Location: LCCOMB_X46_Y31_N22
\gpmc_driver|ram[7][11]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[7][11]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(11)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gpmc_driver|gpmc_data_in\(11),
	combout => \gpmc_driver|ram[7][11]~feeder_combout\);

-- Location: FF_X46_Y31_N23
\gpmc_driver|ram[7][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[7][11]~feeder_combout\,
	ena => \gpmc_driver|Decoder0~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[7][11]~q\);

-- Location: FF_X46_Y31_N29
\gpmc_driver|ram[6][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(11),
	sload => VCC,
	ena => \gpmc_driver|Decoder0~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[6][11]~q\);

-- Location: FF_X49_Y30_N5
\gpmc_driver|ram[5][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(11),
	sload => VCC,
	ena => \gpmc_driver|Decoder0~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[5][11]~q\);

-- Location: FF_X46_Y30_N1
\gpmc_driver|ram[4][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(11),
	sload => VCC,
	ena => \gpmc_driver|Decoder0~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[4][11]~q\);

-- Location: LCCOMB_X46_Y30_N0
\gpmc_driver|gpmc_data_out~250\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~250_combout\ = (\gpmc_driver|gpmc_addr_in\(1) & (((\gpmc_driver|gpmc_addr_in\(0))))) # (!\gpmc_driver|gpmc_addr_in\(1) & ((\gpmc_driver|gpmc_addr_in\(0) & (\gpmc_driver|ram[5][11]~q\)) # (!\gpmc_driver|gpmc_addr_in\(0) & 
-- ((\gpmc_driver|ram[4][11]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(1),
	datab => \gpmc_driver|ram[5][11]~q\,
	datac => \gpmc_driver|ram[4][11]~q\,
	datad => \gpmc_driver|gpmc_addr_in\(0),
	combout => \gpmc_driver|gpmc_data_out~250_combout\);

-- Location: LCCOMB_X46_Y31_N28
\gpmc_driver|gpmc_data_out~251\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~251_combout\ = (\gpmc_driver|gpmc_addr_in\(1) & ((\gpmc_driver|gpmc_data_out~250_combout\ & (\gpmc_driver|ram[7][11]~q\)) # (!\gpmc_driver|gpmc_data_out~250_combout\ & ((\gpmc_driver|ram[6][11]~q\))))) # 
-- (!\gpmc_driver|gpmc_addr_in\(1) & (((\gpmc_driver|gpmc_data_out~250_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|ram[7][11]~q\,
	datab => \gpmc_driver|gpmc_addr_in\(1),
	datac => \gpmc_driver|ram[6][11]~q\,
	datad => \gpmc_driver|gpmc_data_out~250_combout\,
	combout => \gpmc_driver|gpmc_data_out~251_combout\);

-- Location: LCCOMB_X45_Y28_N2
\gpmc_driver|ram[9][11]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[9][11]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(11)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gpmc_driver|gpmc_data_in\(11),
	combout => \gpmc_driver|ram[9][11]~feeder_combout\);

-- Location: FF_X45_Y28_N3
\gpmc_driver|ram[9][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[9][11]~feeder_combout\,
	ena => \gpmc_driver|Decoder0~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[9][11]~q\);

-- Location: FF_X50_Y31_N23
\gpmc_driver|ram[11][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(11),
	sload => VCC,
	ena => \gpmc_driver|Decoder0~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[11][11]~q\);

-- Location: FF_X50_Y31_N21
\gpmc_driver|ram[8][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(11),
	sload => VCC,
	ena => \gpmc_driver|Decoder0~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[8][11]~q\);

-- Location: LCCOMB_X46_Y28_N18
\gpmc_driver|ram[10][11]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[10][11]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(11)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gpmc_driver|gpmc_data_in\(11),
	combout => \gpmc_driver|ram[10][11]~feeder_combout\);

-- Location: FF_X46_Y28_N19
\gpmc_driver|ram[10][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[10][11]~feeder_combout\,
	ena => \gpmc_driver|Decoder0~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[10][11]~q\);

-- Location: LCCOMB_X50_Y31_N20
\gpmc_driver|gpmc_data_out~253\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~253_combout\ = (\gpmc_driver|gpmc_addr_in\(0) & (\gpmc_driver|gpmc_addr_in\(1))) # (!\gpmc_driver|gpmc_addr_in\(0) & ((\gpmc_driver|gpmc_addr_in\(1) & ((\gpmc_driver|ram[10][11]~q\))) # (!\gpmc_driver|gpmc_addr_in\(1) & 
-- (\gpmc_driver|ram[8][11]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(0),
	datab => \gpmc_driver|gpmc_addr_in\(1),
	datac => \gpmc_driver|ram[8][11]~q\,
	datad => \gpmc_driver|ram[10][11]~q\,
	combout => \gpmc_driver|gpmc_data_out~253_combout\);

-- Location: LCCOMB_X50_Y31_N22
\gpmc_driver|gpmc_data_out~254\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~254_combout\ = (\gpmc_driver|gpmc_addr_in\(0) & ((\gpmc_driver|gpmc_data_out~253_combout\ & ((\gpmc_driver|ram[11][11]~q\))) # (!\gpmc_driver|gpmc_data_out~253_combout\ & (\gpmc_driver|ram[9][11]~q\)))) # 
-- (!\gpmc_driver|gpmc_addr_in\(0) & (((\gpmc_driver|gpmc_data_out~253_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(0),
	datab => \gpmc_driver|ram[9][11]~q\,
	datac => \gpmc_driver|ram[11][11]~q\,
	datad => \gpmc_driver|gpmc_data_out~253_combout\,
	combout => \gpmc_driver|gpmc_data_out~254_combout\);

-- Location: LCCOMB_X48_Y31_N18
\gpmc_driver|gpmc_data_out~255\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~255_combout\ = (\gpmc_driver|gpmc_data_out[0]~51_combout\ & ((\gpmc_driver|gpmc_data_out~252_combout\ & ((\gpmc_driver|gpmc_data_out~254_combout\))) # (!\gpmc_driver|gpmc_data_out~252_combout\ & 
-- (\gpmc_driver|gpmc_data_out~251_combout\)))) # (!\gpmc_driver|gpmc_data_out[0]~51_combout\ & (\gpmc_driver|gpmc_data_out~252_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_data_out[0]~51_combout\,
	datab => \gpmc_driver|gpmc_data_out~252_combout\,
	datac => \gpmc_driver|gpmc_data_out~251_combout\,
	datad => \gpmc_driver|gpmc_data_out~254_combout\,
	combout => \gpmc_driver|gpmc_data_out~255_combout\);

-- Location: LCCOMB_X48_Y31_N6
\gpmc_driver|gpmc_data_out~351\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~351_combout\ = (\gpmc_driver|gpmc_data_out~255_combout\ & ((\gpmc_driver|gpmc_addr_in\(1)) # ((\gpmc_driver|gpmc_addr_in\(3)) # (\gpmc_driver|gpmc_addr_in\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(1),
	datab => \gpmc_driver|gpmc_addr_in\(3),
	datac => \gpmc_driver|gpmc_addr_in\(2),
	datad => \gpmc_driver|gpmc_data_out~255_combout\,
	combout => \gpmc_driver|gpmc_data_out~351_combout\);

-- Location: LCCOMB_X46_Y32_N18
\gpmc_driver|gpmc_data_out[11]~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out[11]~11_combout\ = (\gpmc_driver|gpmc_data_out[0]~58_combout\ & (\gpmc_driver|gpmc_data_out~257_combout\)) # (!\gpmc_driver|gpmc_data_out[0]~58_combout\ & ((\gpmc_driver|gpmc_data_out~351_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_data_out~257_combout\,
	datab => \gpmc_driver|gpmc_data_out[0]~58_combout\,
	datad => \gpmc_driver|gpmc_data_out~351_combout\,
	combout => \gpmc_driver|gpmc_data_out[11]~11_combout\);

-- Location: LCCOMB_X49_Y32_N18
\gpmc_driver|ram[23][11]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[23][11]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(11)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gpmc_driver|gpmc_data_in\(11),
	combout => \gpmc_driver|ram[23][11]~feeder_combout\);

-- Location: FF_X49_Y32_N19
\gpmc_driver|ram[23][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[23][11]~feeder_combout\,
	ena => \gpmc_driver|Decoder0~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[23][11]~q\);

-- Location: FF_X49_Y32_N9
\gpmc_driver|ram[31][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(11),
	sload => VCC,
	ena => \gpmc_driver|Decoder0~53_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[31][11]~q\);

-- Location: LCCOMB_X48_Y32_N4
\gpmc_driver|ram[27][11]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[27][11]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(11)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gpmc_driver|gpmc_data_in\(11),
	combout => \gpmc_driver|ram[27][11]~feeder_combout\);

-- Location: FF_X48_Y32_N5
\gpmc_driver|ram[27][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[27][11]~feeder_combout\,
	ena => \gpmc_driver|Decoder0~61_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[27][11]~q\);

-- Location: FF_X48_Y32_N31
\gpmc_driver|ram[19][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(11),
	sload => VCC,
	ena => \gpmc_driver|Decoder0~62_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[19][11]~q\);

-- Location: LCCOMB_X48_Y32_N30
\gpmc_driver|gpmc_data_out~265\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~265_combout\ = (\gpmc_driver|gpmc_addr_in\(2) & (((\gpmc_driver|gpmc_addr_in\(3))))) # (!\gpmc_driver|gpmc_addr_in\(2) & ((\gpmc_driver|gpmc_addr_in\(3) & (\gpmc_driver|ram[27][11]~q\)) # (!\gpmc_driver|gpmc_addr_in\(3) & 
-- ((\gpmc_driver|ram[19][11]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|ram[27][11]~q\,
	datab => \gpmc_driver|gpmc_addr_in\(2),
	datac => \gpmc_driver|ram[19][11]~q\,
	datad => \gpmc_driver|gpmc_addr_in\(3),
	combout => \gpmc_driver|gpmc_data_out~265_combout\);

-- Location: LCCOMB_X49_Y32_N8
\gpmc_driver|gpmc_data_out~266\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~266_combout\ = (\gpmc_driver|gpmc_addr_in\(2) & ((\gpmc_driver|gpmc_data_out~265_combout\ & ((\gpmc_driver|ram[31][11]~q\))) # (!\gpmc_driver|gpmc_data_out~265_combout\ & (\gpmc_driver|ram[23][11]~q\)))) # 
-- (!\gpmc_driver|gpmc_addr_in\(2) & (((\gpmc_driver|gpmc_data_out~265_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(2),
	datab => \gpmc_driver|ram[23][11]~q\,
	datac => \gpmc_driver|ram[31][11]~q\,
	datad => \gpmc_driver|gpmc_data_out~265_combout\,
	combout => \gpmc_driver|gpmc_data_out~266_combout\);

-- Location: LCCOMB_X52_Y31_N16
\gpmc_driver|ram[21][11]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[21][11]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(11)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gpmc_driver|gpmc_data_in\(11),
	combout => \gpmc_driver|ram[21][11]~feeder_combout\);

-- Location: FF_X52_Y31_N17
\gpmc_driver|ram[21][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[21][11]~feeder_combout\,
	ena => \gpmc_driver|Decoder0~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[21][11]~q\);

-- Location: FF_X52_Y31_N7
\gpmc_driver|ram[29][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(11),
	sload => VCC,
	ena => \gpmc_driver|Decoder0~47_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[29][11]~q\);

-- Location: LCCOMB_X53_Y31_N16
\gpmc_driver|ram[25][11]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[25][11]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(11)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gpmc_driver|gpmc_data_in\(11),
	combout => \gpmc_driver|ram[25][11]~feeder_combout\);

-- Location: FF_X53_Y31_N17
\gpmc_driver|ram[25][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[25][11]~feeder_combout\,
	ena => \gpmc_driver|Decoder0~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[25][11]~q\);

-- Location: FF_X53_Y31_N3
\gpmc_driver|ram[17][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(11),
	sload => VCC,
	ena => \gpmc_driver|Decoder0~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[17][11]~q\);

-- Location: LCCOMB_X53_Y31_N2
\gpmc_driver|gpmc_data_out~258\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~258_combout\ = (\gpmc_driver|gpmc_addr_in\(3) & ((\gpmc_driver|ram[25][11]~q\) # ((\gpmc_driver|gpmc_addr_in\(2))))) # (!\gpmc_driver|gpmc_addr_in\(3) & (((\gpmc_driver|ram[17][11]~q\ & !\gpmc_driver|gpmc_addr_in\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(3),
	datab => \gpmc_driver|ram[25][11]~q\,
	datac => \gpmc_driver|ram[17][11]~q\,
	datad => \gpmc_driver|gpmc_addr_in\(2),
	combout => \gpmc_driver|gpmc_data_out~258_combout\);

-- Location: LCCOMB_X52_Y31_N6
\gpmc_driver|gpmc_data_out~259\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~259_combout\ = (\gpmc_driver|gpmc_addr_in\(2) & ((\gpmc_driver|gpmc_data_out~258_combout\ & ((\gpmc_driver|ram[29][11]~q\))) # (!\gpmc_driver|gpmc_data_out~258_combout\ & (\gpmc_driver|ram[21][11]~q\)))) # 
-- (!\gpmc_driver|gpmc_addr_in\(2) & (((\gpmc_driver|gpmc_data_out~258_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(2),
	datab => \gpmc_driver|ram[21][11]~q\,
	datac => \gpmc_driver|ram[29][11]~q\,
	datad => \gpmc_driver|gpmc_data_out~258_combout\,
	combout => \gpmc_driver|gpmc_data_out~259_combout\);

-- Location: LCCOMB_X44_Y31_N18
\gpmc_driver|ram[24][11]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[24][11]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(11)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gpmc_driver|gpmc_data_in\(11),
	combout => \gpmc_driver|ram[24][11]~feeder_combout\);

-- Location: FF_X44_Y31_N19
\gpmc_driver|ram[24][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[24][11]~feeder_combout\,
	ena => \gpmc_driver|Decoder0~59_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[24][11]~q\);

-- Location: FF_X44_Y31_N1
\gpmc_driver|ram[28][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(11),
	sload => VCC,
	ena => \gpmc_driver|Decoder0~51_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[28][11]~q\);

-- Location: LCCOMB_X44_Y30_N0
\gpmc_driver|ram[20][11]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[20][11]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(11)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gpmc_driver|gpmc_data_in\(11),
	combout => \gpmc_driver|ram[20][11]~feeder_combout\);

-- Location: FF_X44_Y30_N1
\gpmc_driver|ram[20][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[20][11]~feeder_combout\,
	ena => \gpmc_driver|Decoder0~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[20][11]~q\);

-- Location: FF_X44_Y30_N27
\gpmc_driver|ram[16][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(11),
	sload => VCC,
	ena => \gpmc_driver|Decoder0~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[16][11]~q\);

-- Location: LCCOMB_X44_Y30_N26
\gpmc_driver|gpmc_data_out~262\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~262_combout\ = (\gpmc_driver|gpmc_addr_in\(3) & (((\gpmc_driver|gpmc_addr_in\(2))))) # (!\gpmc_driver|gpmc_addr_in\(3) & ((\gpmc_driver|gpmc_addr_in\(2) & (\gpmc_driver|ram[20][11]~q\)) # (!\gpmc_driver|gpmc_addr_in\(2) & 
-- ((\gpmc_driver|ram[16][11]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|ram[20][11]~q\,
	datab => \gpmc_driver|gpmc_addr_in\(3),
	datac => \gpmc_driver|ram[16][11]~q\,
	datad => \gpmc_driver|gpmc_addr_in\(2),
	combout => \gpmc_driver|gpmc_data_out~262_combout\);

-- Location: LCCOMB_X44_Y31_N0
\gpmc_driver|gpmc_data_out~263\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~263_combout\ = (\gpmc_driver|gpmc_addr_in\(3) & ((\gpmc_driver|gpmc_data_out~262_combout\ & ((\gpmc_driver|ram[28][11]~q\))) # (!\gpmc_driver|gpmc_data_out~262_combout\ & (\gpmc_driver|ram[24][11]~q\)))) # 
-- (!\gpmc_driver|gpmc_addr_in\(3) & (((\gpmc_driver|gpmc_data_out~262_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(3),
	datab => \gpmc_driver|ram[24][11]~q\,
	datac => \gpmc_driver|ram[28][11]~q\,
	datad => \gpmc_driver|gpmc_data_out~262_combout\,
	combout => \gpmc_driver|gpmc_data_out~263_combout\);

-- Location: LCCOMB_X49_Y29_N16
\gpmc_driver|ram[26][11]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[26][11]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(11)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gpmc_driver|gpmc_data_in\(11),
	combout => \gpmc_driver|ram[26][11]~feeder_combout\);

-- Location: FF_X49_Y29_N17
\gpmc_driver|ram[26][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[26][11]~feeder_combout\,
	ena => \gpmc_driver|Decoder0~57_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[26][11]~q\);

-- Location: FF_X49_Y29_N31
\gpmc_driver|ram[30][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(11),
	sload => VCC,
	ena => \gpmc_driver|Decoder0~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[30][11]~q\);

-- Location: LCCOMB_X48_Y29_N24
\gpmc_driver|ram[22][11]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[22][11]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(11)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gpmc_driver|gpmc_data_in\(11),
	combout => \gpmc_driver|ram[22][11]~feeder_combout\);

-- Location: FF_X48_Y29_N25
\gpmc_driver|ram[22][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[22][11]~feeder_combout\,
	ena => \gpmc_driver|Decoder0~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[22][11]~q\);

-- Location: FF_X48_Y29_N31
\gpmc_driver|ram[18][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(11),
	sload => VCC,
	ena => \gpmc_driver|Decoder0~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[18][11]~q\);

-- Location: LCCOMB_X48_Y29_N30
\gpmc_driver|gpmc_data_out~260\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~260_combout\ = (\gpmc_driver|gpmc_addr_in\(2) & ((\gpmc_driver|ram[22][11]~q\) # ((\gpmc_driver|gpmc_addr_in\(3))))) # (!\gpmc_driver|gpmc_addr_in\(2) & (((\gpmc_driver|ram[18][11]~q\ & !\gpmc_driver|gpmc_addr_in\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(2),
	datab => \gpmc_driver|ram[22][11]~q\,
	datac => \gpmc_driver|ram[18][11]~q\,
	datad => \gpmc_driver|gpmc_addr_in\(3),
	combout => \gpmc_driver|gpmc_data_out~260_combout\);

-- Location: LCCOMB_X49_Y29_N30
\gpmc_driver|gpmc_data_out~261\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~261_combout\ = (\gpmc_driver|gpmc_addr_in\(3) & ((\gpmc_driver|gpmc_data_out~260_combout\ & ((\gpmc_driver|ram[30][11]~q\))) # (!\gpmc_driver|gpmc_data_out~260_combout\ & (\gpmc_driver|ram[26][11]~q\)))) # 
-- (!\gpmc_driver|gpmc_addr_in\(3) & (((\gpmc_driver|gpmc_data_out~260_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(3),
	datab => \gpmc_driver|ram[26][11]~q\,
	datac => \gpmc_driver|ram[30][11]~q\,
	datad => \gpmc_driver|gpmc_data_out~260_combout\,
	combout => \gpmc_driver|gpmc_data_out~261_combout\);

-- Location: LCCOMB_X46_Y32_N12
\gpmc_driver|gpmc_data_out~264\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~264_combout\ = (\gpmc_driver|gpmc_addr_in\(1) & ((\gpmc_driver|gpmc_addr_in\(0)) # ((\gpmc_driver|gpmc_data_out~261_combout\)))) # (!\gpmc_driver|gpmc_addr_in\(1) & (!\gpmc_driver|gpmc_addr_in\(0) & 
-- (\gpmc_driver|gpmc_data_out~263_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(1),
	datab => \gpmc_driver|gpmc_addr_in\(0),
	datac => \gpmc_driver|gpmc_data_out~263_combout\,
	datad => \gpmc_driver|gpmc_data_out~261_combout\,
	combout => \gpmc_driver|gpmc_data_out~264_combout\);

-- Location: LCCOMB_X46_Y32_N22
\gpmc_driver|gpmc_data_out~267\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~267_combout\ = (\gpmc_driver|gpmc_addr_in\(0) & ((\gpmc_driver|gpmc_data_out~264_combout\ & (\gpmc_driver|gpmc_data_out~266_combout\)) # (!\gpmc_driver|gpmc_data_out~264_combout\ & ((\gpmc_driver|gpmc_data_out~259_combout\))))) 
-- # (!\gpmc_driver|gpmc_addr_in\(0) & (((\gpmc_driver|gpmc_data_out~264_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_data_out~266_combout\,
	datab => \gpmc_driver|gpmc_addr_in\(0),
	datac => \gpmc_driver|gpmc_data_out~259_combout\,
	datad => \gpmc_driver|gpmc_data_out~264_combout\,
	combout => \gpmc_driver|gpmc_data_out~267_combout\);

-- Location: FF_X46_Y32_N19
\gpmc_driver|gpmc_data_out[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|gpmc_data_out[11]~11_combout\,
	asdata => \gpmc_driver|gpmc_data_out~267_combout\,
	sclr => \gpmc_driver|LessThan0~1_combout\,
	sload => \gpmc_driver|gpmc_addr_in\(4),
	ena => \gpmc_driver|gpmc_data_out[0]~69_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|gpmc_data_out\(11));

-- Location: IOIBUF_X67_Y31_N22
\GPMC_DATA[12]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPMC_DATA(12),
	o => \GPMC_DATA[12]~input_o\);

-- Location: LCCOMB_X43_Y31_N18
\gpmc_driver|gpmc_data_in[12]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_in[12]~feeder_combout\ = \GPMC_DATA[12]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \GPMC_DATA[12]~input_o\,
	combout => \gpmc_driver|gpmc_data_in[12]~feeder_combout\);

-- Location: FF_X43_Y31_N19
\gpmc_driver|gpmc_data_in[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|gpmc_data_in[12]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|gpmc_data_in\(12));

-- Location: LCCOMB_X45_Y29_N4
\gpmc_driver|ram[14][12]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[14][12]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(12)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gpmc_driver|gpmc_data_in\(12),
	combout => \gpmc_driver|ram[14][12]~feeder_combout\);

-- Location: FF_X45_Y29_N5
\gpmc_driver|ram[14][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[14][12]~feeder_combout\,
	ena => \gpmc_driver|Decoder0~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[14][12]~q\);

-- Location: FF_X45_Y29_N7
\gpmc_driver|ram[15][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(12),
	sload => VCC,
	ena => \gpmc_driver|Decoder0~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[15][12]~q\);

-- Location: LCCOMB_X43_Y29_N6
\gpmc_driver|ram[13][12]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[13][12]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(12)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gpmc_driver|gpmc_data_in\(12),
	combout => \gpmc_driver|ram[13][12]~feeder_combout\);

-- Location: FF_X43_Y29_N7
\gpmc_driver|ram[13][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[13][12]~feeder_combout\,
	ena => \gpmc_driver|Decoder0~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[13][12]~q\);

-- Location: FF_X44_Y29_N9
\gpmc_driver|ram[12][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(12),
	sload => VCC,
	ena => \gpmc_driver|Decoder0~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[12][12]~q\);

-- Location: LCCOMB_X44_Y29_N8
\gpmc_driver|gpmc_data_out~274\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~274_combout\ = (\gpmc_driver|gpmc_addr_in\(1) & (((\gpmc_driver|gpmc_addr_in\(0))))) # (!\gpmc_driver|gpmc_addr_in\(1) & ((\gpmc_driver|gpmc_addr_in\(0) & (\gpmc_driver|ram[13][12]~q\)) # (!\gpmc_driver|gpmc_addr_in\(0) & 
-- ((\gpmc_driver|ram[12][12]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(1),
	datab => \gpmc_driver|ram[13][12]~q\,
	datac => \gpmc_driver|ram[12][12]~q\,
	datad => \gpmc_driver|gpmc_addr_in\(0),
	combout => \gpmc_driver|gpmc_data_out~274_combout\);

-- Location: LCCOMB_X45_Y29_N6
\gpmc_driver|gpmc_data_out~275\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~275_combout\ = (\gpmc_driver|gpmc_addr_in\(1) & ((\gpmc_driver|gpmc_data_out~274_combout\ & ((\gpmc_driver|ram[15][12]~q\))) # (!\gpmc_driver|gpmc_data_out~274_combout\ & (\gpmc_driver|ram[14][12]~q\)))) # 
-- (!\gpmc_driver|gpmc_addr_in\(1) & (((\gpmc_driver|gpmc_data_out~274_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(1),
	datab => \gpmc_driver|ram[14][12]~q\,
	datac => \gpmc_driver|ram[15][12]~q\,
	datad => \gpmc_driver|gpmc_data_out~274_combout\,
	combout => \gpmc_driver|gpmc_data_out~275_combout\);

-- Location: LCCOMB_X50_Y30_N4
\gpmc_driver|ram[5][12]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[5][12]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(12)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gpmc_driver|gpmc_data_in\(12),
	combout => \gpmc_driver|ram[5][12]~feeder_combout\);

-- Location: FF_X50_Y30_N5
\gpmc_driver|ram[5][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[5][12]~feeder_combout\,
	ena => \gpmc_driver|Decoder0~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[5][12]~q\);

-- Location: FF_X46_Y30_N15
\gpmc_driver|ram[4][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(12),
	sload => VCC,
	ena => \gpmc_driver|Decoder0~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[4][12]~q\);

-- Location: FF_X46_Y30_N25
\gpmc_driver|ram[8][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(12),
	sload => VCC,
	ena => \gpmc_driver|Decoder0~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[8][12]~q\);

-- Location: LCCOMB_X45_Y28_N0
\gpmc_driver|ram[9][12]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[9][12]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(12)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gpmc_driver|gpmc_data_in\(12),
	combout => \gpmc_driver|ram[9][12]~feeder_combout\);

-- Location: FF_X45_Y28_N1
\gpmc_driver|ram[9][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[9][12]~feeder_combout\,
	ena => \gpmc_driver|Decoder0~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[9][12]~q\);

-- Location: LCCOMB_X46_Y30_N24
\gpmc_driver|gpmc_data_out~268\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~268_combout\ = (\gpmc_driver|gpmc_addr_in\(0) & (((\gpmc_driver|ram[9][12]~q\)) # (!\gpmc_driver|gpmc_data_out[0]~48_combout\))) # (!\gpmc_driver|gpmc_addr_in\(0) & (\gpmc_driver|gpmc_data_out[0]~48_combout\ & 
-- (\gpmc_driver|ram[8][12]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(0),
	datab => \gpmc_driver|gpmc_data_out[0]~48_combout\,
	datac => \gpmc_driver|ram[8][12]~q\,
	datad => \gpmc_driver|ram[9][12]~q\,
	combout => \gpmc_driver|gpmc_data_out~268_combout\);

-- Location: LCCOMB_X46_Y30_N14
\gpmc_driver|gpmc_data_out~269\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~269_combout\ = (\gpmc_driver|gpmc_data_out[0]~48_combout\ & (((\gpmc_driver|gpmc_data_out~268_combout\)))) # (!\gpmc_driver|gpmc_data_out[0]~48_combout\ & ((\gpmc_driver|gpmc_data_out~268_combout\ & (\gpmc_driver|ram[5][12]~q\)) 
-- # (!\gpmc_driver|gpmc_data_out~268_combout\ & ((\gpmc_driver|ram[4][12]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|ram[5][12]~q\,
	datab => \gpmc_driver|gpmc_data_out[0]~48_combout\,
	datac => \gpmc_driver|ram[4][12]~q\,
	datad => \gpmc_driver|gpmc_data_out~268_combout\,
	combout => \gpmc_driver|gpmc_data_out~269_combout\);

-- Location: LCCOMB_X48_Y30_N16
\gpmc_driver|ram[3][12]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[3][12]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(12)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gpmc_driver|gpmc_data_in\(12),
	combout => \gpmc_driver|ram[3][12]~feeder_combout\);

-- Location: FF_X48_Y30_N17
\gpmc_driver|ram[3][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[3][12]~feeder_combout\,
	ena => \gpmc_driver|Decoder0~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[3][12]~q\);

-- Location: FF_X48_Y30_N31
\gpmc_driver|ram[2][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(12),
	sload => VCC,
	ena => \gpmc_driver|Decoder0~55_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[2][12]~q\);

-- Location: LCCOMB_X48_Y30_N30
\gpmc_driver|gpmc_data_out~272\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~272_combout\ = (\gpmc_driver|gpmc_data_out[0]~48_combout\ & (\gpmc_driver|ram[3][12]~q\)) # (!\gpmc_driver|gpmc_data_out[0]~48_combout\ & ((\gpmc_driver|ram[2][12]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \gpmc_driver|ram[3][12]~q\,
	datac => \gpmc_driver|ram[2][12]~q\,
	datad => \gpmc_driver|gpmc_data_out[0]~48_combout\,
	combout => \gpmc_driver|gpmc_data_out~272_combout\);

-- Location: LCCOMB_X50_Y31_N10
\gpmc_driver|gpmc_data_out~352\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~352_combout\ = (\gpmc_driver|gpmc_addr_in\(2) & (!\gpmc_driver|gpmc_addr_in\(1))) # (!\gpmc_driver|gpmc_addr_in\(2) & ((\gpmc_driver|gpmc_addr_in\(1) & (!\gpmc_driver|gpmc_addr_in\(3) & \gpmc_driver|gpmc_data_out~272_combout\)) 
-- # (!\gpmc_driver|gpmc_addr_in\(1) & (\gpmc_driver|gpmc_addr_in\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(2),
	datab => \gpmc_driver|gpmc_addr_in\(1),
	datac => \gpmc_driver|gpmc_addr_in\(3),
	datad => \gpmc_driver|gpmc_data_out~272_combout\,
	combout => \gpmc_driver|gpmc_data_out~352_combout\);

-- Location: LCCOMB_X46_Y28_N28
\gpmc_driver|ram[10][12]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[10][12]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(12)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gpmc_driver|gpmc_data_in\(12),
	combout => \gpmc_driver|ram[10][12]~feeder_combout\);

-- Location: FF_X46_Y28_N29
\gpmc_driver|ram[10][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[10][12]~feeder_combout\,
	ena => \gpmc_driver|Decoder0~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[10][12]~q\);

-- Location: FF_X46_Y31_N17
\gpmc_driver|ram[6][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(12),
	sload => VCC,
	ena => \gpmc_driver|Decoder0~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[6][12]~q\);

-- Location: LCCOMB_X46_Y28_N6
\gpmc_driver|ram[11][12]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[11][12]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(12)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gpmc_driver|gpmc_data_in\(12),
	combout => \gpmc_driver|ram[11][12]~feeder_combout\);

-- Location: FF_X46_Y28_N7
\gpmc_driver|ram[11][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[11][12]~feeder_combout\,
	ena => \gpmc_driver|Decoder0~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[11][12]~q\);

-- Location: FF_X46_Y31_N3
\gpmc_driver|ram[7][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(12),
	sload => VCC,
	ena => \gpmc_driver|Decoder0~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[7][12]~q\);

-- Location: LCCOMB_X46_Y31_N2
\gpmc_driver|gpmc_data_out~270\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~270_combout\ = (\gpmc_driver|gpmc_addr_in\(0) & ((\gpmc_driver|gpmc_data_out[0]~48_combout\ & (\gpmc_driver|ram[11][12]~q\)) # (!\gpmc_driver|gpmc_data_out[0]~48_combout\ & ((\gpmc_driver|ram[7][12]~q\))))) # 
-- (!\gpmc_driver|gpmc_addr_in\(0) & (((\gpmc_driver|gpmc_data_out[0]~48_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|ram[11][12]~q\,
	datab => \gpmc_driver|gpmc_addr_in\(0),
	datac => \gpmc_driver|ram[7][12]~q\,
	datad => \gpmc_driver|gpmc_data_out[0]~48_combout\,
	combout => \gpmc_driver|gpmc_data_out~270_combout\);

-- Location: LCCOMB_X46_Y31_N16
\gpmc_driver|gpmc_data_out~271\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~271_combout\ = (\gpmc_driver|gpmc_addr_in\(0) & (((\gpmc_driver|gpmc_data_out~270_combout\)))) # (!\gpmc_driver|gpmc_addr_in\(0) & ((\gpmc_driver|gpmc_data_out~270_combout\ & (\gpmc_driver|ram[10][12]~q\)) # 
-- (!\gpmc_driver|gpmc_data_out~270_combout\ & ((\gpmc_driver|ram[6][12]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|ram[10][12]~q\,
	datab => \gpmc_driver|gpmc_addr_in\(0),
	datac => \gpmc_driver|ram[6][12]~q\,
	datad => \gpmc_driver|gpmc_data_out~270_combout\,
	combout => \gpmc_driver|gpmc_data_out~271_combout\);

-- Location: LCCOMB_X49_Y31_N24
\gpmc_driver|gpmc_data_out~273\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~273_combout\ = (\gpmc_driver|gpmc_data_out[0]~51_combout\ & ((\gpmc_driver|gpmc_data_out~352_combout\ & (\gpmc_driver|gpmc_data_out~269_combout\)) # (!\gpmc_driver|gpmc_data_out~352_combout\ & 
-- ((\gpmc_driver|gpmc_data_out~271_combout\))))) # (!\gpmc_driver|gpmc_data_out[0]~51_combout\ & (((\gpmc_driver|gpmc_data_out~352_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_data_out~269_combout\,
	datab => \gpmc_driver|gpmc_data_out[0]~51_combout\,
	datac => \gpmc_driver|gpmc_data_out~352_combout\,
	datad => \gpmc_driver|gpmc_data_out~271_combout\,
	combout => \gpmc_driver|gpmc_data_out~273_combout\);

-- Location: LCCOMB_X49_Y31_N2
\gpmc_driver|gpmc_data_out[12]~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out[12]~12_combout\ = (\gpmc_driver|gpmc_data_out[0]~58_combout\ & (\gpmc_driver|gpmc_data_out~275_combout\)) # (!\gpmc_driver|gpmc_data_out[0]~58_combout\ & ((\gpmc_driver|gpmc_data_out~273_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_data_out~275_combout\,
	datab => \gpmc_driver|gpmc_data_out[0]~58_combout\,
	datad => \gpmc_driver|gpmc_data_out~273_combout\,
	combout => \gpmc_driver|gpmc_data_out[12]~12_combout\);

-- Location: LCCOMB_X49_Y32_N22
\gpmc_driver|ram[23][12]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[23][12]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(12)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gpmc_driver|gpmc_data_in\(12),
	combout => \gpmc_driver|ram[23][12]~feeder_combout\);

-- Location: FF_X49_Y32_N23
\gpmc_driver|ram[23][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[23][12]~feeder_combout\,
	ena => \gpmc_driver|Decoder0~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[23][12]~q\);

-- Location: FF_X49_Y32_N7
\gpmc_driver|ram[31][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(12),
	sload => VCC,
	ena => \gpmc_driver|Decoder0~53_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[31][12]~q\);

-- Location: LCCOMB_X48_Y32_N6
\gpmc_driver|ram[19][12]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[19][12]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(12)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gpmc_driver|gpmc_data_in\(12),
	combout => \gpmc_driver|ram[19][12]~feeder_combout\);

-- Location: FF_X48_Y32_N7
\gpmc_driver|ram[19][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[19][12]~feeder_combout\,
	ena => \gpmc_driver|Decoder0~62_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[19][12]~q\);

-- Location: LCCOMB_X48_Y32_N28
\gpmc_driver|ram[27][12]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[27][12]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(12)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gpmc_driver|gpmc_data_in\(12),
	combout => \gpmc_driver|ram[27][12]~feeder_combout\);

-- Location: FF_X48_Y32_N29
\gpmc_driver|ram[27][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[27][12]~feeder_combout\,
	ena => \gpmc_driver|Decoder0~61_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[27][12]~q\);

-- Location: LCCOMB_X49_Y32_N24
\gpmc_driver|gpmc_data_out~283\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~283_combout\ = (\gpmc_driver|gpmc_addr_in\(2) & (((\gpmc_driver|gpmc_addr_in\(3))))) # (!\gpmc_driver|gpmc_addr_in\(2) & ((\gpmc_driver|gpmc_addr_in\(3) & ((\gpmc_driver|ram[27][12]~q\))) # (!\gpmc_driver|gpmc_addr_in\(3) & 
-- (\gpmc_driver|ram[19][12]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(2),
	datab => \gpmc_driver|ram[19][12]~q\,
	datac => \gpmc_driver|gpmc_addr_in\(3),
	datad => \gpmc_driver|ram[27][12]~q\,
	combout => \gpmc_driver|gpmc_data_out~283_combout\);

-- Location: LCCOMB_X49_Y32_N6
\gpmc_driver|gpmc_data_out~284\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~284_combout\ = (\gpmc_driver|gpmc_addr_in\(2) & ((\gpmc_driver|gpmc_data_out~283_combout\ & ((\gpmc_driver|ram[31][12]~q\))) # (!\gpmc_driver|gpmc_data_out~283_combout\ & (\gpmc_driver|ram[23][12]~q\)))) # 
-- (!\gpmc_driver|gpmc_addr_in\(2) & (((\gpmc_driver|gpmc_data_out~283_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|ram[23][12]~q\,
	datab => \gpmc_driver|gpmc_addr_in\(2),
	datac => \gpmc_driver|ram[31][12]~q\,
	datad => \gpmc_driver|gpmc_data_out~283_combout\,
	combout => \gpmc_driver|gpmc_data_out~284_combout\);

-- Location: LCCOMB_X48_Y29_N8
\gpmc_driver|ram[22][12]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[22][12]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(12)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gpmc_driver|gpmc_data_in\(12),
	combout => \gpmc_driver|ram[22][12]~feeder_combout\);

-- Location: FF_X48_Y29_N9
\gpmc_driver|ram[22][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[22][12]~feeder_combout\,
	ena => \gpmc_driver|Decoder0~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[22][12]~q\);

-- Location: FF_X48_Y29_N7
\gpmc_driver|ram[18][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(12),
	sload => VCC,
	ena => \gpmc_driver|Decoder0~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[18][12]~q\);

-- Location: LCCOMB_X48_Y29_N6
\gpmc_driver|gpmc_data_out~276\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~276_combout\ = (\gpmc_driver|gpmc_addr_in\(2) & ((\gpmc_driver|ram[22][12]~q\) # ((\gpmc_driver|gpmc_addr_in\(3))))) # (!\gpmc_driver|gpmc_addr_in\(2) & (((\gpmc_driver|ram[18][12]~q\ & !\gpmc_driver|gpmc_addr_in\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(2),
	datab => \gpmc_driver|ram[22][12]~q\,
	datac => \gpmc_driver|ram[18][12]~q\,
	datad => \gpmc_driver|gpmc_addr_in\(3),
	combout => \gpmc_driver|gpmc_data_out~276_combout\);

-- Location: FF_X49_Y29_N19
\gpmc_driver|ram[30][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(12),
	sload => VCC,
	ena => \gpmc_driver|Decoder0~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[30][12]~q\);

-- Location: LCCOMB_X49_Y29_N20
\gpmc_driver|ram[26][12]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[26][12]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(12)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gpmc_driver|gpmc_data_in\(12),
	combout => \gpmc_driver|ram[26][12]~feeder_combout\);

-- Location: FF_X49_Y29_N21
\gpmc_driver|ram[26][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[26][12]~feeder_combout\,
	ena => \gpmc_driver|Decoder0~57_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[26][12]~q\);

-- Location: LCCOMB_X49_Y29_N18
\gpmc_driver|gpmc_data_out~277\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~277_combout\ = (\gpmc_driver|gpmc_addr_in\(3) & ((\gpmc_driver|gpmc_data_out~276_combout\ & (\gpmc_driver|ram[30][12]~q\)) # (!\gpmc_driver|gpmc_data_out~276_combout\ & ((\gpmc_driver|ram[26][12]~q\))))) # 
-- (!\gpmc_driver|gpmc_addr_in\(3) & (\gpmc_driver|gpmc_data_out~276_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(3),
	datab => \gpmc_driver|gpmc_data_out~276_combout\,
	datac => \gpmc_driver|ram[30][12]~q\,
	datad => \gpmc_driver|ram[26][12]~q\,
	combout => \gpmc_driver|gpmc_data_out~277_combout\);

-- Location: LCCOMB_X44_Y31_N26
\gpmc_driver|ram[24][12]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[24][12]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(12)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gpmc_driver|gpmc_data_in\(12),
	combout => \gpmc_driver|ram[24][12]~feeder_combout\);

-- Location: FF_X44_Y31_N27
\gpmc_driver|ram[24][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[24][12]~feeder_combout\,
	ena => \gpmc_driver|Decoder0~59_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[24][12]~q\);

-- Location: FF_X45_Y31_N11
\gpmc_driver|ram[28][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(12),
	sload => VCC,
	ena => \gpmc_driver|Decoder0~51_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[28][12]~q\);

-- Location: LCCOMB_X44_Y30_N4
\gpmc_driver|ram[20][12]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[20][12]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(12)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gpmc_driver|gpmc_data_in\(12),
	combout => \gpmc_driver|ram[20][12]~feeder_combout\);

-- Location: FF_X44_Y30_N5
\gpmc_driver|ram[20][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[20][12]~feeder_combout\,
	ena => \gpmc_driver|Decoder0~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[20][12]~q\);

-- Location: FF_X44_Y30_N15
\gpmc_driver|ram[16][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(12),
	sload => VCC,
	ena => \gpmc_driver|Decoder0~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[16][12]~q\);

-- Location: LCCOMB_X44_Y30_N14
\gpmc_driver|gpmc_data_out~280\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~280_combout\ = (\gpmc_driver|gpmc_addr_in\(3) & (((\gpmc_driver|gpmc_addr_in\(2))))) # (!\gpmc_driver|gpmc_addr_in\(3) & ((\gpmc_driver|gpmc_addr_in\(2) & (\gpmc_driver|ram[20][12]~q\)) # (!\gpmc_driver|gpmc_addr_in\(2) & 
-- ((\gpmc_driver|ram[16][12]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|ram[20][12]~q\,
	datab => \gpmc_driver|gpmc_addr_in\(3),
	datac => \gpmc_driver|ram[16][12]~q\,
	datad => \gpmc_driver|gpmc_addr_in\(2),
	combout => \gpmc_driver|gpmc_data_out~280_combout\);

-- Location: LCCOMB_X45_Y31_N10
\gpmc_driver|gpmc_data_out~281\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~281_combout\ = (\gpmc_driver|gpmc_addr_in\(3) & ((\gpmc_driver|gpmc_data_out~280_combout\ & ((\gpmc_driver|ram[28][12]~q\))) # (!\gpmc_driver|gpmc_data_out~280_combout\ & (\gpmc_driver|ram[24][12]~q\)))) # 
-- (!\gpmc_driver|gpmc_addr_in\(3) & (((\gpmc_driver|gpmc_data_out~280_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|ram[24][12]~q\,
	datab => \gpmc_driver|gpmc_addr_in\(3),
	datac => \gpmc_driver|ram[28][12]~q\,
	datad => \gpmc_driver|gpmc_data_out~280_combout\,
	combout => \gpmc_driver|gpmc_data_out~281_combout\);

-- Location: LCCOMB_X52_Y31_N28
\gpmc_driver|ram[21][12]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[21][12]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(12)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gpmc_driver|gpmc_data_in\(12),
	combout => \gpmc_driver|ram[21][12]~feeder_combout\);

-- Location: FF_X52_Y31_N29
\gpmc_driver|ram[21][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[21][12]~feeder_combout\,
	ena => \gpmc_driver|Decoder0~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[21][12]~q\);

-- Location: FF_X52_Y31_N19
\gpmc_driver|ram[29][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(12),
	sload => VCC,
	ena => \gpmc_driver|Decoder0~47_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[29][12]~q\);

-- Location: LCCOMB_X53_Y31_N4
\gpmc_driver|ram[25][12]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[25][12]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(12)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gpmc_driver|gpmc_data_in\(12),
	combout => \gpmc_driver|ram[25][12]~feeder_combout\);

-- Location: FF_X53_Y31_N5
\gpmc_driver|ram[25][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[25][12]~feeder_combout\,
	ena => \gpmc_driver|Decoder0~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[25][12]~q\);

-- Location: FF_X53_Y31_N15
\gpmc_driver|ram[17][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(12),
	sload => VCC,
	ena => \gpmc_driver|Decoder0~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[17][12]~q\);

-- Location: LCCOMB_X53_Y31_N14
\gpmc_driver|gpmc_data_out~278\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~278_combout\ = (\gpmc_driver|gpmc_addr_in\(3) & ((\gpmc_driver|ram[25][12]~q\) # ((\gpmc_driver|gpmc_addr_in\(2))))) # (!\gpmc_driver|gpmc_addr_in\(3) & (((\gpmc_driver|ram[17][12]~q\ & !\gpmc_driver|gpmc_addr_in\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(3),
	datab => \gpmc_driver|ram[25][12]~q\,
	datac => \gpmc_driver|ram[17][12]~q\,
	datad => \gpmc_driver|gpmc_addr_in\(2),
	combout => \gpmc_driver|gpmc_data_out~278_combout\);

-- Location: LCCOMB_X52_Y31_N18
\gpmc_driver|gpmc_data_out~279\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~279_combout\ = (\gpmc_driver|gpmc_addr_in\(2) & ((\gpmc_driver|gpmc_data_out~278_combout\ & ((\gpmc_driver|ram[29][12]~q\))) # (!\gpmc_driver|gpmc_data_out~278_combout\ & (\gpmc_driver|ram[21][12]~q\)))) # 
-- (!\gpmc_driver|gpmc_addr_in\(2) & (((\gpmc_driver|gpmc_data_out~278_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(2),
	datab => \gpmc_driver|ram[21][12]~q\,
	datac => \gpmc_driver|ram[29][12]~q\,
	datad => \gpmc_driver|gpmc_data_out~278_combout\,
	combout => \gpmc_driver|gpmc_data_out~279_combout\);

-- Location: LCCOMB_X49_Y31_N10
\gpmc_driver|gpmc_data_out~282\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~282_combout\ = (\gpmc_driver|gpmc_addr_in\(1) & (\gpmc_driver|gpmc_addr_in\(0))) # (!\gpmc_driver|gpmc_addr_in\(1) & ((\gpmc_driver|gpmc_addr_in\(0) & ((\gpmc_driver|gpmc_data_out~279_combout\))) # 
-- (!\gpmc_driver|gpmc_addr_in\(0) & (\gpmc_driver|gpmc_data_out~281_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(1),
	datab => \gpmc_driver|gpmc_addr_in\(0),
	datac => \gpmc_driver|gpmc_data_out~281_combout\,
	datad => \gpmc_driver|gpmc_data_out~279_combout\,
	combout => \gpmc_driver|gpmc_data_out~282_combout\);

-- Location: LCCOMB_X49_Y31_N8
\gpmc_driver|gpmc_data_out~285\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~285_combout\ = (\gpmc_driver|gpmc_addr_in\(1) & ((\gpmc_driver|gpmc_data_out~282_combout\ & (\gpmc_driver|gpmc_data_out~284_combout\)) # (!\gpmc_driver|gpmc_data_out~282_combout\ & ((\gpmc_driver|gpmc_data_out~277_combout\))))) 
-- # (!\gpmc_driver|gpmc_addr_in\(1) & (((\gpmc_driver|gpmc_data_out~282_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(1),
	datab => \gpmc_driver|gpmc_data_out~284_combout\,
	datac => \gpmc_driver|gpmc_data_out~277_combout\,
	datad => \gpmc_driver|gpmc_data_out~282_combout\,
	combout => \gpmc_driver|gpmc_data_out~285_combout\);

-- Location: FF_X49_Y31_N3
\gpmc_driver|gpmc_data_out[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|gpmc_data_out[12]~12_combout\,
	asdata => \gpmc_driver|gpmc_data_out~285_combout\,
	sclr => \gpmc_driver|LessThan0~1_combout\,
	sload => \gpmc_driver|gpmc_addr_in\(4),
	ena => \gpmc_driver|gpmc_data_out[0]~69_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|gpmc_data_out\(12));

-- Location: IOIBUF_X45_Y43_N1
\GPMC_DATA[13]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPMC_DATA(13),
	o => \GPMC_DATA[13]~input_o\);

-- Location: LCCOMB_X45_Y32_N20
\gpmc_driver|gpmc_data_in[13]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_in[13]~feeder_combout\ = \GPMC_DATA[13]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \GPMC_DATA[13]~input_o\,
	combout => \gpmc_driver|gpmc_data_in[13]~feeder_combout\);

-- Location: FF_X45_Y32_N21
\gpmc_driver|gpmc_data_in[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|gpmc_data_in[13]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|gpmc_data_in\(13));

-- Location: LCCOMB_X44_Y32_N0
\gpmc_driver|ram[14][13]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[14][13]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(13)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gpmc_driver|gpmc_data_in\(13),
	combout => \gpmc_driver|ram[14][13]~feeder_combout\);

-- Location: FF_X44_Y32_N1
\gpmc_driver|ram[14][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[14][13]~feeder_combout\,
	ena => \gpmc_driver|Decoder0~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[14][13]~q\);

-- Location: FF_X44_Y32_N31
\gpmc_driver|ram[12][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(13),
	sload => VCC,
	ena => \gpmc_driver|Decoder0~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[12][13]~q\);

-- Location: LCCOMB_X44_Y32_N30
\gpmc_driver|gpmc_data_out~292\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~292_combout\ = (\gpmc_driver|gpmc_addr_in\(0) & (((\gpmc_driver|gpmc_addr_in\(1))))) # (!\gpmc_driver|gpmc_addr_in\(0) & ((\gpmc_driver|gpmc_addr_in\(1) & (\gpmc_driver|ram[14][13]~q\)) # (!\gpmc_driver|gpmc_addr_in\(1) & 
-- ((\gpmc_driver|ram[12][13]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(0),
	datab => \gpmc_driver|ram[14][13]~q\,
	datac => \gpmc_driver|ram[12][13]~q\,
	datad => \gpmc_driver|gpmc_addr_in\(1),
	combout => \gpmc_driver|gpmc_data_out~292_combout\);

-- Location: LCCOMB_X44_Y29_N26
\gpmc_driver|ram[13][13]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[13][13]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(13)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gpmc_driver|gpmc_data_in\(13),
	combout => \gpmc_driver|ram[13][13]~feeder_combout\);

-- Location: FF_X44_Y29_N27
\gpmc_driver|ram[13][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[13][13]~feeder_combout\,
	ena => \gpmc_driver|Decoder0~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[13][13]~q\);

-- Location: FF_X45_Y31_N29
\gpmc_driver|ram[15][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(13),
	sload => VCC,
	ena => \gpmc_driver|Decoder0~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[15][13]~q\);

-- Location: LCCOMB_X45_Y31_N28
\gpmc_driver|gpmc_data_out~293\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~293_combout\ = (\gpmc_driver|gpmc_data_out~292_combout\ & (((\gpmc_driver|ram[15][13]~q\) # (!\gpmc_driver|gpmc_addr_in\(0))))) # (!\gpmc_driver|gpmc_data_out~292_combout\ & (\gpmc_driver|ram[13][13]~q\ & 
-- ((\gpmc_driver|gpmc_addr_in\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_data_out~292_combout\,
	datab => \gpmc_driver|ram[13][13]~q\,
	datac => \gpmc_driver|ram[15][13]~q\,
	datad => \gpmc_driver|gpmc_addr_in\(0),
	combout => \gpmc_driver|gpmc_data_out~293_combout\);

-- Location: LCCOMB_X48_Y31_N4
\gpmc_driver|ram[3][13]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[3][13]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(13)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gpmc_driver|gpmc_data_in\(13),
	combout => \gpmc_driver|ram[3][13]~feeder_combout\);

-- Location: FF_X48_Y31_N5
\gpmc_driver|ram[3][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[3][13]~feeder_combout\,
	ena => \gpmc_driver|Decoder0~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[3][13]~q\);

-- Location: FF_X48_Y31_N27
\gpmc_driver|ram[2][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(13),
	sload => VCC,
	ena => \gpmc_driver|Decoder0~55_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[2][13]~q\);

-- Location: LCCOMB_X48_Y31_N26
\gpmc_driver|gpmc_data_out~288\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~288_combout\ = (\gpmc_driver|gpmc_data_out[0]~51_combout\ & (((\gpmc_driver|gpmc_data_out[0]~48_combout\)))) # (!\gpmc_driver|gpmc_data_out[0]~51_combout\ & ((\gpmc_driver|gpmc_data_out[0]~48_combout\ & 
-- (\gpmc_driver|ram[3][13]~q\)) # (!\gpmc_driver|gpmc_data_out[0]~48_combout\ & ((\gpmc_driver|ram[2][13]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|ram[3][13]~q\,
	datab => \gpmc_driver|gpmc_data_out[0]~51_combout\,
	datac => \gpmc_driver|ram[2][13]~q\,
	datad => \gpmc_driver|gpmc_data_out[0]~48_combout\,
	combout => \gpmc_driver|gpmc_data_out~288_combout\);

-- Location: LCCOMB_X45_Y28_N22
\gpmc_driver|ram[9][13]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[9][13]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(13)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gpmc_driver|gpmc_data_in\(13),
	combout => \gpmc_driver|ram[9][13]~feeder_combout\);

-- Location: FF_X45_Y28_N23
\gpmc_driver|ram[9][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[9][13]~feeder_combout\,
	ena => \gpmc_driver|Decoder0~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[9][13]~q\);

-- Location: FF_X50_Y31_N19
\gpmc_driver|ram[11][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(13),
	sload => VCC,
	ena => \gpmc_driver|Decoder0~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[11][13]~q\);

-- Location: FF_X50_Y31_N17
\gpmc_driver|ram[8][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(13),
	sload => VCC,
	ena => \gpmc_driver|Decoder0~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[8][13]~q\);

-- Location: LCCOMB_X45_Y32_N28
\gpmc_driver|ram[10][13]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[10][13]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(13)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gpmc_driver|gpmc_data_in\(13),
	combout => \gpmc_driver|ram[10][13]~feeder_combout\);

-- Location: FF_X45_Y32_N29
\gpmc_driver|ram[10][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[10][13]~feeder_combout\,
	ena => \gpmc_driver|Decoder0~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[10][13]~q\);

-- Location: LCCOMB_X50_Y31_N16
\gpmc_driver|gpmc_data_out~289\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~289_combout\ = (\gpmc_driver|gpmc_addr_in\(0) & (\gpmc_driver|gpmc_addr_in\(1))) # (!\gpmc_driver|gpmc_addr_in\(0) & ((\gpmc_driver|gpmc_addr_in\(1) & ((\gpmc_driver|ram[10][13]~q\))) # (!\gpmc_driver|gpmc_addr_in\(1) & 
-- (\gpmc_driver|ram[8][13]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(0),
	datab => \gpmc_driver|gpmc_addr_in\(1),
	datac => \gpmc_driver|ram[8][13]~q\,
	datad => \gpmc_driver|ram[10][13]~q\,
	combout => \gpmc_driver|gpmc_data_out~289_combout\);

-- Location: LCCOMB_X50_Y31_N18
\gpmc_driver|gpmc_data_out~290\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~290_combout\ = (\gpmc_driver|gpmc_addr_in\(0) & ((\gpmc_driver|gpmc_data_out~289_combout\ & ((\gpmc_driver|ram[11][13]~q\))) # (!\gpmc_driver|gpmc_data_out~289_combout\ & (\gpmc_driver|ram[9][13]~q\)))) # 
-- (!\gpmc_driver|gpmc_addr_in\(0) & (((\gpmc_driver|gpmc_data_out~289_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(0),
	datab => \gpmc_driver|ram[9][13]~q\,
	datac => \gpmc_driver|ram[11][13]~q\,
	datad => \gpmc_driver|gpmc_data_out~289_combout\,
	combout => \gpmc_driver|gpmc_data_out~290_combout\);

-- Location: LCCOMB_X46_Y31_N14
\gpmc_driver|ram[7][13]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[7][13]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(13)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gpmc_driver|gpmc_data_in\(13),
	combout => \gpmc_driver|ram[7][13]~feeder_combout\);

-- Location: FF_X46_Y31_N15
\gpmc_driver|ram[7][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[7][13]~feeder_combout\,
	ena => \gpmc_driver|Decoder0~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[7][13]~q\);

-- Location: FF_X46_Y31_N13
\gpmc_driver|ram[6][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(13),
	sload => VCC,
	ena => \gpmc_driver|Decoder0~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[6][13]~q\);

-- Location: LCCOMB_X50_Y30_N26
\gpmc_driver|ram[5][13]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[5][13]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(13)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gpmc_driver|gpmc_data_in\(13),
	combout => \gpmc_driver|ram[5][13]~feeder_combout\);

-- Location: FF_X50_Y30_N27
\gpmc_driver|ram[5][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[5][13]~feeder_combout\,
	ena => \gpmc_driver|Decoder0~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[5][13]~q\);

-- Location: FF_X46_Y30_N3
\gpmc_driver|ram[4][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(13),
	sload => VCC,
	ena => \gpmc_driver|Decoder0~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[4][13]~q\);

-- Location: LCCOMB_X46_Y30_N2
\gpmc_driver|gpmc_data_out~286\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~286_combout\ = (\gpmc_driver|gpmc_addr_in\(1) & (((\gpmc_driver|gpmc_addr_in\(0))))) # (!\gpmc_driver|gpmc_addr_in\(1) & ((\gpmc_driver|gpmc_addr_in\(0) & (\gpmc_driver|ram[5][13]~q\)) # (!\gpmc_driver|gpmc_addr_in\(0) & 
-- ((\gpmc_driver|ram[4][13]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(1),
	datab => \gpmc_driver|ram[5][13]~q\,
	datac => \gpmc_driver|ram[4][13]~q\,
	datad => \gpmc_driver|gpmc_addr_in\(0),
	combout => \gpmc_driver|gpmc_data_out~286_combout\);

-- Location: LCCOMB_X46_Y31_N12
\gpmc_driver|gpmc_data_out~287\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~287_combout\ = (\gpmc_driver|gpmc_addr_in\(1) & ((\gpmc_driver|gpmc_data_out~286_combout\ & (\gpmc_driver|ram[7][13]~q\)) # (!\gpmc_driver|gpmc_data_out~286_combout\ & ((\gpmc_driver|ram[6][13]~q\))))) # 
-- (!\gpmc_driver|gpmc_addr_in\(1) & (((\gpmc_driver|gpmc_data_out~286_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(1),
	datab => \gpmc_driver|ram[7][13]~q\,
	datac => \gpmc_driver|ram[6][13]~q\,
	datad => \gpmc_driver|gpmc_data_out~286_combout\,
	combout => \gpmc_driver|gpmc_data_out~287_combout\);

-- Location: LCCOMB_X48_Y31_N0
\gpmc_driver|gpmc_data_out~291\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~291_combout\ = (\gpmc_driver|gpmc_data_out~288_combout\ & (((\gpmc_driver|gpmc_data_out~290_combout\)) # (!\gpmc_driver|gpmc_data_out[0]~51_combout\))) # (!\gpmc_driver|gpmc_data_out~288_combout\ & 
-- (\gpmc_driver|gpmc_data_out[0]~51_combout\ & ((\gpmc_driver|gpmc_data_out~287_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_data_out~288_combout\,
	datab => \gpmc_driver|gpmc_data_out[0]~51_combout\,
	datac => \gpmc_driver|gpmc_data_out~290_combout\,
	datad => \gpmc_driver|gpmc_data_out~287_combout\,
	combout => \gpmc_driver|gpmc_data_out~291_combout\);

-- Location: LCCOMB_X48_Y31_N24
\gpmc_driver|gpmc_data_out~353\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~353_combout\ = (\gpmc_driver|gpmc_data_out~291_combout\ & ((\gpmc_driver|gpmc_addr_in\(2)) # ((\gpmc_driver|gpmc_addr_in\(3)) # (\gpmc_driver|gpmc_addr_in\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(2),
	datab => \gpmc_driver|gpmc_addr_in\(3),
	datac => \gpmc_driver|gpmc_addr_in\(1),
	datad => \gpmc_driver|gpmc_data_out~291_combout\,
	combout => \gpmc_driver|gpmc_data_out~353_combout\);

-- Location: LCCOMB_X49_Y31_N0
\gpmc_driver|gpmc_data_out[13]~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out[13]~13_combout\ = (\gpmc_driver|gpmc_data_out[0]~58_combout\ & (\gpmc_driver|gpmc_data_out~293_combout\)) # (!\gpmc_driver|gpmc_data_out[0]~58_combout\ & ((\gpmc_driver|gpmc_data_out~353_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_data_out~293_combout\,
	datab => \gpmc_driver|gpmc_data_out[0]~58_combout\,
	datad => \gpmc_driver|gpmc_data_out~353_combout\,
	combout => \gpmc_driver|gpmc_data_out[13]~13_combout\);

-- Location: LCCOMB_X49_Y32_N20
\gpmc_driver|ram[23][13]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[23][13]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(13)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gpmc_driver|gpmc_data_in\(13),
	combout => \gpmc_driver|ram[23][13]~feeder_combout\);

-- Location: FF_X49_Y32_N21
\gpmc_driver|ram[23][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[23][13]~feeder_combout\,
	ena => \gpmc_driver|Decoder0~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[23][13]~q\);

-- Location: FF_X49_Y32_N31
\gpmc_driver|ram[31][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(13),
	sload => VCC,
	ena => \gpmc_driver|Decoder0~53_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[31][13]~q\);

-- Location: LCCOMB_X48_Y32_N8
\gpmc_driver|ram[27][13]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[27][13]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(13)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gpmc_driver|gpmc_data_in\(13),
	combout => \gpmc_driver|ram[27][13]~feeder_combout\);

-- Location: FF_X48_Y32_N9
\gpmc_driver|ram[27][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[27][13]~feeder_combout\,
	ena => \gpmc_driver|Decoder0~61_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[27][13]~q\);

-- Location: FF_X48_Y32_N11
\gpmc_driver|ram[19][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(13),
	sload => VCC,
	ena => \gpmc_driver|Decoder0~62_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[19][13]~q\);

-- Location: LCCOMB_X48_Y32_N10
\gpmc_driver|gpmc_data_out~301\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~301_combout\ = (\gpmc_driver|gpmc_addr_in\(2) & (((\gpmc_driver|gpmc_addr_in\(3))))) # (!\gpmc_driver|gpmc_addr_in\(2) & ((\gpmc_driver|gpmc_addr_in\(3) & (\gpmc_driver|ram[27][13]~q\)) # (!\gpmc_driver|gpmc_addr_in\(3) & 
-- ((\gpmc_driver|ram[19][13]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|ram[27][13]~q\,
	datab => \gpmc_driver|gpmc_addr_in\(2),
	datac => \gpmc_driver|ram[19][13]~q\,
	datad => \gpmc_driver|gpmc_addr_in\(3),
	combout => \gpmc_driver|gpmc_data_out~301_combout\);

-- Location: LCCOMB_X49_Y32_N30
\gpmc_driver|gpmc_data_out~302\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~302_combout\ = (\gpmc_driver|gpmc_addr_in\(2) & ((\gpmc_driver|gpmc_data_out~301_combout\ & ((\gpmc_driver|ram[31][13]~q\))) # (!\gpmc_driver|gpmc_data_out~301_combout\ & (\gpmc_driver|ram[23][13]~q\)))) # 
-- (!\gpmc_driver|gpmc_addr_in\(2) & (((\gpmc_driver|gpmc_data_out~301_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(2),
	datab => \gpmc_driver|ram[23][13]~q\,
	datac => \gpmc_driver|ram[31][13]~q\,
	datad => \gpmc_driver|gpmc_data_out~301_combout\,
	combout => \gpmc_driver|gpmc_data_out~302_combout\);

-- Location: LCCOMB_X52_Y31_N12
\gpmc_driver|ram[21][13]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[21][13]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(13)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gpmc_driver|gpmc_data_in\(13),
	combout => \gpmc_driver|ram[21][13]~feeder_combout\);

-- Location: FF_X52_Y31_N13
\gpmc_driver|ram[21][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[21][13]~feeder_combout\,
	ena => \gpmc_driver|Decoder0~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[21][13]~q\);

-- Location: LCCOMB_X53_Y31_N12
\gpmc_driver|ram[25][13]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[25][13]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(13)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gpmc_driver|gpmc_data_in\(13),
	combout => \gpmc_driver|ram[25][13]~feeder_combout\);

-- Location: FF_X53_Y31_N13
\gpmc_driver|ram[25][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[25][13]~feeder_combout\,
	ena => \gpmc_driver|Decoder0~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[25][13]~q\);

-- Location: FF_X53_Y31_N11
\gpmc_driver|ram[17][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(13),
	sload => VCC,
	ena => \gpmc_driver|Decoder0~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[17][13]~q\);

-- Location: LCCOMB_X53_Y31_N10
\gpmc_driver|gpmc_data_out~294\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~294_combout\ = (\gpmc_driver|gpmc_addr_in\(3) & ((\gpmc_driver|ram[25][13]~q\) # ((\gpmc_driver|gpmc_addr_in\(2))))) # (!\gpmc_driver|gpmc_addr_in\(3) & (((\gpmc_driver|ram[17][13]~q\ & !\gpmc_driver|gpmc_addr_in\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|ram[25][13]~q\,
	datab => \gpmc_driver|gpmc_addr_in\(3),
	datac => \gpmc_driver|ram[17][13]~q\,
	datad => \gpmc_driver|gpmc_addr_in\(2),
	combout => \gpmc_driver|gpmc_data_out~294_combout\);

-- Location: FF_X52_Y31_N23
\gpmc_driver|ram[29][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(13),
	sload => VCC,
	ena => \gpmc_driver|Decoder0~47_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[29][13]~q\);

-- Location: LCCOMB_X52_Y31_N22
\gpmc_driver|gpmc_data_out~295\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~295_combout\ = (\gpmc_driver|gpmc_data_out~294_combout\ & (((\gpmc_driver|ram[29][13]~q\) # (!\gpmc_driver|gpmc_addr_in\(2))))) # (!\gpmc_driver|gpmc_data_out~294_combout\ & (\gpmc_driver|ram[21][13]~q\ & 
-- ((\gpmc_driver|gpmc_addr_in\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|ram[21][13]~q\,
	datab => \gpmc_driver|gpmc_data_out~294_combout\,
	datac => \gpmc_driver|ram[29][13]~q\,
	datad => \gpmc_driver|gpmc_addr_in\(2),
	combout => \gpmc_driver|gpmc_data_out~295_combout\);

-- Location: LCCOMB_X44_Y31_N24
\gpmc_driver|ram[24][13]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[24][13]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(13)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gpmc_driver|gpmc_data_in\(13),
	combout => \gpmc_driver|ram[24][13]~feeder_combout\);

-- Location: FF_X44_Y31_N25
\gpmc_driver|ram[24][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[24][13]~feeder_combout\,
	ena => \gpmc_driver|Decoder0~59_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[24][13]~q\);

-- Location: FF_X45_Y31_N15
\gpmc_driver|ram[28][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(13),
	sload => VCC,
	ena => \gpmc_driver|Decoder0~51_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[28][13]~q\);

-- Location: LCCOMB_X44_Y30_N20
\gpmc_driver|ram[20][13]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[20][13]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(13)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gpmc_driver|gpmc_data_in\(13),
	combout => \gpmc_driver|ram[20][13]~feeder_combout\);

-- Location: FF_X44_Y30_N21
\gpmc_driver|ram[20][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[20][13]~feeder_combout\,
	ena => \gpmc_driver|Decoder0~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[20][13]~q\);

-- Location: FF_X44_Y30_N11
\gpmc_driver|ram[16][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(13),
	sload => VCC,
	ena => \gpmc_driver|Decoder0~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[16][13]~q\);

-- Location: LCCOMB_X44_Y30_N10
\gpmc_driver|gpmc_data_out~298\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~298_combout\ = (\gpmc_driver|gpmc_addr_in\(3) & (((\gpmc_driver|gpmc_addr_in\(2))))) # (!\gpmc_driver|gpmc_addr_in\(3) & ((\gpmc_driver|gpmc_addr_in\(2) & (\gpmc_driver|ram[20][13]~q\)) # (!\gpmc_driver|gpmc_addr_in\(2) & 
-- ((\gpmc_driver|ram[16][13]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|ram[20][13]~q\,
	datab => \gpmc_driver|gpmc_addr_in\(3),
	datac => \gpmc_driver|ram[16][13]~q\,
	datad => \gpmc_driver|gpmc_addr_in\(2),
	combout => \gpmc_driver|gpmc_data_out~298_combout\);

-- Location: LCCOMB_X45_Y31_N14
\gpmc_driver|gpmc_data_out~299\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~299_combout\ = (\gpmc_driver|gpmc_addr_in\(3) & ((\gpmc_driver|gpmc_data_out~298_combout\ & ((\gpmc_driver|ram[28][13]~q\))) # (!\gpmc_driver|gpmc_data_out~298_combout\ & (\gpmc_driver|ram[24][13]~q\)))) # 
-- (!\gpmc_driver|gpmc_addr_in\(3) & (((\gpmc_driver|gpmc_data_out~298_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(3),
	datab => \gpmc_driver|ram[24][13]~q\,
	datac => \gpmc_driver|ram[28][13]~q\,
	datad => \gpmc_driver|gpmc_data_out~298_combout\,
	combout => \gpmc_driver|gpmc_data_out~299_combout\);

-- Location: LCCOMB_X49_Y29_N28
\gpmc_driver|ram[26][13]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[26][13]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(13)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gpmc_driver|gpmc_data_in\(13),
	combout => \gpmc_driver|ram[26][13]~feeder_combout\);

-- Location: FF_X49_Y29_N29
\gpmc_driver|ram[26][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[26][13]~feeder_combout\,
	ena => \gpmc_driver|Decoder0~57_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[26][13]~q\);

-- Location: FF_X49_Y29_N7
\gpmc_driver|ram[30][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(13),
	sload => VCC,
	ena => \gpmc_driver|Decoder0~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[30][13]~q\);

-- Location: LCCOMB_X48_Y29_N0
\gpmc_driver|ram[22][13]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[22][13]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(13)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gpmc_driver|gpmc_data_in\(13),
	combout => \gpmc_driver|ram[22][13]~feeder_combout\);

-- Location: FF_X48_Y29_N1
\gpmc_driver|ram[22][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[22][13]~feeder_combout\,
	ena => \gpmc_driver|Decoder0~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[22][13]~q\);

-- Location: FF_X48_Y29_N11
\gpmc_driver|ram[18][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(13),
	sload => VCC,
	ena => \gpmc_driver|Decoder0~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[18][13]~q\);

-- Location: LCCOMB_X48_Y29_N10
\gpmc_driver|gpmc_data_out~296\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~296_combout\ = (\gpmc_driver|gpmc_addr_in\(2) & ((\gpmc_driver|ram[22][13]~q\) # ((\gpmc_driver|gpmc_addr_in\(3))))) # (!\gpmc_driver|gpmc_addr_in\(2) & (((\gpmc_driver|ram[18][13]~q\ & !\gpmc_driver|gpmc_addr_in\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(2),
	datab => \gpmc_driver|ram[22][13]~q\,
	datac => \gpmc_driver|ram[18][13]~q\,
	datad => \gpmc_driver|gpmc_addr_in\(3),
	combout => \gpmc_driver|gpmc_data_out~296_combout\);

-- Location: LCCOMB_X49_Y29_N6
\gpmc_driver|gpmc_data_out~297\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~297_combout\ = (\gpmc_driver|gpmc_addr_in\(3) & ((\gpmc_driver|gpmc_data_out~296_combout\ & ((\gpmc_driver|ram[30][13]~q\))) # (!\gpmc_driver|gpmc_data_out~296_combout\ & (\gpmc_driver|ram[26][13]~q\)))) # 
-- (!\gpmc_driver|gpmc_addr_in\(3) & (((\gpmc_driver|gpmc_data_out~296_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(3),
	datab => \gpmc_driver|ram[26][13]~q\,
	datac => \gpmc_driver|ram[30][13]~q\,
	datad => \gpmc_driver|gpmc_data_out~296_combout\,
	combout => \gpmc_driver|gpmc_data_out~297_combout\);

-- Location: LCCOMB_X48_Y31_N14
\gpmc_driver|gpmc_data_out~300\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~300_combout\ = (\gpmc_driver|gpmc_addr_in\(1) & ((\gpmc_driver|gpmc_addr_in\(0)) # ((\gpmc_driver|gpmc_data_out~297_combout\)))) # (!\gpmc_driver|gpmc_addr_in\(1) & (!\gpmc_driver|gpmc_addr_in\(0) & 
-- (\gpmc_driver|gpmc_data_out~299_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(1),
	datab => \gpmc_driver|gpmc_addr_in\(0),
	datac => \gpmc_driver|gpmc_data_out~299_combout\,
	datad => \gpmc_driver|gpmc_data_out~297_combout\,
	combout => \gpmc_driver|gpmc_data_out~300_combout\);

-- Location: LCCOMB_X49_Y31_N26
\gpmc_driver|gpmc_data_out~303\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~303_combout\ = (\gpmc_driver|gpmc_addr_in\(0) & ((\gpmc_driver|gpmc_data_out~300_combout\ & (\gpmc_driver|gpmc_data_out~302_combout\)) # (!\gpmc_driver|gpmc_data_out~300_combout\ & ((\gpmc_driver|gpmc_data_out~295_combout\))))) 
-- # (!\gpmc_driver|gpmc_addr_in\(0) & (((\gpmc_driver|gpmc_data_out~300_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_data_out~302_combout\,
	datab => \gpmc_driver|gpmc_addr_in\(0),
	datac => \gpmc_driver|gpmc_data_out~295_combout\,
	datad => \gpmc_driver|gpmc_data_out~300_combout\,
	combout => \gpmc_driver|gpmc_data_out~303_combout\);

-- Location: FF_X49_Y31_N1
\gpmc_driver|gpmc_data_out[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|gpmc_data_out[13]~13_combout\,
	asdata => \gpmc_driver|gpmc_data_out~303_combout\,
	sclr => \gpmc_driver|LessThan0~1_combout\,
	sload => \gpmc_driver|gpmc_addr_in\(4),
	ena => \gpmc_driver|gpmc_data_out[0]~69_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|gpmc_data_out\(13));

-- Location: IOIBUF_X67_Y25_N22
\GPMC_DATA[14]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPMC_DATA(14),
	o => \GPMC_DATA[14]~input_o\);

-- Location: LCCOMB_X53_Y28_N26
\gpmc_driver|gpmc_data_in[14]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_in[14]~feeder_combout\ = \GPMC_DATA[14]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \GPMC_DATA[14]~input_o\,
	combout => \gpmc_driver|gpmc_data_in[14]~feeder_combout\);

-- Location: FF_X53_Y28_N27
\gpmc_driver|gpmc_data_in[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|gpmc_data_in[14]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|gpmc_data_in\(14));

-- Location: LCCOMB_X45_Y29_N8
\gpmc_driver|ram[14][14]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[14][14]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(14)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gpmc_driver|gpmc_data_in\(14),
	combout => \gpmc_driver|ram[14][14]~feeder_combout\);

-- Location: FF_X45_Y29_N9
\gpmc_driver|ram[14][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[14][14]~feeder_combout\,
	ena => \gpmc_driver|Decoder0~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[14][14]~q\);

-- Location: FF_X45_Y29_N11
\gpmc_driver|ram[15][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(14),
	sload => VCC,
	ena => \gpmc_driver|Decoder0~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[15][14]~q\);

-- Location: LCCOMB_X44_Y29_N12
\gpmc_driver|ram[13][14]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[13][14]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(14)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gpmc_driver|gpmc_data_in\(14),
	combout => \gpmc_driver|ram[13][14]~feeder_combout\);

-- Location: FF_X44_Y29_N13
\gpmc_driver|ram[13][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[13][14]~feeder_combout\,
	ena => \gpmc_driver|Decoder0~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[13][14]~q\);

-- Location: FF_X44_Y29_N23
\gpmc_driver|ram[12][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(14),
	sload => VCC,
	ena => \gpmc_driver|Decoder0~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[12][14]~q\);

-- Location: LCCOMB_X44_Y29_N22
\gpmc_driver|gpmc_data_out~310\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~310_combout\ = (\gpmc_driver|gpmc_addr_in\(0) & ((\gpmc_driver|ram[13][14]~q\) # ((\gpmc_driver|gpmc_addr_in\(1))))) # (!\gpmc_driver|gpmc_addr_in\(0) & (((\gpmc_driver|ram[12][14]~q\ & !\gpmc_driver|gpmc_addr_in\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|ram[13][14]~q\,
	datab => \gpmc_driver|gpmc_addr_in\(0),
	datac => \gpmc_driver|ram[12][14]~q\,
	datad => \gpmc_driver|gpmc_addr_in\(1),
	combout => \gpmc_driver|gpmc_data_out~310_combout\);

-- Location: LCCOMB_X45_Y29_N10
\gpmc_driver|gpmc_data_out~311\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~311_combout\ = (\gpmc_driver|gpmc_addr_in\(1) & ((\gpmc_driver|gpmc_data_out~310_combout\ & ((\gpmc_driver|ram[15][14]~q\))) # (!\gpmc_driver|gpmc_data_out~310_combout\ & (\gpmc_driver|ram[14][14]~q\)))) # 
-- (!\gpmc_driver|gpmc_addr_in\(1) & (((\gpmc_driver|gpmc_data_out~310_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(1),
	datab => \gpmc_driver|ram[14][14]~q\,
	datac => \gpmc_driver|ram[15][14]~q\,
	datad => \gpmc_driver|gpmc_data_out~310_combout\,
	combout => \gpmc_driver|gpmc_data_out~311_combout\);

-- Location: LCCOMB_X46_Y28_N8
\gpmc_driver|ram[10][14]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[10][14]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(14)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gpmc_driver|gpmc_data_in\(14),
	combout => \gpmc_driver|ram[10][14]~feeder_combout\);

-- Location: FF_X46_Y28_N9
\gpmc_driver|ram[10][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[10][14]~feeder_combout\,
	ena => \gpmc_driver|Decoder0~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[10][14]~q\);

-- Location: FF_X50_Y31_N27
\gpmc_driver|ram[11][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(14),
	sload => VCC,
	ena => \gpmc_driver|Decoder0~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[11][14]~q\);

-- Location: FF_X50_Y31_N29
\gpmc_driver|ram[8][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(14),
	sload => VCC,
	ena => \gpmc_driver|Decoder0~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[8][14]~q\);

-- Location: LCCOMB_X45_Y28_N20
\gpmc_driver|ram[9][14]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[9][14]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(14)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gpmc_driver|gpmc_data_in\(14),
	combout => \gpmc_driver|ram[9][14]~feeder_combout\);

-- Location: FF_X45_Y28_N21
\gpmc_driver|ram[9][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[9][14]~feeder_combout\,
	ena => \gpmc_driver|Decoder0~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[9][14]~q\);

-- Location: LCCOMB_X50_Y31_N28
\gpmc_driver|gpmc_data_out~307\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~307_combout\ = (\gpmc_driver|gpmc_addr_in\(0) & ((\gpmc_driver|gpmc_addr_in\(1)) # ((\gpmc_driver|ram[9][14]~q\)))) # (!\gpmc_driver|gpmc_addr_in\(0) & (!\gpmc_driver|gpmc_addr_in\(1) & (\gpmc_driver|ram[8][14]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(0),
	datab => \gpmc_driver|gpmc_addr_in\(1),
	datac => \gpmc_driver|ram[8][14]~q\,
	datad => \gpmc_driver|ram[9][14]~q\,
	combout => \gpmc_driver|gpmc_data_out~307_combout\);

-- Location: LCCOMB_X50_Y31_N26
\gpmc_driver|gpmc_data_out~308\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~308_combout\ = (\gpmc_driver|gpmc_addr_in\(1) & ((\gpmc_driver|gpmc_data_out~307_combout\ & ((\gpmc_driver|ram[11][14]~q\))) # (!\gpmc_driver|gpmc_data_out~307_combout\ & (\gpmc_driver|ram[10][14]~q\)))) # 
-- (!\gpmc_driver|gpmc_addr_in\(1) & (((\gpmc_driver|gpmc_data_out~307_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|ram[10][14]~q\,
	datab => \gpmc_driver|gpmc_addr_in\(1),
	datac => \gpmc_driver|ram[11][14]~q\,
	datad => \gpmc_driver|gpmc_data_out~307_combout\,
	combout => \gpmc_driver|gpmc_data_out~308_combout\);

-- Location: FF_X48_Y31_N13
\gpmc_driver|ram[3][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(14),
	sload => VCC,
	ena => \gpmc_driver|Decoder0~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[3][14]~q\);

-- Location: FF_X48_Y31_N11
\gpmc_driver|ram[2][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(14),
	sload => VCC,
	ena => \gpmc_driver|Decoder0~55_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[2][14]~q\);

-- Location: LCCOMB_X51_Y28_N20
\gpmc_driver|ram[5][14]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[5][14]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(14)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gpmc_driver|gpmc_data_in\(14),
	combout => \gpmc_driver|ram[5][14]~feeder_combout\);

-- Location: FF_X51_Y28_N21
\gpmc_driver|ram[5][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[5][14]~feeder_combout\,
	ena => \gpmc_driver|Decoder0~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[5][14]~q\);

-- Location: FF_X49_Y28_N27
\gpmc_driver|ram[7][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(14),
	sload => VCC,
	ena => \gpmc_driver|Decoder0~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[7][14]~q\);

-- Location: LCCOMB_X51_Y28_N6
\gpmc_driver|ram[6][14]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[6][14]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(14)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gpmc_driver|gpmc_data_in\(14),
	combout => \gpmc_driver|ram[6][14]~feeder_combout\);

-- Location: FF_X51_Y28_N7
\gpmc_driver|ram[6][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[6][14]~feeder_combout\,
	ena => \gpmc_driver|Decoder0~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[6][14]~q\);

-- Location: FF_X49_Y28_N21
\gpmc_driver|ram[4][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(14),
	sload => VCC,
	ena => \gpmc_driver|Decoder0~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[4][14]~q\);

-- Location: LCCOMB_X49_Y28_N20
\gpmc_driver|gpmc_data_out~304\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~304_combout\ = (\gpmc_driver|gpmc_addr_in\(0) & (((\gpmc_driver|gpmc_addr_in\(1))))) # (!\gpmc_driver|gpmc_addr_in\(0) & ((\gpmc_driver|gpmc_addr_in\(1) & (\gpmc_driver|ram[6][14]~q\)) # (!\gpmc_driver|gpmc_addr_in\(1) & 
-- ((\gpmc_driver|ram[4][14]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|ram[6][14]~q\,
	datab => \gpmc_driver|gpmc_addr_in\(0),
	datac => \gpmc_driver|ram[4][14]~q\,
	datad => \gpmc_driver|gpmc_addr_in\(1),
	combout => \gpmc_driver|gpmc_data_out~304_combout\);

-- Location: LCCOMB_X49_Y28_N26
\gpmc_driver|gpmc_data_out~305\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~305_combout\ = (\gpmc_driver|gpmc_addr_in\(0) & ((\gpmc_driver|gpmc_data_out~304_combout\ & ((\gpmc_driver|ram[7][14]~q\))) # (!\gpmc_driver|gpmc_data_out~304_combout\ & (\gpmc_driver|ram[5][14]~q\)))) # 
-- (!\gpmc_driver|gpmc_addr_in\(0) & (((\gpmc_driver|gpmc_data_out~304_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|ram[5][14]~q\,
	datab => \gpmc_driver|gpmc_addr_in\(0),
	datac => \gpmc_driver|ram[7][14]~q\,
	datad => \gpmc_driver|gpmc_data_out~304_combout\,
	combout => \gpmc_driver|gpmc_data_out~305_combout\);

-- Location: LCCOMB_X48_Y31_N10
\gpmc_driver|gpmc_data_out~306\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~306_combout\ = (\gpmc_driver|gpmc_data_out[0]~51_combout\ & ((\gpmc_driver|gpmc_data_out[0]~48_combout\) # ((\gpmc_driver|gpmc_data_out~305_combout\)))) # (!\gpmc_driver|gpmc_data_out[0]~51_combout\ & 
-- (!\gpmc_driver|gpmc_data_out[0]~48_combout\ & (\gpmc_driver|ram[2][14]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_data_out[0]~51_combout\,
	datab => \gpmc_driver|gpmc_data_out[0]~48_combout\,
	datac => \gpmc_driver|ram[2][14]~q\,
	datad => \gpmc_driver|gpmc_data_out~305_combout\,
	combout => \gpmc_driver|gpmc_data_out~306_combout\);

-- Location: LCCOMB_X48_Y31_N12
\gpmc_driver|gpmc_data_out~309\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~309_combout\ = (\gpmc_driver|gpmc_data_out[0]~48_combout\ & ((\gpmc_driver|gpmc_data_out~306_combout\ & (\gpmc_driver|gpmc_data_out~308_combout\)) # (!\gpmc_driver|gpmc_data_out~306_combout\ & ((\gpmc_driver|ram[3][14]~q\))))) # 
-- (!\gpmc_driver|gpmc_data_out[0]~48_combout\ & (((\gpmc_driver|gpmc_data_out~306_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_data_out~308_combout\,
	datab => \gpmc_driver|gpmc_data_out[0]~48_combout\,
	datac => \gpmc_driver|ram[3][14]~q\,
	datad => \gpmc_driver|gpmc_data_out~306_combout\,
	combout => \gpmc_driver|gpmc_data_out~309_combout\);

-- Location: LCCOMB_X48_Y31_N22
\gpmc_driver|gpmc_data_out~354\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~354_combout\ = (\gpmc_driver|gpmc_data_out~309_combout\ & ((\gpmc_driver|gpmc_addr_in\(1)) # ((\gpmc_driver|gpmc_addr_in\(3)) # (\gpmc_driver|gpmc_addr_in\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(1),
	datab => \gpmc_driver|gpmc_addr_in\(3),
	datac => \gpmc_driver|gpmc_addr_in\(2),
	datad => \gpmc_driver|gpmc_data_out~309_combout\,
	combout => \gpmc_driver|gpmc_data_out~354_combout\);

-- Location: LCCOMB_X46_Y29_N8
\gpmc_driver|gpmc_data_out[14]~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out[14]~14_combout\ = (\gpmc_driver|gpmc_data_out[0]~58_combout\ & (\gpmc_driver|gpmc_data_out~311_combout\)) # (!\gpmc_driver|gpmc_data_out[0]~58_combout\ & ((\gpmc_driver|gpmc_data_out~354_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_data_out~311_combout\,
	datab => \gpmc_driver|gpmc_data_out[0]~58_combout\,
	datad => \gpmc_driver|gpmc_data_out~354_combout\,
	combout => \gpmc_driver|gpmc_data_out[14]~14_combout\);

-- Location: LCCOMB_X48_Y29_N4
\gpmc_driver|ram[22][14]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[22][14]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(14)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gpmc_driver|gpmc_data_in\(14),
	combout => \gpmc_driver|ram[22][14]~feeder_combout\);

-- Location: FF_X48_Y29_N5
\gpmc_driver|ram[22][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[22][14]~feeder_combout\,
	ena => \gpmc_driver|Decoder0~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[22][14]~q\);

-- Location: FF_X48_Y29_N27
\gpmc_driver|ram[18][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(14),
	sload => VCC,
	ena => \gpmc_driver|Decoder0~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[18][14]~q\);

-- Location: LCCOMB_X48_Y29_N26
\gpmc_driver|gpmc_data_out~312\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~312_combout\ = (\gpmc_driver|gpmc_addr_in\(2) & ((\gpmc_driver|ram[22][14]~q\) # ((\gpmc_driver|gpmc_addr_in\(3))))) # (!\gpmc_driver|gpmc_addr_in\(2) & (((\gpmc_driver|ram[18][14]~q\ & !\gpmc_driver|gpmc_addr_in\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(2),
	datab => \gpmc_driver|ram[22][14]~q\,
	datac => \gpmc_driver|ram[18][14]~q\,
	datad => \gpmc_driver|gpmc_addr_in\(3),
	combout => \gpmc_driver|gpmc_data_out~312_combout\);

-- Location: LCCOMB_X49_Y29_N24
\gpmc_driver|ram[26][14]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[26][14]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(14)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gpmc_driver|gpmc_data_in\(14),
	combout => \gpmc_driver|ram[26][14]~feeder_combout\);

-- Location: FF_X49_Y29_N25
\gpmc_driver|ram[26][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[26][14]~feeder_combout\,
	ena => \gpmc_driver|Decoder0~57_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[26][14]~q\);

-- Location: FF_X49_Y29_N11
\gpmc_driver|ram[30][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(14),
	sload => VCC,
	ena => \gpmc_driver|Decoder0~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[30][14]~q\);

-- Location: LCCOMB_X49_Y29_N10
\gpmc_driver|gpmc_data_out~313\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~313_combout\ = (\gpmc_driver|gpmc_data_out~312_combout\ & (((\gpmc_driver|ram[30][14]~q\) # (!\gpmc_driver|gpmc_addr_in\(3))))) # (!\gpmc_driver|gpmc_data_out~312_combout\ & (\gpmc_driver|ram[26][14]~q\ & 
-- ((\gpmc_driver|gpmc_addr_in\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_data_out~312_combout\,
	datab => \gpmc_driver|ram[26][14]~q\,
	datac => \gpmc_driver|ram[30][14]~q\,
	datad => \gpmc_driver|gpmc_addr_in\(3),
	combout => \gpmc_driver|gpmc_data_out~313_combout\);

-- Location: LCCOMB_X49_Y32_N12
\gpmc_driver|ram[23][14]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[23][14]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(14)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gpmc_driver|gpmc_data_in\(14),
	combout => \gpmc_driver|ram[23][14]~feeder_combout\);

-- Location: FF_X49_Y32_N13
\gpmc_driver|ram[23][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[23][14]~feeder_combout\,
	ena => \gpmc_driver|Decoder0~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[23][14]~q\);

-- Location: FF_X49_Y32_N15
\gpmc_driver|ram[31][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(14),
	sload => VCC,
	ena => \gpmc_driver|Decoder0~53_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[31][14]~q\);

-- Location: LCCOMB_X48_Y32_N20
\gpmc_driver|ram[27][14]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[27][14]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(14)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gpmc_driver|gpmc_data_in\(14),
	combout => \gpmc_driver|ram[27][14]~feeder_combout\);

-- Location: FF_X48_Y32_N21
\gpmc_driver|ram[27][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[27][14]~feeder_combout\,
	ena => \gpmc_driver|Decoder0~61_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[27][14]~q\);

-- Location: FF_X48_Y32_N19
\gpmc_driver|ram[19][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(14),
	sload => VCC,
	ena => \gpmc_driver|Decoder0~62_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[19][14]~q\);

-- Location: LCCOMB_X48_Y32_N18
\gpmc_driver|gpmc_data_out~319\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~319_combout\ = (\gpmc_driver|gpmc_addr_in\(2) & (((\gpmc_driver|gpmc_addr_in\(3))))) # (!\gpmc_driver|gpmc_addr_in\(2) & ((\gpmc_driver|gpmc_addr_in\(3) & (\gpmc_driver|ram[27][14]~q\)) # (!\gpmc_driver|gpmc_addr_in\(3) & 
-- ((\gpmc_driver|ram[19][14]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|ram[27][14]~q\,
	datab => \gpmc_driver|gpmc_addr_in\(2),
	datac => \gpmc_driver|ram[19][14]~q\,
	datad => \gpmc_driver|gpmc_addr_in\(3),
	combout => \gpmc_driver|gpmc_data_out~319_combout\);

-- Location: LCCOMB_X49_Y32_N14
\gpmc_driver|gpmc_data_out~320\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~320_combout\ = (\gpmc_driver|gpmc_addr_in\(2) & ((\gpmc_driver|gpmc_data_out~319_combout\ & ((\gpmc_driver|ram[31][14]~q\))) # (!\gpmc_driver|gpmc_data_out~319_combout\ & (\gpmc_driver|ram[23][14]~q\)))) # 
-- (!\gpmc_driver|gpmc_addr_in\(2) & (((\gpmc_driver|gpmc_data_out~319_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|ram[23][14]~q\,
	datab => \gpmc_driver|gpmc_addr_in\(2),
	datac => \gpmc_driver|ram[31][14]~q\,
	datad => \gpmc_driver|gpmc_data_out~319_combout\,
	combout => \gpmc_driver|gpmc_data_out~320_combout\);

-- Location: LCCOMB_X44_Y31_N30
\gpmc_driver|ram[24][14]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[24][14]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(14)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gpmc_driver|gpmc_data_in\(14),
	combout => \gpmc_driver|ram[24][14]~feeder_combout\);

-- Location: FF_X44_Y31_N31
\gpmc_driver|ram[24][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[24][14]~feeder_combout\,
	ena => \gpmc_driver|Decoder0~59_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[24][14]~q\);

-- Location: FF_X45_Y31_N9
\gpmc_driver|ram[28][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(14),
	sload => VCC,
	ena => \gpmc_driver|Decoder0~51_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[28][14]~q\);

-- Location: LCCOMB_X44_Y30_N8
\gpmc_driver|ram[20][14]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[20][14]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(14)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gpmc_driver|gpmc_data_in\(14),
	combout => \gpmc_driver|ram[20][14]~feeder_combout\);

-- Location: FF_X44_Y30_N9
\gpmc_driver|ram[20][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[20][14]~feeder_combout\,
	ena => \gpmc_driver|Decoder0~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[20][14]~q\);

-- Location: FF_X44_Y30_N23
\gpmc_driver|ram[16][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(14),
	sload => VCC,
	ena => \gpmc_driver|Decoder0~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[16][14]~q\);

-- Location: LCCOMB_X44_Y30_N22
\gpmc_driver|gpmc_data_out~316\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~316_combout\ = (\gpmc_driver|gpmc_addr_in\(3) & (((\gpmc_driver|gpmc_addr_in\(2))))) # (!\gpmc_driver|gpmc_addr_in\(3) & ((\gpmc_driver|gpmc_addr_in\(2) & (\gpmc_driver|ram[20][14]~q\)) # (!\gpmc_driver|gpmc_addr_in\(2) & 
-- ((\gpmc_driver|ram[16][14]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|ram[20][14]~q\,
	datab => \gpmc_driver|gpmc_addr_in\(3),
	datac => \gpmc_driver|ram[16][14]~q\,
	datad => \gpmc_driver|gpmc_addr_in\(2),
	combout => \gpmc_driver|gpmc_data_out~316_combout\);

-- Location: LCCOMB_X45_Y31_N8
\gpmc_driver|gpmc_data_out~317\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~317_combout\ = (\gpmc_driver|gpmc_addr_in\(3) & ((\gpmc_driver|gpmc_data_out~316_combout\ & ((\gpmc_driver|ram[28][14]~q\))) # (!\gpmc_driver|gpmc_data_out~316_combout\ & (\gpmc_driver|ram[24][14]~q\)))) # 
-- (!\gpmc_driver|gpmc_addr_in\(3) & (((\gpmc_driver|gpmc_data_out~316_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(3),
	datab => \gpmc_driver|ram[24][14]~q\,
	datac => \gpmc_driver|ram[28][14]~q\,
	datad => \gpmc_driver|gpmc_data_out~316_combout\,
	combout => \gpmc_driver|gpmc_data_out~317_combout\);

-- Location: LCCOMB_X52_Y31_N24
\gpmc_driver|ram[21][14]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[21][14]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(14)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gpmc_driver|gpmc_data_in\(14),
	combout => \gpmc_driver|ram[21][14]~feeder_combout\);

-- Location: FF_X52_Y31_N25
\gpmc_driver|ram[21][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[21][14]~feeder_combout\,
	ena => \gpmc_driver|Decoder0~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[21][14]~q\);

-- Location: FF_X52_Y31_N3
\gpmc_driver|ram[29][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(14),
	sload => VCC,
	ena => \gpmc_driver|Decoder0~47_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[29][14]~q\);

-- Location: LCCOMB_X53_Y31_N24
\gpmc_driver|ram[25][14]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[25][14]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(14)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gpmc_driver|gpmc_data_in\(14),
	combout => \gpmc_driver|ram[25][14]~feeder_combout\);

-- Location: FF_X53_Y31_N25
\gpmc_driver|ram[25][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[25][14]~feeder_combout\,
	ena => \gpmc_driver|Decoder0~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[25][14]~q\);

-- Location: FF_X53_Y31_N27
\gpmc_driver|ram[17][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(14),
	sload => VCC,
	ena => \gpmc_driver|Decoder0~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[17][14]~q\);

-- Location: LCCOMB_X53_Y31_N26
\gpmc_driver|gpmc_data_out~314\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~314_combout\ = (\gpmc_driver|gpmc_addr_in\(3) & ((\gpmc_driver|ram[25][14]~q\) # ((\gpmc_driver|gpmc_addr_in\(2))))) # (!\gpmc_driver|gpmc_addr_in\(3) & (((\gpmc_driver|ram[17][14]~q\ & !\gpmc_driver|gpmc_addr_in\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(3),
	datab => \gpmc_driver|ram[25][14]~q\,
	datac => \gpmc_driver|ram[17][14]~q\,
	datad => \gpmc_driver|gpmc_addr_in\(2),
	combout => \gpmc_driver|gpmc_data_out~314_combout\);

-- Location: LCCOMB_X52_Y31_N2
\gpmc_driver|gpmc_data_out~315\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~315_combout\ = (\gpmc_driver|gpmc_addr_in\(2) & ((\gpmc_driver|gpmc_data_out~314_combout\ & ((\gpmc_driver|ram[29][14]~q\))) # (!\gpmc_driver|gpmc_data_out~314_combout\ & (\gpmc_driver|ram[21][14]~q\)))) # 
-- (!\gpmc_driver|gpmc_addr_in\(2) & (((\gpmc_driver|gpmc_data_out~314_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(2),
	datab => \gpmc_driver|ram[21][14]~q\,
	datac => \gpmc_driver|ram[29][14]~q\,
	datad => \gpmc_driver|gpmc_data_out~314_combout\,
	combout => \gpmc_driver|gpmc_data_out~315_combout\);

-- Location: LCCOMB_X46_Y29_N28
\gpmc_driver|gpmc_data_out~318\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~318_combout\ = (\gpmc_driver|gpmc_addr_in\(0) & ((\gpmc_driver|gpmc_addr_in\(1)) # ((\gpmc_driver|gpmc_data_out~315_combout\)))) # (!\gpmc_driver|gpmc_addr_in\(0) & (!\gpmc_driver|gpmc_addr_in\(1) & 
-- (\gpmc_driver|gpmc_data_out~317_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(0),
	datab => \gpmc_driver|gpmc_addr_in\(1),
	datac => \gpmc_driver|gpmc_data_out~317_combout\,
	datad => \gpmc_driver|gpmc_data_out~315_combout\,
	combout => \gpmc_driver|gpmc_data_out~318_combout\);

-- Location: LCCOMB_X46_Y29_N14
\gpmc_driver|gpmc_data_out~321\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~321_combout\ = (\gpmc_driver|gpmc_addr_in\(1) & ((\gpmc_driver|gpmc_data_out~318_combout\ & ((\gpmc_driver|gpmc_data_out~320_combout\))) # (!\gpmc_driver|gpmc_data_out~318_combout\ & (\gpmc_driver|gpmc_data_out~313_combout\)))) 
-- # (!\gpmc_driver|gpmc_addr_in\(1) & (((\gpmc_driver|gpmc_data_out~318_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_data_out~313_combout\,
	datab => \gpmc_driver|gpmc_addr_in\(1),
	datac => \gpmc_driver|gpmc_data_out~320_combout\,
	datad => \gpmc_driver|gpmc_data_out~318_combout\,
	combout => \gpmc_driver|gpmc_data_out~321_combout\);

-- Location: FF_X46_Y29_N9
\gpmc_driver|gpmc_data_out[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|gpmc_data_out[14]~14_combout\,
	asdata => \gpmc_driver|gpmc_data_out~321_combout\,
	sclr => \gpmc_driver|LessThan0~1_combout\,
	sload => \gpmc_driver|gpmc_addr_in\(4),
	ena => \gpmc_driver|gpmc_data_out[0]~69_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|gpmc_data_out\(14));

-- Location: IOIBUF_X45_Y43_N15
\GPMC_DATA[15]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPMC_DATA(15),
	o => \GPMC_DATA[15]~input_o\);

-- Location: LCCOMB_X45_Y32_N30
\gpmc_driver|gpmc_data_in[15]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_in[15]~feeder_combout\ = \GPMC_DATA[15]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \GPMC_DATA[15]~input_o\,
	combout => \gpmc_driver|gpmc_data_in[15]~feeder_combout\);

-- Location: FF_X45_Y32_N31
\gpmc_driver|gpmc_data_in[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|gpmc_data_in[15]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|gpmc_data_in\(15));

-- Location: LCCOMB_X44_Y29_N20
\gpmc_driver|ram[13][15]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[13][15]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(15)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gpmc_driver|gpmc_data_in\(15),
	combout => \gpmc_driver|ram[13][15]~feeder_combout\);

-- Location: FF_X44_Y29_N21
\gpmc_driver|ram[13][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[13][15]~feeder_combout\,
	ena => \gpmc_driver|Decoder0~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[13][15]~q\);

-- Location: FF_X45_Y29_N23
\gpmc_driver|ram[15][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(15),
	sload => VCC,
	ena => \gpmc_driver|Decoder0~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[15][15]~q\);

-- Location: LCCOMB_X45_Y29_N28
\gpmc_driver|ram[14][15]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[14][15]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(15)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gpmc_driver|gpmc_data_in\(15),
	combout => \gpmc_driver|ram[14][15]~feeder_combout\);

-- Location: FF_X45_Y29_N29
\gpmc_driver|ram[14][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[14][15]~feeder_combout\,
	ena => \gpmc_driver|Decoder0~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[14][15]~q\);

-- Location: FF_X44_Y29_N15
\gpmc_driver|ram[12][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(15),
	sload => VCC,
	ena => \gpmc_driver|Decoder0~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[12][15]~q\);

-- Location: LCCOMB_X44_Y29_N14
\gpmc_driver|gpmc_data_out~328\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~328_combout\ = (\gpmc_driver|gpmc_addr_in\(0) & (((\gpmc_driver|gpmc_addr_in\(1))))) # (!\gpmc_driver|gpmc_addr_in\(0) & ((\gpmc_driver|gpmc_addr_in\(1) & (\gpmc_driver|ram[14][15]~q\)) # (!\gpmc_driver|gpmc_addr_in\(1) & 
-- ((\gpmc_driver|ram[12][15]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(0),
	datab => \gpmc_driver|ram[14][15]~q\,
	datac => \gpmc_driver|ram[12][15]~q\,
	datad => \gpmc_driver|gpmc_addr_in\(1),
	combout => \gpmc_driver|gpmc_data_out~328_combout\);

-- Location: LCCOMB_X45_Y29_N22
\gpmc_driver|gpmc_data_out~329\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~329_combout\ = (\gpmc_driver|gpmc_addr_in\(0) & ((\gpmc_driver|gpmc_data_out~328_combout\ & ((\gpmc_driver|ram[15][15]~q\))) # (!\gpmc_driver|gpmc_data_out~328_combout\ & (\gpmc_driver|ram[13][15]~q\)))) # 
-- (!\gpmc_driver|gpmc_addr_in\(0) & (((\gpmc_driver|gpmc_data_out~328_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(0),
	datab => \gpmc_driver|ram[13][15]~q\,
	datac => \gpmc_driver|ram[15][15]~q\,
	datad => \gpmc_driver|gpmc_data_out~328_combout\,
	combout => \gpmc_driver|gpmc_data_out~329_combout\);

-- Location: LCCOMB_X46_Y31_N30
\gpmc_driver|ram[7][15]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[7][15]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(15)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gpmc_driver|gpmc_data_in\(15),
	combout => \gpmc_driver|ram[7][15]~feeder_combout\);

-- Location: FF_X46_Y31_N31
\gpmc_driver|ram[7][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[7][15]~feeder_combout\,
	ena => \gpmc_driver|Decoder0~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[7][15]~q\);

-- Location: FF_X46_Y31_N1
\gpmc_driver|ram[6][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(15),
	sload => VCC,
	ena => \gpmc_driver|Decoder0~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[6][15]~q\);

-- Location: LCCOMB_X50_Y30_N12
\gpmc_driver|ram[5][15]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[5][15]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(15)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gpmc_driver|gpmc_data_in\(15),
	combout => \gpmc_driver|ram[5][15]~feeder_combout\);

-- Location: FF_X50_Y30_N13
\gpmc_driver|ram[5][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[5][15]~feeder_combout\,
	ena => \gpmc_driver|Decoder0~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[5][15]~q\);

-- Location: FF_X46_Y30_N13
\gpmc_driver|ram[4][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(15),
	sload => VCC,
	ena => \gpmc_driver|Decoder0~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[4][15]~q\);

-- Location: LCCOMB_X46_Y30_N12
\gpmc_driver|gpmc_data_out~322\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~322_combout\ = (\gpmc_driver|gpmc_addr_in\(1) & (((\gpmc_driver|gpmc_addr_in\(0))))) # (!\gpmc_driver|gpmc_addr_in\(1) & ((\gpmc_driver|gpmc_addr_in\(0) & (\gpmc_driver|ram[5][15]~q\)) # (!\gpmc_driver|gpmc_addr_in\(0) & 
-- ((\gpmc_driver|ram[4][15]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(1),
	datab => \gpmc_driver|ram[5][15]~q\,
	datac => \gpmc_driver|ram[4][15]~q\,
	datad => \gpmc_driver|gpmc_addr_in\(0),
	combout => \gpmc_driver|gpmc_data_out~322_combout\);

-- Location: LCCOMB_X46_Y31_N0
\gpmc_driver|gpmc_data_out~323\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~323_combout\ = (\gpmc_driver|gpmc_addr_in\(1) & ((\gpmc_driver|gpmc_data_out~322_combout\ & (\gpmc_driver|ram[7][15]~q\)) # (!\gpmc_driver|gpmc_data_out~322_combout\ & ((\gpmc_driver|ram[6][15]~q\))))) # 
-- (!\gpmc_driver|gpmc_addr_in\(1) & (((\gpmc_driver|gpmc_data_out~322_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|ram[7][15]~q\,
	datab => \gpmc_driver|gpmc_addr_in\(1),
	datac => \gpmc_driver|ram[6][15]~q\,
	datad => \gpmc_driver|gpmc_data_out~322_combout\,
	combout => \gpmc_driver|gpmc_data_out~323_combout\);

-- Location: LCCOMB_X45_Y28_N26
\gpmc_driver|ram[9][15]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[9][15]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(15)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gpmc_driver|gpmc_data_in\(15),
	combout => \gpmc_driver|ram[9][15]~feeder_combout\);

-- Location: FF_X45_Y28_N27
\gpmc_driver|ram[9][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[9][15]~feeder_combout\,
	ena => \gpmc_driver|Decoder0~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[9][15]~q\);

-- Location: FF_X50_Y31_N15
\gpmc_driver|ram[11][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(15),
	sload => VCC,
	ena => \gpmc_driver|Decoder0~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[11][15]~q\);

-- Location: FF_X50_Y31_N13
\gpmc_driver|ram[8][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(15),
	sload => VCC,
	ena => \gpmc_driver|Decoder0~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[8][15]~q\);

-- Location: LCCOMB_X46_Y28_N22
\gpmc_driver|ram[10][15]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[10][15]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(15)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gpmc_driver|gpmc_data_in\(15),
	combout => \gpmc_driver|ram[10][15]~feeder_combout\);

-- Location: FF_X46_Y28_N23
\gpmc_driver|ram[10][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[10][15]~feeder_combout\,
	ena => \gpmc_driver|Decoder0~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[10][15]~q\);

-- Location: LCCOMB_X50_Y31_N12
\gpmc_driver|gpmc_data_out~325\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~325_combout\ = (\gpmc_driver|gpmc_addr_in\(0) & (\gpmc_driver|gpmc_addr_in\(1))) # (!\gpmc_driver|gpmc_addr_in\(0) & ((\gpmc_driver|gpmc_addr_in\(1) & ((\gpmc_driver|ram[10][15]~q\))) # (!\gpmc_driver|gpmc_addr_in\(1) & 
-- (\gpmc_driver|ram[8][15]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(0),
	datab => \gpmc_driver|gpmc_addr_in\(1),
	datac => \gpmc_driver|ram[8][15]~q\,
	datad => \gpmc_driver|ram[10][15]~q\,
	combout => \gpmc_driver|gpmc_data_out~325_combout\);

-- Location: LCCOMB_X50_Y31_N14
\gpmc_driver|gpmc_data_out~326\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~326_combout\ = (\gpmc_driver|gpmc_addr_in\(0) & ((\gpmc_driver|gpmc_data_out~325_combout\ & ((\gpmc_driver|ram[11][15]~q\))) # (!\gpmc_driver|gpmc_data_out~325_combout\ & (\gpmc_driver|ram[9][15]~q\)))) # 
-- (!\gpmc_driver|gpmc_addr_in\(0) & (((\gpmc_driver|gpmc_data_out~325_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(0),
	datab => \gpmc_driver|ram[9][15]~q\,
	datac => \gpmc_driver|ram[11][15]~q\,
	datad => \gpmc_driver|gpmc_data_out~325_combout\,
	combout => \gpmc_driver|gpmc_data_out~326_combout\);

-- Location: LCCOMB_X52_Y28_N24
\gpmc_driver|ram[3][15]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[3][15]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(15)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gpmc_driver|gpmc_data_in\(15),
	combout => \gpmc_driver|ram[3][15]~feeder_combout\);

-- Location: FF_X52_Y28_N25
\gpmc_driver|ram[3][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[3][15]~feeder_combout\,
	ena => \gpmc_driver|Decoder0~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[3][15]~q\);

-- Location: FF_X52_Y28_N31
\gpmc_driver|ram[2][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(15),
	sload => VCC,
	ena => \gpmc_driver|Decoder0~55_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[2][15]~q\);

-- Location: LCCOMB_X52_Y28_N30
\gpmc_driver|gpmc_data_out~324\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~324_combout\ = (\gpmc_driver|gpmc_data_out[0]~51_combout\ & (((\gpmc_driver|gpmc_data_out[0]~48_combout\)))) # (!\gpmc_driver|gpmc_data_out[0]~51_combout\ & ((\gpmc_driver|gpmc_data_out[0]~48_combout\ & 
-- (\gpmc_driver|ram[3][15]~q\)) # (!\gpmc_driver|gpmc_data_out[0]~48_combout\ & ((\gpmc_driver|ram[2][15]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_data_out[0]~51_combout\,
	datab => \gpmc_driver|ram[3][15]~q\,
	datac => \gpmc_driver|ram[2][15]~q\,
	datad => \gpmc_driver|gpmc_data_out[0]~48_combout\,
	combout => \gpmc_driver|gpmc_data_out~324_combout\);

-- Location: LCCOMB_X46_Y32_N28
\gpmc_driver|gpmc_data_out~327\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~327_combout\ = (\gpmc_driver|gpmc_data_out[0]~51_combout\ & ((\gpmc_driver|gpmc_data_out~324_combout\ & ((\gpmc_driver|gpmc_data_out~326_combout\))) # (!\gpmc_driver|gpmc_data_out~324_combout\ & 
-- (\gpmc_driver|gpmc_data_out~323_combout\)))) # (!\gpmc_driver|gpmc_data_out[0]~51_combout\ & (((\gpmc_driver|gpmc_data_out~324_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_data_out[0]~51_combout\,
	datab => \gpmc_driver|gpmc_data_out~323_combout\,
	datac => \gpmc_driver|gpmc_data_out~326_combout\,
	datad => \gpmc_driver|gpmc_data_out~324_combout\,
	combout => \gpmc_driver|gpmc_data_out~327_combout\);

-- Location: LCCOMB_X46_Y32_N2
\gpmc_driver|gpmc_data_out~355\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~355_combout\ = (\gpmc_driver|gpmc_data_out~327_combout\ & ((\gpmc_driver|gpmc_addr_in\(1)) # ((\gpmc_driver|gpmc_addr_in\(3)) # (\gpmc_driver|gpmc_addr_in\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(1),
	datab => \gpmc_driver|gpmc_addr_in\(3),
	datac => \gpmc_driver|gpmc_addr_in\(2),
	datad => \gpmc_driver|gpmc_data_out~327_combout\,
	combout => \gpmc_driver|gpmc_data_out~355_combout\);

-- Location: LCCOMB_X46_Y32_N0
\gpmc_driver|gpmc_data_out[15]~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out[15]~15_combout\ = (\gpmc_driver|gpmc_data_out[0]~58_combout\ & (\gpmc_driver|gpmc_data_out~329_combout\)) # (!\gpmc_driver|gpmc_data_out[0]~58_combout\ & ((\gpmc_driver|gpmc_data_out~355_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_data_out~329_combout\,
	datab => \gpmc_driver|gpmc_data_out[0]~58_combout\,
	datad => \gpmc_driver|gpmc_data_out~355_combout\,
	combout => \gpmc_driver|gpmc_data_out[15]~15_combout\);

-- Location: LCCOMB_X49_Y32_N0
\gpmc_driver|ram[23][15]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[23][15]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(15)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gpmc_driver|gpmc_data_in\(15),
	combout => \gpmc_driver|ram[23][15]~feeder_combout\);

-- Location: FF_X49_Y32_N1
\gpmc_driver|ram[23][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[23][15]~feeder_combout\,
	ena => \gpmc_driver|Decoder0~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[23][15]~q\);

-- Location: LCCOMB_X49_Y32_N2
\gpmc_driver|ram[31][15]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[31][15]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(15)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gpmc_driver|gpmc_data_in\(15),
	combout => \gpmc_driver|ram[31][15]~feeder_combout\);

-- Location: FF_X49_Y32_N3
\gpmc_driver|ram[31][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[31][15]~feeder_combout\,
	ena => \gpmc_driver|Decoder0~53_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[31][15]~q\);

-- Location: LCCOMB_X48_Y32_N0
\gpmc_driver|ram[27][15]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[27][15]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(15)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gpmc_driver|gpmc_data_in\(15),
	combout => \gpmc_driver|ram[27][15]~feeder_combout\);

-- Location: FF_X48_Y32_N1
\gpmc_driver|ram[27][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[27][15]~feeder_combout\,
	ena => \gpmc_driver|Decoder0~61_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[27][15]~q\);

-- Location: FF_X48_Y32_N27
\gpmc_driver|ram[19][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(15),
	sload => VCC,
	ena => \gpmc_driver|Decoder0~62_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[19][15]~q\);

-- Location: LCCOMB_X48_Y32_N26
\gpmc_driver|gpmc_data_out~337\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~337_combout\ = (\gpmc_driver|gpmc_addr_in\(2) & (((\gpmc_driver|gpmc_addr_in\(3))))) # (!\gpmc_driver|gpmc_addr_in\(2) & ((\gpmc_driver|gpmc_addr_in\(3) & (\gpmc_driver|ram[27][15]~q\)) # (!\gpmc_driver|gpmc_addr_in\(3) & 
-- ((\gpmc_driver|ram[19][15]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|ram[27][15]~q\,
	datab => \gpmc_driver|gpmc_addr_in\(2),
	datac => \gpmc_driver|ram[19][15]~q\,
	datad => \gpmc_driver|gpmc_addr_in\(3),
	combout => \gpmc_driver|gpmc_data_out~337_combout\);

-- Location: LCCOMB_X45_Y32_N18
\gpmc_driver|gpmc_data_out~338\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~338_combout\ = (\gpmc_driver|gpmc_addr_in\(2) & ((\gpmc_driver|gpmc_data_out~337_combout\ & ((\gpmc_driver|ram[31][15]~q\))) # (!\gpmc_driver|gpmc_data_out~337_combout\ & (\gpmc_driver|ram[23][15]~q\)))) # 
-- (!\gpmc_driver|gpmc_addr_in\(2) & (((\gpmc_driver|gpmc_data_out~337_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(2),
	datab => \gpmc_driver|ram[23][15]~q\,
	datac => \gpmc_driver|ram[31][15]~q\,
	datad => \gpmc_driver|gpmc_data_out~337_combout\,
	combout => \gpmc_driver|gpmc_data_out~338_combout\);

-- Location: LCCOMB_X52_Y31_N20
\gpmc_driver|ram[21][15]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[21][15]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(15)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gpmc_driver|gpmc_data_in\(15),
	combout => \gpmc_driver|ram[21][15]~feeder_combout\);

-- Location: FF_X52_Y31_N21
\gpmc_driver|ram[21][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[21][15]~feeder_combout\,
	ena => \gpmc_driver|Decoder0~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[21][15]~q\);

-- Location: FF_X52_Y31_N27
\gpmc_driver|ram[29][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(15),
	sload => VCC,
	ena => \gpmc_driver|Decoder0~47_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[29][15]~q\);

-- Location: LCCOMB_X53_Y31_N8
\gpmc_driver|ram[25][15]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[25][15]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(15)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gpmc_driver|gpmc_data_in\(15),
	combout => \gpmc_driver|ram[25][15]~feeder_combout\);

-- Location: FF_X53_Y31_N9
\gpmc_driver|ram[25][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[25][15]~feeder_combout\,
	ena => \gpmc_driver|Decoder0~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[25][15]~q\);

-- Location: FF_X53_Y31_N23
\gpmc_driver|ram[17][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(15),
	sload => VCC,
	ena => \gpmc_driver|Decoder0~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[17][15]~q\);

-- Location: LCCOMB_X53_Y31_N22
\gpmc_driver|gpmc_data_out~330\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~330_combout\ = (\gpmc_driver|gpmc_addr_in\(3) & ((\gpmc_driver|ram[25][15]~q\) # ((\gpmc_driver|gpmc_addr_in\(2))))) # (!\gpmc_driver|gpmc_addr_in\(3) & (((\gpmc_driver|ram[17][15]~q\ & !\gpmc_driver|gpmc_addr_in\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(3),
	datab => \gpmc_driver|ram[25][15]~q\,
	datac => \gpmc_driver|ram[17][15]~q\,
	datad => \gpmc_driver|gpmc_addr_in\(2),
	combout => \gpmc_driver|gpmc_data_out~330_combout\);

-- Location: LCCOMB_X52_Y31_N26
\gpmc_driver|gpmc_data_out~331\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~331_combout\ = (\gpmc_driver|gpmc_addr_in\(2) & ((\gpmc_driver|gpmc_data_out~330_combout\ & ((\gpmc_driver|ram[29][15]~q\))) # (!\gpmc_driver|gpmc_data_out~330_combout\ & (\gpmc_driver|ram[21][15]~q\)))) # 
-- (!\gpmc_driver|gpmc_addr_in\(2) & (((\gpmc_driver|gpmc_data_out~330_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(2),
	datab => \gpmc_driver|ram[21][15]~q\,
	datac => \gpmc_driver|ram[29][15]~q\,
	datad => \gpmc_driver|gpmc_data_out~330_combout\,
	combout => \gpmc_driver|gpmc_data_out~331_combout\);

-- Location: LCCOMB_X49_Y29_N12
\gpmc_driver|ram[26][15]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[26][15]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(15)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gpmc_driver|gpmc_data_in\(15),
	combout => \gpmc_driver|ram[26][15]~feeder_combout\);

-- Location: FF_X49_Y29_N13
\gpmc_driver|ram[26][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[26][15]~feeder_combout\,
	ena => \gpmc_driver|Decoder0~57_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[26][15]~q\);

-- Location: FF_X49_Y29_N15
\gpmc_driver|ram[30][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(15),
	sload => VCC,
	ena => \gpmc_driver|Decoder0~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[30][15]~q\);

-- Location: LCCOMB_X48_Y29_N12
\gpmc_driver|ram[22][15]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[22][15]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(15)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gpmc_driver|gpmc_data_in\(15),
	combout => \gpmc_driver|ram[22][15]~feeder_combout\);

-- Location: FF_X48_Y29_N13
\gpmc_driver|ram[22][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[22][15]~feeder_combout\,
	ena => \gpmc_driver|Decoder0~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[22][15]~q\);

-- Location: FF_X48_Y29_N3
\gpmc_driver|ram[18][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(15),
	sload => VCC,
	ena => \gpmc_driver|Decoder0~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[18][15]~q\);

-- Location: LCCOMB_X48_Y29_N2
\gpmc_driver|gpmc_data_out~332\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~332_combout\ = (\gpmc_driver|gpmc_addr_in\(2) & ((\gpmc_driver|ram[22][15]~q\) # ((\gpmc_driver|gpmc_addr_in\(3))))) # (!\gpmc_driver|gpmc_addr_in\(2) & (((\gpmc_driver|ram[18][15]~q\ & !\gpmc_driver|gpmc_addr_in\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(2),
	datab => \gpmc_driver|ram[22][15]~q\,
	datac => \gpmc_driver|ram[18][15]~q\,
	datad => \gpmc_driver|gpmc_addr_in\(3),
	combout => \gpmc_driver|gpmc_data_out~332_combout\);

-- Location: LCCOMB_X49_Y29_N14
\gpmc_driver|gpmc_data_out~333\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~333_combout\ = (\gpmc_driver|gpmc_addr_in\(3) & ((\gpmc_driver|gpmc_data_out~332_combout\ & ((\gpmc_driver|ram[30][15]~q\))) # (!\gpmc_driver|gpmc_data_out~332_combout\ & (\gpmc_driver|ram[26][15]~q\)))) # 
-- (!\gpmc_driver|gpmc_addr_in\(3) & (((\gpmc_driver|gpmc_data_out~332_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|ram[26][15]~q\,
	datab => \gpmc_driver|gpmc_addr_in\(3),
	datac => \gpmc_driver|ram[30][15]~q\,
	datad => \gpmc_driver|gpmc_data_out~332_combout\,
	combout => \gpmc_driver|gpmc_data_out~333_combout\);

-- Location: LCCOMB_X44_Y31_N20
\gpmc_driver|ram[24][15]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[24][15]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(15)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gpmc_driver|gpmc_data_in\(15),
	combout => \gpmc_driver|ram[24][15]~feeder_combout\);

-- Location: FF_X44_Y31_N21
\gpmc_driver|ram[24][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[24][15]~feeder_combout\,
	ena => \gpmc_driver|Decoder0~59_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[24][15]~q\);

-- Location: FF_X44_Y31_N15
\gpmc_driver|ram[28][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(15),
	sload => VCC,
	ena => \gpmc_driver|Decoder0~51_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[28][15]~q\);

-- Location: LCCOMB_X44_Y30_N16
\gpmc_driver|ram[20][15]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[20][15]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(15)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gpmc_driver|gpmc_data_in\(15),
	combout => \gpmc_driver|ram[20][15]~feeder_combout\);

-- Location: FF_X44_Y30_N17
\gpmc_driver|ram[20][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[20][15]~feeder_combout\,
	ena => \gpmc_driver|Decoder0~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[20][15]~q\);

-- Location: FF_X44_Y30_N7
\gpmc_driver|ram[16][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(15),
	sload => VCC,
	ena => \gpmc_driver|Decoder0~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[16][15]~q\);

-- Location: LCCOMB_X44_Y30_N6
\gpmc_driver|gpmc_data_out~334\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~334_combout\ = (\gpmc_driver|gpmc_addr_in\(3) & (((\gpmc_driver|gpmc_addr_in\(2))))) # (!\gpmc_driver|gpmc_addr_in\(3) & ((\gpmc_driver|gpmc_addr_in\(2) & (\gpmc_driver|ram[20][15]~q\)) # (!\gpmc_driver|gpmc_addr_in\(2) & 
-- ((\gpmc_driver|ram[16][15]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|ram[20][15]~q\,
	datab => \gpmc_driver|gpmc_addr_in\(3),
	datac => \gpmc_driver|ram[16][15]~q\,
	datad => \gpmc_driver|gpmc_addr_in\(2),
	combout => \gpmc_driver|gpmc_data_out~334_combout\);

-- Location: LCCOMB_X44_Y31_N14
\gpmc_driver|gpmc_data_out~335\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~335_combout\ = (\gpmc_driver|gpmc_addr_in\(3) & ((\gpmc_driver|gpmc_data_out~334_combout\ & ((\gpmc_driver|ram[28][15]~q\))) # (!\gpmc_driver|gpmc_data_out~334_combout\ & (\gpmc_driver|ram[24][15]~q\)))) # 
-- (!\gpmc_driver|gpmc_addr_in\(3) & (((\gpmc_driver|gpmc_data_out~334_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(3),
	datab => \gpmc_driver|ram[24][15]~q\,
	datac => \gpmc_driver|ram[28][15]~q\,
	datad => \gpmc_driver|gpmc_data_out~334_combout\,
	combout => \gpmc_driver|gpmc_data_out~335_combout\);

-- Location: LCCOMB_X46_Y32_N10
\gpmc_driver|gpmc_data_out~336\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~336_combout\ = (\gpmc_driver|gpmc_addr_in\(1) & ((\gpmc_driver|gpmc_addr_in\(0)) # ((\gpmc_driver|gpmc_data_out~333_combout\)))) # (!\gpmc_driver|gpmc_addr_in\(1) & (!\gpmc_driver|gpmc_addr_in\(0) & 
-- ((\gpmc_driver|gpmc_data_out~335_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(1),
	datab => \gpmc_driver|gpmc_addr_in\(0),
	datac => \gpmc_driver|gpmc_data_out~333_combout\,
	datad => \gpmc_driver|gpmc_data_out~335_combout\,
	combout => \gpmc_driver|gpmc_data_out~336_combout\);

-- Location: LCCOMB_X46_Y32_N4
\gpmc_driver|gpmc_data_out~339\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~339_combout\ = (\gpmc_driver|gpmc_addr_in\(0) & ((\gpmc_driver|gpmc_data_out~336_combout\ & (\gpmc_driver|gpmc_data_out~338_combout\)) # (!\gpmc_driver|gpmc_data_out~336_combout\ & ((\gpmc_driver|gpmc_data_out~331_combout\))))) 
-- # (!\gpmc_driver|gpmc_addr_in\(0) & (((\gpmc_driver|gpmc_data_out~336_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(0),
	datab => \gpmc_driver|gpmc_data_out~338_combout\,
	datac => \gpmc_driver|gpmc_data_out~331_combout\,
	datad => \gpmc_driver|gpmc_data_out~336_combout\,
	combout => \gpmc_driver|gpmc_data_out~339_combout\);

-- Location: FF_X46_Y32_N1
\gpmc_driver|gpmc_data_out[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|gpmc_data_out[15]~15_combout\,
	asdata => \gpmc_driver|gpmc_data_out~339_combout\,
	sclr => \gpmc_driver|LessThan0~1_combout\,
	sload => \gpmc_driver|gpmc_addr_in\(4),
	ena => \gpmc_driver|gpmc_data_out[0]~69_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|gpmc_data_out\(15));

-- Location: IOIBUF_X63_Y43_N29
\GPMC_FPGA_IRQ~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_GPMC_FPGA_IRQ,
	o => \GPMC_FPGA_IRQ~input_o\);

-- Location: IOIBUF_X20_Y43_N1
\GPMC_CLK~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_GPMC_CLK,
	o => \GPMC_CLK~input_o\);

GPMC_DATA(0) <= \GPMC_DATA[0]~output_o\;

GPMC_DATA(1) <= \GPMC_DATA[1]~output_o\;

GPMC_DATA(2) <= \GPMC_DATA[2]~output_o\;

GPMC_DATA(3) <= \GPMC_DATA[3]~output_o\;

GPMC_DATA(4) <= \GPMC_DATA[4]~output_o\;

GPMC_DATA(5) <= \GPMC_DATA[5]~output_o\;

GPMC_DATA(6) <= \GPMC_DATA[6]~output_o\;

GPMC_DATA(7) <= \GPMC_DATA[7]~output_o\;

GPMC_DATA(8) <= \GPMC_DATA[8]~output_o\;

GPMC_DATA(9) <= \GPMC_DATA[9]~output_o\;

GPMC_DATA(10) <= \GPMC_DATA[10]~output_o\;

GPMC_DATA(11) <= \GPMC_DATA[11]~output_o\;

GPMC_DATA(12) <= \GPMC_DATA[12]~output_o\;

GPMC_DATA(13) <= \GPMC_DATA[13]~output_o\;

GPMC_DATA(14) <= \GPMC_DATA[14]~output_o\;

GPMC_DATA(15) <= \GPMC_DATA[15]~output_o\;
END structure;


