`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.12.2020 16:09:10
// Design Name: 
// Module Name: display_timing
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


module display_timing(
    input pclk,
    output vs,
    output hs,
    output de,
    output reg [15:0] x,
    output reg [15:0] y
    );
    
    localparam HOR_ACTIVE = 1280;
    localparam HOR_FP = 110;
    localparam HOR_SP = 40;
    localparam HOR_BP = 220;
            
    localparam VER_ACTIVE = 720;
    localparam VER_FP = 5;
    localparam VER_SP = 5;
    localparam VER_BP = 20;
            
    always@(posedge pclk) begin
        x <= x + 1;
        if(x == (HOR_ACTIVE + HOR_FP + HOR_SP + HOR_BP - 1)) begin
            x <= 0;
            y <= y + 1;
            if(y == (VER_ACTIVE + VER_FP + VER_SP + VER_BP - 1)) begin
                y <= 0;
            end
        end
    end   
    
    assign de = (x < HOR_ACTIVE) && (y < VER_ACTIVE);
    assign hs = ((x > (HOR_ACTIVE + HOR_FP - 1)) && (x < (HOR_ACTIVE + HOR_FP + HOR_SP)));
    assign vs = ((y > (VER_ACTIVE + VER_FP - 1)) && (y < (VER_ACTIVE + VER_FP + VER_SP)));
    
endmodule
