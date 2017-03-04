############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 2014 Xilinx Inc. All rights reserved.
############################################################
open_project ConnectedComponentLabeling_HLS
set_top CCLabel
add_files ConnectedComponentLabeling_HLS/core.cpp
add_files -tb ConnectedComponentLabeling_HLS/test_core.cpp
open_solution "solution1"
set_part {xc7z020clg484-1}
create_clock -period 10 -name default
source "./ConnectedComponentLabeling_HLS/solution1/directives.tcl"
csim_design
csynth_design
cosim_design
export_design -evaluate verilog -format ip_catalog
