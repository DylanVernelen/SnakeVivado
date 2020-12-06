`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.12.2020 16:10:23
// Design Name: 
// Module Name: colorbar
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


module colorbar(
    input [15:0] x,
    input [15:0] y,
    output [23:0] data
    );
    
assign data[7:0] = (x & 16) ? 255 : 0;
assign data[15:8] = (x & 32) ? 255 : 0;
assign data[23:16] = (x & 64) ? 255 : 0; 

endmodule
