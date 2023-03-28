# This script segment is generated automatically by AutoPilot

# clear list
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_begin
    cg_default_interface_gen_bundle_begin
    AESL_LIB_XILADAPTER::native_axis_begin
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3 \
    name gmem \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_gmem \
    op interface \
    ports { m_axi_gmem_AWVALID { O 1 bit } m_axi_gmem_AWREADY { I 1 bit } m_axi_gmem_AWADDR { O 64 vector } m_axi_gmem_AWID { O 1 vector } m_axi_gmem_AWLEN { O 32 vector } m_axi_gmem_AWSIZE { O 3 vector } m_axi_gmem_AWBURST { O 2 vector } m_axi_gmem_AWLOCK { O 2 vector } m_axi_gmem_AWCACHE { O 4 vector } m_axi_gmem_AWPROT { O 3 vector } m_axi_gmem_AWQOS { O 4 vector } m_axi_gmem_AWREGION { O 4 vector } m_axi_gmem_AWUSER { O 1 vector } m_axi_gmem_WVALID { O 1 bit } m_axi_gmem_WREADY { I 1 bit } m_axi_gmem_WDATA { O 512 vector } m_axi_gmem_WSTRB { O 64 vector } m_axi_gmem_WLAST { O 1 bit } m_axi_gmem_WID { O 1 vector } m_axi_gmem_WUSER { O 1 vector } m_axi_gmem_ARVALID { O 1 bit } m_axi_gmem_ARREADY { I 1 bit } m_axi_gmem_ARADDR { O 64 vector } m_axi_gmem_ARID { O 1 vector } m_axi_gmem_ARLEN { O 32 vector } m_axi_gmem_ARSIZE { O 3 vector } m_axi_gmem_ARBURST { O 2 vector } m_axi_gmem_ARLOCK { O 2 vector } m_axi_gmem_ARCACHE { O 4 vector } m_axi_gmem_ARPROT { O 3 vector } m_axi_gmem_ARQOS { O 4 vector } m_axi_gmem_ARREGION { O 4 vector } m_axi_gmem_ARUSER { O 1 vector } m_axi_gmem_RVALID { I 1 bit } m_axi_gmem_RREADY { O 1 bit } m_axi_gmem_RDATA { I 512 vector } m_axi_gmem_RLAST { I 1 bit } m_axi_gmem_RID { I 1 vector } m_axi_gmem_RFIFONUM { I 9 vector } m_axi_gmem_RUSER { I 1 vector } m_axi_gmem_RRESP { I 2 vector } m_axi_gmem_BVALID { I 1 bit } m_axi_gmem_BREADY { O 1 bit } m_axi_gmem_BRESP { I 2 vector } m_axi_gmem_BID { I 1 vector } m_axi_gmem_BUSER { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4 \
    name sext_ln74 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_sext_ln74 \
    op interface \
    ports { sext_ln74 { I 58 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5 \
    name buf_7_7_out_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_buf_7_7_out_0_out \
    op interface \
    ports { buf_7_7_out_0_out { O 16 vector } buf_7_7_out_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6 \
    name buf_7_6_out_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_buf_7_6_out_0_out \
    op interface \
    ports { buf_7_6_out_0_out { O 16 vector } buf_7_6_out_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 7 \
    name buf_7_5_out_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_buf_7_5_out_0_out \
    op interface \
    ports { buf_7_5_out_0_out { O 16 vector } buf_7_5_out_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8 \
    name buf_7_4_out_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_buf_7_4_out_0_out \
    op interface \
    ports { buf_7_4_out_0_out { O 16 vector } buf_7_4_out_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 9 \
    name buf_7_3_out_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_buf_7_3_out_0_out \
    op interface \
    ports { buf_7_3_out_0_out { O 16 vector } buf_7_3_out_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 10 \
    name buf_7_2_out_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_buf_7_2_out_0_out \
    op interface \
    ports { buf_7_2_out_0_out { O 16 vector } buf_7_2_out_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 11 \
    name buf_7_1_out_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_buf_7_1_out_0_out \
    op interface \
    ports { buf_7_1_out_0_out { O 16 vector } buf_7_1_out_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12 \
    name buf_7_0_out_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_buf_7_0_out_0_out \
    op interface \
    ports { buf_7_0_out_0_out { O 16 vector } buf_7_0_out_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 13 \
    name buf_6_7_out_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_buf_6_7_out_0_out \
    op interface \
    ports { buf_6_7_out_0_out { O 16 vector } buf_6_7_out_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14 \
    name buf_6_6_out_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_buf_6_6_out_0_out \
    op interface \
    ports { buf_6_6_out_0_out { O 16 vector } buf_6_6_out_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 15 \
    name buf_6_5_out_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_buf_6_5_out_0_out \
    op interface \
    ports { buf_6_5_out_0_out { O 16 vector } buf_6_5_out_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 16 \
    name buf_6_4_out_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_buf_6_4_out_0_out \
    op interface \
    ports { buf_6_4_out_0_out { O 16 vector } buf_6_4_out_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 17 \
    name buf_6_3_out_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_buf_6_3_out_0_out \
    op interface \
    ports { buf_6_3_out_0_out { O 16 vector } buf_6_3_out_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18 \
    name buf_6_2_out_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_buf_6_2_out_0_out \
    op interface \
    ports { buf_6_2_out_0_out { O 16 vector } buf_6_2_out_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 19 \
    name buf_6_1_out_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_buf_6_1_out_0_out \
    op interface \
    ports { buf_6_1_out_0_out { O 16 vector } buf_6_1_out_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 20 \
    name buf_6_0_out_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_buf_6_0_out_0_out \
    op interface \
    ports { buf_6_0_out_0_out { O 16 vector } buf_6_0_out_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 21 \
    name buf_5_7_out_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_buf_5_7_out_0_out \
    op interface \
    ports { buf_5_7_out_0_out { O 16 vector } buf_5_7_out_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 22 \
    name buf_5_6_out_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_buf_5_6_out_0_out \
    op interface \
    ports { buf_5_6_out_0_out { O 16 vector } buf_5_6_out_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 23 \
    name buf_5_5_out_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_buf_5_5_out_0_out \
    op interface \
    ports { buf_5_5_out_0_out { O 16 vector } buf_5_5_out_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 24 \
    name buf_5_4_out_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_buf_5_4_out_0_out \
    op interface \
    ports { buf_5_4_out_0_out { O 16 vector } buf_5_4_out_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 25 \
    name buf_5_3_out_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_buf_5_3_out_0_out \
    op interface \
    ports { buf_5_3_out_0_out { O 16 vector } buf_5_3_out_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 26 \
    name buf_5_2_out_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_buf_5_2_out_0_out \
    op interface \
    ports { buf_5_2_out_0_out { O 16 vector } buf_5_2_out_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 27 \
    name buf_5_1_out_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_buf_5_1_out_0_out \
    op interface \
    ports { buf_5_1_out_0_out { O 16 vector } buf_5_1_out_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 28 \
    name buf_5_0_out_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_buf_5_0_out_0_out \
    op interface \
    ports { buf_5_0_out_0_out { O 16 vector } buf_5_0_out_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 29 \
    name buf_4_7_out_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_buf_4_7_out_0_out \
    op interface \
    ports { buf_4_7_out_0_out { O 16 vector } buf_4_7_out_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 30 \
    name buf_4_6_out_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_buf_4_6_out_0_out \
    op interface \
    ports { buf_4_6_out_0_out { O 16 vector } buf_4_6_out_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 31 \
    name buf_4_5_out_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_buf_4_5_out_0_out \
    op interface \
    ports { buf_4_5_out_0_out { O 16 vector } buf_4_5_out_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 32 \
    name buf_4_4_out_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_buf_4_4_out_0_out \
    op interface \
    ports { buf_4_4_out_0_out { O 16 vector } buf_4_4_out_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 33 \
    name buf_4_3_out_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_buf_4_3_out_0_out \
    op interface \
    ports { buf_4_3_out_0_out { O 16 vector } buf_4_3_out_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 34 \
    name buf_4_2_out_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_buf_4_2_out_0_out \
    op interface \
    ports { buf_4_2_out_0_out { O 16 vector } buf_4_2_out_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 35 \
    name buf_4_1_out_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_buf_4_1_out_0_out \
    op interface \
    ports { buf_4_1_out_0_out { O 16 vector } buf_4_1_out_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 36 \
    name buf_4_0_out_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_buf_4_0_out_0_out \
    op interface \
    ports { buf_4_0_out_0_out { O 16 vector } buf_4_0_out_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 37 \
    name buf_3_7_out_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_buf_3_7_out_0_out \
    op interface \
    ports { buf_3_7_out_0_out { O 16 vector } buf_3_7_out_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 38 \
    name buf_3_6_out_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_buf_3_6_out_0_out \
    op interface \
    ports { buf_3_6_out_0_out { O 16 vector } buf_3_6_out_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 39 \
    name buf_3_5_out_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_buf_3_5_out_0_out \
    op interface \
    ports { buf_3_5_out_0_out { O 16 vector } buf_3_5_out_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 40 \
    name buf_3_4_out_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_buf_3_4_out_0_out \
    op interface \
    ports { buf_3_4_out_0_out { O 16 vector } buf_3_4_out_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 41 \
    name buf_3_3_out_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_buf_3_3_out_0_out \
    op interface \
    ports { buf_3_3_out_0_out { O 16 vector } buf_3_3_out_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 42 \
    name buf_3_2_out_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_buf_3_2_out_0_out \
    op interface \
    ports { buf_3_2_out_0_out { O 16 vector } buf_3_2_out_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 43 \
    name buf_3_1_out_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_buf_3_1_out_0_out \
    op interface \
    ports { buf_3_1_out_0_out { O 16 vector } buf_3_1_out_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 44 \
    name buf_3_0_out_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_buf_3_0_out_0_out \
    op interface \
    ports { buf_3_0_out_0_out { O 16 vector } buf_3_0_out_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 45 \
    name buf_2_7_out_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_buf_2_7_out_0_out \
    op interface \
    ports { buf_2_7_out_0_out { O 16 vector } buf_2_7_out_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 46 \
    name buf_2_6_out_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_buf_2_6_out_0_out \
    op interface \
    ports { buf_2_6_out_0_out { O 16 vector } buf_2_6_out_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 47 \
    name buf_2_5_out_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_buf_2_5_out_0_out \
    op interface \
    ports { buf_2_5_out_0_out { O 16 vector } buf_2_5_out_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 48 \
    name buf_2_4_out_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_buf_2_4_out_0_out \
    op interface \
    ports { buf_2_4_out_0_out { O 16 vector } buf_2_4_out_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 49 \
    name buf_2_3_out_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_buf_2_3_out_0_out \
    op interface \
    ports { buf_2_3_out_0_out { O 16 vector } buf_2_3_out_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 50 \
    name buf_2_2_out_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_buf_2_2_out_0_out \
    op interface \
    ports { buf_2_2_out_0_out { O 16 vector } buf_2_2_out_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 51 \
    name buf_2_1_out_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_buf_2_1_out_0_out \
    op interface \
    ports { buf_2_1_out_0_out { O 16 vector } buf_2_1_out_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 52 \
    name buf_2_0_out_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_buf_2_0_out_0_out \
    op interface \
    ports { buf_2_0_out_0_out { O 16 vector } buf_2_0_out_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 53 \
    name buf_1_7_out_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_buf_1_7_out_0_out \
    op interface \
    ports { buf_1_7_out_0_out { O 16 vector } buf_1_7_out_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 54 \
    name buf_1_6_out_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_buf_1_6_out_0_out \
    op interface \
    ports { buf_1_6_out_0_out { O 16 vector } buf_1_6_out_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 55 \
    name buf_1_5_out_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_buf_1_5_out_0_out \
    op interface \
    ports { buf_1_5_out_0_out { O 16 vector } buf_1_5_out_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 56 \
    name buf_1_4_out_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_buf_1_4_out_0_out \
    op interface \
    ports { buf_1_4_out_0_out { O 16 vector } buf_1_4_out_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 57 \
    name buf_1_3_out_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_buf_1_3_out_0_out \
    op interface \
    ports { buf_1_3_out_0_out { O 16 vector } buf_1_3_out_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 58 \
    name buf_1_2_out_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_buf_1_2_out_0_out \
    op interface \
    ports { buf_1_2_out_0_out { O 16 vector } buf_1_2_out_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 59 \
    name buf_1_1_out_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_buf_1_1_out_0_out \
    op interface \
    ports { buf_1_1_out_0_out { O 16 vector } buf_1_1_out_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 60 \
    name buf_1_0_out_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_buf_1_0_out_0_out \
    op interface \
    ports { buf_1_0_out_0_out { O 16 vector } buf_1_0_out_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 61 \
    name buf_0_7_out_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_buf_0_7_out_0_out \
    op interface \
    ports { buf_0_7_out_0_out { O 16 vector } buf_0_7_out_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 62 \
    name buf_0_6_out_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_buf_0_6_out_0_out \
    op interface \
    ports { buf_0_6_out_0_out { O 16 vector } buf_0_6_out_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 63 \
    name buf_0_5_out_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_buf_0_5_out_0_out \
    op interface \
    ports { buf_0_5_out_0_out { O 16 vector } buf_0_5_out_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 64 \
    name buf_0_4_out_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_buf_0_4_out_0_out \
    op interface \
    ports { buf_0_4_out_0_out { O 16 vector } buf_0_4_out_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 65 \
    name buf_0_3_out_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_buf_0_3_out_0_out \
    op interface \
    ports { buf_0_3_out_0_out { O 16 vector } buf_0_3_out_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 66 \
    name buf_0_2_out_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_buf_0_2_out_0_out \
    op interface \
    ports { buf_0_2_out_0_out { O 16 vector } buf_0_2_out_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 67 \
    name buf_0_1_out_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_buf_0_1_out_0_out \
    op interface \
    ports { buf_0_1_out_0_out { O 16 vector } buf_0_1_out_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 68 \
    name buf_0_0_out_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_buf_0_0_out_0_out \
    op interface \
    ports { buf_0_0_out_0_out { O 16 vector } buf_0_0_out_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id -1 \
    name ap_ctrl \
    type ap_ctrl \
    reset_level 1 \
    sync_rst true \
    corename ap_ctrl \
    op interface \
    ports { ap_start { I 1 bit } ap_ready { O 1 bit } ap_done { O 1 bit } ap_idle { O 1 bit } } \
} "
}


# Adapter definition:
set PortName ap_clk
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_clock] == "cg_default_interface_gen_clock"} {
eval "cg_default_interface_gen_clock { \
    id -2 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_clk \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-113\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}


# Adapter definition:
set PortName ap_rst
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_reset] == "cg_default_interface_gen_reset"} {
eval "cg_default_interface_gen_reset { \
    id -3 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_rst \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-114\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}



# merge
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_end
    cg_default_interface_gen_bundle_end
    AESL_LIB_XILADAPTER::native_axis_end
}


# flow_control definition:
set InstName dct_flow_control_loop_pipe_sequential_init_U
set CompName dct_flow_control_loop_pipe_sequential_init
set name flow_control_loop_pipe_sequential_init
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control] == "::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control"} {
eval "::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control { \
    name ${name} \
    prefix dct_ \
}"
} else {
puts "@W \[IMPL-107\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control, check your platform lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $CompName BINDTYPE interface TYPE internal_upc_flow_control INSTNAME $InstName
}


