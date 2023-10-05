module ekran2 //4bita 640x96
(
    input                   PixelClk,
    output                  LCD_DE,
    output                  LCD_HSYNC,
    output                  LCD_VSYNC,

	output          [4:0]   LCD_B,
	output          [5:0]   LCD_G,
	output          [4:0]   LCD_R,

    input           [7:0]   pixdata,
    input                   vsync,
    input                   hsync,
    input                   reset
);

	localparam      V_BackPorch = 16'd0; //6
	localparam      V_Pluse 	= 16'd5; 
	localparam      HightPixel  = 16'd480;
	localparam      V_FrontPorch= 16'd45; //62

	localparam      H_BackPorch = 16'd182;
	localparam      H_Pluse 	= 16'd1; 
	localparam      WidthPixel  = 16'd800; 
	localparam      H_FrontPorch= 16'd210;
    
    localparam      PixelForHS  =   WidthPixel + H_BackPorch + H_FrontPorch;  	
    localparam      LineForVS   =   HightPixel + V_BackPorch + V_FrontPorch; 

    localparam      ImageWidth  = 10'd640;
    localparam      ImageHeight = 10'd294;
    
    reg         [17:0]  PixelCount;
    reg         [17:0]  LineCount;

    logic [17:0] addrRead1;
    logic [17:0] addrRead2;
    logic [17:0] addrRead3;
    logic [17:0] addrWrite;
    logic endWrite;
    logic start;

    logic output_pixel;

    logic pixel1;
	logic pixel2;
	logic pixel3;
    logic pixel4;
	logic pixel5;
	logic pixel6;
    logic pixel7;
	logic pixel8;
	logic pixel9;

    initial begin
        addrRead1 = 18'b0;

        addrWrite = 18'b0;
        endWrite = 1'b0;
        start = 1'b0;
	end

    logic [3:0] dout;

    Gowin_SDPB2 your_instance_name(
        .dout(dout), //output [5:0] dout
        .clka(PixelClk), //input clka
        .cea(1'b1), //input cea
        .reseta(1'b0), //input reseta
        .clkb(PixelClk), //input clkb
        .ceb(1'b1), //input ceb
        .resetb(1'b0), //input resetb
        .oce(1'b1), //input oce
        .ada(addrWrite), //input [16:0] ada
        .din(pixdata[7:4]), //input [5:0] din
        .adb(addrRead1) //input [16:0] adb
    );
    logic temp_reset;
    logic [30:0] temp_counter;

    always @(posedge PixelClk)begin
        
        temp_reset =    temp_counter == 31'd10 ? 1'b1 :
                        temp_counter == 31'd12 ? 1'b0 : temp_reset;

        temp_counter =  temp_counter == 31'd3000000 ? 31'd0 : temp_counter + 31'd1;
                        
    end

    always @(posedge PixelClk or posedge temp_reset)begin
        if (temp_reset) begin
            addrRead1 <= 18'd0;
            addrWrite <= 18'd0;
            endWrite <= 1'b0;
            PixelCount <= 18'b0;
            LineCount <= 18'b0;
            start <= 1'b0;
        end
        else begin
        if(  PixelCount  ==  PixelForHS ) begin
            PixelCount      <=  17'b0;
            LineCount       <=  LineCount + 1'b1;
        end
        else if(  LineCount  == LineForVS  ) begin
            LineCount       <=  17'b0;
            PixelCount      <=  17'b0;
        end
        else
            PixelCount      <=  PixelCount + 1'b1;

        if (vsync == 1'b0)
            start <= 1'b1;

        addrRead1 = (addrRead1 == 18'd188160) ? 17'd1 : //addrRead1 + 15'd1;
                    (endWrite == 1'b1) ? ((LineCount + 17'd145)%ImageHeight)*ImageWidth + ((PixelCount + 17'd380)%ImageWidth) : //za lcd
                    (hsync == 1'b1 && start == 1'b1) ? addrRead1 + 17'd1 : addrRead1; //38808 = 252*(156-2) + 1; 201 = 222 - ((800-222)/2 - 222) - H_BackPorch
        endWrite = (addrRead1 == 18'd188160) ? 17'd1 : endWrite;                         //105 = 138 - ((480-138)/2 - 138)*/

        addrWrite = (endWrite == 1'b1) ? 17'd0 : 
                    (hsync == 1'b1 && start == 1'b1) ? addrWrite + 17'd1 : addrWrite; // + 15'd0 za početnu sliku bez gausa
        end
    end

    //assign  LCD_HSYNC   = (( PixelCount >= H_Pluse)&&( PixelCount <= (PixelForHS-H_FrontPorch))) ? 1'b0 : 1'b1;
	//assign  LCD_VSYNC   = ((( LineCount  >= V_Pluse )&&( LineCount  <= (LineForVS-V_FrontPorch) )) ) ? 1'b0 : 1'b1;
    //assign LCD_HSYNC = 1'b0;
    //assign LCD_VSYNC = 1'b0;
    assign  LCD_DE      = ( ( PixelCount >= H_BackPorch )&&
                            ( PixelCount <= PixelForHS-H_FrontPorch ) &&
                            ( LineCount >= V_BackPorch ) &&
                            ( LineCount <= LineForVS-V_FrontPorch ))  ? 1'b1 : 1'b0;
/*
    assign  LCD_HSYNC   = ~hsync;
	assign  LCD_VSYNC   = ~vsync;
    assign  LCD_DE      = hsync & vsync;
*/
/*
    assign  LCD_R   =   PixelCount > H_BackPorch + 30 && PixelCount < H_BackPorch + 270 &&
                        LineCount > 40 && LineCount < 120 ? 5'b00000 : 
                        PixelCount > H_BackPorch + 280 && PixelCount < H_BackPorch + 520 &&
                        LineCount > 40 && LineCount < 120 ? 5'b00000 : 
                        PixelCount > H_BackPorch + 530 && PixelCount < H_BackPorch + 770 &&
                        LineCount > 40 && LineCount < 120 ? 5'b00000 : 

                        PixelCount > H_BackPorch + 30 && PixelCount < H_BackPorch + 110 &&
                        LineCount > 120 && LineCount < 200 ? 5'b11111 :
                        PixelCount > H_BackPorch + 360 && PixelCount < H_BackPorch + 440 &&
                        LineCount > 120 && LineCount < 200 ? 5'b00000 : 
                        PixelCount > H_BackPorch + 530 && PixelCount < H_BackPorch + 610 &&
                        LineCount > 120 && LineCount < 200 ? 5'b11111 : 

                        PixelCount > H_BackPorch + 30 && PixelCount < H_BackPorch + 190 &&
                        LineCount > 200 && LineCount < 280 ? 5'b11111 :
                        PixelCount > H_BackPorch + 360 && PixelCount < H_BackPorch + 440 &&
                        LineCount > 200 && LineCount < 280 ? 5'b00000 : 
                        PixelCount > H_BackPorch + 530 && PixelCount < H_BackPorch + 690 &&
                        LineCount > 200 && LineCount < 280 ? 5'b11111 :

                        PixelCount > H_BackPorch + 30 && PixelCount < H_BackPorch + 110 &&
                        LineCount > 280 && LineCount < 360 ? 5'b11111 :
                        PixelCount > H_BackPorch + 360 && PixelCount < H_BackPorch + 440 &&
                        LineCount > 280 && LineCount < 360 ? 5'b00000 : 
                        PixelCount > H_BackPorch + 530 && PixelCount < H_BackPorch + 610 &&
                        LineCount > 280 && LineCount < 360 ? 5'b11111 :

                        PixelCount > H_BackPorch + 30 && PixelCount < H_BackPorch + 270 &&
                        LineCount > 360 && LineCount < 440 ? 5'b11111 :
                        PixelCount > H_BackPorch + 360 && PixelCount < H_BackPorch + 440 &&
                        LineCount > 360 && LineCount < 440 ? 5'b00000 : 
                        PixelCount > H_BackPorch + 530 && PixelCount < H_BackPorch + 610 &&
                        LineCount > 360 && LineCount < 440 ? 5'b11111 : 5'b00000; 

    assign  LCD_B   =   PixelCount > H_BackPorch + 30 && PixelCount < H_BackPorch + 270 &&
                        LineCount > 40 && LineCount < 120 ? 5'b11111 : 
                        PixelCount > H_BackPorch + 280 && PixelCount < H_BackPorch + 520 &&
                        LineCount > 40 && LineCount < 120 ? 5'b00000 : 
                        PixelCount > H_BackPorch + 530 && PixelCount < H_BackPorch + 770 &&
                        LineCount > 40 && LineCount < 120 ? 5'b11111 : 

                        PixelCount > H_BackPorch + 30 && PixelCount < H_BackPorch + 110 &&
                        LineCount > 120 && LineCount < 200 ? 5'b00000 :
                        PixelCount > H_BackPorch + 360 && PixelCount < H_BackPorch + 440 &&
                        LineCount > 120 && LineCount < 200 ? 5'b00000 : 
                        PixelCount > H_BackPorch + 530 && PixelCount < H_BackPorch + 610 &&
                        LineCount > 120 && LineCount < 200 ? 5'b11111 : 

                        PixelCount > H_BackPorch + 30 && PixelCount < H_BackPorch + 190 &&
                        LineCount > 200 && LineCount < 280 ? 5'b00000 :
                        PixelCount > H_BackPorch + 360 && PixelCount < H_BackPorch + 440 &&
                        LineCount > 200 && LineCount < 280 ? 5'b00000 : 
                        PixelCount > H_BackPorch + 530 && PixelCount < H_BackPorch + 690 &&
                        LineCount > 200 && LineCount < 280 ? 5'b11111 :

                        PixelCount > H_BackPorch + 30 && PixelCount < H_BackPorch + 110 &&
                        LineCount > 280 && LineCount < 360 ? 5'b00000 :
                        PixelCount > H_BackPorch + 360 && PixelCount < H_BackPorch + 440 &&
                        LineCount > 280 && LineCount < 360 ? 5'b00000 : 
                        PixelCount > H_BackPorch + 530 && PixelCount < H_BackPorch + 610 &&
                        LineCount > 280 && LineCount < 360 ? 5'b11111 :

                        PixelCount > H_BackPorch + 30 && PixelCount < H_BackPorch + 270 &&
                        LineCount > 360 && LineCount < 440 ? 5'b00000 :
                        PixelCount > H_BackPorch + 360 && PixelCount < H_BackPorch + 440 &&
                        LineCount > 360 && LineCount < 440 ? 5'b00000 : 
                        PixelCount > H_BackPorch + 530 && PixelCount < H_BackPorch + 610 &&
                        LineCount > 360 && LineCount < 440 ? 5'b11111 : 5'b00000; 
    
    assign  LCD_G   =   PixelCount > H_BackPorch + 30 && PixelCount < H_BackPorch + 270 &&
                        LineCount > 40 && LineCount < 120 ? 6'b000000 : 
                        PixelCount > H_BackPorch + 280 && PixelCount < H_BackPorch + 520 &&
                        LineCount > 40 && LineCount < 120 ? 6'b111111 : 
                        PixelCount > H_BackPorch + 530 && PixelCount < H_BackPorch + 770 &&
                        LineCount > 40 && LineCount < 120 ? 6'b111111 : 

                        PixelCount > H_BackPorch + 30 && PixelCount < H_BackPorch + 110 &&
                        LineCount > 120 && LineCount < 200 ? 6'b000000 :
                        PixelCount > H_BackPorch + 360 && PixelCount < H_BackPorch + 440 &&
                        LineCount > 120 && LineCount < 200 ? 6'b111111 : 
                        PixelCount > H_BackPorch + 530 && PixelCount < H_BackPorch + 610 &&
                        LineCount > 120 && LineCount < 200 ? 6'b000000 : 

                        PixelCount > H_BackPorch + 30 && PixelCount < H_BackPorch + 190 &&
                        LineCount > 200 && LineCount < 280 ? 6'b000000 :
                        PixelCount > H_BackPorch + 360 && PixelCount < H_BackPorch + 440 &&
                        LineCount > 200 && LineCount < 280 ? 6'b111111 : 
                        PixelCount > H_BackPorch + 530 && PixelCount < H_BackPorch + 690 &&
                        LineCount > 200 && LineCount < 280 ? 6'b000000 :

                        PixelCount > H_BackPorch + 30 && PixelCount < H_BackPorch + 110 &&
                        LineCount > 280 && LineCount < 360 ? 6'b000000 :
                        PixelCount > H_BackPorch + 360 && PixelCount < H_BackPorch + 440 &&
                        LineCount > 280 && LineCount < 360 ? 6'b111111 : 
                        PixelCount > H_BackPorch + 530 && PixelCount < H_BackPorch + 610 &&
                        LineCount > 280 && LineCount < 360 ? 6'b111111 :

                        PixelCount > H_BackPorch + 30 && PixelCount < H_BackPorch + 270 &&
                        LineCount > 360 && LineCount < 440 ? 6'b111111 :
                        PixelCount > H_BackPorch + 360 && PixelCount < H_BackPorch + 440 &&
                        LineCount > 360 && LineCount < 440 ? 6'b111111 : 
                        PixelCount > H_BackPorch + 530 && PixelCount < H_BackPorch + 610 &&
                        LineCount > 360 && LineCount < 440 ? 6'b111111 : 6'b000000;
*/
/*
    assign LCD_R = pixdata >> 3;
    assign LCD_G = pixdata >> 2;
    assign LCD_B = pixdata >> 3;*/
/*
    assign LCD_R = hsync == 1'b1 && vsync == 1'b1  ? 5'b11111 : 5'b00000;
    assign LCD_G = hsync == 1'b1 && vsync == 1'b1  ? 6'b111111 : 6'b000000;
    assign LCD_B = hsync == 1'b1 && vsync == 1'b1  ? 5'b11111 : 5'b00000;*/

    assign LCD_R    =   PixelCount > H_BackPorch + 16'd80 && PixelCount < H_BackPorch + 16'd720 &&
                        LineCount > 16'd150 && LineCount < 16'd444 ? {dout, 1'b1} : 5'b00000;

    assign LCD_G    =   PixelCount > H_BackPorch + 16'd80 && PixelCount < H_BackPorch + 16'd720 &&
                        LineCount > 16'd150 && LineCount < 16'd444 ? {dout, 2'b11} : 6'b000000;

    assign LCD_B    =   PixelCount > H_BackPorch + 16'd80 && PixelCount < H_BackPorch + 16'd720 &&
                        LineCount > 16'd150 && LineCount < 16'd444 ? {dout, 1'b1} : 5'b00000;
/*
    assign LCD_R    =   PixelCount > H_BackPorch + 16'd80 && PixelCount < H_BackPorch + 16'd720 &&
                        LineCount > 16'd150 && LineCount < 16'd444 & dout > 6'd30 ? 5'b11111 : 5'b00000;

    assign LCD_G    =   PixelCount > H_BackPorch + 16'd80 && PixelCount < H_BackPorch + 16'd720 &&
                        LineCount > 16'd150 && LineCount < 16'd444 & dout > 6'd30 ? 6'b111111 : 6'b000000;

    assign LCD_B    =   PixelCount > H_BackPorch + 16'd80 && PixelCount < H_BackPorch + 16'd720 &&
                        LineCount > 16'd150 && LineCount < 16'd444 & dout > 6'd30 ? 5'b11111 : 5'b00000;*/
/*
    assign LCD_R = dout[5:1];
    assign LCD_G = dout;
    assign LCD_B = dout[5:1];*/
endmodule
