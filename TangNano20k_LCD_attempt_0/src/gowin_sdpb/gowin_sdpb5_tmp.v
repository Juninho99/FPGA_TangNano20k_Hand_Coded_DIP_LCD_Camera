//Copyright (C)2014-2022 Gowin Semiconductor Corporation.
//All rights reserved.
//File Title: Template file for instantiation
//GOWIN Version: V1.9.8.10
//Part Number: GW2AR-LV18QN88C8/I7
//Device: GW2AR-18
//Device Version: C
//Created Time: Wed Sep 06 14:26:27 2023

//Change the instance name and port connections to the signal names
//--------Copy here to design--------

    Gowin_SDPB5 your_instance_name(
        .dout(dout_o), //output [7:0] dout
        .clka(clka_i), //input clka
        .cea(cea_i), //input cea
        .reseta(reseta_i), //input reseta
        .clkb(clkb_i), //input clkb
        .ceb(ceb_i), //input ceb
        .resetb(resetb_i), //input resetb
        .oce(oce_i), //input oce
        .ada(ada_i), //input [14:0] ada
        .din(din_i), //input [7:0] din
        .adb(adb_i) //input [14:0] adb
    );

//--------Copy end-------------------
