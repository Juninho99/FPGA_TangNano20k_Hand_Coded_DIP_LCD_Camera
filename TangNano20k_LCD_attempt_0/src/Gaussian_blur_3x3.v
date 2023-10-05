module Gaussian_blur_3x3
(
    input                   PixelClk,
    output                  LCD_DE,
    output                  LCD_HSYNC,
    output                  LCD_VSYNC,

	output          [4:0]   LCD_B,
	output          [5:0]   LCD_G,
	output          [4:0]   LCD_R
);

	localparam      V_BackPorch = 16'd0; //6
	localparam      V_Pluse 	= 16'd5; 
	localparam      HightPixel  = 16'd480;
	localparam      V_FrontPorch= 16'd45; //62

	localparam      H_BackPorch = 16'd46;
	localparam      H_Pluse 	= 16'd1; 
	localparam      WidthPixel  = 16'd800; 
	localparam      H_FrontPorch= 16'd210;
    
    localparam      PixelForHS  =   WidthPixel + H_BackPorch + H_FrontPorch;  	
    localparam      LineForVS   =   HightPixel + V_BackPorch + V_FrontPorch;

    localparam      ImageWidth  = 10'd252;
    localparam      ImageHeight = 10'd156;
    
    reg         [15:0]  PixelCount;
    reg         [15:0]  LineCount;

    logic [15:0] addrRead1;
    logic [15:0] addrRead2;
    logic [15:0] addrRead3;
    logic [15:0] addrWrite;
    logic endWrite;
    logic [7:0] output_pixel;

    logic [7:0] pixel1;
	logic [7:0] pixel2;
	logic [7:0] pixel3;
    logic [7:0] pixel4;
	logic [7:0] pixel5;
	logic [7:0] pixel6;
    logic [7:0] pixel7;
	logic [7:0] pixel8;
	logic [7:0] pixel9;

    initial begin
        output_pixel = 8'b0;
        addrRead1 = 16'b1;
        addrRead2 = 16'd253;
        addrRead3 = 16'd505;

        addrWrite = 16'b0;
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
	end

    logic [7:0] dout_1;
    logic [7:0] dout_2;
    logic [7:0] dout_3;

    Gowin_SDPB3 u_sdpb1(
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

    Gowin_SDPB3 u_sdpb2(
        .dout(dout_2),
        .clka(PixelClk),
        .cea(1'b1),
        .reseta(1'b0),
        .clkb(PixelClk),
        .ceb(1'b1),
        .resetb(1'b0),
        .oce(1'b1),
        .ada(16'b0),
        .din(output_pixel),
        .adb(addrRead2)
    );

    Gowin_SDPB3 u_sdpb3(
        .dout(dout_3),
        .clka(PixelClk),
        .cea(1'b1),
        .reseta(1'b0),
        .clkb(PixelClk),
        .ceb(1'b1),
        .resetb(1'b0),
        .oce(1'b1),
        .ada(16'b0),
        .din(output_pixel),
        .adb(addrRead3)
    );  

    always @(posedge PixelClk) begin
        if(  PixelCount  ==  PixelForHS) begin
            PixelCount      <=  16'b0;
            LineCount       <=  LineCount + 1'b1;
            end
        else if(  LineCount  == LineForVS  ) begin
            LineCount       <=  16'b0;
            PixelCount      <=  16'b0;
            end
        else
            PixelCount      <=  PixelCount + 1'b1;

        addrRead1 = (addrRead1 == 16'd38808) ? 16'd1 : //addrRead1 + 15'd1;
                    (endWrite == 1'b1) ? ((LineCount + 16'd150)%ImageHeight)*ImageWidth + ((PixelCount + 16'd185)%ImageWidth) : //za lcd
                                            addrRead1 + 16'd1; //38808 = 252*(156-2) + 1; 201 = 222 - ((800-222)/2 - 222) + H_BackPorch
        endWrite = (addrRead1 == 16'd38808) ? 16'd1 : endWrite;                         //105 = 138 - ((480-138)/2 - 138)*/

        addrWrite = (endWrite == 1'b1) ? 16'd0 : addrWrite + 16'd0; // + 15'd0 za početnu sliku bez gausa
        addrRead2 = (endWrite == 1'b1) ? 16'd0 : addrRead2 + 16'd1;
        addrRead3 = (endWrite == 1'b1) ? 16'd0 : addrRead3 + 16'd1;

        pixel3 = pixel2;
        pixel2 = pixel1;
		pixel1 = dout_1;

        pixel6 = pixel5;
        pixel5 = pixel4;
        pixel4 = dout_2;

        pixel9 = pixel8;
        pixel8 = pixel7;
		pixel7 = dout_3;
    end

    assign output_pixel = (pixel1 >> 4) + (pixel2 >> 3) + (pixel3 >> 4) + (pixel4 >> 3) + (pixel5 >> 2) + (pixel6 >> 3) + (pixel7 >> 4) + (pixel8 >> 3) + (pixel9 >> 4);

    assign  LCD_HSYNC   = (( PixelCount >= H_Pluse)&&( PixelCount <= (PixelForHS-H_FrontPorch))) ? 1'b0 : 1'b1;
	assign  LCD_VSYNC   = ((( LineCount  >= V_Pluse )&&( LineCount  <= (LineForVS-V_FrontPorch) )) ) ? 1'b0 : 1'b1;
    assign  LCD_DE      = ( ( PixelCount >= H_BackPorch )&&
                            ( PixelCount <= PixelForHS-H_FrontPorch ) &&
                            ( LineCount >= V_BackPorch ) &&
                            ( LineCount <= LineForVS-V_FrontPorch ))  ? 1'b1 : 1'b0;

    assign LCD_R    =   PixelCount > H_BackPorch + 16'd274 && PixelCount < H_BackPorch + 16'd526 &&
                        LineCount > 16'd162 && LineCount < 16'd318 ? dout_1 >> 3 : 5'b00000;

    assign LCD_G    =   PixelCount > H_BackPorch + 16'd274 && PixelCount < H_BackPorch + 16'd526 &&
                        LineCount > 16'd162 && LineCount < 16'd318 ? dout_1 >> 2 : 6'b000000;

    assign LCD_B    =   PixelCount > H_BackPorch + 16'd274 && PixelCount < H_BackPorch + 16'd526 &&
                        LineCount > 16'd162 && LineCount < 16'd318 ? dout_1 >> 3 : 5'b00000;
/*
    assign LCD_R    =   dout_1 >> 3;

    assign LCD_G    =   dout_1 >> 2;

    assign LCD_B    =   dout_1 >> 3;*/

endmodule
