module gw_gao(
    \LCD_B[4] ,
    \LCD_B[3] ,
    \LCD_B[2] ,
    \LCD_B[1] ,
    \LCD_B[0] ,
    \LCD_G[5] ,
    \LCD_G[4] ,
    \LCD_G[3] ,
    \LCD_G[2] ,
    \LCD_G[1] ,
    \LCD_G[0] ,
    \LCD_R[4] ,
    \LCD_R[3] ,
    \LCD_R[2] ,
    \LCD_R[1] ,
    \LCD_R[0] ,
    LCD_CLK,
    tms_pad_i,
    tck_pad_i,
    tdi_pad_i,
    tdo_pad_o
);

input \LCD_B[4] ;
input \LCD_B[3] ;
input \LCD_B[2] ;
input \LCD_B[1] ;
input \LCD_B[0] ;
input \LCD_G[5] ;
input \LCD_G[4] ;
input \LCD_G[3] ;
input \LCD_G[2] ;
input \LCD_G[1] ;
input \LCD_G[0] ;
input \LCD_R[4] ;
input \LCD_R[3] ;
input \LCD_R[2] ;
input \LCD_R[1] ;
input \LCD_R[0] ;
input LCD_CLK;
input tms_pad_i;
input tck_pad_i;
input tdi_pad_i;
output tdo_pad_o;

wire \LCD_B[4] ;
wire \LCD_B[3] ;
wire \LCD_B[2] ;
wire \LCD_B[1] ;
wire \LCD_B[0] ;
wire \LCD_G[5] ;
wire \LCD_G[4] ;
wire \LCD_G[3] ;
wire \LCD_G[2] ;
wire \LCD_G[1] ;
wire \LCD_G[0] ;
wire \LCD_R[4] ;
wire \LCD_R[3] ;
wire \LCD_R[2] ;
wire \LCD_R[1] ;
wire \LCD_R[0] ;
wire LCD_CLK;
wire tms_pad_i;
wire tck_pad_i;
wire tdi_pad_i;
wire tdo_pad_o;
wire tms_i_c;
wire tck_i_c;
wire tdi_i_c;
wire tdo_o_c;
wire [9:0] control0;
wire gao_jtag_tck;
wire gao_jtag_reset;
wire run_test_idle_er1;
wire run_test_idle_er2;
wire shift_dr_capture_dr;
wire update_dr;
wire pause_dr;
wire enable_er1;
wire enable_er2;
wire gao_jtag_tdi;
wire tdo_er1;

IBUF tms_ibuf (
    .I(tms_pad_i),
    .O(tms_i_c)
);

IBUF tck_ibuf (
    .I(tck_pad_i),
    .O(tck_i_c)
);

IBUF tdi_ibuf (
    .I(tdi_pad_i),
    .O(tdi_i_c)
);

OBUF tdo_obuf (
    .I(tdo_o_c),
    .O(tdo_pad_o)
);

GW_JTAG  u_gw_jtag(
    .tms_pad_i(tms_i_c),
    .tck_pad_i(tck_i_c),
    .tdi_pad_i(tdi_i_c),
    .tdo_pad_o(tdo_o_c),
    .tck_o(gao_jtag_tck),
    .test_logic_reset_o(gao_jtag_reset),
    .run_test_idle_er1_o(run_test_idle_er1),
    .run_test_idle_er2_o(run_test_idle_er2),
    .shift_dr_capture_dr_o(shift_dr_capture_dr),
    .update_dr_o(update_dr),
    .pause_dr_o(pause_dr),
    .enable_er1_o(enable_er1),
    .enable_er2_o(enable_er2),
    .tdi_o(gao_jtag_tdi),
    .tdo_er1_i(tdo_er1),
    .tdo_er2_i(1'b0)
);

gw_con_top  u_icon_top(
    .tck_i(gao_jtag_tck),
    .tdi_i(gao_jtag_tdi),
    .tdo_o(tdo_er1),
    .rst_i(gao_jtag_reset),
    .control0(control0[9:0]),
    .enable_i(enable_er1),
    .shift_dr_capture_dr_i(shift_dr_capture_dr),
    .update_dr_i(update_dr)
);

ao_top u_ao_top(
    .control(control0[9:0]),
    .data_i({\LCD_B[4] ,\LCD_B[3] ,\LCD_B[2] ,\LCD_B[1] ,\LCD_B[0] ,\LCD_G[5] ,\LCD_G[4] ,\LCD_G[3] ,\LCD_G[2] ,\LCD_G[1] ,\LCD_G[0] ,\LCD_R[4] ,\LCD_R[3] ,\LCD_R[2] ,\LCD_R[1] ,\LCD_R[0] }),
    .clk_i(LCD_CLK)
);

endmodule
