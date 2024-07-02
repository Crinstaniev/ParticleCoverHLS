set moduleName p_find_boundaries_and_starting_index_and_value4
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set pipeline_type dataflow
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {_find_boundaries_and_starting_index_and_value4}
set C_modelType { void 0 }
set C_modelArgList {
	{ num_points int 32 regular {array 5 { 1 1 } 1 1 }  }
	{ points int 128 regular {array 2560 { 1 1 } 1 1 }  }
	{ left_bound int 32 regular {pointer 1}  }
	{ projectionToRow int 26 regular  }
	{ start_index int 32 regular {pointer 1}  }
	{ start_value int 32 regular {pointer 2}  }
	{ i int 3 regular  }
	{ lbVal_constprop int 32 regular {pointer 2} {global 2}  }
	{ rbVal_constprop int 32 regular {pointer 2} {global 2}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "num_points", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "points", "interface" : "memory", "bitwidth" : 128, "direction" : "READONLY"} , 
 	{ "Name" : "left_bound", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "projectionToRow", "interface" : "wire", "bitwidth" : 26, "direction" : "READONLY"} , 
 	{ "Name" : "start_index", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "start_value", "interface" : "wire", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "i", "interface" : "wire", "bitwidth" : 3, "direction" : "READONLY"} , 
 	{ "Name" : "lbVal_constprop", "interface" : "wire", "bitwidth" : 32, "direction" : "READWRITE", "extern" : 0} , 
 	{ "Name" : "rbVal_constprop", "interface" : "wire", "bitwidth" : 32, "direction" : "READWRITE", "extern" : 0} ]}
# RTL Port declarations: 
set portNum 47
set portList { 
	{ num_points_address0 sc_out sc_lv 3 signal 0 } 
	{ num_points_ce0 sc_out sc_logic 1 signal 0 } 
	{ num_points_d0 sc_out sc_lv 32 signal 0 } 
	{ num_points_q0 sc_in sc_lv 32 signal 0 } 
	{ num_points_we0 sc_out sc_logic 1 signal 0 } 
	{ num_points_address1 sc_out sc_lv 3 signal 0 } 
	{ num_points_ce1 sc_out sc_logic 1 signal 0 } 
	{ num_points_d1 sc_out sc_lv 32 signal 0 } 
	{ num_points_q1 sc_in sc_lv 32 signal 0 } 
	{ num_points_we1 sc_out sc_logic 1 signal 0 } 
	{ points_address0 sc_out sc_lv 12 signal 1 } 
	{ points_ce0 sc_out sc_logic 1 signal 1 } 
	{ points_d0 sc_out sc_lv 128 signal 1 } 
	{ points_q0 sc_in sc_lv 128 signal 1 } 
	{ points_we0 sc_out sc_logic 1 signal 1 } 
	{ points_address1 sc_out sc_lv 12 signal 1 } 
	{ points_ce1 sc_out sc_logic 1 signal 1 } 
	{ points_d1 sc_out sc_lv 128 signal 1 } 
	{ points_q1 sc_in sc_lv 128 signal 1 } 
	{ points_we1 sc_out sc_logic 1 signal 1 } 
	{ left_bound sc_out sc_lv 32 signal 2 } 
	{ projectionToRow sc_in sc_lv 26 signal 3 } 
	{ start_index sc_out sc_lv 32 signal 4 } 
	{ start_value_i sc_in sc_lv 32 signal 5 } 
	{ start_value_o sc_out sc_lv 32 signal 5 } 
	{ i sc_in sc_lv 3 signal 6 } 
	{ lbVal_constprop_i sc_in sc_lv 32 signal 7 } 
	{ lbVal_constprop_o sc_out sc_lv 32 signal 7 } 
	{ rbVal_constprop_i sc_in sc_lv 32 signal 8 } 
	{ rbVal_constprop_o sc_out sc_lv 32 signal 8 } 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ projectionToRow_ap_vld sc_in sc_logic 1 invld 3 } 
	{ i_ap_vld sc_in sc_logic 1 invld 6 } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ left_bound_ap_vld sc_out sc_logic 1 outvld 2 } 
	{ lbVal_constprop_i_ap_vld sc_in sc_logic 1 invld 7 } 
	{ lbVal_constprop_o_ap_vld sc_out sc_logic 1 outvld 7 } 
	{ rbVal_constprop_i_ap_vld sc_in sc_logic 1 invld 8 } 
	{ rbVal_constprop_o_ap_vld sc_out sc_logic 1 outvld 8 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ start_index_ap_vld sc_out sc_logic 1 outvld 4 } 
	{ start_value_i_ap_vld sc_in sc_logic 1 invld 5 } 
	{ start_value_o_ap_vld sc_out sc_logic 1 outvld 5 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
}
set NewPortList {[ 
	{ "name": "num_points_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "num_points", "role": "address0" }} , 
 	{ "name": "num_points_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "num_points", "role": "ce0" }} , 
 	{ "name": "num_points_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "num_points", "role": "d0" }} , 
 	{ "name": "num_points_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "num_points", "role": "q0" }} , 
 	{ "name": "num_points_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "num_points", "role": "we0" }} , 
 	{ "name": "num_points_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "num_points", "role": "address1" }} , 
 	{ "name": "num_points_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "num_points", "role": "ce1" }} , 
 	{ "name": "num_points_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "num_points", "role": "d1" }} , 
 	{ "name": "num_points_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "num_points", "role": "q1" }} , 
 	{ "name": "num_points_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "num_points", "role": "we1" }} , 
 	{ "name": "points_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "points", "role": "address0" }} , 
 	{ "name": "points_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "points", "role": "ce0" }} , 
 	{ "name": "points_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "points", "role": "d0" }} , 
 	{ "name": "points_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "points", "role": "q0" }} , 
 	{ "name": "points_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "points", "role": "we0" }} , 
 	{ "name": "points_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "points", "role": "address1" }} , 
 	{ "name": "points_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "points", "role": "ce1" }} , 
 	{ "name": "points_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "points", "role": "d1" }} , 
 	{ "name": "points_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "points", "role": "q1" }} , 
 	{ "name": "points_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "points", "role": "we1" }} , 
 	{ "name": "left_bound", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "left_bound", "role": "default" }} , 
 	{ "name": "projectionToRow", "direction": "in", "datatype": "sc_lv", "bitwidth":26, "type": "signal", "bundle":{"name": "projectionToRow", "role": "default" }} , 
 	{ "name": "start_index", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "start_index", "role": "default" }} , 
 	{ "name": "start_value_i", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "start_value", "role": "i" }} , 
 	{ "name": "start_value_o", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "start_value", "role": "o" }} , 
 	{ "name": "i", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "i", "role": "default" }} , 
 	{ "name": "lbVal_constprop_i", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "lbVal_constprop", "role": "i" }} , 
 	{ "name": "lbVal_constprop_o", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "lbVal_constprop", "role": "o" }} , 
 	{ "name": "rbVal_constprop_i", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "rbVal_constprop", "role": "i" }} , 
 	{ "name": "rbVal_constprop_o", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "rbVal_constprop", "role": "o" }} , 
 	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "projectionToRow_ap_vld", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "projectionToRow", "role": "ap_vld" }} , 
 	{ "name": "i_ap_vld", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "i", "role": "ap_vld" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "left_bound_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "left_bound", "role": "ap_vld" }} , 
 	{ "name": "lbVal_constprop_i_ap_vld", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "lbVal_constprop", "role": "i_ap_vld" }} , 
 	{ "name": "lbVal_constprop_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "lbVal_constprop", "role": "o_ap_vld" }} , 
 	{ "name": "rbVal_constprop_i_ap_vld", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "rbVal_constprop", "role": "i_ap_vld" }} , 
 	{ "name": "rbVal_constprop_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "rbVal_constprop", "role": "o_ap_vld" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "start_index_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "start_index", "role": "ap_vld" }} , 
 	{ "name": "start_value_i_ap_vld", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "start_value", "role": "i_ap_vld" }} , 
 	{ "name": "start_value_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "start_value", "role": "o_ap_vld" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "9", "12", "13", "14"],
		"CDFG" : "p_find_boundaries_and_starting_index_and_value4",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "Dataflow", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "1",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "1",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"InputProcess" : [
			{"ID" : "1", "Name" : "p_find_boundaries_and_starting_index_and_value_entry26_U0"},
			{"ID" : "2", "Name" : "p_find_left_and_right_boundaries6_U0"},
			{"ID" : "9", "Name" : "p_find_starting_index_and_value5_U0"}],
		"OutputProcess" : [
			{"ID" : "2", "Name" : "p_find_left_and_right_boundaries6_U0"},
			{"ID" : "9", "Name" : "p_find_starting_index_and_value5_U0"}],
		"Port" : [
			{"Name" : "num_points", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "p_find_left_and_right_boundaries6_U0", "Port" : "num_points"},
					{"ID" : "9", "SubInstance" : "p_find_starting_index_and_value5_U0", "Port" : "num_points"}]},
			{"Name" : "points", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "p_find_left_and_right_boundaries6_U0", "Port" : "points"},
					{"ID" : "9", "SubInstance" : "p_find_starting_index_and_value5_U0", "Port" : "points"}]},
			{"Name" : "left_bound", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "p_find_left_and_right_boundaries6_U0", "Port" : "left_bound"}]},
			{"Name" : "projectionToRow", "Type" : "None", "Direction" : "I"},
			{"Name" : "start_index", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "p_find_starting_index_and_value5_U0", "Port" : "start_index"}]},
			{"Name" : "start_value", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "p_find_starting_index_and_value5_U0", "Port" : "start_value"}]},
			{"Name" : "i", "Type" : "None", "Direction" : "I"},
			{"Name" : "get_trapezoid_edgestrapezoid_edges", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "p_find_left_and_right_boundaries6_U0", "Port" : "get_trapezoid_edgestrapezoid_edges"}]},
			{"Name" : "lbVal_constprop", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "p_find_left_and_right_boundaries6_U0", "Port" : "lbVal_constprop"}]},
			{"Name" : "rbVal_constprop", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "p_find_left_and_right_boundaries6_U0", "Port" : "rbVal_constprop"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_find_boundaries_and_starting_index_and_value_entry26_U0", "Parent" : "0",
		"CDFG" : "p_find_boundaries_and_starting_index_and_value_entry26",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "projectionToRow", "Type" : "None", "Direction" : "I"},
			{"Name" : "i", "Type" : "None", "Direction" : "I"},
			{"Name" : "projectionToRow_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "9", "DependentChan" : "12", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "projectionToRow_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "i_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "2", "DependentChan" : "13", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "i_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "i_out1", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "9", "DependentChan" : "14", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "i_out1_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_find_left_and_right_boundaries6_U0", "Parent" : "0", "Child" : ["3", "4", "5", "6", "7", "8"],
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
			{"Name" : "i", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "1", "DependentChan" : "13", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "i_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "get_trapezoid_edgestrapezoid_edges", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "lbVal_constprop", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "rbVal_constprop", "Type" : "OVld", "Direction" : "IO"}]},
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.p_find_left_and_right_boundaries6_U0.get_trapezoid_edgestrapezoid_edges_U", "Parent" : "2"},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.p_find_left_and_right_boundaries6_U0.faddfsub_32ns_32ns_32_3_full_dsp_1_U6", "Parent" : "2"},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.p_find_left_and_right_boundaries6_U0.faddfsub_32ns_32ns_32_3_full_dsp_1_U7", "Parent" : "2"},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.p_find_left_and_right_boundaries6_U0.fsub_32ns_32ns_32_3_full_dsp_1_U8", "Parent" : "2"},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.p_find_left_and_right_boundaries6_U0.fpext_32ns_64_2_no_dsp_1_U9", "Parent" : "2"},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.p_find_left_and_right_boundaries6_U0.fpext_32ns_64_2_no_dsp_1_U10", "Parent" : "2"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_find_starting_index_and_value5_U0", "Parent" : "0", "Child" : ["10", "11"],
		"CDFG" : "p_find_starting_index_and_value5",
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
			{"Name" : "projectionToRow", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "1", "DependentChan" : "12", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "projectionToRow_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "start_index", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "start_value", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "i", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "1", "DependentChan" : "14", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "i_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "10", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.p_find_starting_index_and_value5_U0.fsub_32ns_32ns_32_3_full_dsp_1_U21", "Parent" : "9"},
	{"ID" : "11", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.p_find_starting_index_and_value5_U0.fcmp_32ns_32ns_1_2_no_dsp_1_U22", "Parent" : "9"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.projectionToRow_c_U", "Parent" : "0"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.i_c_U", "Parent" : "0"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.i_c7_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	p_find_boundaries_and_starting_index_and_value4 {
		num_points {Type I LastRead 0 FirstWrite -1}
		points {Type I LastRead 4 FirstWrite -1}
		left_bound {Type O LastRead -1 FirstWrite 17}
		projectionToRow {Type I LastRead 0 FirstWrite -1}
		start_index {Type O LastRead -1 FirstWrite 9}
		start_value {Type IO LastRead 7 FirstWrite 9}
		i {Type I LastRead 0 FirstWrite -1}
		get_trapezoid_edgestrapezoid_edges {Type I LastRead -1 FirstWrite -1}
		lbVal_constprop {Type IO LastRead 10 FirstWrite 18}
		rbVal_constprop {Type IO LastRead 10 FirstWrite 15}}
	p_find_boundaries_and_starting_index_and_value_entry26 {
		projectionToRow {Type I LastRead 0 FirstWrite -1}
		i {Type I LastRead 0 FirstWrite -1}
		projectionToRow_out {Type O LastRead -1 FirstWrite 0}
		i_out {Type O LastRead -1 FirstWrite 0}
		i_out1 {Type O LastRead -1 FirstWrite 0}}
	p_find_left_and_right_boundaries6 {
		num_points {Type I LastRead 0 FirstWrite -1}
		points {Type I LastRead 4 FirstWrite -1}
		left_bound {Type O LastRead -1 FirstWrite 17}
		i {Type I LastRead 0 FirstWrite -1}
		get_trapezoid_edgestrapezoid_edges {Type I LastRead -1 FirstWrite -1}
		lbVal_constprop {Type IO LastRead 10 FirstWrite 18}
		rbVal_constprop {Type IO LastRead 10 FirstWrite 15}}
	p_find_starting_index_and_value5 {
		num_points {Type I LastRead 0 FirstWrite -1}
		points {Type I LastRead 2 FirstWrite -1}
		projectionToRow {Type I LastRead 0 FirstWrite -1}
		start_index {Type O LastRead -1 FirstWrite 9}
		start_value {Type IO LastRead 7 FirstWrite 9}
		i {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	num_points { ap_memory {  { num_points_address0 mem_address 1 3 }  { num_points_ce0 mem_ce 1 1 }  { num_points_d0 mem_din 1 32 }  { num_points_q0 mem_dout 0 32 }  { num_points_we0 mem_we 1 1 }  { num_points_address1 MemPortADDR2 1 3 }  { num_points_ce1 MemPortCE2 1 1 }  { num_points_d1 mem_din 1 32 }  { num_points_q1 MemPortDOUT2 0 32 }  { num_points_we1 mem_we 1 1 } } }
	points { ap_memory {  { points_address0 mem_address 1 12 }  { points_ce0 mem_ce 1 1 }  { points_d0 mem_din 1 128 }  { points_q0 mem_dout 0 128 }  { points_we0 mem_we 1 1 }  { points_address1 MemPortADDR2 1 12 }  { points_ce1 MemPortCE2 1 1 }  { points_d1 mem_din 1 128 }  { points_q1 MemPortDOUT2 0 128 }  { points_we1 mem_we 1 1 } } }
	left_bound { ap_vld {  { left_bound out_data 1 32 }  { left_bound_ap_vld out_vld 1 1 } } }
	projectionToRow { ap_none {  { projectionToRow in_data 0 26 }  { projectionToRow_ap_vld in_vld 0 1 } } }
	start_index { ap_vld {  { start_index out_data 1 32 }  { start_index_ap_vld out_vld 1 1 } } }
	start_value { ap_ovld {  { start_value_i in_data 0 32 }  { start_value_o out_data 1 32 }  { start_value_i_ap_vld in_vld 0 1 }  { start_value_o_ap_vld out_vld 1 1 } } }
	i { ap_none {  { i in_data 0 3 }  { i_ap_vld in_vld 0 1 } } }
	lbVal_constprop { ap_ovld {  { lbVal_constprop_i in_data 0 32 }  { lbVal_constprop_o out_data 1 32 }  { lbVal_constprop_i_ap_vld in_vld 0 1 }  { lbVal_constprop_o_ap_vld out_vld 1 1 } } }
	rbVal_constprop { ap_ovld {  { rbVal_constprop_i in_data 0 32 }  { rbVal_constprop_o out_data 1 32 }  { rbVal_constprop_i_ap_vld in_vld 0 1 }  { rbVal_constprop_o_ap_vld out_vld 1 1 } } }
}
