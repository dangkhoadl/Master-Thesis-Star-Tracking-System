# This script segment is generated automatically by AutoPilot

set id 9
set name CCLabel_fdiv_32ns_32ns_32_16
set corename simcore_fdiv
set op fdiv
set stage_num 16
set max_latency -1
set registered_input 1
set in0_width 32
set in0_signed 0
set in1_width 32
set in1_signed 0
set out_width 32
if {${::AESL::PGuard_simmodel_gen}} {
if {[info proc ap_gen_simcore_fdiv] == "ap_gen_simcore_fdiv"} {
eval "ap_gen_simcore_fdiv { \
    id ${id} \
    name ${name} \
    corename ${corename} \
    op ${op} \
    reset_level 1 \
    sync_rst true \
    stage_num ${stage_num} \
    max_latency ${max_latency} \
    registered_input ${registered_input} \
    in0_width ${in0_width} \
    in0_signed ${in0_signed} \
    in1_width ${in1_width} \
    in1_signed ${in1_signed} \
    out_width ${out_width} \
}"
} else {
puts "@W \[IMPL-100\] Cannot find ap_gen_simcore_fdiv, check your AutoPilot builtin lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler ${name}
}


set op fdiv
set corename FDiv
if {${::AESL::PGuard_autocg_gen} && (${::AESL::PGuard_autocg_fpip} || ${::AESL::PGuard_autocg_fpv6en})} {
if {[info proc ::AESL_LIB_XILINX_FPV6::fpv6_gen] == "::AESL_LIB_XILINX_FPV6::fpv6_gen"} {
eval "::AESL_LIB_XILINX_FPV6::fpv6_gen { \
    id ${id} \
    name ${name} \
    corename ${corename} \
    op ${op} \
    reset_level 1 \
    sync_rst true \
    stage_num ${stage_num} \
    max_latency ${max_latency} \
    registered_input ${registered_input} \
    in0_width ${in0_width} \
    in0_signed ${in0_signed} \
    in1_width ${in1_width} \
    in1_signed ${in1_signed} \
    out_width ${out_width} \
}"
} else {
puts "@W \[IMPL-101\] Cannot find ::AESL_LIB_XILINX_FPV6::fpv6_gen, check your platform lib"
}
}


set id 11
set name CCLabel_uitofp_32ns_32_6
set corename simcore_uitofp
set op uitofp
set stage_num 6
set max_latency -1
set registered_input 1
set in0_width 32
set in0_signed 0
set out_width 32
if {${::AESL::PGuard_simmodel_gen}} {
if {[info proc ap_gen_simcore_uitofp] == "ap_gen_simcore_uitofp"} {
eval "ap_gen_simcore_uitofp { \
    id ${id} \
    name ${name} \
    corename ${corename} \
    op ${op} \
    reset_level 1 \
    sync_rst true \
    stage_num ${stage_num} \
    max_latency ${max_latency} \
    registered_input ${registered_input} \
    in0_width ${in0_width} \
    in0_signed ${in0_signed} \
    out_width ${out_width} \
}"
} else {
puts "@W \[IMPL-100\] Cannot find ap_gen_simcore_uitofp, check your AutoPilot builtin lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler ${name}
}


set op uitofp
set corename Int2Float
if {${::AESL::PGuard_autocg_gen} && (${::AESL::PGuard_autocg_fpip} || ${::AESL::PGuard_autocg_fpv6en})} {
if {[info proc ::AESL_LIB_XILINX_FPV6::fpv6_gen] == "::AESL_LIB_XILINX_FPV6::fpv6_gen"} {
eval "::AESL_LIB_XILINX_FPV6::fpv6_gen { \
    id ${id} \
    name ${name} \
    corename ${corename} \
    op ${op} \
    reset_level 1 \
    sync_rst true \
    stage_num ${stage_num} \
    max_latency ${max_latency} \
    registered_input ${registered_input} \
    in0_width ${in0_width} \
    in0_signed ${in0_signed} \
    out_width ${out_width} \
}"
} else {
puts "@W \[IMPL-101\] Cannot find ::AESL_LIB_XILINX_FPV6::fpv6_gen, check your platform lib"
}
}


set id 14
set name CCLabel_fpext_32ns_64_1
set corename simcore_fpext
set op fpext
set stage_num 1
set max_latency -1
set registered_input 1
set in0_width 32
set in0_signed 0
set out_width 64
if {${::AESL::PGuard_simmodel_gen}} {
if {[info proc ap_gen_simcore_fpext] == "ap_gen_simcore_fpext"} {
eval "ap_gen_simcore_fpext { \
    id ${id} \
    name ${name} \
    corename ${corename} \
    op ${op} \
    reset_level 1 \
    sync_rst true \
    stage_num ${stage_num} \
    max_latency ${max_latency} \
    registered_input ${registered_input} \
    in0_width ${in0_width} \
    in0_signed ${in0_signed} \
    out_width ${out_width} \
}"
} else {
puts "@W \[IMPL-100\] Cannot find ap_gen_simcore_fpext, check your AutoPilot builtin lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler ${name}
}


set op fpext
set corename Float2Double
if {${::AESL::PGuard_autocg_gen} && (${::AESL::PGuard_autocg_fpip} || ${::AESL::PGuard_autocg_fpv6en})} {
if {[info proc ::AESL_LIB_XILINX_FPV6::fpv6_gen] == "::AESL_LIB_XILINX_FPV6::fpv6_gen"} {
eval "::AESL_LIB_XILINX_FPV6::fpv6_gen { \
    id ${id} \
    name ${name} \
    corename ${corename} \
    op ${op} \
    reset_level 1 \
    sync_rst true \
    stage_num ${stage_num} \
    max_latency ${max_latency} \
    registered_input ${registered_input} \
    in0_width ${in0_width} \
    in0_signed ${in0_signed} \
    out_width ${out_width} \
}"
} else {
puts "@W \[IMPL-101\] Cannot find ::AESL_LIB_XILINX_FPV6::fpv6_gen, check your platform lib"
}
}


# Memory (RAM/ROM)  definition:
set ID 16
set MemName CCLabel_calCentroid_mask_table1
set CoreName ap_simcore_mem
set PortList { 1 1 }
set DataWd 52
set AddrRange 64
set AddrWd 6
set TrueReset 0
set IsROM 1
set ROMData { "0111111111111111111111111111111111111111111111111111" "0011111111111111111111111111111111111111111111111111" "0001111111111111111111111111111111111111111111111111" "0000111111111111111111111111111111111111111111111111" "0000011111111111111111111111111111111111111111111111" "0000001111111111111111111111111111111111111111111111" "0000000111111111111111111111111111111111111111111111" "0000000011111111111111111111111111111111111111111111" "0000000001111111111111111111111111111111111111111111" "0000000000111111111111111111111111111111111111111111" "0000000000011111111111111111111111111111111111111111" "0000000000001111111111111111111111111111111111111111" "0000000000000111111111111111111111111111111111111111" "0000000000000011111111111111111111111111111111111111" "0000000000000001111111111111111111111111111111111111" "0000000000000000111111111111111111111111111111111111" "0000000000000000011111111111111111111111111111111111" "0000000000000000001111111111111111111111111111111111" "0000000000000000000111111111111111111111111111111111" "0000000000000000000011111111111111111111111111111111" "0000000000000000000001111111111111111111111111111111" "0000000000000000000000111111111111111111111111111111" "0000000000000000000000011111111111111111111111111111" "0000000000000000000000001111111111111111111111111111" "0000000000000000000000000111111111111111111111111111" "0000000000000000000000000011111111111111111111111111" "0000000000000000000000000001111111111111111111111111" "0000000000000000000000000000111111111111111111111111" "0000000000000000000000000000011111111111111111111111" "0000000000000000000000000000001111111111111111111111" "0000000000000000000000000000000111111111111111111111" "0000000000000000000000000000000011111111111111111111" "0000000000000000000000000000000001111111111111111111" "0000000000000000000000000000000000111111111111111111" "0000000000000000000000000000000000011111111111111111" "0000000000000000000000000000000000001111111111111111" "0000000000000000000000000000000000000111111111111111" "0000000000000000000000000000000000000011111111111111" "0000000000000000000000000000000000000001111111111111" "0000000000000000000000000000000000000000111111111111" "0000000000000000000000000000000000000000011111111111" "0000000000000000000000000000000000000000001111111111" "0000000000000000000000000000000000000000000111111111" "0000000000000000000000000000000000000000000011111111" "0000000000000000000000000000000000000000000001111111" "0000000000000000000000000000000000000000000000111111" "0000000000000000000000000000000000000000000000011111" "0000000000000000000000000000000000000000000000001111" "0000000000000000000000000000000000000000000000000111" "0000000000000000000000000000000000000000000000000011" "0000000000000000000000000000000000000000000000000001" "0000000000000000000000000000000000000000000000000000" "0000000000000000000000000000000000000000000000000000" "0000000000000000000000000000000000000000000000000000" "0000000000000000000000000000000000000000000000000000" "0000000000000000000000000000000000000000000000000000" "0000000000000000000000000000000000000000000000000000" "0000000000000000000000000000000000000000000000000000" "0000000000000000000000000000000000000000000000000000" "0000000000000000000000000000000000000000000000000000" "0000000000000000000000000000000000000000000000000000" "0000000000000000000000000000000000000000000000000000" "1111111111111111111111111111111111111111111111111111" "1111111111111111111111111111111111111111111111111111" }
set HasInitializer 1
set Initializer $ROMData
set NumOfStage 2
set MaxLatency -1
set DelayBudget 2.39
set ClkPeriod 10
set RegisteredInput 0
if {${::AESL::PGuard_simmodel_gen}} {
if {[info proc ap_gen_simcore_mem] == "ap_gen_simcore_mem"} {
    eval "ap_gen_simcore_mem { \
    id ${ID} \
    name ${MemName} \
    corename ${CoreName}  \
    op mem \
    reset_level 1 \
    sync_rst true \
    stage_num ${NumOfStage}  \
    registered_input ${RegisteredInput} \
    port_num 2 \
    port_list \{${PortList}\} \
    data_wd ${DataWd} \
    addr_wd ${AddrWd} \
    addr_range ${AddrRange} \
    true_reset ${TrueReset} \
    delay_budget ${DelayBudget} \
    clk_period ${ClkPeriod} \
    HasInitializer ${HasInitializer} \
    rom_data \{${ROMData}\} \
 } "
} else {
    puts "@W \[IMPL-102\] Cannot find ap_gen_simcore_mem, check your platform lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
  ::AP::rtl_comp_handler $MemName
}


set CoreName ROM_nP
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_ROM] == "::AESL_LIB_VIRTEX::xil_gen_ROM"} {
    eval "::AESL_LIB_VIRTEX::xil_gen_ROM { \
    id ${ID} \
    name ${MemName} \
    corename ${CoreName}  \
    op mem \
    reset_level 1 \
    sync_rst true \
    stage_num ${NumOfStage}  \
    registered_input ${RegisteredInput} \
    port_num 2 \
    port_list \{${PortList}\} \
    data_wd ${DataWd} \
    addr_wd ${AddrWd} \
    addr_range ${AddrRange} \
    true_reset ${TrueReset} \
    delay_budget ${DelayBudget} \
    clk_period ${ClkPeriod} \
    HasInitializer ${HasInitializer} \
    rom_data \{${ROMData}\} \
 } "
  } else {
    puts "@W \[IMPL-104\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_ROM, check your platform lib"
  }
}


# Memory (RAM/ROM)  definition:
set ID 17
set MemName CCLabel_calCentroid_one_half_table2
set CoreName ap_simcore_mem
set PortList { 1 1 }
set DataWd 53
set AddrRange 64
set AddrWd 6
set TrueReset 0
set IsROM 1
set ROMData { "00100000000000000000000000000000000000000000000000000" "00010000000000000000000000000000000000000000000000000" "00001000000000000000000000000000000000000000000000000" "00000100000000000000000000000000000000000000000000000" "00000010000000000000000000000000000000000000000000000" "00000001000000000000000000000000000000000000000000000" "00000000100000000000000000000000000000000000000000000" "00000000010000000000000000000000000000000000000000000" "00000000001000000000000000000000000000000000000000000" "00000000000100000000000000000000000000000000000000000" "00000000000010000000000000000000000000000000000000000" "00000000000001000000000000000000000000000000000000000" "00000000000000100000000000000000000000000000000000000" "00000000000000010000000000000000000000000000000000000" "00000000000000001000000000000000000000000000000000000" "00000000000000000100000000000000000000000000000000000" "00000000000000000010000000000000000000000000000000000" "00000000000000000001000000000000000000000000000000000" "00000000000000000000100000000000000000000000000000000" "00000000000000000000010000000000000000000000000000000" "00000000000000000000001000000000000000000000000000000" "00000000000000000000000100000000000000000000000000000" "00000000000000000000000010000000000000000000000000000" "00000000000000000000000001000000000000000000000000000" "00000000000000000000000000100000000000000000000000000" "00000000000000000000000000010000000000000000000000000" "00000000000000000000000000001000000000000000000000000" "00000000000000000000000000000100000000000000000000000" "00000000000000000000000000000010000000000000000000000" "00000000000000000000000000000001000000000000000000000" "00000000000000000000000000000000100000000000000000000" "00000000000000000000000000000000010000000000000000000" "00000000000000000000000000000000001000000000000000000" "00000000000000000000000000000000000100000000000000000" "00000000000000000000000000000000000010000000000000000" "00000000000000000000000000000000000001000000000000000" "00000000000000000000000000000000000000100000000000000" "00000000000000000000000000000000000000010000000000000" "00000000000000000000000000000000000000001000000000000" "00000000000000000000000000000000000000000100000000000" "00000000000000000000000000000000000000000010000000000" "00000000000000000000000000000000000000000001000000000" "00000000000000000000000000000000000000000000100000000" "00000000000000000000000000000000000000000000010000000" "00000000000000000000000000000000000000000000001000000" "00000000000000000000000000000000000000000000000100000" "00000000000000000000000000000000000000000000000010000" "00000000000000000000000000000000000000000000000001000" "00000000000000000000000000000000000000000000000000100" "00000000000000000000000000000000000000000000000000010" "00000000000000000000000000000000000000000000000000001" "00000000000000000000000000000000000000000000000000000" "00000000000000000000000000000000000000000000000000000" "00000000000000000000000000000000000000000000000000000" "00000000000000000000000000000000000000000000000000000" "00000000000000000000000000000000000000000000000000000" "00000000000000000000000000000000000000000000000000000" "00000000000000000000000000000000000000000000000000000" "00000000000000000000000000000000000000000000000000000" "00000000000000000000000000000000000000000000000000000" "00000000000000000000000000000000000000000000000000000" "00000000000000000000000000000000000000000000000000000" "10000000000000000000000000000000000000000000000000000" "01000000000000000000000000000000000000000000000000000" }
set HasInitializer 1
set Initializer $ROMData
set NumOfStage 2
set MaxLatency -1
set DelayBudget 2.39
set ClkPeriod 10
set RegisteredInput 0
if {${::AESL::PGuard_simmodel_gen}} {
if {[info proc ap_gen_simcore_mem] == "ap_gen_simcore_mem"} {
    eval "ap_gen_simcore_mem { \
    id ${ID} \
    name ${MemName} \
    corename ${CoreName}  \
    op mem \
    reset_level 1 \
    sync_rst true \
    stage_num ${NumOfStage}  \
    registered_input ${RegisteredInput} \
    port_num 2 \
    port_list \{${PortList}\} \
    data_wd ${DataWd} \
    addr_wd ${AddrWd} \
    addr_range ${AddrRange} \
    true_reset ${TrueReset} \
    delay_budget ${DelayBudget} \
    clk_period ${ClkPeriod} \
    HasInitializer ${HasInitializer} \
    rom_data \{${ROMData}\} \
 } "
} else {
    puts "@W \[IMPL-102\] Cannot find ap_gen_simcore_mem, check your platform lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
  ::AP::rtl_comp_handler $MemName
}


set CoreName ROM_nP
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_ROM] == "::AESL_LIB_VIRTEX::xil_gen_ROM"} {
    eval "::AESL_LIB_VIRTEX::xil_gen_ROM { \
    id ${ID} \
    name ${MemName} \
    corename ${CoreName}  \
    op mem \
    reset_level 1 \
    sync_rst true \
    stage_num ${NumOfStage}  \
    registered_input ${RegisteredInput} \
    port_num 2 \
    port_list \{${PortList}\} \
    data_wd ${DataWd} \
    addr_wd ${AddrWd} \
    addr_range ${AddrRange} \
    true_reset ${TrueReset} \
    delay_budget ${DelayBudget} \
    clk_period ${ClkPeriod} \
    HasInitializer ${HasInitializer} \
    rom_data \{${ROMData}\} \
 } "
  } else {
    puts "@W \[IMPL-104\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_ROM, check your platform lib"
  }
}


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
    id 19 \
    name set \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename set \
    op interface \
    ports { set_address0 { O 6 vector } set_ce0 { O 1 bit } set_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'set'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 20 \
    name totalIntensity \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename totalIntensity \
    op interface \
    ports { totalIntensity_address0 { O 6 vector } totalIntensity_ce0 { O 1 bit } totalIntensity_we0 { O 1 bit } totalIntensity_d0 { O 32 vector } totalIntensity_q0 { I 32 vector } totalIntensity_address1 { O 6 vector } totalIntensity_ce1 { O 1 bit } totalIntensity_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'totalIntensity'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 21 \
    name x_r \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename x_r \
    op interface \
    ports { x_r_address0 { O 6 vector } x_r_ce0 { O 1 bit } x_r_we0 { O 1 bit } x_r_d0 { O 32 vector } x_r_q0 { I 32 vector } x_r_address1 { O 6 vector } x_r_ce1 { O 1 bit } x_r_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'x_r'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 22 \
    name y_r \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename y_r \
    op interface \
    ports { y_r_address0 { O 6 vector } y_r_ce0 { O 1 bit } y_r_we0 { O 1 bit } y_r_d0 { O 32 vector } y_r_q0 { I 32 vector } y_r_address1 { O 6 vector } y_r_ce1 { O 1 bit } y_r_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'y_r'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 23 \
    name status \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename status \
    op interface \
    ports { status_address0 { O 6 vector } status_ce0 { O 1 bit } status_we0 { O 1 bit } status_d0 { O 1 vector } status_q0 { I 1 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'status'"
}
}


# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18 \
    name setCount \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_setCount \
    op interface \
    ports { setCount { I 32 vector } } \
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


