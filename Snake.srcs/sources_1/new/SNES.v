`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.12.2020 16:38:13
// Design Name: 
// Module Name: SNES
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module SNES(sysclk, reset, snesData, snesLatch, snesClock,buttons

    );
    //sysclock = 125Mhz, clkdiv en snesclock = 83,33 kHz, startpulse is 12µs elke 16.67ms (60Hz)
    input sysclk, reset, snesData; //snesData = Y19 (PMODA pin2)    reset=BTN0
    output snesLatch, snesClock; //snesLatch = Y16 (PMODA pin3) snesClock = Y18 (PMODA pin1)
    output [15:0] buttons;
    wire clkdiv, startPulse;
    
    SNES_clock_divider snesClkDiv(.sysclock(sysclk),.reset(reset),.clock83(clkdiv),.startPulse(startPulse));
    SNES_input snesInput(.sysclock(sysclk),.reset(reset),.clock83(clkdiv),.startPulse(startPulse),.SNESdata(snesData),.SNESclock(snesClock),.SNESlatch(snesLatch),.buttons(buttons));
endmodule
