`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.12.2020 21:26:42
// Design Name: 
// Module Name: snakeController_tb
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


module snakeController_tb(

    );
    
    reg clk, reset, l, r, u, d; 
    reg [15:0] x, y;
    wire [23:0] data;
    
    snakeController snakeContr(.clk(clk), .reset(reset), .l(l), .r(r), .u(u), .d(d), .x(x),.y(y), .data(data));
    
    initial begin
        reset = 0;
        l=1; r=0; u=0; d=0;
        #1 reset = 0;
    end
    
    initial begin
        clk = 0;
        forever
            #0.004 clk = !clk;
    end
    
    initial begin
        #0.004 x = 0;
        y=0;
        forever begin
            #0.008 x = x + 1;
            if(x==1290) begin
                x=0;
                y=y+1;
                if(y==730) begin y=0; end
            end
        end
    end
endmodule
