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


module buttons(clk, reset, buttons, left, right, up, down, pause);
    input clk, reset;
    input [15:0] buttons;
    output reg left, right, up, down, pause=0;
    
    always@(posedge clk)
    begin
        if(reset==1) pause <= 0;    //bij reset terug doorgaan
        if(pause==0)begin   //niet doorgeven als het op pauze staat
            //laatste statement wint
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
            if(buttons[2]==1) pause<=1;     //select = pause
        end else if(buttons[3]==1) pause<=0; //start = continue
        
    end
        
endmodule
