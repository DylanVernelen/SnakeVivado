// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.1 (win64) Build 2188600 Wed Apr  4 18:40:38 MDT 2018
// Date        : Sun Dec  6 18:26:43 2020
// Host        : LAPTOP-7IRJGVEJ running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               C:/Users/Dylan/Desktop/vivado/Snake/Snake.srcs/sources_1/bd/snake/ip/snake_display_timing_0_0/snake_display_timing_0_0_stub.v
// Design      : snake_display_timing_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "display_timing,Vivado 2018.1" *)
module snake_display_timing_0_0(pclk, vs, hs, de, x, y)
/* synthesis syn_black_box black_box_pad_pin="pclk,vs,hs,de,x[15:0],y[15:0]" */;
  input pclk;
  output vs;
  output hs;
  output de;
  output [15:0]x;
  output [15:0]y;
endmodule
