-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
-- Date        : Thu Nov 12 09:54:16 2020
-- Host        : LAPTOP-NVARLAE3 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               D:/xilinx/project/device_read_wifi/device_read_wifi.srcs/sources_1/bd/design_1/ip/design_1_ads8688_0_0/design_1_ads8688_0_0_stub.vhdl
-- Design      : design_1_ads8688_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity design_1_ads8688_0_0 is
  Port ( 
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

end design_1_ads8688_0_0;

architecture stub of design_1_ads8688_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "rst_n,CLK_50M,SDO,dataAddr[1:0],CS,SCLK,SDI,RST,outRMS[15:0]";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "ads8688,Vivado 2018.3";
begin
end;
