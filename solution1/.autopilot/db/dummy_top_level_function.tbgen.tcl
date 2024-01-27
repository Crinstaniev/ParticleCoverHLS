set moduleName dummy_top_level_function
set isTopModule 1
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {dummy_top_level_function}
set C_modelType { void 0 }
set C_modelArgList {
	{ point_arr_in int 192 regular {array 1025 { 1 1 } 1 1 }  }
	{ point_arr_out int 192 regular {array 1025 { 0 0 } 0 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "point_arr_in", "interface" : "memory", "bitwidth" : 192, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "point_arr_in","cData": "int192","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "point_arr_out", "interface" : "memory", "bitwidth" : 192, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "point_arr_out","cData": "int192","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} ]}
# RTL Port declarations: 
set portNum 20
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ point_arr_in_address0 sc_out sc_lv 11 signal 0 } 
	{ point_arr_in_ce0 sc_out sc_logic 1 signal 0 } 
	{ point_arr_in_q0 sc_in sc_lv 192 signal 0 } 
	{ point_arr_in_address1 sc_out sc_lv 11 signal 0 } 
	{ point_arr_in_ce1 sc_out sc_logic 1 signal 0 } 
	{ point_arr_in_q1 sc_in sc_lv 192 signal 0 } 
	{ point_arr_out_address0 sc_out sc_lv 11 signal 1 } 
	{ point_arr_out_ce0 sc_out sc_logic 1 signal 1 } 
	{ point_arr_out_we0 sc_out sc_lv 24 signal 1 } 
	{ point_arr_out_d0 sc_out sc_lv 192 signal 1 } 
	{ point_arr_out_address1 sc_out sc_lv 11 signal 1 } 
	{ point_arr_out_ce1 sc_out sc_logic 1 signal 1 } 
	{ point_arr_out_we1 sc_out sc_lv 24 signal 1 } 
	{ point_arr_out_d1 sc_out sc_lv 192 signal 1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "point_arr_in_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "point_arr_in", "role": "address0" }} , 
 	{ "name": "point_arr_in_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "point_arr_in", "role": "ce0" }} , 
 	{ "name": "point_arr_in_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":192, "type": "signal", "bundle":{"name": "point_arr_in", "role": "q0" }} , 
 	{ "name": "point_arr_in_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "point_arr_in", "role": "address1" }} , 
 	{ "name": "point_arr_in_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "point_arr_in", "role": "ce1" }} , 
 	{ "name": "point_arr_in_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":192, "type": "signal", "bundle":{"name": "point_arr_in", "role": "q1" }} , 
 	{ "name": "point_arr_out_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "point_arr_out", "role": "address0" }} , 
 	{ "name": "point_arr_out_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "point_arr_out", "role": "ce0" }} , 
 	{ "name": "point_arr_out_we0", "direction": "out", "datatype": "sc_lv", "bitwidth":24, "type": "signal", "bundle":{"name": "point_arr_out", "role": "we0" }} , 
 	{ "name": "point_arr_out_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":192, "type": "signal", "bundle":{"name": "point_arr_out", "role": "d0" }} , 
 	{ "name": "point_arr_out_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "point_arr_out", "role": "address1" }} , 
 	{ "name": "point_arr_out_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "point_arr_out", "role": "ce1" }} , 
 	{ "name": "point_arr_out_we1", "direction": "out", "datatype": "sc_lv", "bitwidth":24, "type": "signal", "bundle":{"name": "point_arr_out", "role": "we1" }} , 
 	{ "name": "point_arr_out_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":192, "type": "signal", "bundle":{"name": "point_arr_out", "role": "d1" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "dummy_top_level_function",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "point_arr_in", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "point_arr_out", "Type" : "Memory", "Direction" : "O"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_64ns_66ns_129_1_1_U1", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	dummy_top_level_function {
		point_arr_in {Type I LastRead 4 FirstWrite -1}
		point_arr_out {Type O LastRead -1 FirstWrite 4}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "0", "Max" : "0"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	point_arr_in { ap_memory {  { point_arr_in_address0 mem_address 1 11 }  { point_arr_in_ce0 mem_ce 1 1 }  { point_arr_in_q0 mem_dout 0 192 }  { point_arr_in_address1 MemPortADDR2 1 11 }  { point_arr_in_ce1 MemPortCE2 1 1 }  { point_arr_in_q1 MemPortDOUT2 0 192 } } }
	point_arr_out { ap_memory {  { point_arr_out_address0 mem_address 1 11 }  { point_arr_out_ce0 mem_ce 1 1 }  { point_arr_out_we0 mem_we 1 24 }  { point_arr_out_d0 mem_din 1 192 }  { point_arr_out_address1 MemPortADDR2 1 11 }  { point_arr_out_ce1 MemPortCE2 1 1 }  { point_arr_out_we1 MemPortWE2 1 24 }  { point_arr_out_d1 MemPortDIN2 1 192 } } }
}

set busDeadlockParameterList { 
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
