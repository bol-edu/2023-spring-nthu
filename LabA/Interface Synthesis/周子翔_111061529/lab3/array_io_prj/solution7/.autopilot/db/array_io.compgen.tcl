# This script segment is generated automatically by AutoPilot

# clear list
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_begin
    cg_default_interface_gen_bundle_begin
    AESL_LIB_XILADAPTER::native_axis_begin
}

set axilite_register_dict [dict create]
# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1 \
    name d_o_0 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_d_o_0 \
    op interface \
    ports { d_o_0_din { O 16 vector } d_o_0_full_n { I 1 bit } d_o_0_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2 \
    name d_o_1 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_d_o_1 \
    op interface \
    ports { d_o_1_din { O 16 vector } d_o_1_full_n { I 1 bit } d_o_1_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3 \
    name d_o_2 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_d_o_2 \
    op interface \
    ports { d_o_2_din { O 16 vector } d_o_2_full_n { I 1 bit } d_o_2_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4 \
    name d_o_3 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_d_o_3 \
    op interface \
    ports { d_o_3_din { O 16 vector } d_o_3_full_n { I 1 bit } d_o_3_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5 \
    name d_o_4 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_d_o_4 \
    op interface \
    ports { d_o_4_din { O 16 vector } d_o_4_full_n { I 1 bit } d_o_4_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6 \
    name d_o_5 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_d_o_5 \
    op interface \
    ports { d_o_5_din { O 16 vector } d_o_5_full_n { I 1 bit } d_o_5_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 7 \
    name d_o_6 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_d_o_6 \
    op interface \
    ports { d_o_6_din { O 16 vector } d_o_6_full_n { I 1 bit } d_o_6_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8 \
    name d_o_7 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_d_o_7 \
    op interface \
    ports { d_o_7_din { O 16 vector } d_o_7_full_n { I 1 bit } d_o_7_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 9 \
    name d_i_0 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_d_i_0 \
    op interface \
    ports { d_i_0_dout { I 16 vector } d_i_0_empty_n { I 1 bit } d_i_0_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 10 \
    name d_i_1 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_d_i_1 \
    op interface \
    ports { d_i_1_dout { I 16 vector } d_i_1_empty_n { I 1 bit } d_i_1_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 11 \
    name d_i_2 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_d_i_2 \
    op interface \
    ports { d_i_2_dout { I 16 vector } d_i_2_empty_n { I 1 bit } d_i_2_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12 \
    name d_i_3 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_d_i_3 \
    op interface \
    ports { d_i_3_dout { I 16 vector } d_i_3_empty_n { I 1 bit } d_i_3_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 13 \
    name d_i_4 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_d_i_4 \
    op interface \
    ports { d_i_4_dout { I 16 vector } d_i_4_empty_n { I 1 bit } d_i_4_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14 \
    name d_i_5 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_d_i_5 \
    op interface \
    ports { d_i_5_dout { I 16 vector } d_i_5_empty_n { I 1 bit } d_i_5_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 15 \
    name d_i_6 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_d_i_6 \
    op interface \
    ports { d_i_6_dout { I 16 vector } d_i_6_empty_n { I 1 bit } d_i_6_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 16 \
    name d_i_7 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_d_i_7 \
    op interface \
    ports { d_i_7_dout { I 16 vector } d_i_7_empty_n { I 1 bit } d_i_7_read { O 1 bit } } \
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


