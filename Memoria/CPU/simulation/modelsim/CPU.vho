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

-- DATE "01/27/2022 12:04:48"

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

ENTITY 	CPU IS
    PORT (
	Clock : IN std_logic;
	Reset : IN std_logic;
	writen : BUFFER std_logic;
	from_memory : IN std_logic_vector(7 DOWNTO 0);
	to_memory : BUFFER std_logic_vector(7 DOWNTO 0);
	address : BUFFER std_logic_vector(7 DOWNTO 0)
	);
END CPU;

-- Design Ports Information
-- writen	=>  Location: PIN_L16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- to_memory[0]	=>  Location: PIN_B18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- to_memory[1]	=>  Location: PIN_J15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- to_memory[2]	=>  Location: PIN_K19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- to_memory[3]	=>  Location: PIN_L21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- to_memory[4]	=>  Location: PIN_L22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- to_memory[5]	=>  Location: PIN_K15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- to_memory[6]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- to_memory[7]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address[0]	=>  Location: PIN_H22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address[1]	=>  Location: PIN_J16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address[2]	=>  Location: PIN_AA16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address[3]	=>  Location: PIN_G12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address[4]	=>  Location: PIN_L15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address[5]	=>  Location: PIN_U12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address[6]	=>  Location: PIN_J21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address[7]	=>  Location: PIN_J18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- from_memory[0]	=>  Location: PIN_K16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Clock	=>  Location: PIN_G2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Reset	=>  Location: PIN_G1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- from_memory[1]	=>  Location: PIN_J22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- from_memory[2]	=>  Location: PIN_M19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- from_memory[3]	=>  Location: PIN_K21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- from_memory[4]	=>  Location: PIN_F12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- from_memory[5]	=>  Location: PIN_K18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- from_memory[6]	=>  Location: PIN_E14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- from_memory[7]	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF CPU IS
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
SIGNAL ww_writen : std_logic;
SIGNAL ww_from_memory : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_to_memory : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_address : std_logic_vector(7 DOWNTO 0);
SIGNAL \Clock~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \control|Selector0~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Reset~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \writen~output_o\ : std_logic;
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
SIGNAL \control|next_state.S_BEQ_5~0_combout\ : std_logic;
SIGNAL \Reset~input_o\ : std_logic;
SIGNAL \Reset~inputclkctrl_outclk\ : std_logic;
SIGNAL \control|current_state.S_DECODE_3~q\ : std_logic;
SIGNAL \data|PC_uns[0]~8_combout\ : std_logic;
SIGNAL \data|PC_uns[1]~12\ : std_logic;
SIGNAL \data|PC_uns[2]~13_combout\ : std_logic;
SIGNAL \data|IR[0]~feeder_combout\ : std_logic;
SIGNAL \control|IR_Load~combout\ : std_logic;
SIGNAL \control|OUTPUT_LOGIC~0_combout\ : std_logic;
SIGNAL \data|PC_uns[3]~16\ : std_logic;
SIGNAL \data|PC_uns[4]~17_combout\ : std_logic;
SIGNAL \control|next_state.S_BRA_6~0_combout\ : std_logic;
SIGNAL \control|next_state.S_BRA_5~0_combout\ : std_logic;
SIGNAL \control|current_state.S_BRA_5~q\ : std_logic;
SIGNAL \control|next_state.S_BRA_6~1_combout\ : std_logic;
SIGNAL \control|current_state.S_BRA_6~q\ : std_logic;
SIGNAL \control|Equal0~1_combout\ : std_logic;
SIGNAL \control|next_state~32_combout\ : std_logic;
SIGNAL \control|current_state.S_LDA_IMM_4~q\ : std_logic;
SIGNAL \control|current_state.S_LDA_IMM_5~feeder_combout\ : std_logic;
SIGNAL \control|current_state.S_LDA_IMM_5~q\ : std_logic;
SIGNAL \control|current_state.S_BEQ_4~q\ : std_logic;
SIGNAL \control|next_state.S_BEQ_5~1_combout\ : std_logic;
SIGNAL \control|current_state.S_BEQ_5~q\ : std_logic;
SIGNAL \control|next_state.S_BEQ_6~0_combout\ : std_logic;
SIGNAL \control|current_state.S_BEQ_6~q\ : std_logic;
SIGNAL \control|PC_Load~0_combout\ : std_logic;
SIGNAL \control|PC_Load~combout\ : std_logic;
SIGNAL \control|next_state~37_combout\ : std_logic;
SIGNAL \control|current_state.S_STB_DIR_4~q\ : std_logic;
SIGNAL \control|current_state.S_STB_DIR_5~q\ : std_logic;
SIGNAL \data|PC_uns[5]~20\ : std_logic;
SIGNAL \data|PC_uns[6]~21_combout\ : std_logic;
SIGNAL \data|PC_uns[6]~22\ : std_logic;
SIGNAL \data|PC_uns[7]~23_combout\ : std_logic;
SIGNAL \data|Mux0~0_combout\ : std_logic;
SIGNAL \from_memory[7]~input_o\ : std_logic;
SIGNAL \data|Mux8~2_combout\ : std_logic;
SIGNAL \control|current_state.S_LDB_IMM_6~q\ : std_logic;
SIGNAL \control|next_state~35_combout\ : std_logic;
SIGNAL \control|current_state.S_LDB_DIR_4~q\ : std_logic;
SIGNAL \control|current_state.S_LDB_DIR_5~feeder_combout\ : std_logic;
SIGNAL \control|current_state.S_LDB_DIR_5~q\ : std_logic;
SIGNAL \control|current_state.S_LDB_DIR_6~feeder_combout\ : std_logic;
SIGNAL \control|current_state.S_LDB_DIR_6~q\ : std_logic;
SIGNAL \control|current_state.S_LDB_DIR_7~q\ : std_logic;
SIGNAL \control|current_state.S_LDB_DIR_8~q\ : std_logic;
SIGNAL \control|B_Load~0_combout\ : std_logic;
SIGNAL \control|B_Load~combout\ : std_logic;
SIGNAL \data|Mux1~0_combout\ : std_logic;
SIGNAL \data|Mux3~0_combout\ : std_logic;
SIGNAL \data|U0|Add0~1\ : std_logic;
SIGNAL \data|U0|Add0~3\ : std_logic;
SIGNAL \data|U0|Add0~5\ : std_logic;
SIGNAL \data|U0|Add0~7\ : std_logic;
SIGNAL \data|U0|Add0~9\ : std_logic;
SIGNAL \data|U0|Add0~11\ : std_logic;
SIGNAL \data|U0|Add0~13\ : std_logic;
SIGNAL \data|U0|Add0~14_combout\ : std_logic;
SIGNAL \data|Mux8~3_combout\ : std_logic;
SIGNAL \control|Equal3~0_combout\ : std_logic;
SIGNAL \control|Equal3~1_combout\ : std_logic;
SIGNAL \control|next_state~34_combout\ : std_logic;
SIGNAL \control|current_state.S_LDB_IMM_4~q\ : std_logic;
SIGNAL \control|current_state.S_LDB_IMM_5~feeder_combout\ : std_logic;
SIGNAL \control|current_state.S_LDB_IMM_5~q\ : std_logic;
SIGNAL \control|next_state~33_combout\ : std_logic;
SIGNAL \control|current_state.S_LDA_DIR_4~q\ : std_logic;
SIGNAL \control|current_state.S_LDA_DIR_5~feeder_combout\ : std_logic;
SIGNAL \control|current_state.S_LDA_DIR_5~q\ : std_logic;
SIGNAL \control|Selector5~0_combout\ : std_logic;
SIGNAL \control|Selector11~1_combout\ : std_logic;
SIGNAL \control|Selector11~2_combout\ : std_logic;
SIGNAL \control|PC_Inc~combout\ : std_logic;
SIGNAL \data|PC_uns[1]~10_combout\ : std_logic;
SIGNAL \data|PC_uns[4]~18\ : std_logic;
SIGNAL \data|PC_uns[5]~19_combout\ : std_logic;
SIGNAL \data|Mux2~0_combout\ : std_logic;
SIGNAL \from_memory[5]~input_o\ : std_logic;
SIGNAL \data|U0|Add0~10_combout\ : std_logic;
SIGNAL \data|Mux10~0_combout\ : std_logic;
SIGNAL \data|Mux10~1_combout\ : std_logic;
SIGNAL \control|Equal0~0_combout\ : std_logic;
SIGNAL \control|next_state~27_combout\ : std_logic;
SIGNAL \control|next_state~39_combout\ : std_logic;
SIGNAL \control|Selector1~0_combout\ : std_logic;
SIGNAL \control|Selector1~1_combout\ : std_logic;
SIGNAL \data|Mux5~0_combout\ : std_logic;
SIGNAL \from_memory[2]~input_o\ : std_logic;
SIGNAL \data|U0|Add0~4_combout\ : std_logic;
SIGNAL \data|Mux13~0_combout\ : std_logic;
SIGNAL \data|Mux13~1_combout\ : std_logic;
SIGNAL \data|PC_uns[2]~14\ : std_logic;
SIGNAL \data|PC_uns[3]~15_combout\ : std_logic;
SIGNAL \data|Mux4~0_combout\ : std_logic;
SIGNAL \from_memory[3]~input_o\ : std_logic;
SIGNAL \data|U0|Add0~6_combout\ : std_logic;
SIGNAL \data|Mux12~0_combout\ : std_logic;
SIGNAL \data|Mux12~1_combout\ : std_logic;
SIGNAL \control|Equal6~0_combout\ : std_logic;
SIGNAL \control|Equal8~0_combout\ : std_logic;
SIGNAL \control|next_state~28_combout\ : std_logic;
SIGNAL \control|Selector0~0_combout\ : std_logic;
SIGNAL \control|Selector0~0clkctrl_outclk\ : std_logic;
SIGNAL \control|current_state.S_LDA_IMM_6~q\ : std_logic;
SIGNAL \control|current_state.S_LDA_DIR_6~feeder_combout\ : std_logic;
SIGNAL \control|current_state.S_LDA_DIR_6~q\ : std_logic;
SIGNAL \control|current_state.S_LDA_DIR_7~q\ : std_logic;
SIGNAL \control|current_state.S_LDA_DIR_8~q\ : std_logic;
SIGNAL \control|WideOr11~0_combout\ : std_logic;
SIGNAL \control|Selector9~0_combout\ : std_logic;
SIGNAL \control|A_Load~combout\ : std_logic;
SIGNAL \data|Mux7~0_combout\ : std_logic;
SIGNAL \from_memory[0]~input_o\ : std_logic;
SIGNAL \data|U0|Add0~0_combout\ : std_logic;
SIGNAL \data|Mux15~0_combout\ : std_logic;
SIGNAL \data|Mux15~1_combout\ : std_logic;
SIGNAL \data|PC_uns[0]~9\ : std_logic;
SIGNAL \data|PC_uns[1]~11_combout\ : std_logic;
SIGNAL \data|Mux6~0_combout\ : std_logic;
SIGNAL \from_memory[1]~input_o\ : std_logic;
SIGNAL \data|U0|Add0~2_combout\ : std_logic;
SIGNAL \data|Mux14~0_combout\ : std_logic;
SIGNAL \data|Mux14~1_combout\ : std_logic;
SIGNAL \data|IR[1]~feeder_combout\ : std_logic;
SIGNAL \control|Equal7~0_combout\ : std_logic;
SIGNAL \control|Equal7~1_combout\ : std_logic;
SIGNAL \control|comb~5_combout\ : std_logic;
SIGNAL \control|comb~4_combout\ : std_logic;
SIGNAL \control|CCR_Load~combout\ : std_logic;
SIGNAL \data|U0|Add0~12_combout\ : std_logic;
SIGNAL \data|U0|Add0~8_combout\ : std_logic;
SIGNAL \data|CCR_Result[2]~0_combout\ : std_logic;
SIGNAL \data|CCR_Result[2]~1_combout\ : std_logic;
SIGNAL \data|CCR_Result[2]~2_combout\ : std_logic;
SIGNAL \control|Selector11~0_combout\ : std_logic;
SIGNAL \control|Selector5~1_combout\ : std_logic;
SIGNAL \control|Selector5~2_combout\ : std_logic;
SIGNAL \control|Selector5~3_combout\ : std_logic;
SIGNAL \control|Selector5~4_combout\ : std_logic;
SIGNAL \from_memory[6]~input_o\ : std_logic;
SIGNAL \data|Mux9~2_combout\ : std_logic;
SIGNAL \data|Mux9~3_combout\ : std_logic;
SIGNAL \control|Equal6~1_combout\ : std_logic;
SIGNAL \control|next_state~38_combout\ : std_logic;
SIGNAL \control|current_state.S_BRA_4~q\ : std_logic;
SIGNAL \control|next_state~30_combout\ : std_logic;
SIGNAL \control|next_state~29_combout\ : std_logic;
SIGNAL \control|next_state.S_STB_DIR_6~0_combout\ : std_logic;
SIGNAL \control|current_state.S_STB_DIR_6~q\ : std_logic;
SIGNAL \control|WideOr11~2_combout\ : std_logic;
SIGNAL \control|WideOr11~3_combout\ : std_logic;
SIGNAL \control|next_state~31_combout\ : std_logic;
SIGNAL \control|next_state.S_FETCH_0~0_combout\ : std_logic;
SIGNAL \control|current_state.S_FETCH_0~q\ : std_logic;
SIGNAL \control|current_state.S_FETCH_1~0_combout\ : std_logic;
SIGNAL \control|current_state.S_FETCH_1~q\ : std_logic;
SIGNAL \control|current_state.S_FETCH_2~feeder_combout\ : std_logic;
SIGNAL \control|current_state.S_FETCH_2~q\ : std_logic;
SIGNAL \control|WideOr11~1_combout\ : std_logic;
SIGNAL \control|WideOr11~combout\ : std_logic;
SIGNAL \from_memory[4]~input_o\ : std_logic;
SIGNAL \data|Mux11~0_combout\ : std_logic;
SIGNAL \data|Mux11~1_combout\ : std_logic;
SIGNAL \control|next_state~36_combout\ : std_logic;
SIGNAL \control|current_state.S_STA_DIR_4~q\ : std_logic;
SIGNAL \control|current_state.S_STA_DIR_5~q\ : std_logic;
SIGNAL \control|current_state.S_STA_DIR_6~feeder_combout\ : std_logic;
SIGNAL \control|current_state.S_STA_DIR_6~q\ : std_logic;
SIGNAL \control|current_state.S_STA_DIR_7~q\ : std_logic;
SIGNAL \control|next_state.S_STB_DIR_7~0_combout\ : std_logic;
SIGNAL \control|current_state.S_STB_DIR_7~q\ : std_logic;
SIGNAL \control|Bus1_Sel~0_combout\ : std_logic;
SIGNAL \control|writen~combout\ : std_logic;
SIGNAL \data|MAR[0]~feeder_combout\ : std_logic;
SIGNAL \control|Selector15~0_combout\ : std_logic;
SIGNAL \control|Selector15~1_combout\ : std_logic;
SIGNAL \control|MAR_Load~combout\ : std_logic;
SIGNAL \data|MAR[1]~feeder_combout\ : std_logic;
SIGNAL \data|MAR[4]~feeder_combout\ : std_logic;
SIGNAL \data|MAR[6]~feeder_combout\ : std_logic;
SIGNAL \control|Bus2_Sel\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \control|Bus1_Sel\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \data|PC_uns\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \data|MAR\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \data|IR\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \data|CCR_Result\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \data|B\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \data|A\ : std_logic_vector(7 DOWNTO 0);

BEGIN

ww_Clock <= Clock;
ww_Reset <= Reset;
writen <= ww_writen;
ww_from_memory <= from_memory;
to_memory <= ww_to_memory;
address <= ww_address;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\Clock~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \Clock~input_o\);

\control|Selector0~0clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \control|Selector0~0_combout\);

\Reset~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \Reset~input_o\);

-- Location: IOOBUF_X41_Y17_N9
\writen~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \control|writen~combout\,
	devoe => ww_devoe,
	o => \writen~output_o\);

-- Location: IOOBUF_X32_Y29_N23
\to_memory[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data|Mux7~0_combout\,
	devoe => ww_devoe,
	o => \to_memory[0]~output_o\);

-- Location: IOOBUF_X41_Y19_N23
\to_memory[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data|Mux6~0_combout\,
	devoe => ww_devoe,
	o => \to_memory[1]~output_o\);

-- Location: IOOBUF_X41_Y18_N2
\to_memory[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \to_memory[2]~output_o\);

-- Location: IOOBUF_X41_Y18_N16
\to_memory[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \to_memory[3]~output_o\);

-- Location: IOOBUF_X41_Y18_N23
\to_memory[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \to_memory[4]~output_o\);

-- Location: IOOBUF_X41_Y18_N9
\to_memory[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \to_memory[5]~output_o\);

-- Location: IOOBUF_X28_Y29_N9
\to_memory[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \to_memory[6]~output_o\);

-- Location: IOOBUF_X30_Y29_N2
\to_memory[7]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data|Mux0~0_combout\,
	devoe => ww_devoe,
	o => \to_memory[7]~output_o\);

-- Location: IOOBUF_X41_Y20_N2
\address[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data|MAR\(0),
	devoe => ww_devoe,
	o => \address[0]~output_o\);

-- Location: IOOBUF_X41_Y20_N16
\address[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data|MAR\(1),
	devoe => ww_devoe,
	o => \address[1]~output_o\);

-- Location: IOOBUF_X28_Y0_N23
\address[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data|MAR\(2),
	devoe => ww_devoe,
	o => \address[2]~output_o\);

-- Location: IOOBUF_X26_Y29_N9
\address[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data|MAR\(3),
	devoe => ww_devoe,
	o => \address[3]~output_o\);

-- Location: IOOBUF_X41_Y17_N2
\address[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data|MAR\(4),
	devoe => ww_devoe,
	o => \address[4]~output_o\);

-- Location: IOOBUF_X26_Y0_N2
\address[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data|MAR\(5),
	devoe => ww_devoe,
	o => \address[5]~output_o\);

-- Location: IOOBUF_X41_Y20_N23
\address[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data|MAR\(6),
	devoe => ww_devoe,
	o => \address[6]~output_o\);

-- Location: IOOBUF_X41_Y21_N2
\address[7]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data|MAR\(7),
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

-- Location: LCCOMB_X26_Y18_N14
\control|next_state.S_BEQ_5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \control|next_state.S_BEQ_5~0_combout\ = (!\control|current_state.S_FETCH_1~q\ & (!\control|current_state.S_FETCH_2~q\ & \control|current_state.S_FETCH_0~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \control|current_state.S_FETCH_1~q\,
	datac => \control|current_state.S_FETCH_2~q\,
	datad => \control|current_state.S_FETCH_0~q\,
	combout => \control|next_state.S_BEQ_5~0_combout\);

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

-- Location: FF_X27_Y18_N15
\control|current_state.S_DECODE_3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \control|current_state.S_FETCH_2~q\,
	clrn => \Reset~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \control|current_state.S_DECODE_3~q\);

-- Location: LCCOMB_X29_Y18_N10
\data|PC_uns[0]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data|PC_uns[0]~8_combout\ = \data|PC_uns\(0) $ (VCC)
-- \data|PC_uns[0]~9\ = CARRY(\data|PC_uns\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data|PC_uns\(0),
	datad => VCC,
	combout => \data|PC_uns[0]~8_combout\,
	cout => \data|PC_uns[0]~9\);

-- Location: LCCOMB_X29_Y18_N12
\data|PC_uns[1]~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data|PC_uns[1]~11_combout\ = (\data|PC_uns\(1) & (!\data|PC_uns[0]~9\)) # (!\data|PC_uns\(1) & ((\data|PC_uns[0]~9\) # (GND)))
-- \data|PC_uns[1]~12\ = CARRY((!\data|PC_uns[0]~9\) # (!\data|PC_uns\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \data|PC_uns\(1),
	datad => VCC,
	cin => \data|PC_uns[0]~9\,
	combout => \data|PC_uns[1]~11_combout\,
	cout => \data|PC_uns[1]~12\);

-- Location: LCCOMB_X29_Y18_N14
\data|PC_uns[2]~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data|PC_uns[2]~13_combout\ = (\data|PC_uns\(2) & (\data|PC_uns[1]~12\ $ (GND))) # (!\data|PC_uns\(2) & (!\data|PC_uns[1]~12\ & VCC))
-- \data|PC_uns[2]~14\ = CARRY((\data|PC_uns\(2) & !\data|PC_uns[1]~12\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \data|PC_uns\(2),
	datad => VCC,
	cin => \data|PC_uns[1]~12\,
	combout => \data|PC_uns[2]~13_combout\,
	cout => \data|PC_uns[2]~14\);

-- Location: FF_X30_Y18_N5
\data|A[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \data|Mux13~1_combout\,
	clrn => \Reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \control|A_Load~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data|A\(2));

-- Location: LCCOMB_X32_Y18_N6
\data|IR[0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data|IR[0]~feeder_combout\ = \data|Mux15~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data|Mux15~1_combout\,
	combout => \data|IR[0]~feeder_combout\);

-- Location: LCCOMB_X32_Y18_N14
\control|IR_Load\ : cycloneiii_lcell_comb
-- Equation(s):
-- \control|IR_Load~combout\ = (GLOBAL(\control|Selector0~0clkctrl_outclk\) & (\control|current_state.S_FETCH_2~q\)) # (!GLOBAL(\control|Selector0~0clkctrl_outclk\) & ((\control|IR_Load~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \control|current_state.S_FETCH_2~q\,
	datac => \control|IR_Load~combout\,
	datad => \control|Selector0~0clkctrl_outclk\,
	combout => \control|IR_Load~combout\);

-- Location: FF_X32_Y18_N7
\data|IR[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \data|IR[0]~feeder_combout\,
	clrn => \Reset~inputclkctrl_outclk\,
	ena => \control|IR_Load~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data|IR\(0));

-- Location: LCCOMB_X28_Y18_N8
\control|OUTPUT_LOGIC~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \control|OUTPUT_LOGIC~0_combout\ = (!\data|CCR_Result\(2) & (\data|IR\(0) & (\data|IR\(1) & \control|Equal6~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data|CCR_Result\(2),
	datab => \data|IR\(0),
	datac => \data|IR\(1),
	datad => \control|Equal6~1_combout\,
	combout => \control|OUTPUT_LOGIC~0_combout\);

-- Location: FF_X31_Y18_N17
\data|A[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \data|Mux10~1_combout\,
	clrn => \Reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \control|A_Load~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data|A\(5));

-- Location: LCCOMB_X29_Y18_N16
\data|PC_uns[3]~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data|PC_uns[3]~15_combout\ = (\data|PC_uns\(3) & (!\data|PC_uns[2]~14\)) # (!\data|PC_uns\(3) & ((\data|PC_uns[2]~14\) # (GND)))
-- \data|PC_uns[3]~16\ = CARRY((!\data|PC_uns[2]~14\) # (!\data|PC_uns\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \data|PC_uns\(3),
	datad => VCC,
	cin => \data|PC_uns[2]~14\,
	combout => \data|PC_uns[3]~15_combout\,
	cout => \data|PC_uns[3]~16\);

-- Location: LCCOMB_X29_Y18_N18
\data|PC_uns[4]~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data|PC_uns[4]~17_combout\ = (\data|PC_uns\(4) & (\data|PC_uns[3]~16\ $ (GND))) # (!\data|PC_uns\(4) & (!\data|PC_uns[3]~16\ & VCC))
-- \data|PC_uns[4]~18\ = CARRY((\data|PC_uns\(4) & !\data|PC_uns[3]~16\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \data|PC_uns\(4),
	datad => VCC,
	cin => \data|PC_uns[3]~16\,
	combout => \data|PC_uns[4]~17_combout\,
	cout => \data|PC_uns[4]~18\);

-- Location: LCCOMB_X26_Y18_N0
\control|next_state.S_BRA_6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \control|next_state.S_BRA_6~0_combout\ = (!\control|current_state.S_FETCH_2~q\ & (\control|current_state.S_FETCH_0~q\ & (!\control|current_state.S_DECODE_3~q\ & !\control|current_state.S_FETCH_1~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control|current_state.S_FETCH_2~q\,
	datab => \control|current_state.S_FETCH_0~q\,
	datac => \control|current_state.S_DECODE_3~q\,
	datad => \control|current_state.S_FETCH_1~q\,
	combout => \control|next_state.S_BRA_6~0_combout\);

-- Location: LCCOMB_X26_Y18_N12
\control|next_state.S_BRA_5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \control|next_state.S_BRA_5~0_combout\ = (!\control|current_state.S_FETCH_2~q\ & (\control|current_state.S_FETCH_0~q\ & (\control|current_state.S_BRA_4~q\ & !\control|current_state.S_FETCH_1~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control|current_state.S_FETCH_2~q\,
	datab => \control|current_state.S_FETCH_0~q\,
	datac => \control|current_state.S_BRA_4~q\,
	datad => \control|current_state.S_FETCH_1~q\,
	combout => \control|next_state.S_BRA_5~0_combout\);

-- Location: FF_X26_Y18_N13
\control|current_state.S_BRA_5\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \control|next_state.S_BRA_5~0_combout\,
	clrn => \Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \control|current_state.S_BRA_5~q\);

-- Location: LCCOMB_X26_Y18_N30
\control|next_state.S_BRA_6~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \control|next_state.S_BRA_6~1_combout\ = (\control|next_state.S_BRA_6~0_combout\ & \control|current_state.S_BRA_5~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control|next_state.S_BRA_6~0_combout\,
	datad => \control|current_state.S_BRA_5~q\,
	combout => \control|next_state.S_BRA_6~1_combout\);

-- Location: FF_X26_Y18_N31
\control|current_state.S_BRA_6\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \control|next_state.S_BRA_6~1_combout\,
	clrn => \Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \control|current_state.S_BRA_6~q\);

-- Location: FF_X29_Y18_N27
\data|IR[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \data|Mux13~1_combout\,
	clrn => \Reset~inputclkctrl_outclk\,
	ena => \control|IR_Load~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data|IR\(2));

-- Location: LCCOMB_X28_Y18_N26
\control|Equal0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \control|Equal0~1_combout\ = (\control|Equal0~0_combout\ & (\data|IR\(1) & \data|IR\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control|Equal0~0_combout\,
	datab => \data|IR\(1),
	datad => \data|IR\(2),
	combout => \control|Equal0~1_combout\);

-- Location: LCCOMB_X26_Y18_N4
\control|next_state~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \control|next_state~32_combout\ = (!\data|IR\(4) & (\control|current_state.S_DECODE_3~q\ & (!\data|IR\(0) & \control|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data|IR\(4),
	datab => \control|current_state.S_DECODE_3~q\,
	datac => \data|IR\(0),
	datad => \control|Equal0~1_combout\,
	combout => \control|next_state~32_combout\);

-- Location: FF_X26_Y18_N5
\control|current_state.S_LDA_IMM_4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \control|next_state~32_combout\,
	clrn => \Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \control|current_state.S_LDA_IMM_4~q\);

-- Location: LCCOMB_X33_Y18_N14
\control|current_state.S_LDA_IMM_5~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \control|current_state.S_LDA_IMM_5~feeder_combout\ = \control|current_state.S_LDA_IMM_4~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \control|current_state.S_LDA_IMM_4~q\,
	combout => \control|current_state.S_LDA_IMM_5~feeder_combout\);

-- Location: FF_X33_Y18_N15
\control|current_state.S_LDA_IMM_5\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \control|current_state.S_LDA_IMM_5~feeder_combout\,
	clrn => \Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \control|current_state.S_LDA_IMM_5~q\);

-- Location: FF_X27_Y18_N9
\control|current_state.S_BEQ_4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \control|Selector11~0_combout\,
	clrn => \Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \control|current_state.S_BEQ_4~q\);

-- Location: LCCOMB_X26_Y18_N22
\control|next_state.S_BEQ_5~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \control|next_state.S_BEQ_5~1_combout\ = (\control|next_state.S_BRA_6~0_combout\ & (!\control|current_state.S_LDA_IMM_4~q\ & \control|current_state.S_BEQ_4~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control|next_state.S_BRA_6~0_combout\,
	datac => \control|current_state.S_LDA_IMM_4~q\,
	datad => \control|current_state.S_BEQ_4~q\,
	combout => \control|next_state.S_BEQ_5~1_combout\);

-- Location: FF_X26_Y18_N23
\control|current_state.S_BEQ_5\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \control|next_state.S_BEQ_5~1_combout\,
	clrn => \Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \control|current_state.S_BEQ_5~q\);

-- Location: LCCOMB_X26_Y18_N24
\control|next_state.S_BEQ_6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \control|next_state.S_BEQ_6~0_combout\ = (\control|next_state.S_BRA_6~0_combout\ & (!\control|current_state.S_LDA_IMM_5~q\ & (!\control|current_state.S_LDA_IMM_4~q\ & \control|current_state.S_BEQ_5~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control|next_state.S_BRA_6~0_combout\,
	datab => \control|current_state.S_LDA_IMM_5~q\,
	datac => \control|current_state.S_LDA_IMM_4~q\,
	datad => \control|current_state.S_BEQ_5~q\,
	combout => \control|next_state.S_BEQ_6~0_combout\);

-- Location: FF_X26_Y18_N25
\control|current_state.S_BEQ_6\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \control|next_state.S_BEQ_6~0_combout\,
	clrn => \Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \control|current_state.S_BEQ_6~q\);

-- Location: LCCOMB_X26_Y18_N10
\control|PC_Load~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \control|PC_Load~0_combout\ = (!\control|current_state.S_BRA_6~q\ & !\control|current_state.S_BEQ_6~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \control|current_state.S_BRA_6~q\,
	datad => \control|current_state.S_BEQ_6~q\,
	combout => \control|PC_Load~0_combout\);

-- Location: LCCOMB_X31_Y18_N12
\control|PC_Load\ : cycloneiii_lcell_comb
-- Equation(s):
-- \control|PC_Load~combout\ = (GLOBAL(\control|Selector0~0clkctrl_outclk\) & ((!\control|PC_Load~0_combout\))) # (!GLOBAL(\control|Selector0~0clkctrl_outclk\) & (\control|PC_Load~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control|PC_Load~combout\,
	datac => \control|PC_Load~0_combout\,
	datad => \control|Selector0~0clkctrl_outclk\,
	combout => \control|PC_Load~combout\);

-- Location: LCCOMB_X26_Y18_N8
\control|next_state~37\ : cycloneiii_lcell_comb
-- Equation(s):
-- \control|next_state~37_combout\ = (\data|IR\(4) & (\data|IR\(0) & (\control|current_state.S_DECODE_3~q\ & \control|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data|IR\(4),
	datab => \data|IR\(0),
	datac => \control|current_state.S_DECODE_3~q\,
	datad => \control|Equal0~1_combout\,
	combout => \control|next_state~37_combout\);

-- Location: FF_X26_Y18_N9
\control|current_state.S_STB_DIR_4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \control|next_state~37_combout\,
	clrn => \Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \control|current_state.S_STB_DIR_4~q\);

-- Location: FF_X27_Y18_N1
\control|current_state.S_STB_DIR_5\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \control|current_state.S_STB_DIR_4~q\,
	clrn => \Reset~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \control|current_state.S_STB_DIR_5~q\);

-- Location: FF_X31_Y18_N7
\data|A[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \data|Mux8~3_combout\,
	clrn => \Reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \control|A_Load~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data|A\(7));

-- Location: LCCOMB_X29_Y18_N20
\data|PC_uns[5]~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data|PC_uns[5]~19_combout\ = (\data|PC_uns\(5) & (!\data|PC_uns[4]~18\)) # (!\data|PC_uns\(5) & ((\data|PC_uns[4]~18\) # (GND)))
-- \data|PC_uns[5]~20\ = CARRY((!\data|PC_uns[4]~18\) # (!\data|PC_uns\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \data|PC_uns\(5),
	datad => VCC,
	cin => \data|PC_uns[4]~18\,
	combout => \data|PC_uns[5]~19_combout\,
	cout => \data|PC_uns[5]~20\);

-- Location: LCCOMB_X29_Y18_N22
\data|PC_uns[6]~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data|PC_uns[6]~21_combout\ = (\data|PC_uns\(6) & (\data|PC_uns[5]~20\ $ (GND))) # (!\data|PC_uns\(6) & (!\data|PC_uns[5]~20\ & VCC))
-- \data|PC_uns[6]~22\ = CARRY((\data|PC_uns\(6) & !\data|PC_uns[5]~20\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \data|PC_uns\(6),
	datad => VCC,
	cin => \data|PC_uns[5]~20\,
	combout => \data|PC_uns[6]~21_combout\,
	cout => \data|PC_uns[6]~22\);

-- Location: FF_X29_Y18_N23
\data|PC_uns[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \data|PC_uns[6]~21_combout\,
	asdata => \data|Mux9~3_combout\,
	clrn => \Reset~inputclkctrl_outclk\,
	sload => \control|PC_Load~combout\,
	ena => \data|PC_uns[1]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data|PC_uns\(6));

-- Location: LCCOMB_X29_Y18_N24
\data|PC_uns[7]~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data|PC_uns[7]~23_combout\ = \data|PC_uns[6]~22\ $ (\data|PC_uns\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \data|PC_uns\(7),
	cin => \data|PC_uns[6]~22\,
	combout => \data|PC_uns[7]~23_combout\);

-- Location: FF_X29_Y18_N25
\data|PC_uns[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \data|PC_uns[7]~23_combout\,
	asdata => \data|Mux8~3_combout\,
	clrn => \Reset~inputclkctrl_outclk\,
	sload => \control|PC_Load~combout\,
	ena => \data|PC_uns[1]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data|PC_uns\(7));

-- Location: LCCOMB_X31_Y18_N6
\data|Mux0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data|Mux0~0_combout\ = (\control|Bus1_Sel\(0) & (\data|A\(7))) # (!\control|Bus1_Sel\(0) & ((\data|PC_uns\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \control|Bus1_Sel\(0),
	datac => \data|A\(7),
	datad => \data|PC_uns\(7),
	combout => \data|Mux0~0_combout\);

-- Location: IOIBUF_X30_Y29_N15
\from_memory[7]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_from_memory(7),
	o => \from_memory[7]~input_o\);

-- Location: LCCOMB_X31_Y18_N28
\data|Mux8~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data|Mux8~2_combout\ = (\control|Bus2_Sel\(1) & (((\from_memory[7]~input_o\ & !\control|Bus2_Sel\(0))))) # (!\control|Bus2_Sel\(1) & (\data|Mux0~0_combout\ & ((\control|Bus2_Sel\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data|Mux0~0_combout\,
	datab => \from_memory[7]~input_o\,
	datac => \control|Bus2_Sel\(1),
	datad => \control|Bus2_Sel\(0),
	combout => \data|Mux8~2_combout\);

-- Location: FF_X33_Y18_N5
\control|current_state.S_LDB_IMM_6\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \control|current_state.S_LDB_IMM_5~q\,
	clrn => \Reset~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \control|current_state.S_LDB_IMM_6~q\);

-- Location: LCCOMB_X27_Y18_N16
\control|next_state~35\ : cycloneiii_lcell_comb
-- Equation(s):
-- \control|next_state~35_combout\ = (\control|current_state.S_DECODE_3~q\ & (\data|IR\(0) & \control|Equal3~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control|current_state.S_DECODE_3~q\,
	datab => \data|IR\(0),
	datac => \control|Equal3~1_combout\,
	combout => \control|next_state~35_combout\);

-- Location: FF_X27_Y18_N17
\control|current_state.S_LDB_DIR_4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \control|next_state~35_combout\,
	clrn => \Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \control|current_state.S_LDB_DIR_4~q\);

-- Location: LCCOMB_X33_Y18_N20
\control|current_state.S_LDB_DIR_5~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \control|current_state.S_LDB_DIR_5~feeder_combout\ = \control|current_state.S_LDB_DIR_4~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \control|current_state.S_LDB_DIR_4~q\,
	combout => \control|current_state.S_LDB_DIR_5~feeder_combout\);

-- Location: FF_X33_Y18_N21
\control|current_state.S_LDB_DIR_5\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \control|current_state.S_LDB_DIR_5~feeder_combout\,
	clrn => \Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \control|current_state.S_LDB_DIR_5~q\);

-- Location: LCCOMB_X33_Y18_N30
\control|current_state.S_LDB_DIR_6~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \control|current_state.S_LDB_DIR_6~feeder_combout\ = \control|current_state.S_LDB_DIR_5~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \control|current_state.S_LDB_DIR_5~q\,
	combout => \control|current_state.S_LDB_DIR_6~feeder_combout\);

-- Location: FF_X33_Y18_N31
\control|current_state.S_LDB_DIR_6\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \control|current_state.S_LDB_DIR_6~feeder_combout\,
	clrn => \Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \control|current_state.S_LDB_DIR_6~q\);

-- Location: FF_X33_Y18_N19
\control|current_state.S_LDB_DIR_7\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \control|current_state.S_LDB_DIR_6~q\,
	clrn => \Reset~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \control|current_state.S_LDB_DIR_7~q\);

-- Location: FF_X33_Y18_N27
\control|current_state.S_LDB_DIR_8\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \control|current_state.S_LDB_DIR_7~q\,
	clrn => \Reset~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \control|current_state.S_LDB_DIR_8~q\);

-- Location: LCCOMB_X33_Y18_N26
\control|B_Load~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \control|B_Load~0_combout\ = (!\control|current_state.S_LDB_IMM_6~q\ & !\control|current_state.S_LDB_DIR_8~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \control|current_state.S_LDB_IMM_6~q\,
	datac => \control|current_state.S_LDB_DIR_8~q\,
	combout => \control|B_Load~0_combout\);

-- Location: LCCOMB_X31_Y18_N22
\control|B_Load\ : cycloneiii_lcell_comb
-- Equation(s):
-- \control|B_Load~combout\ = (GLOBAL(\control|Selector0~0clkctrl_outclk\) & (!\control|B_Load~0_combout\)) # (!GLOBAL(\control|Selector0~0clkctrl_outclk\) & ((\control|B_Load~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control|B_Load~0_combout\,
	datac => \control|B_Load~combout\,
	datad => \control|Selector0~0clkctrl_outclk\,
	combout => \control|B_Load~combout\);

-- Location: FF_X30_Y18_N29
\data|B[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \data|Mux8~3_combout\,
	clrn => \Reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \control|B_Load~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data|B\(7));

-- Location: FF_X30_Y18_N31
\data|A[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \data|Mux9~3_combout\,
	clrn => \Reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \control|A_Load~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data|A\(6));

-- Location: LCCOMB_X30_Y18_N30
\data|Mux1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data|Mux1~0_combout\ = (\control|Bus1_Sel\(0) & ((\data|A\(6)))) # (!\control|Bus1_Sel\(0) & (\data|PC_uns\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \data|PC_uns\(6),
	datac => \data|A\(6),
	datad => \control|Bus1_Sel\(0),
	combout => \data|Mux1~0_combout\);

-- Location: FF_X30_Y18_N27
\data|B[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \data|Mux9~3_combout\,
	clrn => \Reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \control|B_Load~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data|B\(6));

-- Location: FF_X30_Y18_N25
\data|B[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \data|Mux10~1_combout\,
	clrn => \Reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \control|B_Load~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data|B\(5));

-- Location: FF_X30_Y18_N23
\data|B[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \data|Mux11~1_combout\,
	clrn => \Reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \control|B_Load~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data|B\(4));

-- Location: FF_X30_Y18_N1
\data|A[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \data|Mux11~1_combout\,
	clrn => \Reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \control|A_Load~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data|A\(4));

-- Location: LCCOMB_X30_Y18_N0
\data|Mux3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data|Mux3~0_combout\ = (\control|Bus1_Sel\(0) & ((\data|A\(4)))) # (!\control|Bus1_Sel\(0) & (\data|PC_uns\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \data|PC_uns\(4),
	datac => \data|A\(4),
	datad => \control|Bus1_Sel\(0),
	combout => \data|Mux3~0_combout\);

-- Location: FF_X30_Y18_N21
\data|B[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \data|Mux12~1_combout\,
	clrn => \Reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \control|B_Load~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data|B\(3));

-- Location: FF_X30_Y18_N19
\data|B[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \data|Mux13~1_combout\,
	clrn => \Reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \control|B_Load~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data|B\(2));

-- Location: FF_X30_Y18_N17
\data|B[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \data|Mux14~1_combout\,
	clrn => \Reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \control|B_Load~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data|B\(1));

-- Location: FF_X30_Y18_N15
\data|B[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \data|Mux15~1_combout\,
	clrn => \Reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \control|B_Load~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data|B\(0));

-- Location: LCCOMB_X30_Y18_N14
\data|U0|Add0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data|U0|Add0~0_combout\ = (\data|Mux7~0_combout\ & (\data|B\(0) $ (VCC))) # (!\data|Mux7~0_combout\ & (\data|B\(0) & VCC))
-- \data|U0|Add0~1\ = CARRY((\data|Mux7~0_combout\ & \data|B\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data|Mux7~0_combout\,
	datab => \data|B\(0),
	datad => VCC,
	combout => \data|U0|Add0~0_combout\,
	cout => \data|U0|Add0~1\);

-- Location: LCCOMB_X30_Y18_N16
\data|U0|Add0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data|U0|Add0~2_combout\ = (\data|Mux6~0_combout\ & ((\data|B\(1) & (\data|U0|Add0~1\ & VCC)) # (!\data|B\(1) & (!\data|U0|Add0~1\)))) # (!\data|Mux6~0_combout\ & ((\data|B\(1) & (!\data|U0|Add0~1\)) # (!\data|B\(1) & ((\data|U0|Add0~1\) # (GND)))))
-- \data|U0|Add0~3\ = CARRY((\data|Mux6~0_combout\ & (!\data|B\(1) & !\data|U0|Add0~1\)) # (!\data|Mux6~0_combout\ & ((!\data|U0|Add0~1\) # (!\data|B\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \data|Mux6~0_combout\,
	datab => \data|B\(1),
	datad => VCC,
	cin => \data|U0|Add0~1\,
	combout => \data|U0|Add0~2_combout\,
	cout => \data|U0|Add0~3\);

-- Location: LCCOMB_X30_Y18_N18
\data|U0|Add0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data|U0|Add0~4_combout\ = ((\data|B\(2) $ (\data|Mux5~0_combout\ $ (!\data|U0|Add0~3\)))) # (GND)
-- \data|U0|Add0~5\ = CARRY((\data|B\(2) & ((\data|Mux5~0_combout\) # (!\data|U0|Add0~3\))) # (!\data|B\(2) & (\data|Mux5~0_combout\ & !\data|U0|Add0~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \data|B\(2),
	datab => \data|Mux5~0_combout\,
	datad => VCC,
	cin => \data|U0|Add0~3\,
	combout => \data|U0|Add0~4_combout\,
	cout => \data|U0|Add0~5\);

-- Location: LCCOMB_X30_Y18_N20
\data|U0|Add0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data|U0|Add0~6_combout\ = (\data|Mux4~0_combout\ & ((\data|B\(3) & (\data|U0|Add0~5\ & VCC)) # (!\data|B\(3) & (!\data|U0|Add0~5\)))) # (!\data|Mux4~0_combout\ & ((\data|B\(3) & (!\data|U0|Add0~5\)) # (!\data|B\(3) & ((\data|U0|Add0~5\) # (GND)))))
-- \data|U0|Add0~7\ = CARRY((\data|Mux4~0_combout\ & (!\data|B\(3) & !\data|U0|Add0~5\)) # (!\data|Mux4~0_combout\ & ((!\data|U0|Add0~5\) # (!\data|B\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \data|Mux4~0_combout\,
	datab => \data|B\(3),
	datad => VCC,
	cin => \data|U0|Add0~5\,
	combout => \data|U0|Add0~6_combout\,
	cout => \data|U0|Add0~7\);

-- Location: LCCOMB_X30_Y18_N22
\data|U0|Add0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data|U0|Add0~8_combout\ = ((\data|B\(4) $ (\data|Mux3~0_combout\ $ (!\data|U0|Add0~7\)))) # (GND)
-- \data|U0|Add0~9\ = CARRY((\data|B\(4) & ((\data|Mux3~0_combout\) # (!\data|U0|Add0~7\))) # (!\data|B\(4) & (\data|Mux3~0_combout\ & !\data|U0|Add0~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \data|B\(4),
	datab => \data|Mux3~0_combout\,
	datad => VCC,
	cin => \data|U0|Add0~7\,
	combout => \data|U0|Add0~8_combout\,
	cout => \data|U0|Add0~9\);

-- Location: LCCOMB_X30_Y18_N24
\data|U0|Add0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data|U0|Add0~10_combout\ = (\data|B\(5) & ((\data|Mux2~0_combout\ & (\data|U0|Add0~9\ & VCC)) # (!\data|Mux2~0_combout\ & (!\data|U0|Add0~9\)))) # (!\data|B\(5) & ((\data|Mux2~0_combout\ & (!\data|U0|Add0~9\)) # (!\data|Mux2~0_combout\ & 
-- ((\data|U0|Add0~9\) # (GND)))))
-- \data|U0|Add0~11\ = CARRY((\data|B\(5) & (!\data|Mux2~0_combout\ & !\data|U0|Add0~9\)) # (!\data|B\(5) & ((!\data|U0|Add0~9\) # (!\data|Mux2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \data|B\(5),
	datab => \data|Mux2~0_combout\,
	datad => VCC,
	cin => \data|U0|Add0~9\,
	combout => \data|U0|Add0~10_combout\,
	cout => \data|U0|Add0~11\);

-- Location: LCCOMB_X30_Y18_N26
\data|U0|Add0~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data|U0|Add0~12_combout\ = ((\data|Mux1~0_combout\ $ (\data|B\(6) $ (!\data|U0|Add0~11\)))) # (GND)
-- \data|U0|Add0~13\ = CARRY((\data|Mux1~0_combout\ & ((\data|B\(6)) # (!\data|U0|Add0~11\))) # (!\data|Mux1~0_combout\ & (\data|B\(6) & !\data|U0|Add0~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \data|Mux1~0_combout\,
	datab => \data|B\(6),
	datad => VCC,
	cin => \data|U0|Add0~11\,
	combout => \data|U0|Add0~12_combout\,
	cout => \data|U0|Add0~13\);

-- Location: LCCOMB_X30_Y18_N28
\data|U0|Add0~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data|U0|Add0~14_combout\ = \data|B\(7) $ (\data|U0|Add0~13\ $ (\data|Mux0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \data|B\(7),
	datad => \data|Mux0~0_combout\,
	cin => \data|U0|Add0~13\,
	combout => \data|U0|Add0~14_combout\);

-- Location: LCCOMB_X28_Y18_N14
\data|Mux8~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data|Mux8~3_combout\ = (\data|Mux8~2_combout\) # ((!\control|Bus2_Sel\(1) & (!\control|Bus2_Sel\(0) & \data|U0|Add0~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control|Bus2_Sel\(1),
	datab => \control|Bus2_Sel\(0),
	datac => \data|Mux8~2_combout\,
	datad => \data|U0|Add0~14_combout\,
	combout => \data|Mux8~3_combout\);

-- Location: FF_X28_Y18_N1
\data|IR[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	asdata => \data|Mux8~3_combout\,
	clrn => \Reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \control|IR_Load~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data|IR\(7));

-- Location: LCCOMB_X28_Y18_N2
\control|Equal3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \control|Equal3~0_combout\ = (\data|IR\(3) & (\data|IR\(7) & (!\data|IR\(5) & !\data|IR\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data|IR\(3),
	datab => \data|IR\(7),
	datac => \data|IR\(5),
	datad => \data|IR\(6),
	combout => \control|Equal3~0_combout\);

-- Location: LCCOMB_X28_Y18_N10
\control|Equal3~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \control|Equal3~1_combout\ = (!\data|IR\(1) & (!\data|IR\(2) & (!\data|IR\(4) & \control|Equal3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data|IR\(1),
	datab => \data|IR\(2),
	datac => \data|IR\(4),
	datad => \control|Equal3~0_combout\,
	combout => \control|Equal3~1_combout\);

-- Location: LCCOMB_X27_Y18_N18
\control|next_state~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \control|next_state~34_combout\ = (\control|current_state.S_DECODE_3~q\ & (\control|Equal3~1_combout\ & !\data|IR\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control|current_state.S_DECODE_3~q\,
	datab => \control|Equal3~1_combout\,
	datac => \data|IR\(0),
	combout => \control|next_state~34_combout\);

-- Location: FF_X27_Y18_N19
\control|current_state.S_LDB_IMM_4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \control|next_state~34_combout\,
	clrn => \Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \control|current_state.S_LDB_IMM_4~q\);

-- Location: LCCOMB_X33_Y18_N12
\control|current_state.S_LDB_IMM_5~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \control|current_state.S_LDB_IMM_5~feeder_combout\ = \control|current_state.S_LDB_IMM_4~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \control|current_state.S_LDB_IMM_4~q\,
	combout => \control|current_state.S_LDB_IMM_5~feeder_combout\);

-- Location: FF_X33_Y18_N13
\control|current_state.S_LDB_IMM_5\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \control|current_state.S_LDB_IMM_5~feeder_combout\,
	clrn => \Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \control|current_state.S_LDB_IMM_5~q\);

-- Location: LCCOMB_X26_Y18_N26
\control|next_state~33\ : cycloneiii_lcell_comb
-- Equation(s):
-- \control|next_state~33_combout\ = (!\data|IR\(4) & (\control|current_state.S_DECODE_3~q\ & (\data|IR\(0) & \control|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data|IR\(4),
	datab => \control|current_state.S_DECODE_3~q\,
	datac => \data|IR\(0),
	datad => \control|Equal0~1_combout\,
	combout => \control|next_state~33_combout\);

-- Location: FF_X26_Y18_N27
\control|current_state.S_LDA_DIR_4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \control|next_state~33_combout\,
	clrn => \Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \control|current_state.S_LDA_DIR_4~q\);

-- Location: LCCOMB_X33_Y18_N0
\control|current_state.S_LDA_DIR_5~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \control|current_state.S_LDA_DIR_5~feeder_combout\ = \control|current_state.S_LDA_DIR_4~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \control|current_state.S_LDA_DIR_4~q\,
	combout => \control|current_state.S_LDA_DIR_5~feeder_combout\);

-- Location: FF_X33_Y18_N1
\control|current_state.S_LDA_DIR_5\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \control|current_state.S_LDA_DIR_5~feeder_combout\,
	clrn => \Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \control|current_state.S_LDA_DIR_5~q\);

-- Location: LCCOMB_X33_Y18_N16
\control|Selector5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \control|Selector5~0_combout\ = (!\control|current_state.S_LDB_IMM_5~q\ & (!\control|current_state.S_LDB_DIR_5~q\ & (!\control|current_state.S_LDA_IMM_5~q\ & !\control|current_state.S_LDA_DIR_5~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control|current_state.S_LDB_IMM_5~q\,
	datab => \control|current_state.S_LDB_DIR_5~q\,
	datac => \control|current_state.S_LDA_IMM_5~q\,
	datad => \control|current_state.S_LDA_DIR_5~q\,
	combout => \control|Selector5~0_combout\);

-- Location: LCCOMB_X27_Y18_N30
\control|Selector11~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \control|Selector11~1_combout\ = (\control|current_state.S_STB_DIR_5~q\) # ((\control|current_state.S_FETCH_1~q\) # ((\control|current_state.S_STA_DIR_5~q\) # (!\control|Selector5~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control|current_state.S_STB_DIR_5~q\,
	datab => \control|current_state.S_FETCH_1~q\,
	datac => \control|current_state.S_STA_DIR_5~q\,
	datad => \control|Selector5~0_combout\,
	combout => \control|Selector11~1_combout\);

-- Location: LCCOMB_X27_Y18_N20
\control|Selector11~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \control|Selector11~2_combout\ = (\control|Selector11~1_combout\) # ((\control|Selector11~0_combout\ & (!\control|OUTPUT_LOGIC~0_combout\ & \control|next_state~39_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control|Selector11~0_combout\,
	datab => \control|OUTPUT_LOGIC~0_combout\,
	datac => \control|Selector11~1_combout\,
	datad => \control|next_state~39_combout\,
	combout => \control|Selector11~2_combout\);

-- Location: LCCOMB_X27_Y18_N24
\control|PC_Inc\ : cycloneiii_lcell_comb
-- Equation(s):
-- \control|PC_Inc~combout\ = (GLOBAL(\control|Selector0~0clkctrl_outclk\) & (\control|Selector11~2_combout\)) # (!GLOBAL(\control|Selector0~0clkctrl_outclk\) & ((\control|PC_Inc~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control|Selector11~2_combout\,
	datab => \control|PC_Inc~combout\,
	datad => \control|Selector0~0clkctrl_outclk\,
	combout => \control|PC_Inc~combout\);

-- Location: LCCOMB_X28_Y18_N30
\data|PC_uns[1]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data|PC_uns[1]~10_combout\ = (\control|PC_Inc~combout\) # (\control|PC_Load~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \control|PC_Inc~combout\,
	datad => \control|PC_Load~combout\,
	combout => \data|PC_uns[1]~10_combout\);

-- Location: FF_X29_Y18_N19
\data|PC_uns[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \data|PC_uns[4]~17_combout\,
	asdata => \data|Mux11~1_combout\,
	clrn => \Reset~inputclkctrl_outclk\,
	sload => \control|PC_Load~combout\,
	ena => \data|PC_uns[1]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data|PC_uns\(4));

-- Location: FF_X29_Y18_N21
\data|PC_uns[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \data|PC_uns[5]~19_combout\,
	asdata => \data|Mux10~1_combout\,
	clrn => \Reset~inputclkctrl_outclk\,
	sload => \control|PC_Load~combout\,
	ena => \data|PC_uns[1]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data|PC_uns\(5));

-- Location: LCCOMB_X31_Y18_N16
\data|Mux2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data|Mux2~0_combout\ = (\control|Bus1_Sel\(0) & (\data|A\(5))) # (!\control|Bus1_Sel\(0) & ((\data|PC_uns\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \control|Bus1_Sel\(0),
	datac => \data|A\(5),
	datad => \data|PC_uns\(5),
	combout => \data|Mux2~0_combout\);

-- Location: IOIBUF_X41_Y21_N8
\from_memory[5]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_from_memory(5),
	o => \from_memory[5]~input_o\);

-- Location: LCCOMB_X30_Y18_N8
\data|Mux10~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data|Mux10~0_combout\ = (!\control|Bus2_Sel\(0) & ((\control|Bus2_Sel\(1) & (\from_memory[5]~input_o\)) # (!\control|Bus2_Sel\(1) & ((\data|U0|Add0~10_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \from_memory[5]~input_o\,
	datab => \control|Bus2_Sel\(0),
	datac => \control|Bus2_Sel\(1),
	datad => \data|U0|Add0~10_combout\,
	combout => \data|Mux10~0_combout\);

-- Location: LCCOMB_X28_Y18_N4
\data|Mux10~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data|Mux10~1_combout\ = (\data|Mux10~0_combout\) # ((!\control|Bus2_Sel\(1) & (\data|Mux2~0_combout\ & \control|Bus2_Sel\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control|Bus2_Sel\(1),
	datab => \data|Mux2~0_combout\,
	datac => \control|Bus2_Sel\(0),
	datad => \data|Mux10~0_combout\,
	combout => \data|Mux10~1_combout\);

-- Location: FF_X28_Y18_N27
\data|IR[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	asdata => \data|Mux10~1_combout\,
	clrn => \Reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \control|IR_Load~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data|IR\(5));

-- Location: LCCOMB_X28_Y18_N0
\control|Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \control|Equal0~0_combout\ = (!\data|IR\(3) & (!\data|IR\(5) & (\data|IR\(7) & !\data|IR\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data|IR\(3),
	datab => \data|IR\(5),
	datac => \data|IR\(7),
	datad => \data|IR\(6),
	combout => \control|Equal0~0_combout\);

-- Location: LCCOMB_X28_Y18_N18
\control|next_state~27\ : cycloneiii_lcell_comb
-- Equation(s):
-- \control|next_state~27_combout\ = (!\control|Equal3~1_combout\ & ((\data|IR\(1)) # ((\data|IR\(0)) # (!\control|Equal6~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data|IR\(1),
	datab => \control|Equal6~1_combout\,
	datac => \data|IR\(0),
	datad => \control|Equal3~1_combout\,
	combout => \control|next_state~27_combout\);

-- Location: LCCOMB_X28_Y18_N24
\control|next_state~39\ : cycloneiii_lcell_comb
-- Equation(s):
-- \control|next_state~39_combout\ = (\control|next_state~27_combout\ & (((!\data|IR\(1)) # (!\data|IR\(2))) # (!\control|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control|Equal0~0_combout\,
	datab => \data|IR\(2),
	datac => \data|IR\(1),
	datad => \control|next_state~27_combout\,
	combout => \control|next_state~39_combout\);

-- Location: LCCOMB_X31_Y18_N20
\control|Selector1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \control|Selector1~0_combout\ = (\control|current_state.S_DECODE_3~q\ & ((!\control|Equal7~1_combout\) # (!\data|CCR_Result\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control|current_state.S_DECODE_3~q\,
	datac => \data|CCR_Result\(2),
	datad => \control|Equal7~1_combout\,
	combout => \control|Selector1~0_combout\);

-- Location: LCCOMB_X31_Y18_N30
\control|Selector1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \control|Selector1~1_combout\ = ((!\control|OUTPUT_LOGIC~0_combout\ & (\control|next_state~39_combout\ & \control|Selector1~0_combout\))) # (!\control|Bus1_Sel~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control|OUTPUT_LOGIC~0_combout\,
	datab => \control|Bus1_Sel~0_combout\,
	datac => \control|next_state~39_combout\,
	datad => \control|Selector1~0_combout\,
	combout => \control|Selector1~1_combout\);

-- Location: LCCOMB_X31_Y18_N24
\control|Bus1_Sel[0]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \control|Bus1_Sel\(0) = (GLOBAL(\control|Selector0~0clkctrl_outclk\) & ((\control|Selector1~1_combout\))) # (!GLOBAL(\control|Selector0~0clkctrl_outclk\) & (\control|Bus1_Sel\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \control|Bus1_Sel\(0),
	datac => \control|Selector0~0clkctrl_outclk\,
	datad => \control|Selector1~1_combout\,
	combout => \control|Bus1_Sel\(0));

-- Location: LCCOMB_X30_Y18_N4
\data|Mux5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data|Mux5~0_combout\ = (\control|Bus1_Sel\(0) & ((\data|A\(2)))) # (!\control|Bus1_Sel\(0) & (\data|PC_uns\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data|PC_uns\(2),
	datac => \data|A\(2),
	datad => \control|Bus1_Sel\(0),
	combout => \data|Mux5~0_combout\);

-- Location: IOIBUF_X41_Y14_N8
\from_memory[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_from_memory(2),
	o => \from_memory[2]~input_o\);

-- Location: LCCOMB_X29_Y18_N30
\data|Mux13~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data|Mux13~0_combout\ = (!\control|Bus2_Sel\(0) & ((\control|Bus2_Sel\(1) & (\from_memory[2]~input_o\)) # (!\control|Bus2_Sel\(1) & ((\data|U0|Add0~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control|Bus2_Sel\(0),
	datab => \from_memory[2]~input_o\,
	datac => \control|Bus2_Sel\(1),
	datad => \data|U0|Add0~4_combout\,
	combout => \data|Mux13~0_combout\);

-- Location: LCCOMB_X29_Y18_N26
\data|Mux13~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data|Mux13~1_combout\ = (\data|Mux13~0_combout\) # ((\data|Mux5~0_combout\ & (!\control|Bus2_Sel\(1) & \control|Bus2_Sel\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data|Mux5~0_combout\,
	datab => \control|Bus2_Sel\(1),
	datac => \data|Mux13~0_combout\,
	datad => \control|Bus2_Sel\(0),
	combout => \data|Mux13~1_combout\);

-- Location: FF_X29_Y18_N15
\data|PC_uns[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \data|PC_uns[2]~13_combout\,
	asdata => \data|Mux13~1_combout\,
	clrn => \Reset~inputclkctrl_outclk\,
	sload => \control|PC_Load~combout\,
	ena => \data|PC_uns[1]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data|PC_uns\(2));

-- Location: FF_X29_Y18_N17
\data|PC_uns[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \data|PC_uns[3]~15_combout\,
	asdata => \data|Mux12~1_combout\,
	clrn => \Reset~inputclkctrl_outclk\,
	sload => \control|PC_Load~combout\,
	ena => \data|PC_uns[1]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data|PC_uns\(3));

-- Location: FF_X30_Y18_N7
\data|A[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \data|Mux12~1_combout\,
	clrn => \Reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \control|A_Load~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data|A\(3));

-- Location: LCCOMB_X30_Y18_N6
\data|Mux4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data|Mux4~0_combout\ = (\control|Bus1_Sel\(0) & ((\data|A\(3)))) # (!\control|Bus1_Sel\(0) & (\data|PC_uns\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data|PC_uns\(3),
	datac => \data|A\(3),
	datad => \control|Bus1_Sel\(0),
	combout => \data|Mux4~0_combout\);

-- Location: IOIBUF_X41_Y19_N8
\from_memory[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_from_memory(3),
	o => \from_memory[3]~input_o\);

-- Location: LCCOMB_X29_Y18_N2
\data|Mux12~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data|Mux12~0_combout\ = (!\control|Bus2_Sel\(0) & ((\control|Bus2_Sel\(1) & (\from_memory[3]~input_o\)) # (!\control|Bus2_Sel\(1) & ((\data|U0|Add0~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control|Bus2_Sel\(0),
	datab => \from_memory[3]~input_o\,
	datac => \data|U0|Add0~6_combout\,
	datad => \control|Bus2_Sel\(1),
	combout => \data|Mux12~0_combout\);

-- Location: LCCOMB_X29_Y18_N6
\data|Mux12~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data|Mux12~1_combout\ = (\data|Mux12~0_combout\) # ((\data|Mux4~0_combout\ & (!\control|Bus2_Sel\(1) & \control|Bus2_Sel\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data|Mux4~0_combout\,
	datab => \control|Bus2_Sel\(1),
	datac => \control|Bus2_Sel\(0),
	datad => \data|Mux12~0_combout\,
	combout => \data|Mux12~1_combout\);

-- Location: FF_X29_Y18_N7
\data|IR[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \data|Mux12~1_combout\,
	clrn => \Reset~inputclkctrl_outclk\,
	ena => \control|IR_Load~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data|IR\(3));

-- Location: LCCOMB_X28_Y18_N12
\control|Equal6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \control|Equal6~0_combout\ = (!\data|IR\(3) & (!\data|IR\(2) & (!\data|IR\(4) & !\data|IR\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data|IR\(3),
	datab => \data|IR\(2),
	datac => \data|IR\(4),
	datad => \data|IR\(7),
	combout => \control|Equal6~0_combout\);

-- Location: LCCOMB_X32_Y18_N24
\control|Equal8~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \control|Equal8~0_combout\ = (!\data|IR\(5) & (\data|IR\(6) & (\data|IR\(1) & !\data|IR\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data|IR\(5),
	datab => \data|IR\(6),
	datac => \data|IR\(1),
	datad => \data|IR\(0),
	combout => \control|Equal8~0_combout\);

-- Location: LCCOMB_X28_Y18_N6
\control|next_state~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \control|next_state~28_combout\ = (\control|next_state~39_combout\ & (!\control|Equal7~1_combout\ & ((!\control|Equal8~0_combout\) # (!\control|Equal6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control|Equal6~0_combout\,
	datab => \control|next_state~39_combout\,
	datac => \control|Equal8~0_combout\,
	datad => \control|Equal7~1_combout\,
	combout => \control|next_state~28_combout\);

-- Location: LCCOMB_X27_Y18_N0
\control|Selector0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \control|Selector0~0_combout\ = (!\control|next_state~28_combout\) # (!\control|current_state.S_DECODE_3~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \control|current_state.S_DECODE_3~q\,
	datad => \control|next_state~28_combout\,
	combout => \control|Selector0~0_combout\);

-- Location: CLKCTRL_G9
\control|Selector0~0clkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \control|Selector0~0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \control|Selector0~0clkctrl_outclk\);

-- Location: FF_X33_Y18_N7
\control|current_state.S_LDA_IMM_6\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \control|current_state.S_LDA_IMM_5~q\,
	clrn => \Reset~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \control|current_state.S_LDA_IMM_6~q\);

-- Location: LCCOMB_X33_Y18_N8
\control|current_state.S_LDA_DIR_6~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \control|current_state.S_LDA_DIR_6~feeder_combout\ = \control|current_state.S_LDA_DIR_5~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \control|current_state.S_LDA_DIR_5~q\,
	combout => \control|current_state.S_LDA_DIR_6~feeder_combout\);

-- Location: FF_X33_Y18_N9
\control|current_state.S_LDA_DIR_6\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \control|current_state.S_LDA_DIR_6~feeder_combout\,
	clrn => \Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \control|current_state.S_LDA_DIR_6~q\);

-- Location: FF_X33_Y18_N29
\control|current_state.S_LDA_DIR_7\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \control|current_state.S_LDA_DIR_6~q\,
	clrn => \Reset~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \control|current_state.S_LDA_DIR_7~q\);

-- Location: FF_X33_Y18_N11
\control|current_state.S_LDA_DIR_8\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \control|current_state.S_LDA_DIR_7~q\,
	clrn => \Reset~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \control|current_state.S_LDA_DIR_8~q\);

-- Location: LCCOMB_X33_Y18_N10
\control|WideOr11~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \control|WideOr11~0_combout\ = (!\control|current_state.S_LDA_IMM_6~q\ & !\control|current_state.S_LDA_DIR_8~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \control|current_state.S_LDA_IMM_6~q\,
	datac => \control|current_state.S_LDA_DIR_8~q\,
	combout => \control|WideOr11~0_combout\);

-- Location: LCCOMB_X31_Y18_N26
\control|Selector9~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \control|Selector9~0_combout\ = ((!\control|OUTPUT_LOGIC~0_combout\ & (\control|next_state~39_combout\ & \control|Selector1~0_combout\))) # (!\control|WideOr11~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control|OUTPUT_LOGIC~0_combout\,
	datab => \control|WideOr11~0_combout\,
	datac => \control|next_state~39_combout\,
	datad => \control|Selector1~0_combout\,
	combout => \control|Selector9~0_combout\);

-- Location: LCCOMB_X31_Y18_N2
\control|A_Load\ : cycloneiii_lcell_comb
-- Equation(s):
-- \control|A_Load~combout\ = (GLOBAL(\control|Selector0~0clkctrl_outclk\) & ((\control|Selector9~0_combout\))) # (!GLOBAL(\control|Selector0~0clkctrl_outclk\) & (\control|A_Load~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \control|A_Load~combout\,
	datac => \control|Selector0~0clkctrl_outclk\,
	datad => \control|Selector9~0_combout\,
	combout => \control|A_Load~combout\);

-- Location: FF_X30_Y18_N13
\data|A[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \data|Mux15~1_combout\,
	clrn => \Reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \control|A_Load~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data|A\(0));

-- Location: LCCOMB_X30_Y18_N12
\data|Mux7~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data|Mux7~0_combout\ = (\control|Bus1_Sel\(0) & ((\data|A\(0)))) # (!\control|Bus1_Sel\(0) & (\data|PC_uns\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data|PC_uns\(0),
	datac => \data|A\(0),
	datad => \control|Bus1_Sel\(0),
	combout => \data|Mux7~0_combout\);

-- Location: IOIBUF_X41_Y20_N8
\from_memory[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_from_memory(0),
	o => \from_memory[0]~input_o\);

-- Location: LCCOMB_X32_Y18_N12
\data|Mux15~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data|Mux15~0_combout\ = (!\control|Bus2_Sel\(0) & ((\control|Bus2_Sel\(1) & (\from_memory[0]~input_o\)) # (!\control|Bus2_Sel\(1) & ((\data|U0|Add0~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control|Bus2_Sel\(0),
	datab => \control|Bus2_Sel\(1),
	datac => \from_memory[0]~input_o\,
	datad => \data|U0|Add0~0_combout\,
	combout => \data|Mux15~0_combout\);

-- Location: LCCOMB_X32_Y18_N0
\data|Mux15~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data|Mux15~1_combout\ = (\data|Mux15~0_combout\) # ((\control|Bus2_Sel\(0) & (!\control|Bus2_Sel\(1) & \data|Mux7~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control|Bus2_Sel\(0),
	datab => \control|Bus2_Sel\(1),
	datac => \data|Mux7~0_combout\,
	datad => \data|Mux15~0_combout\,
	combout => \data|Mux15~1_combout\);

-- Location: FF_X29_Y18_N11
\data|PC_uns[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \data|PC_uns[0]~8_combout\,
	asdata => \data|Mux15~1_combout\,
	clrn => \Reset~inputclkctrl_outclk\,
	sload => \control|PC_Load~combout\,
	ena => \data|PC_uns[1]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data|PC_uns\(0));

-- Location: FF_X29_Y18_N13
\data|PC_uns[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \data|PC_uns[1]~11_combout\,
	asdata => \data|Mux14~1_combout\,
	clrn => \Reset~inputclkctrl_outclk\,
	sload => \control|PC_Load~combout\,
	ena => \data|PC_uns[1]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data|PC_uns\(1));

-- Location: FF_X30_Y18_N11
\data|A[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \data|Mux14~1_combout\,
	clrn => \Reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \control|A_Load~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data|A\(1));

-- Location: LCCOMB_X30_Y18_N10
\data|Mux6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data|Mux6~0_combout\ = (\control|Bus1_Sel\(0) & ((\data|A\(1)))) # (!\control|Bus1_Sel\(0) & (\data|PC_uns\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data|PC_uns\(1),
	datac => \data|A\(1),
	datad => \control|Bus1_Sel\(0),
	combout => \data|Mux6~0_combout\);

-- Location: IOIBUF_X41_Y19_N1
\from_memory[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_from_memory(1),
	o => \from_memory[1]~input_o\);

-- Location: LCCOMB_X32_Y18_N28
\data|Mux14~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data|Mux14~0_combout\ = (!\control|Bus2_Sel\(0) & ((\control|Bus2_Sel\(1) & (\from_memory[1]~input_o\)) # (!\control|Bus2_Sel\(1) & ((\data|U0|Add0~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control|Bus2_Sel\(0),
	datab => \control|Bus2_Sel\(1),
	datac => \from_memory[1]~input_o\,
	datad => \data|U0|Add0~2_combout\,
	combout => \data|Mux14~0_combout\);

-- Location: LCCOMB_X32_Y18_N16
\data|Mux14~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data|Mux14~1_combout\ = (\data|Mux14~0_combout\) # ((\control|Bus2_Sel\(0) & (!\control|Bus2_Sel\(1) & \data|Mux6~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control|Bus2_Sel\(0),
	datab => \control|Bus2_Sel\(1),
	datac => \data|Mux6~0_combout\,
	datad => \data|Mux14~0_combout\,
	combout => \data|Mux14~1_combout\);

-- Location: LCCOMB_X32_Y18_N26
\data|IR[1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data|IR[1]~feeder_combout\ = \data|Mux14~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data|Mux14~1_combout\,
	combout => \data|IR[1]~feeder_combout\);

-- Location: FF_X32_Y18_N27
\data|IR[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \data|IR[1]~feeder_combout\,
	clrn => \Reset~inputclkctrl_outclk\,
	ena => \control|IR_Load~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data|IR\(1));

-- Location: LCCOMB_X28_Y18_N20
\control|Equal7~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \control|Equal7~0_combout\ = (\data|IR\(5) & !\data|IR\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data|IR\(5),
	datad => \data|IR\(6),
	combout => \control|Equal7~0_combout\);

-- Location: LCCOMB_X28_Y18_N16
\control|Equal7~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \control|Equal7~1_combout\ = (\data|IR\(1) & (\control|Equal7~0_combout\ & (\data|IR\(0) & \control|Equal6~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data|IR\(1),
	datab => \control|Equal7~0_combout\,
	datac => \data|IR\(0),
	datad => \control|Equal6~0_combout\,
	combout => \control|Equal7~1_combout\);

-- Location: LCCOMB_X32_Y18_N30
\control|comb~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \control|comb~5_combout\ = (\control|current_state.S_DECODE_3~q\ & (!\control|Equal7~1_combout\ & (\control|next_state~39_combout\ & !\control|next_state~28_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control|current_state.S_DECODE_3~q\,
	datab => \control|Equal7~1_combout\,
	datac => \control|next_state~39_combout\,
	datad => \control|next_state~28_combout\,
	combout => \control|comb~5_combout\);

-- Location: LCCOMB_X32_Y18_N4
\control|comb~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \control|comb~4_combout\ = ((!\control|next_state~28_combout\ & ((\control|Equal7~1_combout\) # (!\control|next_state~39_combout\)))) # (!\control|current_state.S_DECODE_3~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control|current_state.S_DECODE_3~q\,
	datab => \control|Equal7~1_combout\,
	datac => \control|next_state~39_combout\,
	datad => \control|next_state~28_combout\,
	combout => \control|comb~4_combout\);

-- Location: LCCOMB_X32_Y18_N2
\control|CCR_Load\ : cycloneiii_lcell_comb
-- Equation(s):
-- \control|CCR_Load~combout\ = (!\control|comb~4_combout\ & ((\control|comb~5_combout\) # (\control|CCR_Load~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control|comb~5_combout\,
	datac => \control|comb~4_combout\,
	datad => \control|CCR_Load~combout\,
	combout => \control|CCR_Load~combout\);

-- Location: LCCOMB_X30_Y18_N2
\data|CCR_Result[2]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data|CCR_Result[2]~0_combout\ = (!\data|U0|Add0~6_combout\ & (!\data|U0|Add0~10_combout\ & (!\data|U0|Add0~12_combout\ & !\data|U0|Add0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data|U0|Add0~6_combout\,
	datab => \data|U0|Add0~10_combout\,
	datac => \data|U0|Add0~12_combout\,
	datad => \data|U0|Add0~8_combout\,
	combout => \data|CCR_Result[2]~0_combout\);

-- Location: LCCOMB_X32_Y18_N18
\data|CCR_Result[2]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data|CCR_Result[2]~1_combout\ = (\data|U0|Add0~0_combout\) # ((\data|U0|Add0~2_combout\) # ((\data|U0|Add0~4_combout\) # (\data|U0|Add0~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data|U0|Add0~0_combout\,
	datab => \data|U0|Add0~2_combout\,
	datac => \data|U0|Add0~4_combout\,
	datad => \data|U0|Add0~14_combout\,
	combout => \data|CCR_Result[2]~1_combout\);

-- Location: LCCOMB_X32_Y18_N10
\data|CCR_Result[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data|CCR_Result[2]~2_combout\ = (\control|CCR_Load~combout\ & (\data|CCR_Result[2]~0_combout\ & ((!\data|CCR_Result[2]~1_combout\)))) # (!\control|CCR_Load~combout\ & (((\data|CCR_Result\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control|CCR_Load~combout\,
	datab => \data|CCR_Result[2]~0_combout\,
	datac => \data|CCR_Result\(2),
	datad => \data|CCR_Result[2]~1_combout\,
	combout => \data|CCR_Result[2]~2_combout\);

-- Location: FF_X32_Y18_N11
\data|CCR_Result[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \data|CCR_Result[2]~2_combout\,
	clrn => \Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data|CCR_Result\(2));

-- Location: LCCOMB_X27_Y18_N8
\control|Selector11~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \control|Selector11~0_combout\ = (\data|CCR_Result\(2) & (\control|current_state.S_DECODE_3~q\ & \control|Equal7~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data|CCR_Result\(2),
	datac => \control|current_state.S_DECODE_3~q\,
	datad => \control|Equal7~1_combout\,
	combout => \control|Selector11~0_combout\);

-- Location: LCCOMB_X27_Y18_N14
\control|Selector5~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \control|Selector5~1_combout\ = (!\control|current_state.S_STB_DIR_5~q\ & !\control|current_state.S_STA_DIR_5~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \control|current_state.S_STB_DIR_5~q\,
	datad => \control|current_state.S_STA_DIR_5~q\,
	combout => \control|Selector5~1_combout\);

-- Location: LCCOMB_X27_Y18_N28
\control|Selector5~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \control|Selector5~2_combout\ = (!\control|current_state.S_BRA_5~q\ & (!\control|current_state.S_BEQ_5~q\ & (\control|Selector5~1_combout\ & \control|Selector5~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control|current_state.S_BRA_5~q\,
	datab => \control|current_state.S_BEQ_5~q\,
	datac => \control|Selector5~1_combout\,
	datad => \control|Selector5~0_combout\,
	combout => \control|Selector5~2_combout\);

-- Location: LCCOMB_X27_Y18_N6
\control|Selector5~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \control|Selector5~3_combout\ = ((\control|current_state.S_FETCH_1~q\) # ((\control|Selector11~0_combout\) # (!\control|Selector5~2_combout\))) # (!\control|current_state.S_FETCH_0~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control|current_state.S_FETCH_0~q\,
	datab => \control|current_state.S_FETCH_1~q\,
	datac => \control|Selector11~0_combout\,
	datad => \control|Selector5~2_combout\,
	combout => \control|Selector5~3_combout\);

-- Location: LCCOMB_X27_Y18_N26
\control|Selector5~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \control|Selector5~4_combout\ = (\control|Selector5~3_combout\) # ((\control|current_state.S_DECODE_3~q\ & ((\control|OUTPUT_LOGIC~0_combout\) # (!\control|next_state~39_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control|Selector5~3_combout\,
	datab => \control|current_state.S_DECODE_3~q\,
	datac => \control|OUTPUT_LOGIC~0_combout\,
	datad => \control|next_state~39_combout\,
	combout => \control|Selector5~4_combout\);

-- Location: LCCOMB_X27_Y18_N12
\control|Bus2_Sel[0]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \control|Bus2_Sel\(0) = (GLOBAL(\control|Selector0~0clkctrl_outclk\) & ((\control|Selector5~4_combout\))) # (!GLOBAL(\control|Selector0~0clkctrl_outclk\) & (\control|Bus2_Sel\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control|Bus2_Sel\(0),
	datac => \control|Selector5~4_combout\,
	datad => \control|Selector0~0clkctrl_outclk\,
	combout => \control|Bus2_Sel\(0));

-- Location: IOIBUF_X28_Y29_N15
\from_memory[6]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_from_memory(6),
	o => \from_memory[6]~input_o\);

-- Location: LCCOMB_X29_Y18_N8
\data|Mux9~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data|Mux9~2_combout\ = (\control|Bus2_Sel\(0) & (((\data|Mux1~0_combout\ & !\control|Bus2_Sel\(1))))) # (!\control|Bus2_Sel\(0) & (\from_memory[6]~input_o\ & ((\control|Bus2_Sel\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control|Bus2_Sel\(0),
	datab => \from_memory[6]~input_o\,
	datac => \data|Mux1~0_combout\,
	datad => \control|Bus2_Sel\(1),
	combout => \data|Mux9~2_combout\);

-- Location: LCCOMB_X29_Y18_N4
\data|Mux9~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data|Mux9~3_combout\ = (\data|Mux9~2_combout\) # ((!\control|Bus2_Sel\(0) & (!\control|Bus2_Sel\(1) & \data|U0|Add0~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control|Bus2_Sel\(0),
	datab => \control|Bus2_Sel\(1),
	datac => \data|Mux9~2_combout\,
	datad => \data|U0|Add0~12_combout\,
	combout => \data|Mux9~3_combout\);

-- Location: FF_X29_Y18_N5
\data|IR[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \data|Mux9~3_combout\,
	clrn => \Reset~inputclkctrl_outclk\,
	ena => \control|IR_Load~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data|IR\(6));

-- Location: LCCOMB_X28_Y18_N28
\control|Equal6~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \control|Equal6~1_combout\ = (!\data|IR\(6) & (\data|IR\(5) & \control|Equal6~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data|IR\(6),
	datac => \data|IR\(5),
	datad => \control|Equal6~0_combout\,
	combout => \control|Equal6~1_combout\);

-- Location: LCCOMB_X27_Y18_N4
\control|next_state~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \control|next_state~38_combout\ = (\control|current_state.S_DECODE_3~q\ & (\control|Equal6~1_combout\ & (!\data|IR\(0) & !\data|IR\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control|current_state.S_DECODE_3~q\,
	datab => \control|Equal6~1_combout\,
	datac => \data|IR\(0),
	datad => \data|IR\(1),
	combout => \control|next_state~38_combout\);

-- Location: FF_X27_Y18_N5
\control|current_state.S_BRA_4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \control|next_state~38_combout\,
	clrn => \Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \control|current_state.S_BRA_4~q\);

-- Location: LCCOMB_X26_Y18_N18
\control|next_state~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \control|next_state~30_combout\ = (\control|current_state.S_STA_DIR_4~q\) # ((\control|current_state.S_BRA_4~q\) # ((\control|current_state.S_STB_DIR_4~q\) # (\control|current_state.S_BEQ_4~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control|current_state.S_STA_DIR_4~q\,
	datab => \control|current_state.S_BRA_4~q\,
	datac => \control|current_state.S_STB_DIR_4~q\,
	datad => \control|current_state.S_BEQ_4~q\,
	combout => \control|next_state~30_combout\);

-- Location: LCCOMB_X26_Y18_N16
\control|next_state~29\ : cycloneiii_lcell_comb
-- Equation(s):
-- \control|next_state~29_combout\ = (\control|current_state.S_LDA_DIR_4~q\) # ((\control|current_state.S_LDB_DIR_4~q\) # ((\control|current_state.S_LDA_IMM_4~q\) # (\control|current_state.S_LDB_IMM_4~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control|current_state.S_LDA_DIR_4~q\,
	datab => \control|current_state.S_LDB_DIR_4~q\,
	datac => \control|current_state.S_LDA_IMM_4~q\,
	datad => \control|current_state.S_LDB_IMM_4~q\,
	combout => \control|next_state~29_combout\);

-- Location: LCCOMB_X32_Y18_N20
\control|next_state.S_STB_DIR_6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \control|next_state.S_STB_DIR_6~0_combout\ = (\control|current_state.S_FETCH_0~q\ & \control|current_state.S_STB_DIR_5~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control|current_state.S_FETCH_0~q\,
	datac => \control|current_state.S_STB_DIR_5~q\,
	combout => \control|next_state.S_STB_DIR_6~0_combout\);

-- Location: FF_X32_Y18_N21
\control|current_state.S_STB_DIR_6\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \control|next_state.S_STB_DIR_6~0_combout\,
	clrn => \Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \control|current_state.S_STB_DIR_6~q\);

-- Location: LCCOMB_X33_Y18_N28
\control|WideOr11~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \control|WideOr11~2_combout\ = (!\control|current_state.S_LDB_DIR_6~q\ & (!\control|current_state.S_STA_DIR_6~q\ & (!\control|current_state.S_LDA_DIR_6~q\ & !\control|current_state.S_STB_DIR_6~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control|current_state.S_LDB_DIR_6~q\,
	datab => \control|current_state.S_STA_DIR_6~q\,
	datac => \control|current_state.S_LDA_DIR_6~q\,
	datad => \control|current_state.S_STB_DIR_6~q\,
	combout => \control|WideOr11~2_combout\);

-- Location: LCCOMB_X33_Y18_N18
\control|WideOr11~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \control|WideOr11~3_combout\ = (!\control|current_state.S_LDA_DIR_7~q\ & (!\control|current_state.S_LDB_DIR_7~q\ & \control|WideOr11~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control|current_state.S_LDA_DIR_7~q\,
	datac => \control|current_state.S_LDB_DIR_7~q\,
	datad => \control|WideOr11~2_combout\,
	combout => \control|WideOr11~3_combout\);

-- Location: LCCOMB_X26_Y18_N28
\control|next_state~31\ : cycloneiii_lcell_comb
-- Equation(s):
-- \control|next_state~31_combout\ = (\control|next_state~30_combout\) # (((\control|next_state~29_combout\) # (!\control|WideOr11~3_combout\)) # (!\control|Selector5~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control|next_state~30_combout\,
	datab => \control|Selector5~2_combout\,
	datac => \control|next_state~29_combout\,
	datad => \control|WideOr11~3_combout\,
	combout => \control|next_state~31_combout\);

-- Location: LCCOMB_X27_Y18_N22
\control|next_state.S_FETCH_0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \control|next_state.S_FETCH_0~0_combout\ = ((\control|current_state.S_DECODE_3~q\ & ((!\control|next_state~28_combout\))) # (!\control|current_state.S_DECODE_3~q\ & (\control|next_state~31_combout\))) # (!\control|next_state.S_BEQ_5~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control|next_state.S_BEQ_5~0_combout\,
	datab => \control|next_state~31_combout\,
	datac => \control|current_state.S_DECODE_3~q\,
	datad => \control|next_state~28_combout\,
	combout => \control|next_state.S_FETCH_0~0_combout\);

-- Location: FF_X27_Y18_N23
\control|current_state.S_FETCH_0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \control|next_state.S_FETCH_0~0_combout\,
	clrn => \Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \control|current_state.S_FETCH_0~q\);

-- Location: LCCOMB_X26_Y18_N20
\control|current_state.S_FETCH_1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \control|current_state.S_FETCH_1~0_combout\ = !\control|current_state.S_FETCH_0~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \control|current_state.S_FETCH_0~q\,
	combout => \control|current_state.S_FETCH_1~0_combout\);

-- Location: FF_X26_Y18_N21
\control|current_state.S_FETCH_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \control|current_state.S_FETCH_1~0_combout\,
	clrn => \Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \control|current_state.S_FETCH_1~q\);

-- Location: LCCOMB_X32_Y18_N8
\control|current_state.S_FETCH_2~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \control|current_state.S_FETCH_2~feeder_combout\ = \control|current_state.S_FETCH_1~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \control|current_state.S_FETCH_1~q\,
	combout => \control|current_state.S_FETCH_2~feeder_combout\);

-- Location: FF_X32_Y18_N9
\control|current_state.S_FETCH_2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \control|current_state.S_FETCH_2~feeder_combout\,
	clrn => \Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \control|current_state.S_FETCH_2~q\);

-- Location: LCCOMB_X33_Y18_N2
\control|WideOr11~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \control|WideOr11~1_combout\ = (((!\control|PC_Load~0_combout\) # (!\control|Bus1_Sel~0_combout\)) # (!\control|B_Load~0_combout\)) # (!\control|WideOr11~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control|WideOr11~0_combout\,
	datab => \control|B_Load~0_combout\,
	datac => \control|Bus1_Sel~0_combout\,
	datad => \control|PC_Load~0_combout\,
	combout => \control|WideOr11~1_combout\);

-- Location: LCCOMB_X33_Y18_N6
\control|WideOr11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \control|WideOr11~combout\ = (\control|current_state.S_FETCH_2~q\) # ((\control|WideOr11~1_combout\) # (!\control|WideOr11~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control|current_state.S_FETCH_2~q\,
	datab => \control|WideOr11~3_combout\,
	datad => \control|WideOr11~1_combout\,
	combout => \control|WideOr11~combout\);

-- Location: LCCOMB_X33_Y18_N4
\control|Bus2_Sel[1]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \control|Bus2_Sel\(1) = (GLOBAL(\control|Selector0~0clkctrl_outclk\) & (\control|WideOr11~combout\)) # (!GLOBAL(\control|Selector0~0clkctrl_outclk\) & ((\control|Bus2_Sel\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control|WideOr11~combout\,
	datab => \control|Bus2_Sel\(1),
	datad => \control|Selector0~0clkctrl_outclk\,
	combout => \control|Bus2_Sel\(1));

-- Location: IOIBUF_X28_Y29_N22
\from_memory[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_from_memory(4),
	o => \from_memory[4]~input_o\);

-- Location: LCCOMB_X29_Y18_N28
\data|Mux11~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data|Mux11~0_combout\ = (!\control|Bus2_Sel\(0) & ((\control|Bus2_Sel\(1) & (\from_memory[4]~input_o\)) # (!\control|Bus2_Sel\(1) & ((\data|U0|Add0~8_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control|Bus2_Sel\(0),
	datab => \from_memory[4]~input_o\,
	datac => \control|Bus2_Sel\(1),
	datad => \data|U0|Add0~8_combout\,
	combout => \data|Mux11~0_combout\);

-- Location: LCCOMB_X29_Y18_N0
\data|Mux11~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data|Mux11~1_combout\ = (\data|Mux11~0_combout\) # ((!\control|Bus2_Sel\(1) & (\data|Mux3~0_combout\ & \control|Bus2_Sel\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control|Bus2_Sel\(1),
	datab => \data|Mux3~0_combout\,
	datac => \control|Bus2_Sel\(0),
	datad => \data|Mux11~0_combout\,
	combout => \data|Mux11~1_combout\);

-- Location: FF_X29_Y18_N1
\data|IR[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \data|Mux11~1_combout\,
	clrn => \Reset~inputclkctrl_outclk\,
	ena => \control|IR_Load~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data|IR\(4));

-- Location: LCCOMB_X26_Y18_N6
\control|next_state~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \control|next_state~36_combout\ = (\data|IR\(4) & (\control|current_state.S_DECODE_3~q\ & (!\data|IR\(0) & \control|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data|IR\(4),
	datab => \control|current_state.S_DECODE_3~q\,
	datac => \data|IR\(0),
	datad => \control|Equal0~1_combout\,
	combout => \control|next_state~36_combout\);

-- Location: FF_X26_Y18_N7
\control|current_state.S_STA_DIR_4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \control|next_state~36_combout\,
	clrn => \Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \control|current_state.S_STA_DIR_4~q\);

-- Location: FF_X27_Y18_N31
\control|current_state.S_STA_DIR_5\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \control|current_state.S_STA_DIR_4~q\,
	clrn => \Reset~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \control|current_state.S_STA_DIR_5~q\);

-- Location: LCCOMB_X33_Y18_N24
\control|current_state.S_STA_DIR_6~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \control|current_state.S_STA_DIR_6~feeder_combout\ = \control|current_state.S_STA_DIR_5~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \control|current_state.S_STA_DIR_5~q\,
	combout => \control|current_state.S_STA_DIR_6~feeder_combout\);

-- Location: FF_X33_Y18_N25
\control|current_state.S_STA_DIR_6\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \control|current_state.S_STA_DIR_6~feeder_combout\,
	clrn => \Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \control|current_state.S_STA_DIR_6~q\);

-- Location: FF_X33_Y18_N23
\control|current_state.S_STA_DIR_7\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \control|current_state.S_STA_DIR_6~q\,
	clrn => \Reset~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \control|current_state.S_STA_DIR_7~q\);

-- Location: LCCOMB_X32_Y18_N22
\control|next_state.S_STB_DIR_7~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \control|next_state.S_STB_DIR_7~0_combout\ = (\control|current_state.S_FETCH_0~q\ & (!\control|current_state.S_FETCH_1~q\ & \control|current_state.S_STB_DIR_6~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control|current_state.S_FETCH_0~q\,
	datac => \control|current_state.S_FETCH_1~q\,
	datad => \control|current_state.S_STB_DIR_6~q\,
	combout => \control|next_state.S_STB_DIR_7~0_combout\);

-- Location: FF_X32_Y18_N23
\control|current_state.S_STB_DIR_7\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \control|next_state.S_STB_DIR_7~0_combout\,
	clrn => \Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \control|current_state.S_STB_DIR_7~q\);

-- Location: LCCOMB_X33_Y18_N22
\control|Bus1_Sel~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \control|Bus1_Sel~0_combout\ = (!\control|current_state.S_STA_DIR_7~q\ & !\control|current_state.S_STB_DIR_7~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \control|current_state.S_STA_DIR_7~q\,
	datad => \control|current_state.S_STB_DIR_7~q\,
	combout => \control|Bus1_Sel~0_combout\);

-- Location: LCCOMB_X38_Y18_N28
\control|writen\ : cycloneiii_lcell_comb
-- Equation(s):
-- \control|writen~combout\ = (GLOBAL(\control|Selector0~0clkctrl_outclk\) & ((!\control|Bus1_Sel~0_combout\))) # (!GLOBAL(\control|Selector0~0clkctrl_outclk\) & (\control|writen~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \control|writen~combout\,
	datac => \control|Bus1_Sel~0_combout\,
	datad => \control|Selector0~0clkctrl_outclk\,
	combout => \control|writen~combout\);

-- Location: LCCOMB_X31_Y18_N0
\data|MAR[0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data|MAR[0]~feeder_combout\ = \data|Mux15~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \data|Mux15~1_combout\,
	combout => \data|MAR[0]~feeder_combout\);

-- Location: LCCOMB_X28_Y18_N22
\control|Selector15~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \control|Selector15~0_combout\ = (\data|CCR_Result\(2) & (\control|Equal7~1_combout\ & (!\control|OUTPUT_LOGIC~0_combout\ & \control|next_state~39_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data|CCR_Result\(2),
	datab => \control|Equal7~1_combout\,
	datac => \control|OUTPUT_LOGIC~0_combout\,
	datad => \control|next_state~39_combout\,
	combout => \control|Selector15~0_combout\);

-- Location: LCCOMB_X27_Y18_N10
\control|Selector15~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \control|Selector15~1_combout\ = (((\control|current_state.S_DECODE_3~q\ & !\control|Selector15~0_combout\)) # (!\control|current_state.S_FETCH_0~q\)) # (!\control|WideOr11~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control|WideOr11~2_combout\,
	datab => \control|current_state.S_FETCH_0~q\,
	datac => \control|current_state.S_DECODE_3~q\,
	datad => \control|Selector15~0_combout\,
	combout => \control|Selector15~1_combout\);

-- Location: LCCOMB_X27_Y18_N2
\control|MAR_Load\ : cycloneiii_lcell_comb
-- Equation(s):
-- \control|MAR_Load~combout\ = (GLOBAL(\control|Selector0~0clkctrl_outclk\) & ((\control|Selector15~1_combout\))) # (!GLOBAL(\control|Selector0~0clkctrl_outclk\) & (\control|MAR_Load~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control|Selector0~0clkctrl_outclk\,
	datab => \control|MAR_Load~combout\,
	datad => \control|Selector15~1_combout\,
	combout => \control|MAR_Load~combout\);

-- Location: FF_X31_Y18_N1
\data|MAR[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \data|MAR[0]~feeder_combout\,
	clrn => \Reset~inputclkctrl_outclk\,
	ena => \control|MAR_Load~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data|MAR\(0));

-- Location: LCCOMB_X31_Y18_N18
\data|MAR[1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data|MAR[1]~feeder_combout\ = \data|Mux14~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data|Mux14~1_combout\,
	combout => \data|MAR[1]~feeder_combout\);

-- Location: FF_X31_Y18_N19
\data|MAR[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \data|MAR[1]~feeder_combout\,
	clrn => \Reset~inputclkctrl_outclk\,
	ena => \control|MAR_Load~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data|MAR\(1));

-- Location: FF_X28_Y18_N31
\data|MAR[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \data|Mux13~1_combout\,
	clrn => \Reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \control|MAR_Load~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data|MAR\(2));

-- Location: FF_X27_Y18_N3
\data|MAR[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \data|Mux12~1_combout\,
	clrn => \Reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \control|MAR_Load~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data|MAR\(3));

-- Location: LCCOMB_X31_Y18_N4
\data|MAR[4]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data|MAR[4]~feeder_combout\ = \data|Mux11~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data|Mux11~1_combout\,
	combout => \data|MAR[4]~feeder_combout\);

-- Location: FF_X31_Y18_N5
\data|MAR[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \data|MAR[4]~feeder_combout\,
	clrn => \Reset~inputclkctrl_outclk\,
	ena => \control|MAR_Load~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data|MAR\(4));

-- Location: FF_X28_Y18_N5
\data|MAR[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \data|Mux10~1_combout\,
	clrn => \Reset~inputclkctrl_outclk\,
	ena => \control|MAR_Load~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data|MAR\(5));

-- Location: LCCOMB_X31_Y18_N14
\data|MAR[6]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data|MAR[6]~feeder_combout\ = \data|Mux9~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data|Mux9~3_combout\,
	combout => \data|MAR[6]~feeder_combout\);

-- Location: FF_X31_Y18_N15
\data|MAR[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \data|MAR[6]~feeder_combout\,
	clrn => \Reset~inputclkctrl_outclk\,
	ena => \control|MAR_Load~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data|MAR\(6));

-- Location: FF_X28_Y18_N21
\data|MAR[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \data|Mux8~3_combout\,
	clrn => \Reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \control|MAR_Load~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data|MAR\(7));

ww_writen <= \writen~output_o\;

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


