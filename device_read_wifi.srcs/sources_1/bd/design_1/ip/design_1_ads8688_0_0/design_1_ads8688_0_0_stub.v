// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Thu Nov 12 09:54:16 2020
// Host        : LAPTOP-NVARLAE3 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               D:/xilinx/project/device_read_wifi/device_read_wifi.srcs/sources_1/bd/design_1/ip/design_1_ads8688_0_0/design_1_ads8688_0_0_stub.v
// Design      : design_1_ads8688_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "ads8688,Vivado 2018.3" *)
module design_1_ads8688_0_0(rst_n, CLK_50M, SDO, dataAddr, CS, SCLK, SDI, RST, 
  outRMS)
/* synthesis syn_black_box black_box_pad_pin="rst_n,CLK_50M,SDO,dataAddr[1:0],CS,SCLK,SDI,RST,outRMS[15:0]" */;
  input rst_n;
  input CLK_50M;
  input SDO;
  input [1:0]dataAddr;
  output CS;
  output SCLK;
  output SDI;
  output RST;
  output [15:0]outRMS;
endmodule
