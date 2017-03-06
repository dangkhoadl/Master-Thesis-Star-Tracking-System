set moduleName CCLabel_preProcess
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set C_modelName CCLabel_preProcess
set C_modelType { void 0 }
set C_modelArgList { 
	{ Image_r int 32 regular {bram 64 { 1 } 1 1 }  }
	{ lbImage int 32 regular {array 64 { 0 3 } 0 1 } {global 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "Image_r", "interface" : "bram", "bitwidth" : 32 ,"direction" : "READONLY" } , 
 	{ "Name" : "lbImage", "interface" : "memory", "bitwidth" : 32,"bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "lbImage","cData": "unsigned int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 63,"step" : 1}]}]}],"extern" : 0} ]}
# RTL Port declarations: 
set portNum 15
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ Image_r_Addr_A sc_out sc_lv 32 signal 0 } 
	{ Image_r_EN_A sc_out sc_logic 1 signal 0 } 
	{ Image_r_WEN_A sc_out sc_lv 4 signal 0 } 
	{ Image_r_Din_A sc_out sc_lv 32 signal 0 } 
	{ Image_r_Dout_A sc_in sc_lv 32 signal 0 } 
	{ lbImage_address0 sc_out sc_lv 6 signal 1 } 
	{ lbImage_ce0 sc_out sc_logic 1 signal 1 } 
	{ lbImage_we0 sc_out sc_logic 1 signal 1 } 
	{ lbImage_d0 sc_out sc_lv 32 signal 1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "Image_r_Addr_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "Image_r", "role": "Addr_A" }} , 
 	{ "name": "Image_r_EN_A", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Image_r", "role": "EN_A" }} , 
 	{ "name": "Image_r_WEN_A", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "Image_r", "role": "WEN_A" }} , 
 	{ "name": "Image_r_Din_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "Image_r", "role": "Din_A" }} , 
 	{ "name": "Image_r_Dout_A", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "Image_r", "role": "Dout_A" }} , 
 	{ "name": "lbImage_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "lbImage", "role": "address0" }} , 
 	{ "name": "lbImage_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "lbImage", "role": "ce0" }} , 
 	{ "name": "lbImage_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "lbImage", "role": "we0" }} , 
 	{ "name": "lbImage_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "lbImage", "role": "d0" }}  ]}
set Spec2ImplPortList { 
	Image_r { bram {  { Image_r_Addr_A mem_address 1 32 }  { Image_r_EN_A mem_ce 1 1 }  { Image_r_WEN_A mem_we 1 4 }  { Image_r_Din_A mem_din 1 32 }  { Image_r_Dout_A mem_dout 0 32 } } }
	lbImage { ap_memory {  { lbImage_address0 mem_address 1 6 }  { lbImage_ce0 mem_ce 1 1 }  { lbImage_we0 mem_we 1 1 }  { lbImage_d0 mem_din 1 32 } } }
}
