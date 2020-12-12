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


module snakeController(data,clk ,reset, x, y, ,l ,r ,u ,d, pause);
    input clk, reset, l, r, u, d, x, y, pause; 
    output reg [23:0] data; //displayData

    // ---------- display ------------
    wire [15:0] x; //display coördinate
    wire [15:0] y; //display coördinate
    wire apple, border, head; //display mode
    reg snake = 0;  //display mode
    // colors for display modes
    reg [23:0] borderColor = 24'h00FF00; //RBG //blauw
    reg [23:0] appleColor = 24'hFF0000; //RBG //rood
    reg [23:0] snakeColor = 24'h0000FF; //RBG //groen
    reg [23:0] headColor = 24'hFF00FF; //RBG //geel
    
    //----------------- movement ----------------
    parameter UP=2'b00, DOWN=2'b01, LEFT=2'b11, RIGHT=2'b10;
    wire [1:0] direction;   //huidige richting
    reg [1:0] newDirection; //nieuwe richting
    reg updatetDir = 1; //is snake al verplaats naar laatste richtingswijziging
    //control speed and timing of movement
    reg [26:0] updateCounter = 0;
    integer speed = 4;
    reg update = 0;
    wire animate;
    //random coördinaten voor appel
    wire [5:0] randX;
    integer randomX;
    wire [4:0] randY;
    integer randomY;
    
    //----------------- design parameters ---------------- //for minimal adjustment after changes
    integer blokSize = 40; //pixels per blok
    wire [5:0] widthBlocks = 1280/blokSize;
    wire [4:0] heightBlocks = 720/blokSize;
    integer borderBlocks = 1; //dikte muur
    integer offsetBlocks=0; //witruimte buiten muur
    integer blokBorder = 2; //aantal pixels rand in blok
    wire[5:0] playWidthBlocks = widthBlocks-2*borderBlocks-2*offsetBlocks;
    wire[4:0] playHeightBlocks = heightBlocks-2*borderBlocks-2*offsetBlocks;
    parameter maxLength = 128; //480 = playWidthBlocks*playHeightBlock met blokSize=40, borderBlocks=1 & offsetBlocks = 0
    // 128 max om snake te laten werken // aanpassen als playWidthBlocks*playHeightBlock < 128 wordt
    
    //-------------------- placement -----------------
    reg [5:0] appleX;
    reg [4:0] appleY;
    reg[5:0] snakeX [maxLength-1:0];
    reg[4:0] snakeY [maxLength-1:0];
    reg[6:0] size = 0;  //blokken snake (zonder hoofd)
    reg[6:0] updateSize = 0; //tempSize tot snake bewogen heeft
    
    //--------------- Game logic & counters -------------
    reg gameOver;
    reg appleInHead = 0;
    reg[6:0] count1;
    reg[7:0] count2;
    reg found = 0;
    
    Random ran(.clk(clk), .randX(randX),.randY(randY),.playWidthBlocks(playWidthBlocks),.playHeightBlocks(playHeightBlocks));
    snakeDirection snakeDir(.clk(clk),.l(l),.r(r),.u(u),.d(d),.direction(direction));

    assign animate = (y==720 && x==0); //geeft aan dat men buiten schermgebied timings zit
    // geeft aan dat appel wel of niet op huidige pixel coördinaat is
    assign apple = (x >= appleX*blokSize+blokBorder & x < ((appleX+1)*blokSize - blokBorder)) & (y >= appleY*blokSize+blokBorder & y < ((appleY+1)*blokSize - blokBorder));
    // geeft aan dat rand wel of niet op huidige pixel coördinaat is
    assign border =
        (x>=(offsetBlocks*blokSize) && x < offsetBlocks*blokSize + borderBlocks*blokSize)
        || (x >=1280-offsetBlocks*blokSize-borderBlocks*blokSize && x<1280-offsetBlocks*blokSize)
        || (y>=(offsetBlocks*blokSize) && y < offsetBlocks*blokSize + borderBlocks*blokSize)
        || (y >=720-offsetBlocks*blokSize-borderBlocks*blokSize && y<720-offsetBlocks*blokSize);
    // geeft aan dat snakehead wel of niet op huidige pixel coördinaat is
    assign head = (x >= snakeX[0]*blokSize + blokBorder & x <((snakeX[0] + 1)* blokSize - blokBorder)) & (y >= snakeY[0]*blokSize+blokBorder & y < ((snakeY[0]+1)*blokSize-blokBorder));  
    
    initial
    begin
        //startpositie snake en appel
        appleX <= 3+offsetBlocks+borderBlocks;
        appleY <= 3+offsetBlocks+borderBlocks;
        snakeX[0] <= 15;
        snakeY[0] <= 9;
    end
    
    always@(posedge clk)
    begin
    
        //geef huidige pixel juiste kleur
        if(border==1) begin data[23:0] <= borderColor; end
        else if (head==1) begin data[23:0] <= headColor; end
        else if (apple==1) begin data[23:0] <= appleColor; end
        else if (snake==1) begin data[23:0] <= snakeColor; end
        else begin data[23:0] <= 24'h000000; end
        
        // geeft aan dat snake wel of niet op huidige pixel coördinaat is (zonder hoofd)
        found = 0;
        for(count2 = 1; count2 < maxLength; count2 = count2 + 1) begin
            if(found==0 && count2<=size) begin                
                snake = ((x >= snakeX[count2]*blokSize+blokBorder && x < (snakeX[count2]+1)*blokSize-blokBorder) && (y>= snakeY[count2]*blokSize+blokBorder && y < (snakeY[count2]+1)*blokSize-blokBorder));
                found = snake;
            end
        end
        
        if (pause==0||reset==1) begin // niet doen als op pauze staat, tenzij reset
            // enkel als snake bewogen is na vorige richtingswijziging & richting is veranderd
            if(updatetDir==1 && newDirection != direction) begin
                newDirection <= direction;
                updatetDir<=0;
            end
            
            //bij reset of botsing
            if (reset==1 || (border==1 && head==1) || (head==1 && snake==1)) begin
                gameOver <= 1;
                randomX <= randX;
                randomY <= randY;
            end
            
            if(apple & head)begin
                randomX <= randX;
                randomY <= randY;
                appleInHead <= 1; // eten van appel
            end
            
            //timing en snelheid van verplaatsing slang
            updateCounter <= updateCounter + 1;
            if(updateCounter>=47619047/speed) begin
                update <= 1;
                updateCounter <= 0;
            end
                    
            if(animate==1) begin //plaatsen enkel wijzigen buiten scherm timings
                if (gameOver == 1)begin //default waarden
                    appleX <= randomX+offsetBlocks+borderBlocks;
                    appleY <= randomY+offsetBlocks+borderBlocks;
                    snakeX[0] <= 15;
                    snakeY[0] <= 9;
                    updateSize <= 0;
                    speed<=4;
                    gameOver <= 0; //signaal restten
                end
                
                if (appleInHead == 1) begin //nieuwe appel + slang verlengen
                    appleX <= randomX+offsetBlocks+borderBlocks;
                    appleY <= randomY+offsetBlocks+borderBlocks;
                    if(updateSize == maxLength-1)begin //lengte resetten en snelheid verhogen
                        updateSize<=0;
                        speed <= speed + 1;
                    end
                    else updateSize <= updateSize + 1;
                    appleInHead <= 0; //signaal resetten
                end
            end
            
            if(update == 1 && animate == 1) begin // bij update signaal en buiten display timings
                size=updateSize; //nieuwe lengte doorvoeren
                //elk blokje opschuiven naar voorgaand blok
                for(count1=maxLength-1; count1>0; count1 = count1 - 1) begin
                    if(count1<=size) begin                
                        snakeX[count1] <= snakeX[count1 - 1];
                        snakeY[count1] <= snakeY[count1 - 1];
                    end
                end
                //hoofd verplaatsen naar richting
                case(newDirection)
                    UP: begin snakeY[0]<=snakeY[0]-1; end
                    DOWN: begin snakeY[0]<=snakeY[0]+1; end
                    LEFT: begin snakeX[0]<=snakeX[0]-1; end
                    RIGHT: begin snakeX[0]<=snakeX[0]+1; end
                endcase
                updatetDir<=1; //doorgeven dat slang naar nieuwe richting is verplaatst     
                update <= 0; //update signaal resetten
            end
        end    
    end
endmodule
