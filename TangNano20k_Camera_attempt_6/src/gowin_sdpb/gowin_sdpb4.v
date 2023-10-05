//Copyright (C)2014-2022 Gowin Semiconductor Corporation.
//All rights reserved.
//File Title: IP file
//GOWIN Version: V1.9.8.10
//Part Number: GW2AR-LV18QN88C8/I7
//Device: GW2AR-18
//Device Version: C
//Created Time: Mon Sep 11 14:34:32 2023

module Gowin_SDPB4 (dout, clka, cea, reseta, clkb, ceb, resetb, oce, ada, din, adb);

output [0:0] dout;
input clka;
input cea;
input reseta;
input clkb;
input ceb;
input resetb;
input oce;
input [17:0] ada;
input [0:0] din;
input [17:0] adb;

wire lut_f_0;
wire lut_f_1;
wire lut_f_2;
wire lut_f_3;
wire lut_f_4;
wire lut_f_5;
wire lut_f_6;
wire lut_f_7;
wire lut_f_8;
wire lut_f_9;
wire lut_f_10;
wire lut_f_11;
wire lut_f_12;
wire lut_f_13;
wire lut_f_14;
wire lut_f_15;
wire lut_f_16;
wire lut_f_17;
wire lut_f_18;
wire lut_f_19;
wire lut_f_20;
wire lut_f_21;
wire lut_f_22;
wire lut_f_23;
wire lut_f_24;
wire lut_f_25;
wire lut_f_26;
wire lut_f_27;
wire lut_f_28;
wire lut_f_29;
wire [30:0] sdpb_inst_0_dout_w;
wire [0:0] sdpb_inst_0_dout;
wire [30:0] sdpb_inst_1_dout_w;
wire [0:0] sdpb_inst_1_dout;
wire [30:0] sdpb_inst_2_dout_w;
wire [0:0] sdpb_inst_2_dout;
wire [30:0] sdpb_inst_3_dout_w;
wire [0:0] sdpb_inst_3_dout;
wire [30:0] sdpb_inst_4_dout_w;
wire [0:0] sdpb_inst_4_dout;
wire [30:0] sdpb_inst_5_dout_w;
wire [0:0] sdpb_inst_5_dout;
wire [30:0] sdpb_inst_6_dout_w;
wire [0:0] sdpb_inst_6_dout;
wire [30:0] sdpb_inst_7_dout_w;
wire [0:0] sdpb_inst_7_dout;
wire [30:0] sdpb_inst_8_dout_w;
wire [0:0] sdpb_inst_8_dout;
wire [30:0] sdpb_inst_9_dout_w;
wire [0:0] sdpb_inst_9_dout;
wire [30:0] sdpb_inst_10_dout_w;
wire [0:0] sdpb_inst_10_dout;
wire [30:0] sdpb_inst_11_dout_w;
wire [0:0] sdpb_inst_11_dout;
wire [30:0] sdpb_inst_12_dout_w;
wire [0:0] sdpb_inst_12_dout;
wire [30:0] sdpb_inst_13_dout_w;
wire [0:0] sdpb_inst_13_dout;
wire [30:0] sdpb_inst_14_dout_w;
wire [0:0] sdpb_inst_14_dout;
wire dff_q_0;
wire dff_q_1;
wire dff_q_2;
wire dff_q_3;
wire mux_o_0;
wire mux_o_1;
wire mux_o_2;
wire mux_o_3;
wire mux_o_4;
wire mux_o_5;
wire mux_o_6;
wire mux_o_8;
wire mux_o_9;
wire mux_o_10;
wire mux_o_11;
wire mux_o_12;
wire mux_o_13;
wire gw_gnd;

assign gw_gnd = 1'b0;

LUT4 lut_inst_0 (
  .F(lut_f_0),
  .I0(ada[14]),
  .I1(ada[15]),
  .I2(ada[16]),
  .I3(ada[17])
);
defparam lut_inst_0.INIT = 16'h0001;
LUT4 lut_inst_1 (
  .F(lut_f_1),
  .I0(ada[14]),
  .I1(ada[15]),
  .I2(ada[16]),
  .I3(ada[17])
);
defparam lut_inst_1.INIT = 16'h0002;
LUT4 lut_inst_2 (
  .F(lut_f_2),
  .I0(ada[14]),
  .I1(ada[15]),
  .I2(ada[16]),
  .I3(ada[17])
);
defparam lut_inst_2.INIT = 16'h0004;
LUT4 lut_inst_3 (
  .F(lut_f_3),
  .I0(ada[14]),
  .I1(ada[15]),
  .I2(ada[16]),
  .I3(ada[17])
);
defparam lut_inst_3.INIT = 16'h0008;
LUT4 lut_inst_4 (
  .F(lut_f_4),
  .I0(ada[14]),
  .I1(ada[15]),
  .I2(ada[16]),
  .I3(ada[17])
);
defparam lut_inst_4.INIT = 16'h0010;
LUT4 lut_inst_5 (
  .F(lut_f_5),
  .I0(ada[14]),
  .I1(ada[15]),
  .I2(ada[16]),
  .I3(ada[17])
);
defparam lut_inst_5.INIT = 16'h0020;
LUT4 lut_inst_6 (
  .F(lut_f_6),
  .I0(ada[14]),
  .I1(ada[15]),
  .I2(ada[16]),
  .I3(ada[17])
);
defparam lut_inst_6.INIT = 16'h0040;
LUT4 lut_inst_7 (
  .F(lut_f_7),
  .I0(ada[14]),
  .I1(ada[15]),
  .I2(ada[16]),
  .I3(ada[17])
);
defparam lut_inst_7.INIT = 16'h0080;
LUT4 lut_inst_8 (
  .F(lut_f_8),
  .I0(ada[14]),
  .I1(ada[15]),
  .I2(ada[16]),
  .I3(ada[17])
);
defparam lut_inst_8.INIT = 16'h0100;
LUT4 lut_inst_9 (
  .F(lut_f_9),
  .I0(ada[14]),
  .I1(ada[15]),
  .I2(ada[16]),
  .I3(ada[17])
);
defparam lut_inst_9.INIT = 16'h0200;
LUT4 lut_inst_10 (
  .F(lut_f_10),
  .I0(ada[14]),
  .I1(ada[15]),
  .I2(ada[16]),
  .I3(ada[17])
);
defparam lut_inst_10.INIT = 16'h0400;
LUT4 lut_inst_11 (
  .F(lut_f_11),
  .I0(ada[14]),
  .I1(ada[15]),
  .I2(ada[16]),
  .I3(ada[17])
);
defparam lut_inst_11.INIT = 16'h0800;
LUT4 lut_inst_12 (
  .F(lut_f_12),
  .I0(ada[14]),
  .I1(ada[15]),
  .I2(ada[16]),
  .I3(ada[17])
);
defparam lut_inst_12.INIT = 16'h1000;
LUT4 lut_inst_13 (
  .F(lut_f_13),
  .I0(ada[14]),
  .I1(ada[15]),
  .I2(ada[16]),
  .I3(ada[17])
);
defparam lut_inst_13.INIT = 16'h2000;
LUT4 lut_inst_14 (
  .F(lut_f_14),
  .I0(ada[14]),
  .I1(ada[15]),
  .I2(ada[16]),
  .I3(ada[17])
);
defparam lut_inst_14.INIT = 16'h4000;
LUT4 lut_inst_15 (
  .F(lut_f_15),
  .I0(adb[14]),
  .I1(adb[15]),
  .I2(adb[16]),
  .I3(adb[17])
);
defparam lut_inst_15.INIT = 16'h0001;
LUT4 lut_inst_16 (
  .F(lut_f_16),
  .I0(adb[14]),
  .I1(adb[15]),
  .I2(adb[16]),
  .I3(adb[17])
);
defparam lut_inst_16.INIT = 16'h0002;
LUT4 lut_inst_17 (
  .F(lut_f_17),
  .I0(adb[14]),
  .I1(adb[15]),
  .I2(adb[16]),
  .I3(adb[17])
);
defparam lut_inst_17.INIT = 16'h0004;
LUT4 lut_inst_18 (
  .F(lut_f_18),
  .I0(adb[14]),
  .I1(adb[15]),
  .I2(adb[16]),
  .I3(adb[17])
);
defparam lut_inst_18.INIT = 16'h0008;
LUT4 lut_inst_19 (
  .F(lut_f_19),
  .I0(adb[14]),
  .I1(adb[15]),
  .I2(adb[16]),
  .I3(adb[17])
);
defparam lut_inst_19.INIT = 16'h0010;
LUT4 lut_inst_20 (
  .F(lut_f_20),
  .I0(adb[14]),
  .I1(adb[15]),
  .I2(adb[16]),
  .I3(adb[17])
);
defparam lut_inst_20.INIT = 16'h0020;
LUT4 lut_inst_21 (
  .F(lut_f_21),
  .I0(adb[14]),
  .I1(adb[15]),
  .I2(adb[16]),
  .I3(adb[17])
);
defparam lut_inst_21.INIT = 16'h0040;
LUT4 lut_inst_22 (
  .F(lut_f_22),
  .I0(adb[14]),
  .I1(adb[15]),
  .I2(adb[16]),
  .I3(adb[17])
);
defparam lut_inst_22.INIT = 16'h0080;
LUT4 lut_inst_23 (
  .F(lut_f_23),
  .I0(adb[14]),
  .I1(adb[15]),
  .I2(adb[16]),
  .I3(adb[17])
);
defparam lut_inst_23.INIT = 16'h0100;
LUT4 lut_inst_24 (
  .F(lut_f_24),
  .I0(adb[14]),
  .I1(adb[15]),
  .I2(adb[16]),
  .I3(adb[17])
);
defparam lut_inst_24.INIT = 16'h0200;
LUT4 lut_inst_25 (
  .F(lut_f_25),
  .I0(adb[14]),
  .I1(adb[15]),
  .I2(adb[16]),
  .I3(adb[17])
);
defparam lut_inst_25.INIT = 16'h0400;
LUT4 lut_inst_26 (
  .F(lut_f_26),
  .I0(adb[14]),
  .I1(adb[15]),
  .I2(adb[16]),
  .I3(adb[17])
);
defparam lut_inst_26.INIT = 16'h0800;
LUT4 lut_inst_27 (
  .F(lut_f_27),
  .I0(adb[14]),
  .I1(adb[15]),
  .I2(adb[16]),
  .I3(adb[17])
);
defparam lut_inst_27.INIT = 16'h1000;
LUT4 lut_inst_28 (
  .F(lut_f_28),
  .I0(adb[14]),
  .I1(adb[15]),
  .I2(adb[16]),
  .I3(adb[17])
);
defparam lut_inst_28.INIT = 16'h2000;
LUT4 lut_inst_29 (
  .F(lut_f_29),
  .I0(adb[14]),
  .I1(adb[15]),
  .I2(adb[16]),
  .I3(adb[17])
);
defparam lut_inst_29.INIT = 16'h4000;
SDPB sdpb_inst_0 (
    .DO({sdpb_inst_0_dout_w[30:0],sdpb_inst_0_dout[0]}),
    .CLKA(clka),
    .CEA(cea),
    .RESETA(reseta),
    .CLKB(clkb),
    .CEB(ceb),
    .RESETB(resetb),
    .OCE(oce),
    .BLKSELA({gw_gnd,gw_gnd,lut_f_0}),
    .BLKSELB({gw_gnd,gw_gnd,lut_f_15}),
    .ADA(ada[13:0]),
    .DI({gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,din[0]}),
    .ADB(adb[13:0])
);

defparam sdpb_inst_0.READ_MODE = 1'b0;
defparam sdpb_inst_0.BIT_WIDTH_0 = 1;
defparam sdpb_inst_0.BIT_WIDTH_1 = 1;
defparam sdpb_inst_0.BLK_SEL_0 = 3'b001;
defparam sdpb_inst_0.BLK_SEL_1 = 3'b001;
defparam sdpb_inst_0.RESET_MODE = "SYNC";

SDPB sdpb_inst_1 (
    .DO({sdpb_inst_1_dout_w[30:0],sdpb_inst_1_dout[0]}),
    .CLKA(clka),
    .CEA(cea),
    .RESETA(reseta),
    .CLKB(clkb),
    .CEB(ceb),
    .RESETB(resetb),
    .OCE(oce),
    .BLKSELA({gw_gnd,gw_gnd,lut_f_1}),
    .BLKSELB({gw_gnd,gw_gnd,lut_f_16}),
    .ADA(ada[13:0]),
    .DI({gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,din[0]}),
    .ADB(adb[13:0])
);

defparam sdpb_inst_1.READ_MODE = 1'b0;
defparam sdpb_inst_1.BIT_WIDTH_0 = 1;
defparam sdpb_inst_1.BIT_WIDTH_1 = 1;
defparam sdpb_inst_1.BLK_SEL_0 = 3'b001;
defparam sdpb_inst_1.BLK_SEL_1 = 3'b001;
defparam sdpb_inst_1.RESET_MODE = "SYNC";

SDPB sdpb_inst_2 (
    .DO({sdpb_inst_2_dout_w[30:0],sdpb_inst_2_dout[0]}),
    .CLKA(clka),
    .CEA(cea),
    .RESETA(reseta),
    .CLKB(clkb),
    .CEB(ceb),
    .RESETB(resetb),
    .OCE(oce),
    .BLKSELA({gw_gnd,gw_gnd,lut_f_2}),
    .BLKSELB({gw_gnd,gw_gnd,lut_f_17}),
    .ADA(ada[13:0]),
    .DI({gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,din[0]}),
    .ADB(adb[13:0])
);

defparam sdpb_inst_2.READ_MODE = 1'b0;
defparam sdpb_inst_2.BIT_WIDTH_0 = 1;
defparam sdpb_inst_2.BIT_WIDTH_1 = 1;
defparam sdpb_inst_2.BLK_SEL_0 = 3'b001;
defparam sdpb_inst_2.BLK_SEL_1 = 3'b001;
defparam sdpb_inst_2.RESET_MODE = "SYNC";

SDPB sdpb_inst_3 (
    .DO({sdpb_inst_3_dout_w[30:0],sdpb_inst_3_dout[0]}),
    .CLKA(clka),
    .CEA(cea),
    .RESETA(reseta),
    .CLKB(clkb),
    .CEB(ceb),
    .RESETB(resetb),
    .OCE(oce),
    .BLKSELA({gw_gnd,gw_gnd,lut_f_3}),
    .BLKSELB({gw_gnd,gw_gnd,lut_f_18}),
    .ADA(ada[13:0]),
    .DI({gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,din[0]}),
    .ADB(adb[13:0])
);

defparam sdpb_inst_3.READ_MODE = 1'b0;
defparam sdpb_inst_3.BIT_WIDTH_0 = 1;
defparam sdpb_inst_3.BIT_WIDTH_1 = 1;
defparam sdpb_inst_3.BLK_SEL_0 = 3'b001;
defparam sdpb_inst_3.BLK_SEL_1 = 3'b001;
defparam sdpb_inst_3.RESET_MODE = "SYNC";

SDPB sdpb_inst_4 (
    .DO({sdpb_inst_4_dout_w[30:0],sdpb_inst_4_dout[0]}),
    .CLKA(clka),
    .CEA(cea),
    .RESETA(reseta),
    .CLKB(clkb),
    .CEB(ceb),
    .RESETB(resetb),
    .OCE(oce),
    .BLKSELA({gw_gnd,gw_gnd,lut_f_4}),
    .BLKSELB({gw_gnd,gw_gnd,lut_f_19}),
    .ADA(ada[13:0]),
    .DI({gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,din[0]}),
    .ADB(adb[13:0])
);

defparam sdpb_inst_4.READ_MODE = 1'b0;
defparam sdpb_inst_4.BIT_WIDTH_0 = 1;
defparam sdpb_inst_4.BIT_WIDTH_1 = 1;
defparam sdpb_inst_4.BLK_SEL_0 = 3'b001;
defparam sdpb_inst_4.BLK_SEL_1 = 3'b001;
defparam sdpb_inst_4.RESET_MODE = "SYNC";

SDPB sdpb_inst_5 (
    .DO({sdpb_inst_5_dout_w[30:0],sdpb_inst_5_dout[0]}),
    .CLKA(clka),
    .CEA(cea),
    .RESETA(reseta),
    .CLKB(clkb),
    .CEB(ceb),
    .RESETB(resetb),
    .OCE(oce),
    .BLKSELA({gw_gnd,gw_gnd,lut_f_5}),
    .BLKSELB({gw_gnd,gw_gnd,lut_f_20}),
    .ADA(ada[13:0]),
    .DI({gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,din[0]}),
    .ADB(adb[13:0])
);

defparam sdpb_inst_5.READ_MODE = 1'b0;
defparam sdpb_inst_5.BIT_WIDTH_0 = 1;
defparam sdpb_inst_5.BIT_WIDTH_1 = 1;
defparam sdpb_inst_5.BLK_SEL_0 = 3'b001;
defparam sdpb_inst_5.BLK_SEL_1 = 3'b001;
defparam sdpb_inst_5.RESET_MODE = "SYNC";

SDPB sdpb_inst_6 (
    .DO({sdpb_inst_6_dout_w[30:0],sdpb_inst_6_dout[0]}),
    .CLKA(clka),
    .CEA(cea),
    .RESETA(reseta),
    .CLKB(clkb),
    .CEB(ceb),
    .RESETB(resetb),
    .OCE(oce),
    .BLKSELA({gw_gnd,gw_gnd,lut_f_6}),
    .BLKSELB({gw_gnd,gw_gnd,lut_f_21}),
    .ADA(ada[13:0]),
    .DI({gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,din[0]}),
    .ADB(adb[13:0])
);

defparam sdpb_inst_6.READ_MODE = 1'b0;
defparam sdpb_inst_6.BIT_WIDTH_0 = 1;
defparam sdpb_inst_6.BIT_WIDTH_1 = 1;
defparam sdpb_inst_6.BLK_SEL_0 = 3'b001;
defparam sdpb_inst_6.BLK_SEL_1 = 3'b001;
defparam sdpb_inst_6.RESET_MODE = "SYNC";

SDPB sdpb_inst_7 (
    .DO({sdpb_inst_7_dout_w[30:0],sdpb_inst_7_dout[0]}),
    .CLKA(clka),
    .CEA(cea),
    .RESETA(reseta),
    .CLKB(clkb),
    .CEB(ceb),
    .RESETB(resetb),
    .OCE(oce),
    .BLKSELA({gw_gnd,gw_gnd,lut_f_7}),
    .BLKSELB({gw_gnd,gw_gnd,lut_f_22}),
    .ADA(ada[13:0]),
    .DI({gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,din[0]}),
    .ADB(adb[13:0])
);

defparam sdpb_inst_7.READ_MODE = 1'b0;
defparam sdpb_inst_7.BIT_WIDTH_0 = 1;
defparam sdpb_inst_7.BIT_WIDTH_1 = 1;
defparam sdpb_inst_7.BLK_SEL_0 = 3'b001;
defparam sdpb_inst_7.BLK_SEL_1 = 3'b001;
defparam sdpb_inst_7.RESET_MODE = "SYNC";

SDPB sdpb_inst_8 (
    .DO({sdpb_inst_8_dout_w[30:0],sdpb_inst_8_dout[0]}),
    .CLKA(clka),
    .CEA(cea),
    .RESETA(reseta),
    .CLKB(clkb),
    .CEB(ceb),
    .RESETB(resetb),
    .OCE(oce),
    .BLKSELA({gw_gnd,gw_gnd,lut_f_8}),
    .BLKSELB({gw_gnd,gw_gnd,lut_f_23}),
    .ADA(ada[13:0]),
    .DI({gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,din[0]}),
    .ADB(adb[13:0])
);

defparam sdpb_inst_8.READ_MODE = 1'b0;
defparam sdpb_inst_8.BIT_WIDTH_0 = 1;
defparam sdpb_inst_8.BIT_WIDTH_1 = 1;
defparam sdpb_inst_8.BLK_SEL_0 = 3'b001;
defparam sdpb_inst_8.BLK_SEL_1 = 3'b001;
defparam sdpb_inst_8.RESET_MODE = "SYNC";

SDPB sdpb_inst_9 (
    .DO({sdpb_inst_9_dout_w[30:0],sdpb_inst_9_dout[0]}),
    .CLKA(clka),
    .CEA(cea),
    .RESETA(reseta),
    .CLKB(clkb),
    .CEB(ceb),
    .RESETB(resetb),
    .OCE(oce),
    .BLKSELA({gw_gnd,gw_gnd,lut_f_9}),
    .BLKSELB({gw_gnd,gw_gnd,lut_f_24}),
    .ADA(ada[13:0]),
    .DI({gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,din[0]}),
    .ADB(adb[13:0])
);

defparam sdpb_inst_9.READ_MODE = 1'b0;
defparam sdpb_inst_9.BIT_WIDTH_0 = 1;
defparam sdpb_inst_9.BIT_WIDTH_1 = 1;
defparam sdpb_inst_9.BLK_SEL_0 = 3'b001;
defparam sdpb_inst_9.BLK_SEL_1 = 3'b001;
defparam sdpb_inst_9.RESET_MODE = "SYNC";

SDPB sdpb_inst_10 (
    .DO({sdpb_inst_10_dout_w[30:0],sdpb_inst_10_dout[0]}),
    .CLKA(clka),
    .CEA(cea),
    .RESETA(reseta),
    .CLKB(clkb),
    .CEB(ceb),
    .RESETB(resetb),
    .OCE(oce),
    .BLKSELA({gw_gnd,gw_gnd,lut_f_10}),
    .BLKSELB({gw_gnd,gw_gnd,lut_f_25}),
    .ADA(ada[13:0]),
    .DI({gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,din[0]}),
    .ADB(adb[13:0])
);

defparam sdpb_inst_10.READ_MODE = 1'b0;
defparam sdpb_inst_10.BIT_WIDTH_0 = 1;
defparam sdpb_inst_10.BIT_WIDTH_1 = 1;
defparam sdpb_inst_10.BLK_SEL_0 = 3'b001;
defparam sdpb_inst_10.BLK_SEL_1 = 3'b001;
defparam sdpb_inst_10.RESET_MODE = "SYNC";

SDPB sdpb_inst_11 (
    .DO({sdpb_inst_11_dout_w[30:0],sdpb_inst_11_dout[0]}),
    .CLKA(clka),
    .CEA(cea),
    .RESETA(reseta),
    .CLKB(clkb),
    .CEB(ceb),
    .RESETB(resetb),
    .OCE(oce),
    .BLKSELA({gw_gnd,gw_gnd,lut_f_11}),
    .BLKSELB({gw_gnd,gw_gnd,lut_f_26}),
    .ADA(ada[13:0]),
    .DI({gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,din[0]}),
    .ADB(adb[13:0])
);

defparam sdpb_inst_11.READ_MODE = 1'b0;
defparam sdpb_inst_11.BIT_WIDTH_0 = 1;
defparam sdpb_inst_11.BIT_WIDTH_1 = 1;
defparam sdpb_inst_11.BLK_SEL_0 = 3'b001;
defparam sdpb_inst_11.BLK_SEL_1 = 3'b001;
defparam sdpb_inst_11.RESET_MODE = "SYNC";

SDPB sdpb_inst_12 (
    .DO({sdpb_inst_12_dout_w[30:0],sdpb_inst_12_dout[0]}),
    .CLKA(clka),
    .CEA(cea),
    .RESETA(reseta),
    .CLKB(clkb),
    .CEB(ceb),
    .RESETB(resetb),
    .OCE(oce),
    .BLKSELA({gw_gnd,gw_gnd,lut_f_12}),
    .BLKSELB({gw_gnd,gw_gnd,lut_f_27}),
    .ADA(ada[13:0]),
    .DI({gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,din[0]}),
    .ADB(adb[13:0])
);

defparam sdpb_inst_12.READ_MODE = 1'b0;
defparam sdpb_inst_12.BIT_WIDTH_0 = 1;
defparam sdpb_inst_12.BIT_WIDTH_1 = 1;
defparam sdpb_inst_12.BLK_SEL_0 = 3'b001;
defparam sdpb_inst_12.BLK_SEL_1 = 3'b001;
defparam sdpb_inst_12.RESET_MODE = "SYNC";

SDPB sdpb_inst_13 (
    .DO({sdpb_inst_13_dout_w[30:0],sdpb_inst_13_dout[0]}),
    .CLKA(clka),
    .CEA(cea),
    .RESETA(reseta),
    .CLKB(clkb),
    .CEB(ceb),
    .RESETB(resetb),
    .OCE(oce),
    .BLKSELA({gw_gnd,gw_gnd,lut_f_13}),
    .BLKSELB({gw_gnd,gw_gnd,lut_f_28}),
    .ADA(ada[13:0]),
    .DI({gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,din[0]}),
    .ADB(adb[13:0])
);

defparam sdpb_inst_13.READ_MODE = 1'b0;
defparam sdpb_inst_13.BIT_WIDTH_0 = 1;
defparam sdpb_inst_13.BIT_WIDTH_1 = 1;
defparam sdpb_inst_13.BLK_SEL_0 = 3'b001;
defparam sdpb_inst_13.BLK_SEL_1 = 3'b001;
defparam sdpb_inst_13.RESET_MODE = "SYNC";

SDPB sdpb_inst_14 (
    .DO({sdpb_inst_14_dout_w[30:0],sdpb_inst_14_dout[0]}),
    .CLKA(clka),
    .CEA(cea),
    .RESETA(reseta),
    .CLKB(clkb),
    .CEB(ceb),
    .RESETB(resetb),
    .OCE(oce),
    .BLKSELA({gw_gnd,gw_gnd,lut_f_14}),
    .BLKSELB({gw_gnd,gw_gnd,lut_f_29}),
    .ADA(ada[13:0]),
    .DI({gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,din[0]}),
    .ADB(adb[13:0])
);

defparam sdpb_inst_14.READ_MODE = 1'b0;
defparam sdpb_inst_14.BIT_WIDTH_0 = 1;
defparam sdpb_inst_14.BIT_WIDTH_1 = 1;
defparam sdpb_inst_14.BLK_SEL_0 = 3'b001;
defparam sdpb_inst_14.BLK_SEL_1 = 3'b001;
defparam sdpb_inst_14.RESET_MODE = "SYNC";

DFFE dff_inst_0 (
  .Q(dff_q_0),
  .D(adb[17]),
  .CLK(clkb),
  .CE(ceb)
);
DFFE dff_inst_1 (
  .Q(dff_q_1),
  .D(adb[16]),
  .CLK(clkb),
  .CE(ceb)
);
DFFE dff_inst_2 (
  .Q(dff_q_2),
  .D(adb[15]),
  .CLK(clkb),
  .CE(ceb)
);
DFFE dff_inst_3 (
  .Q(dff_q_3),
  .D(adb[14]),
  .CLK(clkb),
  .CE(ceb)
);
MUX2 mux_inst_0 (
  .O(mux_o_0),
  .I0(sdpb_inst_0_dout[0]),
  .I1(sdpb_inst_1_dout[0]),
  .S0(dff_q_3)
);
MUX2 mux_inst_1 (
  .O(mux_o_1),
  .I0(sdpb_inst_2_dout[0]),
  .I1(sdpb_inst_3_dout[0]),
  .S0(dff_q_3)
);
MUX2 mux_inst_2 (
  .O(mux_o_2),
  .I0(sdpb_inst_4_dout[0]),
  .I1(sdpb_inst_5_dout[0]),
  .S0(dff_q_3)
);
MUX2 mux_inst_3 (
  .O(mux_o_3),
  .I0(sdpb_inst_6_dout[0]),
  .I1(sdpb_inst_7_dout[0]),
  .S0(dff_q_3)
);
MUX2 mux_inst_4 (
  .O(mux_o_4),
  .I0(sdpb_inst_8_dout[0]),
  .I1(sdpb_inst_9_dout[0]),
  .S0(dff_q_3)
);
MUX2 mux_inst_5 (
  .O(mux_o_5),
  .I0(sdpb_inst_10_dout[0]),
  .I1(sdpb_inst_11_dout[0]),
  .S0(dff_q_3)
);
MUX2 mux_inst_6 (
  .O(mux_o_6),
  .I0(sdpb_inst_12_dout[0]),
  .I1(sdpb_inst_13_dout[0]),
  .S0(dff_q_3)
);
MUX2 mux_inst_8 (
  .O(mux_o_8),
  .I0(mux_o_0),
  .I1(mux_o_1),
  .S0(dff_q_2)
);
MUX2 mux_inst_9 (
  .O(mux_o_9),
  .I0(mux_o_2),
  .I1(mux_o_3),
  .S0(dff_q_2)
);
MUX2 mux_inst_10 (
  .O(mux_o_10),
  .I0(mux_o_4),
  .I1(mux_o_5),
  .S0(dff_q_2)
);
MUX2 mux_inst_11 (
  .O(mux_o_11),
  .I0(mux_o_6),
  .I1(sdpb_inst_14_dout[0]),
  .S0(dff_q_2)
);
MUX2 mux_inst_12 (
  .O(mux_o_12),
  .I0(mux_o_8),
  .I1(mux_o_9),
  .S0(dff_q_1)
);
MUX2 mux_inst_13 (
  .O(mux_o_13),
  .I0(mux_o_10),
  .I1(mux_o_11),
  .S0(dff_q_1)
);
MUX2 mux_inst_14 (
  .O(dout[0]),
  .I0(mux_o_12),
  .I1(mux_o_13),
  .S0(dff_q_0)
);
endmodule //Gowin_SDPB4
