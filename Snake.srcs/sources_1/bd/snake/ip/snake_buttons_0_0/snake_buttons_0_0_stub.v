// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.1 (win64) Build 2188600 Wed Apr  4 18:40:38 MDT 2018
// Date        : Sat Dec 12 15:30:54 2020
// Host        : LAPTOP-7IRJGVEJ running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               C:/Users/Dylan/Desktop/vivado/Snake/Snake.srcs/sources_1/bd/snake/ip/snake_buttons_0_0/snake_buttons_0_0_stub.v
// Design      : snake_buttons_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "buttons,Vivado 2018.1" *)
module snake_buttons_0_0(clk, reset, buttons, left, right, up, down, pause)
/* synthesis syn_black_box black_box_pad_pin="clk,reset,buttons[15:0],left,right,up,down,pause" */;
  input clk;
  input reset;
  input [15:0]buttons;
  output left;
  output right;
  output up;
  output down;
  output pause;
endmodule
