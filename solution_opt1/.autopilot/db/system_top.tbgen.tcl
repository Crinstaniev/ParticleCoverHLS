set moduleName system_top
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
set C_modelName {system_top}
set C_modelType { void 0 }
set C_modelArgList {
	{ points int 128 regular {array 2560 { 1 1 } 1 1 }  }
	{ num_points int 32 regular {array 5 { 1 1 } 1 1 }  }
	{ patch_stream_V int 96 regular {fifo 1 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "points", "interface" : "memory", "bitwidth" : 128, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "points","cData": "int128","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "num_points", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "num_points","cData": "int","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "patch_stream_V", "interface" : "fifo", "bitwidth" : 96, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "patch_stream.V","cData": "int96","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} ]}
# RTL Port declarations: 
set portNum 21
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
	{ patch_stream_V_din sc_out sc_lv 96 signal 2 } 
	{ patch_stream_V_full_n sc_in sc_logic 1 signal 2 } 
	{ patch_stream_V_write sc_out sc_logic 1 signal 2 } 
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
 	{ "name": "patch_stream_V_din", "direction": "out", "datatype": "sc_lv", "bitwidth":96, "type": "signal", "bundle":{"name": "patch_stream_V", "role": "din" }} , 
 	{ "name": "patch_stream_V_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "patch_stream_V", "role": "full_n" }} , 
 	{ "name": "patch_stream_V_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "patch_stream_V", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30", "31", "32", "33", "34", "35", "36", "37", "38", "39", "40", "41", "42", "43", "44", "45", "46", "47", "48", "49", "50", "51", "52", "53", "54", "55", "56", "57", "58", "59", "60", "61", "62", "63", "64", "65", "66", "67", "68", "69", "70", "71", "72", "73", "74", "75", "76", "77", "78", "79", "80", "81"],
		"CDFG" : "system_top",
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
					{"ID" : "81", "SubInstance" : "grp_p_shadowquilt_main_loop_make_verticle_strip_fu_362", "Port" : "points"}]},
			{"Name" : "num_points", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "81", "SubInstance" : "grp_p_shadowquilt_main_loop_make_verticle_strip_fu_362", "Port" : "num_points"}]},
			{"Name" : "patch_stream_V", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "81", "SubInstance" : "grp_p_shadowquilt_main_loop_make_verticle_strip_fu_362", "Port" : "patch_stream_V"}]},
			{"Name" : "latest_patch_index_constprop", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "81", "SubInstance" : "grp_p_shadowquilt_main_loop_make_verticle_strip_fu_362", "Port" : "latest_patch_index_constprop"}]},
			{"Name" : "num_patches_constprop", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "81", "SubInstance" : "grp_p_shadowquilt_main_loop_make_verticle_strip_fu_362", "Port" : "num_patches_constprop"}]},
			{"Name" : "get_radiiradii", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "81", "SubInstance" : "grp_p_shadowquilt_main_loop_make_verticle_strip_fu_362", "Port" : "get_radiiradii"}]},
			{"Name" : "lbVal_constprop", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "81", "SubInstance" : "grp_p_shadowquilt_main_loop_make_verticle_strip_fu_362", "Port" : "lbVal_constprop"}]},
			{"Name" : "rbVal_constprop", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "81", "SubInstance" : "grp_p_shadowquilt_main_loop_make_verticle_strip_fu_362", "Port" : "rbVal_constprop"}]},
			{"Name" : "get_trapezoid_edgestrapezoid_edges", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "81", "SubInstance" : "grp_p_shadowquilt_main_loop_make_verticle_strip_fu_362", "Port" : "get_trapezoid_edgestrapezoid_edges"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.patch_buffer_0_0_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.patch_buffer_0_1_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.patch_buffer_0_2_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.patch_buffer_0_3_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.patch_buffer_0_4_U", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.patch_buffer_0_5_U", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.patch_buffer_0_6_U", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.patch_buffer_0_7_U", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.patch_buffer_0_8_U", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.patch_buffer_0_9_U", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.patch_buffer_0_10_U", "Parent" : "0"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.patch_buffer_0_11_U", "Parent" : "0"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.patch_buffer_0_12_U", "Parent" : "0"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.patch_buffer_0_13_U", "Parent" : "0"},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.patch_buffer_0_14_U", "Parent" : "0"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.patch_buffer_0_15_U", "Parent" : "0"},
	{"ID" : "17", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.patch_buffer_1_0_U", "Parent" : "0"},
	{"ID" : "18", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.patch_buffer_1_1_U", "Parent" : "0"},
	{"ID" : "19", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.patch_buffer_1_2_U", "Parent" : "0"},
	{"ID" : "20", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.patch_buffer_1_3_U", "Parent" : "0"},
	{"ID" : "21", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.patch_buffer_1_4_U", "Parent" : "0"},
	{"ID" : "22", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.patch_buffer_1_5_U", "Parent" : "0"},
	{"ID" : "23", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.patch_buffer_1_6_U", "Parent" : "0"},
	{"ID" : "24", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.patch_buffer_1_7_U", "Parent" : "0"},
	{"ID" : "25", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.patch_buffer_1_8_U", "Parent" : "0"},
	{"ID" : "26", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.patch_buffer_1_9_U", "Parent" : "0"},
	{"ID" : "27", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.patch_buffer_1_10_U", "Parent" : "0"},
	{"ID" : "28", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.patch_buffer_1_11_U", "Parent" : "0"},
	{"ID" : "29", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.patch_buffer_1_12_U", "Parent" : "0"},
	{"ID" : "30", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.patch_buffer_1_13_U", "Parent" : "0"},
	{"ID" : "31", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.patch_buffer_1_14_U", "Parent" : "0"},
	{"ID" : "32", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.patch_buffer_1_15_U", "Parent" : "0"},
	{"ID" : "33", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.patch_buffer_2_0_U", "Parent" : "0"},
	{"ID" : "34", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.patch_buffer_2_1_U", "Parent" : "0"},
	{"ID" : "35", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.patch_buffer_2_2_U", "Parent" : "0"},
	{"ID" : "36", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.patch_buffer_2_3_U", "Parent" : "0"},
	{"ID" : "37", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.patch_buffer_2_4_U", "Parent" : "0"},
	{"ID" : "38", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.patch_buffer_2_5_U", "Parent" : "0"},
	{"ID" : "39", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.patch_buffer_2_6_U", "Parent" : "0"},
	{"ID" : "40", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.patch_buffer_2_7_U", "Parent" : "0"},
	{"ID" : "41", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.patch_buffer_2_8_U", "Parent" : "0"},
	{"ID" : "42", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.patch_buffer_2_9_U", "Parent" : "0"},
	{"ID" : "43", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.patch_buffer_2_10_U", "Parent" : "0"},
	{"ID" : "44", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.patch_buffer_2_11_U", "Parent" : "0"},
	{"ID" : "45", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.patch_buffer_2_12_U", "Parent" : "0"},
	{"ID" : "46", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.patch_buffer_2_13_U", "Parent" : "0"},
	{"ID" : "47", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.patch_buffer_2_14_U", "Parent" : "0"},
	{"ID" : "48", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.patch_buffer_2_15_U", "Parent" : "0"},
	{"ID" : "49", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.patch_buffer_3_0_U", "Parent" : "0"},
	{"ID" : "50", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.patch_buffer_3_1_U", "Parent" : "0"},
	{"ID" : "51", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.patch_buffer_3_2_U", "Parent" : "0"},
	{"ID" : "52", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.patch_buffer_3_3_U", "Parent" : "0"},
	{"ID" : "53", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.patch_buffer_3_4_U", "Parent" : "0"},
	{"ID" : "54", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.patch_buffer_3_5_U", "Parent" : "0"},
	{"ID" : "55", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.patch_buffer_3_6_U", "Parent" : "0"},
	{"ID" : "56", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.patch_buffer_3_7_U", "Parent" : "0"},
	{"ID" : "57", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.patch_buffer_3_8_U", "Parent" : "0"},
	{"ID" : "58", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.patch_buffer_3_9_U", "Parent" : "0"},
	{"ID" : "59", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.patch_buffer_3_10_U", "Parent" : "0"},
	{"ID" : "60", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.patch_buffer_3_11_U", "Parent" : "0"},
	{"ID" : "61", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.patch_buffer_3_12_U", "Parent" : "0"},
	{"ID" : "62", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.patch_buffer_3_13_U", "Parent" : "0"},
	{"ID" : "63", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.patch_buffer_3_14_U", "Parent" : "0"},
	{"ID" : "64", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.patch_buffer_3_15_U", "Parent" : "0"},
	{"ID" : "65", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.patch_buffer_4_0_U", "Parent" : "0"},
	{"ID" : "66", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.patch_buffer_4_1_U", "Parent" : "0"},
	{"ID" : "67", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.patch_buffer_4_2_U", "Parent" : "0"},
	{"ID" : "68", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.patch_buffer_4_3_U", "Parent" : "0"},
	{"ID" : "69", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.patch_buffer_4_4_U", "Parent" : "0"},
	{"ID" : "70", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.patch_buffer_4_5_U", "Parent" : "0"},
	{"ID" : "71", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.patch_buffer_4_6_U", "Parent" : "0"},
	{"ID" : "72", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.patch_buffer_4_7_U", "Parent" : "0"},
	{"ID" : "73", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.patch_buffer_4_8_U", "Parent" : "0"},
	{"ID" : "74", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.patch_buffer_4_9_U", "Parent" : "0"},
	{"ID" : "75", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.patch_buffer_4_10_U", "Parent" : "0"},
	{"ID" : "76", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.patch_buffer_4_11_U", "Parent" : "0"},
	{"ID" : "77", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.patch_buffer_4_12_U", "Parent" : "0"},
	{"ID" : "78", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.patch_buffer_4_13_U", "Parent" : "0"},
	{"ID" : "79", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.patch_buffer_4_14_U", "Parent" : "0"},
	{"ID" : "80", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.patch_buffer_4_15_U", "Parent" : "0"},
	{"ID" : "81", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_p_shadowquilt_main_loop_make_verticle_strip_fu_362", "Parent" : "0", "Child" : ["82", "83", "103"],
		"CDFG" : "p_shadowquilt_main_loop_make_verticle_strip",
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
					{"ID" : "83", "SubInstance" : "grp_alignedtoline_per_layer_loop3_fu_284", "Port" : "points"}]},
			{"Name" : "num_points", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "83", "SubInstance" : "grp_alignedtoline_per_layer_loop3_fu_284", "Port" : "num_points"}]},
			{"Name" : "patch_stream_V", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "patch_stream_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "patch_buffer_0_0", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "103", "SubInstance" : "grp_patch_buffer_add_patch_fu_308", "Port" : "patch_buffer_0_0"}]},
			{"Name" : "patch_buffer_0_1", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "103", "SubInstance" : "grp_patch_buffer_add_patch_fu_308", "Port" : "patch_buffer_0_1"}]},
			{"Name" : "patch_buffer_0_2", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "103", "SubInstance" : "grp_patch_buffer_add_patch_fu_308", "Port" : "patch_buffer_0_2"}]},
			{"Name" : "patch_buffer_0_3", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "103", "SubInstance" : "grp_patch_buffer_add_patch_fu_308", "Port" : "patch_buffer_0_3"}]},
			{"Name" : "patch_buffer_0_4", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "103", "SubInstance" : "grp_patch_buffer_add_patch_fu_308", "Port" : "patch_buffer_0_4"}]},
			{"Name" : "patch_buffer_0_5", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "103", "SubInstance" : "grp_patch_buffer_add_patch_fu_308", "Port" : "patch_buffer_0_5"}]},
			{"Name" : "patch_buffer_0_6", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "103", "SubInstance" : "grp_patch_buffer_add_patch_fu_308", "Port" : "patch_buffer_0_6"}]},
			{"Name" : "patch_buffer_0_7", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "103", "SubInstance" : "grp_patch_buffer_add_patch_fu_308", "Port" : "patch_buffer_0_7"}]},
			{"Name" : "patch_buffer_0_8", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "103", "SubInstance" : "grp_patch_buffer_add_patch_fu_308", "Port" : "patch_buffer_0_8"}]},
			{"Name" : "patch_buffer_0_9", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "103", "SubInstance" : "grp_patch_buffer_add_patch_fu_308", "Port" : "patch_buffer_0_9"}]},
			{"Name" : "patch_buffer_0_10", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "103", "SubInstance" : "grp_patch_buffer_add_patch_fu_308", "Port" : "patch_buffer_0_10"}]},
			{"Name" : "patch_buffer_0_11", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "103", "SubInstance" : "grp_patch_buffer_add_patch_fu_308", "Port" : "patch_buffer_0_11"}]},
			{"Name" : "patch_buffer_0_12", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "103", "SubInstance" : "grp_patch_buffer_add_patch_fu_308", "Port" : "patch_buffer_0_12"}]},
			{"Name" : "patch_buffer_0_13", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "103", "SubInstance" : "grp_patch_buffer_add_patch_fu_308", "Port" : "patch_buffer_0_13"}]},
			{"Name" : "patch_buffer_0_14", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "103", "SubInstance" : "grp_patch_buffer_add_patch_fu_308", "Port" : "patch_buffer_0_14"}]},
			{"Name" : "patch_buffer_0_15", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "103", "SubInstance" : "grp_patch_buffer_add_patch_fu_308", "Port" : "patch_buffer_0_15"}]},
			{"Name" : "patch_buffer_1_0", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "103", "SubInstance" : "grp_patch_buffer_add_patch_fu_308", "Port" : "patch_buffer_1_0"}]},
			{"Name" : "patch_buffer_1_1", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "103", "SubInstance" : "grp_patch_buffer_add_patch_fu_308", "Port" : "patch_buffer_1_1"}]},
			{"Name" : "patch_buffer_1_2", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "103", "SubInstance" : "grp_patch_buffer_add_patch_fu_308", "Port" : "patch_buffer_1_2"}]},
			{"Name" : "patch_buffer_1_3", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "103", "SubInstance" : "grp_patch_buffer_add_patch_fu_308", "Port" : "patch_buffer_1_3"}]},
			{"Name" : "patch_buffer_1_4", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "103", "SubInstance" : "grp_patch_buffer_add_patch_fu_308", "Port" : "patch_buffer_1_4"}]},
			{"Name" : "patch_buffer_1_5", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "103", "SubInstance" : "grp_patch_buffer_add_patch_fu_308", "Port" : "patch_buffer_1_5"}]},
			{"Name" : "patch_buffer_1_6", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "103", "SubInstance" : "grp_patch_buffer_add_patch_fu_308", "Port" : "patch_buffer_1_6"}]},
			{"Name" : "patch_buffer_1_7", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "103", "SubInstance" : "grp_patch_buffer_add_patch_fu_308", "Port" : "patch_buffer_1_7"}]},
			{"Name" : "patch_buffer_1_8", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "103", "SubInstance" : "grp_patch_buffer_add_patch_fu_308", "Port" : "patch_buffer_1_8"}]},
			{"Name" : "patch_buffer_1_9", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "103", "SubInstance" : "grp_patch_buffer_add_patch_fu_308", "Port" : "patch_buffer_1_9"}]},
			{"Name" : "patch_buffer_1_10", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "103", "SubInstance" : "grp_patch_buffer_add_patch_fu_308", "Port" : "patch_buffer_1_10"}]},
			{"Name" : "patch_buffer_1_11", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "103", "SubInstance" : "grp_patch_buffer_add_patch_fu_308", "Port" : "patch_buffer_1_11"}]},
			{"Name" : "patch_buffer_1_12", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "103", "SubInstance" : "grp_patch_buffer_add_patch_fu_308", "Port" : "patch_buffer_1_12"}]},
			{"Name" : "patch_buffer_1_13", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "103", "SubInstance" : "grp_patch_buffer_add_patch_fu_308", "Port" : "patch_buffer_1_13"}]},
			{"Name" : "patch_buffer_1_14", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "103", "SubInstance" : "grp_patch_buffer_add_patch_fu_308", "Port" : "patch_buffer_1_14"}]},
			{"Name" : "patch_buffer_1_15", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "103", "SubInstance" : "grp_patch_buffer_add_patch_fu_308", "Port" : "patch_buffer_1_15"}]},
			{"Name" : "patch_buffer_2_0", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "103", "SubInstance" : "grp_patch_buffer_add_patch_fu_308", "Port" : "patch_buffer_2_0"}]},
			{"Name" : "patch_buffer_2_1", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "103", "SubInstance" : "grp_patch_buffer_add_patch_fu_308", "Port" : "patch_buffer_2_1"}]},
			{"Name" : "patch_buffer_2_2", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "103", "SubInstance" : "grp_patch_buffer_add_patch_fu_308", "Port" : "patch_buffer_2_2"}]},
			{"Name" : "patch_buffer_2_3", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "103", "SubInstance" : "grp_patch_buffer_add_patch_fu_308", "Port" : "patch_buffer_2_3"}]},
			{"Name" : "patch_buffer_2_4", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "103", "SubInstance" : "grp_patch_buffer_add_patch_fu_308", "Port" : "patch_buffer_2_4"}]},
			{"Name" : "patch_buffer_2_5", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "103", "SubInstance" : "grp_patch_buffer_add_patch_fu_308", "Port" : "patch_buffer_2_5"}]},
			{"Name" : "patch_buffer_2_6", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "103", "SubInstance" : "grp_patch_buffer_add_patch_fu_308", "Port" : "patch_buffer_2_6"}]},
			{"Name" : "patch_buffer_2_7", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "103", "SubInstance" : "grp_patch_buffer_add_patch_fu_308", "Port" : "patch_buffer_2_7"}]},
			{"Name" : "patch_buffer_2_8", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "103", "SubInstance" : "grp_patch_buffer_add_patch_fu_308", "Port" : "patch_buffer_2_8"}]},
			{"Name" : "patch_buffer_2_9", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "103", "SubInstance" : "grp_patch_buffer_add_patch_fu_308", "Port" : "patch_buffer_2_9"}]},
			{"Name" : "patch_buffer_2_10", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "103", "SubInstance" : "grp_patch_buffer_add_patch_fu_308", "Port" : "patch_buffer_2_10"}]},
			{"Name" : "patch_buffer_2_11", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "103", "SubInstance" : "grp_patch_buffer_add_patch_fu_308", "Port" : "patch_buffer_2_11"}]},
			{"Name" : "patch_buffer_2_12", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "103", "SubInstance" : "grp_patch_buffer_add_patch_fu_308", "Port" : "patch_buffer_2_12"}]},
			{"Name" : "patch_buffer_2_13", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "103", "SubInstance" : "grp_patch_buffer_add_patch_fu_308", "Port" : "patch_buffer_2_13"}]},
			{"Name" : "patch_buffer_2_14", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "103", "SubInstance" : "grp_patch_buffer_add_patch_fu_308", "Port" : "patch_buffer_2_14"}]},
			{"Name" : "patch_buffer_2_15", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "103", "SubInstance" : "grp_patch_buffer_add_patch_fu_308", "Port" : "patch_buffer_2_15"}]},
			{"Name" : "patch_buffer_3_0", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "103", "SubInstance" : "grp_patch_buffer_add_patch_fu_308", "Port" : "patch_buffer_3_0"}]},
			{"Name" : "patch_buffer_3_1", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "103", "SubInstance" : "grp_patch_buffer_add_patch_fu_308", "Port" : "patch_buffer_3_1"}]},
			{"Name" : "patch_buffer_3_2", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "103", "SubInstance" : "grp_patch_buffer_add_patch_fu_308", "Port" : "patch_buffer_3_2"}]},
			{"Name" : "patch_buffer_3_3", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "103", "SubInstance" : "grp_patch_buffer_add_patch_fu_308", "Port" : "patch_buffer_3_3"}]},
			{"Name" : "patch_buffer_3_4", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "103", "SubInstance" : "grp_patch_buffer_add_patch_fu_308", "Port" : "patch_buffer_3_4"}]},
			{"Name" : "patch_buffer_3_5", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "103", "SubInstance" : "grp_patch_buffer_add_patch_fu_308", "Port" : "patch_buffer_3_5"}]},
			{"Name" : "patch_buffer_3_6", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "103", "SubInstance" : "grp_patch_buffer_add_patch_fu_308", "Port" : "patch_buffer_3_6"}]},
			{"Name" : "patch_buffer_3_7", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "103", "SubInstance" : "grp_patch_buffer_add_patch_fu_308", "Port" : "patch_buffer_3_7"}]},
			{"Name" : "patch_buffer_3_8", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "103", "SubInstance" : "grp_patch_buffer_add_patch_fu_308", "Port" : "patch_buffer_3_8"}]},
			{"Name" : "patch_buffer_3_9", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "103", "SubInstance" : "grp_patch_buffer_add_patch_fu_308", "Port" : "patch_buffer_3_9"}]},
			{"Name" : "patch_buffer_3_10", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "103", "SubInstance" : "grp_patch_buffer_add_patch_fu_308", "Port" : "patch_buffer_3_10"}]},
			{"Name" : "patch_buffer_3_11", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "103", "SubInstance" : "grp_patch_buffer_add_patch_fu_308", "Port" : "patch_buffer_3_11"}]},
			{"Name" : "patch_buffer_3_12", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "103", "SubInstance" : "grp_patch_buffer_add_patch_fu_308", "Port" : "patch_buffer_3_12"}]},
			{"Name" : "patch_buffer_3_13", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "103", "SubInstance" : "grp_patch_buffer_add_patch_fu_308", "Port" : "patch_buffer_3_13"}]},
			{"Name" : "patch_buffer_3_14", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "103", "SubInstance" : "grp_patch_buffer_add_patch_fu_308", "Port" : "patch_buffer_3_14"}]},
			{"Name" : "patch_buffer_3_15", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "103", "SubInstance" : "grp_patch_buffer_add_patch_fu_308", "Port" : "patch_buffer_3_15"}]},
			{"Name" : "patch_buffer_4_0", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "103", "SubInstance" : "grp_patch_buffer_add_patch_fu_308", "Port" : "patch_buffer_4_0"}]},
			{"Name" : "patch_buffer_4_1", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "103", "SubInstance" : "grp_patch_buffer_add_patch_fu_308", "Port" : "patch_buffer_4_1"}]},
			{"Name" : "patch_buffer_4_2", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "103", "SubInstance" : "grp_patch_buffer_add_patch_fu_308", "Port" : "patch_buffer_4_2"}]},
			{"Name" : "patch_buffer_4_3", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "103", "SubInstance" : "grp_patch_buffer_add_patch_fu_308", "Port" : "patch_buffer_4_3"}]},
			{"Name" : "patch_buffer_4_4", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "103", "SubInstance" : "grp_patch_buffer_add_patch_fu_308", "Port" : "patch_buffer_4_4"}]},
			{"Name" : "patch_buffer_4_5", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "103", "SubInstance" : "grp_patch_buffer_add_patch_fu_308", "Port" : "patch_buffer_4_5"}]},
			{"Name" : "patch_buffer_4_6", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "103", "SubInstance" : "grp_patch_buffer_add_patch_fu_308", "Port" : "patch_buffer_4_6"}]},
			{"Name" : "patch_buffer_4_7", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "103", "SubInstance" : "grp_patch_buffer_add_patch_fu_308", "Port" : "patch_buffer_4_7"}]},
			{"Name" : "patch_buffer_4_8", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "103", "SubInstance" : "grp_patch_buffer_add_patch_fu_308", "Port" : "patch_buffer_4_8"}]},
			{"Name" : "patch_buffer_4_9", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "103", "SubInstance" : "grp_patch_buffer_add_patch_fu_308", "Port" : "patch_buffer_4_9"}]},
			{"Name" : "patch_buffer_4_10", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "103", "SubInstance" : "grp_patch_buffer_add_patch_fu_308", "Port" : "patch_buffer_4_10"}]},
			{"Name" : "patch_buffer_4_11", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "103", "SubInstance" : "grp_patch_buffer_add_patch_fu_308", "Port" : "patch_buffer_4_11"}]},
			{"Name" : "patch_buffer_4_12", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "103", "SubInstance" : "grp_patch_buffer_add_patch_fu_308", "Port" : "patch_buffer_4_12"}]},
			{"Name" : "patch_buffer_4_13", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "103", "SubInstance" : "grp_patch_buffer_add_patch_fu_308", "Port" : "patch_buffer_4_13"}]},
			{"Name" : "patch_buffer_4_14", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "103", "SubInstance" : "grp_patch_buffer_add_patch_fu_308", "Port" : "patch_buffer_4_14"}]},
			{"Name" : "patch_buffer_4_15", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "103", "SubInstance" : "grp_patch_buffer_add_patch_fu_308", "Port" : "patch_buffer_4_15"}]},
			{"Name" : "get_radiiradii", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "83", "SubInstance" : "grp_alignedtoline_per_layer_loop3_fu_284", "Port" : "get_radiiradii"}]},
			{"Name" : "lbVal_constprop", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "83", "SubInstance" : "grp_alignedtoline_per_layer_loop3_fu_284", "Port" : "lbVal_constprop"}]},
			{"Name" : "rbVal_constprop", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "83", "SubInstance" : "grp_alignedtoline_per_layer_loop3_fu_284", "Port" : "rbVal_constprop"}]},
			{"Name" : "get_trapezoid_edgestrapezoid_edges", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "83", "SubInstance" : "grp_alignedtoline_per_layer_loop3_fu_284", "Port" : "get_trapezoid_edgestrapezoid_edges"}]},
			{"Name" : "latest_patch_index_constprop", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "103", "SubInstance" : "grp_patch_buffer_add_patch_fu_308", "Port" : "latest_patch_index_constprop"}]},
			{"Name" : "num_patches_constprop", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "103", "SubInstance" : "grp_patch_buffer_add_patch_fu_308", "Port" : "num_patches_constprop"}]}]},
	{"ID" : "82", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_p_shadowquilt_main_loop_make_verticle_strip_fu_362.init_patch_V_U", "Parent" : "81"},
	{"ID" : "83", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_p_shadowquilt_main_loop_make_verticle_strip_fu_362.grp_alignedtoline_per_layer_loop3_fu_284", "Parent" : "81", "Child" : ["84", "85", "100", "101", "102"],
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
					{"ID" : "85", "SubInstance" : "grp_p_find_boundaries_and_starting_index_and_value4_fu_549", "Port" : "points"}]},
			{"Name" : "num_points", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "85", "SubInstance" : "grp_p_find_boundaries_and_starting_index_and_value4_fu_549", "Port" : "num_points"}]},
			{"Name" : "init_patch", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "i_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "get_radiiradii", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "lbVal_constprop", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "85", "SubInstance" : "grp_p_find_boundaries_and_starting_index_and_value4_fu_549", "Port" : "lbVal_constprop"}]},
			{"Name" : "rbVal_constprop", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "85", "SubInstance" : "grp_p_find_boundaries_and_starting_index_and_value4_fu_549", "Port" : "rbVal_constprop"}]},
			{"Name" : "get_trapezoid_edgestrapezoid_edges", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "85", "SubInstance" : "grp_p_find_boundaries_and_starting_index_and_value4_fu_549", "Port" : "get_trapezoid_edgestrapezoid_edges"}]}]},
	{"ID" : "84", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_p_shadowquilt_main_loop_make_verticle_strip_fu_362.grp_alignedtoline_per_layer_loop3_fu_284.get_radiiradii_U", "Parent" : "83"},
	{"ID" : "85", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_p_shadowquilt_main_loop_make_verticle_strip_fu_362.grp_alignedtoline_per_layer_loop3_fu_284.grp_p_find_boundaries_and_starting_index_and_value4_fu_549", "Parent" : "83", "Child" : ["86", "87", "94", "97", "98", "99"],
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
			{"ID" : "86", "Name" : "p_find_boundaries_and_starting_index_and_value_entry26_U0"},
			{"ID" : "87", "Name" : "p_find_left_and_right_boundaries6_U0"},
			{"ID" : "94", "Name" : "p_find_starting_index_and_value5_U0"}],
		"OutputProcess" : [
			{"ID" : "87", "Name" : "p_find_left_and_right_boundaries6_U0"},
			{"ID" : "94", "Name" : "p_find_starting_index_and_value5_U0"}],
		"Port" : [
			{"Name" : "num_points", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "87", "SubInstance" : "p_find_left_and_right_boundaries6_U0", "Port" : "num_points"},
					{"ID" : "94", "SubInstance" : "p_find_starting_index_and_value5_U0", "Port" : "num_points"}]},
			{"Name" : "points", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "87", "SubInstance" : "p_find_left_and_right_boundaries6_U0", "Port" : "points"},
					{"ID" : "94", "SubInstance" : "p_find_starting_index_and_value5_U0", "Port" : "points"}]},
			{"Name" : "left_bound", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "87", "SubInstance" : "p_find_left_and_right_boundaries6_U0", "Port" : "left_bound"}]},
			{"Name" : "projectionToRow", "Type" : "None", "Direction" : "I"},
			{"Name" : "start_index", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "94", "SubInstance" : "p_find_starting_index_and_value5_U0", "Port" : "start_index"}]},
			{"Name" : "start_value", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "94", "SubInstance" : "p_find_starting_index_and_value5_U0", "Port" : "start_value"}]},
			{"Name" : "i", "Type" : "None", "Direction" : "I"},
			{"Name" : "get_trapezoid_edgestrapezoid_edges", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "87", "SubInstance" : "p_find_left_and_right_boundaries6_U0", "Port" : "get_trapezoid_edgestrapezoid_edges"}]},
			{"Name" : "lbVal_constprop", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "87", "SubInstance" : "p_find_left_and_right_boundaries6_U0", "Port" : "lbVal_constprop"}]},
			{"Name" : "rbVal_constprop", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "87", "SubInstance" : "p_find_left_and_right_boundaries6_U0", "Port" : "rbVal_constprop"}]}]},
	{"ID" : "86", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_p_shadowquilt_main_loop_make_verticle_strip_fu_362.grp_alignedtoline_per_layer_loop3_fu_284.grp_p_find_boundaries_and_starting_index_and_value4_fu_549.p_find_boundaries_and_starting_index_and_value_entry26_U0", "Parent" : "85",
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
			{"Name" : "projectionToRow_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "94", "DependentChan" : "97", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "projectionToRow_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "i_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "87", "DependentChan" : "98", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "i_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "i_out1", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "94", "DependentChan" : "99", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "i_out1_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "87", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_p_shadowquilt_main_loop_make_verticle_strip_fu_362.grp_alignedtoline_per_layer_loop3_fu_284.grp_p_find_boundaries_and_starting_index_and_value4_fu_549.p_find_left_and_right_boundaries6_U0", "Parent" : "85", "Child" : ["88", "89", "90", "91", "92", "93"],
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
			{"Name" : "i", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "86", "DependentChan" : "98", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "i_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "get_trapezoid_edgestrapezoid_edges", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "lbVal_constprop", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "rbVal_constprop", "Type" : "OVld", "Direction" : "IO"}]},
	{"ID" : "88", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_p_shadowquilt_main_loop_make_verticle_strip_fu_362.grp_alignedtoline_per_layer_loop3_fu_284.grp_p_find_boundaries_and_starting_index_and_value4_fu_549.p_find_left_and_right_boundaries6_U0.get_trapezoid_edgestrapezoid_edges_U", "Parent" : "87"},
	{"ID" : "89", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_p_shadowquilt_main_loop_make_verticle_strip_fu_362.grp_alignedtoline_per_layer_loop3_fu_284.grp_p_find_boundaries_and_starting_index_and_value4_fu_549.p_find_left_and_right_boundaries6_U0.faddfsub_32ns_32ns_32_3_full_dsp_1_U6", "Parent" : "87"},
	{"ID" : "90", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_p_shadowquilt_main_loop_make_verticle_strip_fu_362.grp_alignedtoline_per_layer_loop3_fu_284.grp_p_find_boundaries_and_starting_index_and_value4_fu_549.p_find_left_and_right_boundaries6_U0.faddfsub_32ns_32ns_32_3_full_dsp_1_U7", "Parent" : "87"},
	{"ID" : "91", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_p_shadowquilt_main_loop_make_verticle_strip_fu_362.grp_alignedtoline_per_layer_loop3_fu_284.grp_p_find_boundaries_and_starting_index_and_value4_fu_549.p_find_left_and_right_boundaries6_U0.fsub_32ns_32ns_32_3_full_dsp_1_U8", "Parent" : "87"},
	{"ID" : "92", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_p_shadowquilt_main_loop_make_verticle_strip_fu_362.grp_alignedtoline_per_layer_loop3_fu_284.grp_p_find_boundaries_and_starting_index_and_value4_fu_549.p_find_left_and_right_boundaries6_U0.fpext_32ns_64_2_no_dsp_1_U9", "Parent" : "87"},
	{"ID" : "93", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_p_shadowquilt_main_loop_make_verticle_strip_fu_362.grp_alignedtoline_per_layer_loop3_fu_284.grp_p_find_boundaries_and_starting_index_and_value4_fu_549.p_find_left_and_right_boundaries6_U0.fpext_32ns_64_2_no_dsp_1_U10", "Parent" : "87"},
	{"ID" : "94", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_p_shadowquilt_main_loop_make_verticle_strip_fu_362.grp_alignedtoline_per_layer_loop3_fu_284.grp_p_find_boundaries_and_starting_index_and_value4_fu_549.p_find_starting_index_and_value5_U0", "Parent" : "85", "Child" : ["95", "96"],
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
			{"Name" : "projectionToRow", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "86", "DependentChan" : "97", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "projectionToRow_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "start_index", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "start_value", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "i", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "86", "DependentChan" : "99", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "i_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "95", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_p_shadowquilt_main_loop_make_verticle_strip_fu_362.grp_alignedtoline_per_layer_loop3_fu_284.grp_p_find_boundaries_and_starting_index_and_value4_fu_549.p_find_starting_index_and_value5_U0.fsub_32ns_32ns_32_3_full_dsp_1_U21", "Parent" : "94"},
	{"ID" : "96", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_p_shadowquilt_main_loop_make_verticle_strip_fu_362.grp_alignedtoline_per_layer_loop3_fu_284.grp_p_find_boundaries_and_starting_index_and_value4_fu_549.p_find_starting_index_and_value5_U0.fcmp_32ns_32ns_1_2_no_dsp_1_U22", "Parent" : "94"},
	{"ID" : "97", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_p_shadowquilt_main_loop_make_verticle_strip_fu_362.grp_alignedtoline_per_layer_loop3_fu_284.grp_p_find_boundaries_and_starting_index_and_value4_fu_549.projectionToRow_c_U", "Parent" : "85"},
	{"ID" : "98", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_p_shadowquilt_main_loop_make_verticle_strip_fu_362.grp_alignedtoline_per_layer_loop3_fu_284.grp_p_find_boundaries_and_starting_index_and_value4_fu_549.i_c_U", "Parent" : "85"},
	{"ID" : "99", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_p_shadowquilt_main_loop_make_verticle_strip_fu_362.grp_alignedtoline_per_layer_loop3_fu_284.grp_p_find_boundaries_and_starting_index_and_value4_fu_549.i_c7_U", "Parent" : "85"},
	{"ID" : "100", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_p_shadowquilt_main_loop_make_verticle_strip_fu_362.grp_alignedtoline_per_layer_loop3_fu_284.dcmp_64ns_64ns_1_2_no_dsp_1_U42", "Parent" : "83"},
	{"ID" : "101", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_p_shadowquilt_main_loop_make_verticle_strip_fu_362.grp_alignedtoline_per_layer_loop3_fu_284.mul_25ns_46ns_70_1_1_U43", "Parent" : "83"},
	{"ID" : "102", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_p_shadowquilt_main_loop_make_verticle_strip_fu_362.grp_alignedtoline_per_layer_loop3_fu_284.mul_70ns_72ns_141_1_1_U44", "Parent" : "83"},
	{"ID" : "103", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_p_shadowquilt_main_loop_make_verticle_strip_fu_362.grp_patch_buffer_add_patch_fu_308", "Parent" : "81",
		"CDFG" : "patch_buffer_add_patch",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "40", "EstimateLatencyMax" : "40",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "new_patch", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "patch_buffer_0_0", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "patch_buffer_0_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "patch_buffer_0_2", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "patch_buffer_0_3", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "patch_buffer_0_4", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "patch_buffer_0_5", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "patch_buffer_0_6", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "patch_buffer_0_7", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "patch_buffer_0_8", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "patch_buffer_0_9", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "patch_buffer_0_10", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "patch_buffer_0_11", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "patch_buffer_0_12", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "patch_buffer_0_13", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "patch_buffer_0_14", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "patch_buffer_0_15", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "patch_buffer_1_0", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "patch_buffer_1_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "patch_buffer_1_2", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "patch_buffer_1_3", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "patch_buffer_1_4", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "patch_buffer_1_5", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "patch_buffer_1_6", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "patch_buffer_1_7", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "patch_buffer_1_8", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "patch_buffer_1_9", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "patch_buffer_1_10", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "patch_buffer_1_11", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "patch_buffer_1_12", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "patch_buffer_1_13", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "patch_buffer_1_14", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "patch_buffer_1_15", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "patch_buffer_2_0", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "patch_buffer_2_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "patch_buffer_2_2", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "patch_buffer_2_3", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "patch_buffer_2_4", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "patch_buffer_2_5", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "patch_buffer_2_6", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "patch_buffer_2_7", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "patch_buffer_2_8", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "patch_buffer_2_9", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "patch_buffer_2_10", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "patch_buffer_2_11", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "patch_buffer_2_12", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "patch_buffer_2_13", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "patch_buffer_2_14", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "patch_buffer_2_15", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "patch_buffer_3_0", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "patch_buffer_3_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "patch_buffer_3_2", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "patch_buffer_3_3", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "patch_buffer_3_4", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "patch_buffer_3_5", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "patch_buffer_3_6", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "patch_buffer_3_7", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "patch_buffer_3_8", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "patch_buffer_3_9", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "patch_buffer_3_10", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "patch_buffer_3_11", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "patch_buffer_3_12", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "patch_buffer_3_13", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "patch_buffer_3_14", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "patch_buffer_3_15", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "patch_buffer_4_0", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "patch_buffer_4_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "patch_buffer_4_2", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "patch_buffer_4_3", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "patch_buffer_4_4", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "patch_buffer_4_5", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "patch_buffer_4_6", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "patch_buffer_4_7", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "patch_buffer_4_8", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "patch_buffer_4_9", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "patch_buffer_4_10", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "patch_buffer_4_11", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "patch_buffer_4_12", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "patch_buffer_4_13", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "patch_buffer_4_14", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "patch_buffer_4_15", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "latest_patch_index_constprop", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "num_patches_constprop", "Type" : "OVld", "Direction" : "IO"}]}]}


set ArgLastReadFirstWriteLatency {
	system_top {
		points {Type I LastRead 16 FirstWrite -1}
		num_points {Type I LastRead 4 FirstWrite -1}
		patch_stream_V {Type O LastRead -1 FirstWrite 14}
		latest_patch_index_constprop {Type IO LastRead -1 FirstWrite -1}
		num_patches_constprop {Type IO LastRead -1 FirstWrite -1}
		get_radiiradii {Type I LastRead -1 FirstWrite -1}
		lbVal_constprop {Type IO LastRead -1 FirstWrite -1}
		rbVal_constprop {Type IO LastRead -1 FirstWrite -1}
		get_trapezoid_edgestrapezoid_edges {Type I LastRead -1 FirstWrite -1}}
	p_shadowquilt_main_loop_make_verticle_strip {
		points {Type I LastRead 16 FirstWrite -1}
		num_points {Type I LastRead 4 FirstWrite -1}
		patch_stream_V {Type O LastRead -1 FirstWrite 14}
		patch_buffer_0_0 {Type O LastRead -1 FirstWrite 1}
		patch_buffer_0_1 {Type O LastRead -1 FirstWrite 1}
		patch_buffer_0_2 {Type O LastRead -1 FirstWrite 2}
		patch_buffer_0_3 {Type O LastRead -1 FirstWrite 2}
		patch_buffer_0_4 {Type O LastRead -1 FirstWrite 3}
		patch_buffer_0_5 {Type O LastRead -1 FirstWrite 3}
		patch_buffer_0_6 {Type O LastRead -1 FirstWrite 4}
		patch_buffer_0_7 {Type O LastRead -1 FirstWrite 4}
		patch_buffer_0_8 {Type O LastRead -1 FirstWrite 5}
		patch_buffer_0_9 {Type O LastRead -1 FirstWrite 5}
		patch_buffer_0_10 {Type O LastRead -1 FirstWrite 6}
		patch_buffer_0_11 {Type O LastRead -1 FirstWrite 6}
		patch_buffer_0_12 {Type O LastRead -1 FirstWrite 7}
		patch_buffer_0_13 {Type O LastRead -1 FirstWrite 7}
		patch_buffer_0_14 {Type O LastRead -1 FirstWrite 8}
		patch_buffer_0_15 {Type O LastRead -1 FirstWrite 8}
		patch_buffer_1_0 {Type O LastRead -1 FirstWrite 9}
		patch_buffer_1_1 {Type O LastRead -1 FirstWrite 9}
		patch_buffer_1_2 {Type O LastRead -1 FirstWrite 10}
		patch_buffer_1_3 {Type O LastRead -1 FirstWrite 10}
		patch_buffer_1_4 {Type O LastRead -1 FirstWrite 11}
		patch_buffer_1_5 {Type O LastRead -1 FirstWrite 11}
		patch_buffer_1_6 {Type O LastRead -1 FirstWrite 12}
		patch_buffer_1_7 {Type O LastRead -1 FirstWrite 12}
		patch_buffer_1_8 {Type O LastRead -1 FirstWrite 13}
		patch_buffer_1_9 {Type O LastRead -1 FirstWrite 13}
		patch_buffer_1_10 {Type O LastRead -1 FirstWrite 14}
		patch_buffer_1_11 {Type O LastRead -1 FirstWrite 14}
		patch_buffer_1_12 {Type O LastRead -1 FirstWrite 15}
		patch_buffer_1_13 {Type O LastRead -1 FirstWrite 15}
		patch_buffer_1_14 {Type O LastRead -1 FirstWrite 16}
		patch_buffer_1_15 {Type O LastRead -1 FirstWrite 16}
		patch_buffer_2_0 {Type O LastRead -1 FirstWrite 17}
		patch_buffer_2_1 {Type O LastRead -1 FirstWrite 17}
		patch_buffer_2_2 {Type O LastRead -1 FirstWrite 18}
		patch_buffer_2_3 {Type O LastRead -1 FirstWrite 18}
		patch_buffer_2_4 {Type O LastRead -1 FirstWrite 19}
		patch_buffer_2_5 {Type O LastRead -1 FirstWrite 19}
		patch_buffer_2_6 {Type O LastRead -1 FirstWrite 20}
		patch_buffer_2_7 {Type O LastRead -1 FirstWrite 20}
		patch_buffer_2_8 {Type O LastRead -1 FirstWrite 21}
		patch_buffer_2_9 {Type O LastRead -1 FirstWrite 21}
		patch_buffer_2_10 {Type O LastRead -1 FirstWrite 22}
		patch_buffer_2_11 {Type O LastRead -1 FirstWrite 22}
		patch_buffer_2_12 {Type O LastRead -1 FirstWrite 23}
		patch_buffer_2_13 {Type O LastRead -1 FirstWrite 23}
		patch_buffer_2_14 {Type O LastRead -1 FirstWrite 24}
		patch_buffer_2_15 {Type O LastRead -1 FirstWrite 24}
		patch_buffer_3_0 {Type O LastRead -1 FirstWrite 25}
		patch_buffer_3_1 {Type O LastRead -1 FirstWrite 25}
		patch_buffer_3_2 {Type O LastRead -1 FirstWrite 26}
		patch_buffer_3_3 {Type O LastRead -1 FirstWrite 26}
		patch_buffer_3_4 {Type O LastRead -1 FirstWrite 27}
		patch_buffer_3_5 {Type O LastRead -1 FirstWrite 27}
		patch_buffer_3_6 {Type O LastRead -1 FirstWrite 28}
		patch_buffer_3_7 {Type O LastRead -1 FirstWrite 28}
		patch_buffer_3_8 {Type O LastRead -1 FirstWrite 29}
		patch_buffer_3_9 {Type O LastRead -1 FirstWrite 29}
		patch_buffer_3_10 {Type O LastRead -1 FirstWrite 30}
		patch_buffer_3_11 {Type O LastRead -1 FirstWrite 30}
		patch_buffer_3_12 {Type O LastRead -1 FirstWrite 31}
		patch_buffer_3_13 {Type O LastRead -1 FirstWrite 31}
		patch_buffer_3_14 {Type O LastRead -1 FirstWrite 32}
		patch_buffer_3_15 {Type O LastRead -1 FirstWrite 32}
		patch_buffer_4_0 {Type O LastRead -1 FirstWrite 33}
		patch_buffer_4_1 {Type O LastRead -1 FirstWrite 33}
		patch_buffer_4_2 {Type O LastRead -1 FirstWrite 34}
		patch_buffer_4_3 {Type O LastRead -1 FirstWrite 34}
		patch_buffer_4_4 {Type O LastRead -1 FirstWrite 35}
		patch_buffer_4_5 {Type O LastRead -1 FirstWrite 35}
		patch_buffer_4_6 {Type O LastRead -1 FirstWrite 36}
		patch_buffer_4_7 {Type O LastRead -1 FirstWrite 36}
		patch_buffer_4_8 {Type O LastRead -1 FirstWrite 37}
		patch_buffer_4_9 {Type O LastRead -1 FirstWrite 37}
		patch_buffer_4_10 {Type O LastRead -1 FirstWrite 38}
		patch_buffer_4_11 {Type O LastRead -1 FirstWrite 38}
		patch_buffer_4_12 {Type O LastRead -1 FirstWrite 39}
		patch_buffer_4_13 {Type O LastRead -1 FirstWrite 39}
		patch_buffer_4_14 {Type O LastRead -1 FirstWrite 40}
		patch_buffer_4_15 {Type O LastRead -1 FirstWrite 40}
		get_radiiradii {Type I LastRead -1 FirstWrite -1}
		lbVal_constprop {Type IO LastRead -1 FirstWrite -1}
		rbVal_constprop {Type IO LastRead -1 FirstWrite -1}
		get_trapezoid_edgestrapezoid_edges {Type I LastRead -1 FirstWrite -1}
		latest_patch_index_constprop {Type IO LastRead 1 FirstWrite 1}
		num_patches_constprop {Type IO LastRead 0 FirstWrite 0}}
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
		i {Type I LastRead 0 FirstWrite -1}}
	patch_buffer_add_patch {
		new_patch {Type I LastRead 40 FirstWrite -1}
		patch_buffer_0_0 {Type O LastRead -1 FirstWrite 1}
		patch_buffer_0_1 {Type O LastRead -1 FirstWrite 1}
		patch_buffer_0_2 {Type O LastRead -1 FirstWrite 2}
		patch_buffer_0_3 {Type O LastRead -1 FirstWrite 2}
		patch_buffer_0_4 {Type O LastRead -1 FirstWrite 3}
		patch_buffer_0_5 {Type O LastRead -1 FirstWrite 3}
		patch_buffer_0_6 {Type O LastRead -1 FirstWrite 4}
		patch_buffer_0_7 {Type O LastRead -1 FirstWrite 4}
		patch_buffer_0_8 {Type O LastRead -1 FirstWrite 5}
		patch_buffer_0_9 {Type O LastRead -1 FirstWrite 5}
		patch_buffer_0_10 {Type O LastRead -1 FirstWrite 6}
		patch_buffer_0_11 {Type O LastRead -1 FirstWrite 6}
		patch_buffer_0_12 {Type O LastRead -1 FirstWrite 7}
		patch_buffer_0_13 {Type O LastRead -1 FirstWrite 7}
		patch_buffer_0_14 {Type O LastRead -1 FirstWrite 8}
		patch_buffer_0_15 {Type O LastRead -1 FirstWrite 8}
		patch_buffer_1_0 {Type O LastRead -1 FirstWrite 9}
		patch_buffer_1_1 {Type O LastRead -1 FirstWrite 9}
		patch_buffer_1_2 {Type O LastRead -1 FirstWrite 10}
		patch_buffer_1_3 {Type O LastRead -1 FirstWrite 10}
		patch_buffer_1_4 {Type O LastRead -1 FirstWrite 11}
		patch_buffer_1_5 {Type O LastRead -1 FirstWrite 11}
		patch_buffer_1_6 {Type O LastRead -1 FirstWrite 12}
		patch_buffer_1_7 {Type O LastRead -1 FirstWrite 12}
		patch_buffer_1_8 {Type O LastRead -1 FirstWrite 13}
		patch_buffer_1_9 {Type O LastRead -1 FirstWrite 13}
		patch_buffer_1_10 {Type O LastRead -1 FirstWrite 14}
		patch_buffer_1_11 {Type O LastRead -1 FirstWrite 14}
		patch_buffer_1_12 {Type O LastRead -1 FirstWrite 15}
		patch_buffer_1_13 {Type O LastRead -1 FirstWrite 15}
		patch_buffer_1_14 {Type O LastRead -1 FirstWrite 16}
		patch_buffer_1_15 {Type O LastRead -1 FirstWrite 16}
		patch_buffer_2_0 {Type O LastRead -1 FirstWrite 17}
		patch_buffer_2_1 {Type O LastRead -1 FirstWrite 17}
		patch_buffer_2_2 {Type O LastRead -1 FirstWrite 18}
		patch_buffer_2_3 {Type O LastRead -1 FirstWrite 18}
		patch_buffer_2_4 {Type O LastRead -1 FirstWrite 19}
		patch_buffer_2_5 {Type O LastRead -1 FirstWrite 19}
		patch_buffer_2_6 {Type O LastRead -1 FirstWrite 20}
		patch_buffer_2_7 {Type O LastRead -1 FirstWrite 20}
		patch_buffer_2_8 {Type O LastRead -1 FirstWrite 21}
		patch_buffer_2_9 {Type O LastRead -1 FirstWrite 21}
		patch_buffer_2_10 {Type O LastRead -1 FirstWrite 22}
		patch_buffer_2_11 {Type O LastRead -1 FirstWrite 22}
		patch_buffer_2_12 {Type O LastRead -1 FirstWrite 23}
		patch_buffer_2_13 {Type O LastRead -1 FirstWrite 23}
		patch_buffer_2_14 {Type O LastRead -1 FirstWrite 24}
		patch_buffer_2_15 {Type O LastRead -1 FirstWrite 24}
		patch_buffer_3_0 {Type O LastRead -1 FirstWrite 25}
		patch_buffer_3_1 {Type O LastRead -1 FirstWrite 25}
		patch_buffer_3_2 {Type O LastRead -1 FirstWrite 26}
		patch_buffer_3_3 {Type O LastRead -1 FirstWrite 26}
		patch_buffer_3_4 {Type O LastRead -1 FirstWrite 27}
		patch_buffer_3_5 {Type O LastRead -1 FirstWrite 27}
		patch_buffer_3_6 {Type O LastRead -1 FirstWrite 28}
		patch_buffer_3_7 {Type O LastRead -1 FirstWrite 28}
		patch_buffer_3_8 {Type O LastRead -1 FirstWrite 29}
		patch_buffer_3_9 {Type O LastRead -1 FirstWrite 29}
		patch_buffer_3_10 {Type O LastRead -1 FirstWrite 30}
		patch_buffer_3_11 {Type O LastRead -1 FirstWrite 30}
		patch_buffer_3_12 {Type O LastRead -1 FirstWrite 31}
		patch_buffer_3_13 {Type O LastRead -1 FirstWrite 31}
		patch_buffer_3_14 {Type O LastRead -1 FirstWrite 32}
		patch_buffer_3_15 {Type O LastRead -1 FirstWrite 32}
		patch_buffer_4_0 {Type O LastRead -1 FirstWrite 33}
		patch_buffer_4_1 {Type O LastRead -1 FirstWrite 33}
		patch_buffer_4_2 {Type O LastRead -1 FirstWrite 34}
		patch_buffer_4_3 {Type O LastRead -1 FirstWrite 34}
		patch_buffer_4_4 {Type O LastRead -1 FirstWrite 35}
		patch_buffer_4_5 {Type O LastRead -1 FirstWrite 35}
		patch_buffer_4_6 {Type O LastRead -1 FirstWrite 36}
		patch_buffer_4_7 {Type O LastRead -1 FirstWrite 36}
		patch_buffer_4_8 {Type O LastRead -1 FirstWrite 37}
		patch_buffer_4_9 {Type O LastRead -1 FirstWrite 37}
		patch_buffer_4_10 {Type O LastRead -1 FirstWrite 38}
		patch_buffer_4_11 {Type O LastRead -1 FirstWrite 38}
		patch_buffer_4_12 {Type O LastRead -1 FirstWrite 39}
		patch_buffer_4_13 {Type O LastRead -1 FirstWrite 39}
		patch_buffer_4_14 {Type O LastRead -1 FirstWrite 40}
		patch_buffer_4_15 {Type O LastRead -1 FirstWrite 40}
		latest_patch_index_constprop {Type IO LastRead 1 FirstWrite 1}
		num_patches_constprop {Type IO LastRead 0 FirstWrite 0}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "0", "Max" : "0"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	points { ap_memory {  { points_address0 mem_address 1 12 }  { points_ce0 mem_ce 1 1 }  { points_q0 mem_dout 0 128 }  { points_address1 MemPortADDR2 1 12 }  { points_ce1 MemPortCE2 1 1 }  { points_q1 MemPortDOUT2 0 128 } } }
	num_points { ap_memory {  { num_points_address0 mem_address 1 3 }  { num_points_ce0 mem_ce 1 1 }  { num_points_q0 mem_dout 0 32 }  { num_points_address1 MemPortADDR2 1 3 }  { num_points_ce1 MemPortCE2 1 1 }  { num_points_q1 MemPortDOUT2 0 32 } } }
	patch_stream_V { ap_fifo {  { patch_stream_V_din fifo_data 1 96 }  { patch_stream_V_full_n fifo_status 0 1 }  { patch_stream_V_write fifo_update 1 1 } } }
}

set busDeadlockParameterList { 
}

# RTL port scheduling information:
set fifoSchedulingInfoList { 
	patch_stream_V { fifo_write 1 no_conditional }
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
