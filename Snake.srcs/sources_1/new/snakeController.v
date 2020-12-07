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

    //wire pclk;
    wire [15:0] x;
    wire [15:0] y;
    wire [1:0] direction;
    reg [1:0] newDirection;
    reg updatetDir = 1;
    wire [5:0] randX;
    integer randomX;
    wire [4:0] randY;
    integer randomY;
    wire apple, border, head;
    reg snake = 0;
    //wire R,G,B;
    reg gameOver;
    //reg inX, inY;    
    //reg [10:0] snakeX;
    //reg [10:0] snakeY;
    integer blokSize = 40;
    reg [23:0] borderColor = 24'h00FF00; //00FF00 //RBG
    reg [23:0] appleColor = 24'hFF0000; //FF0000 //RBG
    reg [23:0] snakeColor = 24'h0000FF; //0000FF //RBG
    reg [23:0] headColor = 24'hff00ff; //ff00ff //RBG
    integer speed = 4;
    reg [26:0] updateCounter = 0;
    reg update = 0;
    wire animate;
    reg appleInHead = 0;
    reg needNewApple=1;
    parameter UP=2'b00, DOWN=2'b01, LEFT=2'b11, RIGHT=2'b10;
    wire [5:0] widthBlocks = 1280/blokSize;
    wire [4:0] heightBlocks = 720/blokSize;
    integer borderBlocks = 1;
    integer offsetBlocks=0;
    integer blokBorder = 2;
    wire[5:0] playWidthBlocks = widthBlocks-2*borderBlocks-2*offsetBlocks;
    wire[4:0] playHeightBlocks = heightBlocks-2*borderBlocks-2*offsetBlocks;
    reg [5:0] appleX;
    reg [4:0] appleY;
    parameter maxLength = 128; //480 = playWidthBlocks*playHeightBlock met blokSize=40, borderBlocks=1 & offsetBlocks = 0
    // aanpassen als 1 van de paramters veranderd
    reg[5:0] snakeX2 [maxLength-1:0];
    reg[4:0] snakeY2 [maxLength-1:0];
    reg[6:0] size = 0;
    reg[6:0] updateSize = 0;
    reg[6:0] count1;
    reg[6:0] count2;
    reg[6:0] count3;
    reg found = 0;
    reg found2 = 0;
    
    Random ran(.clk(clk), .randX(randX),.randY(randY),.playWidthBlocks(playWidthBlocks),.playHeightBlocks(playHeightBlocks));
    snakeDirection snakeDir(.clk(clk),.l(l),.r(r),.u(u),.d(d),.direction(direction));

    assign animate = (y==720 && x==0);
    assign apple = (x >= appleX*blokSize+blokBorder & x < ((appleX+1)*blokSize - blokBorder)) & (y >= appleY*blokSize+blokBorder & y < ((appleY+1)*blokSize - blokBorder));
    assign border = 
        (x>=(offsetBlocks*blokSize) && x < offsetBlocks*blokSize + borderBlocks*blokSize)
        || (x >=1280-offsetBlocks*blokSize-borderBlocks*blokSize && x<1280-offsetBlocks*blokSize)
        || (y>=(offsetBlocks*blokSize) && y < offsetBlocks*blokSize + borderBlocks*blokSize)
        || (y >=720-offsetBlocks*blokSize-borderBlocks*blokSize && y<720-offsetBlocks*blokSize);
    assign head = (x >= snakeX2[0]*blokSize + blokBorder & x <((snakeX2[0] + 1)* blokSize - blokBorder)) & (y >= snakeY2[0]*blokSize+blokBorder & y < ((snakeY2[0]+1)*blokSize-blokBorder));  
    
    initial
    begin
        //gameOver<=1;
        appleX <= 3+offsetBlocks+borderBlocks;
        appleY <= 3+offsetBlocks+borderBlocks;
        snakeX2[0] <= 15;
        snakeY2[0] <= 9;
        //snakeX2[1] <= 16;
        //snakeY2[1] <= 9;
    end
    
    always@(posedge clk)
    begin
        if(updatetDir==1 && newDirection != direction) begin
            newDirection <= direction;
            updatetDir<=0;
        end
        
        if (reset==1 || (border==1 && head==1) || (head==1 && snake==1)) begin
            gameOver <= 1;
            randomX <= randX;
            randomY <= randY;
        end
        
        found = 0;
        for(count2 = 1; count2 < maxLength-1; count2 = count2 + 1) begin
            if(found==0 && count2<=size) begin                
                snake = ((x >= snakeX2[count2]*blokSize+blokBorder && x < (snakeX2[count2]+1)*blokSize-blokBorder) && (y>= snakeY2[count2]*blokSize+blokBorder && y < (snakeY2[count2]+1)*blokSize-blokBorder));
                found = snake;
            end
        end
        //snake <= ((x >= snakeX2[0]+blokBorder & x < snakeX2[0]+blokSize-blokBorder) & (y>= snakeY2[0]+blokBorder & y < snakeY2[0]+blokSize-blokBorder));
        //found = snake;
        
        if((apple & head) && needNewApple)begin
            /*found2 = 0;
            for(count3 = 0; count3 < maxLength-1; count3 = count3 + 1) begin
                if(found2==0 && count3<=size) begin                
                    found2 = ((randX+offsetBlocks+borderBlocks == snakeX2[count3]) && (randY+offsetBlocks+borderBlocks == snakeY2[count3]));
                    //found2 = snake;
                end
            end
            if(found2==0) needNewApple <=0;*/
            randomX <= randX;
            randomY <= randY;
            
            appleInHead <= 1;
        end
        
        if(border==1) begin data[23:0] <= borderColor; end
        else if (head==1) begin data[23:0] <= headColor; end
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
                appleX <= randomX+offsetBlocks+borderBlocks;
                appleY <= randomY+offsetBlocks+borderBlocks;
                snakeX2[0] <= 15;
                snakeY2[0] <= 9;
                updateSize <= 0;
                gameOver <= 0;
            end
            
            if (appleInHead == 1) begin
                //appleX <= randX;
                //appleY <= randY;
                appleX <= randomX+offsetBlocks+borderBlocks;
                appleY <= randomY+offsetBlocks+borderBlocks;
                if(updateSize == maxLength)begin
                    updateSize<=0;
                    speed <= speed + 1;
                end
                else updateSize <= updateSize + 1;
                needNewApple <=1;
                appleInHead <= 0;
            end
        end
        
        
        if(update == 1 && animate == 1) begin
            size=updateSize;
            for(count1=maxLength-1; count1>0; count1 = count1 - 1) begin
                if(count1<=size) begin                
                    snakeX2[count1] <= snakeX2[count1 - 1];
                    snakeY2[count1] <= snakeY2[count1 - 1];
                end
            end
            case(newDirection)
                UP: begin snakeY2[0]<=snakeY2[0]-1; end
                DOWN: begin snakeY2[0]<=snakeY2[0]+1; end
                LEFT: begin snakeX2[0]<=snakeX2[0]-1; end
                RIGHT: begin snakeX2[0]<=snakeX2[0]+1; end
            endcase
            updatetDir<=1;
            /*case(direction)
                UP: begin snakeY<=snakeY-blokSize; end
                DOWN: begin snakeY<=snakeY+blokSize; end
                LEFT: begin snakeX<=snakeX-blokSize; end
                RIGHT: begin snakeX<=snakeX+blokSize; end
            endcase*/
            
                        
            update <= 0;
        end
        
        
    end
    
endmodule
