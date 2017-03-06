set moduleName CCLabel
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set C_modelName CCLabel
set C_modelType { int 32 }
set C_modelArgList { 
	{ Image_r int 32 regular {bram 64 { 1 } 1 1 }  }
	{ X int 32 regular {bram 40 { 0 3 } 0 1 }  }
	{ Y int 32 regular {bram 40 { 0 3 } 0 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "Image_r", "interface" : "bram", "bitwidth" : 32 ,"direction" : "READONLY" ,"bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "Image","cData": "unsigned int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 63,"step" : 1}]}]}]} , 
 	{ "Name" : "X", "interface" : "bram", "bitwidth" : 32 ,"direction" : "WRITEONLY" ,"bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "X","cData": "unsigned int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 39,"step" : 1}]}]}]} , 
 	{ "Name" : "Y", "interface" : "bram", "bitwidth" : 32 ,"direction" : "WRITEONLY" ,"bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "Y","cData": "unsigned int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 39,"step" : 1}]}]}]} , 
 	{ "Name" : "ap_return", "interface" : "axi_slave", "bundle":"CRTLS","type":"ap_none","bitwidth" : 32,"bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "return","cData": "unsigned int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 1,"step" : 0}]}]}], "offset" : [{"out":16}]} ]}
# RTL Port declarations: 
set portNum 41
set portList { 
	{ s_axi_CRTLS_AWVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_CRTLS_AWREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_CRTLS_AWADDR sc_in sc_lv 5 signal -1 } 
	{ s_axi_CRTLS_WVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_CRTLS_WREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_CRTLS_WDATA sc_in sc_lv 32 signal -1 } 
	{ s_axi_CRTLS_WSTRB sc_in sc_lv 4 signal -1 } 
	{ s_axi_CRTLS_ARVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_CRTLS_ARREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_CRTLS_ARADDR sc_in sc_lv 5 signal -1 } 
	{ s_axi_CRTLS_RVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_CRTLS_RREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_CRTLS_RDATA sc_out sc_lv 32 signal -1 } 
	{ s_axi_CRTLS_RRESP sc_out sc_lv 2 signal -1 } 
	{ s_axi_CRTLS_BVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_CRTLS_BREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_CRTLS_BRESP sc_out sc_lv 2 signal -1 } 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst_n sc_in sc_logic 1 reset -1 active_low_sync } 
	{ Image_r_Addr_A sc_out sc_lv 32 signal 0 } 
	{ Image_r_EN_A sc_out sc_logic 1 signal 0 } 
	{ Image_r_WEN_A sc_out sc_lv 4 signal 0 } 
	{ Image_r_Din_A sc_out sc_lv 32 signal 0 } 
	{ Image_r_Dout_A sc_in sc_lv 32 signal 0 } 
	{ Image_r_Clk_A sc_out sc_logic 1 signal 0 } 
	{ Image_r_Rst_A sc_out sc_logic 1 signal 0 } 
	{ X_Addr_A sc_out sc_lv 32 signal 1 } 
	{ X_EN_A sc_out sc_logic 1 signal 1 } 
	{ X_WEN_A sc_out sc_lv 4 signal 1 } 
	{ X_Din_A sc_out sc_lv 32 signal 1 } 
	{ X_Dout_A sc_in sc_lv 32 signal 1 } 
	{ X_Clk_A sc_out sc_logic 1 signal 1 } 
	{ X_Rst_A sc_out sc_logic 1 signal 1 } 
	{ Y_Addr_A sc_out sc_lv 32 signal 2 } 
	{ Y_EN_A sc_out sc_logic 1 signal 2 } 
	{ Y_WEN_A sc_out sc_lv 4 signal 2 } 
	{ Y_Din_A sc_out sc_lv 32 signal 2 } 
	{ Y_Dout_A sc_in sc_lv 32 signal 2 } 
	{ Y_Clk_A sc_out sc_logic 1 signal 2 } 
	{ Y_Rst_A sc_out sc_logic 1 signal 2 } 
	{ interrupt sc_out sc_logic 1 signal -1 } 
}
set NewPortList {[ 
	{ "name": "s_axi_CRTLS_AWADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "CRTLS", "role": "AWADDR" },"address":[{"name":"CCLabel","role":"start","value":"0","valid_bit":"0"},{"name":"CCLabel","role":"continue","value":"0","valid_bit":"4"},{"name":"CCLabel","role":"auto_start","value":"0","valid_bit":"7"}] },
	{ "name": "s_axi_CRTLS_AWVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CRTLS", "role": "AWVALID" } },
	{ "name": "s_axi_CRTLS_AWREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CRTLS", "role": "AWREADY" } },
	{ "name": "s_axi_CRTLS_WVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CRTLS", "role": "WVALID" } },
	{ "name": "s_axi_CRTLS_WREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CRTLS", "role": "WREADY" } },
	{ "name": "s_axi_CRTLS_WDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "CRTLS", "role": "WDATA" } },
	{ "name": "s_axi_CRTLS_WSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "CRTLS", "role": "WSTRB" } },
	{ "name": "s_axi_CRTLS_ARADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "CRTLS", "role": "ARADDR" },"address":[{"name":"CCLabel","role":"start","value":"0","valid_bit":"0"},{"name":"CCLabel","role":"done","value":"0","valid_bit":"1"},{"name":"CCLabel","role":"idle","value":"0","valid_bit":"2"},{"name":"CCLabel","role":"ready","value":"0","valid_bit":"3"},{"name":"CCLabel","role":"auto_start","value":"0","valid_bit":"7"},{"name":"return","role":"data","value":"16"}] },
	{ "name": "s_axi_CRTLS_ARVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CRTLS", "role": "ARVALID" } },
	{ "name": "s_axi_CRTLS_ARREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CRTLS", "role": "ARREADY" } },
	{ "name": "s_axi_CRTLS_RVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CRTLS", "role": "RVALID" } },
	{ "name": "s_axi_CRTLS_RREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CRTLS", "role": "RREADY" } },
	{ "name": "s_axi_CRTLS_RDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "CRTLS", "role": "RDATA" } },
	{ "name": "s_axi_CRTLS_RRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "CRTLS", "role": "RRESP" } },
	{ "name": "s_axi_CRTLS_BVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CRTLS", "role": "BVALID" } },
	{ "name": "s_axi_CRTLS_BREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CRTLS", "role": "BREADY" } },
	{ "name": "s_axi_CRTLS_BRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "CRTLS", "role": "BRESP" } }, 
 	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst_n", "role": "default" }} , 
 	{ "name": "Image_r_Addr_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "Image_r", "role": "Addr_A" }} , 
 	{ "name": "Image_r_EN_A", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Image_r", "role": "EN_A" }} , 
 	{ "name": "Image_r_WEN_A", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "Image_r", "role": "WEN_A" }} , 
 	{ "name": "Image_r_Din_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "Image_r", "role": "Din_A" }} , 
 	{ "name": "Image_r_Dout_A", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "Image_r", "role": "Dout_A" }} , 
 	{ "name": "Image_r_Clk_A", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Image_r", "role": "Clk_A" }} , 
 	{ "name": "Image_r_Rst_A", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Image_r", "role": "Rst_A" }} , 
 	{ "name": "X_Addr_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "X", "role": "Addr_A" }} , 
 	{ "name": "X_EN_A", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "X", "role": "EN_A" }} , 
 	{ "name": "X_WEN_A", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "X", "role": "WEN_A" }} , 
 	{ "name": "X_Din_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "X", "role": "Din_A" }} , 
 	{ "name": "X_Dout_A", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "X", "role": "Dout_A" }} , 
 	{ "name": "X_Clk_A", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "X", "role": "Clk_A" }} , 
 	{ "name": "X_Rst_A", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "X", "role": "Rst_A" }} , 
 	{ "name": "Y_Addr_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "Y", "role": "Addr_A" }} , 
 	{ "name": "Y_EN_A", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Y", "role": "EN_A" }} , 
 	{ "name": "Y_WEN_A", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "Y", "role": "WEN_A" }} , 
 	{ "name": "Y_Din_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "Y", "role": "Din_A" }} , 
 	{ "name": "Y_Dout_A", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "Y", "role": "Dout_A" }} , 
 	{ "name": "Y_Clk_A", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Y", "role": "Clk_A" }} , 
 	{ "name": "Y_Rst_A", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Y", "role": "Rst_A" }} , 
 	{ "name": "interrupt", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "interrupt", "role": "default" }}  ]}
set Spec2ImplPortList { 
	Image_r { bram {  { Image_r_Addr_A mem_address 1 32 }  { Image_r_EN_A mem_ce 1 1 }  { Image_r_WEN_A mem_we 1 4 }  { Image_r_Din_A mem_din 1 32 }  { Image_r_Dout_A mem_dout 0 32 }  { Image_r_Clk_A mem_clk 1 1 }  { Image_r_Rst_A mem_rst 1 1 } } }
	X { bram {  { X_Addr_A mem_address 1 32 }  { X_EN_A mem_ce 1 1 }  { X_WEN_A mem_we 1 4 }  { X_Din_A mem_din 1 32 }  { X_Dout_A mem_dout 0 32 }  { X_Clk_A mem_clk 1 1 }  { X_Rst_A mem_rst 1 1 } } }
	Y { bram {  { Y_Addr_A mem_address 1 32 }  { Y_EN_A mem_ce 1 1 }  { Y_WEN_A mem_we 1 4 }  { Y_Din_A mem_din 1 32 }  { Y_Dout_A mem_dout 0 32 }  { Y_Clk_A mem_clk 1 1 }  { Y_Rst_A mem_rst 1 1 } } }
}

# RTL port scheduling information:
set fifoSchedulingInfoList { 
}

# RTL bus port read request latency information:
set busReadReqLatencyList { 
}

# RTL bus port write response latency information:
set busWriteResLatencyList { 
}

# RTL array port load latency information:
set memoryLoadLatencyList { 
}
