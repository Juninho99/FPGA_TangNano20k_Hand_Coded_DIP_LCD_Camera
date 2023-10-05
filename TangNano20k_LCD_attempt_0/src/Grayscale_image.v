module Grayscale_image
(
    input                   PixelClk,
    output                  LCD_DE,
    output                  LCD_HSYNC,
    output                  LCD_VSYNC,

	output          [4:0]   LCD_B,
	output          [5:0]   LCD_G,
	output          [4:0]   LCD_R
);

	localparam      V_BackPorch = 17'd0; //6
	localparam      V_Pluse 	= 17'd5; 
	localparam      HightPixel  = 17'd480;
	localparam      V_FrontPorch= 17'd45; //62

	localparam      H_BackPorch = 17'd46;
	localparam      H_Pluse 	= 17'd1; 
	localparam      WidthPixel  = 17'd800; 
	localparam      H_FrontPorch= 17'd210;
    
    localparam      PixelForHS  =   WidthPixel + H_BackPorch + H_FrontPorch;  	
    localparam      LineForVS   =   HightPixel + V_BackPorch + V_FrontPorch;

    localparam      ImageWidth  = 10'd390;
    localparam      ImageHeight = 10'd240;
    
    reg         [16:0]  PixelCount;
    reg         [16:0]  LineCount;
    reg         [7:0]   dout_o;

    Gowin_pROM4 prom1(
        .dout(dout_o),
        .clk(PixelClk),
        .oce(1'b1),
        .ce(1'b1),
        .reset(1'b0),
        .ad(((LineCount + 17'd120)%ImageHeight)*ImageWidth + ((PixelCount + 17'd141)%ImageWidth))
    );  // + 17'd120 and + 17'd185 - 17'd44 --> to center the images on the screen

    always @(posedge PixelClk)begin
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
    end

    assign  LCD_HSYNC   = (( PixelCount >= H_Pluse)&&( PixelCount <= (PixelForHS-H_FrontPorch))) ? 1'b0 : 1'b1;
	assign  LCD_VSYNC   = ((( LineCount  >= V_Pluse )&&( LineCount  <= (LineForVS-V_FrontPorch) )) ) ? 1'b0 : 1'b1;
    assign  LCD_DE      = ( ( PixelCount >= H_BackPorch )&&
                            ( PixelCount <= PixelForHS-H_FrontPorch ) &&
                            ( LineCount >= V_BackPorch ) &&
                            ( LineCount <= LineForVS-V_FrontPorch ))  ? 1'b1 : 1'b0;

    assign LCD_R    =   PixelCount > H_BackPorch + 17'd205 && PixelCount < H_BackPorch + 17'd595 &&
                        LineCount > 17'd120 && LineCount < 17'd360 ? dout_o >> 3 : 5'b00000;

    assign LCD_G    =   PixelCount > H_BackPorch + 17'd205 && PixelCount < H_BackPorch + 17'd595 &&
                        LineCount > 17'd120 && LineCount < 17'd360 ? dout_o >> 2 : 6'b000000;

    assign LCD_B    =   PixelCount > H_BackPorch + 17'd205 && PixelCount < H_BackPorch + 17'd595 &&
                        LineCount > 17'd120 && LineCount < 17'd360 ? dout_o >> 3 : 5'b00000;
endmodule
