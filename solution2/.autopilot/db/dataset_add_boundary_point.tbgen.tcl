set moduleName dataset_add_boundary_point
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
set C_modelName {dataset_add_boundary_point}
set C_modelType { void 0 }
set C_modelArgList {
	{ dataset_env_10 double 64 regular {array 5 { 2 1 } 1 1 }  }
	{ p_read int 64 regular  }
	{ dataset_array_layer_num int 32 regular {array 5000 { 2 2 } 1 1 }  }
	{ dataset_array_radius double 64 regular {array 5000 { 2 2 } 1 1 }  }
	{ dataset_array_phi double 64 regular {array 5000 { 2 2 } 1 1 }  }
	{ dataset_array_z double 64 regular {array 5000 { 2 2 } 1 1 }  }
	{ dataset_n_points int 32 regular {array 5 { 2 3 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "dataset_env_10", "interface" : "memory", "bitwidth" : 64, "direction" : "READWRITE"} , 
 	{ "Name" : "p_read", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "dataset_array_layer_num", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "dataset_array_radius", "interface" : "memory", "bitwidth" : 64, "direction" : "READWRITE"} , 
 	{ "Name" : "dataset_array_phi", "interface" : "memory", "bitwidth" : 64, "direction" : "READWRITE"} , 
 	{ "Name" : "dataset_array_z", "interface" : "memory", "bitwidth" : 64, "direction" : "READWRITE"} , 
 	{ "Name" : "dataset_n_points", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} ]}
# RTL Port declarations: 
set portNum 65
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ dataset_env_10_address0 sc_out sc_lv 3 signal 0 } 
	{ dataset_env_10_ce0 sc_out sc_logic 1 signal 0 } 
	{ dataset_env_10_we0 sc_out sc_logic 1 signal 0 } 
	{ dataset_env_10_d0 sc_out sc_lv 64 signal 0 } 
	{ dataset_env_10_q0 sc_in sc_lv 64 signal 0 } 
	{ dataset_env_10_address1 sc_out sc_lv 3 signal 0 } 
	{ dataset_env_10_ce1 sc_out sc_logic 1 signal 0 } 
	{ dataset_env_10_q1 sc_in sc_lv 64 signal 0 } 
	{ p_read sc_in sc_lv 64 signal 1 } 
	{ dataset_array_layer_num_address0 sc_out sc_lv 13 signal 2 } 
	{ dataset_array_layer_num_ce0 sc_out sc_logic 1 signal 2 } 
	{ dataset_array_layer_num_we0 sc_out sc_logic 1 signal 2 } 
	{ dataset_array_layer_num_d0 sc_out sc_lv 32 signal 2 } 
	{ dataset_array_layer_num_q0 sc_in sc_lv 32 signal 2 } 
	{ dataset_array_layer_num_address1 sc_out sc_lv 13 signal 2 } 
	{ dataset_array_layer_num_ce1 sc_out sc_logic 1 signal 2 } 
	{ dataset_array_layer_num_we1 sc_out sc_logic 1 signal 2 } 
	{ dataset_array_layer_num_d1 sc_out sc_lv 32 signal 2 } 
	{ dataset_array_layer_num_q1 sc_in sc_lv 32 signal 2 } 
	{ dataset_array_radius_address0 sc_out sc_lv 13 signal 3 } 
	{ dataset_array_radius_ce0 sc_out sc_logic 1 signal 3 } 
	{ dataset_array_radius_we0 sc_out sc_logic 1 signal 3 } 
	{ dataset_array_radius_d0 sc_out sc_lv 64 signal 3 } 
	{ dataset_array_radius_q0 sc_in sc_lv 64 signal 3 } 
	{ dataset_array_radius_address1 sc_out sc_lv 13 signal 3 } 
	{ dataset_array_radius_ce1 sc_out sc_logic 1 signal 3 } 
	{ dataset_array_radius_we1 sc_out sc_logic 1 signal 3 } 
	{ dataset_array_radius_d1 sc_out sc_lv 64 signal 3 } 
	{ dataset_array_radius_q1 sc_in sc_lv 64 signal 3 } 
	{ dataset_array_phi_address0 sc_out sc_lv 13 signal 4 } 
	{ dataset_array_phi_ce0 sc_out sc_logic 1 signal 4 } 
	{ dataset_array_phi_we0 sc_out sc_logic 1 signal 4 } 
	{ dataset_array_phi_d0 sc_out sc_lv 64 signal 4 } 
	{ dataset_array_phi_q0 sc_in sc_lv 64 signal 4 } 
	{ dataset_array_phi_address1 sc_out sc_lv 13 signal 4 } 
	{ dataset_array_phi_ce1 sc_out sc_logic 1 signal 4 } 
	{ dataset_array_phi_we1 sc_out sc_logic 1 signal 4 } 
	{ dataset_array_phi_d1 sc_out sc_lv 64 signal 4 } 
	{ dataset_array_phi_q1 sc_in sc_lv 64 signal 4 } 
	{ dataset_array_z_address0 sc_out sc_lv 13 signal 5 } 
	{ dataset_array_z_ce0 sc_out sc_logic 1 signal 5 } 
	{ dataset_array_z_we0 sc_out sc_logic 1 signal 5 } 
	{ dataset_array_z_d0 sc_out sc_lv 64 signal 5 } 
	{ dataset_array_z_q0 sc_in sc_lv 64 signal 5 } 
	{ dataset_array_z_address1 sc_out sc_lv 13 signal 5 } 
	{ dataset_array_z_ce1 sc_out sc_logic 1 signal 5 } 
	{ dataset_array_z_we1 sc_out sc_logic 1 signal 5 } 
	{ dataset_array_z_d1 sc_out sc_lv 64 signal 5 } 
	{ dataset_array_z_q1 sc_in sc_lv 64 signal 5 } 
	{ dataset_n_points_address0 sc_out sc_lv 3 signal 6 } 
	{ dataset_n_points_ce0 sc_out sc_logic 1 signal 6 } 
	{ dataset_n_points_we0 sc_out sc_logic 1 signal 6 } 
	{ dataset_n_points_d0 sc_out sc_lv 32 signal 6 } 
	{ dataset_n_points_q0 sc_in sc_lv 32 signal 6 } 
	{ grp_fu_50533_p_din0 sc_out sc_lv 64 signal -1 } 
	{ grp_fu_50533_p_din1 sc_out sc_lv 64 signal -1 } 
	{ grp_fu_50533_p_opcode sc_out sc_lv 5 signal -1 } 
	{ grp_fu_50533_p_dout0 sc_in sc_lv 1 signal -1 } 
	{ grp_fu_50533_p_ce sc_out sc_logic 1 signal -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "dataset_env_10_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "dataset_env_10", "role": "address0" }} , 
 	{ "name": "dataset_env_10_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dataset_env_10", "role": "ce0" }} , 
 	{ "name": "dataset_env_10_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dataset_env_10", "role": "we0" }} , 
 	{ "name": "dataset_env_10_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "dataset_env_10", "role": "d0" }} , 
 	{ "name": "dataset_env_10_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "dataset_env_10", "role": "q0" }} , 
 	{ "name": "dataset_env_10_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "dataset_env_10", "role": "address1" }} , 
 	{ "name": "dataset_env_10_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dataset_env_10", "role": "ce1" }} , 
 	{ "name": "dataset_env_10_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "dataset_env_10", "role": "q1" }} , 
 	{ "name": "p_read", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "p_read", "role": "default" }} , 
 	{ "name": "dataset_array_layer_num_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "dataset_array_layer_num", "role": "address0" }} , 
 	{ "name": "dataset_array_layer_num_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dataset_array_layer_num", "role": "ce0" }} , 
 	{ "name": "dataset_array_layer_num_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dataset_array_layer_num", "role": "we0" }} , 
 	{ "name": "dataset_array_layer_num_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "dataset_array_layer_num", "role": "d0" }} , 
 	{ "name": "dataset_array_layer_num_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "dataset_array_layer_num", "role": "q0" }} , 
 	{ "name": "dataset_array_layer_num_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "dataset_array_layer_num", "role": "address1" }} , 
 	{ "name": "dataset_array_layer_num_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dataset_array_layer_num", "role": "ce1" }} , 
 	{ "name": "dataset_array_layer_num_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dataset_array_layer_num", "role": "we1" }} , 
 	{ "name": "dataset_array_layer_num_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "dataset_array_layer_num", "role": "d1" }} , 
 	{ "name": "dataset_array_layer_num_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "dataset_array_layer_num", "role": "q1" }} , 
 	{ "name": "dataset_array_radius_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "dataset_array_radius", "role": "address0" }} , 
 	{ "name": "dataset_array_radius_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dataset_array_radius", "role": "ce0" }} , 
 	{ "name": "dataset_array_radius_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dataset_array_radius", "role": "we0" }} , 
 	{ "name": "dataset_array_radius_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "dataset_array_radius", "role": "d0" }} , 
 	{ "name": "dataset_array_radius_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "dataset_array_radius", "role": "q0" }} , 
 	{ "name": "dataset_array_radius_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "dataset_array_radius", "role": "address1" }} , 
 	{ "name": "dataset_array_radius_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dataset_array_radius", "role": "ce1" }} , 
 	{ "name": "dataset_array_radius_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dataset_array_radius", "role": "we1" }} , 
 	{ "name": "dataset_array_radius_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "dataset_array_radius", "role": "d1" }} , 
 	{ "name": "dataset_array_radius_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "dataset_array_radius", "role": "q1" }} , 
 	{ "name": "dataset_array_phi_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "dataset_array_phi", "role": "address0" }} , 
 	{ "name": "dataset_array_phi_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dataset_array_phi", "role": "ce0" }} , 
 	{ "name": "dataset_array_phi_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dataset_array_phi", "role": "we0" }} , 
 	{ "name": "dataset_array_phi_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "dataset_array_phi", "role": "d0" }} , 
 	{ "name": "dataset_array_phi_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "dataset_array_phi", "role": "q0" }} , 
 	{ "name": "dataset_array_phi_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "dataset_array_phi", "role": "address1" }} , 
 	{ "name": "dataset_array_phi_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dataset_array_phi", "role": "ce1" }} , 
 	{ "name": "dataset_array_phi_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dataset_array_phi", "role": "we1" }} , 
 	{ "name": "dataset_array_phi_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "dataset_array_phi", "role": "d1" }} , 
 	{ "name": "dataset_array_phi_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "dataset_array_phi", "role": "q1" }} , 
 	{ "name": "dataset_array_z_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "dataset_array_z", "role": "address0" }} , 
 	{ "name": "dataset_array_z_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dataset_array_z", "role": "ce0" }} , 
 	{ "name": "dataset_array_z_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dataset_array_z", "role": "we0" }} , 
 	{ "name": "dataset_array_z_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "dataset_array_z", "role": "d0" }} , 
 	{ "name": "dataset_array_z_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "dataset_array_z", "role": "q0" }} , 
 	{ "name": "dataset_array_z_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "dataset_array_z", "role": "address1" }} , 
 	{ "name": "dataset_array_z_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dataset_array_z", "role": "ce1" }} , 
 	{ "name": "dataset_array_z_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dataset_array_z", "role": "we1" }} , 
 	{ "name": "dataset_array_z_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "dataset_array_z", "role": "d1" }} , 
 	{ "name": "dataset_array_z_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "dataset_array_z", "role": "q1" }} , 
 	{ "name": "dataset_n_points_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "dataset_n_points", "role": "address0" }} , 
 	{ "name": "dataset_n_points_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dataset_n_points", "role": "ce0" }} , 
 	{ "name": "dataset_n_points_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dataset_n_points", "role": "we0" }} , 
 	{ "name": "dataset_n_points_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "dataset_n_points", "role": "d0" }} , 
 	{ "name": "dataset_n_points_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "dataset_n_points", "role": "q0" }} , 
 	{ "name": "grp_fu_50533_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "grp_fu_50533_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_50533_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "grp_fu_50533_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_50533_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "grp_fu_50533_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_50533_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_50533_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_50533_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_50533_p_ce", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2"],
		"CDFG" : "dataset_add_boundary_point",
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
			{"Name" : "dataset_env_10", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "p_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "dataset_array_layer_num", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "dataset_array_radius", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "dataset_array_phi", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "dataset_array_z", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "dataset_n_points", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dadd_64ns_64ns_64_4_full_dsp_1_U1", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.uitodp_64ns_64_2_no_dsp_1_U3", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	dataset_add_boundary_point {
		dataset_env_10 {Type IO LastRead 4 FirstWrite 8}
		p_read {Type I LastRead 0 FirstWrite -1}
		dataset_array_layer_num {Type IO LastRead 9 FirstWrite 2}
		dataset_array_radius {Type IO LastRead 9 FirstWrite 3}
		dataset_array_phi {Type IO LastRead 9 FirstWrite 2}
		dataset_array_z {Type IO LastRead 7 FirstWrite 5}
		dataset_n_points {Type IO LastRead 3 FirstWrite 2}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
	{"Pipeline" : "1", "EnableSignal" : "ap_enable_pp1"}
	{"Pipeline" : "2", "EnableSignal" : "ap_enable_pp2"}
]}

set Spec2ImplPortList { 
	dataset_env_10 { ap_memory {  { dataset_env_10_address0 mem_address 1 3 }  { dataset_env_10_ce0 mem_ce 1 1 }  { dataset_env_10_we0 mem_we 1 1 }  { dataset_env_10_d0 mem_din 1 64 }  { dataset_env_10_q0 mem_dout 0 64 }  { dataset_env_10_address1 MemPortADDR2 1 3 }  { dataset_env_10_ce1 MemPortCE2 1 1 }  { dataset_env_10_q1 MemPortDOUT2 0 64 } } }
	p_read { ap_none {  { p_read in_data 0 64 } } }
	dataset_array_layer_num { ap_memory {  { dataset_array_layer_num_address0 mem_address 1 13 }  { dataset_array_layer_num_ce0 mem_ce 1 1 }  { dataset_array_layer_num_we0 mem_we 1 1 }  { dataset_array_layer_num_d0 mem_din 1 32 }  { dataset_array_layer_num_q0 mem_dout 0 32 }  { dataset_array_layer_num_address1 MemPortADDR2 1 13 }  { dataset_array_layer_num_ce1 MemPortCE2 1 1 }  { dataset_array_layer_num_we1 MemPortWE2 1 1 }  { dataset_array_layer_num_d1 MemPortDIN2 1 32 }  { dataset_array_layer_num_q1 MemPortDOUT2 0 32 } } }
	dataset_array_radius { ap_memory {  { dataset_array_radius_address0 mem_address 1 13 }  { dataset_array_radius_ce0 mem_ce 1 1 }  { dataset_array_radius_we0 mem_we 1 1 }  { dataset_array_radius_d0 mem_din 1 64 }  { dataset_array_radius_q0 mem_dout 0 64 }  { dataset_array_radius_address1 MemPortADDR2 1 13 }  { dataset_array_radius_ce1 MemPortCE2 1 1 }  { dataset_array_radius_we1 MemPortWE2 1 1 }  { dataset_array_radius_d1 MemPortDIN2 1 64 }  { dataset_array_radius_q1 MemPortDOUT2 0 64 } } }
	dataset_array_phi { ap_memory {  { dataset_array_phi_address0 mem_address 1 13 }  { dataset_array_phi_ce0 mem_ce 1 1 }  { dataset_array_phi_we0 mem_we 1 1 }  { dataset_array_phi_d0 mem_din 1 64 }  { dataset_array_phi_q0 mem_dout 0 64 }  { dataset_array_phi_address1 MemPortADDR2 1 13 }  { dataset_array_phi_ce1 MemPortCE2 1 1 }  { dataset_array_phi_we1 MemPortWE2 1 1 }  { dataset_array_phi_d1 MemPortDIN2 1 64 }  { dataset_array_phi_q1 MemPortDOUT2 0 64 } } }
	dataset_array_z { ap_memory {  { dataset_array_z_address0 mem_address 1 13 }  { dataset_array_z_ce0 mem_ce 1 1 }  { dataset_array_z_we0 mem_we 1 1 }  { dataset_array_z_d0 mem_din 1 64 }  { dataset_array_z_q0 mem_dout 0 64 }  { dataset_array_z_address1 MemPortADDR2 1 13 }  { dataset_array_z_ce1 MemPortCE2 1 1 }  { dataset_array_z_we1 MemPortWE2 1 1 }  { dataset_array_z_d1 MemPortDIN2 1 64 }  { dataset_array_z_q1 MemPortDOUT2 0 64 } } }
	dataset_n_points { ap_memory {  { dataset_n_points_address0 mem_address 1 3 }  { dataset_n_points_ce0 mem_ce 1 1 }  { dataset_n_points_we0 mem_we 1 1 }  { dataset_n_points_d0 mem_din 1 32 }  { dataset_n_points_q0 mem_dout 0 32 } } }
}
