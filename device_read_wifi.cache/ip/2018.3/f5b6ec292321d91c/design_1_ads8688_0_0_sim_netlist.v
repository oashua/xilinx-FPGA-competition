// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Thu Nov 12 09:54:15 2020
// Host        : LAPTOP-NVARLAE3 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_ads8688_0_0_sim_netlist.v
// Design      : design_1_ads8688_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ads8688
   (RST,
    outRMS,
    SCLK,
    CS,
    SDI,
    SDO,
    rst_n,
    CLK_50M,
    dataAddr);
  output RST;
  output [15:0]outRMS;
  output SCLK;
  output CS;
  output SDI;
  input SDO;
  input rst_n;
  input CLK_50M;
  input [1:0]dataAddr;

  wire CLK_2M;
  wire CLK_50M;
  wire CS;
  wire CS_i_1_n_0;
  wire CS_i_3_n_0;
  wire CS_i_4_n_0;
  wire CS_i_5_n_0;
  wire \FSM_sequential_order[0]_i_1_n_0 ;
  wire [12:9]PRC;
  wire \PRC[10]_i_1_n_0 ;
  wire \PRC[10]_i_2_n_0 ;
  wire \PRC[11]_i_1_n_0 ;
  wire \PRC[12]_i_1_n_0 ;
  wire \PRC[9]_i_1_n_0 ;
  wire RST;
  wire SCLK;
  wire SDI;
  wire SDI_3;
  wire SDI_i_1_n_0;
  wire SDI_i_2_n_0;
  wire SDI_i_4_n_0;
  wire SDI_i_6_n_0;
  wire SDO;
  wire ch_sel;
  wire \ch_sel[10]_i_1_n_0 ;
  wire \ch_sel[12]_i_1_n_0 ;
  wire \cnt[0]_i_1_n_0 ;
  wire \cnt[1]_i_1_n_0 ;
  wire \cnt[2]_i_1_n_0 ;
  wire \cnt[4]_i_1_n_0 ;
  wire \cnt[6]_i_1_n_0 ;
  wire \cnt[6]_i_2_n_0 ;
  wire [6:0]cnt_reg;
  wire data3;
  wire data5;
  wire [1:0]dataAddr;
  wire order;
  wire [3:0]order__0;
  wire [15:0]outRMS;
  wire [15:1]outRMS1;
  wire \outRMS[0]_i_1_n_0 ;
  wire \outRMS[10]_i_1_n_0 ;
  wire \outRMS[10]_i_2_n_0 ;
  wire \outRMS[10]_i_3_n_0 ;
  wire \outRMS[11]_i_1_n_0 ;
  wire \outRMS[11]_i_2_n_0 ;
  wire \outRMS[11]_i_3_n_0 ;
  wire \outRMS[12]_i_11_n_0 ;
  wire \outRMS[12]_i_12_n_0 ;
  wire \outRMS[12]_i_13_n_0 ;
  wire \outRMS[12]_i_14_n_0 ;
  wire \outRMS[12]_i_15_n_0 ;
  wire \outRMS[12]_i_16_n_0 ;
  wire \outRMS[12]_i_17_n_0 ;
  wire \outRMS[12]_i_18_n_0 ;
  wire \outRMS[12]_i_1_n_0 ;
  wire \outRMS[12]_i_2_n_0 ;
  wire \outRMS[12]_i_4_n_0 ;
  wire \outRMS[12]_i_6_n_0 ;
  wire \outRMS[12]_i_7_n_0 ;
  wire \outRMS[12]_i_8_n_0 ;
  wire \outRMS[12]_i_9_n_0 ;
  wire \outRMS[13]_i_1_n_0 ;
  wire \outRMS[13]_i_2_n_0 ;
  wire \outRMS[13]_i_3_n_0 ;
  wire \outRMS[14]_i_1_n_0 ;
  wire \outRMS[14]_i_2_n_0 ;
  wire \outRMS[14]_i_3_n_0 ;
  wire \outRMS[15]_i_10_n_0 ;
  wire \outRMS[15]_i_11_n_0 ;
  wire \outRMS[15]_i_12_n_0 ;
  wire \outRMS[15]_i_13_n_0 ;
  wire \outRMS[15]_i_15_n_0 ;
  wire \outRMS[15]_i_16_n_0 ;
  wire \outRMS[15]_i_17_n_0 ;
  wire \outRMS[15]_i_18_n_0 ;
  wire \outRMS[15]_i_19_n_0 ;
  wire \outRMS[15]_i_1_n_0 ;
  wire \outRMS[15]_i_20_n_0 ;
  wire \outRMS[15]_i_21_n_0 ;
  wire \outRMS[15]_i_22_n_0 ;
  wire \outRMS[15]_i_23_n_0 ;
  wire \outRMS[15]_i_24_n_0 ;
  wire \outRMS[15]_i_25_n_0 ;
  wire \outRMS[15]_i_26_n_0 ;
  wire \outRMS[15]_i_27_n_0 ;
  wire \outRMS[15]_i_28_n_0 ;
  wire \outRMS[15]_i_29_n_0 ;
  wire \outRMS[15]_i_2_n_0 ;
  wire \outRMS[15]_i_30_n_0 ;
  wire \outRMS[15]_i_31_n_0 ;
  wire \outRMS[15]_i_32_n_0 ;
  wire \outRMS[15]_i_3_n_0 ;
  wire \outRMS[15]_i_5_n_0 ;
  wire \outRMS[15]_i_6_n_0 ;
  wire \outRMS[15]_i_7_n_0 ;
  wire \outRMS[15]_i_9_n_0 ;
  wire \outRMS[1]_i_1_n_0 ;
  wire \outRMS[1]_i_2_n_0 ;
  wire \outRMS[1]_i_3_n_0 ;
  wire \outRMS[2]_i_1_n_0 ;
  wire \outRMS[2]_i_2_n_0 ;
  wire \outRMS[2]_i_3_n_0 ;
  wire \outRMS[3]_i_1_n_0 ;
  wire \outRMS[3]_i_2_n_0 ;
  wire \outRMS[3]_i_3_n_0 ;
  wire \outRMS[4]_i_10_n_0 ;
  wire \outRMS[4]_i_12_n_0 ;
  wire \outRMS[4]_i_13_n_0 ;
  wire \outRMS[4]_i_14_n_0 ;
  wire \outRMS[4]_i_15_n_0 ;
  wire \outRMS[4]_i_16_n_0 ;
  wire \outRMS[4]_i_17_n_0 ;
  wire \outRMS[4]_i_18_n_0 ;
  wire \outRMS[4]_i_19_n_0 ;
  wire \outRMS[4]_i_1_n_0 ;
  wire \outRMS[4]_i_20_n_0 ;
  wire \outRMS[4]_i_21_n_0 ;
  wire \outRMS[4]_i_2_n_0 ;
  wire \outRMS[4]_i_4_n_0 ;
  wire \outRMS[4]_i_6_n_0 ;
  wire \outRMS[4]_i_7_n_0 ;
  wire \outRMS[4]_i_8_n_0 ;
  wire \outRMS[4]_i_9_n_0 ;
  wire \outRMS[5]_i_1_n_0 ;
  wire \outRMS[5]_i_2_n_0 ;
  wire \outRMS[5]_i_3_n_0 ;
  wire \outRMS[6]_i_1_n_0 ;
  wire \outRMS[6]_i_2_n_0 ;
  wire \outRMS[6]_i_3_n_0 ;
  wire \outRMS[7]_i_1_n_0 ;
  wire \outRMS[7]_i_2_n_0 ;
  wire \outRMS[7]_i_3_n_0 ;
  wire \outRMS[8]_i_11_n_0 ;
  wire \outRMS[8]_i_12_n_0 ;
  wire \outRMS[8]_i_13_n_0 ;
  wire \outRMS[8]_i_14_n_0 ;
  wire \outRMS[8]_i_15_n_0 ;
  wire \outRMS[8]_i_16_n_0 ;
  wire \outRMS[8]_i_17_n_0 ;
  wire \outRMS[8]_i_18_n_0 ;
  wire \outRMS[8]_i_1_n_0 ;
  wire \outRMS[8]_i_2_n_0 ;
  wire \outRMS[8]_i_4_n_0 ;
  wire \outRMS[8]_i_6_n_0 ;
  wire \outRMS[8]_i_7_n_0 ;
  wire \outRMS[8]_i_8_n_0 ;
  wire \outRMS[8]_i_9_n_0 ;
  wire \outRMS[9]_i_1_n_0 ;
  wire \outRMS[9]_i_2_n_0 ;
  wire \outRMS[9]_i_3_n_0 ;
  wire \outRMS_reg[12]_i_10_n_0 ;
  wire \outRMS_reg[12]_i_10_n_1 ;
  wire \outRMS_reg[12]_i_10_n_2 ;
  wire \outRMS_reg[12]_i_10_n_3 ;
  wire \outRMS_reg[12]_i_10_n_4 ;
  wire \outRMS_reg[12]_i_10_n_5 ;
  wire \outRMS_reg[12]_i_10_n_6 ;
  wire \outRMS_reg[12]_i_10_n_7 ;
  wire \outRMS_reg[12]_i_3_n_0 ;
  wire \outRMS_reg[12]_i_3_n_1 ;
  wire \outRMS_reg[12]_i_3_n_2 ;
  wire \outRMS_reg[12]_i_3_n_3 ;
  wire \outRMS_reg[12]_i_3_n_4 ;
  wire \outRMS_reg[12]_i_3_n_5 ;
  wire \outRMS_reg[12]_i_3_n_6 ;
  wire \outRMS_reg[12]_i_3_n_7 ;
  wire \outRMS_reg[12]_i_5_n_0 ;
  wire \outRMS_reg[12]_i_5_n_1 ;
  wire \outRMS_reg[12]_i_5_n_2 ;
  wire \outRMS_reg[12]_i_5_n_3 ;
  wire \outRMS_reg[15]_i_14_n_2 ;
  wire \outRMS_reg[15]_i_14_n_3 ;
  wire \outRMS_reg[15]_i_14_n_5 ;
  wire \outRMS_reg[15]_i_14_n_6 ;
  wire \outRMS_reg[15]_i_14_n_7 ;
  wire \outRMS_reg[15]_i_4_n_2 ;
  wire \outRMS_reg[15]_i_4_n_3 ;
  wire \outRMS_reg[15]_i_4_n_5 ;
  wire \outRMS_reg[15]_i_4_n_6 ;
  wire \outRMS_reg[15]_i_4_n_7 ;
  wire \outRMS_reg[15]_i_8_n_2 ;
  wire \outRMS_reg[15]_i_8_n_3 ;
  wire \outRMS_reg[4]_i_11_n_0 ;
  wire \outRMS_reg[4]_i_11_n_1 ;
  wire \outRMS_reg[4]_i_11_n_2 ;
  wire \outRMS_reg[4]_i_11_n_3 ;
  wire \outRMS_reg[4]_i_11_n_4 ;
  wire \outRMS_reg[4]_i_11_n_5 ;
  wire \outRMS_reg[4]_i_11_n_6 ;
  wire \outRMS_reg[4]_i_11_n_7 ;
  wire \outRMS_reg[4]_i_3_n_0 ;
  wire \outRMS_reg[4]_i_3_n_1 ;
  wire \outRMS_reg[4]_i_3_n_2 ;
  wire \outRMS_reg[4]_i_3_n_3 ;
  wire \outRMS_reg[4]_i_3_n_4 ;
  wire \outRMS_reg[4]_i_3_n_5 ;
  wire \outRMS_reg[4]_i_3_n_6 ;
  wire \outRMS_reg[4]_i_3_n_7 ;
  wire \outRMS_reg[4]_i_5_n_0 ;
  wire \outRMS_reg[4]_i_5_n_1 ;
  wire \outRMS_reg[4]_i_5_n_2 ;
  wire \outRMS_reg[4]_i_5_n_3 ;
  wire \outRMS_reg[8]_i_10_n_0 ;
  wire \outRMS_reg[8]_i_10_n_1 ;
  wire \outRMS_reg[8]_i_10_n_2 ;
  wire \outRMS_reg[8]_i_10_n_3 ;
  wire \outRMS_reg[8]_i_10_n_4 ;
  wire \outRMS_reg[8]_i_10_n_5 ;
  wire \outRMS_reg[8]_i_10_n_6 ;
  wire \outRMS_reg[8]_i_10_n_7 ;
  wire \outRMS_reg[8]_i_3_n_0 ;
  wire \outRMS_reg[8]_i_3_n_1 ;
  wire \outRMS_reg[8]_i_3_n_2 ;
  wire \outRMS_reg[8]_i_3_n_3 ;
  wire \outRMS_reg[8]_i_3_n_4 ;
  wire \outRMS_reg[8]_i_3_n_5 ;
  wire \outRMS_reg[8]_i_3_n_6 ;
  wire \outRMS_reg[8]_i_3_n_7 ;
  wire \outRMS_reg[8]_i_5_n_0 ;
  wire \outRMS_reg[8]_i_5_n_1 ;
  wire \outRMS_reg[8]_i_5_n_2 ;
  wire \outRMS_reg[8]_i_5_n_3 ;
  wire [5:3]p_0_in;
  wire [3:1]p_0_out;
  wire [15:0]rddat;
  wire [15:0]rddat0;
  wire rddat0_2;
  wire rddat1;
  wire rddat1_0;
  wire \rddat1_reg_n_0_[0] ;
  wire \rddat1_reg_n_0_[10] ;
  wire \rddat1_reg_n_0_[11] ;
  wire \rddat1_reg_n_0_[12] ;
  wire \rddat1_reg_n_0_[13] ;
  wire \rddat1_reg_n_0_[14] ;
  wire \rddat1_reg_n_0_[15] ;
  wire \rddat1_reg_n_0_[1] ;
  wire \rddat1_reg_n_0_[2] ;
  wire \rddat1_reg_n_0_[3] ;
  wire \rddat1_reg_n_0_[4] ;
  wire \rddat1_reg_n_0_[5] ;
  wire \rddat1_reg_n_0_[6] ;
  wire \rddat1_reg_n_0_[7] ;
  wire \rddat1_reg_n_0_[8] ;
  wire \rddat1_reg_n_0_[9] ;
  wire [15:0]rddat2;
  wire rddat2_1;
  wire \rddat[0]_i_1_n_0 ;
  wire \rddat[10]_i_1_n_0 ;
  wire \rddat[10]_i_2_n_0 ;
  wire \rddat[10]_i_3_n_0 ;
  wire \rddat[10]_i_4_n_0 ;
  wire \rddat[11]_i_1_n_0 ;
  wire \rddat[11]_i_2_n_0 ;
  wire \rddat[11]_i_3_n_0 ;
  wire \rddat[12]_i_1_n_0 ;
  wire \rddat[12]_i_2_n_0 ;
  wire \rddat[13]_i_1_n_0 ;
  wire \rddat[13]_i_2_n_0 ;
  wire \rddat[14]_i_1_n_0 ;
  wire \rddat[14]_i_2_n_0 ;
  wire \rddat[14]_i_3_n_0 ;
  wire \rddat[15]_i_1_n_0 ;
  wire \rddat[15]_i_2_n_0 ;
  wire \rddat[15]_i_3_n_0 ;
  wire \rddat[1]_i_1_n_0 ;
  wire \rddat[1]_i_2_n_0 ;
  wire \rddat[2]_i_1_n_0 ;
  wire \rddat[2]_i_2_n_0 ;
  wire \rddat[3]_i_1_n_0 ;
  wire \rddat[3]_i_2_n_0 ;
  wire \rddat[4]_i_1_n_0 ;
  wire \rddat[4]_i_2_n_0 ;
  wire \rddat[5]_i_1_n_0 ;
  wire \rddat[5]_i_2_n_0 ;
  wire \rddat[6]_i_1_n_0 ;
  wire \rddat[6]_i_2_n_0 ;
  wire \rddat[6]_i_3_n_0 ;
  wire \rddat[7]_i_1_n_0 ;
  wire \rddat[7]_i_2_n_0 ;
  wire \rddat[8]_i_1_n_0 ;
  wire \rddat[8]_i_2_n_0 ;
  wire \rddat[8]_i_3_n_0 ;
  wire \rddat[9]_i_1_n_0 ;
  wire \rddat[9]_i_2_n_0 ;
  wire \rddat[9]_i_3_n_0 ;
  wire rst_n;
  wire [3:2]\NLW_outRMS_reg[15]_i_14_CO_UNCONNECTED ;
  wire [3:3]\NLW_outRMS_reg[15]_i_14_O_UNCONNECTED ;
  wire [3:2]\NLW_outRMS_reg[15]_i_4_CO_UNCONNECTED ;
  wire [3:3]\NLW_outRMS_reg[15]_i_4_O_UNCONNECTED ;
  wire [3:2]\NLW_outRMS_reg[15]_i_8_CO_UNCONNECTED ;
  wire [3:3]\NLW_outRMS_reg[15]_i_8_O_UNCONNECTED ;

  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'hE)) 
    CS_i_1
       (.I0(CS_i_4_n_0),
        .I1(CS_i_5_n_0),
        .O(CS_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    CS_i_3
       (.I0(rst_n),
        .O(CS_i_3_n_0));
  LUT6 #(
    .INIT(64'hAAAAAAAA88888880)) 
    CS_i_4
       (.I0(cnt_reg[6]),
        .I1(cnt_reg[4]),
        .I2(cnt_reg[3]),
        .I3(\cnt[6]_i_2_n_0 ),
        .I4(cnt_reg[2]),
        .I5(cnt_reg[5]),
        .O(CS_i_4_n_0));
  LUT6 #(
    .INIT(64'h000000007777777F)) 
    CS_i_5
       (.I0(cnt_reg[4]),
        .I1(cnt_reg[5]),
        .I2(cnt_reg[3]),
        .I3(cnt_reg[2]),
        .I4(cnt_reg[1]),
        .I5(cnt_reg[6]),
        .O(CS_i_5_n_0));
  FDCE CS_reg
       (.C(CLK_2M),
        .CE(1'b1),
        .CLR(CS_i_3_n_0),
        .D(CS_i_1_n_0),
        .Q(CS));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \FSM_sequential_order[0]_i_1 
       (.I0(order__0[3]),
        .I1(order__0[0]),
        .O(\FSM_sequential_order[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h130C)) 
    \FSM_sequential_order[1]_i_1 
       (.I0(order__0[2]),
        .I1(order__0[1]),
        .I2(order__0[3]),
        .I3(order__0[0]),
        .O(p_0_out[1]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h0478)) 
    \FSM_sequential_order[2]_i_1 
       (.I0(order__0[1]),
        .I1(order__0[0]),
        .I2(order__0[2]),
        .I3(order__0[3]),
        .O(p_0_out[2]));
  LUT4 #(
    .INIT(16'h0A2A)) 
    \FSM_sequential_order[3]_i_1 
       (.I0(CS_i_4_n_0),
        .I1(order__0[2]),
        .I2(order__0[3]),
        .I3(order__0[1]),
        .O(order));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h4002)) 
    \FSM_sequential_order[3]_i_2 
       (.I0(order__0[3]),
        .I1(order__0[2]),
        .I2(order__0[1]),
        .I3(order__0[0]),
        .O(p_0_out[3]));
  (* FSM_ENCODED_STATES = "iSTATE:0100,iSTATE0:0011,iSTATE1:0010,iSTATE2:0001,iSTATE3:0111,iSTATE4:1001,iSTATE5:0110,iSTATE6:1000,iSTATE7:0101,iSTATE8:0000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_order_reg[0] 
       (.C(CLK_2M),
        .CE(order),
        .CLR(CS_i_3_n_0),
        .D(\FSM_sequential_order[0]_i_1_n_0 ),
        .Q(order__0[0]));
  (* FSM_ENCODED_STATES = "iSTATE:0100,iSTATE0:0011,iSTATE1:0010,iSTATE2:0001,iSTATE3:0111,iSTATE4:1001,iSTATE5:0110,iSTATE6:1000,iSTATE7:0101,iSTATE8:0000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_order_reg[1] 
       (.C(CLK_2M),
        .CE(order),
        .CLR(CS_i_3_n_0),
        .D(p_0_out[1]),
        .Q(order__0[1]));
  (* FSM_ENCODED_STATES = "iSTATE:0100,iSTATE0:0011,iSTATE1:0010,iSTATE2:0001,iSTATE3:0111,iSTATE4:1001,iSTATE5:0110,iSTATE6:1000,iSTATE7:0101,iSTATE8:0000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_order_reg[2] 
       (.C(CLK_2M),
        .CE(order),
        .CLR(CS_i_3_n_0),
        .D(p_0_out[2]),
        .Q(order__0[2]));
  (* FSM_ENCODED_STATES = "iSTATE:0100,iSTATE0:0011,iSTATE1:0010,iSTATE2:0001,iSTATE3:0111,iSTATE4:1001,iSTATE5:0110,iSTATE6:1000,iSTATE7:0101,iSTATE8:0000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_order_reg[3] 
       (.C(CLK_2M),
        .CE(order),
        .CLR(CS_i_3_n_0),
        .D(p_0_out[3]),
        .Q(order__0[3]));
  LUT6 #(
    .INIT(64'h0014FFFF00140000)) 
    \PRC[10]_i_1 
       (.I0(order__0[2]),
        .I1(order__0[0]),
        .I2(order__0[1]),
        .I3(order__0[3]),
        .I4(\PRC[10]_i_2_n_0 ),
        .I5(PRC[10]),
        .O(\PRC[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'h002A0000)) 
    \PRC[10]_i_2 
       (.I0(rst_n),
        .I1(order__0[2]),
        .I2(order__0[1]),
        .I3(order__0[3]),
        .I4(CS_i_4_n_0),
        .O(\PRC[10]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFAAAAFF03AAAA)) 
    \PRC[11]_i_1 
       (.I0(PRC[11]),
        .I1(order__0[0]),
        .I2(order__0[2]),
        .I3(order__0[1]),
        .I4(\PRC[10]_i_2_n_0 ),
        .I5(order__0[3]),
        .O(\PRC[11]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFAAF3AA)) 
    \PRC[12]_i_1 
       (.I0(PRC[12]),
        .I1(order__0[1]),
        .I2(order__0[2]),
        .I3(\PRC[10]_i_2_n_0 ),
        .I4(order__0[3]),
        .O(\PRC[12]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0034FFFF00340000)) 
    \PRC[9]_i_1 
       (.I0(order__0[1]),
        .I1(order__0[2]),
        .I2(order__0[0]),
        .I3(order__0[3]),
        .I4(\PRC[10]_i_2_n_0 ),
        .I5(PRC[9]),
        .O(\PRC[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \PRC_reg[10] 
       (.C(CLK_2M),
        .CE(1'b1),
        .D(\PRC[10]_i_1_n_0 ),
        .Q(PRC[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \PRC_reg[11] 
       (.C(CLK_2M),
        .CE(1'b1),
        .D(\PRC[11]_i_1_n_0 ),
        .Q(PRC[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \PRC_reg[12] 
       (.C(CLK_2M),
        .CE(1'b1),
        .D(\PRC[12]_i_1_n_0 ),
        .Q(PRC[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \PRC_reg[9] 
       (.C(CLK_2M),
        .CE(1'b1),
        .D(\PRC[9]_i_1_n_0 ),
        .Q(PRC[9]),
        .R(1'b0));
  FDCE #(
    .INIT(1'b1)) 
    RST_reg
       (.C(CLK_2M),
        .CE(1'b1),
        .CLR(CS_i_3_n_0),
        .D(1'b1),
        .Q(RST));
  LUT6 #(
    .INIT(64'h00B8FFFF00B80000)) 
    SDI_i_1
       (.I0(SDI_i_2_n_0),
        .I1(rddat1),
        .I2(SDI_i_4_n_0),
        .I3(cnt_reg[6]),
        .I4(SDI_3),
        .I5(SDI),
        .O(SDI_i_1_n_0));
  LUT6 #(
    .INIT(64'h00000000DFF5D5F5)) 
    SDI_i_2
       (.I0(cnt_reg[2]),
        .I1(data5),
        .I2(cnt_reg[1]),
        .I3(cnt_reg[0]),
        .I4(data3),
        .I5(cnt_reg[3]),
        .O(SDI_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'hECCC)) 
    SDI_i_3
       (.I0(order__0[0]),
        .I1(order__0[3]),
        .I2(order__0[2]),
        .I3(order__0[1]),
        .O(rddat1));
  LUT6 #(
    .INIT(64'h0054FFFF00540000)) 
    SDI_i_4
       (.I0(cnt_reg[1]),
        .I1(cnt_reg[0]),
        .I2(PRC[9]),
        .I3(cnt_reg[2]),
        .I4(cnt_reg[3]),
        .I5(SDI_i_6_n_0),
        .O(SDI_i_4_n_0));
  LUT6 #(
    .INIT(64'h4040404040404002)) 
    SDI_i_5
       (.I0(cnt_reg[6]),
        .I1(cnt_reg[5]),
        .I2(cnt_reg[4]),
        .I3(cnt_reg[3]),
        .I4(cnt_reg[1]),
        .I5(cnt_reg[2]),
        .O(SDI_3));
  LUT6 #(
    .INIT(64'hAA80A0800A800080)) 
    SDI_i_6
       (.I0(cnt_reg[2]),
        .I1(PRC[12]),
        .I2(cnt_reg[0]),
        .I3(cnt_reg[1]),
        .I4(PRC[11]),
        .I5(PRC[10]),
        .O(SDI_i_6_n_0));
  FDCE SDI_reg
       (.C(CLK_2M),
        .CE(1'b1),
        .CLR(CS_i_3_n_0),
        .D(SDI_i_1_n_0),
        .Q(SDI));
  LUT6 #(
    .INIT(64'h4002FFFF40020000)) 
    \ch_sel[10]_i_1 
       (.I0(order__0[3]),
        .I1(order__0[1]),
        .I2(order__0[2]),
        .I3(order__0[0]),
        .I4(ch_sel),
        .I5(data5),
        .O(\ch_sel[10]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFBFFFFFFFB0000)) 
    \ch_sel[12]_i_1 
       (.I0(order__0[0]),
        .I1(order__0[3]),
        .I2(order__0[2]),
        .I3(order__0[1]),
        .I4(ch_sel),
        .I5(data3),
        .O(\ch_sel[12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'h20080000)) 
    \ch_sel[12]_i_2 
       (.I0(rst_n),
        .I1(order__0[3]),
        .I2(order__0[2]),
        .I3(order__0[1]),
        .I4(CS_i_4_n_0),
        .O(ch_sel));
  FDRE \ch_sel_reg[10] 
       (.C(CLK_2M),
        .CE(1'b1),
        .D(\ch_sel[10]_i_1_n_0 ),
        .Q(data5),
        .R(1'b0));
  FDRE \ch_sel_reg[12] 
       (.C(CLK_2M),
        .CE(1'b1),
        .D(\ch_sel[12]_i_1_n_0 ),
        .Q(data3),
        .R(1'b0));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_clkdiv clk_inst
       (.CLK_2M(CLK_2M),
        .CLK_50M(CLK_50M),
        .CS(CS),
        .SCLK(SCLK));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \cnt[0]_i_1 
       (.I0(cnt_reg[0]),
        .I1(CS_i_4_n_0),
        .O(\cnt[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'h06)) 
    \cnt[1]_i_1 
       (.I0(cnt_reg[1]),
        .I1(cnt_reg[0]),
        .I2(CS_i_4_n_0),
        .O(\cnt[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h006A)) 
    \cnt[2]_i_1 
       (.I0(cnt_reg[2]),
        .I1(cnt_reg[1]),
        .I2(cnt_reg[0]),
        .I3(CS_i_4_n_0),
        .O(\cnt[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'hBEEEEEEE)) 
    \cnt[3]_i_1 
       (.I0(CS_i_4_n_0),
        .I1(cnt_reg[3]),
        .I2(cnt_reg[2]),
        .I3(cnt_reg[0]),
        .I4(cnt_reg[1]),
        .O(p_0_in[3]));
  LUT6 #(
    .INIT(64'h000000006AAAAAAA)) 
    \cnt[4]_i_1 
       (.I0(cnt_reg[4]),
        .I1(cnt_reg[3]),
        .I2(cnt_reg[1]),
        .I3(cnt_reg[0]),
        .I4(cnt_reg[2]),
        .I5(CS_i_4_n_0),
        .O(\cnt[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBCECECECECECECCC)) 
    \cnt[5]_i_1 
       (.I0(cnt_reg[6]),
        .I1(cnt_reg[5]),
        .I2(cnt_reg[4]),
        .I3(cnt_reg[2]),
        .I4(\cnt[6]_i_2_n_0 ),
        .I5(cnt_reg[3]),
        .O(p_0_in[5]));
  LUT6 #(
    .INIT(64'h0001555580000000)) 
    \cnt[6]_i_1 
       (.I0(cnt_reg[5]),
        .I1(cnt_reg[2]),
        .I2(\cnt[6]_i_2_n_0 ),
        .I3(cnt_reg[3]),
        .I4(cnt_reg[4]),
        .I5(cnt_reg[6]),
        .O(\cnt[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \cnt[6]_i_2 
       (.I0(cnt_reg[1]),
        .I1(cnt_reg[0]),
        .O(\cnt[6]_i_2_n_0 ));
  FDCE \cnt_reg[0] 
       (.C(CLK_2M),
        .CE(1'b1),
        .CLR(CS_i_3_n_0),
        .D(\cnt[0]_i_1_n_0 ),
        .Q(cnt_reg[0]));
  FDCE \cnt_reg[1] 
       (.C(CLK_2M),
        .CE(1'b1),
        .CLR(CS_i_3_n_0),
        .D(\cnt[1]_i_1_n_0 ),
        .Q(cnt_reg[1]));
  FDCE \cnt_reg[2] 
       (.C(CLK_2M),
        .CE(1'b1),
        .CLR(CS_i_3_n_0),
        .D(\cnt[2]_i_1_n_0 ),
        .Q(cnt_reg[2]));
  FDCE \cnt_reg[3] 
       (.C(CLK_2M),
        .CE(1'b1),
        .CLR(CS_i_3_n_0),
        .D(p_0_in[3]),
        .Q(cnt_reg[3]));
  FDCE \cnt_reg[4] 
       (.C(CLK_2M),
        .CE(1'b1),
        .CLR(CS_i_3_n_0),
        .D(\cnt[4]_i_1_n_0 ),
        .Q(cnt_reg[4]));
  FDCE \cnt_reg[5] 
       (.C(CLK_2M),
        .CE(1'b1),
        .CLR(CS_i_3_n_0),
        .D(p_0_in[5]),
        .Q(cnt_reg[5]));
  FDCE \cnt_reg[6] 
       (.C(CLK_2M),
        .CE(1'b1),
        .CLR(CS_i_3_n_0),
        .D(\cnt[6]_i_1_n_0 ),
        .Q(cnt_reg[6]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h00CCF0AA)) 
    \outRMS[0]_i_1 
       (.I0(rddat0[0]),
        .I1(\rddat1_reg_n_0_[0] ),
        .I2(rddat2[0]),
        .I3(dataAddr[1]),
        .I4(dataAddr[0]),
        .O(\outRMS[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFEAEAEA)) 
    \outRMS[10]_i_1 
       (.I0(\outRMS[10]_i_2_n_0 ),
        .I1(\rddat1_reg_n_0_[10] ),
        .I2(\outRMS[15]_i_3_n_0 ),
        .I3(\outRMS_reg[12]_i_3_n_6 ),
        .I4(\outRMS[15]_i_5_n_0 ),
        .I5(\outRMS[10]_i_3_n_0 ),
        .O(\outRMS[10]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \outRMS[10]_i_2 
       (.I0(rddat0[10]),
        .I1(\outRMS[15]_i_7_n_0 ),
        .I2(outRMS1[10]),
        .I3(\outRMS[15]_i_9_n_0 ),
        .O(\outRMS[10]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \outRMS[10]_i_3 
       (.I0(rddat2[10]),
        .I1(\outRMS[15]_i_13_n_0 ),
        .I2(\outRMS_reg[12]_i_10_n_6 ),
        .I3(\outRMS[15]_i_15_n_0 ),
        .O(\outRMS[10]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFEAEAEA)) 
    \outRMS[11]_i_1 
       (.I0(\outRMS[11]_i_2_n_0 ),
        .I1(\rddat1_reg_n_0_[11] ),
        .I2(\outRMS[15]_i_3_n_0 ),
        .I3(\outRMS_reg[12]_i_3_n_5 ),
        .I4(\outRMS[15]_i_5_n_0 ),
        .I5(\outRMS[11]_i_3_n_0 ),
        .O(\outRMS[11]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \outRMS[11]_i_2 
       (.I0(rddat0[11]),
        .I1(\outRMS[15]_i_7_n_0 ),
        .I2(outRMS1[11]),
        .I3(\outRMS[15]_i_9_n_0 ),
        .O(\outRMS[11]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \outRMS[11]_i_3 
       (.I0(rddat2[11]),
        .I1(\outRMS[15]_i_13_n_0 ),
        .I2(\outRMS_reg[12]_i_10_n_5 ),
        .I3(\outRMS[15]_i_15_n_0 ),
        .O(\outRMS[11]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFEAEAEA)) 
    \outRMS[12]_i_1 
       (.I0(\outRMS[12]_i_2_n_0 ),
        .I1(\rddat1_reg_n_0_[12] ),
        .I2(\outRMS[15]_i_3_n_0 ),
        .I3(\outRMS_reg[12]_i_3_n_4 ),
        .I4(\outRMS[15]_i_5_n_0 ),
        .I5(\outRMS[12]_i_4_n_0 ),
        .O(\outRMS[12]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \outRMS[12]_i_11 
       (.I0(rddat0[12]),
        .O(\outRMS[12]_i_11_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \outRMS[12]_i_12 
       (.I0(rddat0[11]),
        .O(\outRMS[12]_i_12_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \outRMS[12]_i_13 
       (.I0(rddat0[10]),
        .O(\outRMS[12]_i_13_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \outRMS[12]_i_14 
       (.I0(rddat0[9]),
        .O(\outRMS[12]_i_14_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \outRMS[12]_i_15 
       (.I0(rddat2[12]),
        .O(\outRMS[12]_i_15_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \outRMS[12]_i_16 
       (.I0(rddat2[11]),
        .O(\outRMS[12]_i_16_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \outRMS[12]_i_17 
       (.I0(rddat2[10]),
        .O(\outRMS[12]_i_17_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \outRMS[12]_i_18 
       (.I0(rddat2[9]),
        .O(\outRMS[12]_i_18_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \outRMS[12]_i_2 
       (.I0(rddat0[12]),
        .I1(\outRMS[15]_i_7_n_0 ),
        .I2(outRMS1[12]),
        .I3(\outRMS[15]_i_9_n_0 ),
        .O(\outRMS[12]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \outRMS[12]_i_4 
       (.I0(rddat2[12]),
        .I1(\outRMS[15]_i_13_n_0 ),
        .I2(\outRMS_reg[12]_i_10_n_4 ),
        .I3(\outRMS[15]_i_15_n_0 ),
        .O(\outRMS[12]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \outRMS[12]_i_6 
       (.I0(\rddat1_reg_n_0_[12] ),
        .O(\outRMS[12]_i_6_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \outRMS[12]_i_7 
       (.I0(\rddat1_reg_n_0_[11] ),
        .O(\outRMS[12]_i_7_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \outRMS[12]_i_8 
       (.I0(\rddat1_reg_n_0_[10] ),
        .O(\outRMS[12]_i_8_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \outRMS[12]_i_9 
       (.I0(\rddat1_reg_n_0_[9] ),
        .O(\outRMS[12]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFEAEAEA)) 
    \outRMS[13]_i_1 
       (.I0(\outRMS[13]_i_2_n_0 ),
        .I1(\rddat1_reg_n_0_[13] ),
        .I2(\outRMS[15]_i_3_n_0 ),
        .I3(\outRMS_reg[15]_i_4_n_7 ),
        .I4(\outRMS[15]_i_5_n_0 ),
        .I5(\outRMS[13]_i_3_n_0 ),
        .O(\outRMS[13]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \outRMS[13]_i_2 
       (.I0(rddat0[13]),
        .I1(\outRMS[15]_i_7_n_0 ),
        .I2(outRMS1[13]),
        .I3(\outRMS[15]_i_9_n_0 ),
        .O(\outRMS[13]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \outRMS[13]_i_3 
       (.I0(rddat2[13]),
        .I1(\outRMS[15]_i_13_n_0 ),
        .I2(\outRMS_reg[15]_i_14_n_7 ),
        .I3(\outRMS[15]_i_15_n_0 ),
        .O(\outRMS[13]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFEAEAEA)) 
    \outRMS[14]_i_1 
       (.I0(\outRMS[14]_i_2_n_0 ),
        .I1(\rddat1_reg_n_0_[14] ),
        .I2(\outRMS[15]_i_3_n_0 ),
        .I3(\outRMS_reg[15]_i_4_n_6 ),
        .I4(\outRMS[15]_i_5_n_0 ),
        .I5(\outRMS[14]_i_3_n_0 ),
        .O(\outRMS[14]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \outRMS[14]_i_2 
       (.I0(rddat0[14]),
        .I1(\outRMS[15]_i_7_n_0 ),
        .I2(outRMS1[14]),
        .I3(\outRMS[15]_i_9_n_0 ),
        .O(\outRMS[14]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \outRMS[14]_i_3 
       (.I0(rddat2[14]),
        .I1(\outRMS[15]_i_13_n_0 ),
        .I2(\outRMS_reg[15]_i_14_n_6 ),
        .I3(\outRMS[15]_i_15_n_0 ),
        .O(\outRMS[14]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFBABABA)) 
    \outRMS[15]_i_1 
       (.I0(\outRMS[15]_i_2_n_0 ),
        .I1(\rddat1_reg_n_0_[15] ),
        .I2(\outRMS[15]_i_3_n_0 ),
        .I3(\outRMS_reg[15]_i_4_n_5 ),
        .I4(\outRMS[15]_i_5_n_0 ),
        .I5(\outRMS[15]_i_6_n_0 ),
        .O(\outRMS[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \outRMS[15]_i_10 
       (.I0(\outRMS[15]_i_23_n_0 ),
        .I1(\outRMS[15]_i_24_n_0 ),
        .I2(\rddat1_reg_n_0_[3] ),
        .I3(\rddat1_reg_n_0_[2] ),
        .I4(\rddat1_reg_n_0_[14] ),
        .I5(\outRMS[15]_i_25_n_0 ),
        .O(\outRMS[15]_i_10_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \outRMS[15]_i_11 
       (.I0(\rddat1_reg_n_0_[14] ),
        .O(\outRMS[15]_i_11_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \outRMS[15]_i_12 
       (.I0(\rddat1_reg_n_0_[13] ),
        .O(\outRMS[15]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAA800000000)) 
    \outRMS[15]_i_13 
       (.I0(\outRMS[15]_i_26_n_0 ),
        .I1(\outRMS[15]_i_27_n_0 ),
        .I2(\outRMS[15]_i_28_n_0 ),
        .I3(\outRMS[15]_i_29_n_0 ),
        .I4(\outRMS[15]_i_30_n_0 ),
        .I5(rddat2[15]),
        .O(\outRMS[15]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'h00000002AAAAAAAA)) 
    \outRMS[15]_i_15 
       (.I0(\outRMS[15]_i_26_n_0 ),
        .I1(\outRMS[15]_i_27_n_0 ),
        .I2(\outRMS[15]_i_28_n_0 ),
        .I3(\outRMS[15]_i_29_n_0 ),
        .I4(\outRMS[15]_i_30_n_0 ),
        .I5(rddat2[15]),
        .O(\outRMS[15]_i_15_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \outRMS[15]_i_16 
       (.I0(dataAddr[0]),
        .I1(dataAddr[1]),
        .O(\outRMS[15]_i_16_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \outRMS[15]_i_17 
       (.I0(rddat0[8]),
        .I1(rddat0[11]),
        .I2(rddat0[6]),
        .I3(rddat0[9]),
        .O(\outRMS[15]_i_17_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \outRMS[15]_i_18 
       (.I0(rddat0[12]),
        .I1(rddat0[0]),
        .I2(rddat0[10]),
        .I3(rddat0[13]),
        .O(\outRMS[15]_i_18_n_0 ));
  LUT3 #(
    .INIT(8'hFE)) 
    \outRMS[15]_i_19 
       (.I0(rddat0[3]),
        .I1(rddat0[2]),
        .I2(rddat0[14]),
        .O(\outRMS[15]_i_19_n_0 ));
  LUT4 #(
    .INIT(16'hF444)) 
    \outRMS[15]_i_2 
       (.I0(rddat0[15]),
        .I1(\outRMS[15]_i_7_n_0 ),
        .I2(outRMS1[15]),
        .I3(\outRMS[15]_i_9_n_0 ),
        .O(\outRMS[15]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \outRMS[15]_i_20 
       (.I0(rddat0[4]),
        .I1(rddat0[7]),
        .I2(rddat0[1]),
        .I3(rddat0[5]),
        .O(\outRMS[15]_i_20_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \outRMS[15]_i_21 
       (.I0(rddat0[14]),
        .O(\outRMS[15]_i_21_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \outRMS[15]_i_22 
       (.I0(rddat0[13]),
        .O(\outRMS[15]_i_22_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \outRMS[15]_i_23 
       (.I0(\rddat1_reg_n_0_[8] ),
        .I1(\rddat1_reg_n_0_[11] ),
        .I2(\rddat1_reg_n_0_[6] ),
        .I3(\rddat1_reg_n_0_[9] ),
        .O(\outRMS[15]_i_23_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \outRMS[15]_i_24 
       (.I0(\rddat1_reg_n_0_[12] ),
        .I1(\rddat1_reg_n_0_[0] ),
        .I2(\rddat1_reg_n_0_[10] ),
        .I3(\rddat1_reg_n_0_[13] ),
        .O(\outRMS[15]_i_24_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \outRMS[15]_i_25 
       (.I0(\rddat1_reg_n_0_[4] ),
        .I1(\rddat1_reg_n_0_[7] ),
        .I2(\rddat1_reg_n_0_[1] ),
        .I3(\rddat1_reg_n_0_[5] ),
        .O(\outRMS[15]_i_25_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \outRMS[15]_i_26 
       (.I0(dataAddr[1]),
        .I1(dataAddr[0]),
        .O(\outRMS[15]_i_26_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \outRMS[15]_i_27 
       (.I0(rddat2[8]),
        .I1(rddat2[11]),
        .I2(rddat2[6]),
        .I3(rddat2[9]),
        .O(\outRMS[15]_i_27_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \outRMS[15]_i_28 
       (.I0(rddat2[12]),
        .I1(rddat2[0]),
        .I2(rddat2[10]),
        .I3(rddat2[13]),
        .O(\outRMS[15]_i_28_n_0 ));
  LUT3 #(
    .INIT(8'hFE)) 
    \outRMS[15]_i_29 
       (.I0(rddat2[3]),
        .I1(rddat2[2]),
        .I2(rddat2[14]),
        .O(\outRMS[15]_i_29_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'h4000)) 
    \outRMS[15]_i_3 
       (.I0(dataAddr[1]),
        .I1(dataAddr[0]),
        .I2(\outRMS[15]_i_10_n_0 ),
        .I3(\rddat1_reg_n_0_[15] ),
        .O(\outRMS[15]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \outRMS[15]_i_30 
       (.I0(rddat2[4]),
        .I1(rddat2[7]),
        .I2(rddat2[1]),
        .I3(rddat2[5]),
        .O(\outRMS[15]_i_30_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \outRMS[15]_i_31 
       (.I0(rddat2[14]),
        .O(\outRMS[15]_i_31_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \outRMS[15]_i_32 
       (.I0(rddat2[13]),
        .O(\outRMS[15]_i_32_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'h0444)) 
    \outRMS[15]_i_5 
       (.I0(dataAddr[1]),
        .I1(dataAddr[0]),
        .I2(\outRMS[15]_i_10_n_0 ),
        .I3(\rddat1_reg_n_0_[15] ),
        .O(\outRMS[15]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hF444)) 
    \outRMS[15]_i_6 
       (.I0(rddat2[15]),
        .I1(\outRMS[15]_i_13_n_0 ),
        .I2(\outRMS_reg[15]_i_14_n_5 ),
        .I3(\outRMS[15]_i_15_n_0 ),
        .O(\outRMS[15]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAA800000000)) 
    \outRMS[15]_i_7 
       (.I0(\outRMS[15]_i_16_n_0 ),
        .I1(\outRMS[15]_i_17_n_0 ),
        .I2(\outRMS[15]_i_18_n_0 ),
        .I3(\outRMS[15]_i_19_n_0 ),
        .I4(\outRMS[15]_i_20_n_0 ),
        .I5(rddat0[15]),
        .O(\outRMS[15]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h00000002AAAAAAAA)) 
    \outRMS[15]_i_9 
       (.I0(\outRMS[15]_i_16_n_0 ),
        .I1(\outRMS[15]_i_17_n_0 ),
        .I2(\outRMS[15]_i_18_n_0 ),
        .I3(\outRMS[15]_i_19_n_0 ),
        .I4(\outRMS[15]_i_20_n_0 ),
        .I5(rddat0[15]),
        .O(\outRMS[15]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFEAEAEA)) 
    \outRMS[1]_i_1 
       (.I0(\outRMS[1]_i_2_n_0 ),
        .I1(\rddat1_reg_n_0_[1] ),
        .I2(\outRMS[15]_i_3_n_0 ),
        .I3(\outRMS_reg[4]_i_3_n_7 ),
        .I4(\outRMS[15]_i_5_n_0 ),
        .I5(\outRMS[1]_i_3_n_0 ),
        .O(\outRMS[1]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \outRMS[1]_i_2 
       (.I0(rddat0[1]),
        .I1(\outRMS[15]_i_7_n_0 ),
        .I2(outRMS1[1]),
        .I3(\outRMS[15]_i_9_n_0 ),
        .O(\outRMS[1]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \outRMS[1]_i_3 
       (.I0(rddat2[1]),
        .I1(\outRMS[15]_i_13_n_0 ),
        .I2(\outRMS_reg[4]_i_11_n_7 ),
        .I3(\outRMS[15]_i_15_n_0 ),
        .O(\outRMS[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFEAEAEA)) 
    \outRMS[2]_i_1 
       (.I0(\outRMS[2]_i_2_n_0 ),
        .I1(\rddat1_reg_n_0_[2] ),
        .I2(\outRMS[15]_i_3_n_0 ),
        .I3(\outRMS_reg[4]_i_3_n_6 ),
        .I4(\outRMS[15]_i_5_n_0 ),
        .I5(\outRMS[2]_i_3_n_0 ),
        .O(\outRMS[2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \outRMS[2]_i_2 
       (.I0(rddat0[2]),
        .I1(\outRMS[15]_i_7_n_0 ),
        .I2(outRMS1[2]),
        .I3(\outRMS[15]_i_9_n_0 ),
        .O(\outRMS[2]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \outRMS[2]_i_3 
       (.I0(rddat2[2]),
        .I1(\outRMS[15]_i_13_n_0 ),
        .I2(\outRMS_reg[4]_i_11_n_6 ),
        .I3(\outRMS[15]_i_15_n_0 ),
        .O(\outRMS[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFEAEAEA)) 
    \outRMS[3]_i_1 
       (.I0(\outRMS[3]_i_2_n_0 ),
        .I1(\rddat1_reg_n_0_[3] ),
        .I2(\outRMS[15]_i_3_n_0 ),
        .I3(\outRMS_reg[4]_i_3_n_5 ),
        .I4(\outRMS[15]_i_5_n_0 ),
        .I5(\outRMS[3]_i_3_n_0 ),
        .O(\outRMS[3]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \outRMS[3]_i_2 
       (.I0(rddat0[3]),
        .I1(\outRMS[15]_i_7_n_0 ),
        .I2(outRMS1[3]),
        .I3(\outRMS[15]_i_9_n_0 ),
        .O(\outRMS[3]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \outRMS[3]_i_3 
       (.I0(rddat2[3]),
        .I1(\outRMS[15]_i_13_n_0 ),
        .I2(\outRMS_reg[4]_i_11_n_5 ),
        .I3(\outRMS[15]_i_15_n_0 ),
        .O(\outRMS[3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFEAEAEA)) 
    \outRMS[4]_i_1 
       (.I0(\outRMS[4]_i_2_n_0 ),
        .I1(\rddat1_reg_n_0_[4] ),
        .I2(\outRMS[15]_i_3_n_0 ),
        .I3(\outRMS_reg[4]_i_3_n_4 ),
        .I4(\outRMS[15]_i_5_n_0 ),
        .I5(\outRMS[4]_i_4_n_0 ),
        .O(\outRMS[4]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \outRMS[4]_i_10 
       (.I0(\rddat1_reg_n_0_[1] ),
        .O(\outRMS[4]_i_10_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \outRMS[4]_i_12 
       (.I0(rddat0[0]),
        .O(\outRMS[4]_i_12_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \outRMS[4]_i_13 
       (.I0(rddat0[4]),
        .O(\outRMS[4]_i_13_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \outRMS[4]_i_14 
       (.I0(rddat0[3]),
        .O(\outRMS[4]_i_14_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \outRMS[4]_i_15 
       (.I0(rddat0[2]),
        .O(\outRMS[4]_i_15_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \outRMS[4]_i_16 
       (.I0(rddat0[1]),
        .O(\outRMS[4]_i_16_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \outRMS[4]_i_17 
       (.I0(rddat2[0]),
        .O(\outRMS[4]_i_17_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \outRMS[4]_i_18 
       (.I0(rddat2[4]),
        .O(\outRMS[4]_i_18_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \outRMS[4]_i_19 
       (.I0(rddat2[3]),
        .O(\outRMS[4]_i_19_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \outRMS[4]_i_2 
       (.I0(rddat0[4]),
        .I1(\outRMS[15]_i_7_n_0 ),
        .I2(outRMS1[4]),
        .I3(\outRMS[15]_i_9_n_0 ),
        .O(\outRMS[4]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \outRMS[4]_i_20 
       (.I0(rddat2[2]),
        .O(\outRMS[4]_i_20_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \outRMS[4]_i_21 
       (.I0(rddat2[1]),
        .O(\outRMS[4]_i_21_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \outRMS[4]_i_4 
       (.I0(rddat2[4]),
        .I1(\outRMS[15]_i_13_n_0 ),
        .I2(\outRMS_reg[4]_i_11_n_4 ),
        .I3(\outRMS[15]_i_15_n_0 ),
        .O(\outRMS[4]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \outRMS[4]_i_6 
       (.I0(\rddat1_reg_n_0_[0] ),
        .O(\outRMS[4]_i_6_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \outRMS[4]_i_7 
       (.I0(\rddat1_reg_n_0_[4] ),
        .O(\outRMS[4]_i_7_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \outRMS[4]_i_8 
       (.I0(\rddat1_reg_n_0_[3] ),
        .O(\outRMS[4]_i_8_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \outRMS[4]_i_9 
       (.I0(\rddat1_reg_n_0_[2] ),
        .O(\outRMS[4]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFEAEAEA)) 
    \outRMS[5]_i_1 
       (.I0(\outRMS[5]_i_2_n_0 ),
        .I1(\rddat1_reg_n_0_[5] ),
        .I2(\outRMS[15]_i_3_n_0 ),
        .I3(\outRMS_reg[8]_i_3_n_7 ),
        .I4(\outRMS[15]_i_5_n_0 ),
        .I5(\outRMS[5]_i_3_n_0 ),
        .O(\outRMS[5]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \outRMS[5]_i_2 
       (.I0(rddat0[5]),
        .I1(\outRMS[15]_i_7_n_0 ),
        .I2(outRMS1[5]),
        .I3(\outRMS[15]_i_9_n_0 ),
        .O(\outRMS[5]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \outRMS[5]_i_3 
       (.I0(rddat2[5]),
        .I1(\outRMS[15]_i_13_n_0 ),
        .I2(\outRMS_reg[8]_i_10_n_7 ),
        .I3(\outRMS[15]_i_15_n_0 ),
        .O(\outRMS[5]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFEAEAEA)) 
    \outRMS[6]_i_1 
       (.I0(\outRMS[6]_i_2_n_0 ),
        .I1(\rddat1_reg_n_0_[6] ),
        .I2(\outRMS[15]_i_3_n_0 ),
        .I3(\outRMS_reg[8]_i_3_n_6 ),
        .I4(\outRMS[15]_i_5_n_0 ),
        .I5(\outRMS[6]_i_3_n_0 ),
        .O(\outRMS[6]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \outRMS[6]_i_2 
       (.I0(rddat0[6]),
        .I1(\outRMS[15]_i_7_n_0 ),
        .I2(outRMS1[6]),
        .I3(\outRMS[15]_i_9_n_0 ),
        .O(\outRMS[6]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \outRMS[6]_i_3 
       (.I0(rddat2[6]),
        .I1(\outRMS[15]_i_13_n_0 ),
        .I2(\outRMS_reg[8]_i_10_n_6 ),
        .I3(\outRMS[15]_i_15_n_0 ),
        .O(\outRMS[6]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFEAEAEA)) 
    \outRMS[7]_i_1 
       (.I0(\outRMS[7]_i_2_n_0 ),
        .I1(\rddat1_reg_n_0_[7] ),
        .I2(\outRMS[15]_i_3_n_0 ),
        .I3(\outRMS_reg[8]_i_3_n_5 ),
        .I4(\outRMS[15]_i_5_n_0 ),
        .I5(\outRMS[7]_i_3_n_0 ),
        .O(\outRMS[7]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \outRMS[7]_i_2 
       (.I0(rddat0[7]),
        .I1(\outRMS[15]_i_7_n_0 ),
        .I2(outRMS1[7]),
        .I3(\outRMS[15]_i_9_n_0 ),
        .O(\outRMS[7]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \outRMS[7]_i_3 
       (.I0(rddat2[7]),
        .I1(\outRMS[15]_i_13_n_0 ),
        .I2(\outRMS_reg[8]_i_10_n_5 ),
        .I3(\outRMS[15]_i_15_n_0 ),
        .O(\outRMS[7]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFEAEAEA)) 
    \outRMS[8]_i_1 
       (.I0(\outRMS[8]_i_2_n_0 ),
        .I1(\rddat1_reg_n_0_[8] ),
        .I2(\outRMS[15]_i_3_n_0 ),
        .I3(\outRMS_reg[8]_i_3_n_4 ),
        .I4(\outRMS[15]_i_5_n_0 ),
        .I5(\outRMS[8]_i_4_n_0 ),
        .O(\outRMS[8]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \outRMS[8]_i_11 
       (.I0(rddat0[8]),
        .O(\outRMS[8]_i_11_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \outRMS[8]_i_12 
       (.I0(rddat0[7]),
        .O(\outRMS[8]_i_12_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \outRMS[8]_i_13 
       (.I0(rddat0[6]),
        .O(\outRMS[8]_i_13_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \outRMS[8]_i_14 
       (.I0(rddat0[5]),
        .O(\outRMS[8]_i_14_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \outRMS[8]_i_15 
       (.I0(rddat2[8]),
        .O(\outRMS[8]_i_15_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \outRMS[8]_i_16 
       (.I0(rddat2[7]),
        .O(\outRMS[8]_i_16_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \outRMS[8]_i_17 
       (.I0(rddat2[6]),
        .O(\outRMS[8]_i_17_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \outRMS[8]_i_18 
       (.I0(rddat2[5]),
        .O(\outRMS[8]_i_18_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \outRMS[8]_i_2 
       (.I0(rddat0[8]),
        .I1(\outRMS[15]_i_7_n_0 ),
        .I2(outRMS1[8]),
        .I3(\outRMS[15]_i_9_n_0 ),
        .O(\outRMS[8]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \outRMS[8]_i_4 
       (.I0(rddat2[8]),
        .I1(\outRMS[15]_i_13_n_0 ),
        .I2(\outRMS_reg[8]_i_10_n_4 ),
        .I3(\outRMS[15]_i_15_n_0 ),
        .O(\outRMS[8]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \outRMS[8]_i_6 
       (.I0(\rddat1_reg_n_0_[8] ),
        .O(\outRMS[8]_i_6_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \outRMS[8]_i_7 
       (.I0(\rddat1_reg_n_0_[7] ),
        .O(\outRMS[8]_i_7_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \outRMS[8]_i_8 
       (.I0(\rddat1_reg_n_0_[6] ),
        .O(\outRMS[8]_i_8_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \outRMS[8]_i_9 
       (.I0(\rddat1_reg_n_0_[5] ),
        .O(\outRMS[8]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFEAEAEA)) 
    \outRMS[9]_i_1 
       (.I0(\outRMS[9]_i_2_n_0 ),
        .I1(\rddat1_reg_n_0_[9] ),
        .I2(\outRMS[15]_i_3_n_0 ),
        .I3(\outRMS_reg[12]_i_3_n_7 ),
        .I4(\outRMS[15]_i_5_n_0 ),
        .I5(\outRMS[9]_i_3_n_0 ),
        .O(\outRMS[9]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \outRMS[9]_i_2 
       (.I0(rddat0[9]),
        .I1(\outRMS[15]_i_7_n_0 ),
        .I2(outRMS1[9]),
        .I3(\outRMS[15]_i_9_n_0 ),
        .O(\outRMS[9]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \outRMS[9]_i_3 
       (.I0(rddat2[9]),
        .I1(\outRMS[15]_i_13_n_0 ),
        .I2(\outRMS_reg[12]_i_10_n_7 ),
        .I3(\outRMS[15]_i_15_n_0 ),
        .O(\outRMS[9]_i_3_n_0 ));
  FDCE \outRMS_reg[0] 
       (.C(CLK_50M),
        .CE(1'b1),
        .CLR(CS_i_3_n_0),
        .D(\outRMS[0]_i_1_n_0 ),
        .Q(outRMS[0]));
  FDCE \outRMS_reg[10] 
       (.C(CLK_50M),
        .CE(1'b1),
        .CLR(CS_i_3_n_0),
        .D(\outRMS[10]_i_1_n_0 ),
        .Q(outRMS[10]));
  FDCE \outRMS_reg[11] 
       (.C(CLK_50M),
        .CE(1'b1),
        .CLR(CS_i_3_n_0),
        .D(\outRMS[11]_i_1_n_0 ),
        .Q(outRMS[11]));
  FDCE \outRMS_reg[12] 
       (.C(CLK_50M),
        .CE(1'b1),
        .CLR(CS_i_3_n_0),
        .D(\outRMS[12]_i_1_n_0 ),
        .Q(outRMS[12]));
  CARRY4 \outRMS_reg[12]_i_10 
       (.CI(\outRMS_reg[8]_i_10_n_0 ),
        .CO({\outRMS_reg[12]_i_10_n_0 ,\outRMS_reg[12]_i_10_n_1 ,\outRMS_reg[12]_i_10_n_2 ,\outRMS_reg[12]_i_10_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\outRMS_reg[12]_i_10_n_4 ,\outRMS_reg[12]_i_10_n_5 ,\outRMS_reg[12]_i_10_n_6 ,\outRMS_reg[12]_i_10_n_7 }),
        .S({\outRMS[12]_i_15_n_0 ,\outRMS[12]_i_16_n_0 ,\outRMS[12]_i_17_n_0 ,\outRMS[12]_i_18_n_0 }));
  CARRY4 \outRMS_reg[12]_i_3 
       (.CI(\outRMS_reg[8]_i_3_n_0 ),
        .CO({\outRMS_reg[12]_i_3_n_0 ,\outRMS_reg[12]_i_3_n_1 ,\outRMS_reg[12]_i_3_n_2 ,\outRMS_reg[12]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\outRMS_reg[12]_i_3_n_4 ,\outRMS_reg[12]_i_3_n_5 ,\outRMS_reg[12]_i_3_n_6 ,\outRMS_reg[12]_i_3_n_7 }),
        .S({\outRMS[12]_i_6_n_0 ,\outRMS[12]_i_7_n_0 ,\outRMS[12]_i_8_n_0 ,\outRMS[12]_i_9_n_0 }));
  CARRY4 \outRMS_reg[12]_i_5 
       (.CI(\outRMS_reg[8]_i_5_n_0 ),
        .CO({\outRMS_reg[12]_i_5_n_0 ,\outRMS_reg[12]_i_5_n_1 ,\outRMS_reg[12]_i_5_n_2 ,\outRMS_reg[12]_i_5_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(outRMS1[12:9]),
        .S({\outRMS[12]_i_11_n_0 ,\outRMS[12]_i_12_n_0 ,\outRMS[12]_i_13_n_0 ,\outRMS[12]_i_14_n_0 }));
  FDCE \outRMS_reg[13] 
       (.C(CLK_50M),
        .CE(1'b1),
        .CLR(CS_i_3_n_0),
        .D(\outRMS[13]_i_1_n_0 ),
        .Q(outRMS[13]));
  FDCE \outRMS_reg[14] 
       (.C(CLK_50M),
        .CE(1'b1),
        .CLR(CS_i_3_n_0),
        .D(\outRMS[14]_i_1_n_0 ),
        .Q(outRMS[14]));
  FDCE \outRMS_reg[15] 
       (.C(CLK_50M),
        .CE(1'b1),
        .CLR(CS_i_3_n_0),
        .D(\outRMS[15]_i_1_n_0 ),
        .Q(outRMS[15]));
  CARRY4 \outRMS_reg[15]_i_14 
       (.CI(\outRMS_reg[12]_i_10_n_0 ),
        .CO({\NLW_outRMS_reg[15]_i_14_CO_UNCONNECTED [3:2],\outRMS_reg[15]_i_14_n_2 ,\outRMS_reg[15]_i_14_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_outRMS_reg[15]_i_14_O_UNCONNECTED [3],\outRMS_reg[15]_i_14_n_5 ,\outRMS_reg[15]_i_14_n_6 ,\outRMS_reg[15]_i_14_n_7 }),
        .S({1'b0,rddat2[15],\outRMS[15]_i_31_n_0 ,\outRMS[15]_i_32_n_0 }));
  CARRY4 \outRMS_reg[15]_i_4 
       (.CI(\outRMS_reg[12]_i_3_n_0 ),
        .CO({\NLW_outRMS_reg[15]_i_4_CO_UNCONNECTED [3:2],\outRMS_reg[15]_i_4_n_2 ,\outRMS_reg[15]_i_4_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_outRMS_reg[15]_i_4_O_UNCONNECTED [3],\outRMS_reg[15]_i_4_n_5 ,\outRMS_reg[15]_i_4_n_6 ,\outRMS_reg[15]_i_4_n_7 }),
        .S({1'b0,\rddat1_reg_n_0_[15] ,\outRMS[15]_i_11_n_0 ,\outRMS[15]_i_12_n_0 }));
  CARRY4 \outRMS_reg[15]_i_8 
       (.CI(\outRMS_reg[12]_i_5_n_0 ),
        .CO({\NLW_outRMS_reg[15]_i_8_CO_UNCONNECTED [3:2],\outRMS_reg[15]_i_8_n_2 ,\outRMS_reg[15]_i_8_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_outRMS_reg[15]_i_8_O_UNCONNECTED [3],outRMS1[15:13]}),
        .S({1'b0,rddat0[15],\outRMS[15]_i_21_n_0 ,\outRMS[15]_i_22_n_0 }));
  FDCE \outRMS_reg[1] 
       (.C(CLK_50M),
        .CE(1'b1),
        .CLR(CS_i_3_n_0),
        .D(\outRMS[1]_i_1_n_0 ),
        .Q(outRMS[1]));
  FDCE \outRMS_reg[2] 
       (.C(CLK_50M),
        .CE(1'b1),
        .CLR(CS_i_3_n_0),
        .D(\outRMS[2]_i_1_n_0 ),
        .Q(outRMS[2]));
  FDCE \outRMS_reg[3] 
       (.C(CLK_50M),
        .CE(1'b1),
        .CLR(CS_i_3_n_0),
        .D(\outRMS[3]_i_1_n_0 ),
        .Q(outRMS[3]));
  FDCE \outRMS_reg[4] 
       (.C(CLK_50M),
        .CE(1'b1),
        .CLR(CS_i_3_n_0),
        .D(\outRMS[4]_i_1_n_0 ),
        .Q(outRMS[4]));
  CARRY4 \outRMS_reg[4]_i_11 
       (.CI(1'b0),
        .CO({\outRMS_reg[4]_i_11_n_0 ,\outRMS_reg[4]_i_11_n_1 ,\outRMS_reg[4]_i_11_n_2 ,\outRMS_reg[4]_i_11_n_3 }),
        .CYINIT(\outRMS[4]_i_17_n_0 ),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\outRMS_reg[4]_i_11_n_4 ,\outRMS_reg[4]_i_11_n_5 ,\outRMS_reg[4]_i_11_n_6 ,\outRMS_reg[4]_i_11_n_7 }),
        .S({\outRMS[4]_i_18_n_0 ,\outRMS[4]_i_19_n_0 ,\outRMS[4]_i_20_n_0 ,\outRMS[4]_i_21_n_0 }));
  CARRY4 \outRMS_reg[4]_i_3 
       (.CI(1'b0),
        .CO({\outRMS_reg[4]_i_3_n_0 ,\outRMS_reg[4]_i_3_n_1 ,\outRMS_reg[4]_i_3_n_2 ,\outRMS_reg[4]_i_3_n_3 }),
        .CYINIT(\outRMS[4]_i_6_n_0 ),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\outRMS_reg[4]_i_3_n_4 ,\outRMS_reg[4]_i_3_n_5 ,\outRMS_reg[4]_i_3_n_6 ,\outRMS_reg[4]_i_3_n_7 }),
        .S({\outRMS[4]_i_7_n_0 ,\outRMS[4]_i_8_n_0 ,\outRMS[4]_i_9_n_0 ,\outRMS[4]_i_10_n_0 }));
  CARRY4 \outRMS_reg[4]_i_5 
       (.CI(1'b0),
        .CO({\outRMS_reg[4]_i_5_n_0 ,\outRMS_reg[4]_i_5_n_1 ,\outRMS_reg[4]_i_5_n_2 ,\outRMS_reg[4]_i_5_n_3 }),
        .CYINIT(\outRMS[4]_i_12_n_0 ),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(outRMS1[4:1]),
        .S({\outRMS[4]_i_13_n_0 ,\outRMS[4]_i_14_n_0 ,\outRMS[4]_i_15_n_0 ,\outRMS[4]_i_16_n_0 }));
  FDCE \outRMS_reg[5] 
       (.C(CLK_50M),
        .CE(1'b1),
        .CLR(CS_i_3_n_0),
        .D(\outRMS[5]_i_1_n_0 ),
        .Q(outRMS[5]));
  FDCE \outRMS_reg[6] 
       (.C(CLK_50M),
        .CE(1'b1),
        .CLR(CS_i_3_n_0),
        .D(\outRMS[6]_i_1_n_0 ),
        .Q(outRMS[6]));
  FDCE \outRMS_reg[7] 
       (.C(CLK_50M),
        .CE(1'b1),
        .CLR(CS_i_3_n_0),
        .D(\outRMS[7]_i_1_n_0 ),
        .Q(outRMS[7]));
  FDCE \outRMS_reg[8] 
       (.C(CLK_50M),
        .CE(1'b1),
        .CLR(CS_i_3_n_0),
        .D(\outRMS[8]_i_1_n_0 ),
        .Q(outRMS[8]));
  CARRY4 \outRMS_reg[8]_i_10 
       (.CI(\outRMS_reg[4]_i_11_n_0 ),
        .CO({\outRMS_reg[8]_i_10_n_0 ,\outRMS_reg[8]_i_10_n_1 ,\outRMS_reg[8]_i_10_n_2 ,\outRMS_reg[8]_i_10_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\outRMS_reg[8]_i_10_n_4 ,\outRMS_reg[8]_i_10_n_5 ,\outRMS_reg[8]_i_10_n_6 ,\outRMS_reg[8]_i_10_n_7 }),
        .S({\outRMS[8]_i_15_n_0 ,\outRMS[8]_i_16_n_0 ,\outRMS[8]_i_17_n_0 ,\outRMS[8]_i_18_n_0 }));
  CARRY4 \outRMS_reg[8]_i_3 
       (.CI(\outRMS_reg[4]_i_3_n_0 ),
        .CO({\outRMS_reg[8]_i_3_n_0 ,\outRMS_reg[8]_i_3_n_1 ,\outRMS_reg[8]_i_3_n_2 ,\outRMS_reg[8]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\outRMS_reg[8]_i_3_n_4 ,\outRMS_reg[8]_i_3_n_5 ,\outRMS_reg[8]_i_3_n_6 ,\outRMS_reg[8]_i_3_n_7 }),
        .S({\outRMS[8]_i_6_n_0 ,\outRMS[8]_i_7_n_0 ,\outRMS[8]_i_8_n_0 ,\outRMS[8]_i_9_n_0 }));
  CARRY4 \outRMS_reg[8]_i_5 
       (.CI(\outRMS_reg[4]_i_5_n_0 ),
        .CO({\outRMS_reg[8]_i_5_n_0 ,\outRMS_reg[8]_i_5_n_1 ,\outRMS_reg[8]_i_5_n_2 ,\outRMS_reg[8]_i_5_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(outRMS1[8:5]),
        .S({\outRMS[8]_i_11_n_0 ,\outRMS[8]_i_12_n_0 ,\outRMS[8]_i_13_n_0 ,\outRMS[8]_i_14_n_0 }));
  FDCE \outRMS_reg[9] 
       (.C(CLK_50M),
        .CE(1'b1),
        .CLR(CS_i_3_n_0),
        .D(\outRMS[9]_i_1_n_0 ),
        .Q(outRMS[9]));
  LUT6 #(
    .INIT(64'h0000020000000000)) 
    \rddat0[15]_i_1 
       (.I0(rst_n),
        .I1(order__0[2]),
        .I2(order__0[0]),
        .I3(order__0[3]),
        .I4(order__0[1]),
        .I5(CS_i_4_n_0),
        .O(rddat0_2));
  FDRE \rddat0_reg[0] 
       (.C(CLK_2M),
        .CE(rddat0_2),
        .D(rddat[0]),
        .Q(rddat0[0]),
        .R(1'b0));
  FDRE \rddat0_reg[10] 
       (.C(CLK_2M),
        .CE(rddat0_2),
        .D(rddat[10]),
        .Q(rddat0[10]),
        .R(1'b0));
  FDRE \rddat0_reg[11] 
       (.C(CLK_2M),
        .CE(rddat0_2),
        .D(rddat[11]),
        .Q(rddat0[11]),
        .R(1'b0));
  FDRE \rddat0_reg[12] 
       (.C(CLK_2M),
        .CE(rddat0_2),
        .D(rddat[12]),
        .Q(rddat0[12]),
        .R(1'b0));
  FDRE \rddat0_reg[13] 
       (.C(CLK_2M),
        .CE(rddat0_2),
        .D(rddat[13]),
        .Q(rddat0[13]),
        .R(1'b0));
  FDRE \rddat0_reg[14] 
       (.C(CLK_2M),
        .CE(rddat0_2),
        .D(rddat[14]),
        .Q(rddat0[14]),
        .R(1'b0));
  FDRE \rddat0_reg[15] 
       (.C(CLK_2M),
        .CE(rddat0_2),
        .D(rddat[15]),
        .Q(rddat0[15]),
        .R(1'b0));
  FDRE \rddat0_reg[1] 
       (.C(CLK_2M),
        .CE(rddat0_2),
        .D(rddat[1]),
        .Q(rddat0[1]),
        .R(1'b0));
  FDRE \rddat0_reg[2] 
       (.C(CLK_2M),
        .CE(rddat0_2),
        .D(rddat[2]),
        .Q(rddat0[2]),
        .R(1'b0));
  FDRE \rddat0_reg[3] 
       (.C(CLK_2M),
        .CE(rddat0_2),
        .D(rddat[3]),
        .Q(rddat0[3]),
        .R(1'b0));
  FDRE \rddat0_reg[4] 
       (.C(CLK_2M),
        .CE(rddat0_2),
        .D(rddat[4]),
        .Q(rddat0[4]),
        .R(1'b0));
  FDRE \rddat0_reg[5] 
       (.C(CLK_2M),
        .CE(rddat0_2),
        .D(rddat[5]),
        .Q(rddat0[5]),
        .R(1'b0));
  FDRE \rddat0_reg[6] 
       (.C(CLK_2M),
        .CE(rddat0_2),
        .D(rddat[6]),
        .Q(rddat0[6]),
        .R(1'b0));
  FDRE \rddat0_reg[7] 
       (.C(CLK_2M),
        .CE(rddat0_2),
        .D(rddat[7]),
        .Q(rddat0[7]),
        .R(1'b0));
  FDRE \rddat0_reg[8] 
       (.C(CLK_2M),
        .CE(rddat0_2),
        .D(rddat[8]),
        .Q(rddat0[8]),
        .R(1'b0));
  FDRE \rddat0_reg[9] 
       (.C(CLK_2M),
        .CE(rddat0_2),
        .D(rddat[9]),
        .Q(rddat0[9]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0008000000000000)) 
    \rddat1[15]_i_1 
       (.I0(rst_n),
        .I1(order__0[0]),
        .I2(order__0[1]),
        .I3(order__0[2]),
        .I4(order__0[3]),
        .I5(CS_i_4_n_0),
        .O(rddat1_0));
  FDRE \rddat1_reg[0] 
       (.C(CLK_2M),
        .CE(rddat1_0),
        .D(rddat[0]),
        .Q(\rddat1_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \rddat1_reg[10] 
       (.C(CLK_2M),
        .CE(rddat1_0),
        .D(rddat[10]),
        .Q(\rddat1_reg_n_0_[10] ),
        .R(1'b0));
  FDRE \rddat1_reg[11] 
       (.C(CLK_2M),
        .CE(rddat1_0),
        .D(rddat[11]),
        .Q(\rddat1_reg_n_0_[11] ),
        .R(1'b0));
  FDRE \rddat1_reg[12] 
       (.C(CLK_2M),
        .CE(rddat1_0),
        .D(rddat[12]),
        .Q(\rddat1_reg_n_0_[12] ),
        .R(1'b0));
  FDRE \rddat1_reg[13] 
       (.C(CLK_2M),
        .CE(rddat1_0),
        .D(rddat[13]),
        .Q(\rddat1_reg_n_0_[13] ),
        .R(1'b0));
  FDRE \rddat1_reg[14] 
       (.C(CLK_2M),
        .CE(rddat1_0),
        .D(rddat[14]),
        .Q(\rddat1_reg_n_0_[14] ),
        .R(1'b0));
  FDRE \rddat1_reg[15] 
       (.C(CLK_2M),
        .CE(rddat1_0),
        .D(rddat[15]),
        .Q(\rddat1_reg_n_0_[15] ),
        .R(1'b0));
  FDRE \rddat1_reg[1] 
       (.C(CLK_2M),
        .CE(rddat1_0),
        .D(rddat[1]),
        .Q(\rddat1_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \rddat1_reg[2] 
       (.C(CLK_2M),
        .CE(rddat1_0),
        .D(rddat[2]),
        .Q(\rddat1_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \rddat1_reg[3] 
       (.C(CLK_2M),
        .CE(rddat1_0),
        .D(rddat[3]),
        .Q(\rddat1_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \rddat1_reg[4] 
       (.C(CLK_2M),
        .CE(rddat1_0),
        .D(rddat[4]),
        .Q(\rddat1_reg_n_0_[4] ),
        .R(1'b0));
  FDRE \rddat1_reg[5] 
       (.C(CLK_2M),
        .CE(rddat1_0),
        .D(rddat[5]),
        .Q(\rddat1_reg_n_0_[5] ),
        .R(1'b0));
  FDRE \rddat1_reg[6] 
       (.C(CLK_2M),
        .CE(rddat1_0),
        .D(rddat[6]),
        .Q(\rddat1_reg_n_0_[6] ),
        .R(1'b0));
  FDRE \rddat1_reg[7] 
       (.C(CLK_2M),
        .CE(rddat1_0),
        .D(rddat[7]),
        .Q(\rddat1_reg_n_0_[7] ),
        .R(1'b0));
  FDRE \rddat1_reg[8] 
       (.C(CLK_2M),
        .CE(rddat1_0),
        .D(rddat[8]),
        .Q(\rddat1_reg_n_0_[8] ),
        .R(1'b0));
  FDRE \rddat1_reg[9] 
       (.C(CLK_2M),
        .CE(rddat1_0),
        .D(rddat[9]),
        .Q(\rddat1_reg_n_0_[9] ),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h2000000000000000)) 
    \rddat2[15]_i_1 
       (.I0(rst_n),
        .I1(order__0[3]),
        .I2(order__0[2]),
        .I3(order__0[0]),
        .I4(order__0[1]),
        .I5(CS_i_4_n_0),
        .O(rddat2_1));
  FDRE \rddat2_reg[0] 
       (.C(CLK_2M),
        .CE(rddat2_1),
        .D(rddat[0]),
        .Q(rddat2[0]),
        .R(1'b0));
  FDRE \rddat2_reg[10] 
       (.C(CLK_2M),
        .CE(rddat2_1),
        .D(rddat[10]),
        .Q(rddat2[10]),
        .R(1'b0));
  FDRE \rddat2_reg[11] 
       (.C(CLK_2M),
        .CE(rddat2_1),
        .D(rddat[11]),
        .Q(rddat2[11]),
        .R(1'b0));
  FDRE \rddat2_reg[12] 
       (.C(CLK_2M),
        .CE(rddat2_1),
        .D(rddat[12]),
        .Q(rddat2[12]),
        .R(1'b0));
  FDRE \rddat2_reg[13] 
       (.C(CLK_2M),
        .CE(rddat2_1),
        .D(rddat[13]),
        .Q(rddat2[13]),
        .R(1'b0));
  FDRE \rddat2_reg[14] 
       (.C(CLK_2M),
        .CE(rddat2_1),
        .D(rddat[14]),
        .Q(rddat2[14]),
        .R(1'b0));
  FDRE \rddat2_reg[15] 
       (.C(CLK_2M),
        .CE(rddat2_1),
        .D(rddat[15]),
        .Q(rddat2[15]),
        .R(1'b0));
  FDRE \rddat2_reg[1] 
       (.C(CLK_2M),
        .CE(rddat2_1),
        .D(rddat[1]),
        .Q(rddat2[1]),
        .R(1'b0));
  FDRE \rddat2_reg[2] 
       (.C(CLK_2M),
        .CE(rddat2_1),
        .D(rddat[2]),
        .Q(rddat2[2]),
        .R(1'b0));
  FDRE \rddat2_reg[3] 
       (.C(CLK_2M),
        .CE(rddat2_1),
        .D(rddat[3]),
        .Q(rddat2[3]),
        .R(1'b0));
  FDRE \rddat2_reg[4] 
       (.C(CLK_2M),
        .CE(rddat2_1),
        .D(rddat[4]),
        .Q(rddat2[4]),
        .R(1'b0));
  FDRE \rddat2_reg[5] 
       (.C(CLK_2M),
        .CE(rddat2_1),
        .D(rddat[5]),
        .Q(rddat2[5]),
        .R(1'b0));
  FDRE \rddat2_reg[6] 
       (.C(CLK_2M),
        .CE(rddat2_1),
        .D(rddat[6]),
        .Q(rddat2[6]),
        .R(1'b0));
  FDRE \rddat2_reg[7] 
       (.C(CLK_2M),
        .CE(rddat2_1),
        .D(rddat[7]),
        .Q(rddat2[7]),
        .R(1'b0));
  FDRE \rddat2_reg[8] 
       (.C(CLK_2M),
        .CE(rddat2_1),
        .D(rddat[8]),
        .Q(rddat2[8]),
        .R(1'b0));
  FDRE \rddat2_reg[9] 
       (.C(CLK_2M),
        .CE(rddat2_1),
        .D(rddat[9]),
        .Q(rddat2[9]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000002)) 
    \rddat[0]_i_1 
       (.I0(SDO),
        .I1(cnt_reg[3]),
        .I2(\rddat[1]_i_2_n_0 ),
        .I3(\rddat[8]_i_2_n_0 ),
        .I4(\rddat[8]_i_3_n_0 ),
        .I5(rddat[0]),
        .O(\rddat[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFB00000008)) 
    \rddat[10]_i_1 
       (.I0(SDO),
        .I1(rst_n),
        .I2(\rddat[10]_i_2_n_0 ),
        .I3(\rddat[10]_i_3_n_0 ),
        .I4(\rddat[10]_i_4_n_0 ),
        .I5(rddat[10]),
        .O(\rddat[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'hAABFAAFF)) 
    \rddat[10]_i_2 
       (.I0(cnt_reg[4]),
        .I1(order__0[1]),
        .I2(order__0[2]),
        .I3(order__0[3]),
        .I4(order__0[0]),
        .O(\rddat[10]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \rddat[10]_i_3 
       (.I0(cnt_reg[3]),
        .I1(cnt_reg[6]),
        .O(\rddat[10]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \rddat[10]_i_4 
       (.I0(cnt_reg[0]),
        .I1(cnt_reg[2]),
        .I2(cnt_reg[5]),
        .I3(cnt_reg[1]),
        .O(\rddat[10]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hFE02)) 
    \rddat[11]_i_1 
       (.I0(SDO),
        .I1(cnt_reg[5]),
        .I2(\rddat[11]_i_2_n_0 ),
        .I3(rddat[11]),
        .O(\rddat[11]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFEFFFFFFFFFFFFFF)) 
    \rddat[11]_i_2 
       (.I0(\rddat[11]_i_3_n_0 ),
        .I1(cnt_reg[3]),
        .I2(cnt_reg[4]),
        .I3(\cnt[6]_i_2_n_0 ),
        .I4(rst_n),
        .I5(cnt_reg[2]),
        .O(\rddat[11]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h070FFFFF)) 
    \rddat[11]_i_3 
       (.I0(order__0[1]),
        .I1(order__0[2]),
        .I2(order__0[3]),
        .I3(order__0[0]),
        .I4(cnt_reg[6]),
        .O(\rddat[11]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hFE02)) 
    \rddat[12]_i_1 
       (.I0(SDO),
        .I1(cnt_reg[4]),
        .I2(\rddat[12]_i_2_n_0 ),
        .I3(rddat[12]),
        .O(\rddat[12]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFEFFFFFFFFFFFF)) 
    \rddat[12]_i_2 
       (.I0(\rddat[15]_i_3_n_0 ),
        .I1(cnt_reg[0]),
        .I2(cnt_reg[3]),
        .I3(\rddat[8]_i_2_n_0 ),
        .I4(cnt_reg[6]),
        .I5(cnt_reg[2]),
        .O(\rddat[12]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hFE02)) 
    \rddat[13]_i_1 
       (.I0(SDO),
        .I1(cnt_reg[4]),
        .I2(\rddat[13]_i_2_n_0 ),
        .I3(rddat[13]),
        .O(\rddat[13]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFEFFFFFFFFFFFF)) 
    \rddat[13]_i_2 
       (.I0(\rddat[15]_i_3_n_0 ),
        .I1(cnt_reg[1]),
        .I2(cnt_reg[3]),
        .I3(\rddat[9]_i_2_n_0 ),
        .I4(cnt_reg[6]),
        .I5(cnt_reg[2]),
        .O(\rddat[13]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \rddat[14]_i_1 
       (.I0(SDO),
        .I1(\rddat[14]_i_2_n_0 ),
        .I2(rddat[14]),
        .O(\rddat[14]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000008000000)) 
    \rddat[14]_i_2 
       (.I0(rst_n),
        .I1(rddat1),
        .I2(cnt_reg[4]),
        .I3(cnt_reg[6]),
        .I4(cnt_reg[2]),
        .I5(\rddat[14]_i_3_n_0 ),
        .O(\rddat[14]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \rddat[14]_i_3 
       (.I0(cnt_reg[0]),
        .I1(cnt_reg[3]),
        .I2(cnt_reg[5]),
        .I3(cnt_reg[1]),
        .O(\rddat[14]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hFE02)) 
    \rddat[15]_i_1 
       (.I0(SDO),
        .I1(cnt_reg[4]),
        .I2(\rddat[15]_i_2_n_0 ),
        .I3(rddat[15]),
        .O(\rddat[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFEFFFFFFFFFFFFFF)) 
    \rddat[15]_i_2 
       (.I0(\rddat[15]_i_3_n_0 ),
        .I1(cnt_reg[2]),
        .I2(cnt_reg[3]),
        .I3(\cnt[6]_i_2_n_0 ),
        .I4(cnt_reg[6]),
        .I5(rst_n),
        .O(\rddat[15]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'hAABFAAFF)) 
    \rddat[15]_i_3 
       (.I0(cnt_reg[5]),
        .I1(order__0[1]),
        .I2(order__0[2]),
        .I3(order__0[3]),
        .I4(order__0[0]),
        .O(\rddat[15]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000002)) 
    \rddat[1]_i_1 
       (.I0(SDO),
        .I1(cnt_reg[3]),
        .I2(\rddat[1]_i_2_n_0 ),
        .I3(\rddat[9]_i_2_n_0 ),
        .I4(\rddat[9]_i_3_n_0 ),
        .I5(rddat[1]),
        .O(\rddat[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \rddat[1]_i_2 
       (.I0(cnt_reg[4]),
        .I1(cnt_reg[6]),
        .O(\rddat[1]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \rddat[2]_i_1 
       (.I0(SDO),
        .I1(\rddat[2]_i_2_n_0 ),
        .I2(rddat[2]),
        .O(\rddat[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000008000000)) 
    \rddat[2]_i_2 
       (.I0(rst_n),
        .I1(rddat1),
        .I2(cnt_reg[2]),
        .I3(cnt_reg[6]),
        .I4(cnt_reg[4]),
        .I5(\rddat[14]_i_3_n_0 ),
        .O(\rddat[2]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hFE02)) 
    \rddat[3]_i_1 
       (.I0(SDO),
        .I1(cnt_reg[5]),
        .I2(\rddat[3]_i_2_n_0 ),
        .I3(rddat[3]),
        .O(\rddat[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF7FFFFFFFFFFFFFF)) 
    \rddat[3]_i_2 
       (.I0(cnt_reg[6]),
        .I1(rst_n),
        .I2(\rddat[10]_i_2_n_0 ),
        .I3(\cnt[6]_i_2_n_0 ),
        .I4(cnt_reg[3]),
        .I5(cnt_reg[2]),
        .O(\rddat[3]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hFE02)) 
    \rddat[4]_i_1 
       (.I0(SDO),
        .I1(cnt_reg[5]),
        .I2(\rddat[4]_i_2_n_0 ),
        .I3(rddat[4]),
        .O(\rddat[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFEFFFFFFFFFFFF)) 
    \rddat[4]_i_2 
       (.I0(\rddat[11]_i_3_n_0 ),
        .I1(cnt_reg[0]),
        .I2(cnt_reg[4]),
        .I3(\rddat[8]_i_2_n_0 ),
        .I4(cnt_reg[3]),
        .I5(cnt_reg[2]),
        .O(\rddat[4]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hFE02)) 
    \rddat[5]_i_1 
       (.I0(SDO),
        .I1(cnt_reg[5]),
        .I2(\rddat[5]_i_2_n_0 ),
        .I3(rddat[5]),
        .O(\rddat[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFEFFFFFFFFFFFF)) 
    \rddat[5]_i_2 
       (.I0(\rddat[11]_i_3_n_0 ),
        .I1(cnt_reg[1]),
        .I2(cnt_reg[4]),
        .I3(\rddat[9]_i_2_n_0 ),
        .I4(cnt_reg[3]),
        .I5(cnt_reg[2]),
        .O(\rddat[5]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'hFE02)) 
    \rddat[6]_i_1 
       (.I0(SDO),
        .I1(cnt_reg[4]),
        .I2(\rddat[6]_i_2_n_0 ),
        .I3(rddat[6]),
        .O(\rddat[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFEFFFFFF)) 
    \rddat[6]_i_2 
       (.I0(\rddat[15]_i_3_n_0 ),
        .I1(cnt_reg[0]),
        .I2(cnt_reg[1]),
        .I3(cnt_reg[6]),
        .I4(rst_n),
        .I5(\rddat[6]_i_3_n_0 ),
        .O(\rddat[6]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \rddat[6]_i_3 
       (.I0(cnt_reg[3]),
        .I1(cnt_reg[2]),
        .O(\rddat[6]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hFE02)) 
    \rddat[7]_i_1 
       (.I0(SDO),
        .I1(cnt_reg[5]),
        .I2(\rddat[7]_i_2_n_0 ),
        .I3(rddat[7]),
        .O(\rddat[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFEFFFFFFFFFFFFFF)) 
    \rddat[7]_i_2 
       (.I0(\rddat[11]_i_3_n_0 ),
        .I1(cnt_reg[2]),
        .I2(cnt_reg[4]),
        .I3(\cnt[6]_i_2_n_0 ),
        .I4(cnt_reg[3]),
        .I5(rst_n),
        .O(\rddat[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000002)) 
    \rddat[8]_i_1 
       (.I0(SDO),
        .I1(cnt_reg[4]),
        .I2(\rddat[10]_i_3_n_0 ),
        .I3(\rddat[8]_i_2_n_0 ),
        .I4(\rddat[8]_i_3_n_0 ),
        .I5(rddat[8]),
        .O(\rddat[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \rddat[8]_i_2 
       (.I0(cnt_reg[1]),
        .I1(rst_n),
        .O(\rddat[8]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \rddat[8]_i_3 
       (.I0(cnt_reg[2]),
        .I1(cnt_reg[0]),
        .I2(\rddat[15]_i_3_n_0 ),
        .O(\rddat[8]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000002)) 
    \rddat[9]_i_1 
       (.I0(SDO),
        .I1(cnt_reg[4]),
        .I2(\rddat[10]_i_3_n_0 ),
        .I3(\rddat[9]_i_2_n_0 ),
        .I4(\rddat[9]_i_3_n_0 ),
        .I5(rddat[9]),
        .O(\rddat[9]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \rddat[9]_i_2 
       (.I0(rst_n),
        .I1(cnt_reg[0]),
        .O(\rddat[9]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \rddat[9]_i_3 
       (.I0(cnt_reg[2]),
        .I1(cnt_reg[1]),
        .I2(\rddat[15]_i_3_n_0 ),
        .O(\rddat[9]_i_3_n_0 ));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \rddat_reg[0] 
       (.C(CLK_2M),
        .CE(1'b1),
        .CLR(CS_i_3_n_0),
        .D(\rddat[0]_i_1_n_0 ),
        .Q(rddat[0]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \rddat_reg[10] 
       (.C(CLK_2M),
        .CE(1'b1),
        .CLR(CS_i_3_n_0),
        .D(\rddat[10]_i_1_n_0 ),
        .Q(rddat[10]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \rddat_reg[11] 
       (.C(CLK_2M),
        .CE(1'b1),
        .CLR(CS_i_3_n_0),
        .D(\rddat[11]_i_1_n_0 ),
        .Q(rddat[11]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \rddat_reg[12] 
       (.C(CLK_2M),
        .CE(1'b1),
        .CLR(CS_i_3_n_0),
        .D(\rddat[12]_i_1_n_0 ),
        .Q(rddat[12]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \rddat_reg[13] 
       (.C(CLK_2M),
        .CE(1'b1),
        .CLR(CS_i_3_n_0),
        .D(\rddat[13]_i_1_n_0 ),
        .Q(rddat[13]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \rddat_reg[14] 
       (.C(CLK_2M),
        .CE(1'b1),
        .CLR(CS_i_3_n_0),
        .D(\rddat[14]_i_1_n_0 ),
        .Q(rddat[14]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \rddat_reg[15] 
       (.C(CLK_2M),
        .CE(1'b1),
        .CLR(CS_i_3_n_0),
        .D(\rddat[15]_i_1_n_0 ),
        .Q(rddat[15]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \rddat_reg[1] 
       (.C(CLK_2M),
        .CE(1'b1),
        .CLR(CS_i_3_n_0),
        .D(\rddat[1]_i_1_n_0 ),
        .Q(rddat[1]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \rddat_reg[2] 
       (.C(CLK_2M),
        .CE(1'b1),
        .CLR(CS_i_3_n_0),
        .D(\rddat[2]_i_1_n_0 ),
        .Q(rddat[2]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \rddat_reg[3] 
       (.C(CLK_2M),
        .CE(1'b1),
        .CLR(CS_i_3_n_0),
        .D(\rddat[3]_i_1_n_0 ),
        .Q(rddat[3]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \rddat_reg[4] 
       (.C(CLK_2M),
        .CE(1'b1),
        .CLR(CS_i_3_n_0),
        .D(\rddat[4]_i_1_n_0 ),
        .Q(rddat[4]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \rddat_reg[5] 
       (.C(CLK_2M),
        .CE(1'b1),
        .CLR(CS_i_3_n_0),
        .D(\rddat[5]_i_1_n_0 ),
        .Q(rddat[5]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \rddat_reg[6] 
       (.C(CLK_2M),
        .CE(1'b1),
        .CLR(CS_i_3_n_0),
        .D(\rddat[6]_i_1_n_0 ),
        .Q(rddat[6]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \rddat_reg[7] 
       (.C(CLK_2M),
        .CE(1'b1),
        .CLR(CS_i_3_n_0),
        .D(\rddat[7]_i_1_n_0 ),
        .Q(rddat[7]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \rddat_reg[8] 
       (.C(CLK_2M),
        .CE(1'b1),
        .CLR(CS_i_3_n_0),
        .D(\rddat[8]_i_1_n_0 ),
        .Q(rddat[8]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \rddat_reg[9] 
       (.C(CLK_2M),
        .CE(1'b1),
        .CLR(CS_i_3_n_0),
        .D(\rddat[9]_i_1_n_0 ),
        .Q(rddat[9]));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_clkdiv
   (SCLK,
    CLK_2M,
    CLK_50M,
    CS);
  output SCLK;
  output CLK_2M;
  input CLK_50M;
  input CS;

  wire CLK_2M;
  wire CLK_50M;
  wire CS;
  wire SCLK;
  wire clear;
  wire clk_n;
  wire clk_n_i_1_n_0;
  wire clk_n_i_2_n_0;
  wire clk_n_i_3_n_0;
  wire clk_n_i_4_n_0;
  wire clk_n_i_5_n_0;
  wire clk_n_i_6_n_0;
  wire clk_p;
  wire clk_p_i_1_n_0;
  wire clk_p_i_2_n_0;
  wire clk_p_i_3_n_0;
  wire clk_p_i_4_n_0;
  wire clk_p_i_5_n_0;
  wire clk_p_i_6_n_0;
  wire cnt_n0_carry__0_i_1_n_0;
  wire cnt_n0_carry__0_i_2_n_0;
  wire cnt_n0_carry__0_i_3_n_0;
  wire cnt_n0_carry__0_i_4_n_0;
  wire cnt_n0_carry__0_n_0;
  wire cnt_n0_carry__0_n_1;
  wire cnt_n0_carry__0_n_2;
  wire cnt_n0_carry__0_n_3;
  wire cnt_n0_carry__1_i_1_n_0;
  wire cnt_n0_carry__1_i_2_n_0;
  wire cnt_n0_carry__1_i_3_n_0;
  wire cnt_n0_carry__1_n_2;
  wire cnt_n0_carry__1_n_3;
  wire cnt_n0_carry_i_1_n_0;
  wire cnt_n0_carry_i_2_n_0;
  wire cnt_n0_carry_i_3_n_0;
  wire cnt_n0_carry_i_4_n_0;
  wire cnt_n0_carry_n_0;
  wire cnt_n0_carry_n_1;
  wire cnt_n0_carry_n_2;
  wire cnt_n0_carry_n_3;
  wire \cnt_n[0]_i_2_n_0 ;
  wire [31:0]cnt_n_reg;
  wire \cnt_n_reg[0]_i_1_n_0 ;
  wire \cnt_n_reg[0]_i_1_n_1 ;
  wire \cnt_n_reg[0]_i_1_n_2 ;
  wire \cnt_n_reg[0]_i_1_n_3 ;
  wire \cnt_n_reg[0]_i_1_n_4 ;
  wire \cnt_n_reg[0]_i_1_n_5 ;
  wire \cnt_n_reg[0]_i_1_n_6 ;
  wire \cnt_n_reg[0]_i_1_n_7 ;
  wire \cnt_n_reg[12]_i_1_n_0 ;
  wire \cnt_n_reg[12]_i_1_n_1 ;
  wire \cnt_n_reg[12]_i_1_n_2 ;
  wire \cnt_n_reg[12]_i_1_n_3 ;
  wire \cnt_n_reg[12]_i_1_n_4 ;
  wire \cnt_n_reg[12]_i_1_n_5 ;
  wire \cnt_n_reg[12]_i_1_n_6 ;
  wire \cnt_n_reg[12]_i_1_n_7 ;
  wire \cnt_n_reg[16]_i_1_n_0 ;
  wire \cnt_n_reg[16]_i_1_n_1 ;
  wire \cnt_n_reg[16]_i_1_n_2 ;
  wire \cnt_n_reg[16]_i_1_n_3 ;
  wire \cnt_n_reg[16]_i_1_n_4 ;
  wire \cnt_n_reg[16]_i_1_n_5 ;
  wire \cnt_n_reg[16]_i_1_n_6 ;
  wire \cnt_n_reg[16]_i_1_n_7 ;
  wire \cnt_n_reg[20]_i_1_n_0 ;
  wire \cnt_n_reg[20]_i_1_n_1 ;
  wire \cnt_n_reg[20]_i_1_n_2 ;
  wire \cnt_n_reg[20]_i_1_n_3 ;
  wire \cnt_n_reg[20]_i_1_n_4 ;
  wire \cnt_n_reg[20]_i_1_n_5 ;
  wire \cnt_n_reg[20]_i_1_n_6 ;
  wire \cnt_n_reg[20]_i_1_n_7 ;
  wire \cnt_n_reg[24]_i_1_n_0 ;
  wire \cnt_n_reg[24]_i_1_n_1 ;
  wire \cnt_n_reg[24]_i_1_n_2 ;
  wire \cnt_n_reg[24]_i_1_n_3 ;
  wire \cnt_n_reg[24]_i_1_n_4 ;
  wire \cnt_n_reg[24]_i_1_n_5 ;
  wire \cnt_n_reg[24]_i_1_n_6 ;
  wire \cnt_n_reg[24]_i_1_n_7 ;
  wire \cnt_n_reg[28]_i_1_n_1 ;
  wire \cnt_n_reg[28]_i_1_n_2 ;
  wire \cnt_n_reg[28]_i_1_n_3 ;
  wire \cnt_n_reg[28]_i_1_n_4 ;
  wire \cnt_n_reg[28]_i_1_n_5 ;
  wire \cnt_n_reg[28]_i_1_n_6 ;
  wire \cnt_n_reg[28]_i_1_n_7 ;
  wire \cnt_n_reg[4]_i_1_n_0 ;
  wire \cnt_n_reg[4]_i_1_n_1 ;
  wire \cnt_n_reg[4]_i_1_n_2 ;
  wire \cnt_n_reg[4]_i_1_n_3 ;
  wire \cnt_n_reg[4]_i_1_n_4 ;
  wire \cnt_n_reg[4]_i_1_n_5 ;
  wire \cnt_n_reg[4]_i_1_n_6 ;
  wire \cnt_n_reg[4]_i_1_n_7 ;
  wire \cnt_n_reg[8]_i_1_n_0 ;
  wire \cnt_n_reg[8]_i_1_n_1 ;
  wire \cnt_n_reg[8]_i_1_n_2 ;
  wire \cnt_n_reg[8]_i_1_n_3 ;
  wire \cnt_n_reg[8]_i_1_n_4 ;
  wire \cnt_n_reg[8]_i_1_n_5 ;
  wire \cnt_n_reg[8]_i_1_n_6 ;
  wire \cnt_n_reg[8]_i_1_n_7 ;
  wire cnt_p0_carry__0_i_1_n_0;
  wire cnt_p0_carry__0_i_2_n_0;
  wire cnt_p0_carry__0_i_3_n_0;
  wire cnt_p0_carry__0_i_4_n_0;
  wire cnt_p0_carry__0_n_0;
  wire cnt_p0_carry__0_n_1;
  wire cnt_p0_carry__0_n_2;
  wire cnt_p0_carry__0_n_3;
  wire cnt_p0_carry__1_i_1_n_0;
  wire cnt_p0_carry__1_i_2_n_0;
  wire cnt_p0_carry__1_i_3_n_0;
  wire cnt_p0_carry__1_n_1;
  wire cnt_p0_carry__1_n_2;
  wire cnt_p0_carry__1_n_3;
  wire cnt_p0_carry_i_1_n_0;
  wire cnt_p0_carry_i_2_n_0;
  wire cnt_p0_carry_i_3_n_0;
  wire cnt_p0_carry_i_4_n_0;
  wire cnt_p0_carry_n_0;
  wire cnt_p0_carry_n_1;
  wire cnt_p0_carry_n_2;
  wire cnt_p0_carry_n_3;
  wire \cnt_p[0]_i_2_n_0 ;
  wire [31:0]cnt_p_reg;
  wire \cnt_p_reg[0]_i_1_n_0 ;
  wire \cnt_p_reg[0]_i_1_n_1 ;
  wire \cnt_p_reg[0]_i_1_n_2 ;
  wire \cnt_p_reg[0]_i_1_n_3 ;
  wire \cnt_p_reg[0]_i_1_n_4 ;
  wire \cnt_p_reg[0]_i_1_n_5 ;
  wire \cnt_p_reg[0]_i_1_n_6 ;
  wire \cnt_p_reg[0]_i_1_n_7 ;
  wire \cnt_p_reg[12]_i_1_n_0 ;
  wire \cnt_p_reg[12]_i_1_n_1 ;
  wire \cnt_p_reg[12]_i_1_n_2 ;
  wire \cnt_p_reg[12]_i_1_n_3 ;
  wire \cnt_p_reg[12]_i_1_n_4 ;
  wire \cnt_p_reg[12]_i_1_n_5 ;
  wire \cnt_p_reg[12]_i_1_n_6 ;
  wire \cnt_p_reg[12]_i_1_n_7 ;
  wire \cnt_p_reg[16]_i_1_n_0 ;
  wire \cnt_p_reg[16]_i_1_n_1 ;
  wire \cnt_p_reg[16]_i_1_n_2 ;
  wire \cnt_p_reg[16]_i_1_n_3 ;
  wire \cnt_p_reg[16]_i_1_n_4 ;
  wire \cnt_p_reg[16]_i_1_n_5 ;
  wire \cnt_p_reg[16]_i_1_n_6 ;
  wire \cnt_p_reg[16]_i_1_n_7 ;
  wire \cnt_p_reg[20]_i_1_n_0 ;
  wire \cnt_p_reg[20]_i_1_n_1 ;
  wire \cnt_p_reg[20]_i_1_n_2 ;
  wire \cnt_p_reg[20]_i_1_n_3 ;
  wire \cnt_p_reg[20]_i_1_n_4 ;
  wire \cnt_p_reg[20]_i_1_n_5 ;
  wire \cnt_p_reg[20]_i_1_n_6 ;
  wire \cnt_p_reg[20]_i_1_n_7 ;
  wire \cnt_p_reg[24]_i_1_n_0 ;
  wire \cnt_p_reg[24]_i_1_n_1 ;
  wire \cnt_p_reg[24]_i_1_n_2 ;
  wire \cnt_p_reg[24]_i_1_n_3 ;
  wire \cnt_p_reg[24]_i_1_n_4 ;
  wire \cnt_p_reg[24]_i_1_n_5 ;
  wire \cnt_p_reg[24]_i_1_n_6 ;
  wire \cnt_p_reg[24]_i_1_n_7 ;
  wire \cnt_p_reg[28]_i_1_n_1 ;
  wire \cnt_p_reg[28]_i_1_n_2 ;
  wire \cnt_p_reg[28]_i_1_n_3 ;
  wire \cnt_p_reg[28]_i_1_n_4 ;
  wire \cnt_p_reg[28]_i_1_n_5 ;
  wire \cnt_p_reg[28]_i_1_n_6 ;
  wire \cnt_p_reg[28]_i_1_n_7 ;
  wire \cnt_p_reg[4]_i_1_n_0 ;
  wire \cnt_p_reg[4]_i_1_n_1 ;
  wire \cnt_p_reg[4]_i_1_n_2 ;
  wire \cnt_p_reg[4]_i_1_n_3 ;
  wire \cnt_p_reg[4]_i_1_n_4 ;
  wire \cnt_p_reg[4]_i_1_n_5 ;
  wire \cnt_p_reg[4]_i_1_n_6 ;
  wire \cnt_p_reg[4]_i_1_n_7 ;
  wire \cnt_p_reg[8]_i_1_n_0 ;
  wire \cnt_p_reg[8]_i_1_n_1 ;
  wire \cnt_p_reg[8]_i_1_n_2 ;
  wire \cnt_p_reg[8]_i_1_n_3 ;
  wire \cnt_p_reg[8]_i_1_n_4 ;
  wire \cnt_p_reg[8]_i_1_n_5 ;
  wire \cnt_p_reg[8]_i_1_n_6 ;
  wire \cnt_p_reg[8]_i_1_n_7 ;
  wire [3:0]NLW_cnt_n0_carry_O_UNCONNECTED;
  wire [3:0]NLW_cnt_n0_carry__0_O_UNCONNECTED;
  wire [3:3]NLW_cnt_n0_carry__1_CO_UNCONNECTED;
  wire [3:0]NLW_cnt_n0_carry__1_O_UNCONNECTED;
  wire [3:3]\NLW_cnt_n_reg[28]_i_1_CO_UNCONNECTED ;
  wire [3:0]NLW_cnt_p0_carry_O_UNCONNECTED;
  wire [3:0]NLW_cnt_p0_carry__0_O_UNCONNECTED;
  wire [3:3]NLW_cnt_p0_carry__1_CO_UNCONNECTED;
  wire [3:0]NLW_cnt_p0_carry__1_O_UNCONNECTED;
  wire [3:3]\NLW_cnt_p_reg[28]_i_1_CO_UNCONNECTED ;

  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h8)) 
    CS_i_2
       (.I0(clk_p),
        .I1(clk_n),
        .O(CLK_2M));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'h08)) 
    SCLK_INST_0
       (.I0(clk_n),
        .I1(clk_p),
        .I2(CS),
        .O(SCLK));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    clk_n_i_1
       (.I0(clk_n_i_2_n_0),
        .I1(clk_n_i_3_n_0),
        .I2(clk_n_i_4_n_0),
        .I3(clk_n_i_5_n_0),
        .I4(clk_n_i_6_n_0),
        .O(clk_n_i_1_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    clk_n_i_2
       (.I0(cnt_n_reg[8]),
        .I1(cnt_n_reg[9]),
        .I2(cnt_n_reg[6]),
        .I3(cnt_n_reg[7]),
        .I4(cnt_n_reg[5]),
        .I5(cnt_n_reg[4]),
        .O(clk_n_i_2_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    clk_n_i_3
       (.I0(cnt_n_reg[26]),
        .I1(cnt_n_reg[27]),
        .I2(cnt_n_reg[24]),
        .I3(cnt_n_reg[25]),
        .I4(cnt_n_reg[23]),
        .I5(cnt_n_reg[22]),
        .O(clk_n_i_3_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFF8)) 
    clk_n_i_4
       (.I0(cnt_n_reg[2]),
        .I1(cnt_n_reg[3]),
        .I2(cnt_n_reg[30]),
        .I3(cnt_n_reg[31]),
        .I4(cnt_n_reg[29]),
        .I5(cnt_n_reg[28]),
        .O(clk_n_i_4_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    clk_n_i_5
       (.I0(cnt_n_reg[20]),
        .I1(cnt_n_reg[21]),
        .I2(cnt_n_reg[18]),
        .I3(cnt_n_reg[19]),
        .I4(cnt_n_reg[17]),
        .I5(cnt_n_reg[16]),
        .O(clk_n_i_5_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    clk_n_i_6
       (.I0(cnt_n_reg[14]),
        .I1(cnt_n_reg[15]),
        .I2(cnt_n_reg[12]),
        .I3(cnt_n_reg[13]),
        .I4(cnt_n_reg[11]),
        .I5(cnt_n_reg[10]),
        .O(clk_n_i_6_n_0));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    clk_n_reg
       (.C(CLK_50M),
        .CE(1'b1),
        .D(clk_n_i_1_n_0),
        .Q(clk_n),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    clk_p_i_1
       (.I0(clk_p_i_2_n_0),
        .I1(clk_p_i_3_n_0),
        .I2(clk_p_i_4_n_0),
        .I3(clk_p_i_5_n_0),
        .I4(clk_p_i_6_n_0),
        .O(clk_p_i_1_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    clk_p_i_2
       (.I0(cnt_p_reg[8]),
        .I1(cnt_p_reg[9]),
        .I2(cnt_p_reg[6]),
        .I3(cnt_p_reg[7]),
        .I4(cnt_p_reg[5]),
        .I5(cnt_p_reg[4]),
        .O(clk_p_i_2_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    clk_p_i_3
       (.I0(cnt_p_reg[26]),
        .I1(cnt_p_reg[27]),
        .I2(cnt_p_reg[24]),
        .I3(cnt_p_reg[25]),
        .I4(cnt_p_reg[23]),
        .I5(cnt_p_reg[22]),
        .O(clk_p_i_3_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFF8)) 
    clk_p_i_4
       (.I0(cnt_p_reg[2]),
        .I1(cnt_p_reg[3]),
        .I2(cnt_p_reg[30]),
        .I3(cnt_p_reg[31]),
        .I4(cnt_p_reg[29]),
        .I5(cnt_p_reg[28]),
        .O(clk_p_i_4_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    clk_p_i_5
       (.I0(cnt_p_reg[20]),
        .I1(cnt_p_reg[21]),
        .I2(cnt_p_reg[18]),
        .I3(cnt_p_reg[19]),
        .I4(cnt_p_reg[17]),
        .I5(cnt_p_reg[16]),
        .O(clk_p_i_5_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    clk_p_i_6
       (.I0(cnt_p_reg[14]),
        .I1(cnt_p_reg[15]),
        .I2(cnt_p_reg[12]),
        .I3(cnt_p_reg[13]),
        .I4(cnt_p_reg[11]),
        .I5(cnt_p_reg[10]),
        .O(clk_p_i_6_n_0));
  FDRE clk_p_reg
       (.C(CLK_50M),
        .CE(1'b1),
        .D(clk_p_i_1_n_0),
        .Q(clk_p),
        .R(1'b0));
  CARRY4 cnt_n0_carry
       (.CI(1'b0),
        .CO({cnt_n0_carry_n_0,cnt_n0_carry_n_1,cnt_n0_carry_n_2,cnt_n0_carry_n_3}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_cnt_n0_carry_O_UNCONNECTED[3:0]),
        .S({cnt_n0_carry_i_1_n_0,cnt_n0_carry_i_2_n_0,cnt_n0_carry_i_3_n_0,cnt_n0_carry_i_4_n_0}));
  CARRY4 cnt_n0_carry__0
       (.CI(cnt_n0_carry_n_0),
        .CO({cnt_n0_carry__0_n_0,cnt_n0_carry__0_n_1,cnt_n0_carry__0_n_2,cnt_n0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_cnt_n0_carry__0_O_UNCONNECTED[3:0]),
        .S({cnt_n0_carry__0_i_1_n_0,cnt_n0_carry__0_i_2_n_0,cnt_n0_carry__0_i_3_n_0,cnt_n0_carry__0_i_4_n_0}));
  LUT3 #(
    .INIT(8'h01)) 
    cnt_n0_carry__0_i_1
       (.I0(cnt_n_reg[23]),
        .I1(cnt_n_reg[22]),
        .I2(cnt_n_reg[21]),
        .O(cnt_n0_carry__0_i_1_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    cnt_n0_carry__0_i_2
       (.I0(cnt_n_reg[20]),
        .I1(cnt_n_reg[19]),
        .I2(cnt_n_reg[18]),
        .O(cnt_n0_carry__0_i_2_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    cnt_n0_carry__0_i_3
       (.I0(cnt_n_reg[17]),
        .I1(cnt_n_reg[16]),
        .I2(cnt_n_reg[15]),
        .O(cnt_n0_carry__0_i_3_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    cnt_n0_carry__0_i_4
       (.I0(cnt_n_reg[14]),
        .I1(cnt_n_reg[13]),
        .I2(cnt_n_reg[12]),
        .O(cnt_n0_carry__0_i_4_n_0));
  CARRY4 cnt_n0_carry__1
       (.CI(cnt_n0_carry__0_n_0),
        .CO({NLW_cnt_n0_carry__1_CO_UNCONNECTED[3],clear,cnt_n0_carry__1_n_2,cnt_n0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_cnt_n0_carry__1_O_UNCONNECTED[3:0]),
        .S({1'b0,cnt_n0_carry__1_i_1_n_0,cnt_n0_carry__1_i_2_n_0,cnt_n0_carry__1_i_3_n_0}));
  LUT2 #(
    .INIT(4'h1)) 
    cnt_n0_carry__1_i_1
       (.I0(cnt_n_reg[31]),
        .I1(cnt_n_reg[30]),
        .O(cnt_n0_carry__1_i_1_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    cnt_n0_carry__1_i_2
       (.I0(cnt_n_reg[29]),
        .I1(cnt_n_reg[28]),
        .I2(cnt_n_reg[27]),
        .O(cnt_n0_carry__1_i_2_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    cnt_n0_carry__1_i_3
       (.I0(cnt_n_reg[26]),
        .I1(cnt_n_reg[25]),
        .I2(cnt_n_reg[24]),
        .O(cnt_n0_carry__1_i_3_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    cnt_n0_carry_i_1
       (.I0(cnt_n_reg[11]),
        .I1(cnt_n_reg[10]),
        .I2(cnt_n_reg[9]),
        .O(cnt_n0_carry_i_1_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    cnt_n0_carry_i_2
       (.I0(cnt_n_reg[8]),
        .I1(cnt_n_reg[7]),
        .I2(cnt_n_reg[6]),
        .O(cnt_n0_carry_i_2_n_0));
  LUT3 #(
    .INIT(8'h40)) 
    cnt_n0_carry_i_3
       (.I0(cnt_n_reg[5]),
        .I1(cnt_n_reg[4]),
        .I2(cnt_n_reg[3]),
        .O(cnt_n0_carry_i_3_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    cnt_n0_carry_i_4
       (.I0(cnt_n_reg[2]),
        .I1(cnt_n_reg[1]),
        .I2(cnt_n_reg[0]),
        .O(cnt_n0_carry_i_4_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    \cnt_n[0]_i_2 
       (.I0(cnt_n_reg[0]),
        .O(\cnt_n[0]_i_2_n_0 ));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \cnt_n_reg[0] 
       (.C(CLK_50M),
        .CE(1'b1),
        .D(\cnt_n_reg[0]_i_1_n_7 ),
        .Q(cnt_n_reg[0]),
        .R(clear));
  CARRY4 \cnt_n_reg[0]_i_1 
       (.CI(1'b0),
        .CO({\cnt_n_reg[0]_i_1_n_0 ,\cnt_n_reg[0]_i_1_n_1 ,\cnt_n_reg[0]_i_1_n_2 ,\cnt_n_reg[0]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\cnt_n_reg[0]_i_1_n_4 ,\cnt_n_reg[0]_i_1_n_5 ,\cnt_n_reg[0]_i_1_n_6 ,\cnt_n_reg[0]_i_1_n_7 }),
        .S({cnt_n_reg[3:1],\cnt_n[0]_i_2_n_0 }));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \cnt_n_reg[10] 
       (.C(CLK_50M),
        .CE(1'b1),
        .D(\cnt_n_reg[8]_i_1_n_5 ),
        .Q(cnt_n_reg[10]),
        .R(clear));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \cnt_n_reg[11] 
       (.C(CLK_50M),
        .CE(1'b1),
        .D(\cnt_n_reg[8]_i_1_n_4 ),
        .Q(cnt_n_reg[11]),
        .R(clear));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \cnt_n_reg[12] 
       (.C(CLK_50M),
        .CE(1'b1),
        .D(\cnt_n_reg[12]_i_1_n_7 ),
        .Q(cnt_n_reg[12]),
        .R(clear));
  CARRY4 \cnt_n_reg[12]_i_1 
       (.CI(\cnt_n_reg[8]_i_1_n_0 ),
        .CO({\cnt_n_reg[12]_i_1_n_0 ,\cnt_n_reg[12]_i_1_n_1 ,\cnt_n_reg[12]_i_1_n_2 ,\cnt_n_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\cnt_n_reg[12]_i_1_n_4 ,\cnt_n_reg[12]_i_1_n_5 ,\cnt_n_reg[12]_i_1_n_6 ,\cnt_n_reg[12]_i_1_n_7 }),
        .S(cnt_n_reg[15:12]));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \cnt_n_reg[13] 
       (.C(CLK_50M),
        .CE(1'b1),
        .D(\cnt_n_reg[12]_i_1_n_6 ),
        .Q(cnt_n_reg[13]),
        .R(clear));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \cnt_n_reg[14] 
       (.C(CLK_50M),
        .CE(1'b1),
        .D(\cnt_n_reg[12]_i_1_n_5 ),
        .Q(cnt_n_reg[14]),
        .R(clear));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \cnt_n_reg[15] 
       (.C(CLK_50M),
        .CE(1'b1),
        .D(\cnt_n_reg[12]_i_1_n_4 ),
        .Q(cnt_n_reg[15]),
        .R(clear));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \cnt_n_reg[16] 
       (.C(CLK_50M),
        .CE(1'b1),
        .D(\cnt_n_reg[16]_i_1_n_7 ),
        .Q(cnt_n_reg[16]),
        .R(clear));
  CARRY4 \cnt_n_reg[16]_i_1 
       (.CI(\cnt_n_reg[12]_i_1_n_0 ),
        .CO({\cnt_n_reg[16]_i_1_n_0 ,\cnt_n_reg[16]_i_1_n_1 ,\cnt_n_reg[16]_i_1_n_2 ,\cnt_n_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\cnt_n_reg[16]_i_1_n_4 ,\cnt_n_reg[16]_i_1_n_5 ,\cnt_n_reg[16]_i_1_n_6 ,\cnt_n_reg[16]_i_1_n_7 }),
        .S(cnt_n_reg[19:16]));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \cnt_n_reg[17] 
       (.C(CLK_50M),
        .CE(1'b1),
        .D(\cnt_n_reg[16]_i_1_n_6 ),
        .Q(cnt_n_reg[17]),
        .R(clear));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \cnt_n_reg[18] 
       (.C(CLK_50M),
        .CE(1'b1),
        .D(\cnt_n_reg[16]_i_1_n_5 ),
        .Q(cnt_n_reg[18]),
        .R(clear));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \cnt_n_reg[19] 
       (.C(CLK_50M),
        .CE(1'b1),
        .D(\cnt_n_reg[16]_i_1_n_4 ),
        .Q(cnt_n_reg[19]),
        .R(clear));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \cnt_n_reg[1] 
       (.C(CLK_50M),
        .CE(1'b1),
        .D(\cnt_n_reg[0]_i_1_n_6 ),
        .Q(cnt_n_reg[1]),
        .R(clear));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \cnt_n_reg[20] 
       (.C(CLK_50M),
        .CE(1'b1),
        .D(\cnt_n_reg[20]_i_1_n_7 ),
        .Q(cnt_n_reg[20]),
        .R(clear));
  CARRY4 \cnt_n_reg[20]_i_1 
       (.CI(\cnt_n_reg[16]_i_1_n_0 ),
        .CO({\cnt_n_reg[20]_i_1_n_0 ,\cnt_n_reg[20]_i_1_n_1 ,\cnt_n_reg[20]_i_1_n_2 ,\cnt_n_reg[20]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\cnt_n_reg[20]_i_1_n_4 ,\cnt_n_reg[20]_i_1_n_5 ,\cnt_n_reg[20]_i_1_n_6 ,\cnt_n_reg[20]_i_1_n_7 }),
        .S(cnt_n_reg[23:20]));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \cnt_n_reg[21] 
       (.C(CLK_50M),
        .CE(1'b1),
        .D(\cnt_n_reg[20]_i_1_n_6 ),
        .Q(cnt_n_reg[21]),
        .R(clear));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \cnt_n_reg[22] 
       (.C(CLK_50M),
        .CE(1'b1),
        .D(\cnt_n_reg[20]_i_1_n_5 ),
        .Q(cnt_n_reg[22]),
        .R(clear));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \cnt_n_reg[23] 
       (.C(CLK_50M),
        .CE(1'b1),
        .D(\cnt_n_reg[20]_i_1_n_4 ),
        .Q(cnt_n_reg[23]),
        .R(clear));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \cnt_n_reg[24] 
       (.C(CLK_50M),
        .CE(1'b1),
        .D(\cnt_n_reg[24]_i_1_n_7 ),
        .Q(cnt_n_reg[24]),
        .R(clear));
  CARRY4 \cnt_n_reg[24]_i_1 
       (.CI(\cnt_n_reg[20]_i_1_n_0 ),
        .CO({\cnt_n_reg[24]_i_1_n_0 ,\cnt_n_reg[24]_i_1_n_1 ,\cnt_n_reg[24]_i_1_n_2 ,\cnt_n_reg[24]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\cnt_n_reg[24]_i_1_n_4 ,\cnt_n_reg[24]_i_1_n_5 ,\cnt_n_reg[24]_i_1_n_6 ,\cnt_n_reg[24]_i_1_n_7 }),
        .S(cnt_n_reg[27:24]));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \cnt_n_reg[25] 
       (.C(CLK_50M),
        .CE(1'b1),
        .D(\cnt_n_reg[24]_i_1_n_6 ),
        .Q(cnt_n_reg[25]),
        .R(clear));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \cnt_n_reg[26] 
       (.C(CLK_50M),
        .CE(1'b1),
        .D(\cnt_n_reg[24]_i_1_n_5 ),
        .Q(cnt_n_reg[26]),
        .R(clear));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \cnt_n_reg[27] 
       (.C(CLK_50M),
        .CE(1'b1),
        .D(\cnt_n_reg[24]_i_1_n_4 ),
        .Q(cnt_n_reg[27]),
        .R(clear));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \cnt_n_reg[28] 
       (.C(CLK_50M),
        .CE(1'b1),
        .D(\cnt_n_reg[28]_i_1_n_7 ),
        .Q(cnt_n_reg[28]),
        .R(clear));
  CARRY4 \cnt_n_reg[28]_i_1 
       (.CI(\cnt_n_reg[24]_i_1_n_0 ),
        .CO({\NLW_cnt_n_reg[28]_i_1_CO_UNCONNECTED [3],\cnt_n_reg[28]_i_1_n_1 ,\cnt_n_reg[28]_i_1_n_2 ,\cnt_n_reg[28]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\cnt_n_reg[28]_i_1_n_4 ,\cnt_n_reg[28]_i_1_n_5 ,\cnt_n_reg[28]_i_1_n_6 ,\cnt_n_reg[28]_i_1_n_7 }),
        .S(cnt_n_reg[31:28]));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \cnt_n_reg[29] 
       (.C(CLK_50M),
        .CE(1'b1),
        .D(\cnt_n_reg[28]_i_1_n_6 ),
        .Q(cnt_n_reg[29]),
        .R(clear));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \cnt_n_reg[2] 
       (.C(CLK_50M),
        .CE(1'b1),
        .D(\cnt_n_reg[0]_i_1_n_5 ),
        .Q(cnt_n_reg[2]),
        .R(clear));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \cnt_n_reg[30] 
       (.C(CLK_50M),
        .CE(1'b1),
        .D(\cnt_n_reg[28]_i_1_n_5 ),
        .Q(cnt_n_reg[30]),
        .R(clear));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \cnt_n_reg[31] 
       (.C(CLK_50M),
        .CE(1'b1),
        .D(\cnt_n_reg[28]_i_1_n_4 ),
        .Q(cnt_n_reg[31]),
        .R(clear));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \cnt_n_reg[3] 
       (.C(CLK_50M),
        .CE(1'b1),
        .D(\cnt_n_reg[0]_i_1_n_4 ),
        .Q(cnt_n_reg[3]),
        .R(clear));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \cnt_n_reg[4] 
       (.C(CLK_50M),
        .CE(1'b1),
        .D(\cnt_n_reg[4]_i_1_n_7 ),
        .Q(cnt_n_reg[4]),
        .R(clear));
  CARRY4 \cnt_n_reg[4]_i_1 
       (.CI(\cnt_n_reg[0]_i_1_n_0 ),
        .CO({\cnt_n_reg[4]_i_1_n_0 ,\cnt_n_reg[4]_i_1_n_1 ,\cnt_n_reg[4]_i_1_n_2 ,\cnt_n_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\cnt_n_reg[4]_i_1_n_4 ,\cnt_n_reg[4]_i_1_n_5 ,\cnt_n_reg[4]_i_1_n_6 ,\cnt_n_reg[4]_i_1_n_7 }),
        .S(cnt_n_reg[7:4]));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \cnt_n_reg[5] 
       (.C(CLK_50M),
        .CE(1'b1),
        .D(\cnt_n_reg[4]_i_1_n_6 ),
        .Q(cnt_n_reg[5]),
        .R(clear));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \cnt_n_reg[6] 
       (.C(CLK_50M),
        .CE(1'b1),
        .D(\cnt_n_reg[4]_i_1_n_5 ),
        .Q(cnt_n_reg[6]),
        .R(clear));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \cnt_n_reg[7] 
       (.C(CLK_50M),
        .CE(1'b1),
        .D(\cnt_n_reg[4]_i_1_n_4 ),
        .Q(cnt_n_reg[7]),
        .R(clear));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \cnt_n_reg[8] 
       (.C(CLK_50M),
        .CE(1'b1),
        .D(\cnt_n_reg[8]_i_1_n_7 ),
        .Q(cnt_n_reg[8]),
        .R(clear));
  CARRY4 \cnt_n_reg[8]_i_1 
       (.CI(\cnt_n_reg[4]_i_1_n_0 ),
        .CO({\cnt_n_reg[8]_i_1_n_0 ,\cnt_n_reg[8]_i_1_n_1 ,\cnt_n_reg[8]_i_1_n_2 ,\cnt_n_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\cnt_n_reg[8]_i_1_n_4 ,\cnt_n_reg[8]_i_1_n_5 ,\cnt_n_reg[8]_i_1_n_6 ,\cnt_n_reg[8]_i_1_n_7 }),
        .S(cnt_n_reg[11:8]));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \cnt_n_reg[9] 
       (.C(CLK_50M),
        .CE(1'b1),
        .D(\cnt_n_reg[8]_i_1_n_6 ),
        .Q(cnt_n_reg[9]),
        .R(clear));
  CARRY4 cnt_p0_carry
       (.CI(1'b0),
        .CO({cnt_p0_carry_n_0,cnt_p0_carry_n_1,cnt_p0_carry_n_2,cnt_p0_carry_n_3}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_cnt_p0_carry_O_UNCONNECTED[3:0]),
        .S({cnt_p0_carry_i_1_n_0,cnt_p0_carry_i_2_n_0,cnt_p0_carry_i_3_n_0,cnt_p0_carry_i_4_n_0}));
  CARRY4 cnt_p0_carry__0
       (.CI(cnt_p0_carry_n_0),
        .CO({cnt_p0_carry__0_n_0,cnt_p0_carry__0_n_1,cnt_p0_carry__0_n_2,cnt_p0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_cnt_p0_carry__0_O_UNCONNECTED[3:0]),
        .S({cnt_p0_carry__0_i_1_n_0,cnt_p0_carry__0_i_2_n_0,cnt_p0_carry__0_i_3_n_0,cnt_p0_carry__0_i_4_n_0}));
  LUT3 #(
    .INIT(8'h01)) 
    cnt_p0_carry__0_i_1
       (.I0(cnt_p_reg[23]),
        .I1(cnt_p_reg[22]),
        .I2(cnt_p_reg[21]),
        .O(cnt_p0_carry__0_i_1_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    cnt_p0_carry__0_i_2
       (.I0(cnt_p_reg[20]),
        .I1(cnt_p_reg[19]),
        .I2(cnt_p_reg[18]),
        .O(cnt_p0_carry__0_i_2_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    cnt_p0_carry__0_i_3
       (.I0(cnt_p_reg[17]),
        .I1(cnt_p_reg[16]),
        .I2(cnt_p_reg[15]),
        .O(cnt_p0_carry__0_i_3_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    cnt_p0_carry__0_i_4
       (.I0(cnt_p_reg[14]),
        .I1(cnt_p_reg[13]),
        .I2(cnt_p_reg[12]),
        .O(cnt_p0_carry__0_i_4_n_0));
  CARRY4 cnt_p0_carry__1
       (.CI(cnt_p0_carry__0_n_0),
        .CO({NLW_cnt_p0_carry__1_CO_UNCONNECTED[3],cnt_p0_carry__1_n_1,cnt_p0_carry__1_n_2,cnt_p0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_cnt_p0_carry__1_O_UNCONNECTED[3:0]),
        .S({1'b0,cnt_p0_carry__1_i_1_n_0,cnt_p0_carry__1_i_2_n_0,cnt_p0_carry__1_i_3_n_0}));
  LUT2 #(
    .INIT(4'h1)) 
    cnt_p0_carry__1_i_1
       (.I0(cnt_p_reg[31]),
        .I1(cnt_p_reg[30]),
        .O(cnt_p0_carry__1_i_1_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    cnt_p0_carry__1_i_2
       (.I0(cnt_p_reg[29]),
        .I1(cnt_p_reg[28]),
        .I2(cnt_p_reg[27]),
        .O(cnt_p0_carry__1_i_2_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    cnt_p0_carry__1_i_3
       (.I0(cnt_p_reg[26]),
        .I1(cnt_p_reg[25]),
        .I2(cnt_p_reg[24]),
        .O(cnt_p0_carry__1_i_3_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    cnt_p0_carry_i_1
       (.I0(cnt_p_reg[11]),
        .I1(cnt_p_reg[10]),
        .I2(cnt_p_reg[9]),
        .O(cnt_p0_carry_i_1_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    cnt_p0_carry_i_2
       (.I0(cnt_p_reg[8]),
        .I1(cnt_p_reg[7]),
        .I2(cnt_p_reg[6]),
        .O(cnt_p0_carry_i_2_n_0));
  LUT3 #(
    .INIT(8'h40)) 
    cnt_p0_carry_i_3
       (.I0(cnt_p_reg[5]),
        .I1(cnt_p_reg[4]),
        .I2(cnt_p_reg[3]),
        .O(cnt_p0_carry_i_3_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    cnt_p0_carry_i_4
       (.I0(cnt_p_reg[2]),
        .I1(cnt_p_reg[1]),
        .I2(cnt_p_reg[0]),
        .O(cnt_p0_carry_i_4_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    \cnt_p[0]_i_2 
       (.I0(cnt_p_reg[0]),
        .O(\cnt_p[0]_i_2_n_0 ));
  FDRE \cnt_p_reg[0] 
       (.C(CLK_50M),
        .CE(1'b1),
        .D(\cnt_p_reg[0]_i_1_n_7 ),
        .Q(cnt_p_reg[0]),
        .R(cnt_p0_carry__1_n_1));
  CARRY4 \cnt_p_reg[0]_i_1 
       (.CI(1'b0),
        .CO({\cnt_p_reg[0]_i_1_n_0 ,\cnt_p_reg[0]_i_1_n_1 ,\cnt_p_reg[0]_i_1_n_2 ,\cnt_p_reg[0]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\cnt_p_reg[0]_i_1_n_4 ,\cnt_p_reg[0]_i_1_n_5 ,\cnt_p_reg[0]_i_1_n_6 ,\cnt_p_reg[0]_i_1_n_7 }),
        .S({cnt_p_reg[3:1],\cnt_p[0]_i_2_n_0 }));
  FDRE \cnt_p_reg[10] 
       (.C(CLK_50M),
        .CE(1'b1),
        .D(\cnt_p_reg[8]_i_1_n_5 ),
        .Q(cnt_p_reg[10]),
        .R(cnt_p0_carry__1_n_1));
  FDRE \cnt_p_reg[11] 
       (.C(CLK_50M),
        .CE(1'b1),
        .D(\cnt_p_reg[8]_i_1_n_4 ),
        .Q(cnt_p_reg[11]),
        .R(cnt_p0_carry__1_n_1));
  FDRE \cnt_p_reg[12] 
       (.C(CLK_50M),
        .CE(1'b1),
        .D(\cnt_p_reg[12]_i_1_n_7 ),
        .Q(cnt_p_reg[12]),
        .R(cnt_p0_carry__1_n_1));
  CARRY4 \cnt_p_reg[12]_i_1 
       (.CI(\cnt_p_reg[8]_i_1_n_0 ),
        .CO({\cnt_p_reg[12]_i_1_n_0 ,\cnt_p_reg[12]_i_1_n_1 ,\cnt_p_reg[12]_i_1_n_2 ,\cnt_p_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\cnt_p_reg[12]_i_1_n_4 ,\cnt_p_reg[12]_i_1_n_5 ,\cnt_p_reg[12]_i_1_n_6 ,\cnt_p_reg[12]_i_1_n_7 }),
        .S(cnt_p_reg[15:12]));
  FDRE \cnt_p_reg[13] 
       (.C(CLK_50M),
        .CE(1'b1),
        .D(\cnt_p_reg[12]_i_1_n_6 ),
        .Q(cnt_p_reg[13]),
        .R(cnt_p0_carry__1_n_1));
  FDRE \cnt_p_reg[14] 
       (.C(CLK_50M),
        .CE(1'b1),
        .D(\cnt_p_reg[12]_i_1_n_5 ),
        .Q(cnt_p_reg[14]),
        .R(cnt_p0_carry__1_n_1));
  FDRE \cnt_p_reg[15] 
       (.C(CLK_50M),
        .CE(1'b1),
        .D(\cnt_p_reg[12]_i_1_n_4 ),
        .Q(cnt_p_reg[15]),
        .R(cnt_p0_carry__1_n_1));
  FDRE \cnt_p_reg[16] 
       (.C(CLK_50M),
        .CE(1'b1),
        .D(\cnt_p_reg[16]_i_1_n_7 ),
        .Q(cnt_p_reg[16]),
        .R(cnt_p0_carry__1_n_1));
  CARRY4 \cnt_p_reg[16]_i_1 
       (.CI(\cnt_p_reg[12]_i_1_n_0 ),
        .CO({\cnt_p_reg[16]_i_1_n_0 ,\cnt_p_reg[16]_i_1_n_1 ,\cnt_p_reg[16]_i_1_n_2 ,\cnt_p_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\cnt_p_reg[16]_i_1_n_4 ,\cnt_p_reg[16]_i_1_n_5 ,\cnt_p_reg[16]_i_1_n_6 ,\cnt_p_reg[16]_i_1_n_7 }),
        .S(cnt_p_reg[19:16]));
  FDRE \cnt_p_reg[17] 
       (.C(CLK_50M),
        .CE(1'b1),
        .D(\cnt_p_reg[16]_i_1_n_6 ),
        .Q(cnt_p_reg[17]),
        .R(cnt_p0_carry__1_n_1));
  FDRE \cnt_p_reg[18] 
       (.C(CLK_50M),
        .CE(1'b1),
        .D(\cnt_p_reg[16]_i_1_n_5 ),
        .Q(cnt_p_reg[18]),
        .R(cnt_p0_carry__1_n_1));
  FDRE \cnt_p_reg[19] 
       (.C(CLK_50M),
        .CE(1'b1),
        .D(\cnt_p_reg[16]_i_1_n_4 ),
        .Q(cnt_p_reg[19]),
        .R(cnt_p0_carry__1_n_1));
  FDRE \cnt_p_reg[1] 
       (.C(CLK_50M),
        .CE(1'b1),
        .D(\cnt_p_reg[0]_i_1_n_6 ),
        .Q(cnt_p_reg[1]),
        .R(cnt_p0_carry__1_n_1));
  FDRE \cnt_p_reg[20] 
       (.C(CLK_50M),
        .CE(1'b1),
        .D(\cnt_p_reg[20]_i_1_n_7 ),
        .Q(cnt_p_reg[20]),
        .R(cnt_p0_carry__1_n_1));
  CARRY4 \cnt_p_reg[20]_i_1 
       (.CI(\cnt_p_reg[16]_i_1_n_0 ),
        .CO({\cnt_p_reg[20]_i_1_n_0 ,\cnt_p_reg[20]_i_1_n_1 ,\cnt_p_reg[20]_i_1_n_2 ,\cnt_p_reg[20]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\cnt_p_reg[20]_i_1_n_4 ,\cnt_p_reg[20]_i_1_n_5 ,\cnt_p_reg[20]_i_1_n_6 ,\cnt_p_reg[20]_i_1_n_7 }),
        .S(cnt_p_reg[23:20]));
  FDRE \cnt_p_reg[21] 
       (.C(CLK_50M),
        .CE(1'b1),
        .D(\cnt_p_reg[20]_i_1_n_6 ),
        .Q(cnt_p_reg[21]),
        .R(cnt_p0_carry__1_n_1));
  FDRE \cnt_p_reg[22] 
       (.C(CLK_50M),
        .CE(1'b1),
        .D(\cnt_p_reg[20]_i_1_n_5 ),
        .Q(cnt_p_reg[22]),
        .R(cnt_p0_carry__1_n_1));
  FDRE \cnt_p_reg[23] 
       (.C(CLK_50M),
        .CE(1'b1),
        .D(\cnt_p_reg[20]_i_1_n_4 ),
        .Q(cnt_p_reg[23]),
        .R(cnt_p0_carry__1_n_1));
  FDRE \cnt_p_reg[24] 
       (.C(CLK_50M),
        .CE(1'b1),
        .D(\cnt_p_reg[24]_i_1_n_7 ),
        .Q(cnt_p_reg[24]),
        .R(cnt_p0_carry__1_n_1));
  CARRY4 \cnt_p_reg[24]_i_1 
       (.CI(\cnt_p_reg[20]_i_1_n_0 ),
        .CO({\cnt_p_reg[24]_i_1_n_0 ,\cnt_p_reg[24]_i_1_n_1 ,\cnt_p_reg[24]_i_1_n_2 ,\cnt_p_reg[24]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\cnt_p_reg[24]_i_1_n_4 ,\cnt_p_reg[24]_i_1_n_5 ,\cnt_p_reg[24]_i_1_n_6 ,\cnt_p_reg[24]_i_1_n_7 }),
        .S(cnt_p_reg[27:24]));
  FDRE \cnt_p_reg[25] 
       (.C(CLK_50M),
        .CE(1'b1),
        .D(\cnt_p_reg[24]_i_1_n_6 ),
        .Q(cnt_p_reg[25]),
        .R(cnt_p0_carry__1_n_1));
  FDRE \cnt_p_reg[26] 
       (.C(CLK_50M),
        .CE(1'b1),
        .D(\cnt_p_reg[24]_i_1_n_5 ),
        .Q(cnt_p_reg[26]),
        .R(cnt_p0_carry__1_n_1));
  FDRE \cnt_p_reg[27] 
       (.C(CLK_50M),
        .CE(1'b1),
        .D(\cnt_p_reg[24]_i_1_n_4 ),
        .Q(cnt_p_reg[27]),
        .R(cnt_p0_carry__1_n_1));
  FDRE \cnt_p_reg[28] 
       (.C(CLK_50M),
        .CE(1'b1),
        .D(\cnt_p_reg[28]_i_1_n_7 ),
        .Q(cnt_p_reg[28]),
        .R(cnt_p0_carry__1_n_1));
  CARRY4 \cnt_p_reg[28]_i_1 
       (.CI(\cnt_p_reg[24]_i_1_n_0 ),
        .CO({\NLW_cnt_p_reg[28]_i_1_CO_UNCONNECTED [3],\cnt_p_reg[28]_i_1_n_1 ,\cnt_p_reg[28]_i_1_n_2 ,\cnt_p_reg[28]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\cnt_p_reg[28]_i_1_n_4 ,\cnt_p_reg[28]_i_1_n_5 ,\cnt_p_reg[28]_i_1_n_6 ,\cnt_p_reg[28]_i_1_n_7 }),
        .S(cnt_p_reg[31:28]));
  FDRE \cnt_p_reg[29] 
       (.C(CLK_50M),
        .CE(1'b1),
        .D(\cnt_p_reg[28]_i_1_n_6 ),
        .Q(cnt_p_reg[29]),
        .R(cnt_p0_carry__1_n_1));
  FDRE \cnt_p_reg[2] 
       (.C(CLK_50M),
        .CE(1'b1),
        .D(\cnt_p_reg[0]_i_1_n_5 ),
        .Q(cnt_p_reg[2]),
        .R(cnt_p0_carry__1_n_1));
  FDRE \cnt_p_reg[30] 
       (.C(CLK_50M),
        .CE(1'b1),
        .D(\cnt_p_reg[28]_i_1_n_5 ),
        .Q(cnt_p_reg[30]),
        .R(cnt_p0_carry__1_n_1));
  FDRE \cnt_p_reg[31] 
       (.C(CLK_50M),
        .CE(1'b1),
        .D(\cnt_p_reg[28]_i_1_n_4 ),
        .Q(cnt_p_reg[31]),
        .R(cnt_p0_carry__1_n_1));
  FDRE \cnt_p_reg[3] 
       (.C(CLK_50M),
        .CE(1'b1),
        .D(\cnt_p_reg[0]_i_1_n_4 ),
        .Q(cnt_p_reg[3]),
        .R(cnt_p0_carry__1_n_1));
  FDRE \cnt_p_reg[4] 
       (.C(CLK_50M),
        .CE(1'b1),
        .D(\cnt_p_reg[4]_i_1_n_7 ),
        .Q(cnt_p_reg[4]),
        .R(cnt_p0_carry__1_n_1));
  CARRY4 \cnt_p_reg[4]_i_1 
       (.CI(\cnt_p_reg[0]_i_1_n_0 ),
        .CO({\cnt_p_reg[4]_i_1_n_0 ,\cnt_p_reg[4]_i_1_n_1 ,\cnt_p_reg[4]_i_1_n_2 ,\cnt_p_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\cnt_p_reg[4]_i_1_n_4 ,\cnt_p_reg[4]_i_1_n_5 ,\cnt_p_reg[4]_i_1_n_6 ,\cnt_p_reg[4]_i_1_n_7 }),
        .S(cnt_p_reg[7:4]));
  FDRE \cnt_p_reg[5] 
       (.C(CLK_50M),
        .CE(1'b1),
        .D(\cnt_p_reg[4]_i_1_n_6 ),
        .Q(cnt_p_reg[5]),
        .R(cnt_p0_carry__1_n_1));
  FDRE \cnt_p_reg[6] 
       (.C(CLK_50M),
        .CE(1'b1),
        .D(\cnt_p_reg[4]_i_1_n_5 ),
        .Q(cnt_p_reg[6]),
        .R(cnt_p0_carry__1_n_1));
  FDRE \cnt_p_reg[7] 
       (.C(CLK_50M),
        .CE(1'b1),
        .D(\cnt_p_reg[4]_i_1_n_4 ),
        .Q(cnt_p_reg[7]),
        .R(cnt_p0_carry__1_n_1));
  FDRE \cnt_p_reg[8] 
       (.C(CLK_50M),
        .CE(1'b1),
        .D(\cnt_p_reg[8]_i_1_n_7 ),
        .Q(cnt_p_reg[8]),
        .R(cnt_p0_carry__1_n_1));
  CARRY4 \cnt_p_reg[8]_i_1 
       (.CI(\cnt_p_reg[4]_i_1_n_0 ),
        .CO({\cnt_p_reg[8]_i_1_n_0 ,\cnt_p_reg[8]_i_1_n_1 ,\cnt_p_reg[8]_i_1_n_2 ,\cnt_p_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\cnt_p_reg[8]_i_1_n_4 ,\cnt_p_reg[8]_i_1_n_5 ,\cnt_p_reg[8]_i_1_n_6 ,\cnt_p_reg[8]_i_1_n_7 }),
        .S(cnt_p_reg[11:8]));
  FDRE \cnt_p_reg[9] 
       (.C(CLK_50M),
        .CE(1'b1),
        .D(\cnt_p_reg[8]_i_1_n_6 ),
        .Q(cnt_p_reg[9]),
        .R(cnt_p0_carry__1_n_1));
endmodule

(* CHECK_LICENSE_TYPE = "design_1_ads8688_0_0,ads8688,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "package_project" *) 
(* X_CORE_INFO = "ads8688,Vivado 2018.3" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (rst_n,
    CLK_50M,
    SDO,
    dataAddr,
    CS,
    SCLK,
    SDI,
    RST,
    outRMS);
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 rst_n RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME rst_n, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input rst_n;
  input CLK_50M;
  input SDO;
  input [1:0]dataAddr;
  output CS;
  output SCLK;
  output SDI;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) output RST;
  output [15:0]outRMS;

  wire CLK_50M;
  wire CS;
  wire RST;
  wire SCLK;
  wire SDI;
  wire SDO;
  wire [1:0]dataAddr;
  wire [15:0]outRMS;
  wire rst_n;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ads8688 inst
       (.CLK_50M(CLK_50M),
        .CS(CS),
        .RST(RST),
        .SCLK(SCLK),
        .SDI(SDI),
        .SDO(SDO),
        .dataAddr(dataAddr),
        .outRMS(outRMS),
        .rst_n(rst_n));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
