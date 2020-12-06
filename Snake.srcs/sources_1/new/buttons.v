`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.12.2020 19:15:23
// Design Name: 
// Module Name: buttons
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


module buttons(clk, buttons, left, right, up, down);
    input clk;
    input [15:0] buttons;
    output reg left, right, up, down;
    
    always@(posedge clk)
    begin
        if (buttons[0] == 1 || buttons[5] == 1) begin // B of pijltje onder indrukken
            down <= 1'b1; left <= 0; up <= 0; right <= 0;
        end
        if (buttons[1] == 1 || buttons[6] == 1) begin//Y of linkspijltje
            left <= 1'b1; down <= 0; up <= 0; right <= 0;
        end
        if (buttons[4] == 1 || buttons[9] == 1) begin// X of bovenpijltje
            up <= 1'b1; left <= 0; down <= 0; right <= 0;
        end 
        if (buttons[7] == 1 || buttons[8] == 1) begin// A of rechts
            right <= 1'b1; left <= 0; up <= 0; down <= 0;
        end
    end
        
endmodule
