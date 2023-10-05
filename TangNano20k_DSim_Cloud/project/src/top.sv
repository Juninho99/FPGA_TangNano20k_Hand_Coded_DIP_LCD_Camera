module top (
	input logic	clk_27,

    output logic output_pixel
);

	logic clk_out;
    logic [16:0] addrRead;

	Gowin_rPLL u_rpll (
		.clkout (clk_out),
		.clkin (clk_27)
	);

	initial begin
        output_pixel = 1'b0;
        addrRead = 17'b0;
	end

    logic   dout_1;
    logic   dout_2;
    logic   dout_3;
    logic   dout_4;
    logic   dout_5;
    logic   dout_6;
    logic   dout_7;
    logic   dout_8;
    logic   dout_9;

    Gowin_SDPB u_sdpb1(
        .dout(dout_1),
        .clka(clk_out),
        .cea(1'b1),
        .reseta(1'b0),
        .clkb(clk_out),
        .ceb(1'b1),
        .resetb(1'b0),
        .oce(1'b1),
        .ada(17'b0),
        .din(output_pixel),
        .adb(addrRead)
    );

    Gowin_SDPB u_sdpb2(
        .dout(dout_2),
        .clka(clk_out),
        .cea(1'b1),
        .reseta(1'b0),
        .clkb(clk_out),
        .ceb(1'b1),
        .resetb(1'b0),
        .oce(1'b1),
        .ada(17'b0),
        .din(output_pixel),
        .adb(addrRead)
    );

    Gowin_SDPB u_sdpb3(
        .dout(dout_3),
        .clka(clk_out),
        .cea(1'b1),
        .reseta(1'b0),
        .clkb(clk_out),
        .ceb(1'b1),
        .resetb(1'b0),
        .oce(1'b1),
        .ada(17'b0),
        .din(output_pixel),
        .adb(addrRead)
    );

    Gowin_SDPB u_sdpb4(
        .dout(dout_4),
        .clka(clk_out),
        .cea(1'b1),
        .reseta(1'b0),
        .clkb(clk_out),
        .ceb(1'b1),
        .resetb(1'b0),
        .oce(1'b1),
        .ada(17'b0),
        .din(output_pixel),
        .adb(addrRead)
    );

    Gowin_SDPB u_sdpb5(
        .dout(dout_5),
        .clka(clk_out),
        .cea(1'b1),
        .reseta(1'b0),
        .clkb(clk_out),
        .ceb(1'b1),
        .resetb(1'b0),
        .oce(1'b1),
        .ada(17'b0),
        .din(output_pixel),
        .adb(addrRead)
    );

    Gowin_SDPB u_sdpb6(
        .dout(dout_6),
        .clka(clk_out),
        .cea(1'b1),
        .reseta(1'b0),
        .clkb(clk_out),
        .ceb(1'b1),
        .resetb(1'b0),
        .oce(1'b1),
        .ada(17'b0),
        .din(output_pixel),
        .adb(addrRead)
    );

    Gowin_SDPB u_sdpb7(
        .dout(dout_7),
        .clka(clk_out),
        .cea(1'b1),
        .reseta(1'b0),
        .clkb(clk_out),
        .ceb(1'b1),
        .resetb(1'b0),
        .oce(1'b1),
        .ada(17'b0),
        .din(output_pixel),
        .adb(addrRead)
    );

    Gowin_SDPB u_sdpb8(
        .dout(dout_8),
        .clka(clk_out),
        .cea(1'b1),
        .reseta(1'b0),
        .clkb(clk_out),
        .ceb(1'b1),
        .resetb(1'b0),
        .oce(1'b1),
        .ada(17'b0),
        .din(output_pixel),
        .adb(addrRead)
    );

    Gowin_SDPB u_sdpb9(
        .dout(dout_9),
        .clka(clk_out),
        .cea(1'b1),
        .reseta(1'b0),
        .clkb(clk_out),
        .ceb(1'b1),
        .resetb(1'b0),
        .oce(1'b1),
        .ada(17'b0),
        .din(output_pixel),
        .adb(addrRead)
    );

    always @(posedge clk_out) begin
        addrRead <=  addrRead + 17'b1;
    end

    assign output_pixel = dout_1 & dout_2 & dout_3 & dout_4 & dout_5 & dout_6 & dout_7 & dout_8 & dout_9;

endmodule : top