// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.1 (win64) Build 2188600 Wed Apr  4 18:40:38 MDT 2018
// Date        : Mon Dec  7 17:07:36 2020
// Host        : LAPTOP-7IRJGVEJ running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               C:/Users/Dylan/Desktop/vivado/Snake/Snake.srcs/sources_1/bd/snake/ip/snake_buttons_0_0/snake_buttons_0_0_sim_netlist.v
// Design      : snake_buttons_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "snake_buttons_0_0,buttons,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "buttons,Vivado 2018.1" *) 
(* NotValidForBitStream *)
module snake_buttons_0_0
   (clk,
    buttons,
    left,
    right,
    up,
    down);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, FREQ_HZ 100000000, PHASE 0.000" *) input clk;
  input [15:0]buttons;
  output left;
  output right;
  output up;
  output down;

  wire [15:0]buttons;
  wire clk;
  wire down;
  wire left;
  wire right;
  wire up;

  snake_buttons_0_0_buttons inst
       (.buttons({buttons[9:4],buttons[1:0]}),
        .clk(clk),
        .down(down),
        .left(left),
        .right(right),
        .up(up));
endmodule

(* ORIG_REF_NAME = "buttons" *) 
module snake_buttons_0_0_buttons
   (left,
    down,
    up,
    right,
    buttons,
    clk);
  output left;
  output down;
  output up;
  output right;
  input [7:0]buttons;
  input clk;

  wire [7:0]buttons;
  wire clk;
  wire down;
  wire down02_out;
  wire down1;
  wire down17_out;
  wire down_i_1_n_0;
  wire left;
  wire left_i_1_n_0;
  wire right;
  wire right_i_1_n_0;
  wire right_i_2_n_0;
  wire up;
  wire up_i_1_n_0;

  LUT6 #(
    .INIT(64'h00000000000000FE)) 
    down_i_1
       (.I0(down),
        .I1(buttons[0]),
        .I2(buttons[3]),
        .I3(down1),
        .I4(down02_out),
        .I5(down17_out),
        .O(down_i_1_n_0));
  FDRE down_reg
       (.C(clk),
        .CE(1'b1),
        .D(down_i_1_n_0),
        .Q(down),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h000000000000FF02)) 
    left_i_1
       (.I0(left),
        .I1(buttons[0]),
        .I2(buttons[3]),
        .I3(down02_out),
        .I4(down1),
        .I5(down17_out),
        .O(left_i_1_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    left_i_2
       (.I0(buttons[1]),
        .I1(buttons[4]),
        .O(down02_out));
  LUT2 #(
    .INIT(4'hE)) 
    left_i_3
       (.I0(buttons[2]),
        .I1(buttons[7]),
        .O(down1));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'hE)) 
    left_i_4
       (.I0(buttons[5]),
        .I1(buttons[6]),
        .O(down17_out));
  FDRE left_reg
       (.C(clk),
        .CE(1'b1),
        .D(left_i_1_n_0),
        .Q(left),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'hFFF2)) 
    right_i_1
       (.I0(right),
        .I1(right_i_2_n_0),
        .I2(buttons[6]),
        .I3(buttons[5]),
        .O(right_i_1_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    right_i_2
       (.I0(buttons[7]),
        .I1(buttons[2]),
        .I2(buttons[0]),
        .I3(buttons[3]),
        .I4(buttons[1]),
        .I5(buttons[4]),
        .O(right_i_2_n_0));
  FDRE right_reg
       (.C(clk),
        .CE(1'b1),
        .D(right_i_1_n_0),
        .Q(right),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h000000000000EEE2)) 
    up_i_1
       (.I0(up),
        .I1(right_i_2_n_0),
        .I2(buttons[7]),
        .I3(buttons[2]),
        .I4(buttons[6]),
        .I5(buttons[5]),
        .O(up_i_1_n_0));
  FDRE up_reg
       (.C(clk),
        .CE(1'b1),
        .D(up_i_1_n_0),
        .Q(up),
        .R(1'b0));
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
