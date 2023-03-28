# This script segment is generated automatically by AutoPilot

set id 191
set name dct_mux_84_16_1_1
set corename simcore_mux
set op mux
set stage_num 1
set din0_width 16
set din0_signed 0
set din1_width 16
set din1_signed 0
set din2_width 16
set din2_signed 0
set din3_width 16
set din3_signed 0
set din4_width 16
set din4_signed 0
set din5_width 16
set din5_signed 0
set din6_width 16
set din6_signed 0
set din7_width 16
set din7_signed 0
set din8_width 4
set din8_signed 0
set dout_width 16
if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $name BINDTYPE {op} TYPE {mux} IMPL {auto} LATENCY 0 ALLOW_PRAGMA 1
}


set op mux
set corename Multiplexer
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_pipemux] == "::AESL_LIB_VIRTEX::xil_gen_pipemux"} {
eval "::AESL_LIB_VIRTEX::xil_gen_pipemux { \
    id ${id} \
    name ${name} \
    corename ${corename} \
    op ${op} \
    reset_level 1 \
    sync_rst true \
    stage_num ${stage_num} \
    din0_width ${din0_width} \
    din0_signed ${din0_signed} \
    din1_width ${din1_width} \
    din1_signed ${din1_signed} \
    din2_width ${din2_width} \
    din2_signed ${din2_signed} \
    din3_width ${din3_width} \
    din3_signed ${din3_signed} \
    din4_width ${din4_width} \
    din4_signed ${din4_signed} \
    din5_width ${din5_width} \
    din5_signed ${din5_signed} \
    din6_width ${din6_width} \
    din6_signed ${din6_signed} \
    din7_width ${din7_width} \
    din7_signed ${din7_signed} \
    din8_width ${din8_width} \
    din8_signed ${din8_signed} \
    dout_width ${dout_width} \
}"
} else {
puts "@W \[IMPL-101\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_pipemux, check your platform lib"
}
}


# clear list
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_begin
    cg_default_interface_gen_bundle_begin
    AESL_LIB_XILADAPTER::native_axis_begin
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 200 \
    name gmem \
    type other \
    dir O \
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
    id 201 \
    name sext_ln87 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_sext_ln87 \
    op interface \
    ports { sext_ln87 { I 58 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 202 \
    name buf_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_buf_read \
    op interface \
    ports { buf_read { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 203 \
    name buf_read_71 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_buf_read_71 \
    op interface \
    ports { buf_read_71 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 204 \
    name buf_read_79 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_buf_read_79 \
    op interface \
    ports { buf_read_79 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 205 \
    name buf_read_87 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_buf_read_87 \
    op interface \
    ports { buf_read_87 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 206 \
    name buf_read_95 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_buf_read_95 \
    op interface \
    ports { buf_read_95 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 207 \
    name buf_read_103 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_buf_read_103 \
    op interface \
    ports { buf_read_103 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 208 \
    name buf_read_111 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_buf_read_111 \
    op interface \
    ports { buf_read_111 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 209 \
    name buf_read_119 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_buf_read_119 \
    op interface \
    ports { buf_read_119 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 210 \
    name buf_read_64 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_buf_read_64 \
    op interface \
    ports { buf_read_64 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 211 \
    name buf_read_72 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_buf_read_72 \
    op interface \
    ports { buf_read_72 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 212 \
    name buf_read_80 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_buf_read_80 \
    op interface \
    ports { buf_read_80 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 213 \
    name buf_read_88 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_buf_read_88 \
    op interface \
    ports { buf_read_88 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 214 \
    name buf_read_96 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_buf_read_96 \
    op interface \
    ports { buf_read_96 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 215 \
    name buf_read_104 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_buf_read_104 \
    op interface \
    ports { buf_read_104 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 216 \
    name buf_read_112 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_buf_read_112 \
    op interface \
    ports { buf_read_112 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 217 \
    name buf_read_120 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_buf_read_120 \
    op interface \
    ports { buf_read_120 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 218 \
    name buf_read_65 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_buf_read_65 \
    op interface \
    ports { buf_read_65 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 219 \
    name buf_read_73 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_buf_read_73 \
    op interface \
    ports { buf_read_73 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 220 \
    name buf_read_81 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_buf_read_81 \
    op interface \
    ports { buf_read_81 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 221 \
    name buf_read_89 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_buf_read_89 \
    op interface \
    ports { buf_read_89 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 222 \
    name buf_read_97 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_buf_read_97 \
    op interface \
    ports { buf_read_97 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 223 \
    name buf_read_105 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_buf_read_105 \
    op interface \
    ports { buf_read_105 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 224 \
    name buf_read_113 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_buf_read_113 \
    op interface \
    ports { buf_read_113 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 225 \
    name buf_read_121 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_buf_read_121 \
    op interface \
    ports { buf_read_121 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 226 \
    name buf_read_66 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_buf_read_66 \
    op interface \
    ports { buf_read_66 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 227 \
    name buf_read_74 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_buf_read_74 \
    op interface \
    ports { buf_read_74 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 228 \
    name buf_read_82 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_buf_read_82 \
    op interface \
    ports { buf_read_82 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 229 \
    name buf_read_90 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_buf_read_90 \
    op interface \
    ports { buf_read_90 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 230 \
    name buf_read_98 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_buf_read_98 \
    op interface \
    ports { buf_read_98 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 231 \
    name buf_read_106 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_buf_read_106 \
    op interface \
    ports { buf_read_106 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 232 \
    name buf_read_114 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_buf_read_114 \
    op interface \
    ports { buf_read_114 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 233 \
    name buf_read_122 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_buf_read_122 \
    op interface \
    ports { buf_read_122 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 234 \
    name buf_read_67 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_buf_read_67 \
    op interface \
    ports { buf_read_67 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 235 \
    name buf_read_75 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_buf_read_75 \
    op interface \
    ports { buf_read_75 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 236 \
    name buf_read_83 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_buf_read_83 \
    op interface \
    ports { buf_read_83 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 237 \
    name buf_read_91 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_buf_read_91 \
    op interface \
    ports { buf_read_91 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 238 \
    name buf_read_99 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_buf_read_99 \
    op interface \
    ports { buf_read_99 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 239 \
    name buf_read_107 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_buf_read_107 \
    op interface \
    ports { buf_read_107 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 240 \
    name buf_read_115 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_buf_read_115 \
    op interface \
    ports { buf_read_115 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 241 \
    name buf_read_123 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_buf_read_123 \
    op interface \
    ports { buf_read_123 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 242 \
    name buf_read_68 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_buf_read_68 \
    op interface \
    ports { buf_read_68 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 243 \
    name buf_read_76 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_buf_read_76 \
    op interface \
    ports { buf_read_76 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 244 \
    name buf_read_84 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_buf_read_84 \
    op interface \
    ports { buf_read_84 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 245 \
    name buf_read_92 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_buf_read_92 \
    op interface \
    ports { buf_read_92 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 246 \
    name buf_read_100 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_buf_read_100 \
    op interface \
    ports { buf_read_100 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 247 \
    name buf_read_108 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_buf_read_108 \
    op interface \
    ports { buf_read_108 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 248 \
    name buf_read_116 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_buf_read_116 \
    op interface \
    ports { buf_read_116 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 249 \
    name buf_read_124 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_buf_read_124 \
    op interface \
    ports { buf_read_124 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 250 \
    name buf_read_69 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_buf_read_69 \
    op interface \
    ports { buf_read_69 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 251 \
    name buf_read_77 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_buf_read_77 \
    op interface \
    ports { buf_read_77 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 252 \
    name buf_read_85 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_buf_read_85 \
    op interface \
    ports { buf_read_85 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 253 \
    name buf_read_93 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_buf_read_93 \
    op interface \
    ports { buf_read_93 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 254 \
    name buf_read_101 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_buf_read_101 \
    op interface \
    ports { buf_read_101 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 255 \
    name buf_read_109 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_buf_read_109 \
    op interface \
    ports { buf_read_109 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 256 \
    name buf_read_117 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_buf_read_117 \
    op interface \
    ports { buf_read_117 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 257 \
    name buf_read_125 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_buf_read_125 \
    op interface \
    ports { buf_read_125 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 258 \
    name buf_read_70 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_buf_read_70 \
    op interface \
    ports { buf_read_70 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 259 \
    name buf_read_78 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_buf_read_78 \
    op interface \
    ports { buf_read_78 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 260 \
    name buf_read_86 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_buf_read_86 \
    op interface \
    ports { buf_read_86 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 261 \
    name buf_read_94 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_buf_read_94 \
    op interface \
    ports { buf_read_94 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 262 \
    name buf_read_102 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_buf_read_102 \
    op interface \
    ports { buf_read_102 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 263 \
    name buf_read_110 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_buf_read_110 \
    op interface \
    ports { buf_read_110 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 264 \
    name buf_read_118 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_buf_read_118 \
    op interface \
    ports { buf_read_118 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 265 \
    name buf_read_126 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_buf_read_126 \
    op interface \
    ports { buf_read_126 { I 16 vector } } \
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


