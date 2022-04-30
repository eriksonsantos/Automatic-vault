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
-- VERSION "Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Web Edition"

-- DATE "11/05/2020 17:00:44"

-- 
-- Device: Altera EP2C35F672C6 Package FBGA672
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEII;
LIBRARY IEEE;
USE CYCLONEII.CYCLONEII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	cofreAutomatico IS
    PORT (
	go : IN std_logic;
	clock : IN std_logic;
	password : IN std_logic_vector(15 DOWNTO 0);
	A : OUT std_logic;
	P : OUT std_logic
	);
END cofreAutomatico;

-- Design Ports Information
-- A	=>  Location: PIN_C16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- P	=>  Location: PIN_B16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- clock	=>  Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- go	=>  Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- password[0]	=>  Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- password[1]	=>  Location: PIN_G15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- password[2]	=>  Location: PIN_E15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- password[3]	=>  Location: PIN_B15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- password[4]	=>  Location: PIN_D16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- password[5]	=>  Location: PIN_F16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- password[6]	=>  Location: PIN_F15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- password[7]	=>  Location: PIN_D15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- password[8]	=>  Location: PIN_B17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- password[9]	=>  Location: PIN_B18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- password[10]	=>  Location: PIN_H16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- password[11]	=>  Location: PIN_D17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- password[12]	=>  Location: PIN_G16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- password[13]	=>  Location: PIN_A17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- password[14]	=>  Location: PIN_C15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- password[15]	=>  Location: PIN_H15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF cofreAutomatico IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_go : std_logic;
SIGNAL ww_clock : std_logic;
SIGNAL ww_password : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_A : std_logic;
SIGNAL ww_P : std_logic;
SIGNAL \clock~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \chamarBlocoOperacional|comparar1|Equal0~0_combout\ : std_logic;
SIGNAL \chamarBlocoOperacional|comparar1|Equal0~6_combout\ : std_logic;
SIGNAL \chamarBlocoOperacional|comparar2|Equal0~3_combout\ : std_logic;
SIGNAL \chamarBlocoOperacional|registrarSenha|Q[1]~feeder_combout\ : std_logic;
SIGNAL \chamarBlocoOperacional|registrarSenha|Q[10]~feeder_combout\ : std_logic;
SIGNAL \clock~combout\ : std_logic;
SIGNAL \clock~clkctrl_outclk\ : std_logic;
SIGNAL \go~combout\ : std_logic;
SIGNAL \chamarBlocoOperacional|comparar2|Equal0~0_combout\ : std_logic;
SIGNAL \chamarBlocoOperacional|comparar2|Equal0~1_combout\ : std_logic;
SIGNAL \chamarBlocoOperacional|comparar2|Equal0~2_combout\ : std_logic;
SIGNAL \chamarBlocoOperacional|comparar2|Equal0~4_combout\ : std_logic;
SIGNAL \chamarBlocoDeControle|Selector10~0_combout\ : std_logic;
SIGNAL \chamarBlocoDeControle|Selector12~0_combout\ : std_logic;
SIGNAL \chamarBlocoDeControle|senha_id~regout\ : std_logic;
SIGNAL \chamarBlocoOperacional|comparar1|Equal0~2_combout\ : std_logic;
SIGNAL \chamarBlocoOperacional|registrarSenha|Q[3]~feeder_combout\ : std_logic;
SIGNAL \chamarBlocoOperacional|comparar1|Equal0~1_combout\ : std_logic;
SIGNAL \chamarBlocoOperacional|comparar1|Equal0~3_combout\ : std_logic;
SIGNAL \chamarBlocoOperacional|comparar1|Equal0~4_combout\ : std_logic;
SIGNAL \chamarBlocoOperacional|registrarSenha|Q[9]~feeder_combout\ : std_logic;
SIGNAL \chamarBlocoOperacional|comparar1|Equal0~5_combout\ : std_logic;
SIGNAL \chamarBlocoOperacional|registrarSenha|Q[12]~feeder_combout\ : std_logic;
SIGNAL \chamarBlocoOperacional|comparar1|Equal0~7_combout\ : std_logic;
SIGNAL \chamarBlocoOperacional|registrarSenha|Q[15]~feeder_combout\ : std_logic;
SIGNAL \chamarBlocoOperacional|comparar1|Equal0~8_combout\ : std_logic;
SIGNAL \chamarBlocoOperacional|comparar1|Equal0~9_combout\ : std_logic;
SIGNAL \chamarBlocoDeControle|Selector10~1_combout\ : std_logic;
SIGNAL \chamarBlocoDeControle|estado.abrir~regout\ : std_logic;
SIGNAL \chamarBlocoOperacional|registrarErro|QRR~2_combout\ : std_logic;
SIGNAL \chamarBlocoDeControle|Selector2~0_combout\ : std_logic;
SIGNAL \chamarBlocoDeControle|Selector1~0_combout\ : std_logic;
SIGNAL \chamarBlocoDeControle|Selector1~1_combout\ : std_logic;
SIGNAL \chamarBlocoDeControle|erro_reset~regout\ : std_logic;
SIGNAL \chamarBlocoOperacional|registrarErro|QRR[0]~1_combout\ : std_logic;
SIGNAL \chamarBlocoDeControle|Selector7~0_combout\ : std_logic;
SIGNAL \chamarBlocoDeControle|Selector7~1_combout\ : std_logic;
SIGNAL \chamarBlocoDeControle|estado.aguardar~regout\ : std_logic;
SIGNAL \chamarBlocoDeControle|Selector8~0_combout\ : std_logic;
SIGNAL \chamarBlocoDeControle|estado.verificar~regout\ : std_logic;
SIGNAL \chamarBlocoDeControle|Selector9~0_combout\ : std_logic;
SIGNAL \chamarBlocoDeControle|estado.erro~regout\ : std_logic;
SIGNAL \chamarBlocoDeControle|Selector13~0_combout\ : std_logic;
SIGNAL \chamarBlocoDeControle|erro_id~regout\ : std_logic;
SIGNAL \chamarBlocoOperacional|registrarErro|QRR~0_combout\ : std_logic;
SIGNAL \chamarBlocoDeControle|Selector11~0_combout\ : std_logic;
SIGNAL \chamarBlocoDeControle|Selector11~1_combout\ : std_logic;
SIGNAL \chamarBlocoDeControle|estado.reiniciar~regout\ : std_logic;
SIGNAL \chamarBlocoDeControle|estado.estado0~feeder_combout\ : std_logic;
SIGNAL \chamarBlocoDeControle|estado.estado0~regout\ : std_logic;
SIGNAL \chamarBlocoDeControle|Selector5~0_combout\ : std_logic;
SIGNAL \chamarBlocoDeControle|Selector5~1_combout\ : std_logic;
SIGNAL \chamarBlocoDeControle|estado.inicio~regout\ : std_logic;
SIGNAL \chamarBlocoDeControle|Selector6~0_combout\ : std_logic;
SIGNAL \chamarBlocoDeControle|estado.registrar~regout\ : std_logic;
SIGNAL \chamarBlocoDeControle|Selector3~0_combout\ : std_logic;
SIGNAL \chamarBlocoDeControle|Selector3~1_combout\ : std_logic;
SIGNAL \chamarBlocoDeControle|A~regout\ : std_logic;
SIGNAL \chamarBlocoDeControle|Selector2~1_combout\ : std_logic;
SIGNAL \chamarBlocoDeControle|P~regout\ : std_logic;
SIGNAL \chamarBlocoOperacional|registrarSenha|Q\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \chamarBlocoOperacional|registrarErro|QRR\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \password~combout\ : std_logic_vector(15 DOWNTO 0);

BEGIN

ww_go <= go;
ww_clock <= clock;
ww_password <= password;
A <= ww_A;
P <= ww_P;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clock~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \clock~combout\);

-- Location: LCFF_X41_Y35_N3
\chamarBlocoOperacional|registrarSenha|Q[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \chamarBlocoOperacional|registrarSenha|Q[1]~feeder_combout\,
	ena => \chamarBlocoDeControle|senha_id~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \chamarBlocoOperacional|registrarSenha|Q\(1));

-- Location: LCFF_X41_Y35_N21
\chamarBlocoOperacional|registrarSenha|Q[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \password~combout\(0),
	sload => VCC,
	ena => \chamarBlocoDeControle|senha_id~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \chamarBlocoOperacional|registrarSenha|Q\(0));

-- Location: LCCOMB_X41_Y35_N20
\chamarBlocoOperacional|comparar1|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \chamarBlocoOperacional|comparar1|Equal0~0_combout\ = (\password~combout\(1) & (\chamarBlocoOperacional|registrarSenha|Q\(1) & (\password~combout\(0) $ (!\chamarBlocoOperacional|registrarSenha|Q\(0))))) # (!\password~combout\(1) & 
-- (!\chamarBlocoOperacional|registrarSenha|Q\(1) & (\password~combout\(0) $ (!\chamarBlocoOperacional|registrarSenha|Q\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \password~combout\(1),
	datab => \password~combout\(0),
	datac => \chamarBlocoOperacional|registrarSenha|Q\(0),
	datad => \chamarBlocoOperacional|registrarSenha|Q\(1),
	combout => \chamarBlocoOperacional|comparar1|Equal0~0_combout\);

-- Location: LCFF_X42_Y35_N17
\chamarBlocoOperacional|registrarSenha|Q[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \password~combout\(11),
	sload => VCC,
	ena => \chamarBlocoDeControle|senha_id~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \chamarBlocoOperacional|registrarSenha|Q\(11));

-- Location: LCFF_X42_Y35_N3
\chamarBlocoOperacional|registrarSenha|Q[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \chamarBlocoOperacional|registrarSenha|Q[10]~feeder_combout\,
	ena => \chamarBlocoDeControle|senha_id~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \chamarBlocoOperacional|registrarSenha|Q\(10));

-- Location: LCCOMB_X42_Y35_N16
\chamarBlocoOperacional|comparar1|Equal0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \chamarBlocoOperacional|comparar1|Equal0~6_combout\ = (\password~combout\(11) & (\chamarBlocoOperacional|registrarSenha|Q\(11) & (\password~combout\(10) $ (!\chamarBlocoOperacional|registrarSenha|Q\(10))))) # (!\password~combout\(11) & 
-- (!\chamarBlocoOperacional|registrarSenha|Q\(11) & (\password~combout\(10) $ (!\chamarBlocoOperacional|registrarSenha|Q\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \password~combout\(11),
	datab => \password~combout\(10),
	datac => \chamarBlocoOperacional|registrarSenha|Q\(11),
	datad => \chamarBlocoOperacional|registrarSenha|Q\(10),
	combout => \chamarBlocoOperacional|comparar1|Equal0~6_combout\);

-- Location: LCCOMB_X42_Y35_N20
\chamarBlocoOperacional|comparar2|Equal0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \chamarBlocoOperacional|comparar2|Equal0~3_combout\ = (!\password~combout\(13) & (!\password~combout\(15) & (!\password~combout\(14) & !\password~combout\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \password~combout\(13),
	datab => \password~combout\(15),
	datac => \password~combout\(14),
	datad => \password~combout\(12),
	combout => \chamarBlocoOperacional|comparar2|Equal0~3_combout\);

-- Location: PIN_D17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\password[11]~I\ : cycloneii_io
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
	padio => ww_password(11),
	combout => \password~combout\(11));

-- Location: LCCOMB_X41_Y35_N2
\chamarBlocoOperacional|registrarSenha|Q[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \chamarBlocoOperacional|registrarSenha|Q[1]~feeder_combout\ = \password~combout\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \password~combout\(1),
	combout => \chamarBlocoOperacional|registrarSenha|Q[1]~feeder_combout\);

-- Location: LCCOMB_X42_Y35_N2
\chamarBlocoOperacional|registrarSenha|Q[10]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \chamarBlocoOperacional|registrarSenha|Q[10]~feeder_combout\ = \password~combout\(10)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \password~combout\(10),
	combout => \chamarBlocoOperacional|registrarSenha|Q[10]~feeder_combout\);

-- Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\clock~I\ : cycloneii_io
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
	padio => ww_clock,
	combout => \clock~combout\);

-- Location: CLKCTRL_G3
\clock~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clock~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clock~clkctrl_outclk\);

-- Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\go~I\ : cycloneii_io
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
	padio => ww_go,
	combout => \go~combout\);

-- Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\password[0]~I\ : cycloneii_io
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
	padio => ww_password(0),
	combout => \password~combout\(0));

-- Location: PIN_E15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\password[2]~I\ : cycloneii_io
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
	padio => ww_password(2),
	combout => \password~combout\(2));

-- Location: PIN_G15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\password[1]~I\ : cycloneii_io
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
	padio => ww_password(1),
	combout => \password~combout\(1));

-- Location: LCCOMB_X41_Y35_N18
\chamarBlocoOperacional|comparar2|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \chamarBlocoOperacional|comparar2|Equal0~0_combout\ = (!\password~combout\(3) & (!\password~combout\(0) & (!\password~combout\(2) & \password~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \password~combout\(3),
	datab => \password~combout\(0),
	datac => \password~combout\(2),
	datad => \password~combout\(1),
	combout => \chamarBlocoOperacional|comparar2|Equal0~0_combout\);

-- Location: PIN_F15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\password[6]~I\ : cycloneii_io
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
	padio => ww_password(6),
	combout => \password~combout\(6));

-- Location: PIN_D16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\password[4]~I\ : cycloneii_io
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
	padio => ww_password(4),
	combout => \password~combout\(4));

-- Location: PIN_D15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\password[7]~I\ : cycloneii_io
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
	padio => ww_password(7),
	combout => \password~combout\(7));

-- Location: LCCOMB_X41_Y35_N0
\chamarBlocoOperacional|comparar2|Equal0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \chamarBlocoOperacional|comparar2|Equal0~1_combout\ = (!\password~combout\(5) & (\password~combout\(6) & (\password~combout\(4) & \password~combout\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \password~combout\(5),
	datab => \password~combout\(6),
	datac => \password~combout\(4),
	datad => \password~combout\(7),
	combout => \chamarBlocoOperacional|comparar2|Equal0~1_combout\);

-- Location: PIN_H16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\password[10]~I\ : cycloneii_io
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
	padio => ww_password(10),
	combout => \password~combout\(10));

-- Location: PIN_B17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\password[8]~I\ : cycloneii_io
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
	padio => ww_password(8),
	combout => \password~combout\(8));

-- Location: PIN_B18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\password[9]~I\ : cycloneii_io
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
	padio => ww_password(9),
	combout => \password~combout\(9));

-- Location: LCCOMB_X42_Y35_N18
\chamarBlocoOperacional|comparar2|Equal0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \chamarBlocoOperacional|comparar2|Equal0~2_combout\ = (!\password~combout\(11) & (\password~combout\(10) & (!\password~combout\(8) & !\password~combout\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \password~combout\(11),
	datab => \password~combout\(10),
	datac => \password~combout\(8),
	datad => \password~combout\(9),
	combout => \chamarBlocoOperacional|comparar2|Equal0~2_combout\);

-- Location: LCCOMB_X42_Y35_N30
\chamarBlocoOperacional|comparar2|Equal0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \chamarBlocoOperacional|comparar2|Equal0~4_combout\ = (\chamarBlocoOperacional|comparar2|Equal0~3_combout\ & (\chamarBlocoOperacional|comparar2|Equal0~0_combout\ & (\chamarBlocoOperacional|comparar2|Equal0~1_combout\ & 
-- \chamarBlocoOperacional|comparar2|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \chamarBlocoOperacional|comparar2|Equal0~3_combout\,
	datab => \chamarBlocoOperacional|comparar2|Equal0~0_combout\,
	datac => \chamarBlocoOperacional|comparar2|Equal0~1_combout\,
	datad => \chamarBlocoOperacional|comparar2|Equal0~2_combout\,
	combout => \chamarBlocoOperacional|comparar2|Equal0~4_combout\);

-- Location: LCCOMB_X41_Y35_N12
\chamarBlocoDeControle|Selector10~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \chamarBlocoDeControle|Selector10~0_combout\ = (!\go~combout\ & \chamarBlocoDeControle|estado.abrir~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \go~combout\,
	datad => \chamarBlocoDeControle|estado.abrir~regout\,
	combout => \chamarBlocoDeControle|Selector10~0_combout\);

-- Location: PIN_F16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\password[5]~I\ : cycloneii_io
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
	padio => ww_password(5),
	combout => \password~combout\(5));

-- Location: LCCOMB_X41_Y35_N14
\chamarBlocoDeControle|Selector12~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \chamarBlocoDeControle|Selector12~0_combout\ = (\chamarBlocoDeControle|estado.registrar~regout\) # ((!\chamarBlocoDeControle|estado.aguardar~regout\ & (\chamarBlocoDeControle|senha_id~regout\ & !\chamarBlocoDeControle|estado.inicio~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \chamarBlocoDeControle|estado.registrar~regout\,
	datab => \chamarBlocoDeControle|estado.aguardar~regout\,
	datac => \chamarBlocoDeControle|senha_id~regout\,
	datad => \chamarBlocoDeControle|estado.inicio~regout\,
	combout => \chamarBlocoDeControle|Selector12~0_combout\);

-- Location: LCFF_X41_Y35_N15
\chamarBlocoDeControle|senha_id\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \chamarBlocoDeControle|Selector12~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \chamarBlocoDeControle|senha_id~regout\);

-- Location: LCFF_X41_Y35_N27
\chamarBlocoOperacional|registrarSenha|Q[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \password~combout\(5),
	sload => VCC,
	ena => \chamarBlocoDeControle|senha_id~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \chamarBlocoOperacional|registrarSenha|Q\(5));

-- Location: LCFF_X41_Y35_N1
\chamarBlocoOperacional|registrarSenha|Q[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \password~combout\(4),
	sload => VCC,
	ena => \chamarBlocoDeControle|senha_id~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \chamarBlocoOperacional|registrarSenha|Q\(4));

-- Location: LCCOMB_X41_Y35_N26
\chamarBlocoOperacional|comparar1|Equal0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \chamarBlocoOperacional|comparar1|Equal0~2_combout\ = (\password~combout\(5) & (\chamarBlocoOperacional|registrarSenha|Q\(5) & (\password~combout\(4) $ (!\chamarBlocoOperacional|registrarSenha|Q\(4))))) # (!\password~combout\(5) & 
-- (!\chamarBlocoOperacional|registrarSenha|Q\(5) & (\password~combout\(4) $ (!\chamarBlocoOperacional|registrarSenha|Q\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \password~combout\(5),
	datab => \password~combout\(4),
	datac => \chamarBlocoOperacional|registrarSenha|Q\(5),
	datad => \chamarBlocoOperacional|registrarSenha|Q\(4),
	combout => \chamarBlocoOperacional|comparar1|Equal0~2_combout\);

-- Location: PIN_B15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\password[3]~I\ : cycloneii_io
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
	padio => ww_password(3),
	combout => \password~combout\(3));

-- Location: LCFF_X41_Y35_N5
\chamarBlocoOperacional|registrarSenha|Q[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \password~combout\(2),
	sload => VCC,
	ena => \chamarBlocoDeControle|senha_id~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \chamarBlocoOperacional|registrarSenha|Q\(2));

-- Location: LCCOMB_X41_Y35_N10
\chamarBlocoOperacional|registrarSenha|Q[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \chamarBlocoOperacional|registrarSenha|Q[3]~feeder_combout\ = \password~combout\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \password~combout\(3),
	combout => \chamarBlocoOperacional|registrarSenha|Q[3]~feeder_combout\);

-- Location: LCFF_X41_Y35_N11
\chamarBlocoOperacional|registrarSenha|Q[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \chamarBlocoOperacional|registrarSenha|Q[3]~feeder_combout\,
	ena => \chamarBlocoDeControle|senha_id~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \chamarBlocoOperacional|registrarSenha|Q\(3));

-- Location: LCCOMB_X41_Y35_N4
\chamarBlocoOperacional|comparar1|Equal0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \chamarBlocoOperacional|comparar1|Equal0~1_combout\ = (\password~combout\(2) & (\chamarBlocoOperacional|registrarSenha|Q\(2) & (\password~combout\(3) $ (!\chamarBlocoOperacional|registrarSenha|Q\(3))))) # (!\password~combout\(2) & 
-- (!\chamarBlocoOperacional|registrarSenha|Q\(2) & (\password~combout\(3) $ (!\chamarBlocoOperacional|registrarSenha|Q\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \password~combout\(2),
	datab => \password~combout\(3),
	datac => \chamarBlocoOperacional|registrarSenha|Q\(2),
	datad => \chamarBlocoOperacional|registrarSenha|Q\(3),
	combout => \chamarBlocoOperacional|comparar1|Equal0~1_combout\);

-- Location: LCFF_X41_Y35_N23
\chamarBlocoOperacional|registrarSenha|Q[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \password~combout\(7),
	sload => VCC,
	ena => \chamarBlocoDeControle|senha_id~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \chamarBlocoOperacional|registrarSenha|Q\(7));

-- Location: LCFF_X41_Y35_N13
\chamarBlocoOperacional|registrarSenha|Q[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \password~combout\(6),
	sload => VCC,
	ena => \chamarBlocoDeControle|senha_id~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \chamarBlocoOperacional|registrarSenha|Q\(6));

-- Location: LCCOMB_X41_Y35_N22
\chamarBlocoOperacional|comparar1|Equal0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \chamarBlocoOperacional|comparar1|Equal0~3_combout\ = (\password~combout\(7) & (\chamarBlocoOperacional|registrarSenha|Q\(7) & (\password~combout\(6) $ (!\chamarBlocoOperacional|registrarSenha|Q\(6))))) # (!\password~combout\(7) & 
-- (!\chamarBlocoOperacional|registrarSenha|Q\(7) & (\password~combout\(6) $ (!\chamarBlocoOperacional|registrarSenha|Q\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \password~combout\(7),
	datab => \password~combout\(6),
	datac => \chamarBlocoOperacional|registrarSenha|Q\(7),
	datad => \chamarBlocoOperacional|registrarSenha|Q\(6),
	combout => \chamarBlocoOperacional|comparar1|Equal0~3_combout\);

-- Location: LCCOMB_X41_Y35_N24
\chamarBlocoOperacional|comparar1|Equal0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \chamarBlocoOperacional|comparar1|Equal0~4_combout\ = (\chamarBlocoOperacional|comparar1|Equal0~0_combout\ & (\chamarBlocoOperacional|comparar1|Equal0~2_combout\ & (\chamarBlocoOperacional|comparar1|Equal0~1_combout\ & 
-- \chamarBlocoOperacional|comparar1|Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \chamarBlocoOperacional|comparar1|Equal0~0_combout\,
	datab => \chamarBlocoOperacional|comparar1|Equal0~2_combout\,
	datac => \chamarBlocoOperacional|comparar1|Equal0~1_combout\,
	datad => \chamarBlocoOperacional|comparar1|Equal0~3_combout\,
	combout => \chamarBlocoOperacional|comparar1|Equal0~4_combout\);

-- Location: LCFF_X42_Y35_N15
\chamarBlocoOperacional|registrarSenha|Q[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \password~combout\(8),
	sload => VCC,
	ena => \chamarBlocoDeControle|senha_id~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \chamarBlocoOperacional|registrarSenha|Q\(8));

-- Location: LCCOMB_X42_Y35_N12
\chamarBlocoOperacional|registrarSenha|Q[9]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \chamarBlocoOperacional|registrarSenha|Q[9]~feeder_combout\ = \password~combout\(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \password~combout\(9),
	combout => \chamarBlocoOperacional|registrarSenha|Q[9]~feeder_combout\);

-- Location: LCFF_X42_Y35_N13
\chamarBlocoOperacional|registrarSenha|Q[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \chamarBlocoOperacional|registrarSenha|Q[9]~feeder_combout\,
	ena => \chamarBlocoDeControle|senha_id~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \chamarBlocoOperacional|registrarSenha|Q\(9));

-- Location: LCCOMB_X42_Y35_N14
\chamarBlocoOperacional|comparar1|Equal0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \chamarBlocoOperacional|comparar1|Equal0~5_combout\ = (\password~combout\(9) & (\chamarBlocoOperacional|registrarSenha|Q\(9) & (\password~combout\(8) $ (!\chamarBlocoOperacional|registrarSenha|Q\(8))))) # (!\password~combout\(9) & 
-- (!\chamarBlocoOperacional|registrarSenha|Q\(9) & (\password~combout\(8) $ (!\chamarBlocoOperacional|registrarSenha|Q\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \password~combout\(9),
	datab => \password~combout\(8),
	datac => \chamarBlocoOperacional|registrarSenha|Q\(8),
	datad => \chamarBlocoOperacional|registrarSenha|Q\(9),
	combout => \chamarBlocoOperacional|comparar1|Equal0~5_combout\);

-- Location: PIN_G16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\password[12]~I\ : cycloneii_io
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
	padio => ww_password(12),
	combout => \password~combout\(12));

-- Location: PIN_A17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\password[13]~I\ : cycloneii_io
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
	padio => ww_password(13),
	combout => \password~combout\(13));

-- Location: LCFF_X42_Y35_N9
\chamarBlocoOperacional|registrarSenha|Q[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \password~combout\(13),
	sload => VCC,
	ena => \chamarBlocoDeControle|senha_id~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \chamarBlocoOperacional|registrarSenha|Q\(13));

-- Location: LCCOMB_X42_Y35_N10
\chamarBlocoOperacional|registrarSenha|Q[12]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \chamarBlocoOperacional|registrarSenha|Q[12]~feeder_combout\ = \password~combout\(12)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \password~combout\(12),
	combout => \chamarBlocoOperacional|registrarSenha|Q[12]~feeder_combout\);

-- Location: LCFF_X42_Y35_N11
\chamarBlocoOperacional|registrarSenha|Q[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \chamarBlocoOperacional|registrarSenha|Q[12]~feeder_combout\,
	ena => \chamarBlocoDeControle|senha_id~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \chamarBlocoOperacional|registrarSenha|Q\(12));

-- Location: LCCOMB_X42_Y35_N8
\chamarBlocoOperacional|comparar1|Equal0~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \chamarBlocoOperacional|comparar1|Equal0~7_combout\ = (\password~combout\(13) & (\chamarBlocoOperacional|registrarSenha|Q\(13) & (\password~combout\(12) $ (!\chamarBlocoOperacional|registrarSenha|Q\(12))))) # (!\password~combout\(13) & 
-- (!\chamarBlocoOperacional|registrarSenha|Q\(13) & (\password~combout\(12) $ (!\chamarBlocoOperacional|registrarSenha|Q\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \password~combout\(13),
	datab => \password~combout\(12),
	datac => \chamarBlocoOperacional|registrarSenha|Q\(13),
	datad => \chamarBlocoOperacional|registrarSenha|Q\(12),
	combout => \chamarBlocoOperacional|comparar1|Equal0~7_combout\);

-- Location: PIN_H15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\password[15]~I\ : cycloneii_io
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
	padio => ww_password(15),
	combout => \password~combout\(15));

-- Location: PIN_C15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\password[14]~I\ : cycloneii_io
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
	padio => ww_password(14),
	combout => \password~combout\(14));

-- Location: LCFF_X42_Y35_N23
\chamarBlocoOperacional|registrarSenha|Q[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \password~combout\(14),
	sload => VCC,
	ena => \chamarBlocoDeControle|senha_id~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \chamarBlocoOperacional|registrarSenha|Q\(14));

-- Location: LCCOMB_X42_Y35_N0
\chamarBlocoOperacional|registrarSenha|Q[15]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \chamarBlocoOperacional|registrarSenha|Q[15]~feeder_combout\ = \password~combout\(15)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \password~combout\(15),
	combout => \chamarBlocoOperacional|registrarSenha|Q[15]~feeder_combout\);

-- Location: LCFF_X42_Y35_N1
\chamarBlocoOperacional|registrarSenha|Q[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \chamarBlocoOperacional|registrarSenha|Q[15]~feeder_combout\,
	ena => \chamarBlocoDeControle|senha_id~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \chamarBlocoOperacional|registrarSenha|Q\(15));

-- Location: LCCOMB_X42_Y35_N22
\chamarBlocoOperacional|comparar1|Equal0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \chamarBlocoOperacional|comparar1|Equal0~8_combout\ = (\password~combout\(14) & (\chamarBlocoOperacional|registrarSenha|Q\(14) & (\password~combout\(15) $ (!\chamarBlocoOperacional|registrarSenha|Q\(15))))) # (!\password~combout\(14) & 
-- (!\chamarBlocoOperacional|registrarSenha|Q\(14) & (\password~combout\(15) $ (!\chamarBlocoOperacional|registrarSenha|Q\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \password~combout\(14),
	datab => \password~combout\(15),
	datac => \chamarBlocoOperacional|registrarSenha|Q\(14),
	datad => \chamarBlocoOperacional|registrarSenha|Q\(15),
	combout => \chamarBlocoOperacional|comparar1|Equal0~8_combout\);

-- Location: LCCOMB_X42_Y35_N4
\chamarBlocoOperacional|comparar1|Equal0~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \chamarBlocoOperacional|comparar1|Equal0~9_combout\ = (\chamarBlocoOperacional|comparar1|Equal0~6_combout\ & (\chamarBlocoOperacional|comparar1|Equal0~5_combout\ & (\chamarBlocoOperacional|comparar1|Equal0~7_combout\ & 
-- \chamarBlocoOperacional|comparar1|Equal0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \chamarBlocoOperacional|comparar1|Equal0~6_combout\,
	datab => \chamarBlocoOperacional|comparar1|Equal0~5_combout\,
	datac => \chamarBlocoOperacional|comparar1|Equal0~7_combout\,
	datad => \chamarBlocoOperacional|comparar1|Equal0~8_combout\,
	combout => \chamarBlocoOperacional|comparar1|Equal0~9_combout\);

-- Location: LCCOMB_X41_Y35_N28
\chamarBlocoDeControle|Selector10~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \chamarBlocoDeControle|Selector10~1_combout\ = (\chamarBlocoDeControle|Selector10~0_combout\) # ((\chamarBlocoDeControle|estado.verificar~regout\ & (\chamarBlocoOperacional|comparar1|Equal0~4_combout\ & 
-- \chamarBlocoOperacional|comparar1|Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \chamarBlocoDeControle|estado.verificar~regout\,
	datab => \chamarBlocoDeControle|Selector10~0_combout\,
	datac => \chamarBlocoOperacional|comparar1|Equal0~4_combout\,
	datad => \chamarBlocoOperacional|comparar1|Equal0~9_combout\,
	combout => \chamarBlocoDeControle|Selector10~1_combout\);

-- Location: LCFF_X41_Y35_N29
\chamarBlocoDeControle|estado.abrir\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \chamarBlocoDeControle|Selector10~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \chamarBlocoDeControle|estado.abrir~regout\);

-- Location: LCCOMB_X40_Y35_N8
\chamarBlocoOperacional|registrarErro|QRR~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \chamarBlocoOperacional|registrarErro|QRR~2_combout\ = (\chamarBlocoDeControle|erro_id~regout\ & (\chamarBlocoOperacional|registrarErro|QRR\(1) $ (\chamarBlocoOperacional|registrarErro|QRR\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \chamarBlocoDeControle|erro_id~regout\,
	datac => \chamarBlocoOperacional|registrarErro|QRR\(1),
	datad => \chamarBlocoOperacional|registrarErro|QRR\(0),
	combout => \chamarBlocoOperacional|registrarErro|QRR~2_combout\);

-- Location: LCCOMB_X40_Y35_N2
\chamarBlocoDeControle|Selector2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \chamarBlocoDeControle|Selector2~0_combout\ = (!\chamarBlocoDeControle|estado.registrar~regout\ & (!\chamarBlocoDeControle|estado.verificar~regout\ & !\chamarBlocoDeControle|estado.erro~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \chamarBlocoDeControle|estado.registrar~regout\,
	datac => \chamarBlocoDeControle|estado.verificar~regout\,
	datad => \chamarBlocoDeControle|estado.erro~regout\,
	combout => \chamarBlocoDeControle|Selector2~0_combout\);

-- Location: LCCOMB_X40_Y35_N18
\chamarBlocoDeControle|Selector1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \chamarBlocoDeControle|Selector1~0_combout\ = ((\chamarBlocoDeControle|estado.reiniciar~regout\) # (\chamarBlocoDeControle|estado.abrir~regout\)) # (!\chamarBlocoDeControle|estado.estado0~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \chamarBlocoDeControle|estado.estado0~regout\,
	datac => \chamarBlocoDeControle|estado.reiniciar~regout\,
	datad => \chamarBlocoDeControle|estado.abrir~regout\,
	combout => \chamarBlocoDeControle|Selector1~0_combout\);

-- Location: LCCOMB_X40_Y35_N14
\chamarBlocoDeControle|Selector1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \chamarBlocoDeControle|Selector1~1_combout\ = (\chamarBlocoDeControle|Selector1~0_combout\) # ((\chamarBlocoDeControle|erro_reset~regout\ & ((\chamarBlocoDeControle|estado.aguardar~regout\) # (!\chamarBlocoDeControle|Selector2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \chamarBlocoDeControle|estado.aguardar~regout\,
	datab => \chamarBlocoDeControle|Selector2~0_combout\,
	datac => \chamarBlocoDeControle|erro_reset~regout\,
	datad => \chamarBlocoDeControle|Selector1~0_combout\,
	combout => \chamarBlocoDeControle|Selector1~1_combout\);

-- Location: LCFF_X40_Y35_N15
\chamarBlocoDeControle|erro_reset\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \chamarBlocoDeControle|Selector1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \chamarBlocoDeControle|erro_reset~regout\);

-- Location: LCCOMB_X40_Y35_N20
\chamarBlocoOperacional|registrarErro|QRR[0]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \chamarBlocoOperacional|registrarErro|QRR[0]~1_combout\ = (\chamarBlocoDeControle|erro_reset~regout\) # (\chamarBlocoDeControle|erro_id~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \chamarBlocoDeControle|erro_reset~regout\,
	datad => \chamarBlocoDeControle|erro_id~regout\,
	combout => \chamarBlocoOperacional|registrarErro|QRR[0]~1_combout\);

-- Location: LCFF_X40_Y35_N9
\chamarBlocoOperacional|registrarErro|QRR[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \chamarBlocoOperacional|registrarErro|QRR~2_combout\,
	ena => \chamarBlocoOperacional|registrarErro|QRR[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \chamarBlocoOperacional|registrarErro|QRR\(1));

-- Location: LCCOMB_X40_Y35_N6
\chamarBlocoDeControle|Selector7~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \chamarBlocoDeControle|Selector7~0_combout\ = (\chamarBlocoDeControle|estado.registrar~regout\) # ((\chamarBlocoDeControle|estado.erro~regout\ & ((!\chamarBlocoOperacional|registrarErro|QRR\(1)) # (!\chamarBlocoOperacional|registrarErro|QRR\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \chamarBlocoOperacional|registrarErro|QRR\(0),
	datab => \chamarBlocoDeControle|estado.registrar~regout\,
	datac => \chamarBlocoOperacional|registrarErro|QRR\(1),
	datad => \chamarBlocoDeControle|estado.erro~regout\,
	combout => \chamarBlocoDeControle|Selector7~0_combout\);

-- Location: LCCOMB_X40_Y35_N28
\chamarBlocoDeControle|Selector7~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \chamarBlocoDeControle|Selector7~1_combout\ = (\chamarBlocoDeControle|Selector7~0_combout\) # ((\go~combout\ & (\chamarBlocoDeControle|estado.abrir~regout\)) # (!\go~combout\ & ((\chamarBlocoDeControle|estado.aguardar~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \go~combout\,
	datab => \chamarBlocoDeControle|estado.abrir~regout\,
	datac => \chamarBlocoDeControle|estado.aguardar~regout\,
	datad => \chamarBlocoDeControle|Selector7~0_combout\,
	combout => \chamarBlocoDeControle|Selector7~1_combout\);

-- Location: LCFF_X40_Y35_N29
\chamarBlocoDeControle|estado.aguardar\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \chamarBlocoDeControle|Selector7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \chamarBlocoDeControle|estado.aguardar~regout\);

-- Location: LCCOMB_X40_Y35_N30
\chamarBlocoDeControle|Selector8~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \chamarBlocoDeControle|Selector8~0_combout\ = (\go~combout\ & \chamarBlocoDeControle|estado.aguardar~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \go~combout\,
	datad => \chamarBlocoDeControle|estado.aguardar~regout\,
	combout => \chamarBlocoDeControle|Selector8~0_combout\);

-- Location: LCFF_X40_Y35_N31
\chamarBlocoDeControle|estado.verificar\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \chamarBlocoDeControle|Selector8~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \chamarBlocoDeControle|estado.verificar~regout\);

-- Location: LCCOMB_X41_Y35_N30
\chamarBlocoDeControle|Selector9~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \chamarBlocoDeControle|Selector9~0_combout\ = (\chamarBlocoDeControle|estado.verificar~regout\ & ((!\chamarBlocoOperacional|comparar1|Equal0~9_combout\) # (!\chamarBlocoOperacional|comparar1|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \chamarBlocoDeControle|estado.verificar~regout\,
	datac => \chamarBlocoOperacional|comparar1|Equal0~4_combout\,
	datad => \chamarBlocoOperacional|comparar1|Equal0~9_combout\,
	combout => \chamarBlocoDeControle|Selector9~0_combout\);

-- Location: LCFF_X41_Y35_N31
\chamarBlocoDeControle|estado.erro\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \chamarBlocoDeControle|Selector9~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \chamarBlocoDeControle|estado.erro~regout\);

-- Location: LCCOMB_X40_Y35_N12
\chamarBlocoDeControle|Selector13~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \chamarBlocoDeControle|Selector13~0_combout\ = (\chamarBlocoDeControle|estado.erro~regout\) # ((!\chamarBlocoDeControle|estado.reiniciar~regout\ & \chamarBlocoDeControle|erro_id~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \chamarBlocoDeControle|estado.reiniciar~regout\,
	datac => \chamarBlocoDeControle|erro_id~regout\,
	datad => \chamarBlocoDeControle|estado.erro~regout\,
	combout => \chamarBlocoDeControle|Selector13~0_combout\);

-- Location: LCFF_X40_Y35_N13
\chamarBlocoDeControle|erro_id\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \chamarBlocoDeControle|Selector13~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \chamarBlocoDeControle|erro_id~regout\);

-- Location: LCCOMB_X40_Y35_N26
\chamarBlocoOperacional|registrarErro|QRR~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \chamarBlocoOperacional|registrarErro|QRR~0_combout\ = (!\chamarBlocoOperacional|registrarErro|QRR\(0) & \chamarBlocoDeControle|erro_id~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \chamarBlocoOperacional|registrarErro|QRR\(0),
	datad => \chamarBlocoDeControle|erro_id~regout\,
	combout => \chamarBlocoOperacional|registrarErro|QRR~0_combout\);

-- Location: LCFF_X40_Y35_N27
\chamarBlocoOperacional|registrarErro|QRR[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \chamarBlocoOperacional|registrarErro|QRR~0_combout\,
	ena => \chamarBlocoOperacional|registrarErro|QRR[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \chamarBlocoOperacional|registrarErro|QRR\(0));

-- Location: LCCOMB_X40_Y35_N22
\chamarBlocoDeControle|Selector11~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \chamarBlocoDeControle|Selector11~0_combout\ = (\chamarBlocoOperacional|registrarErro|QRR\(0) & (\chamarBlocoOperacional|registrarErro|QRR\(1) & \chamarBlocoDeControle|estado.erro~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \chamarBlocoOperacional|registrarErro|QRR\(0),
	datac => \chamarBlocoOperacional|registrarErro|QRR\(1),
	datad => \chamarBlocoDeControle|estado.erro~regout\,
	combout => \chamarBlocoDeControle|Selector11~0_combout\);

-- Location: LCCOMB_X41_Y35_N16
\chamarBlocoDeControle|Selector11~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \chamarBlocoDeControle|Selector11~1_combout\ = (\chamarBlocoDeControle|Selector11~0_combout\) # ((!\chamarBlocoOperacional|comparar2|Equal0~4_combout\ & \chamarBlocoDeControle|estado.reiniciar~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \chamarBlocoOperacional|comparar2|Equal0~4_combout\,
	datac => \chamarBlocoDeControle|estado.reiniciar~regout\,
	datad => \chamarBlocoDeControle|Selector11~0_combout\,
	combout => \chamarBlocoDeControle|Selector11~1_combout\);

-- Location: LCFF_X41_Y35_N17
\chamarBlocoDeControle|estado.reiniciar\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \chamarBlocoDeControle|Selector11~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \chamarBlocoDeControle|estado.reiniciar~regout\);

-- Location: LCCOMB_X40_Y35_N16
\chamarBlocoDeControle|estado.estado0~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \chamarBlocoDeControle|estado.estado0~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \chamarBlocoDeControle|estado.estado0~feeder_combout\);

-- Location: LCFF_X40_Y35_N17
\chamarBlocoDeControle|estado.estado0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \chamarBlocoDeControle|estado.estado0~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \chamarBlocoDeControle|estado.estado0~regout\);

-- Location: LCCOMB_X41_Y35_N8
\chamarBlocoDeControle|Selector5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \chamarBlocoDeControle|Selector5~0_combout\ = ((\chamarBlocoDeControle|estado.inicio~regout\ & !\go~combout\)) # (!\chamarBlocoDeControle|estado.estado0~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \chamarBlocoDeControle|estado.inicio~regout\,
	datac => \go~combout\,
	datad => \chamarBlocoDeControle|estado.estado0~regout\,
	combout => \chamarBlocoDeControle|Selector5~0_combout\);

-- Location: LCCOMB_X41_Y35_N6
\chamarBlocoDeControle|Selector5~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \chamarBlocoDeControle|Selector5~1_combout\ = (\chamarBlocoDeControle|Selector5~0_combout\) # ((\chamarBlocoOperacional|comparar2|Equal0~4_combout\ & \chamarBlocoDeControle|estado.reiniciar~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \chamarBlocoOperacional|comparar2|Equal0~4_combout\,
	datac => \chamarBlocoDeControle|estado.reiniciar~regout\,
	datad => \chamarBlocoDeControle|Selector5~0_combout\,
	combout => \chamarBlocoDeControle|Selector5~1_combout\);

-- Location: LCFF_X41_Y35_N7
\chamarBlocoDeControle|estado.inicio\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \chamarBlocoDeControle|Selector5~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \chamarBlocoDeControle|estado.inicio~regout\);

-- Location: LCCOMB_X40_Y35_N0
\chamarBlocoDeControle|Selector6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \chamarBlocoDeControle|Selector6~0_combout\ = (\go~combout\ & \chamarBlocoDeControle|estado.inicio~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \go~combout\,
	datad => \chamarBlocoDeControle|estado.inicio~regout\,
	combout => \chamarBlocoDeControle|Selector6~0_combout\);

-- Location: LCFF_X40_Y35_N1
\chamarBlocoDeControle|estado.registrar\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \chamarBlocoDeControle|Selector6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \chamarBlocoDeControle|estado.registrar~regout\);

-- Location: LCCOMB_X40_Y35_N4
\chamarBlocoDeControle|Selector3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \chamarBlocoDeControle|Selector3~0_combout\ = (\chamarBlocoDeControle|A~regout\ & ((\chamarBlocoDeControle|estado.registrar~regout\) # ((\chamarBlocoDeControle|estado.verificar~regout\) # (\chamarBlocoDeControle|estado.abrir~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \chamarBlocoDeControle|A~regout\,
	datab => \chamarBlocoDeControle|estado.registrar~regout\,
	datac => \chamarBlocoDeControle|estado.verificar~regout\,
	datad => \chamarBlocoDeControle|estado.abrir~regout\,
	combout => \chamarBlocoDeControle|Selector3~0_combout\);

-- Location: LCCOMB_X40_Y35_N24
\chamarBlocoDeControle|Selector3~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \chamarBlocoDeControle|Selector3~1_combout\ = (\chamarBlocoDeControle|estado.reiniciar~regout\) # ((\chamarBlocoDeControle|Selector3~0_combout\) # (\chamarBlocoDeControle|estado.erro~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \chamarBlocoDeControle|estado.reiniciar~regout\,
	datac => \chamarBlocoDeControle|Selector3~0_combout\,
	datad => \chamarBlocoDeControle|estado.erro~regout\,
	combout => \chamarBlocoDeControle|Selector3~1_combout\);

-- Location: LCFF_X40_Y35_N25
\chamarBlocoDeControle|A\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \chamarBlocoDeControle|Selector3~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \chamarBlocoDeControle|A~regout\);

-- Location: LCCOMB_X40_Y35_N10
\chamarBlocoDeControle|Selector2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \chamarBlocoDeControle|Selector2~1_combout\ = (\chamarBlocoDeControle|estado.abrir~regout\) # ((\chamarBlocoDeControle|P~regout\ & ((\chamarBlocoDeControle|estado.inicio~regout\) # (!\chamarBlocoDeControle|Selector2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \chamarBlocoDeControle|estado.inicio~regout\,
	datab => \chamarBlocoDeControle|Selector2~0_combout\,
	datac => \chamarBlocoDeControle|P~regout\,
	datad => \chamarBlocoDeControle|estado.abrir~regout\,
	combout => \chamarBlocoDeControle|Selector2~1_combout\);

-- Location: LCFF_X40_Y35_N11
\chamarBlocoDeControle|P\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \chamarBlocoDeControle|Selector2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \chamarBlocoDeControle|P~regout\);

-- Location: PIN_C16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\A~I\ : cycloneii_io
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
	datain => \chamarBlocoDeControle|A~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_A);

-- Location: PIN_B16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\P~I\ : cycloneii_io
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
	datain => \chamarBlocoDeControle|P~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_P);
END structure;


