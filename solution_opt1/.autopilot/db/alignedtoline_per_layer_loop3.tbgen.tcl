set moduleName alignedtoline_per_layer_loop3
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
set C_modelName {alignedtoline_per_layer_loop3}
set C_modelType { void 0 }
set C_modelArgList {
	{ points int 128 regular {array 2560 { 1 1 } 1 1 }  }
	{ num_points int 32 regular {array 5 { 1 1 } 1 1 }  }
	{ init_patch int 96 regular {array 80 { 0 0 } 0 1 }  }
	{ i_offset int 3 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "points", "interface" : "memory", "bitwidth" : 128, "direction" : "READONLY"} , 
 	{ "Name" : "num_points", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "init_patch", "interface" : "memory", "bitwidth" : 96, "direction" : "WRITEONLY"} , 
 	{ "Name" : "i_offset", "interface" : "wire", "bitwidth" : 3, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 27
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ points_address0 sc_out sc_lv 12 signal 0 } 
	{ points_ce0 sc_out sc_logic 1 signal 0 } 
	{ points_q0 sc_in sc_lv 128 signal 0 } 
	{ points_address1 sc_out sc_lv 12 signal 0 } 
	{ points_ce1 sc_out sc_logic 1 signal 0 } 
	{ points_q1 sc_in sc_lv 128 signal 0 } 
	{ num_points_address0 sc_out sc_lv 3 signal 1 } 
	{ num_points_ce0 sc_out sc_logic 1 signal 1 } 
	{ num_points_q0 sc_in sc_lv 32 signal 1 } 
	{ num_points_address1 sc_out sc_lv 3 signal 1 } 
	{ num_points_ce1 sc_out sc_logic 1 signal 1 } 
	{ num_points_q1 sc_in sc_lv 32 signal 1 } 
	{ init_patch_address0 sc_out sc_lv 7 signal 2 } 
	{ init_patch_ce0 sc_out sc_logic 1 signal 2 } 
	{ init_patch_we0 sc_out sc_logic 1 signal 2 } 
	{ init_patch_d0 sc_out sc_lv 96 signal 2 } 
	{ init_patch_address1 sc_out sc_lv 7 signal 2 } 
	{ init_patch_ce1 sc_out sc_logic 1 signal 2 } 
	{ init_patch_we1 sc_out sc_logic 1 signal 2 } 
	{ init_patch_d1 sc_out sc_lv 96 signal 2 } 
	{ i_offset sc_in sc_lv 3 signal 3 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "points_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "points", "role": "address0" }} , 
 	{ "name": "points_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "points", "role": "ce0" }} , 
 	{ "name": "points_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "points", "role": "q0" }} , 
 	{ "name": "points_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "points", "role": "address1" }} , 
 	{ "name": "points_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "points", "role": "ce1" }} , 
 	{ "name": "points_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "points", "role": "q1" }} , 
 	{ "name": "num_points_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "num_points", "role": "address0" }} , 
 	{ "name": "num_points_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "num_points", "role": "ce0" }} , 
 	{ "name": "num_points_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "num_points", "role": "q0" }} , 
 	{ "name": "num_points_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "num_points", "role": "address1" }} , 
 	{ "name": "num_points_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "num_points", "role": "ce1" }} , 
 	{ "name": "num_points_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "num_points", "role": "q1" }} , 
 	{ "name": "init_patch_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "init_patch", "role": "address0" }} , 
 	{ "name": "init_patch_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "init_patch", "role": "ce0" }} , 
 	{ "name": "init_patch_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "init_patch", "role": "we0" }} , 
 	{ "name": "init_patch_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":96, "type": "signal", "bundle":{"name": "init_patch", "role": "d0" }} , 
 	{ "name": "init_patch_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "init_patch", "role": "address1" }} , 
 	{ "name": "init_patch_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "init_patch", "role": "ce1" }} , 
 	{ "name": "init_patch_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "init_patch", "role": "we1" }} , 
 	{ "name": "init_patch_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":96, "type": "signal", "bundle":{"name": "init_patch", "role": "d1" }} , 
 	{ "name": "i_offset", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "i_offset", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "17", "18", "19"],
		"CDFG" : "alignedtoline_per_layer_loop3",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "1",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "points", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_p_find_boundaries_and_starting_index_and_value4_fu_549", "Port" : "points"}]},
			{"Name" : "num_points", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_p_find_boundaries_and_starting_index_and_value4_fu_549", "Port" : "num_points"}]},
			{"Name" : "init_patch", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "i_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "get_radiiradii", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "lbVal_constprop", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_p_find_boundaries_and_starting_index_and_value4_fu_549", "Port" : "lbVal_constprop"}]},
			{"Name" : "rbVal_constprop", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_p_find_boundaries_and_starting_index_and_value4_fu_549", "Port" : "rbVal_constprop"}]},
			{"Name" : "get_trapezoid_edgestrapezoid_edges", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_p_find_boundaries_and_starting_index_and_value4_fu_549", "Port" : "get_trapezoid_edgestrapezoid_edges"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.get_radiiradii_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_p_find_boundaries_and_starting_index_and_value4_fu_549", "Parent" : "0", "Child" : ["3", "4", "11", "14", "15", "16"],
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
			{"ID" : "3", "Name" : "p_find_boundaries_and_starting_index_and_value_entry26_U0"},
			{"ID" : "4", "Name" : "p_find_left_and_right_boundaries6_U0"},
			{"ID" : "11", "Name" : "p_find_starting_index_and_value5_U0"}],
		"OutputProcess" : [
			{"ID" : "4", "Name" : "p_find_left_and_right_boundaries6_U0"},
			{"ID" : "11", "Name" : "p_find_starting_index_and_value5_U0"}],
		"Port" : [
			{"Name" : "num_points", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "p_find_left_and_right_boundaries6_U0", "Port" : "num_points"},
					{"ID" : "11", "SubInstance" : "p_find_starting_index_and_value5_U0", "Port" : "num_points"}]},
			{"Name" : "points", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "p_find_left_and_right_boundaries6_U0", "Port" : "points"},
					{"ID" : "11", "SubInstance" : "p_find_starting_index_and_value5_U0", "Port" : "points"}]},
			{"Name" : "left_bound", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "p_find_left_and_right_boundaries6_U0", "Port" : "left_bound"}]},
			{"Name" : "projectionToRow", "Type" : "None", "Direction" : "I"},
			{"Name" : "start_index", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "11", "SubInstance" : "p_find_starting_index_and_value5_U0", "Port" : "start_index"}]},
			{"Name" : "start_value", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "11", "SubInstance" : "p_find_starting_index_and_value5_U0", "Port" : "start_value"}]},
			{"Name" : "i", "Type" : "None", "Direction" : "I"},
			{"Name" : "get_trapezoid_edgestrapezoid_edges", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "p_find_left_and_right_boundaries6_U0", "Port" : "get_trapezoid_edgestrapezoid_edges"}]},
			{"Name" : "lbVal_constprop", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "p_find_left_and_right_boundaries6_U0", "Port" : "lbVal_constprop"}]},
			{"Name" : "rbVal_constprop", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "p_find_left_and_right_boundaries6_U0", "Port" : "rbVal_constprop"}]}]},
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_p_find_boundaries_and_starting_index_and_value4_fu_549.p_find_boundaries_and_starting_index_and_value_entry26_U0", "Parent" : "2",
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
			{"Name" : "projectionToRow_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "11", "DependentChan" : "14", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "projectionToRow_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "i_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "4", "DependentChan" : "15", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "i_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "i_out1", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "11", "DependentChan" : "16", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "i_out1_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_p_find_boundaries_and_starting_index_and_value4_fu_549.p_find_left_and_right_boundaries6_U0", "Parent" : "2", "Child" : ["5", "6", "7", "8", "9", "10"],
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
			{"Name" : "i", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "3", "DependentChan" : "15", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "i_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "get_trapezoid_edgestrapezoid_edges", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "lbVal_constprop", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "rbVal_constprop", "Type" : "OVld", "Direction" : "IO"}]},
	{"ID" : "5", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_p_find_boundaries_and_starting_index_and_value4_fu_549.p_find_left_and_right_boundaries6_U0.get_trapezoid_edgestrapezoid_edges_U", "Parent" : "4"},
	{"ID" : "6", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_p_find_boundaries_and_starting_index_and_value4_fu_549.p_find_left_and_right_boundaries6_U0.faddfsub_32ns_32ns_32_3_full_dsp_1_U6", "Parent" : "4"},
	{"ID" : "7", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_p_find_boundaries_and_starting_index_and_value4_fu_549.p_find_left_and_right_boundaries6_U0.faddfsub_32ns_32ns_32_3_full_dsp_1_U7", "Parent" : "4"},
	{"ID" : "8", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_p_find_boundaries_and_starting_index_and_value4_fu_549.p_find_left_and_right_boundaries6_U0.fsub_32ns_32ns_32_3_full_dsp_1_U8", "Parent" : "4"},
	{"ID" : "9", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_p_find_boundaries_and_starting_index_and_value4_fu_549.p_find_left_and_right_boundaries6_U0.fpext_32ns_64_2_no_dsp_1_U9", "Parent" : "4"},
	{"ID" : "10", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_p_find_boundaries_and_starting_index_and_value4_fu_549.p_find_left_and_right_boundaries6_U0.fpext_32ns_64_2_no_dsp_1_U10", "Parent" : "4"},
	{"ID" : "11", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_p_find_boundaries_and_starting_index_and_value4_fu_549.p_find_starting_index_and_value5_U0", "Parent" : "2", "Child" : ["12", "13"],
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
			{"Name" : "projectionToRow", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "3", "DependentChan" : "14", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "projectionToRow_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "start_index", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "start_value", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "i", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "3", "DependentChan" : "16", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "i_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "12", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_p_find_boundaries_and_starting_index_and_value4_fu_549.p_find_starting_index_and_value5_U0.fsub_32ns_32ns_32_3_full_dsp_1_U21", "Parent" : "11"},
	{"ID" : "13", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_p_find_boundaries_and_starting_index_and_value4_fu_549.p_find_starting_index_and_value5_U0.fcmp_32ns_32ns_1_2_no_dsp_1_U22", "Parent" : "11"},
	{"ID" : "14", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_p_find_boundaries_and_starting_index_and_value4_fu_549.projectionToRow_c_U", "Parent" : "2"},
	{"ID" : "15", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_p_find_boundaries_and_starting_index_and_value4_fu_549.i_c_U", "Parent" : "2"},
	{"ID" : "16", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_p_find_boundaries_and_starting_index_and_value4_fu_549.i_c7_U", "Parent" : "2"},
	{"ID" : "17", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dcmp_64ns_64ns_1_2_no_dsp_1_U42", "Parent" : "0"},
	{"ID" : "18", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_25ns_46ns_70_1_1_U43", "Parent" : "0"},
	{"ID" : "19", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_70ns_72ns_141_1_1_U44", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	alignedtoline_per_layer_loop3 {
		points {Type I LastRead 16 FirstWrite -1}
		num_points {Type I LastRead 4 FirstWrite -1}
		init_patch {Type O LastRead -1 FirstWrite 9}
		i_offset {Type I LastRead 0 FirstWrite -1}
		get_radiiradii {Type I LastRead -1 FirstWrite -1}
		lbVal_constprop {Type IO LastRead -1 FirstWrite -1}
		rbVal_constprop {Type IO LastRead -1 FirstWrite -1}
		get_trapezoid_edgestrapezoid_edges {Type I LastRead -1 FirstWrite -1}}
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
	points { ap_memory {  { points_address0 mem_address 1 12 }  { points_ce0 mem_ce 1 1 }  { points_q0 mem_dout 0 128 }  { points_address1 MemPortADDR2 1 12 }  { points_ce1 MemPortCE2 1 1 }  { points_q1 MemPortDOUT2 0 128 } } }
	num_points { ap_memory {  { num_points_address0 mem_address 1 3 }  { num_points_ce0 mem_ce 1 1 }  { num_points_q0 mem_dout 0 32 }  { num_points_address1 MemPortADDR2 1 3 }  { num_points_ce1 MemPortCE2 1 1 }  { num_points_q1 MemPortDOUT2 0 32 } } }
	init_patch { ap_memory {  { init_patch_address0 mem_address 1 7 }  { init_patch_ce0 mem_ce 1 1 }  { init_patch_we0 mem_we 1 1 }  { init_patch_d0 mem_din 1 96 }  { init_patch_address1 MemPortADDR2 1 7 }  { init_patch_ce1 MemPortCE2 1 1 }  { init_patch_we1 MemPortWE2 1 1 }  { init_patch_d1 MemPortDIN2 1 96 } } }
	i_offset { ap_none {  { i_offset in_data 0 3 } } }
}
