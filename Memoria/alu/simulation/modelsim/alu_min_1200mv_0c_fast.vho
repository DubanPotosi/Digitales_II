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

-- DATE "01/27/2022 08:38:35"

-- 
-- Device: Altera EP3C16F484C6 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIII;
LIBRARY IEEE;
USE CYCLONEIII.CYCLONEIII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	alu IS
    PORT (
	B : IN std_logic_vector(7 DOWNTO 0);
	Bus1 : IN std_logic_vector(7 DOWNTO 0);
	ALU_Sel : IN std_logic_vector(2 DOWNTO 0);
	ALU_Result : OUT std_logic_vector(7 DOWNTO 0);
	NZVC : OUT std_logic_vector(3 DOWNTO 0)
	);
END alu;

-- Design Ports Information
-- ALU_Result[0]	=>  Location: PIN_P3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU_Result[1]	=>  Location: PIN_P2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU_Result[2]	=>  Location: PIN_N6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU_Result[3]	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU_Result[4]	=>  Location: PIN_P1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU_Result[5]	=>  Location: PIN_J2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU_Result[6]	=>  Location: PIN_M1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU_Result[7]	=>  Location: PIN_N21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- NZVC[0]	=>  Location: PIN_V2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- NZVC[1]	=>  Location: PIN_L6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- NZVC[2]	=>  Location: PIN_M2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- NZVC[3]	=>  Location: PIN_N18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Bus1[0]	=>  Location: PIN_N5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[0]	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU_Sel[0]	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU_Sel[1]	=>  Location: PIN_AB10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU_Sel[2]	=>  Location: PIN_AB14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Bus1[1]	=>  Location: PIN_P4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[1]	=>  Location: PIN_V1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Bus1[2]	=>  Location: PIN_M4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[2]	=>  Location: PIN_M3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Bus1[3]	=>  Location: PIN_M7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[3]	=>  Location: PIN_R1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Bus1[4]	=>  Location: PIN_R2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[4]	=>  Location: PIN_U1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Bus1[5]	=>  Location: PIN_M5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[5]	=>  Location: PIN_W2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Bus1[6]	=>  Location: PIN_N2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[6]	=>  Location: PIN_P5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Bus1[7]	=>  Location: PIN_N1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[7]	=>  Location: PIN_U2,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF alu IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_B : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_Bus1 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_ALU_Sel : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_ALU_Result : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_NZVC : std_logic_vector(3 DOWNTO 0);
SIGNAL \Equal0~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ALU_Result[0]~output_o\ : std_logic;
SIGNAL \ALU_Result[1]~output_o\ : std_logic;
SIGNAL \ALU_Result[2]~output_o\ : std_logic;
SIGNAL \ALU_Result[3]~output_o\ : std_logic;
SIGNAL \ALU_Result[4]~output_o\ : std_logic;
SIGNAL \ALU_Result[5]~output_o\ : std_logic;
SIGNAL \ALU_Result[6]~output_o\ : std_logic;
SIGNAL \ALU_Result[7]~output_o\ : std_logic;
SIGNAL \NZVC[0]~output_o\ : std_logic;
SIGNAL \NZVC[1]~output_o\ : std_logic;
SIGNAL \NZVC[2]~output_o\ : std_logic;
SIGNAL \NZVC[3]~output_o\ : std_logic;
SIGNAL \ALU_Sel[0]~input_o\ : std_logic;
SIGNAL \Bus1[0]~input_o\ : std_logic;
SIGNAL \B[0]~input_o\ : std_logic;
SIGNAL \Add1~0_combout\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \ALU_Result[0]~0_combout\ : std_logic;
SIGNAL \ALU_Sel[2]~input_o\ : std_logic;
SIGNAL \ALU_Sel[1]~input_o\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Equal0~0clkctrl_outclk\ : std_logic;
SIGNAL \ALU_Result[0]$latch~combout\ : std_logic;
SIGNAL \B[1]~input_o\ : std_logic;
SIGNAL \Bus1[1]~input_o\ : std_logic;
SIGNAL \Add0~1\ : std_logic;
SIGNAL \Add0~2_combout\ : std_logic;
SIGNAL \Add1~1\ : std_logic;
SIGNAL \Add1~2_combout\ : std_logic;
SIGNAL \ALU_Result[1]~1_combout\ : std_logic;
SIGNAL \ALU_Result[1]$latch~combout\ : std_logic;
SIGNAL \B[2]~input_o\ : std_logic;
SIGNAL \Bus1[2]~input_o\ : std_logic;
SIGNAL \Add1~3\ : std_logic;
SIGNAL \Add1~4_combout\ : std_logic;
SIGNAL \Add0~3\ : std_logic;
SIGNAL \Add0~4_combout\ : std_logic;
SIGNAL \ALU_Result[2]~2_combout\ : std_logic;
SIGNAL \ALU_Result[2]$latch~combout\ : std_logic;
SIGNAL \Bus1[3]~input_o\ : std_logic;
SIGNAL \B[3]~input_o\ : std_logic;
SIGNAL \Add0~5\ : std_logic;
SIGNAL \Add0~6_combout\ : std_logic;
SIGNAL \Add1~5\ : std_logic;
SIGNAL \Add1~6_combout\ : std_logic;
SIGNAL \ALU_Result[3]~3_combout\ : std_logic;
SIGNAL \ALU_Result[3]$latch~combout\ : std_logic;
SIGNAL \B[4]~input_o\ : std_logic;
SIGNAL \Bus1[4]~input_o\ : std_logic;
SIGNAL \Add0~7\ : std_logic;
SIGNAL \Add0~8_combout\ : std_logic;
SIGNAL \Add1~7\ : std_logic;
SIGNAL \Add1~8_combout\ : std_logic;
SIGNAL \ALU_Result[4]~4_combout\ : std_logic;
SIGNAL \ALU_Result[4]$latch~combout\ : std_logic;
SIGNAL \Bus1[5]~input_o\ : std_logic;
SIGNAL \B[5]~input_o\ : std_logic;
SIGNAL \Add0~9\ : std_logic;
SIGNAL \Add0~10_combout\ : std_logic;
SIGNAL \Add1~9\ : std_logic;
SIGNAL \Add1~10_combout\ : std_logic;
SIGNAL \ALU_Result[5]~5_combout\ : std_logic;
SIGNAL \ALU_Result[5]$latch~combout\ : std_logic;
SIGNAL \Bus1[6]~input_o\ : std_logic;
SIGNAL \B[6]~input_o\ : std_logic;
SIGNAL \Add0~11\ : std_logic;
SIGNAL \Add0~12_combout\ : std_logic;
SIGNAL \Add1~11\ : std_logic;
SIGNAL \Add1~12_combout\ : std_logic;
SIGNAL \ALU_Result[6]~6_combout\ : std_logic;
SIGNAL \ALU_Result[6]$latch~combout\ : std_logic;
SIGNAL \B[7]~input_o\ : std_logic;
SIGNAL \Bus1[7]~input_o\ : std_logic;
SIGNAL \Add0~13\ : std_logic;
SIGNAL \Add0~14_combout\ : std_logic;
SIGNAL \Add1~13\ : std_logic;
SIGNAL \Add1~14_combout\ : std_logic;
SIGNAL \ALU_Result[7]~7_combout\ : std_logic;
SIGNAL \ALU_Result[7]$latch~combout\ : std_logic;
SIGNAL \Add1~15\ : std_logic;
SIGNAL \Add1~16_combout\ : std_logic;
SIGNAL \NZVC[0]~0_combout\ : std_logic;
SIGNAL \NZVC[0]$latch~combout\ : std_logic;
SIGNAL \LessThan0~1_cout\ : std_logic;
SIGNAL \LessThan0~3_cout\ : std_logic;
SIGNAL \LessThan0~5_cout\ : std_logic;
SIGNAL \LessThan0~7_cout\ : std_logic;
SIGNAL \LessThan0~9_cout\ : std_logic;
SIGNAL \LessThan0~11_cout\ : std_logic;
SIGNAL \LessThan0~13_cout\ : std_logic;
SIGNAL \LessThan0~14_combout\ : std_logic;
SIGNAL \NZVC[1]~2_combout\ : std_logic;
SIGNAL \NZVC[1]~1_combout\ : std_logic;
SIGNAL \NZVC[1]~3_combout\ : std_logic;
SIGNAL \NZVC[1]$latch~combout\ : std_logic;
SIGNAL \NZVC[2]~4_combout\ : std_logic;
SIGNAL \NZVC[2]~5_combout\ : std_logic;
SIGNAL \NZVC[2]~6_combout\ : std_logic;
SIGNAL \NZVC[2]~7_combout\ : std_logic;
SIGNAL \NZVC[2]~8_combout\ : std_logic;
SIGNAL \NZVC[2]~9_combout\ : std_logic;
SIGNAL \NZVC[2]$latch~combout\ : std_logic;

BEGIN

ww_B <= B;
ww_Bus1 <= Bus1;
ww_ALU_Sel <= ALU_Sel;
ALU_Result <= ww_ALU_Result;
NZVC <= ww_NZVC;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\Equal0~0clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \Equal0~0_combout\);

-- Location: IOOBUF_X0_Y9_N2
\ALU_Result[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU_Result[0]$latch~combout\,
	devoe => ww_devoe,
	o => \ALU_Result[0]~output_o\);

-- Location: IOOBUF_X0_Y11_N16
\ALU_Result[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU_Result[1]$latch~combout\,
	devoe => ww_devoe,
	o => \ALU_Result[1]~output_o\);

-- Location: IOOBUF_X0_Y8_N16
\ALU_Result[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU_Result[2]$latch~combout\,
	devoe => ww_devoe,
	o => \ALU_Result[2]~output_o\);

-- Location: IOOBUF_X0_Y20_N9
\ALU_Result[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU_Result[3]$latch~combout\,
	devoe => ww_devoe,
	o => \ALU_Result[3]~output_o\);

-- Location: IOOBUF_X0_Y11_N23
\ALU_Result[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU_Result[4]$latch~combout\,
	devoe => ww_devoe,
	o => \ALU_Result[4]~output_o\);

-- Location: IOOBUF_X0_Y20_N2
\ALU_Result[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU_Result[5]$latch~combout\,
	devoe => ww_devoe,
	o => \ALU_Result[5]~output_o\);

-- Location: IOOBUF_X0_Y13_N23
\ALU_Result[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU_Result[6]$latch~combout\,
	devoe => ww_devoe,
	o => \ALU_Result[6]~output_o\);

-- Location: IOOBUF_X41_Y13_N9
\ALU_Result[7]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU_Result[7]$latch~combout\,
	devoe => ww_devoe,
	o => \ALU_Result[7]~output_o\);

-- Location: IOOBUF_X0_Y9_N23
\NZVC[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \NZVC[0]$latch~combout\,
	devoe => ww_devoe,
	o => \NZVC[0]~output_o\);

-- Location: IOOBUF_X0_Y13_N2
\NZVC[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \NZVC[1]$latch~combout\,
	devoe => ww_devoe,
	o => \NZVC[1]~output_o\);

-- Location: IOOBUF_X0_Y13_N16
\NZVC[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \NZVC[2]$latch~combout\,
	devoe => ww_devoe,
	o => \NZVC[2]~output_o\);

-- Location: IOOBUF_X41_Y13_N23
\NZVC[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU_Result[7]$latch~combout\,
	devoe => ww_devoe,
	o => \NZVC[3]~output_o\);

-- Location: IOIBUF_X0_Y13_N8
\ALU_Sel[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ALU_Sel(0),
	o => \ALU_Sel[0]~input_o\);

-- Location: IOIBUF_X0_Y10_N15
\Bus1[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Bus1(0),
	o => \Bus1[0]~input_o\);

-- Location: IOIBUF_X0_Y11_N1
\B[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(0),
	o => \B[0]~input_o\);

-- Location: LCCOMB_X1_Y13_N4
\Add1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~0_combout\ = (\Bus1[0]~input_o\ & (\B[0]~input_o\ $ (VCC))) # (!\Bus1[0]~input_o\ & ((\B[0]~input_o\) # (GND)))
-- \Add1~1\ = CARRY((\B[0]~input_o\) # (!\Bus1[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Bus1[0]~input_o\,
	datab => \B[0]~input_o\,
	datad => VCC,
	combout => \Add1~0_combout\,
	cout => \Add1~1\);

-- Location: LCCOMB_X1_Y12_N16
\Add0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = (\B[0]~input_o\ & (\Bus1[0]~input_o\ $ (VCC))) # (!\B[0]~input_o\ & (\Bus1[0]~input_o\ & VCC))
-- \Add0~1\ = CARRY((\B[0]~input_o\ & \Bus1[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \Bus1[0]~input_o\,
	datad => VCC,
	combout => \Add0~0_combout\,
	cout => \Add0~1\);

-- Location: LCCOMB_X1_Y13_N0
\ALU_Result[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ALU_Result[0]~0_combout\ = (\ALU_Sel[0]~input_o\ & (\Add1~0_combout\)) # (!\ALU_Sel[0]~input_o\ & ((\Add0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_Sel[0]~input_o\,
	datac => \Add1~0_combout\,
	datad => \Add0~0_combout\,
	combout => \ALU_Result[0]~0_combout\);

-- Location: IOIBUF_X23_Y0_N8
\ALU_Sel[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ALU_Sel(2),
	o => \ALU_Sel[2]~input_o\);

-- Location: IOIBUF_X21_Y0_N29
\ALU_Sel[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ALU_Sel(1),
	o => \ALU_Sel[1]~input_o\);

-- Location: LCCOMB_X22_Y1_N24
\Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (!\ALU_Sel[2]~input_o\ & !\ALU_Sel[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ALU_Sel[2]~input_o\,
	datad => \ALU_Sel[1]~input_o\,
	combout => \Equal0~0_combout\);

-- Location: CLKCTRL_G17
\Equal0~0clkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \Equal0~0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \Equal0~0clkctrl_outclk\);

-- Location: LCCOMB_X1_Y9_N16
\ALU_Result[0]$latch\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ALU_Result[0]$latch~combout\ = (GLOBAL(\Equal0~0clkctrl_outclk\) & ((\ALU_Result[0]~0_combout\))) # (!GLOBAL(\Equal0~0clkctrl_outclk\) & (\ALU_Result[0]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ALU_Result[0]$latch~combout\,
	datac => \ALU_Result[0]~0_combout\,
	datad => \Equal0~0clkctrl_outclk\,
	combout => \ALU_Result[0]$latch~combout\);

-- Location: IOIBUF_X0_Y8_N1
\B[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(1),
	o => \B[1]~input_o\);

-- Location: IOIBUF_X0_Y10_N22
\Bus1[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Bus1(1),
	o => \Bus1[1]~input_o\);

-- Location: LCCOMB_X1_Y12_N18
\Add0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~2_combout\ = (\B[1]~input_o\ & ((\Bus1[1]~input_o\ & (\Add0~1\ & VCC)) # (!\Bus1[1]~input_o\ & (!\Add0~1\)))) # (!\B[1]~input_o\ & ((\Bus1[1]~input_o\ & (!\Add0~1\)) # (!\Bus1[1]~input_o\ & ((\Add0~1\) # (GND)))))
-- \Add0~3\ = CARRY((\B[1]~input_o\ & (!\Bus1[1]~input_o\ & !\Add0~1\)) # (!\B[1]~input_o\ & ((!\Add0~1\) # (!\Bus1[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \Bus1[1]~input_o\,
	datad => VCC,
	cin => \Add0~1\,
	combout => \Add0~2_combout\,
	cout => \Add0~3\);

-- Location: LCCOMB_X1_Y13_N6
\Add1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~2_combout\ = (\B[1]~input_o\ & ((\Bus1[1]~input_o\ & (!\Add1~1\)) # (!\Bus1[1]~input_o\ & (\Add1~1\ & VCC)))) # (!\B[1]~input_o\ & ((\Bus1[1]~input_o\ & ((\Add1~1\) # (GND))) # (!\Bus1[1]~input_o\ & (!\Add1~1\))))
-- \Add1~3\ = CARRY((\B[1]~input_o\ & (\Bus1[1]~input_o\ & !\Add1~1\)) # (!\B[1]~input_o\ & ((\Bus1[1]~input_o\) # (!\Add1~1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \Bus1[1]~input_o\,
	datad => VCC,
	cin => \Add1~1\,
	combout => \Add1~2_combout\,
	cout => \Add1~3\);

-- Location: LCCOMB_X1_Y13_N26
\ALU_Result[1]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ALU_Result[1]~1_combout\ = (\ALU_Sel[0]~input_o\ & ((\Add1~2_combout\))) # (!\ALU_Sel[0]~input_o\ & (\Add0~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_Sel[0]~input_o\,
	datac => \Add0~2_combout\,
	datad => \Add1~2_combout\,
	combout => \ALU_Result[1]~1_combout\);

-- Location: LCCOMB_X1_Y11_N16
\ALU_Result[1]$latch\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ALU_Result[1]$latch~combout\ = (GLOBAL(\Equal0~0clkctrl_outclk\) & ((\ALU_Result[1]~1_combout\))) # (!GLOBAL(\Equal0~0clkctrl_outclk\) & (\ALU_Result[1]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ALU_Result[1]$latch~combout\,
	datac => \ALU_Result[1]~1_combout\,
	datad => \Equal0~0clkctrl_outclk\,
	combout => \ALU_Result[1]$latch~combout\);

-- Location: IOIBUF_X0_Y12_N8
\B[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(2),
	o => \B[2]~input_o\);

-- Location: IOIBUF_X0_Y12_N1
\Bus1[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Bus1(2),
	o => \Bus1[2]~input_o\);

-- Location: LCCOMB_X1_Y13_N8
\Add1~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~4_combout\ = ((\B[2]~input_o\ $ (\Bus1[2]~input_o\ $ (\Add1~3\)))) # (GND)
-- \Add1~5\ = CARRY((\B[2]~input_o\ & ((!\Add1~3\) # (!\Bus1[2]~input_o\))) # (!\B[2]~input_o\ & (!\Bus1[2]~input_o\ & !\Add1~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \Bus1[2]~input_o\,
	datad => VCC,
	cin => \Add1~3\,
	combout => \Add1~4_combout\,
	cout => \Add1~5\);

-- Location: LCCOMB_X1_Y12_N20
\Add0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~4_combout\ = ((\B[2]~input_o\ $ (\Bus1[2]~input_o\ $ (!\Add0~3\)))) # (GND)
-- \Add0~5\ = CARRY((\B[2]~input_o\ & ((\Bus1[2]~input_o\) # (!\Add0~3\))) # (!\B[2]~input_o\ & (\Bus1[2]~input_o\ & !\Add0~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \Bus1[2]~input_o\,
	datad => VCC,
	cin => \Add0~3\,
	combout => \Add0~4_combout\,
	cout => \Add0~5\);

-- Location: LCCOMB_X1_Y13_N22
\ALU_Result[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ALU_Result[2]~2_combout\ = (\ALU_Sel[0]~input_o\ & (\Add1~4_combout\)) # (!\ALU_Sel[0]~input_o\ & ((\Add0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_Sel[0]~input_o\,
	datac => \Add1~4_combout\,
	datad => \Add0~4_combout\,
	combout => \ALU_Result[2]~2_combout\);

-- Location: LCCOMB_X4_Y13_N8
\ALU_Result[2]$latch\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ALU_Result[2]$latch~combout\ = (GLOBAL(\Equal0~0clkctrl_outclk\) & (\ALU_Result[2]~2_combout\)) # (!GLOBAL(\Equal0~0clkctrl_outclk\) & ((\ALU_Result[2]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ALU_Result[2]~2_combout\,
	datac => \ALU_Result[2]$latch~combout\,
	datad => \Equal0~0clkctrl_outclk\,
	combout => \ALU_Result[2]$latch~combout\);

-- Location: IOIBUF_X0_Y8_N22
\Bus1[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Bus1(3),
	o => \Bus1[3]~input_o\);

-- Location: IOIBUF_X0_Y10_N8
\B[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(3),
	o => \B[3]~input_o\);

-- Location: LCCOMB_X1_Y12_N22
\Add0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~6_combout\ = (\Bus1[3]~input_o\ & ((\B[3]~input_o\ & (\Add0~5\ & VCC)) # (!\B[3]~input_o\ & (!\Add0~5\)))) # (!\Bus1[3]~input_o\ & ((\B[3]~input_o\ & (!\Add0~5\)) # (!\B[3]~input_o\ & ((\Add0~5\) # (GND)))))
-- \Add0~7\ = CARRY((\Bus1[3]~input_o\ & (!\B[3]~input_o\ & !\Add0~5\)) # (!\Bus1[3]~input_o\ & ((!\Add0~5\) # (!\B[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Bus1[3]~input_o\,
	datab => \B[3]~input_o\,
	datad => VCC,
	cin => \Add0~5\,
	combout => \Add0~6_combout\,
	cout => \Add0~7\);

-- Location: LCCOMB_X1_Y13_N10
\Add1~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~6_combout\ = (\B[3]~input_o\ & ((\Bus1[3]~input_o\ & (!\Add1~5\)) # (!\Bus1[3]~input_o\ & (\Add1~5\ & VCC)))) # (!\B[3]~input_o\ & ((\Bus1[3]~input_o\ & ((\Add1~5\) # (GND))) # (!\Bus1[3]~input_o\ & (!\Add1~5\))))
-- \Add1~7\ = CARRY((\B[3]~input_o\ & (\Bus1[3]~input_o\ & !\Add1~5\)) # (!\B[3]~input_o\ & ((\Bus1[3]~input_o\) # (!\Add1~5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \Bus1[3]~input_o\,
	datad => VCC,
	cin => \Add1~5\,
	combout => \Add1~6_combout\,
	cout => \Add1~7\);

-- Location: LCCOMB_X2_Y13_N8
\ALU_Result[3]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ALU_Result[3]~3_combout\ = (\ALU_Sel[0]~input_o\ & ((\Add1~6_combout\))) # (!\ALU_Sel[0]~input_o\ & (\Add0~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ALU_Sel[0]~input_o\,
	datac => \Add0~6_combout\,
	datad => \Add1~6_combout\,
	combout => \ALU_Result[3]~3_combout\);

-- Location: LCCOMB_X2_Y13_N16
\ALU_Result[3]$latch\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ALU_Result[3]$latch~combout\ = (GLOBAL(\Equal0~0clkctrl_outclk\) & ((\ALU_Result[3]~3_combout\))) # (!GLOBAL(\Equal0~0clkctrl_outclk\) & (\ALU_Result[3]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ALU_Result[3]$latch~combout\,
	datac => \ALU_Result[3]~3_combout\,
	datad => \Equal0~0clkctrl_outclk\,
	combout => \ALU_Result[3]$latch~combout\);

-- Location: IOIBUF_X0_Y9_N15
\B[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(4),
	o => \B[4]~input_o\);

-- Location: IOIBUF_X0_Y10_N1
\Bus1[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Bus1(4),
	o => \Bus1[4]~input_o\);

-- Location: LCCOMB_X1_Y12_N24
\Add0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~8_combout\ = ((\B[4]~input_o\ $ (\Bus1[4]~input_o\ $ (!\Add0~7\)))) # (GND)
-- \Add0~9\ = CARRY((\B[4]~input_o\ & ((\Bus1[4]~input_o\) # (!\Add0~7\))) # (!\B[4]~input_o\ & (\Bus1[4]~input_o\ & !\Add0~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \Bus1[4]~input_o\,
	datad => VCC,
	cin => \Add0~7\,
	combout => \Add0~8_combout\,
	cout => \Add0~9\);

-- Location: LCCOMB_X1_Y13_N12
\Add1~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~8_combout\ = ((\B[4]~input_o\ $ (\Bus1[4]~input_o\ $ (\Add1~7\)))) # (GND)
-- \Add1~9\ = CARRY((\B[4]~input_o\ & ((!\Add1~7\) # (!\Bus1[4]~input_o\))) # (!\B[4]~input_o\ & (!\Bus1[4]~input_o\ & !\Add1~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \Bus1[4]~input_o\,
	datad => VCC,
	cin => \Add1~7\,
	combout => \Add1~8_combout\,
	cout => \Add1~9\);

-- Location: LCCOMB_X2_Y13_N2
\ALU_Result[4]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ALU_Result[4]~4_combout\ = (\ALU_Sel[0]~input_o\ & ((\Add1~8_combout\))) # (!\ALU_Sel[0]~input_o\ & (\Add0~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add0~8_combout\,
	datac => \ALU_Sel[0]~input_o\,
	datad => \Add1~8_combout\,
	combout => \ALU_Result[4]~4_combout\);

-- Location: LCCOMB_X2_Y11_N8
\ALU_Result[4]$latch\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ALU_Result[4]$latch~combout\ = (GLOBAL(\Equal0~0clkctrl_outclk\) & (\ALU_Result[4]~4_combout\)) # (!GLOBAL(\Equal0~0clkctrl_outclk\) & ((\ALU_Result[4]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ALU_Result[4]~4_combout\,
	datac => \ALU_Result[4]$latch~combout\,
	datad => \Equal0~0clkctrl_outclk\,
	combout => \ALU_Result[4]$latch~combout\);

-- Location: IOIBUF_X0_Y11_N8
\Bus1[5]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Bus1(5),
	o => \Bus1[5]~input_o\);

-- Location: IOIBUF_X0_Y7_N15
\B[5]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(5),
	o => \B[5]~input_o\);

-- Location: LCCOMB_X1_Y12_N26
\Add0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~10_combout\ = (\Bus1[5]~input_o\ & ((\B[5]~input_o\ & (\Add0~9\ & VCC)) # (!\B[5]~input_o\ & (!\Add0~9\)))) # (!\Bus1[5]~input_o\ & ((\B[5]~input_o\ & (!\Add0~9\)) # (!\B[5]~input_o\ & ((\Add0~9\) # (GND)))))
-- \Add0~11\ = CARRY((\Bus1[5]~input_o\ & (!\B[5]~input_o\ & !\Add0~9\)) # (!\Bus1[5]~input_o\ & ((!\Add0~9\) # (!\B[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Bus1[5]~input_o\,
	datab => \B[5]~input_o\,
	datad => VCC,
	cin => \Add0~9\,
	combout => \Add0~10_combout\,
	cout => \Add0~11\);

-- Location: LCCOMB_X1_Y13_N14
\Add1~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~10_combout\ = (\Bus1[5]~input_o\ & ((\B[5]~input_o\ & (!\Add1~9\)) # (!\B[5]~input_o\ & ((\Add1~9\) # (GND))))) # (!\Bus1[5]~input_o\ & ((\B[5]~input_o\ & (\Add1~9\ & VCC)) # (!\B[5]~input_o\ & (!\Add1~9\))))
-- \Add1~11\ = CARRY((\Bus1[5]~input_o\ & ((!\Add1~9\) # (!\B[5]~input_o\))) # (!\Bus1[5]~input_o\ & (!\B[5]~input_o\ & !\Add1~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Bus1[5]~input_o\,
	datab => \B[5]~input_o\,
	datad => VCC,
	cin => \Add1~9\,
	combout => \Add1~10_combout\,
	cout => \Add1~11\);

-- Location: LCCOMB_X2_Y13_N4
\ALU_Result[5]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ALU_Result[5]~5_combout\ = (\ALU_Sel[0]~input_o\ & ((\Add1~10_combout\))) # (!\ALU_Sel[0]~input_o\ & (\Add0~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add0~10_combout\,
	datac => \ALU_Sel[0]~input_o\,
	datad => \Add1~10_combout\,
	combout => \ALU_Result[5]~5_combout\);

-- Location: LCCOMB_X1_Y14_N8
\ALU_Result[5]$latch\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ALU_Result[5]$latch~combout\ = (GLOBAL(\Equal0~0clkctrl_outclk\) & (\ALU_Result[5]~5_combout\)) # (!GLOBAL(\Equal0~0clkctrl_outclk\) & ((\ALU_Result[5]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_Result[5]~5_combout\,
	datac => \ALU_Result[5]$latch~combout\,
	datad => \Equal0~0clkctrl_outclk\,
	combout => \ALU_Result[5]$latch~combout\);

-- Location: IOIBUF_X0_Y12_N15
\Bus1[6]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Bus1(6),
	o => \Bus1[6]~input_o\);

-- Location: IOIBUF_X0_Y8_N8
\B[6]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(6),
	o => \B[6]~input_o\);

-- Location: LCCOMB_X1_Y12_N28
\Add0~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~12_combout\ = ((\Bus1[6]~input_o\ $ (\B[6]~input_o\ $ (!\Add0~11\)))) # (GND)
-- \Add0~13\ = CARRY((\Bus1[6]~input_o\ & ((\B[6]~input_o\) # (!\Add0~11\))) # (!\Bus1[6]~input_o\ & (\B[6]~input_o\ & !\Add0~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Bus1[6]~input_o\,
	datab => \B[6]~input_o\,
	datad => VCC,
	cin => \Add0~11\,
	combout => \Add0~12_combout\,
	cout => \Add0~13\);

-- Location: LCCOMB_X1_Y13_N16
\Add1~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~12_combout\ = ((\Bus1[6]~input_o\ $ (\B[6]~input_o\ $ (\Add1~11\)))) # (GND)
-- \Add1~13\ = CARRY((\Bus1[6]~input_o\ & (\B[6]~input_o\ & !\Add1~11\)) # (!\Bus1[6]~input_o\ & ((\B[6]~input_o\) # (!\Add1~11\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Bus1[6]~input_o\,
	datab => \B[6]~input_o\,
	datad => VCC,
	cin => \Add1~11\,
	combout => \Add1~12_combout\,
	cout => \Add1~13\);

-- Location: LCCOMB_X2_Y13_N14
\ALU_Result[6]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ALU_Result[6]~6_combout\ = (\ALU_Sel[0]~input_o\ & ((\Add1~12_combout\))) # (!\ALU_Sel[0]~input_o\ & (\Add0~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~12_combout\,
	datab => \ALU_Sel[0]~input_o\,
	datac => \Add1~12_combout\,
	combout => \ALU_Result[6]~6_combout\);

-- Location: LCCOMB_X3_Y13_N8
\ALU_Result[6]$latch\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ALU_Result[6]$latch~combout\ = (GLOBAL(\Equal0~0clkctrl_outclk\) & (\ALU_Result[6]~6_combout\)) # (!GLOBAL(\Equal0~0clkctrl_outclk\) & ((\ALU_Result[6]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_Result[6]~6_combout\,
	datac => \ALU_Result[6]$latch~combout\,
	datad => \Equal0~0clkctrl_outclk\,
	combout => \ALU_Result[6]$latch~combout\);

-- Location: IOIBUF_X0_Y9_N8
\B[7]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(7),
	o => \B[7]~input_o\);

-- Location: IOIBUF_X0_Y12_N22
\Bus1[7]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Bus1(7),
	o => \Bus1[7]~input_o\);

-- Location: LCCOMB_X1_Y12_N30
\Add0~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~14_combout\ = \B[7]~input_o\ $ (\Add0~13\ $ (\Bus1[7]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \B[7]~input_o\,
	datad => \Bus1[7]~input_o\,
	cin => \Add0~13\,
	combout => \Add0~14_combout\);

-- Location: LCCOMB_X1_Y13_N18
\Add1~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~14_combout\ = (\Bus1[7]~input_o\ & ((\B[7]~input_o\ & (!\Add1~13\)) # (!\B[7]~input_o\ & ((\Add1~13\) # (GND))))) # (!\Bus1[7]~input_o\ & ((\B[7]~input_o\ & (\Add1~13\ & VCC)) # (!\B[7]~input_o\ & (!\Add1~13\))))
-- \Add1~15\ = CARRY((\Bus1[7]~input_o\ & ((!\Add1~13\) # (!\B[7]~input_o\))) # (!\Bus1[7]~input_o\ & (!\B[7]~input_o\ & !\Add1~13\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Bus1[7]~input_o\,
	datab => \B[7]~input_o\,
	datad => VCC,
	cin => \Add1~13\,
	combout => \Add1~14_combout\,
	cout => \Add1~15\);

-- Location: LCCOMB_X2_Y13_N24
\ALU_Result[7]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ALU_Result[7]~7_combout\ = (\ALU_Sel[0]~input_o\ & ((\Add1~14_combout\))) # (!\ALU_Sel[0]~input_o\ & (\Add0~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ALU_Sel[0]~input_o\,
	datac => \Add0~14_combout\,
	datad => \Add1~14_combout\,
	combout => \ALU_Result[7]~7_combout\);

-- Location: LCCOMB_X2_Y13_N18
\ALU_Result[7]$latch\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ALU_Result[7]$latch~combout\ = (GLOBAL(\Equal0~0clkctrl_outclk\) & (\ALU_Result[7]~7_combout\)) # (!GLOBAL(\Equal0~0clkctrl_outclk\) & ((\ALU_Result[7]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ALU_Result[7]~7_combout\,
	datac => \ALU_Result[7]$latch~combout\,
	datad => \Equal0~0clkctrl_outclk\,
	combout => \ALU_Result[7]$latch~combout\);

-- Location: LCCOMB_X1_Y13_N20
\Add1~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~16_combout\ = \Add1~15\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Add1~15\,
	combout => \Add1~16_combout\);

-- Location: LCCOMB_X1_Y13_N24
\NZVC[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \NZVC[0]~0_combout\ = (\ALU_Sel[0]~input_o\ & ((\Add1~16_combout\))) # (!\ALU_Sel[0]~input_o\ & (\Add0~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_Sel[0]~input_o\,
	datac => \Add0~14_combout\,
	datad => \Add1~16_combout\,
	combout => \NZVC[0]~0_combout\);

-- Location: LCCOMB_X1_Y13_N30
\NZVC[0]$latch\ : cycloneiii_lcell_comb
-- Equation(s):
-- \NZVC[0]$latch~combout\ = (GLOBAL(\Equal0~0clkctrl_outclk\) & (\NZVC[0]~0_combout\)) # (!GLOBAL(\Equal0~0clkctrl_outclk\) & ((\NZVC[0]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \NZVC[0]~0_combout\,
	datac => \NZVC[0]$latch~combout\,
	datad => \Equal0~0clkctrl_outclk\,
	combout => \NZVC[0]$latch~combout\);

-- Location: LCCOMB_X1_Y12_N0
\LessThan0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~1_cout\ = CARRY((!\B[0]~input_o\ & \Bus1[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \Bus1[0]~input_o\,
	datad => VCC,
	cout => \LessThan0~1_cout\);

-- Location: LCCOMB_X1_Y12_N2
\LessThan0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~3_cout\ = CARRY((\B[1]~input_o\ & ((!\LessThan0~1_cout\) # (!\Bus1[1]~input_o\))) # (!\B[1]~input_o\ & (!\Bus1[1]~input_o\ & !\LessThan0~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \Bus1[1]~input_o\,
	datad => VCC,
	cin => \LessThan0~1_cout\,
	cout => \LessThan0~3_cout\);

-- Location: LCCOMB_X1_Y12_N4
\LessThan0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~5_cout\ = CARRY((\B[2]~input_o\ & (\Bus1[2]~input_o\ & !\LessThan0~3_cout\)) # (!\B[2]~input_o\ & ((\Bus1[2]~input_o\) # (!\LessThan0~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \Bus1[2]~input_o\,
	datad => VCC,
	cin => \LessThan0~3_cout\,
	cout => \LessThan0~5_cout\);

-- Location: LCCOMB_X1_Y12_N6
\LessThan0~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~7_cout\ = CARRY((\Bus1[3]~input_o\ & (\B[3]~input_o\ & !\LessThan0~5_cout\)) # (!\Bus1[3]~input_o\ & ((\B[3]~input_o\) # (!\LessThan0~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Bus1[3]~input_o\,
	datab => \B[3]~input_o\,
	datad => VCC,
	cin => \LessThan0~5_cout\,
	cout => \LessThan0~7_cout\);

-- Location: LCCOMB_X1_Y12_N8
\LessThan0~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~9_cout\ = CARRY((\B[4]~input_o\ & (\Bus1[4]~input_o\ & !\LessThan0~7_cout\)) # (!\B[4]~input_o\ & ((\Bus1[4]~input_o\) # (!\LessThan0~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \Bus1[4]~input_o\,
	datad => VCC,
	cin => \LessThan0~7_cout\,
	cout => \LessThan0~9_cout\);

-- Location: LCCOMB_X1_Y12_N10
\LessThan0~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~11_cout\ = CARRY((\Bus1[5]~input_o\ & (\B[5]~input_o\ & !\LessThan0~9_cout\)) # (!\Bus1[5]~input_o\ & ((\B[5]~input_o\) # (!\LessThan0~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Bus1[5]~input_o\,
	datab => \B[5]~input_o\,
	datad => VCC,
	cin => \LessThan0~9_cout\,
	cout => \LessThan0~11_cout\);

-- Location: LCCOMB_X1_Y12_N12
\LessThan0~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~13_cout\ = CARRY((\Bus1[6]~input_o\ & ((!\LessThan0~11_cout\) # (!\B[6]~input_o\))) # (!\Bus1[6]~input_o\ & (!\B[6]~input_o\ & !\LessThan0~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Bus1[6]~input_o\,
	datab => \B[6]~input_o\,
	datad => VCC,
	cin => \LessThan0~11_cout\,
	cout => \LessThan0~13_cout\);

-- Location: LCCOMB_X1_Y12_N14
\LessThan0~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~14_combout\ = (\B[7]~input_o\ & (\LessThan0~13_cout\ & \Bus1[7]~input_o\)) # (!\B[7]~input_o\ & ((\LessThan0~13_cout\) # (\Bus1[7]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \B[7]~input_o\,
	datad => \Bus1[7]~input_o\,
	cin => \LessThan0~13_cout\,
	combout => \LessThan0~14_combout\);

-- Location: LCCOMB_X2_Y13_N12
\NZVC[1]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \NZVC[1]~2_combout\ = (\B[7]~input_o\ & (!\Add1~14_combout\ & (\LessThan0~14_combout\ $ (!\Bus1[7]~input_o\)))) # (!\B[7]~input_o\ & (\Add1~14_combout\ & (\LessThan0~14_combout\ $ (\Bus1[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011010010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~14_combout\,
	datab => \Bus1[7]~input_o\,
	datac => \B[7]~input_o\,
	datad => \Add1~14_combout\,
	combout => \NZVC[1]~2_combout\);

-- Location: LCCOMB_X2_Y13_N26
\NZVC[1]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \NZVC[1]~1_combout\ = (!\ALU_Sel[0]~input_o\ & ((\Add0~14_combout\ & (!\B[7]~input_o\ & !\Bus1[7]~input_o\)) # (!\Add0~14_combout\ & (\B[7]~input_o\ & \Bus1[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~14_combout\,
	datab => \B[7]~input_o\,
	datac => \ALU_Sel[0]~input_o\,
	datad => \Bus1[7]~input_o\,
	combout => \NZVC[1]~1_combout\);

-- Location: LCCOMB_X2_Y13_N6
\NZVC[1]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \NZVC[1]~3_combout\ = (\NZVC[1]~1_combout\) # ((\NZVC[1]~2_combout\ & \ALU_Sel[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \NZVC[1]~2_combout\,
	datab => \ALU_Sel[0]~input_o\,
	datac => \NZVC[1]~1_combout\,
	combout => \NZVC[1]~3_combout\);

-- Location: LCCOMB_X2_Y13_N28
\NZVC[1]$latch\ : cycloneiii_lcell_comb
-- Equation(s):
-- \NZVC[1]$latch~combout\ = (GLOBAL(\Equal0~0clkctrl_outclk\) & (\NZVC[1]~3_combout\)) # (!GLOBAL(\Equal0~0clkctrl_outclk\) & ((\NZVC[1]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \NZVC[1]~3_combout\,
	datab => \NZVC[1]$latch~combout\,
	datad => \Equal0~0clkctrl_outclk\,
	combout => \NZVC[1]$latch~combout\);

-- Location: LCCOMB_X1_Y13_N2
\NZVC[2]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \NZVC[2]~4_combout\ = (!\ALU_Sel[0]~input_o\ & (!\Add0~4_combout\ & (!\Add0~2_combout\ & !\Add0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_Sel[0]~input_o\,
	datab => \Add0~4_combout\,
	datac => \Add0~2_combout\,
	datad => \Add0~0_combout\,
	combout => \NZVC[2]~4_combout\);

-- Location: LCCOMB_X2_Y13_N0
\NZVC[2]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \NZVC[2]~5_combout\ = (!\Add0~12_combout\ & (!\Add0~10_combout\ & (!\Add0~6_combout\ & !\Add0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~12_combout\,
	datab => \Add0~10_combout\,
	datac => \Add0~6_combout\,
	datad => \Add0~8_combout\,
	combout => \NZVC[2]~5_combout\);

-- Location: LCCOMB_X2_Y13_N10
\NZVC[2]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \NZVC[2]~6_combout\ = (\NZVC[2]~4_combout\ & (!\Add0~14_combout\ & \NZVC[2]~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \NZVC[2]~4_combout\,
	datac => \Add0~14_combout\,
	datad => \NZVC[2]~5_combout\,
	combout => \NZVC[2]~6_combout\);

-- Location: LCCOMB_X1_Y13_N28
\NZVC[2]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \NZVC[2]~7_combout\ = (\ALU_Sel[0]~input_o\ & (!\Add1~4_combout\ & (!\Add1~0_combout\ & !\Add1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_Sel[0]~input_o\,
	datab => \Add1~4_combout\,
	datac => \Add1~0_combout\,
	datad => \Add1~2_combout\,
	combout => \NZVC[2]~7_combout\);

-- Location: LCCOMB_X2_Y13_N20
\NZVC[2]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \NZVC[2]~8_combout\ = (!\Add1~10_combout\ & (!\Add1~8_combout\ & (!\Add1~12_combout\ & !\Add1~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~10_combout\,
	datab => \Add1~8_combout\,
	datac => \Add1~12_combout\,
	datad => \Add1~6_combout\,
	combout => \NZVC[2]~8_combout\);

-- Location: LCCOMB_X2_Y13_N22
\NZVC[2]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \NZVC[2]~9_combout\ = (\NZVC[2]~6_combout\) # ((!\Add1~14_combout\ & (\NZVC[2]~7_combout\ & \NZVC[2]~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \NZVC[2]~6_combout\,
	datab => \Add1~14_combout\,
	datac => \NZVC[2]~7_combout\,
	datad => \NZVC[2]~8_combout\,
	combout => \NZVC[2]~9_combout\);

-- Location: LCCOMB_X2_Y13_N30
\NZVC[2]$latch\ : cycloneiii_lcell_comb
-- Equation(s):
-- \NZVC[2]$latch~combout\ = (GLOBAL(\Equal0~0clkctrl_outclk\) & (\NZVC[2]~9_combout\)) # (!GLOBAL(\Equal0~0clkctrl_outclk\) & ((\NZVC[2]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \NZVC[2]~9_combout\,
	datac => \NZVC[2]$latch~combout\,
	datad => \Equal0~0clkctrl_outclk\,
	combout => \NZVC[2]$latch~combout\);

ww_ALU_Result(0) <= \ALU_Result[0]~output_o\;

ww_ALU_Result(1) <= \ALU_Result[1]~output_o\;

ww_ALU_Result(2) <= \ALU_Result[2]~output_o\;

ww_ALU_Result(3) <= \ALU_Result[3]~output_o\;

ww_ALU_Result(4) <= \ALU_Result[4]~output_o\;

ww_ALU_Result(5) <= \ALU_Result[5]~output_o\;

ww_ALU_Result(6) <= \ALU_Result[6]~output_o\;

ww_ALU_Result(7) <= \ALU_Result[7]~output_o\;

ww_NZVC(0) <= \NZVC[0]~output_o\;

ww_NZVC(1) <= \NZVC[1]~output_o\;

ww_NZVC(2) <= \NZVC[2]~output_o\;

ww_NZVC(3) <= \NZVC[3]~output_o\;
END structure;


