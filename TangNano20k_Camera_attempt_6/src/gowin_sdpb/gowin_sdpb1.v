//Copyright (C)2014-2022 Gowin Semiconductor Corporation.
//All rights reserved.
//File Title: IP file
//GOWIN Version: V1.9.8.10
//Part Number: GW2AR-LV18QN88C8/I7
//Device: GW2AR-18
//Device Version: C
//Created Time: Mon Sep 11 13:22:44 2023

module Gowin_SDPB1 (dout, clka, cea, reseta, clkb, ceb, resetb, oce, ada, din, adb);

output [3:0] dout;
input clka;
input cea;
input reseta;
input clkb;
input ceb;
input resetb;
input oce;
input [17:0] ada;
input [3:0] din;
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
wire [1:1] sdpb_inst_8_dout;
wire [30:0] sdpb_inst_9_dout_w;
wire [1:1] sdpb_inst_9_dout;
wire [30:0] sdpb_inst_10_dout_w;
wire [1:1] sdpb_inst_10_dout;
wire [30:0] sdpb_inst_11_dout_w;
wire [1:1] sdpb_inst_11_dout;
wire [30:0] sdpb_inst_12_dout_w;
wire [1:1] sdpb_inst_12_dout;
wire [30:0] sdpb_inst_13_dout_w;
wire [1:1] sdpb_inst_13_dout;
wire [30:0] sdpb_inst_14_dout_w;
wire [1:1] sdpb_inst_14_dout;
wire [30:0] sdpb_inst_15_dout_w;
wire [1:1] sdpb_inst_15_dout;
wire [30:0] sdpb_inst_16_dout_w;
wire [0:0] sdpb_inst_16_dout;
wire [30:0] sdpb_inst_17_dout_w;
wire [0:0] sdpb_inst_17_dout;
wire [30:0] sdpb_inst_18_dout_w;
wire [1:1] sdpb_inst_18_dout;
wire [30:0] sdpb_inst_19_dout_w;
wire [1:1] sdpb_inst_19_dout;
wire [30:0] sdpb_inst_20_dout_w;
wire [0:0] sdpb_inst_20_dout;
wire [30:0] sdpb_inst_21_dout_w;
wire [1:1] sdpb_inst_21_dout;
wire [29:0] sdpb_inst_22_dout_w;
wire [1:0] sdpb_inst_22_dout;
wire [30:0] sdpb_inst_23_dout_w;
wire [2:2] sdpb_inst_23_dout;
wire [30:0] sdpb_inst_24_dout_w;
wire [2:2] sdpb_inst_24_dout;
wire [30:0] sdpb_inst_25_dout_w;
wire [2:2] sdpb_inst_25_dout;
wire [30:0] sdpb_inst_26_dout_w;
wire [2:2] sdpb_inst_26_dout;
wire [30:0] sdpb_inst_27_dout_w;
wire [2:2] sdpb_inst_27_dout;
wire [30:0] sdpb_inst_28_dout_w;
wire [2:2] sdpb_inst_28_dout;
wire [30:0] sdpb_inst_29_dout_w;
wire [2:2] sdpb_inst_29_dout;
wire [30:0] sdpb_inst_30_dout_w;
wire [2:2] sdpb_inst_30_dout;
wire [30:0] sdpb_inst_31_dout_w;
wire [3:3] sdpb_inst_31_dout;
wire [30:0] sdpb_inst_32_dout_w;
wire [3:3] sdpb_inst_32_dout;
wire [30:0] sdpb_inst_33_dout_w;
wire [3:3] sdpb_inst_33_dout;
wire [30:0] sdpb_inst_34_dout_w;
wire [3:3] sdpb_inst_34_dout;
wire [30:0] sdpb_inst_35_dout_w;
wire [3:3] sdpb_inst_35_dout;
wire [30:0] sdpb_inst_36_dout_w;
wire [3:3] sdpb_inst_36_dout;
wire [30:0] sdpb_inst_37_dout_w;
wire [3:3] sdpb_inst_37_dout;
wire [30:0] sdpb_inst_38_dout_w;
wire [3:3] sdpb_inst_38_dout;
wire [30:0] sdpb_inst_39_dout_w;
wire [2:2] sdpb_inst_39_dout;
wire [30:0] sdpb_inst_40_dout_w;
wire [2:2] sdpb_inst_40_dout;
wire [30:0] sdpb_inst_41_dout_w;
wire [3:3] sdpb_inst_41_dout;
wire [30:0] sdpb_inst_42_dout_w;
wire [3:3] sdpb_inst_42_dout;
wire [30:0] sdpb_inst_43_dout_w;
wire [2:2] sdpb_inst_43_dout;
wire [30:0] sdpb_inst_44_dout_w;
wire [3:3] sdpb_inst_44_dout;
wire [29:0] sdpb_inst_45_dout_w;
wire [3:2] sdpb_inst_45_dout;
wire dff_q_0;
wire dff_q_1;
wire dff_q_2;
wire dff_q_3;
wire mux_o_12;
wire mux_o_13;
wire mux_o_14;
wire mux_o_15;
wire mux_o_16;
wire mux_o_17;
wire mux_o_18;
wire mux_o_19;
wire mux_o_20;
wire mux_o_21;
wire mux_o_36;
wire mux_o_37;
wire mux_o_38;
wire mux_o_39;
wire mux_o_40;
wire mux_o_41;
wire mux_o_42;
wire mux_o_43;
wire mux_o_44;
wire mux_o_45;
wire mux_o_60;
wire mux_o_61;
wire mux_o_62;
wire mux_o_63;
wire mux_o_64;
wire mux_o_65;
wire mux_o_66;
wire mux_o_67;
wire mux_o_68;
wire mux_o_69;
wire mux_o_84;
wire mux_o_85;
wire mux_o_86;
wire mux_o_87;
wire mux_o_88;
wire mux_o_89;
wire mux_o_90;
wire mux_o_91;
wire mux_o_92;
wire mux_o_93;
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
LUT5 lut_inst_11 (
  .F(lut_f_11),
  .I0(ada[13]),
  .I1(ada[14]),
  .I2(ada[15]),
  .I3(ada[16]),
  .I4(ada[17])
);
defparam lut_inst_11.INIT = 32'h00400000;
LUT4 lut_inst_12 (
  .F(lut_f_12),
  .I0(adb[14]),
  .I1(adb[15]),
  .I2(adb[16]),
  .I3(adb[17])
);
defparam lut_inst_12.INIT = 16'h0001;
LUT4 lut_inst_13 (
  .F(lut_f_13),
  .I0(adb[14]),
  .I1(adb[15]),
  .I2(adb[16]),
  .I3(adb[17])
);
defparam lut_inst_13.INIT = 16'h0002;
LUT4 lut_inst_14 (
  .F(lut_f_14),
  .I0(adb[14]),
  .I1(adb[15]),
  .I2(adb[16]),
  .I3(adb[17])
);
defparam lut_inst_14.INIT = 16'h0004;
LUT4 lut_inst_15 (
  .F(lut_f_15),
  .I0(adb[14]),
  .I1(adb[15]),
  .I2(adb[16]),
  .I3(adb[17])
);
defparam lut_inst_15.INIT = 16'h0008;
LUT4 lut_inst_16 (
  .F(lut_f_16),
  .I0(adb[14]),
  .I1(adb[15]),
  .I2(adb[16]),
  .I3(adb[17])
);
defparam lut_inst_16.INIT = 16'h0010;
LUT4 lut_inst_17 (
  .F(lut_f_17),
  .I0(adb[14]),
  .I1(adb[15]),
  .I2(adb[16]),
  .I3(adb[17])
);
defparam lut_inst_17.INIT = 16'h0020;
LUT4 lut_inst_18 (
  .F(lut_f_18),
  .I0(adb[14]),
  .I1(adb[15]),
  .I2(adb[16]),
  .I3(adb[17])
);
defparam lut_inst_18.INIT = 16'h0040;
LUT4 lut_inst_19 (
  .F(lut_f_19),
  .I0(adb[14]),
  .I1(adb[15]),
  .I2(adb[16]),
  .I3(adb[17])
);
defparam lut_inst_19.INIT = 16'h0080;
LUT4 lut_inst_20 (
  .F(lut_f_20),
  .I0(adb[14]),
  .I1(adb[15]),
  .I2(adb[16]),
  .I3(adb[17])
);
defparam lut_inst_20.INIT = 16'h0100;
LUT4 lut_inst_21 (
  .F(lut_f_21),
  .I0(adb[14]),
  .I1(adb[15]),
  .I2(adb[16]),
  .I3(adb[17])
);
defparam lut_inst_21.INIT = 16'h0200;
LUT4 lut_inst_22 (
  .F(lut_f_22),
  .I0(adb[14]),
  .I1(adb[15]),
  .I2(adb[16]),
  .I3(adb[17])
);
defparam lut_inst_22.INIT = 16'h0400;
LUT5 lut_inst_23 (
  .F(lut_f_23),
  .I0(adb[13]),
  .I1(adb[14]),
  .I2(adb[15]),
  .I3(adb[16]),
  .I4(adb[17])
);
defparam lut_inst_23.INIT = 32'h00400000;
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
    .BLKSELB({gw_gnd,gw_gnd,lut_f_12}),
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
    .BLKSELB({gw_gnd,gw_gnd,lut_f_13}),
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
    .BLKSELB({gw_gnd,gw_gnd,lut_f_14}),
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
    .BLKSELB({gw_gnd,gw_gnd,lut_f_15}),
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
    .BLKSELB({gw_gnd,gw_gnd,lut_f_16}),
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
    .BLKSELB({gw_gnd,gw_gnd,lut_f_17}),
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
    .BLKSELB({gw_gnd,gw_gnd,lut_f_18}),
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
    .BLKSELB({gw_gnd,gw_gnd,lut_f_19}),
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
    .DO({sdpb_inst_8_dout_w[30:0],sdpb_inst_8_dout[1]}),
    .CLKA(clka),
    .CEA(cea),
    .RESETA(reseta),
    .CLKB(clkb),
    .CEB(ceb),
    .RESETB(resetb),
    .OCE(oce),
    .BLKSELA({gw_gnd,gw_gnd,lut_f_0}),
    .BLKSELB({gw_gnd,gw_gnd,lut_f_12}),
    .ADA(ada[13:0]),
    .DI({gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,din[1]}),
    .ADB(adb[13:0])
);

defparam sdpb_inst_8.READ_MODE = 1'b0;
defparam sdpb_inst_8.BIT_WIDTH_0 = 1;
defparam sdpb_inst_8.BIT_WIDTH_1 = 1;
defparam sdpb_inst_8.BLK_SEL_0 = 3'b001;
defparam sdpb_inst_8.BLK_SEL_1 = 3'b001;
defparam sdpb_inst_8.RESET_MODE = "SYNC";

SDPB sdpb_inst_9 (
    .DO({sdpb_inst_9_dout_w[30:0],sdpb_inst_9_dout[1]}),
    .CLKA(clka),
    .CEA(cea),
    .RESETA(reseta),
    .CLKB(clkb),
    .CEB(ceb),
    .RESETB(resetb),
    .OCE(oce),
    .BLKSELA({gw_gnd,gw_gnd,lut_f_1}),
    .BLKSELB({gw_gnd,gw_gnd,lut_f_13}),
    .ADA(ada[13:0]),
    .DI({gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,din[1]}),
    .ADB(adb[13:0])
);

defparam sdpb_inst_9.READ_MODE = 1'b0;
defparam sdpb_inst_9.BIT_WIDTH_0 = 1;
defparam sdpb_inst_9.BIT_WIDTH_1 = 1;
defparam sdpb_inst_9.BLK_SEL_0 = 3'b001;
defparam sdpb_inst_9.BLK_SEL_1 = 3'b001;
defparam sdpb_inst_9.RESET_MODE = "SYNC";

SDPB sdpb_inst_10 (
    .DO({sdpb_inst_10_dout_w[30:0],sdpb_inst_10_dout[1]}),
    .CLKA(clka),
    .CEA(cea),
    .RESETA(reseta),
    .CLKB(clkb),
    .CEB(ceb),
    .RESETB(resetb),
    .OCE(oce),
    .BLKSELA({gw_gnd,gw_gnd,lut_f_2}),
    .BLKSELB({gw_gnd,gw_gnd,lut_f_14}),
    .ADA(ada[13:0]),
    .DI({gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,din[1]}),
    .ADB(adb[13:0])
);

defparam sdpb_inst_10.READ_MODE = 1'b0;
defparam sdpb_inst_10.BIT_WIDTH_0 = 1;
defparam sdpb_inst_10.BIT_WIDTH_1 = 1;
defparam sdpb_inst_10.BLK_SEL_0 = 3'b001;
defparam sdpb_inst_10.BLK_SEL_1 = 3'b001;
defparam sdpb_inst_10.RESET_MODE = "SYNC";

SDPB sdpb_inst_11 (
    .DO({sdpb_inst_11_dout_w[30:0],sdpb_inst_11_dout[1]}),
    .CLKA(clka),
    .CEA(cea),
    .RESETA(reseta),
    .CLKB(clkb),
    .CEB(ceb),
    .RESETB(resetb),
    .OCE(oce),
    .BLKSELA({gw_gnd,gw_gnd,lut_f_3}),
    .BLKSELB({gw_gnd,gw_gnd,lut_f_15}),
    .ADA(ada[13:0]),
    .DI({gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,din[1]}),
    .ADB(adb[13:0])
);

defparam sdpb_inst_11.READ_MODE = 1'b0;
defparam sdpb_inst_11.BIT_WIDTH_0 = 1;
defparam sdpb_inst_11.BIT_WIDTH_1 = 1;
defparam sdpb_inst_11.BLK_SEL_0 = 3'b001;
defparam sdpb_inst_11.BLK_SEL_1 = 3'b001;
defparam sdpb_inst_11.RESET_MODE = "SYNC";

SDPB sdpb_inst_12 (
    .DO({sdpb_inst_12_dout_w[30:0],sdpb_inst_12_dout[1]}),
    .CLKA(clka),
    .CEA(cea),
    .RESETA(reseta),
    .CLKB(clkb),
    .CEB(ceb),
    .RESETB(resetb),
    .OCE(oce),
    .BLKSELA({gw_gnd,gw_gnd,lut_f_4}),
    .BLKSELB({gw_gnd,gw_gnd,lut_f_16}),
    .ADA(ada[13:0]),
    .DI({gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,din[1]}),
    .ADB(adb[13:0])
);

defparam sdpb_inst_12.READ_MODE = 1'b0;
defparam sdpb_inst_12.BIT_WIDTH_0 = 1;
defparam sdpb_inst_12.BIT_WIDTH_1 = 1;
defparam sdpb_inst_12.BLK_SEL_0 = 3'b001;
defparam sdpb_inst_12.BLK_SEL_1 = 3'b001;
defparam sdpb_inst_12.RESET_MODE = "SYNC";

SDPB sdpb_inst_13 (
    .DO({sdpb_inst_13_dout_w[30:0],sdpb_inst_13_dout[1]}),
    .CLKA(clka),
    .CEA(cea),
    .RESETA(reseta),
    .CLKB(clkb),
    .CEB(ceb),
    .RESETB(resetb),
    .OCE(oce),
    .BLKSELA({gw_gnd,gw_gnd,lut_f_5}),
    .BLKSELB({gw_gnd,gw_gnd,lut_f_17}),
    .ADA(ada[13:0]),
    .DI({gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,din[1]}),
    .ADB(adb[13:0])
);

defparam sdpb_inst_13.READ_MODE = 1'b0;
defparam sdpb_inst_13.BIT_WIDTH_0 = 1;
defparam sdpb_inst_13.BIT_WIDTH_1 = 1;
defparam sdpb_inst_13.BLK_SEL_0 = 3'b001;
defparam sdpb_inst_13.BLK_SEL_1 = 3'b001;
defparam sdpb_inst_13.RESET_MODE = "SYNC";

SDPB sdpb_inst_14 (
    .DO({sdpb_inst_14_dout_w[30:0],sdpb_inst_14_dout[1]}),
    .CLKA(clka),
    .CEA(cea),
    .RESETA(reseta),
    .CLKB(clkb),
    .CEB(ceb),
    .RESETB(resetb),
    .OCE(oce),
    .BLKSELA({gw_gnd,gw_gnd,lut_f_6}),
    .BLKSELB({gw_gnd,gw_gnd,lut_f_18}),
    .ADA(ada[13:0]),
    .DI({gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,din[1]}),
    .ADB(adb[13:0])
);

defparam sdpb_inst_14.READ_MODE = 1'b0;
defparam sdpb_inst_14.BIT_WIDTH_0 = 1;
defparam sdpb_inst_14.BIT_WIDTH_1 = 1;
defparam sdpb_inst_14.BLK_SEL_0 = 3'b001;
defparam sdpb_inst_14.BLK_SEL_1 = 3'b001;
defparam sdpb_inst_14.RESET_MODE = "SYNC";

SDPB sdpb_inst_15 (
    .DO({sdpb_inst_15_dout_w[30:0],sdpb_inst_15_dout[1]}),
    .CLKA(clka),
    .CEA(cea),
    .RESETA(reseta),
    .CLKB(clkb),
    .CEB(ceb),
    .RESETB(resetb),
    .OCE(oce),
    .BLKSELA({gw_gnd,gw_gnd,lut_f_7}),
    .BLKSELB({gw_gnd,gw_gnd,lut_f_19}),
    .ADA(ada[13:0]),
    .DI({gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,din[1]}),
    .ADB(adb[13:0])
);

defparam sdpb_inst_15.READ_MODE = 1'b0;
defparam sdpb_inst_15.BIT_WIDTH_0 = 1;
defparam sdpb_inst_15.BIT_WIDTH_1 = 1;
defparam sdpb_inst_15.BLK_SEL_0 = 3'b001;
defparam sdpb_inst_15.BLK_SEL_1 = 3'b001;
defparam sdpb_inst_15.RESET_MODE = "SYNC";

SDPB sdpb_inst_16 (
    .DO({sdpb_inst_16_dout_w[30:0],sdpb_inst_16_dout[0]}),
    .CLKA(clka),
    .CEA(cea),
    .RESETA(reseta),
    .CLKB(clkb),
    .CEB(ceb),
    .RESETB(resetb),
    .OCE(oce),
    .BLKSELA({gw_gnd,gw_gnd,lut_f_8}),
    .BLKSELB({gw_gnd,gw_gnd,lut_f_20}),
    .ADA(ada[13:0]),
    .DI({gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,din[0]}),
    .ADB(adb[13:0])
);

defparam sdpb_inst_16.READ_MODE = 1'b0;
defparam sdpb_inst_16.BIT_WIDTH_0 = 1;
defparam sdpb_inst_16.BIT_WIDTH_1 = 1;
defparam sdpb_inst_16.BLK_SEL_0 = 3'b001;
defparam sdpb_inst_16.BLK_SEL_1 = 3'b001;
defparam sdpb_inst_16.RESET_MODE = "SYNC";

SDPB sdpb_inst_17 (
    .DO({sdpb_inst_17_dout_w[30:0],sdpb_inst_17_dout[0]}),
    .CLKA(clka),
    .CEA(cea),
    .RESETA(reseta),
    .CLKB(clkb),
    .CEB(ceb),
    .RESETB(resetb),
    .OCE(oce),
    .BLKSELA({gw_gnd,gw_gnd,lut_f_9}),
    .BLKSELB({gw_gnd,gw_gnd,lut_f_21}),
    .ADA(ada[13:0]),
    .DI({gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,din[0]}),
    .ADB(adb[13:0])
);

defparam sdpb_inst_17.READ_MODE = 1'b0;
defparam sdpb_inst_17.BIT_WIDTH_0 = 1;
defparam sdpb_inst_17.BIT_WIDTH_1 = 1;
defparam sdpb_inst_17.BLK_SEL_0 = 3'b001;
defparam sdpb_inst_17.BLK_SEL_1 = 3'b001;
defparam sdpb_inst_17.RESET_MODE = "SYNC";

SDPB sdpb_inst_18 (
    .DO({sdpb_inst_18_dout_w[30:0],sdpb_inst_18_dout[1]}),
    .CLKA(clka),
    .CEA(cea),
    .RESETA(reseta),
    .CLKB(clkb),
    .CEB(ceb),
    .RESETB(resetb),
    .OCE(oce),
    .BLKSELA({gw_gnd,gw_gnd,lut_f_8}),
    .BLKSELB({gw_gnd,gw_gnd,lut_f_20}),
    .ADA(ada[13:0]),
    .DI({gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,din[1]}),
    .ADB(adb[13:0])
);

defparam sdpb_inst_18.READ_MODE = 1'b0;
defparam sdpb_inst_18.BIT_WIDTH_0 = 1;
defparam sdpb_inst_18.BIT_WIDTH_1 = 1;
defparam sdpb_inst_18.BLK_SEL_0 = 3'b001;
defparam sdpb_inst_18.BLK_SEL_1 = 3'b001;
defparam sdpb_inst_18.RESET_MODE = "SYNC";

SDPB sdpb_inst_19 (
    .DO({sdpb_inst_19_dout_w[30:0],sdpb_inst_19_dout[1]}),
    .CLKA(clka),
    .CEA(cea),
    .RESETA(reseta),
    .CLKB(clkb),
    .CEB(ceb),
    .RESETB(resetb),
    .OCE(oce),
    .BLKSELA({gw_gnd,gw_gnd,lut_f_9}),
    .BLKSELB({gw_gnd,gw_gnd,lut_f_21}),
    .ADA(ada[13:0]),
    .DI({gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,din[1]}),
    .ADB(adb[13:0])
);

defparam sdpb_inst_19.READ_MODE = 1'b0;
defparam sdpb_inst_19.BIT_WIDTH_0 = 1;
defparam sdpb_inst_19.BIT_WIDTH_1 = 1;
defparam sdpb_inst_19.BLK_SEL_0 = 3'b001;
defparam sdpb_inst_19.BLK_SEL_1 = 3'b001;
defparam sdpb_inst_19.RESET_MODE = "SYNC";

SDPB sdpb_inst_20 (
    .DO({sdpb_inst_20_dout_w[30:0],sdpb_inst_20_dout[0]}),
    .CLKA(clka),
    .CEA(cea),
    .RESETA(reseta),
    .CLKB(clkb),
    .CEB(ceb),
    .RESETB(resetb),
    .OCE(oce),
    .BLKSELA({gw_gnd,gw_gnd,lut_f_10}),
    .BLKSELB({gw_gnd,gw_gnd,lut_f_22}),
    .ADA(ada[13:0]),
    .DI({gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,din[0]}),
    .ADB(adb[13:0])
);

defparam sdpb_inst_20.READ_MODE = 1'b0;
defparam sdpb_inst_20.BIT_WIDTH_0 = 1;
defparam sdpb_inst_20.BIT_WIDTH_1 = 1;
defparam sdpb_inst_20.BLK_SEL_0 = 3'b001;
defparam sdpb_inst_20.BLK_SEL_1 = 3'b001;
defparam sdpb_inst_20.RESET_MODE = "SYNC";

SDPB sdpb_inst_21 (
    .DO({sdpb_inst_21_dout_w[30:0],sdpb_inst_21_dout[1]}),
    .CLKA(clka),
    .CEA(cea),
    .RESETA(reseta),
    .CLKB(clkb),
    .CEB(ceb),
    .RESETB(resetb),
    .OCE(oce),
    .BLKSELA({gw_gnd,gw_gnd,lut_f_10}),
    .BLKSELB({gw_gnd,gw_gnd,lut_f_22}),
    .ADA(ada[13:0]),
    .DI({gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,din[1]}),
    .ADB(adb[13:0])
);

defparam sdpb_inst_21.READ_MODE = 1'b0;
defparam sdpb_inst_21.BIT_WIDTH_0 = 1;
defparam sdpb_inst_21.BIT_WIDTH_1 = 1;
defparam sdpb_inst_21.BLK_SEL_0 = 3'b001;
defparam sdpb_inst_21.BLK_SEL_1 = 3'b001;
defparam sdpb_inst_21.RESET_MODE = "SYNC";

SDPB sdpb_inst_22 (
    .DO({sdpb_inst_22_dout_w[29:0],sdpb_inst_22_dout[1:0]}),
    .CLKA(clka),
    .CEA(cea),
    .RESETA(reseta),
    .CLKB(clkb),
    .CEB(ceb),
    .RESETB(resetb),
    .OCE(oce),
    .BLKSELA({gw_gnd,gw_gnd,lut_f_11}),
    .BLKSELB({gw_gnd,gw_gnd,lut_f_23}),
    .ADA({ada[12:0],gw_gnd}),
    .DI({gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,din[1:0]}),
    .ADB({adb[12:0],gw_gnd})
);

defparam sdpb_inst_22.READ_MODE = 1'b0;
defparam sdpb_inst_22.BIT_WIDTH_0 = 2;
defparam sdpb_inst_22.BIT_WIDTH_1 = 2;
defparam sdpb_inst_22.BLK_SEL_0 = 3'b001;
defparam sdpb_inst_22.BLK_SEL_1 = 3'b001;
defparam sdpb_inst_22.RESET_MODE = "SYNC";

SDPB sdpb_inst_23 (
    .DO({sdpb_inst_23_dout_w[30:0],sdpb_inst_23_dout[2]}),
    .CLKA(clka),
    .CEA(cea),
    .RESETA(reseta),
    .CLKB(clkb),
    .CEB(ceb),
    .RESETB(resetb),
    .OCE(oce),
    .BLKSELA({gw_gnd,gw_gnd,lut_f_0}),
    .BLKSELB({gw_gnd,gw_gnd,lut_f_12}),
    .ADA(ada[13:0]),
    .DI({gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,din[2]}),
    .ADB(adb[13:0])
);

defparam sdpb_inst_23.READ_MODE = 1'b0;
defparam sdpb_inst_23.BIT_WIDTH_0 = 1;
defparam sdpb_inst_23.BIT_WIDTH_1 = 1;
defparam sdpb_inst_23.BLK_SEL_0 = 3'b001;
defparam sdpb_inst_23.BLK_SEL_1 = 3'b001;
defparam sdpb_inst_23.RESET_MODE = "SYNC";

SDPB sdpb_inst_24 (
    .DO({sdpb_inst_24_dout_w[30:0],sdpb_inst_24_dout[2]}),
    .CLKA(clka),
    .CEA(cea),
    .RESETA(reseta),
    .CLKB(clkb),
    .CEB(ceb),
    .RESETB(resetb),
    .OCE(oce),
    .BLKSELA({gw_gnd,gw_gnd,lut_f_1}),
    .BLKSELB({gw_gnd,gw_gnd,lut_f_13}),
    .ADA(ada[13:0]),
    .DI({gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,din[2]}),
    .ADB(adb[13:0])
);

defparam sdpb_inst_24.READ_MODE = 1'b0;
defparam sdpb_inst_24.BIT_WIDTH_0 = 1;
defparam sdpb_inst_24.BIT_WIDTH_1 = 1;
defparam sdpb_inst_24.BLK_SEL_0 = 3'b001;
defparam sdpb_inst_24.BLK_SEL_1 = 3'b001;
defparam sdpb_inst_24.RESET_MODE = "SYNC";

SDPB sdpb_inst_25 (
    .DO({sdpb_inst_25_dout_w[30:0],sdpb_inst_25_dout[2]}),
    .CLKA(clka),
    .CEA(cea),
    .RESETA(reseta),
    .CLKB(clkb),
    .CEB(ceb),
    .RESETB(resetb),
    .OCE(oce),
    .BLKSELA({gw_gnd,gw_gnd,lut_f_2}),
    .BLKSELB({gw_gnd,gw_gnd,lut_f_14}),
    .ADA(ada[13:0]),
    .DI({gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,din[2]}),
    .ADB(adb[13:0])
);

defparam sdpb_inst_25.READ_MODE = 1'b0;
defparam sdpb_inst_25.BIT_WIDTH_0 = 1;
defparam sdpb_inst_25.BIT_WIDTH_1 = 1;
defparam sdpb_inst_25.BLK_SEL_0 = 3'b001;
defparam sdpb_inst_25.BLK_SEL_1 = 3'b001;
defparam sdpb_inst_25.RESET_MODE = "SYNC";

SDPB sdpb_inst_26 (
    .DO({sdpb_inst_26_dout_w[30:0],sdpb_inst_26_dout[2]}),
    .CLKA(clka),
    .CEA(cea),
    .RESETA(reseta),
    .CLKB(clkb),
    .CEB(ceb),
    .RESETB(resetb),
    .OCE(oce),
    .BLKSELA({gw_gnd,gw_gnd,lut_f_3}),
    .BLKSELB({gw_gnd,gw_gnd,lut_f_15}),
    .ADA(ada[13:0]),
    .DI({gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,din[2]}),
    .ADB(adb[13:0])
);

defparam sdpb_inst_26.READ_MODE = 1'b0;
defparam sdpb_inst_26.BIT_WIDTH_0 = 1;
defparam sdpb_inst_26.BIT_WIDTH_1 = 1;
defparam sdpb_inst_26.BLK_SEL_0 = 3'b001;
defparam sdpb_inst_26.BLK_SEL_1 = 3'b001;
defparam sdpb_inst_26.RESET_MODE = "SYNC";

SDPB sdpb_inst_27 (
    .DO({sdpb_inst_27_dout_w[30:0],sdpb_inst_27_dout[2]}),
    .CLKA(clka),
    .CEA(cea),
    .RESETA(reseta),
    .CLKB(clkb),
    .CEB(ceb),
    .RESETB(resetb),
    .OCE(oce),
    .BLKSELA({gw_gnd,gw_gnd,lut_f_4}),
    .BLKSELB({gw_gnd,gw_gnd,lut_f_16}),
    .ADA(ada[13:0]),
    .DI({gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,din[2]}),
    .ADB(adb[13:0])
);

defparam sdpb_inst_27.READ_MODE = 1'b0;
defparam sdpb_inst_27.BIT_WIDTH_0 = 1;
defparam sdpb_inst_27.BIT_WIDTH_1 = 1;
defparam sdpb_inst_27.BLK_SEL_0 = 3'b001;
defparam sdpb_inst_27.BLK_SEL_1 = 3'b001;
defparam sdpb_inst_27.RESET_MODE = "SYNC";

SDPB sdpb_inst_28 (
    .DO({sdpb_inst_28_dout_w[30:0],sdpb_inst_28_dout[2]}),
    .CLKA(clka),
    .CEA(cea),
    .RESETA(reseta),
    .CLKB(clkb),
    .CEB(ceb),
    .RESETB(resetb),
    .OCE(oce),
    .BLKSELA({gw_gnd,gw_gnd,lut_f_5}),
    .BLKSELB({gw_gnd,gw_gnd,lut_f_17}),
    .ADA(ada[13:0]),
    .DI({gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,din[2]}),
    .ADB(adb[13:0])
);

defparam sdpb_inst_28.READ_MODE = 1'b0;
defparam sdpb_inst_28.BIT_WIDTH_0 = 1;
defparam sdpb_inst_28.BIT_WIDTH_1 = 1;
defparam sdpb_inst_28.BLK_SEL_0 = 3'b001;
defparam sdpb_inst_28.BLK_SEL_1 = 3'b001;
defparam sdpb_inst_28.RESET_MODE = "SYNC";

SDPB sdpb_inst_29 (
    .DO({sdpb_inst_29_dout_w[30:0],sdpb_inst_29_dout[2]}),
    .CLKA(clka),
    .CEA(cea),
    .RESETA(reseta),
    .CLKB(clkb),
    .CEB(ceb),
    .RESETB(resetb),
    .OCE(oce),
    .BLKSELA({gw_gnd,gw_gnd,lut_f_6}),
    .BLKSELB({gw_gnd,gw_gnd,lut_f_18}),
    .ADA(ada[13:0]),
    .DI({gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,din[2]}),
    .ADB(adb[13:0])
);

defparam sdpb_inst_29.READ_MODE = 1'b0;
defparam sdpb_inst_29.BIT_WIDTH_0 = 1;
defparam sdpb_inst_29.BIT_WIDTH_1 = 1;
defparam sdpb_inst_29.BLK_SEL_0 = 3'b001;
defparam sdpb_inst_29.BLK_SEL_1 = 3'b001;
defparam sdpb_inst_29.RESET_MODE = "SYNC";

SDPB sdpb_inst_30 (
    .DO({sdpb_inst_30_dout_w[30:0],sdpb_inst_30_dout[2]}),
    .CLKA(clka),
    .CEA(cea),
    .RESETA(reseta),
    .CLKB(clkb),
    .CEB(ceb),
    .RESETB(resetb),
    .OCE(oce),
    .BLKSELA({gw_gnd,gw_gnd,lut_f_7}),
    .BLKSELB({gw_gnd,gw_gnd,lut_f_19}),
    .ADA(ada[13:0]),
    .DI({gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,din[2]}),
    .ADB(adb[13:0])
);

defparam sdpb_inst_30.READ_MODE = 1'b0;
defparam sdpb_inst_30.BIT_WIDTH_0 = 1;
defparam sdpb_inst_30.BIT_WIDTH_1 = 1;
defparam sdpb_inst_30.BLK_SEL_0 = 3'b001;
defparam sdpb_inst_30.BLK_SEL_1 = 3'b001;
defparam sdpb_inst_30.RESET_MODE = "SYNC";

SDPB sdpb_inst_31 (
    .DO({sdpb_inst_31_dout_w[30:0],sdpb_inst_31_dout[3]}),
    .CLKA(clka),
    .CEA(cea),
    .RESETA(reseta),
    .CLKB(clkb),
    .CEB(ceb),
    .RESETB(resetb),
    .OCE(oce),
    .BLKSELA({gw_gnd,gw_gnd,lut_f_0}),
    .BLKSELB({gw_gnd,gw_gnd,lut_f_12}),
    .ADA(ada[13:0]),
    .DI({gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,din[3]}),
    .ADB(adb[13:0])
);

defparam sdpb_inst_31.READ_MODE = 1'b0;
defparam sdpb_inst_31.BIT_WIDTH_0 = 1;
defparam sdpb_inst_31.BIT_WIDTH_1 = 1;
defparam sdpb_inst_31.BLK_SEL_0 = 3'b001;
defparam sdpb_inst_31.BLK_SEL_1 = 3'b001;
defparam sdpb_inst_31.RESET_MODE = "SYNC";

SDPB sdpb_inst_32 (
    .DO({sdpb_inst_32_dout_w[30:0],sdpb_inst_32_dout[3]}),
    .CLKA(clka),
    .CEA(cea),
    .RESETA(reseta),
    .CLKB(clkb),
    .CEB(ceb),
    .RESETB(resetb),
    .OCE(oce),
    .BLKSELA({gw_gnd,gw_gnd,lut_f_1}),
    .BLKSELB({gw_gnd,gw_gnd,lut_f_13}),
    .ADA(ada[13:0]),
    .DI({gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,din[3]}),
    .ADB(adb[13:0])
);

defparam sdpb_inst_32.READ_MODE = 1'b0;
defparam sdpb_inst_32.BIT_WIDTH_0 = 1;
defparam sdpb_inst_32.BIT_WIDTH_1 = 1;
defparam sdpb_inst_32.BLK_SEL_0 = 3'b001;
defparam sdpb_inst_32.BLK_SEL_1 = 3'b001;
defparam sdpb_inst_32.RESET_MODE = "SYNC";

SDPB sdpb_inst_33 (
    .DO({sdpb_inst_33_dout_w[30:0],sdpb_inst_33_dout[3]}),
    .CLKA(clka),
    .CEA(cea),
    .RESETA(reseta),
    .CLKB(clkb),
    .CEB(ceb),
    .RESETB(resetb),
    .OCE(oce),
    .BLKSELA({gw_gnd,gw_gnd,lut_f_2}),
    .BLKSELB({gw_gnd,gw_gnd,lut_f_14}),
    .ADA(ada[13:0]),
    .DI({gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,din[3]}),
    .ADB(adb[13:0])
);

defparam sdpb_inst_33.READ_MODE = 1'b0;
defparam sdpb_inst_33.BIT_WIDTH_0 = 1;
defparam sdpb_inst_33.BIT_WIDTH_1 = 1;
defparam sdpb_inst_33.BLK_SEL_0 = 3'b001;
defparam sdpb_inst_33.BLK_SEL_1 = 3'b001;
defparam sdpb_inst_33.RESET_MODE = "SYNC";

SDPB sdpb_inst_34 (
    .DO({sdpb_inst_34_dout_w[30:0],sdpb_inst_34_dout[3]}),
    .CLKA(clka),
    .CEA(cea),
    .RESETA(reseta),
    .CLKB(clkb),
    .CEB(ceb),
    .RESETB(resetb),
    .OCE(oce),
    .BLKSELA({gw_gnd,gw_gnd,lut_f_3}),
    .BLKSELB({gw_gnd,gw_gnd,lut_f_15}),
    .ADA(ada[13:0]),
    .DI({gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,din[3]}),
    .ADB(adb[13:0])
);

defparam sdpb_inst_34.READ_MODE = 1'b0;
defparam sdpb_inst_34.BIT_WIDTH_0 = 1;
defparam sdpb_inst_34.BIT_WIDTH_1 = 1;
defparam sdpb_inst_34.BLK_SEL_0 = 3'b001;
defparam sdpb_inst_34.BLK_SEL_1 = 3'b001;
defparam sdpb_inst_34.RESET_MODE = "SYNC";

SDPB sdpb_inst_35 (
    .DO({sdpb_inst_35_dout_w[30:0],sdpb_inst_35_dout[3]}),
    .CLKA(clka),
    .CEA(cea),
    .RESETA(reseta),
    .CLKB(clkb),
    .CEB(ceb),
    .RESETB(resetb),
    .OCE(oce),
    .BLKSELA({gw_gnd,gw_gnd,lut_f_4}),
    .BLKSELB({gw_gnd,gw_gnd,lut_f_16}),
    .ADA(ada[13:0]),
    .DI({gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,din[3]}),
    .ADB(adb[13:0])
);

defparam sdpb_inst_35.READ_MODE = 1'b0;
defparam sdpb_inst_35.BIT_WIDTH_0 = 1;
defparam sdpb_inst_35.BIT_WIDTH_1 = 1;
defparam sdpb_inst_35.BLK_SEL_0 = 3'b001;
defparam sdpb_inst_35.BLK_SEL_1 = 3'b001;
defparam sdpb_inst_35.RESET_MODE = "SYNC";

SDPB sdpb_inst_36 (
    .DO({sdpb_inst_36_dout_w[30:0],sdpb_inst_36_dout[3]}),
    .CLKA(clka),
    .CEA(cea),
    .RESETA(reseta),
    .CLKB(clkb),
    .CEB(ceb),
    .RESETB(resetb),
    .OCE(oce),
    .BLKSELA({gw_gnd,gw_gnd,lut_f_5}),
    .BLKSELB({gw_gnd,gw_gnd,lut_f_17}),
    .ADA(ada[13:0]),
    .DI({gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,din[3]}),
    .ADB(adb[13:0])
);

defparam sdpb_inst_36.READ_MODE = 1'b0;
defparam sdpb_inst_36.BIT_WIDTH_0 = 1;
defparam sdpb_inst_36.BIT_WIDTH_1 = 1;
defparam sdpb_inst_36.BLK_SEL_0 = 3'b001;
defparam sdpb_inst_36.BLK_SEL_1 = 3'b001;
defparam sdpb_inst_36.RESET_MODE = "SYNC";

SDPB sdpb_inst_37 (
    .DO({sdpb_inst_37_dout_w[30:0],sdpb_inst_37_dout[3]}),
    .CLKA(clka),
    .CEA(cea),
    .RESETA(reseta),
    .CLKB(clkb),
    .CEB(ceb),
    .RESETB(resetb),
    .OCE(oce),
    .BLKSELA({gw_gnd,gw_gnd,lut_f_6}),
    .BLKSELB({gw_gnd,gw_gnd,lut_f_18}),
    .ADA(ada[13:0]),
    .DI({gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,din[3]}),
    .ADB(adb[13:0])
);

defparam sdpb_inst_37.READ_MODE = 1'b0;
defparam sdpb_inst_37.BIT_WIDTH_0 = 1;
defparam sdpb_inst_37.BIT_WIDTH_1 = 1;
defparam sdpb_inst_37.BLK_SEL_0 = 3'b001;
defparam sdpb_inst_37.BLK_SEL_1 = 3'b001;
defparam sdpb_inst_37.RESET_MODE = "SYNC";

SDPB sdpb_inst_38 (
    .DO({sdpb_inst_38_dout_w[30:0],sdpb_inst_38_dout[3]}),
    .CLKA(clka),
    .CEA(cea),
    .RESETA(reseta),
    .CLKB(clkb),
    .CEB(ceb),
    .RESETB(resetb),
    .OCE(oce),
    .BLKSELA({gw_gnd,gw_gnd,lut_f_7}),
    .BLKSELB({gw_gnd,gw_gnd,lut_f_19}),
    .ADA(ada[13:0]),
    .DI({gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,din[3]}),
    .ADB(adb[13:0])
);

defparam sdpb_inst_38.READ_MODE = 1'b0;
defparam sdpb_inst_38.BIT_WIDTH_0 = 1;
defparam sdpb_inst_38.BIT_WIDTH_1 = 1;
defparam sdpb_inst_38.BLK_SEL_0 = 3'b001;
defparam sdpb_inst_38.BLK_SEL_1 = 3'b001;
defparam sdpb_inst_38.RESET_MODE = "SYNC";

SDPB sdpb_inst_39 (
    .DO({sdpb_inst_39_dout_w[30:0],sdpb_inst_39_dout[2]}),
    .CLKA(clka),
    .CEA(cea),
    .RESETA(reseta),
    .CLKB(clkb),
    .CEB(ceb),
    .RESETB(resetb),
    .OCE(oce),
    .BLKSELA({gw_gnd,gw_gnd,lut_f_8}),
    .BLKSELB({gw_gnd,gw_gnd,lut_f_20}),
    .ADA(ada[13:0]),
    .DI({gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,din[2]}),
    .ADB(adb[13:0])
);

defparam sdpb_inst_39.READ_MODE = 1'b0;
defparam sdpb_inst_39.BIT_WIDTH_0 = 1;
defparam sdpb_inst_39.BIT_WIDTH_1 = 1;
defparam sdpb_inst_39.BLK_SEL_0 = 3'b001;
defparam sdpb_inst_39.BLK_SEL_1 = 3'b001;
defparam sdpb_inst_39.RESET_MODE = "SYNC";

SDPB sdpb_inst_40 (
    .DO({sdpb_inst_40_dout_w[30:0],sdpb_inst_40_dout[2]}),
    .CLKA(clka),
    .CEA(cea),
    .RESETA(reseta),
    .CLKB(clkb),
    .CEB(ceb),
    .RESETB(resetb),
    .OCE(oce),
    .BLKSELA({gw_gnd,gw_gnd,lut_f_9}),
    .BLKSELB({gw_gnd,gw_gnd,lut_f_21}),
    .ADA(ada[13:0]),
    .DI({gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,din[2]}),
    .ADB(adb[13:0])
);

defparam sdpb_inst_40.READ_MODE = 1'b0;
defparam sdpb_inst_40.BIT_WIDTH_0 = 1;
defparam sdpb_inst_40.BIT_WIDTH_1 = 1;
defparam sdpb_inst_40.BLK_SEL_0 = 3'b001;
defparam sdpb_inst_40.BLK_SEL_1 = 3'b001;
defparam sdpb_inst_40.RESET_MODE = "SYNC";

SDPB sdpb_inst_41 (
    .DO({sdpb_inst_41_dout_w[30:0],sdpb_inst_41_dout[3]}),
    .CLKA(clka),
    .CEA(cea),
    .RESETA(reseta),
    .CLKB(clkb),
    .CEB(ceb),
    .RESETB(resetb),
    .OCE(oce),
    .BLKSELA({gw_gnd,gw_gnd,lut_f_8}),
    .BLKSELB({gw_gnd,gw_gnd,lut_f_20}),
    .ADA(ada[13:0]),
    .DI({gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,din[3]}),
    .ADB(adb[13:0])
);

defparam sdpb_inst_41.READ_MODE = 1'b0;
defparam sdpb_inst_41.BIT_WIDTH_0 = 1;
defparam sdpb_inst_41.BIT_WIDTH_1 = 1;
defparam sdpb_inst_41.BLK_SEL_0 = 3'b001;
defparam sdpb_inst_41.BLK_SEL_1 = 3'b001;
defparam sdpb_inst_41.RESET_MODE = "SYNC";

SDPB sdpb_inst_42 (
    .DO({sdpb_inst_42_dout_w[30:0],sdpb_inst_42_dout[3]}),
    .CLKA(clka),
    .CEA(cea),
    .RESETA(reseta),
    .CLKB(clkb),
    .CEB(ceb),
    .RESETB(resetb),
    .OCE(oce),
    .BLKSELA({gw_gnd,gw_gnd,lut_f_9}),
    .BLKSELB({gw_gnd,gw_gnd,lut_f_21}),
    .ADA(ada[13:0]),
    .DI({gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,din[3]}),
    .ADB(adb[13:0])
);

defparam sdpb_inst_42.READ_MODE = 1'b0;
defparam sdpb_inst_42.BIT_WIDTH_0 = 1;
defparam sdpb_inst_42.BIT_WIDTH_1 = 1;
defparam sdpb_inst_42.BLK_SEL_0 = 3'b001;
defparam sdpb_inst_42.BLK_SEL_1 = 3'b001;
defparam sdpb_inst_42.RESET_MODE = "SYNC";

SDPB sdpb_inst_43 (
    .DO({sdpb_inst_43_dout_w[30:0],sdpb_inst_43_dout[2]}),
    .CLKA(clka),
    .CEA(cea),
    .RESETA(reseta),
    .CLKB(clkb),
    .CEB(ceb),
    .RESETB(resetb),
    .OCE(oce),
    .BLKSELA({gw_gnd,gw_gnd,lut_f_10}),
    .BLKSELB({gw_gnd,gw_gnd,lut_f_22}),
    .ADA(ada[13:0]),
    .DI({gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,din[2]}),
    .ADB(adb[13:0])
);

defparam sdpb_inst_43.READ_MODE = 1'b0;
defparam sdpb_inst_43.BIT_WIDTH_0 = 1;
defparam sdpb_inst_43.BIT_WIDTH_1 = 1;
defparam sdpb_inst_43.BLK_SEL_0 = 3'b001;
defparam sdpb_inst_43.BLK_SEL_1 = 3'b001;
defparam sdpb_inst_43.RESET_MODE = "SYNC";

SDPB sdpb_inst_44 (
    .DO({sdpb_inst_44_dout_w[30:0],sdpb_inst_44_dout[3]}),
    .CLKA(clka),
    .CEA(cea),
    .RESETA(reseta),
    .CLKB(clkb),
    .CEB(ceb),
    .RESETB(resetb),
    .OCE(oce),
    .BLKSELA({gw_gnd,gw_gnd,lut_f_10}),
    .BLKSELB({gw_gnd,gw_gnd,lut_f_22}),
    .ADA(ada[13:0]),
    .DI({gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,din[3]}),
    .ADB(adb[13:0])
);

defparam sdpb_inst_44.READ_MODE = 1'b0;
defparam sdpb_inst_44.BIT_WIDTH_0 = 1;
defparam sdpb_inst_44.BIT_WIDTH_1 = 1;
defparam sdpb_inst_44.BLK_SEL_0 = 3'b001;
defparam sdpb_inst_44.BLK_SEL_1 = 3'b001;
defparam sdpb_inst_44.RESET_MODE = "SYNC";

SDPB sdpb_inst_45 (
    .DO({sdpb_inst_45_dout_w[29:0],sdpb_inst_45_dout[3:2]}),
    .CLKA(clka),
    .CEA(cea),
    .RESETA(reseta),
    .CLKB(clkb),
    .CEB(ceb),
    .RESETB(resetb),
    .OCE(oce),
    .BLKSELA({gw_gnd,gw_gnd,lut_f_11}),
    .BLKSELB({gw_gnd,gw_gnd,lut_f_23}),
    .ADA({ada[12:0],gw_gnd}),
    .DI({gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,din[3:2]}),
    .ADB({adb[12:0],gw_gnd})
);

defparam sdpb_inst_45.READ_MODE = 1'b0;
defparam sdpb_inst_45.BIT_WIDTH_0 = 2;
defparam sdpb_inst_45.BIT_WIDTH_1 = 2;
defparam sdpb_inst_45.BLK_SEL_0 = 3'b001;
defparam sdpb_inst_45.BLK_SEL_1 = 3'b001;
defparam sdpb_inst_45.RESET_MODE = "SYNC";

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
MUX2 mux_inst_12 (
  .O(mux_o_12),
  .I0(sdpb_inst_0_dout[0]),
  .I1(sdpb_inst_1_dout[0]),
  .S0(dff_q_3)
);
MUX2 mux_inst_13 (
  .O(mux_o_13),
  .I0(sdpb_inst_2_dout[0]),
  .I1(sdpb_inst_3_dout[0]),
  .S0(dff_q_3)
);
MUX2 mux_inst_14 (
  .O(mux_o_14),
  .I0(sdpb_inst_4_dout[0]),
  .I1(sdpb_inst_5_dout[0]),
  .S0(dff_q_3)
);
MUX2 mux_inst_15 (
  .O(mux_o_15),
  .I0(sdpb_inst_6_dout[0]),
  .I1(sdpb_inst_7_dout[0]),
  .S0(dff_q_3)
);
MUX2 mux_inst_16 (
  .O(mux_o_16),
  .I0(sdpb_inst_16_dout[0]),
  .I1(sdpb_inst_17_dout[0]),
  .S0(dff_q_3)
);
MUX2 mux_inst_17 (
  .O(mux_o_17),
  .I0(sdpb_inst_20_dout[0]),
  .I1(sdpb_inst_22_dout[0]),
  .S0(dff_q_3)
);
MUX2 mux_inst_18 (
  .O(mux_o_18),
  .I0(mux_o_12),
  .I1(mux_o_13),
  .S0(dff_q_2)
);
MUX2 mux_inst_19 (
  .O(mux_o_19),
  .I0(mux_o_14),
  .I1(mux_o_15),
  .S0(dff_q_2)
);
MUX2 mux_inst_20 (
  .O(mux_o_20),
  .I0(mux_o_16),
  .I1(mux_o_17),
  .S0(dff_q_2)
);
MUX2 mux_inst_21 (
  .O(mux_o_21),
  .I0(mux_o_18),
  .I1(mux_o_19),
  .S0(dff_q_1)
);
MUX2 mux_inst_23 (
  .O(dout[0]),
  .I0(mux_o_21),
  .I1(mux_o_20),
  .S0(dff_q_0)
);
MUX2 mux_inst_36 (
  .O(mux_o_36),
  .I0(sdpb_inst_8_dout[1]),
  .I1(sdpb_inst_9_dout[1]),
  .S0(dff_q_3)
);
MUX2 mux_inst_37 (
  .O(mux_o_37),
  .I0(sdpb_inst_10_dout[1]),
  .I1(sdpb_inst_11_dout[1]),
  .S0(dff_q_3)
);
MUX2 mux_inst_38 (
  .O(mux_o_38),
  .I0(sdpb_inst_12_dout[1]),
  .I1(sdpb_inst_13_dout[1]),
  .S0(dff_q_3)
);
MUX2 mux_inst_39 (
  .O(mux_o_39),
  .I0(sdpb_inst_14_dout[1]),
  .I1(sdpb_inst_15_dout[1]),
  .S0(dff_q_3)
);
MUX2 mux_inst_40 (
  .O(mux_o_40),
  .I0(sdpb_inst_18_dout[1]),
  .I1(sdpb_inst_19_dout[1]),
  .S0(dff_q_3)
);
MUX2 mux_inst_41 (
  .O(mux_o_41),
  .I0(sdpb_inst_21_dout[1]),
  .I1(sdpb_inst_22_dout[1]),
  .S0(dff_q_3)
);
MUX2 mux_inst_42 (
  .O(mux_o_42),
  .I0(mux_o_36),
  .I1(mux_o_37),
  .S0(dff_q_2)
);
MUX2 mux_inst_43 (
  .O(mux_o_43),
  .I0(mux_o_38),
  .I1(mux_o_39),
  .S0(dff_q_2)
);
MUX2 mux_inst_44 (
  .O(mux_o_44),
  .I0(mux_o_40),
  .I1(mux_o_41),
  .S0(dff_q_2)
);
MUX2 mux_inst_45 (
  .O(mux_o_45),
  .I0(mux_o_42),
  .I1(mux_o_43),
  .S0(dff_q_1)
);
MUX2 mux_inst_47 (
  .O(dout[1]),
  .I0(mux_o_45),
  .I1(mux_o_44),
  .S0(dff_q_0)
);
MUX2 mux_inst_60 (
  .O(mux_o_60),
  .I0(sdpb_inst_23_dout[2]),
  .I1(sdpb_inst_24_dout[2]),
  .S0(dff_q_3)
);
MUX2 mux_inst_61 (
  .O(mux_o_61),
  .I0(sdpb_inst_25_dout[2]),
  .I1(sdpb_inst_26_dout[2]),
  .S0(dff_q_3)
);
MUX2 mux_inst_62 (
  .O(mux_o_62),
  .I0(sdpb_inst_27_dout[2]),
  .I1(sdpb_inst_28_dout[2]),
  .S0(dff_q_3)
);
MUX2 mux_inst_63 (
  .O(mux_o_63),
  .I0(sdpb_inst_29_dout[2]),
  .I1(sdpb_inst_30_dout[2]),
  .S0(dff_q_3)
);
MUX2 mux_inst_64 (
  .O(mux_o_64),
  .I0(sdpb_inst_39_dout[2]),
  .I1(sdpb_inst_40_dout[2]),
  .S0(dff_q_3)
);
MUX2 mux_inst_65 (
  .O(mux_o_65),
  .I0(sdpb_inst_43_dout[2]),
  .I1(sdpb_inst_45_dout[2]),
  .S0(dff_q_3)
);
MUX2 mux_inst_66 (
  .O(mux_o_66),
  .I0(mux_o_60),
  .I1(mux_o_61),
  .S0(dff_q_2)
);
MUX2 mux_inst_67 (
  .O(mux_o_67),
  .I0(mux_o_62),
  .I1(mux_o_63),
  .S0(dff_q_2)
);
MUX2 mux_inst_68 (
  .O(mux_o_68),
  .I0(mux_o_64),
  .I1(mux_o_65),
  .S0(dff_q_2)
);
MUX2 mux_inst_69 (
  .O(mux_o_69),
  .I0(mux_o_66),
  .I1(mux_o_67),
  .S0(dff_q_1)
);
MUX2 mux_inst_71 (
  .O(dout[2]),
  .I0(mux_o_69),
  .I1(mux_o_68),
  .S0(dff_q_0)
);
MUX2 mux_inst_84 (
  .O(mux_o_84),
  .I0(sdpb_inst_31_dout[3]),
  .I1(sdpb_inst_32_dout[3]),
  .S0(dff_q_3)
);
MUX2 mux_inst_85 (
  .O(mux_o_85),
  .I0(sdpb_inst_33_dout[3]),
  .I1(sdpb_inst_34_dout[3]),
  .S0(dff_q_3)
);
MUX2 mux_inst_86 (
  .O(mux_o_86),
  .I0(sdpb_inst_35_dout[3]),
  .I1(sdpb_inst_36_dout[3]),
  .S0(dff_q_3)
);
MUX2 mux_inst_87 (
  .O(mux_o_87),
  .I0(sdpb_inst_37_dout[3]),
  .I1(sdpb_inst_38_dout[3]),
  .S0(dff_q_3)
);
MUX2 mux_inst_88 (
  .O(mux_o_88),
  .I0(sdpb_inst_41_dout[3]),
  .I1(sdpb_inst_42_dout[3]),
  .S0(dff_q_3)
);
MUX2 mux_inst_89 (
  .O(mux_o_89),
  .I0(sdpb_inst_44_dout[3]),
  .I1(sdpb_inst_45_dout[3]),
  .S0(dff_q_3)
);
MUX2 mux_inst_90 (
  .O(mux_o_90),
  .I0(mux_o_84),
  .I1(mux_o_85),
  .S0(dff_q_2)
);
MUX2 mux_inst_91 (
  .O(mux_o_91),
  .I0(mux_o_86),
  .I1(mux_o_87),
  .S0(dff_q_2)
);
MUX2 mux_inst_92 (
  .O(mux_o_92),
  .I0(mux_o_88),
  .I1(mux_o_89),
  .S0(dff_q_2)
);
MUX2 mux_inst_93 (
  .O(mux_o_93),
  .I0(mux_o_90),
  .I1(mux_o_91),
  .S0(dff_q_1)
);
MUX2 mux_inst_95 (
  .O(dout[3]),
  .I0(mux_o_93),
  .I1(mux_o_92),
  .S0(dff_q_0)
);
endmodule //Gowin_SDPB1
