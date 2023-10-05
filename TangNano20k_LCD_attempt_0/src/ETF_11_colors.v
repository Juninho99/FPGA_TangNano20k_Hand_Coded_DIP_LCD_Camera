module ETF_11_colors
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

	localparam      H_BackPorch = 16'd182;
	localparam      H_Pluse 	= 16'd1; 
	localparam      WidthPixel  = 16'd800; 
	localparam      H_FrontPorch= 16'd210;
    
    localparam      PixelForHS  =   WidthPixel + H_BackPorch + H_FrontPorch;  	
    localparam      LineForVS   =   HightPixel + V_BackPorch + V_FrontPorch; 
    
    reg         [15:0]  PixelCount;
    reg         [15:0]  LineCount;

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

    assign  LCD_R   =   PixelCount > H_BackPorch + 30 && PixelCount < H_BackPorch + 270 &&
                        LineCount > 40 && LineCount < 120 ? 5'b00000 : 
                        PixelCount > H_BackPorch + 280 && PixelCount < H_BackPorch + 520 &&
                        LineCount > 40 && LineCount < 120 ? 5'b00011 : 
                        PixelCount > H_BackPorch + 530 && PixelCount < H_BackPorch + 770 &&
                        LineCount > 40 && LineCount < 120 ? 5'b00110 : 

                        PixelCount > H_BackPorch + 30 && PixelCount < H_BackPorch + 110 &&
                        LineCount > 120 && LineCount < 200 ? 5'b01001 :
                        PixelCount > H_BackPorch + 360 && PixelCount < H_BackPorch + 440 &&
                        LineCount > 120 && LineCount < 200 ? 5'b01100 : 
                        PixelCount > H_BackPorch + 530 && PixelCount < H_BackPorch + 610 &&
                        LineCount > 120 && LineCount < 200 ? 5'b01111 : 

                        PixelCount > H_BackPorch + 30 && PixelCount < H_BackPorch + 190 &&
                        LineCount > 200 && LineCount < 280 ? 5'b10010 :
                        PixelCount > H_BackPorch + 360 && PixelCount < H_BackPorch + 440 &&
                        LineCount > 200 && LineCount < 280 ? 5'b01100 : 
                        PixelCount > H_BackPorch + 530 && PixelCount < H_BackPorch + 690 &&
                        LineCount > 200 && LineCount < 280 ? 5'b10101 :

                        PixelCount > H_BackPorch + 30 && PixelCount < H_BackPorch + 110 &&
                        LineCount > 280 && LineCount < 360 ? 5'b11000 :
                        PixelCount > H_BackPorch + 360 && PixelCount < H_BackPorch + 440 &&
                        LineCount > 280 && LineCount < 360 ? 5'b01100 : 
                        PixelCount > H_BackPorch + 530 && PixelCount < H_BackPorch + 610 &&
                        LineCount > 280 && LineCount < 360 ? 5'b11011 :

                        PixelCount > H_BackPorch + 30 && PixelCount < H_BackPorch + 270 &&
                        LineCount > 360 && LineCount < 440 ? 5'b11111 :
                        PixelCount > H_BackPorch + 360 && PixelCount < H_BackPorch + 440 &&
                        LineCount > 360 && LineCount < 440 ? 5'b01100 : 
                        PixelCount > H_BackPorch + 530 && PixelCount < H_BackPorch + 610 &&
                        LineCount > 360 && LineCount < 440 ? 5'b11011 : 5'b00000; 

    assign  LCD_B   =   PixelCount > H_BackPorch + 30 && PixelCount < H_BackPorch + 270 &&
                        LineCount > 40 && LineCount < 120 ? 5'b11111 : 
                        PixelCount > H_BackPorch + 280 && PixelCount < H_BackPorch + 520 &&
                        LineCount > 40 && LineCount < 120 ? 5'b11011 : 
                        PixelCount > H_BackPorch + 530 && PixelCount < H_BackPorch + 770 &&
                        LineCount > 40 && LineCount < 120 ? 5'b11000 : 

                        PixelCount > H_BackPorch + 30 && PixelCount < H_BackPorch + 110 &&
                        LineCount > 120 && LineCount < 200 ? 5'b10101 :
                        PixelCount > H_BackPorch + 360 && PixelCount < H_BackPorch + 440 &&
                        LineCount > 120 && LineCount < 200 ? 5'b10010 : 
                        PixelCount > H_BackPorch + 530 && PixelCount < H_BackPorch + 610 &&
                        LineCount > 120 && LineCount < 200 ? 5'b01111 : 

                        PixelCount > H_BackPorch + 30 && PixelCount < H_BackPorch + 190 &&
                        LineCount > 200 && LineCount < 280 ? 5'b01100 :
                        PixelCount > H_BackPorch + 360 && PixelCount < H_BackPorch + 440 &&
                        LineCount > 200 && LineCount < 280 ? 5'b10010 : 
                        PixelCount > H_BackPorch + 530 && PixelCount < H_BackPorch + 690 &&
                        LineCount > 200 && LineCount < 280 ? 5'b01001 :

                        PixelCount > H_BackPorch + 30 && PixelCount < H_BackPorch + 110 &&
                        LineCount > 280 && LineCount < 360 ? 5'b00110 :
                        PixelCount > H_BackPorch + 360 && PixelCount < H_BackPorch + 440 &&
                        LineCount > 280 && LineCount < 360 ? 5'b10010 : 
                        PixelCount > H_BackPorch + 530 && PixelCount < H_BackPorch + 610 &&
                        LineCount > 280 && LineCount < 360 ? 5'b00011 :

                        PixelCount > H_BackPorch + 30 && PixelCount < H_BackPorch + 270 &&
                        LineCount > 360 && LineCount < 440 ? 5'b00000 :
                        PixelCount > H_BackPorch + 360 && PixelCount < H_BackPorch + 440 &&
                        LineCount > 360 && LineCount < 440 ? 5'b10010 : 
                        PixelCount > H_BackPorch + 530 && PixelCount < H_BackPorch + 610 &&
                        LineCount > 360 && LineCount < 440 ? 5'b00011 : 5'b00000; 
    
    assign  LCD_G   =   PixelCount > H_BackPorch + 30 && PixelCount < H_BackPorch + 270 &&
                        LineCount > 40 && LineCount < 120 ? 6'b100100 : 
                        PixelCount > H_BackPorch + 280 && PixelCount < H_BackPorch + 520 &&
                        LineCount > 40 && LineCount < 120 ? 6'b101010 : 
                        PixelCount > H_BackPorch + 530 && PixelCount < H_BackPorch + 770 &&
                        LineCount > 40 && LineCount < 120 ? 6'b110000 : 

                        PixelCount > H_BackPorch + 30 && PixelCount < H_BackPorch + 110 &&
                        LineCount > 120 && LineCount < 200 ? 6'b110110 :
                        PixelCount > H_BackPorch + 360 && PixelCount < H_BackPorch + 440 &&
                        LineCount > 120 && LineCount < 200 ? 6'b111111 : 
                        PixelCount > H_BackPorch + 530 && PixelCount < H_BackPorch + 610 &&
                        LineCount > 120 && LineCount < 200 ? 6'b000000 : 

                        PixelCount > H_BackPorch + 30 && PixelCount < H_BackPorch + 190 &&
                        LineCount > 200 && LineCount < 280 ? 6'b000110 :
                        PixelCount > H_BackPorch + 360 && PixelCount < H_BackPorch + 440 &&
                        LineCount > 200 && LineCount < 280 ? 6'b111111 : 
                        PixelCount > H_BackPorch + 530 && PixelCount < H_BackPorch + 690 &&
                        LineCount > 200 && LineCount < 280 ? 6'b001100 :

                        PixelCount > H_BackPorch + 30 && PixelCount < H_BackPorch + 110 &&
                        LineCount > 280 && LineCount < 360 ? 6'b010010 :
                        PixelCount > H_BackPorch + 360 && PixelCount < H_BackPorch + 440 &&
                        LineCount > 280 && LineCount < 360 ? 6'b111111 : 
                        PixelCount > H_BackPorch + 530 && PixelCount < H_BackPorch + 610 &&
                        LineCount > 280 && LineCount < 360 ? 6'b011000 :

                        PixelCount > H_BackPorch + 30 && PixelCount < H_BackPorch + 270 &&
                        LineCount > 360 && LineCount < 440 ? 6'b011110 :
                        PixelCount > H_BackPorch + 360 && PixelCount < H_BackPorch + 440 &&
                        LineCount > 360 && LineCount < 440 ? 6'b111111 : 
                        PixelCount > H_BackPorch + 530 && PixelCount < H_BackPorch + 610 &&
                        LineCount > 360 && LineCount < 440 ? 6'b011000 : 6'b000000;

endmodule
