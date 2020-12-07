// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.1 (win64) Build 2188600 Wed Apr  4 18:40:38 MDT 2018
// Date        : Mon Dec  7 17:09:23 2020
// Host        : LAPTOP-7IRJGVEJ running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ snake_SNES_0_0_sim_netlist.v
// Design      : snake_SNES_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_SNES
   (snesClock,
    snesLatch,
    buttons,
    sysclk,
    reset,
    snesData);
  output snesClock;
  output snesLatch;
  output [15:0]buttons;
  input sysclk;
  input reset;
  input snesData;

  wire [15:0]buttons;
  wire clkdiv;
  wire reset;
  wire snesClock;
  wire snesData;
  wire snesInput_n_0;
  wire snesLatch;
  wire startPulse;
  wire sysclk;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_SNES_clock_divider snesClkDiv
       (.D(snesInput_n_0),
        .clkdiv(clkdiv),
        .reset(reset),
        .snesClock(snesClock),
        .startPulse(startPulse),
        .sysclk(sysclk));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_SNES_input snesInput
       (.D({snesInput_n_0,snesLatch}),
        .buttons(buttons),
        .clkdiv(clkdiv),
        .reset(reset),
        .snesData(snesData),
        .startPulse(startPulse),
        .sysclk(sysclk));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_SNES_clock_divider
   (startPulse,
    clkdiv,
    snesClock,
    sysclk,
    D,
    reset);
  output startPulse;
  output clkdiv;
  output snesClock;
  input sysclk;
  input [0:0]D;
  input reset;

  wire [0:0]D;
  wire clear;
  wire clkdiv;
  wire clock830_carry__0_i_1_n_0;
  wire clock830_carry__0_i_2_n_0;
  wire clock830_carry__0_i_3_n_0;
  wire clock830_carry__0_i_4_n_0;
  wire clock830_carry__0_i_5_n_0;
  wire clock830_carry__0_i_6_n_0;
  wire clock830_carry__0_i_7_n_0;
  wire clock830_carry__0_i_8_n_0;
  wire clock830_carry__0_n_0;
  wire clock830_carry__0_n_1;
  wire clock830_carry__0_n_2;
  wire clock830_carry__0_n_3;
  wire clock830_carry__1_i_1_n_0;
  wire clock830_carry__1_i_2_n_0;
  wire clock830_carry__1_i_3_n_0;
  wire clock830_carry__1_i_4_n_0;
  wire clock830_carry__1_i_5_n_0;
  wire clock830_carry__1_i_6_n_0;
  wire clock830_carry__1_i_7_n_0;
  wire clock830_carry__1_i_8_n_0;
  wire clock830_carry__1_n_0;
  wire clock830_carry__1_n_1;
  wire clock830_carry__1_n_2;
  wire clock830_carry__1_n_3;
  wire clock830_carry__2_i_1_n_0;
  wire clock830_carry__2_i_2_n_0;
  wire clock830_carry__2_i_3_n_0;
  wire clock830_carry__2_i_4_n_0;
  wire clock830_carry__2_i_5_n_0;
  wire clock830_carry__2_i_6_n_0;
  wire clock830_carry__2_i_7_n_0;
  wire clock830_carry__2_i_8_n_0;
  wire clock830_carry__2_n_0;
  wire clock830_carry__2_n_1;
  wire clock830_carry__2_n_2;
  wire clock830_carry__2_n_3;
  wire clock830_carry_i_1_n_0;
  wire clock830_carry_i_2_n_0;
  wire clock830_carry_i_3_n_0;
  wire clock830_carry_i_4_n_0;
  wire clock830_carry_i_5_n_0;
  wire clock830_carry_i_6_n_0;
  wire clock830_carry_n_0;
  wire clock830_carry_n_1;
  wire clock830_carry_n_2;
  wire clock830_carry_n_3;
  wire clock83_i_1_n_0;
  wire \counterClock83[0]_i_2_n_0 ;
  wire [31:0]counterClock83_reg;
  wire \counterClock83_reg[0]_i_1_n_0 ;
  wire \counterClock83_reg[0]_i_1_n_1 ;
  wire \counterClock83_reg[0]_i_1_n_2 ;
  wire \counterClock83_reg[0]_i_1_n_3 ;
  wire \counterClock83_reg[0]_i_1_n_4 ;
  wire \counterClock83_reg[0]_i_1_n_5 ;
  wire \counterClock83_reg[0]_i_1_n_6 ;
  wire \counterClock83_reg[0]_i_1_n_7 ;
  wire \counterClock83_reg[12]_i_1_n_0 ;
  wire \counterClock83_reg[12]_i_1_n_1 ;
  wire \counterClock83_reg[12]_i_1_n_2 ;
  wire \counterClock83_reg[12]_i_1_n_3 ;
  wire \counterClock83_reg[12]_i_1_n_4 ;
  wire \counterClock83_reg[12]_i_1_n_5 ;
  wire \counterClock83_reg[12]_i_1_n_6 ;
  wire \counterClock83_reg[12]_i_1_n_7 ;
  wire \counterClock83_reg[16]_i_1_n_0 ;
  wire \counterClock83_reg[16]_i_1_n_1 ;
  wire \counterClock83_reg[16]_i_1_n_2 ;
  wire \counterClock83_reg[16]_i_1_n_3 ;
  wire \counterClock83_reg[16]_i_1_n_4 ;
  wire \counterClock83_reg[16]_i_1_n_5 ;
  wire \counterClock83_reg[16]_i_1_n_6 ;
  wire \counterClock83_reg[16]_i_1_n_7 ;
  wire \counterClock83_reg[20]_i_1_n_0 ;
  wire \counterClock83_reg[20]_i_1_n_1 ;
  wire \counterClock83_reg[20]_i_1_n_2 ;
  wire \counterClock83_reg[20]_i_1_n_3 ;
  wire \counterClock83_reg[20]_i_1_n_4 ;
  wire \counterClock83_reg[20]_i_1_n_5 ;
  wire \counterClock83_reg[20]_i_1_n_6 ;
  wire \counterClock83_reg[20]_i_1_n_7 ;
  wire \counterClock83_reg[24]_i_1_n_0 ;
  wire \counterClock83_reg[24]_i_1_n_1 ;
  wire \counterClock83_reg[24]_i_1_n_2 ;
  wire \counterClock83_reg[24]_i_1_n_3 ;
  wire \counterClock83_reg[24]_i_1_n_4 ;
  wire \counterClock83_reg[24]_i_1_n_5 ;
  wire \counterClock83_reg[24]_i_1_n_6 ;
  wire \counterClock83_reg[24]_i_1_n_7 ;
  wire \counterClock83_reg[28]_i_1_n_1 ;
  wire \counterClock83_reg[28]_i_1_n_2 ;
  wire \counterClock83_reg[28]_i_1_n_3 ;
  wire \counterClock83_reg[28]_i_1_n_4 ;
  wire \counterClock83_reg[28]_i_1_n_5 ;
  wire \counterClock83_reg[28]_i_1_n_6 ;
  wire \counterClock83_reg[28]_i_1_n_7 ;
  wire \counterClock83_reg[4]_i_1_n_0 ;
  wire \counterClock83_reg[4]_i_1_n_1 ;
  wire \counterClock83_reg[4]_i_1_n_2 ;
  wire \counterClock83_reg[4]_i_1_n_3 ;
  wire \counterClock83_reg[4]_i_1_n_4 ;
  wire \counterClock83_reg[4]_i_1_n_5 ;
  wire \counterClock83_reg[4]_i_1_n_6 ;
  wire \counterClock83_reg[4]_i_1_n_7 ;
  wire \counterClock83_reg[8]_i_1_n_0 ;
  wire \counterClock83_reg[8]_i_1_n_1 ;
  wire \counterClock83_reg[8]_i_1_n_2 ;
  wire \counterClock83_reg[8]_i_1_n_3 ;
  wire \counterClock83_reg[8]_i_1_n_4 ;
  wire \counterClock83_reg[8]_i_1_n_5 ;
  wire \counterClock83_reg[8]_i_1_n_6 ;
  wire \counterClock83_reg[8]_i_1_n_7 ;
  wire \counterPulse[0]_i_2_n_0 ;
  wire [31:0]counterPulse_reg;
  wire \counterPulse_reg[0]_i_1_n_0 ;
  wire \counterPulse_reg[0]_i_1_n_1 ;
  wire \counterPulse_reg[0]_i_1_n_2 ;
  wire \counterPulse_reg[0]_i_1_n_3 ;
  wire \counterPulse_reg[0]_i_1_n_4 ;
  wire \counterPulse_reg[0]_i_1_n_5 ;
  wire \counterPulse_reg[0]_i_1_n_6 ;
  wire \counterPulse_reg[0]_i_1_n_7 ;
  wire \counterPulse_reg[12]_i_1_n_0 ;
  wire \counterPulse_reg[12]_i_1_n_1 ;
  wire \counterPulse_reg[12]_i_1_n_2 ;
  wire \counterPulse_reg[12]_i_1_n_3 ;
  wire \counterPulse_reg[12]_i_1_n_4 ;
  wire \counterPulse_reg[12]_i_1_n_5 ;
  wire \counterPulse_reg[12]_i_1_n_6 ;
  wire \counterPulse_reg[12]_i_1_n_7 ;
  wire \counterPulse_reg[16]_i_1_n_0 ;
  wire \counterPulse_reg[16]_i_1_n_1 ;
  wire \counterPulse_reg[16]_i_1_n_2 ;
  wire \counterPulse_reg[16]_i_1_n_3 ;
  wire \counterPulse_reg[16]_i_1_n_4 ;
  wire \counterPulse_reg[16]_i_1_n_5 ;
  wire \counterPulse_reg[16]_i_1_n_6 ;
  wire \counterPulse_reg[16]_i_1_n_7 ;
  wire \counterPulse_reg[20]_i_1_n_0 ;
  wire \counterPulse_reg[20]_i_1_n_1 ;
  wire \counterPulse_reg[20]_i_1_n_2 ;
  wire \counterPulse_reg[20]_i_1_n_3 ;
  wire \counterPulse_reg[20]_i_1_n_4 ;
  wire \counterPulse_reg[20]_i_1_n_5 ;
  wire \counterPulse_reg[20]_i_1_n_6 ;
  wire \counterPulse_reg[20]_i_1_n_7 ;
  wire \counterPulse_reg[24]_i_1_n_0 ;
  wire \counterPulse_reg[24]_i_1_n_1 ;
  wire \counterPulse_reg[24]_i_1_n_2 ;
  wire \counterPulse_reg[24]_i_1_n_3 ;
  wire \counterPulse_reg[24]_i_1_n_4 ;
  wire \counterPulse_reg[24]_i_1_n_5 ;
  wire \counterPulse_reg[24]_i_1_n_6 ;
  wire \counterPulse_reg[24]_i_1_n_7 ;
  wire \counterPulse_reg[28]_i_1_n_1 ;
  wire \counterPulse_reg[28]_i_1_n_2 ;
  wire \counterPulse_reg[28]_i_1_n_3 ;
  wire \counterPulse_reg[28]_i_1_n_4 ;
  wire \counterPulse_reg[28]_i_1_n_5 ;
  wire \counterPulse_reg[28]_i_1_n_6 ;
  wire \counterPulse_reg[28]_i_1_n_7 ;
  wire \counterPulse_reg[4]_i_1_n_0 ;
  wire \counterPulse_reg[4]_i_1_n_1 ;
  wire \counterPulse_reg[4]_i_1_n_2 ;
  wire \counterPulse_reg[4]_i_1_n_3 ;
  wire \counterPulse_reg[4]_i_1_n_4 ;
  wire \counterPulse_reg[4]_i_1_n_5 ;
  wire \counterPulse_reg[4]_i_1_n_6 ;
  wire \counterPulse_reg[4]_i_1_n_7 ;
  wire \counterPulse_reg[8]_i_1_n_0 ;
  wire \counterPulse_reg[8]_i_1_n_1 ;
  wire \counterPulse_reg[8]_i_1_n_2 ;
  wire \counterPulse_reg[8]_i_1_n_3 ;
  wire \counterPulse_reg[8]_i_1_n_4 ;
  wire \counterPulse_reg[8]_i_1_n_5 ;
  wire \counterPulse_reg[8]_i_1_n_6 ;
  wire \counterPulse_reg[8]_i_1_n_7 ;
  wire reset;
  wire snesClock;
  wire startPulse;
  wire startPulse0__15_carry__0_i_1_n_0;
  wire startPulse0__15_carry__0_i_2_n_0;
  wire startPulse0__15_carry__0_i_3_n_0;
  wire startPulse0__15_carry__0_i_4_n_0;
  wire startPulse0__15_carry__0_i_5_n_0;
  wire startPulse0__15_carry__0_i_6_n_0;
  wire startPulse0__15_carry__0_n_0;
  wire startPulse0__15_carry__0_n_1;
  wire startPulse0__15_carry__0_n_2;
  wire startPulse0__15_carry__0_n_3;
  wire startPulse0__15_carry__1_i_1_n_0;
  wire startPulse0__15_carry__1_i_2_n_0;
  wire startPulse0__15_carry__1_i_3_n_0;
  wire startPulse0__15_carry__1_i_4_n_0;
  wire startPulse0__15_carry__1_n_0;
  wire startPulse0__15_carry__1_n_1;
  wire startPulse0__15_carry__1_n_2;
  wire startPulse0__15_carry__1_n_3;
  wire startPulse0__15_carry__2_i_1_n_0;
  wire startPulse0__15_carry__2_i_2_n_0;
  wire startPulse0__15_carry__2_i_3_n_0;
  wire startPulse0__15_carry__2_i_4_n_0;
  wire startPulse0__15_carry__2_n_0;
  wire startPulse0__15_carry__2_n_1;
  wire startPulse0__15_carry__2_n_2;
  wire startPulse0__15_carry__2_n_3;
  wire startPulse0__15_carry_i_1_n_0;
  wire startPulse0__15_carry_i_2_n_0;
  wire startPulse0__15_carry_i_3_n_0;
  wire startPulse0__15_carry_i_4_n_0;
  wire startPulse0__15_carry_i_5_n_0;
  wire startPulse0__15_carry_i_6_n_0;
  wire startPulse0__15_carry_i_7_n_0;
  wire startPulse0__15_carry_n_0;
  wire startPulse0__15_carry_n_1;
  wire startPulse0__15_carry_n_2;
  wire startPulse0__15_carry_n_3;
  wire startPulse0_carry__0_i_1_n_0;
  wire startPulse0_carry__0_i_2_n_0;
  wire startPulse0_carry__0_i_3_n_0;
  wire startPulse0_carry__0_i_4_n_0;
  wire startPulse0_carry__0_i_5_n_0;
  wire startPulse0_carry__0_i_6_n_0;
  wire startPulse0_carry__0_n_0;
  wire startPulse0_carry__0_n_1;
  wire startPulse0_carry__0_n_2;
  wire startPulse0_carry__0_n_3;
  wire startPulse0_carry__1_i_1_n_0;
  wire startPulse0_carry__1_i_2_n_0;
  wire startPulse0_carry__1_i_3_n_0;
  wire startPulse0_carry__1_i_4_n_0;
  wire startPulse0_carry__1_i_5_n_0;
  wire startPulse0_carry__1_n_0;
  wire startPulse0_carry__1_n_1;
  wire startPulse0_carry__1_n_2;
  wire startPulse0_carry__1_n_3;
  wire startPulse0_carry__2_i_1_n_0;
  wire startPulse0_carry__2_i_2_n_0;
  wire startPulse0_carry__2_i_3_n_0;
  wire startPulse0_carry__2_i_4_n_0;
  wire startPulse0_carry__2_i_5_n_0;
  wire startPulse0_carry__2_i_6_n_0;
  wire startPulse0_carry__2_i_7_n_0;
  wire startPulse0_carry__2_i_8_n_0;
  wire startPulse0_carry__2_n_1;
  wire startPulse0_carry__2_n_2;
  wire startPulse0_carry__2_n_3;
  wire startPulse0_carry_i_1_n_0;
  wire startPulse0_carry_i_2_n_0;
  wire startPulse0_carry_i_3_n_0;
  wire startPulse0_carry_i_4_n_0;
  wire startPulse0_carry_i_5_n_0;
  wire startPulse0_carry_i_6_n_0;
  wire startPulse0_carry_i_7_n_0;
  wire startPulse0_carry_n_0;
  wire startPulse0_carry_n_1;
  wire startPulse0_carry_n_2;
  wire startPulse0_carry_n_3;
  wire sysclk;
  wire [3:0]NLW_clock830_carry_O_UNCONNECTED;
  wire [3:0]NLW_clock830_carry__0_O_UNCONNECTED;
  wire [3:0]NLW_clock830_carry__1_O_UNCONNECTED;
  wire [3:0]NLW_clock830_carry__2_O_UNCONNECTED;
  wire [3:3]\NLW_counterClock83_reg[28]_i_1_CO_UNCONNECTED ;
  wire [3:3]\NLW_counterPulse_reg[28]_i_1_CO_UNCONNECTED ;
  wire [3:0]NLW_startPulse0__15_carry_O_UNCONNECTED;
  wire [3:0]NLW_startPulse0__15_carry__0_O_UNCONNECTED;
  wire [3:0]NLW_startPulse0__15_carry__1_O_UNCONNECTED;
  wire [3:0]NLW_startPulse0__15_carry__2_O_UNCONNECTED;
  wire [3:0]NLW_startPulse0_carry_O_UNCONNECTED;
  wire [3:0]NLW_startPulse0_carry__0_O_UNCONNECTED;
  wire [3:0]NLW_startPulse0_carry__1_O_UNCONNECTED;
  wire [3:0]NLW_startPulse0_carry__2_O_UNCONNECTED;

  CARRY4 clock830_carry
       (.CI(1'b0),
        .CO({clock830_carry_n_0,clock830_carry_n_1,clock830_carry_n_2,clock830_carry_n_3}),
        .CYINIT(1'b1),
        .DI({1'b0,clock830_carry_i_1_n_0,1'b0,clock830_carry_i_2_n_0}),
        .O(NLW_clock830_carry_O_UNCONNECTED[3:0]),
        .S({clock830_carry_i_3_n_0,clock830_carry_i_4_n_0,clock830_carry_i_5_n_0,clock830_carry_i_6_n_0}));
  CARRY4 clock830_carry__0
       (.CI(clock830_carry_n_0),
        .CO({clock830_carry__0_n_0,clock830_carry__0_n_1,clock830_carry__0_n_2,clock830_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({clock830_carry__0_i_1_n_0,clock830_carry__0_i_2_n_0,clock830_carry__0_i_3_n_0,clock830_carry__0_i_4_n_0}),
        .O(NLW_clock830_carry__0_O_UNCONNECTED[3:0]),
        .S({clock830_carry__0_i_5_n_0,clock830_carry__0_i_6_n_0,clock830_carry__0_i_7_n_0,clock830_carry__0_i_8_n_0}));
  LUT2 #(
    .INIT(4'hE)) 
    clock830_carry__0_i_1
       (.I0(counterClock83_reg[14]),
        .I1(counterClock83_reg[15]),
        .O(clock830_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    clock830_carry__0_i_2
       (.I0(counterClock83_reg[12]),
        .I1(counterClock83_reg[13]),
        .O(clock830_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    clock830_carry__0_i_3
       (.I0(counterClock83_reg[10]),
        .I1(counterClock83_reg[11]),
        .O(clock830_carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    clock830_carry__0_i_4
       (.I0(counterClock83_reg[8]),
        .I1(counterClock83_reg[9]),
        .O(clock830_carry__0_i_4_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    clock830_carry__0_i_5
       (.I0(counterClock83_reg[14]),
        .I1(counterClock83_reg[15]),
        .O(clock830_carry__0_i_5_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    clock830_carry__0_i_6
       (.I0(counterClock83_reg[12]),
        .I1(counterClock83_reg[13]),
        .O(clock830_carry__0_i_6_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    clock830_carry__0_i_7
       (.I0(counterClock83_reg[10]),
        .I1(counterClock83_reg[11]),
        .O(clock830_carry__0_i_7_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    clock830_carry__0_i_8
       (.I0(counterClock83_reg[9]),
        .I1(counterClock83_reg[8]),
        .O(clock830_carry__0_i_8_n_0));
  CARRY4 clock830_carry__1
       (.CI(clock830_carry__0_n_0),
        .CO({clock830_carry__1_n_0,clock830_carry__1_n_1,clock830_carry__1_n_2,clock830_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({clock830_carry__1_i_1_n_0,clock830_carry__1_i_2_n_0,clock830_carry__1_i_3_n_0,clock830_carry__1_i_4_n_0}),
        .O(NLW_clock830_carry__1_O_UNCONNECTED[3:0]),
        .S({clock830_carry__1_i_5_n_0,clock830_carry__1_i_6_n_0,clock830_carry__1_i_7_n_0,clock830_carry__1_i_8_n_0}));
  LUT2 #(
    .INIT(4'hE)) 
    clock830_carry__1_i_1
       (.I0(counterClock83_reg[22]),
        .I1(counterClock83_reg[23]),
        .O(clock830_carry__1_i_1_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    clock830_carry__1_i_2
       (.I0(counterClock83_reg[20]),
        .I1(counterClock83_reg[21]),
        .O(clock830_carry__1_i_2_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    clock830_carry__1_i_3
       (.I0(counterClock83_reg[18]),
        .I1(counterClock83_reg[19]),
        .O(clock830_carry__1_i_3_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    clock830_carry__1_i_4
       (.I0(counterClock83_reg[16]),
        .I1(counterClock83_reg[17]),
        .O(clock830_carry__1_i_4_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    clock830_carry__1_i_5
       (.I0(counterClock83_reg[22]),
        .I1(counterClock83_reg[23]),
        .O(clock830_carry__1_i_5_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    clock830_carry__1_i_6
       (.I0(counterClock83_reg[20]),
        .I1(counterClock83_reg[21]),
        .O(clock830_carry__1_i_6_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    clock830_carry__1_i_7
       (.I0(counterClock83_reg[18]),
        .I1(counterClock83_reg[19]),
        .O(clock830_carry__1_i_7_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    clock830_carry__1_i_8
       (.I0(counterClock83_reg[16]),
        .I1(counterClock83_reg[17]),
        .O(clock830_carry__1_i_8_n_0));
  CARRY4 clock830_carry__2
       (.CI(clock830_carry__1_n_0),
        .CO({clock830_carry__2_n_0,clock830_carry__2_n_1,clock830_carry__2_n_2,clock830_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({clock830_carry__2_i_1_n_0,clock830_carry__2_i_2_n_0,clock830_carry__2_i_3_n_0,clock830_carry__2_i_4_n_0}),
        .O(NLW_clock830_carry__2_O_UNCONNECTED[3:0]),
        .S({clock830_carry__2_i_5_n_0,clock830_carry__2_i_6_n_0,clock830_carry__2_i_7_n_0,clock830_carry__2_i_8_n_0}));
  LUT2 #(
    .INIT(4'h2)) 
    clock830_carry__2_i_1
       (.I0(counterClock83_reg[30]),
        .I1(counterClock83_reg[31]),
        .O(clock830_carry__2_i_1_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    clock830_carry__2_i_2
       (.I0(counterClock83_reg[28]),
        .I1(counterClock83_reg[29]),
        .O(clock830_carry__2_i_2_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    clock830_carry__2_i_3
       (.I0(counterClock83_reg[26]),
        .I1(counterClock83_reg[27]),
        .O(clock830_carry__2_i_3_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    clock830_carry__2_i_4
       (.I0(counterClock83_reg[24]),
        .I1(counterClock83_reg[25]),
        .O(clock830_carry__2_i_4_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    clock830_carry__2_i_5
       (.I0(counterClock83_reg[30]),
        .I1(counterClock83_reg[31]),
        .O(clock830_carry__2_i_5_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    clock830_carry__2_i_6
       (.I0(counterClock83_reg[28]),
        .I1(counterClock83_reg[29]),
        .O(clock830_carry__2_i_6_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    clock830_carry__2_i_7
       (.I0(counterClock83_reg[26]),
        .I1(counterClock83_reg[27]),
        .O(clock830_carry__2_i_7_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    clock830_carry__2_i_8
       (.I0(counterClock83_reg[24]),
        .I1(counterClock83_reg[25]),
        .O(clock830_carry__2_i_8_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    clock830_carry_i_1
       (.I0(counterClock83_reg[4]),
        .I1(counterClock83_reg[5]),
        .O(clock830_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    clock830_carry_i_2
       (.I0(counterClock83_reg[0]),
        .I1(counterClock83_reg[1]),
        .O(clock830_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    clock830_carry_i_3
       (.I0(counterClock83_reg[6]),
        .I1(counterClock83_reg[7]),
        .O(clock830_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    clock830_carry_i_4
       (.I0(counterClock83_reg[5]),
        .I1(counterClock83_reg[4]),
        .O(clock830_carry_i_4_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    clock830_carry_i_5
       (.I0(counterClock83_reg[2]),
        .I1(counterClock83_reg[3]),
        .O(clock830_carry_i_5_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    clock830_carry_i_6
       (.I0(counterClock83_reg[1]),
        .I1(counterClock83_reg[0]),
        .O(clock830_carry_i_6_n_0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'h46)) 
    clock83_i_1
       (.I0(clkdiv),
        .I1(clock830_carry__2_n_0),
        .I2(reset),
        .O(clock83_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    clock83_reg
       (.C(sysclk),
        .CE(1'b1),
        .D(clock83_i_1_n_0),
        .Q(clkdiv),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \counterClock83[0]_i_2 
       (.I0(counterClock83_reg[0]),
        .O(\counterClock83[0]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counterClock83_reg[0] 
       (.C(sysclk),
        .CE(1'b1),
        .D(\counterClock83_reg[0]_i_1_n_7 ),
        .Q(counterClock83_reg[0]),
        .R(clock830_carry__2_n_0));
  CARRY4 \counterClock83_reg[0]_i_1 
       (.CI(1'b0),
        .CO({\counterClock83_reg[0]_i_1_n_0 ,\counterClock83_reg[0]_i_1_n_1 ,\counterClock83_reg[0]_i_1_n_2 ,\counterClock83_reg[0]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\counterClock83_reg[0]_i_1_n_4 ,\counterClock83_reg[0]_i_1_n_5 ,\counterClock83_reg[0]_i_1_n_6 ,\counterClock83_reg[0]_i_1_n_7 }),
        .S({counterClock83_reg[3:1],\counterClock83[0]_i_2_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \counterClock83_reg[10] 
       (.C(sysclk),
        .CE(1'b1),
        .D(\counterClock83_reg[8]_i_1_n_5 ),
        .Q(counterClock83_reg[10]),
        .R(clock830_carry__2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \counterClock83_reg[11] 
       (.C(sysclk),
        .CE(1'b1),
        .D(\counterClock83_reg[8]_i_1_n_4 ),
        .Q(counterClock83_reg[11]),
        .R(clock830_carry__2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \counterClock83_reg[12] 
       (.C(sysclk),
        .CE(1'b1),
        .D(\counterClock83_reg[12]_i_1_n_7 ),
        .Q(counterClock83_reg[12]),
        .R(clock830_carry__2_n_0));
  CARRY4 \counterClock83_reg[12]_i_1 
       (.CI(\counterClock83_reg[8]_i_1_n_0 ),
        .CO({\counterClock83_reg[12]_i_1_n_0 ,\counterClock83_reg[12]_i_1_n_1 ,\counterClock83_reg[12]_i_1_n_2 ,\counterClock83_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counterClock83_reg[12]_i_1_n_4 ,\counterClock83_reg[12]_i_1_n_5 ,\counterClock83_reg[12]_i_1_n_6 ,\counterClock83_reg[12]_i_1_n_7 }),
        .S(counterClock83_reg[15:12]));
  FDRE #(
    .INIT(1'b0)) 
    \counterClock83_reg[13] 
       (.C(sysclk),
        .CE(1'b1),
        .D(\counterClock83_reg[12]_i_1_n_6 ),
        .Q(counterClock83_reg[13]),
        .R(clock830_carry__2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \counterClock83_reg[14] 
       (.C(sysclk),
        .CE(1'b1),
        .D(\counterClock83_reg[12]_i_1_n_5 ),
        .Q(counterClock83_reg[14]),
        .R(clock830_carry__2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \counterClock83_reg[15] 
       (.C(sysclk),
        .CE(1'b1),
        .D(\counterClock83_reg[12]_i_1_n_4 ),
        .Q(counterClock83_reg[15]),
        .R(clock830_carry__2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \counterClock83_reg[16] 
       (.C(sysclk),
        .CE(1'b1),
        .D(\counterClock83_reg[16]_i_1_n_7 ),
        .Q(counterClock83_reg[16]),
        .R(clock830_carry__2_n_0));
  CARRY4 \counterClock83_reg[16]_i_1 
       (.CI(\counterClock83_reg[12]_i_1_n_0 ),
        .CO({\counterClock83_reg[16]_i_1_n_0 ,\counterClock83_reg[16]_i_1_n_1 ,\counterClock83_reg[16]_i_1_n_2 ,\counterClock83_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counterClock83_reg[16]_i_1_n_4 ,\counterClock83_reg[16]_i_1_n_5 ,\counterClock83_reg[16]_i_1_n_6 ,\counterClock83_reg[16]_i_1_n_7 }),
        .S(counterClock83_reg[19:16]));
  FDRE #(
    .INIT(1'b0)) 
    \counterClock83_reg[17] 
       (.C(sysclk),
        .CE(1'b1),
        .D(\counterClock83_reg[16]_i_1_n_6 ),
        .Q(counterClock83_reg[17]),
        .R(clock830_carry__2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \counterClock83_reg[18] 
       (.C(sysclk),
        .CE(1'b1),
        .D(\counterClock83_reg[16]_i_1_n_5 ),
        .Q(counterClock83_reg[18]),
        .R(clock830_carry__2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \counterClock83_reg[19] 
       (.C(sysclk),
        .CE(1'b1),
        .D(\counterClock83_reg[16]_i_1_n_4 ),
        .Q(counterClock83_reg[19]),
        .R(clock830_carry__2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \counterClock83_reg[1] 
       (.C(sysclk),
        .CE(1'b1),
        .D(\counterClock83_reg[0]_i_1_n_6 ),
        .Q(counterClock83_reg[1]),
        .R(clock830_carry__2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \counterClock83_reg[20] 
       (.C(sysclk),
        .CE(1'b1),
        .D(\counterClock83_reg[20]_i_1_n_7 ),
        .Q(counterClock83_reg[20]),
        .R(clock830_carry__2_n_0));
  CARRY4 \counterClock83_reg[20]_i_1 
       (.CI(\counterClock83_reg[16]_i_1_n_0 ),
        .CO({\counterClock83_reg[20]_i_1_n_0 ,\counterClock83_reg[20]_i_1_n_1 ,\counterClock83_reg[20]_i_1_n_2 ,\counterClock83_reg[20]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counterClock83_reg[20]_i_1_n_4 ,\counterClock83_reg[20]_i_1_n_5 ,\counterClock83_reg[20]_i_1_n_6 ,\counterClock83_reg[20]_i_1_n_7 }),
        .S(counterClock83_reg[23:20]));
  FDRE #(
    .INIT(1'b0)) 
    \counterClock83_reg[21] 
       (.C(sysclk),
        .CE(1'b1),
        .D(\counterClock83_reg[20]_i_1_n_6 ),
        .Q(counterClock83_reg[21]),
        .R(clock830_carry__2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \counterClock83_reg[22] 
       (.C(sysclk),
        .CE(1'b1),
        .D(\counterClock83_reg[20]_i_1_n_5 ),
        .Q(counterClock83_reg[22]),
        .R(clock830_carry__2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \counterClock83_reg[23] 
       (.C(sysclk),
        .CE(1'b1),
        .D(\counterClock83_reg[20]_i_1_n_4 ),
        .Q(counterClock83_reg[23]),
        .R(clock830_carry__2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \counterClock83_reg[24] 
       (.C(sysclk),
        .CE(1'b1),
        .D(\counterClock83_reg[24]_i_1_n_7 ),
        .Q(counterClock83_reg[24]),
        .R(clock830_carry__2_n_0));
  CARRY4 \counterClock83_reg[24]_i_1 
       (.CI(\counterClock83_reg[20]_i_1_n_0 ),
        .CO({\counterClock83_reg[24]_i_1_n_0 ,\counterClock83_reg[24]_i_1_n_1 ,\counterClock83_reg[24]_i_1_n_2 ,\counterClock83_reg[24]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counterClock83_reg[24]_i_1_n_4 ,\counterClock83_reg[24]_i_1_n_5 ,\counterClock83_reg[24]_i_1_n_6 ,\counterClock83_reg[24]_i_1_n_7 }),
        .S(counterClock83_reg[27:24]));
  FDRE #(
    .INIT(1'b0)) 
    \counterClock83_reg[25] 
       (.C(sysclk),
        .CE(1'b1),
        .D(\counterClock83_reg[24]_i_1_n_6 ),
        .Q(counterClock83_reg[25]),
        .R(clock830_carry__2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \counterClock83_reg[26] 
       (.C(sysclk),
        .CE(1'b1),
        .D(\counterClock83_reg[24]_i_1_n_5 ),
        .Q(counterClock83_reg[26]),
        .R(clock830_carry__2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \counterClock83_reg[27] 
       (.C(sysclk),
        .CE(1'b1),
        .D(\counterClock83_reg[24]_i_1_n_4 ),
        .Q(counterClock83_reg[27]),
        .R(clock830_carry__2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \counterClock83_reg[28] 
       (.C(sysclk),
        .CE(1'b1),
        .D(\counterClock83_reg[28]_i_1_n_7 ),
        .Q(counterClock83_reg[28]),
        .R(clock830_carry__2_n_0));
  CARRY4 \counterClock83_reg[28]_i_1 
       (.CI(\counterClock83_reg[24]_i_1_n_0 ),
        .CO({\NLW_counterClock83_reg[28]_i_1_CO_UNCONNECTED [3],\counterClock83_reg[28]_i_1_n_1 ,\counterClock83_reg[28]_i_1_n_2 ,\counterClock83_reg[28]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counterClock83_reg[28]_i_1_n_4 ,\counterClock83_reg[28]_i_1_n_5 ,\counterClock83_reg[28]_i_1_n_6 ,\counterClock83_reg[28]_i_1_n_7 }),
        .S(counterClock83_reg[31:28]));
  FDRE #(
    .INIT(1'b0)) 
    \counterClock83_reg[29] 
       (.C(sysclk),
        .CE(1'b1),
        .D(\counterClock83_reg[28]_i_1_n_6 ),
        .Q(counterClock83_reg[29]),
        .R(clock830_carry__2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \counterClock83_reg[2] 
       (.C(sysclk),
        .CE(1'b1),
        .D(\counterClock83_reg[0]_i_1_n_5 ),
        .Q(counterClock83_reg[2]),
        .R(clock830_carry__2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \counterClock83_reg[30] 
       (.C(sysclk),
        .CE(1'b1),
        .D(\counterClock83_reg[28]_i_1_n_5 ),
        .Q(counterClock83_reg[30]),
        .R(clock830_carry__2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \counterClock83_reg[31] 
       (.C(sysclk),
        .CE(1'b1),
        .D(\counterClock83_reg[28]_i_1_n_4 ),
        .Q(counterClock83_reg[31]),
        .R(clock830_carry__2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \counterClock83_reg[3] 
       (.C(sysclk),
        .CE(1'b1),
        .D(\counterClock83_reg[0]_i_1_n_4 ),
        .Q(counterClock83_reg[3]),
        .R(clock830_carry__2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \counterClock83_reg[4] 
       (.C(sysclk),
        .CE(1'b1),
        .D(\counterClock83_reg[4]_i_1_n_7 ),
        .Q(counterClock83_reg[4]),
        .R(clock830_carry__2_n_0));
  CARRY4 \counterClock83_reg[4]_i_1 
       (.CI(\counterClock83_reg[0]_i_1_n_0 ),
        .CO({\counterClock83_reg[4]_i_1_n_0 ,\counterClock83_reg[4]_i_1_n_1 ,\counterClock83_reg[4]_i_1_n_2 ,\counterClock83_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counterClock83_reg[4]_i_1_n_4 ,\counterClock83_reg[4]_i_1_n_5 ,\counterClock83_reg[4]_i_1_n_6 ,\counterClock83_reg[4]_i_1_n_7 }),
        .S(counterClock83_reg[7:4]));
  FDRE #(
    .INIT(1'b0)) 
    \counterClock83_reg[5] 
       (.C(sysclk),
        .CE(1'b1),
        .D(\counterClock83_reg[4]_i_1_n_6 ),
        .Q(counterClock83_reg[5]),
        .R(clock830_carry__2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \counterClock83_reg[6] 
       (.C(sysclk),
        .CE(1'b1),
        .D(\counterClock83_reg[4]_i_1_n_5 ),
        .Q(counterClock83_reg[6]),
        .R(clock830_carry__2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \counterClock83_reg[7] 
       (.C(sysclk),
        .CE(1'b1),
        .D(\counterClock83_reg[4]_i_1_n_4 ),
        .Q(counterClock83_reg[7]),
        .R(clock830_carry__2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \counterClock83_reg[8] 
       (.C(sysclk),
        .CE(1'b1),
        .D(\counterClock83_reg[8]_i_1_n_7 ),
        .Q(counterClock83_reg[8]),
        .R(clock830_carry__2_n_0));
  CARRY4 \counterClock83_reg[8]_i_1 
       (.CI(\counterClock83_reg[4]_i_1_n_0 ),
        .CO({\counterClock83_reg[8]_i_1_n_0 ,\counterClock83_reg[8]_i_1_n_1 ,\counterClock83_reg[8]_i_1_n_2 ,\counterClock83_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counterClock83_reg[8]_i_1_n_4 ,\counterClock83_reg[8]_i_1_n_5 ,\counterClock83_reg[8]_i_1_n_6 ,\counterClock83_reg[8]_i_1_n_7 }),
        .S(counterClock83_reg[11:8]));
  FDRE #(
    .INIT(1'b0)) 
    \counterClock83_reg[9] 
       (.C(sysclk),
        .CE(1'b1),
        .D(\counterClock83_reg[8]_i_1_n_6 ),
        .Q(counterClock83_reg[9]),
        .R(clock830_carry__2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    \counterPulse[0]_i_2 
       (.I0(counterPulse_reg[0]),
        .O(\counterPulse[0]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counterPulse_reg[0] 
       (.C(sysclk),
        .CE(1'b1),
        .D(\counterPulse_reg[0]_i_1_n_7 ),
        .Q(counterPulse_reg[0]),
        .R(clear));
  CARRY4 \counterPulse_reg[0]_i_1 
       (.CI(1'b0),
        .CO({\counterPulse_reg[0]_i_1_n_0 ,\counterPulse_reg[0]_i_1_n_1 ,\counterPulse_reg[0]_i_1_n_2 ,\counterPulse_reg[0]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\counterPulse_reg[0]_i_1_n_4 ,\counterPulse_reg[0]_i_1_n_5 ,\counterPulse_reg[0]_i_1_n_6 ,\counterPulse_reg[0]_i_1_n_7 }),
        .S({counterPulse_reg[3:1],\counterPulse[0]_i_2_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \counterPulse_reg[10] 
       (.C(sysclk),
        .CE(1'b1),
        .D(\counterPulse_reg[8]_i_1_n_5 ),
        .Q(counterPulse_reg[10]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \counterPulse_reg[11] 
       (.C(sysclk),
        .CE(1'b1),
        .D(\counterPulse_reg[8]_i_1_n_4 ),
        .Q(counterPulse_reg[11]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \counterPulse_reg[12] 
       (.C(sysclk),
        .CE(1'b1),
        .D(\counterPulse_reg[12]_i_1_n_7 ),
        .Q(counterPulse_reg[12]),
        .R(clear));
  CARRY4 \counterPulse_reg[12]_i_1 
       (.CI(\counterPulse_reg[8]_i_1_n_0 ),
        .CO({\counterPulse_reg[12]_i_1_n_0 ,\counterPulse_reg[12]_i_1_n_1 ,\counterPulse_reg[12]_i_1_n_2 ,\counterPulse_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counterPulse_reg[12]_i_1_n_4 ,\counterPulse_reg[12]_i_1_n_5 ,\counterPulse_reg[12]_i_1_n_6 ,\counterPulse_reg[12]_i_1_n_7 }),
        .S(counterPulse_reg[15:12]));
  FDRE #(
    .INIT(1'b0)) 
    \counterPulse_reg[13] 
       (.C(sysclk),
        .CE(1'b1),
        .D(\counterPulse_reg[12]_i_1_n_6 ),
        .Q(counterPulse_reg[13]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \counterPulse_reg[14] 
       (.C(sysclk),
        .CE(1'b1),
        .D(\counterPulse_reg[12]_i_1_n_5 ),
        .Q(counterPulse_reg[14]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \counterPulse_reg[15] 
       (.C(sysclk),
        .CE(1'b1),
        .D(\counterPulse_reg[12]_i_1_n_4 ),
        .Q(counterPulse_reg[15]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \counterPulse_reg[16] 
       (.C(sysclk),
        .CE(1'b1),
        .D(\counterPulse_reg[16]_i_1_n_7 ),
        .Q(counterPulse_reg[16]),
        .R(clear));
  CARRY4 \counterPulse_reg[16]_i_1 
       (.CI(\counterPulse_reg[12]_i_1_n_0 ),
        .CO({\counterPulse_reg[16]_i_1_n_0 ,\counterPulse_reg[16]_i_1_n_1 ,\counterPulse_reg[16]_i_1_n_2 ,\counterPulse_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counterPulse_reg[16]_i_1_n_4 ,\counterPulse_reg[16]_i_1_n_5 ,\counterPulse_reg[16]_i_1_n_6 ,\counterPulse_reg[16]_i_1_n_7 }),
        .S(counterPulse_reg[19:16]));
  FDRE #(
    .INIT(1'b0)) 
    \counterPulse_reg[17] 
       (.C(sysclk),
        .CE(1'b1),
        .D(\counterPulse_reg[16]_i_1_n_6 ),
        .Q(counterPulse_reg[17]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \counterPulse_reg[18] 
       (.C(sysclk),
        .CE(1'b1),
        .D(\counterPulse_reg[16]_i_1_n_5 ),
        .Q(counterPulse_reg[18]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \counterPulse_reg[19] 
       (.C(sysclk),
        .CE(1'b1),
        .D(\counterPulse_reg[16]_i_1_n_4 ),
        .Q(counterPulse_reg[19]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \counterPulse_reg[1] 
       (.C(sysclk),
        .CE(1'b1),
        .D(\counterPulse_reg[0]_i_1_n_6 ),
        .Q(counterPulse_reg[1]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \counterPulse_reg[20] 
       (.C(sysclk),
        .CE(1'b1),
        .D(\counterPulse_reg[20]_i_1_n_7 ),
        .Q(counterPulse_reg[20]),
        .R(clear));
  CARRY4 \counterPulse_reg[20]_i_1 
       (.CI(\counterPulse_reg[16]_i_1_n_0 ),
        .CO({\counterPulse_reg[20]_i_1_n_0 ,\counterPulse_reg[20]_i_1_n_1 ,\counterPulse_reg[20]_i_1_n_2 ,\counterPulse_reg[20]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counterPulse_reg[20]_i_1_n_4 ,\counterPulse_reg[20]_i_1_n_5 ,\counterPulse_reg[20]_i_1_n_6 ,\counterPulse_reg[20]_i_1_n_7 }),
        .S(counterPulse_reg[23:20]));
  FDRE #(
    .INIT(1'b0)) 
    \counterPulse_reg[21] 
       (.C(sysclk),
        .CE(1'b1),
        .D(\counterPulse_reg[20]_i_1_n_6 ),
        .Q(counterPulse_reg[21]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \counterPulse_reg[22] 
       (.C(sysclk),
        .CE(1'b1),
        .D(\counterPulse_reg[20]_i_1_n_5 ),
        .Q(counterPulse_reg[22]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \counterPulse_reg[23] 
       (.C(sysclk),
        .CE(1'b1),
        .D(\counterPulse_reg[20]_i_1_n_4 ),
        .Q(counterPulse_reg[23]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \counterPulse_reg[24] 
       (.C(sysclk),
        .CE(1'b1),
        .D(\counterPulse_reg[24]_i_1_n_7 ),
        .Q(counterPulse_reg[24]),
        .R(clear));
  CARRY4 \counterPulse_reg[24]_i_1 
       (.CI(\counterPulse_reg[20]_i_1_n_0 ),
        .CO({\counterPulse_reg[24]_i_1_n_0 ,\counterPulse_reg[24]_i_1_n_1 ,\counterPulse_reg[24]_i_1_n_2 ,\counterPulse_reg[24]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counterPulse_reg[24]_i_1_n_4 ,\counterPulse_reg[24]_i_1_n_5 ,\counterPulse_reg[24]_i_1_n_6 ,\counterPulse_reg[24]_i_1_n_7 }),
        .S(counterPulse_reg[27:24]));
  FDRE #(
    .INIT(1'b0)) 
    \counterPulse_reg[25] 
       (.C(sysclk),
        .CE(1'b1),
        .D(\counterPulse_reg[24]_i_1_n_6 ),
        .Q(counterPulse_reg[25]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \counterPulse_reg[26] 
       (.C(sysclk),
        .CE(1'b1),
        .D(\counterPulse_reg[24]_i_1_n_5 ),
        .Q(counterPulse_reg[26]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \counterPulse_reg[27] 
       (.C(sysclk),
        .CE(1'b1),
        .D(\counterPulse_reg[24]_i_1_n_4 ),
        .Q(counterPulse_reg[27]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \counterPulse_reg[28] 
       (.C(sysclk),
        .CE(1'b1),
        .D(\counterPulse_reg[28]_i_1_n_7 ),
        .Q(counterPulse_reg[28]),
        .R(clear));
  CARRY4 \counterPulse_reg[28]_i_1 
       (.CI(\counterPulse_reg[24]_i_1_n_0 ),
        .CO({\NLW_counterPulse_reg[28]_i_1_CO_UNCONNECTED [3],\counterPulse_reg[28]_i_1_n_1 ,\counterPulse_reg[28]_i_1_n_2 ,\counterPulse_reg[28]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counterPulse_reg[28]_i_1_n_4 ,\counterPulse_reg[28]_i_1_n_5 ,\counterPulse_reg[28]_i_1_n_6 ,\counterPulse_reg[28]_i_1_n_7 }),
        .S(counterPulse_reg[31:28]));
  FDRE #(
    .INIT(1'b0)) 
    \counterPulse_reg[29] 
       (.C(sysclk),
        .CE(1'b1),
        .D(\counterPulse_reg[28]_i_1_n_6 ),
        .Q(counterPulse_reg[29]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \counterPulse_reg[2] 
       (.C(sysclk),
        .CE(1'b1),
        .D(\counterPulse_reg[0]_i_1_n_5 ),
        .Q(counterPulse_reg[2]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \counterPulse_reg[30] 
       (.C(sysclk),
        .CE(1'b1),
        .D(\counterPulse_reg[28]_i_1_n_5 ),
        .Q(counterPulse_reg[30]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \counterPulse_reg[31] 
       (.C(sysclk),
        .CE(1'b1),
        .D(\counterPulse_reg[28]_i_1_n_4 ),
        .Q(counterPulse_reg[31]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \counterPulse_reg[3] 
       (.C(sysclk),
        .CE(1'b1),
        .D(\counterPulse_reg[0]_i_1_n_4 ),
        .Q(counterPulse_reg[3]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \counterPulse_reg[4] 
       (.C(sysclk),
        .CE(1'b1),
        .D(\counterPulse_reg[4]_i_1_n_7 ),
        .Q(counterPulse_reg[4]),
        .R(clear));
  CARRY4 \counterPulse_reg[4]_i_1 
       (.CI(\counterPulse_reg[0]_i_1_n_0 ),
        .CO({\counterPulse_reg[4]_i_1_n_0 ,\counterPulse_reg[4]_i_1_n_1 ,\counterPulse_reg[4]_i_1_n_2 ,\counterPulse_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counterPulse_reg[4]_i_1_n_4 ,\counterPulse_reg[4]_i_1_n_5 ,\counterPulse_reg[4]_i_1_n_6 ,\counterPulse_reg[4]_i_1_n_7 }),
        .S(counterPulse_reg[7:4]));
  FDRE #(
    .INIT(1'b0)) 
    \counterPulse_reg[5] 
       (.C(sysclk),
        .CE(1'b1),
        .D(\counterPulse_reg[4]_i_1_n_6 ),
        .Q(counterPulse_reg[5]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \counterPulse_reg[6] 
       (.C(sysclk),
        .CE(1'b1),
        .D(\counterPulse_reg[4]_i_1_n_5 ),
        .Q(counterPulse_reg[6]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \counterPulse_reg[7] 
       (.C(sysclk),
        .CE(1'b1),
        .D(\counterPulse_reg[4]_i_1_n_4 ),
        .Q(counterPulse_reg[7]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \counterPulse_reg[8] 
       (.C(sysclk),
        .CE(1'b1),
        .D(\counterPulse_reg[8]_i_1_n_7 ),
        .Q(counterPulse_reg[8]),
        .R(clear));
  CARRY4 \counterPulse_reg[8]_i_1 
       (.CI(\counterPulse_reg[4]_i_1_n_0 ),
        .CO({\counterPulse_reg[8]_i_1_n_0 ,\counterPulse_reg[8]_i_1_n_1 ,\counterPulse_reg[8]_i_1_n_2 ,\counterPulse_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counterPulse_reg[8]_i_1_n_4 ,\counterPulse_reg[8]_i_1_n_5 ,\counterPulse_reg[8]_i_1_n_6 ,\counterPulse_reg[8]_i_1_n_7 }),
        .S(counterPulse_reg[11:8]));
  FDRE #(
    .INIT(1'b0)) 
    \counterPulse_reg[9] 
       (.C(sysclk),
        .CE(1'b1),
        .D(\counterPulse_reg[8]_i_1_n_6 ),
        .Q(counterPulse_reg[9]),
        .R(clear));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'hB)) 
    snesClock_INST_0
       (.I0(clkdiv),
        .I1(D),
        .O(snesClock));
  CARRY4 startPulse0__15_carry
       (.CI(1'b0),
        .CO({startPulse0__15_carry_n_0,startPulse0__15_carry_n_1,startPulse0__15_carry_n_2,startPulse0__15_carry_n_3}),
        .CYINIT(1'b1),
        .DI({startPulse0__15_carry_i_1_n_0,startPulse0__15_carry_i_2_n_0,startPulse0__15_carry_i_3_n_0,1'b0}),
        .O(NLW_startPulse0__15_carry_O_UNCONNECTED[3:0]),
        .S({startPulse0__15_carry_i_4_n_0,startPulse0__15_carry_i_5_n_0,startPulse0__15_carry_i_6_n_0,startPulse0__15_carry_i_7_n_0}));
  CARRY4 startPulse0__15_carry__0
       (.CI(startPulse0__15_carry_n_0),
        .CO({startPulse0__15_carry__0_n_0,startPulse0__15_carry__0_n_1,startPulse0__15_carry__0_n_2,startPulse0__15_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,startPulse0__15_carry__0_i_1_n_0,startPulse0__15_carry__0_i_2_n_0}),
        .O(NLW_startPulse0__15_carry__0_O_UNCONNECTED[3:0]),
        .S({startPulse0__15_carry__0_i_3_n_0,startPulse0__15_carry__0_i_4_n_0,startPulse0__15_carry__0_i_5_n_0,startPulse0__15_carry__0_i_6_n_0}));
  LUT2 #(
    .INIT(4'h1)) 
    startPulse0__15_carry__0_i_1
       (.I0(counterPulse_reg[10]),
        .I1(counterPulse_reg[11]),
        .O(startPulse0__15_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    startPulse0__15_carry__0_i_2
       (.I0(counterPulse_reg[8]),
        .I1(counterPulse_reg[9]),
        .O(startPulse0__15_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    startPulse0__15_carry__0_i_3
       (.I0(counterPulse_reg[14]),
        .I1(counterPulse_reg[15]),
        .O(startPulse0__15_carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    startPulse0__15_carry__0_i_4
       (.I0(counterPulse_reg[12]),
        .I1(counterPulse_reg[13]),
        .O(startPulse0__15_carry__0_i_4_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    startPulse0__15_carry__0_i_5
       (.I0(counterPulse_reg[10]),
        .I1(counterPulse_reg[11]),
        .O(startPulse0__15_carry__0_i_5_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    startPulse0__15_carry__0_i_6
       (.I0(counterPulse_reg[8]),
        .I1(counterPulse_reg[9]),
        .O(startPulse0__15_carry__0_i_6_n_0));
  CARRY4 startPulse0__15_carry__1
       (.CI(startPulse0__15_carry__0_n_0),
        .CO({startPulse0__15_carry__1_n_0,startPulse0__15_carry__1_n_1,startPulse0__15_carry__1_n_2,startPulse0__15_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_startPulse0__15_carry__1_O_UNCONNECTED[3:0]),
        .S({startPulse0__15_carry__1_i_1_n_0,startPulse0__15_carry__1_i_2_n_0,startPulse0__15_carry__1_i_3_n_0,startPulse0__15_carry__1_i_4_n_0}));
  LUT2 #(
    .INIT(4'h1)) 
    startPulse0__15_carry__1_i_1
       (.I0(counterPulse_reg[22]),
        .I1(counterPulse_reg[23]),
        .O(startPulse0__15_carry__1_i_1_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    startPulse0__15_carry__1_i_2
       (.I0(counterPulse_reg[20]),
        .I1(counterPulse_reg[21]),
        .O(startPulse0__15_carry__1_i_2_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    startPulse0__15_carry__1_i_3
       (.I0(counterPulse_reg[18]),
        .I1(counterPulse_reg[19]),
        .O(startPulse0__15_carry__1_i_3_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    startPulse0__15_carry__1_i_4
       (.I0(counterPulse_reg[16]),
        .I1(counterPulse_reg[17]),
        .O(startPulse0__15_carry__1_i_4_n_0));
  CARRY4 startPulse0__15_carry__2
       (.CI(startPulse0__15_carry__1_n_0),
        .CO({startPulse0__15_carry__2_n_0,startPulse0__15_carry__2_n_1,startPulse0__15_carry__2_n_2,startPulse0__15_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({counterPulse_reg[31],1'b0,1'b0,1'b0}),
        .O(NLW_startPulse0__15_carry__2_O_UNCONNECTED[3:0]),
        .S({startPulse0__15_carry__2_i_1_n_0,startPulse0__15_carry__2_i_2_n_0,startPulse0__15_carry__2_i_3_n_0,startPulse0__15_carry__2_i_4_n_0}));
  LUT2 #(
    .INIT(4'h1)) 
    startPulse0__15_carry__2_i_1
       (.I0(counterPulse_reg[30]),
        .I1(counterPulse_reg[31]),
        .O(startPulse0__15_carry__2_i_1_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    startPulse0__15_carry__2_i_2
       (.I0(counterPulse_reg[28]),
        .I1(counterPulse_reg[29]),
        .O(startPulse0__15_carry__2_i_2_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    startPulse0__15_carry__2_i_3
       (.I0(counterPulse_reg[26]),
        .I1(counterPulse_reg[27]),
        .O(startPulse0__15_carry__2_i_3_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    startPulse0__15_carry__2_i_4
       (.I0(counterPulse_reg[24]),
        .I1(counterPulse_reg[25]),
        .O(startPulse0__15_carry__2_i_4_n_0));
  LUT2 #(
    .INIT(4'h7)) 
    startPulse0__15_carry_i_1
       (.I0(counterPulse_reg[6]),
        .I1(counterPulse_reg[7]),
        .O(startPulse0__15_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    startPulse0__15_carry_i_2
       (.I0(counterPulse_reg[4]),
        .I1(counterPulse_reg[5]),
        .O(startPulse0__15_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h7)) 
    startPulse0__15_carry_i_3
       (.I0(counterPulse_reg[2]),
        .I1(counterPulse_reg[3]),
        .O(startPulse0__15_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    startPulse0__15_carry_i_4
       (.I0(counterPulse_reg[6]),
        .I1(counterPulse_reg[7]),
        .O(startPulse0__15_carry_i_4_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    startPulse0__15_carry_i_5
       (.I0(counterPulse_reg[4]),
        .I1(counterPulse_reg[5]),
        .O(startPulse0__15_carry_i_5_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    startPulse0__15_carry_i_6
       (.I0(counterPulse_reg[2]),
        .I1(counterPulse_reg[3]),
        .O(startPulse0__15_carry_i_6_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    startPulse0__15_carry_i_7
       (.I0(counterPulse_reg[0]),
        .I1(counterPulse_reg[1]),
        .O(startPulse0__15_carry_i_7_n_0));
  CARRY4 startPulse0_carry
       (.CI(1'b0),
        .CO({startPulse0_carry_n_0,startPulse0_carry_n_1,startPulse0_carry_n_2,startPulse0_carry_n_3}),
        .CYINIT(1'b1),
        .DI({startPulse0_carry_i_1_n_0,startPulse0_carry_i_2_n_0,counterPulse_reg[3],startPulse0_carry_i_3_n_0}),
        .O(NLW_startPulse0_carry_O_UNCONNECTED[3:0]),
        .S({startPulse0_carry_i_4_n_0,startPulse0_carry_i_5_n_0,startPulse0_carry_i_6_n_0,startPulse0_carry_i_7_n_0}));
  CARRY4 startPulse0_carry__0
       (.CI(startPulse0_carry_n_0),
        .CO({startPulse0_carry__0_n_0,startPulse0_carry__0_n_1,startPulse0_carry__0_n_2,startPulse0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,startPulse0_carry__0_i_1_n_0,startPulse0_carry__0_i_2_n_0,1'b0}),
        .O(NLW_startPulse0_carry__0_O_UNCONNECTED[3:0]),
        .S({startPulse0_carry__0_i_3_n_0,startPulse0_carry__0_i_4_n_0,startPulse0_carry__0_i_5_n_0,startPulse0_carry__0_i_6_n_0}));
  LUT2 #(
    .INIT(4'hE)) 
    startPulse0_carry__0_i_1
       (.I0(counterPulse_reg[12]),
        .I1(counterPulse_reg[13]),
        .O(startPulse0_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    startPulse0_carry__0_i_2
       (.I0(counterPulse_reg[10]),
        .I1(counterPulse_reg[11]),
        .O(startPulse0_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    startPulse0_carry__0_i_3
       (.I0(counterPulse_reg[14]),
        .I1(counterPulse_reg[15]),
        .O(startPulse0_carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    startPulse0_carry__0_i_4
       (.I0(counterPulse_reg[12]),
        .I1(counterPulse_reg[13]),
        .O(startPulse0_carry__0_i_4_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    startPulse0_carry__0_i_5
       (.I0(counterPulse_reg[11]),
        .I1(counterPulse_reg[10]),
        .O(startPulse0_carry__0_i_5_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    startPulse0_carry__0_i_6
       (.I0(counterPulse_reg[8]),
        .I1(counterPulse_reg[9]),
        .O(startPulse0_carry__0_i_6_n_0));
  CARRY4 startPulse0_carry__1
       (.CI(startPulse0_carry__0_n_0),
        .CO({startPulse0_carry__1_n_0,startPulse0_carry__1_n_1,startPulse0_carry__1_n_2,startPulse0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({startPulse0_carry__1_i_1_n_0,counterPulse_reg[21],1'b0,1'b0}),
        .O(NLW_startPulse0_carry__1_O_UNCONNECTED[3:0]),
        .S({startPulse0_carry__1_i_2_n_0,startPulse0_carry__1_i_3_n_0,startPulse0_carry__1_i_4_n_0,startPulse0_carry__1_i_5_n_0}));
  LUT2 #(
    .INIT(4'hE)) 
    startPulse0_carry__1_i_1
       (.I0(counterPulse_reg[22]),
        .I1(counterPulse_reg[23]),
        .O(startPulse0_carry__1_i_1_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    startPulse0_carry__1_i_2
       (.I0(counterPulse_reg[22]),
        .I1(counterPulse_reg[23]),
        .O(startPulse0_carry__1_i_2_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    startPulse0_carry__1_i_3
       (.I0(counterPulse_reg[20]),
        .I1(counterPulse_reg[21]),
        .O(startPulse0_carry__1_i_3_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    startPulse0_carry__1_i_4
       (.I0(counterPulse_reg[18]),
        .I1(counterPulse_reg[19]),
        .O(startPulse0_carry__1_i_4_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    startPulse0_carry__1_i_5
       (.I0(counterPulse_reg[16]),
        .I1(counterPulse_reg[17]),
        .O(startPulse0_carry__1_i_5_n_0));
  CARRY4 startPulse0_carry__2
       (.CI(startPulse0_carry__1_n_0),
        .CO({clear,startPulse0_carry__2_n_1,startPulse0_carry__2_n_2,startPulse0_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({startPulse0_carry__2_i_1_n_0,startPulse0_carry__2_i_2_n_0,startPulse0_carry__2_i_3_n_0,startPulse0_carry__2_i_4_n_0}),
        .O(NLW_startPulse0_carry__2_O_UNCONNECTED[3:0]),
        .S({startPulse0_carry__2_i_5_n_0,startPulse0_carry__2_i_6_n_0,startPulse0_carry__2_i_7_n_0,startPulse0_carry__2_i_8_n_0}));
  LUT2 #(
    .INIT(4'h2)) 
    startPulse0_carry__2_i_1
       (.I0(counterPulse_reg[30]),
        .I1(counterPulse_reg[31]),
        .O(startPulse0_carry__2_i_1_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    startPulse0_carry__2_i_2
       (.I0(counterPulse_reg[28]),
        .I1(counterPulse_reg[29]),
        .O(startPulse0_carry__2_i_2_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    startPulse0_carry__2_i_3
       (.I0(counterPulse_reg[26]),
        .I1(counterPulse_reg[27]),
        .O(startPulse0_carry__2_i_3_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    startPulse0_carry__2_i_4
       (.I0(counterPulse_reg[24]),
        .I1(counterPulse_reg[25]),
        .O(startPulse0_carry__2_i_4_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    startPulse0_carry__2_i_5
       (.I0(counterPulse_reg[30]),
        .I1(counterPulse_reg[31]),
        .O(startPulse0_carry__2_i_5_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    startPulse0_carry__2_i_6
       (.I0(counterPulse_reg[28]),
        .I1(counterPulse_reg[29]),
        .O(startPulse0_carry__2_i_6_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    startPulse0_carry__2_i_7
       (.I0(counterPulse_reg[26]),
        .I1(counterPulse_reg[27]),
        .O(startPulse0_carry__2_i_7_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    startPulse0_carry__2_i_8
       (.I0(counterPulse_reg[24]),
        .I1(counterPulse_reg[25]),
        .O(startPulse0_carry__2_i_8_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    startPulse0_carry_i_1
       (.I0(counterPulse_reg[6]),
        .I1(counterPulse_reg[7]),
        .O(startPulse0_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    startPulse0_carry_i_2
       (.I0(counterPulse_reg[4]),
        .I1(counterPulse_reg[5]),
        .O(startPulse0_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    startPulse0_carry_i_3
       (.I0(counterPulse_reg[0]),
        .I1(counterPulse_reg[1]),
        .O(startPulse0_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    startPulse0_carry_i_4
       (.I0(counterPulse_reg[7]),
        .I1(counterPulse_reg[6]),
        .O(startPulse0_carry_i_4_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    startPulse0_carry_i_5
       (.I0(counterPulse_reg[5]),
        .I1(counterPulse_reg[4]),
        .O(startPulse0_carry_i_5_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    startPulse0_carry_i_6
       (.I0(counterPulse_reg[2]),
        .I1(counterPulse_reg[3]),
        .O(startPulse0_carry_i_6_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    startPulse0_carry_i_7
       (.I0(counterPulse_reg[1]),
        .I1(counterPulse_reg[0]),
        .O(startPulse0_carry_i_7_n_0));
  FDSE #(
    .INIT(1'b0)) 
    startPulse_reg
       (.C(sysclk),
        .CE(1'b1),
        .D(startPulse0__15_carry__2_n_0),
        .Q(startPulse),
        .S(clear));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_SNES_input
   (D,
    buttons,
    sysclk,
    reset,
    clkdiv,
    snesData,
    startPulse);
  output [1:0]D;
  output [15:0]buttons;
  input sysclk;
  input reset;
  input clkdiv;
  input snesData;
  input startPulse;

  (* RTL_KEEP = "yes" *) wire [1:0]D;
  wire \FSM_onehot_next_state[3]_i_2_n_0 ;
  wire \FSM_onehot_next_state_reg_n_0_[0] ;
  wire \FSM_onehot_next_state_reg_n_0_[1] ;
  wire \FSM_onehot_next_state_reg_n_0_[2] ;
  wire \FSM_onehot_next_state_reg_n_0_[3] ;
  (* RTL_KEEP = "yes" *) wire \FSM_onehot_present_state_reg_n_0_[0] ;
  (* RTL_KEEP = "yes" *) wire \FSM_onehot_present_state_reg_n_0_[3] ;
  wire [15:0]buttons;
  wire clkdiv;
  wire [3:0]data_index;
  wire \data_index[0]_i_1_n_0 ;
  wire \data_index[1]_i_1_n_0 ;
  wire \data_index[2]_i_1_n_0 ;
  wire \data_index[3]_i_1_n_0 ;
  wire p_0_in;
  wire reset;
  wire snesData;
  wire startPulse;
  wire sysclk;
  wire [15:0]tempData;
  wire \tempData[0]_i_1_n_0 ;
  wire \tempData[10]_i_1_n_0 ;
  wire \tempData[11]_i_1_n_0 ;
  wire \tempData[11]_i_2_n_0 ;
  wire \tempData[12]_i_1_n_0 ;
  wire \tempData[12]_i_2_n_0 ;
  wire \tempData[13]_i_1_n_0 ;
  wire \tempData[13]_i_2_n_0 ;
  wire \tempData[14]_i_1_n_0 ;
  wire \tempData[14]_i_2_n_0 ;
  wire \tempData[15]_i_1_n_0 ;
  wire \tempData[15]_i_2_n_0 ;
  wire \tempData[15]_i_3_n_0 ;
  wire \tempData[1]_i_1_n_0 ;
  wire \tempData[2]_i_1_n_0 ;
  wire \tempData[3]_i_1_n_0 ;
  wire \tempData[3]_i_2_n_0 ;
  wire \tempData[4]_i_1_n_0 ;
  wire \tempData[5]_i_1_n_0 ;
  wire \tempData[6]_i_1_n_0 ;
  wire \tempData[7]_i_1_n_0 ;
  wire \tempData[7]_i_2_n_0 ;
  wire \tempData[8]_i_1_n_0 ;
  wire \tempData[9]_i_1_n_0 ;

  LUT5 #(
    .INIT(32'hFFFFFEEE)) 
    \FSM_onehot_next_state[3]_i_1 
       (.I0(D[0]),
        .I1(\FSM_onehot_present_state_reg_n_0_[3] ),
        .I2(\FSM_onehot_present_state_reg_n_0_[0] ),
        .I3(startPulse),
        .I4(\FSM_onehot_next_state[3]_i_2_n_0 ),
        .O(p_0_in));
  LUT5 #(
    .INIT(32'h00000002)) 
    \FSM_onehot_next_state[3]_i_2 
       (.I0(D[1]),
        .I1(data_index[1]),
        .I2(data_index[0]),
        .I3(data_index[2]),
        .I4(data_index[3]),
        .O(\FSM_onehot_next_state[3]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b1)) 
    \FSM_onehot_next_state_reg[0] 
       (.C(clkdiv),
        .CE(p_0_in),
        .D(\FSM_onehot_present_state_reg_n_0_[3] ),
        .Q(\FSM_onehot_next_state_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_next_state_reg[1] 
       (.C(clkdiv),
        .CE(p_0_in),
        .D(\FSM_onehot_present_state_reg_n_0_[0] ),
        .Q(\FSM_onehot_next_state_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_next_state_reg[2] 
       (.C(clkdiv),
        .CE(p_0_in),
        .D(D[0]),
        .Q(\FSM_onehot_next_state_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_next_state_reg[3] 
       (.C(clkdiv),
        .CE(p_0_in),
        .D(D[1]),
        .Q(\FSM_onehot_next_state_reg_n_0_[3] ),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "IDLE:0001,LATCHING:0010,READING:0100,OUTPUT:1000" *) 
  (* KEEP = "yes" *) 
  FDPE #(
    .INIT(1'b1)) 
    \FSM_onehot_present_state_reg[0] 
       (.C(sysclk),
        .CE(1'b1),
        .D(\FSM_onehot_next_state_reg_n_0_[0] ),
        .PRE(reset),
        .Q(\FSM_onehot_present_state_reg_n_0_[0] ));
  (* FSM_ENCODED_STATES = "IDLE:0001,LATCHING:0010,READING:0100,OUTPUT:1000" *) 
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_present_state_reg[1] 
       (.C(sysclk),
        .CE(1'b1),
        .CLR(reset),
        .D(\FSM_onehot_next_state_reg_n_0_[1] ),
        .Q(D[0]));
  (* FSM_ENCODED_STATES = "IDLE:0001,LATCHING:0010,READING:0100,OUTPUT:1000" *) 
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_present_state_reg[2] 
       (.C(sysclk),
        .CE(1'b1),
        .CLR(reset),
        .D(\FSM_onehot_next_state_reg_n_0_[2] ),
        .Q(D[1]));
  (* FSM_ENCODED_STATES = "IDLE:0001,LATCHING:0010,READING:0100,OUTPUT:1000" *) 
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_present_state_reg[3] 
       (.C(sysclk),
        .CE(1'b1),
        .CLR(reset),
        .D(\FSM_onehot_next_state_reg_n_0_[3] ),
        .Q(\FSM_onehot_present_state_reg_n_0_[3] ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \buttons_reg[0] 
       (.CLR(1'b0),
        .D(tempData[0]),
        .G(\FSM_onehot_present_state_reg_n_0_[3] ),
        .GE(1'b1),
        .Q(buttons[0]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \buttons_reg[10] 
       (.CLR(1'b0),
        .D(tempData[10]),
        .G(\FSM_onehot_present_state_reg_n_0_[3] ),
        .GE(1'b1),
        .Q(buttons[10]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \buttons_reg[11] 
       (.CLR(1'b0),
        .D(tempData[11]),
        .G(\FSM_onehot_present_state_reg_n_0_[3] ),
        .GE(1'b1),
        .Q(buttons[11]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \buttons_reg[12] 
       (.CLR(1'b0),
        .D(tempData[12]),
        .G(\FSM_onehot_present_state_reg_n_0_[3] ),
        .GE(1'b1),
        .Q(buttons[12]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \buttons_reg[13] 
       (.CLR(1'b0),
        .D(tempData[13]),
        .G(\FSM_onehot_present_state_reg_n_0_[3] ),
        .GE(1'b1),
        .Q(buttons[13]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \buttons_reg[14] 
       (.CLR(1'b0),
        .D(tempData[14]),
        .G(\FSM_onehot_present_state_reg_n_0_[3] ),
        .GE(1'b1),
        .Q(buttons[14]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \buttons_reg[15] 
       (.CLR(1'b0),
        .D(tempData[15]),
        .G(\FSM_onehot_present_state_reg_n_0_[3] ),
        .GE(1'b1),
        .Q(buttons[15]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \buttons_reg[1] 
       (.CLR(1'b0),
        .D(tempData[1]),
        .G(\FSM_onehot_present_state_reg_n_0_[3] ),
        .GE(1'b1),
        .Q(buttons[1]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \buttons_reg[2] 
       (.CLR(1'b0),
        .D(tempData[2]),
        .G(\FSM_onehot_present_state_reg_n_0_[3] ),
        .GE(1'b1),
        .Q(buttons[2]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \buttons_reg[3] 
       (.CLR(1'b0),
        .D(tempData[3]),
        .G(\FSM_onehot_present_state_reg_n_0_[3] ),
        .GE(1'b1),
        .Q(buttons[3]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \buttons_reg[4] 
       (.CLR(1'b0),
        .D(tempData[4]),
        .G(\FSM_onehot_present_state_reg_n_0_[3] ),
        .GE(1'b1),
        .Q(buttons[4]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \buttons_reg[5] 
       (.CLR(1'b0),
        .D(tempData[5]),
        .G(\FSM_onehot_present_state_reg_n_0_[3] ),
        .GE(1'b1),
        .Q(buttons[5]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \buttons_reg[6] 
       (.CLR(1'b0),
        .D(tempData[6]),
        .G(\FSM_onehot_present_state_reg_n_0_[3] ),
        .GE(1'b1),
        .Q(buttons[6]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \buttons_reg[7] 
       (.CLR(1'b0),
        .D(tempData[7]),
        .G(\FSM_onehot_present_state_reg_n_0_[3] ),
        .GE(1'b1),
        .Q(buttons[7]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \buttons_reg[8] 
       (.CLR(1'b0),
        .D(tempData[8]),
        .G(\FSM_onehot_present_state_reg_n_0_[3] ),
        .GE(1'b1),
        .Q(buttons[8]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \buttons_reg[9] 
       (.CLR(1'b0),
        .D(tempData[9]),
        .G(\FSM_onehot_present_state_reg_n_0_[3] ),
        .GE(1'b1),
        .Q(buttons[9]));
  LUT2 #(
    .INIT(4'h2)) 
    \data_index[0]_i_1 
       (.I0(D[1]),
        .I1(data_index[0]),
        .O(\data_index[0]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h28)) 
    \data_index[1]_i_1 
       (.I0(D[1]),
        .I1(data_index[1]),
        .I2(data_index[0]),
        .O(\data_index[1]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2888)) 
    \data_index[2]_i_1 
       (.I0(D[1]),
        .I1(data_index[2]),
        .I2(data_index[1]),
        .I3(data_index[0]),
        .O(\data_index[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h28888888)) 
    \data_index[3]_i_1 
       (.I0(D[1]),
        .I1(data_index[3]),
        .I2(data_index[2]),
        .I3(data_index[0]),
        .I4(data_index[1]),
        .O(\data_index[3]_i_1_n_0 ));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \data_index_reg[0] 
       (.C(clkdiv),
        .CE(D[1]),
        .D(\data_index[0]_i_1_n_0 ),
        .Q(data_index[0]),
        .R(\FSM_onehot_present_state_reg_n_0_[0] ));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \data_index_reg[1] 
       (.C(clkdiv),
        .CE(D[1]),
        .D(\data_index[1]_i_1_n_0 ),
        .Q(data_index[1]),
        .R(\FSM_onehot_present_state_reg_n_0_[0] ));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \data_index_reg[2] 
       (.C(clkdiv),
        .CE(D[1]),
        .D(\data_index[2]_i_1_n_0 ),
        .Q(data_index[2]),
        .R(\FSM_onehot_present_state_reg_n_0_[0] ));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \data_index_reg[3] 
       (.C(clkdiv),
        .CE(D[1]),
        .D(\data_index[3]_i_1_n_0 ),
        .Q(data_index[3]),
        .R(\FSM_onehot_present_state_reg_n_0_[0] ));
  LUT6 #(
    .INIT(64'hFFFDFFFF00010000)) 
    \tempData[0]_i_1 
       (.I0(snesData),
        .I1(\FSM_onehot_present_state_reg_n_0_[0] ),
        .I2(\tempData[3]_i_2_n_0 ),
        .I3(\tempData[12]_i_2_n_0 ),
        .I4(D[1]),
        .I5(tempData[0]),
        .O(\tempData[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFDFFFF00010000)) 
    \tempData[10]_i_1 
       (.I0(snesData),
        .I1(\FSM_onehot_present_state_reg_n_0_[0] ),
        .I2(\tempData[11]_i_2_n_0 ),
        .I3(\tempData[14]_i_2_n_0 ),
        .I4(D[1]),
        .I5(tempData[10]),
        .O(\tempData[10]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFDFFFF00010000)) 
    \tempData[11]_i_1 
       (.I0(snesData),
        .I1(\FSM_onehot_present_state_reg_n_0_[0] ),
        .I2(\tempData[11]_i_2_n_0 ),
        .I3(\tempData[15]_i_3_n_0 ),
        .I4(D[1]),
        .I5(tempData[11]),
        .O(\tempData[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \tempData[11]_i_2 
       (.I0(data_index[2]),
        .I1(data_index[3]),
        .O(\tempData[11]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFDFFFF00010000)) 
    \tempData[12]_i_1 
       (.I0(snesData),
        .I1(\FSM_onehot_present_state_reg_n_0_[0] ),
        .I2(\tempData[15]_i_2_n_0 ),
        .I3(\tempData[12]_i_2_n_0 ),
        .I4(D[1]),
        .I5(tempData[12]),
        .O(\tempData[12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \tempData[12]_i_2 
       (.I0(data_index[1]),
        .I1(data_index[0]),
        .O(\tempData[12]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFDFFFF00010000)) 
    \tempData[13]_i_1 
       (.I0(snesData),
        .I1(\FSM_onehot_present_state_reg_n_0_[0] ),
        .I2(\tempData[15]_i_2_n_0 ),
        .I3(\tempData[13]_i_2_n_0 ),
        .I4(D[1]),
        .I5(tempData[13]),
        .O(\tempData[13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \tempData[13]_i_2 
       (.I0(data_index[1]),
        .I1(data_index[0]),
        .O(\tempData[13]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFDFFFF00010000)) 
    \tempData[14]_i_1 
       (.I0(snesData),
        .I1(\FSM_onehot_present_state_reg_n_0_[0] ),
        .I2(\tempData[15]_i_2_n_0 ),
        .I3(\tempData[14]_i_2_n_0 ),
        .I4(D[1]),
        .I5(tempData[14]),
        .O(\tempData[14]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \tempData[14]_i_2 
       (.I0(data_index[0]),
        .I1(data_index[1]),
        .O(\tempData[14]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFDFFFF00010000)) 
    \tempData[15]_i_1 
       (.I0(snesData),
        .I1(\FSM_onehot_present_state_reg_n_0_[0] ),
        .I2(\tempData[15]_i_2_n_0 ),
        .I3(\tempData[15]_i_3_n_0 ),
        .I4(D[1]),
        .I5(tempData[15]),
        .O(\tempData[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \tempData[15]_i_2 
       (.I0(data_index[3]),
        .I1(data_index[2]),
        .O(\tempData[15]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \tempData[15]_i_3 
       (.I0(data_index[1]),
        .I1(data_index[0]),
        .O(\tempData[15]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFDFFFF00010000)) 
    \tempData[1]_i_1 
       (.I0(snesData),
        .I1(\FSM_onehot_present_state_reg_n_0_[0] ),
        .I2(\tempData[3]_i_2_n_0 ),
        .I3(\tempData[13]_i_2_n_0 ),
        .I4(D[1]),
        .I5(tempData[1]),
        .O(\tempData[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFDFFFF00010000)) 
    \tempData[2]_i_1 
       (.I0(snesData),
        .I1(\FSM_onehot_present_state_reg_n_0_[0] ),
        .I2(\tempData[3]_i_2_n_0 ),
        .I3(\tempData[14]_i_2_n_0 ),
        .I4(D[1]),
        .I5(tempData[2]),
        .O(\tempData[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFDFFFF00010000)) 
    \tempData[3]_i_1 
       (.I0(snesData),
        .I1(\FSM_onehot_present_state_reg_n_0_[0] ),
        .I2(\tempData[3]_i_2_n_0 ),
        .I3(\tempData[15]_i_3_n_0 ),
        .I4(D[1]),
        .I5(tempData[3]),
        .O(\tempData[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \tempData[3]_i_2 
       (.I0(data_index[3]),
        .I1(data_index[2]),
        .O(\tempData[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFDFFFF00010000)) 
    \tempData[4]_i_1 
       (.I0(snesData),
        .I1(\FSM_onehot_present_state_reg_n_0_[0] ),
        .I2(\tempData[7]_i_2_n_0 ),
        .I3(\tempData[12]_i_2_n_0 ),
        .I4(D[1]),
        .I5(tempData[4]),
        .O(\tempData[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFDFFFF00010000)) 
    \tempData[5]_i_1 
       (.I0(snesData),
        .I1(\FSM_onehot_present_state_reg_n_0_[0] ),
        .I2(\tempData[7]_i_2_n_0 ),
        .I3(\tempData[13]_i_2_n_0 ),
        .I4(D[1]),
        .I5(tempData[5]),
        .O(\tempData[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFDFFFF00010000)) 
    \tempData[6]_i_1 
       (.I0(snesData),
        .I1(\FSM_onehot_present_state_reg_n_0_[0] ),
        .I2(\tempData[7]_i_2_n_0 ),
        .I3(\tempData[14]_i_2_n_0 ),
        .I4(D[1]),
        .I5(tempData[6]),
        .O(\tempData[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFDFFFF00010000)) 
    \tempData[7]_i_1 
       (.I0(snesData),
        .I1(\FSM_onehot_present_state_reg_n_0_[0] ),
        .I2(\tempData[7]_i_2_n_0 ),
        .I3(\tempData[15]_i_3_n_0 ),
        .I4(D[1]),
        .I5(tempData[7]),
        .O(\tempData[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \tempData[7]_i_2 
       (.I0(data_index[3]),
        .I1(data_index[2]),
        .O(\tempData[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFDFFFF00010000)) 
    \tempData[8]_i_1 
       (.I0(snesData),
        .I1(\FSM_onehot_present_state_reg_n_0_[0] ),
        .I2(\tempData[11]_i_2_n_0 ),
        .I3(\tempData[12]_i_2_n_0 ),
        .I4(D[1]),
        .I5(tempData[8]),
        .O(\tempData[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFDFFFF00010000)) 
    \tempData[9]_i_1 
       (.I0(snesData),
        .I1(\FSM_onehot_present_state_reg_n_0_[0] ),
        .I2(\tempData[11]_i_2_n_0 ),
        .I3(\tempData[13]_i_2_n_0 ),
        .I4(D[1]),
        .I5(tempData[9]),
        .O(\tempData[9]_i_1_n_0 ));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \tempData_reg[0] 
       (.C(clkdiv),
        .CE(1'b1),
        .D(\tempData[0]_i_1_n_0 ),
        .Q(tempData[0]),
        .R(1'b0));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \tempData_reg[10] 
       (.C(clkdiv),
        .CE(1'b1),
        .D(\tempData[10]_i_1_n_0 ),
        .Q(tempData[10]),
        .R(1'b0));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \tempData_reg[11] 
       (.C(clkdiv),
        .CE(1'b1),
        .D(\tempData[11]_i_1_n_0 ),
        .Q(tempData[11]),
        .R(1'b0));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \tempData_reg[12] 
       (.C(clkdiv),
        .CE(1'b1),
        .D(\tempData[12]_i_1_n_0 ),
        .Q(tempData[12]),
        .R(1'b0));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \tempData_reg[13] 
       (.C(clkdiv),
        .CE(1'b1),
        .D(\tempData[13]_i_1_n_0 ),
        .Q(tempData[13]),
        .R(1'b0));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \tempData_reg[14] 
       (.C(clkdiv),
        .CE(1'b1),
        .D(\tempData[14]_i_1_n_0 ),
        .Q(tempData[14]),
        .R(1'b0));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \tempData_reg[15] 
       (.C(clkdiv),
        .CE(1'b1),
        .D(\tempData[15]_i_1_n_0 ),
        .Q(tempData[15]),
        .R(1'b0));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \tempData_reg[1] 
       (.C(clkdiv),
        .CE(1'b1),
        .D(\tempData[1]_i_1_n_0 ),
        .Q(tempData[1]),
        .R(1'b0));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \tempData_reg[2] 
       (.C(clkdiv),
        .CE(1'b1),
        .D(\tempData[2]_i_1_n_0 ),
        .Q(tempData[2]),
        .R(1'b0));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \tempData_reg[3] 
       (.C(clkdiv),
        .CE(1'b1),
        .D(\tempData[3]_i_1_n_0 ),
        .Q(tempData[3]),
        .R(1'b0));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \tempData_reg[4] 
       (.C(clkdiv),
        .CE(1'b1),
        .D(\tempData[4]_i_1_n_0 ),
        .Q(tempData[4]),
        .R(1'b0));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \tempData_reg[5] 
       (.C(clkdiv),
        .CE(1'b1),
        .D(\tempData[5]_i_1_n_0 ),
        .Q(tempData[5]),
        .R(1'b0));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \tempData_reg[6] 
       (.C(clkdiv),
        .CE(1'b1),
        .D(\tempData[6]_i_1_n_0 ),
        .Q(tempData[6]),
        .R(1'b0));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \tempData_reg[7] 
       (.C(clkdiv),
        .CE(1'b1),
        .D(\tempData[7]_i_1_n_0 ),
        .Q(tempData[7]),
        .R(1'b0));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \tempData_reg[8] 
       (.C(clkdiv),
        .CE(1'b1),
        .D(\tempData[8]_i_1_n_0 ),
        .Q(tempData[8]),
        .R(1'b0));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \tempData_reg[9] 
       (.C(clkdiv),
        .CE(1'b1),
        .D(\tempData[9]_i_1_n_0 ),
        .Q(tempData[9]),
        .R(1'b0));
endmodule

(* CHECK_LICENSE_TYPE = "snake_SNES_0_0,SNES,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "SNES,Vivado 2018.1" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (sysclk,
    reset,
    snesData,
    snesLatch,
    snesClock,
    buttons);
  input sysclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 reset RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME reset, POLARITY ACTIVE_LOW" *) input reset;
  input snesData;
  output snesLatch;
  output snesClock;
  output [15:0]buttons;

  wire [15:0]buttons;
  wire reset;
  wire snesClock;
  wire snesData;
  wire snesLatch;
  wire sysclk;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_SNES inst
       (.buttons(buttons),
        .reset(reset),
        .snesClock(snesClock),
        .snesData(snesData),
        .snesLatch(snesLatch),
        .sysclk(sysclk));
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
