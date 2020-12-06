`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.12.2020 19:17:56
// Design Name: 
// Module Name: Random
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


module Random(pclk,randX,randY,playWidthBlocks, playHeightBlocks);

    input pclk;
    input [7:0]  playWidthBlocks, playHeightBlocks;
    output reg [7:0] randX=0;
    output reg [7:0] randY=0;
    
    reg [7:0] i = 0;
    reg [7:0] j = 0;
    
    always@(posedge pclk)
    begin
        if(i<playWidthBlocks-1) 
            i <= i + 1;
        else
            i <= 0;
    end
    
    always@(posedge pclk)
    begin
        if(j<playHeightBlocks-1)
            j <= j + 1;
        else
            j <= 0;
    end
    
    always@(i,j)
    begin
        randX <= i;
        randY <= j;
    end

endmodule
