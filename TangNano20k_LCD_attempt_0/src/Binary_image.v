module Binary_image
(
    input                   PixelClk,
    output                  LCD_DE,
    output                  LCD_HSYNC,
    output                  LCD_VSYNC,

	output          [4:0]   LCD_B,
	output          [5:0]   LCD_G,
	output          [4:0]   LCD_R
);

	localparam      V_BackPorch = 19'd0; //6
	localparam      V_Pluse 	= 19'd5; 
	localparam      HightPixel  = 19'd480;
	localparam      V_FrontPorch= 19'd45; //62

	localparam      H_BackPorch = 19'd46;
	localparam      H_Pluse 	= 19'd1; 
	localparam      WidthPixel  = 19'd800; 
	localparam      H_FrontPorch= 19'd210;
    
    localparam      PixelForHS  =   WidthPixel + H_BackPorch + H_FrontPorch;  	
    localparam      LineForVS   =   HightPixel + V_BackPorch + V_FrontPorch;

    localparam      ImageWidth  = 10'd800;
    localparam      ImageHeight = 10'd480;
    
    reg         [18:0]  PixelCount;
    reg         [18:0]  LineCount;
    logic               dout_o;

    Gowin_pROM3 prom1(
        .dout(dout_o),
        .clk(PixelClk),
        .oce(1'b1),
        .ce(1'b1),
        .reset(1'b0),
        .ad((LineCount%ImageHeight)*ImageWidth + ((PixelCount - 19'd44)%ImageWidth))
    );  // - 19'd44 --> H_BackPorch + 2 pixels

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
    end

    assign  LCD_HSYNC   = (( PixelCount >= H_Pluse)&&( PixelCount <= (PixelForHS-H_FrontPorch))) ? 1'b0 : 1'b1;
	assign  LCD_VSYNC   = ((( LineCount  >= V_Pluse )&&( LineCount  <= (LineForVS-V_FrontPorch) )) ) ? 1'b0 : 1'b1;
    assign  LCD_DE      = ( ( PixelCount >= H_BackPorch )&&
                            ( PixelCount <= PixelForHS-H_FrontPorch ) &&
                            ( LineCount >= V_BackPorch ) &&
                            ( LineCount <= LineForVS-V_FrontPorch ))  ? 1'b1 : 1'b0;

    assign LCD_R    = (dout_o == 1'b0) ? 5'b00000 : 5'b11111;

    assign LCD_G    = (dout_o == 1'b0) ? 6'b000000 : 6'b111111;

    assign LCD_B    = (dout_o == 1'b0) ? 5'b00000 : 5'b11111;

endmodule
