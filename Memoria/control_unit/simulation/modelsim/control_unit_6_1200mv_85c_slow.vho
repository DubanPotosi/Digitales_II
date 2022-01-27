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

-- DATE "01/27/2022 11:40:36"

-- 
-- Device: Altera EP4CGX15BF14C6 Package FBGA169
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIV.CYCLONEIV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	control_unit IS
    PORT (
	Clock : IN std_logic;
	Reset : IN std_logic;
	CCR_Result : IN std_logic_vector(3 DOWNTO 0);
	IR : IN std_logic_vector(7 DOWNTO 0);
	IR_Load : OUT std_logic;
	MAR_Load : OUT std_logic;
	PC_Load : OUT std_logic;
	PC_Inc : OUT std_logic;
	A_Load : OUT std_logic;
	B_Load : OUT std_logic;
	CCR_Load : OUT std_logic;
	ALU_Sel : OUT std_logic_vector(2 DOWNTO 0);
	Bus2_Sel : OUT std_logic_vector(1 DOWNTO 0);
	Bus1_Sel : OUT std_logic_vector(1 DOWNTO 0);
	writen : OUT std_logic
	);
END control_unit;

-- Design Ports Information
-- CCR_Result[0]	=>  Location: PIN_M7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CCR_Result[1]	=>  Location: PIN_N7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CCR_Result[3]	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IR_Load	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MAR_Load	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_Load	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_Inc	=>  Location: PIN_L12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A_Load	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B_Load	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CCR_Load	=>  Location: PIN_B8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU_Sel[0]	=>  Location: PIN_L4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU_Sel[1]	=>  Location: PIN_N9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU_Sel[2]	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Bus2_Sel[0]	=>  Location: PIN_G10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Bus2_Sel[1]	=>  Location: PIN_F11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Bus1_Sel[0]	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Bus1_Sel[1]	=>  Location: PIN_L11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writen	=>  Location: PIN_L5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IR[2]	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IR[4]	=>  Location: PIN_K13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IR[3]	=>  Location: PIN_J13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IR[7]	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IR[5]	=>  Location: PIN_G9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IR[6]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IR[0]	=>  Location: PIN_B6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IR[1]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CCR_Result[2]	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Clock	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Reset	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF control_unit IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_Clock : std_logic;
SIGNAL ww_Reset : std_logic;
SIGNAL ww_CCR_Result : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_IR : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_IR_Load : std_logic;
SIGNAL ww_MAR_Load : std_logic;
SIGNAL ww_PC_Load : std_logic;
SIGNAL ww_PC_Inc : std_logic;
SIGNAL ww_A_Load : std_logic;
SIGNAL ww_B_Load : std_logic;
SIGNAL ww_CCR_Load : std_logic;
SIGNAL ww_ALU_Sel : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_Bus2_Sel : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_Bus1_Sel : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_writen : std_logic;
SIGNAL \Reset~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Clock~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Selector18~2clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CCR_Result[0]~input_o\ : std_logic;
SIGNAL \CCR_Result[1]~input_o\ : std_logic;
SIGNAL \CCR_Result[3]~input_o\ : std_logic;
SIGNAL \IR_Load~output_o\ : std_logic;
SIGNAL \MAR_Load~output_o\ : std_logic;
SIGNAL \PC_Load~output_o\ : std_logic;
SIGNAL \PC_Inc~output_o\ : std_logic;
SIGNAL \A_Load~output_o\ : std_logic;
SIGNAL \B_Load~output_o\ : std_logic;
SIGNAL \CCR_Load~output_o\ : std_logic;
SIGNAL \ALU_Sel[0]~output_o\ : std_logic;
SIGNAL \ALU_Sel[1]~output_o\ : std_logic;
SIGNAL \ALU_Sel[2]~output_o\ : std_logic;
SIGNAL \Bus2_Sel[0]~output_o\ : std_logic;
SIGNAL \Bus2_Sel[1]~output_o\ : std_logic;
SIGNAL \Bus1_Sel[0]~output_o\ : std_logic;
SIGNAL \Bus1_Sel[1]~output_o\ : std_logic;
SIGNAL \writen~output_o\ : std_logic;
SIGNAL \Clock~input_o\ : std_logic;
SIGNAL \Clock~inputclkctrl_outclk\ : std_logic;
SIGNAL \Reset~input_o\ : std_logic;
SIGNAL \Reset~inputclkctrl_outclk\ : std_logic;
SIGNAL \current_state.S_DECODE_3~q\ : std_logic;
SIGNAL \next_state.S_BEQ_5~0_combout\ : std_logic;
SIGNAL \IR[6]~input_o\ : std_logic;
SIGNAL \IR[7]~input_o\ : std_logic;
SIGNAL \IR[4]~input_o\ : std_logic;
SIGNAL \IR[2]~input_o\ : std_logic;
SIGNAL \IR[3]~input_o\ : std_logic;
SIGNAL \Equal6~0_combout\ : std_logic;
SIGNAL \IR[5]~input_o\ : std_logic;
SIGNAL \IR[1]~input_o\ : std_logic;
SIGNAL \IR[0]~input_o\ : std_logic;
SIGNAL \Equal7~0_combout\ : std_logic;
SIGNAL \Equal7~1_combout\ : std_logic;
SIGNAL \Equal8~0_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Equal6~1_combout\ : std_logic;
SIGNAL \Equal3~0_combout\ : std_logic;
SIGNAL \Equal3~1_combout\ : std_logic;
SIGNAL \next_state~27_combout\ : std_logic;
SIGNAL \next_state~39_combout\ : std_logic;
SIGNAL \next_state~28_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \next_state~33_combout\ : std_logic;
SIGNAL \current_state.S_LDA_DIR_4~feeder_combout\ : std_logic;
SIGNAL \current_state.S_LDA_DIR_4~q\ : std_logic;
SIGNAL \next_state~35_combout\ : std_logic;
SIGNAL \current_state.S_LDB_DIR_4~feeder_combout\ : std_logic;
SIGNAL \current_state.S_LDB_DIR_4~q\ : std_logic;
SIGNAL \next_state~32_combout\ : std_logic;
SIGNAL \current_state.S_LDA_IMM_4~q\ : std_logic;
SIGNAL \next_state~34_combout\ : std_logic;
SIGNAL \current_state.S_LDB_IMM_4~q\ : std_logic;
SIGNAL \next_state~29_combout\ : std_logic;
SIGNAL \CCR_Result[2]~input_o\ : std_logic;
SIGNAL \next_state.S_BEQ_4~0_combout\ : std_logic;
SIGNAL \current_state.S_BEQ_4~q\ : std_logic;
SIGNAL \next_state.S_BRA_6~0_combout\ : std_logic;
SIGNAL \next_state.S_BEQ_5~1_combout\ : std_logic;
SIGNAL \current_state.S_BEQ_5~q\ : std_logic;
SIGNAL \next_state~38_combout\ : std_logic;
SIGNAL \current_state.S_BRA_4~q\ : std_logic;
SIGNAL \next_state.S_BRA_5~0_combout\ : std_logic;
SIGNAL \current_state.S_BRA_5~q\ : std_logic;
SIGNAL \current_state.S_LDA_DIR_5~feeder_combout\ : std_logic;
SIGNAL \current_state.S_LDA_DIR_5~q\ : std_logic;
SIGNAL \current_state.S_LDB_DIR_5~q\ : std_logic;
SIGNAL \current_state.S_LDB_IMM_5~q\ : std_logic;
SIGNAL \current_state.S_LDA_IMM_5~q\ : std_logic;
SIGNAL \Selector5~0_combout\ : std_logic;
SIGNAL \next_state~36_combout\ : std_logic;
SIGNAL \current_state.S_STA_DIR_4~q\ : std_logic;
SIGNAL \current_state.S_STA_DIR_5~q\ : std_logic;
SIGNAL \next_state~37_combout\ : std_logic;
SIGNAL \current_state.S_STB_DIR_4~feeder_combout\ : std_logic;
SIGNAL \current_state.S_STB_DIR_4~q\ : std_logic;
SIGNAL \current_state.S_STB_DIR_5~q\ : std_logic;
SIGNAL \Selector5~1_combout\ : std_logic;
SIGNAL \Selector5~2_combout\ : std_logic;
SIGNAL \next_state~30_combout\ : std_logic;
SIGNAL \current_state.S_LDA_DIR_6~q\ : std_logic;
SIGNAL \current_state.S_LDA_DIR_7~q\ : std_logic;
SIGNAL \current_state.S_LDB_DIR_6~q\ : std_logic;
SIGNAL \current_state.S_LDB_DIR_7~q\ : std_logic;
SIGNAL \current_state.S_STA_DIR_6~q\ : std_logic;
SIGNAL \next_state.S_STB_DIR_6~0_combout\ : std_logic;
SIGNAL \current_state.S_STB_DIR_6~q\ : std_logic;
SIGNAL \WideOr11~0_combout\ : std_logic;
SIGNAL \WideOr11~3_combout\ : std_logic;
SIGNAL \next_state~31_combout\ : std_logic;
SIGNAL \next_state.S_FETCH_0~0_combout\ : std_logic;
SIGNAL \current_state.S_FETCH_0~q\ : std_logic;
SIGNAL \current_state.S_FETCH_1~0_combout\ : std_logic;
SIGNAL \current_state.S_FETCH_1~q\ : std_logic;
SIGNAL \current_state.S_FETCH_2~q\ : std_logic;
SIGNAL \Selector18~3_combout\ : std_logic;
SIGNAL \Selector18~2_combout\ : std_logic;
SIGNAL \Selector18~2clkctrl_outclk\ : std_logic;
SIGNAL \IR_Load$latch~combout\ : std_logic;
SIGNAL \Selector15~0_combout\ : std_logic;
SIGNAL \Selector15~1_combout\ : std_logic;
SIGNAL \A_Load~0_combout\ : std_logic;
SIGNAL \Selector15~2_combout\ : std_logic;
SIGNAL \MAR_Load$latch~combout\ : std_logic;
SIGNAL \next_state.S_BRA_6~1_combout\ : std_logic;
SIGNAL \current_state.S_BRA_6~q\ : std_logic;
SIGNAL \next_state.S_BEQ_6~0_combout\ : std_logic;
SIGNAL \current_state.S_BEQ_6~q\ : std_logic;
SIGNAL \PC_Load~0_combout\ : std_logic;
SIGNAL \PC_Load$latch~combout\ : std_logic;
SIGNAL \Selector11~3_combout\ : std_logic;
SIGNAL \Selector11~2_combout\ : std_logic;
SIGNAL \PC_Inc$latch~combout\ : std_logic;
SIGNAL \current_state.S_LDA_IMM_6~feeder_combout\ : std_logic;
SIGNAL \current_state.S_LDA_IMM_6~q\ : std_logic;
SIGNAL \current_state.S_LDA_DIR_8~feeder_combout\ : std_logic;
SIGNAL \current_state.S_LDA_DIR_8~q\ : std_logic;
SIGNAL \Selector9~2_combout\ : std_logic;
SIGNAL \A_Load$latch~combout\ : std_logic;
SIGNAL \current_state.S_LDB_IMM_6~feeder_combout\ : std_logic;
SIGNAL \current_state.S_LDB_IMM_6~q\ : std_logic;
SIGNAL \current_state.S_LDB_DIR_8~q\ : std_logic;
SIGNAL \B_Load~0_combout\ : std_logic;
SIGNAL \B_Load$latch~combout\ : std_logic;
SIGNAL \comb~1_combout\ : std_logic;
SIGNAL \comb~0_combout\ : std_logic;
SIGNAL \CCR_Load$latch~combout\ : std_logic;
SIGNAL \Selector5~3_combout\ : std_logic;
SIGNAL \Selector5~4_combout\ : std_logic;
SIGNAL \Bus2_Sel[0]$latch~combout\ : std_logic;
SIGNAL \WideOr11~1_combout\ : std_logic;
SIGNAL \current_state.S_STA_DIR_7~feeder_combout\ : std_logic;
SIGNAL \current_state.S_STA_DIR_7~q\ : std_logic;
SIGNAL \next_state.S_STB_DIR_7~0_combout\ : std_logic;
SIGNAL \current_state.S_STB_DIR_7~q\ : std_logic;
SIGNAL \Bus1_Sel~0_combout\ : std_logic;
SIGNAL \WideOr11~2_combout\ : std_logic;
SIGNAL \WideOr11~combout\ : std_logic;
SIGNAL \Bus2_Sel[1]$latch~combout\ : std_logic;
SIGNAL \Selector1~2_combout\ : std_logic;
SIGNAL \Bus1_Sel[0]$latch~combout\ : std_logic;
SIGNAL \writen$latch~combout\ : std_logic;

BEGIN

ww_Clock <= Clock;
ww_Reset <= Reset;
ww_CCR_Result <= CCR_Result;
ww_IR <= IR;
IR_Load <= ww_IR_Load;
MAR_Load <= ww_MAR_Load;
PC_Load <= ww_PC_Load;
PC_Inc <= ww_PC_Inc;
A_Load <= ww_A_Load;
B_Load <= ww_B_Load;
CCR_Load <= ww_CCR_Load;
ALU_Sel <= ww_ALU_Sel;
Bus2_Sel <= ww_Bus2_Sel;
Bus1_Sel <= ww_Bus1_Sel;
writen <= ww_writen;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\Reset~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \Reset~input_o\);

\Clock~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \Clock~input_o\);

\Selector18~2clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \Selector18~2_combout\);

-- Location: IOOBUF_X24_Y31_N2
\IR_Load~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \IR_Load$latch~combout\,
	devoe => ww_devoe,
	o => \IR_Load~output_o\);

-- Location: IOOBUF_X33_Y14_N9
\MAR_Load~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MAR_Load$latch~combout\,
	devoe => ww_devoe,
	o => \MAR_Load~output_o\);

-- Location: IOOBUF_X12_Y31_N2
\PC_Load~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC_Load$latch~combout\,
	devoe => ww_devoe,
	o => \PC_Load~output_o\);

-- Location: IOOBUF_X33_Y12_N2
\PC_Inc~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC_Inc$latch~combout\,
	devoe => ww_devoe,
	o => \PC_Inc~output_o\);

-- Location: IOOBUF_X14_Y31_N2
\A_Load~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \A_Load$latch~combout\,
	devoe => ww_devoe,
	o => \A_Load~output_o\);

-- Location: IOOBUF_X12_Y31_N9
\B_Load~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \B_Load$latch~combout\,
	devoe => ww_devoe,
	o => \B_Load~output_o\);

-- Location: IOOBUF_X22_Y31_N2
\CCR_Load~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \CCR_Load$latch~combout\,
	devoe => ww_devoe,
	o => \CCR_Load~output_o\);

-- Location: IOOBUF_X8_Y0_N9
\ALU_Sel[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ALU_Sel[0]~output_o\);

-- Location: IOOBUF_X20_Y0_N2
\ALU_Sel[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ALU_Sel[1]~output_o\);

-- Location: IOOBUF_X12_Y0_N9
\ALU_Sel[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ALU_Sel[2]~output_o\);

-- Location: IOOBUF_X33_Y22_N9
\Bus2_Sel[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Bus2_Sel[0]$latch~combout\,
	devoe => ww_devoe,
	o => \Bus2_Sel[0]~output_o\);

-- Location: IOOBUF_X33_Y24_N9
\Bus2_Sel[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Bus2_Sel[1]$latch~combout\,
	devoe => ww_devoe,
	o => \Bus2_Sel[1]~output_o\);

-- Location: IOOBUF_X10_Y31_N2
\Bus1_Sel[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Bus1_Sel[0]$latch~combout\,
	devoe => ww_devoe,
	o => \Bus1_Sel[0]~output_o\);

-- Location: IOOBUF_X31_Y0_N2
\Bus1_Sel[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Bus1_Sel[1]~output_o\);

-- Location: IOOBUF_X14_Y0_N9
\writen~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \writen$latch~combout\,
	devoe => ww_devoe,
	o => \writen~output_o\);

-- Location: IOIBUF_X16_Y0_N15
\Clock~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Clock,
	o => \Clock~input_o\);

-- Location: CLKCTRL_G17
\Clock~inputclkctrl\ : cycloneiv_clkctrl
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

-- Location: IOIBUF_X16_Y0_N22
\Reset~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Reset,
	o => \Reset~input_o\);

-- Location: CLKCTRL_G19
\Reset~inputclkctrl\ : cycloneiv_clkctrl
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

-- Location: FF_X17_Y18_N21
\current_state.S_DECODE_3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	asdata => \current_state.S_FETCH_2~q\,
	clrn => \Reset~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_state.S_DECODE_3~q\);

-- Location: LCCOMB_X17_Y18_N8
\next_state.S_BEQ_5~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \next_state.S_BEQ_5~0_combout\ = (!\current_state.S_FETCH_1~q\ & (!\current_state.S_FETCH_2~q\ & \current_state.S_FETCH_0~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.S_FETCH_1~q\,
	datac => \current_state.S_FETCH_2~q\,
	datad => \current_state.S_FETCH_0~q\,
	combout => \next_state.S_BEQ_5~0_combout\);

-- Location: IOIBUF_X20_Y31_N1
\IR[6]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_IR(6),
	o => \IR[6]~input_o\);

-- Location: IOIBUF_X14_Y0_N1
\IR[7]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_IR(7),
	o => \IR[7]~input_o\);

-- Location: IOIBUF_X33_Y15_N1
\IR[4]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_IR(4),
	o => \IR[4]~input_o\);

-- Location: IOIBUF_X22_Y31_N8
\IR[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_IR(2),
	o => \IR[2]~input_o\);

-- Location: IOIBUF_X33_Y15_N8
\IR[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_IR(3),
	o => \IR[3]~input_o\);

-- Location: LCCOMB_X17_Y18_N26
\Equal6~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Equal6~0_combout\ = (!\IR[7]~input_o\ & (!\IR[4]~input_o\ & (!\IR[2]~input_o\ & !\IR[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IR[7]~input_o\,
	datab => \IR[4]~input_o\,
	datac => \IR[2]~input_o\,
	datad => \IR[3]~input_o\,
	combout => \Equal6~0_combout\);

-- Location: IOIBUF_X33_Y22_N1
\IR[5]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_IR(5),
	o => \IR[5]~input_o\);

-- Location: IOIBUF_X20_Y31_N8
\IR[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_IR(1),
	o => \IR[1]~input_o\);

-- Location: IOIBUF_X14_Y31_N8
\IR[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_IR(0),
	o => \IR[0]~input_o\);

-- Location: LCCOMB_X16_Y18_N20
\Equal7~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Equal7~0_combout\ = (\IR[1]~input_o\ & \IR[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \IR[1]~input_o\,
	datad => \IR[0]~input_o\,
	combout => \Equal7~0_combout\);

-- Location: LCCOMB_X16_Y18_N26
\Equal7~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Equal7~1_combout\ = (!\IR[6]~input_o\ & (\Equal6~0_combout\ & (\IR[5]~input_o\ & \Equal7~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IR[6]~input_o\,
	datab => \Equal6~0_combout\,
	datac => \IR[5]~input_o\,
	datad => \Equal7~0_combout\,
	combout => \Equal7~1_combout\);

-- Location: LCCOMB_X17_Y18_N30
\Equal8~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Equal8~0_combout\ = (\IR[6]~input_o\ & (\IR[1]~input_o\ & (!\IR[5]~input_o\ & !\IR[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IR[6]~input_o\,
	datab => \IR[1]~input_o\,
	datac => \IR[5]~input_o\,
	datad => \IR[0]~input_o\,
	combout => \Equal8~0_combout\);

-- Location: LCCOMB_X17_Y18_N18
\Equal0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (\IR[7]~input_o\ & (\IR[1]~input_o\ & (!\IR[5]~input_o\ & !\IR[6]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IR[7]~input_o\,
	datab => \IR[1]~input_o\,
	datac => \IR[5]~input_o\,
	datad => \IR[6]~input_o\,
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X17_Y18_N20
\Equal6~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Equal6~1_combout\ = (\IR[5]~input_o\ & (\Equal6~0_combout\ & !\IR[6]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IR[5]~input_o\,
	datab => \Equal6~0_combout\,
	datad => \IR[6]~input_o\,
	combout => \Equal6~1_combout\);

-- Location: LCCOMB_X17_Y18_N2
\Equal3~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Equal3~0_combout\ = (\IR[7]~input_o\ & (!\IR[1]~input_o\ & (!\IR[5]~input_o\ & !\IR[6]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IR[7]~input_o\,
	datab => \IR[1]~input_o\,
	datac => \IR[5]~input_o\,
	datad => \IR[6]~input_o\,
	combout => \Equal3~0_combout\);

-- Location: LCCOMB_X15_Y18_N2
\Equal3~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Equal3~1_combout\ = (\IR[3]~input_o\ & (!\IR[2]~input_o\ & (\Equal3~0_combout\ & !\IR[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IR[3]~input_o\,
	datab => \IR[2]~input_o\,
	datac => \Equal3~0_combout\,
	datad => \IR[4]~input_o\,
	combout => \Equal3~1_combout\);

-- Location: LCCOMB_X16_Y18_N6
\next_state~27\ : cycloneiv_lcell_comb
-- Equation(s):
-- \next_state~27_combout\ = (!\Equal3~1_combout\ & (((\IR[1]~input_o\) # (\IR[0]~input_o\)) # (!\Equal6~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal6~1_combout\,
	datab => \IR[1]~input_o\,
	datac => \Equal3~1_combout\,
	datad => \IR[0]~input_o\,
	combout => \next_state~27_combout\);

-- Location: LCCOMB_X16_Y18_N18
\next_state~39\ : cycloneiv_lcell_comb
-- Equation(s):
-- \next_state~39_combout\ = (\next_state~27_combout\ & ((\IR[3]~input_o\) # ((!\IR[2]~input_o\) # (!\Equal0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IR[3]~input_o\,
	datab => \Equal0~0_combout\,
	datac => \IR[2]~input_o\,
	datad => \next_state~27_combout\,
	combout => \next_state~39_combout\);

-- Location: LCCOMB_X16_Y18_N30
\next_state~28\ : cycloneiv_lcell_comb
-- Equation(s):
-- \next_state~28_combout\ = (\Equal7~1_combout\) # (((\Equal6~0_combout\ & \Equal8~0_combout\)) # (!\next_state~39_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal7~1_combout\,
	datab => \Equal6~0_combout\,
	datac => \Equal8~0_combout\,
	datad => \next_state~39_combout\,
	combout => \next_state~28_combout\);

-- Location: LCCOMB_X17_Y18_N4
\Equal0~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (\Equal0~0_combout\ & (\IR[2]~input_o\ & !\IR[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~0_combout\,
	datab => \IR[2]~input_o\,
	datad => \IR[3]~input_o\,
	combout => \Equal0~1_combout\);

-- Location: LCCOMB_X14_Y18_N16
\next_state~33\ : cycloneiv_lcell_comb
-- Equation(s):
-- \next_state~33_combout\ = (\Equal0~1_combout\ & (\IR[0]~input_o\ & (!\IR[4]~input_o\ & \current_state.S_DECODE_3~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~1_combout\,
	datab => \IR[0]~input_o\,
	datac => \IR[4]~input_o\,
	datad => \current_state.S_DECODE_3~q\,
	combout => \next_state~33_combout\);

-- Location: LCCOMB_X14_Y18_N12
\current_state.S_LDA_DIR_4~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \current_state.S_LDA_DIR_4~feeder_combout\ = \next_state~33_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \next_state~33_combout\,
	combout => \current_state.S_LDA_DIR_4~feeder_combout\);

-- Location: FF_X14_Y18_N13
\current_state.S_LDA_DIR_4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \current_state.S_LDA_DIR_4~feeder_combout\,
	clrn => \Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_state.S_LDA_DIR_4~q\);

-- Location: LCCOMB_X14_Y18_N28
\next_state~35\ : cycloneiv_lcell_comb
-- Equation(s):
-- \next_state~35_combout\ = (\IR[0]~input_o\ & (\Equal3~1_combout\ & \current_state.S_DECODE_3~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \IR[0]~input_o\,
	datac => \Equal3~1_combout\,
	datad => \current_state.S_DECODE_3~q\,
	combout => \next_state~35_combout\);

-- Location: LCCOMB_X14_Y18_N4
\current_state.S_LDB_DIR_4~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \current_state.S_LDB_DIR_4~feeder_combout\ = \next_state~35_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \next_state~35_combout\,
	combout => \current_state.S_LDB_DIR_4~feeder_combout\);

-- Location: FF_X14_Y18_N5
\current_state.S_LDB_DIR_4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \current_state.S_LDB_DIR_4~feeder_combout\,
	clrn => \Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_state.S_LDB_DIR_4~q\);

-- Location: LCCOMB_X14_Y18_N14
\next_state~32\ : cycloneiv_lcell_comb
-- Equation(s):
-- \next_state~32_combout\ = (\Equal0~1_combout\ & (!\IR[0]~input_o\ & (!\IR[4]~input_o\ & \current_state.S_DECODE_3~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~1_combout\,
	datab => \IR[0]~input_o\,
	datac => \IR[4]~input_o\,
	datad => \current_state.S_DECODE_3~q\,
	combout => \next_state~32_combout\);

-- Location: FF_X14_Y18_N23
\current_state.S_LDA_IMM_4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \next_state~32_combout\,
	clrn => \Reset~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_state.S_LDA_IMM_4~q\);

-- Location: LCCOMB_X14_Y18_N30
\next_state~34\ : cycloneiv_lcell_comb
-- Equation(s):
-- \next_state~34_combout\ = (!\IR[0]~input_o\ & (\Equal3~1_combout\ & \current_state.S_DECODE_3~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \IR[0]~input_o\,
	datac => \Equal3~1_combout\,
	datad => \current_state.S_DECODE_3~q\,
	combout => \next_state~34_combout\);

-- Location: FF_X14_Y18_N19
\current_state.S_LDB_IMM_4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \next_state~34_combout\,
	clrn => \Reset~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_state.S_LDB_IMM_4~q\);

-- Location: LCCOMB_X14_Y18_N26
\next_state~29\ : cycloneiv_lcell_comb
-- Equation(s):
-- \next_state~29_combout\ = (\current_state.S_LDA_DIR_4~q\) # ((\current_state.S_LDB_DIR_4~q\) # ((\current_state.S_LDA_IMM_4~q\) # (\current_state.S_LDB_IMM_4~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.S_LDA_DIR_4~q\,
	datab => \current_state.S_LDB_DIR_4~q\,
	datac => \current_state.S_LDA_IMM_4~q\,
	datad => \current_state.S_LDB_IMM_4~q\,
	combout => \next_state~29_combout\);

-- Location: IOIBUF_X33_Y14_N1
\CCR_Result[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CCR_Result(2),
	o => \CCR_Result[2]~input_o\);

-- Location: LCCOMB_X16_Y18_N14
\next_state.S_BEQ_4~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \next_state.S_BEQ_4~0_combout\ = (\current_state.S_DECODE_3~q\ & (\CCR_Result[2]~input_o\ & (\Equal7~0_combout\ & \Equal6~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.S_DECODE_3~q\,
	datab => \CCR_Result[2]~input_o\,
	datac => \Equal7~0_combout\,
	datad => \Equal6~1_combout\,
	combout => \next_state.S_BEQ_4~0_combout\);

-- Location: FF_X16_Y18_N15
\current_state.S_BEQ_4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \next_state.S_BEQ_4~0_combout\,
	clrn => \Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_state.S_BEQ_4~q\);

-- Location: LCCOMB_X17_Y18_N28
\next_state.S_BRA_6~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \next_state.S_BRA_6~0_combout\ = (!\current_state.S_FETCH_1~q\ & (!\current_state.S_DECODE_3~q\ & (!\current_state.S_FETCH_2~q\ & \current_state.S_FETCH_0~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.S_FETCH_1~q\,
	datab => \current_state.S_DECODE_3~q\,
	datac => \current_state.S_FETCH_2~q\,
	datad => \current_state.S_FETCH_0~q\,
	combout => \next_state.S_BRA_6~0_combout\);

-- Location: LCCOMB_X17_Y18_N6
\next_state.S_BEQ_5~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \next_state.S_BEQ_5~1_combout\ = (\current_state.S_BEQ_4~q\ & (!\current_state.S_LDA_IMM_4~q\ & \next_state.S_BRA_6~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.S_BEQ_4~q\,
	datac => \current_state.S_LDA_IMM_4~q\,
	datad => \next_state.S_BRA_6~0_combout\,
	combout => \next_state.S_BEQ_5~1_combout\);

-- Location: FF_X17_Y18_N7
\current_state.S_BEQ_5\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \next_state.S_BEQ_5~1_combout\,
	clrn => \Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_state.S_BEQ_5~q\);

-- Location: LCCOMB_X17_Y18_N0
\next_state~38\ : cycloneiv_lcell_comb
-- Equation(s):
-- \next_state~38_combout\ = (\Equal6~1_combout\ & (!\IR[1]~input_o\ & (!\IR[0]~input_o\ & \current_state.S_DECODE_3~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal6~1_combout\,
	datab => \IR[1]~input_o\,
	datac => \IR[0]~input_o\,
	datad => \current_state.S_DECODE_3~q\,
	combout => \next_state~38_combout\);

-- Location: FF_X16_Y18_N5
\current_state.S_BRA_4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \next_state~38_combout\,
	clrn => \Reset~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_state.S_BRA_4~q\);

-- Location: LCCOMB_X16_Y18_N12
\next_state.S_BRA_5~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \next_state.S_BRA_5~0_combout\ = (\current_state.S_BRA_4~q\ & (!\current_state.S_FETCH_1~q\ & (!\current_state.S_FETCH_2~q\ & \current_state.S_FETCH_0~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.S_BRA_4~q\,
	datab => \current_state.S_FETCH_1~q\,
	datac => \current_state.S_FETCH_2~q\,
	datad => \current_state.S_FETCH_0~q\,
	combout => \next_state.S_BRA_5~0_combout\);

-- Location: FF_X16_Y18_N13
\current_state.S_BRA_5\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \next_state.S_BRA_5~0_combout\,
	clrn => \Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_state.S_BRA_5~q\);

-- Location: LCCOMB_X15_Y18_N26
\current_state.S_LDA_DIR_5~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \current_state.S_LDA_DIR_5~feeder_combout\ = \current_state.S_LDA_DIR_4~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \current_state.S_LDA_DIR_4~q\,
	combout => \current_state.S_LDA_DIR_5~feeder_combout\);

-- Location: FF_X15_Y18_N27
\current_state.S_LDA_DIR_5\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \current_state.S_LDA_DIR_5~feeder_combout\,
	clrn => \Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_state.S_LDA_DIR_5~q\);

-- Location: FF_X15_Y18_N9
\current_state.S_LDB_DIR_5\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \current_state.S_LDB_DIR_4~q\,
	clrn => \Reset~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_state.S_LDB_DIR_5~q\);

-- Location: FF_X15_Y18_N7
\current_state.S_LDB_IMM_5\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \current_state.S_LDB_IMM_4~q\,
	clrn => \Reset~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_state.S_LDB_IMM_5~q\);

-- Location: FF_X15_Y18_N21
\current_state.S_LDA_IMM_5\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \current_state.S_LDA_IMM_4~q\,
	clrn => \Reset~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_state.S_LDA_IMM_5~q\);

-- Location: LCCOMB_X15_Y18_N6
\Selector5~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector5~0_combout\ = (!\current_state.S_LDA_DIR_5~q\ & (!\current_state.S_LDB_DIR_5~q\ & (!\current_state.S_LDB_IMM_5~q\ & !\current_state.S_LDA_IMM_5~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.S_LDA_DIR_5~q\,
	datab => \current_state.S_LDB_DIR_5~q\,
	datac => \current_state.S_LDB_IMM_5~q\,
	datad => \current_state.S_LDA_IMM_5~q\,
	combout => \Selector5~0_combout\);

-- Location: LCCOMB_X14_Y18_N6
\next_state~36\ : cycloneiv_lcell_comb
-- Equation(s):
-- \next_state~36_combout\ = (!\IR[0]~input_o\ & (\Equal0~1_combout\ & (\IR[4]~input_o\ & \current_state.S_DECODE_3~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IR[0]~input_o\,
	datab => \Equal0~1_combout\,
	datac => \IR[4]~input_o\,
	datad => \current_state.S_DECODE_3~q\,
	combout => \next_state~36_combout\);

-- Location: FF_X15_Y18_N15
\current_state.S_STA_DIR_4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \next_state~36_combout\,
	clrn => \Reset~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_state.S_STA_DIR_4~q\);

-- Location: FF_X15_Y18_N23
\current_state.S_STA_DIR_5\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \current_state.S_STA_DIR_4~q\,
	clrn => \Reset~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_state.S_STA_DIR_5~q\);

-- Location: LCCOMB_X14_Y18_N24
\next_state~37\ : cycloneiv_lcell_comb
-- Equation(s):
-- \next_state~37_combout\ = (\Equal0~1_combout\ & (\IR[0]~input_o\ & (\IR[4]~input_o\ & \current_state.S_DECODE_3~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~1_combout\,
	datab => \IR[0]~input_o\,
	datac => \IR[4]~input_o\,
	datad => \current_state.S_DECODE_3~q\,
	combout => \next_state~37_combout\);

-- Location: LCCOMB_X14_Y18_N20
\current_state.S_STB_DIR_4~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \current_state.S_STB_DIR_4~feeder_combout\ = \next_state~37_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \next_state~37_combout\,
	combout => \current_state.S_STB_DIR_4~feeder_combout\);

-- Location: FF_X14_Y18_N21
\current_state.S_STB_DIR_4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \current_state.S_STB_DIR_4~feeder_combout\,
	clrn => \Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_state.S_STB_DIR_4~q\);

-- Location: FF_X15_Y18_N17
\current_state.S_STB_DIR_5\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \current_state.S_STB_DIR_4~q\,
	clrn => \Reset~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_state.S_STB_DIR_5~q\);

-- Location: LCCOMB_X15_Y18_N14
\Selector5~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector5~1_combout\ = (!\current_state.S_STA_DIR_5~q\ & !\current_state.S_STB_DIR_5~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.S_STA_DIR_5~q\,
	datad => \current_state.S_STB_DIR_5~q\,
	combout => \Selector5~1_combout\);

-- Location: LCCOMB_X16_Y18_N2
\Selector5~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector5~2_combout\ = (!\current_state.S_BEQ_5~q\ & (!\current_state.S_BRA_5~q\ & (\Selector5~0_combout\ & \Selector5~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.S_BEQ_5~q\,
	datab => \current_state.S_BRA_5~q\,
	datac => \Selector5~0_combout\,
	datad => \Selector5~1_combout\,
	combout => \Selector5~2_combout\);

-- Location: LCCOMB_X16_Y18_N4
\next_state~30\ : cycloneiv_lcell_comb
-- Equation(s):
-- \next_state~30_combout\ = (\current_state.S_STA_DIR_4~q\) # ((\current_state.S_BEQ_4~q\) # ((\current_state.S_BRA_4~q\) # (\current_state.S_STB_DIR_4~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.S_STA_DIR_4~q\,
	datab => \current_state.S_BEQ_4~q\,
	datac => \current_state.S_BRA_4~q\,
	datad => \current_state.S_STB_DIR_4~q\,
	combout => \next_state~30_combout\);

-- Location: FF_X15_Y18_N31
\current_state.S_LDA_DIR_6\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \current_state.S_LDA_DIR_5~q\,
	clrn => \Reset~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_state.S_LDA_DIR_6~q\);

-- Location: FF_X15_Y18_N1
\current_state.S_LDA_DIR_7\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \current_state.S_LDA_DIR_6~q\,
	clrn => \Reset~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_state.S_LDA_DIR_7~q\);

-- Location: FF_X15_Y18_N5
\current_state.S_LDB_DIR_6\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \current_state.S_LDB_DIR_5~q\,
	clrn => \Reset~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_state.S_LDB_DIR_6~q\);

-- Location: FF_X15_Y18_N25
\current_state.S_LDB_DIR_7\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \current_state.S_LDB_DIR_6~q\,
	clrn => \Reset~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_state.S_LDB_DIR_7~q\);

-- Location: FF_X15_Y18_N19
\current_state.S_STA_DIR_6\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \current_state.S_STA_DIR_5~q\,
	clrn => \Reset~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_state.S_STA_DIR_6~q\);

-- Location: LCCOMB_X15_Y18_N10
\next_state.S_STB_DIR_6~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \next_state.S_STB_DIR_6~0_combout\ = (\current_state.S_FETCH_0~q\ & \current_state.S_STB_DIR_5~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \current_state.S_FETCH_0~q\,
	datad => \current_state.S_STB_DIR_5~q\,
	combout => \next_state.S_STB_DIR_6~0_combout\);

-- Location: FF_X15_Y18_N11
\current_state.S_STB_DIR_6\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \next_state.S_STB_DIR_6~0_combout\,
	clrn => \Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_state.S_STB_DIR_6~q\);

-- Location: LCCOMB_X15_Y18_N0
\WideOr11~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WideOr11~0_combout\ = (!\current_state.S_STA_DIR_6~q\ & (!\current_state.S_LDB_DIR_6~q\ & (!\current_state.S_LDA_DIR_6~q\ & !\current_state.S_STB_DIR_6~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.S_STA_DIR_6~q\,
	datab => \current_state.S_LDB_DIR_6~q\,
	datac => \current_state.S_LDA_DIR_6~q\,
	datad => \current_state.S_STB_DIR_6~q\,
	combout => \WideOr11~0_combout\);

-- Location: LCCOMB_X15_Y18_N24
\WideOr11~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WideOr11~3_combout\ = (!\current_state.S_LDA_DIR_7~q\ & (!\current_state.S_LDB_DIR_7~q\ & \WideOr11~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.S_LDA_DIR_7~q\,
	datac => \current_state.S_LDB_DIR_7~q\,
	datad => \WideOr11~0_combout\,
	combout => \WideOr11~3_combout\);

-- Location: LCCOMB_X16_Y18_N24
\next_state~31\ : cycloneiv_lcell_comb
-- Equation(s):
-- \next_state~31_combout\ = (\next_state~29_combout\) # (((\next_state~30_combout\) # (!\WideOr11~3_combout\)) # (!\Selector5~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \next_state~29_combout\,
	datab => \Selector5~2_combout\,
	datac => \next_state~30_combout\,
	datad => \WideOr11~3_combout\,
	combout => \next_state~31_combout\);

-- Location: LCCOMB_X16_Y18_N10
\next_state.S_FETCH_0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \next_state.S_FETCH_0~0_combout\ = ((\current_state.S_DECODE_3~q\ & (\next_state~28_combout\)) # (!\current_state.S_DECODE_3~q\ & ((\next_state~31_combout\)))) # (!\next_state.S_BEQ_5~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011110110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.S_DECODE_3~q\,
	datab => \next_state.S_BEQ_5~0_combout\,
	datac => \next_state~28_combout\,
	datad => \next_state~31_combout\,
	combout => \next_state.S_FETCH_0~0_combout\);

-- Location: FF_X16_Y18_N11
\current_state.S_FETCH_0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \next_state.S_FETCH_0~0_combout\,
	clrn => \Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_state.S_FETCH_0~q\);

-- Location: LCCOMB_X17_Y18_N22
\current_state.S_FETCH_1~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \current_state.S_FETCH_1~0_combout\ = !\current_state.S_FETCH_0~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \current_state.S_FETCH_0~q\,
	combout => \current_state.S_FETCH_1~0_combout\);

-- Location: FF_X17_Y18_N23
\current_state.S_FETCH_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \current_state.S_FETCH_1~0_combout\,
	clrn => \Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_state.S_FETCH_1~q\);

-- Location: FF_X17_Y18_N5
\current_state.S_FETCH_2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \current_state.S_FETCH_1~q\,
	clrn => \Reset~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_state.S_FETCH_2~q\);

-- Location: LCCOMB_X17_Y18_N14
\Selector18~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector18~3_combout\ = ((\Equal6~1_combout\ & (\IR[1]~input_o\ & \IR[0]~input_o\))) # (!\current_state.S_DECODE_3~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal6~1_combout\,
	datab => \IR[1]~input_o\,
	datac => \IR[0]~input_o\,
	datad => \current_state.S_DECODE_3~q\,
	combout => \Selector18~3_combout\);

-- Location: LCCOMB_X17_Y18_N12
\Selector18~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector18~2_combout\ = (\Selector18~3_combout\) # (((\Equal8~0_combout\ & \Equal6~0_combout\)) # (!\next_state~39_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal8~0_combout\,
	datab => \Equal6~0_combout\,
	datac => \Selector18~3_combout\,
	datad => \next_state~39_combout\,
	combout => \Selector18~2_combout\);

-- Location: CLKCTRL_G10
\Selector18~2clkctrl\ : cycloneiv_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \Selector18~2clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \Selector18~2clkctrl_outclk\);

-- Location: LCCOMB_X17_Y18_N24
\IR_Load$latch\ : cycloneiv_lcell_comb
-- Equation(s):
-- \IR_Load$latch~combout\ = (GLOBAL(\Selector18~2clkctrl_outclk\) & ((\current_state.S_FETCH_2~q\))) # (!GLOBAL(\Selector18~2clkctrl_outclk\) & (\IR_Load$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \IR_Load$latch~combout\,
	datac => \current_state.S_FETCH_2~q\,
	datad => \Selector18~2clkctrl_outclk\,
	combout => \IR_Load$latch~combout\);

-- Location: LCCOMB_X16_Y18_N16
\Selector15~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector15~0_combout\ = (\current_state.S_DECODE_3~q\ & (((!\Equal6~1_combout\) # (!\CCR_Result[2]~input_o\)) # (!\Equal7~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal7~0_combout\,
	datab => \CCR_Result[2]~input_o\,
	datac => \current_state.S_DECODE_3~q\,
	datad => \Equal6~1_combout\,
	combout => \Selector15~0_combout\);

-- Location: LCCOMB_X15_Y18_N4
\Selector15~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector15~1_combout\ = (!\WideOr11~0_combout\) # (!\current_state.S_FETCH_0~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011101110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.S_FETCH_0~q\,
	datab => \WideOr11~0_combout\,
	combout => \Selector15~1_combout\);

-- Location: LCCOMB_X16_Y18_N0
\A_Load~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \A_Load~0_combout\ = (\Equal0~1_combout\) # (((!\CCR_Result[2]~input_o\ & \Equal7~1_combout\)) # (!\next_state~27_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~1_combout\,
	datab => \CCR_Result[2]~input_o\,
	datac => \next_state~27_combout\,
	datad => \Equal7~1_combout\,
	combout => \A_Load~0_combout\);

-- Location: LCCOMB_X14_Y18_N8
\Selector15~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector15~2_combout\ = (\Selector15~0_combout\) # ((\Selector15~1_combout\) # ((\current_state.S_DECODE_3~q\ & \A_Load~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector15~0_combout\,
	datab => \current_state.S_DECODE_3~q\,
	datac => \Selector15~1_combout\,
	datad => \A_Load~0_combout\,
	combout => \Selector15~2_combout\);

-- Location: LCCOMB_X14_Y18_N10
\MAR_Load$latch\ : cycloneiv_lcell_comb
-- Equation(s):
-- \MAR_Load$latch~combout\ = (GLOBAL(\Selector18~2clkctrl_outclk\) & ((\Selector15~2_combout\))) # (!GLOBAL(\Selector18~2clkctrl_outclk\) & (\MAR_Load$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MAR_Load$latch~combout\,
	datac => \Selector15~2_combout\,
	datad => \Selector18~2clkctrl_outclk\,
	combout => \MAR_Load$latch~combout\);

-- Location: LCCOMB_X15_Y18_N12
\next_state.S_BRA_6~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \next_state.S_BRA_6~1_combout\ = (\current_state.S_BRA_5~q\ & \next_state.S_BRA_6~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \current_state.S_BRA_5~q\,
	datad => \next_state.S_BRA_6~0_combout\,
	combout => \next_state.S_BRA_6~1_combout\);

-- Location: FF_X15_Y18_N13
\current_state.S_BRA_6\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \next_state.S_BRA_6~1_combout\,
	clrn => \Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_state.S_BRA_6~q\);

-- Location: LCCOMB_X15_Y18_N28
\next_state.S_BEQ_6~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \next_state.S_BEQ_6~0_combout\ = (\current_state.S_BEQ_5~q\ & (!\current_state.S_LDA_IMM_5~q\ & (!\current_state.S_LDA_IMM_4~q\ & \next_state.S_BRA_6~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.S_BEQ_5~q\,
	datab => \current_state.S_LDA_IMM_5~q\,
	datac => \current_state.S_LDA_IMM_4~q\,
	datad => \next_state.S_BRA_6~0_combout\,
	combout => \next_state.S_BEQ_6~0_combout\);

-- Location: FF_X15_Y18_N29
\current_state.S_BEQ_6\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \next_state.S_BEQ_6~0_combout\,
	clrn => \Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_state.S_BEQ_6~q\);

-- Location: LCCOMB_X15_Y18_N16
\PC_Load~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PC_Load~0_combout\ = (!\current_state.S_BRA_6~q\ & !\current_state.S_BEQ_6~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.S_BRA_6~q\,
	datab => \current_state.S_BEQ_6~q\,
	combout => \PC_Load~0_combout\);

-- Location: LCCOMB_X15_Y18_N20
\PC_Load$latch\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PC_Load$latch~combout\ = (GLOBAL(\Selector18~2clkctrl_outclk\) & ((!\PC_Load~0_combout\))) # (!GLOBAL(\Selector18~2clkctrl_outclk\) & (\PC_Load$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC_Load$latch~combout\,
	datab => \PC_Load~0_combout\,
	datad => \Selector18~2clkctrl_outclk\,
	combout => \PC_Load$latch~combout\);

-- Location: LCCOMB_X15_Y18_N22
\Selector11~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector11~3_combout\ = ((\current_state.S_FETCH_1~q\) # ((\current_state.S_STA_DIR_5~q\) # (\current_state.S_STB_DIR_5~q\))) # (!\Selector5~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector5~0_combout\,
	datab => \current_state.S_FETCH_1~q\,
	datac => \current_state.S_STA_DIR_5~q\,
	datad => \current_state.S_STB_DIR_5~q\,
	combout => \Selector11~3_combout\);

-- Location: LCCOMB_X15_Y18_N8
\Selector11~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector11~2_combout\ = (\Selector11~3_combout\) # ((!\A_Load~0_combout\ & \next_state.S_BEQ_4~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A_Load~0_combout\,
	datab => \next_state.S_BEQ_4~0_combout\,
	datad => \Selector11~3_combout\,
	combout => \Selector11~2_combout\);

-- Location: LCCOMB_X15_Y18_N18
\PC_Inc$latch\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PC_Inc$latch~combout\ = (GLOBAL(\Selector18~2clkctrl_outclk\) & ((\Selector11~2_combout\))) # (!GLOBAL(\Selector18~2clkctrl_outclk\) & (\PC_Inc$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC_Inc$latch~combout\,
	datab => \Selector18~2clkctrl_outclk\,
	datad => \Selector11~2_combout\,
	combout => \PC_Inc$latch~combout\);

-- Location: LCCOMB_X15_Y19_N20
\current_state.S_LDA_IMM_6~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \current_state.S_LDA_IMM_6~feeder_combout\ = \current_state.S_LDA_IMM_5~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \current_state.S_LDA_IMM_5~q\,
	combout => \current_state.S_LDA_IMM_6~feeder_combout\);

-- Location: FF_X15_Y19_N21
\current_state.S_LDA_IMM_6\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \current_state.S_LDA_IMM_6~feeder_combout\,
	clrn => \Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_state.S_LDA_IMM_6~q\);

-- Location: LCCOMB_X15_Y19_N6
\current_state.S_LDA_DIR_8~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \current_state.S_LDA_DIR_8~feeder_combout\ = \current_state.S_LDA_DIR_7~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \current_state.S_LDA_DIR_7~q\,
	combout => \current_state.S_LDA_DIR_8~feeder_combout\);

-- Location: FF_X15_Y19_N7
\current_state.S_LDA_DIR_8\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \current_state.S_LDA_DIR_8~feeder_combout\,
	clrn => \Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_state.S_LDA_DIR_8~q\);

-- Location: LCCOMB_X15_Y19_N4
\Selector9~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector9~2_combout\ = (\current_state.S_LDA_IMM_6~q\) # ((\current_state.S_LDA_DIR_8~q\) # ((!\A_Load~0_combout\ & \Selector15~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.S_LDA_IMM_6~q\,
	datab => \A_Load~0_combout\,
	datac => \Selector15~0_combout\,
	datad => \current_state.S_LDA_DIR_8~q\,
	combout => \Selector9~2_combout\);

-- Location: LCCOMB_X15_Y19_N24
\A_Load$latch\ : cycloneiv_lcell_comb
-- Equation(s):
-- \A_Load$latch~combout\ = (GLOBAL(\Selector18~2clkctrl_outclk\) & ((\Selector9~2_combout\))) # (!GLOBAL(\Selector18~2clkctrl_outclk\) & (\A_Load$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A_Load$latch~combout\,
	datac => \Selector9~2_combout\,
	datad => \Selector18~2clkctrl_outclk\,
	combout => \A_Load$latch~combout\);

-- Location: LCCOMB_X15_Y19_N18
\current_state.S_LDB_IMM_6~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \current_state.S_LDB_IMM_6~feeder_combout\ = \current_state.S_LDB_IMM_5~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \current_state.S_LDB_IMM_5~q\,
	combout => \current_state.S_LDB_IMM_6~feeder_combout\);

-- Location: FF_X15_Y19_N19
\current_state.S_LDB_IMM_6\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \current_state.S_LDB_IMM_6~feeder_combout\,
	clrn => \Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_state.S_LDB_IMM_6~q\);

-- Location: FF_X15_Y19_N1
\current_state.S_LDB_DIR_8\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \current_state.S_LDB_DIR_7~q\,
	clrn => \Reset~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_state.S_LDB_DIR_8~q\);

-- Location: LCCOMB_X15_Y19_N0
\B_Load~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \B_Load~0_combout\ = (!\current_state.S_LDB_IMM_6~q\ & !\current_state.S_LDB_DIR_8~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \current_state.S_LDB_IMM_6~q\,
	datac => \current_state.S_LDB_DIR_8~q\,
	combout => \B_Load~0_combout\);

-- Location: LCCOMB_X14_Y19_N16
\B_Load$latch\ : cycloneiv_lcell_comb
-- Equation(s):
-- \B_Load$latch~combout\ = (GLOBAL(\Selector18~2clkctrl_outclk\) & ((!\B_Load~0_combout\))) # (!GLOBAL(\Selector18~2clkctrl_outclk\) & (\B_Load$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B_Load$latch~combout\,
	datac => \B_Load~0_combout\,
	datad => \Selector18~2clkctrl_outclk\,
	combout => \B_Load$latch~combout\);

-- Location: LCCOMB_X17_Y18_N10
\comb~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \comb~1_combout\ = (\Selector18~2_combout\ & (!\A_Load~0_combout\ & \Selector15~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector18~2_combout\,
	datac => \A_Load~0_combout\,
	datad => \Selector15~0_combout\,
	combout => \comb~1_combout\);

-- Location: LCCOMB_X15_Y18_N30
\comb~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \comb~0_combout\ = (\Selector18~2_combout\ & ((\A_Load~0_combout\) # (!\Selector15~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector15~0_combout\,
	datab => \Selector18~2_combout\,
	datad => \A_Load~0_combout\,
	combout => \comb~0_combout\);

-- Location: LCCOMB_X17_Y18_N16
\CCR_Load$latch\ : cycloneiv_lcell_comb
-- Equation(s):
-- \CCR_Load$latch~combout\ = (!\comb~0_combout\ & ((\comb~1_combout\) # (\CCR_Load$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb~1_combout\,
	datab => \comb~0_combout\,
	datad => \CCR_Load$latch~combout\,
	combout => \CCR_Load$latch~combout\);

-- Location: LCCOMB_X16_Y18_N28
\Selector5~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector5~3_combout\ = (\current_state.S_FETCH_1~q\) # ((\A_Load~0_combout\ & \current_state.S_DECODE_3~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.S_FETCH_1~q\,
	datab => \A_Load~0_combout\,
	datac => \current_state.S_DECODE_3~q\,
	combout => \Selector5~3_combout\);

-- Location: LCCOMB_X16_Y18_N22
\Selector5~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector5~4_combout\ = (((\next_state.S_BEQ_4~0_combout\) # (\Selector5~3_combout\)) # (!\current_state.S_FETCH_0~q\)) # (!\Selector5~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector5~2_combout\,
	datab => \current_state.S_FETCH_0~q\,
	datac => \next_state.S_BEQ_4~0_combout\,
	datad => \Selector5~3_combout\,
	combout => \Selector5~4_combout\);

-- Location: LCCOMB_X16_Y18_N8
\Bus2_Sel[0]$latch\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Bus2_Sel[0]$latch~combout\ = (GLOBAL(\Selector18~2clkctrl_outclk\) & ((\Selector5~4_combout\))) # (!GLOBAL(\Selector18~2clkctrl_outclk\) & (\Bus2_Sel[0]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Bus2_Sel[0]$latch~combout\,
	datac => \Selector5~4_combout\,
	datad => \Selector18~2clkctrl_outclk\,
	combout => \Bus2_Sel[0]$latch~combout\);

-- Location: LCCOMB_X15_Y19_N12
\WideOr11~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WideOr11~1_combout\ = (!\current_state.S_LDA_DIR_8~q\ & !\current_state.S_LDA_IMM_6~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.S_LDA_DIR_8~q\,
	datab => \current_state.S_LDA_IMM_6~q\,
	combout => \WideOr11~1_combout\);

-- Location: LCCOMB_X15_Y19_N10
\current_state.S_STA_DIR_7~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \current_state.S_STA_DIR_7~feeder_combout\ = \current_state.S_STA_DIR_6~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \current_state.S_STA_DIR_6~q\,
	combout => \current_state.S_STA_DIR_7~feeder_combout\);

-- Location: FF_X15_Y19_N11
\current_state.S_STA_DIR_7\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \current_state.S_STA_DIR_7~feeder_combout\,
	clrn => \Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_state.S_STA_DIR_7~q\);

-- Location: LCCOMB_X15_Y19_N16
\next_state.S_STB_DIR_7~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \next_state.S_STB_DIR_7~0_combout\ = (\current_state.S_FETCH_0~q\ & (\current_state.S_STB_DIR_6~q\ & !\current_state.S_FETCH_1~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.S_FETCH_0~q\,
	datac => \current_state.S_STB_DIR_6~q\,
	datad => \current_state.S_FETCH_1~q\,
	combout => \next_state.S_STB_DIR_7~0_combout\);

-- Location: FF_X15_Y19_N17
\current_state.S_STB_DIR_7\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \next_state.S_STB_DIR_7~0_combout\,
	clrn => \Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_state.S_STB_DIR_7~q\);

-- Location: LCCOMB_X15_Y19_N2
\Bus1_Sel~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Bus1_Sel~0_combout\ = (!\current_state.S_STA_DIR_7~q\ & !\current_state.S_STB_DIR_7~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.S_STA_DIR_7~q\,
	datab => \current_state.S_STB_DIR_7~q\,
	combout => \Bus1_Sel~0_combout\);

-- Location: LCCOMB_X15_Y19_N8
\WideOr11~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WideOr11~2_combout\ = (((!\PC_Load~0_combout\) # (!\Bus1_Sel~0_combout\)) # (!\B_Load~0_combout\)) # (!\WideOr11~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WideOr11~1_combout\,
	datab => \B_Load~0_combout\,
	datac => \Bus1_Sel~0_combout\,
	datad => \PC_Load~0_combout\,
	combout => \WideOr11~2_combout\);

-- Location: LCCOMB_X15_Y19_N26
WideOr11 : cycloneiv_lcell_comb
-- Equation(s):
-- \WideOr11~combout\ = (\current_state.S_FETCH_2~q\) # ((\WideOr11~2_combout\) # (!\WideOr11~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \current_state.S_FETCH_2~q\,
	datac => \WideOr11~3_combout\,
	datad => \WideOr11~2_combout\,
	combout => \WideOr11~combout\);

-- Location: LCCOMB_X15_Y19_N30
\Bus2_Sel[1]$latch\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Bus2_Sel[1]$latch~combout\ = (GLOBAL(\Selector18~2clkctrl_outclk\) & ((\WideOr11~combout\))) # (!GLOBAL(\Selector18~2clkctrl_outclk\) & (\Bus2_Sel[1]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Bus2_Sel[1]$latch~combout\,
	datac => \Selector18~2clkctrl_outclk\,
	datad => \WideOr11~combout\,
	combout => \Bus2_Sel[1]$latch~combout\);

-- Location: LCCOMB_X15_Y19_N22
\Selector1~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector1~2_combout\ = (\current_state.S_STA_DIR_7~q\) # ((\current_state.S_STB_DIR_7~q\) # ((!\A_Load~0_combout\ & \Selector15~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.S_STA_DIR_7~q\,
	datab => \A_Load~0_combout\,
	datac => \Selector15~0_combout\,
	datad => \current_state.S_STB_DIR_7~q\,
	combout => \Selector1~2_combout\);

-- Location: LCCOMB_X15_Y19_N28
\Bus1_Sel[0]$latch\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Bus1_Sel[0]$latch~combout\ = (GLOBAL(\Selector18~2clkctrl_outclk\) & ((\Selector1~2_combout\))) # (!GLOBAL(\Selector18~2clkctrl_outclk\) & (\Bus1_Sel[0]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Bus1_Sel[0]$latch~combout\,
	datac => \Selector1~2_combout\,
	datad => \Selector18~2clkctrl_outclk\,
	combout => \Bus1_Sel[0]$latch~combout\);

-- Location: LCCOMB_X15_Y19_N14
\writen$latch\ : cycloneiv_lcell_comb
-- Equation(s):
-- \writen$latch~combout\ = (GLOBAL(\Selector18~2clkctrl_outclk\) & ((!\Bus1_Sel~0_combout\))) # (!GLOBAL(\Selector18~2clkctrl_outclk\) & (\writen$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \writen$latch~combout\,
	datac => \Bus1_Sel~0_combout\,
	datad => \Selector18~2clkctrl_outclk\,
	combout => \writen$latch~combout\);

-- Location: IOIBUF_X16_Y0_N8
\CCR_Result[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CCR_Result(0),
	o => \CCR_Result[0]~input_o\);

-- Location: IOIBUF_X16_Y0_N1
\CCR_Result[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CCR_Result(1),
	o => \CCR_Result[1]~input_o\);

-- Location: IOIBUF_X24_Y0_N1
\CCR_Result[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CCR_Result(3),
	o => \CCR_Result[3]~input_o\);

ww_IR_Load <= \IR_Load~output_o\;

ww_MAR_Load <= \MAR_Load~output_o\;

ww_PC_Load <= \PC_Load~output_o\;

ww_PC_Inc <= \PC_Inc~output_o\;

ww_A_Load <= \A_Load~output_o\;

ww_B_Load <= \B_Load~output_o\;

ww_CCR_Load <= \CCR_Load~output_o\;

ww_ALU_Sel(0) <= \ALU_Sel[0]~output_o\;

ww_ALU_Sel(1) <= \ALU_Sel[1]~output_o\;

ww_ALU_Sel(2) <= \ALU_Sel[2]~output_o\;

ww_Bus2_Sel(0) <= \Bus2_Sel[0]~output_o\;

ww_Bus2_Sel(1) <= \Bus2_Sel[1]~output_o\;

ww_Bus1_Sel(0) <= \Bus1_Sel[0]~output_o\;

ww_Bus1_Sel(1) <= \Bus1_Sel[1]~output_o\;

ww_writen <= \writen~output_o\;
END structure;


