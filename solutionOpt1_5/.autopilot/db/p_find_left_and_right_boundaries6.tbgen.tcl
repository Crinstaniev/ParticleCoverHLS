set moduleName p_find_left_and_right_boundaries6
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {_find_left_and_right_boundaries6}
set C_modelType { void 0 }
set C_modelArgList {
	{ num_points int 32 regular {array 5 { 1 3 } 1 1 }  }
	{ points int 128 regular {array 2560 { 1 3 } 1 1 }  }
	{ left_bound int 32 regular {pointer 1}  }
	{ i int 3 regular {fifo 0}  }
	{ lbVal_constprop int 32 regular {pointer 2} {global 2}  }
	{ rbVal_constprop int 32 regular {pointer 2} {global 2}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "num_points", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "points", "interface" : "memory", "bitwidth" : 128, "direction" : "READONLY"} , 
 	{ "Name" : "left_bound", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "i", "interface" : "fifo", "bitwidth" : 3, "direction" : "READONLY"} , 
 	{ "Name" : "lbVal_constprop", "interface" : "wire", "bitwidth" : 32, "direction" : "READWRITE", "extern" : 0} , 
 	{ "Name" : "rbVal_constprop", "interface" : "wire", "bitwidth" : 32, "direction" : "READWRITE", "extern" : 0} ]}
# RTL Port declarations: 
set portNum 24
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ num_points_address0 sc_out sc_lv 3 signal 0 } 
	{ num_points_ce0 sc_out sc_logic 1 signal 0 } 
	{ num_points_q0 sc_in sc_lv 32 signal 0 } 
	{ points_address0 sc_out sc_lv 12 signal 1 } 
	{ points_ce0 sc_out sc_logic 1 signal 1 } 
	{ points_q0 sc_in sc_lv 128 signal 1 } 
	{ left_bound sc_out sc_lv 32 signal 2 } 
	{ left_bound_ap_vld sc_out sc_logic 1 outvld 2 } 
	{ i_dout sc_in sc_lv 3 signal 3 } 
	{ i_empty_n sc_in sc_logic 1 signal 3 } 
	{ i_read sc_out sc_logic 1 signal 3 } 
	{ lbVal_constprop_i sc_in sc_lv 32 signal 4 } 
	{ lbVal_constprop_o sc_out sc_lv 32 signal 4 } 
	{ lbVal_constprop_o_ap_vld sc_out sc_logic 1 outvld 4 } 
	{ rbVal_constprop_i sc_in sc_lv 32 signal 5 } 
	{ rbVal_constprop_o sc_out sc_lv 32 signal 5 } 
	{ rbVal_constprop_o_ap_vld sc_out sc_logic 1 outvld 5 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "num_points_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "num_points", "role": "address0" }} , 
 	{ "name": "num_points_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "num_points", "role": "ce0" }} , 
 	{ "name": "num_points_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "num_points", "role": "q0" }} , 
 	{ "name": "points_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "points", "role": "address0" }} , 
 	{ "name": "points_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "points", "role": "ce0" }} , 
 	{ "name": "points_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "points", "role": "q0" }} , 
 	{ "name": "left_bound", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "left_bound", "role": "default" }} , 
 	{ "name": "left_bound_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "left_bound", "role": "ap_vld" }} , 
 	{ "name": "i_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "i", "role": "dout" }} , 
 	{ "name": "i_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "i", "role": "empty_n" }} , 
 	{ "name": "i_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "i", "role": "read" }} , 
 	{ "name": "lbVal_constprop_i", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "lbVal_constprop", "role": "i" }} , 
 	{ "name": "lbVal_constprop_o", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "lbVal_constprop", "role": "o" }} , 
 	{ "name": "lbVal_constprop_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "lbVal_constprop", "role": "o_ap_vld" }} , 
 	{ "name": "rbVal_constprop_i", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "rbVal_constprop", "role": "i" }} , 
 	{ "name": "rbVal_constprop_o", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "rbVal_constprop", "role": "o" }} , 
 	{ "name": "rbVal_constprop_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "rbVal_constprop", "role": "o_ap_vld" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5"],
		"CDFG" : "p_find_left_and_right_boundaries6",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "num_points", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "points", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "left_bound", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "i", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "i_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "get_trapezoid_edgestrapezoid_edges", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "lbVal_constprop", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "rbVal_constprop", "Type" : "OVld", "Direction" : "IO"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.get_trapezoid_edgestrapezoid_edges_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.faddfsub_32ns_32ns_32_3_full_dsp_1_U6", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fsub_32ns_32ns_32_3_full_dsp_1_U7", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fpext_32ns_64_2_no_dsp_1_U8", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fpext_32ns_64_2_no_dsp_1_U9", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	p_find_left_and_right_boundaries6 {
		num_points {Type I LastRead 0 FirstWrite -1}
		points {Type I LastRead 4 FirstWrite -1}
		left_bound {Type O LastRead -1 FirstWrite 16}
		i {Type I LastRead 0 FirstWrite -1}
		get_trapezoid_edgestrapezoid_edges {Type I LastRead -1 FirstWrite -1}
		lbVal_constprop {Type IO LastRead 10 FirstWrite 18}
		rbVal_constprop {Type IO LastRead 10 FirstWrite 16}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	num_points { ap_memory {  { num_points_address0 mem_address 1 3 }  { num_points_ce0 mem_ce 1 1 }  { num_points_q0 mem_dout 0 32 } } }
	points { ap_memory {  { points_address0 mem_address 1 12 }  { points_ce0 mem_ce 1 1 }  { points_q0 mem_dout 0 128 } } }
	left_bound { ap_vld {  { left_bound out_data 1 32 }  { left_bound_ap_vld out_vld 1 1 } } }
	i { ap_fifo {  { i_dout fifo_data 0 3 }  { i_empty_n fifo_status 0 1 }  { i_read fifo_update 1 1 } } }
	lbVal_constprop { ap_ovld {  { lbVal_constprop_i in_data 0 32 }  { lbVal_constprop_o out_data 1 32 }  { lbVal_constprop_o_ap_vld out_vld 1 1 } } }
	rbVal_constprop { ap_ovld {  { rbVal_constprop_i in_data 0 32 }  { rbVal_constprop_o out_data 1 32 }  { rbVal_constprop_o_ap_vld out_vld 1 1 } } }
}
