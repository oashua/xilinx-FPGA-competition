-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
-- Date        : Thu Nov 12 09:54:16 2020
-- Host        : LAPTOP-NVARLAE3 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               D:/xilinx/project/device_read_wifi/device_read_wifi.srcs/sources_1/bd/design_1/ip/design_1_ads8688_0_0/design_1_ads8688_0_0_sim_netlist.vhdl
-- Design      : design_1_ads8688_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_ads8688_0_0_clkdiv is
  port (
    SCLK : out STD_LOGIC;
    CLK_2M : out STD_LOGIC;
    CLK_50M : in STD_LOGIC;
    CS : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_ads8688_0_0_clkdiv : entity is "clkdiv";
end design_1_ads8688_0_0_clkdiv;

architecture STRUCTURE of design_1_ads8688_0_0_clkdiv is
  signal clear : STD_LOGIC;
  signal clk_n : STD_LOGIC;
  signal clk_n_i_1_n_0 : STD_LOGIC;
  signal clk_n_i_2_n_0 : STD_LOGIC;
  signal clk_n_i_3_n_0 : STD_LOGIC;
  signal clk_n_i_4_n_0 : STD_LOGIC;
  signal clk_n_i_5_n_0 : STD_LOGIC;
  signal clk_n_i_6_n_0 : STD_LOGIC;
  signal clk_p : STD_LOGIC;
  signal clk_p_i_1_n_0 : STD_LOGIC;
  signal clk_p_i_2_n_0 : STD_LOGIC;
  signal clk_p_i_3_n_0 : STD_LOGIC;
  signal clk_p_i_4_n_0 : STD_LOGIC;
  signal clk_p_i_5_n_0 : STD_LOGIC;
  signal clk_p_i_6_n_0 : STD_LOGIC;
  signal \cnt_n0_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \cnt_n0_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \cnt_n0_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \cnt_n0_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \cnt_n0_carry__0_n_0\ : STD_LOGIC;
  signal \cnt_n0_carry__0_n_1\ : STD_LOGIC;
  signal \cnt_n0_carry__0_n_2\ : STD_LOGIC;
  signal \cnt_n0_carry__0_n_3\ : STD_LOGIC;
  signal \cnt_n0_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \cnt_n0_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \cnt_n0_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \cnt_n0_carry__1_n_2\ : STD_LOGIC;
  signal \cnt_n0_carry__1_n_3\ : STD_LOGIC;
  signal cnt_n0_carry_i_1_n_0 : STD_LOGIC;
  signal cnt_n0_carry_i_2_n_0 : STD_LOGIC;
  signal cnt_n0_carry_i_3_n_0 : STD_LOGIC;
  signal cnt_n0_carry_i_4_n_0 : STD_LOGIC;
  signal cnt_n0_carry_n_0 : STD_LOGIC;
  signal cnt_n0_carry_n_1 : STD_LOGIC;
  signal cnt_n0_carry_n_2 : STD_LOGIC;
  signal cnt_n0_carry_n_3 : STD_LOGIC;
  signal \cnt_n[0]_i_2_n_0\ : STD_LOGIC;
  signal cnt_n_reg : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \cnt_n_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \cnt_n_reg[0]_i_1_n_1\ : STD_LOGIC;
  signal \cnt_n_reg[0]_i_1_n_2\ : STD_LOGIC;
  signal \cnt_n_reg[0]_i_1_n_3\ : STD_LOGIC;
  signal \cnt_n_reg[0]_i_1_n_4\ : STD_LOGIC;
  signal \cnt_n_reg[0]_i_1_n_5\ : STD_LOGIC;
  signal \cnt_n_reg[0]_i_1_n_6\ : STD_LOGIC;
  signal \cnt_n_reg[0]_i_1_n_7\ : STD_LOGIC;
  signal \cnt_n_reg[12]_i_1_n_0\ : STD_LOGIC;
  signal \cnt_n_reg[12]_i_1_n_1\ : STD_LOGIC;
  signal \cnt_n_reg[12]_i_1_n_2\ : STD_LOGIC;
  signal \cnt_n_reg[12]_i_1_n_3\ : STD_LOGIC;
  signal \cnt_n_reg[12]_i_1_n_4\ : STD_LOGIC;
  signal \cnt_n_reg[12]_i_1_n_5\ : STD_LOGIC;
  signal \cnt_n_reg[12]_i_1_n_6\ : STD_LOGIC;
  signal \cnt_n_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \cnt_n_reg[16]_i_1_n_0\ : STD_LOGIC;
  signal \cnt_n_reg[16]_i_1_n_1\ : STD_LOGIC;
  signal \cnt_n_reg[16]_i_1_n_2\ : STD_LOGIC;
  signal \cnt_n_reg[16]_i_1_n_3\ : STD_LOGIC;
  signal \cnt_n_reg[16]_i_1_n_4\ : STD_LOGIC;
  signal \cnt_n_reg[16]_i_1_n_5\ : STD_LOGIC;
  signal \cnt_n_reg[16]_i_1_n_6\ : STD_LOGIC;
  signal \cnt_n_reg[16]_i_1_n_7\ : STD_LOGIC;
  signal \cnt_n_reg[20]_i_1_n_0\ : STD_LOGIC;
  signal \cnt_n_reg[20]_i_1_n_1\ : STD_LOGIC;
  signal \cnt_n_reg[20]_i_1_n_2\ : STD_LOGIC;
  signal \cnt_n_reg[20]_i_1_n_3\ : STD_LOGIC;
  signal \cnt_n_reg[20]_i_1_n_4\ : STD_LOGIC;
  signal \cnt_n_reg[20]_i_1_n_5\ : STD_LOGIC;
  signal \cnt_n_reg[20]_i_1_n_6\ : STD_LOGIC;
  signal \cnt_n_reg[20]_i_1_n_7\ : STD_LOGIC;
  signal \cnt_n_reg[24]_i_1_n_0\ : STD_LOGIC;
  signal \cnt_n_reg[24]_i_1_n_1\ : STD_LOGIC;
  signal \cnt_n_reg[24]_i_1_n_2\ : STD_LOGIC;
  signal \cnt_n_reg[24]_i_1_n_3\ : STD_LOGIC;
  signal \cnt_n_reg[24]_i_1_n_4\ : STD_LOGIC;
  signal \cnt_n_reg[24]_i_1_n_5\ : STD_LOGIC;
  signal \cnt_n_reg[24]_i_1_n_6\ : STD_LOGIC;
  signal \cnt_n_reg[24]_i_1_n_7\ : STD_LOGIC;
  signal \cnt_n_reg[28]_i_1_n_1\ : STD_LOGIC;
  signal \cnt_n_reg[28]_i_1_n_2\ : STD_LOGIC;
  signal \cnt_n_reg[28]_i_1_n_3\ : STD_LOGIC;
  signal \cnt_n_reg[28]_i_1_n_4\ : STD_LOGIC;
  signal \cnt_n_reg[28]_i_1_n_5\ : STD_LOGIC;
  signal \cnt_n_reg[28]_i_1_n_6\ : STD_LOGIC;
  signal \cnt_n_reg[28]_i_1_n_7\ : STD_LOGIC;
  signal \cnt_n_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \cnt_n_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \cnt_n_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \cnt_n_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \cnt_n_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \cnt_n_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \cnt_n_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \cnt_n_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \cnt_n_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \cnt_n_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \cnt_n_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \cnt_n_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \cnt_n_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \cnt_n_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \cnt_n_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \cnt_n_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal \cnt_p0_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \cnt_p0_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \cnt_p0_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \cnt_p0_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \cnt_p0_carry__0_n_0\ : STD_LOGIC;
  signal \cnt_p0_carry__0_n_1\ : STD_LOGIC;
  signal \cnt_p0_carry__0_n_2\ : STD_LOGIC;
  signal \cnt_p0_carry__0_n_3\ : STD_LOGIC;
  signal \cnt_p0_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \cnt_p0_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \cnt_p0_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \cnt_p0_carry__1_n_1\ : STD_LOGIC;
  signal \cnt_p0_carry__1_n_2\ : STD_LOGIC;
  signal \cnt_p0_carry__1_n_3\ : STD_LOGIC;
  signal cnt_p0_carry_i_1_n_0 : STD_LOGIC;
  signal cnt_p0_carry_i_2_n_0 : STD_LOGIC;
  signal cnt_p0_carry_i_3_n_0 : STD_LOGIC;
  signal cnt_p0_carry_i_4_n_0 : STD_LOGIC;
  signal cnt_p0_carry_n_0 : STD_LOGIC;
  signal cnt_p0_carry_n_1 : STD_LOGIC;
  signal cnt_p0_carry_n_2 : STD_LOGIC;
  signal cnt_p0_carry_n_3 : STD_LOGIC;
  signal \cnt_p[0]_i_2_n_0\ : STD_LOGIC;
  signal cnt_p_reg : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \cnt_p_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \cnt_p_reg[0]_i_1_n_1\ : STD_LOGIC;
  signal \cnt_p_reg[0]_i_1_n_2\ : STD_LOGIC;
  signal \cnt_p_reg[0]_i_1_n_3\ : STD_LOGIC;
  signal \cnt_p_reg[0]_i_1_n_4\ : STD_LOGIC;
  signal \cnt_p_reg[0]_i_1_n_5\ : STD_LOGIC;
  signal \cnt_p_reg[0]_i_1_n_6\ : STD_LOGIC;
  signal \cnt_p_reg[0]_i_1_n_7\ : STD_LOGIC;
  signal \cnt_p_reg[12]_i_1_n_0\ : STD_LOGIC;
  signal \cnt_p_reg[12]_i_1_n_1\ : STD_LOGIC;
  signal \cnt_p_reg[12]_i_1_n_2\ : STD_LOGIC;
  signal \cnt_p_reg[12]_i_1_n_3\ : STD_LOGIC;
  signal \cnt_p_reg[12]_i_1_n_4\ : STD_LOGIC;
  signal \cnt_p_reg[12]_i_1_n_5\ : STD_LOGIC;
  signal \cnt_p_reg[12]_i_1_n_6\ : STD_LOGIC;
  signal \cnt_p_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \cnt_p_reg[16]_i_1_n_0\ : STD_LOGIC;
  signal \cnt_p_reg[16]_i_1_n_1\ : STD_LOGIC;
  signal \cnt_p_reg[16]_i_1_n_2\ : STD_LOGIC;
  signal \cnt_p_reg[16]_i_1_n_3\ : STD_LOGIC;
  signal \cnt_p_reg[16]_i_1_n_4\ : STD_LOGIC;
  signal \cnt_p_reg[16]_i_1_n_5\ : STD_LOGIC;
  signal \cnt_p_reg[16]_i_1_n_6\ : STD_LOGIC;
  signal \cnt_p_reg[16]_i_1_n_7\ : STD_LOGIC;
  signal \cnt_p_reg[20]_i_1_n_0\ : STD_LOGIC;
  signal \cnt_p_reg[20]_i_1_n_1\ : STD_LOGIC;
  signal \cnt_p_reg[20]_i_1_n_2\ : STD_LOGIC;
  signal \cnt_p_reg[20]_i_1_n_3\ : STD_LOGIC;
  signal \cnt_p_reg[20]_i_1_n_4\ : STD_LOGIC;
  signal \cnt_p_reg[20]_i_1_n_5\ : STD_LOGIC;
  signal \cnt_p_reg[20]_i_1_n_6\ : STD_LOGIC;
  signal \cnt_p_reg[20]_i_1_n_7\ : STD_LOGIC;
  signal \cnt_p_reg[24]_i_1_n_0\ : STD_LOGIC;
  signal \cnt_p_reg[24]_i_1_n_1\ : STD_LOGIC;
  signal \cnt_p_reg[24]_i_1_n_2\ : STD_LOGIC;
  signal \cnt_p_reg[24]_i_1_n_3\ : STD_LOGIC;
  signal \cnt_p_reg[24]_i_1_n_4\ : STD_LOGIC;
  signal \cnt_p_reg[24]_i_1_n_5\ : STD_LOGIC;
  signal \cnt_p_reg[24]_i_1_n_6\ : STD_LOGIC;
  signal \cnt_p_reg[24]_i_1_n_7\ : STD_LOGIC;
  signal \cnt_p_reg[28]_i_1_n_1\ : STD_LOGIC;
  signal \cnt_p_reg[28]_i_1_n_2\ : STD_LOGIC;
  signal \cnt_p_reg[28]_i_1_n_3\ : STD_LOGIC;
  signal \cnt_p_reg[28]_i_1_n_4\ : STD_LOGIC;
  signal \cnt_p_reg[28]_i_1_n_5\ : STD_LOGIC;
  signal \cnt_p_reg[28]_i_1_n_6\ : STD_LOGIC;
  signal \cnt_p_reg[28]_i_1_n_7\ : STD_LOGIC;
  signal \cnt_p_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \cnt_p_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \cnt_p_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \cnt_p_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \cnt_p_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \cnt_p_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \cnt_p_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \cnt_p_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \cnt_p_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \cnt_p_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \cnt_p_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \cnt_p_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \cnt_p_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \cnt_p_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \cnt_p_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \cnt_p_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal NLW_cnt_n0_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_cnt_n0_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_cnt_n0_carry__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_cnt_n0_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_cnt_n_reg[28]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal NLW_cnt_p0_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_cnt_p0_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_cnt_p0_carry__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_cnt_p0_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_cnt_p_reg[28]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of CS_i_2 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of SCLK_INST_0 : label is "soft_lutpair0";
begin
CS_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => clk_p,
      I1 => clk_n,
      O => CLK_2M
    );
SCLK_INST_0: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => clk_n,
      I1 => clk_p,
      I2 => CS,
      O => SCLK
    );
clk_n_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => clk_n_i_2_n_0,
      I1 => clk_n_i_3_n_0,
      I2 => clk_n_i_4_n_0,
      I3 => clk_n_i_5_n_0,
      I4 => clk_n_i_6_n_0,
      O => clk_n_i_1_n_0
    );
clk_n_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => cnt_n_reg(8),
      I1 => cnt_n_reg(9),
      I2 => cnt_n_reg(6),
      I3 => cnt_n_reg(7),
      I4 => cnt_n_reg(5),
      I5 => cnt_n_reg(4),
      O => clk_n_i_2_n_0
    );
clk_n_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => cnt_n_reg(26),
      I1 => cnt_n_reg(27),
      I2 => cnt_n_reg(24),
      I3 => cnt_n_reg(25),
      I4 => cnt_n_reg(23),
      I5 => cnt_n_reg(22),
      O => clk_n_i_3_n_0
    );
clk_n_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFF8"
    )
        port map (
      I0 => cnt_n_reg(2),
      I1 => cnt_n_reg(3),
      I2 => cnt_n_reg(30),
      I3 => cnt_n_reg(31),
      I4 => cnt_n_reg(29),
      I5 => cnt_n_reg(28),
      O => clk_n_i_4_n_0
    );
clk_n_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => cnt_n_reg(20),
      I1 => cnt_n_reg(21),
      I2 => cnt_n_reg(18),
      I3 => cnt_n_reg(19),
      I4 => cnt_n_reg(17),
      I5 => cnt_n_reg(16),
      O => clk_n_i_5_n_0
    );
clk_n_i_6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => cnt_n_reg(14),
      I1 => cnt_n_reg(15),
      I2 => cnt_n_reg(12),
      I3 => cnt_n_reg(13),
      I4 => cnt_n_reg(11),
      I5 => cnt_n_reg(10),
      O => clk_n_i_6_n_0
    );
clk_n_reg: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => CLK_50M,
      CE => '1',
      D => clk_n_i_1_n_0,
      Q => clk_n,
      R => '0'
    );
clk_p_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => clk_p_i_2_n_0,
      I1 => clk_p_i_3_n_0,
      I2 => clk_p_i_4_n_0,
      I3 => clk_p_i_5_n_0,
      I4 => clk_p_i_6_n_0,
      O => clk_p_i_1_n_0
    );
clk_p_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => cnt_p_reg(8),
      I1 => cnt_p_reg(9),
      I2 => cnt_p_reg(6),
      I3 => cnt_p_reg(7),
      I4 => cnt_p_reg(5),
      I5 => cnt_p_reg(4),
      O => clk_p_i_2_n_0
    );
clk_p_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => cnt_p_reg(26),
      I1 => cnt_p_reg(27),
      I2 => cnt_p_reg(24),
      I3 => cnt_p_reg(25),
      I4 => cnt_p_reg(23),
      I5 => cnt_p_reg(22),
      O => clk_p_i_3_n_0
    );
clk_p_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFF8"
    )
        port map (
      I0 => cnt_p_reg(2),
      I1 => cnt_p_reg(3),
      I2 => cnt_p_reg(30),
      I3 => cnt_p_reg(31),
      I4 => cnt_p_reg(29),
      I5 => cnt_p_reg(28),
      O => clk_p_i_4_n_0
    );
clk_p_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => cnt_p_reg(20),
      I1 => cnt_p_reg(21),
      I2 => cnt_p_reg(18),
      I3 => cnt_p_reg(19),
      I4 => cnt_p_reg(17),
      I5 => cnt_p_reg(16),
      O => clk_p_i_5_n_0
    );
clk_p_i_6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => cnt_p_reg(14),
      I1 => cnt_p_reg(15),
      I2 => cnt_p_reg(12),
      I3 => cnt_p_reg(13),
      I4 => cnt_p_reg(11),
      I5 => cnt_p_reg(10),
      O => clk_p_i_6_n_0
    );
clk_p_reg: unisim.vcomponents.FDRE
     port map (
      C => CLK_50M,
      CE => '1',
      D => clk_p_i_1_n_0,
      Q => clk_p,
      R => '0'
    );
cnt_n0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => cnt_n0_carry_n_0,
      CO(2) => cnt_n0_carry_n_1,
      CO(1) => cnt_n0_carry_n_2,
      CO(0) => cnt_n0_carry_n_3,
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => NLW_cnt_n0_carry_O_UNCONNECTED(3 downto 0),
      S(3) => cnt_n0_carry_i_1_n_0,
      S(2) => cnt_n0_carry_i_2_n_0,
      S(1) => cnt_n0_carry_i_3_n_0,
      S(0) => cnt_n0_carry_i_4_n_0
    );
\cnt_n0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => cnt_n0_carry_n_0,
      CO(3) => \cnt_n0_carry__0_n_0\,
      CO(2) => \cnt_n0_carry__0_n_1\,
      CO(1) => \cnt_n0_carry__0_n_2\,
      CO(0) => \cnt_n0_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_cnt_n0_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => \cnt_n0_carry__0_i_1_n_0\,
      S(2) => \cnt_n0_carry__0_i_2_n_0\,
      S(1) => \cnt_n0_carry__0_i_3_n_0\,
      S(0) => \cnt_n0_carry__0_i_4_n_0\
    );
\cnt_n0_carry__0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => cnt_n_reg(23),
      I1 => cnt_n_reg(22),
      I2 => cnt_n_reg(21),
      O => \cnt_n0_carry__0_i_1_n_0\
    );
\cnt_n0_carry__0_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => cnt_n_reg(20),
      I1 => cnt_n_reg(19),
      I2 => cnt_n_reg(18),
      O => \cnt_n0_carry__0_i_2_n_0\
    );
\cnt_n0_carry__0_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => cnt_n_reg(17),
      I1 => cnt_n_reg(16),
      I2 => cnt_n_reg(15),
      O => \cnt_n0_carry__0_i_3_n_0\
    );
\cnt_n0_carry__0_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => cnt_n_reg(14),
      I1 => cnt_n_reg(13),
      I2 => cnt_n_reg(12),
      O => \cnt_n0_carry__0_i_4_n_0\
    );
\cnt_n0_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \cnt_n0_carry__0_n_0\,
      CO(3) => \NLW_cnt_n0_carry__1_CO_UNCONNECTED\(3),
      CO(2) => clear,
      CO(1) => \cnt_n0_carry__1_n_2\,
      CO(0) => \cnt_n0_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_cnt_n0_carry__1_O_UNCONNECTED\(3 downto 0),
      S(3) => '0',
      S(2) => \cnt_n0_carry__1_i_1_n_0\,
      S(1) => \cnt_n0_carry__1_i_2_n_0\,
      S(0) => \cnt_n0_carry__1_i_3_n_0\
    );
\cnt_n0_carry__1_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cnt_n_reg(31),
      I1 => cnt_n_reg(30),
      O => \cnt_n0_carry__1_i_1_n_0\
    );
\cnt_n0_carry__1_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => cnt_n_reg(29),
      I1 => cnt_n_reg(28),
      I2 => cnt_n_reg(27),
      O => \cnt_n0_carry__1_i_2_n_0\
    );
\cnt_n0_carry__1_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => cnt_n_reg(26),
      I1 => cnt_n_reg(25),
      I2 => cnt_n_reg(24),
      O => \cnt_n0_carry__1_i_3_n_0\
    );
cnt_n0_carry_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => cnt_n_reg(11),
      I1 => cnt_n_reg(10),
      I2 => cnt_n_reg(9),
      O => cnt_n0_carry_i_1_n_0
    );
cnt_n0_carry_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => cnt_n_reg(8),
      I1 => cnt_n_reg(7),
      I2 => cnt_n_reg(6),
      O => cnt_n0_carry_i_2_n_0
    );
cnt_n0_carry_i_3: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => cnt_n_reg(5),
      I1 => cnt_n_reg(4),
      I2 => cnt_n_reg(3),
      O => cnt_n0_carry_i_3_n_0
    );
cnt_n0_carry_i_4: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => cnt_n_reg(2),
      I1 => cnt_n_reg(1),
      I2 => cnt_n_reg(0),
      O => cnt_n0_carry_i_4_n_0
    );
\cnt_n[0]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cnt_n_reg(0),
      O => \cnt_n[0]_i_2_n_0\
    );
\cnt_n_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => CLK_50M,
      CE => '1',
      D => \cnt_n_reg[0]_i_1_n_7\,
      Q => cnt_n_reg(0),
      R => clear
    );
\cnt_n_reg[0]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \cnt_n_reg[0]_i_1_n_0\,
      CO(2) => \cnt_n_reg[0]_i_1_n_1\,
      CO(1) => \cnt_n_reg[0]_i_1_n_2\,
      CO(0) => \cnt_n_reg[0]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \cnt_n_reg[0]_i_1_n_4\,
      O(2) => \cnt_n_reg[0]_i_1_n_5\,
      O(1) => \cnt_n_reg[0]_i_1_n_6\,
      O(0) => \cnt_n_reg[0]_i_1_n_7\,
      S(3 downto 1) => cnt_n_reg(3 downto 1),
      S(0) => \cnt_n[0]_i_2_n_0\
    );
\cnt_n_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => CLK_50M,
      CE => '1',
      D => \cnt_n_reg[8]_i_1_n_5\,
      Q => cnt_n_reg(10),
      R => clear
    );
\cnt_n_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => CLK_50M,
      CE => '1',
      D => \cnt_n_reg[8]_i_1_n_4\,
      Q => cnt_n_reg(11),
      R => clear
    );
\cnt_n_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => CLK_50M,
      CE => '1',
      D => \cnt_n_reg[12]_i_1_n_7\,
      Q => cnt_n_reg(12),
      R => clear
    );
\cnt_n_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \cnt_n_reg[8]_i_1_n_0\,
      CO(3) => \cnt_n_reg[12]_i_1_n_0\,
      CO(2) => \cnt_n_reg[12]_i_1_n_1\,
      CO(1) => \cnt_n_reg[12]_i_1_n_2\,
      CO(0) => \cnt_n_reg[12]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \cnt_n_reg[12]_i_1_n_4\,
      O(2) => \cnt_n_reg[12]_i_1_n_5\,
      O(1) => \cnt_n_reg[12]_i_1_n_6\,
      O(0) => \cnt_n_reg[12]_i_1_n_7\,
      S(3 downto 0) => cnt_n_reg(15 downto 12)
    );
\cnt_n_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => CLK_50M,
      CE => '1',
      D => \cnt_n_reg[12]_i_1_n_6\,
      Q => cnt_n_reg(13),
      R => clear
    );
\cnt_n_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => CLK_50M,
      CE => '1',
      D => \cnt_n_reg[12]_i_1_n_5\,
      Q => cnt_n_reg(14),
      R => clear
    );
\cnt_n_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => CLK_50M,
      CE => '1',
      D => \cnt_n_reg[12]_i_1_n_4\,
      Q => cnt_n_reg(15),
      R => clear
    );
\cnt_n_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => CLK_50M,
      CE => '1',
      D => \cnt_n_reg[16]_i_1_n_7\,
      Q => cnt_n_reg(16),
      R => clear
    );
\cnt_n_reg[16]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \cnt_n_reg[12]_i_1_n_0\,
      CO(3) => \cnt_n_reg[16]_i_1_n_0\,
      CO(2) => \cnt_n_reg[16]_i_1_n_1\,
      CO(1) => \cnt_n_reg[16]_i_1_n_2\,
      CO(0) => \cnt_n_reg[16]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \cnt_n_reg[16]_i_1_n_4\,
      O(2) => \cnt_n_reg[16]_i_1_n_5\,
      O(1) => \cnt_n_reg[16]_i_1_n_6\,
      O(0) => \cnt_n_reg[16]_i_1_n_7\,
      S(3 downto 0) => cnt_n_reg(19 downto 16)
    );
\cnt_n_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => CLK_50M,
      CE => '1',
      D => \cnt_n_reg[16]_i_1_n_6\,
      Q => cnt_n_reg(17),
      R => clear
    );
\cnt_n_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => CLK_50M,
      CE => '1',
      D => \cnt_n_reg[16]_i_1_n_5\,
      Q => cnt_n_reg(18),
      R => clear
    );
\cnt_n_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => CLK_50M,
      CE => '1',
      D => \cnt_n_reg[16]_i_1_n_4\,
      Q => cnt_n_reg(19),
      R => clear
    );
\cnt_n_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => CLK_50M,
      CE => '1',
      D => \cnt_n_reg[0]_i_1_n_6\,
      Q => cnt_n_reg(1),
      R => clear
    );
\cnt_n_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => CLK_50M,
      CE => '1',
      D => \cnt_n_reg[20]_i_1_n_7\,
      Q => cnt_n_reg(20),
      R => clear
    );
\cnt_n_reg[20]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \cnt_n_reg[16]_i_1_n_0\,
      CO(3) => \cnt_n_reg[20]_i_1_n_0\,
      CO(2) => \cnt_n_reg[20]_i_1_n_1\,
      CO(1) => \cnt_n_reg[20]_i_1_n_2\,
      CO(0) => \cnt_n_reg[20]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \cnt_n_reg[20]_i_1_n_4\,
      O(2) => \cnt_n_reg[20]_i_1_n_5\,
      O(1) => \cnt_n_reg[20]_i_1_n_6\,
      O(0) => \cnt_n_reg[20]_i_1_n_7\,
      S(3 downto 0) => cnt_n_reg(23 downto 20)
    );
\cnt_n_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => CLK_50M,
      CE => '1',
      D => \cnt_n_reg[20]_i_1_n_6\,
      Q => cnt_n_reg(21),
      R => clear
    );
\cnt_n_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => CLK_50M,
      CE => '1',
      D => \cnt_n_reg[20]_i_1_n_5\,
      Q => cnt_n_reg(22),
      R => clear
    );
\cnt_n_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => CLK_50M,
      CE => '1',
      D => \cnt_n_reg[20]_i_1_n_4\,
      Q => cnt_n_reg(23),
      R => clear
    );
\cnt_n_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => CLK_50M,
      CE => '1',
      D => \cnt_n_reg[24]_i_1_n_7\,
      Q => cnt_n_reg(24),
      R => clear
    );
\cnt_n_reg[24]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \cnt_n_reg[20]_i_1_n_0\,
      CO(3) => \cnt_n_reg[24]_i_1_n_0\,
      CO(2) => \cnt_n_reg[24]_i_1_n_1\,
      CO(1) => \cnt_n_reg[24]_i_1_n_2\,
      CO(0) => \cnt_n_reg[24]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \cnt_n_reg[24]_i_1_n_4\,
      O(2) => \cnt_n_reg[24]_i_1_n_5\,
      O(1) => \cnt_n_reg[24]_i_1_n_6\,
      O(0) => \cnt_n_reg[24]_i_1_n_7\,
      S(3 downto 0) => cnt_n_reg(27 downto 24)
    );
\cnt_n_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => CLK_50M,
      CE => '1',
      D => \cnt_n_reg[24]_i_1_n_6\,
      Q => cnt_n_reg(25),
      R => clear
    );
\cnt_n_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => CLK_50M,
      CE => '1',
      D => \cnt_n_reg[24]_i_1_n_5\,
      Q => cnt_n_reg(26),
      R => clear
    );
\cnt_n_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => CLK_50M,
      CE => '1',
      D => \cnt_n_reg[24]_i_1_n_4\,
      Q => cnt_n_reg(27),
      R => clear
    );
\cnt_n_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => CLK_50M,
      CE => '1',
      D => \cnt_n_reg[28]_i_1_n_7\,
      Q => cnt_n_reg(28),
      R => clear
    );
\cnt_n_reg[28]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \cnt_n_reg[24]_i_1_n_0\,
      CO(3) => \NLW_cnt_n_reg[28]_i_1_CO_UNCONNECTED\(3),
      CO(2) => \cnt_n_reg[28]_i_1_n_1\,
      CO(1) => \cnt_n_reg[28]_i_1_n_2\,
      CO(0) => \cnt_n_reg[28]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \cnt_n_reg[28]_i_1_n_4\,
      O(2) => \cnt_n_reg[28]_i_1_n_5\,
      O(1) => \cnt_n_reg[28]_i_1_n_6\,
      O(0) => \cnt_n_reg[28]_i_1_n_7\,
      S(3 downto 0) => cnt_n_reg(31 downto 28)
    );
\cnt_n_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => CLK_50M,
      CE => '1',
      D => \cnt_n_reg[28]_i_1_n_6\,
      Q => cnt_n_reg(29),
      R => clear
    );
\cnt_n_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => CLK_50M,
      CE => '1',
      D => \cnt_n_reg[0]_i_1_n_5\,
      Q => cnt_n_reg(2),
      R => clear
    );
\cnt_n_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => CLK_50M,
      CE => '1',
      D => \cnt_n_reg[28]_i_1_n_5\,
      Q => cnt_n_reg(30),
      R => clear
    );
\cnt_n_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => CLK_50M,
      CE => '1',
      D => \cnt_n_reg[28]_i_1_n_4\,
      Q => cnt_n_reg(31),
      R => clear
    );
\cnt_n_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => CLK_50M,
      CE => '1',
      D => \cnt_n_reg[0]_i_1_n_4\,
      Q => cnt_n_reg(3),
      R => clear
    );
\cnt_n_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => CLK_50M,
      CE => '1',
      D => \cnt_n_reg[4]_i_1_n_7\,
      Q => cnt_n_reg(4),
      R => clear
    );
\cnt_n_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \cnt_n_reg[0]_i_1_n_0\,
      CO(3) => \cnt_n_reg[4]_i_1_n_0\,
      CO(2) => \cnt_n_reg[4]_i_1_n_1\,
      CO(1) => \cnt_n_reg[4]_i_1_n_2\,
      CO(0) => \cnt_n_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \cnt_n_reg[4]_i_1_n_4\,
      O(2) => \cnt_n_reg[4]_i_1_n_5\,
      O(1) => \cnt_n_reg[4]_i_1_n_6\,
      O(0) => \cnt_n_reg[4]_i_1_n_7\,
      S(3 downto 0) => cnt_n_reg(7 downto 4)
    );
\cnt_n_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => CLK_50M,
      CE => '1',
      D => \cnt_n_reg[4]_i_1_n_6\,
      Q => cnt_n_reg(5),
      R => clear
    );
\cnt_n_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => CLK_50M,
      CE => '1',
      D => \cnt_n_reg[4]_i_1_n_5\,
      Q => cnt_n_reg(6),
      R => clear
    );
\cnt_n_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => CLK_50M,
      CE => '1',
      D => \cnt_n_reg[4]_i_1_n_4\,
      Q => cnt_n_reg(7),
      R => clear
    );
\cnt_n_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => CLK_50M,
      CE => '1',
      D => \cnt_n_reg[8]_i_1_n_7\,
      Q => cnt_n_reg(8),
      R => clear
    );
\cnt_n_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \cnt_n_reg[4]_i_1_n_0\,
      CO(3) => \cnt_n_reg[8]_i_1_n_0\,
      CO(2) => \cnt_n_reg[8]_i_1_n_1\,
      CO(1) => \cnt_n_reg[8]_i_1_n_2\,
      CO(0) => \cnt_n_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \cnt_n_reg[8]_i_1_n_4\,
      O(2) => \cnt_n_reg[8]_i_1_n_5\,
      O(1) => \cnt_n_reg[8]_i_1_n_6\,
      O(0) => \cnt_n_reg[8]_i_1_n_7\,
      S(3 downto 0) => cnt_n_reg(11 downto 8)
    );
\cnt_n_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => CLK_50M,
      CE => '1',
      D => \cnt_n_reg[8]_i_1_n_6\,
      Q => cnt_n_reg(9),
      R => clear
    );
cnt_p0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => cnt_p0_carry_n_0,
      CO(2) => cnt_p0_carry_n_1,
      CO(1) => cnt_p0_carry_n_2,
      CO(0) => cnt_p0_carry_n_3,
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => NLW_cnt_p0_carry_O_UNCONNECTED(3 downto 0),
      S(3) => cnt_p0_carry_i_1_n_0,
      S(2) => cnt_p0_carry_i_2_n_0,
      S(1) => cnt_p0_carry_i_3_n_0,
      S(0) => cnt_p0_carry_i_4_n_0
    );
\cnt_p0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => cnt_p0_carry_n_0,
      CO(3) => \cnt_p0_carry__0_n_0\,
      CO(2) => \cnt_p0_carry__0_n_1\,
      CO(1) => \cnt_p0_carry__0_n_2\,
      CO(0) => \cnt_p0_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_cnt_p0_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => \cnt_p0_carry__0_i_1_n_0\,
      S(2) => \cnt_p0_carry__0_i_2_n_0\,
      S(1) => \cnt_p0_carry__0_i_3_n_0\,
      S(0) => \cnt_p0_carry__0_i_4_n_0\
    );
\cnt_p0_carry__0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => cnt_p_reg(23),
      I1 => cnt_p_reg(22),
      I2 => cnt_p_reg(21),
      O => \cnt_p0_carry__0_i_1_n_0\
    );
\cnt_p0_carry__0_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => cnt_p_reg(20),
      I1 => cnt_p_reg(19),
      I2 => cnt_p_reg(18),
      O => \cnt_p0_carry__0_i_2_n_0\
    );
\cnt_p0_carry__0_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => cnt_p_reg(17),
      I1 => cnt_p_reg(16),
      I2 => cnt_p_reg(15),
      O => \cnt_p0_carry__0_i_3_n_0\
    );
\cnt_p0_carry__0_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => cnt_p_reg(14),
      I1 => cnt_p_reg(13),
      I2 => cnt_p_reg(12),
      O => \cnt_p0_carry__0_i_4_n_0\
    );
\cnt_p0_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \cnt_p0_carry__0_n_0\,
      CO(3) => \NLW_cnt_p0_carry__1_CO_UNCONNECTED\(3),
      CO(2) => \cnt_p0_carry__1_n_1\,
      CO(1) => \cnt_p0_carry__1_n_2\,
      CO(0) => \cnt_p0_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_cnt_p0_carry__1_O_UNCONNECTED\(3 downto 0),
      S(3) => '0',
      S(2) => \cnt_p0_carry__1_i_1_n_0\,
      S(1) => \cnt_p0_carry__1_i_2_n_0\,
      S(0) => \cnt_p0_carry__1_i_3_n_0\
    );
\cnt_p0_carry__1_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cnt_p_reg(31),
      I1 => cnt_p_reg(30),
      O => \cnt_p0_carry__1_i_1_n_0\
    );
\cnt_p0_carry__1_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => cnt_p_reg(29),
      I1 => cnt_p_reg(28),
      I2 => cnt_p_reg(27),
      O => \cnt_p0_carry__1_i_2_n_0\
    );
\cnt_p0_carry__1_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => cnt_p_reg(26),
      I1 => cnt_p_reg(25),
      I2 => cnt_p_reg(24),
      O => \cnt_p0_carry__1_i_3_n_0\
    );
cnt_p0_carry_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => cnt_p_reg(11),
      I1 => cnt_p_reg(10),
      I2 => cnt_p_reg(9),
      O => cnt_p0_carry_i_1_n_0
    );
cnt_p0_carry_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => cnt_p_reg(8),
      I1 => cnt_p_reg(7),
      I2 => cnt_p_reg(6),
      O => cnt_p0_carry_i_2_n_0
    );
cnt_p0_carry_i_3: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => cnt_p_reg(5),
      I1 => cnt_p_reg(4),
      I2 => cnt_p_reg(3),
      O => cnt_p0_carry_i_3_n_0
    );
cnt_p0_carry_i_4: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => cnt_p_reg(2),
      I1 => cnt_p_reg(1),
      I2 => cnt_p_reg(0),
      O => cnt_p0_carry_i_4_n_0
    );
\cnt_p[0]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cnt_p_reg(0),
      O => \cnt_p[0]_i_2_n_0\
    );
\cnt_p_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => CLK_50M,
      CE => '1',
      D => \cnt_p_reg[0]_i_1_n_7\,
      Q => cnt_p_reg(0),
      R => \cnt_p0_carry__1_n_1\
    );
\cnt_p_reg[0]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \cnt_p_reg[0]_i_1_n_0\,
      CO(2) => \cnt_p_reg[0]_i_1_n_1\,
      CO(1) => \cnt_p_reg[0]_i_1_n_2\,
      CO(0) => \cnt_p_reg[0]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \cnt_p_reg[0]_i_1_n_4\,
      O(2) => \cnt_p_reg[0]_i_1_n_5\,
      O(1) => \cnt_p_reg[0]_i_1_n_6\,
      O(0) => \cnt_p_reg[0]_i_1_n_7\,
      S(3 downto 1) => cnt_p_reg(3 downto 1),
      S(0) => \cnt_p[0]_i_2_n_0\
    );
\cnt_p_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => CLK_50M,
      CE => '1',
      D => \cnt_p_reg[8]_i_1_n_5\,
      Q => cnt_p_reg(10),
      R => \cnt_p0_carry__1_n_1\
    );
\cnt_p_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => CLK_50M,
      CE => '1',
      D => \cnt_p_reg[8]_i_1_n_4\,
      Q => cnt_p_reg(11),
      R => \cnt_p0_carry__1_n_1\
    );
\cnt_p_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => CLK_50M,
      CE => '1',
      D => \cnt_p_reg[12]_i_1_n_7\,
      Q => cnt_p_reg(12),
      R => \cnt_p0_carry__1_n_1\
    );
\cnt_p_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \cnt_p_reg[8]_i_1_n_0\,
      CO(3) => \cnt_p_reg[12]_i_1_n_0\,
      CO(2) => \cnt_p_reg[12]_i_1_n_1\,
      CO(1) => \cnt_p_reg[12]_i_1_n_2\,
      CO(0) => \cnt_p_reg[12]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \cnt_p_reg[12]_i_1_n_4\,
      O(2) => \cnt_p_reg[12]_i_1_n_5\,
      O(1) => \cnt_p_reg[12]_i_1_n_6\,
      O(0) => \cnt_p_reg[12]_i_1_n_7\,
      S(3 downto 0) => cnt_p_reg(15 downto 12)
    );
\cnt_p_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => CLK_50M,
      CE => '1',
      D => \cnt_p_reg[12]_i_1_n_6\,
      Q => cnt_p_reg(13),
      R => \cnt_p0_carry__1_n_1\
    );
\cnt_p_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => CLK_50M,
      CE => '1',
      D => \cnt_p_reg[12]_i_1_n_5\,
      Q => cnt_p_reg(14),
      R => \cnt_p0_carry__1_n_1\
    );
\cnt_p_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => CLK_50M,
      CE => '1',
      D => \cnt_p_reg[12]_i_1_n_4\,
      Q => cnt_p_reg(15),
      R => \cnt_p0_carry__1_n_1\
    );
\cnt_p_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => CLK_50M,
      CE => '1',
      D => \cnt_p_reg[16]_i_1_n_7\,
      Q => cnt_p_reg(16),
      R => \cnt_p0_carry__1_n_1\
    );
\cnt_p_reg[16]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \cnt_p_reg[12]_i_1_n_0\,
      CO(3) => \cnt_p_reg[16]_i_1_n_0\,
      CO(2) => \cnt_p_reg[16]_i_1_n_1\,
      CO(1) => \cnt_p_reg[16]_i_1_n_2\,
      CO(0) => \cnt_p_reg[16]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \cnt_p_reg[16]_i_1_n_4\,
      O(2) => \cnt_p_reg[16]_i_1_n_5\,
      O(1) => \cnt_p_reg[16]_i_1_n_6\,
      O(0) => \cnt_p_reg[16]_i_1_n_7\,
      S(3 downto 0) => cnt_p_reg(19 downto 16)
    );
\cnt_p_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => CLK_50M,
      CE => '1',
      D => \cnt_p_reg[16]_i_1_n_6\,
      Q => cnt_p_reg(17),
      R => \cnt_p0_carry__1_n_1\
    );
\cnt_p_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => CLK_50M,
      CE => '1',
      D => \cnt_p_reg[16]_i_1_n_5\,
      Q => cnt_p_reg(18),
      R => \cnt_p0_carry__1_n_1\
    );
\cnt_p_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => CLK_50M,
      CE => '1',
      D => \cnt_p_reg[16]_i_1_n_4\,
      Q => cnt_p_reg(19),
      R => \cnt_p0_carry__1_n_1\
    );
\cnt_p_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => CLK_50M,
      CE => '1',
      D => \cnt_p_reg[0]_i_1_n_6\,
      Q => cnt_p_reg(1),
      R => \cnt_p0_carry__1_n_1\
    );
\cnt_p_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => CLK_50M,
      CE => '1',
      D => \cnt_p_reg[20]_i_1_n_7\,
      Q => cnt_p_reg(20),
      R => \cnt_p0_carry__1_n_1\
    );
\cnt_p_reg[20]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \cnt_p_reg[16]_i_1_n_0\,
      CO(3) => \cnt_p_reg[20]_i_1_n_0\,
      CO(2) => \cnt_p_reg[20]_i_1_n_1\,
      CO(1) => \cnt_p_reg[20]_i_1_n_2\,
      CO(0) => \cnt_p_reg[20]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \cnt_p_reg[20]_i_1_n_4\,
      O(2) => \cnt_p_reg[20]_i_1_n_5\,
      O(1) => \cnt_p_reg[20]_i_1_n_6\,
      O(0) => \cnt_p_reg[20]_i_1_n_7\,
      S(3 downto 0) => cnt_p_reg(23 downto 20)
    );
\cnt_p_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => CLK_50M,
      CE => '1',
      D => \cnt_p_reg[20]_i_1_n_6\,
      Q => cnt_p_reg(21),
      R => \cnt_p0_carry__1_n_1\
    );
\cnt_p_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => CLK_50M,
      CE => '1',
      D => \cnt_p_reg[20]_i_1_n_5\,
      Q => cnt_p_reg(22),
      R => \cnt_p0_carry__1_n_1\
    );
\cnt_p_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => CLK_50M,
      CE => '1',
      D => \cnt_p_reg[20]_i_1_n_4\,
      Q => cnt_p_reg(23),
      R => \cnt_p0_carry__1_n_1\
    );
\cnt_p_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => CLK_50M,
      CE => '1',
      D => \cnt_p_reg[24]_i_1_n_7\,
      Q => cnt_p_reg(24),
      R => \cnt_p0_carry__1_n_1\
    );
\cnt_p_reg[24]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \cnt_p_reg[20]_i_1_n_0\,
      CO(3) => \cnt_p_reg[24]_i_1_n_0\,
      CO(2) => \cnt_p_reg[24]_i_1_n_1\,
      CO(1) => \cnt_p_reg[24]_i_1_n_2\,
      CO(0) => \cnt_p_reg[24]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \cnt_p_reg[24]_i_1_n_4\,
      O(2) => \cnt_p_reg[24]_i_1_n_5\,
      O(1) => \cnt_p_reg[24]_i_1_n_6\,
      O(0) => \cnt_p_reg[24]_i_1_n_7\,
      S(3 downto 0) => cnt_p_reg(27 downto 24)
    );
\cnt_p_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => CLK_50M,
      CE => '1',
      D => \cnt_p_reg[24]_i_1_n_6\,
      Q => cnt_p_reg(25),
      R => \cnt_p0_carry__1_n_1\
    );
\cnt_p_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => CLK_50M,
      CE => '1',
      D => \cnt_p_reg[24]_i_1_n_5\,
      Q => cnt_p_reg(26),
      R => \cnt_p0_carry__1_n_1\
    );
\cnt_p_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => CLK_50M,
      CE => '1',
      D => \cnt_p_reg[24]_i_1_n_4\,
      Q => cnt_p_reg(27),
      R => \cnt_p0_carry__1_n_1\
    );
\cnt_p_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => CLK_50M,
      CE => '1',
      D => \cnt_p_reg[28]_i_1_n_7\,
      Q => cnt_p_reg(28),
      R => \cnt_p0_carry__1_n_1\
    );
\cnt_p_reg[28]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \cnt_p_reg[24]_i_1_n_0\,
      CO(3) => \NLW_cnt_p_reg[28]_i_1_CO_UNCONNECTED\(3),
      CO(2) => \cnt_p_reg[28]_i_1_n_1\,
      CO(1) => \cnt_p_reg[28]_i_1_n_2\,
      CO(0) => \cnt_p_reg[28]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \cnt_p_reg[28]_i_1_n_4\,
      O(2) => \cnt_p_reg[28]_i_1_n_5\,
      O(1) => \cnt_p_reg[28]_i_1_n_6\,
      O(0) => \cnt_p_reg[28]_i_1_n_7\,
      S(3 downto 0) => cnt_p_reg(31 downto 28)
    );
\cnt_p_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => CLK_50M,
      CE => '1',
      D => \cnt_p_reg[28]_i_1_n_6\,
      Q => cnt_p_reg(29),
      R => \cnt_p0_carry__1_n_1\
    );
\cnt_p_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => CLK_50M,
      CE => '1',
      D => \cnt_p_reg[0]_i_1_n_5\,
      Q => cnt_p_reg(2),
      R => \cnt_p0_carry__1_n_1\
    );
\cnt_p_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => CLK_50M,
      CE => '1',
      D => \cnt_p_reg[28]_i_1_n_5\,
      Q => cnt_p_reg(30),
      R => \cnt_p0_carry__1_n_1\
    );
\cnt_p_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => CLK_50M,
      CE => '1',
      D => \cnt_p_reg[28]_i_1_n_4\,
      Q => cnt_p_reg(31),
      R => \cnt_p0_carry__1_n_1\
    );
\cnt_p_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => CLK_50M,
      CE => '1',
      D => \cnt_p_reg[0]_i_1_n_4\,
      Q => cnt_p_reg(3),
      R => \cnt_p0_carry__1_n_1\
    );
\cnt_p_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => CLK_50M,
      CE => '1',
      D => \cnt_p_reg[4]_i_1_n_7\,
      Q => cnt_p_reg(4),
      R => \cnt_p0_carry__1_n_1\
    );
\cnt_p_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \cnt_p_reg[0]_i_1_n_0\,
      CO(3) => \cnt_p_reg[4]_i_1_n_0\,
      CO(2) => \cnt_p_reg[4]_i_1_n_1\,
      CO(1) => \cnt_p_reg[4]_i_1_n_2\,
      CO(0) => \cnt_p_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \cnt_p_reg[4]_i_1_n_4\,
      O(2) => \cnt_p_reg[4]_i_1_n_5\,
      O(1) => \cnt_p_reg[4]_i_1_n_6\,
      O(0) => \cnt_p_reg[4]_i_1_n_7\,
      S(3 downto 0) => cnt_p_reg(7 downto 4)
    );
\cnt_p_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => CLK_50M,
      CE => '1',
      D => \cnt_p_reg[4]_i_1_n_6\,
      Q => cnt_p_reg(5),
      R => \cnt_p0_carry__1_n_1\
    );
\cnt_p_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => CLK_50M,
      CE => '1',
      D => \cnt_p_reg[4]_i_1_n_5\,
      Q => cnt_p_reg(6),
      R => \cnt_p0_carry__1_n_1\
    );
\cnt_p_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => CLK_50M,
      CE => '1',
      D => \cnt_p_reg[4]_i_1_n_4\,
      Q => cnt_p_reg(7),
      R => \cnt_p0_carry__1_n_1\
    );
\cnt_p_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => CLK_50M,
      CE => '1',
      D => \cnt_p_reg[8]_i_1_n_7\,
      Q => cnt_p_reg(8),
      R => \cnt_p0_carry__1_n_1\
    );
\cnt_p_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \cnt_p_reg[4]_i_1_n_0\,
      CO(3) => \cnt_p_reg[8]_i_1_n_0\,
      CO(2) => \cnt_p_reg[8]_i_1_n_1\,
      CO(1) => \cnt_p_reg[8]_i_1_n_2\,
      CO(0) => \cnt_p_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \cnt_p_reg[8]_i_1_n_4\,
      O(2) => \cnt_p_reg[8]_i_1_n_5\,
      O(1) => \cnt_p_reg[8]_i_1_n_6\,
      O(0) => \cnt_p_reg[8]_i_1_n_7\,
      S(3 downto 0) => cnt_p_reg(11 downto 8)
    );
\cnt_p_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => CLK_50M,
      CE => '1',
      D => \cnt_p_reg[8]_i_1_n_6\,
      Q => cnt_p_reg(9),
      R => \cnt_p0_carry__1_n_1\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_ads8688_0_0_ads8688 is
  port (
    RST : out STD_LOGIC;
    outRMS : out STD_LOGIC_VECTOR ( 15 downto 0 );
    SCLK : out STD_LOGIC;
    CS : out STD_LOGIC;
    SDI : out STD_LOGIC;
    SDO : in STD_LOGIC;
    rst_n : in STD_LOGIC;
    CLK_50M : in STD_LOGIC;
    dataAddr : in STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_ads8688_0_0_ads8688 : entity is "ads8688";
end design_1_ads8688_0_0_ads8688;

architecture STRUCTURE of design_1_ads8688_0_0_ads8688 is
  signal CLK_2M : STD_LOGIC;
  signal \^cs\ : STD_LOGIC;
  signal CS_i_1_n_0 : STD_LOGIC;
  signal CS_i_3_n_0 : STD_LOGIC;
  signal CS_i_4_n_0 : STD_LOGIC;
  signal CS_i_5_n_0 : STD_LOGIC;
  signal \FSM_sequential_order[0]_i_1_n_0\ : STD_LOGIC;
  signal PRC : STD_LOGIC_VECTOR ( 12 downto 9 );
  signal \PRC[10]_i_1_n_0\ : STD_LOGIC;
  signal \PRC[10]_i_2_n_0\ : STD_LOGIC;
  signal \PRC[11]_i_1_n_0\ : STD_LOGIC;
  signal \PRC[12]_i_1_n_0\ : STD_LOGIC;
  signal \PRC[9]_i_1_n_0\ : STD_LOGIC;
  signal \^sdi\ : STD_LOGIC;
  signal SDI_3 : STD_LOGIC;
  signal SDI_i_1_n_0 : STD_LOGIC;
  signal SDI_i_2_n_0 : STD_LOGIC;
  signal SDI_i_4_n_0 : STD_LOGIC;
  signal SDI_i_6_n_0 : STD_LOGIC;
  signal ch_sel : STD_LOGIC;
  signal \ch_sel[10]_i_1_n_0\ : STD_LOGIC;
  signal \ch_sel[12]_i_1_n_0\ : STD_LOGIC;
  signal \cnt[0]_i_1_n_0\ : STD_LOGIC;
  signal \cnt[1]_i_1_n_0\ : STD_LOGIC;
  signal \cnt[2]_i_1_n_0\ : STD_LOGIC;
  signal \cnt[4]_i_1_n_0\ : STD_LOGIC;
  signal \cnt[6]_i_1_n_0\ : STD_LOGIC;
  signal \cnt[6]_i_2_n_0\ : STD_LOGIC;
  signal cnt_reg : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal data3 : STD_LOGIC;
  signal data5 : STD_LOGIC;
  signal order : STD_LOGIC;
  signal \order__0\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal outRMS1 : STD_LOGIC_VECTOR ( 15 downto 1 );
  signal \outRMS[0]_i_1_n_0\ : STD_LOGIC;
  signal \outRMS[10]_i_1_n_0\ : STD_LOGIC;
  signal \outRMS[10]_i_2_n_0\ : STD_LOGIC;
  signal \outRMS[10]_i_3_n_0\ : STD_LOGIC;
  signal \outRMS[11]_i_1_n_0\ : STD_LOGIC;
  signal \outRMS[11]_i_2_n_0\ : STD_LOGIC;
  signal \outRMS[11]_i_3_n_0\ : STD_LOGIC;
  signal \outRMS[12]_i_11_n_0\ : STD_LOGIC;
  signal \outRMS[12]_i_12_n_0\ : STD_LOGIC;
  signal \outRMS[12]_i_13_n_0\ : STD_LOGIC;
  signal \outRMS[12]_i_14_n_0\ : STD_LOGIC;
  signal \outRMS[12]_i_15_n_0\ : STD_LOGIC;
  signal \outRMS[12]_i_16_n_0\ : STD_LOGIC;
  signal \outRMS[12]_i_17_n_0\ : STD_LOGIC;
  signal \outRMS[12]_i_18_n_0\ : STD_LOGIC;
  signal \outRMS[12]_i_1_n_0\ : STD_LOGIC;
  signal \outRMS[12]_i_2_n_0\ : STD_LOGIC;
  signal \outRMS[12]_i_4_n_0\ : STD_LOGIC;
  signal \outRMS[12]_i_6_n_0\ : STD_LOGIC;
  signal \outRMS[12]_i_7_n_0\ : STD_LOGIC;
  signal \outRMS[12]_i_8_n_0\ : STD_LOGIC;
  signal \outRMS[12]_i_9_n_0\ : STD_LOGIC;
  signal \outRMS[13]_i_1_n_0\ : STD_LOGIC;
  signal \outRMS[13]_i_2_n_0\ : STD_LOGIC;
  signal \outRMS[13]_i_3_n_0\ : STD_LOGIC;
  signal \outRMS[14]_i_1_n_0\ : STD_LOGIC;
  signal \outRMS[14]_i_2_n_0\ : STD_LOGIC;
  signal \outRMS[14]_i_3_n_0\ : STD_LOGIC;
  signal \outRMS[15]_i_10_n_0\ : STD_LOGIC;
  signal \outRMS[15]_i_11_n_0\ : STD_LOGIC;
  signal \outRMS[15]_i_12_n_0\ : STD_LOGIC;
  signal \outRMS[15]_i_13_n_0\ : STD_LOGIC;
  signal \outRMS[15]_i_15_n_0\ : STD_LOGIC;
  signal \outRMS[15]_i_16_n_0\ : STD_LOGIC;
  signal \outRMS[15]_i_17_n_0\ : STD_LOGIC;
  signal \outRMS[15]_i_18_n_0\ : STD_LOGIC;
  signal \outRMS[15]_i_19_n_0\ : STD_LOGIC;
  signal \outRMS[15]_i_1_n_0\ : STD_LOGIC;
  signal \outRMS[15]_i_20_n_0\ : STD_LOGIC;
  signal \outRMS[15]_i_21_n_0\ : STD_LOGIC;
  signal \outRMS[15]_i_22_n_0\ : STD_LOGIC;
  signal \outRMS[15]_i_23_n_0\ : STD_LOGIC;
  signal \outRMS[15]_i_24_n_0\ : STD_LOGIC;
  signal \outRMS[15]_i_25_n_0\ : STD_LOGIC;
  signal \outRMS[15]_i_26_n_0\ : STD_LOGIC;
  signal \outRMS[15]_i_27_n_0\ : STD_LOGIC;
  signal \outRMS[15]_i_28_n_0\ : STD_LOGIC;
  signal \outRMS[15]_i_29_n_0\ : STD_LOGIC;
  signal \outRMS[15]_i_2_n_0\ : STD_LOGIC;
  signal \outRMS[15]_i_30_n_0\ : STD_LOGIC;
  signal \outRMS[15]_i_31_n_0\ : STD_LOGIC;
  signal \outRMS[15]_i_32_n_0\ : STD_LOGIC;
  signal \outRMS[15]_i_3_n_0\ : STD_LOGIC;
  signal \outRMS[15]_i_5_n_0\ : STD_LOGIC;
  signal \outRMS[15]_i_6_n_0\ : STD_LOGIC;
  signal \outRMS[15]_i_7_n_0\ : STD_LOGIC;
  signal \outRMS[15]_i_9_n_0\ : STD_LOGIC;
  signal \outRMS[1]_i_1_n_0\ : STD_LOGIC;
  signal \outRMS[1]_i_2_n_0\ : STD_LOGIC;
  signal \outRMS[1]_i_3_n_0\ : STD_LOGIC;
  signal \outRMS[2]_i_1_n_0\ : STD_LOGIC;
  signal \outRMS[2]_i_2_n_0\ : STD_LOGIC;
  signal \outRMS[2]_i_3_n_0\ : STD_LOGIC;
  signal \outRMS[3]_i_1_n_0\ : STD_LOGIC;
  signal \outRMS[3]_i_2_n_0\ : STD_LOGIC;
  signal \outRMS[3]_i_3_n_0\ : STD_LOGIC;
  signal \outRMS[4]_i_10_n_0\ : STD_LOGIC;
  signal \outRMS[4]_i_12_n_0\ : STD_LOGIC;
  signal \outRMS[4]_i_13_n_0\ : STD_LOGIC;
  signal \outRMS[4]_i_14_n_0\ : STD_LOGIC;
  signal \outRMS[4]_i_15_n_0\ : STD_LOGIC;
  signal \outRMS[4]_i_16_n_0\ : STD_LOGIC;
  signal \outRMS[4]_i_17_n_0\ : STD_LOGIC;
  signal \outRMS[4]_i_18_n_0\ : STD_LOGIC;
  signal \outRMS[4]_i_19_n_0\ : STD_LOGIC;
  signal \outRMS[4]_i_1_n_0\ : STD_LOGIC;
  signal \outRMS[4]_i_20_n_0\ : STD_LOGIC;
  signal \outRMS[4]_i_21_n_0\ : STD_LOGIC;
  signal \outRMS[4]_i_2_n_0\ : STD_LOGIC;
  signal \outRMS[4]_i_4_n_0\ : STD_LOGIC;
  signal \outRMS[4]_i_6_n_0\ : STD_LOGIC;
  signal \outRMS[4]_i_7_n_0\ : STD_LOGIC;
  signal \outRMS[4]_i_8_n_0\ : STD_LOGIC;
  signal \outRMS[4]_i_9_n_0\ : STD_LOGIC;
  signal \outRMS[5]_i_1_n_0\ : STD_LOGIC;
  signal \outRMS[5]_i_2_n_0\ : STD_LOGIC;
  signal \outRMS[5]_i_3_n_0\ : STD_LOGIC;
  signal \outRMS[6]_i_1_n_0\ : STD_LOGIC;
  signal \outRMS[6]_i_2_n_0\ : STD_LOGIC;
  signal \outRMS[6]_i_3_n_0\ : STD_LOGIC;
  signal \outRMS[7]_i_1_n_0\ : STD_LOGIC;
  signal \outRMS[7]_i_2_n_0\ : STD_LOGIC;
  signal \outRMS[7]_i_3_n_0\ : STD_LOGIC;
  signal \outRMS[8]_i_11_n_0\ : STD_LOGIC;
  signal \outRMS[8]_i_12_n_0\ : STD_LOGIC;
  signal \outRMS[8]_i_13_n_0\ : STD_LOGIC;
  signal \outRMS[8]_i_14_n_0\ : STD_LOGIC;
  signal \outRMS[8]_i_15_n_0\ : STD_LOGIC;
  signal \outRMS[8]_i_16_n_0\ : STD_LOGIC;
  signal \outRMS[8]_i_17_n_0\ : STD_LOGIC;
  signal \outRMS[8]_i_18_n_0\ : STD_LOGIC;
  signal \outRMS[8]_i_1_n_0\ : STD_LOGIC;
  signal \outRMS[8]_i_2_n_0\ : STD_LOGIC;
  signal \outRMS[8]_i_4_n_0\ : STD_LOGIC;
  signal \outRMS[8]_i_6_n_0\ : STD_LOGIC;
  signal \outRMS[8]_i_7_n_0\ : STD_LOGIC;
  signal \outRMS[8]_i_8_n_0\ : STD_LOGIC;
  signal \outRMS[8]_i_9_n_0\ : STD_LOGIC;
  signal \outRMS[9]_i_1_n_0\ : STD_LOGIC;
  signal \outRMS[9]_i_2_n_0\ : STD_LOGIC;
  signal \outRMS[9]_i_3_n_0\ : STD_LOGIC;
  signal \outRMS_reg[12]_i_10_n_0\ : STD_LOGIC;
  signal \outRMS_reg[12]_i_10_n_1\ : STD_LOGIC;
  signal \outRMS_reg[12]_i_10_n_2\ : STD_LOGIC;
  signal \outRMS_reg[12]_i_10_n_3\ : STD_LOGIC;
  signal \outRMS_reg[12]_i_10_n_4\ : STD_LOGIC;
  signal \outRMS_reg[12]_i_10_n_5\ : STD_LOGIC;
  signal \outRMS_reg[12]_i_10_n_6\ : STD_LOGIC;
  signal \outRMS_reg[12]_i_10_n_7\ : STD_LOGIC;
  signal \outRMS_reg[12]_i_3_n_0\ : STD_LOGIC;
  signal \outRMS_reg[12]_i_3_n_1\ : STD_LOGIC;
  signal \outRMS_reg[12]_i_3_n_2\ : STD_LOGIC;
  signal \outRMS_reg[12]_i_3_n_3\ : STD_LOGIC;
  signal \outRMS_reg[12]_i_3_n_4\ : STD_LOGIC;
  signal \outRMS_reg[12]_i_3_n_5\ : STD_LOGIC;
  signal \outRMS_reg[12]_i_3_n_6\ : STD_LOGIC;
  signal \outRMS_reg[12]_i_3_n_7\ : STD_LOGIC;
  signal \outRMS_reg[12]_i_5_n_0\ : STD_LOGIC;
  signal \outRMS_reg[12]_i_5_n_1\ : STD_LOGIC;
  signal \outRMS_reg[12]_i_5_n_2\ : STD_LOGIC;
  signal \outRMS_reg[12]_i_5_n_3\ : STD_LOGIC;
  signal \outRMS_reg[15]_i_14_n_2\ : STD_LOGIC;
  signal \outRMS_reg[15]_i_14_n_3\ : STD_LOGIC;
  signal \outRMS_reg[15]_i_14_n_5\ : STD_LOGIC;
  signal \outRMS_reg[15]_i_14_n_6\ : STD_LOGIC;
  signal \outRMS_reg[15]_i_14_n_7\ : STD_LOGIC;
  signal \outRMS_reg[15]_i_4_n_2\ : STD_LOGIC;
  signal \outRMS_reg[15]_i_4_n_3\ : STD_LOGIC;
  signal \outRMS_reg[15]_i_4_n_5\ : STD_LOGIC;
  signal \outRMS_reg[15]_i_4_n_6\ : STD_LOGIC;
  signal \outRMS_reg[15]_i_4_n_7\ : STD_LOGIC;
  signal \outRMS_reg[15]_i_8_n_2\ : STD_LOGIC;
  signal \outRMS_reg[15]_i_8_n_3\ : STD_LOGIC;
  signal \outRMS_reg[4]_i_11_n_0\ : STD_LOGIC;
  signal \outRMS_reg[4]_i_11_n_1\ : STD_LOGIC;
  signal \outRMS_reg[4]_i_11_n_2\ : STD_LOGIC;
  signal \outRMS_reg[4]_i_11_n_3\ : STD_LOGIC;
  signal \outRMS_reg[4]_i_11_n_4\ : STD_LOGIC;
  signal \outRMS_reg[4]_i_11_n_5\ : STD_LOGIC;
  signal \outRMS_reg[4]_i_11_n_6\ : STD_LOGIC;
  signal \outRMS_reg[4]_i_11_n_7\ : STD_LOGIC;
  signal \outRMS_reg[4]_i_3_n_0\ : STD_LOGIC;
  signal \outRMS_reg[4]_i_3_n_1\ : STD_LOGIC;
  signal \outRMS_reg[4]_i_3_n_2\ : STD_LOGIC;
  signal \outRMS_reg[4]_i_3_n_3\ : STD_LOGIC;
  signal \outRMS_reg[4]_i_3_n_4\ : STD_LOGIC;
  signal \outRMS_reg[4]_i_3_n_5\ : STD_LOGIC;
  signal \outRMS_reg[4]_i_3_n_6\ : STD_LOGIC;
  signal \outRMS_reg[4]_i_3_n_7\ : STD_LOGIC;
  signal \outRMS_reg[4]_i_5_n_0\ : STD_LOGIC;
  signal \outRMS_reg[4]_i_5_n_1\ : STD_LOGIC;
  signal \outRMS_reg[4]_i_5_n_2\ : STD_LOGIC;
  signal \outRMS_reg[4]_i_5_n_3\ : STD_LOGIC;
  signal \outRMS_reg[8]_i_10_n_0\ : STD_LOGIC;
  signal \outRMS_reg[8]_i_10_n_1\ : STD_LOGIC;
  signal \outRMS_reg[8]_i_10_n_2\ : STD_LOGIC;
  signal \outRMS_reg[8]_i_10_n_3\ : STD_LOGIC;
  signal \outRMS_reg[8]_i_10_n_4\ : STD_LOGIC;
  signal \outRMS_reg[8]_i_10_n_5\ : STD_LOGIC;
  signal \outRMS_reg[8]_i_10_n_6\ : STD_LOGIC;
  signal \outRMS_reg[8]_i_10_n_7\ : STD_LOGIC;
  signal \outRMS_reg[8]_i_3_n_0\ : STD_LOGIC;
  signal \outRMS_reg[8]_i_3_n_1\ : STD_LOGIC;
  signal \outRMS_reg[8]_i_3_n_2\ : STD_LOGIC;
  signal \outRMS_reg[8]_i_3_n_3\ : STD_LOGIC;
  signal \outRMS_reg[8]_i_3_n_4\ : STD_LOGIC;
  signal \outRMS_reg[8]_i_3_n_5\ : STD_LOGIC;
  signal \outRMS_reg[8]_i_3_n_6\ : STD_LOGIC;
  signal \outRMS_reg[8]_i_3_n_7\ : STD_LOGIC;
  signal \outRMS_reg[8]_i_5_n_0\ : STD_LOGIC;
  signal \outRMS_reg[8]_i_5_n_1\ : STD_LOGIC;
  signal \outRMS_reg[8]_i_5_n_2\ : STD_LOGIC;
  signal \outRMS_reg[8]_i_5_n_3\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 5 downto 3 );
  signal p_0_out : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal rddat : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal rddat0 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal rddat0_2 : STD_LOGIC;
  signal rddat1 : STD_LOGIC;
  signal rddat1_0 : STD_LOGIC;
  signal \rddat1_reg_n_0_[0]\ : STD_LOGIC;
  signal \rddat1_reg_n_0_[10]\ : STD_LOGIC;
  signal \rddat1_reg_n_0_[11]\ : STD_LOGIC;
  signal \rddat1_reg_n_0_[12]\ : STD_LOGIC;
  signal \rddat1_reg_n_0_[13]\ : STD_LOGIC;
  signal \rddat1_reg_n_0_[14]\ : STD_LOGIC;
  signal \rddat1_reg_n_0_[15]\ : STD_LOGIC;
  signal \rddat1_reg_n_0_[1]\ : STD_LOGIC;
  signal \rddat1_reg_n_0_[2]\ : STD_LOGIC;
  signal \rddat1_reg_n_0_[3]\ : STD_LOGIC;
  signal \rddat1_reg_n_0_[4]\ : STD_LOGIC;
  signal \rddat1_reg_n_0_[5]\ : STD_LOGIC;
  signal \rddat1_reg_n_0_[6]\ : STD_LOGIC;
  signal \rddat1_reg_n_0_[7]\ : STD_LOGIC;
  signal \rddat1_reg_n_0_[8]\ : STD_LOGIC;
  signal \rddat1_reg_n_0_[9]\ : STD_LOGIC;
  signal rddat2 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal rddat2_1 : STD_LOGIC;
  signal \rddat[0]_i_1_n_0\ : STD_LOGIC;
  signal \rddat[10]_i_1_n_0\ : STD_LOGIC;
  signal \rddat[10]_i_2_n_0\ : STD_LOGIC;
  signal \rddat[10]_i_3_n_0\ : STD_LOGIC;
  signal \rddat[10]_i_4_n_0\ : STD_LOGIC;
  signal \rddat[11]_i_1_n_0\ : STD_LOGIC;
  signal \rddat[11]_i_2_n_0\ : STD_LOGIC;
  signal \rddat[11]_i_3_n_0\ : STD_LOGIC;
  signal \rddat[12]_i_1_n_0\ : STD_LOGIC;
  signal \rddat[12]_i_2_n_0\ : STD_LOGIC;
  signal \rddat[13]_i_1_n_0\ : STD_LOGIC;
  signal \rddat[13]_i_2_n_0\ : STD_LOGIC;
  signal \rddat[14]_i_1_n_0\ : STD_LOGIC;
  signal \rddat[14]_i_2_n_0\ : STD_LOGIC;
  signal \rddat[14]_i_3_n_0\ : STD_LOGIC;
  signal \rddat[15]_i_1_n_0\ : STD_LOGIC;
  signal \rddat[15]_i_2_n_0\ : STD_LOGIC;
  signal \rddat[15]_i_3_n_0\ : STD_LOGIC;
  signal \rddat[1]_i_1_n_0\ : STD_LOGIC;
  signal \rddat[1]_i_2_n_0\ : STD_LOGIC;
  signal \rddat[2]_i_1_n_0\ : STD_LOGIC;
  signal \rddat[2]_i_2_n_0\ : STD_LOGIC;
  signal \rddat[3]_i_1_n_0\ : STD_LOGIC;
  signal \rddat[3]_i_2_n_0\ : STD_LOGIC;
  signal \rddat[4]_i_1_n_0\ : STD_LOGIC;
  signal \rddat[4]_i_2_n_0\ : STD_LOGIC;
  signal \rddat[5]_i_1_n_0\ : STD_LOGIC;
  signal \rddat[5]_i_2_n_0\ : STD_LOGIC;
  signal \rddat[6]_i_1_n_0\ : STD_LOGIC;
  signal \rddat[6]_i_2_n_0\ : STD_LOGIC;
  signal \rddat[6]_i_3_n_0\ : STD_LOGIC;
  signal \rddat[7]_i_1_n_0\ : STD_LOGIC;
  signal \rddat[7]_i_2_n_0\ : STD_LOGIC;
  signal \rddat[8]_i_1_n_0\ : STD_LOGIC;
  signal \rddat[8]_i_2_n_0\ : STD_LOGIC;
  signal \rddat[8]_i_3_n_0\ : STD_LOGIC;
  signal \rddat[9]_i_1_n_0\ : STD_LOGIC;
  signal \rddat[9]_i_2_n_0\ : STD_LOGIC;
  signal \rddat[9]_i_3_n_0\ : STD_LOGIC;
  signal \NLW_outRMS_reg[15]_i_14_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_outRMS_reg[15]_i_14_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_outRMS_reg[15]_i_4_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_outRMS_reg[15]_i_4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_outRMS_reg[15]_i_8_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_outRMS_reg[15]_i_8_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of CS_i_1 : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \FSM_sequential_order[0]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \FSM_sequential_order[1]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \FSM_sequential_order[2]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \FSM_sequential_order[3]_i_2\ : label is "soft_lutpair4";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_order_reg[0]\ : label is "iSTATE:0100,iSTATE0:0011,iSTATE1:0010,iSTATE2:0001,iSTATE3:0111,iSTATE4:1001,iSTATE5:0110,iSTATE6:1000,iSTATE7:0101,iSTATE8:0000";
  attribute FSM_ENCODED_STATES of \FSM_sequential_order_reg[1]\ : label is "iSTATE:0100,iSTATE0:0011,iSTATE1:0010,iSTATE2:0001,iSTATE3:0111,iSTATE4:1001,iSTATE5:0110,iSTATE6:1000,iSTATE7:0101,iSTATE8:0000";
  attribute FSM_ENCODED_STATES of \FSM_sequential_order_reg[2]\ : label is "iSTATE:0100,iSTATE0:0011,iSTATE1:0010,iSTATE2:0001,iSTATE3:0111,iSTATE4:1001,iSTATE5:0110,iSTATE6:1000,iSTATE7:0101,iSTATE8:0000";
  attribute FSM_ENCODED_STATES of \FSM_sequential_order_reg[3]\ : label is "iSTATE:0100,iSTATE0:0011,iSTATE1:0010,iSTATE2:0001,iSTATE3:0111,iSTATE4:1001,iSTATE5:0110,iSTATE6:1000,iSTATE7:0101,iSTATE8:0000";
  attribute SOFT_HLUTNM of \PRC[10]_i_2\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of SDI_i_3 : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \ch_sel[12]_i_2\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \cnt[0]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \cnt[1]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \cnt[2]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \cnt[3]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \cnt[6]_i_2\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \outRMS[0]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \outRMS[15]_i_26\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \outRMS[15]_i_3\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \outRMS[15]_i_5\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \rddat[10]_i_2\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \rddat[10]_i_3\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \rddat[10]_i_4\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \rddat[11]_i_3\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \rddat[14]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \rddat[14]_i_3\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \rddat[15]_i_3\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \rddat[1]_i_2\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \rddat[2]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \rddat[6]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \rddat[6]_i_3\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \rddat[8]_i_2\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \rddat[8]_i_3\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \rddat[9]_i_2\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \rddat[9]_i_3\ : label is "soft_lutpair12";
begin
  CS <= \^cs\;
  SDI <= \^sdi\;
CS_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => CS_i_4_n_0,
      I1 => CS_i_5_n_0,
      O => CS_i_1_n_0
    );
CS_i_3: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => rst_n,
      O => CS_i_3_n_0
    );
CS_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAA88888880"
    )
        port map (
      I0 => cnt_reg(6),
      I1 => cnt_reg(4),
      I2 => cnt_reg(3),
      I3 => \cnt[6]_i_2_n_0\,
      I4 => cnt_reg(2),
      I5 => cnt_reg(5),
      O => CS_i_4_n_0
    );
CS_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000007777777F"
    )
        port map (
      I0 => cnt_reg(4),
      I1 => cnt_reg(5),
      I2 => cnt_reg(3),
      I3 => cnt_reg(2),
      I4 => cnt_reg(1),
      I5 => cnt_reg(6),
      O => CS_i_5_n_0
    );
CS_reg: unisim.vcomponents.FDCE
     port map (
      C => CLK_2M,
      CE => '1',
      CLR => CS_i_3_n_0,
      D => CS_i_1_n_0,
      Q => \^cs\
    );
\FSM_sequential_order[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \order__0\(3),
      I1 => \order__0\(0),
      O => \FSM_sequential_order[0]_i_1_n_0\
    );
\FSM_sequential_order[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"130C"
    )
        port map (
      I0 => \order__0\(2),
      I1 => \order__0\(1),
      I2 => \order__0\(3),
      I3 => \order__0\(0),
      O => p_0_out(1)
    );
\FSM_sequential_order[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0478"
    )
        port map (
      I0 => \order__0\(1),
      I1 => \order__0\(0),
      I2 => \order__0\(2),
      I3 => \order__0\(3),
      O => p_0_out(2)
    );
\FSM_sequential_order[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0A2A"
    )
        port map (
      I0 => CS_i_4_n_0,
      I1 => \order__0\(2),
      I2 => \order__0\(3),
      I3 => \order__0\(1),
      O => order
    );
\FSM_sequential_order[3]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4002"
    )
        port map (
      I0 => \order__0\(3),
      I1 => \order__0\(2),
      I2 => \order__0\(1),
      I3 => \order__0\(0),
      O => p_0_out(3)
    );
\FSM_sequential_order_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_2M,
      CE => order,
      CLR => CS_i_3_n_0,
      D => \FSM_sequential_order[0]_i_1_n_0\,
      Q => \order__0\(0)
    );
\FSM_sequential_order_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_2M,
      CE => order,
      CLR => CS_i_3_n_0,
      D => p_0_out(1),
      Q => \order__0\(1)
    );
\FSM_sequential_order_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_2M,
      CE => order,
      CLR => CS_i_3_n_0,
      D => p_0_out(2),
      Q => \order__0\(2)
    );
\FSM_sequential_order_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_2M,
      CE => order,
      CLR => CS_i_3_n_0,
      D => p_0_out(3),
      Q => \order__0\(3)
    );
\PRC[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0014FFFF00140000"
    )
        port map (
      I0 => \order__0\(2),
      I1 => \order__0\(0),
      I2 => \order__0\(1),
      I3 => \order__0\(3),
      I4 => \PRC[10]_i_2_n_0\,
      I5 => PRC(10),
      O => \PRC[10]_i_1_n_0\
    );
\PRC[10]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"002A0000"
    )
        port map (
      I0 => rst_n,
      I1 => \order__0\(2),
      I2 => \order__0\(1),
      I3 => \order__0\(3),
      I4 => CS_i_4_n_0,
      O => \PRC[10]_i_2_n_0\
    );
\PRC[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFAAAAFF03AAAA"
    )
        port map (
      I0 => PRC(11),
      I1 => \order__0\(0),
      I2 => \order__0\(2),
      I3 => \order__0\(1),
      I4 => \PRC[10]_i_2_n_0\,
      I5 => \order__0\(3),
      O => \PRC[11]_i_1_n_0\
    );
\PRC[12]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFAAF3AA"
    )
        port map (
      I0 => PRC(12),
      I1 => \order__0\(1),
      I2 => \order__0\(2),
      I3 => \PRC[10]_i_2_n_0\,
      I4 => \order__0\(3),
      O => \PRC[12]_i_1_n_0\
    );
\PRC[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0034FFFF00340000"
    )
        port map (
      I0 => \order__0\(1),
      I1 => \order__0\(2),
      I2 => \order__0\(0),
      I3 => \order__0\(3),
      I4 => \PRC[10]_i_2_n_0\,
      I5 => PRC(9),
      O => \PRC[9]_i_1_n_0\
    );
\PRC_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_2M,
      CE => '1',
      D => \PRC[10]_i_1_n_0\,
      Q => PRC(10),
      R => '0'
    );
\PRC_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK_2M,
      CE => '1',
      D => \PRC[11]_i_1_n_0\,
      Q => PRC(11),
      R => '0'
    );
\PRC_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_2M,
      CE => '1',
      D => \PRC[12]_i_1_n_0\,
      Q => PRC(12),
      R => '0'
    );
\PRC_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK_2M,
      CE => '1',
      D => \PRC[9]_i_1_n_0\,
      Q => PRC(9),
      R => '0'
    );
RST_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK_2M,
      CE => '1',
      CLR => CS_i_3_n_0,
      D => '1',
      Q => RST
    );
SDI_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00B8FFFF00B80000"
    )
        port map (
      I0 => SDI_i_2_n_0,
      I1 => rddat1,
      I2 => SDI_i_4_n_0,
      I3 => cnt_reg(6),
      I4 => SDI_3,
      I5 => \^sdi\,
      O => SDI_i_1_n_0
    );
SDI_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000DFF5D5F5"
    )
        port map (
      I0 => cnt_reg(2),
      I1 => data5,
      I2 => cnt_reg(1),
      I3 => cnt_reg(0),
      I4 => data3,
      I5 => cnt_reg(3),
      O => SDI_i_2_n_0
    );
SDI_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ECCC"
    )
        port map (
      I0 => \order__0\(0),
      I1 => \order__0\(3),
      I2 => \order__0\(2),
      I3 => \order__0\(1),
      O => rddat1
    );
SDI_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0054FFFF00540000"
    )
        port map (
      I0 => cnt_reg(1),
      I1 => cnt_reg(0),
      I2 => PRC(9),
      I3 => cnt_reg(2),
      I4 => cnt_reg(3),
      I5 => SDI_i_6_n_0,
      O => SDI_i_4_n_0
    );
SDI_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4040404040404002"
    )
        port map (
      I0 => cnt_reg(6),
      I1 => cnt_reg(5),
      I2 => cnt_reg(4),
      I3 => cnt_reg(3),
      I4 => cnt_reg(1),
      I5 => cnt_reg(2),
      O => SDI_3
    );
SDI_i_6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AA80A0800A800080"
    )
        port map (
      I0 => cnt_reg(2),
      I1 => PRC(12),
      I2 => cnt_reg(0),
      I3 => cnt_reg(1),
      I4 => PRC(11),
      I5 => PRC(10),
      O => SDI_i_6_n_0
    );
SDI_reg: unisim.vcomponents.FDCE
     port map (
      C => CLK_2M,
      CE => '1',
      CLR => CS_i_3_n_0,
      D => SDI_i_1_n_0,
      Q => \^sdi\
    );
\ch_sel[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4002FFFF40020000"
    )
        port map (
      I0 => \order__0\(3),
      I1 => \order__0\(1),
      I2 => \order__0\(2),
      I3 => \order__0\(0),
      I4 => ch_sel,
      I5 => data5,
      O => \ch_sel[10]_i_1_n_0\
    );
\ch_sel[12]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFBFFFFFFFB0000"
    )
        port map (
      I0 => \order__0\(0),
      I1 => \order__0\(3),
      I2 => \order__0\(2),
      I3 => \order__0\(1),
      I4 => ch_sel,
      I5 => data3,
      O => \ch_sel[12]_i_1_n_0\
    );
\ch_sel[12]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"20080000"
    )
        port map (
      I0 => rst_n,
      I1 => \order__0\(3),
      I2 => \order__0\(2),
      I3 => \order__0\(1),
      I4 => CS_i_4_n_0,
      O => ch_sel
    );
\ch_sel_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => CLK_2M,
      CE => '1',
      D => \ch_sel[10]_i_1_n_0\,
      Q => data5,
      R => '0'
    );
\ch_sel_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => CLK_2M,
      CE => '1',
      D => \ch_sel[12]_i_1_n_0\,
      Q => data3,
      R => '0'
    );
clk_inst: entity work.design_1_ads8688_0_0_clkdiv
     port map (
      CLK_2M => CLK_2M,
      CLK_50M => CLK_50M,
      CS => \^cs\,
      SCLK => SCLK
    );
\cnt[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cnt_reg(0),
      I1 => CS_i_4_n_0,
      O => \cnt[0]_i_1_n_0\
    );
\cnt[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"06"
    )
        port map (
      I0 => cnt_reg(1),
      I1 => cnt_reg(0),
      I2 => CS_i_4_n_0,
      O => \cnt[1]_i_1_n_0\
    );
\cnt[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"006A"
    )
        port map (
      I0 => cnt_reg(2),
      I1 => cnt_reg(1),
      I2 => cnt_reg(0),
      I3 => CS_i_4_n_0,
      O => \cnt[2]_i_1_n_0\
    );
\cnt[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BEEEEEEE"
    )
        port map (
      I0 => CS_i_4_n_0,
      I1 => cnt_reg(3),
      I2 => cnt_reg(2),
      I3 => cnt_reg(0),
      I4 => cnt_reg(1),
      O => p_0_in(3)
    );
\cnt[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000006AAAAAAA"
    )
        port map (
      I0 => cnt_reg(4),
      I1 => cnt_reg(3),
      I2 => cnt_reg(1),
      I3 => cnt_reg(0),
      I4 => cnt_reg(2),
      I5 => CS_i_4_n_0,
      O => \cnt[4]_i_1_n_0\
    );
\cnt[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BCECECECECECECCC"
    )
        port map (
      I0 => cnt_reg(6),
      I1 => cnt_reg(5),
      I2 => cnt_reg(4),
      I3 => cnt_reg(2),
      I4 => \cnt[6]_i_2_n_0\,
      I5 => cnt_reg(3),
      O => p_0_in(5)
    );
\cnt[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0001555580000000"
    )
        port map (
      I0 => cnt_reg(5),
      I1 => cnt_reg(2),
      I2 => \cnt[6]_i_2_n_0\,
      I3 => cnt_reg(3),
      I4 => cnt_reg(4),
      I5 => cnt_reg(6),
      O => \cnt[6]_i_1_n_0\
    );
\cnt[6]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => cnt_reg(1),
      I1 => cnt_reg(0),
      O => \cnt[6]_i_2_n_0\
    );
\cnt_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => CLK_2M,
      CE => '1',
      CLR => CS_i_3_n_0,
      D => \cnt[0]_i_1_n_0\,
      Q => cnt_reg(0)
    );
\cnt_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => CLK_2M,
      CE => '1',
      CLR => CS_i_3_n_0,
      D => \cnt[1]_i_1_n_0\,
      Q => cnt_reg(1)
    );
\cnt_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => CLK_2M,
      CE => '1',
      CLR => CS_i_3_n_0,
      D => \cnt[2]_i_1_n_0\,
      Q => cnt_reg(2)
    );
\cnt_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => CLK_2M,
      CE => '1',
      CLR => CS_i_3_n_0,
      D => p_0_in(3),
      Q => cnt_reg(3)
    );
\cnt_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => CLK_2M,
      CE => '1',
      CLR => CS_i_3_n_0,
      D => \cnt[4]_i_1_n_0\,
      Q => cnt_reg(4)
    );
\cnt_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => CLK_2M,
      CE => '1',
      CLR => CS_i_3_n_0,
      D => p_0_in(5),
      Q => cnt_reg(5)
    );
\cnt_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => CLK_2M,
      CE => '1',
      CLR => CS_i_3_n_0,
      D => \cnt[6]_i_1_n_0\,
      Q => cnt_reg(6)
    );
\outRMS[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00CCF0AA"
    )
        port map (
      I0 => rddat0(0),
      I1 => \rddat1_reg_n_0_[0]\,
      I2 => rddat2(0),
      I3 => dataAddr(1),
      I4 => dataAddr(0),
      O => \outRMS[0]_i_1_n_0\
    );
\outRMS[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFEAEAEA"
    )
        port map (
      I0 => \outRMS[10]_i_2_n_0\,
      I1 => \rddat1_reg_n_0_[10]\,
      I2 => \outRMS[15]_i_3_n_0\,
      I3 => \outRMS_reg[12]_i_3_n_6\,
      I4 => \outRMS[15]_i_5_n_0\,
      I5 => \outRMS[10]_i_3_n_0\,
      O => \outRMS[10]_i_1_n_0\
    );
\outRMS[10]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => rddat0(10),
      I1 => \outRMS[15]_i_7_n_0\,
      I2 => outRMS1(10),
      I3 => \outRMS[15]_i_9_n_0\,
      O => \outRMS[10]_i_2_n_0\
    );
\outRMS[10]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => rddat2(10),
      I1 => \outRMS[15]_i_13_n_0\,
      I2 => \outRMS_reg[12]_i_10_n_6\,
      I3 => \outRMS[15]_i_15_n_0\,
      O => \outRMS[10]_i_3_n_0\
    );
\outRMS[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFEAEAEA"
    )
        port map (
      I0 => \outRMS[11]_i_2_n_0\,
      I1 => \rddat1_reg_n_0_[11]\,
      I2 => \outRMS[15]_i_3_n_0\,
      I3 => \outRMS_reg[12]_i_3_n_5\,
      I4 => \outRMS[15]_i_5_n_0\,
      I5 => \outRMS[11]_i_3_n_0\,
      O => \outRMS[11]_i_1_n_0\
    );
\outRMS[11]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => rddat0(11),
      I1 => \outRMS[15]_i_7_n_0\,
      I2 => outRMS1(11),
      I3 => \outRMS[15]_i_9_n_0\,
      O => \outRMS[11]_i_2_n_0\
    );
\outRMS[11]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => rddat2(11),
      I1 => \outRMS[15]_i_13_n_0\,
      I2 => \outRMS_reg[12]_i_10_n_5\,
      I3 => \outRMS[15]_i_15_n_0\,
      O => \outRMS[11]_i_3_n_0\
    );
\outRMS[12]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFEAEAEA"
    )
        port map (
      I0 => \outRMS[12]_i_2_n_0\,
      I1 => \rddat1_reg_n_0_[12]\,
      I2 => \outRMS[15]_i_3_n_0\,
      I3 => \outRMS_reg[12]_i_3_n_4\,
      I4 => \outRMS[15]_i_5_n_0\,
      I5 => \outRMS[12]_i_4_n_0\,
      O => \outRMS[12]_i_1_n_0\
    );
\outRMS[12]_i_11\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => rddat0(12),
      O => \outRMS[12]_i_11_n_0\
    );
\outRMS[12]_i_12\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => rddat0(11),
      O => \outRMS[12]_i_12_n_0\
    );
\outRMS[12]_i_13\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => rddat0(10),
      O => \outRMS[12]_i_13_n_0\
    );
\outRMS[12]_i_14\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => rddat0(9),
      O => \outRMS[12]_i_14_n_0\
    );
\outRMS[12]_i_15\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => rddat2(12),
      O => \outRMS[12]_i_15_n_0\
    );
\outRMS[12]_i_16\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => rddat2(11),
      O => \outRMS[12]_i_16_n_0\
    );
\outRMS[12]_i_17\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => rddat2(10),
      O => \outRMS[12]_i_17_n_0\
    );
\outRMS[12]_i_18\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => rddat2(9),
      O => \outRMS[12]_i_18_n_0\
    );
\outRMS[12]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => rddat0(12),
      I1 => \outRMS[15]_i_7_n_0\,
      I2 => outRMS1(12),
      I3 => \outRMS[15]_i_9_n_0\,
      O => \outRMS[12]_i_2_n_0\
    );
\outRMS[12]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => rddat2(12),
      I1 => \outRMS[15]_i_13_n_0\,
      I2 => \outRMS_reg[12]_i_10_n_4\,
      I3 => \outRMS[15]_i_15_n_0\,
      O => \outRMS[12]_i_4_n_0\
    );
\outRMS[12]_i_6\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \rddat1_reg_n_0_[12]\,
      O => \outRMS[12]_i_6_n_0\
    );
\outRMS[12]_i_7\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \rddat1_reg_n_0_[11]\,
      O => \outRMS[12]_i_7_n_0\
    );
\outRMS[12]_i_8\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \rddat1_reg_n_0_[10]\,
      O => \outRMS[12]_i_8_n_0\
    );
\outRMS[12]_i_9\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \rddat1_reg_n_0_[9]\,
      O => \outRMS[12]_i_9_n_0\
    );
\outRMS[13]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFEAEAEA"
    )
        port map (
      I0 => \outRMS[13]_i_2_n_0\,
      I1 => \rddat1_reg_n_0_[13]\,
      I2 => \outRMS[15]_i_3_n_0\,
      I3 => \outRMS_reg[15]_i_4_n_7\,
      I4 => \outRMS[15]_i_5_n_0\,
      I5 => \outRMS[13]_i_3_n_0\,
      O => \outRMS[13]_i_1_n_0\
    );
\outRMS[13]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => rddat0(13),
      I1 => \outRMS[15]_i_7_n_0\,
      I2 => outRMS1(13),
      I3 => \outRMS[15]_i_9_n_0\,
      O => \outRMS[13]_i_2_n_0\
    );
\outRMS[13]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => rddat2(13),
      I1 => \outRMS[15]_i_13_n_0\,
      I2 => \outRMS_reg[15]_i_14_n_7\,
      I3 => \outRMS[15]_i_15_n_0\,
      O => \outRMS[13]_i_3_n_0\
    );
\outRMS[14]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFEAEAEA"
    )
        port map (
      I0 => \outRMS[14]_i_2_n_0\,
      I1 => \rddat1_reg_n_0_[14]\,
      I2 => \outRMS[15]_i_3_n_0\,
      I3 => \outRMS_reg[15]_i_4_n_6\,
      I4 => \outRMS[15]_i_5_n_0\,
      I5 => \outRMS[14]_i_3_n_0\,
      O => \outRMS[14]_i_1_n_0\
    );
\outRMS[14]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => rddat0(14),
      I1 => \outRMS[15]_i_7_n_0\,
      I2 => outRMS1(14),
      I3 => \outRMS[15]_i_9_n_0\,
      O => \outRMS[14]_i_2_n_0\
    );
\outRMS[14]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => rddat2(14),
      I1 => \outRMS[15]_i_13_n_0\,
      I2 => \outRMS_reg[15]_i_14_n_6\,
      I3 => \outRMS[15]_i_15_n_0\,
      O => \outRMS[14]_i_3_n_0\
    );
\outRMS[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFBABABA"
    )
        port map (
      I0 => \outRMS[15]_i_2_n_0\,
      I1 => \rddat1_reg_n_0_[15]\,
      I2 => \outRMS[15]_i_3_n_0\,
      I3 => \outRMS_reg[15]_i_4_n_5\,
      I4 => \outRMS[15]_i_5_n_0\,
      I5 => \outRMS[15]_i_6_n_0\,
      O => \outRMS[15]_i_1_n_0\
    );
\outRMS[15]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \outRMS[15]_i_23_n_0\,
      I1 => \outRMS[15]_i_24_n_0\,
      I2 => \rddat1_reg_n_0_[3]\,
      I3 => \rddat1_reg_n_0_[2]\,
      I4 => \rddat1_reg_n_0_[14]\,
      I5 => \outRMS[15]_i_25_n_0\,
      O => \outRMS[15]_i_10_n_0\
    );
\outRMS[15]_i_11\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \rddat1_reg_n_0_[14]\,
      O => \outRMS[15]_i_11_n_0\
    );
\outRMS[15]_i_12\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \rddat1_reg_n_0_[13]\,
      O => \outRMS[15]_i_12_n_0\
    );
\outRMS[15]_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAA800000000"
    )
        port map (
      I0 => \outRMS[15]_i_26_n_0\,
      I1 => \outRMS[15]_i_27_n_0\,
      I2 => \outRMS[15]_i_28_n_0\,
      I3 => \outRMS[15]_i_29_n_0\,
      I4 => \outRMS[15]_i_30_n_0\,
      I5 => rddat2(15),
      O => \outRMS[15]_i_13_n_0\
    );
\outRMS[15]_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000002AAAAAAAA"
    )
        port map (
      I0 => \outRMS[15]_i_26_n_0\,
      I1 => \outRMS[15]_i_27_n_0\,
      I2 => \outRMS[15]_i_28_n_0\,
      I3 => \outRMS[15]_i_29_n_0\,
      I4 => \outRMS[15]_i_30_n_0\,
      I5 => rddat2(15),
      O => \outRMS[15]_i_15_n_0\
    );
\outRMS[15]_i_16\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => dataAddr(0),
      I1 => dataAddr(1),
      O => \outRMS[15]_i_16_n_0\
    );
\outRMS[15]_i_17\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => rddat0(8),
      I1 => rddat0(11),
      I2 => rddat0(6),
      I3 => rddat0(9),
      O => \outRMS[15]_i_17_n_0\
    );
\outRMS[15]_i_18\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => rddat0(12),
      I1 => rddat0(0),
      I2 => rddat0(10),
      I3 => rddat0(13),
      O => \outRMS[15]_i_18_n_0\
    );
\outRMS[15]_i_19\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => rddat0(3),
      I1 => rddat0(2),
      I2 => rddat0(14),
      O => \outRMS[15]_i_19_n_0\
    );
\outRMS[15]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F444"
    )
        port map (
      I0 => rddat0(15),
      I1 => \outRMS[15]_i_7_n_0\,
      I2 => outRMS1(15),
      I3 => \outRMS[15]_i_9_n_0\,
      O => \outRMS[15]_i_2_n_0\
    );
\outRMS[15]_i_20\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => rddat0(4),
      I1 => rddat0(7),
      I2 => rddat0(1),
      I3 => rddat0(5),
      O => \outRMS[15]_i_20_n_0\
    );
\outRMS[15]_i_21\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => rddat0(14),
      O => \outRMS[15]_i_21_n_0\
    );
\outRMS[15]_i_22\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => rddat0(13),
      O => \outRMS[15]_i_22_n_0\
    );
\outRMS[15]_i_23\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \rddat1_reg_n_0_[8]\,
      I1 => \rddat1_reg_n_0_[11]\,
      I2 => \rddat1_reg_n_0_[6]\,
      I3 => \rddat1_reg_n_0_[9]\,
      O => \outRMS[15]_i_23_n_0\
    );
\outRMS[15]_i_24\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \rddat1_reg_n_0_[12]\,
      I1 => \rddat1_reg_n_0_[0]\,
      I2 => \rddat1_reg_n_0_[10]\,
      I3 => \rddat1_reg_n_0_[13]\,
      O => \outRMS[15]_i_24_n_0\
    );
\outRMS[15]_i_25\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \rddat1_reg_n_0_[4]\,
      I1 => \rddat1_reg_n_0_[7]\,
      I2 => \rddat1_reg_n_0_[1]\,
      I3 => \rddat1_reg_n_0_[5]\,
      O => \outRMS[15]_i_25_n_0\
    );
\outRMS[15]_i_26\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => dataAddr(1),
      I1 => dataAddr(0),
      O => \outRMS[15]_i_26_n_0\
    );
\outRMS[15]_i_27\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => rddat2(8),
      I1 => rddat2(11),
      I2 => rddat2(6),
      I3 => rddat2(9),
      O => \outRMS[15]_i_27_n_0\
    );
\outRMS[15]_i_28\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => rddat2(12),
      I1 => rddat2(0),
      I2 => rddat2(10),
      I3 => rddat2(13),
      O => \outRMS[15]_i_28_n_0\
    );
\outRMS[15]_i_29\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => rddat2(3),
      I1 => rddat2(2),
      I2 => rddat2(14),
      O => \outRMS[15]_i_29_n_0\
    );
\outRMS[15]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4000"
    )
        port map (
      I0 => dataAddr(1),
      I1 => dataAddr(0),
      I2 => \outRMS[15]_i_10_n_0\,
      I3 => \rddat1_reg_n_0_[15]\,
      O => \outRMS[15]_i_3_n_0\
    );
\outRMS[15]_i_30\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => rddat2(4),
      I1 => rddat2(7),
      I2 => rddat2(1),
      I3 => rddat2(5),
      O => \outRMS[15]_i_30_n_0\
    );
\outRMS[15]_i_31\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => rddat2(14),
      O => \outRMS[15]_i_31_n_0\
    );
\outRMS[15]_i_32\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => rddat2(13),
      O => \outRMS[15]_i_32_n_0\
    );
\outRMS[15]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0444"
    )
        port map (
      I0 => dataAddr(1),
      I1 => dataAddr(0),
      I2 => \outRMS[15]_i_10_n_0\,
      I3 => \rddat1_reg_n_0_[15]\,
      O => \outRMS[15]_i_5_n_0\
    );
\outRMS[15]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F444"
    )
        port map (
      I0 => rddat2(15),
      I1 => \outRMS[15]_i_13_n_0\,
      I2 => \outRMS_reg[15]_i_14_n_5\,
      I3 => \outRMS[15]_i_15_n_0\,
      O => \outRMS[15]_i_6_n_0\
    );
\outRMS[15]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAA800000000"
    )
        port map (
      I0 => \outRMS[15]_i_16_n_0\,
      I1 => \outRMS[15]_i_17_n_0\,
      I2 => \outRMS[15]_i_18_n_0\,
      I3 => \outRMS[15]_i_19_n_0\,
      I4 => \outRMS[15]_i_20_n_0\,
      I5 => rddat0(15),
      O => \outRMS[15]_i_7_n_0\
    );
\outRMS[15]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000002AAAAAAAA"
    )
        port map (
      I0 => \outRMS[15]_i_16_n_0\,
      I1 => \outRMS[15]_i_17_n_0\,
      I2 => \outRMS[15]_i_18_n_0\,
      I3 => \outRMS[15]_i_19_n_0\,
      I4 => \outRMS[15]_i_20_n_0\,
      I5 => rddat0(15),
      O => \outRMS[15]_i_9_n_0\
    );
\outRMS[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFEAEAEA"
    )
        port map (
      I0 => \outRMS[1]_i_2_n_0\,
      I1 => \rddat1_reg_n_0_[1]\,
      I2 => \outRMS[15]_i_3_n_0\,
      I3 => \outRMS_reg[4]_i_3_n_7\,
      I4 => \outRMS[15]_i_5_n_0\,
      I5 => \outRMS[1]_i_3_n_0\,
      O => \outRMS[1]_i_1_n_0\
    );
\outRMS[1]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => rddat0(1),
      I1 => \outRMS[15]_i_7_n_0\,
      I2 => outRMS1(1),
      I3 => \outRMS[15]_i_9_n_0\,
      O => \outRMS[1]_i_2_n_0\
    );
\outRMS[1]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => rddat2(1),
      I1 => \outRMS[15]_i_13_n_0\,
      I2 => \outRMS_reg[4]_i_11_n_7\,
      I3 => \outRMS[15]_i_15_n_0\,
      O => \outRMS[1]_i_3_n_0\
    );
\outRMS[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFEAEAEA"
    )
        port map (
      I0 => \outRMS[2]_i_2_n_0\,
      I1 => \rddat1_reg_n_0_[2]\,
      I2 => \outRMS[15]_i_3_n_0\,
      I3 => \outRMS_reg[4]_i_3_n_6\,
      I4 => \outRMS[15]_i_5_n_0\,
      I5 => \outRMS[2]_i_3_n_0\,
      O => \outRMS[2]_i_1_n_0\
    );
\outRMS[2]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => rddat0(2),
      I1 => \outRMS[15]_i_7_n_0\,
      I2 => outRMS1(2),
      I3 => \outRMS[15]_i_9_n_0\,
      O => \outRMS[2]_i_2_n_0\
    );
\outRMS[2]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => rddat2(2),
      I1 => \outRMS[15]_i_13_n_0\,
      I2 => \outRMS_reg[4]_i_11_n_6\,
      I3 => \outRMS[15]_i_15_n_0\,
      O => \outRMS[2]_i_3_n_0\
    );
\outRMS[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFEAEAEA"
    )
        port map (
      I0 => \outRMS[3]_i_2_n_0\,
      I1 => \rddat1_reg_n_0_[3]\,
      I2 => \outRMS[15]_i_3_n_0\,
      I3 => \outRMS_reg[4]_i_3_n_5\,
      I4 => \outRMS[15]_i_5_n_0\,
      I5 => \outRMS[3]_i_3_n_0\,
      O => \outRMS[3]_i_1_n_0\
    );
\outRMS[3]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => rddat0(3),
      I1 => \outRMS[15]_i_7_n_0\,
      I2 => outRMS1(3),
      I3 => \outRMS[15]_i_9_n_0\,
      O => \outRMS[3]_i_2_n_0\
    );
\outRMS[3]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => rddat2(3),
      I1 => \outRMS[15]_i_13_n_0\,
      I2 => \outRMS_reg[4]_i_11_n_5\,
      I3 => \outRMS[15]_i_15_n_0\,
      O => \outRMS[3]_i_3_n_0\
    );
\outRMS[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFEAEAEA"
    )
        port map (
      I0 => \outRMS[4]_i_2_n_0\,
      I1 => \rddat1_reg_n_0_[4]\,
      I2 => \outRMS[15]_i_3_n_0\,
      I3 => \outRMS_reg[4]_i_3_n_4\,
      I4 => \outRMS[15]_i_5_n_0\,
      I5 => \outRMS[4]_i_4_n_0\,
      O => \outRMS[4]_i_1_n_0\
    );
\outRMS[4]_i_10\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \rddat1_reg_n_0_[1]\,
      O => \outRMS[4]_i_10_n_0\
    );
\outRMS[4]_i_12\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => rddat0(0),
      O => \outRMS[4]_i_12_n_0\
    );
\outRMS[4]_i_13\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => rddat0(4),
      O => \outRMS[4]_i_13_n_0\
    );
\outRMS[4]_i_14\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => rddat0(3),
      O => \outRMS[4]_i_14_n_0\
    );
\outRMS[4]_i_15\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => rddat0(2),
      O => \outRMS[4]_i_15_n_0\
    );
\outRMS[4]_i_16\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => rddat0(1),
      O => \outRMS[4]_i_16_n_0\
    );
\outRMS[4]_i_17\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => rddat2(0),
      O => \outRMS[4]_i_17_n_0\
    );
\outRMS[4]_i_18\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => rddat2(4),
      O => \outRMS[4]_i_18_n_0\
    );
\outRMS[4]_i_19\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => rddat2(3),
      O => \outRMS[4]_i_19_n_0\
    );
\outRMS[4]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => rddat0(4),
      I1 => \outRMS[15]_i_7_n_0\,
      I2 => outRMS1(4),
      I3 => \outRMS[15]_i_9_n_0\,
      O => \outRMS[4]_i_2_n_0\
    );
\outRMS[4]_i_20\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => rddat2(2),
      O => \outRMS[4]_i_20_n_0\
    );
\outRMS[4]_i_21\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => rddat2(1),
      O => \outRMS[4]_i_21_n_0\
    );
\outRMS[4]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => rddat2(4),
      I1 => \outRMS[15]_i_13_n_0\,
      I2 => \outRMS_reg[4]_i_11_n_4\,
      I3 => \outRMS[15]_i_15_n_0\,
      O => \outRMS[4]_i_4_n_0\
    );
\outRMS[4]_i_6\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \rddat1_reg_n_0_[0]\,
      O => \outRMS[4]_i_6_n_0\
    );
\outRMS[4]_i_7\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \rddat1_reg_n_0_[4]\,
      O => \outRMS[4]_i_7_n_0\
    );
\outRMS[4]_i_8\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \rddat1_reg_n_0_[3]\,
      O => \outRMS[4]_i_8_n_0\
    );
\outRMS[4]_i_9\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \rddat1_reg_n_0_[2]\,
      O => \outRMS[4]_i_9_n_0\
    );
\outRMS[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFEAEAEA"
    )
        port map (
      I0 => \outRMS[5]_i_2_n_0\,
      I1 => \rddat1_reg_n_0_[5]\,
      I2 => \outRMS[15]_i_3_n_0\,
      I3 => \outRMS_reg[8]_i_3_n_7\,
      I4 => \outRMS[15]_i_5_n_0\,
      I5 => \outRMS[5]_i_3_n_0\,
      O => \outRMS[5]_i_1_n_0\
    );
\outRMS[5]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => rddat0(5),
      I1 => \outRMS[15]_i_7_n_0\,
      I2 => outRMS1(5),
      I3 => \outRMS[15]_i_9_n_0\,
      O => \outRMS[5]_i_2_n_0\
    );
\outRMS[5]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => rddat2(5),
      I1 => \outRMS[15]_i_13_n_0\,
      I2 => \outRMS_reg[8]_i_10_n_7\,
      I3 => \outRMS[15]_i_15_n_0\,
      O => \outRMS[5]_i_3_n_0\
    );
\outRMS[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFEAEAEA"
    )
        port map (
      I0 => \outRMS[6]_i_2_n_0\,
      I1 => \rddat1_reg_n_0_[6]\,
      I2 => \outRMS[15]_i_3_n_0\,
      I3 => \outRMS_reg[8]_i_3_n_6\,
      I4 => \outRMS[15]_i_5_n_0\,
      I5 => \outRMS[6]_i_3_n_0\,
      O => \outRMS[6]_i_1_n_0\
    );
\outRMS[6]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => rddat0(6),
      I1 => \outRMS[15]_i_7_n_0\,
      I2 => outRMS1(6),
      I3 => \outRMS[15]_i_9_n_0\,
      O => \outRMS[6]_i_2_n_0\
    );
\outRMS[6]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => rddat2(6),
      I1 => \outRMS[15]_i_13_n_0\,
      I2 => \outRMS_reg[8]_i_10_n_6\,
      I3 => \outRMS[15]_i_15_n_0\,
      O => \outRMS[6]_i_3_n_0\
    );
\outRMS[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFEAEAEA"
    )
        port map (
      I0 => \outRMS[7]_i_2_n_0\,
      I1 => \rddat1_reg_n_0_[7]\,
      I2 => \outRMS[15]_i_3_n_0\,
      I3 => \outRMS_reg[8]_i_3_n_5\,
      I4 => \outRMS[15]_i_5_n_0\,
      I5 => \outRMS[7]_i_3_n_0\,
      O => \outRMS[7]_i_1_n_0\
    );
\outRMS[7]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => rddat0(7),
      I1 => \outRMS[15]_i_7_n_0\,
      I2 => outRMS1(7),
      I3 => \outRMS[15]_i_9_n_0\,
      O => \outRMS[7]_i_2_n_0\
    );
\outRMS[7]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => rddat2(7),
      I1 => \outRMS[15]_i_13_n_0\,
      I2 => \outRMS_reg[8]_i_10_n_5\,
      I3 => \outRMS[15]_i_15_n_0\,
      O => \outRMS[7]_i_3_n_0\
    );
\outRMS[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFEAEAEA"
    )
        port map (
      I0 => \outRMS[8]_i_2_n_0\,
      I1 => \rddat1_reg_n_0_[8]\,
      I2 => \outRMS[15]_i_3_n_0\,
      I3 => \outRMS_reg[8]_i_3_n_4\,
      I4 => \outRMS[15]_i_5_n_0\,
      I5 => \outRMS[8]_i_4_n_0\,
      O => \outRMS[8]_i_1_n_0\
    );
\outRMS[8]_i_11\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => rddat0(8),
      O => \outRMS[8]_i_11_n_0\
    );
\outRMS[8]_i_12\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => rddat0(7),
      O => \outRMS[8]_i_12_n_0\
    );
\outRMS[8]_i_13\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => rddat0(6),
      O => \outRMS[8]_i_13_n_0\
    );
\outRMS[8]_i_14\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => rddat0(5),
      O => \outRMS[8]_i_14_n_0\
    );
\outRMS[8]_i_15\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => rddat2(8),
      O => \outRMS[8]_i_15_n_0\
    );
\outRMS[8]_i_16\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => rddat2(7),
      O => \outRMS[8]_i_16_n_0\
    );
\outRMS[8]_i_17\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => rddat2(6),
      O => \outRMS[8]_i_17_n_0\
    );
\outRMS[8]_i_18\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => rddat2(5),
      O => \outRMS[8]_i_18_n_0\
    );
\outRMS[8]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => rddat0(8),
      I1 => \outRMS[15]_i_7_n_0\,
      I2 => outRMS1(8),
      I3 => \outRMS[15]_i_9_n_0\,
      O => \outRMS[8]_i_2_n_0\
    );
\outRMS[8]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => rddat2(8),
      I1 => \outRMS[15]_i_13_n_0\,
      I2 => \outRMS_reg[8]_i_10_n_4\,
      I3 => \outRMS[15]_i_15_n_0\,
      O => \outRMS[8]_i_4_n_0\
    );
\outRMS[8]_i_6\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \rddat1_reg_n_0_[8]\,
      O => \outRMS[8]_i_6_n_0\
    );
\outRMS[8]_i_7\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \rddat1_reg_n_0_[7]\,
      O => \outRMS[8]_i_7_n_0\
    );
\outRMS[8]_i_8\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \rddat1_reg_n_0_[6]\,
      O => \outRMS[8]_i_8_n_0\
    );
\outRMS[8]_i_9\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \rddat1_reg_n_0_[5]\,
      O => \outRMS[8]_i_9_n_0\
    );
\outRMS[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFEAEAEA"
    )
        port map (
      I0 => \outRMS[9]_i_2_n_0\,
      I1 => \rddat1_reg_n_0_[9]\,
      I2 => \outRMS[15]_i_3_n_0\,
      I3 => \outRMS_reg[12]_i_3_n_7\,
      I4 => \outRMS[15]_i_5_n_0\,
      I5 => \outRMS[9]_i_3_n_0\,
      O => \outRMS[9]_i_1_n_0\
    );
\outRMS[9]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => rddat0(9),
      I1 => \outRMS[15]_i_7_n_0\,
      I2 => outRMS1(9),
      I3 => \outRMS[15]_i_9_n_0\,
      O => \outRMS[9]_i_2_n_0\
    );
\outRMS[9]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => rddat2(9),
      I1 => \outRMS[15]_i_13_n_0\,
      I2 => \outRMS_reg[12]_i_10_n_7\,
      I3 => \outRMS[15]_i_15_n_0\,
      O => \outRMS[9]_i_3_n_0\
    );
\outRMS_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => CLK_50M,
      CE => '1',
      CLR => CS_i_3_n_0,
      D => \outRMS[0]_i_1_n_0\,
      Q => outRMS(0)
    );
\outRMS_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => CLK_50M,
      CE => '1',
      CLR => CS_i_3_n_0,
      D => \outRMS[10]_i_1_n_0\,
      Q => outRMS(10)
    );
\outRMS_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => CLK_50M,
      CE => '1',
      CLR => CS_i_3_n_0,
      D => \outRMS[11]_i_1_n_0\,
      Q => outRMS(11)
    );
\outRMS_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => CLK_50M,
      CE => '1',
      CLR => CS_i_3_n_0,
      D => \outRMS[12]_i_1_n_0\,
      Q => outRMS(12)
    );
\outRMS_reg[12]_i_10\: unisim.vcomponents.CARRY4
     port map (
      CI => \outRMS_reg[8]_i_10_n_0\,
      CO(3) => \outRMS_reg[12]_i_10_n_0\,
      CO(2) => \outRMS_reg[12]_i_10_n_1\,
      CO(1) => \outRMS_reg[12]_i_10_n_2\,
      CO(0) => \outRMS_reg[12]_i_10_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \outRMS_reg[12]_i_10_n_4\,
      O(2) => \outRMS_reg[12]_i_10_n_5\,
      O(1) => \outRMS_reg[12]_i_10_n_6\,
      O(0) => \outRMS_reg[12]_i_10_n_7\,
      S(3) => \outRMS[12]_i_15_n_0\,
      S(2) => \outRMS[12]_i_16_n_0\,
      S(1) => \outRMS[12]_i_17_n_0\,
      S(0) => \outRMS[12]_i_18_n_0\
    );
\outRMS_reg[12]_i_3\: unisim.vcomponents.CARRY4
     port map (
      CI => \outRMS_reg[8]_i_3_n_0\,
      CO(3) => \outRMS_reg[12]_i_3_n_0\,
      CO(2) => \outRMS_reg[12]_i_3_n_1\,
      CO(1) => \outRMS_reg[12]_i_3_n_2\,
      CO(0) => \outRMS_reg[12]_i_3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \outRMS_reg[12]_i_3_n_4\,
      O(2) => \outRMS_reg[12]_i_3_n_5\,
      O(1) => \outRMS_reg[12]_i_3_n_6\,
      O(0) => \outRMS_reg[12]_i_3_n_7\,
      S(3) => \outRMS[12]_i_6_n_0\,
      S(2) => \outRMS[12]_i_7_n_0\,
      S(1) => \outRMS[12]_i_8_n_0\,
      S(0) => \outRMS[12]_i_9_n_0\
    );
\outRMS_reg[12]_i_5\: unisim.vcomponents.CARRY4
     port map (
      CI => \outRMS_reg[8]_i_5_n_0\,
      CO(3) => \outRMS_reg[12]_i_5_n_0\,
      CO(2) => \outRMS_reg[12]_i_5_n_1\,
      CO(1) => \outRMS_reg[12]_i_5_n_2\,
      CO(0) => \outRMS_reg[12]_i_5_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => outRMS1(12 downto 9),
      S(3) => \outRMS[12]_i_11_n_0\,
      S(2) => \outRMS[12]_i_12_n_0\,
      S(1) => \outRMS[12]_i_13_n_0\,
      S(0) => \outRMS[12]_i_14_n_0\
    );
\outRMS_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => CLK_50M,
      CE => '1',
      CLR => CS_i_3_n_0,
      D => \outRMS[13]_i_1_n_0\,
      Q => outRMS(13)
    );
\outRMS_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => CLK_50M,
      CE => '1',
      CLR => CS_i_3_n_0,
      D => \outRMS[14]_i_1_n_0\,
      Q => outRMS(14)
    );
\outRMS_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => CLK_50M,
      CE => '1',
      CLR => CS_i_3_n_0,
      D => \outRMS[15]_i_1_n_0\,
      Q => outRMS(15)
    );
\outRMS_reg[15]_i_14\: unisim.vcomponents.CARRY4
     port map (
      CI => \outRMS_reg[12]_i_10_n_0\,
      CO(3 downto 2) => \NLW_outRMS_reg[15]_i_14_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \outRMS_reg[15]_i_14_n_2\,
      CO(0) => \outRMS_reg[15]_i_14_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_outRMS_reg[15]_i_14_O_UNCONNECTED\(3),
      O(2) => \outRMS_reg[15]_i_14_n_5\,
      O(1) => \outRMS_reg[15]_i_14_n_6\,
      O(0) => \outRMS_reg[15]_i_14_n_7\,
      S(3) => '0',
      S(2) => rddat2(15),
      S(1) => \outRMS[15]_i_31_n_0\,
      S(0) => \outRMS[15]_i_32_n_0\
    );
\outRMS_reg[15]_i_4\: unisim.vcomponents.CARRY4
     port map (
      CI => \outRMS_reg[12]_i_3_n_0\,
      CO(3 downto 2) => \NLW_outRMS_reg[15]_i_4_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \outRMS_reg[15]_i_4_n_2\,
      CO(0) => \outRMS_reg[15]_i_4_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_outRMS_reg[15]_i_4_O_UNCONNECTED\(3),
      O(2) => \outRMS_reg[15]_i_4_n_5\,
      O(1) => \outRMS_reg[15]_i_4_n_6\,
      O(0) => \outRMS_reg[15]_i_4_n_7\,
      S(3) => '0',
      S(2) => \rddat1_reg_n_0_[15]\,
      S(1) => \outRMS[15]_i_11_n_0\,
      S(0) => \outRMS[15]_i_12_n_0\
    );
\outRMS_reg[15]_i_8\: unisim.vcomponents.CARRY4
     port map (
      CI => \outRMS_reg[12]_i_5_n_0\,
      CO(3 downto 2) => \NLW_outRMS_reg[15]_i_8_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \outRMS_reg[15]_i_8_n_2\,
      CO(0) => \outRMS_reg[15]_i_8_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_outRMS_reg[15]_i_8_O_UNCONNECTED\(3),
      O(2 downto 0) => outRMS1(15 downto 13),
      S(3) => '0',
      S(2) => rddat0(15),
      S(1) => \outRMS[15]_i_21_n_0\,
      S(0) => \outRMS[15]_i_22_n_0\
    );
\outRMS_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => CLK_50M,
      CE => '1',
      CLR => CS_i_3_n_0,
      D => \outRMS[1]_i_1_n_0\,
      Q => outRMS(1)
    );
\outRMS_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => CLK_50M,
      CE => '1',
      CLR => CS_i_3_n_0,
      D => \outRMS[2]_i_1_n_0\,
      Q => outRMS(2)
    );
\outRMS_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => CLK_50M,
      CE => '1',
      CLR => CS_i_3_n_0,
      D => \outRMS[3]_i_1_n_0\,
      Q => outRMS(3)
    );
\outRMS_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => CLK_50M,
      CE => '1',
      CLR => CS_i_3_n_0,
      D => \outRMS[4]_i_1_n_0\,
      Q => outRMS(4)
    );
\outRMS_reg[4]_i_11\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \outRMS_reg[4]_i_11_n_0\,
      CO(2) => \outRMS_reg[4]_i_11_n_1\,
      CO(1) => \outRMS_reg[4]_i_11_n_2\,
      CO(0) => \outRMS_reg[4]_i_11_n_3\,
      CYINIT => \outRMS[4]_i_17_n_0\,
      DI(3 downto 0) => B"0000",
      O(3) => \outRMS_reg[4]_i_11_n_4\,
      O(2) => \outRMS_reg[4]_i_11_n_5\,
      O(1) => \outRMS_reg[4]_i_11_n_6\,
      O(0) => \outRMS_reg[4]_i_11_n_7\,
      S(3) => \outRMS[4]_i_18_n_0\,
      S(2) => \outRMS[4]_i_19_n_0\,
      S(1) => \outRMS[4]_i_20_n_0\,
      S(0) => \outRMS[4]_i_21_n_0\
    );
\outRMS_reg[4]_i_3\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \outRMS_reg[4]_i_3_n_0\,
      CO(2) => \outRMS_reg[4]_i_3_n_1\,
      CO(1) => \outRMS_reg[4]_i_3_n_2\,
      CO(0) => \outRMS_reg[4]_i_3_n_3\,
      CYINIT => \outRMS[4]_i_6_n_0\,
      DI(3 downto 0) => B"0000",
      O(3) => \outRMS_reg[4]_i_3_n_4\,
      O(2) => \outRMS_reg[4]_i_3_n_5\,
      O(1) => \outRMS_reg[4]_i_3_n_6\,
      O(0) => \outRMS_reg[4]_i_3_n_7\,
      S(3) => \outRMS[4]_i_7_n_0\,
      S(2) => \outRMS[4]_i_8_n_0\,
      S(1) => \outRMS[4]_i_9_n_0\,
      S(0) => \outRMS[4]_i_10_n_0\
    );
\outRMS_reg[4]_i_5\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \outRMS_reg[4]_i_5_n_0\,
      CO(2) => \outRMS_reg[4]_i_5_n_1\,
      CO(1) => \outRMS_reg[4]_i_5_n_2\,
      CO(0) => \outRMS_reg[4]_i_5_n_3\,
      CYINIT => \outRMS[4]_i_12_n_0\,
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => outRMS1(4 downto 1),
      S(3) => \outRMS[4]_i_13_n_0\,
      S(2) => \outRMS[4]_i_14_n_0\,
      S(1) => \outRMS[4]_i_15_n_0\,
      S(0) => \outRMS[4]_i_16_n_0\
    );
\outRMS_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => CLK_50M,
      CE => '1',
      CLR => CS_i_3_n_0,
      D => \outRMS[5]_i_1_n_0\,
      Q => outRMS(5)
    );
\outRMS_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => CLK_50M,
      CE => '1',
      CLR => CS_i_3_n_0,
      D => \outRMS[6]_i_1_n_0\,
      Q => outRMS(6)
    );
\outRMS_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => CLK_50M,
      CE => '1',
      CLR => CS_i_3_n_0,
      D => \outRMS[7]_i_1_n_0\,
      Q => outRMS(7)
    );
\outRMS_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => CLK_50M,
      CE => '1',
      CLR => CS_i_3_n_0,
      D => \outRMS[8]_i_1_n_0\,
      Q => outRMS(8)
    );
\outRMS_reg[8]_i_10\: unisim.vcomponents.CARRY4
     port map (
      CI => \outRMS_reg[4]_i_11_n_0\,
      CO(3) => \outRMS_reg[8]_i_10_n_0\,
      CO(2) => \outRMS_reg[8]_i_10_n_1\,
      CO(1) => \outRMS_reg[8]_i_10_n_2\,
      CO(0) => \outRMS_reg[8]_i_10_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \outRMS_reg[8]_i_10_n_4\,
      O(2) => \outRMS_reg[8]_i_10_n_5\,
      O(1) => \outRMS_reg[8]_i_10_n_6\,
      O(0) => \outRMS_reg[8]_i_10_n_7\,
      S(3) => \outRMS[8]_i_15_n_0\,
      S(2) => \outRMS[8]_i_16_n_0\,
      S(1) => \outRMS[8]_i_17_n_0\,
      S(0) => \outRMS[8]_i_18_n_0\
    );
\outRMS_reg[8]_i_3\: unisim.vcomponents.CARRY4
     port map (
      CI => \outRMS_reg[4]_i_3_n_0\,
      CO(3) => \outRMS_reg[8]_i_3_n_0\,
      CO(2) => \outRMS_reg[8]_i_3_n_1\,
      CO(1) => \outRMS_reg[8]_i_3_n_2\,
      CO(0) => \outRMS_reg[8]_i_3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \outRMS_reg[8]_i_3_n_4\,
      O(2) => \outRMS_reg[8]_i_3_n_5\,
      O(1) => \outRMS_reg[8]_i_3_n_6\,
      O(0) => \outRMS_reg[8]_i_3_n_7\,
      S(3) => \outRMS[8]_i_6_n_0\,
      S(2) => \outRMS[8]_i_7_n_0\,
      S(1) => \outRMS[8]_i_8_n_0\,
      S(0) => \outRMS[8]_i_9_n_0\
    );
\outRMS_reg[8]_i_5\: unisim.vcomponents.CARRY4
     port map (
      CI => \outRMS_reg[4]_i_5_n_0\,
      CO(3) => \outRMS_reg[8]_i_5_n_0\,
      CO(2) => \outRMS_reg[8]_i_5_n_1\,
      CO(1) => \outRMS_reg[8]_i_5_n_2\,
      CO(0) => \outRMS_reg[8]_i_5_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => outRMS1(8 downto 5),
      S(3) => \outRMS[8]_i_11_n_0\,
      S(2) => \outRMS[8]_i_12_n_0\,
      S(1) => \outRMS[8]_i_13_n_0\,
      S(0) => \outRMS[8]_i_14_n_0\
    );
\outRMS_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => CLK_50M,
      CE => '1',
      CLR => CS_i_3_n_0,
      D => \outRMS[9]_i_1_n_0\,
      Q => outRMS(9)
    );
\rddat0[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000020000000000"
    )
        port map (
      I0 => rst_n,
      I1 => \order__0\(2),
      I2 => \order__0\(0),
      I3 => \order__0\(3),
      I4 => \order__0\(1),
      I5 => CS_i_4_n_0,
      O => rddat0_2
    );
\rddat0_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => CLK_2M,
      CE => rddat0_2,
      D => rddat(0),
      Q => rddat0(0),
      R => '0'
    );
\rddat0_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => CLK_2M,
      CE => rddat0_2,
      D => rddat(10),
      Q => rddat0(10),
      R => '0'
    );
\rddat0_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => CLK_2M,
      CE => rddat0_2,
      D => rddat(11),
      Q => rddat0(11),
      R => '0'
    );
\rddat0_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => CLK_2M,
      CE => rddat0_2,
      D => rddat(12),
      Q => rddat0(12),
      R => '0'
    );
\rddat0_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => CLK_2M,
      CE => rddat0_2,
      D => rddat(13),
      Q => rddat0(13),
      R => '0'
    );
\rddat0_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => CLK_2M,
      CE => rddat0_2,
      D => rddat(14),
      Q => rddat0(14),
      R => '0'
    );
\rddat0_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => CLK_2M,
      CE => rddat0_2,
      D => rddat(15),
      Q => rddat0(15),
      R => '0'
    );
\rddat0_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => CLK_2M,
      CE => rddat0_2,
      D => rddat(1),
      Q => rddat0(1),
      R => '0'
    );
\rddat0_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => CLK_2M,
      CE => rddat0_2,
      D => rddat(2),
      Q => rddat0(2),
      R => '0'
    );
\rddat0_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => CLK_2M,
      CE => rddat0_2,
      D => rddat(3),
      Q => rddat0(3),
      R => '0'
    );
\rddat0_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => CLK_2M,
      CE => rddat0_2,
      D => rddat(4),
      Q => rddat0(4),
      R => '0'
    );
\rddat0_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => CLK_2M,
      CE => rddat0_2,
      D => rddat(5),
      Q => rddat0(5),
      R => '0'
    );
\rddat0_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => CLK_2M,
      CE => rddat0_2,
      D => rddat(6),
      Q => rddat0(6),
      R => '0'
    );
\rddat0_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => CLK_2M,
      CE => rddat0_2,
      D => rddat(7),
      Q => rddat0(7),
      R => '0'
    );
\rddat0_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => CLK_2M,
      CE => rddat0_2,
      D => rddat(8),
      Q => rddat0(8),
      R => '0'
    );
\rddat0_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => CLK_2M,
      CE => rddat0_2,
      D => rddat(9),
      Q => rddat0(9),
      R => '0'
    );
\rddat1[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0008000000000000"
    )
        port map (
      I0 => rst_n,
      I1 => \order__0\(0),
      I2 => \order__0\(1),
      I3 => \order__0\(2),
      I4 => \order__0\(3),
      I5 => CS_i_4_n_0,
      O => rddat1_0
    );
\rddat1_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => CLK_2M,
      CE => rddat1_0,
      D => rddat(0),
      Q => \rddat1_reg_n_0_[0]\,
      R => '0'
    );
\rddat1_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => CLK_2M,
      CE => rddat1_0,
      D => rddat(10),
      Q => \rddat1_reg_n_0_[10]\,
      R => '0'
    );
\rddat1_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => CLK_2M,
      CE => rddat1_0,
      D => rddat(11),
      Q => \rddat1_reg_n_0_[11]\,
      R => '0'
    );
\rddat1_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => CLK_2M,
      CE => rddat1_0,
      D => rddat(12),
      Q => \rddat1_reg_n_0_[12]\,
      R => '0'
    );
\rddat1_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => CLK_2M,
      CE => rddat1_0,
      D => rddat(13),
      Q => \rddat1_reg_n_0_[13]\,
      R => '0'
    );
\rddat1_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => CLK_2M,
      CE => rddat1_0,
      D => rddat(14),
      Q => \rddat1_reg_n_0_[14]\,
      R => '0'
    );
\rddat1_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => CLK_2M,
      CE => rddat1_0,
      D => rddat(15),
      Q => \rddat1_reg_n_0_[15]\,
      R => '0'
    );
\rddat1_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => CLK_2M,
      CE => rddat1_0,
      D => rddat(1),
      Q => \rddat1_reg_n_0_[1]\,
      R => '0'
    );
\rddat1_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => CLK_2M,
      CE => rddat1_0,
      D => rddat(2),
      Q => \rddat1_reg_n_0_[2]\,
      R => '0'
    );
\rddat1_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => CLK_2M,
      CE => rddat1_0,
      D => rddat(3),
      Q => \rddat1_reg_n_0_[3]\,
      R => '0'
    );
\rddat1_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => CLK_2M,
      CE => rddat1_0,
      D => rddat(4),
      Q => \rddat1_reg_n_0_[4]\,
      R => '0'
    );
\rddat1_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => CLK_2M,
      CE => rddat1_0,
      D => rddat(5),
      Q => \rddat1_reg_n_0_[5]\,
      R => '0'
    );
\rddat1_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => CLK_2M,
      CE => rddat1_0,
      D => rddat(6),
      Q => \rddat1_reg_n_0_[6]\,
      R => '0'
    );
\rddat1_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => CLK_2M,
      CE => rddat1_0,
      D => rddat(7),
      Q => \rddat1_reg_n_0_[7]\,
      R => '0'
    );
\rddat1_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => CLK_2M,
      CE => rddat1_0,
      D => rddat(8),
      Q => \rddat1_reg_n_0_[8]\,
      R => '0'
    );
\rddat1_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => CLK_2M,
      CE => rddat1_0,
      D => rddat(9),
      Q => \rddat1_reg_n_0_[9]\,
      R => '0'
    );
\rddat2[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2000000000000000"
    )
        port map (
      I0 => rst_n,
      I1 => \order__0\(3),
      I2 => \order__0\(2),
      I3 => \order__0\(0),
      I4 => \order__0\(1),
      I5 => CS_i_4_n_0,
      O => rddat2_1
    );
\rddat2_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => CLK_2M,
      CE => rddat2_1,
      D => rddat(0),
      Q => rddat2(0),
      R => '0'
    );
\rddat2_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => CLK_2M,
      CE => rddat2_1,
      D => rddat(10),
      Q => rddat2(10),
      R => '0'
    );
\rddat2_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => CLK_2M,
      CE => rddat2_1,
      D => rddat(11),
      Q => rddat2(11),
      R => '0'
    );
\rddat2_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => CLK_2M,
      CE => rddat2_1,
      D => rddat(12),
      Q => rddat2(12),
      R => '0'
    );
\rddat2_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => CLK_2M,
      CE => rddat2_1,
      D => rddat(13),
      Q => rddat2(13),
      R => '0'
    );
\rddat2_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => CLK_2M,
      CE => rddat2_1,
      D => rddat(14),
      Q => rddat2(14),
      R => '0'
    );
\rddat2_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => CLK_2M,
      CE => rddat2_1,
      D => rddat(15),
      Q => rddat2(15),
      R => '0'
    );
\rddat2_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => CLK_2M,
      CE => rddat2_1,
      D => rddat(1),
      Q => rddat2(1),
      R => '0'
    );
\rddat2_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => CLK_2M,
      CE => rddat2_1,
      D => rddat(2),
      Q => rddat2(2),
      R => '0'
    );
\rddat2_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => CLK_2M,
      CE => rddat2_1,
      D => rddat(3),
      Q => rddat2(3),
      R => '0'
    );
\rddat2_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => CLK_2M,
      CE => rddat2_1,
      D => rddat(4),
      Q => rddat2(4),
      R => '0'
    );
\rddat2_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => CLK_2M,
      CE => rddat2_1,
      D => rddat(5),
      Q => rddat2(5),
      R => '0'
    );
\rddat2_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => CLK_2M,
      CE => rddat2_1,
      D => rddat(6),
      Q => rddat2(6),
      R => '0'
    );
\rddat2_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => CLK_2M,
      CE => rddat2_1,
      D => rddat(7),
      Q => rddat2(7),
      R => '0'
    );
\rddat2_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => CLK_2M,
      CE => rddat2_1,
      D => rddat(8),
      Q => rddat2(8),
      R => '0'
    );
\rddat2_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => CLK_2M,
      CE => rddat2_1,
      D => rddat(9),
      Q => rddat2(9),
      R => '0'
    );
\rddat[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000002"
    )
        port map (
      I0 => SDO,
      I1 => cnt_reg(3),
      I2 => \rddat[1]_i_2_n_0\,
      I3 => \rddat[8]_i_2_n_0\,
      I4 => \rddat[8]_i_3_n_0\,
      I5 => rddat(0),
      O => \rddat[0]_i_1_n_0\
    );
\rddat[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFB00000008"
    )
        port map (
      I0 => SDO,
      I1 => rst_n,
      I2 => \rddat[10]_i_2_n_0\,
      I3 => \rddat[10]_i_3_n_0\,
      I4 => \rddat[10]_i_4_n_0\,
      I5 => rddat(10),
      O => \rddat[10]_i_1_n_0\
    );
\rddat[10]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AABFAAFF"
    )
        port map (
      I0 => cnt_reg(4),
      I1 => \order__0\(1),
      I2 => \order__0\(2),
      I3 => \order__0\(3),
      I4 => \order__0\(0),
      O => \rddat[10]_i_2_n_0\
    );
\rddat[10]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => cnt_reg(3),
      I1 => cnt_reg(6),
      O => \rddat[10]_i_3_n_0\
    );
\rddat[10]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => cnt_reg(0),
      I1 => cnt_reg(2),
      I2 => cnt_reg(5),
      I3 => cnt_reg(1),
      O => \rddat[10]_i_4_n_0\
    );
\rddat[11]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE02"
    )
        port map (
      I0 => SDO,
      I1 => cnt_reg(5),
      I2 => \rddat[11]_i_2_n_0\,
      I3 => rddat(11),
      O => \rddat[11]_i_1_n_0\
    );
\rddat[11]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEFFFFFFFFFFFFFF"
    )
        port map (
      I0 => \rddat[11]_i_3_n_0\,
      I1 => cnt_reg(3),
      I2 => cnt_reg(4),
      I3 => \cnt[6]_i_2_n_0\,
      I4 => rst_n,
      I5 => cnt_reg(2),
      O => \rddat[11]_i_2_n_0\
    );
\rddat[11]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"070FFFFF"
    )
        port map (
      I0 => \order__0\(1),
      I1 => \order__0\(2),
      I2 => \order__0\(3),
      I3 => \order__0\(0),
      I4 => cnt_reg(6),
      O => \rddat[11]_i_3_n_0\
    );
\rddat[12]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE02"
    )
        port map (
      I0 => SDO,
      I1 => cnt_reg(4),
      I2 => \rddat[12]_i_2_n_0\,
      I3 => rddat(12),
      O => \rddat[12]_i_1_n_0\
    );
\rddat[12]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEFFFFFFFFFFFF"
    )
        port map (
      I0 => \rddat[15]_i_3_n_0\,
      I1 => cnt_reg(0),
      I2 => cnt_reg(3),
      I3 => \rddat[8]_i_2_n_0\,
      I4 => cnt_reg(6),
      I5 => cnt_reg(2),
      O => \rddat[12]_i_2_n_0\
    );
\rddat[13]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE02"
    )
        port map (
      I0 => SDO,
      I1 => cnt_reg(4),
      I2 => \rddat[13]_i_2_n_0\,
      I3 => rddat(13),
      O => \rddat[13]_i_1_n_0\
    );
\rddat[13]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEFFFFFFFFFFFF"
    )
        port map (
      I0 => \rddat[15]_i_3_n_0\,
      I1 => cnt_reg(1),
      I2 => cnt_reg(3),
      I3 => \rddat[9]_i_2_n_0\,
      I4 => cnt_reg(6),
      I5 => cnt_reg(2),
      O => \rddat[13]_i_2_n_0\
    );
\rddat[14]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => SDO,
      I1 => \rddat[14]_i_2_n_0\,
      I2 => rddat(14),
      O => \rddat[14]_i_1_n_0\
    );
\rddat[14]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000008000000"
    )
        port map (
      I0 => rst_n,
      I1 => rddat1,
      I2 => cnt_reg(4),
      I3 => cnt_reg(6),
      I4 => cnt_reg(2),
      I5 => \rddat[14]_i_3_n_0\,
      O => \rddat[14]_i_2_n_0\
    );
\rddat[14]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => cnt_reg(0),
      I1 => cnt_reg(3),
      I2 => cnt_reg(5),
      I3 => cnt_reg(1),
      O => \rddat[14]_i_3_n_0\
    );
\rddat[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE02"
    )
        port map (
      I0 => SDO,
      I1 => cnt_reg(4),
      I2 => \rddat[15]_i_2_n_0\,
      I3 => rddat(15),
      O => \rddat[15]_i_1_n_0\
    );
\rddat[15]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEFFFFFFFFFFFFFF"
    )
        port map (
      I0 => \rddat[15]_i_3_n_0\,
      I1 => cnt_reg(2),
      I2 => cnt_reg(3),
      I3 => \cnt[6]_i_2_n_0\,
      I4 => cnt_reg(6),
      I5 => rst_n,
      O => \rddat[15]_i_2_n_0\
    );
\rddat[15]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AABFAAFF"
    )
        port map (
      I0 => cnt_reg(5),
      I1 => \order__0\(1),
      I2 => \order__0\(2),
      I3 => \order__0\(3),
      I4 => \order__0\(0),
      O => \rddat[15]_i_3_n_0\
    );
\rddat[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000002"
    )
        port map (
      I0 => SDO,
      I1 => cnt_reg(3),
      I2 => \rddat[1]_i_2_n_0\,
      I3 => \rddat[9]_i_2_n_0\,
      I4 => \rddat[9]_i_3_n_0\,
      I5 => rddat(1),
      O => \rddat[1]_i_1_n_0\
    );
\rddat[1]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => cnt_reg(4),
      I1 => cnt_reg(6),
      O => \rddat[1]_i_2_n_0\
    );
\rddat[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => SDO,
      I1 => \rddat[2]_i_2_n_0\,
      I2 => rddat(2),
      O => \rddat[2]_i_1_n_0\
    );
\rddat[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000008000000"
    )
        port map (
      I0 => rst_n,
      I1 => rddat1,
      I2 => cnt_reg(2),
      I3 => cnt_reg(6),
      I4 => cnt_reg(4),
      I5 => \rddat[14]_i_3_n_0\,
      O => \rddat[2]_i_2_n_0\
    );
\rddat[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE02"
    )
        port map (
      I0 => SDO,
      I1 => cnt_reg(5),
      I2 => \rddat[3]_i_2_n_0\,
      I3 => rddat(3),
      O => \rddat[3]_i_1_n_0\
    );
\rddat[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F7FFFFFFFFFFFFFF"
    )
        port map (
      I0 => cnt_reg(6),
      I1 => rst_n,
      I2 => \rddat[10]_i_2_n_0\,
      I3 => \cnt[6]_i_2_n_0\,
      I4 => cnt_reg(3),
      I5 => cnt_reg(2),
      O => \rddat[3]_i_2_n_0\
    );
\rddat[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE02"
    )
        port map (
      I0 => SDO,
      I1 => cnt_reg(5),
      I2 => \rddat[4]_i_2_n_0\,
      I3 => rddat(4),
      O => \rddat[4]_i_1_n_0\
    );
\rddat[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEFFFFFFFFFFFF"
    )
        port map (
      I0 => \rddat[11]_i_3_n_0\,
      I1 => cnt_reg(0),
      I2 => cnt_reg(4),
      I3 => \rddat[8]_i_2_n_0\,
      I4 => cnt_reg(3),
      I5 => cnt_reg(2),
      O => \rddat[4]_i_2_n_0\
    );
\rddat[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE02"
    )
        port map (
      I0 => SDO,
      I1 => cnt_reg(5),
      I2 => \rddat[5]_i_2_n_0\,
      I3 => rddat(5),
      O => \rddat[5]_i_1_n_0\
    );
\rddat[5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEFFFFFFFFFFFF"
    )
        port map (
      I0 => \rddat[11]_i_3_n_0\,
      I1 => cnt_reg(1),
      I2 => cnt_reg(4),
      I3 => \rddat[9]_i_2_n_0\,
      I4 => cnt_reg(3),
      I5 => cnt_reg(2),
      O => \rddat[5]_i_2_n_0\
    );
\rddat[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE02"
    )
        port map (
      I0 => SDO,
      I1 => cnt_reg(4),
      I2 => \rddat[6]_i_2_n_0\,
      I3 => rddat(6),
      O => \rddat[6]_i_1_n_0\
    );
\rddat[6]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFEFFFFFF"
    )
        port map (
      I0 => \rddat[15]_i_3_n_0\,
      I1 => cnt_reg(0),
      I2 => cnt_reg(1),
      I3 => cnt_reg(6),
      I4 => rst_n,
      I5 => \rddat[6]_i_3_n_0\,
      O => \rddat[6]_i_2_n_0\
    );
\rddat[6]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => cnt_reg(3),
      I1 => cnt_reg(2),
      O => \rddat[6]_i_3_n_0\
    );
\rddat[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE02"
    )
        port map (
      I0 => SDO,
      I1 => cnt_reg(5),
      I2 => \rddat[7]_i_2_n_0\,
      I3 => rddat(7),
      O => \rddat[7]_i_1_n_0\
    );
\rddat[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEFFFFFFFFFFFFFF"
    )
        port map (
      I0 => \rddat[11]_i_3_n_0\,
      I1 => cnt_reg(2),
      I2 => cnt_reg(4),
      I3 => \cnt[6]_i_2_n_0\,
      I4 => cnt_reg(3),
      I5 => rst_n,
      O => \rddat[7]_i_2_n_0\
    );
\rddat[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000002"
    )
        port map (
      I0 => SDO,
      I1 => cnt_reg(4),
      I2 => \rddat[10]_i_3_n_0\,
      I3 => \rddat[8]_i_2_n_0\,
      I4 => \rddat[8]_i_3_n_0\,
      I5 => rddat(8),
      O => \rddat[8]_i_1_n_0\
    );
\rddat[8]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => cnt_reg(1),
      I1 => rst_n,
      O => \rddat[8]_i_2_n_0\
    );
\rddat[8]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => cnt_reg(2),
      I1 => cnt_reg(0),
      I2 => \rddat[15]_i_3_n_0\,
      O => \rddat[8]_i_3_n_0\
    );
\rddat[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000002"
    )
        port map (
      I0 => SDO,
      I1 => cnt_reg(4),
      I2 => \rddat[10]_i_3_n_0\,
      I3 => \rddat[9]_i_2_n_0\,
      I4 => \rddat[9]_i_3_n_0\,
      I5 => rddat(9),
      O => \rddat[9]_i_1_n_0\
    );
\rddat[9]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => rst_n,
      I1 => cnt_reg(0),
      O => \rddat[9]_i_2_n_0\
    );
\rddat[9]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => cnt_reg(2),
      I1 => cnt_reg(1),
      I2 => \rddat[15]_i_3_n_0\,
      O => \rddat[9]_i_3_n_0\
    );
\rddat_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => CLK_2M,
      CE => '1',
      CLR => CS_i_3_n_0,
      D => \rddat[0]_i_1_n_0\,
      Q => rddat(0)
    );
\rddat_reg[10]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => CLK_2M,
      CE => '1',
      CLR => CS_i_3_n_0,
      D => \rddat[10]_i_1_n_0\,
      Q => rddat(10)
    );
\rddat_reg[11]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => CLK_2M,
      CE => '1',
      CLR => CS_i_3_n_0,
      D => \rddat[11]_i_1_n_0\,
      Q => rddat(11)
    );
\rddat_reg[12]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => CLK_2M,
      CE => '1',
      CLR => CS_i_3_n_0,
      D => \rddat[12]_i_1_n_0\,
      Q => rddat(12)
    );
\rddat_reg[13]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => CLK_2M,
      CE => '1',
      CLR => CS_i_3_n_0,
      D => \rddat[13]_i_1_n_0\,
      Q => rddat(13)
    );
\rddat_reg[14]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => CLK_2M,
      CE => '1',
      CLR => CS_i_3_n_0,
      D => \rddat[14]_i_1_n_0\,
      Q => rddat(14)
    );
\rddat_reg[15]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => CLK_2M,
      CE => '1',
      CLR => CS_i_3_n_0,
      D => \rddat[15]_i_1_n_0\,
      Q => rddat(15)
    );
\rddat_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => CLK_2M,
      CE => '1',
      CLR => CS_i_3_n_0,
      D => \rddat[1]_i_1_n_0\,
      Q => rddat(1)
    );
\rddat_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => CLK_2M,
      CE => '1',
      CLR => CS_i_3_n_0,
      D => \rddat[2]_i_1_n_0\,
      Q => rddat(2)
    );
\rddat_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => CLK_2M,
      CE => '1',
      CLR => CS_i_3_n_0,
      D => \rddat[3]_i_1_n_0\,
      Q => rddat(3)
    );
\rddat_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => CLK_2M,
      CE => '1',
      CLR => CS_i_3_n_0,
      D => \rddat[4]_i_1_n_0\,
      Q => rddat(4)
    );
\rddat_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => CLK_2M,
      CE => '1',
      CLR => CS_i_3_n_0,
      D => \rddat[5]_i_1_n_0\,
      Q => rddat(5)
    );
\rddat_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => CLK_2M,
      CE => '1',
      CLR => CS_i_3_n_0,
      D => \rddat[6]_i_1_n_0\,
      Q => rddat(6)
    );
\rddat_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => CLK_2M,
      CE => '1',
      CLR => CS_i_3_n_0,
      D => \rddat[7]_i_1_n_0\,
      Q => rddat(7)
    );
\rddat_reg[8]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => CLK_2M,
      CE => '1',
      CLR => CS_i_3_n_0,
      D => \rddat[8]_i_1_n_0\,
      Q => rddat(8)
    );
\rddat_reg[9]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => CLK_2M,
      CE => '1',
      CLR => CS_i_3_n_0,
      D => \rddat[9]_i_1_n_0\,
      Q => rddat(9)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_ads8688_0_0 is
  port (
    rst_n : in STD_LOGIC;
    CLK_50M : in STD_LOGIC;
    SDO : in STD_LOGIC;
    dataAddr : in STD_LOGIC_VECTOR ( 1 downto 0 );
    CS : out STD_LOGIC;
    SCLK : out STD_LOGIC;
    SDI : out STD_LOGIC;
    RST : out STD_LOGIC;
    outRMS : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_ads8688_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_ads8688_0_0 : entity is "design_1_ads8688_0_0,ads8688,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of design_1_ads8688_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of design_1_ads8688_0_0 : entity is "package_project";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of design_1_ads8688_0_0 : entity is "ads8688,Vivado 2018.3";
end design_1_ads8688_0_0;

architecture STRUCTURE of design_1_ads8688_0_0 is
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of RST : signal is "xilinx.com:signal:reset:1.0 RST RST";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of RST : signal is "XIL_INTERFACENAME RST, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of rst_n : signal is "xilinx.com:signal:reset:1.0 rst_n RST";
  attribute X_INTERFACE_PARAMETER of rst_n : signal is "XIL_INTERFACENAME rst_n, POLARITY ACTIVE_LOW, INSERT_VIP 0";
begin
inst: entity work.design_1_ads8688_0_0_ads8688
     port map (
      CLK_50M => CLK_50M,
      CS => CS,
      RST => RST,
      SCLK => SCLK,
      SDI => SDI,
      SDO => SDO,
      dataAddr(1 downto 0) => dataAddr(1 downto 0),
      outRMS(15 downto 0) => outRMS(15 downto 0),
      rst_n => rst_n
    );
end STRUCTURE;
