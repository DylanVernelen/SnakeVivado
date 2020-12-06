`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.12.2020 17:24:05
// Design Name: 
// Module Name: clkdiv_tb
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


module clkdiv_tb(

    );
    
    reg sysclk, reset;
    wire clock83, startPulse;
    
    SNES_clock_divider SNESclkDiv(.sysclock(sysclk), .reset(reset), .clock83(clock83), .startPulse(startPulse));
    
    initial begin
        reset = 1;
        #1 reset = 0;
    end
    
    initial begin
        sysclk = 0;
        forever
            #0.004 sysclk = !sysclk;
    end
endmodule
