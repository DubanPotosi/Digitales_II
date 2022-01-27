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
-- VERSION "Version 13.1.0 Build 162 10/23/2013 SJ Web Edition"

-- DATE "01/27/2022 02:54:08"

-- 
-- Device: Altera EP3C16F484C6 Package FBGA484
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

ENTITY 	Outs_16_Ports IS
    PORT (
	address : IN std_logic_vector(7 DOWNTO 0);
	data_in : IN std_logic_vector(7 DOWNTO 0);
	clock : IN std_logic;
	writen : IN std_logic;
	port_Out_00 : BUFFER std_logic_vector(7 DOWNTO 0);
	port_Out_01 : BUFFER std_logic_vector(7 DOWNTO 0);
	port_Out_02 : BUFFER std_logic_vector(7 DOWNTO 0);
	port_Out_03 : BUFFER std_logic_vector(7 DOWNTO 0);
	port_Out_04 : BUFFER std_logic_vector(7 DOWNTO 0);
	port_Out_05 : BUFFER std_logic_vector(7 DOWNTO 0);
	port_Out_06 : BUFFER std_logic_vector(7 DOWNTO 0);
	port_Out_07 : BUFFER std_logic_vector(7 DOWNTO 0);
	port_Out_08 : BUFFER std_logic_vector(7 DOWNTO 0);
	port_Out_09 : BUFFER std_logic_vector(7 DOWNTO 0);
	port_Out_10 : BUFFER std_logic_vector(7 DOWNTO 0);
	port_Out_11 : BUFFER std_logic_vector(7 DOWNTO 0);
	port_Out_12 : BUFFER std_logic_vector(7 DOWNTO 0);
	port_Out_13 : BUFFER std_logic_vector(7 DOWNTO 0);
	port_Out_14 : BUFFER std_logic_vector(7 DOWNTO 0);
	port_Out_15 : BUFFER std_logic_vector(7 DOWNTO 0);
	reset : IN std_logic
	);
END Outs_16_Ports;

-- Design Ports Information
-- port_Out_00[0]	=>  Location: PIN_W7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_Out_00[1]	=>  Location: PIN_AB3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_Out_00[2]	=>  Location: PIN_AB7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_Out_00[3]	=>  Location: PIN_V8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_Out_00[4]	=>  Location: PIN_U10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_Out_00[5]	=>  Location: PIN_AB5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_Out_00[6]	=>  Location: PIN_Y8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_Out_00[7]	=>  Location: PIN_AA7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_Out_01[0]	=>  Location: PIN_AA3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_Out_01[1]	=>  Location: PIN_Y7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_Out_01[2]	=>  Location: PIN_W8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_Out_01[3]	=>  Location: PIN_AA4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_Out_01[4]	=>  Location: PIN_V9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_Out_01[5]	=>  Location: PIN_W6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_Out_01[6]	=>  Location: PIN_AB4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_Out_01[7]	=>  Location: PIN_V7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_Out_02[0]	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_Out_02[1]	=>  Location: PIN_G3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_Out_02[2]	=>  Location: PIN_D2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_Out_02[3]	=>  Location: PIN_K8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_Out_02[4]	=>  Location: PIN_F1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_Out_02[5]	=>  Location: PIN_H6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_Out_02[6]	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_Out_02[7]	=>  Location: PIN_J3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_Out_03[0]	=>  Location: PIN_H2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_Out_03[1]	=>  Location: PIN_G4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_Out_03[2]	=>  Location: PIN_K7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_Out_03[3]	=>  Location: PIN_J4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_Out_03[4]	=>  Location: PIN_C1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_Out_03[5]	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_Out_03[6]	=>  Location: PIN_L8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_Out_03[7]	=>  Location: PIN_F2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_Out_04[0]	=>  Location: PIN_U12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_Out_04[1]	=>  Location: PIN_AA13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_Out_04[2]	=>  Location: PIN_V16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_Out_04[3]	=>  Location: PIN_U13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_Out_04[4]	=>  Location: PIN_AB13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_Out_04[5]	=>  Location: PIN_R14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_Out_04[6]	=>  Location: PIN_AA16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_Out_04[7]	=>  Location: PIN_AB8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_Out_05[0]	=>  Location: PIN_T14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_Out_05[1]	=>  Location: PIN_T15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_Out_05[2]	=>  Location: PIN_Y17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_Out_05[3]	=>  Location: PIN_T16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_Out_05[4]	=>  Location: PIN_AB16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_Out_05[5]	=>  Location: PIN_R13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_Out_05[6]	=>  Location: PIN_V14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_Out_05[7]	=>  Location: PIN_V15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_Out_06[0]	=>  Location: PIN_P5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_Out_06[1]	=>  Location: PIN_N1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_Out_06[2]	=>  Location: PIN_V2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_Out_06[3]	=>  Location: PIN_R1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_Out_06[4]	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_Out_06[5]	=>  Location: PIN_U1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_Out_06[6]	=>  Location: PIN_U2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_Out_06[7]	=>  Location: PIN_P4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_Out_07[0]	=>  Location: PIN_AA19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_Out_07[1]	=>  Location: PIN_Y10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_Out_07[2]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_Out_07[3]	=>  Location: PIN_W13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_Out_07[4]	=>  Location: PIN_AB14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_Out_07[5]	=>  Location: PIN_V12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_Out_07[6]	=>  Location: PIN_T12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_Out_07[7]	=>  Location: PIN_Y13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_Out_08[0]	=>  Location: PIN_N2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_Out_08[1]	=>  Location: PIN_P3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_Out_08[2]	=>  Location: PIN_M5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_Out_08[3]	=>  Location: PIN_P1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_Out_08[4]	=>  Location: PIN_N6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_Out_08[5]	=>  Location: PIN_R2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_Out_08[6]	=>  Location: PIN_P2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_Out_08[7]	=>  Location: PIN_N5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_Out_09[0]	=>  Location: PIN_V5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_Out_09[1]	=>  Location: PIN_R12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_Out_09[2]	=>  Location: PIN_R10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_Out_09[3]	=>  Location: PIN_T9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_Out_09[4]	=>  Location: PIN_Y3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_Out_09[5]	=>  Location: PIN_R8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_Out_09[6]	=>  Location: PIN_R11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_Out_09[7]	=>  Location: PIN_T7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_Out_10[0]	=>  Location: PIN_U11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_Out_10[1]	=>  Location: PIN_T11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_Out_10[2]	=>  Location: PIN_AB17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_Out_10[3]	=>  Location: PIN_V11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_Out_10[4]	=>  Location: PIN_AB10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_Out_10[5]	=>  Location: PIN_AA10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_Out_10[6]	=>  Location: PIN_T10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_Out_10[7]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_Out_11[0]	=>  Location: PIN_AA2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_Out_11[1]	=>  Location: PIN_P7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_Out_11[2]	=>  Location: PIN_R6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_Out_11[3]	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_Out_11[4]	=>  Location: PIN_M3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_Out_11[5]	=>  Location: PIN_V3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_Out_11[6]	=>  Location: PIN_T4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_Out_11[7]	=>  Location: PIN_W1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_Out_12[0]	=>  Location: PIN_W14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_Out_12[1]	=>  Location: PIN_AA9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_Out_12[2]	=>  Location: PIN_AA8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_Out_12[3]	=>  Location: PIN_W10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_Out_12[4]	=>  Location: PIN_AB9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_Out_12[5]	=>  Location: PIN_AB19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_Out_12[6]	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_Out_12[7]	=>  Location: PIN_W17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_Out_13[0]	=>  Location: PIN_P6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_Out_13[1]	=>  Location: PIN_R5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_Out_13[2]	=>  Location: PIN_N7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_Out_13[3]	=>  Location: PIN_T3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_Out_13[4]	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_Out_13[5]	=>  Location: PIN_W2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_Out_13[6]	=>  Location: PIN_V4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_Out_13[7]	=>  Location: PIN_AA1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_Out_14[0]	=>  Location: PIN_Y4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_Out_14[1]	=>  Location: PIN_R9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_Out_14[2]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_Out_14[3]	=>  Location: PIN_R7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_Out_14[4]	=>  Location: PIN_V6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_Out_14[5]	=>  Location: PIN_T8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_Out_14[6]	=>  Location: PIN_U8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_Out_14[7]	=>  Location: PIN_U7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_Out_15[0]	=>  Location: PIN_AA18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_Out_15[1]	=>  Location: PIN_W15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_Out_15[2]	=>  Location: PIN_R16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_Out_15[3]	=>  Location: PIN_V13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_Out_15[4]	=>  Location: PIN_AB20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_Out_15[5]	=>  Location: PIN_AA17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_Out_15[6]	=>  Location: PIN_R15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_Out_15[7]	=>  Location: PIN_AB18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[0]	=>  Location: PIN_M7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clock	=>  Location: PIN_G2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_G1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writen	=>  Location: PIN_C7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address[5]	=>  Location: PIN_B5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address[6]	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address[7]	=>  Location: PIN_G10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address[4]	=>  Location: PIN_G9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address[0]	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address[3]	=>  Location: PIN_V10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address[1]	=>  Location: PIN_AA5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address[2]	=>  Location: PIN_U9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[1]	=>  Location: PIN_Y6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[2]	=>  Location: PIN_T5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[3]	=>  Location: PIN_V1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[4]	=>  Location: PIN_P8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[5]	=>  Location: PIN_Y1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[6]	=>  Location: PIN_H1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[7]	=>  Location: PIN_J2,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Outs_16_Ports IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_address : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_data_in : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_clock : std_logic;
SIGNAL ww_writen : std_logic;
SIGNAL ww_port_Out_00 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_port_Out_01 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_port_Out_02 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_port_Out_03 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_port_Out_04 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_port_Out_05 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_port_Out_06 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_port_Out_07 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_port_Out_08 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_port_Out_09 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_port_Out_10 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_port_Out_11 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_port_Out_12 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_port_Out_13 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_port_Out_14 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_port_Out_15 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_reset : std_logic;
SIGNAL \clock~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \reset~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \port_Out_00[0]~output_o\ : std_logic;
SIGNAL \port_Out_00[1]~output_o\ : std_logic;
SIGNAL \port_Out_00[2]~output_o\ : std_logic;
SIGNAL \port_Out_00[3]~output_o\ : std_logic;
SIGNAL \port_Out_00[4]~output_o\ : std_logic;
SIGNAL \port_Out_00[5]~output_o\ : std_logic;
SIGNAL \port_Out_00[6]~output_o\ : std_logic;
SIGNAL \port_Out_00[7]~output_o\ : std_logic;
SIGNAL \port_Out_01[0]~output_o\ : std_logic;
SIGNAL \port_Out_01[1]~output_o\ : std_logic;
SIGNAL \port_Out_01[2]~output_o\ : std_logic;
SIGNAL \port_Out_01[3]~output_o\ : std_logic;
SIGNAL \port_Out_01[4]~output_o\ : std_logic;
SIGNAL \port_Out_01[5]~output_o\ : std_logic;
SIGNAL \port_Out_01[6]~output_o\ : std_logic;
SIGNAL \port_Out_01[7]~output_o\ : std_logic;
SIGNAL \port_Out_02[0]~output_o\ : std_logic;
SIGNAL \port_Out_02[1]~output_o\ : std_logic;
SIGNAL \port_Out_02[2]~output_o\ : std_logic;
SIGNAL \port_Out_02[3]~output_o\ : std_logic;
SIGNAL \port_Out_02[4]~output_o\ : std_logic;
SIGNAL \port_Out_02[5]~output_o\ : std_logic;
SIGNAL \port_Out_02[6]~output_o\ : std_logic;
SIGNAL \port_Out_02[7]~output_o\ : std_logic;
SIGNAL \port_Out_03[0]~output_o\ : std_logic;
SIGNAL \port_Out_03[1]~output_o\ : std_logic;
SIGNAL \port_Out_03[2]~output_o\ : std_logic;
SIGNAL \port_Out_03[3]~output_o\ : std_logic;
SIGNAL \port_Out_03[4]~output_o\ : std_logic;
SIGNAL \port_Out_03[5]~output_o\ : std_logic;
SIGNAL \port_Out_03[6]~output_o\ : std_logic;
SIGNAL \port_Out_03[7]~output_o\ : std_logic;
SIGNAL \port_Out_04[0]~output_o\ : std_logic;
SIGNAL \port_Out_04[1]~output_o\ : std_logic;
SIGNAL \port_Out_04[2]~output_o\ : std_logic;
SIGNAL \port_Out_04[3]~output_o\ : std_logic;
SIGNAL \port_Out_04[4]~output_o\ : std_logic;
SIGNAL \port_Out_04[5]~output_o\ : std_logic;
SIGNAL \port_Out_04[6]~output_o\ : std_logic;
SIGNAL \port_Out_04[7]~output_o\ : std_logic;
SIGNAL \port_Out_05[0]~output_o\ : std_logic;
SIGNAL \port_Out_05[1]~output_o\ : std_logic;
SIGNAL \port_Out_05[2]~output_o\ : std_logic;
SIGNAL \port_Out_05[3]~output_o\ : std_logic;
SIGNAL \port_Out_05[4]~output_o\ : std_logic;
SIGNAL \port_Out_05[5]~output_o\ : std_logic;
SIGNAL \port_Out_05[6]~output_o\ : std_logic;
SIGNAL \port_Out_05[7]~output_o\ : std_logic;
SIGNAL \port_Out_06[0]~output_o\ : std_logic;
SIGNAL \port_Out_06[1]~output_o\ : std_logic;
SIGNAL \port_Out_06[2]~output_o\ : std_logic;
SIGNAL \port_Out_06[3]~output_o\ : std_logic;
SIGNAL \port_Out_06[4]~output_o\ : std_logic;
SIGNAL \port_Out_06[5]~output_o\ : std_logic;
SIGNAL \port_Out_06[6]~output_o\ : std_logic;
SIGNAL \port_Out_06[7]~output_o\ : std_logic;
SIGNAL \port_Out_07[0]~output_o\ : std_logic;
SIGNAL \port_Out_07[1]~output_o\ : std_logic;
SIGNAL \port_Out_07[2]~output_o\ : std_logic;
SIGNAL \port_Out_07[3]~output_o\ : std_logic;
SIGNAL \port_Out_07[4]~output_o\ : std_logic;
SIGNAL \port_Out_07[5]~output_o\ : std_logic;
SIGNAL \port_Out_07[6]~output_o\ : std_logic;
SIGNAL \port_Out_07[7]~output_o\ : std_logic;
SIGNAL \port_Out_08[0]~output_o\ : std_logic;
SIGNAL \port_Out_08[1]~output_o\ : std_logic;
SIGNAL \port_Out_08[2]~output_o\ : std_logic;
SIGNAL \port_Out_08[3]~output_o\ : std_logic;
SIGNAL \port_Out_08[4]~output_o\ : std_logic;
SIGNAL \port_Out_08[5]~output_o\ : std_logic;
SIGNAL \port_Out_08[6]~output_o\ : std_logic;
SIGNAL \port_Out_08[7]~output_o\ : std_logic;
SIGNAL \port_Out_09[0]~output_o\ : std_logic;
SIGNAL \port_Out_09[1]~output_o\ : std_logic;
SIGNAL \port_Out_09[2]~output_o\ : std_logic;
SIGNAL \port_Out_09[3]~output_o\ : std_logic;
SIGNAL \port_Out_09[4]~output_o\ : std_logic;
SIGNAL \port_Out_09[5]~output_o\ : std_logic;
SIGNAL \port_Out_09[6]~output_o\ : std_logic;
SIGNAL \port_Out_09[7]~output_o\ : std_logic;
SIGNAL \port_Out_10[0]~output_o\ : std_logic;
SIGNAL \port_Out_10[1]~output_o\ : std_logic;
SIGNAL \port_Out_10[2]~output_o\ : std_logic;
SIGNAL \port_Out_10[3]~output_o\ : std_logic;
SIGNAL \port_Out_10[4]~output_o\ : std_logic;
SIGNAL \port_Out_10[5]~output_o\ : std_logic;
SIGNAL \port_Out_10[6]~output_o\ : std_logic;
SIGNAL \port_Out_10[7]~output_o\ : std_logic;
SIGNAL \port_Out_11[0]~output_o\ : std_logic;
SIGNAL \port_Out_11[1]~output_o\ : std_logic;
SIGNAL \port_Out_11[2]~output_o\ : std_logic;
SIGNAL \port_Out_11[3]~output_o\ : std_logic;
SIGNAL \port_Out_11[4]~output_o\ : std_logic;
SIGNAL \port_Out_11[5]~output_o\ : std_logic;
SIGNAL \port_Out_11[6]~output_o\ : std_logic;
SIGNAL \port_Out_11[7]~output_o\ : std_logic;
SIGNAL \port_Out_12[0]~output_o\ : std_logic;
SIGNAL \port_Out_12[1]~output_o\ : std_logic;
SIGNAL \port_Out_12[2]~output_o\ : std_logic;
SIGNAL \port_Out_12[3]~output_o\ : std_logic;
SIGNAL \port_Out_12[4]~output_o\ : std_logic;
SIGNAL \port_Out_12[5]~output_o\ : std_logic;
SIGNAL \port_Out_12[6]~output_o\ : std_logic;
SIGNAL \port_Out_12[7]~output_o\ : std_logic;
SIGNAL \port_Out_13[0]~output_o\ : std_logic;
SIGNAL \port_Out_13[1]~output_o\ : std_logic;
SIGNAL \port_Out_13[2]~output_o\ : std_logic;
SIGNAL \port_Out_13[3]~output_o\ : std_logic;
SIGNAL \port_Out_13[4]~output_o\ : std_logic;
SIGNAL \port_Out_13[5]~output_o\ : std_logic;
SIGNAL \port_Out_13[6]~output_o\ : std_logic;
SIGNAL \port_Out_13[7]~output_o\ : std_logic;
SIGNAL \port_Out_14[0]~output_o\ : std_logic;
SIGNAL \port_Out_14[1]~output_o\ : std_logic;
SIGNAL \port_Out_14[2]~output_o\ : std_logic;
SIGNAL \port_Out_14[3]~output_o\ : std_logic;
SIGNAL \port_Out_14[4]~output_o\ : std_logic;
SIGNAL \port_Out_14[5]~output_o\ : std_logic;
SIGNAL \port_Out_14[6]~output_o\ : std_logic;
SIGNAL \port_Out_14[7]~output_o\ : std_logic;
SIGNAL \port_Out_15[0]~output_o\ : std_logic;
SIGNAL \port_Out_15[1]~output_o\ : std_logic;
SIGNAL \port_Out_15[2]~output_o\ : std_logic;
SIGNAL \port_Out_15[3]~output_o\ : std_logic;
SIGNAL \port_Out_15[4]~output_o\ : std_logic;
SIGNAL \port_Out_15[5]~output_o\ : std_logic;
SIGNAL \port_Out_15[6]~output_o\ : std_logic;
SIGNAL \port_Out_15[7]~output_o\ : std_logic;
SIGNAL \clock~input_o\ : std_logic;
SIGNAL \clock~inputclkctrl_outclk\ : std_logic;
SIGNAL \data_in[0]~input_o\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \reset~inputclkctrl_outclk\ : std_logic;
SIGNAL \address[1]~input_o\ : std_logic;
SIGNAL \address[0]~input_o\ : std_logic;
SIGNAL \address[6]~input_o\ : std_logic;
SIGNAL \address[7]~input_o\ : std_logic;
SIGNAL \address[5]~input_o\ : std_logic;
SIGNAL \address[4]~input_o\ : std_logic;
SIGNAL \U3~0_combout\ : std_logic;
SIGNAL \writen~input_o\ : std_logic;
SIGNAL \U3~1_combout\ : std_logic;
SIGNAL \address[2]~input_o\ : std_logic;
SIGNAL \address[3]~input_o\ : std_logic;
SIGNAL \U3~2_combout\ : std_logic;
SIGNAL \port_Out_00[0]~reg0_q\ : std_logic;
SIGNAL \data_in[1]~input_o\ : std_logic;
SIGNAL \port_Out_00[1]~reg0feeder_combout\ : std_logic;
SIGNAL \port_Out_00[1]~reg0_q\ : std_logic;
SIGNAL \data_in[2]~input_o\ : std_logic;
SIGNAL \port_Out_00[2]~reg0_q\ : std_logic;
SIGNAL \data_in[3]~input_o\ : std_logic;
SIGNAL \port_Out_00[3]~reg0feeder_combout\ : std_logic;
SIGNAL \port_Out_00[3]~reg0_q\ : std_logic;
SIGNAL \data_in[4]~input_o\ : std_logic;
SIGNAL \port_Out_00[4]~reg0_q\ : std_logic;
SIGNAL \data_in[5]~input_o\ : std_logic;
SIGNAL \port_Out_00[5]~reg0_q\ : std_logic;
SIGNAL \data_in[6]~input_o\ : std_logic;
SIGNAL \port_Out_00[6]~reg0feeder_combout\ : std_logic;
SIGNAL \port_Out_00[6]~reg0_q\ : std_logic;
SIGNAL \data_in[7]~input_o\ : std_logic;
SIGNAL \port_Out_00[7]~reg0feeder_combout\ : std_logic;
SIGNAL \port_Out_00[7]~reg0_q\ : std_logic;
SIGNAL \U4~0_combout\ : std_logic;
SIGNAL \U4~1_combout\ : std_logic;
SIGNAL \port_Out_01[0]~reg0_q\ : std_logic;
SIGNAL \port_Out_01[1]~reg0feeder_combout\ : std_logic;
SIGNAL \port_Out_01[1]~reg0_q\ : std_logic;
SIGNAL \port_Out_01[2]~reg0_q\ : std_logic;
SIGNAL \port_Out_01[3]~reg0feeder_combout\ : std_logic;
SIGNAL \port_Out_01[3]~reg0_q\ : std_logic;
SIGNAL \port_Out_01[4]~reg0_q\ : std_logic;
SIGNAL \port_Out_01[5]~reg0_q\ : std_logic;
SIGNAL \port_Out_01[6]~reg0feeder_combout\ : std_logic;
SIGNAL \port_Out_01[6]~reg0_q\ : std_logic;
SIGNAL \port_Out_01[7]~reg0feeder_combout\ : std_logic;
SIGNAL \port_Out_01[7]~reg0_q\ : std_logic;
SIGNAL \U5~0_combout\ : std_logic;
SIGNAL \port_Out_02[0]~reg0_q\ : std_logic;
SIGNAL \port_Out_02[1]~reg0feeder_combout\ : std_logic;
SIGNAL \port_Out_02[1]~reg0_q\ : std_logic;
SIGNAL \port_Out_02[2]~reg0_q\ : std_logic;
SIGNAL \port_Out_02[3]~reg0feeder_combout\ : std_logic;
SIGNAL \port_Out_02[3]~reg0_q\ : std_logic;
SIGNAL \port_Out_02[4]~reg0_q\ : std_logic;
SIGNAL \port_Out_02[5]~reg0feeder_combout\ : std_logic;
SIGNAL \port_Out_02[5]~reg0_q\ : std_logic;
SIGNAL \port_Out_02[6]~reg0_q\ : std_logic;
SIGNAL \port_Out_02[7]~reg0feeder_combout\ : std_logic;
SIGNAL \port_Out_02[7]~reg0_q\ : std_logic;
SIGNAL \U6~0_combout\ : std_logic;
SIGNAL \port_Out_03[0]~reg0_q\ : std_logic;
SIGNAL \port_Out_03[1]~reg0feeder_combout\ : std_logic;
SIGNAL \port_Out_03[1]~reg0_q\ : std_logic;
SIGNAL \port_Out_03[2]~reg0_q\ : std_logic;
SIGNAL \port_Out_03[3]~reg0feeder_combout\ : std_logic;
SIGNAL \port_Out_03[3]~reg0_q\ : std_logic;
SIGNAL \port_Out_03[4]~reg0_q\ : std_logic;
SIGNAL \port_Out_03[5]~reg0feeder_combout\ : std_logic;
SIGNAL \port_Out_03[5]~reg0_q\ : std_logic;
SIGNAL \port_Out_03[6]~reg0_q\ : std_logic;
SIGNAL \port_Out_03[7]~reg0feeder_combout\ : std_logic;
SIGNAL \port_Out_03[7]~reg0_q\ : std_logic;
SIGNAL \U7~0_combout\ : std_logic;
SIGNAL \port_Out_04[0]~reg0_q\ : std_logic;
SIGNAL \port_Out_04[1]~reg0feeder_combout\ : std_logic;
SIGNAL \port_Out_04[1]~reg0_q\ : std_logic;
SIGNAL \port_Out_04[2]~reg0_q\ : std_logic;
SIGNAL \port_Out_04[3]~reg0feeder_combout\ : std_logic;
SIGNAL \port_Out_04[3]~reg0_q\ : std_logic;
SIGNAL \port_Out_04[4]~reg0feeder_combout\ : std_logic;
SIGNAL \port_Out_04[4]~reg0_q\ : std_logic;
SIGNAL \port_Out_04[5]~reg0_q\ : std_logic;
SIGNAL \port_Out_04[6]~reg0feeder_combout\ : std_logic;
SIGNAL \port_Out_04[6]~reg0_q\ : std_logic;
SIGNAL \port_Out_04[7]~reg0_q\ : std_logic;
SIGNAL \port_Out_05[0]~reg0feeder_combout\ : std_logic;
SIGNAL \U8~0_combout\ : std_logic;
SIGNAL \port_Out_05[0]~reg0_q\ : std_logic;
SIGNAL \port_Out_05[1]~reg0_q\ : std_logic;
SIGNAL \port_Out_05[2]~reg0_q\ : std_logic;
SIGNAL \port_Out_05[3]~reg0feeder_combout\ : std_logic;
SIGNAL \port_Out_05[3]~reg0_q\ : std_logic;
SIGNAL \port_Out_05[4]~reg0_q\ : std_logic;
SIGNAL \port_Out_05[5]~reg0feeder_combout\ : std_logic;
SIGNAL \port_Out_05[5]~reg0_q\ : std_logic;
SIGNAL \port_Out_05[6]~reg0feeder_combout\ : std_logic;
SIGNAL \port_Out_05[6]~reg0_q\ : std_logic;
SIGNAL \port_Out_05[7]~reg0_q\ : std_logic;
SIGNAL \port_Out_06[0]~reg0feeder_combout\ : std_logic;
SIGNAL \U9~0_combout\ : std_logic;
SIGNAL \port_Out_06[0]~reg0_q\ : std_logic;
SIGNAL \port_Out_06[1]~reg0_q\ : std_logic;
SIGNAL \port_Out_06[2]~reg0_q\ : std_logic;
SIGNAL \port_Out_06[3]~reg0_q\ : std_logic;
SIGNAL \port_Out_06[4]~reg0feeder_combout\ : std_logic;
SIGNAL \port_Out_06[4]~reg0_q\ : std_logic;
SIGNAL \port_Out_06[5]~reg0_q\ : std_logic;
SIGNAL \port_Out_06[6]~reg0feeder_combout\ : std_logic;
SIGNAL \port_Out_06[6]~reg0_q\ : std_logic;
SIGNAL \port_Out_06[7]~reg0feeder_combout\ : std_logic;
SIGNAL \port_Out_06[7]~reg0_q\ : std_logic;
SIGNAL \U10~0_combout\ : std_logic;
SIGNAL \port_Out_07[0]~reg0_q\ : std_logic;
SIGNAL \port_Out_07[1]~reg0feeder_combout\ : std_logic;
SIGNAL \port_Out_07[1]~reg0_q\ : std_logic;
SIGNAL \port_Out_07[2]~reg0_q\ : std_logic;
SIGNAL \port_Out_07[3]~reg0feeder_combout\ : std_logic;
SIGNAL \port_Out_07[3]~reg0_q\ : std_logic;
SIGNAL \port_Out_07[4]~reg0feeder_combout\ : std_logic;
SIGNAL \port_Out_07[4]~reg0_q\ : std_logic;
SIGNAL \port_Out_07[5]~reg0_q\ : std_logic;
SIGNAL \port_Out_07[6]~reg0feeder_combout\ : std_logic;
SIGNAL \port_Out_07[6]~reg0_q\ : std_logic;
SIGNAL \port_Out_07[7]~reg0_q\ : std_logic;
SIGNAL \port_Out_08[0]~reg0feeder_combout\ : std_logic;
SIGNAL \U11~0_combout\ : std_logic;
SIGNAL \port_Out_08[0]~reg0_q\ : std_logic;
SIGNAL \port_Out_08[1]~reg0_q\ : std_logic;
SIGNAL \port_Out_08[2]~reg0_q\ : std_logic;
SIGNAL \port_Out_08[3]~reg0_q\ : std_logic;
SIGNAL \port_Out_08[4]~reg0feeder_combout\ : std_logic;
SIGNAL \port_Out_08[4]~reg0_q\ : std_logic;
SIGNAL \port_Out_08[5]~reg0_q\ : std_logic;
SIGNAL \port_Out_08[6]~reg0feeder_combout\ : std_logic;
SIGNAL \port_Out_08[6]~reg0_q\ : std_logic;
SIGNAL \port_Out_08[7]~reg0feeder_combout\ : std_logic;
SIGNAL \port_Out_08[7]~reg0_q\ : std_logic;
SIGNAL \port_Out_09[0]~reg0feeder_combout\ : std_logic;
SIGNAL \U12~0_combout\ : std_logic;
SIGNAL \port_Out_09[0]~reg0_q\ : std_logic;
SIGNAL \port_Out_09[1]~reg0feeder_combout\ : std_logic;
SIGNAL \port_Out_09[1]~reg0_q\ : std_logic;
SIGNAL \port_Out_09[2]~reg0feeder_combout\ : std_logic;
SIGNAL \port_Out_09[2]~reg0_q\ : std_logic;
SIGNAL \port_Out_09[3]~reg0_q\ : std_logic;
SIGNAL \port_Out_09[4]~reg0feeder_combout\ : std_logic;
SIGNAL \port_Out_09[4]~reg0_q\ : std_logic;
SIGNAL \port_Out_09[5]~reg0_q\ : std_logic;
SIGNAL \port_Out_09[6]~reg0_q\ : std_logic;
SIGNAL \port_Out_09[7]~reg0feeder_combout\ : std_logic;
SIGNAL \port_Out_09[7]~reg0_q\ : std_logic;
SIGNAL \port_Out_10[0]~reg0feeder_combout\ : std_logic;
SIGNAL \U13~0_combout\ : std_logic;
SIGNAL \port_Out_10[0]~reg0_q\ : std_logic;
SIGNAL \port_Out_10[1]~reg0_q\ : std_logic;
SIGNAL \port_Out_10[2]~reg0_q\ : std_logic;
SIGNAL \port_Out_10[3]~reg0_q\ : std_logic;
SIGNAL \port_Out_10[4]~reg0_q\ : std_logic;
SIGNAL \port_Out_10[5]~reg0feeder_combout\ : std_logic;
SIGNAL \port_Out_10[5]~reg0_q\ : std_logic;
SIGNAL \port_Out_10[6]~reg0feeder_combout\ : std_logic;
SIGNAL \port_Out_10[6]~reg0_q\ : std_logic;
SIGNAL \port_Out_10[7]~reg0feeder_combout\ : std_logic;
SIGNAL \port_Out_10[7]~reg0_q\ : std_logic;
SIGNAL \port_Out_11[0]~reg0feeder_combout\ : std_logic;
SIGNAL \U14~0_combout\ : std_logic;
SIGNAL \port_Out_11[0]~reg0_q\ : std_logic;
SIGNAL \port_Out_11[1]~reg0feeder_combout\ : std_logic;
SIGNAL \port_Out_11[1]~reg0_q\ : std_logic;
SIGNAL \port_Out_11[2]~reg0_q\ : std_logic;
SIGNAL \port_Out_11[3]~reg0_q\ : std_logic;
SIGNAL \port_Out_11[4]~reg0feeder_combout\ : std_logic;
SIGNAL \port_Out_11[4]~reg0_q\ : std_logic;
SIGNAL \port_Out_11[5]~reg0_q\ : std_logic;
SIGNAL \port_Out_11[6]~reg0feeder_combout\ : std_logic;
SIGNAL \port_Out_11[6]~reg0_q\ : std_logic;
SIGNAL \port_Out_11[7]~reg0_q\ : std_logic;
SIGNAL \port_Out_12[0]~reg0feeder_combout\ : std_logic;
SIGNAL \U15~0_combout\ : std_logic;
SIGNAL \port_Out_12[0]~reg0_q\ : std_logic;
SIGNAL \port_Out_12[1]~reg0_q\ : std_logic;
SIGNAL \port_Out_12[2]~reg0_q\ : std_logic;
SIGNAL \port_Out_12[3]~reg0_q\ : std_logic;
SIGNAL \port_Out_12[4]~reg0_q\ : std_logic;
SIGNAL \port_Out_12[5]~reg0feeder_combout\ : std_logic;
SIGNAL \port_Out_12[5]~reg0_q\ : std_logic;
SIGNAL \port_Out_12[6]~reg0feeder_combout\ : std_logic;
SIGNAL \port_Out_12[6]~reg0_q\ : std_logic;
SIGNAL \port_Out_12[7]~reg0feeder_combout\ : std_logic;
SIGNAL \port_Out_12[7]~reg0_q\ : std_logic;
SIGNAL \port_Out_13[0]~reg0feeder_combout\ : std_logic;
SIGNAL \U16~0_combout\ : std_logic;
SIGNAL \port_Out_13[0]~reg0_q\ : std_logic;
SIGNAL \port_Out_13[1]~reg0feeder_combout\ : std_logic;
SIGNAL \port_Out_13[1]~reg0_q\ : std_logic;
SIGNAL \port_Out_13[2]~reg0_q\ : std_logic;
SIGNAL \port_Out_13[3]~reg0_q\ : std_logic;
SIGNAL \port_Out_13[4]~reg0feeder_combout\ : std_logic;
SIGNAL \port_Out_13[4]~reg0_q\ : std_logic;
SIGNAL \port_Out_13[5]~reg0_q\ : std_logic;
SIGNAL \port_Out_13[6]~reg0feeder_combout\ : std_logic;
SIGNAL \port_Out_13[6]~reg0_q\ : std_logic;
SIGNAL \port_Out_13[7]~reg0_q\ : std_logic;
SIGNAL \port_Out_14[0]~reg0feeder_combout\ : std_logic;
SIGNAL \U17~0_combout\ : std_logic;
SIGNAL \port_Out_14[0]~reg0_q\ : std_logic;
SIGNAL \port_Out_14[1]~reg0feeder_combout\ : std_logic;
SIGNAL \port_Out_14[1]~reg0_q\ : std_logic;
SIGNAL \port_Out_14[2]~reg0feeder_combout\ : std_logic;
SIGNAL \port_Out_14[2]~reg0_q\ : std_logic;
SIGNAL \port_Out_14[3]~reg0_q\ : std_logic;
SIGNAL \port_Out_14[4]~reg0feeder_combout\ : std_logic;
SIGNAL \port_Out_14[4]~reg0_q\ : std_logic;
SIGNAL \port_Out_14[5]~reg0_q\ : std_logic;
SIGNAL \port_Out_14[6]~reg0_q\ : std_logic;
SIGNAL \port_Out_14[7]~reg0feeder_combout\ : std_logic;
SIGNAL \port_Out_14[7]~reg0_q\ : std_logic;
SIGNAL \port_Out_15[0]~reg0feeder_combout\ : std_logic;
SIGNAL \U18~0_combout\ : std_logic;
SIGNAL \port_Out_15[0]~reg0_q\ : std_logic;
SIGNAL \port_Out_15[1]~reg0_q\ : std_logic;
SIGNAL \port_Out_15[2]~reg0_q\ : std_logic;
SIGNAL \port_Out_15[3]~reg0feeder_combout\ : std_logic;
SIGNAL \port_Out_15[3]~reg0_q\ : std_logic;
SIGNAL \port_Out_15[4]~reg0_q\ : std_logic;
SIGNAL \port_Out_15[5]~reg0feeder_combout\ : std_logic;
SIGNAL \port_Out_15[5]~reg0_q\ : std_logic;
SIGNAL \port_Out_15[6]~reg0feeder_combout\ : std_logic;
SIGNAL \port_Out_15[6]~reg0_q\ : std_logic;
SIGNAL \port_Out_15[7]~reg0_q\ : std_logic;

BEGIN

ww_address <= address;
ww_data_in <= data_in;
ww_clock <= clock;
ww_writen <= writen;
port_Out_00 <= ww_port_Out_00;
port_Out_01 <= ww_port_Out_01;
port_Out_02 <= ww_port_Out_02;
port_Out_03 <= ww_port_Out_03;
port_Out_04 <= ww_port_Out_04;
port_Out_05 <= ww_port_Out_05;
port_Out_06 <= ww_port_Out_06;
port_Out_07 <= ww_port_Out_07;
port_Out_08 <= ww_port_Out_08;
port_Out_09 <= ww_port_Out_09;
port_Out_10 <= ww_port_Out_10;
port_Out_11 <= ww_port_Out_11;
port_Out_12 <= ww_port_Out_12;
port_Out_13 <= ww_port_Out_13;
port_Out_14 <= ww_port_Out_14;
port_Out_15 <= ww_port_Out_15;
ww_reset <= reset;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clock~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clock~input_o\);

\reset~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \reset~input_o\);

-- Location: IOOBUF_X9_Y0_N16
\port_Out_00[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \port_Out_00[0]~reg0_q\,
	devoe => ww_devoe,
	o => \port_Out_00[0]~output_o\);

-- Location: IOOBUF_X7_Y0_N30
\port_Out_00[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \port_Out_00[1]~reg0_q\,
	devoe => ww_devoe,
	o => \port_Out_00[1]~output_o\);

-- Location: IOOBUF_X11_Y0_N9
\port_Out_00[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \port_Out_00[2]~reg0_q\,
	devoe => ww_devoe,
	o => \port_Out_00[2]~output_o\);

-- Location: IOOBUF_X11_Y0_N30
\port_Out_00[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \port_Out_00[3]~reg0_q\,
	devoe => ww_devoe,
	o => \port_Out_00[3]~output_o\);

-- Location: IOOBUF_X14_Y0_N2
\port_Out_00[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \port_Out_00[4]~reg0_q\,
	devoe => ww_devoe,
	o => \port_Out_00[4]~output_o\);

-- Location: IOOBUF_X9_Y0_N23
\port_Out_00[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \port_Out_00[5]~reg0_q\,
	devoe => ww_devoe,
	o => \port_Out_00[5]~output_o\);

-- Location: IOOBUF_X11_Y0_N2
\port_Out_00[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \port_Out_00[6]~reg0_q\,
	devoe => ww_devoe,
	o => \port_Out_00[6]~output_o\);

-- Location: IOOBUF_X11_Y0_N16
\port_Out_00[7]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \port_Out_00[7]~reg0_q\,
	devoe => ww_devoe,
	o => \port_Out_00[7]~output_o\);

-- Location: IOOBUF_X5_Y0_N2
\port_Out_01[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \port_Out_01[0]~reg0_q\,
	devoe => ww_devoe,
	o => \port_Out_01[0]~output_o\);

-- Location: IOOBUF_X9_Y0_N9
\port_Out_01[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \port_Out_01[1]~reg0_q\,
	devoe => ww_devoe,
	o => \port_Out_01[1]~output_o\);

-- Location: IOOBUF_X11_Y0_N23
\port_Out_01[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \port_Out_01[2]~reg0_q\,
	devoe => ww_devoe,
	o => \port_Out_01[2]~output_o\);

-- Location: IOOBUF_X7_Y0_N9
\port_Out_01[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \port_Out_01[3]~reg0_q\,
	devoe => ww_devoe,
	o => \port_Out_01[3]~output_o\);

-- Location: IOOBUF_X14_Y0_N23
\port_Out_01[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \port_Out_01[4]~reg0_q\,
	devoe => ww_devoe,
	o => \port_Out_01[4]~output_o\);

-- Location: IOOBUF_X7_Y0_N23
\port_Out_01[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \port_Out_01[5]~reg0_q\,
	devoe => ww_devoe,
	o => \port_Out_01[5]~output_o\);

-- Location: IOOBUF_X7_Y0_N2
\port_Out_01[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \port_Out_01[6]~reg0_q\,
	devoe => ww_devoe,
	o => \port_Out_01[6]~output_o\);

-- Location: IOOBUF_X7_Y0_N16
\port_Out_01[7]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \port_Out_01[7]~reg0_q\,
	devoe => ww_devoe,
	o => \port_Out_01[7]~output_o\);

-- Location: IOOBUF_X0_Y20_N9
\port_Out_02[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \port_Out_02[0]~reg0_q\,
	devoe => ww_devoe,
	o => \port_Out_02[0]~output_o\);

-- Location: IOOBUF_X0_Y23_N16
\port_Out_02[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \port_Out_02[1]~reg0_q\,
	devoe => ww_devoe,
	o => \port_Out_02[1]~output_o\);

-- Location: IOOBUF_X0_Y25_N2
\port_Out_02[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \port_Out_02[2]~reg0_q\,
	devoe => ww_devoe,
	o => \port_Out_02[2]~output_o\);

-- Location: IOOBUF_X0_Y22_N9
\port_Out_02[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \port_Out_02[3]~reg0_q\,
	devoe => ww_devoe,
	o => \port_Out_02[3]~output_o\);

-- Location: IOOBUF_X0_Y23_N2
\port_Out_02[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \port_Out_02[4]~reg0_q\,
	devoe => ww_devoe,
	o => \port_Out_02[4]~output_o\);

-- Location: IOOBUF_X0_Y25_N23
\port_Out_02[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \port_Out_02[5]~reg0_q\,
	devoe => ww_devoe,
	o => \port_Out_02[5]~output_o\);

-- Location: IOOBUF_X0_Y22_N16
\port_Out_02[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \port_Out_02[6]~reg0_q\,
	devoe => ww_devoe,
	o => \port_Out_02[6]~output_o\);

-- Location: IOOBUF_X0_Y21_N23
\port_Out_02[7]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \port_Out_02[7]~reg0_q\,
	devoe => ww_devoe,
	o => \port_Out_02[7]~output_o\);

-- Location: IOOBUF_X0_Y21_N9
\port_Out_03[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \port_Out_03[0]~reg0_q\,
	devoe => ww_devoe,
	o => \port_Out_03[0]~output_o\);

-- Location: IOOBUF_X0_Y23_N9
\port_Out_03[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \port_Out_03[1]~reg0_q\,
	devoe => ww_devoe,
	o => \port_Out_03[1]~output_o\);

-- Location: IOOBUF_X0_Y22_N23
\port_Out_03[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \port_Out_03[2]~reg0_q\,
	devoe => ww_devoe,
	o => \port_Out_03[2]~output_o\);

-- Location: IOOBUF_X0_Y21_N2
\port_Out_03[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \port_Out_03[3]~reg0_q\,
	devoe => ww_devoe,
	o => \port_Out_03[3]~output_o\);

-- Location: IOOBUF_X0_Y26_N23
\port_Out_03[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \port_Out_03[4]~reg0_q\,
	devoe => ww_devoe,
	o => \port_Out_03[4]~output_o\);

-- Location: IOOBUF_X0_Y24_N2
\port_Out_03[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \port_Out_03[5]~reg0_q\,
	devoe => ww_devoe,
	o => \port_Out_03[5]~output_o\);

-- Location: IOOBUF_X0_Y22_N2
\port_Out_03[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \port_Out_03[6]~reg0_q\,
	devoe => ww_devoe,
	o => \port_Out_03[6]~output_o\);

-- Location: IOOBUF_X0_Y24_N23
\port_Out_03[7]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \port_Out_03[7]~reg0_q\,
	devoe => ww_devoe,
	o => \port_Out_03[7]~output_o\);

-- Location: IOOBUF_X26_Y0_N2
\port_Out_04[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \port_Out_04[0]~reg0_q\,
	devoe => ww_devoe,
	o => \port_Out_04[0]~output_o\);

-- Location: IOOBUF_X23_Y0_N30
\port_Out_04[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \port_Out_04[1]~reg0_q\,
	devoe => ww_devoe,
	o => \port_Out_04[1]~output_o\);

-- Location: IOOBUF_X37_Y0_N30
\port_Out_04[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \port_Out_04[2]~reg0_q\,
	devoe => ww_devoe,
	o => \port_Out_04[2]~output_o\);

-- Location: IOOBUF_X30_Y0_N9
\port_Out_04[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \port_Out_04[3]~reg0_q\,
	devoe => ww_devoe,
	o => \port_Out_04[3]~output_o\);

-- Location: IOOBUF_X23_Y0_N23
\port_Out_04[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \port_Out_04[4]~reg0_q\,
	devoe => ww_devoe,
	o => \port_Out_04[4]~output_o\);

-- Location: IOOBUF_X39_Y0_N16
\port_Out_04[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \port_Out_04[5]~reg0_q\,
	devoe => ww_devoe,
	o => \port_Out_04[5]~output_o\);

-- Location: IOOBUF_X28_Y0_N23
\port_Out_04[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \port_Out_04[6]~reg0_q\,
	devoe => ww_devoe,
	o => \port_Out_04[6]~output_o\);

-- Location: IOOBUF_X16_Y0_N23
\port_Out_04[7]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \port_Out_04[7]~reg0_q\,
	devoe => ww_devoe,
	o => \port_Out_04[7]~output_o\);

-- Location: IOOBUF_X32_Y0_N16
\port_Out_05[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \port_Out_05[0]~reg0_q\,
	devoe => ww_devoe,
	o => \port_Out_05[0]~output_o\);

-- Location: IOOBUF_X32_Y0_N9
\port_Out_05[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \port_Out_05[1]~reg0_q\,
	devoe => ww_devoe,
	o => \port_Out_05[1]~output_o\);

-- Location: IOOBUF_X35_Y0_N2
\port_Out_05[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \port_Out_05[2]~reg0_q\,
	devoe => ww_devoe,
	o => \port_Out_05[2]~output_o\);

-- Location: IOOBUF_X37_Y0_N9
\port_Out_05[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \port_Out_05[3]~reg0_q\,
	devoe => ww_devoe,
	o => \port_Out_05[3]~output_o\);

-- Location: IOOBUF_X28_Y0_N16
\port_Out_05[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \port_Out_05[4]~reg0_q\,
	devoe => ww_devoe,
	o => \port_Out_05[4]~output_o\);

-- Location: IOOBUF_X30_Y0_N30
\port_Out_05[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \port_Out_05[5]~reg0_q\,
	devoe => ww_devoe,
	o => \port_Out_05[5]~output_o\);

-- Location: IOOBUF_X30_Y0_N2
\port_Out_05[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \port_Out_05[6]~reg0_q\,
	devoe => ww_devoe,
	o => \port_Out_05[6]~output_o\);

-- Location: IOOBUF_X32_Y0_N30
\port_Out_05[7]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \port_Out_05[7]~reg0_q\,
	devoe => ww_devoe,
	o => \port_Out_05[7]~output_o\);

-- Location: IOOBUF_X0_Y8_N9
\port_Out_06[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \port_Out_06[0]~reg0_q\,
	devoe => ww_devoe,
	o => \port_Out_06[0]~output_o\);

-- Location: IOOBUF_X0_Y12_N23
\port_Out_06[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \port_Out_06[1]~reg0_q\,
	devoe => ww_devoe,
	o => \port_Out_06[1]~output_o\);

-- Location: IOOBUF_X0_Y9_N23
\port_Out_06[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \port_Out_06[2]~reg0_q\,
	devoe => ww_devoe,
	o => \port_Out_06[2]~output_o\);

-- Location: IOOBUF_X0_Y10_N9
\port_Out_06[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \port_Out_06[3]~reg0_q\,
	devoe => ww_devoe,
	o => \port_Out_06[3]~output_o\);

-- Location: IOOBUF_X0_Y11_N2
\port_Out_06[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \port_Out_06[4]~reg0_q\,
	devoe => ww_devoe,
	o => \port_Out_06[4]~output_o\);

-- Location: IOOBUF_X0_Y9_N16
\port_Out_06[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \port_Out_06[5]~reg0_q\,
	devoe => ww_devoe,
	o => \port_Out_06[5]~output_o\);

-- Location: IOOBUF_X0_Y9_N9
\port_Out_06[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \port_Out_06[6]~reg0_q\,
	devoe => ww_devoe,
	o => \port_Out_06[6]~output_o\);

-- Location: IOOBUF_X0_Y10_N23
\port_Out_06[7]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \port_Out_06[7]~reg0_q\,
	devoe => ww_devoe,
	o => \port_Out_06[7]~output_o\);

-- Location: IOOBUF_X35_Y0_N23
\port_Out_07[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \port_Out_07[0]~reg0_q\,
	devoe => ww_devoe,
	o => \port_Out_07[0]~output_o\);

-- Location: IOOBUF_X19_Y0_N9
\port_Out_07[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \port_Out_07[1]~reg0_q\,
	devoe => ww_devoe,
	o => \port_Out_07[1]~output_o\);

-- Location: IOOBUF_X23_Y0_N16
\port_Out_07[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \port_Out_07[2]~reg0_q\,
	devoe => ww_devoe,
	o => \port_Out_07[2]~output_o\);

-- Location: IOOBUF_X26_Y0_N30
\port_Out_07[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \port_Out_07[3]~reg0_q\,
	devoe => ww_devoe,
	o => \port_Out_07[3]~output_o\);

-- Location: IOOBUF_X23_Y0_N9
\port_Out_07[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \port_Out_07[4]~reg0_q\,
	devoe => ww_devoe,
	o => \port_Out_07[4]~output_o\);

-- Location: IOOBUF_X23_Y0_N2
\port_Out_07[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \port_Out_07[5]~reg0_q\,
	devoe => ww_devoe,
	o => \port_Out_07[5]~output_o\);

-- Location: IOOBUF_X28_Y0_N30
\port_Out_07[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \port_Out_07[6]~reg0_q\,
	devoe => ww_devoe,
	o => \port_Out_07[6]~output_o\);

-- Location: IOOBUF_X26_Y0_N23
\port_Out_07[7]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \port_Out_07[7]~reg0_q\,
	devoe => ww_devoe,
	o => \port_Out_07[7]~output_o\);

-- Location: IOOBUF_X0_Y12_N16
\port_Out_08[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \port_Out_08[0]~reg0_q\,
	devoe => ww_devoe,
	o => \port_Out_08[0]~output_o\);

-- Location: IOOBUF_X0_Y9_N2
\port_Out_08[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \port_Out_08[1]~reg0_q\,
	devoe => ww_devoe,
	o => \port_Out_08[1]~output_o\);

-- Location: IOOBUF_X0_Y11_N9
\port_Out_08[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \port_Out_08[2]~reg0_q\,
	devoe => ww_devoe,
	o => \port_Out_08[2]~output_o\);

-- Location: IOOBUF_X0_Y11_N23
\port_Out_08[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \port_Out_08[3]~reg0_q\,
	devoe => ww_devoe,
	o => \port_Out_08[3]~output_o\);

-- Location: IOOBUF_X0_Y8_N16
\port_Out_08[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \port_Out_08[4]~reg0_q\,
	devoe => ww_devoe,
	o => \port_Out_08[4]~output_o\);

-- Location: IOOBUF_X0_Y10_N2
\port_Out_08[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \port_Out_08[5]~reg0_q\,
	devoe => ww_devoe,
	o => \port_Out_08[5]~output_o\);

-- Location: IOOBUF_X0_Y11_N16
\port_Out_08[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \port_Out_08[6]~reg0_q\,
	devoe => ww_devoe,
	o => \port_Out_08[6]~output_o\);

-- Location: IOOBUF_X0_Y10_N16
\port_Out_08[7]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \port_Out_08[7]~reg0_q\,
	devoe => ww_devoe,
	o => \port_Out_08[7]~output_o\);

-- Location: IOOBUF_X3_Y0_N30
\port_Out_09[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \port_Out_09[0]~reg0_q\,
	devoe => ww_devoe,
	o => \port_Out_09[0]~output_o\);

-- Location: IOOBUF_X5_Y0_N30
\port_Out_09[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \port_Out_09[1]~reg0_q\,
	devoe => ww_devoe,
	o => \port_Out_09[1]~output_o\);

-- Location: IOOBUF_X1_Y0_N16
\port_Out_09[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \port_Out_09[2]~reg0_q\,
	devoe => ww_devoe,
	o => \port_Out_09[2]~output_o\);

-- Location: IOOBUF_X1_Y0_N9
\port_Out_09[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \port_Out_09[3]~reg0_q\,
	devoe => ww_devoe,
	o => \port_Out_09[3]~output_o\);

-- Location: IOOBUF_X5_Y0_N23
\port_Out_09[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \port_Out_09[4]~reg0_q\,
	devoe => ww_devoe,
	o => \port_Out_09[4]~output_o\);

-- Location: IOOBUF_X0_Y2_N23
\port_Out_09[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \port_Out_09[5]~reg0_q\,
	devoe => ww_devoe,
	o => \port_Out_09[5]~output_o\);

-- Location: IOOBUF_X3_Y0_N2
\port_Out_09[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \port_Out_09[6]~reg0_q\,
	devoe => ww_devoe,
	o => \port_Out_09[6]~output_o\);

-- Location: IOOBUF_X0_Y2_N9
\port_Out_09[7]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \port_Out_09[7]~reg0_q\,
	devoe => ww_devoe,
	o => \port_Out_09[7]~output_o\);

-- Location: IOOBUF_X19_Y0_N30
\port_Out_10[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \port_Out_10[0]~reg0_q\,
	devoe => ww_devoe,
	o => \port_Out_10[0]~output_o\);

-- Location: IOOBUF_X16_Y0_N16
\port_Out_10[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \port_Out_10[1]~reg0_q\,
	devoe => ww_devoe,
	o => \port_Out_10[1]~output_o\);

-- Location: IOOBUF_X28_Y0_N2
\port_Out_10[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \port_Out_10[2]~reg0_q\,
	devoe => ww_devoe,
	o => \port_Out_10[2]~output_o\);

-- Location: IOOBUF_X19_Y0_N23
\port_Out_10[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \port_Out_10[3]~reg0_q\,
	devoe => ww_devoe,
	o => \port_Out_10[3]~output_o\);

-- Location: IOOBUF_X21_Y0_N30
\port_Out_10[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \port_Out_10[4]~reg0_q\,
	devoe => ww_devoe,
	o => \port_Out_10[4]~output_o\);

-- Location: IOOBUF_X19_Y0_N2
\port_Out_10[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \port_Out_10[5]~reg0_q\,
	devoe => ww_devoe,
	o => \port_Out_10[5]~output_o\);

-- Location: IOOBUF_X14_Y0_N9
\port_Out_10[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \port_Out_10[6]~reg0_q\,
	devoe => ww_devoe,
	o => \port_Out_10[6]~output_o\);

-- Location: IOOBUF_X26_Y0_N16
\port_Out_10[7]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \port_Out_10[7]~reg0_q\,
	devoe => ww_devoe,
	o => \port_Out_10[7]~output_o\);

-- Location: IOOBUF_X0_Y5_N9
\port_Out_11[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \port_Out_11[0]~reg0_q\,
	devoe => ww_devoe,
	o => \port_Out_11[0]~output_o\);

-- Location: IOOBUF_X0_Y5_N2
\port_Out_11[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \port_Out_11[1]~reg0_q\,
	devoe => ww_devoe,
	o => \port_Out_11[1]~output_o\);

-- Location: IOOBUF_X0_Y3_N9
\port_Out_11[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \port_Out_11[2]~reg0_q\,
	devoe => ww_devoe,
	o => \port_Out_11[2]~output_o\);

-- Location: IOOBUF_X0_Y6_N2
\port_Out_11[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \port_Out_11[3]~reg0_q\,
	devoe => ww_devoe,
	o => \port_Out_11[3]~output_o\);

-- Location: IOOBUF_X0_Y12_N9
\port_Out_11[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \port_Out_11[4]~reg0_q\,
	devoe => ww_devoe,
	o => \port_Out_11[4]~output_o\);

-- Location: IOOBUF_X0_Y4_N2
\port_Out_11[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \port_Out_11[5]~reg0_q\,
	devoe => ww_devoe,
	o => \port_Out_11[5]~output_o\);

-- Location: IOOBUF_X0_Y4_N23
\port_Out_11[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \port_Out_11[6]~reg0_q\,
	devoe => ww_devoe,
	o => \port_Out_11[6]~output_o\);

-- Location: IOOBUF_X0_Y7_N23
\port_Out_11[7]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \port_Out_11[7]~reg0_q\,
	devoe => ww_devoe,
	o => \port_Out_11[7]~output_o\);

-- Location: IOOBUF_X30_Y0_N16
\port_Out_12[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \port_Out_12[0]~reg0_q\,
	devoe => ww_devoe,
	o => \port_Out_12[0]~output_o\);

-- Location: IOOBUF_X16_Y0_N9
\port_Out_12[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \port_Out_12[1]~reg0_q\,
	devoe => ww_devoe,
	o => \port_Out_12[1]~output_o\);

-- Location: IOOBUF_X16_Y0_N30
\port_Out_12[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \port_Out_12[2]~reg0_q\,
	devoe => ww_devoe,
	o => \port_Out_12[2]~output_o\);

-- Location: IOOBUF_X19_Y0_N16
\port_Out_12[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \port_Out_12[3]~reg0_q\,
	devoe => ww_devoe,
	o => \port_Out_12[3]~output_o\);

-- Location: IOOBUF_X16_Y0_N2
\port_Out_12[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \port_Out_12[4]~reg0_q\,
	devoe => ww_devoe,
	o => \port_Out_12[4]~output_o\);

-- Location: IOOBUF_X35_Y0_N16
\port_Out_12[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \port_Out_12[5]~reg0_q\,
	devoe => ww_devoe,
	o => \port_Out_12[5]~output_o\);

-- Location: IOOBUF_X26_Y0_N9
\port_Out_12[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \port_Out_12[6]~reg0_q\,
	devoe => ww_devoe,
	o => \port_Out_12[6]~output_o\);

-- Location: IOOBUF_X35_Y0_N9
\port_Out_12[7]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \port_Out_12[7]~reg0_q\,
	devoe => ww_devoe,
	o => \port_Out_12[7]~output_o\);

-- Location: IOOBUF_X0_Y4_N9
\port_Out_13[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \port_Out_13[0]~reg0_q\,
	devoe => ww_devoe,
	o => \port_Out_13[0]~output_o\);

-- Location: IOOBUF_X0_Y4_N16
\port_Out_13[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \port_Out_13[1]~reg0_q\,
	devoe => ww_devoe,
	o => \port_Out_13[1]~output_o\);

-- Location: IOOBUF_X0_Y6_N23
\port_Out_13[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \port_Out_13[2]~reg0_q\,
	devoe => ww_devoe,
	o => \port_Out_13[2]~output_o\);

-- Location: IOOBUF_X0_Y6_N16
\port_Out_13[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \port_Out_13[3]~reg0_q\,
	devoe => ww_devoe,
	o => \port_Out_13[3]~output_o\);

-- Location: IOOBUF_X0_Y7_N2
\port_Out_13[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \port_Out_13[4]~reg0_q\,
	devoe => ww_devoe,
	o => \port_Out_13[4]~output_o\);

-- Location: IOOBUF_X0_Y7_N16
\port_Out_13[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \port_Out_13[5]~reg0_q\,
	devoe => ww_devoe,
	o => \port_Out_13[5]~output_o\);

-- Location: IOOBUF_X0_Y5_N23
\port_Out_13[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \port_Out_13[6]~reg0_q\,
	devoe => ww_devoe,
	o => \port_Out_13[6]~output_o\);

-- Location: IOOBUF_X0_Y5_N16
\port_Out_13[7]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \port_Out_13[7]~reg0_q\,
	devoe => ww_devoe,
	o => \port_Out_13[7]~output_o\);

-- Location: IOOBUF_X3_Y0_N9
\port_Out_14[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \port_Out_14[0]~reg0_q\,
	devoe => ww_devoe,
	o => \port_Out_14[0]~output_o\);

-- Location: IOOBUF_X1_Y0_N30
\port_Out_14[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \port_Out_14[1]~reg0_q\,
	devoe => ww_devoe,
	o => \port_Out_14[1]~output_o\);

-- Location: IOOBUF_X0_Y7_N9
\port_Out_14[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \port_Out_14[2]~reg0_q\,
	devoe => ww_devoe,
	o => \port_Out_14[2]~output_o\);

-- Location: IOOBUF_X0_Y2_N2
\port_Out_14[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \port_Out_14[3]~reg0_q\,
	devoe => ww_devoe,
	o => \port_Out_14[3]~output_o\);

-- Location: IOOBUF_X1_Y0_N2
\port_Out_14[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \port_Out_14[4]~reg0_q\,
	devoe => ww_devoe,
	o => \port_Out_14[4]~output_o\);

-- Location: IOOBUF_X1_Y0_N23
\port_Out_14[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \port_Out_14[5]~reg0_q\,
	devoe => ww_devoe,
	o => \port_Out_14[5]~output_o\);

-- Location: IOOBUF_X3_Y0_N16
\port_Out_14[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \port_Out_14[6]~reg0_q\,
	devoe => ww_devoe,
	o => \port_Out_14[6]~output_o\);

-- Location: IOOBUF_X3_Y0_N23
\port_Out_14[7]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \port_Out_14[7]~reg0_q\,
	devoe => ww_devoe,
	o => \port_Out_14[7]~output_o\);

-- Location: IOOBUF_X35_Y0_N30
\port_Out_15[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \port_Out_15[0]~reg0_q\,
	devoe => ww_devoe,
	o => \port_Out_15[0]~output_o\);

-- Location: IOOBUF_X32_Y0_N23
\port_Out_15[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \port_Out_15[1]~reg0_q\,
	devoe => ww_devoe,
	o => \port_Out_15[1]~output_o\);

-- Location: IOOBUF_X37_Y0_N2
\port_Out_15[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \port_Out_15[2]~reg0_q\,
	devoe => ww_devoe,
	o => \port_Out_15[2]~output_o\);

-- Location: IOOBUF_X30_Y0_N23
\port_Out_15[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \port_Out_15[3]~reg0_q\,
	devoe => ww_devoe,
	o => \port_Out_15[3]~output_o\);

-- Location: IOOBUF_X37_Y0_N16
\port_Out_15[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \port_Out_15[4]~reg0_q\,
	devoe => ww_devoe,
	o => \port_Out_15[4]~output_o\);

-- Location: IOOBUF_X28_Y0_N9
\port_Out_15[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \port_Out_15[5]~reg0_q\,
	devoe => ww_devoe,
	o => \port_Out_15[5]~output_o\);

-- Location: IOOBUF_X39_Y0_N9
\port_Out_15[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \port_Out_15[6]~reg0_q\,
	devoe => ww_devoe,
	o => \port_Out_15[6]~output_o\);

-- Location: IOOBUF_X32_Y0_N2
\port_Out_15[7]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \port_Out_15[7]~reg0_q\,
	devoe => ww_devoe,
	o => \port_Out_15[7]~output_o\);

-- Location: IOIBUF_X0_Y14_N1
\clock~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clock,
	o => \clock~input_o\);

-- Location: CLKCTRL_G4
\clock~inputclkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clock~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clock~inputclkctrl_outclk\);

-- Location: IOIBUF_X0_Y8_N22
\data_in[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(0),
	o => \data_in[0]~input_o\);

-- Location: IOIBUF_X0_Y14_N8
\reset~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: CLKCTRL_G2
\reset~inputclkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \reset~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \reset~inputclkctrl_outclk\);

-- Location: IOIBUF_X9_Y0_N29
\address[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_address(1),
	o => \address[1]~input_o\);

-- Location: IOIBUF_X9_Y29_N29
\address[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_address(0),
	o => \address[0]~input_o\);

-- Location: IOIBUF_X9_Y29_N1
\address[6]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_address(6),
	o => \address[6]~input_o\);

-- Location: IOIBUF_X9_Y29_N15
\address[7]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_address(7),
	o => \address[7]~input_o\);

-- Location: IOIBUF_X7_Y29_N15
\address[5]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_address(5),
	o => \address[5]~input_o\);

-- Location: IOIBUF_X9_Y29_N22
\address[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_address(4),
	o => \address[4]~input_o\);

-- Location: LCCOMB_X9_Y28_N0
\U3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U3~0_combout\ = (\address[6]~input_o\ & (\address[7]~input_o\ & (\address[5]~input_o\ & !\address[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[6]~input_o\,
	datab => \address[7]~input_o\,
	datac => \address[5]~input_o\,
	datad => \address[4]~input_o\,
	combout => \U3~0_combout\);

-- Location: IOIBUF_X9_Y29_N8
\writen~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_writen,
	o => \writen~input_o\);

-- Location: LCCOMB_X9_Y28_N26
\U3~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U3~1_combout\ = (!\address[0]~input_o\ & (\U3~0_combout\ & \writen~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[0]~input_o\,
	datab => \U3~0_combout\,
	datac => \writen~input_o\,
	combout => \U3~1_combout\);

-- Location: IOIBUF_X9_Y0_N1
\address[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_address(2),
	o => \address[2]~input_o\);

-- Location: IOIBUF_X14_Y0_N15
\address[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_address(3),
	o => \address[3]~input_o\);

-- Location: LCCOMB_X9_Y1_N16
\U3~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U3~2_combout\ = (!\address[1]~input_o\ & (\U3~1_combout\ & (!\address[2]~input_o\ & !\address[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[1]~input_o\,
	datab => \U3~1_combout\,
	datac => \address[2]~input_o\,
	datad => \address[3]~input_o\,
	combout => \U3~2_combout\);

-- Location: FF_X10_Y1_N1
\port_Out_00[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \data_in[0]~input_o\,
	clrn => \reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \U3~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_Out_00[0]~reg0_q\);

-- Location: IOIBUF_X5_Y0_N8
\data_in[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(1),
	o => \data_in[1]~input_o\);

-- Location: LCCOMB_X10_Y1_N2
\port_Out_00[1]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \port_Out_00[1]~reg0feeder_combout\ = \data_in[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_in[1]~input_o\,
	combout => \port_Out_00[1]~reg0feeder_combout\);

-- Location: FF_X10_Y1_N3
\port_Out_00[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \port_Out_00[1]~reg0feeder_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \U3~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_Out_00[1]~reg0_q\);

-- Location: IOIBUF_X0_Y3_N1
\data_in[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(2),
	o => \data_in[2]~input_o\);

-- Location: FF_X10_Y1_N13
\port_Out_00[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \data_in[2]~input_o\,
	clrn => \reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \U3~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_Out_00[2]~reg0_q\);

-- Location: IOIBUF_X0_Y8_N1
\data_in[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(3),
	o => \data_in[3]~input_o\);

-- Location: LCCOMB_X10_Y1_N22
\port_Out_00[3]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \port_Out_00[3]~reg0feeder_combout\ = \data_in[3]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_in[3]~input_o\,
	combout => \port_Out_00[3]~reg0feeder_combout\);

-- Location: FF_X10_Y1_N23
\port_Out_00[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \port_Out_00[3]~reg0feeder_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \U3~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_Out_00[3]~reg0_q\);

-- Location: IOIBUF_X0_Y2_N15
\data_in[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(4),
	o => \data_in[4]~input_o\);

-- Location: FF_X10_Y1_N25
\port_Out_00[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \data_in[4]~input_o\,
	clrn => \reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \U3~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_Out_00[4]~reg0_q\);

-- Location: IOIBUF_X0_Y6_N8
\data_in[5]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(5),
	o => \data_in[5]~input_o\);

-- Location: FF_X10_Y1_N27
\port_Out_00[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \data_in[5]~input_o\,
	clrn => \reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \U3~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_Out_00[5]~reg0_q\);

-- Location: IOIBUF_X0_Y21_N15
\data_in[6]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(6),
	o => \data_in[6]~input_o\);

-- Location: LCCOMB_X10_Y1_N20
\port_Out_00[6]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \port_Out_00[6]~reg0feeder_combout\ = \data_in[6]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_in[6]~input_o\,
	combout => \port_Out_00[6]~reg0feeder_combout\);

-- Location: FF_X10_Y1_N21
\port_Out_00[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \port_Out_00[6]~reg0feeder_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \U3~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_Out_00[6]~reg0_q\);

-- Location: IOIBUF_X0_Y20_N1
\data_in[7]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(7),
	o => \data_in[7]~input_o\);

-- Location: LCCOMB_X10_Y1_N6
\port_Out_00[7]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \port_Out_00[7]~reg0feeder_combout\ = \data_in[7]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_in[7]~input_o\,
	combout => \port_Out_00[7]~reg0feeder_combout\);

-- Location: FF_X10_Y1_N7
\port_Out_00[7]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \port_Out_00[7]~reg0feeder_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \U3~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_Out_00[7]~reg0_q\);

-- Location: LCCOMB_X9_Y28_N12
\U4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U4~0_combout\ = (\address[0]~input_o\ & (\U3~0_combout\ & \writen~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[0]~input_o\,
	datab => \U3~0_combout\,
	datac => \writen~input_o\,
	combout => \U4~0_combout\);

-- Location: LCCOMB_X9_Y1_N10
\U4~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U4~1_combout\ = (\U4~0_combout\ & (!\address[2]~input_o\ & (!\address[1]~input_o\ & !\address[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4~0_combout\,
	datab => \address[2]~input_o\,
	datac => \address[1]~input_o\,
	datad => \address[3]~input_o\,
	combout => \U4~1_combout\);

-- Location: FF_X10_Y1_N9
\port_Out_01[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \data_in[0]~input_o\,
	clrn => \reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \U4~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_Out_01[0]~reg0_q\);

-- Location: LCCOMB_X10_Y1_N18
\port_Out_01[1]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \port_Out_01[1]~reg0feeder_combout\ = \data_in[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_in[1]~input_o\,
	combout => \port_Out_01[1]~reg0feeder_combout\);

-- Location: FF_X10_Y1_N19
\port_Out_01[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \port_Out_01[1]~reg0feeder_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \U4~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_Out_01[1]~reg0_q\);

-- Location: FF_X10_Y1_N29
\port_Out_01[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \data_in[2]~input_o\,
	clrn => \reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \U4~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_Out_01[2]~reg0_q\);

-- Location: LCCOMB_X10_Y1_N14
\port_Out_01[3]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \port_Out_01[3]~reg0feeder_combout\ = \data_in[3]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_in[3]~input_o\,
	combout => \port_Out_01[3]~reg0feeder_combout\);

-- Location: FF_X10_Y1_N15
\port_Out_01[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \port_Out_01[3]~reg0feeder_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \U4~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_Out_01[3]~reg0_q\);

-- Location: FF_X10_Y1_N17
\port_Out_01[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \data_in[4]~input_o\,
	clrn => \reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \U4~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_Out_01[4]~reg0_q\);

-- Location: FF_X10_Y1_N11
\port_Out_01[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \data_in[5]~input_o\,
	clrn => \reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \U4~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_Out_01[5]~reg0_q\);

-- Location: LCCOMB_X10_Y1_N4
\port_Out_01[6]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \port_Out_01[6]~reg0feeder_combout\ = \data_in[6]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_in[6]~input_o\,
	combout => \port_Out_01[6]~reg0feeder_combout\);

-- Location: FF_X10_Y1_N5
\port_Out_01[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \port_Out_01[6]~reg0feeder_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \U4~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_Out_01[6]~reg0_q\);

-- Location: LCCOMB_X10_Y1_N30
\port_Out_01[7]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \port_Out_01[7]~reg0feeder_combout\ = \data_in[7]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_in[7]~input_o\,
	combout => \port_Out_01[7]~reg0feeder_combout\);

-- Location: FF_X10_Y1_N31
\port_Out_01[7]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \port_Out_01[7]~reg0feeder_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \U4~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_Out_01[7]~reg0_q\);

-- Location: LCCOMB_X9_Y1_N20
\U5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U5~0_combout\ = (\address[1]~input_o\ & (\U3~1_combout\ & (!\address[2]~input_o\ & !\address[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[1]~input_o\,
	datab => \U3~1_combout\,
	datac => \address[2]~input_o\,
	datad => \address[3]~input_o\,
	combout => \U5~0_combout\);

-- Location: FF_X1_Y22_N25
\port_Out_02[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \data_in[0]~input_o\,
	clrn => \reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \U5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_Out_02[0]~reg0_q\);

-- Location: LCCOMB_X1_Y22_N26
\port_Out_02[1]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \port_Out_02[1]~reg0feeder_combout\ = \data_in[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_in[1]~input_o\,
	combout => \port_Out_02[1]~reg0feeder_combout\);

-- Location: FF_X1_Y22_N27
\port_Out_02[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \port_Out_02[1]~reg0feeder_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \U5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_Out_02[1]~reg0_q\);

-- Location: FF_X1_Y22_N13
\port_Out_02[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \data_in[2]~input_o\,
	clrn => \reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \U5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_Out_02[2]~reg0_q\);

-- Location: LCCOMB_X1_Y22_N14
\port_Out_02[3]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \port_Out_02[3]~reg0feeder_combout\ = \data_in[3]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_in[3]~input_o\,
	combout => \port_Out_02[3]~reg0feeder_combout\);

-- Location: FF_X1_Y22_N15
\port_Out_02[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \port_Out_02[3]~reg0feeder_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \U5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_Out_02[3]~reg0_q\);

-- Location: FF_X1_Y22_N1
\port_Out_02[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \data_in[4]~input_o\,
	clrn => \reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \U5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_Out_02[4]~reg0_q\);

-- Location: LCCOMB_X1_Y22_N10
\port_Out_02[5]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \port_Out_02[5]~reg0feeder_combout\ = \data_in[5]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_in[5]~input_o\,
	combout => \port_Out_02[5]~reg0feeder_combout\);

-- Location: FF_X1_Y22_N11
\port_Out_02[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \port_Out_02[5]~reg0feeder_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \U5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_Out_02[5]~reg0_q\);

-- Location: FF_X1_Y22_N21
\port_Out_02[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \data_in[6]~input_o\,
	clrn => \reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \U5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_Out_02[6]~reg0_q\);

-- Location: LCCOMB_X1_Y22_N30
\port_Out_02[7]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \port_Out_02[7]~reg0feeder_combout\ = \data_in[7]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_in[7]~input_o\,
	combout => \port_Out_02[7]~reg0feeder_combout\);

-- Location: FF_X1_Y22_N31
\port_Out_02[7]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \port_Out_02[7]~reg0feeder_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \U5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_Out_02[7]~reg0_q\);

-- Location: LCCOMB_X9_Y1_N22
\U6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U6~0_combout\ = (\U4~0_combout\ & (!\address[2]~input_o\ & (\address[1]~input_o\ & !\address[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4~0_combout\,
	datab => \address[2]~input_o\,
	datac => \address[1]~input_o\,
	datad => \address[3]~input_o\,
	combout => \U6~0_combout\);

-- Location: FF_X1_Y22_N9
\port_Out_03[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \data_in[0]~input_o\,
	clrn => \reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \U6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_Out_03[0]~reg0_q\);

-- Location: LCCOMB_X1_Y22_N2
\port_Out_03[1]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \port_Out_03[1]~reg0feeder_combout\ = \data_in[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_in[1]~input_o\,
	combout => \port_Out_03[1]~reg0feeder_combout\);

-- Location: FF_X1_Y22_N3
\port_Out_03[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \port_Out_03[1]~reg0feeder_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \U6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_Out_03[1]~reg0_q\);

-- Location: FF_X1_Y22_N5
\port_Out_03[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \data_in[2]~input_o\,
	clrn => \reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \U6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_Out_03[2]~reg0_q\);

-- Location: LCCOMB_X1_Y22_N22
\port_Out_03[3]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \port_Out_03[3]~reg0feeder_combout\ = \data_in[3]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_in[3]~input_o\,
	combout => \port_Out_03[3]~reg0feeder_combout\);

-- Location: FF_X1_Y22_N23
\port_Out_03[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \port_Out_03[3]~reg0feeder_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \U6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_Out_03[3]~reg0_q\);

-- Location: FF_X1_Y22_N17
\port_Out_03[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \data_in[4]~input_o\,
	clrn => \reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \U6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_Out_03[4]~reg0_q\);

-- Location: LCCOMB_X1_Y22_N18
\port_Out_03[5]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \port_Out_03[5]~reg0feeder_combout\ = \data_in[5]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_in[5]~input_o\,
	combout => \port_Out_03[5]~reg0feeder_combout\);

-- Location: FF_X1_Y22_N19
\port_Out_03[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \port_Out_03[5]~reg0feeder_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \U6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_Out_03[5]~reg0_q\);

-- Location: FF_X1_Y22_N29
\port_Out_03[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \data_in[6]~input_o\,
	clrn => \reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \U6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_Out_03[6]~reg0_q\);

-- Location: LCCOMB_X1_Y22_N6
\port_Out_03[7]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \port_Out_03[7]~reg0feeder_combout\ = \data_in[7]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_in[7]~input_o\,
	combout => \port_Out_03[7]~reg0feeder_combout\);

-- Location: FF_X1_Y22_N7
\port_Out_03[7]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \port_Out_03[7]~reg0feeder_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \U6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_Out_03[7]~reg0_q\);

-- Location: LCCOMB_X9_Y1_N0
\U7~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U7~0_combout\ = (!\address[1]~input_o\ & (\U3~1_combout\ & (\address[2]~input_o\ & !\address[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[1]~input_o\,
	datab => \U3~1_combout\,
	datac => \address[2]~input_o\,
	datad => \address[3]~input_o\,
	combout => \U7~0_combout\);

-- Location: FF_X20_Y1_N9
\port_Out_04[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \data_in[0]~input_o\,
	clrn => \reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \U7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_Out_04[0]~reg0_q\);

-- Location: LCCOMB_X20_Y1_N10
\port_Out_04[1]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \port_Out_04[1]~reg0feeder_combout\ = \data_in[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_in[1]~input_o\,
	combout => \port_Out_04[1]~reg0feeder_combout\);

-- Location: FF_X20_Y1_N11
\port_Out_04[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \port_Out_04[1]~reg0feeder_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \U7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_Out_04[1]~reg0_q\);

-- Location: FF_X20_Y1_N5
\port_Out_04[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \data_in[2]~input_o\,
	clrn => \reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \U7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_Out_04[2]~reg0_q\);

-- Location: LCCOMB_X20_Y1_N22
\port_Out_04[3]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \port_Out_04[3]~reg0feeder_combout\ = \data_in[3]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_in[3]~input_o\,
	combout => \port_Out_04[3]~reg0feeder_combout\);

-- Location: FF_X20_Y1_N23
\port_Out_04[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \port_Out_04[3]~reg0feeder_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \U7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_Out_04[3]~reg0_q\);

-- Location: LCCOMB_X20_Y1_N0
\port_Out_04[4]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \port_Out_04[4]~reg0feeder_combout\ = \data_in[4]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_in[4]~input_o\,
	combout => \port_Out_04[4]~reg0feeder_combout\);

-- Location: FF_X20_Y1_N1
\port_Out_04[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \port_Out_04[4]~reg0feeder_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \U7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_Out_04[4]~reg0_q\);

-- Location: FF_X20_Y1_N3
\port_Out_04[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \data_in[5]~input_o\,
	clrn => \reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \U7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_Out_04[5]~reg0_q\);

-- Location: LCCOMB_X20_Y1_N20
\port_Out_04[6]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \port_Out_04[6]~reg0feeder_combout\ = \data_in[6]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_in[6]~input_o\,
	combout => \port_Out_04[6]~reg0feeder_combout\);

-- Location: FF_X20_Y1_N21
\port_Out_04[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \port_Out_04[6]~reg0feeder_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \U7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_Out_04[6]~reg0_q\);

-- Location: FF_X20_Y1_N15
\port_Out_04[7]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \data_in[7]~input_o\,
	clrn => \reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \U7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_Out_04[7]~reg0_q\);

-- Location: LCCOMB_X30_Y1_N16
\port_Out_05[0]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \port_Out_05[0]~reg0feeder_combout\ = \data_in[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_in[0]~input_o\,
	combout => \port_Out_05[0]~reg0feeder_combout\);

-- Location: LCCOMB_X9_Y1_N26
\U8~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U8~0_combout\ = (\U4~0_combout\ & (\address[2]~input_o\ & (!\address[1]~input_o\ & !\address[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4~0_combout\,
	datab => \address[2]~input_o\,
	datac => \address[1]~input_o\,
	datad => \address[3]~input_o\,
	combout => \U8~0_combout\);

-- Location: FF_X30_Y1_N17
\port_Out_05[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \port_Out_05[0]~reg0feeder_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \U8~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_Out_05[0]~reg0_q\);

-- Location: FF_X30_Y1_N19
\port_Out_05[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \data_in[1]~input_o\,
	clrn => \reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \U8~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_Out_05[1]~reg0_q\);

-- Location: FF_X30_Y1_N29
\port_Out_05[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \data_in[2]~input_o\,
	clrn => \reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \U8~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_Out_05[2]~reg0_q\);

-- Location: LCCOMB_X30_Y1_N14
\port_Out_05[3]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \port_Out_05[3]~reg0feeder_combout\ = \data_in[3]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_in[3]~input_o\,
	combout => \port_Out_05[3]~reg0feeder_combout\);

-- Location: FF_X30_Y1_N15
\port_Out_05[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \port_Out_05[3]~reg0feeder_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \U8~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_Out_05[3]~reg0_q\);

-- Location: FF_X30_Y1_N9
\port_Out_05[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \data_in[4]~input_o\,
	clrn => \reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \U8~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_Out_05[4]~reg0_q\);

-- Location: LCCOMB_X30_Y1_N26
\port_Out_05[5]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \port_Out_05[5]~reg0feeder_combout\ = \data_in[5]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_in[5]~input_o\,
	combout => \port_Out_05[5]~reg0feeder_combout\);

-- Location: FF_X30_Y1_N27
\port_Out_05[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \port_Out_05[5]~reg0feeder_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \U8~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_Out_05[5]~reg0_q\);

-- Location: LCCOMB_X30_Y1_N20
\port_Out_05[6]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \port_Out_05[6]~reg0feeder_combout\ = \data_in[6]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_in[6]~input_o\,
	combout => \port_Out_05[6]~reg0feeder_combout\);

-- Location: FF_X30_Y1_N21
\port_Out_05[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \port_Out_05[6]~reg0feeder_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \U8~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_Out_05[6]~reg0_q\);

-- Location: FF_X30_Y1_N31
\port_Out_05[7]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \data_in[7]~input_o\,
	clrn => \reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \U8~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_Out_05[7]~reg0_q\);

-- Location: LCCOMB_X1_Y9_N8
\port_Out_06[0]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \port_Out_06[0]~reg0feeder_combout\ = \data_in[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_in[0]~input_o\,
	combout => \port_Out_06[0]~reg0feeder_combout\);

-- Location: LCCOMB_X9_Y1_N4
\U9~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U9~0_combout\ = (\address[1]~input_o\ & (\U3~1_combout\ & (\address[2]~input_o\ & !\address[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[1]~input_o\,
	datab => \U3~1_combout\,
	datac => \address[2]~input_o\,
	datad => \address[3]~input_o\,
	combout => \U9~0_combout\);

-- Location: FF_X1_Y9_N9
\port_Out_06[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \port_Out_06[0]~reg0feeder_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \U9~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_Out_06[0]~reg0_q\);

-- Location: FF_X1_Y9_N11
\port_Out_06[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \data_in[1]~input_o\,
	clrn => \reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \U9~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_Out_06[1]~reg0_q\);

-- Location: FF_X1_Y9_N21
\port_Out_06[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \data_in[2]~input_o\,
	clrn => \reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \U9~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_Out_06[2]~reg0_q\);

-- Location: FF_X1_Y9_N23
\port_Out_06[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \data_in[3]~input_o\,
	clrn => \reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \U9~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_Out_06[3]~reg0_q\);

-- Location: LCCOMB_X1_Y9_N0
\port_Out_06[4]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \port_Out_06[4]~reg0feeder_combout\ = \data_in[4]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_in[4]~input_o\,
	combout => \port_Out_06[4]~reg0feeder_combout\);

-- Location: FF_X1_Y9_N1
\port_Out_06[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \port_Out_06[4]~reg0feeder_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \U9~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_Out_06[4]~reg0_q\);

-- Location: FF_X1_Y9_N19
\port_Out_06[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \data_in[5]~input_o\,
	clrn => \reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \U9~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_Out_06[5]~reg0_q\);

-- Location: LCCOMB_X1_Y9_N4
\port_Out_06[6]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \port_Out_06[6]~reg0feeder_combout\ = \data_in[6]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_in[6]~input_o\,
	combout => \port_Out_06[6]~reg0feeder_combout\);

-- Location: FF_X1_Y9_N5
\port_Out_06[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \port_Out_06[6]~reg0feeder_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \U9~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_Out_06[6]~reg0_q\);

-- Location: LCCOMB_X1_Y9_N14
\port_Out_06[7]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \port_Out_06[7]~reg0feeder_combout\ = \data_in[7]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_in[7]~input_o\,
	combout => \port_Out_06[7]~reg0feeder_combout\);

-- Location: FF_X1_Y9_N15
\port_Out_06[7]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \port_Out_06[7]~reg0feeder_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \U9~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_Out_06[7]~reg0_q\);

-- Location: LCCOMB_X9_Y1_N6
\U10~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U10~0_combout\ = (\U4~0_combout\ & (\address[2]~input_o\ & (\address[1]~input_o\ & !\address[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4~0_combout\,
	datab => \address[2]~input_o\,
	datac => \address[1]~input_o\,
	datad => \address[3]~input_o\,
	combout => \U10~0_combout\);

-- Location: FF_X20_Y1_N17
\port_Out_07[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \data_in[0]~input_o\,
	clrn => \reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \U10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_Out_07[0]~reg0_q\);

-- Location: LCCOMB_X20_Y1_N18
\port_Out_07[1]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \port_Out_07[1]~reg0feeder_combout\ = \data_in[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_in[1]~input_o\,
	combout => \port_Out_07[1]~reg0feeder_combout\);

-- Location: FF_X20_Y1_N19
\port_Out_07[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \port_Out_07[1]~reg0feeder_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \U10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_Out_07[1]~reg0_q\);

-- Location: FF_X20_Y1_N13
\port_Out_07[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \data_in[2]~input_o\,
	clrn => \reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \U10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_Out_07[2]~reg0_q\);

-- Location: LCCOMB_X20_Y1_N6
\port_Out_07[3]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \port_Out_07[3]~reg0feeder_combout\ = \data_in[3]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_in[3]~input_o\,
	combout => \port_Out_07[3]~reg0feeder_combout\);

-- Location: FF_X20_Y1_N7
\port_Out_07[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \port_Out_07[3]~reg0feeder_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \U10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_Out_07[3]~reg0_q\);

-- Location: LCCOMB_X20_Y1_N24
\port_Out_07[4]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \port_Out_07[4]~reg0feeder_combout\ = \data_in[4]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_in[4]~input_o\,
	combout => \port_Out_07[4]~reg0feeder_combout\);

-- Location: FF_X20_Y1_N25
\port_Out_07[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \port_Out_07[4]~reg0feeder_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \U10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_Out_07[4]~reg0_q\);

-- Location: FF_X20_Y1_N27
\port_Out_07[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \data_in[5]~input_o\,
	clrn => \reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \U10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_Out_07[5]~reg0_q\);

-- Location: LCCOMB_X20_Y1_N28
\port_Out_07[6]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \port_Out_07[6]~reg0feeder_combout\ = \data_in[6]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_in[6]~input_o\,
	combout => \port_Out_07[6]~reg0feeder_combout\);

-- Location: FF_X20_Y1_N29
\port_Out_07[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \port_Out_07[6]~reg0feeder_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \U10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_Out_07[6]~reg0_q\);

-- Location: FF_X20_Y1_N31
\port_Out_07[7]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \data_in[7]~input_o\,
	clrn => \reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \U10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_Out_07[7]~reg0_q\);

-- Location: LCCOMB_X1_Y9_N24
\port_Out_08[0]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \port_Out_08[0]~reg0feeder_combout\ = \data_in[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_in[0]~input_o\,
	combout => \port_Out_08[0]~reg0feeder_combout\);

-- Location: LCCOMB_X9_Y1_N8
\U11~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U11~0_combout\ = (!\address[1]~input_o\ & (\U3~1_combout\ & (!\address[2]~input_o\ & \address[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[1]~input_o\,
	datab => \U3~1_combout\,
	datac => \address[2]~input_o\,
	datad => \address[3]~input_o\,
	combout => \U11~0_combout\);

-- Location: FF_X1_Y9_N25
\port_Out_08[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \port_Out_08[0]~reg0feeder_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \U11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_Out_08[0]~reg0_q\);

-- Location: FF_X1_Y9_N27
\port_Out_08[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \data_in[1]~input_o\,
	clrn => \reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \U11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_Out_08[1]~reg0_q\);

-- Location: FF_X1_Y9_N13
\port_Out_08[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \data_in[2]~input_o\,
	clrn => \reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \U11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_Out_08[2]~reg0_q\);

-- Location: FF_X1_Y9_N31
\port_Out_08[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \data_in[3]~input_o\,
	clrn => \reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \U11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_Out_08[3]~reg0_q\);

-- Location: LCCOMB_X1_Y9_N16
\port_Out_08[4]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \port_Out_08[4]~reg0feeder_combout\ = \data_in[4]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_in[4]~input_o\,
	combout => \port_Out_08[4]~reg0feeder_combout\);

-- Location: FF_X1_Y9_N17
\port_Out_08[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \port_Out_08[4]~reg0feeder_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \U11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_Out_08[4]~reg0_q\);

-- Location: FF_X1_Y9_N3
\port_Out_08[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \data_in[5]~input_o\,
	clrn => \reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \U11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_Out_08[5]~reg0_q\);

-- Location: LCCOMB_X1_Y9_N28
\port_Out_08[6]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \port_Out_08[6]~reg0feeder_combout\ = \data_in[6]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_in[6]~input_o\,
	combout => \port_Out_08[6]~reg0feeder_combout\);

-- Location: FF_X1_Y9_N29
\port_Out_08[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \port_Out_08[6]~reg0feeder_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \U11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_Out_08[6]~reg0_q\);

-- Location: LCCOMB_X1_Y9_N6
\port_Out_08[7]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \port_Out_08[7]~reg0feeder_combout\ = \data_in[7]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_in[7]~input_o\,
	combout => \port_Out_08[7]~reg0feeder_combout\);

-- Location: FF_X1_Y9_N7
\port_Out_08[7]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \port_Out_08[7]~reg0feeder_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \U11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_Out_08[7]~reg0_q\);

-- Location: LCCOMB_X3_Y1_N8
\port_Out_09[0]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \port_Out_09[0]~reg0feeder_combout\ = \data_in[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_in[0]~input_o\,
	combout => \port_Out_09[0]~reg0feeder_combout\);

-- Location: LCCOMB_X9_Y1_N18
\U12~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U12~0_combout\ = (\U4~0_combout\ & (!\address[2]~input_o\ & (!\address[1]~input_o\ & \address[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4~0_combout\,
	datab => \address[2]~input_o\,
	datac => \address[1]~input_o\,
	datad => \address[3]~input_o\,
	combout => \U12~0_combout\);

-- Location: FF_X3_Y1_N9
\port_Out_09[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \port_Out_09[0]~reg0feeder_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \U12~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_Out_09[0]~reg0_q\);

-- Location: LCCOMB_X3_Y1_N26
\port_Out_09[1]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \port_Out_09[1]~reg0feeder_combout\ = \data_in[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_in[1]~input_o\,
	combout => \port_Out_09[1]~reg0feeder_combout\);

-- Location: FF_X3_Y1_N27
\port_Out_09[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \port_Out_09[1]~reg0feeder_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \U12~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_Out_09[1]~reg0_q\);

-- Location: LCCOMB_X3_Y1_N12
\port_Out_09[2]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \port_Out_09[2]~reg0feeder_combout\ = \data_in[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_in[2]~input_o\,
	combout => \port_Out_09[2]~reg0feeder_combout\);

-- Location: FF_X3_Y1_N13
\port_Out_09[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \port_Out_09[2]~reg0feeder_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \U12~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_Out_09[2]~reg0_q\);

-- Location: FF_X3_Y1_N31
\port_Out_09[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \data_in[3]~input_o\,
	clrn => \reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \U12~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_Out_09[3]~reg0_q\);

-- Location: LCCOMB_X3_Y1_N0
\port_Out_09[4]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \port_Out_09[4]~reg0feeder_combout\ = \data_in[4]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_in[4]~input_o\,
	combout => \port_Out_09[4]~reg0feeder_combout\);

-- Location: FF_X3_Y1_N1
\port_Out_09[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \port_Out_09[4]~reg0feeder_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \U12~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_Out_09[4]~reg0_q\);

-- Location: FF_X3_Y1_N11
\port_Out_09[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \data_in[5]~input_o\,
	clrn => \reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \U12~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_Out_09[5]~reg0_q\);

-- Location: FF_X3_Y1_N21
\port_Out_09[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \data_in[6]~input_o\,
	clrn => \reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \U12~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_Out_09[6]~reg0_q\);

-- Location: LCCOMB_X3_Y1_N6
\port_Out_09[7]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \port_Out_09[7]~reg0feeder_combout\ = \data_in[7]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_in[7]~input_o\,
	combout => \port_Out_09[7]~reg0feeder_combout\);

-- Location: FF_X3_Y1_N7
\port_Out_09[7]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \port_Out_09[7]~reg0feeder_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \U12~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_Out_09[7]~reg0_q\);

-- Location: LCCOMB_X19_Y1_N8
\port_Out_10[0]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \port_Out_10[0]~reg0feeder_combout\ = \data_in[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_in[0]~input_o\,
	combout => \port_Out_10[0]~reg0feeder_combout\);

-- Location: LCCOMB_X9_Y1_N28
\U13~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U13~0_combout\ = (\address[1]~input_o\ & (\U3~1_combout\ & (!\address[2]~input_o\ & \address[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[1]~input_o\,
	datab => \U3~1_combout\,
	datac => \address[2]~input_o\,
	datad => \address[3]~input_o\,
	combout => \U13~0_combout\);

-- Location: FF_X19_Y1_N9
\port_Out_10[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \port_Out_10[0]~reg0feeder_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \U13~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_Out_10[0]~reg0_q\);

-- Location: FF_X19_Y1_N19
\port_Out_10[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \data_in[1]~input_o\,
	clrn => \reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \U13~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_Out_10[1]~reg0_q\);

-- Location: FF_X19_Y1_N29
\port_Out_10[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \data_in[2]~input_o\,
	clrn => \reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \U13~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_Out_10[2]~reg0_q\);

-- Location: FF_X19_Y1_N23
\port_Out_10[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \data_in[3]~input_o\,
	clrn => \reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \U13~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_Out_10[3]~reg0_q\);

-- Location: FF_X19_Y1_N17
\port_Out_10[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \data_in[4]~input_o\,
	clrn => \reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \U13~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_Out_10[4]~reg0_q\);

-- Location: LCCOMB_X19_Y1_N26
\port_Out_10[5]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \port_Out_10[5]~reg0feeder_combout\ = \data_in[5]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_in[5]~input_o\,
	combout => \port_Out_10[5]~reg0feeder_combout\);

-- Location: FF_X19_Y1_N27
\port_Out_10[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \port_Out_10[5]~reg0feeder_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \U13~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_Out_10[5]~reg0_q\);

-- Location: LCCOMB_X19_Y1_N4
\port_Out_10[6]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \port_Out_10[6]~reg0feeder_combout\ = \data_in[6]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_in[6]~input_o\,
	combout => \port_Out_10[6]~reg0feeder_combout\);

-- Location: FF_X19_Y1_N5
\port_Out_10[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \port_Out_10[6]~reg0feeder_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \U13~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_Out_10[6]~reg0_q\);

-- Location: LCCOMB_X19_Y1_N6
\port_Out_10[7]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \port_Out_10[7]~reg0feeder_combout\ = \data_in[7]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_in[7]~input_o\,
	combout => \port_Out_10[7]~reg0feeder_combout\);

-- Location: FF_X19_Y1_N7
\port_Out_10[7]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \port_Out_10[7]~reg0feeder_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \U13~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_Out_10[7]~reg0_q\);

-- Location: LCCOMB_X1_Y5_N16
\port_Out_11[0]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \port_Out_11[0]~reg0feeder_combout\ = \data_in[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_in[0]~input_o\,
	combout => \port_Out_11[0]~reg0feeder_combout\);

-- Location: LCCOMB_X9_Y1_N14
\U14~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U14~0_combout\ = (\U4~0_combout\ & (!\address[2]~input_o\ & (\address[1]~input_o\ & \address[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4~0_combout\,
	datab => \address[2]~input_o\,
	datac => \address[1]~input_o\,
	datad => \address[3]~input_o\,
	combout => \U14~0_combout\);

-- Location: FF_X1_Y5_N17
\port_Out_11[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \port_Out_11[0]~reg0feeder_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \U14~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_Out_11[0]~reg0_q\);

-- Location: LCCOMB_X1_Y5_N10
\port_Out_11[1]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \port_Out_11[1]~reg0feeder_combout\ = \data_in[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_in[1]~input_o\,
	combout => \port_Out_11[1]~reg0feeder_combout\);

-- Location: FF_X1_Y5_N11
\port_Out_11[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \port_Out_11[1]~reg0feeder_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \U14~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_Out_11[1]~reg0_q\);

-- Location: FF_X1_Y5_N29
\port_Out_11[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \data_in[2]~input_o\,
	clrn => \reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \U14~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_Out_11[2]~reg0_q\);

-- Location: FF_X1_Y5_N7
\port_Out_11[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \data_in[3]~input_o\,
	clrn => \reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \U14~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_Out_11[3]~reg0_q\);

-- Location: LCCOMB_X1_Y5_N0
\port_Out_11[4]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \port_Out_11[4]~reg0feeder_combout\ = \data_in[4]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_in[4]~input_o\,
	combout => \port_Out_11[4]~reg0feeder_combout\);

-- Location: FF_X1_Y5_N1
\port_Out_11[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \port_Out_11[4]~reg0feeder_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \U14~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_Out_11[4]~reg0_q\);

-- Location: FF_X1_Y5_N3
\port_Out_11[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \data_in[5]~input_o\,
	clrn => \reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \U14~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_Out_11[5]~reg0_q\);

-- Location: LCCOMB_X1_Y5_N20
\port_Out_11[6]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \port_Out_11[6]~reg0feeder_combout\ = \data_in[6]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_in[6]~input_o\,
	combout => \port_Out_11[6]~reg0feeder_combout\);

-- Location: FF_X1_Y5_N21
\port_Out_11[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \port_Out_11[6]~reg0feeder_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \U14~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_Out_11[6]~reg0_q\);

-- Location: FF_X1_Y5_N31
\port_Out_11[7]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \data_in[7]~input_o\,
	clrn => \reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \U14~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_Out_11[7]~reg0_q\);

-- Location: LCCOMB_X19_Y1_N0
\port_Out_12[0]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \port_Out_12[0]~reg0feeder_combout\ = \data_in[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_in[0]~input_o\,
	combout => \port_Out_12[0]~reg0feeder_combout\);

-- Location: LCCOMB_X9_Y1_N24
\U15~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U15~0_combout\ = (!\address[1]~input_o\ & (\U3~1_combout\ & (\address[2]~input_o\ & \address[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[1]~input_o\,
	datab => \U3~1_combout\,
	datac => \address[2]~input_o\,
	datad => \address[3]~input_o\,
	combout => \U15~0_combout\);

-- Location: FF_X19_Y1_N1
\port_Out_12[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \port_Out_12[0]~reg0feeder_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \U15~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_Out_12[0]~reg0_q\);

-- Location: FF_X19_Y1_N11
\port_Out_12[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \data_in[1]~input_o\,
	clrn => \reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \U15~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_Out_12[1]~reg0_q\);

-- Location: FF_X19_Y1_N13
\port_Out_12[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \data_in[2]~input_o\,
	clrn => \reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \U15~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_Out_12[2]~reg0_q\);

-- Location: FF_X19_Y1_N15
\port_Out_12[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \data_in[3]~input_o\,
	clrn => \reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \U15~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_Out_12[3]~reg0_q\);

-- Location: FF_X19_Y1_N25
\port_Out_12[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \data_in[4]~input_o\,
	clrn => \reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \U15~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_Out_12[4]~reg0_q\);

-- Location: LCCOMB_X19_Y1_N2
\port_Out_12[5]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \port_Out_12[5]~reg0feeder_combout\ = \data_in[5]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_in[5]~input_o\,
	combout => \port_Out_12[5]~reg0feeder_combout\);

-- Location: FF_X19_Y1_N3
\port_Out_12[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \port_Out_12[5]~reg0feeder_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \U15~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_Out_12[5]~reg0_q\);

-- Location: LCCOMB_X19_Y1_N20
\port_Out_12[6]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \port_Out_12[6]~reg0feeder_combout\ = \data_in[6]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_in[6]~input_o\,
	combout => \port_Out_12[6]~reg0feeder_combout\);

-- Location: FF_X19_Y1_N21
\port_Out_12[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \port_Out_12[6]~reg0feeder_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \U15~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_Out_12[6]~reg0_q\);

-- Location: LCCOMB_X19_Y1_N30
\port_Out_12[7]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \port_Out_12[7]~reg0feeder_combout\ = \data_in[7]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_in[7]~input_o\,
	combout => \port_Out_12[7]~reg0feeder_combout\);

-- Location: FF_X19_Y1_N31
\port_Out_12[7]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \port_Out_12[7]~reg0feeder_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \U15~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_Out_12[7]~reg0_q\);

-- Location: LCCOMB_X1_Y5_N8
\port_Out_13[0]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \port_Out_13[0]~reg0feeder_combout\ = \data_in[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_in[0]~input_o\,
	combout => \port_Out_13[0]~reg0feeder_combout\);

-- Location: LCCOMB_X9_Y1_N2
\U16~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U16~0_combout\ = (\U4~0_combout\ & (\address[2]~input_o\ & (!\address[1]~input_o\ & \address[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4~0_combout\,
	datab => \address[2]~input_o\,
	datac => \address[1]~input_o\,
	datad => \address[3]~input_o\,
	combout => \U16~0_combout\);

-- Location: FF_X1_Y5_N9
\port_Out_13[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \port_Out_13[0]~reg0feeder_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \U16~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_Out_13[0]~reg0_q\);

-- Location: LCCOMB_X1_Y5_N18
\port_Out_13[1]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \port_Out_13[1]~reg0feeder_combout\ = \data_in[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_in[1]~input_o\,
	combout => \port_Out_13[1]~reg0feeder_combout\);

-- Location: FF_X1_Y5_N19
\port_Out_13[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \port_Out_13[1]~reg0feeder_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \U16~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_Out_13[1]~reg0_q\);

-- Location: FF_X1_Y5_N13
\port_Out_13[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \data_in[2]~input_o\,
	clrn => \reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \U16~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_Out_13[2]~reg0_q\);

-- Location: FF_X1_Y5_N15
\port_Out_13[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \data_in[3]~input_o\,
	clrn => \reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \U16~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_Out_13[3]~reg0_q\);

-- Location: LCCOMB_X1_Y5_N24
\port_Out_13[4]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \port_Out_13[4]~reg0feeder_combout\ = \data_in[4]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_in[4]~input_o\,
	combout => \port_Out_13[4]~reg0feeder_combout\);

-- Location: FF_X1_Y5_N25
\port_Out_13[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \port_Out_13[4]~reg0feeder_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \U16~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_Out_13[4]~reg0_q\);

-- Location: FF_X1_Y5_N27
\port_Out_13[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \data_in[5]~input_o\,
	clrn => \reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \U16~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_Out_13[5]~reg0_q\);

-- Location: LCCOMB_X1_Y5_N4
\port_Out_13[6]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \port_Out_13[6]~reg0feeder_combout\ = \data_in[6]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_in[6]~input_o\,
	combout => \port_Out_13[6]~reg0feeder_combout\);

-- Location: FF_X1_Y5_N5
\port_Out_13[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \port_Out_13[6]~reg0feeder_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \U16~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_Out_13[6]~reg0_q\);

-- Location: FF_X1_Y5_N23
\port_Out_13[7]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \data_in[7]~input_o\,
	clrn => \reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \U16~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_Out_13[7]~reg0_q\);

-- Location: LCCOMB_X3_Y1_N16
\port_Out_14[0]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \port_Out_14[0]~reg0feeder_combout\ = \data_in[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_in[0]~input_o\,
	combout => \port_Out_14[0]~reg0feeder_combout\);

-- Location: LCCOMB_X9_Y1_N12
\U17~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U17~0_combout\ = (\address[1]~input_o\ & (\U3~1_combout\ & (\address[2]~input_o\ & \address[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[1]~input_o\,
	datab => \U3~1_combout\,
	datac => \address[2]~input_o\,
	datad => \address[3]~input_o\,
	combout => \U17~0_combout\);

-- Location: FF_X3_Y1_N17
\port_Out_14[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \port_Out_14[0]~reg0feeder_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \U17~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_Out_14[0]~reg0_q\);

-- Location: LCCOMB_X3_Y1_N2
\port_Out_14[1]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \port_Out_14[1]~reg0feeder_combout\ = \data_in[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_in[1]~input_o\,
	combout => \port_Out_14[1]~reg0feeder_combout\);

-- Location: FF_X3_Y1_N3
\port_Out_14[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \port_Out_14[1]~reg0feeder_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \U17~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_Out_14[1]~reg0_q\);

-- Location: LCCOMB_X3_Y1_N4
\port_Out_14[2]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \port_Out_14[2]~reg0feeder_combout\ = \data_in[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_in[2]~input_o\,
	combout => \port_Out_14[2]~reg0feeder_combout\);

-- Location: FF_X3_Y1_N5
\port_Out_14[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \port_Out_14[2]~reg0feeder_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \U17~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_Out_14[2]~reg0_q\);

-- Location: FF_X3_Y1_N23
\port_Out_14[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \data_in[3]~input_o\,
	clrn => \reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \U17~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_Out_14[3]~reg0_q\);

-- Location: LCCOMB_X3_Y1_N24
\port_Out_14[4]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \port_Out_14[4]~reg0feeder_combout\ = \data_in[4]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_in[4]~input_o\,
	combout => \port_Out_14[4]~reg0feeder_combout\);

-- Location: FF_X3_Y1_N25
\port_Out_14[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \port_Out_14[4]~reg0feeder_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \U17~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_Out_14[4]~reg0_q\);

-- Location: FF_X3_Y1_N19
\port_Out_14[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \data_in[5]~input_o\,
	clrn => \reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \U17~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_Out_14[5]~reg0_q\);

-- Location: FF_X3_Y1_N29
\port_Out_14[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \data_in[6]~input_o\,
	clrn => \reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \U17~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_Out_14[6]~reg0_q\);

-- Location: LCCOMB_X3_Y1_N14
\port_Out_14[7]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \port_Out_14[7]~reg0feeder_combout\ = \data_in[7]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_in[7]~input_o\,
	combout => \port_Out_14[7]~reg0feeder_combout\);

-- Location: FF_X3_Y1_N15
\port_Out_14[7]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \port_Out_14[7]~reg0feeder_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \U17~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_Out_14[7]~reg0_q\);

-- Location: LCCOMB_X30_Y1_N0
\port_Out_15[0]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \port_Out_15[0]~reg0feeder_combout\ = \data_in[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_in[0]~input_o\,
	combout => \port_Out_15[0]~reg0feeder_combout\);

-- Location: LCCOMB_X9_Y1_N30
\U18~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U18~0_combout\ = (\U4~0_combout\ & (\address[2]~input_o\ & (\address[1]~input_o\ & \address[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4~0_combout\,
	datab => \address[2]~input_o\,
	datac => \address[1]~input_o\,
	datad => \address[3]~input_o\,
	combout => \U18~0_combout\);

-- Location: FF_X30_Y1_N1
\port_Out_15[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \port_Out_15[0]~reg0feeder_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \U18~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_Out_15[0]~reg0_q\);

-- Location: FF_X30_Y1_N11
\port_Out_15[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \data_in[1]~input_o\,
	clrn => \reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \U18~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_Out_15[1]~reg0_q\);

-- Location: FF_X30_Y1_N5
\port_Out_15[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \data_in[2]~input_o\,
	clrn => \reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \U18~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_Out_15[2]~reg0_q\);

-- Location: LCCOMB_X30_Y1_N6
\port_Out_15[3]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \port_Out_15[3]~reg0feeder_combout\ = \data_in[3]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_in[3]~input_o\,
	combout => \port_Out_15[3]~reg0feeder_combout\);

-- Location: FF_X30_Y1_N7
\port_Out_15[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \port_Out_15[3]~reg0feeder_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \U18~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_Out_15[3]~reg0_q\);

-- Location: FF_X30_Y1_N25
\port_Out_15[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \data_in[4]~input_o\,
	clrn => \reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \U18~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_Out_15[4]~reg0_q\);

-- Location: LCCOMB_X30_Y1_N2
\port_Out_15[5]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \port_Out_15[5]~reg0feeder_combout\ = \data_in[5]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_in[5]~input_o\,
	combout => \port_Out_15[5]~reg0feeder_combout\);

-- Location: FF_X30_Y1_N3
\port_Out_15[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \port_Out_15[5]~reg0feeder_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \U18~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_Out_15[5]~reg0_q\);

-- Location: LCCOMB_X30_Y1_N12
\port_Out_15[6]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \port_Out_15[6]~reg0feeder_combout\ = \data_in[6]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_in[6]~input_o\,
	combout => \port_Out_15[6]~reg0feeder_combout\);

-- Location: FF_X30_Y1_N13
\port_Out_15[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \port_Out_15[6]~reg0feeder_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \U18~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_Out_15[6]~reg0_q\);

-- Location: FF_X30_Y1_N23
\port_Out_15[7]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \data_in[7]~input_o\,
	clrn => \reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \U18~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_Out_15[7]~reg0_q\);

ww_port_Out_00(0) <= \port_Out_00[0]~output_o\;

ww_port_Out_00(1) <= \port_Out_00[1]~output_o\;

ww_port_Out_00(2) <= \port_Out_00[2]~output_o\;

ww_port_Out_00(3) <= \port_Out_00[3]~output_o\;

ww_port_Out_00(4) <= \port_Out_00[4]~output_o\;

ww_port_Out_00(5) <= \port_Out_00[5]~output_o\;

ww_port_Out_00(6) <= \port_Out_00[6]~output_o\;

ww_port_Out_00(7) <= \port_Out_00[7]~output_o\;

ww_port_Out_01(0) <= \port_Out_01[0]~output_o\;

ww_port_Out_01(1) <= \port_Out_01[1]~output_o\;

ww_port_Out_01(2) <= \port_Out_01[2]~output_o\;

ww_port_Out_01(3) <= \port_Out_01[3]~output_o\;

ww_port_Out_01(4) <= \port_Out_01[4]~output_o\;

ww_port_Out_01(5) <= \port_Out_01[5]~output_o\;

ww_port_Out_01(6) <= \port_Out_01[6]~output_o\;

ww_port_Out_01(7) <= \port_Out_01[7]~output_o\;

ww_port_Out_02(0) <= \port_Out_02[0]~output_o\;

ww_port_Out_02(1) <= \port_Out_02[1]~output_o\;

ww_port_Out_02(2) <= \port_Out_02[2]~output_o\;

ww_port_Out_02(3) <= \port_Out_02[3]~output_o\;

ww_port_Out_02(4) <= \port_Out_02[4]~output_o\;

ww_port_Out_02(5) <= \port_Out_02[5]~output_o\;

ww_port_Out_02(6) <= \port_Out_02[6]~output_o\;

ww_port_Out_02(7) <= \port_Out_02[7]~output_o\;

ww_port_Out_03(0) <= \port_Out_03[0]~output_o\;

ww_port_Out_03(1) <= \port_Out_03[1]~output_o\;

ww_port_Out_03(2) <= \port_Out_03[2]~output_o\;

ww_port_Out_03(3) <= \port_Out_03[3]~output_o\;

ww_port_Out_03(4) <= \port_Out_03[4]~output_o\;

ww_port_Out_03(5) <= \port_Out_03[5]~output_o\;

ww_port_Out_03(6) <= \port_Out_03[6]~output_o\;

ww_port_Out_03(7) <= \port_Out_03[7]~output_o\;

ww_port_Out_04(0) <= \port_Out_04[0]~output_o\;

ww_port_Out_04(1) <= \port_Out_04[1]~output_o\;

ww_port_Out_04(2) <= \port_Out_04[2]~output_o\;

ww_port_Out_04(3) <= \port_Out_04[3]~output_o\;

ww_port_Out_04(4) <= \port_Out_04[4]~output_o\;

ww_port_Out_04(5) <= \port_Out_04[5]~output_o\;

ww_port_Out_04(6) <= \port_Out_04[6]~output_o\;

ww_port_Out_04(7) <= \port_Out_04[7]~output_o\;

ww_port_Out_05(0) <= \port_Out_05[0]~output_o\;

ww_port_Out_05(1) <= \port_Out_05[1]~output_o\;

ww_port_Out_05(2) <= \port_Out_05[2]~output_o\;

ww_port_Out_05(3) <= \port_Out_05[3]~output_o\;

ww_port_Out_05(4) <= \port_Out_05[4]~output_o\;

ww_port_Out_05(5) <= \port_Out_05[5]~output_o\;

ww_port_Out_05(6) <= \port_Out_05[6]~output_o\;

ww_port_Out_05(7) <= \port_Out_05[7]~output_o\;

ww_port_Out_06(0) <= \port_Out_06[0]~output_o\;

ww_port_Out_06(1) <= \port_Out_06[1]~output_o\;

ww_port_Out_06(2) <= \port_Out_06[2]~output_o\;

ww_port_Out_06(3) <= \port_Out_06[3]~output_o\;

ww_port_Out_06(4) <= \port_Out_06[4]~output_o\;

ww_port_Out_06(5) <= \port_Out_06[5]~output_o\;

ww_port_Out_06(6) <= \port_Out_06[6]~output_o\;

ww_port_Out_06(7) <= \port_Out_06[7]~output_o\;

ww_port_Out_07(0) <= \port_Out_07[0]~output_o\;

ww_port_Out_07(1) <= \port_Out_07[1]~output_o\;

ww_port_Out_07(2) <= \port_Out_07[2]~output_o\;

ww_port_Out_07(3) <= \port_Out_07[3]~output_o\;

ww_port_Out_07(4) <= \port_Out_07[4]~output_o\;

ww_port_Out_07(5) <= \port_Out_07[5]~output_o\;

ww_port_Out_07(6) <= \port_Out_07[6]~output_o\;

ww_port_Out_07(7) <= \port_Out_07[7]~output_o\;

ww_port_Out_08(0) <= \port_Out_08[0]~output_o\;

ww_port_Out_08(1) <= \port_Out_08[1]~output_o\;

ww_port_Out_08(2) <= \port_Out_08[2]~output_o\;

ww_port_Out_08(3) <= \port_Out_08[3]~output_o\;

ww_port_Out_08(4) <= \port_Out_08[4]~output_o\;

ww_port_Out_08(5) <= \port_Out_08[5]~output_o\;

ww_port_Out_08(6) <= \port_Out_08[6]~output_o\;

ww_port_Out_08(7) <= \port_Out_08[7]~output_o\;

ww_port_Out_09(0) <= \port_Out_09[0]~output_o\;

ww_port_Out_09(1) <= \port_Out_09[1]~output_o\;

ww_port_Out_09(2) <= \port_Out_09[2]~output_o\;

ww_port_Out_09(3) <= \port_Out_09[3]~output_o\;

ww_port_Out_09(4) <= \port_Out_09[4]~output_o\;

ww_port_Out_09(5) <= \port_Out_09[5]~output_o\;

ww_port_Out_09(6) <= \port_Out_09[6]~output_o\;

ww_port_Out_09(7) <= \port_Out_09[7]~output_o\;

ww_port_Out_10(0) <= \port_Out_10[0]~output_o\;

ww_port_Out_10(1) <= \port_Out_10[1]~output_o\;

ww_port_Out_10(2) <= \port_Out_10[2]~output_o\;

ww_port_Out_10(3) <= \port_Out_10[3]~output_o\;

ww_port_Out_10(4) <= \port_Out_10[4]~output_o\;

ww_port_Out_10(5) <= \port_Out_10[5]~output_o\;

ww_port_Out_10(6) <= \port_Out_10[6]~output_o\;

ww_port_Out_10(7) <= \port_Out_10[7]~output_o\;

ww_port_Out_11(0) <= \port_Out_11[0]~output_o\;

ww_port_Out_11(1) <= \port_Out_11[1]~output_o\;

ww_port_Out_11(2) <= \port_Out_11[2]~output_o\;

ww_port_Out_11(3) <= \port_Out_11[3]~output_o\;

ww_port_Out_11(4) <= \port_Out_11[4]~output_o\;

ww_port_Out_11(5) <= \port_Out_11[5]~output_o\;

ww_port_Out_11(6) <= \port_Out_11[6]~output_o\;

ww_port_Out_11(7) <= \port_Out_11[7]~output_o\;

ww_port_Out_12(0) <= \port_Out_12[0]~output_o\;

ww_port_Out_12(1) <= \port_Out_12[1]~output_o\;

ww_port_Out_12(2) <= \port_Out_12[2]~output_o\;

ww_port_Out_12(3) <= \port_Out_12[3]~output_o\;

ww_port_Out_12(4) <= \port_Out_12[4]~output_o\;

ww_port_Out_12(5) <= \port_Out_12[5]~output_o\;

ww_port_Out_12(6) <= \port_Out_12[6]~output_o\;

ww_port_Out_12(7) <= \port_Out_12[7]~output_o\;

ww_port_Out_13(0) <= \port_Out_13[0]~output_o\;

ww_port_Out_13(1) <= \port_Out_13[1]~output_o\;

ww_port_Out_13(2) <= \port_Out_13[2]~output_o\;

ww_port_Out_13(3) <= \port_Out_13[3]~output_o\;

ww_port_Out_13(4) <= \port_Out_13[4]~output_o\;

ww_port_Out_13(5) <= \port_Out_13[5]~output_o\;

ww_port_Out_13(6) <= \port_Out_13[6]~output_o\;

ww_port_Out_13(7) <= \port_Out_13[7]~output_o\;

ww_port_Out_14(0) <= \port_Out_14[0]~output_o\;

ww_port_Out_14(1) <= \port_Out_14[1]~output_o\;

ww_port_Out_14(2) <= \port_Out_14[2]~output_o\;

ww_port_Out_14(3) <= \port_Out_14[3]~output_o\;

ww_port_Out_14(4) <= \port_Out_14[4]~output_o\;

ww_port_Out_14(5) <= \port_Out_14[5]~output_o\;

ww_port_Out_14(6) <= \port_Out_14[6]~output_o\;

ww_port_Out_14(7) <= \port_Out_14[7]~output_o\;

ww_port_Out_15(0) <= \port_Out_15[0]~output_o\;

ww_port_Out_15(1) <= \port_Out_15[1]~output_o\;

ww_port_Out_15(2) <= \port_Out_15[2]~output_o\;

ww_port_Out_15(3) <= \port_Out_15[3]~output_o\;

ww_port_Out_15(4) <= \port_Out_15[4]~output_o\;

ww_port_Out_15(5) <= \port_Out_15[5]~output_o\;

ww_port_Out_15(6) <= \port_Out_15[6]~output_o\;

ww_port_Out_15(7) <= \port_Out_15[7]~output_o\;
END structure;


