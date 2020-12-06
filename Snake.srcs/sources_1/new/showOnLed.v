`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.12.2020 16:39:55
// Design Name: 
// Module Name: showOnLed
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


module showOnLED(sysclock, reset, buttons, leds

    );
    
    input sysclock, reset;
    input [15:0] buttons;
    output reg [3:0] leds=0;
    
    always @(posedge sysclock) begin
        if(reset==1) begin
            leds<=0;
        end
        if(buttons[0]==1) leds<=4'b0100;        //B ingedrukt
        else if(buttons[1]==1) leds<=4'b0010;   //Y ingedrukt
        else if(buttons[4]==1) leds<=4'b1000;   //up ingedrukt
        else if(buttons[5]==1) leds<=4'b0100;   //down ingedrukt
        else if(buttons[6]==1) leds<=4'b0010;   //left ingedrukt
        else if(buttons[7]==1) leds<=4'b0001;   //right ingedrukt
        else if(buttons[8]==1) leds<=4'b0001;   //A ingedrukt
        else if(buttons[9]==1) leds<=4'b1000;   //X ingedrukt
    end
endmodule
