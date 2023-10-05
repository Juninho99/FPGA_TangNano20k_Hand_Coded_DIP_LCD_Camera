module Morphology_3x3
(
    input                   PixelClk,
    output                  LCD_DE,
    output                  LCD_HSYNC,
    output                  LCD_VSYNC,

	output          [4:0]   LCD_B,
	output          [5:0]   LCD_G,
	output          [4:0]   LCD_R
);

	localparam      V_BackPorch = 18'd0; //6
	localparam      V_Pluse 	= 18'd5; 
	localparam      HightPixel  = 18'd480;
	localparam      V_FrontPorch= 18'd45; //62

	localparam      H_BackPorch = 18'd46;
	localparam      H_Pluse 	= 18'd1; 
	localparam      WidthPixel  = 18'd800; 
	localparam      H_FrontPorch= 18'd210;
    
    localparam      PixelForHS  =   WidthPixel + H_BackPorch + H_FrontPorch;  	
    localparam      LineForVS   =   HightPixel + V_BackPorch + V_FrontPorch;

    localparam      ImageWidth  = 10'd630;
    localparam      ImageHeight = 10'd390;
    
    reg         [17:0]  PixelCount;
    reg         [17:0]  LineCount;

    logic               dout_o1;
    logic               dout_o2;
    logic               dout_o3;
    logic       [17:0]  addrRead1;
    logic       [17:0]  addrRead2;
    logic       [17:0]  addrRead3;
    logic       [17:0]  addrWrite;
    logic               firstTry;
    logic               secondTry;
    logic               startWrite;

    initial begin
        addrWrite = 18'b0;
        addrRead1 = 18'd1;
        addrRead2 = 18'd2;
        addrRead3 = 18'd3;
        firstTry = 1'b0;
        secondTry = 1'b0;
        startWrite = 1'b0;
	end

    Gowin_SDPB sdpb1(
        .dout(dout_o1),
        .clka(PixelClk),
        .cea(1'b1),
        .reseta(1'b0),
        .clkb(PixelClk),
        .ceb(1'b1),
        .resetb(1'b0),
        .oce(1'b1),
        .ada(addrWrite), //PISANJE
        .din(dataToWrite),
        .adb(addrRead1) //ČITANJE
    );  

    Gowin_SDPB sdpb2(
        .dout(dout_o2),
        .clka(PixelClk),
        .cea(1'b1),
        .reseta(1'b0),
        .clkb(PixelClk),
        .ceb(1'b1),
        .resetb(1'b0),
        .oce(1'b1),
        .ada(addrWrite), //PISANJE
        .din(dataToWrite),
        .adb(addrRead2) //ČITANJE
    );  

    Gowin_SDPB sdpb3(
        .dout(dout_o3),
        .clka(PixelClk),
        .cea(1'b1),
        .reseta(1'b0),
        .clkb(PixelClk),
        .ceb(1'b1),
        .resetb(1'b0),
        .oce(1'b1),
        .ada(addrWrite), //PISANJE
        .din(dataToWrite),
        .adb(addrRead3) //ČITANJE
    );  

    assign dataToWrite = dout_o1 & dout_o2 & dout_o3;
    
    always @(posedge PixelClk)begin
        if(  PixelCount  ==  PixelForHS ) begin
            PixelCount      <=  19'b0;
            LineCount       <=  LineCount + 1'b1;
            end
        else if(  LineCount  == LineForVS  ) begin
            LineCount       <=  19'b0;
            PixelCount      <=  19'b0;
            end
        else
            PixelCount      <=  PixelCount + 1'b1;

        startWrite <= 1'b1;
        firstTry = addrRead1 == 18'd245698 ? 1'b1 : firstTry;
        secondTry = addrRead1 == 18'd245698 && firstTry == 1'b1 ? 1'b1 : secondTry;
        addrRead1 =  (addrRead1 == 18'd245698 || startWrite == 0) ? 10'b1 :
                     (secondTry == 1'b1) ? ((LineCount + 18'd345)%ImageHeight)*ImageWidth + ((PixelCount + 18'd501)%ImageWidth)
                                                            : addrRead1 + 18'b1;

        addrRead2 =  startWrite == 0 ? 18'd2 : 
                     addrRead1 == 18'd245698 ? 18'd631 :  addrRead2 + 18'b1;

        addrRead3 =  startWrite == 0 ? 18'd3 : 
                     addrRead1 == 18'd245698 ? 18'd1261 :  addrRead3 + 18'b1;

        addrWrite =  startWrite == 0 ? 18'b0 :
                     addrWrite == 18'd245698 ? 18'b1 : 
                     (secondTry == 1'b1) ? 18'b0 :   addrWrite + 18'b1;

        //addr = ((LineCount + 18'd345)%ImageHeight)*ImageWidth + ((PixelCount + 18'd501)%ImageWidth); // + 16'd345 and + 16'd545 - 16'd44 --> to center the images on the screen
    end

    assign  LCD_HSYNC   = (( PixelCount >= H_Pluse)&&( PixelCount <= (PixelForHS-H_FrontPorch))) ? 1'b0 : 1'b1;
	assign  LCD_VSYNC   = ((( LineCount  >= V_Pluse )&&( LineCount  <= (LineForVS-V_FrontPorch) )) ) ? 1'b0 : 1'b1;
    assign  LCD_DE      = ( ( PixelCount >= H_BackPorch )&&
                            ( PixelCount <= PixelForHS-H_FrontPorch ) &&
                            ( LineCount >= V_BackPorch ) &&
                            ( LineCount <= LineForVS-V_FrontPorch ))  ? 1'b1 : 1'b0;

    assign LCD_R    =   PixelCount > H_BackPorch + 17'd85 && PixelCount < H_BackPorch + 17'd715 &&
                        LineCount > 17'd45 && LineCount < 17'd435 && dout_o1 == 1'b1 ? 5'b11111 : 5'b00000;

    assign LCD_G    =   PixelCount > H_BackPorch + 17'd85 && PixelCount < H_BackPorch + 17'd715 &&
                        LineCount > 17'd45 && LineCount < 17'd435 && dout_o1 == 1'b1 ? 6'b111111 : 6'b000000;

    assign LCD_B    =   PixelCount > H_BackPorch + 17'd85 && PixelCount < H_BackPorch + 17'd715 &&
                        LineCount > 17'd45 && LineCount < 17'd435 && dout_o1 == 1'b1 ? 5'b11111 : 5'b00000;

endmodule
