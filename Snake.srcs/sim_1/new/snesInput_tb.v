`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.12.2020 17:25:37
// Design Name: 
// Module Name: snesInput_tb
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


module snesInput_tb(

    );
    
    reg sysclk, reset, clock83, startPulse, SNESdata;
    wire SNESlatch, SNESclock;
    wire [15:0]buttons;
    
    SNES_input snesInput(.sysclock(sysclk), .reset(reset), .clock83(clock83), .startPulse(startPulse), .SNESdata(SNESdata), .SNESlatch(SNESlatch), .SNESclock(SNESclock), .buttons(buttons));
    
    initial begin
        reset = 1;
        startPulse=1;
        #1 reset = 0;
    end
    
    initial begin
        sysclk = 0;
        forever
            #0.004 sysclk = !sysclk;
    end
    
    initial begin
        clock83 = 0;
        #0.004;
        forever begin
            #8335 clock83 = !clock83;
        end
    end
    
    initial begin
        SNESdata = 0;
        #0.004;
        forever begin
            #16710 SNESdata = !SNESdata;
        end
    end
endmodule
