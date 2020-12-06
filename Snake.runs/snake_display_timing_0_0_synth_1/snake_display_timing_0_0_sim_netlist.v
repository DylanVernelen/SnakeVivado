// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.1 (win64) Build 2188600 Wed Apr  4 18:40:38 MDT 2018
// Date        : Sun Dec  6 18:26:43 2020
// Host        : LAPTOP-7IRJGVEJ running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ snake_display_timing_0_0_sim_netlist.v
// Design      : snake_display_timing_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_display_timing
   (x,
    y,
    hs,
    de,
    vs,
    pclk);
  output [15:0]x;
  output [15:0]y;
  output hs;
  output de;
  output vs;
  input pclk;

  wire [15:1]data0;
  wire de;
  wire de_INST_0_i_1_n_0;
  wire de_INST_0_i_2_n_0;
  wire de_INST_0_i_3_n_0;
  wire hs;
  wire hs_INST_0_i_1_n_0;
  wire hs_INST_0_i_2_n_0;
  wire hs_INST_0_i_3_n_0;
  wire hs_INST_0_i_4_n_0;
  wire pclk;
  wire vs;
  wire vs_INST_0_i_1_n_0;
  wire vs_INST_0_i_2_n_0;
  wire vs_INST_0_i_3_n_0;
  wire vs_INST_0_i_4_n_0;
  wire [15:0]x;
  wire \x[15]_i_3_n_0 ;
  wire \x[15]_i_4_n_0 ;
  wire \x[15]_i_5_n_0 ;
  wire [0:0]x_1;
  wire \x_reg[12]_i_1_n_0 ;
  wire \x_reg[12]_i_1_n_1 ;
  wire \x_reg[12]_i_1_n_2 ;
  wire \x_reg[12]_i_1_n_3 ;
  wire \x_reg[15]_i_2_n_2 ;
  wire \x_reg[15]_i_2_n_3 ;
  wire \x_reg[4]_i_1_n_0 ;
  wire \x_reg[4]_i_1_n_1 ;
  wire \x_reg[4]_i_1_n_2 ;
  wire \x_reg[4]_i_1_n_3 ;
  wire \x_reg[8]_i_1_n_0 ;
  wire \x_reg[8]_i_1_n_1 ;
  wire \x_reg[8]_i_1_n_2 ;
  wire \x_reg[8]_i_1_n_3 ;
  wire [15:0]y;
  wire \y[0]_i_1_n_0 ;
  wire \y[15]_i_1_n_0 ;
  wire \y[15]_i_3_n_0 ;
  wire \y[15]_i_4_n_0 ;
  wire y_0;
  wire \y_reg[12]_i_1_n_0 ;
  wire \y_reg[12]_i_1_n_1 ;
  wire \y_reg[12]_i_1_n_2 ;
  wire \y_reg[12]_i_1_n_3 ;
  wire \y_reg[12]_i_1_n_4 ;
  wire \y_reg[12]_i_1_n_5 ;
  wire \y_reg[12]_i_1_n_6 ;
  wire \y_reg[12]_i_1_n_7 ;
  wire \y_reg[15]_i_2_n_2 ;
  wire \y_reg[15]_i_2_n_3 ;
  wire \y_reg[15]_i_2_n_5 ;
  wire \y_reg[15]_i_2_n_6 ;
  wire \y_reg[15]_i_2_n_7 ;
  wire \y_reg[4]_i_1_n_0 ;
  wire \y_reg[4]_i_1_n_1 ;
  wire \y_reg[4]_i_1_n_2 ;
  wire \y_reg[4]_i_1_n_3 ;
  wire \y_reg[4]_i_1_n_4 ;
  wire \y_reg[4]_i_1_n_5 ;
  wire \y_reg[4]_i_1_n_6 ;
  wire \y_reg[4]_i_1_n_7 ;
  wire \y_reg[8]_i_1_n_0 ;
  wire \y_reg[8]_i_1_n_1 ;
  wire \y_reg[8]_i_1_n_2 ;
  wire \y_reg[8]_i_1_n_3 ;
  wire \y_reg[8]_i_1_n_4 ;
  wire \y_reg[8]_i_1_n_5 ;
  wire \y_reg[8]_i_1_n_6 ;
  wire \y_reg[8]_i_1_n_7 ;
  wire [3:2]\NLW_x_reg[15]_i_2_CO_UNCONNECTED ;
  wire [3:3]\NLW_x_reg[15]_i_2_O_UNCONNECTED ;
  wire [3:2]\NLW_y_reg[15]_i_2_CO_UNCONNECTED ;
  wire [3:3]\NLW_y_reg[15]_i_2_O_UNCONNECTED ;

  LUT5 #(
    .INIT(32'h88880008)) 
    de_INST_0
       (.I0(de_INST_0_i_1_n_0),
        .I1(de_INST_0_i_2_n_0),
        .I2(y[4]),
        .I3(y[5]),
        .I4(de_INST_0_i_3_n_0),
        .O(de));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h2A)) 
    de_INST_0_i_1
       (.I0(vs_INST_0_i_2_n_0),
        .I1(y[9]),
        .I2(y[8]),
        .O(de_INST_0_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h00000057)) 
    de_INST_0_i_2
       (.I0(x[10]),
        .I1(x[8]),
        .I2(x[9]),
        .I3(x[11]),
        .I4(hs_INST_0_i_2_n_0),
        .O(de_INST_0_i_2_n_0));
  LUT3 #(
    .INIT(8'h7F)) 
    de_INST_0_i_3
       (.I0(y[6]),
        .I1(y[7]),
        .I2(y[9]),
        .O(de_INST_0_i_3_n_0));
  LUT5 #(
    .INIT(32'h03020002)) 
    hs_INST_0
       (.I0(hs_INST_0_i_1_n_0),
        .I1(hs_INST_0_i_2_n_0),
        .I2(hs_INST_0_i_3_n_0),
        .I3(x[7]),
        .I4(hs_INST_0_i_4_n_0),
        .O(hs));
  LUT6 #(
    .INIT(64'h8888888880000000)) 
    hs_INST_0_i_1
       (.I0(x[5]),
        .I1(x[6]),
        .I2(x[2]),
        .I3(x[1]),
        .I4(x[3]),
        .I5(x[4]),
        .O(hs_INST_0_i_1_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    hs_INST_0_i_2
       (.I0(x[14]),
        .I1(x[15]),
        .I2(x[13]),
        .I3(x[12]),
        .O(hs_INST_0_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'hFFF7)) 
    hs_INST_0_i_3
       (.I0(x[8]),
        .I1(x[10]),
        .I2(x[11]),
        .I3(x[9]),
        .O(hs_INST_0_i_3_n_0));
  LUT6 #(
    .INIT(64'h0000000000005777)) 
    hs_INST_0_i_4
       (.I0(x[4]),
        .I1(x[3]),
        .I2(x[2]),
        .I3(x[1]),
        .I4(x[5]),
        .I5(x[6]),
        .O(hs_INST_0_i_4_n_0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h07000000)) 
    vs_INST_0
       (.I0(y[8]),
        .I1(y[9]),
        .I2(vs_INST_0_i_1_n_0),
        .I3(vs_INST_0_i_2_n_0),
        .I4(vs_INST_0_i_3_n_0),
        .O(vs));
  LUT6 #(
    .INIT(64'hFFFFFFFFEAEAEAAA)) 
    vs_INST_0_i_1
       (.I0(de_INST_0_i_3_n_0),
        .I1(y[3]),
        .I2(y[4]),
        .I3(y[1]),
        .I4(y[2]),
        .I5(y[5]),
        .O(vs_INST_0_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    vs_INST_0_i_2
       (.I0(y[12]),
        .I1(y[13]),
        .I2(y[10]),
        .I3(y[11]),
        .I4(y[14]),
        .I5(y[15]),
        .O(vs_INST_0_i_2_n_0));
  LUT5 #(
    .INIT(32'hFFFF8880)) 
    vs_INST_0_i_3
       (.I0(y[4]),
        .I1(y[2]),
        .I2(y[0]),
        .I3(y[1]),
        .I4(vs_INST_0_i_4_n_0),
        .O(vs_INST_0_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'hFEEE)) 
    vs_INST_0_i_4
       (.I0(y[5]),
        .I1(y[8]),
        .I2(y[3]),
        .I3(y[4]),
        .O(vs_INST_0_i_4_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    \x[0]_i_1 
       (.I0(x[0]),
        .O(x_1));
  LUT6 #(
    .INIT(64'h0000000000002000)) 
    \x[15]_i_1 
       (.I0(\x[15]_i_3_n_0 ),
        .I1(x[1]),
        .I2(x[0]),
        .I3(\x[15]_i_4_n_0 ),
        .I4(\x[15]_i_5_n_0 ),
        .I5(hs_INST_0_i_2_n_0),
        .O(y_0));
  LUT2 #(
    .INIT(4'h8)) 
    \x[15]_i_3 
       (.I0(x[6]),
        .I1(x[5]),
        .O(\x[15]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h0040)) 
    \x[15]_i_4 
       (.I0(x[8]),
        .I1(x[9]),
        .I2(x[4]),
        .I3(x[11]),
        .O(\x[15]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hFFEF)) 
    \x[15]_i_5 
       (.I0(x[3]),
        .I1(x[2]),
        .I2(x[10]),
        .I3(x[7]),
        .O(\x[15]_i_5_n_0 ));
  FDRE \x_reg[0] 
       (.C(pclk),
        .CE(1'b1),
        .D(x_1),
        .Q(x[0]),
        .R(1'b0));
  FDRE \x_reg[10] 
       (.C(pclk),
        .CE(1'b1),
        .D(data0[10]),
        .Q(x[10]),
        .R(y_0));
  FDRE \x_reg[11] 
       (.C(pclk),
        .CE(1'b1),
        .D(data0[11]),
        .Q(x[11]),
        .R(y_0));
  FDRE \x_reg[12] 
       (.C(pclk),
        .CE(1'b1),
        .D(data0[12]),
        .Q(x[12]),
        .R(y_0));
  CARRY4 \x_reg[12]_i_1 
       (.CI(\x_reg[8]_i_1_n_0 ),
        .CO({\x_reg[12]_i_1_n_0 ,\x_reg[12]_i_1_n_1 ,\x_reg[12]_i_1_n_2 ,\x_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[12:9]),
        .S(x[12:9]));
  FDRE \x_reg[13] 
       (.C(pclk),
        .CE(1'b1),
        .D(data0[13]),
        .Q(x[13]),
        .R(y_0));
  FDRE \x_reg[14] 
       (.C(pclk),
        .CE(1'b1),
        .D(data0[14]),
        .Q(x[14]),
        .R(y_0));
  FDRE \x_reg[15] 
       (.C(pclk),
        .CE(1'b1),
        .D(data0[15]),
        .Q(x[15]),
        .R(y_0));
  CARRY4 \x_reg[15]_i_2 
       (.CI(\x_reg[12]_i_1_n_0 ),
        .CO({\NLW_x_reg[15]_i_2_CO_UNCONNECTED [3:2],\x_reg[15]_i_2_n_2 ,\x_reg[15]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_x_reg[15]_i_2_O_UNCONNECTED [3],data0[15:13]}),
        .S({1'b0,x[15:13]}));
  FDRE \x_reg[1] 
       (.C(pclk),
        .CE(1'b1),
        .D(data0[1]),
        .Q(x[1]),
        .R(y_0));
  FDRE \x_reg[2] 
       (.C(pclk),
        .CE(1'b1),
        .D(data0[2]),
        .Q(x[2]),
        .R(y_0));
  FDRE \x_reg[3] 
       (.C(pclk),
        .CE(1'b1),
        .D(data0[3]),
        .Q(x[3]),
        .R(y_0));
  FDRE \x_reg[4] 
       (.C(pclk),
        .CE(1'b1),
        .D(data0[4]),
        .Q(x[4]),
        .R(y_0));
  CARRY4 \x_reg[4]_i_1 
       (.CI(1'b0),
        .CO({\x_reg[4]_i_1_n_0 ,\x_reg[4]_i_1_n_1 ,\x_reg[4]_i_1_n_2 ,\x_reg[4]_i_1_n_3 }),
        .CYINIT(x[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[4:1]),
        .S(x[4:1]));
  FDRE \x_reg[5] 
       (.C(pclk),
        .CE(1'b1),
        .D(data0[5]),
        .Q(x[5]),
        .R(y_0));
  FDRE \x_reg[6] 
       (.C(pclk),
        .CE(1'b1),
        .D(data0[6]),
        .Q(x[6]),
        .R(y_0));
  FDRE \x_reg[7] 
       (.C(pclk),
        .CE(1'b1),
        .D(data0[7]),
        .Q(x[7]),
        .R(y_0));
  FDRE \x_reg[8] 
       (.C(pclk),
        .CE(1'b1),
        .D(data0[8]),
        .Q(x[8]),
        .R(y_0));
  CARRY4 \x_reg[8]_i_1 
       (.CI(\x_reg[4]_i_1_n_0 ),
        .CO({\x_reg[8]_i_1_n_0 ,\x_reg[8]_i_1_n_1 ,\x_reg[8]_i_1_n_2 ,\x_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[8:5]),
        .S(x[8:5]));
  FDRE \x_reg[9] 
       (.C(pclk),
        .CE(1'b1),
        .D(data0[9]),
        .Q(x[9]),
        .R(y_0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \y[0]_i_1 
       (.I0(y_0),
        .I1(y[0]),
        .O(\y[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0080000000000000)) 
    \y[15]_i_1 
       (.I0(y[9]),
        .I1(y[7]),
        .I2(y[6]),
        .I3(\y[15]_i_3_n_0 ),
        .I4(vs_INST_0_i_2_n_0),
        .I5(y_0),
        .O(\y[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'hFFF7)) 
    \y[15]_i_3 
       (.I0(y[5]),
        .I1(y[3]),
        .I2(y[4]),
        .I3(\y[15]_i_4_n_0 ),
        .O(\y[15]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'hFFDF)) 
    \y[15]_i_4 
       (.I0(y[0]),
        .I1(y[1]),
        .I2(y[2]),
        .I3(y[8]),
        .O(\y[15]_i_4_n_0 ));
  FDRE \y_reg[0] 
       (.C(pclk),
        .CE(1'b1),
        .D(\y[0]_i_1_n_0 ),
        .Q(y[0]),
        .R(1'b0));
  FDRE \y_reg[10] 
       (.C(pclk),
        .CE(y_0),
        .D(\y_reg[12]_i_1_n_6 ),
        .Q(y[10]),
        .R(\y[15]_i_1_n_0 ));
  FDRE \y_reg[11] 
       (.C(pclk),
        .CE(y_0),
        .D(\y_reg[12]_i_1_n_5 ),
        .Q(y[11]),
        .R(\y[15]_i_1_n_0 ));
  FDRE \y_reg[12] 
       (.C(pclk),
        .CE(y_0),
        .D(\y_reg[12]_i_1_n_4 ),
        .Q(y[12]),
        .R(\y[15]_i_1_n_0 ));
  CARRY4 \y_reg[12]_i_1 
       (.CI(\y_reg[8]_i_1_n_0 ),
        .CO({\y_reg[12]_i_1_n_0 ,\y_reg[12]_i_1_n_1 ,\y_reg[12]_i_1_n_2 ,\y_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\y_reg[12]_i_1_n_4 ,\y_reg[12]_i_1_n_5 ,\y_reg[12]_i_1_n_6 ,\y_reg[12]_i_1_n_7 }),
        .S(y[12:9]));
  FDRE \y_reg[13] 
       (.C(pclk),
        .CE(y_0),
        .D(\y_reg[15]_i_2_n_7 ),
        .Q(y[13]),
        .R(\y[15]_i_1_n_0 ));
  FDRE \y_reg[14] 
       (.C(pclk),
        .CE(y_0),
        .D(\y_reg[15]_i_2_n_6 ),
        .Q(y[14]),
        .R(\y[15]_i_1_n_0 ));
  FDRE \y_reg[15] 
       (.C(pclk),
        .CE(y_0),
        .D(\y_reg[15]_i_2_n_5 ),
        .Q(y[15]),
        .R(\y[15]_i_1_n_0 ));
  CARRY4 \y_reg[15]_i_2 
       (.CI(\y_reg[12]_i_1_n_0 ),
        .CO({\NLW_y_reg[15]_i_2_CO_UNCONNECTED [3:2],\y_reg[15]_i_2_n_2 ,\y_reg[15]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_y_reg[15]_i_2_O_UNCONNECTED [3],\y_reg[15]_i_2_n_5 ,\y_reg[15]_i_2_n_6 ,\y_reg[15]_i_2_n_7 }),
        .S({1'b0,y[15:13]}));
  FDRE \y_reg[1] 
       (.C(pclk),
        .CE(y_0),
        .D(\y_reg[4]_i_1_n_7 ),
        .Q(y[1]),
        .R(\y[15]_i_1_n_0 ));
  FDRE \y_reg[2] 
       (.C(pclk),
        .CE(y_0),
        .D(\y_reg[4]_i_1_n_6 ),
        .Q(y[2]),
        .R(\y[15]_i_1_n_0 ));
  FDRE \y_reg[3] 
       (.C(pclk),
        .CE(y_0),
        .D(\y_reg[4]_i_1_n_5 ),
        .Q(y[3]),
        .R(\y[15]_i_1_n_0 ));
  FDRE \y_reg[4] 
       (.C(pclk),
        .CE(y_0),
        .D(\y_reg[4]_i_1_n_4 ),
        .Q(y[4]),
        .R(\y[15]_i_1_n_0 ));
  CARRY4 \y_reg[4]_i_1 
       (.CI(1'b0),
        .CO({\y_reg[4]_i_1_n_0 ,\y_reg[4]_i_1_n_1 ,\y_reg[4]_i_1_n_2 ,\y_reg[4]_i_1_n_3 }),
        .CYINIT(y[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\y_reg[4]_i_1_n_4 ,\y_reg[4]_i_1_n_5 ,\y_reg[4]_i_1_n_6 ,\y_reg[4]_i_1_n_7 }),
        .S(y[4:1]));
  FDRE \y_reg[5] 
       (.C(pclk),
        .CE(y_0),
        .D(\y_reg[8]_i_1_n_7 ),
        .Q(y[5]),
        .R(\y[15]_i_1_n_0 ));
  FDRE \y_reg[6] 
       (.C(pclk),
        .CE(y_0),
        .D(\y_reg[8]_i_1_n_6 ),
        .Q(y[6]),
        .R(\y[15]_i_1_n_0 ));
  FDRE \y_reg[7] 
       (.C(pclk),
        .CE(y_0),
        .D(\y_reg[8]_i_1_n_5 ),
        .Q(y[7]),
        .R(\y[15]_i_1_n_0 ));
  FDRE \y_reg[8] 
       (.C(pclk),
        .CE(y_0),
        .D(\y_reg[8]_i_1_n_4 ),
        .Q(y[8]),
        .R(\y[15]_i_1_n_0 ));
  CARRY4 \y_reg[8]_i_1 
       (.CI(\y_reg[4]_i_1_n_0 ),
        .CO({\y_reg[8]_i_1_n_0 ,\y_reg[8]_i_1_n_1 ,\y_reg[8]_i_1_n_2 ,\y_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\y_reg[8]_i_1_n_4 ,\y_reg[8]_i_1_n_5 ,\y_reg[8]_i_1_n_6 ,\y_reg[8]_i_1_n_7 }),
        .S(y[8:5]));
  FDRE \y_reg[9] 
       (.C(pclk),
        .CE(y_0),
        .D(\y_reg[12]_i_1_n_7 ),
        .Q(y[9]),
        .R(\y[15]_i_1_n_0 ));
endmodule

(* CHECK_LICENSE_TYPE = "snake_display_timing_0_0,display_timing,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "display_timing,Vivado 2018.1" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (pclk,
    vs,
    hs,
    de,
    x,
    y);
  input pclk;
  output vs;
  output hs;
  output de;
  output [15:0]x;
  output [15:0]y;

  wire de;
  wire hs;
  wire pclk;
  wire vs;
  wire [15:0]x;
  wire [15:0]y;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_display_timing inst
       (.de(de),
        .hs(hs),
        .pclk(pclk),
        .vs(vs),
        .x(x),
        .y(y));
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
