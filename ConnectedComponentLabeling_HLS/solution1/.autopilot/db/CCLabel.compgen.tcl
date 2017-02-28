# This script segment is generated automatically by AutoPilot

# clear list
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_begin
    cg_default_interface_gen_bundle_begin
    AESL_LIB_XILADAPTER::native_axis_begin
}

# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 25 \
    name Image_r \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename Image_r \
    op interface \
    ports { Image_r_address0 { O 6 vector } Image_r_ce0 { O 1 bit } Image_r_q0 { I 32 vector } Image_r_address1 { O 6 vector } Image_r_ce1 { O 1 bit } Image_r_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'Image_r'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 26 \
    name lbImage \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename lbImage \
    op interface \
    ports { lbImage_address0 { O 6 vector } lbImage_ce0 { O 1 bit } lbImage_we0 { O 1 bit } lbImage_d0 { O 32 vector } lbImage_q0 { I 32 vector } lbImage_address1 { O 6 vector } lbImage_ce1 { O 1 bit } lbImage_we1 { O 1 bit } lbImage_d1 { O 32 vector } lbImage_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'lbImage'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 27 \
    name starData_status \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename starData_status \
    op interface \
    ports { starData_status_address0 { O 5 vector } starData_status_ce0 { O 1 bit } starData_status_we0 { O 1 bit } starData_status_d0 { O 1 vector } starData_status_q0 { I 1 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'starData_status'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 28 \
    name starData_totalIntensity \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename starData_totalIntensity \
    op interface \
    ports { starData_totalIntensity_address0 { O 5 vector } starData_totalIntensity_ce0 { O 1 bit } starData_totalIntensity_we0 { O 1 bit } starData_totalIntensity_d0 { O 32 vector } starData_totalIntensity_q0 { I 32 vector } starData_totalIntensity_address1 { O 5 vector } starData_totalIntensity_ce1 { O 1 bit } starData_totalIntensity_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'starData_totalIntensity'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 29 \
    name starData_x \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename starData_x \
    op interface \
    ports { starData_x_address0 { O 5 vector } starData_x_ce0 { O 1 bit } starData_x_we0 { O 1 bit } starData_x_d0 { O 32 vector } starData_x_q0 { I 32 vector } starData_x_address1 { O 5 vector } starData_x_ce1 { O 1 bit } starData_x_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'starData_x'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 30 \
    name starData_y \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename starData_y \
    op interface \
    ports { starData_y_address0 { O 5 vector } starData_y_ce0 { O 1 bit } starData_y_we0 { O 1 bit } starData_y_d0 { O 32 vector } starData_y_q0 { I 32 vector } starData_y_address1 { O 5 vector } starData_y_ce1 { O 1 bit } starData_y_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'starData_y'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 31 \
    name set \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename set \
    op interface \
    ports { set_address0 { O 5 vector } set_ce0 { O 1 bit } set_we0 { O 1 bit } set_d0 { O 32 vector } set_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'set'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 32 \
    name centroidData_root \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename centroidData_root \
    op interface \
    ports { centroidData_root_address0 { O 5 vector } centroidData_root_ce0 { O 1 bit } centroidData_root_we0 { O 1 bit } centroidData_root_d0 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'centroidData_root'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 33 \
    name centroidData_x \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename centroidData_x \
    op interface \
    ports { centroidData_x_address0 { O 5 vector } centroidData_x_ce0 { O 1 bit } centroidData_x_we0 { O 1 bit } centroidData_x_d0 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'centroidData_x'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 34 \
    name centroidData_y \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename centroidData_y \
    op interface \
    ports { centroidData_y_address0 { O 5 vector } centroidData_y_ce0 { O 1 bit } centroidData_y_we0 { O 1 bit } centroidData_y_d0 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'centroidData_y'"
}
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

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id -2 \
    name ap_return \
    type ap_return \
    reset_level 1 \
    sync_rst true \
    corename ap_return \
    op interface \
    ports { ap_return { O 32 vector } } \
} "
}


# Adapter definition:
set PortName ap_clk
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_clock] == "cg_default_interface_gen_clock"} {
eval "cg_default_interface_gen_clock { \
    id -3 \
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
    id -4 \
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


