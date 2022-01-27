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

-- DATE "01/27/2022 10:16:16"

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

ENTITY 	data_path IS
    PORT (
	IR_Load : IN std_logic;
	MAR_Load : IN std_logic;
	PC_Load : IN std_logic;
	PC_Inc : IN std_logic;
	A_Load : IN std_logic;
	B_Load : IN std_logic;
	ALU_Sel : IN std_logic_vector(2 DOWNTO 0);
	CCR_Load : IN std_logic;
	Bus2_Sel : IN std_logic_vector(1 DOWNTO 0);
	Bus1_Sel : IN std_logic_vector(1 DOWNTO 0);
	Clock : IN std_logic;
	Reset : IN std_logic;
	from_memory : IN std_logic_vector(7 DOWNTO 0);
	CCR_Result : OUT std_logic_vector(3 DOWNTO 0);
	IR : OUT std_logic_vector(7 DOWNTO 0);
	to_memory : OUT std_logic_vector(7 DOWNTO 0);
	address : OUT std_logic_vector(7 DOWNTO 0)
	);
END data_path;

-- Design Ports Information
-- CCR_Result[0]	=>  Location: PIN_A19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CCR_Result[1]	=>  Location: PIN_H17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CCR_Result[2]	=>  Location: PIN_F12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CCR_Result[3]	=>  Location: PIN_C17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IR[0]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IR[1]	=>  Location: PIN_J16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IR[2]	=>  Location: PIN_A16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IR[3]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IR[4]	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IR[5]	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IR[6]	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IR[7]	=>  Location: PIN_H19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- to_memory[0]	=>  Location: PIN_E14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- to_memory[1]	=>  Location: PIN_F22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- to_memory[2]	=>  Location: PIN_F21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- to_memory[3]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- to_memory[4]	=>  Location: PIN_G12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- to_memory[5]	=>  Location: PIN_H20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- to_memory[6]	=>  Location: PIN_G13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- to_memory[7]	=>  Location: PIN_H21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address[0]	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address[1]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address[2]	=>  Location: PIN_B19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address[3]	=>  Location: PIN_B14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address[4]	=>  Location: PIN_H14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address[5]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address[6]	=>  Location: PIN_E12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address[7]	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Bus1_Sel[1]	=>  Location: PIN_E21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Bus1_Sel[0]	=>  Location: PIN_D21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Clock	=>  Location: PIN_G2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Reset	=>  Location: PIN_G1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CCR_Load	=>  Location: PIN_B20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Bus2_Sel[0]	=>  Location: PIN_E22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Bus2_Sel[1]	=>  Location: PIN_AB17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- from_memory[0]	=>  Location: PIN_H18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IR_Load	=>  Location: PIN_J17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- from_memory[1]	=>  Location: PIN_B15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- from_memory[2]	=>  Location: PIN_A18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- from_memory[3]	=>  Location: PIN_E13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- from_memory[4]	=>  Location: PIN_F14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- from_memory[5]	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- from_memory[6]	=>  Location: PIN_F13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- from_memory[7]	=>  Location: PIN_B17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B_Load	=>  Location: PIN_K18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_Load	=>  Location: PIN_A20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_Inc	=>  Location: PIN_J18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A_Load	=>  Location: PIN_K17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MAR_Load	=>  Location: PIN_B16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU_Sel[0]	=>  Location: PIN_B18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU_Sel[1]	=>  Location: PIN_H11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU_Sel[2]	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF data_path IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_IR_Load : std_logic;
SIGNAL ww_MAR_Load : std_logic;
SIGNAL ww_PC_Load : std_logic;
SIGNAL ww_PC_Inc : std_logic;
SIGNAL ww_A_Load : std_logic;
SIGNAL ww_B_Load : std_logic;
SIGNAL ww_ALU_Sel : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_CCR_Load : std_logic;
SIGNAL ww_Bus2_Sel : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_Bus1_Sel : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_Clock : std_logic;
SIGNAL ww_Reset : std_logic;
SIGNAL ww_from_memory : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_CCR_Result : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_IR : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_to_memory : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_address : std_logic_vector(7 DOWNTO 0);
SIGNAL \Clock~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \U0|Equal0~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Reset~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CCR_Result[0]~output_o\ : std_logic;
SIGNAL \CCR_Result[1]~output_o\ : std_logic;
SIGNAL \CCR_Result[2]~output_o\ : std_logic;
SIGNAL \CCR_Result[3]~output_o\ : std_logic;
SIGNAL \IR[0]~output_o\ : std_logic;
SIGNAL \IR[1]~output_o\ : std_logic;
SIGNAL \IR[2]~output_o\ : std_logic;
SIGNAL \IR[3]~output_o\ : std_logic;
SIGNAL \IR[4]~output_o\ : std_logic;
SIGNAL \IR[5]~output_o\ : std_logic;
SIGNAL \IR[6]~output_o\ : std_logic;
SIGNAL \IR[7]~output_o\ : std_logic;
SIGNAL \to_memory[0]~output_o\ : std_logic;
SIGNAL \to_memory[1]~output_o\ : std_logic;
SIGNAL \to_memory[2]~output_o\ : std_logic;
SIGNAL \to_memory[3]~output_o\ : std_logic;
SIGNAL \to_memory[4]~output_o\ : std_logic;
SIGNAL \to_memory[5]~output_o\ : std_logic;
SIGNAL \to_memory[6]~output_o\ : std_logic;
SIGNAL \to_memory[7]~output_o\ : std_logic;
SIGNAL \address[0]~output_o\ : std_logic;
SIGNAL \address[1]~output_o\ : std_logic;
SIGNAL \address[2]~output_o\ : std_logic;
SIGNAL \address[3]~output_o\ : std_logic;
SIGNAL \address[4]~output_o\ : std_logic;
SIGNAL \address[5]~output_o\ : std_logic;
SIGNAL \address[6]~output_o\ : std_logic;
SIGNAL \address[7]~output_o\ : std_logic;
SIGNAL \Clock~input_o\ : std_logic;
SIGNAL \Clock~inputclkctrl_outclk\ : std_logic;
SIGNAL \ALU_Sel[0]~input_o\ : std_logic;
SIGNAL \Bus2_Sel[0]~input_o\ : std_logic;
SIGNAL \Bus2_Sel[1]~input_o\ : std_logic;
SIGNAL \Bus1_Sel[0]~input_o\ : std_logic;
SIGNAL \Bus1_Sel[1]~input_o\ : std_logic;
SIGNAL \PC_uns[0]~8_combout\ : std_logic;
SIGNAL \Reset~input_o\ : std_logic;
SIGNAL \Reset~inputclkctrl_outclk\ : std_logic;
SIGNAL \A_Load~input_o\ : std_logic;
SIGNAL \B_Load~input_o\ : std_logic;
SIGNAL \Mux7~0_combout\ : std_logic;
SIGNAL \Mux15~3_combout\ : std_logic;
SIGNAL \from_memory[0]~input_o\ : std_logic;
SIGNAL \Mux7~1_combout\ : std_logic;
SIGNAL \U0|Add1~0_combout\ : std_logic;
SIGNAL \U0|Add0~0_combout\ : std_logic;
SIGNAL \U0|ALU_Result[0]~1_combout\ : std_logic;
SIGNAL \ALU_Sel[2]~input_o\ : std_logic;
SIGNAL \ALU_Sel[1]~input_o\ : std_logic;
SIGNAL \U0|Equal0~0_combout\ : std_logic;
SIGNAL \U0|Equal0~0clkctrl_outclk\ : std_logic;
SIGNAL \Mux15~2_combout\ : std_logic;
SIGNAL \Mux15~4_combout\ : std_logic;
SIGNAL \PC_Load~input_o\ : std_logic;
SIGNAL \PC_Inc~input_o\ : std_logic;
SIGNAL \PC_uns[0]~10_combout\ : std_logic;
SIGNAL \PC_uns[0]~9\ : std_logic;
SIGNAL \PC_uns[1]~11_combout\ : std_logic;
SIGNAL \Mux6~0_combout\ : std_logic;
SIGNAL \Mux14~3_combout\ : std_logic;
SIGNAL \from_memory[1]~input_o\ : std_logic;
SIGNAL \Mux6~1_combout\ : std_logic;
SIGNAL \U0|Add0~1\ : std_logic;
SIGNAL \U0|Add0~2_combout\ : std_logic;
SIGNAL \U0|Add1~1\ : std_logic;
SIGNAL \U0|Add1~2_combout\ : std_logic;
SIGNAL \U0|ALU_Result[1]~2_combout\ : std_logic;
SIGNAL \Mux14~2_combout\ : std_logic;
SIGNAL \Mux14~4_combout\ : std_logic;
SIGNAL \PC_uns[1]~12\ : std_logic;
SIGNAL \PC_uns[2]~13_combout\ : std_logic;
SIGNAL \from_memory[2]~input_o\ : std_logic;
SIGNAL \Mux5~0_combout\ : std_logic;
SIGNAL \Mux5~1_combout\ : std_logic;
SIGNAL \U0|Add0~3\ : std_logic;
SIGNAL \U0|Add0~4_combout\ : std_logic;
SIGNAL \U0|Add1~3\ : std_logic;
SIGNAL \U0|Add1~4_combout\ : std_logic;
SIGNAL \U0|ALU_Result[2]~3_combout\ : std_logic;
SIGNAL \Mux13~2_combout\ : std_logic;
SIGNAL \Mux13~3_combout\ : std_logic;
SIGNAL \Mux13~4_combout\ : std_logic;
SIGNAL \PC_uns[2]~14\ : std_logic;
SIGNAL \PC_uns[3]~15_combout\ : std_logic;
SIGNAL \from_memory[3]~input_o\ : std_logic;
SIGNAL \Mux4~0_combout\ : std_logic;
SIGNAL \Mux4~1_combout\ : std_logic;
SIGNAL \U0|Add0~5\ : std_logic;
SIGNAL \U0|Add0~6_combout\ : std_logic;
SIGNAL \U0|Add1~5\ : std_logic;
SIGNAL \U0|Add1~6_combout\ : std_logic;
SIGNAL \U0|ALU_Result[3]~4_combout\ : std_logic;
SIGNAL \Mux12~2_combout\ : std_logic;
SIGNAL \Mux12~3_combout\ : std_logic;
SIGNAL \Mux12~4_combout\ : std_logic;
SIGNAL \PC_uns[3]~16\ : std_logic;
SIGNAL \PC_uns[4]~17_combout\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \Mux11~3_combout\ : std_logic;
SIGNAL \from_memory[4]~input_o\ : std_logic;
SIGNAL \Mux3~1_combout\ : std_logic;
SIGNAL \U0|Add0~7\ : std_logic;
SIGNAL \U0|Add0~8_combout\ : std_logic;
SIGNAL \U0|Add1~7\ : std_logic;
SIGNAL \U0|Add1~8_combout\ : std_logic;
SIGNAL \U0|ALU_Result[4]~5_combout\ : std_logic;
SIGNAL \Mux11~2_combout\ : std_logic;
SIGNAL \Mux11~4_combout\ : std_logic;
SIGNAL \PC_uns[4]~18\ : std_logic;
SIGNAL \PC_uns[5]~19_combout\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \Mux10~3_combout\ : std_logic;
SIGNAL \from_memory[5]~input_o\ : std_logic;
SIGNAL \Mux2~1_combout\ : std_logic;
SIGNAL \U0|Add0~9\ : std_logic;
SIGNAL \U0|Add0~10_combout\ : std_logic;
SIGNAL \U0|Add1~9\ : std_logic;
SIGNAL \U0|Add1~10_combout\ : std_logic;
SIGNAL \U0|ALU_Result[5]~6_combout\ : std_logic;
SIGNAL \Mux10~2_combout\ : std_logic;
SIGNAL \Mux10~4_combout\ : std_logic;
SIGNAL \PC_uns[5]~20\ : std_logic;
SIGNAL \PC_uns[6]~21_combout\ : std_logic;
SIGNAL \A[6]~feeder_combout\ : std_logic;
SIGNAL \B[6]~feeder_combout\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \Mux9~3_combout\ : std_logic;
SIGNAL \from_memory[6]~input_o\ : std_logic;
SIGNAL \Mux1~1_combout\ : std_logic;
SIGNAL \U0|Add1~11\ : std_logic;
SIGNAL \U0|Add1~12_combout\ : std_logic;
SIGNAL \U0|Add0~11\ : std_logic;
SIGNAL \U0|Add0~12_combout\ : std_logic;
SIGNAL \U0|ALU_Result[6]~7_combout\ : std_logic;
SIGNAL \Mux9~2_combout\ : std_logic;
SIGNAL \Mux9~4_combout\ : std_logic;
SIGNAL \PC_uns[6]~22\ : std_logic;
SIGNAL \PC_uns[7]~23_combout\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \A[7]~feeder_combout\ : std_logic;
SIGNAL \Mux8~3_combout\ : std_logic;
SIGNAL \from_memory[7]~input_o\ : std_logic;
SIGNAL \Mux0~1_combout\ : std_logic;
SIGNAL \U0|Add1~13\ : std_logic;
SIGNAL \U0|Add1~14_combout\ : std_logic;
SIGNAL \U0|ALU_Result[7]~0_combout\ : std_logic;
SIGNAL \Mux8~2_combout\ : std_logic;
SIGNAL \Mux8~4_combout\ : std_logic;
SIGNAL \B[7]~feeder_combout\ : std_logic;
SIGNAL \U0|Add0~13\ : std_logic;
SIGNAL \U0|Add0~14_combout\ : std_logic;
SIGNAL \U0|Add1~15\ : std_logic;
SIGNAL \U0|Add1~16_combout\ : std_logic;
SIGNAL \U0|NZVC[0]~0_combout\ : std_logic;
SIGNAL \CCR_Load~input_o\ : std_logic;
SIGNAL \CCR_Result[0]~reg0_q\ : std_logic;
SIGNAL \U0|NZVC[1]~1_combout\ : std_logic;
SIGNAL \U0|LessThan0~1_cout\ : std_logic;
SIGNAL \U0|LessThan0~3_cout\ : std_logic;
SIGNAL \U0|LessThan0~5_cout\ : std_logic;
SIGNAL \U0|LessThan0~7_cout\ : std_logic;
SIGNAL \U0|LessThan0~9_cout\ : std_logic;
SIGNAL \U0|LessThan0~11_cout\ : std_logic;
SIGNAL \U0|LessThan0~13_cout\ : std_logic;
SIGNAL \U0|LessThan0~14_combout\ : std_logic;
SIGNAL \U0|NZVC[1]~2_combout\ : std_logic;
SIGNAL \U0|NZVC[1]~3_combout\ : std_logic;
SIGNAL \CCR_Result[1]~reg0_q\ : std_logic;
SIGNAL \U0|NZVC[2]~7_combout\ : std_logic;
SIGNAL \U0|NZVC[2]~8_combout\ : std_logic;
SIGNAL \U0|NZVC[2]~4_combout\ : std_logic;
SIGNAL \U0|NZVC[2]~5_combout\ : std_logic;
SIGNAL \U0|NZVC[2]~6_combout\ : std_logic;
SIGNAL \U0|NZVC[2]~9_combout\ : std_logic;
SIGNAL \CCR_Result[2]~reg0_q\ : std_logic;
SIGNAL \CCR_Result[3]~reg0feeder_combout\ : std_logic;
SIGNAL \CCR_Result[3]~reg0_q\ : std_logic;
SIGNAL \IR_Load~input_o\ : std_logic;
SIGNAL \IR[0]~reg0_q\ : std_logic;
SIGNAL \IR[1]~reg0_q\ : std_logic;
SIGNAL \IR[2]~reg0_q\ : std_logic;
SIGNAL \IR[3]~reg0_q\ : std_logic;
SIGNAL \IR[4]~reg0feeder_combout\ : std_logic;
SIGNAL \IR[4]~reg0_q\ : std_logic;
SIGNAL \IR[5]~reg0_q\ : std_logic;
SIGNAL \IR[6]~reg0_q\ : std_logic;
SIGNAL \IR[7]~reg0_q\ : std_logic;
SIGNAL \MAR_Load~input_o\ : std_logic;
SIGNAL PC_uns : std_logic_vector(7 DOWNTO 0);
SIGNAL MAR : std_logic_vector(7 DOWNTO 0);
SIGNAL B : std_logic_vector(7 DOWNTO 0);
SIGNAL A : std_logic_vector(7 DOWNTO 0);
SIGNAL \U0|NZVC\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \U0|ALU_Result\ : std_logic_vector(7 DOWNTO 0);

BEGIN

ww_IR_Load <= IR_Load;
ww_MAR_Load <= MAR_Load;
ww_PC_Load <= PC_Load;
ww_PC_Inc <= PC_Inc;
ww_A_Load <= A_Load;
ww_B_Load <= B_Load;
ww_ALU_Sel <= ALU_Sel;
ww_CCR_Load <= CCR_Load;
ww_Bus2_Sel <= Bus2_Sel;
ww_Bus1_Sel <= Bus1_Sel;
ww_Clock <= Clock;
ww_Reset <= Reset;
ww_from_memory <= from_memory;
CCR_Result <= ww_CCR_Result;
IR <= ww_IR;
to_memory <= ww_to_memory;
address <= ww_address;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\Clock~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \Clock~input_o\);

\U0|Equal0~0clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \U0|Equal0~0_combout\);

\Reset~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \Reset~input_o\);

-- Location: IOOBUF_X32_Y29_N9
\CCR_Result[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \CCR_Result[0]~reg0_q\,
	devoe => ww_devoe,
	o => \CCR_Result[0]~output_o\);

-- Location: IOOBUF_X41_Y25_N2
\CCR_Result[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \CCR_Result[1]~reg0_q\,
	devoe => ww_devoe,
	o => \CCR_Result[1]~output_o\);

-- Location: IOOBUF_X28_Y29_N23
\CCR_Result[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \CCR_Result[2]~reg0_q\,
	devoe => ww_devoe,
	o => \CCR_Result[2]~output_o\);

-- Location: IOOBUF_X35_Y29_N16
\CCR_Result[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \CCR_Result[3]~reg0_q\,
	devoe => ww_devoe,
	o => \CCR_Result[3]~output_o\);

-- Location: IOOBUF_X30_Y29_N2
\IR[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \IR[0]~reg0_q\,
	devoe => ww_devoe,
	o => \IR[0]~output_o\);

-- Location: IOOBUF_X41_Y20_N16
\IR[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \IR[1]~reg0_q\,
	devoe => ww_devoe,
	o => \IR[1]~output_o\);

-- Location: IOOBUF_X30_Y29_N30
\IR[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \IR[2]~reg0_q\,
	devoe => ww_devoe,
	o => \IR[2]~output_o\);

-- Location: IOOBUF_X23_Y29_N23
\IR[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \IR[3]~reg0_q\,
	devoe => ww_devoe,
	o => \IR[3]~output_o\);

-- Location: IOOBUF_X30_Y29_N16
\IR[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \IR[4]~reg0_q\,
	devoe => ww_devoe,
	o => \IR[4]~output_o\);

-- Location: IOOBUF_X26_Y29_N2
\IR[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \IR[5]~reg0_q\,
	devoe => ww_devoe,
	o => \IR[5]~output_o\);

-- Location: IOOBUF_X21_Y29_N9
\IR[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \IR[6]~reg0_q\,
	devoe => ww_devoe,
	o => \IR[6]~output_o\);

-- Location: IOOBUF_X41_Y23_N23
\IR[7]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \IR[7]~reg0_q\,
	devoe => ww_devoe,
	o => \IR[7]~output_o\);

-- Location: IOOBUF_X28_Y29_N16
\to_memory[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux7~1_combout\,
	devoe => ww_devoe,
	o => \to_memory[0]~output_o\);

-- Location: IOOBUF_X41_Y22_N23
\to_memory[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux6~1_combout\,
	devoe => ww_devoe,
	o => \to_memory[1]~output_o\);

-- Location: IOOBUF_X41_Y22_N16
\to_memory[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux5~1_combout\,
	devoe => ww_devoe,
	o => \to_memory[2]~output_o\);

-- Location: IOOBUF_X28_Y29_N9
\to_memory[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux4~1_combout\,
	devoe => ww_devoe,
	o => \to_memory[3]~output_o\);

-- Location: IOOBUF_X26_Y29_N9
\to_memory[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux3~1_combout\,
	devoe => ww_devoe,
	o => \to_memory[4]~output_o\);

-- Location: IOOBUF_X41_Y22_N2
\to_memory[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux2~1_combout\,
	devoe => ww_devoe,
	o => \to_memory[5]~output_o\);

-- Location: IOOBUF_X30_Y29_N9
\to_memory[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux1~1_combout\,
	devoe => ww_devoe,
	o => \to_memory[6]~output_o\);

-- Location: IOOBUF_X41_Y21_N23
\to_memory[7]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux0~1_combout\,
	devoe => ww_devoe,
	o => \to_memory[7]~output_o\);

-- Location: IOOBUF_X28_Y29_N30
\address[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => MAR(0),
	devoe => ww_devoe,
	o => \address[0]~output_o\);

-- Location: IOOBUF_X23_Y29_N9
\address[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => MAR(1),
	devoe => ww_devoe,
	o => \address[1]~output_o\);

-- Location: IOOBUF_X32_Y29_N2
\address[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => MAR(2),
	devoe => ww_devoe,
	o => \address[2]~output_o\);

-- Location: IOOBUF_X23_Y29_N30
\address[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => MAR(3),
	devoe => ww_devoe,
	o => \address[3]~output_o\);

-- Location: IOOBUF_X35_Y29_N30
\address[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => MAR(4),
	devoe => ww_devoe,
	o => \address[4]~output_o\);

-- Location: IOOBUF_X23_Y29_N2
\address[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => MAR(5),
	devoe => ww_devoe,
	o => \address[5]~output_o\);

-- Location: IOOBUF_X21_Y29_N16
\address[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => MAR(6),
	devoe => ww_devoe,
	o => \address[6]~output_o\);

-- Location: IOOBUF_X32_Y29_N30
\address[7]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => MAR(7),
	devoe => ww_devoe,
	o => \address[7]~output_o\);

-- Location: IOIBUF_X0_Y14_N1
\Clock~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Clock,
	o => \Clock~input_o\);

-- Location: CLKCTRL_G4
\Clock~inputclkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \Clock~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \Clock~inputclkctrl_outclk\);

-- Location: IOIBUF_X32_Y29_N22
\ALU_Sel[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ALU_Sel(0),
	o => \ALU_Sel[0]~input_o\);

-- Location: IOIBUF_X41_Y23_N15
\Bus2_Sel[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Bus2_Sel(0),
	o => \Bus2_Sel[0]~input_o\);

-- Location: IOIBUF_X28_Y0_N1
\Bus2_Sel[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Bus2_Sel(1),
	o => \Bus2_Sel[1]~input_o\);

-- Location: IOIBUF_X41_Y24_N1
\Bus1_Sel[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Bus1_Sel(0),
	o => \Bus1_Sel[0]~input_o\);

-- Location: IOIBUF_X41_Y23_N8
\Bus1_Sel[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Bus1_Sel(1),
	o => \Bus1_Sel[1]~input_o\);

-- Location: LCCOMB_X31_Y22_N10
\PC_uns[0]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PC_uns[0]~8_combout\ = PC_uns(0) $ (VCC)
-- \PC_uns[0]~9\ = CARRY(PC_uns(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => PC_uns(0),
	datad => VCC,
	combout => \PC_uns[0]~8_combout\,
	cout => \PC_uns[0]~9\);

-- Location: IOIBUF_X0_Y14_N8
\Reset~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Reset,
	o => \Reset~input_o\);

-- Location: CLKCTRL_G2
\Reset~inputclkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \Reset~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \Reset~inputclkctrl_outclk\);

-- Location: IOIBUF_X41_Y21_N15
\A_Load~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A_Load,
	o => \A_Load~input_o\);

-- Location: FF_X30_Y22_N27
\A[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \Mux15~4_combout\,
	clrn => \Reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \A_Load~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => A(0));

-- Location: IOIBUF_X41_Y21_N8
\B_Load~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B_Load,
	o => \B_Load~input_o\);

-- Location: FF_X30_Y22_N25
\B[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \Mux15~4_combout\,
	clrn => \Reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \B_Load~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => B(0));

-- Location: LCCOMB_X30_Y22_N24
\Mux7~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~0_combout\ = (!\Bus1_Sel[0]~input_o\ & ((\Bus1_Sel[1]~input_o\ & (B(0))) # (!\Bus1_Sel[1]~input_o\ & ((PC_uns(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Bus1_Sel[1]~input_o\,
	datab => \Bus1_Sel[0]~input_o\,
	datac => B(0),
	datad => PC_uns(0),
	combout => \Mux7~0_combout\);

-- Location: LCCOMB_X30_Y23_N4
\Mux15~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux15~3_combout\ = (\Mux7~0_combout\) # ((!\Bus1_Sel[1]~input_o\ & (\Bus1_Sel[0]~input_o\ & A(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Bus1_Sel[1]~input_o\,
	datab => \Bus1_Sel[0]~input_o\,
	datac => A(0),
	datad => \Mux7~0_combout\,
	combout => \Mux15~3_combout\);

-- Location: IOIBUF_X41_Y23_N1
\from_memory[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_from_memory(0),
	o => \from_memory[0]~input_o\);

-- Location: LCCOMB_X30_Y22_N26
\Mux7~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~1_combout\ = (\Mux7~0_combout\) # ((!\Bus1_Sel[1]~input_o\ & (\Bus1_Sel[0]~input_o\ & A(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Bus1_Sel[1]~input_o\,
	datab => \Bus1_Sel[0]~input_o\,
	datac => A(0),
	datad => \Mux7~0_combout\,
	combout => \Mux7~1_combout\);

-- Location: LCCOMB_X28_Y22_N12
\U0|Add1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U0|Add1~0_combout\ = (\Mux7~1_combout\ & (B(0) $ (VCC))) # (!\Mux7~1_combout\ & ((B(0)) # (GND)))
-- \U0|Add1~1\ = CARRY((B(0)) # (!\Mux7~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux7~1_combout\,
	datab => B(0),
	datad => VCC,
	combout => \U0|Add1~0_combout\,
	cout => \U0|Add1~1\);

-- Location: LCCOMB_X29_Y22_N8
\U0|Add0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U0|Add0~0_combout\ = (B(0) & (\Mux7~1_combout\ $ (VCC))) # (!B(0) & (\Mux7~1_combout\ & VCC))
-- \U0|Add0~1\ = CARRY((B(0) & \Mux7~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => B(0),
	datab => \Mux7~1_combout\,
	datad => VCC,
	combout => \U0|Add0~0_combout\,
	cout => \U0|Add0~1\);

-- Location: LCCOMB_X28_Y22_N2
\U0|ALU_Result[0]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U0|ALU_Result[0]~1_combout\ = (\ALU_Sel[0]~input_o\ & (\U0|Add1~0_combout\)) # (!\ALU_Sel[0]~input_o\ & ((\U0|Add0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|Add1~0_combout\,
	datab => \U0|Add0~0_combout\,
	datad => \ALU_Sel[0]~input_o\,
	combout => \U0|ALU_Result[0]~1_combout\);

-- Location: IOIBUF_X21_Y29_N22
\ALU_Sel[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ALU_Sel(2),
	o => \ALU_Sel[2]~input_o\);

-- Location: IOIBUF_X19_Y29_N29
\ALU_Sel[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ALU_Sel(1),
	o => \ALU_Sel[1]~input_o\);

-- Location: LCCOMB_X19_Y28_N0
\U0|Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U0|Equal0~0_combout\ = (!\ALU_Sel[2]~input_o\ & !\ALU_Sel[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ALU_Sel[2]~input_o\,
	datad => \ALU_Sel[1]~input_o\,
	combout => \U0|Equal0~0_combout\);

-- Location: CLKCTRL_G12
\U0|Equal0~0clkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \U0|Equal0~0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \U0|Equal0~0clkctrl_outclk\);

-- Location: LCCOMB_X31_Y23_N18
\U0|ALU_Result[0]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U0|ALU_Result\(0) = (GLOBAL(\U0|Equal0~0clkctrl_outclk\) & (\U0|ALU_Result[0]~1_combout\)) # (!GLOBAL(\U0|Equal0~0clkctrl_outclk\) & ((\U0|ALU_Result\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|ALU_Result[0]~1_combout\,
	datab => \U0|ALU_Result\(0),
	datad => \U0|Equal0~0clkctrl_outclk\,
	combout => \U0|ALU_Result\(0));

-- Location: LCCOMB_X31_Y23_N24
\Mux15~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux15~2_combout\ = (\Bus2_Sel[1]~input_o\ & (\from_memory[0]~input_o\)) # (!\Bus2_Sel[1]~input_o\ & ((\U0|ALU_Result\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Bus2_Sel[1]~input_o\,
	datab => \from_memory[0]~input_o\,
	datad => \U0|ALU_Result\(0),
	combout => \Mux15~2_combout\);

-- Location: LCCOMB_X31_Y23_N16
\Mux15~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux15~4_combout\ = (\Bus2_Sel[0]~input_o\ & (!\Bus2_Sel[1]~input_o\ & (\Mux15~3_combout\))) # (!\Bus2_Sel[0]~input_o\ & (((\Mux15~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Bus2_Sel[0]~input_o\,
	datab => \Bus2_Sel[1]~input_o\,
	datac => \Mux15~3_combout\,
	datad => \Mux15~2_combout\,
	combout => \Mux15~4_combout\);

-- Location: IOIBUF_X35_Y29_N1
\PC_Load~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PC_Load,
	o => \PC_Load~input_o\);

-- Location: IOIBUF_X41_Y21_N1
\PC_Inc~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PC_Inc,
	o => \PC_Inc~input_o\);

-- Location: LCCOMB_X33_Y22_N4
\PC_uns[0]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PC_uns[0]~10_combout\ = (\PC_Load~input_o\) # (\PC_Inc~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \PC_Load~input_o\,
	datad => \PC_Inc~input_o\,
	combout => \PC_uns[0]~10_combout\);

-- Location: FF_X31_Y22_N11
\PC_uns[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \PC_uns[0]~8_combout\,
	asdata => \Mux15~4_combout\,
	clrn => \Reset~inputclkctrl_outclk\,
	sload => \PC_Load~input_o\,
	ena => \PC_uns[0]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => PC_uns(0));

-- Location: LCCOMB_X31_Y22_N12
\PC_uns[1]~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PC_uns[1]~11_combout\ = (PC_uns(1) & (!\PC_uns[0]~9\)) # (!PC_uns(1) & ((\PC_uns[0]~9\) # (GND)))
-- \PC_uns[1]~12\ = CARRY((!\PC_uns[0]~9\) # (!PC_uns(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => PC_uns(1),
	datad => VCC,
	cin => \PC_uns[0]~9\,
	combout => \PC_uns[1]~11_combout\,
	cout => \PC_uns[1]~12\);

-- Location: FF_X30_Y22_N23
\A[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \Mux14~4_combout\,
	clrn => \Reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \A_Load~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => A(1));

-- Location: FF_X30_Y22_N29
\B[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \Mux14~4_combout\,
	clrn => \Reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \B_Load~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => B(1));

-- Location: LCCOMB_X30_Y22_N28
\Mux6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux6~0_combout\ = (!\Bus1_Sel[0]~input_o\ & ((\Bus1_Sel[1]~input_o\ & (B(1))) # (!\Bus1_Sel[1]~input_o\ & ((PC_uns(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Bus1_Sel[1]~input_o\,
	datab => \Bus1_Sel[0]~input_o\,
	datac => B(1),
	datad => PC_uns(1),
	combout => \Mux6~0_combout\);

-- Location: LCCOMB_X30_Y22_N22
\Mux14~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux14~3_combout\ = (\Mux6~0_combout\) # ((!\Bus1_Sel[1]~input_o\ & (\Bus1_Sel[0]~input_o\ & A(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Bus1_Sel[1]~input_o\,
	datab => \Bus1_Sel[0]~input_o\,
	datac => A(1),
	datad => \Mux6~0_combout\,
	combout => \Mux14~3_combout\);

-- Location: IOIBUF_X26_Y29_N29
\from_memory[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_from_memory(1),
	o => \from_memory[1]~input_o\);

-- Location: LCCOMB_X30_Y22_N16
\Mux6~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux6~1_combout\ = (\Mux6~0_combout\) # ((!\Bus1_Sel[1]~input_o\ & (\Bus1_Sel[0]~input_o\ & A(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Bus1_Sel[1]~input_o\,
	datab => \Bus1_Sel[0]~input_o\,
	datac => A(1),
	datad => \Mux6~0_combout\,
	combout => \Mux6~1_combout\);

-- Location: LCCOMB_X29_Y22_N10
\U0|Add0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U0|Add0~2_combout\ = (B(1) & ((\Mux6~1_combout\ & (\U0|Add0~1\ & VCC)) # (!\Mux6~1_combout\ & (!\U0|Add0~1\)))) # (!B(1) & ((\Mux6~1_combout\ & (!\U0|Add0~1\)) # (!\Mux6~1_combout\ & ((\U0|Add0~1\) # (GND)))))
-- \U0|Add0~3\ = CARRY((B(1) & (!\Mux6~1_combout\ & !\U0|Add0~1\)) # (!B(1) & ((!\U0|Add0~1\) # (!\Mux6~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => B(1),
	datab => \Mux6~1_combout\,
	datad => VCC,
	cin => \U0|Add0~1\,
	combout => \U0|Add0~2_combout\,
	cout => \U0|Add0~3\);

-- Location: LCCOMB_X28_Y22_N14
\U0|Add1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U0|Add1~2_combout\ = (\Mux6~1_combout\ & ((B(1) & (!\U0|Add1~1\)) # (!B(1) & ((\U0|Add1~1\) # (GND))))) # (!\Mux6~1_combout\ & ((B(1) & (\U0|Add1~1\ & VCC)) # (!B(1) & (!\U0|Add1~1\))))
-- \U0|Add1~3\ = CARRY((\Mux6~1_combout\ & ((!\U0|Add1~1\) # (!B(1)))) # (!\Mux6~1_combout\ & (!B(1) & !\U0|Add1~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mux6~1_combout\,
	datab => B(1),
	datad => VCC,
	cin => \U0|Add1~1\,
	combout => \U0|Add1~2_combout\,
	cout => \U0|Add1~3\);

-- Location: LCCOMB_X27_Y22_N26
\U0|ALU_Result[1]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U0|ALU_Result[1]~2_combout\ = (\ALU_Sel[0]~input_o\ & ((\U0|Add1~2_combout\))) # (!\ALU_Sel[0]~input_o\ & (\U0|Add0~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_Sel[0]~input_o\,
	datac => \U0|Add0~2_combout\,
	datad => \U0|Add1~2_combout\,
	combout => \U0|ALU_Result[1]~2_combout\);

-- Location: LCCOMB_X27_Y22_N28
\U0|ALU_Result[1]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U0|ALU_Result\(1) = (GLOBAL(\U0|Equal0~0clkctrl_outclk\) & ((\U0|ALU_Result[1]~2_combout\))) # (!GLOBAL(\U0|Equal0~0clkctrl_outclk\) & (\U0|ALU_Result\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U0|ALU_Result\(1),
	datac => \U0|ALU_Result[1]~2_combout\,
	datad => \U0|Equal0~0clkctrl_outclk\,
	combout => \U0|ALU_Result\(1));

-- Location: LCCOMB_X27_Y22_N20
\Mux14~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux14~2_combout\ = (\Bus2_Sel[1]~input_o\ & (\from_memory[1]~input_o\)) # (!\Bus2_Sel[1]~input_o\ & ((\U0|ALU_Result\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \from_memory[1]~input_o\,
	datab => \Bus2_Sel[1]~input_o\,
	datad => \U0|ALU_Result\(1),
	combout => \Mux14~2_combout\);

-- Location: LCCOMB_X27_Y22_N16
\Mux14~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux14~4_combout\ = (\Bus2_Sel[0]~input_o\ & (\Mux14~3_combout\ & (!\Bus2_Sel[1]~input_o\))) # (!\Bus2_Sel[0]~input_o\ & (((\Mux14~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux14~3_combout\,
	datab => \Bus2_Sel[0]~input_o\,
	datac => \Bus2_Sel[1]~input_o\,
	datad => \Mux14~2_combout\,
	combout => \Mux14~4_combout\);

-- Location: FF_X31_Y22_N13
\PC_uns[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \PC_uns[1]~11_combout\,
	asdata => \Mux14~4_combout\,
	clrn => \Reset~inputclkctrl_outclk\,
	sload => \PC_Load~input_o\,
	ena => \PC_uns[0]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => PC_uns(1));

-- Location: LCCOMB_X31_Y22_N14
\PC_uns[2]~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PC_uns[2]~13_combout\ = (PC_uns(2) & (\PC_uns[1]~12\ $ (GND))) # (!PC_uns(2) & (!\PC_uns[1]~12\ & VCC))
-- \PC_uns[2]~14\ = CARRY((PC_uns(2) & !\PC_uns[1]~12\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => PC_uns(2),
	datad => VCC,
	cin => \PC_uns[1]~12\,
	combout => \PC_uns[2]~13_combout\,
	cout => \PC_uns[2]~14\);

-- Location: IOIBUF_X32_Y29_N15
\from_memory[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_from_memory(2),
	o => \from_memory[2]~input_o\);

-- Location: FF_X30_Y22_N21
\A[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \Mux13~4_combout\,
	clrn => \Reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \A_Load~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => A(2));

-- Location: FF_X30_Y22_N19
\B[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \Mux13~4_combout\,
	clrn => \Reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \B_Load~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => B(2));

-- Location: LCCOMB_X30_Y22_N18
\Mux5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux5~0_combout\ = (!\Bus1_Sel[0]~input_o\ & ((\Bus1_Sel[1]~input_o\ & (B(2))) # (!\Bus1_Sel[1]~input_o\ & ((PC_uns(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Bus1_Sel[1]~input_o\,
	datab => \Bus1_Sel[0]~input_o\,
	datac => B(2),
	datad => PC_uns(2),
	combout => \Mux5~0_combout\);

-- Location: LCCOMB_X30_Y22_N20
\Mux5~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux5~1_combout\ = (\Mux5~0_combout\) # ((!\Bus1_Sel[1]~input_o\ & (\Bus1_Sel[0]~input_o\ & A(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Bus1_Sel[1]~input_o\,
	datab => \Bus1_Sel[0]~input_o\,
	datac => A(2),
	datad => \Mux5~0_combout\,
	combout => \Mux5~1_combout\);

-- Location: LCCOMB_X29_Y22_N12
\U0|Add0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U0|Add0~4_combout\ = ((\Mux5~1_combout\ $ (B(2) $ (!\U0|Add0~3\)))) # (GND)
-- \U0|Add0~5\ = CARRY((\Mux5~1_combout\ & ((B(2)) # (!\U0|Add0~3\))) # (!\Mux5~1_combout\ & (B(2) & !\U0|Add0~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mux5~1_combout\,
	datab => B(2),
	datad => VCC,
	cin => \U0|Add0~3\,
	combout => \U0|Add0~4_combout\,
	cout => \U0|Add0~5\);

-- Location: LCCOMB_X28_Y22_N16
\U0|Add1~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U0|Add1~4_combout\ = ((\Mux5~1_combout\ $ (B(2) $ (\U0|Add1~3\)))) # (GND)
-- \U0|Add1~5\ = CARRY((\Mux5~1_combout\ & (B(2) & !\U0|Add1~3\)) # (!\Mux5~1_combout\ & ((B(2)) # (!\U0|Add1~3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mux5~1_combout\,
	datab => B(2),
	datad => VCC,
	cin => \U0|Add1~3\,
	combout => \U0|Add1~4_combout\,
	cout => \U0|Add1~5\);

-- Location: LCCOMB_X31_Y23_N14
\U0|ALU_Result[2]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U0|ALU_Result[2]~3_combout\ = (\ALU_Sel[0]~input_o\ & ((\U0|Add1~4_combout\))) # (!\ALU_Sel[0]~input_o\ & (\U0|Add0~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_Sel[0]~input_o\,
	datac => \U0|Add0~4_combout\,
	datad => \U0|Add1~4_combout\,
	combout => \U0|ALU_Result[2]~3_combout\);

-- Location: LCCOMB_X31_Y23_N12
\U0|ALU_Result[2]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U0|ALU_Result\(2) = (GLOBAL(\U0|Equal0~0clkctrl_outclk\) & ((\U0|ALU_Result[2]~3_combout\))) # (!GLOBAL(\U0|Equal0~0clkctrl_outclk\) & (\U0|ALU_Result\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|ALU_Result\(2),
	datac => \U0|ALU_Result[2]~3_combout\,
	datad => \U0|Equal0~0clkctrl_outclk\,
	combout => \U0|ALU_Result\(2));

-- Location: LCCOMB_X31_Y23_N22
\Mux13~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux13~2_combout\ = (\Bus2_Sel[1]~input_o\ & (\from_memory[2]~input_o\)) # (!\Bus2_Sel[1]~input_o\ & ((\U0|ALU_Result\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Bus2_Sel[1]~input_o\,
	datab => \from_memory[2]~input_o\,
	datad => \U0|ALU_Result\(2),
	combout => \Mux13~2_combout\);

-- Location: LCCOMB_X31_Y22_N0
\Mux13~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux13~3_combout\ = (\Mux5~0_combout\) # ((\Bus1_Sel[0]~input_o\ & (A(2) & !\Bus1_Sel[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Bus1_Sel[0]~input_o\,
	datab => A(2),
	datac => \Bus1_Sel[1]~input_o\,
	datad => \Mux5~0_combout\,
	combout => \Mux13~3_combout\);

-- Location: LCCOMB_X31_Y23_N26
\Mux13~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux13~4_combout\ = (\Bus2_Sel[0]~input_o\ & (!\Bus2_Sel[1]~input_o\ & ((\Mux13~3_combout\)))) # (!\Bus2_Sel[0]~input_o\ & (((\Mux13~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Bus2_Sel[0]~input_o\,
	datab => \Bus2_Sel[1]~input_o\,
	datac => \Mux13~2_combout\,
	datad => \Mux13~3_combout\,
	combout => \Mux13~4_combout\);

-- Location: FF_X31_Y22_N15
\PC_uns[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \PC_uns[2]~13_combout\,
	asdata => \Mux13~4_combout\,
	clrn => \Reset~inputclkctrl_outclk\,
	sload => \PC_Load~input_o\,
	ena => \PC_uns[0]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => PC_uns(2));

-- Location: LCCOMB_X31_Y22_N16
\PC_uns[3]~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PC_uns[3]~15_combout\ = (PC_uns(3) & (!\PC_uns[2]~14\)) # (!PC_uns(3) & ((\PC_uns[2]~14\) # (GND)))
-- \PC_uns[3]~16\ = CARRY((!\PC_uns[2]~14\) # (!PC_uns(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => PC_uns(3),
	datad => VCC,
	cin => \PC_uns[2]~14\,
	combout => \PC_uns[3]~15_combout\,
	cout => \PC_uns[3]~16\);

-- Location: IOIBUF_X23_Y29_N15
\from_memory[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_from_memory(3),
	o => \from_memory[3]~input_o\);

-- Location: FF_X28_Y22_N3
\B[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \Mux12~4_combout\,
	clrn => \Reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \B_Load~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => B(3));

-- Location: FF_X29_Y22_N29
\A[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \Mux12~4_combout\,
	clrn => \Reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \A_Load~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => A(3));

-- Location: LCCOMB_X28_Y22_N8
\Mux4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux4~0_combout\ = (!\Bus1_Sel[0]~input_o\ & ((\Bus1_Sel[1]~input_o\ & ((B(3)))) # (!\Bus1_Sel[1]~input_o\ & (PC_uns(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Bus1_Sel[1]~input_o\,
	datab => \Bus1_Sel[0]~input_o\,
	datac => PC_uns(3),
	datad => B(3),
	combout => \Mux4~0_combout\);

-- Location: LCCOMB_X29_Y22_N28
\Mux4~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux4~1_combout\ = (\Mux4~0_combout\) # ((\Bus1_Sel[0]~input_o\ & (!\Bus1_Sel[1]~input_o\ & A(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Bus1_Sel[0]~input_o\,
	datab => \Bus1_Sel[1]~input_o\,
	datac => A(3),
	datad => \Mux4~0_combout\,
	combout => \Mux4~1_combout\);

-- Location: LCCOMB_X29_Y22_N14
\U0|Add0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U0|Add0~6_combout\ = (B(3) & ((\Mux4~1_combout\ & (\U0|Add0~5\ & VCC)) # (!\Mux4~1_combout\ & (!\U0|Add0~5\)))) # (!B(3) & ((\Mux4~1_combout\ & (!\U0|Add0~5\)) # (!\Mux4~1_combout\ & ((\U0|Add0~5\) # (GND)))))
-- \U0|Add0~7\ = CARRY((B(3) & (!\Mux4~1_combout\ & !\U0|Add0~5\)) # (!B(3) & ((!\U0|Add0~5\) # (!\Mux4~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => B(3),
	datab => \Mux4~1_combout\,
	datad => VCC,
	cin => \U0|Add0~5\,
	combout => \U0|Add0~6_combout\,
	cout => \U0|Add0~7\);

-- Location: LCCOMB_X28_Y22_N18
\U0|Add1~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U0|Add1~6_combout\ = (B(3) & ((\Mux4~1_combout\ & (!\U0|Add1~5\)) # (!\Mux4~1_combout\ & (\U0|Add1~5\ & VCC)))) # (!B(3) & ((\Mux4~1_combout\ & ((\U0|Add1~5\) # (GND))) # (!\Mux4~1_combout\ & (!\U0|Add1~5\))))
-- \U0|Add1~7\ = CARRY((B(3) & (\Mux4~1_combout\ & !\U0|Add1~5\)) # (!B(3) & ((\Mux4~1_combout\) # (!\U0|Add1~5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => B(3),
	datab => \Mux4~1_combout\,
	datad => VCC,
	cin => \U0|Add1~5\,
	combout => \U0|Add1~6_combout\,
	cout => \U0|Add1~7\);

-- Location: LCCOMB_X27_Y22_N4
\U0|ALU_Result[3]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U0|ALU_Result[3]~4_combout\ = (\ALU_Sel[0]~input_o\ & ((\U0|Add1~6_combout\))) # (!\ALU_Sel[0]~input_o\ & (\U0|Add0~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_Sel[0]~input_o\,
	datac => \U0|Add0~6_combout\,
	datad => \U0|Add1~6_combout\,
	combout => \U0|ALU_Result[3]~4_combout\);

-- Location: LCCOMB_X27_Y22_N10
\U0|ALU_Result[3]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U0|ALU_Result\(3) = (GLOBAL(\U0|Equal0~0clkctrl_outclk\) & ((\U0|ALU_Result[3]~4_combout\))) # (!GLOBAL(\U0|Equal0~0clkctrl_outclk\) & (\U0|ALU_Result\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|ALU_Result\(3),
	datac => \U0|Equal0~0clkctrl_outclk\,
	datad => \U0|ALU_Result[3]~4_combout\,
	combout => \U0|ALU_Result\(3));

-- Location: LCCOMB_X27_Y22_N14
\Mux12~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux12~2_combout\ = (\Bus2_Sel[1]~input_o\ & (\from_memory[3]~input_o\)) # (!\Bus2_Sel[1]~input_o\ & ((\U0|ALU_Result\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \from_memory[3]~input_o\,
	datab => \Bus2_Sel[1]~input_o\,
	datad => \U0|ALU_Result\(3),
	combout => \Mux12~2_combout\);

-- Location: LCCOMB_X27_Y22_N0
\Mux12~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux12~3_combout\ = (\Mux4~0_combout\) # ((A(3) & (\Bus1_Sel[0]~input_o\ & !\Bus1_Sel[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => A(3),
	datab => \Bus1_Sel[0]~input_o\,
	datac => \Bus1_Sel[1]~input_o\,
	datad => \Mux4~0_combout\,
	combout => \Mux12~3_combout\);

-- Location: LCCOMB_X27_Y22_N6
\Mux12~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux12~4_combout\ = (\Bus2_Sel[0]~input_o\ & (!\Bus2_Sel[1]~input_o\ & ((\Mux12~3_combout\)))) # (!\Bus2_Sel[0]~input_o\ & (((\Mux12~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Bus2_Sel[1]~input_o\,
	datab => \Bus2_Sel[0]~input_o\,
	datac => \Mux12~2_combout\,
	datad => \Mux12~3_combout\,
	combout => \Mux12~4_combout\);

-- Location: FF_X31_Y22_N17
\PC_uns[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \PC_uns[3]~15_combout\,
	asdata => \Mux12~4_combout\,
	clrn => \Reset~inputclkctrl_outclk\,
	sload => \PC_Load~input_o\,
	ena => \PC_uns[0]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => PC_uns(3));

-- Location: LCCOMB_X31_Y22_N18
\PC_uns[4]~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PC_uns[4]~17_combout\ = (PC_uns(4) & (\PC_uns[3]~16\ $ (GND))) # (!PC_uns(4) & (!\PC_uns[3]~16\ & VCC))
-- \PC_uns[4]~18\ = CARRY((PC_uns(4) & !\PC_uns[3]~16\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => PC_uns(4),
	datad => VCC,
	cin => \PC_uns[3]~16\,
	combout => \PC_uns[4]~17_combout\,
	cout => \PC_uns[4]~18\);

-- Location: FF_X29_Y22_N5
\A[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \Mux11~4_combout\,
	clrn => \Reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \A_Load~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => A(4));

-- Location: FF_X29_Y22_N3
\B[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \Mux11~4_combout\,
	clrn => \Reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \B_Load~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => B(4));

-- Location: LCCOMB_X29_Y22_N2
\Mux3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux3~0_combout\ = (!\Bus1_Sel[0]~input_o\ & ((\Bus1_Sel[1]~input_o\ & (B(4))) # (!\Bus1_Sel[1]~input_o\ & ((PC_uns(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Bus1_Sel[0]~input_o\,
	datab => \Bus1_Sel[1]~input_o\,
	datac => B(4),
	datad => PC_uns(4),
	combout => \Mux3~0_combout\);

-- Location: LCCOMB_X30_Y23_N6
\Mux11~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux11~3_combout\ = (\Mux3~0_combout\) # ((!\Bus1_Sel[1]~input_o\ & (\Bus1_Sel[0]~input_o\ & A(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Bus1_Sel[1]~input_o\,
	datab => \Bus1_Sel[0]~input_o\,
	datac => A(4),
	datad => \Mux3~0_combout\,
	combout => \Mux11~3_combout\);

-- Location: IOIBUF_X37_Y29_N1
\from_memory[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_from_memory(4),
	o => \from_memory[4]~input_o\);

-- Location: LCCOMB_X29_Y22_N4
\Mux3~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux3~1_combout\ = (\Mux3~0_combout\) # ((\Bus1_Sel[0]~input_o\ & (!\Bus1_Sel[1]~input_o\ & A(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Bus1_Sel[0]~input_o\,
	datab => \Bus1_Sel[1]~input_o\,
	datac => A(4),
	datad => \Mux3~0_combout\,
	combout => \Mux3~1_combout\);

-- Location: LCCOMB_X29_Y22_N16
\U0|Add0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U0|Add0~8_combout\ = ((B(4) $ (\Mux3~1_combout\ $ (!\U0|Add0~7\)))) # (GND)
-- \U0|Add0~9\ = CARRY((B(4) & ((\Mux3~1_combout\) # (!\U0|Add0~7\))) # (!B(4) & (\Mux3~1_combout\ & !\U0|Add0~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => B(4),
	datab => \Mux3~1_combout\,
	datad => VCC,
	cin => \U0|Add0~7\,
	combout => \U0|Add0~8_combout\,
	cout => \U0|Add0~9\);

-- Location: LCCOMB_X28_Y22_N20
\U0|Add1~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U0|Add1~8_combout\ = ((B(4) $ (\Mux3~1_combout\ $ (\U0|Add1~7\)))) # (GND)
-- \U0|Add1~9\ = CARRY((B(4) & ((!\U0|Add1~7\) # (!\Mux3~1_combout\))) # (!B(4) & (!\Mux3~1_combout\ & !\U0|Add1~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => B(4),
	datab => \Mux3~1_combout\,
	datad => VCC,
	cin => \U0|Add1~7\,
	combout => \U0|Add1~8_combout\,
	cout => \U0|Add1~9\);

-- Location: LCCOMB_X31_Y23_N4
\U0|ALU_Result[4]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U0|ALU_Result[4]~5_combout\ = (\ALU_Sel[0]~input_o\ & ((\U0|Add1~8_combout\))) # (!\ALU_Sel[0]~input_o\ & (\U0|Add0~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_Sel[0]~input_o\,
	datac => \U0|Add0~8_combout\,
	datad => \U0|Add1~8_combout\,
	combout => \U0|ALU_Result[4]~5_combout\);

-- Location: LCCOMB_X31_Y23_N2
\U0|ALU_Result[4]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U0|ALU_Result\(4) = (GLOBAL(\U0|Equal0~0clkctrl_outclk\) & ((\U0|ALU_Result[4]~5_combout\))) # (!GLOBAL(\U0|Equal0~0clkctrl_outclk\) & (\U0|ALU_Result\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U0|ALU_Result\(4),
	datac => \U0|ALU_Result[4]~5_combout\,
	datad => \U0|Equal0~0clkctrl_outclk\,
	combout => \U0|ALU_Result\(4));

-- Location: LCCOMB_X31_Y23_N0
\Mux11~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux11~2_combout\ = (\Bus2_Sel[1]~input_o\ & (\from_memory[4]~input_o\)) # (!\Bus2_Sel[1]~input_o\ & ((\U0|ALU_Result\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \from_memory[4]~input_o\,
	datac => \Bus2_Sel[1]~input_o\,
	datad => \U0|ALU_Result\(4),
	combout => \Mux11~2_combout\);

-- Location: LCCOMB_X31_Y23_N8
\Mux11~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux11~4_combout\ = (\Bus2_Sel[0]~input_o\ & (!\Bus2_Sel[1]~input_o\ & (\Mux11~3_combout\))) # (!\Bus2_Sel[0]~input_o\ & (((\Mux11~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Bus2_Sel[0]~input_o\,
	datab => \Bus2_Sel[1]~input_o\,
	datac => \Mux11~3_combout\,
	datad => \Mux11~2_combout\,
	combout => \Mux11~4_combout\);

-- Location: FF_X31_Y22_N19
\PC_uns[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \PC_uns[4]~17_combout\,
	asdata => \Mux11~4_combout\,
	clrn => \Reset~inputclkctrl_outclk\,
	sload => \PC_Load~input_o\,
	ena => \PC_uns[0]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => PC_uns(4));

-- Location: LCCOMB_X31_Y22_N20
\PC_uns[5]~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PC_uns[5]~19_combout\ = (PC_uns(5) & (!\PC_uns[4]~18\)) # (!PC_uns(5) & ((\PC_uns[4]~18\) # (GND)))
-- \PC_uns[5]~20\ = CARRY((!\PC_uns[4]~18\) # (!PC_uns(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => PC_uns(5),
	datad => VCC,
	cin => \PC_uns[4]~18\,
	combout => \PC_uns[5]~19_combout\,
	cout => \PC_uns[5]~20\);

-- Location: FF_X29_Y22_N7
\A[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \Mux10~4_combout\,
	clrn => \Reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \A_Load~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => A(5));

-- Location: FF_X30_Y22_N31
\B[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \Mux10~4_combout\,
	clrn => \Reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \B_Load~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => B(5));

-- Location: LCCOMB_X30_Y22_N30
\Mux2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = (!\Bus1_Sel[0]~input_o\ & ((\Bus1_Sel[1]~input_o\ & (B(5))) # (!\Bus1_Sel[1]~input_o\ & ((PC_uns(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Bus1_Sel[1]~input_o\,
	datab => \Bus1_Sel[0]~input_o\,
	datac => B(5),
	datad => PC_uns(5),
	combout => \Mux2~0_combout\);

-- Location: LCCOMB_X29_Y22_N0
\Mux10~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux10~3_combout\ = (\Mux2~0_combout\) # ((A(5) & (!\Bus1_Sel[1]~input_o\ & \Bus1_Sel[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => A(5),
	datab => \Bus1_Sel[1]~input_o\,
	datac => \Bus1_Sel[0]~input_o\,
	datad => \Mux2~0_combout\,
	combout => \Mux10~3_combout\);

-- Location: IOIBUF_X26_Y29_N22
\from_memory[5]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_from_memory(5),
	o => \from_memory[5]~input_o\);

-- Location: LCCOMB_X29_Y22_N6
\Mux2~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux2~1_combout\ = (\Mux2~0_combout\) # ((\Bus1_Sel[0]~input_o\ & (!\Bus1_Sel[1]~input_o\ & A(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Bus1_Sel[0]~input_o\,
	datab => \Bus1_Sel[1]~input_o\,
	datac => A(5),
	datad => \Mux2~0_combout\,
	combout => \Mux2~1_combout\);

-- Location: LCCOMB_X29_Y22_N18
\U0|Add0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U0|Add0~10_combout\ = (B(5) & ((\Mux2~1_combout\ & (\U0|Add0~9\ & VCC)) # (!\Mux2~1_combout\ & (!\U0|Add0~9\)))) # (!B(5) & ((\Mux2~1_combout\ & (!\U0|Add0~9\)) # (!\Mux2~1_combout\ & ((\U0|Add0~9\) # (GND)))))
-- \U0|Add0~11\ = CARRY((B(5) & (!\Mux2~1_combout\ & !\U0|Add0~9\)) # (!B(5) & ((!\U0|Add0~9\) # (!\Mux2~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => B(5),
	datab => \Mux2~1_combout\,
	datad => VCC,
	cin => \U0|Add0~9\,
	combout => \U0|Add0~10_combout\,
	cout => \U0|Add0~11\);

-- Location: LCCOMB_X28_Y22_N22
\U0|Add1~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U0|Add1~10_combout\ = (\Mux2~1_combout\ & ((B(5) & (!\U0|Add1~9\)) # (!B(5) & ((\U0|Add1~9\) # (GND))))) # (!\Mux2~1_combout\ & ((B(5) & (\U0|Add1~9\ & VCC)) # (!B(5) & (!\U0|Add1~9\))))
-- \U0|Add1~11\ = CARRY((\Mux2~1_combout\ & ((!\U0|Add1~9\) # (!B(5)))) # (!\Mux2~1_combout\ & (!B(5) & !\U0|Add1~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~1_combout\,
	datab => B(5),
	datad => VCC,
	cin => \U0|Add1~9\,
	combout => \U0|Add1~10_combout\,
	cout => \U0|Add1~11\);

-- Location: LCCOMB_X27_Y22_N22
\U0|ALU_Result[5]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U0|ALU_Result[5]~6_combout\ = (\ALU_Sel[0]~input_o\ & ((\U0|Add1~10_combout\))) # (!\ALU_Sel[0]~input_o\ & (\U0|Add0~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|Add0~10_combout\,
	datac => \ALU_Sel[0]~input_o\,
	datad => \U0|Add1~10_combout\,
	combout => \U0|ALU_Result[5]~6_combout\);

-- Location: LCCOMB_X27_Y22_N24
\U0|ALU_Result[5]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U0|ALU_Result\(5) = (GLOBAL(\U0|Equal0~0clkctrl_outclk\) & ((\U0|ALU_Result[5]~6_combout\))) # (!GLOBAL(\U0|Equal0~0clkctrl_outclk\) & (\U0|ALU_Result\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U0|ALU_Result\(5),
	datac => \U0|ALU_Result[5]~6_combout\,
	datad => \U0|Equal0~0clkctrl_outclk\,
	combout => \U0|ALU_Result\(5));

-- Location: LCCOMB_X27_Y22_N12
\Mux10~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux10~2_combout\ = (\Bus2_Sel[1]~input_o\ & (\from_memory[5]~input_o\)) # (!\Bus2_Sel[1]~input_o\ & ((\U0|ALU_Result\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \from_memory[5]~input_o\,
	datab => \Bus2_Sel[1]~input_o\,
	datad => \U0|ALU_Result\(5),
	combout => \Mux10~2_combout\);

-- Location: LCCOMB_X27_Y22_N8
\Mux10~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux10~4_combout\ = (\Bus2_Sel[0]~input_o\ & (!\Bus2_Sel[1]~input_o\ & (\Mux10~3_combout\))) # (!\Bus2_Sel[0]~input_o\ & (((\Mux10~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Bus2_Sel[1]~input_o\,
	datab => \Bus2_Sel[0]~input_o\,
	datac => \Mux10~3_combout\,
	datad => \Mux10~2_combout\,
	combout => \Mux10~4_combout\);

-- Location: FF_X31_Y22_N21
\PC_uns[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \PC_uns[5]~19_combout\,
	asdata => \Mux10~4_combout\,
	clrn => \Reset~inputclkctrl_outclk\,
	sload => \PC_Load~input_o\,
	ena => \PC_uns[0]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => PC_uns(5));

-- Location: LCCOMB_X31_Y22_N22
\PC_uns[6]~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PC_uns[6]~21_combout\ = (PC_uns(6) & (\PC_uns[5]~20\ $ (GND))) # (!PC_uns(6) & (!\PC_uns[5]~20\ & VCC))
-- \PC_uns[6]~22\ = CARRY((PC_uns(6) & !\PC_uns[5]~20\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => PC_uns(6),
	datad => VCC,
	cin => \PC_uns[5]~20\,
	combout => \PC_uns[6]~21_combout\,
	cout => \PC_uns[6]~22\);

-- Location: LCCOMB_X32_Y22_N8
\A[6]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \A[6]~feeder_combout\ = \Mux9~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Mux9~4_combout\,
	combout => \A[6]~feeder_combout\);

-- Location: FF_X32_Y22_N9
\A[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \A[6]~feeder_combout\,
	clrn => \Reset~inputclkctrl_outclk\,
	ena => \A_Load~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => A(6));

-- Location: LCCOMB_X32_Y22_N12
\B[6]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \B[6]~feeder_combout\ = \Mux9~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Mux9~4_combout\,
	combout => \B[6]~feeder_combout\);

-- Location: FF_X32_Y22_N13
\B[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \B[6]~feeder_combout\,
	clrn => \Reset~inputclkctrl_outclk\,
	ena => \B_Load~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => B(6));

-- Location: LCCOMB_X32_Y22_N18
\Mux1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = (!\Bus1_Sel[0]~input_o\ & ((\Bus1_Sel[1]~input_o\ & (B(6))) # (!\Bus1_Sel[1]~input_o\ & ((PC_uns(6))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => B(6),
	datab => \Bus1_Sel[1]~input_o\,
	datac => \Bus1_Sel[0]~input_o\,
	datad => PC_uns(6),
	combout => \Mux1~0_combout\);

-- Location: LCCOMB_X32_Y22_N14
\Mux9~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux9~3_combout\ = (\Mux1~0_combout\) # ((!\Bus1_Sel[1]~input_o\ & (A(6) & \Bus1_Sel[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Bus1_Sel[1]~input_o\,
	datab => A(6),
	datac => \Bus1_Sel[0]~input_o\,
	datad => \Mux1~0_combout\,
	combout => \Mux9~3_combout\);

-- Location: IOIBUF_X26_Y29_N15
\from_memory[6]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_from_memory(6),
	o => \from_memory[6]~input_o\);

-- Location: LCCOMB_X32_Y22_N6
\Mux1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux1~1_combout\ = (\Mux1~0_combout\) # ((!\Bus1_Sel[1]~input_o\ & (A(6) & \Bus1_Sel[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Bus1_Sel[1]~input_o\,
	datab => A(6),
	datac => \Bus1_Sel[0]~input_o\,
	datad => \Mux1~0_combout\,
	combout => \Mux1~1_combout\);

-- Location: LCCOMB_X28_Y22_N24
\U0|Add1~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U0|Add1~12_combout\ = ((B(6) $ (\Mux1~1_combout\ $ (\U0|Add1~11\)))) # (GND)
-- \U0|Add1~13\ = CARRY((B(6) & ((!\U0|Add1~11\) # (!\Mux1~1_combout\))) # (!B(6) & (!\Mux1~1_combout\ & !\U0|Add1~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => B(6),
	datab => \Mux1~1_combout\,
	datad => VCC,
	cin => \U0|Add1~11\,
	combout => \U0|Add1~12_combout\,
	cout => \U0|Add1~13\);

-- Location: LCCOMB_X29_Y22_N20
\U0|Add0~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U0|Add0~12_combout\ = ((\Mux1~1_combout\ $ (B(6) $ (!\U0|Add0~11\)))) # (GND)
-- \U0|Add0~13\ = CARRY((\Mux1~1_combout\ & ((B(6)) # (!\U0|Add0~11\))) # (!\Mux1~1_combout\ & (B(6) & !\U0|Add0~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mux1~1_combout\,
	datab => B(6),
	datad => VCC,
	cin => \U0|Add0~11\,
	combout => \U0|Add0~12_combout\,
	cout => \U0|Add0~13\);

-- Location: LCCOMB_X28_Y22_N10
\U0|ALU_Result[6]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U0|ALU_Result[6]~7_combout\ = (\ALU_Sel[0]~input_o\ & (\U0|Add1~12_combout\)) # (!\ALU_Sel[0]~input_o\ & ((\U0|Add0~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U0|Add1~12_combout\,
	datac => \ALU_Sel[0]~input_o\,
	datad => \U0|Add0~12_combout\,
	combout => \U0|ALU_Result[6]~7_combout\);

-- Location: LCCOMB_X27_Y22_N18
\U0|ALU_Result[6]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U0|ALU_Result\(6) = (GLOBAL(\U0|Equal0~0clkctrl_outclk\) & ((\U0|ALU_Result[6]~7_combout\))) # (!GLOBAL(\U0|Equal0~0clkctrl_outclk\) & (\U0|ALU_Result\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U0|ALU_Result\(6),
	datac => \U0|ALU_Result[6]~7_combout\,
	datad => \U0|Equal0~0clkctrl_outclk\,
	combout => \U0|ALU_Result\(6));

-- Location: LCCOMB_X27_Y22_N2
\Mux9~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux9~2_combout\ = (\Bus2_Sel[1]~input_o\ & (\from_memory[6]~input_o\)) # (!\Bus2_Sel[1]~input_o\ & ((\U0|ALU_Result\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \from_memory[6]~input_o\,
	datab => \Bus2_Sel[1]~input_o\,
	datad => \U0|ALU_Result\(6),
	combout => \Mux9~2_combout\);

-- Location: LCCOMB_X27_Y22_N30
\Mux9~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux9~4_combout\ = (\Bus2_Sel[0]~input_o\ & (!\Bus2_Sel[1]~input_o\ & (\Mux9~3_combout\))) # (!\Bus2_Sel[0]~input_o\ & (((\Mux9~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Bus2_Sel[1]~input_o\,
	datab => \Bus2_Sel[0]~input_o\,
	datac => \Mux9~3_combout\,
	datad => \Mux9~2_combout\,
	combout => \Mux9~4_combout\);

-- Location: FF_X31_Y22_N23
\PC_uns[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \PC_uns[6]~21_combout\,
	asdata => \Mux9~4_combout\,
	clrn => \Reset~inputclkctrl_outclk\,
	sload => \PC_Load~input_o\,
	ena => \PC_uns[0]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => PC_uns(6));

-- Location: LCCOMB_X31_Y22_N24
\PC_uns[7]~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PC_uns[7]~23_combout\ = \PC_uns[6]~22\ $ (PC_uns(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => PC_uns(7),
	cin => \PC_uns[6]~22\,
	combout => \PC_uns[7]~23_combout\);

-- Location: FF_X31_Y22_N25
\PC_uns[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \PC_uns[7]~23_combout\,
	asdata => \Mux8~4_combout\,
	clrn => \Reset~inputclkctrl_outclk\,
	sload => \PC_Load~input_o\,
	ena => \PC_uns[0]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => PC_uns(7));

-- Location: LCCOMB_X32_Y22_N2
\Mux0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = (!\Bus1_Sel[0]~input_o\ & ((\Bus1_Sel[1]~input_o\ & (B(7))) # (!\Bus1_Sel[1]~input_o\ & ((PC_uns(7))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Bus1_Sel[1]~input_o\,
	datab => B(7),
	datac => \Bus1_Sel[0]~input_o\,
	datad => PC_uns(7),
	combout => \Mux0~0_combout\);

-- Location: LCCOMB_X32_Y23_N30
\A[7]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \A[7]~feeder_combout\ = \Mux8~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Mux8~4_combout\,
	combout => \A[7]~feeder_combout\);

-- Location: FF_X32_Y23_N31
\A[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \A[7]~feeder_combout\,
	clrn => \Reset~inputclkctrl_outclk\,
	ena => \A_Load~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => A(7));

-- Location: LCCOMB_X32_Y22_N0
\Mux8~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux8~3_combout\ = (\Mux0~0_combout\) # ((\Bus1_Sel[0]~input_o\ & (A(7) & !\Bus1_Sel[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Bus1_Sel[0]~input_o\,
	datab => \Mux0~0_combout\,
	datac => A(7),
	datad => \Bus1_Sel[1]~input_o\,
	combout => \Mux8~3_combout\);

-- Location: IOIBUF_X30_Y29_N22
\from_memory[7]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_from_memory(7),
	o => \from_memory[7]~input_o\);

-- Location: LCCOMB_X32_Y22_N24
\Mux0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux0~1_combout\ = (\Mux0~0_combout\) # ((\Bus1_Sel[0]~input_o\ & (!\Bus1_Sel[1]~input_o\ & A(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Bus1_Sel[0]~input_o\,
	datab => \Bus1_Sel[1]~input_o\,
	datac => A(7),
	datad => \Mux0~0_combout\,
	combout => \Mux0~1_combout\);

-- Location: LCCOMB_X28_Y22_N26
\U0|Add1~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U0|Add1~14_combout\ = (\Mux0~1_combout\ & ((B(7) & (!\U0|Add1~13\)) # (!B(7) & ((\U0|Add1~13\) # (GND))))) # (!\Mux0~1_combout\ & ((B(7) & (\U0|Add1~13\ & VCC)) # (!B(7) & (!\U0|Add1~13\))))
-- \U0|Add1~15\ = CARRY((\Mux0~1_combout\ & ((!\U0|Add1~13\) # (!B(7)))) # (!\Mux0~1_combout\ & (!B(7) & !\U0|Add1~13\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mux0~1_combout\,
	datab => B(7),
	datad => VCC,
	cin => \U0|Add1~13\,
	combout => \U0|Add1~14_combout\,
	cout => \U0|Add1~15\);

-- Location: LCCOMB_X31_Y23_N20
\U0|ALU_Result[7]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U0|ALU_Result[7]~0_combout\ = (\ALU_Sel[0]~input_o\ & (\U0|Add1~14_combout\)) # (!\ALU_Sel[0]~input_o\ & ((\U0|Add0~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_Sel[0]~input_o\,
	datac => \U0|Add1~14_combout\,
	datad => \U0|Add0~14_combout\,
	combout => \U0|ALU_Result[7]~0_combout\);

-- Location: LCCOMB_X31_Y23_N10
\U0|NZVC[3]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U0|NZVC\(3) = (GLOBAL(\U0|Equal0~0clkctrl_outclk\) & ((\U0|ALU_Result[7]~0_combout\))) # (!GLOBAL(\U0|Equal0~0clkctrl_outclk\) & (\U0|NZVC\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|NZVC\(3),
	datab => \U0|Equal0~0clkctrl_outclk\,
	datad => \U0|ALU_Result[7]~0_combout\,
	combout => \U0|NZVC\(3));

-- Location: LCCOMB_X31_Y23_N6
\Mux8~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux8~2_combout\ = (\Bus2_Sel[1]~input_o\ & (\from_memory[7]~input_o\)) # (!\Bus2_Sel[1]~input_o\ & ((\U0|NZVC\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \from_memory[7]~input_o\,
	datab => \Bus2_Sel[1]~input_o\,
	datad => \U0|NZVC\(3),
	combout => \Mux8~2_combout\);

-- Location: LCCOMB_X31_Y23_N30
\Mux8~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux8~4_combout\ = (\Bus2_Sel[0]~input_o\ & (!\Bus2_Sel[1]~input_o\ & (\Mux8~3_combout\))) # (!\Bus2_Sel[0]~input_o\ & (((\Mux8~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Bus2_Sel[0]~input_o\,
	datab => \Bus2_Sel[1]~input_o\,
	datac => \Mux8~3_combout\,
	datad => \Mux8~2_combout\,
	combout => \Mux8~4_combout\);

-- Location: LCCOMB_X32_Y22_N4
\B[7]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \B[7]~feeder_combout\ = \Mux8~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Mux8~4_combout\,
	combout => \B[7]~feeder_combout\);

-- Location: FF_X32_Y22_N5
\B[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \B[7]~feeder_combout\,
	clrn => \Reset~inputclkctrl_outclk\,
	ena => \B_Load~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => B(7));

-- Location: LCCOMB_X29_Y22_N22
\U0|Add0~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U0|Add0~14_combout\ = B(7) $ (\U0|Add0~13\ $ (\Mux0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => B(7),
	datad => \Mux0~1_combout\,
	cin => \U0|Add0~13\,
	combout => \U0|Add0~14_combout\);

-- Location: LCCOMB_X28_Y22_N28
\U0|Add1~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U0|Add1~16_combout\ = \U0|Add1~15\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \U0|Add1~15\,
	combout => \U0|Add1~16_combout\);

-- Location: LCCOMB_X33_Y22_N26
\U0|NZVC[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U0|NZVC[0]~0_combout\ = (\ALU_Sel[0]~input_o\ & ((\U0|Add1~16_combout\))) # (!\ALU_Sel[0]~input_o\ & (\U0|Add0~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_Sel[0]~input_o\,
	datac => \U0|Add0~14_combout\,
	datad => \U0|Add1~16_combout\,
	combout => \U0|NZVC[0]~0_combout\);

-- Location: LCCOMB_X33_Y22_N16
\U0|NZVC[0]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U0|NZVC\(0) = (GLOBAL(\U0|Equal0~0clkctrl_outclk\) & ((\U0|NZVC[0]~0_combout\))) # (!GLOBAL(\U0|Equal0~0clkctrl_outclk\) & (\U0|NZVC\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U0|NZVC\(0),
	datac => \U0|NZVC[0]~0_combout\,
	datad => \U0|Equal0~0clkctrl_outclk\,
	combout => \U0|NZVC\(0));

-- Location: IOIBUF_X35_Y29_N8
\CCR_Load~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CCR_Load,
	o => \CCR_Load~input_o\);

-- Location: FF_X33_Y22_N17
\CCR_Result[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \U0|NZVC\(0),
	clrn => \Reset~inputclkctrl_outclk\,
	ena => \CCR_Load~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CCR_Result[0]~reg0_q\);

-- Location: LCCOMB_X33_Y22_N8
\U0|NZVC[1]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U0|NZVC[1]~1_combout\ = (!\ALU_Sel[0]~input_o\ & ((B(7) & (!\U0|Add0~14_combout\ & \Mux0~1_combout\)) # (!B(7) & (\U0|Add0~14_combout\ & !\Mux0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_Sel[0]~input_o\,
	datab => B(7),
	datac => \U0|Add0~14_combout\,
	datad => \Mux0~1_combout\,
	combout => \U0|NZVC[1]~1_combout\);

-- Location: LCCOMB_X30_Y22_N0
\U0|LessThan0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U0|LessThan0~1_cout\ = CARRY((\Mux7~1_combout\ & !B(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mux7~1_combout\,
	datab => B(0),
	datad => VCC,
	cout => \U0|LessThan0~1_cout\);

-- Location: LCCOMB_X30_Y22_N2
\U0|LessThan0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U0|LessThan0~3_cout\ = CARRY((B(1) & ((!\U0|LessThan0~1_cout\) # (!\Mux6~1_combout\))) # (!B(1) & (!\Mux6~1_combout\ & !\U0|LessThan0~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => B(1),
	datab => \Mux6~1_combout\,
	datad => VCC,
	cin => \U0|LessThan0~1_cout\,
	cout => \U0|LessThan0~3_cout\);

-- Location: LCCOMB_X30_Y22_N4
\U0|LessThan0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U0|LessThan0~5_cout\ = CARRY((B(2) & (\Mux5~1_combout\ & !\U0|LessThan0~3_cout\)) # (!B(2) & ((\Mux5~1_combout\) # (!\U0|LessThan0~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => B(2),
	datab => \Mux5~1_combout\,
	datad => VCC,
	cin => \U0|LessThan0~3_cout\,
	cout => \U0|LessThan0~5_cout\);

-- Location: LCCOMB_X30_Y22_N6
\U0|LessThan0~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U0|LessThan0~7_cout\ = CARRY((\Mux4~1_combout\ & (B(3) & !\U0|LessThan0~5_cout\)) # (!\Mux4~1_combout\ & ((B(3)) # (!\U0|LessThan0~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mux4~1_combout\,
	datab => B(3),
	datad => VCC,
	cin => \U0|LessThan0~5_cout\,
	cout => \U0|LessThan0~7_cout\);

-- Location: LCCOMB_X30_Y22_N8
\U0|LessThan0~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U0|LessThan0~9_cout\ = CARRY((B(4) & (\Mux3~1_combout\ & !\U0|LessThan0~7_cout\)) # (!B(4) & ((\Mux3~1_combout\) # (!\U0|LessThan0~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => B(4),
	datab => \Mux3~1_combout\,
	datad => VCC,
	cin => \U0|LessThan0~7_cout\,
	cout => \U0|LessThan0~9_cout\);

-- Location: LCCOMB_X30_Y22_N10
\U0|LessThan0~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U0|LessThan0~11_cout\ = CARRY((B(5) & ((!\U0|LessThan0~9_cout\) # (!\Mux2~1_combout\))) # (!B(5) & (!\Mux2~1_combout\ & !\U0|LessThan0~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => B(5),
	datab => \Mux2~1_combout\,
	datad => VCC,
	cin => \U0|LessThan0~9_cout\,
	cout => \U0|LessThan0~11_cout\);

-- Location: LCCOMB_X30_Y22_N12
\U0|LessThan0~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U0|LessThan0~13_cout\ = CARRY((B(6) & (\Mux1~1_combout\ & !\U0|LessThan0~11_cout\)) # (!B(6) & ((\Mux1~1_combout\) # (!\U0|LessThan0~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => B(6),
	datab => \Mux1~1_combout\,
	datad => VCC,
	cin => \U0|LessThan0~11_cout\,
	cout => \U0|LessThan0~13_cout\);

-- Location: LCCOMB_X30_Y22_N14
\U0|LessThan0~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U0|LessThan0~14_combout\ = (B(7) & (\U0|LessThan0~13_cout\ & \Mux0~1_combout\)) # (!B(7) & ((\U0|LessThan0~13_cout\) # (\Mux0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010101010000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => B(7),
	datad => \Mux0~1_combout\,
	cin => \U0|LessThan0~13_cout\,
	combout => \U0|LessThan0~14_combout\);

-- Location: LCCOMB_X33_Y22_N18
\U0|NZVC[1]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U0|NZVC[1]~2_combout\ = (B(7) & (!\U0|Add1~14_combout\ & (\Mux0~1_combout\ $ (!\U0|LessThan0~14_combout\)))) # (!B(7) & (\U0|Add1~14_combout\ & (\Mux0~1_combout\ $ (\U0|LessThan0~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001010000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux0~1_combout\,
	datab => B(7),
	datac => \U0|LessThan0~14_combout\,
	datad => \U0|Add1~14_combout\,
	combout => \U0|NZVC[1]~2_combout\);

-- Location: LCCOMB_X33_Y22_N20
\U0|NZVC[1]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U0|NZVC[1]~3_combout\ = (\U0|NZVC[1]~1_combout\) # ((\ALU_Sel[0]~input_o\ & \U0|NZVC[1]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_Sel[0]~input_o\,
	datac => \U0|NZVC[1]~1_combout\,
	datad => \U0|NZVC[1]~2_combout\,
	combout => \U0|NZVC[1]~3_combout\);

-- Location: LCCOMB_X33_Y22_N30
\U0|NZVC[1]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U0|NZVC\(1) = (GLOBAL(\U0|Equal0~0clkctrl_outclk\) & ((\U0|NZVC[1]~3_combout\))) # (!GLOBAL(\U0|Equal0~0clkctrl_outclk\) & (\U0|NZVC\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|NZVC\(1),
	datac => \U0|Equal0~0clkctrl_outclk\,
	datad => \U0|NZVC[1]~3_combout\,
	combout => \U0|NZVC\(1));

-- Location: FF_X33_Y22_N31
\CCR_Result[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \U0|NZVC\(1),
	clrn => \Reset~inputclkctrl_outclk\,
	ena => \CCR_Load~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CCR_Result[1]~reg0_q\);

-- Location: LCCOMB_X28_Y22_N6
\U0|NZVC[2]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U0|NZVC[2]~7_combout\ = (!\U0|Add1~0_combout\ & (!\U0|Add1~2_combout\ & (!\U0|Add1~14_combout\ & \ALU_Sel[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|Add1~0_combout\,
	datab => \U0|Add1~2_combout\,
	datac => \U0|Add1~14_combout\,
	datad => \ALU_Sel[0]~input_o\,
	combout => \U0|NZVC[2]~7_combout\);

-- Location: LCCOMB_X28_Y22_N4
\U0|NZVC[2]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U0|NZVC[2]~8_combout\ = (!\U0|Add1~10_combout\ & (!\U0|Add1~4_combout\ & (!\U0|Add1~6_combout\ & !\U0|Add1~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|Add1~10_combout\,
	datab => \U0|Add1~4_combout\,
	datac => \U0|Add1~6_combout\,
	datad => \U0|Add1~8_combout\,
	combout => \U0|NZVC[2]~8_combout\);

-- Location: LCCOMB_X29_Y22_N30
\U0|NZVC[2]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U0|NZVC[2]~4_combout\ = (!\U0|Add0~2_combout\ & (!\ALU_Sel[0]~input_o\ & (!\U0|Add0~0_combout\ & !\U0|Add0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|Add0~2_combout\,
	datab => \ALU_Sel[0]~input_o\,
	datac => \U0|Add0~0_combout\,
	datad => \U0|Add0~4_combout\,
	combout => \U0|NZVC[2]~4_combout\);

-- Location: LCCOMB_X29_Y22_N24
\U0|NZVC[2]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U0|NZVC[2]~5_combout\ = (!\U0|Add0~8_combout\ & (!\U0|Add0~6_combout\ & !\U0|Add0~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U0|Add0~8_combout\,
	datac => \U0|Add0~6_combout\,
	datad => \U0|Add0~10_combout\,
	combout => \U0|NZVC[2]~5_combout\);

-- Location: LCCOMB_X29_Y22_N26
\U0|NZVC[2]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U0|NZVC[2]~6_combout\ = (!\U0|Add0~14_combout\ & (!\U0|Add0~12_combout\ & (\U0|NZVC[2]~4_combout\ & \U0|NZVC[2]~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|Add0~14_combout\,
	datab => \U0|Add0~12_combout\,
	datac => \U0|NZVC[2]~4_combout\,
	datad => \U0|NZVC[2]~5_combout\,
	combout => \U0|NZVC[2]~6_combout\);

-- Location: LCCOMB_X28_Y22_N30
\U0|NZVC[2]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U0|NZVC[2]~9_combout\ = (\U0|NZVC[2]~6_combout\) # ((\U0|NZVC[2]~7_combout\ & (!\U0|Add1~12_combout\ & \U0|NZVC[2]~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|NZVC[2]~7_combout\,
	datab => \U0|Add1~12_combout\,
	datac => \U0|NZVC[2]~8_combout\,
	datad => \U0|NZVC[2]~6_combout\,
	combout => \U0|NZVC[2]~9_combout\);

-- Location: LCCOMB_X28_Y22_N0
\U0|NZVC[2]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U0|NZVC\(2) = (GLOBAL(\U0|Equal0~0clkctrl_outclk\) & ((\U0|NZVC[2]~9_combout\))) # (!GLOBAL(\U0|Equal0~0clkctrl_outclk\) & (\U0|NZVC\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U0|NZVC\(2),
	datac => \U0|NZVC[2]~9_combout\,
	datad => \U0|Equal0~0clkctrl_outclk\,
	combout => \U0|NZVC\(2));

-- Location: FF_X28_Y22_N1
\CCR_Result[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \U0|NZVC\(2),
	clrn => \Reset~inputclkctrl_outclk\,
	ena => \CCR_Load~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CCR_Result[2]~reg0_q\);

-- Location: LCCOMB_X32_Y23_N0
\CCR_Result[3]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CCR_Result[3]~reg0feeder_combout\ = \U0|NZVC\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U0|NZVC\(3),
	combout => \CCR_Result[3]~reg0feeder_combout\);

-- Location: FF_X32_Y23_N1
\CCR_Result[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \CCR_Result[3]~reg0feeder_combout\,
	clrn => \Reset~inputclkctrl_outclk\,
	ena => \CCR_Load~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CCR_Result[3]~reg0_q\);

-- Location: IOIBUF_X41_Y24_N22
\IR_Load~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_IR_Load,
	o => \IR_Load~input_o\);

-- Location: FF_X31_Y23_N25
\IR[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \Mux15~4_combout\,
	clrn => \Reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \IR_Load~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IR[0]~reg0_q\);

-- Location: FF_X27_Y22_N21
\IR[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \Mux14~4_combout\,
	clrn => \Reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \IR_Load~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IR[1]~reg0_q\);

-- Location: FF_X31_Y23_N23
\IR[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \Mux13~4_combout\,
	clrn => \Reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \IR_Load~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IR[2]~reg0_q\);

-- Location: FF_X27_Y22_N15
\IR[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \Mux12~4_combout\,
	clrn => \Reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \IR_Load~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IR[3]~reg0_q\);

-- Location: LCCOMB_X31_Y23_N28
\IR[4]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \IR[4]~reg0feeder_combout\ = \Mux11~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mux11~4_combout\,
	combout => \IR[4]~reg0feeder_combout\);

-- Location: FF_X31_Y23_N29
\IR[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \IR[4]~reg0feeder_combout\,
	clrn => \Reset~inputclkctrl_outclk\,
	ena => \IR_Load~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IR[4]~reg0_q\);

-- Location: FF_X27_Y22_N13
\IR[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \Mux10~4_combout\,
	clrn => \Reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \IR_Load~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IR[5]~reg0_q\);

-- Location: FF_X27_Y22_N3
\IR[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \Mux9~4_combout\,
	clrn => \Reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \IR_Load~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IR[6]~reg0_q\);

-- Location: FF_X31_Y23_N11
\IR[7]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \Mux8~4_combout\,
	clrn => \Reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \IR_Load~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IR[7]~reg0_q\);

-- Location: IOIBUF_X28_Y29_N1
\MAR_Load~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_MAR_Load,
	o => \MAR_Load~input_o\);

-- Location: FF_X31_Y23_N17
\MAR[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \Mux15~4_combout\,
	clrn => \Reset~inputclkctrl_outclk\,
	ena => \MAR_Load~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => MAR(0));

-- Location: FF_X27_Y22_N17
\MAR[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \Mux14~4_combout\,
	clrn => \Reset~inputclkctrl_outclk\,
	ena => \MAR_Load~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => MAR(1));

-- Location: FF_X31_Y23_N27
\MAR[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \Mux13~4_combout\,
	clrn => \Reset~inputclkctrl_outclk\,
	ena => \MAR_Load~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => MAR(2));

-- Location: FF_X27_Y22_N7
\MAR[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \Mux12~4_combout\,
	clrn => \Reset~inputclkctrl_outclk\,
	ena => \MAR_Load~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => MAR(3));

-- Location: FF_X31_Y23_N9
\MAR[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \Mux11~4_combout\,
	clrn => \Reset~inputclkctrl_outclk\,
	ena => \MAR_Load~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => MAR(4));

-- Location: FF_X27_Y22_N9
\MAR[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \Mux10~4_combout\,
	clrn => \Reset~inputclkctrl_outclk\,
	ena => \MAR_Load~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => MAR(5));

-- Location: FF_X27_Y22_N31
\MAR[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \Mux9~4_combout\,
	clrn => \Reset~inputclkctrl_outclk\,
	ena => \MAR_Load~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => MAR(6));

-- Location: FF_X31_Y23_N31
\MAR[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \Mux8~4_combout\,
	clrn => \Reset~inputclkctrl_outclk\,
	ena => \MAR_Load~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => MAR(7));

ww_CCR_Result(0) <= \CCR_Result[0]~output_o\;

ww_CCR_Result(1) <= \CCR_Result[1]~output_o\;

ww_CCR_Result(2) <= \CCR_Result[2]~output_o\;

ww_CCR_Result(3) <= \CCR_Result[3]~output_o\;

ww_IR(0) <= \IR[0]~output_o\;

ww_IR(1) <= \IR[1]~output_o\;

ww_IR(2) <= \IR[2]~output_o\;

ww_IR(3) <= \IR[3]~output_o\;

ww_IR(4) <= \IR[4]~output_o\;

ww_IR(5) <= \IR[5]~output_o\;

ww_IR(6) <= \IR[6]~output_o\;

ww_IR(7) <= \IR[7]~output_o\;

ww_to_memory(0) <= \to_memory[0]~output_o\;

ww_to_memory(1) <= \to_memory[1]~output_o\;

ww_to_memory(2) <= \to_memory[2]~output_o\;

ww_to_memory(3) <= \to_memory[3]~output_o\;

ww_to_memory(4) <= \to_memory[4]~output_o\;

ww_to_memory(5) <= \to_memory[5]~output_o\;

ww_to_memory(6) <= \to_memory[6]~output_o\;

ww_to_memory(7) <= \to_memory[7]~output_o\;

ww_address(0) <= \address[0]~output_o\;

ww_address(1) <= \address[1]~output_o\;

ww_address(2) <= \address[2]~output_o\;

ww_address(3) <= \address[3]~output_o\;

ww_address(4) <= \address[4]~output_o\;

ww_address(5) <= \address[5]~output_o\;

ww_address(6) <= \address[6]~output_o\;

ww_address(7) <= \address[7]~output_o\;
END structure;


