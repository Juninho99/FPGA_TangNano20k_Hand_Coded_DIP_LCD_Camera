module Sobel_edge_detection_3x3
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

    localparam      ImageWidth  = 10'd222;
    localparam      ImageHeight = 10'd138;

    localparam      threshold   = 8'd17;
    
    reg         [14:0]  PixelCount;
    reg         [14:0]  LineCount;

    logic [14:0] addrRead1;
    logic [14:0] addrRead2;
    logic [14:0] addrRead3;
    logic [14:0] addrWrite;
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

    logic [7:0] f5;
    logic [7:0] f6;
    logic [7:0] f7;
    logic [7:0] f8;

    initial begin
        output_pixel = 8'b0;
        addrRead1 = 15'b1;
        addrRead2 = 15'd223;
        addrRead3 = 15'd445;

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
	end

    logic [7:0] dout_1;
    logic [7:0] dout_2;
    logic [7:0] dout_3;

    Gowin_SDPB5 u_sdpb1(
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

    Gowin_SDPB5 u_sdpb2(
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

    Gowin_SDPB5 u_sdpb3(
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

        addrRead1 = (addrRead1 == 15'd30193) ? 15'd1 : //addrRead1 + 15'd1;
                    (endWrite == 1'b1) ? ((LineCount + 15'd105)%ImageHeight)*ImageWidth + ((PixelCount + 15'd109)%ImageWidth) : //za lcd
                                            addrRead1 + 15'd1; //30193 = 222*(138-2) + 1; 109 = 222 - ((800-222)/2 - 222) - H_BackPorch
        endWrite = (addrRead1 == 15'd30193) ? 15'd1 : endWrite;                         //105 = 138 - ((480-138)/2 - 138)*/

        addrWrite = (endWrite == 1'b1) ? 15'd0 : addrWrite + 15'd0; // + 15'd0 za početnu sliku bez gausa
        addrRead2 = (endWrite == 1'b1) ? 15'd0 : addrRead2 + 15'd1;
        addrRead3 = (endWrite == 1'b1) ? 15'd0 : addrRead3 + 15'd1;

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
/*
    assign f5 = (pixel6 + pixel8 + pixel9) >> 2;
    assign f6 = (pixel1 + pixel2 + pixel4) >> 2;
    assign f7 = (pixel4 + pixel7 + pixel8) >> 2;
    assign f8 = (pixel2 + pixel3 + pixel6) >> 2;
*/

    assign f5 = (pixel6 >> 2) + (pixel8 >> 2) + (pixel9 >> 2);
    assign f6 = (pixel1 >> 2) + (pixel2 >> 2) + (pixel4 >> 2);
    assign f7 = (pixel4 >> 2) + (pixel7 >> 2) + (pixel8 >> 2);
    assign f8 = (pixel2 >> 2) + (pixel3 >> 2) + (pixel6 >> 2);


    assign output_pixel =   ((f5 >= f6 && f5 - f6 < threshold) || (f6 >= f5 && f6 - f5 < threshold)) &&
                            ((f7 >= f8 && f7 - f8 < threshold) || (f8 >= f7 && f8 - f7 < threshold)) ? 8'b00000000 : 8'b11111111;

/*
    assign output_pixel =   ((((pixel6 + pixel8 + pixel9) >> 2) >= ((pixel1 + pixel2 + pixel4) >> 2) && ((pixel6 + pixel8 + pixel9) >> 2) - ((pixel1 + pixel2 + pixel4) >> 2) < threshold) || (((pixel1 + pixel2 + pixel4) >> 2) >= ((pixel6 + pixel8 + pixel9) >> 2) && ((pixel1 + pixel2 + pixel4) >> 2) - ((pixel6 + pixel8 + pixel9) >> 2) < threshold)) &&
                            ((((pixel4 + pixel7 + pixel8) >> 2) >= ((pixel2 + pixel3 + pixel6) >> 2) && ((pixel4 + pixel7 + pixel8) >> 2) - ((pixel2 + pixel3 + pixel6) >> 2) < threshold) || (((pixel2 + pixel3 + pixel6) >> 2) >= ((pixel4 + pixel7 + pixel8) >> 2) && ((pixel2 + pixel3 + pixel6) >> 2) - ((pixel4 + pixel7 + pixel8) >> 2) < threshold)) ? 8'b00000000 : 8'b11111111;
*/
    //assign  LCD_HSYNC   = (( PixelCount >= H_Pluse)&&( PixelCount <= (PixelForHS-H_FrontPorch))) ? 1'b0 : 1'b1;
	//assign  LCD_VSYNC   = ((( LineCount  >= V_Pluse )&&( LineCount  <= (LineForVS-V_FrontPorch) )) ) ? 1'b0 : 1'b1;
    assign  LCD_DE      = ( ( PixelCount >= H_BackPorch )&&
                            ( PixelCount <= PixelForHS-H_FrontPorch ) &&
                            ( LineCount >= V_BackPorch ) &&
                            ( LineCount <= LineForVS-V_FrontPorch ))  ? 1'b1 : 1'b0;

    assign LCD_R    =   PixelCount > H_BackPorch + 16'd289 && PixelCount < H_BackPorch + 16'd511 &&
                        LineCount > 16'd171 && LineCount < 16'd307 ? dout_1 >> 3 : 5'b00000;

    assign LCD_G    =   PixelCount > H_BackPorch + 16'd289 && PixelCount < H_BackPorch + 16'd511 &&
                        LineCount > 16'd171 && LineCount < 16'd307 ? dout_1 >> 2 : 6'b000000;

    assign LCD_B    =   PixelCount > H_BackPorch + 16'd289 && PixelCount < H_BackPorch + 16'd511 &&
                        LineCount > 16'd171 && LineCount < 16'd307 ? dout_1 >> 3 : 5'b00000;
/*
    assign LCD_R    =   dout_1 >> 3;

    assign LCD_G    =   dout_1 >> 2;

    assign LCD_B    =   dout_1 >> 3;*/

endmodule
