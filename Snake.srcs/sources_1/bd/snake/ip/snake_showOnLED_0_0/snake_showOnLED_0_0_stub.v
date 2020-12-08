// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.1 (win64) Build 2188600 Wed Apr  4 18:40:38 MDT 2018
// Date        : Tue Dec  8 12:05:32 2020
// Host        : LAPTOP-7IRJGVEJ running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               C:/Users/Dylan/Desktop/vivado/Snake/Snake.srcs/sources_1/bd/snake/ip/snake_showOnLED_0_0/snake_showOnLED_0_0_stub.v
// Design      : snake_showOnLED_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "showOnLED,Vivado 2018.1" *)
module snake_showOnLED_0_0(sysclock, reset, buttons, leds)
/* synthesis syn_black_box black_box_pad_pin="sysclock,reset,buttons[15:0],leds[3:0]" */;
  input sysclock;
  input reset;
  input [15:0]buttons;
  output [3:0]leds;
endmodule
