module top(
    input Reset_Button,
    input clk_27,
    input pixclk,
    input hsync,
    input vsync,
    input  [7:0] pixdata,
    output clk_temp_75,

	output			LCD_CLK,
	output			LCD_HYNC,
	output			LCD_SYNC,
	output			LCD_DEN,
	output	[4:0]	LCD_R,
	output	[5:0]	LCD_G,
	output	[4:0]	LCD_B
    );

    Gowin_rPLL rPLL_75(
        .clkout(clk_temp_75),
        .clkin(clk_27)
    );
/*
    reg        PIXCLK565;
    reg [15:0] PIXDAT565;
    always @(posedge pixclk)
    begin
        if(~HREF) PIXCLK565 <= 0;
        else begin
            PIXCLK565 <= ~PIXCLK565;    // 1/2
            if(PIXCLK565) PIXDAT565[ 7:0] <= pixdata;
            else          PIXDAT565[15:8] <= pixdata;
        end
    end
*/
/*
    ekran	ek
	(
		.PixelClk	(	pixclk		),
		.LCD_DE		(	LCD_DEN	 	),
		.LCD_HSYNC	(	LCD_HYNC 	),
    	.LCD_VSYNC	(	LCD_SYNC 	),

		.LCD_B		(	LCD_B		),
		.LCD_G		(	LCD_G		),
		.LCD_R		(	LCD_R		),

        .pixdata    (   pixdata     ),
        .hsync      (   hsync       ),
        .vsync      (   vsync       ),
        .reset      (   Reset_Button       )
	);
*/
/*
    ekran1	ek1
	(
		.PixelClk	(	pixclk		),
		.LCD_DE		(	LCD_DEN	 	),
		.LCD_HSYNC	(	LCD_HYNC 	),
    	.LCD_VSYNC	(	LCD_SYNC 	),

		.LCD_B		(	LCD_B		),
		.LCD_G		(	LCD_G		),
		.LCD_R		(	LCD_R		),

        .pixdata    (   pixdata     ),
        .hsync      (   hsync       ),
        .vsync      (   vsync       ),
        .reset      (   Reset_Button       )
	);
*/
/*
    Binary_video	Bv
	(
		.PixelClk	(	pixclk		),
		.LCD_DE		(	LCD_DEN	 	),
		.LCD_HSYNC	(	LCD_HYNC 	),
    	.LCD_VSYNC	(	LCD_SYNC 	),

		.LCD_B		(	LCD_B		),
		.LCD_G		(	LCD_G		),
		.LCD_R		(	LCD_R		),

        .pixdata    (   pixdata     ),
        .hsync      (   hsync       ),
        .vsync      (   vsync       ),
        .reset      (   Reset_Button       )
	);
*/
    Morphology_3x3_video	Mv
	(
		.PixelClk	(	pixclk		),
		.LCD_DE		(	LCD_DEN	 	),
		.LCD_HSYNC	(	LCD_HYNC 	),
    	.LCD_VSYNC	(	LCD_SYNC 	),

		.LCD_B		(	LCD_B		),
		.LCD_G		(	LCD_G		),
		.LCD_R		(	LCD_R		),

        .pixdata    (   pixdata     ),
        .hsync      (   hsync       ),
        .vsync      (   vsync       ),
        .reset      (   Reset_Button       )
	);
	assign		LCD_CLK		=	pixclk;

endmodule
