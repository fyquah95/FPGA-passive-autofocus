// ----------------------------------------------------------------------
//  HLS HDL:        Verilog Netlister
//  HLS Version:    2011a.126 Production Release
//  HLS Date:       Wed Aug  8 00:52:07 PDT 2012
// 
//  Generated by:   fyq14@EEWS104A-014
//  Generated date: Tue May 12 11:15:47 2015
// ----------------------------------------------------------------------

// 
// ------------------------------------------------------------------
//  Design Unit:    mouse_edge_counter_core
// ------------------------------------------------------------------


module mouse_edge_counter_core (
  clk, en, arst_n, mouse_xy_rsc_mgc_in_wire_d, cursor_size_rsc_mgc_in_wire_d, vga_xy_rsc_mgc_in_wire_d,
      vin_rsc_mgc_in_wire_d, vout_rsc_mgc_out_stdreg_d, sum_rsc_mgc_out_stdreg_d
);
  input clk;
  input en;
  input arst_n;
  input [19:0] mouse_xy_rsc_mgc_in_wire_d;
  input [7:0] cursor_size_rsc_mgc_in_wire_d;
  input [19:0] vga_xy_rsc_mgc_in_wire_d;
  input [89:0] vin_rsc_mgc_in_wire_d;
  output [29:0] vout_rsc_mgc_out_stdreg_d;
  reg [29:0] vout_rsc_mgc_out_stdreg_d;
  output [29:0] sum_rsc_mgc_out_stdreg_d;
  reg [29:0] sum_rsc_mgc_out_stdreg_d;


  // Interconnect Declarations
  wire or_dcpl_1;
  reg [89:0] regs_regs_1_sva;
  reg [89:0] regs_regs_0_sva;
  reg exit_FRAME_sva;
  reg [7:0] cursor_size_1_lpi_1_dfm;
  reg [14:0] FRAME_if_acc_4_psp_sva;
  reg FRAME_if_slc_2_svs;
  reg [29:0] tmp_sum_1_sva_1;
  reg [18:0] FRAME_p_1_sva_1;
  reg FRAME_land_lpi_1_dfm_2;
  reg [13:0] FRAME_if_acc_psp_1_sva_1;
  wire [15:0] nl_FRAME_if_acc_psp_1_sva_1;
  reg [13:0] FRAME_if_acc_10_psp_sva_1;
  wire [15:0] nl_FRAME_if_acc_10_psp_sva_1;
  reg FRAME_slc_1_itm_1;
  reg FRAME_slc_1_itm_2;
  reg FRAME_p_slc_FRAME_p_2_itm_1;
  reg FRAME_p_slc_FRAME_p_2_itm_2;
  reg [29:0] FRAME_and_itm_1;
  reg FRAME_land_lpi_1_dfm_st_1;
  reg exit_FRAME_sva_1_st_2;
  reg main_stage_0_2;
  reg main_stage_0_3;
  reg [12:0] getPixel_acc_23_itm_1_sg1;
  wire [13:0] nl_getPixel_acc_23_itm_1_sg1;
  reg getPixel_acc_23_itm_3;
  reg [12:0] getPixel_acc_22_itm_1_sg1;
  wire [13:0] nl_getPixel_acc_22_itm_1_sg1;
  reg getPixel_acc_22_itm_3;
  reg [12:0] getPixel_acc_32_itm_1_sg1;
  wire [13:0] nl_getPixel_acc_32_itm_1_sg1;
  reg getPixel_acc_32_itm_3;
  reg [12:0] getPixel_acc_31_itm_1_sg1;
  wire [13:0] nl_getPixel_acc_31_itm_1_sg1;
  reg getPixel_acc_31_itm_3;
  wire [2:0] acc_imod_4_sva;
  wire [3:0] nl_acc_imod_4_sva;
  wire [2:0] acc_imod_1_sva;
  wire [3:0] nl_acc_imod_1_sva;
  wire [11:0] getPixel_acc_psp;
  wire [12:0] nl_getPixel_acc_psp;
  wire [14:0] getPixel_acc_24_sdt;
  wire [15:0] nl_getPixel_acc_24_sdt;
  wire [11:0] getPixel_acc_34_psp;
  wire [12:0] nl_getPixel_acc_34_psp;
  wire [14:0] getPixel_acc_33_sdt;
  wire [15:0] nl_getPixel_acc_33_sdt;
  wire mux_4_tmp;
  wire [14:0] FRAME_if_acc_5_itm;
  wire [15:0] nl_FRAME_if_acc_5_itm;
  wire [5:0] FRAME_if_acc_43_itm;
  wire [6:0] nl_FRAME_if_acc_43_itm;
  wire [2:0] FRAME_if_acc_46_itm;
  wire [3:0] nl_FRAME_if_acc_46_itm;
  wire [5:0] FRAME_if_acc_21_itm;
  wire [6:0] nl_FRAME_if_acc_21_itm;
  wire [2:0] FRAME_if_acc_24_itm;
  wire [3:0] nl_FRAME_if_acc_24_itm;
  wire [14:0] FRAME_if_acc_4_psp_sva_mx0w0;
  wire [15:0] nl_FRAME_if_acc_4_psp_sva_mx0w0;
  wire [13:0] gx_5_lpi_1_dfm_mx0;
  wire [13:0] gy_5_lpi_1_dfm_mx0;
  wire [29:0] tmp_sum_1_sva_2;
  wire [30:0] nl_tmp_sum_1_sva_2;
  wire [29:0] tmp_sum_1_sva_1_mx0;
  wire [14:0] res_1_lpi_1_dfm_1;
  wire [7:0] cursor_size_1_lpi_1_dfm_mx0;
  wire [18:0] FRAME_p_1_sva_2;
  wire [19:0] nl_FRAME_p_1_sva_2;
  wire [18:0] FRAME_p_1_lpi_1_dfm;
  wire [12:0] getPixel_acc_28_sdt;
  wire [13:0] nl_getPixel_acc_28_sdt;
  wire [11:0] getPixel_acc_cse_5_sva;
  wire [12:0] nl_getPixel_acc_cse_5_sva;
  wire [12:0] getPixel_acc_29_sdt;
  wire [13:0] nl_getPixel_acc_29_sdt;
  wire [11:0] getPixel_acc_cse_3_sva;
  wire [12:0] nl_getPixel_acc_cse_3_sva;
  wire [11:0] getPixel_acc_cse_sva;
  wire [12:0] nl_getPixel_acc_cse_sva;
  wire [12:0] getPixel_acc_19_sdt;
  wire [13:0] nl_getPixel_acc_19_sdt;
  wire [12:0] getPixel_acc_20_sdt;
  wire [13:0] nl_getPixel_acc_20_sdt;
  wire [11:0] ACC1_3_ACC1_1_1_getPixel_acc_itm;
  wire [12:0] nl_ACC1_3_ACC1_1_1_getPixel_acc_itm;

  wire[14:0] FRAME_if_mux1h_nl;

  // Interconnect Declarations for Component Instantiations 
  assign nl_FRAME_if_acc_4_psp_sva_mx0w0 = conv_s2s_14_15(gx_5_lpi_1_dfm_mx0) + conv_s2s_14_15(gy_5_lpi_1_dfm_mx0);
  assign FRAME_if_acc_4_psp_sva_mx0w0 = nl_FRAME_if_acc_4_psp_sva_mx0w0[14:0];
  assign nl_FRAME_if_acc_5_itm = FRAME_if_acc_4_psp_sva_mx0w0 + 15'b111110000000001;
  assign FRAME_if_acc_5_itm = nl_FRAME_if_acc_5_itm[14:0];
  assign gx_5_lpi_1_dfm_mx0 = MUX_v_14_2_2({FRAME_if_acc_psp_1_sva_1 , ({1'b0 , ((~
      (FRAME_if_acc_psp_1_sva_1[12:0])) + 13'b1)})}, FRAME_if_acc_psp_1_sva_1[13]);
  assign gy_5_lpi_1_dfm_mx0 = MUX_v_14_2_2({FRAME_if_acc_10_psp_sva_1 , ({1'b0 ,
      ((~ (FRAME_if_acc_10_psp_sva_1[12:0])) + 13'b1)})}, FRAME_if_acc_10_psp_sva_1[13]);
  assign nl_tmp_sum_1_sva_2 = conv_s2s_15_30(conv_s2s_14_15(gx_5_lpi_1_dfm_mx0 &
      ({{13{FRAME_land_lpi_1_dfm_2}}, FRAME_land_lpi_1_dfm_2})) + conv_s2s_14_15(gy_5_lpi_1_dfm_mx0
      & ({{13{FRAME_land_lpi_1_dfm_2}}, FRAME_land_lpi_1_dfm_2}))) + FRAME_and_itm_1;
  assign tmp_sum_1_sva_2 = nl_tmp_sum_1_sva_2[29:0];
  assign tmp_sum_1_sva_1_mx0 = MUX_v_30_2_2({tmp_sum_1_sva_1 , tmp_sum_1_sva_2},
      main_stage_0_3);
  assign mux_4_tmp = MUX_s_1_2_2({FRAME_if_slc_2_svs , (FRAME_if_acc_5_itm[14])},
      FRAME_land_lpi_1_dfm_2);
  assign FRAME_if_mux1h_nl = MUX1HOT_v_15_3_2({15'b1111111111 , FRAME_if_acc_4_psp_sva
      , FRAME_if_acc_4_psp_sva_mx0w0}, {(~ mux_4_tmp) , ((~ FRAME_land_lpi_1_dfm_2)
      & mux_4_tmp) , (FRAME_land_lpi_1_dfm_2 & mux_4_tmp)});
  assign res_1_lpi_1_dfm_1 = (FRAME_if_mux1h_nl) & ({{14{FRAME_land_lpi_1_dfm_2}},
      FRAME_land_lpi_1_dfm_2});
  assign cursor_size_1_lpi_1_dfm_mx0 = MUX_v_8_2_2({cursor_size_1_lpi_1_dfm , cursor_size_rsc_mgc_in_wire_d},
      exit_FRAME_sva);
  assign nl_getPixel_acc_psp = (getPixel_acc_24_sdt[14:3]) + 12'b100100000001;
  assign getPixel_acc_psp = nl_getPixel_acc_psp[11:0];
  assign nl_FRAME_if_acc_43_itm = conv_s2s_5_6({(readslicef_5_4_1((({3'b101 , (getPixel_acc_24_sdt[0])
      , 1'b1}) + conv_u2s_4_5({(readslicef_4_3_1((conv_u2u_3_4({(readslicef_3_2_1((conv_u2u_2_3({(~
      (getPixel_acc_24_sdt[1])) , 1'b1}) + conv_u2u_2_3({(getPixel_acc_24_sdt[2])
      , (getPixel_acc_psp[5])})))) , 1'b1}) + conv_u2u_3_4({(readslicef_3_2_1((conv_u2u_2_3({(~
      (getPixel_acc_psp[0])) , 1'b1}) + conv_u2u_2_3({(getPixel_acc_psp[1]) , (~
      (getPixel_acc_psp[4]))})))) , (getPixel_acc_psp[7])})))) , (~ (getPixel_acc_psp[8]))}))))
      , 1'b1}) + conv_s2s_5_6({(readslicef_5_4_1((conv_u2s_3_5({(readslicef_3_2_1((conv_u2u_2_3({(~
      (getPixel_acc_psp[2])) , 1'b1}) + conv_u2u_2_3({(getPixel_acc_psp[3]) , 1'b1}))))
      , 1'b1}) + conv_s2s_3_5({(~ (getPixel_acc_psp[11:10])) , (~ (getPixel_acc_psp[6]))}))))
      , (getPixel_acc_psp[9])});
  assign FRAME_if_acc_43_itm = nl_FRAME_if_acc_43_itm[5:0];
  assign nl_getPixel_acc_24_sdt = conv_u2u_14_15({getPixel_acc_23_itm_1_sg1 , getPixel_acc_23_itm_3})
      + conv_u2u_14_15({getPixel_acc_22_itm_1_sg1 , getPixel_acc_22_itm_3});
  assign getPixel_acc_24_sdt = nl_getPixel_acc_24_sdt[14:0];
  assign nl_acc_imod_4_sva = (readslicef_4_3_1((conv_u2u_3_4({(readslicef_3_2_1((conv_u2u_2_3({(FRAME_if_acc_43_itm[3])
      , 1'b1}) + conv_u2u_2_3({(~ (FRAME_if_acc_43_itm[4])) , 1'b1})))) , 1'b1})
      + conv_u2u_2_4({(~ (FRAME_if_acc_43_itm[2])) , (~ (FRAME_if_acc_43_itm[5]))}))))
      + ({2'b10 , (FRAME_if_acc_43_itm[1])});
  assign acc_imod_4_sva = nl_acc_imod_4_sva[2:0];
  assign nl_FRAME_if_acc_46_itm = ({1'b1 , (acc_imod_4_sva[0]) , 1'b1}) + conv_u2s_2_3({(~
      (acc_imod_4_sva[1])) , (~ (acc_imod_4_sva[2]))});
  assign FRAME_if_acc_46_itm = nl_FRAME_if_acc_46_itm[2:0];
  assign nl_getPixel_acc_34_psp = (getPixel_acc_33_sdt[14:3]) + 12'b100100000001;
  assign getPixel_acc_34_psp = nl_getPixel_acc_34_psp[11:0];
  assign nl_FRAME_if_acc_21_itm = conv_s2s_5_6({(readslicef_5_4_1((({3'b101 , (getPixel_acc_33_sdt[0])
      , 1'b1}) + conv_u2s_4_5({(readslicef_4_3_1((conv_u2u_3_4({(readslicef_3_2_1((conv_u2u_2_3({(~
      (getPixel_acc_33_sdt[1])) , 1'b1}) + conv_u2u_2_3({(getPixel_acc_33_sdt[2])
      , (getPixel_acc_34_psp[5])})))) , 1'b1}) + conv_u2u_3_4({(readslicef_3_2_1((conv_u2u_2_3({(~
      (getPixel_acc_34_psp[0])) , 1'b1}) + conv_u2u_2_3({(getPixel_acc_34_psp[1])
      , (~ (getPixel_acc_34_psp[4]))})))) , (getPixel_acc_34_psp[7])})))) , (~ (getPixel_acc_34_psp[8]))}))))
      , 1'b1}) + conv_s2s_5_6({(readslicef_5_4_1((conv_u2s_3_5({(readslicef_3_2_1((conv_u2u_2_3({(~
      (getPixel_acc_34_psp[2])) , 1'b1}) + conv_u2u_2_3({(getPixel_acc_34_psp[3])
      , 1'b1})))) , 1'b1}) + conv_s2s_3_5({(~ (getPixel_acc_34_psp[11:10])) , (~
      (getPixel_acc_34_psp[6]))})))) , (getPixel_acc_34_psp[9])});
  assign FRAME_if_acc_21_itm = nl_FRAME_if_acc_21_itm[5:0];
  assign nl_getPixel_acc_33_sdt = conv_u2u_14_15({getPixel_acc_32_itm_1_sg1 , getPixel_acc_32_itm_3})
      + conv_u2u_14_15({getPixel_acc_31_itm_1_sg1 , getPixel_acc_31_itm_3});
  assign getPixel_acc_33_sdt = nl_getPixel_acc_33_sdt[14:0];
  assign nl_acc_imod_1_sva = (readslicef_4_3_1((conv_u2u_3_4({(readslicef_3_2_1((conv_u2u_2_3({(FRAME_if_acc_21_itm[3])
      , 1'b1}) + conv_u2u_2_3({(~ (FRAME_if_acc_21_itm[4])) , 1'b1})))) , 1'b1})
      + conv_u2u_2_4({(~ (FRAME_if_acc_21_itm[2])) , (~ (FRAME_if_acc_21_itm[5]))}))))
      + ({2'b10 , (FRAME_if_acc_21_itm[1])});
  assign acc_imod_1_sva = nl_acc_imod_1_sva[2:0];
  assign nl_FRAME_if_acc_24_itm = ({1'b1 , (acc_imod_1_sva[0]) , 1'b1}) + conv_u2s_2_3({(~
      (acc_imod_1_sva[1])) , (~ (acc_imod_1_sva[2]))});
  assign FRAME_if_acc_24_itm = nl_FRAME_if_acc_24_itm[2:0];
  assign nl_FRAME_p_1_sva_2 = FRAME_p_1_lpi_1_dfm + 19'b1;
  assign FRAME_p_1_sva_2 = nl_FRAME_p_1_sva_2[18:0];
  assign FRAME_p_1_lpi_1_dfm = FRAME_p_1_sva_1 & (signext_19_1(~ exit_FRAME_sva));
  assign nl_getPixel_acc_28_sdt = conv_u2u_12_13(~ ACC1_3_ACC1_1_1_getPixel_acc_itm)
      + conv_u2u_12_13(~ getPixel_acc_cse_5_sva);
  assign getPixel_acc_28_sdt = nl_getPixel_acc_28_sdt[12:0];
  assign nl_getPixel_acc_cse_5_sva = conv_u2u_11_12(conv_u2u_10_11(vin_rsc_mgc_in_wire_d[19:10])
      + conv_u2u_10_11(vin_rsc_mgc_in_wire_d[9:0])) + conv_u2u_10_12(vin_rsc_mgc_in_wire_d[29:20]);
  assign getPixel_acc_cse_5_sva = nl_getPixel_acc_cse_5_sva[11:0];
  assign nl_getPixel_acc_29_sdt = conv_u2u_12_13(getPixel_acc_cse_3_sva) + conv_u2u_12_13(getPixel_acc_cse_sva);
  assign getPixel_acc_29_sdt = nl_getPixel_acc_29_sdt[12:0];
  assign nl_getPixel_acc_cse_3_sva = conv_u2u_11_12(conv_u2u_10_11(vin_rsc_mgc_in_wire_d[79:70])
      + conv_u2u_10_11(vin_rsc_mgc_in_wire_d[69:60])) + conv_u2u_10_12(vin_rsc_mgc_in_wire_d[89:80]);
  assign getPixel_acc_cse_3_sva = nl_getPixel_acc_cse_3_sva[11:0];
  assign nl_getPixel_acc_cse_sva = conv_u2u_11_12(conv_u2u_10_11(regs_regs_1_sva[79:70])
      + conv_u2u_10_11(regs_regs_1_sva[69:60])) + conv_u2u_10_12(regs_regs_1_sva[89:80]);
  assign getPixel_acc_cse_sva = nl_getPixel_acc_cse_sva[11:0];
  assign nl_getPixel_acc_19_sdt = conv_u2u_12_13(~ ACC1_3_ACC1_1_1_getPixel_acc_itm)
      + conv_u2u_12_13(getPixel_acc_cse_5_sva);
  assign getPixel_acc_19_sdt = nl_getPixel_acc_19_sdt[12:0];
  assign nl_getPixel_acc_20_sdt = conv_u2u_12_13(~ getPixel_acc_cse_sva) + conv_u2u_12_13(getPixel_acc_cse_3_sva);
  assign getPixel_acc_20_sdt = nl_getPixel_acc_20_sdt[12:0];
  assign nl_ACC1_3_ACC1_1_1_getPixel_acc_itm = conv_u2u_11_12(conv_u2u_10_11(regs_regs_1_sva[19:10])
      + conv_u2u_10_11(regs_regs_1_sva[9:0])) + conv_u2u_10_12(regs_regs_1_sva[29:20]);
  assign ACC1_3_ACC1_1_1_getPixel_acc_itm = nl_ACC1_3_ACC1_1_1_getPixel_acc_itm[11:0];
  assign or_dcpl_1 = ~(FRAME_land_lpi_1_dfm_2 & main_stage_0_3);
  always @(posedge clk or negedge arst_n) begin
    if ( ~ arst_n ) begin
      sum_rsc_mgc_out_stdreg_d <= 30'b0;
      vout_rsc_mgc_out_stdreg_d <= 30'b0;
      FRAME_if_acc_4_psp_sva <= 15'b0;
      FRAME_if_slc_2_svs <= 1'b0;
      FRAME_if_acc_psp_1_sva_1 <= 14'b0;
      FRAME_if_acc_10_psp_sva_1 <= 14'b0;
      tmp_sum_1_sva_1 <= 30'b0;
      exit_FRAME_sva_1_st_2 <= 1'b0;
      FRAME_land_lpi_1_dfm_2 <= 1'b0;
      FRAME_and_itm_1 <= 30'b0;
      FRAME_slc_1_itm_2 <= 1'b0;
      FRAME_p_slc_FRAME_p_2_itm_2 <= 1'b0;
      FRAME_land_lpi_1_dfm_st_1 <= 1'b0;
      cursor_size_1_lpi_1_dfm <= 8'b0;
      exit_FRAME_sva <= 1'b1;
      main_stage_0_2 <= 1'b0;
      main_stage_0_3 <= 1'b0;
      getPixel_acc_32_itm_1_sg1 <= 13'b0;
      getPixel_acc_32_itm_3 <= 1'b0;
      getPixel_acc_31_itm_1_sg1 <= 13'b0;
      getPixel_acc_31_itm_3 <= 1'b0;
      getPixel_acc_23_itm_1_sg1 <= 13'b0;
      getPixel_acc_23_itm_3 <= 1'b0;
      getPixel_acc_22_itm_1_sg1 <= 13'b0;
      getPixel_acc_22_itm_3 <= 1'b0;
      FRAME_p_slc_FRAME_p_2_itm_1 <= 1'b0;
      FRAME_slc_1_itm_1 <= 1'b0;
      FRAME_p_1_sva_1 <= 19'b0;
      regs_regs_0_sva <= 90'b0;
      regs_regs_1_sva <= 90'b0;
    end
    else begin
      if ( en ) begin
        sum_rsc_mgc_out_stdreg_d <= MUX_v_30_2_2({tmp_sum_1_sva_2 , sum_rsc_mgc_out_stdreg_d},
            ~(main_stage_0_3 & exit_FRAME_sva_1_st_2));
        vout_rsc_mgc_out_stdreg_d <= MUX_v_30_2_2({vout_rsc_mgc_out_stdreg_d , ({(({18'b0
            , (~ FRAME_slc_1_itm_2)}) | (signext_19_4(res_1_lpi_1_dfm_1[14:11])))
            , (FRAME_p_slc_FRAME_p_2_itm_2 | (res_1_lpi_1_dfm_1[10])) , (res_1_lpi_1_dfm_1[9:0])})},
            main_stage_0_3);
        FRAME_if_acc_4_psp_sva <= MUX_v_15_2_2({FRAME_if_acc_4_psp_sva_mx0w0 , FRAME_if_acc_4_psp_sva},
            or_dcpl_1);
        FRAME_if_slc_2_svs <= MUX_s_1_2_2({(FRAME_if_acc_5_itm[14]) , FRAME_if_slc_2_svs},
            or_dcpl_1);
        FRAME_if_acc_psp_1_sva_1 <= nl_FRAME_if_acc_psp_1_sva_1[13:0];
        FRAME_if_acc_10_psp_sva_1 <= nl_FRAME_if_acc_10_psp_sva_1[13:0];
        tmp_sum_1_sva_1 <= tmp_sum_1_sva_1_mx0;
        exit_FRAME_sva_1_st_2 <= exit_FRAME_sva;
        FRAME_land_lpi_1_dfm_2 <= FRAME_land_lpi_1_dfm_st_1;
        FRAME_and_itm_1 <= tmp_sum_1_sva_1_mx0 & (signext_30_1(~ exit_FRAME_sva_1_st_2));
        FRAME_slc_1_itm_2 <= FRAME_slc_1_itm_1;
        FRAME_p_slc_FRAME_p_2_itm_2 <= FRAME_p_slc_FRAME_p_2_itm_1;
        FRAME_land_lpi_1_dfm_st_1 <= ~((readslicef_12_1_11((conv_u2u_11_12(readslicef_12_11_1((conv_u2u_11_12({(mouse_xy_rsc_mgc_in_wire_d[9:0])
            , 1'b1}) + conv_u2u_11_12({(~ (vga_xy_rsc_mgc_in_wire_d[9:0])) , 1'b1}))))
            + conv_s2u_11_12({3'b100 , cursor_size_1_lpi_1_dfm_mx0})))) | (readslicef_12_1_11((conv_u2u_11_12(readslicef_12_11_1((conv_u2u_11_12({(vga_xy_rsc_mgc_in_wire_d[9:0])
            , 1'b1}) + conv_u2u_11_12({(~ (mouse_xy_rsc_mgc_in_wire_d[9:0])) , 1'b1}))))
            + conv_s2u_11_12({3'b100 , cursor_size_1_lpi_1_dfm_mx0})))) | (readslicef_12_1_11((conv_u2u_11_12(readslicef_12_11_1((conv_u2u_11_12({(mouse_xy_rsc_mgc_in_wire_d[19:10])
            , 1'b1}) + conv_u2u_11_12({(~ (vga_xy_rsc_mgc_in_wire_d[19:10])) , 1'b1}))))
            + conv_s2u_11_12({3'b100 , cursor_size_1_lpi_1_dfm_mx0})))) | (readslicef_12_1_11((conv_u2u_11_12(readslicef_12_11_1((conv_u2u_11_12({(vga_xy_rsc_mgc_in_wire_d[19:10])
            , 1'b1}) + conv_u2u_11_12({(~ (mouse_xy_rsc_mgc_in_wire_d[19:10])) ,
            1'b1})))) + conv_s2u_11_12({3'b100 , cursor_size_1_lpi_1_dfm_mx0})))));
        cursor_size_1_lpi_1_dfm <= cursor_size_1_lpi_1_dfm_mx0;
        exit_FRAME_sva <= ~ (readslicef_15_1_14((conv_u2s_14_15(FRAME_p_1_sva_2[18:5])
            + 15'b100110010111011)));
        main_stage_0_2 <= 1'b1;
        main_stage_0_3 <= main_stage_0_2;
        getPixel_acc_32_itm_1_sg1 <= nl_getPixel_acc_32_itm_1_sg1[12:0];
        getPixel_acc_32_itm_3 <= getPixel_acc_29_sdt[0];
        getPixel_acc_31_itm_1_sg1 <= nl_getPixel_acc_31_itm_1_sg1[12:0];
        getPixel_acc_31_itm_3 <= getPixel_acc_28_sdt[0];
        getPixel_acc_23_itm_1_sg1 <= nl_getPixel_acc_23_itm_1_sg1[12:0];
        getPixel_acc_23_itm_3 <= getPixel_acc_20_sdt[0];
        getPixel_acc_22_itm_1_sg1 <= nl_getPixel_acc_22_itm_1_sg1[12:0];
        getPixel_acc_22_itm_3 <= getPixel_acc_19_sdt[0];
        FRAME_p_slc_FRAME_p_2_itm_1 <= FRAME_p_1_lpi_1_dfm[0];
        FRAME_slc_1_itm_1 <= readslicef_19_1_18(((~ FRAME_p_1_lpi_1_dfm) + 19'b110011010001010001));
        FRAME_p_1_sva_1 <= FRAME_p_1_sva_2;
        regs_regs_0_sva <= vin_rsc_mgc_in_wire_d;
        regs_regs_1_sva <= regs_regs_0_sva;
      end
    end
  end
  assign nl_FRAME_if_acc_psp_1_sva_1  = (conv_s2s_13_14(conv_u2s_12_13({(getPixel_acc_34_psp[10])
      , 1'b0 , (getPixel_acc_34_psp[10]) , 1'b0 , (getPixel_acc_34_psp[10]) , 1'b0
      , (getPixel_acc_34_psp[10]) , 1'b0 , (getPixel_acc_34_psp[10]) , 1'b0 , (signext_2_1(getPixel_acc_34_psp[6]))})
      + conv_s2s_11_13(conv_u2s_10_11({(getPixel_acc_34_psp[8]) , 1'b0 , (getPixel_acc_34_psp[8])
      , 1'b0 , (getPixel_acc_34_psp[8]) , 1'b0 , (getPixel_acc_34_psp[8]) , 1'b0
      , (signext_2_1(getPixel_acc_34_psp[4]))}) + conv_s2s_9_11(readslicef_10_9_1((conv_u2s_9_10({(getPixel_acc_34_psp[6])
      , 1'b0 , (getPixel_acc_34_psp[6]) , 1'b0 , (getPixel_acc_34_psp[6]) , 1'b0
      , (signext_2_1(getPixel_acc_34_psp[2])) , 1'b1}) + conv_s2s_8_10({(readslicef_8_7_1((conv_s2s_6_8({(~
      (getPixel_acc_34_psp[3])) , (readslicef_5_4_1((conv_u2u_4_5({(getPixel_acc_34_psp[3])
      , 1'b0 , (getPixel_acc_34_psp[3]) , 1'b1}) + conv_u2u_4_5({2'b11 , (getPixel_acc_34_psp[1])
      , (FRAME_if_acc_21_itm[4])})))) , 1'b1}) + conv_u2s_6_8({(readslicef_6_5_1((conv_u2u_5_6({(readslicef_5_4_1((conv_u2u_4_5({(readslicef_4_3_1((conv_u2u_3_4({(getPixel_acc_34_psp[0])
      , (getPixel_acc_33_sdt[1]) , 1'b1}) + conv_u2u_3_4({(FRAME_if_acc_21_itm[4])
      , (getPixel_acc_34_psp[0]) , 1'b1})))) , 1'b1}) + conv_u2u_4_5({(~ (FRAME_if_acc_21_itm[5]))
      , 1'b1 , (~ (FRAME_if_acc_21_itm[5])) , (FRAME_if_acc_21_itm[2])})))) , 1'b1})
      + conv_u2u_5_6({(getPixel_acc_34_psp[4]) , (getPixel_acc_34_psp[1]) , (signext_2_1(getPixel_acc_34_psp[10]))
      , (FRAME_if_acc_21_itm[3])})))) , (acc_imod_1_sva[1])})))) , (~((FRAME_if_acc_24_itm[2])
      & (~ (getPixel_acc_34_psp[11]))))})))))) + conv_u2s_11_14({(getPixel_acc_34_psp[9])
      , (conv_u2u_9_10({(getPixel_acc_34_psp[9]) , 1'b0 , (getPixel_acc_34_psp[9])
      , 1'b0 , (getPixel_acc_34_psp[9]) , 1'b0 , (getPixel_acc_34_psp[9]) , 1'b0
      , (getPixel_acc_34_psp[9])}) + conv_u2u_9_10(readslicef_10_9_1((({(getPixel_acc_34_psp[7])
      , 1'b0 , (getPixel_acc_34_psp[7]) , 1'b0 , (getPixel_acc_34_psp[7]) , 1'b0
      , (getPixel_acc_34_psp[7]) , 1'b0 , (getPixel_acc_34_psp[7]) , 1'b1}) + conv_u2u_9_10({(readslicef_9_8_1((conv_u2u_8_9({(getPixel_acc_34_psp[5])
      , 1'b0 , (getPixel_acc_34_psp[5]) , 1'b0 , (getPixel_acc_34_psp[5]) , 1'b0
      , (getPixel_acc_34_psp[5]) , 1'b1}) + conv_u2u_7_9({(getPixel_acc_34_psp[4])
      , 1'b0 , (getPixel_acc_34_psp[2]) , 1'b0 , (signext_2_1(getPixel_acc_34_psp[8]))
      , (~ (acc_imod_1_sva[2]))})))) , ((getPixel_acc_34_psp[11]) & (~ (FRAME_if_acc_24_itm[2]))
      & (FRAME_if_acc_24_itm[1]))})))))})) + ({(getPixel_acc_34_psp[11]) , 1'b0 ,
      (getPixel_acc_34_psp[11]) , 1'b0 , (getPixel_acc_34_psp[11]) , 1'b0 , (getPixel_acc_34_psp[11])
      , 1'b0 , (getPixel_acc_34_psp[11]) , 1'b0 , (getPixel_acc_34_psp[11]) , 1'b0
      , (getPixel_acc_34_psp[11]) , (getPixel_acc_33_sdt[2])});
  assign nl_FRAME_if_acc_10_psp_sva_1  = (conv_s2s_13_14(conv_u2s_12_13({(getPixel_acc_psp[10])
      , 1'b0 , (getPixel_acc_psp[10]) , 1'b0 , (getPixel_acc_psp[10]) , 1'b0 , (getPixel_acc_psp[10])
      , 1'b0 , (getPixel_acc_psp[10]) , 1'b0 , (signext_2_1(getPixel_acc_psp[6]))})
      + conv_s2s_11_13(conv_u2s_10_11({(getPixel_acc_psp[8]) , 1'b0 , (getPixel_acc_psp[8])
      , 1'b0 , (getPixel_acc_psp[8]) , 1'b0 , (getPixel_acc_psp[8]) , 1'b0 , (signext_2_1(getPixel_acc_psp[4]))})
      + conv_s2s_9_11(readslicef_10_9_1((conv_u2s_9_10({(getPixel_acc_psp[6]) , 1'b0
      , (getPixel_acc_psp[6]) , 1'b0 , (getPixel_acc_psp[6]) , 1'b0 , (signext_2_1(getPixel_acc_psp[2]))
      , 1'b1}) + conv_s2s_8_10({(readslicef_8_7_1((conv_s2s_6_8({(~ (getPixel_acc_psp[3]))
      , (readslicef_5_4_1((conv_u2u_4_5({(getPixel_acc_psp[3]) , 1'b0 , (getPixel_acc_psp[3])
      , 1'b1}) + conv_u2u_4_5({2'b11 , (getPixel_acc_psp[1]) , (FRAME_if_acc_43_itm[4])}))))
      , 1'b1}) + conv_u2s_6_8({(readslicef_6_5_1((conv_u2u_5_6({(readslicef_5_4_1((conv_u2u_4_5({(readslicef_4_3_1((conv_u2u_3_4({(getPixel_acc_psp[0])
      , (getPixel_acc_24_sdt[1]) , 1'b1}) + conv_u2u_3_4({(FRAME_if_acc_43_itm[4])
      , (getPixel_acc_psp[0]) , 1'b1})))) , 1'b1}) + conv_u2u_4_5({(~ (FRAME_if_acc_43_itm[5]))
      , 1'b1 , (~ (FRAME_if_acc_43_itm[5])) , (FRAME_if_acc_43_itm[2])})))) , 1'b1})
      + conv_u2u_5_6({(getPixel_acc_psp[4]) , (getPixel_acc_psp[1]) , (signext_2_1(getPixel_acc_psp[10]))
      , (FRAME_if_acc_43_itm[3])})))) , (acc_imod_4_sva[1])})))) , (~((FRAME_if_acc_46_itm[2])
      & (~ (getPixel_acc_psp[11]))))})))))) + conv_u2s_11_14({(getPixel_acc_psp[9])
      , (conv_u2u_9_10({(getPixel_acc_psp[9]) , 1'b0 , (getPixel_acc_psp[9]) , 1'b0
      , (getPixel_acc_psp[9]) , 1'b0 , (getPixel_acc_psp[9]) , 1'b0 , (getPixel_acc_psp[9])})
      + conv_u2u_9_10(readslicef_10_9_1((({(getPixel_acc_psp[7]) , 1'b0 , (getPixel_acc_psp[7])
      , 1'b0 , (getPixel_acc_psp[7]) , 1'b0 , (getPixel_acc_psp[7]) , 1'b0 , (getPixel_acc_psp[7])
      , 1'b1}) + conv_u2u_9_10({(readslicef_9_8_1((conv_u2u_8_9({(getPixel_acc_psp[5])
      , 1'b0 , (getPixel_acc_psp[5]) , 1'b0 , (getPixel_acc_psp[5]) , 1'b0 , (getPixel_acc_psp[5])
      , 1'b1}) + conv_u2u_7_9({(getPixel_acc_psp[4]) , 1'b0 , (getPixel_acc_psp[2])
      , 1'b0 , (signext_2_1(getPixel_acc_psp[8])) , (~ (acc_imod_4_sva[2]))}))))
      , ((getPixel_acc_psp[11]) & (~ (FRAME_if_acc_46_itm[2])) & (FRAME_if_acc_46_itm[1]))})))))}))
      + ({(getPixel_acc_psp[11]) , 1'b0 , (getPixel_acc_psp[11]) , 1'b0 , (getPixel_acc_psp[11])
      , 1'b0 , (getPixel_acc_psp[11]) , 1'b0 , (getPixel_acc_psp[11]) , 1'b0 , (getPixel_acc_psp[11])
      , 1'b0 , (getPixel_acc_psp[11]) , (getPixel_acc_24_sdt[2])});
  assign nl_getPixel_acc_32_itm_1_sg1  = conv_u2u_12_13(conv_u2u_11_12(conv_u2u_10_11(~
      (regs_regs_0_sva[29:20])) + conv_u2u_10_11(regs_regs_0_sva[69:60])) + conv_u2u_11_12(conv_u2u_10_11(regs_regs_0_sva[79:70])
      + conv_u2u_10_11(regs_regs_0_sva[89:80]))) + conv_u2u_12_13(getPixel_acc_29_sdt[12:1]);
  assign nl_getPixel_acc_31_itm_1_sg1  = conv_u2u_11_13(conv_u2u_10_11(~ (regs_regs_0_sva[9:0]))
      + conv_u2u_10_11(~ (regs_regs_0_sva[19:10]))) + conv_u2u_12_13(getPixel_acc_28_sdt[12:1]);
  assign nl_getPixel_acc_23_itm_1_sg1  = conv_u2u_12_13(conv_u2u_11_12(conv_u2u_10_11(vin_rsc_mgc_in_wire_d[59:50])
      + conv_u2u_10_11(~ (regs_regs_1_sva[39:30]))) + conv_u2u_11_12(conv_u2u_10_11(~
      (regs_regs_1_sva[49:40])) + conv_u2u_10_11(~ (regs_regs_1_sva[59:50])))) +
      conv_u2u_12_13(getPixel_acc_20_sdt[12:1]);
  assign nl_getPixel_acc_22_itm_1_sg1  = conv_u2u_11_13(conv_u2u_10_11(vin_rsc_mgc_in_wire_d[39:30])
      + conv_u2u_10_11(vin_rsc_mgc_in_wire_d[49:40])) + conv_u2u_12_13(getPixel_acc_19_sdt[12:1]);

  function [13:0] MUX_v_14_2_2;
    input [27:0] inputs;
    input [0:0] sel;
    reg [13:0] result;
  begin
    case (sel)
      1'b0 : begin
        result = inputs[27:14];
      end
      1'b1 : begin
        result = inputs[13:0];
      end
      default : begin
        result = inputs[27:14];
      end
    endcase
    MUX_v_14_2_2 = result;
  end
  endfunction


  function [29:0] MUX_v_30_2_2;
    input [59:0] inputs;
    input [0:0] sel;
    reg [29:0] result;
  begin
    case (sel)
      1'b0 : begin
        result = inputs[59:30];
      end
      1'b1 : begin
        result = inputs[29:0];
      end
      default : begin
        result = inputs[59:30];
      end
    endcase
    MUX_v_30_2_2 = result;
  end
  endfunction


  function [0:0] MUX_s_1_2_2;
    input [1:0] inputs;
    input [0:0] sel;
    reg [0:0] result;
  begin
    case (sel)
      1'b0 : begin
        result = inputs[1:1];
      end
      1'b1 : begin
        result = inputs[0:0];
      end
      default : begin
        result = inputs[1:1];
      end
    endcase
    MUX_s_1_2_2 = result;
  end
  endfunction


  function [14:0] MUX1HOT_v_15_3_2;
    input [44:0] inputs;
    input [2:0] sel;
    reg [14:0] result;
    integer i;
  begin
    result = inputs[0+:15] & {15{sel[0]}};
    for( i = 1; i < 3; i = i + 1 )
      result = result | (inputs[i*15+:15] & {15{sel[i]}});
    MUX1HOT_v_15_3_2 = result;
  end
  endfunction


  function [7:0] MUX_v_8_2_2;
    input [15:0] inputs;
    input [0:0] sel;
    reg [7:0] result;
  begin
    case (sel)
      1'b0 : begin
        result = inputs[15:8];
      end
      1'b1 : begin
        result = inputs[7:0];
      end
      default : begin
        result = inputs[15:8];
      end
    endcase
    MUX_v_8_2_2 = result;
  end
  endfunction


  function [3:0] readslicef_5_4_1;
    input [4:0] vector;
    reg [4:0] tmp;
  begin
    tmp = vector >> 1;
    readslicef_5_4_1 = tmp[3:0];
  end
  endfunction


  function [2:0] readslicef_4_3_1;
    input [3:0] vector;
    reg [3:0] tmp;
  begin
    tmp = vector >> 1;
    readslicef_4_3_1 = tmp[2:0];
  end
  endfunction


  function [1:0] readslicef_3_2_1;
    input [2:0] vector;
    reg [2:0] tmp;
  begin
    tmp = vector >> 1;
    readslicef_3_2_1 = tmp[1:0];
  end
  endfunction


  function [18:0] signext_19_1;
    input [0:0] vector;
  begin
    signext_19_1= {{18{vector[0]}}, vector};
  end
  endfunction


  function [18:0] signext_19_4;
    input [3:0] vector;
  begin
    signext_19_4= {{15{vector[3]}}, vector};
  end
  endfunction


  function [14:0] MUX_v_15_2_2;
    input [29:0] inputs;
    input [0:0] sel;
    reg [14:0] result;
  begin
    case (sel)
      1'b0 : begin
        result = inputs[29:15];
      end
      1'b1 : begin
        result = inputs[14:0];
      end
      default : begin
        result = inputs[29:15];
      end
    endcase
    MUX_v_15_2_2 = result;
  end
  endfunction


  function [29:0] signext_30_1;
    input [0:0] vector;
  begin
    signext_30_1= {{29{vector[0]}}, vector};
  end
  endfunction


  function [0:0] readslicef_12_1_11;
    input [11:0] vector;
    reg [11:0] tmp;
  begin
    tmp = vector >> 11;
    readslicef_12_1_11 = tmp[0:0];
  end
  endfunction


  function [10:0] readslicef_12_11_1;
    input [11:0] vector;
    reg [11:0] tmp;
  begin
    tmp = vector >> 1;
    readslicef_12_11_1 = tmp[10:0];
  end
  endfunction


  function [0:0] readslicef_15_1_14;
    input [14:0] vector;
    reg [14:0] tmp;
  begin
    tmp = vector >> 14;
    readslicef_15_1_14 = tmp[0:0];
  end
  endfunction


  function [0:0] readslicef_19_1_18;
    input [18:0] vector;
    reg [18:0] tmp;
  begin
    tmp = vector >> 18;
    readslicef_19_1_18 = tmp[0:0];
  end
  endfunction


  function [1:0] signext_2_1;
    input [0:0] vector;
  begin
    signext_2_1= {{1{vector[0]}}, vector};
  end
  endfunction


  function [8:0] readslicef_10_9_1;
    input [9:0] vector;
    reg [9:0] tmp;
  begin
    tmp = vector >> 1;
    readslicef_10_9_1 = tmp[8:0];
  end
  endfunction


  function [6:0] readslicef_8_7_1;
    input [7:0] vector;
    reg [7:0] tmp;
  begin
    tmp = vector >> 1;
    readslicef_8_7_1 = tmp[6:0];
  end
  endfunction


  function [4:0] readslicef_6_5_1;
    input [5:0] vector;
    reg [5:0] tmp;
  begin
    tmp = vector >> 1;
    readslicef_6_5_1 = tmp[4:0];
  end
  endfunction


  function [7:0] readslicef_9_8_1;
    input [8:0] vector;
    reg [8:0] tmp;
  begin
    tmp = vector >> 1;
    readslicef_9_8_1 = tmp[7:0];
  end
  endfunction


  function signed [14:0] conv_s2s_14_15 ;
    input signed [13:0]  vector ;
  begin
    conv_s2s_14_15 = {vector[13], vector};
  end
  endfunction


  function signed [29:0] conv_s2s_15_30 ;
    input signed [14:0]  vector ;
  begin
    conv_s2s_15_30 = {{15{vector[14]}}, vector};
  end
  endfunction


  function signed [5:0] conv_s2s_5_6 ;
    input signed [4:0]  vector ;
  begin
    conv_s2s_5_6 = {vector[4], vector};
  end
  endfunction


  function signed [4:0] conv_u2s_4_5 ;
    input [3:0]  vector ;
  begin
    conv_u2s_4_5 = {1'b0, vector};
  end
  endfunction


  function  [3:0] conv_u2u_3_4 ;
    input [2:0]  vector ;
  begin
    conv_u2u_3_4 = {1'b0, vector};
  end
  endfunction


  function  [2:0] conv_u2u_2_3 ;
    input [1:0]  vector ;
  begin
    conv_u2u_2_3 = {1'b0, vector};
  end
  endfunction


  function signed [4:0] conv_u2s_3_5 ;
    input [2:0]  vector ;
  begin
    conv_u2s_3_5 = {{2{1'b0}}, vector};
  end
  endfunction


  function signed [4:0] conv_s2s_3_5 ;
    input signed [2:0]  vector ;
  begin
    conv_s2s_3_5 = {{2{vector[2]}}, vector};
  end
  endfunction


  function  [14:0] conv_u2u_14_15 ;
    input [13:0]  vector ;
  begin
    conv_u2u_14_15 = {1'b0, vector};
  end
  endfunction


  function  [3:0] conv_u2u_2_4 ;
    input [1:0]  vector ;
  begin
    conv_u2u_2_4 = {{2{1'b0}}, vector};
  end
  endfunction


  function signed [2:0] conv_u2s_2_3 ;
    input [1:0]  vector ;
  begin
    conv_u2s_2_3 = {1'b0, vector};
  end
  endfunction


  function  [12:0] conv_u2u_12_13 ;
    input [11:0]  vector ;
  begin
    conv_u2u_12_13 = {1'b0, vector};
  end
  endfunction


  function  [11:0] conv_u2u_11_12 ;
    input [10:0]  vector ;
  begin
    conv_u2u_11_12 = {1'b0, vector};
  end
  endfunction


  function  [10:0] conv_u2u_10_11 ;
    input [9:0]  vector ;
  begin
    conv_u2u_10_11 = {1'b0, vector};
  end
  endfunction


  function  [11:0] conv_u2u_10_12 ;
    input [9:0]  vector ;
  begin
    conv_u2u_10_12 = {{2{1'b0}}, vector};
  end
  endfunction


  function  [11:0] conv_s2u_11_12 ;
    input signed [10:0]  vector ;
  begin
    conv_s2u_11_12 = {vector[10], vector};
  end
  endfunction


  function signed [14:0] conv_u2s_14_15 ;
    input [13:0]  vector ;
  begin
    conv_u2s_14_15 = {1'b0, vector};
  end
  endfunction


  function signed [13:0] conv_s2s_13_14 ;
    input signed [12:0]  vector ;
  begin
    conv_s2s_13_14 = {vector[12], vector};
  end
  endfunction


  function signed [12:0] conv_u2s_12_13 ;
    input [11:0]  vector ;
  begin
    conv_u2s_12_13 = {1'b0, vector};
  end
  endfunction


  function signed [12:0] conv_s2s_11_13 ;
    input signed [10:0]  vector ;
  begin
    conv_s2s_11_13 = {{2{vector[10]}}, vector};
  end
  endfunction


  function signed [10:0] conv_u2s_10_11 ;
    input [9:0]  vector ;
  begin
    conv_u2s_10_11 = {1'b0, vector};
  end
  endfunction


  function signed [10:0] conv_s2s_9_11 ;
    input signed [8:0]  vector ;
  begin
    conv_s2s_9_11 = {{2{vector[8]}}, vector};
  end
  endfunction


  function signed [9:0] conv_u2s_9_10 ;
    input [8:0]  vector ;
  begin
    conv_u2s_9_10 = {1'b0, vector};
  end
  endfunction


  function signed [9:0] conv_s2s_8_10 ;
    input signed [7:0]  vector ;
  begin
    conv_s2s_8_10 = {{2{vector[7]}}, vector};
  end
  endfunction


  function signed [7:0] conv_s2s_6_8 ;
    input signed [5:0]  vector ;
  begin
    conv_s2s_6_8 = {{2{vector[5]}}, vector};
  end
  endfunction


  function  [4:0] conv_u2u_4_5 ;
    input [3:0]  vector ;
  begin
    conv_u2u_4_5 = {1'b0, vector};
  end
  endfunction


  function signed [7:0] conv_u2s_6_8 ;
    input [5:0]  vector ;
  begin
    conv_u2s_6_8 = {{2{1'b0}}, vector};
  end
  endfunction


  function  [5:0] conv_u2u_5_6 ;
    input [4:0]  vector ;
  begin
    conv_u2u_5_6 = {1'b0, vector};
  end
  endfunction


  function signed [13:0] conv_u2s_11_14 ;
    input [10:0]  vector ;
  begin
    conv_u2s_11_14 = {{3{1'b0}}, vector};
  end
  endfunction


  function  [9:0] conv_u2u_9_10 ;
    input [8:0]  vector ;
  begin
    conv_u2u_9_10 = {1'b0, vector};
  end
  endfunction


  function  [8:0] conv_u2u_8_9 ;
    input [7:0]  vector ;
  begin
    conv_u2u_8_9 = {1'b0, vector};
  end
  endfunction


  function  [8:0] conv_u2u_7_9 ;
    input [6:0]  vector ;
  begin
    conv_u2u_7_9 = {{2{1'b0}}, vector};
  end
  endfunction


  function  [12:0] conv_u2u_11_13 ;
    input [10:0]  vector ;
  begin
    conv_u2u_11_13 = {{2{1'b0}}, vector};
  end
  endfunction

endmodule

// ------------------------------------------------------------------
//  Design Unit:    mouse_edge_counter
//  Generated from file(s):
//  774) $PROJECT_HOME/mouse_selection_edge_counter.c
// ------------------------------------------------------------------


module mouse_edge_counter (
  mouse_xy_rsc_z, cursor_size_rsc_z, vga_xy_rsc_z, vin_rsc_z, vout_rsc_z, sum_rsc_z,
      flag_rsc_z, clk, en, arst_n
);
  input [19:0] mouse_xy_rsc_z;
  input [7:0] cursor_size_rsc_z;
  input [19:0] vga_xy_rsc_z;
  input [89:0] vin_rsc_z;
  output [29:0] vout_rsc_z;
  output [29:0] sum_rsc_z;
  output flag_rsc_z;
  input clk;
  input en;
  input arst_n;


  // Interconnect Declarations
  wire [19:0] mouse_xy_rsc_mgc_in_wire_d;
  wire [7:0] cursor_size_rsc_mgc_in_wire_d;
  wire [19:0] vga_xy_rsc_mgc_in_wire_d;
  wire [89:0] vin_rsc_mgc_in_wire_d;
  wire [29:0] vout_rsc_mgc_out_stdreg_d;
  wire [29:0] sum_rsc_mgc_out_stdreg_d;


  // Interconnect Declarations for Component Instantiations 
  mgc_in_wire #(.rscid(1),
  .width(20)) mouse_xy_rsc_mgc_in_wire (
      .d(mouse_xy_rsc_mgc_in_wire_d),
      .z(mouse_xy_rsc_z)
    );
  mgc_in_wire #(.rscid(2),
  .width(8)) cursor_size_rsc_mgc_in_wire (
      .d(cursor_size_rsc_mgc_in_wire_d),
      .z(cursor_size_rsc_z)
    );
  mgc_in_wire #(.rscid(3),
  .width(20)) vga_xy_rsc_mgc_in_wire (
      .d(vga_xy_rsc_mgc_in_wire_d),
      .z(vga_xy_rsc_z)
    );
  mgc_in_wire #(.rscid(4),
  .width(90)) vin_rsc_mgc_in_wire (
      .d(vin_rsc_mgc_in_wire_d),
      .z(vin_rsc_z)
    );
  mgc_out_stdreg #(.rscid(5),
  .width(30)) vout_rsc_mgc_out_stdreg (
      .d(vout_rsc_mgc_out_stdreg_d),
      .z(vout_rsc_z)
    );
  mgc_out_stdreg #(.rscid(6),
  .width(30)) sum_rsc_mgc_out_stdreg (
      .d(sum_rsc_mgc_out_stdreg_d),
      .z(sum_rsc_z)
    );
  mgc_out_stdreg #(.rscid(7),
  .width(1)) flag_rsc_mgc_out_stdreg (
      .d(1'b1),
      .z(flag_rsc_z)
    );
  mouse_edge_counter_core mouse_edge_counter_core_inst (
      .clk(clk),
      .en(en),
      .arst_n(arst_n),
      .mouse_xy_rsc_mgc_in_wire_d(mouse_xy_rsc_mgc_in_wire_d),
      .cursor_size_rsc_mgc_in_wire_d(cursor_size_rsc_mgc_in_wire_d),
      .vga_xy_rsc_mgc_in_wire_d(vga_xy_rsc_mgc_in_wire_d),
      .vin_rsc_mgc_in_wire_d(vin_rsc_mgc_in_wire_d),
      .vout_rsc_mgc_out_stdreg_d(vout_rsc_mgc_out_stdreg_d),
      .sum_rsc_mgc_out_stdreg_d(sum_rsc_mgc_out_stdreg_d)
    );
endmodule



