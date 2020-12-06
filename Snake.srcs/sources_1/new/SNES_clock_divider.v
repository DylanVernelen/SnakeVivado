`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.12.2020 16:37:20
// Design Name: 
// Module Name: SNES_clock_divider
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


module SNES_clock_divider(sysclock, reset, clock83, startPulse);

input wire sysclock; //125MHZ
input reset;
output reg clock83=0;
output reg startPulse=0;

integer counterPulse = 0;
integer counterClock83 = 0;
    
always @(posedge sysclock) begin //op klokpuls tellen
    if(reset) begin //bij reset counter en signalen resetten
        startPulse <= 0;
        clock83<=0;
        counterPulse <= 0;
        counterClock83 <= 0;
    end

    if (counterPulse >= 2083750) begin //bij 2083750 startPulse hoog en counter resetten, ~60Hz of elke ~16,67ms
        startPulse  <= 1;
        counterPulse <= 0;
    end else if (counterPulse <= 1500) begin //startPulse voor 12µs (1 klokperiode van clock voor controller)
        startPulse <=1;
        counterPulse <= counterPulse +1;
    end else begin  //startPulse terug laag
        startPulse <= 0;
        counterPulse <= counterPulse +1;
    end
    
    
    if(counterClock83>=750) //bij 750 clock omdraaien en counter reseten periode van 83,33kHz of 12µs (omdraaing elke 6µs)
    begin
        clock83<= ~clock83;
        counterClock83<=0;
    end
    else begin
        counterClock83<=counterClock83+1;
    end
end


endmodule
