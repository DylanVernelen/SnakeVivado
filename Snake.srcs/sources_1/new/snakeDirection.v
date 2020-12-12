`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.12.2020 19:19:28
// Design Name: 
// Module Name: snakeDirection
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


module snakeDirection(clk, l,r,u,d,direction);

    input clk,l,r,u,d;
    output reg [1:0] direction=2'b11;
    
    parameter UP=2'b00, DOWN=2'b01, LEFT=2'b11, RIGHT=2'b10;
    
    always@(posedge clk)
    begin   //snake kan geen 180 graden draaien
        if (l == 1 && direction != RIGHT) begin direction <= LEFT; end
        else if (r == 1 && direction != LEFT) begin direction <= RIGHT; end
        else if (u == 1 && direction != DOWN) begin direction <= UP; end
        else if (d == 1 && direction != UP) begin direction <= DOWN; end
    end
    
endmodule
