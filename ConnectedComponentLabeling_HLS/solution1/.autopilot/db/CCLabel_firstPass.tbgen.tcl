set moduleName CCLabel_firstPass
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set C_modelName CCLabel_firstPass
set C_modelType { int 32 }
set C_modelArgList { 
	{ Image_r int 32 regular {array 64 { 1 3 } 1 1 }  }
	{ lbImage int 32 regular {array 64 { 2 2 } 1 1 }  }
	{ starData_status int 1 regular {array 30 { 0 3 } 0 1 }  }
	{ starData_totalIntensity int 32 regular {array 30 { 2 3 } 1 1 }  }
	{ starData_x int 32 regular {array 30 { 2 3 } 1 1 }  }
	{ starData_y int 32 regular {array 30 { 2 3 } 1 1 }  }
	{ set int 32 regular {array 30 { 2 3 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "Image_r", "interface" : "memory", "bitwidth" : 32} , 
 	{ "Name" : "lbImage", "interface" : "memory", "bitwidth" : 32} , 
 	{ "Name" : "starData_status", "interface" : "memory", "bitwidth" : 1} , 
 	{ "Name" : "starData_totalIntensity", "interface" : "memory", "bitwidth" : 32} , 
 	{ "Name" : "starData_x", "interface" : "memory", "bitwidth" : 32} , 
 	{ "Name" : "starData_y", "interface" : "memory", "bitwidth" : 32} , 
 	{ "Name" : "set", "interface" : "memory", "bitwidth" : 32} , 
 	{ "Name" : "ap_return", "interface" : "wire", "bitwidth" : 32} ]}
# RTL Port declarations: 
set portNum 44
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ Image_r_address0 sc_out sc_lv 6 signal 0 } 
	{ Image_r_ce0 sc_out sc_logic 1 signal 0 } 
	{ Image_r_q0 sc_in sc_lv 32 signal 0 } 
	{ lbImage_address0 sc_out sc_lv 6 signal 1 } 
	{ lbImage_ce0 sc_out sc_logic 1 signal 1 } 
	{ lbImage_we0 sc_out sc_logic 1 signal 1 } 
	{ lbImage_d0 sc_out sc_lv 32 signal 1 } 
	{ lbImage_q0 sc_in sc_lv 32 signal 1 } 
	{ lbImage_address1 sc_out sc_lv 6 signal 1 } 
	{ lbImage_ce1 sc_out sc_logic 1 signal 1 } 
	{ lbImage_we1 sc_out sc_logic 1 signal 1 } 
	{ lbImage_d1 sc_out sc_lv 32 signal 1 } 
	{ lbImage_q1 sc_in sc_lv 32 signal 1 } 
	{ starData_status_address0 sc_out sc_lv 5 signal 2 } 
	{ starData_status_ce0 sc_out sc_logic 1 signal 2 } 
	{ starData_status_we0 sc_out sc_logic 1 signal 2 } 
	{ starData_status_d0 sc_out sc_lv 1 signal 2 } 
	{ starData_totalIntensity_address0 sc_out sc_lv 5 signal 3 } 
	{ starData_totalIntensity_ce0 sc_out sc_logic 1 signal 3 } 
	{ starData_totalIntensity_we0 sc_out sc_logic 1 signal 3 } 
	{ starData_totalIntensity_d0 sc_out sc_lv 32 signal 3 } 
	{ starData_totalIntensity_q0 sc_in sc_lv 32 signal 3 } 
	{ starData_x_address0 sc_out sc_lv 5 signal 4 } 
	{ starData_x_ce0 sc_out sc_logic 1 signal 4 } 
	{ starData_x_we0 sc_out sc_logic 1 signal 4 } 
	{ starData_x_d0 sc_out sc_lv 32 signal 4 } 
	{ starData_x_q0 sc_in sc_lv 32 signal 4 } 
	{ starData_y_address0 sc_out sc_lv 5 signal 5 } 
	{ starData_y_ce0 sc_out sc_logic 1 signal 5 } 
	{ starData_y_we0 sc_out sc_logic 1 signal 5 } 
	{ starData_y_d0 sc_out sc_lv 32 signal 5 } 
	{ starData_y_q0 sc_in sc_lv 32 signal 5 } 
	{ set_address0 sc_out sc_lv 5 signal 6 } 
	{ set_ce0 sc_out sc_logic 1 signal 6 } 
	{ set_we0 sc_out sc_logic 1 signal 6 } 
	{ set_d0 sc_out sc_lv 32 signal 6 } 
	{ set_q0 sc_in sc_lv 32 signal 6 } 
	{ ap_return sc_out sc_lv 32 signal -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "Image_r_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "Image_r", "role": "address0" }} , 
 	{ "name": "Image_r_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Image_r", "role": "ce0" }} , 
 	{ "name": "Image_r_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "Image_r", "role": "q0" }} , 
 	{ "name": "lbImage_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "lbImage", "role": "address0" }} , 
 	{ "name": "lbImage_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "lbImage", "role": "ce0" }} , 
 	{ "name": "lbImage_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "lbImage", "role": "we0" }} , 
 	{ "name": "lbImage_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "lbImage", "role": "d0" }} , 
 	{ "name": "lbImage_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "lbImage", "role": "q0" }} , 
 	{ "name": "lbImage_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "lbImage", "role": "address1" }} , 
 	{ "name": "lbImage_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "lbImage", "role": "ce1" }} , 
 	{ "name": "lbImage_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "lbImage", "role": "we1" }} , 
 	{ "name": "lbImage_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "lbImage", "role": "d1" }} , 
 	{ "name": "lbImage_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "lbImage", "role": "q1" }} , 
 	{ "name": "starData_status_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "starData_status", "role": "address0" }} , 
 	{ "name": "starData_status_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "starData_status", "role": "ce0" }} , 
 	{ "name": "starData_status_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "starData_status", "role": "we0" }} , 
 	{ "name": "starData_status_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "starData_status", "role": "d0" }} , 
 	{ "name": "starData_totalIntensity_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "starData_totalIntensity", "role": "address0" }} , 
 	{ "name": "starData_totalIntensity_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "starData_totalIntensity", "role": "ce0" }} , 
 	{ "name": "starData_totalIntensity_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "starData_totalIntensity", "role": "we0" }} , 
 	{ "name": "starData_totalIntensity_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "starData_totalIntensity", "role": "d0" }} , 
 	{ "name": "starData_totalIntensity_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "starData_totalIntensity", "role": "q0" }} , 
 	{ "name": "starData_x_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "starData_x", "role": "address0" }} , 
 	{ "name": "starData_x_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "starData_x", "role": "ce0" }} , 
 	{ "name": "starData_x_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "starData_x", "role": "we0" }} , 
 	{ "name": "starData_x_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "starData_x", "role": "d0" }} , 
 	{ "name": "starData_x_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "starData_x", "role": "q0" }} , 
 	{ "name": "starData_y_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "starData_y", "role": "address0" }} , 
 	{ "name": "starData_y_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "starData_y", "role": "ce0" }} , 
 	{ "name": "starData_y_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "starData_y", "role": "we0" }} , 
 	{ "name": "starData_y_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "starData_y", "role": "d0" }} , 
 	{ "name": "starData_y_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "starData_y", "role": "q0" }} , 
 	{ "name": "set_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "set", "role": "address0" }} , 
 	{ "name": "set_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "set", "role": "ce0" }} , 
 	{ "name": "set_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "set", "role": "we0" }} , 
 	{ "name": "set_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "set", "role": "d0" }} , 
 	{ "name": "set_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "set", "role": "q0" }} , 
 	{ "name": "ap_return", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ap_return", "role": "default" }}  ]}
set Spec2ImplPortList { 
	Image_r { ap_memory {  { Image_r_address0 mem_address 1 6 }  { Image_r_ce0 mem_ce 1 1 }  { Image_r_q0 mem_dout 0 32 } } }
	lbImage { ap_memory {  { lbImage_address0 mem_address 1 6 }  { lbImage_ce0 mem_ce 1 1 }  { lbImage_we0 mem_we 1 1 }  { lbImage_d0 mem_din 1 32 }  { lbImage_q0 mem_dout 0 32 }  { lbImage_address1 mem_address 1 6 }  { lbImage_ce1 mem_ce 1 1 }  { lbImage_we1 mem_we 1 1 }  { lbImage_d1 mem_din 1 32 }  { lbImage_q1 mem_dout 0 32 } } }
	starData_status { ap_memory {  { starData_status_address0 mem_address 1 5 }  { starData_status_ce0 mem_ce 1 1 }  { starData_status_we0 mem_we 1 1 }  { starData_status_d0 mem_din 1 1 } } }
	starData_totalIntensity { ap_memory {  { starData_totalIntensity_address0 mem_address 1 5 }  { starData_totalIntensity_ce0 mem_ce 1 1 }  { starData_totalIntensity_we0 mem_we 1 1 }  { starData_totalIntensity_d0 mem_din 1 32 }  { starData_totalIntensity_q0 mem_dout 0 32 } } }
	starData_x { ap_memory {  { starData_x_address0 mem_address 1 5 }  { starData_x_ce0 mem_ce 1 1 }  { starData_x_we0 mem_we 1 1 }  { starData_x_d0 mem_din 1 32 }  { starData_x_q0 mem_dout 0 32 } } }
	starData_y { ap_memory {  { starData_y_address0 mem_address 1 5 }  { starData_y_ce0 mem_ce 1 1 }  { starData_y_we0 mem_we 1 1 }  { starData_y_d0 mem_din 1 32 }  { starData_y_q0 mem_dout 0 32 } } }
	set { ap_memory {  { set_address0 mem_address 1 5 }  { set_ce0 mem_ce 1 1 }  { set_we0 mem_we 1 1 }  { set_d0 mem_din 1 32 }  { set_q0 mem_dout 0 32 } } }
}
