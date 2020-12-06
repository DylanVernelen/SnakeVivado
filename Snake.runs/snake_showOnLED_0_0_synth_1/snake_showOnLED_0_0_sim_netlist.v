// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.1 (win64) Build 2188600 Wed Apr  4 18:40:38 MDT 2018
// Date        : Sun Dec  6 18:28:22 2020
// Host        : LAPTOP-7IRJGVEJ running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ snake_showOnLED_0_0_sim_netlist.v
// Design      : snake_showOnLED_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_showOnLED
   (leds,
    buttons,
    reset,
    sysclock);
  output [3:0]leds;
  input [7:0]buttons;
  input reset;
  input sysclock;

  wire [7:0]buttons;
  wire [3:0]leds;
  wire \leds[0]_i_1_n_0 ;
  wire \leds[0]_i_2_n_0 ;
  wire \leds[0]_i_3_n_0 ;
  wire \leds[0]_i_4_n_0 ;
  wire \leds[1]_i_1_n_0 ;
  wire \leds[1]_i_2_n_0 ;
  wire \leds[2]_i_1_n_0 ;
  wire \leds[2]_i_2_n_0 ;
  wire \leds[3]_i_1_n_0 ;
  wire \leds[3]_i_2_n_0 ;
  wire \leds[3]_i_3_n_0 ;
  wire reset;
  wire sysclock;

  LUT6 #(
    .INIT(64'h4440444044400040)) 
    \leds[0]_i_1 
       (.I0(buttons[0]),
        .I1(\leds[0]_i_2_n_0 ),
        .I2(leds[0]),
        .I3(\leds[0]_i_3_n_0 ),
        .I4(buttons[5]),
        .I5(buttons[6]),
        .O(\leds[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    \leds[0]_i_2 
       (.I0(buttons[4]),
        .I1(buttons[2]),
        .I2(buttons[3]),
        .I3(buttons[1]),
        .O(\leds[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000302)) 
    \leds[0]_i_3 
       (.I0(buttons[5]),
        .I1(buttons[4]),
        .I2(buttons[2]),
        .I3(\leds[0]_i_4_n_0 ),
        .I4(buttons[3]),
        .I5(buttons[1]),
        .O(\leds[0]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hFE)) 
    \leds[0]_i_4 
       (.I0(buttons[7]),
        .I1(buttons[6]),
        .I2(reset),
        .O(\leds[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h00000000EEE2E2E2)) 
    \leds[1]_i_1 
       (.I0(leds[1]),
        .I1(\leds[2]_i_2_n_0 ),
        .I2(buttons[1]),
        .I3(\leds[1]_i_2_n_0 ),
        .I4(buttons[4]),
        .I5(buttons[0]),
        .O(\leds[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \leds[1]_i_2 
       (.I0(buttons[2]),
        .I1(buttons[3]),
        .O(\leds[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF22222E22)) 
    \leds[2]_i_1 
       (.I0(leds[2]),
        .I1(\leds[2]_i_2_n_0 ),
        .I2(buttons[1]),
        .I3(buttons[3]),
        .I4(buttons[2]),
        .I5(buttons[0]),
        .O(\leds[2]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hFE)) 
    \leds[2]_i_2 
       (.I0(buttons[1]),
        .I1(\leds[3]_i_2_n_0 ),
        .I2(buttons[5]),
        .O(\leds[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0505050400000004)) 
    \leds[3]_i_1 
       (.I0(buttons[0]),
        .I1(leds[3]),
        .I2(buttons[1]),
        .I3(\leds[3]_i_2_n_0 ),
        .I4(buttons[5]),
        .I5(\leds[3]_i_3_n_0 ),
        .O(\leds[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \leds[3]_i_2 
       (.I0(buttons[3]),
        .I1(reset),
        .I2(buttons[6]),
        .I3(buttons[7]),
        .I4(buttons[2]),
        .I5(buttons[4]),
        .O(\leds[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF00010000)) 
    \leds[3]_i_3 
       (.I0(buttons[5]),
        .I1(buttons[4]),
        .I2(buttons[3]),
        .I3(buttons[6]),
        .I4(buttons[7]),
        .I5(buttons[2]),
        .O(\leds[3]_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \leds_reg[0] 
       (.C(sysclock),
        .CE(1'b1),
        .D(\leds[0]_i_1_n_0 ),
        .Q(leds[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \leds_reg[1] 
       (.C(sysclock),
        .CE(1'b1),
        .D(\leds[1]_i_1_n_0 ),
        .Q(leds[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \leds_reg[2] 
       (.C(sysclock),
        .CE(1'b1),
        .D(\leds[2]_i_1_n_0 ),
        .Q(leds[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \leds_reg[3] 
       (.C(sysclock),
        .CE(1'b1),
        .D(\leds[3]_i_1_n_0 ),
        .Q(leds[3]),
        .R(1'b0));
endmodule

(* CHECK_LICENSE_TYPE = "snake_showOnLED_0_0,showOnLED,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "showOnLED,Vivado 2018.1" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (sysclock,
    reset,
    buttons,
    leds);
  input sysclock;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 reset RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME reset, POLARITY ACTIVE_LOW" *) input reset;
  input [15:0]buttons;
  output [3:0]leds;

  wire [15:0]buttons;
  wire [3:0]leds;
  wire reset;
  wire sysclock;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_showOnLED inst
       (.buttons({buttons[9:4],buttons[1:0]}),
        .leds(leds),
        .reset(reset),
        .sysclock(sysclock));
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
