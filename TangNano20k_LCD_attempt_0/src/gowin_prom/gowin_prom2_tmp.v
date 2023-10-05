//Copyright (C)2014-2022 Gowin Semiconductor Corporation.
//All rights reserved.
//File Title: Template file for instantiation
//GOWIN Version: V1.9.8.10
//Part Number: GW2AR-LV18QN88C8/I7
//Device: GW2AR-18
//Device Version: C
//Created Time: Sun Aug 06 17:57:16 2023

//Change the instance name and port connections to the signal names
//--------Copy here to design--------

    Gowin_pROM2 your_instance_name(
        .dout(dout_o), //output [15:0] dout
        .clk(clk_i), //input clk
        .oce(oce_i), //input oce
        .ce(ce_i), //input ce
        .reset(reset_i), //input reset
        .ad(ad_i) //input [15:0] ad
    );

//--------Copy end-------------------
