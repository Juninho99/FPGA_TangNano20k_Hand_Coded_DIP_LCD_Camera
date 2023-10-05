module top2 (
	input logic	clk_27,

    output logic output_pixel
);

	logic clk_out;
    logic [17:0] addrRead1;
    logic [17:0] addrRead2;
    logic [17:0] addrRead3;
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

	Gowin_rPLL u_rpll (
		.clkout (clk_out),
		.clkin (clk_27)
	);

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

    Gowin_SDPB3 u_sdpb1(
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

    Gowin_SDPB3 u_sdpb2(
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

    Gowin_SDPB3 u_sdpb3(
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

    always @(posedge clk_out) begin
        addrRead1 = (addrRead1 == 18'd244441) ? 18'd1 : addrRead1 + 18'd1; //244441 = 630*(390-2) + 1
        endWrite = (addrRead1 == 18'd244441) ? 18'b1 : endWrite;

        addrWrite = (endWrite == 1'b1) ? 18'd0 : addrWrite + 18'd1;
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

    assign output_pixel = pixel1 & pixel2 & pixel3 & pixel4 & pixel5 & pixel6 & pixel7 & pixel8 & pixel9;

endmodule : top2