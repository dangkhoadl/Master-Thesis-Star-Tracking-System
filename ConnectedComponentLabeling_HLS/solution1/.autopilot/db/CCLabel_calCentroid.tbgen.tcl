set moduleName CCLabel_calCentroid
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set C_modelName CCLabel_calCentroid
set C_modelType { int 32 }
set C_modelArgList { 
	{ setCount int 32 regular  }
	{ X int 32 regular {bram 40 { 0 3 } 0 1 }  }
	{ Y int 32 regular {bram 40 { 0 3 } 0 1 }  }
	{ set int 32 regular {array 40 { 1 3 } 1 1 } {global 0}  }
	{ totalIntensity int 32 regular {array 40 { 2 1 } 1 1 } {global 2}  }
	{ x_r int 32 regular {array 40 { 2 1 } 1 1 } {global 2}  }
	{ y_r int 32 regular {array 40 { 2 1 } 1 1 } {global 2}  }
	{ status int 1 regular {array 40 { 2 3 } 1 1 } {global 2}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "setCount", "interface" : "wire", "bitwidth" : 32} , 
 	{ "Name" : "X", "interface" : "bram", "bitwidth" : 32 ,"direction" : "WRITEONLY" } , 
 	{ "Name" : "Y", "interface" : "bram", "bitwidth" : 32 ,"direction" : "WRITEONLY" } , 
 	{ "Name" : "set", "interface" : "memory", "bitwidth" : 32,"bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "set","cData": "unsigned int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 39,"step" : 1}]}]}],"extern" : 0} , 
 	{ "Name" : "totalIntensity", "interface" : "memory", "bitwidth" : 32,"bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "totalIntensity","cData": "unsigned int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 39,"step" : 1}]}]}],"extern" : 0} , 
 	{ "Name" : "x_r", "interface" : "memory", "bitwidth" : 32,"bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "x","cData": "unsigned int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 39,"step" : 1}]}]}],"extern" : 0} , 
 	{ "Name" : "y_r", "interface" : "memory", "bitwidth" : 32,"bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "y","cData": "unsigned int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 39,"step" : 1}]}]}],"extern" : 0} , 
 	{ "Name" : "status", "interface" : "memory", "bitwidth" : 1,"bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "status","cData": "bool","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 39,"step" : 1}]}]}],"extern" : 0} , 
 	{ "Name" : "ap_return", "interface" : "wire", "bitwidth" : 32} ]}
# RTL Port declarations: 
set portNum 50
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ setCount sc_in sc_lv 32 signal 0 } 
	{ X_Addr_A sc_out sc_lv 32 signal 1 } 
	{ X_EN_A sc_out sc_logic 1 signal 1 } 
	{ X_WEN_A sc_out sc_lv 4 signal 1 } 
	{ X_Din_A sc_out sc_lv 32 signal 1 } 
	{ X_Dout_A sc_in sc_lv 32 signal 1 } 
	{ Y_Addr_A sc_out sc_lv 32 signal 2 } 
	{ Y_EN_A sc_out sc_logic 1 signal 2 } 
	{ Y_WEN_A sc_out sc_lv 4 signal 2 } 
	{ Y_Din_A sc_out sc_lv 32 signal 2 } 
	{ Y_Dout_A sc_in sc_lv 32 signal 2 } 
	{ set_address0 sc_out sc_lv 6 signal 3 } 
	{ set_ce0 sc_out sc_logic 1 signal 3 } 
	{ set_q0 sc_in sc_lv 32 signal 3 } 
	{ totalIntensity_address0 sc_out sc_lv 6 signal 4 } 
	{ totalIntensity_ce0 sc_out sc_logic 1 signal 4 } 
	{ totalIntensity_we0 sc_out sc_logic 1 signal 4 } 
	{ totalIntensity_d0 sc_out sc_lv 32 signal 4 } 
	{ totalIntensity_q0 sc_in sc_lv 32 signal 4 } 
	{ totalIntensity_address1 sc_out sc_lv 6 signal 4 } 
	{ totalIntensity_ce1 sc_out sc_logic 1 signal 4 } 
	{ totalIntensity_q1 sc_in sc_lv 32 signal 4 } 
	{ x_r_address0 sc_out sc_lv 6 signal 5 } 
	{ x_r_ce0 sc_out sc_logic 1 signal 5 } 
	{ x_r_we0 sc_out sc_logic 1 signal 5 } 
	{ x_r_d0 sc_out sc_lv 32 signal 5 } 
	{ x_r_q0 sc_in sc_lv 32 signal 5 } 
	{ x_r_address1 sc_out sc_lv 6 signal 5 } 
	{ x_r_ce1 sc_out sc_logic 1 signal 5 } 
	{ x_r_q1 sc_in sc_lv 32 signal 5 } 
	{ y_r_address0 sc_out sc_lv 6 signal 6 } 
	{ y_r_ce0 sc_out sc_logic 1 signal 6 } 
	{ y_r_we0 sc_out sc_logic 1 signal 6 } 
	{ y_r_d0 sc_out sc_lv 32 signal 6 } 
	{ y_r_q0 sc_in sc_lv 32 signal 6 } 
	{ y_r_address1 sc_out sc_lv 6 signal 6 } 
	{ y_r_ce1 sc_out sc_logic 1 signal 6 } 
	{ y_r_q1 sc_in sc_lv 32 signal 6 } 
	{ status_address0 sc_out sc_lv 6 signal 7 } 
	{ status_ce0 sc_out sc_logic 1 signal 7 } 
	{ status_we0 sc_out sc_logic 1 signal 7 } 
	{ status_d0 sc_out sc_lv 1 signal 7 } 
	{ status_q0 sc_in sc_lv 1 signal 7 } 
	{ ap_return sc_out sc_lv 32 signal -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "setCount", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "setCount", "role": "default" }} , 
 	{ "name": "X_Addr_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "X", "role": "Addr_A" }} , 
 	{ "name": "X_EN_A", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "X", "role": "EN_A" }} , 
 	{ "name": "X_WEN_A", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "X", "role": "WEN_A" }} , 
 	{ "name": "X_Din_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "X", "role": "Din_A" }} , 
 	{ "name": "X_Dout_A", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "X", "role": "Dout_A" }} , 
 	{ "name": "Y_Addr_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "Y", "role": "Addr_A" }} , 
 	{ "name": "Y_EN_A", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Y", "role": "EN_A" }} , 
 	{ "name": "Y_WEN_A", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "Y", "role": "WEN_A" }} , 
 	{ "name": "Y_Din_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "Y", "role": "Din_A" }} , 
 	{ "name": "Y_Dout_A", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "Y", "role": "Dout_A" }} , 
 	{ "name": "set_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "set", "role": "address0" }} , 
 	{ "name": "set_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "set", "role": "ce0" }} , 
 	{ "name": "set_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "set", "role": "q0" }} , 
 	{ "name": "totalIntensity_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "totalIntensity", "role": "address0" }} , 
 	{ "name": "totalIntensity_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "totalIntensity", "role": "ce0" }} , 
 	{ "name": "totalIntensity_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "totalIntensity", "role": "we0" }} , 
 	{ "name": "totalIntensity_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "totalIntensity", "role": "d0" }} , 
 	{ "name": "totalIntensity_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "totalIntensity", "role": "q0" }} , 
 	{ "name": "totalIntensity_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "totalIntensity", "role": "address1" }} , 
 	{ "name": "totalIntensity_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "totalIntensity", "role": "ce1" }} , 
 	{ "name": "totalIntensity_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "totalIntensity", "role": "q1" }} , 
 	{ "name": "x_r_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "x_r", "role": "address0" }} , 
 	{ "name": "x_r_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "x_r", "role": "ce0" }} , 
 	{ "name": "x_r_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "x_r", "role": "we0" }} , 
 	{ "name": "x_r_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "x_r", "role": "d0" }} , 
 	{ "name": "x_r_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "x_r", "role": "q0" }} , 
 	{ "name": "x_r_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "x_r", "role": "address1" }} , 
 	{ "name": "x_r_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "x_r", "role": "ce1" }} , 
 	{ "name": "x_r_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "x_r", "role": "q1" }} , 
 	{ "name": "y_r_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "y_r", "role": "address0" }} , 
 	{ "name": "y_r_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "y_r", "role": "ce0" }} , 
 	{ "name": "y_r_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "y_r", "role": "we0" }} , 
 	{ "name": "y_r_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "y_r", "role": "d0" }} , 
 	{ "name": "y_r_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "y_r", "role": "q0" }} , 
 	{ "name": "y_r_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "y_r", "role": "address1" }} , 
 	{ "name": "y_r_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "y_r", "role": "ce1" }} , 
 	{ "name": "y_r_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "y_r", "role": "q1" }} , 
 	{ "name": "status_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "status", "role": "address0" }} , 
 	{ "name": "status_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "status", "role": "ce0" }} , 
 	{ "name": "status_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "status", "role": "we0" }} , 
 	{ "name": "status_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "status", "role": "d0" }} , 
 	{ "name": "status_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "status", "role": "q0" }} , 
 	{ "name": "ap_return", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ap_return", "role": "default" }}  ]}
set Spec2ImplPortList { 
	setCount { ap_none {  { setCount in_data 0 32 } } }
	X { bram {  { X_Addr_A mem_address 1 32 }  { X_EN_A mem_ce 1 1 }  { X_WEN_A mem_we 1 4 }  { X_Din_A mem_din 1 32 }  { X_Dout_A mem_dout 0 32 } } }
	Y { bram {  { Y_Addr_A mem_address 1 32 }  { Y_EN_A mem_ce 1 1 }  { Y_WEN_A mem_we 1 4 }  { Y_Din_A mem_din 1 32 }  { Y_Dout_A mem_dout 0 32 } } }
	set { ap_memory {  { set_address0 mem_address 1 6 }  { set_ce0 mem_ce 1 1 }  { set_q0 mem_dout 0 32 } } }
	totalIntensity { ap_memory {  { totalIntensity_address0 mem_address 1 6 }  { totalIntensity_ce0 mem_ce 1 1 }  { totalIntensity_we0 mem_we 1 1 }  { totalIntensity_d0 mem_din 1 32 }  { totalIntensity_q0 mem_dout 0 32 }  { totalIntensity_address1 mem_address 1 6 }  { totalIntensity_ce1 mem_ce 1 1 }  { totalIntensity_q1 mem_dout 0 32 } } }
	x_r { ap_memory {  { x_r_address0 mem_address 1 6 }  { x_r_ce0 mem_ce 1 1 }  { x_r_we0 mem_we 1 1 }  { x_r_d0 mem_din 1 32 }  { x_r_q0 mem_dout 0 32 }  { x_r_address1 mem_address 1 6 }  { x_r_ce1 mem_ce 1 1 }  { x_r_q1 mem_dout 0 32 } } }
	y_r { ap_memory {  { y_r_address0 mem_address 1 6 }  { y_r_ce0 mem_ce 1 1 }  { y_r_we0 mem_we 1 1 }  { y_r_d0 mem_din 1 32 }  { y_r_q0 mem_dout 0 32 }  { y_r_address1 mem_address 1 6 }  { y_r_ce1 mem_ce 1 1 }  { y_r_q1 mem_dout 0 32 } } }
	status { ap_memory {  { status_address0 mem_address 1 6 }  { status_ce0 mem_ce 1 1 }  { status_we0 mem_we 1 1 }  { status_d0 mem_din 1 1 }  { status_q0 mem_dout 0 1 } } }
}
