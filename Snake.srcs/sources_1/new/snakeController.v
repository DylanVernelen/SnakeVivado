`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.12.2020 19:20:45
// Design Name: 
// Module Name: snakeController
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


module snakeController(data,clk ,reset, x, y, ,l ,r ,u ,d);
    input clk, reset, l, r, u, d, x, y; 
    output reg [23:0] data;

    wire pclk;
    wire [15:0] x;
    wire [15:0] y;
    wire [1:0] direction;
    wire [7:0] randX;
    integer randomX;
    wire [7:0] randY;
    integer randomY;
    wire apple, border, head;
    reg snake = 0;
    wire R,G,B;
    reg gameOver;
    reg inX, inY;    
    reg [10:0] snakeX;
    reg [10:0] snakeY;
    integer blokSize = 40;
    reg [23:0] borderColor = 24'h00FF00; //RBG
    reg [23:0] appleColor = 24'hFF0000; //RBG
    reg [23:0] snakeColor = 24'h0000FF; //RBG
    integer speed = 4;
    reg [26:0] updateCounter = 9523700;
    reg update = 0;
    wire animate;
    reg appleInHead = 0;
    parameter UP=2'b00, DOWN=2'b01, LEFT=2'b11, RIGHT=2'b10;
    wire [7:0] widthBlocks = 1280/blokSize;
    wire [7:0] heightBlocks = 720/blokSize;
    integer borderBlocks = 1;
    integer offsetBlocks=0;
    integer blokBorder = 2;
    wire[7:0] playWidthBlocks = widthBlocks-2*borderBlocks-2*offsetBlocks;
    wire[7:0] playHeightBlocks = heightBlocks-2*borderBlocks-2*offsetBlocks;
    reg [10:0] appleX;
    reg [10:0] appleY;
    parameter maxLength = 480; //480 = playWidthBlocks*playHeightBlock met blokSize=40, borderBlocks=1 & offsetBlocks = 0
    // aanpassen als 1 van de paramters veranderd
    reg[10:0] snakeX2 [maxLength:0];
    reg[10:0] snakeY2 [maxLength:0];
    reg[8:0] size = 1;
    reg[8:0] count1;
    reg[8:0] count2;
    reg found = 0;
    
    Random ran(.pclk(clk), .randX(randX),.randY(randY),.playWidthBlocks(playWidthBlocks),.playHeightBlocks(playHeightBlocks));
    snakeDirection snakeDir(.clk(clk),.l(l),.r(r),.u(u),.d(d),.direction(direction));

    //assign randomX = randX;
    //assign randomY = randY;
    assign animate = (y==720 && x==0);
    assign apple = (x >= appleX+blokBorder & x < (appleX +  blokSize - blokBorder)) & (y >= appleY+blokBorder & y < (appleY + blokSize - blokBorder));
    assign border = 
        (x>=(offsetBlocks*blokSize) && x < offsetBlocks*blokSize + borderBlocks*blokSize)
        || (x >=1280-offsetBlocks*blokSize-borderBlocks*blokSize && x<1280-offsetBlocks*blokSize)
        || (y>=(offsetBlocks*blokSize) && y < offsetBlocks*blokSize + borderBlocks*blokSize)
        || (y >=720-offsetBlocks*blokSize-borderBlocks*blokSize && y<720-offsetBlocks*blokSize);
    assign head = (x >= snakeX2[0] + blokBorder & x <(snakeX2[0] + blokSize - blokBorder)) & (y >= snakeY2[0]+blokBorder & y < (snakeY2[0]+blokSize-blokBorder));  
    
    initial
    begin
        //gameOver<=1;
        appleX <= 3*blokSize+offsetBlocks*blokSize+borderBlocks*blokSize;
        appleY <= 3*blokSize+offsetBlocks*blokSize+borderBlocks*blokSize;
        //appleX <= 560;
        //appleY <= 360;
        snakeX2[0] <= 600;
        snakeY2[0] <= 360;
        //snakeX2[1] <= 640;
        //snakeY2[1] <= 360;
        //gameOver<=1;
    end
    
    always@(posedge clk)
    begin
        //appleX <= ($urandom%(playWidthBlocks+1))*blokSize+offsetBlocks*blokSize+borderBlocks*blokSize;
        //appleY <= ($urandom%(playHeightBlocks+1))*blokSize+offsetBlocks*blokSize+borderBlocks*blokSize;
        if (reset==1 || (border==1 && head==1)) begin
            gameOver <= 1;
            randomX <= randX;
            randomY <= randY;
        end
        
        found = 0;
        for(count2 = 1; count2 < maxLength-1; count2 = count2 + 1) begin
            if(found==0 && count2<size) begin                
                snake = ((x >= snakeX2[count2]+blokBorder && x < snakeX2[count2]+blokSize-blokBorder) && (y>= snakeY2[count2]+blokBorder && y < snakeY2[count2]+blokSize-blokBorder));
                found = snake;
            end
        end   
        //snake <= ((x >= snakeX2[0]+blokBorder & x < snakeX2[0]+blokSize-blokBorder) & (y>= snakeY2[0]+blokBorder & y < snakeY2[0]+blokSize-blokBorder));
        //found = snake;
        
        if(apple & head)begin 
            appleInHead <= 1;
            randomX <= randX;
            randomY <= randY;
        end
        
        if(border==1) begin data[23:0] <= borderColor; end
        else if (head==1) begin data[23:0] <= snakeColor; end
        else if (apple==1) begin data[23:0] <= appleColor; end
        else if (snake==1) begin data[23:0] <= snakeColor; end
        else begin data[23:0] <= 24'h000000; end
        
        updateCounter <= updateCounter + 1;
        if(updateCounter>=47619047/speed) begin
            update <= 1;
            updateCounter <= 0;
        end
        
        if(animate==1) begin
            if (gameOver == 1)begin
                appleX <= randomX*blokSize+offsetBlocks*blokSize+borderBlocks*blokSize;
                appleY <= randomY*blokSize+offsetBlocks*blokSize+borderBlocks*blokSize;
                snakeX2[0] <= 600;
                snakeY2[0] <= 360;
                size <= 1;
                gameOver <= 0;
            end
            
            if (appleInHead == 1) begin
                //appleX <= randX;
                //appleY <= randY;
                appleX <= randomX*blokSize+offsetBlocks*blokSize+borderBlocks*blokSize;
                appleY <= randomY*blokSize+offsetBlocks*blokSize+borderBlocks*blokSize;
                size <= size + 1;
                if(size == maxLength) size<=1;
                appleInHead <= 0;
            end
        end
        
        if(update == 1 && animate == 1) begin
            for(count1=1; count1<maxLength-1; count1 = count1 + 1) begin
                if(count1<size) begin                
                    snakeX2[count1] <= snakeX2[count1 - 1];
                    snakeY2[count1] <= snakeY2[count1 - 1];
                end
            end
            case(direction)
                UP: begin snakeY2[0]<=snakeY2[0]-blokSize; end
                DOWN: begin snakeY2[0]<=snakeY2[0]+blokSize; end
                LEFT: begin snakeX2[0]<=snakeX2[0]-blokSize; end
                RIGHT: begin snakeX2[0]<=snakeX2[0]+blokSize; end
            endcase
            /*case(direction)
                UP: begin snakeY<=snakeY-blokSize; end
                DOWN: begin snakeY<=snakeY+blokSize; end
                LEFT: begin snakeX<=snakeX-blokSize; end
                RIGHT: begin snakeX<=snakeX+blokSize; end
            endcase*/
            
                        
            update <= 0;
        end
    end
    
    assign R = (apple);
    assign G = (head);
    assign B = (border);
   
    always@(posedge pclk)
    begin 
    //data [7:0]  = {8{R}}; //red
    //data [15:8] = {8{G}}; // green
    //data [23:16] = {8{B}}; //blue
            
        //data [7:0] = (R==1) ? 255 : 0;
        //data [15:8] = (G==1) ? 255 : 0;
        //data [23:16] = (B==1) ? 255 : 0;
    end
    
endmodule
