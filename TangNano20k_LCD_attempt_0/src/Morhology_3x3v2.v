module Morphology_3x3v2
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

    logic [17:0] addrRead1;
    logic [17:0] addrRead2;
    logic [17:0] addrRead3;
    logic [17:0] addrWrite;
    logic endWrite;
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
        output_pixel = 1'b0;
        addrRead1 = 18'b1;
        addrRead2 = 18'd631;
        addrRead3 = 18'd1261;

        addrWrite = 18'b0;
        endWrite = 1'b0;

        pixel1 = 1'b0;
        pixel2 = 1'b0;
        pixel3 = 1'b0;
        pixel4 = 1'b0;
        pixel5 = 1'b0;
        pixel6 = 1'b0;
        pixel7 = 1'b0;
        pixel8 = 1'b0;
        pixel9 = 1'b0;
	end

    logic   dout_1;
    logic   dout_2;
    logic   dout_3;

    Gowin_SDPB u_sdpb1(
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

    Gowin_SDPB u_sdpb2(
        .dout(dout_2),
        .clka(PixelClk),
        .cea(1'b1),
        .reseta(1'b0),
        .clkb(PixelClk),
        .ceb(1'b1),
        .resetb(1'b0),
        .oce(1'b1),
        .ada(18'b0),
        .din(output_pixel),
        .adb(addrRead2)
    );

    Gowin_SDPB u_sdpb3(
        .dout(dout_3),
        .clka(PixelClk),
        .cea(1'b1),
        .reseta(1'b0),
        .clkb(PixelClk),
        .ceb(1'b1),
        .resetb(1'b0),
        .oce(1'b1),
        .ada(18'b0),
        .din(output_pixel),
        .adb(addrRead3)
    );  

    always @(posedge PixelClk) begin
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

        addrRead1 = (addrRead1 == 18'd244441) ? 18'd1 :
                    (endWrite == 1'b1) ? ((LineCount + 18'd345)%ImageHeight)*ImageWidth + ((PixelCount + 18'd501)%ImageWidth) :
                                            addrRead1 + 18'd1; //244441 = 630*(390-2) + 1
        endWrite = (addrRead1 == 18'd244441) ? 18'b1 : endWrite;

        addrWrite = (endWrite == 1'b1) ? 18'd0 : addrWrite + 18'd0; // + 18'd0 za početnu sliku bez ikakve morfologije
        addrRead2 = (endWrite == 1'b1) ? 18'd0 : addrRead2 + 18'd1;
        addrRead3 = (endWrite == 1'b1) ? 18'd0 : addrRead3 + 18'd1;

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

    //assign output_pixel = pixel1 & pixel2 & pixel3 & pixel4 & pixel5 & pixel6 & pixel7 & pixel8 & pixel9; //erozija
    assign output_pixel = pixel1 | pixel2 | pixel3 | pixel4 | pixel5 | pixel6 | pixel7 | pixel8 | pixel9;   //dilatacija

    assign  LCD_HSYNC   = (( PixelCount >= H_Pluse)&&( PixelCount <= (PixelForHS-H_FrontPorch))) ? 1'b0 : 1'b1;
	assign  LCD_VSYNC   = ((( LineCount  >= V_Pluse )&&( LineCount  <= (LineForVS-V_FrontPorch) )) ) ? 1'b0 : 1'b1;
    assign  LCD_DE      = ( ( PixelCount >= H_BackPorch )&&
                            ( PixelCount <= PixelForHS-H_FrontPorch ) &&
                            ( LineCount >= V_BackPorch ) &&
                            ( LineCount <= LineForVS-V_FrontPorch ))  ? 1'b1 : 1'b0;

    assign LCD_R    =   PixelCount > H_BackPorch + 17'd88 && PixelCount < H_BackPorch + 17'd717 &&
                        LineCount > 17'd45 && LineCount < 17'd435 && dout_1 == 1'b1 ? 5'b11111 : 5'b00000;

    assign LCD_G    =   PixelCount > H_BackPorch + 17'd88 && PixelCount < H_BackPorch + 17'd717 &&
                        LineCount > 17'd45 && LineCount < 17'd435 && dout_1 == 1'b1 ? 6'b111111 : 6'b000000;

    assign LCD_B    =   PixelCount > H_BackPorch + 17'd88 && PixelCount < H_BackPorch + 17'd717 &&
                        LineCount > 17'd45 && LineCount < 17'd435 && dout_1 == 1'b1 ? 5'b11111 : 5'b00000;

endmodule
