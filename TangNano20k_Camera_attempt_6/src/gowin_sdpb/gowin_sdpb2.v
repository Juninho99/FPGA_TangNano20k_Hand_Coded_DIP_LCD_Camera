//Copyright (C)2014-2022 Gowin Semiconductor Corporation.
//All rights reserved.
//File Title: IP file
//GOWIN Version: V1.9.8.10
//Part Number: GW2AR-LV18QN88C8/I7
//Device: GW2AR-18
//Device Version: C
//Created Time: Mon Sep 11 13:57:40 2023

module Gowin_SDPB2 (dout, clka, cea, reseta, clkb, ceb, resetb, oce, ada, din, adb);

output [3:0] dout;
input clka;
input cea;
input reseta;
input clkb;
input ceb;
input resetb;
input oce;
input [15:0] ada;
input [3:0] din;
input [15:0] adb;

wire lut_f_0;
wire lut_f_1;
wire [30:0] sdpb_inst_0_dout_w;
wire [0:0] sdpb_inst_0_dout;
wire [30:0] sdpb_inst_1_dout_w;
wire [0:0] sdpb_inst_1_dout;
wire [30:0] sdpb_inst_2_dout_w;
wire [1:1] sdpb_inst_2_dout;
wire [30:0] sdpb_inst_3_dout_w;
wire [1:1] sdpb_inst_3_dout;
wire [30:0] sdpb_inst_4_dout_w;
wire [2:2] sdpb_inst_4_dout;
wire [30:0] sdpb_inst_5_dout_w;
wire [2:2] sdpb_inst_5_dout;
wire [30:0] sdpb_inst_6_dout_w;
wire [3:3] sdpb_inst_6_dout;
wire [30:0] sdpb_inst_7_dout_w;
wire [3:3] sdpb_inst_7_dout;
wire [30:0] sdpb_inst_8_dout_w;
wire [0:0] sdpb_inst_8_dout;
wire [30:0] sdpb_inst_9_dout_w;
wire [1:1] sdpb_inst_9_dout;
wire [30:0] sdpb_inst_10_dout_w;
wire [2:2] sdpb_inst_10_dout;
wire [30:0] sdpb_inst_11_dout_w;
wire [3:3] sdpb_inst_11_dout;
wire [29:0] sdpb_inst_12_dout_w;
wire [1:0] sdpb_inst_12_dout;
wire [29:0] sdpb_inst_13_dout_w;
wire [3:2] sdpb_inst_13_dout;
wire [27:0] sdpb_inst_14_dout_w;
wire [3:0] sdpb_inst_14_dout;
wire dff_q_0;
wire dff_q_1;
wire dff_q_2;
wire dff_q_3;
wire dff_q_4;
wire dff_q_5;
wire mux_o_8;
wire mux_o_9;
wire mux_o_10;
wire mux_o_20;
wire mux_o_21;
wire mux_o_22;
wire mux_o_32;
wire mux_o_33;
wire mux_o_34;
wire mux_o_44;
wire mux_o_45;
wire mux_o_46;
wire gw_gnd;

assign gw_gnd = 1'b0;

LUT4 lut_inst_0 (
  .F(lut_f_0),
  .I0(ada[12]),
  .I1(ada[13]),
  .I2(ada[14]),
  .I3(ada[15])
);
defparam lut_inst_0.INIT = 16'h4000;
LUT4 lut_inst_1 (
  .F(lut_f_1),
  .I0(adb[12]),
  .I1(adb[13]),
  .I2(adb[14]),
  .I3(adb[15])
);
defparam lut_inst_1.INIT = 16'h4000;
SDPB sdpb_inst_0 (
    .DO({sdpb_inst_0_dout_w[30:0],sdpb_inst_0_dout[0]}),
    .CLKA(clka),
    .CEA(cea),
    .RESETA(reseta),
    .CLKB(clkb),
    .CEB(ceb),
    .RESETB(resetb),
    .OCE(oce),
    .BLKSELA({gw_gnd,ada[15],ada[14]}),
    .BLKSELB({gw_gnd,adb[15],adb[14]}),
    .ADA(ada[13:0]),
    .DI({gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,din[0]}),
    .ADB(adb[13:0])
);

defparam sdpb_inst_0.READ_MODE = 1'b1;
defparam sdpb_inst_0.BIT_WIDTH_0 = 1;
defparam sdpb_inst_0.BIT_WIDTH_1 = 1;
defparam sdpb_inst_0.BLK_SEL_0 = 3'b000;
defparam sdpb_inst_0.BLK_SEL_1 = 3'b000;
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
    .BLKSELA({gw_gnd,ada[15],ada[14]}),
    .BLKSELB({gw_gnd,adb[15],adb[14]}),
    .ADA(ada[13:0]),
    .DI({gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,din[0]}),
    .ADB(adb[13:0])
);

defparam sdpb_inst_1.READ_MODE = 1'b1;
defparam sdpb_inst_1.BIT_WIDTH_0 = 1;
defparam sdpb_inst_1.BIT_WIDTH_1 = 1;
defparam sdpb_inst_1.BLK_SEL_0 = 3'b001;
defparam sdpb_inst_1.BLK_SEL_1 = 3'b001;
defparam sdpb_inst_1.RESET_MODE = "SYNC";

SDPB sdpb_inst_2 (
    .DO({sdpb_inst_2_dout_w[30:0],sdpb_inst_2_dout[1]}),
    .CLKA(clka),
    .CEA(cea),
    .RESETA(reseta),
    .CLKB(clkb),
    .CEB(ceb),
    .RESETB(resetb),
    .OCE(oce),
    .BLKSELA({gw_gnd,ada[15],ada[14]}),
    .BLKSELB({gw_gnd,adb[15],adb[14]}),
    .ADA(ada[13:0]),
    .DI({gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,din[1]}),
    .ADB(adb[13:0])
);

defparam sdpb_inst_2.READ_MODE = 1'b1;
defparam sdpb_inst_2.BIT_WIDTH_0 = 1;
defparam sdpb_inst_2.BIT_WIDTH_1 = 1;
defparam sdpb_inst_2.BLK_SEL_0 = 3'b000;
defparam sdpb_inst_2.BLK_SEL_1 = 3'b000;
defparam sdpb_inst_2.RESET_MODE = "SYNC";

SDPB sdpb_inst_3 (
    .DO({sdpb_inst_3_dout_w[30:0],sdpb_inst_3_dout[1]}),
    .CLKA(clka),
    .CEA(cea),
    .RESETA(reseta),
    .CLKB(clkb),
    .CEB(ceb),
    .RESETB(resetb),
    .OCE(oce),
    .BLKSELA({gw_gnd,ada[15],ada[14]}),
    .BLKSELB({gw_gnd,adb[15],adb[14]}),
    .ADA(ada[13:0]),
    .DI({gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,din[1]}),
    .ADB(adb[13:0])
);

defparam sdpb_inst_3.READ_MODE = 1'b1;
defparam sdpb_inst_3.BIT_WIDTH_0 = 1;
defparam sdpb_inst_3.BIT_WIDTH_1 = 1;
defparam sdpb_inst_3.BLK_SEL_0 = 3'b001;
defparam sdpb_inst_3.BLK_SEL_1 = 3'b001;
defparam sdpb_inst_3.RESET_MODE = "SYNC";

SDPB sdpb_inst_4 (
    .DO({sdpb_inst_4_dout_w[30:0],sdpb_inst_4_dout[2]}),
    .CLKA(clka),
    .CEA(cea),
    .RESETA(reseta),
    .CLKB(clkb),
    .CEB(ceb),
    .RESETB(resetb),
    .OCE(oce),
    .BLKSELA({gw_gnd,ada[15],ada[14]}),
    .BLKSELB({gw_gnd,adb[15],adb[14]}),
    .ADA(ada[13:0]),
    .DI({gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,din[2]}),
    .ADB(adb[13:0])
);

defparam sdpb_inst_4.READ_MODE = 1'b1;
defparam sdpb_inst_4.BIT_WIDTH_0 = 1;
defparam sdpb_inst_4.BIT_WIDTH_1 = 1;
defparam sdpb_inst_4.BLK_SEL_0 = 3'b000;
defparam sdpb_inst_4.BLK_SEL_1 = 3'b000;
defparam sdpb_inst_4.RESET_MODE = "SYNC";

SDPB sdpb_inst_5 (
    .DO({sdpb_inst_5_dout_w[30:0],sdpb_inst_5_dout[2]}),
    .CLKA(clka),
    .CEA(cea),
    .RESETA(reseta),
    .CLKB(clkb),
    .CEB(ceb),
    .RESETB(resetb),
    .OCE(oce),
    .BLKSELA({gw_gnd,ada[15],ada[14]}),
    .BLKSELB({gw_gnd,adb[15],adb[14]}),
    .ADA(ada[13:0]),
    .DI({gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,din[2]}),
    .ADB(adb[13:0])
);

defparam sdpb_inst_5.READ_MODE = 1'b1;
defparam sdpb_inst_5.BIT_WIDTH_0 = 1;
defparam sdpb_inst_5.BIT_WIDTH_1 = 1;
defparam sdpb_inst_5.BLK_SEL_0 = 3'b001;
defparam sdpb_inst_5.BLK_SEL_1 = 3'b001;
defparam sdpb_inst_5.RESET_MODE = "SYNC";

SDPB sdpb_inst_6 (
    .DO({sdpb_inst_6_dout_w[30:0],sdpb_inst_6_dout[3]}),
    .CLKA(clka),
    .CEA(cea),
    .RESETA(reseta),
    .CLKB(clkb),
    .CEB(ceb),
    .RESETB(resetb),
    .OCE(oce),
    .BLKSELA({gw_gnd,ada[15],ada[14]}),
    .BLKSELB({gw_gnd,adb[15],adb[14]}),
    .ADA(ada[13:0]),
    .DI({gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,din[3]}),
    .ADB(adb[13:0])
);

defparam sdpb_inst_6.READ_MODE = 1'b1;
defparam sdpb_inst_6.BIT_WIDTH_0 = 1;
defparam sdpb_inst_6.BIT_WIDTH_1 = 1;
defparam sdpb_inst_6.BLK_SEL_0 = 3'b000;
defparam sdpb_inst_6.BLK_SEL_1 = 3'b000;
defparam sdpb_inst_6.RESET_MODE = "SYNC";

SDPB sdpb_inst_7 (
    .DO({sdpb_inst_7_dout_w[30:0],sdpb_inst_7_dout[3]}),
    .CLKA(clka),
    .CEA(cea),
    .RESETA(reseta),
    .CLKB(clkb),
    .CEB(ceb),
    .RESETB(resetb),
    .OCE(oce),
    .BLKSELA({gw_gnd,ada[15],ada[14]}),
    .BLKSELB({gw_gnd,adb[15],adb[14]}),
    .ADA(ada[13:0]),
    .DI({gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,din[3]}),
    .ADB(adb[13:0])
);

defparam sdpb_inst_7.READ_MODE = 1'b1;
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
    .BLKSELA({gw_gnd,ada[15],ada[14]}),
    .BLKSELB({gw_gnd,adb[15],adb[14]}),
    .ADA(ada[13:0]),
    .DI({gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,din[0]}),
    .ADB(adb[13:0])
);

defparam sdpb_inst_8.READ_MODE = 1'b1;
defparam sdpb_inst_8.BIT_WIDTH_0 = 1;
defparam sdpb_inst_8.BIT_WIDTH_1 = 1;
defparam sdpb_inst_8.BLK_SEL_0 = 3'b010;
defparam sdpb_inst_8.BLK_SEL_1 = 3'b010;
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
    .BLKSELA({gw_gnd,ada[15],ada[14]}),
    .BLKSELB({gw_gnd,adb[15],adb[14]}),
    .ADA(ada[13:0]),
    .DI({gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,din[1]}),
    .ADB(adb[13:0])
);

defparam sdpb_inst_9.READ_MODE = 1'b1;
defparam sdpb_inst_9.BIT_WIDTH_0 = 1;
defparam sdpb_inst_9.BIT_WIDTH_1 = 1;
defparam sdpb_inst_9.BLK_SEL_0 = 3'b010;
defparam sdpb_inst_9.BLK_SEL_1 = 3'b010;
defparam sdpb_inst_9.RESET_MODE = "SYNC";

SDPB sdpb_inst_10 (
    .DO({sdpb_inst_10_dout_w[30:0],sdpb_inst_10_dout[2]}),
    .CLKA(clka),
    .CEA(cea),
    .RESETA(reseta),
    .CLKB(clkb),
    .CEB(ceb),
    .RESETB(resetb),
    .OCE(oce),
    .BLKSELA({gw_gnd,ada[15],ada[14]}),
    .BLKSELB({gw_gnd,adb[15],adb[14]}),
    .ADA(ada[13:0]),
    .DI({gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,din[2]}),
    .ADB(adb[13:0])
);

defparam sdpb_inst_10.READ_MODE = 1'b1;
defparam sdpb_inst_10.BIT_WIDTH_0 = 1;
defparam sdpb_inst_10.BIT_WIDTH_1 = 1;
defparam sdpb_inst_10.BLK_SEL_0 = 3'b010;
defparam sdpb_inst_10.BLK_SEL_1 = 3'b010;
defparam sdpb_inst_10.RESET_MODE = "SYNC";

SDPB sdpb_inst_11 (
    .DO({sdpb_inst_11_dout_w[30:0],sdpb_inst_11_dout[3]}),
    .CLKA(clka),
    .CEA(cea),
    .RESETA(reseta),
    .CLKB(clkb),
    .CEB(ceb),
    .RESETB(resetb),
    .OCE(oce),
    .BLKSELA({gw_gnd,ada[15],ada[14]}),
    .BLKSELB({gw_gnd,adb[15],adb[14]}),
    .ADA(ada[13:0]),
    .DI({gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,din[3]}),
    .ADB(adb[13:0])
);

defparam sdpb_inst_11.READ_MODE = 1'b1;
defparam sdpb_inst_11.BIT_WIDTH_0 = 1;
defparam sdpb_inst_11.BIT_WIDTH_1 = 1;
defparam sdpb_inst_11.BLK_SEL_0 = 3'b010;
defparam sdpb_inst_11.BLK_SEL_1 = 3'b010;
defparam sdpb_inst_11.RESET_MODE = "SYNC";

SDPB sdpb_inst_12 (
    .DO({sdpb_inst_12_dout_w[29:0],sdpb_inst_12_dout[1:0]}),
    .CLKA(clka),
    .CEA(cea),
    .RESETA(reseta),
    .CLKB(clkb),
    .CEB(ceb),
    .RESETB(resetb),
    .OCE(oce),
    .BLKSELA({ada[15],ada[14],ada[13]}),
    .BLKSELB({adb[15],adb[14],adb[13]}),
    .ADA({ada[12:0],gw_gnd}),
    .DI({gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,din[1:0]}),
    .ADB({adb[12:0],gw_gnd})
);

defparam sdpb_inst_12.READ_MODE = 1'b1;
defparam sdpb_inst_12.BIT_WIDTH_0 = 2;
defparam sdpb_inst_12.BIT_WIDTH_1 = 2;
defparam sdpb_inst_12.BLK_SEL_0 = 3'b110;
defparam sdpb_inst_12.BLK_SEL_1 = 3'b110;
defparam sdpb_inst_12.RESET_MODE = "SYNC";

SDPB sdpb_inst_13 (
    .DO({sdpb_inst_13_dout_w[29:0],sdpb_inst_13_dout[3:2]}),
    .CLKA(clka),
    .CEA(cea),
    .RESETA(reseta),
    .CLKB(clkb),
    .CEB(ceb),
    .RESETB(resetb),
    .OCE(oce),
    .BLKSELA({ada[15],ada[14],ada[13]}),
    .BLKSELB({adb[15],adb[14],adb[13]}),
    .ADA({ada[12:0],gw_gnd}),
    .DI({gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,din[3:2]}),
    .ADB({adb[12:0],gw_gnd})
);

defparam sdpb_inst_13.READ_MODE = 1'b1;
defparam sdpb_inst_13.BIT_WIDTH_0 = 2;
defparam sdpb_inst_13.BIT_WIDTH_1 = 2;
defparam sdpb_inst_13.BLK_SEL_0 = 3'b110;
defparam sdpb_inst_13.BLK_SEL_1 = 3'b110;
defparam sdpb_inst_13.RESET_MODE = "SYNC";

SDPB sdpb_inst_14 (
    .DO({sdpb_inst_14_dout_w[27:0],sdpb_inst_14_dout[3:0]}),
    .CLKA(clka),
    .CEA(cea),
    .RESETA(reseta),
    .CLKB(clkb),
    .CEB(ceb),
    .RESETB(resetb),
    .OCE(oce),
    .BLKSELA({gw_gnd,gw_gnd,lut_f_0}),
    .BLKSELB({gw_gnd,gw_gnd,lut_f_1}),
    .ADA({ada[11:0],gw_gnd,gw_gnd}),
    .DI({gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,din[3:0]}),
    .ADB({adb[11:0],gw_gnd,gw_gnd})
);

defparam sdpb_inst_14.READ_MODE = 1'b1;
defparam sdpb_inst_14.BIT_WIDTH_0 = 4;
defparam sdpb_inst_14.BIT_WIDTH_1 = 4;
defparam sdpb_inst_14.BLK_SEL_0 = 3'b001;
defparam sdpb_inst_14.BLK_SEL_1 = 3'b001;
defparam sdpb_inst_14.RESET_MODE = "SYNC";

DFFE dff_inst_0 (
  .Q(dff_q_0),
  .D(adb[15]),
  .CLK(clkb),
  .CE(ceb)
);
DFFE dff_inst_1 (
  .Q(dff_q_1),
  .D(dff_q_0),
  .CLK(clkb),
  .CE(oce)
);
DFFE dff_inst_2 (
  .Q(dff_q_2),
  .D(adb[14]),
  .CLK(clkb),
  .CE(ceb)
);
DFFE dff_inst_3 (
  .Q(dff_q_3),
  .D(dff_q_2),
  .CLK(clkb),
  .CE(oce)
);
DFFE dff_inst_4 (
  .Q(dff_q_4),
  .D(adb[13]),
  .CLK(clkb),
  .CE(ceb)
);
DFFE dff_inst_5 (
  .Q(dff_q_5),
  .D(dff_q_4),
  .CLK(clkb),
  .CE(oce)
);
MUX2 mux_inst_8 (
  .O(mux_o_8),
  .I0(sdpb_inst_12_dout[0]),
  .I1(sdpb_inst_14_dout[0]),
  .S0(dff_q_5)
);
MUX2 mux_inst_9 (
  .O(mux_o_9),
  .I0(sdpb_inst_0_dout[0]),
  .I1(sdpb_inst_1_dout[0]),
  .S0(dff_q_3)
);
MUX2 mux_inst_10 (
  .O(mux_o_10),
  .I0(sdpb_inst_8_dout[0]),
  .I1(mux_o_8),
  .S0(dff_q_3)
);
MUX2 mux_inst_11 (
  .O(dout[0]),
  .I0(mux_o_9),
  .I1(mux_o_10),
  .S0(dff_q_1)
);
MUX2 mux_inst_20 (
  .O(mux_o_20),
  .I0(sdpb_inst_12_dout[1]),
  .I1(sdpb_inst_14_dout[1]),
  .S0(dff_q_5)
);
MUX2 mux_inst_21 (
  .O(mux_o_21),
  .I0(sdpb_inst_2_dout[1]),
  .I1(sdpb_inst_3_dout[1]),
  .S0(dff_q_3)
);
MUX2 mux_inst_22 (
  .O(mux_o_22),
  .I0(sdpb_inst_9_dout[1]),
  .I1(mux_o_20),
  .S0(dff_q_3)
);
MUX2 mux_inst_23 (
  .O(dout[1]),
  .I0(mux_o_21),
  .I1(mux_o_22),
  .S0(dff_q_1)
);
MUX2 mux_inst_32 (
  .O(mux_o_32),
  .I0(sdpb_inst_13_dout[2]),
  .I1(sdpb_inst_14_dout[2]),
  .S0(dff_q_5)
);
MUX2 mux_inst_33 (
  .O(mux_o_33),
  .I0(sdpb_inst_4_dout[2]),
  .I1(sdpb_inst_5_dout[2]),
  .S0(dff_q_3)
);
MUX2 mux_inst_34 (
  .O(mux_o_34),
  .I0(sdpb_inst_10_dout[2]),
  .I1(mux_o_32),
  .S0(dff_q_3)
);
MUX2 mux_inst_35 (
  .O(dout[2]),
  .I0(mux_o_33),
  .I1(mux_o_34),
  .S0(dff_q_1)
);
MUX2 mux_inst_44 (
  .O(mux_o_44),
  .I0(sdpb_inst_13_dout[3]),
  .I1(sdpb_inst_14_dout[3]),
  .S0(dff_q_5)
);
MUX2 mux_inst_45 (
  .O(mux_o_45),
  .I0(sdpb_inst_6_dout[3]),
  .I1(sdpb_inst_7_dout[3]),
  .S0(dff_q_3)
);
MUX2 mux_inst_46 (
  .O(mux_o_46),
  .I0(sdpb_inst_11_dout[3]),
  .I1(mux_o_44),
  .S0(dff_q_3)
);
MUX2 mux_inst_47 (
  .O(dout[3]),
  .I0(mux_o_45),
  .I1(mux_o_46),
  .S0(dff_q_1)
);
endmodule //Gowin_SDPB2
