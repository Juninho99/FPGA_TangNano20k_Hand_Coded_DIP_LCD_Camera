module top3 (
	input logic	clk_27,

    output logic output_pixel
);

	logic clk_out;
    logic [17:0] addrRead1;
    logic [17:0] addrRead2;
    logic [17:0] addrRead3;
    logic [17:0] addrRead4;
    logic [17:0] addrRead5;
    logic [17:0] addrWrite;
    logic endWrite;

    logic pixel1;
	logic pixel2;
	logic pixel3;
    logic pixel4;
	logic pixel5;
	logic pixel6;
    logic pixel7;
	logic pixel8;
	logic pixel9;
    logic pixel10;
	logic pixel11;
	logic pixel12;
    logic pixel13;
	logic pixel14;
	logic pixel15;
	logic pixel16;
    logic pixel17;
	logic pixel18;
	logic pixel19;
    logic pixel20;
	logic pixel21;
	logic pixel22;
    logic pixel23;
	logic pixel24;
	logic pixel25;

	Gowin_rPLL u_rpll (
		.clkout (clk_out),
		.clkin (clk_27)
	);

	initial begin
        output_pixel = 1'b0;
        addrRead1 = 18'b1;
        addrRead2 = 18'd489;
        addrRead3 = 18'd977;
        addrRead4 = 18'd1465;
        addrRead5 = 18'd1953;

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
        pixel10 = 1'b0;
        pixel11 = 1'b0;
        pixel12 = 1'b0;
        pixel13 = 1'b0;
        pixel14 = 1'b0;
        pixel15 = 1'b0;
        pixel16 = 1'b0;
        pixel17 = 1'b0;
        pixel18 = 1'b0;
        pixel19 = 1'b0;
        pixel20 = 1'b0;
        pixel21 = 1'b0;
        pixel22 = 1'b0;
        pixel23 = 1'b0;
        pixel24 = 1'b0;
        pixel25 = 1'b0;
	end 

    logic   dout_1;
    logic   dout_2;
    logic   dout_3;
    logic   dout_4;
    logic   dout_5;

    Gowin_SDPB5 u_sdpb1(
        .dout(dout_1),
        .clka(clk_out),
        .cea(1'b1),
        .reseta(1'b0),
        .clkb(clk_out),
        .ceb(1'b1),
        .resetb(1'b0),
        .oce(1'b1),
        .ada(addrWrite),
        .din(output_pixel),
        .adb(addrRead1)
    );

    Gowin_SDPB5 u_sdpb2(
        .dout(dout_2),
        .clka(clk_out),
        .cea(1'b1),
        .reseta(1'b0),
        .clkb(clk_out),
        .ceb(1'b1),
        .resetb(1'b0),
        .oce(1'b1),
        .ada(18'b0),
        .din(output_pixel),
        .adb(addrRead2)
    );

    Gowin_SDPB5 u_sdpb3(
        .dout(dout_3),
        .clka(clk_out),
        .cea(1'b1),
        .reseta(1'b0),
        .clkb(clk_out),
        .ceb(1'b1),
        .resetb(1'b0),
        .oce(1'b1),
        .ada(18'b0),
        .din(output_pixel),
        .adb(addrRead3)
    );

    Gowin_SDPB5 u_sdpb4(
        .dout(dout_4),
        .clka(clk_out),
        .cea(1'b1),
        .reseta(1'b0),
        .clkb(clk_out),
        .ceb(1'b1),
        .resetb(1'b0),
        .oce(1'b1),
        .ada(18'b0),
        .din(output_pixel),
        .adb(addrRead4)
    );

    Gowin_SDPB5 u_sdpb5(
        .dout(dout_5),
        .clka(clk_out),
        .cea(1'b1),
        .reseta(1'b0),
        .clkb(clk_out),
        .ceb(1'b1),
        .resetb(1'b0),
        .oce(1'b1),
        .ada(18'b0),
        .din(output_pixel),
        .adb(addrRead5)
    );

    always @(posedge clk_out) begin
        addrRead1 = (addrRead1 == 18'd146401) ? 18'd1 : addrRead1 + 18'd1; //146401 = 488*(302-2) + 1
        endWrite = (addrRead1 == 18'd146401) ? 18'b1 : endWrite;

        addrWrite = (endWrite == 1'b1) ? 18'd0 : addrWrite + 18'd1;
        addrRead2 = (endWrite == 1'b1) ? 18'd0 : addrRead2 + 18'd1;
        addrRead3 = (endWrite == 1'b1) ? 18'd0 : addrRead3 + 18'd1;
        addrRead4 = (endWrite == 1'b1) ? 18'd0 : addrRead4 + 18'd1;
        addrRead5 = (endWrite == 1'b1) ? 18'd0 : addrRead5 + 18'd1;

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

    assign output_pixel = pixel1 & pixel2 & pixel3 & pixel4 & pixel5 & pixel6 & pixel7 & pixel8 & pixel9 & pixel10 & pixel11 & pixel12 & pixel13 & pixel14 & pixel15 & pixel16 & pixel17 & pixel18 & pixel19 & pixel20 & pixel21 & pixel22 & pixel23 & pixel24 & pixel25;

endmodule : top3