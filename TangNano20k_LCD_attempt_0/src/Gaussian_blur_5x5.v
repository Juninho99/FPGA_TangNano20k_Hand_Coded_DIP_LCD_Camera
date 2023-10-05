module Gaussian_blur_5x5
(
    input                   PixelClk,
    output                  LCD_DE,
    output                  LCD_HSYNC,
    output                  LCD_VSYNC,

	output          [4:0]   LCD_B,
	output          [5:0]   LCD_G,
	output          [4:0]   LCD_R
);

	localparam      V_BackPorch = 15'd0; //6
	localparam      V_Pluse 	= 15'd5; 
	localparam      HightPixel  = 15'd480;
	localparam      V_FrontPorch= 15'd45; //62

	localparam      H_BackPorch = 15'd46;
	localparam      H_Pluse 	= 15'd1; 
	localparam      WidthPixel  = 15'd800; 
	localparam      H_FrontPorch= 15'd210;
    
    localparam      PixelForHS  =   WidthPixel + H_BackPorch + H_FrontPorch;  	
    localparam      LineForVS   =   HightPixel + V_BackPorch + V_FrontPorch;

    localparam      ImageWidth  = 10'd172;
    localparam      ImageHeight = 10'd106;
    
    reg         [14:0]  PixelCount;
    reg         [14:0]  LineCount;

    logic [14:0] addrRead1;
    logic [14:0] addrRead2;
    logic [14:0] addrRead3;
    logic [14:0] addrRead4;
    logic [14:0] addrRead5;
    logic [14:0] addrWrite;
    logic endWrite;
    logic [15:0] output_pixel;

    logic [7:0] pixel1;
	logic [7:0] pixel2;
	logic [7:0] pixel3;
    logic [7:0] pixel4;
	logic [7:0] pixel5;
	logic [7:0] pixel6;
    logic [7:0] pixel7;
	logic [7:0] pixel8;
	logic [7:0] pixel9;
    logic [7:0] pixel10;
    logic [7:0] pixel11;
	logic [7:0] pixel12;
	logic [7:0] pixel13;
    logic [7:0] pixel14;
	logic [7:0] pixel15;
	logic [7:0] pixel16;
    logic [7:0] pixel17;
	logic [7:0] pixel18;
	logic [7:0] pixel19;
    logic [7:0] pixel20;
    logic [7:0] pixel21;
	logic [7:0] pixel22;
	logic [7:0] pixel23;
    logic [7:0] pixel24;
	logic [7:0] pixel25;

    initial begin
        output_pixel = 16'b0;
        addrRead1 = 15'b1;
        addrRead2 = 15'd173;
        addrRead3 = 15'd345;
        addrRead4 = 15'd517;
        addrRead5 = 15'd689;

        addrWrite = 15'b0;
        endWrite = 1'b0;

        pixel1 = 8'b0;
        pixel2 = 8'b0;
        pixel3 = 8'b0;
        pixel4 = 8'b0;
        pixel5 = 8'b0;
        pixel6 = 8'b0;
        pixel7 = 8'b0;
        pixel8 = 8'b0;
        pixel9 = 8'b0;
        pixel10 = 8'b0;
        pixel11 = 8'b0;
        pixel12 = 8'b0;
        pixel13 = 8'b0;
        pixel14 = 8'b0;
        pixel15 = 8'b0;
        pixel16 = 8'b0;
        pixel17 = 8'b0;
        pixel18 = 8'b0;
        pixel19 = 8'b0;
        pixel20 = 8'b0;
        pixel21 = 8'b0;
        pixel22 = 8'b0;
        pixel23 = 8'b0;
        pixel24 = 8'b0;
        pixel25 = 8'b0;
	end

    logic [7:0] dout_1;
    logic [7:0] dout_2;
    logic [7:0] dout_3;
    logic [7:0] dout_4;
    logic [7:0] dout_5;

    localparam factor4 = 8'd4;
    localparam factor6 = 8'd6;
    localparam factor16 = 8'd16;
    localparam factor24 = 8'd24;
    localparam factor36 = 8'd36;
    localparam divider256 = 9'd256;

    Gowin_SDPB4 u_sdpb1(
        .dout(dout_1),
        .clka(PixelClk),
        .cea(1'b1),
        .reseta(1'b0),
        .clkb(PixelClk),
        .ceb(1'b1),
        .resetb(1'b0),
        .oce(1'b1),
        .ada(addrWrite),
        .din(output_pixel),
        .adb(addrRead1)
    );

    Gowin_SDPB4 u_sdpb2(
        .dout(dout_2),
        .clka(PixelClk),
        .cea(1'b1),
        .reseta(1'b0),
        .clkb(PixelClk),
        .ceb(1'b1),
        .resetb(1'b0),
        .oce(1'b1),
        .ada(15'b0),
        .din(output_pixel),
        .adb(addrRead2)
    );

    Gowin_SDPB4 u_sdpb3(
        .dout(dout_3),
        .clka(PixelClk),
        .cea(1'b1),
        .reseta(1'b0),
        .clkb(PixelClk),
        .ceb(1'b1),
        .resetb(1'b0),
        .oce(1'b1),
        .ada(15'b0),
        .din(output_pixel),
        .adb(addrRead3)
    ); 

    Gowin_SDPB4 u_sdpb4(
        .dout(dout_4),
        .clka(PixelClk),
        .cea(1'b1),
        .reseta(1'b0),
        .clkb(PixelClk),
        .ceb(1'b1),
        .resetb(1'b0),
        .oce(1'b1),
        .ada(15'b0),
        .din(output_pixel),
        .adb(addrRead4)
    ); 

    Gowin_SDPB4 u_sdpb5(
        .dout(dout_5),
        .clka(PixelClk),
        .cea(1'b1),
        .reseta(1'b0),
        .clkb(PixelClk),
        .ceb(1'b1),
        .resetb(1'b0),
        .oce(1'b1),
        .ada(15'b0),
        .din(output_pixel),
        .adb(addrRead5)
    ); 

    always @(posedge PixelClk) begin
        if(  PixelCount  ==  PixelForHS) begin
            PixelCount      <=  15'b0;
            LineCount       <=  LineCount + 1'b1;
            end
        else if(  LineCount  == LineForVS  ) begin
            LineCount       <=  15'b0;
            PixelCount      <=  15'b0;
            end
        else
            PixelCount      <=  PixelCount + 1'b1;

        addrRead1 = (addrRead1 == 15'd17889) ? 15'd1 : 
                    (endWrite == 1'b1) ? ((LineCount + 15'd25)%ImageHeight)*ImageWidth + ((PixelCount - 15'd12)%ImageWidth) : //za lcd, zakomentarisati ovu liniju ako se ne želi ispis na ekranu, tj. ako se žele gledati frekvencije
                                            addrRead1 + 15'd1; //17889 = 172*(106-2) + 1; 201 = 222 - ((800-222)/2 - 222) - H_BackPorch
        endWrite = (addrRead1 == 15'd17889) ? 15'd1 : endWrite;                         //105 = 138 - ((480-138)/2 - 138)

        addrWrite = (endWrite == 1'b1) ? 15'd0 : addrWrite + 15'd1; // + 15'd0 za početnu sliku bez gausa
        addrRead2 = (endWrite == 1'b1) ? 15'd0 : addrRead2 + 15'd1;
        addrRead3 = (endWrite == 1'b1) ? 15'd0 : addrRead3 + 15'd1;
        addrRead4 = (endWrite == 1'b1) ? 15'd0 : addrRead2 + 15'd1;
        addrRead5 = (endWrite == 1'b1) ? 15'd0 : addrRead3 + 15'd1;

        pixel5 = pixel4;
        pixel4 = pixel3;
        pixel3 = pixel2;
        pixel2 = pixel1;
		pixel1 = dout_1;

        pixel10 = pixel9;
        pixel9 = pixel8;
        pixel8 = pixel7;
        pixel7 = pixel6;
        pixel6 = dout_2;

        pixel15 = pixel14;
        pixel14 = pixel13;
        pixel13 = pixel12;
        pixel12 = pixel11;
		pixel11 = dout_3;

        pixel20 = pixel19;
        pixel19 = pixel18;
        pixel18 = pixel17;
        pixel17 = pixel16;
		pixel16 = dout_4;

        pixel25 = pixel24;
        pixel24 = pixel23;
        pixel23 = pixel22;
        pixel22 = pixel21;
		pixel21 = dout_5;
    end

    //assign output_pixel = (pixel1 >> 4) + (pixel2 >> 3) + (pixel3 >> 4) + (pixel4 >> 3) + (pixel5 >> 2) + (pixel6 >> 3) + (pixel7 >> 4) + (pixel8 >> 3) + (pixel9 >> 4);
    assign output_pixel = (pixel1 + pixel2*factor4 + pixel3*factor6 + pixel4*factor4 + pixel5 + pixel6*factor4 + pixel7*factor16 + pixel8*factor24 + pixel9*factor16 + pixel10*factor4 + pixel11*factor6 + pixel12*factor24 + pixel13*factor36 + pixel14*factor24 + pixel15*factor6 + pixel16*factor4 + pixel17*factor16 + pixel18*factor24 + pixel19*factor16 + pixel20*factor4 + pixel21 + pixel22*factor4 + pixel23*factor6 + pixel24*factor4 + pixel25)/divider256;
    //assign output_pixel = ((pixel11*factor6) >> 1) + ((pixel12*factor24) >> 1) + ((pixel13*factor36) >> 1) + ((pixel14*factor24) >> 1) + ((pixel15*factor6) >> 1);


    assign  LCD_HSYNC   = (( PixelCount >= H_Pluse)&&( PixelCount <= (PixelForHS-H_FrontPorch))) ? 1'b0 : 1'b1;
	assign  LCD_VSYNC   = ((( LineCount  >= V_Pluse )&&( LineCount  <= (LineForVS-V_FrontPorch) )) ) ? 1'b0 : 1'b1;
    assign  LCD_DE      = ( ( PixelCount >= H_BackPorch )&&
                            ( PixelCount <= PixelForHS-H_FrontPorch ) &&
                            ( LineCount >= V_BackPorch ) &&
                            ( LineCount <= LineForVS-V_FrontPorch ))  ? 1'b1 : 1'b0;

    assign LCD_R    =   PixelCount > H_BackPorch + 15'd314 && PixelCount < H_BackPorch + 15'd486 &&
                        LineCount > 15'd187 && LineCount < 15'd293 ? dout_1 >> 3 : 5'b00000;

    assign LCD_G    =   PixelCount > H_BackPorch + 15'd314 && PixelCount < H_BackPorch + 15'd486 &&
                        LineCount > 15'd187 && LineCount < 15'd293 ? dout_1 >> 2 : 6'b000000;

    assign LCD_B    =   PixelCount > H_BackPorch + 15'd314 && PixelCount < H_BackPorch + 15'd486 &&
                        LineCount > 15'd187 && LineCount < 15'd293 ? dout_1 >> 3 : 5'b00000;
/*
    assign LCD_R    =   dout_1 >> 3;

    assign LCD_G    =   dout_1 >> 2;

    assign LCD_B    =   dout_1 >> 3;*/

endmodule
