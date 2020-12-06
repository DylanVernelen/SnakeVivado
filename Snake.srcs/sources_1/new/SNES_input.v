`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.12.2020 16:35:17
// Design Name: 
// Module Name: SNES_input
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


module SNES_input (sysclock, reset, clock83, startPulse, SNESdata, SNESlatch, SNESclock, buttons);
    //ports:
    input sysclock, reset;//sysclock=125MHz
    input clock83;//83,333 kHz
    input startPulse;//elke 16,67ms voor 12탎 lang
    input SNESdata;
    
    output SNESlatch, SNESclock;
    output reg [15:0]buttons=0;
    
    //states:
    reg[1:0] present_state, next_state;
    reg[3:0] data_index;
    reg[15:0] tempData;
    
    parameter IDLE=2'b00, LATCHING=2'b01, READING=2'b11, OUTPUT=2'b10;
    
    //assigns:
    assign SNESclock = (present_state==READING) ? clock83 : 1'b1;
    assign SNESlatch = (present_state==LATCHING) ? 1'b1 : 1'b0;
    
    //state register
    always @(posedge sysclock or posedge reset)
    begin
        if(reset == 1)              //reset --> terug naar IDLE
            present_state <= IDLE;
        else                        //volgende status naar buiten brengen
            present_state <= next_state;
    end
     
    //next state
    always @(posedge clock83) begin  //state veranderd op posedge 83kHz clock
        case(present_state)
            IDLE: if(startPulse==1'b1) next_state<=LATCHING; //wachten op startPulse
            LATCHING: next_state<=READING;      // 1 clockperiode (12탎)
            READING: if(data_index==0) next_state<=OUTPUT; //wachten op alle databits
            OUTPUT: next_state<=IDLE;   // 1 clockperiode (12탎)
            default: next_state <=IDLE;
        endcase
    end
    
    //outputs
    always @(present_state)
    begin
        case(present_state)
            OUTPUT: begin         //OUTPUT state: nieuwe output naar reg buttons
                buttons <= tempData;
                end
            default begin       //anders oude state op uitgang
                buttons <= buttons;
                end
        endcase
    end
    
    
    //reading
    always@(negedge clock83) //elke 12탎 lezen, negedge is in het midden van databit
        begin
            if(present_state==IDLE)
            begin
                data_index=4'b0;
            end
            else if(present_state==READING)
            begin               //SNESdata bij data_index 12 tem 15 zijn altijd 1 (ongebruikt)
                tempData[data_index] <= ~SNESdata;      //SNESdata = laag --> knop ingedrukt, dus inverteren
                data_index<=data_index+1;
            end
        end
endmodule
