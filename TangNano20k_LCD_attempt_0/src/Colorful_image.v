module Colorful_image
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

    localparam      ImageWidth  = 10'd284;
    localparam      ImageHeight = 10'd176;
    
    reg         [15:0]  PixelCount;
    reg         [15:0]  LineCount;
    reg         [15:0]   dout_o;

    Gowin_pROM5 prom1(
        .dout(dout_o),
        .clk(PixelClk),
        .oce(1'b1),
        .ce(1'b1),
        .reset(1'b0),
        .ad(((LineCount + 16'd24)%ImageHeight)*ImageWidth + ((PixelCount - 16'd18)%ImageWidth))
    );  // + 16'd24 and + 16'd26 - 16'd44 --> to center the images on the screen

    always @(posedge PixelClk)begin
        if(  PixelCount  ==  PixelForHS ) begin
            PixelCount      <=  16'b0;
            LineCount       <=  LineCount + 1'b1;
            end
        else if(  LineCount  == LineForVS  ) begin
            LineCount       <=  16'b0;
            PixelCount      <=  16'b0;
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

    assign LCD_R    =   PixelCount > H_BackPorch + 17'd258 && PixelCount < H_BackPorch + 17'd542 &&
                        LineCount > 17'd152 && LineCount < 17'd328 ? dout_o[15:11] : 5'b00000;

    assign LCD_G    =   PixelCount > H_BackPorch + 17'd258 && PixelCount < H_BackPorch + 17'd542 &&
                        LineCount > 17'd152 && LineCount < 17'd328 ? dout_o[10:5] : 6'b000000;

    assign LCD_B    =   PixelCount > H_BackPorch + 17'd258 && PixelCount < H_BackPorch + 17'd542 &&
                        LineCount > 17'd152 && LineCount < 17'd328 ? dout_o[4:0] : 5'b00000;

endmodule
