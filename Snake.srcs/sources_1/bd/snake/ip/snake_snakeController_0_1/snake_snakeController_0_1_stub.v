// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.1 (win64) Build 2188600 Wed Apr  4 18:40:38 MDT 2018
// Date        : Sat Dec 12 16:32:33 2020
// Host        : LAPTOP-7IRJGVEJ running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               C:/Users/Dylan/Desktop/vivado/Snake/Snake.srcs/sources_1/bd/snake/ip/snake_snakeController_0_1/snake_snakeController_0_1_stub.v
// Design      : snake_snakeController_0_1
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "snakeController,Vivado 2018.1" *)
module snake_snakeController_0_1(data, clk, reset, x, y, l, r, u, d, pause)
/* synthesis syn_black_box black_box_pad_pin="data[23:0],clk,reset,x[15:0],y[15:0],l,r,u,d,pause" */;
  output [23:0]data;
  input clk;
  input reset;
  input [15:0]x;
  input [15:0]y;
  input l;
  input r;
  input u;
  input d;
  input pause;
endmodule
