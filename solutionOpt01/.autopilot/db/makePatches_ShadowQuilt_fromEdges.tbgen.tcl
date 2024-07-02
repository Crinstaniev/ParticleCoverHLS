set moduleName makePatches_ShadowQuilt_fromEdges
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
set C_modelName {makePatches_ShadowQuilt_fromEdges}
set C_modelType { void 0 }
set C_modelArgList {
	{ points int 128 regular {array 2560 { 1 1 } 1 1 }  }
	{ num_points int 32 regular {array 5 { 1 1 } 1 1 }  }
	{ patch_stream_V int 96 regular {fifo 1 volatile }  }
	{ patch_buffer_0_0 int 96 regular {array 3 { 0 3 } 0 1 }  }
	{ patch_buffer_0_1 int 96 regular {array 3 { 0 3 } 0 1 }  }
	{ patch_buffer_0_2 int 96 regular {array 3 { 0 3 } 0 1 }  }
	{ patch_buffer_0_3 int 96 regular {array 3 { 0 3 } 0 1 }  }
	{ patch_buffer_0_4 int 96 regular {array 3 { 0 3 } 0 1 }  }
	{ patch_buffer_0_5 int 96 regular {array 3 { 0 3 } 0 1 }  }
	{ patch_buffer_0_6 int 96 regular {array 3 { 0 3 } 0 1 }  }
	{ patch_buffer_0_7 int 96 regular {array 3 { 0 3 } 0 1 }  }
	{ patch_buffer_0_8 int 96 regular {array 3 { 0 3 } 0 1 }  }
	{ patch_buffer_0_9 int 96 regular {array 3 { 0 3 } 0 1 }  }
	{ patch_buffer_0_10 int 96 regular {array 3 { 0 3 } 0 1 }  }
	{ patch_buffer_0_11 int 96 regular {array 3 { 0 3 } 0 1 }  }
	{ patch_buffer_0_12 int 96 regular {array 3 { 0 3 } 0 1 }  }
	{ patch_buffer_0_13 int 96 regular {array 3 { 0 3 } 0 1 }  }
	{ patch_buffer_0_14 int 96 regular {array 3 { 0 3 } 0 1 }  }
	{ patch_buffer_0_15 int 96 regular {array 3 { 0 3 } 0 1 }  }
	{ patch_buffer_1_0 int 96 regular {array 3 { 0 3 } 0 1 }  }
	{ patch_buffer_1_1 int 96 regular {array 3 { 0 3 } 0 1 }  }
	{ patch_buffer_1_2 int 96 regular {array 3 { 0 3 } 0 1 }  }
	{ patch_buffer_1_3 int 96 regular {array 3 { 0 3 } 0 1 }  }
	{ patch_buffer_1_4 int 96 regular {array 3 { 0 3 } 0 1 }  }
	{ patch_buffer_1_5 int 96 regular {array 3 { 0 3 } 0 1 }  }
	{ patch_buffer_1_6 int 96 regular {array 3 { 0 3 } 0 1 }  }
	{ patch_buffer_1_7 int 96 regular {array 3 { 0 3 } 0 1 }  }
	{ patch_buffer_1_8 int 96 regular {array 3 { 0 3 } 0 1 }  }
	{ patch_buffer_1_9 int 96 regular {array 3 { 0 3 } 0 1 }  }
	{ patch_buffer_1_10 int 96 regular {array 3 { 0 3 } 0 1 }  }
	{ patch_buffer_1_11 int 96 regular {array 3 { 0 3 } 0 1 }  }
	{ patch_buffer_1_12 int 96 regular {array 3 { 0 3 } 0 1 }  }
	{ patch_buffer_1_13 int 96 regular {array 3 { 0 3 } 0 1 }  }
	{ patch_buffer_1_14 int 96 regular {array 3 { 0 3 } 0 1 }  }
	{ patch_buffer_1_15 int 96 regular {array 3 { 0 3 } 0 1 }  }
	{ patch_buffer_2_0 int 96 regular {array 3 { 0 3 } 0 1 }  }
	{ patch_buffer_2_1 int 96 regular {array 3 { 0 3 } 0 1 }  }
	{ patch_buffer_2_2 int 96 regular {array 3 { 0 3 } 0 1 }  }
	{ patch_buffer_2_3 int 96 regular {array 3 { 0 3 } 0 1 }  }
	{ patch_buffer_2_4 int 96 regular {array 3 { 0 3 } 0 1 }  }
	{ patch_buffer_2_5 int 96 regular {array 3 { 0 3 } 0 1 }  }
	{ patch_buffer_2_6 int 96 regular {array 3 { 0 3 } 0 1 }  }
	{ patch_buffer_2_7 int 96 regular {array 3 { 0 3 } 0 1 }  }
	{ patch_buffer_2_8 int 96 regular {array 3 { 0 3 } 0 1 }  }
	{ patch_buffer_2_9 int 96 regular {array 3 { 0 3 } 0 1 }  }
	{ patch_buffer_2_10 int 96 regular {array 3 { 0 3 } 0 1 }  }
	{ patch_buffer_2_11 int 96 regular {array 3 { 0 3 } 0 1 }  }
	{ patch_buffer_2_12 int 96 regular {array 3 { 0 3 } 0 1 }  }
	{ patch_buffer_2_13 int 96 regular {array 3 { 0 3 } 0 1 }  }
	{ patch_buffer_2_14 int 96 regular {array 3 { 0 3 } 0 1 }  }
	{ patch_buffer_2_15 int 96 regular {array 3 { 0 3 } 0 1 }  }
	{ patch_buffer_3_0 int 96 regular {array 3 { 0 3 } 0 1 }  }
	{ patch_buffer_3_1 int 96 regular {array 3 { 0 3 } 0 1 }  }
	{ patch_buffer_3_2 int 96 regular {array 3 { 0 3 } 0 1 }  }
	{ patch_buffer_3_3 int 96 regular {array 3 { 0 3 } 0 1 }  }
	{ patch_buffer_3_4 int 96 regular {array 3 { 0 3 } 0 1 }  }
	{ patch_buffer_3_5 int 96 regular {array 3 { 0 3 } 0 1 }  }
	{ patch_buffer_3_6 int 96 regular {array 3 { 0 3 } 0 1 }  }
	{ patch_buffer_3_7 int 96 regular {array 3 { 0 3 } 0 1 }  }
	{ patch_buffer_3_8 int 96 regular {array 3 { 0 3 } 0 1 }  }
	{ patch_buffer_3_9 int 96 regular {array 3 { 0 3 } 0 1 }  }
	{ patch_buffer_3_10 int 96 regular {array 3 { 0 3 } 0 1 }  }
	{ patch_buffer_3_11 int 96 regular {array 3 { 0 3 } 0 1 }  }
	{ patch_buffer_3_12 int 96 regular {array 3 { 0 3 } 0 1 }  }
	{ patch_buffer_3_13 int 96 regular {array 3 { 0 3 } 0 1 }  }
	{ patch_buffer_3_14 int 96 regular {array 3 { 0 3 } 0 1 }  }
	{ patch_buffer_3_15 int 96 regular {array 3 { 0 3 } 0 1 }  }
	{ patch_buffer_4_0 int 96 regular {array 3 { 0 3 } 0 1 }  }
	{ patch_buffer_4_1 int 96 regular {array 3 { 0 3 } 0 1 }  }
	{ patch_buffer_4_2 int 96 regular {array 3 { 0 3 } 0 1 }  }
	{ patch_buffer_4_3 int 96 regular {array 3 { 0 3 } 0 1 }  }
	{ patch_buffer_4_4 int 96 regular {array 3 { 0 3 } 0 1 }  }
	{ patch_buffer_4_5 int 96 regular {array 3 { 0 3 } 0 1 }  }
	{ patch_buffer_4_6 int 96 regular {array 3 { 0 3 } 0 1 }  }
	{ patch_buffer_4_7 int 96 regular {array 3 { 0 3 } 0 1 }  }
	{ patch_buffer_4_8 int 96 regular {array 3 { 0 3 } 0 1 }  }
	{ patch_buffer_4_9 int 96 regular {array 3 { 0 3 } 0 1 }  }
	{ patch_buffer_4_10 int 96 regular {array 3 { 0 3 } 0 1 }  }
	{ patch_buffer_4_11 int 96 regular {array 3 { 0 3 } 0 1 }  }
	{ patch_buffer_4_12 int 96 regular {array 3 { 0 3 } 0 1 }  }
	{ patch_buffer_4_13 int 96 regular {array 3 { 0 3 } 0 1 }  }
	{ patch_buffer_4_14 int 96 regular {array 3 { 0 3 } 0 1 }  }
	{ patch_buffer_4_15 int 96 regular {array 3 { 0 3 } 0 1 }  }
	{ latest_patch_index_constprop int 2 regular {pointer 2} {global 2}  }
	{ num_patches_constprop int 32 regular {pointer 2} {global 2}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "points", "interface" : "memory", "bitwidth" : 128, "direction" : "READONLY"} , 
 	{ "Name" : "num_points", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "patch_stream_V", "interface" : "fifo", "bitwidth" : 96, "direction" : "WRITEONLY"} , 
 	{ "Name" : "patch_buffer_0_0", "interface" : "memory", "bitwidth" : 96, "direction" : "WRITEONLY"} , 
 	{ "Name" : "patch_buffer_0_1", "interface" : "memory", "bitwidth" : 96, "direction" : "WRITEONLY"} , 
 	{ "Name" : "patch_buffer_0_2", "interface" : "memory", "bitwidth" : 96, "direction" : "WRITEONLY"} , 
 	{ "Name" : "patch_buffer_0_3", "interface" : "memory", "bitwidth" : 96, "direction" : "WRITEONLY"} , 
 	{ "Name" : "patch_buffer_0_4", "interface" : "memory", "bitwidth" : 96, "direction" : "WRITEONLY"} , 
 	{ "Name" : "patch_buffer_0_5", "interface" : "memory", "bitwidth" : 96, "direction" : "WRITEONLY"} , 
 	{ "Name" : "patch_buffer_0_6", "interface" : "memory", "bitwidth" : 96, "direction" : "WRITEONLY"} , 
 	{ "Name" : "patch_buffer_0_7", "interface" : "memory", "bitwidth" : 96, "direction" : "WRITEONLY"} , 
 	{ "Name" : "patch_buffer_0_8", "interface" : "memory", "bitwidth" : 96, "direction" : "WRITEONLY"} , 
 	{ "Name" : "patch_buffer_0_9", "interface" : "memory", "bitwidth" : 96, "direction" : "WRITEONLY"} , 
 	{ "Name" : "patch_buffer_0_10", "interface" : "memory", "bitwidth" : 96, "direction" : "WRITEONLY"} , 
 	{ "Name" : "patch_buffer_0_11", "interface" : "memory", "bitwidth" : 96, "direction" : "WRITEONLY"} , 
 	{ "Name" : "patch_buffer_0_12", "interface" : "memory", "bitwidth" : 96, "direction" : "WRITEONLY"} , 
 	{ "Name" : "patch_buffer_0_13", "interface" : "memory", "bitwidth" : 96, "direction" : "WRITEONLY"} , 
 	{ "Name" : "patch_buffer_0_14", "interface" : "memory", "bitwidth" : 96, "direction" : "WRITEONLY"} , 
 	{ "Name" : "patch_buffer_0_15", "interface" : "memory", "bitwidth" : 96, "direction" : "WRITEONLY"} , 
 	{ "Name" : "patch_buffer_1_0", "interface" : "memory", "bitwidth" : 96, "direction" : "WRITEONLY"} , 
 	{ "Name" : "patch_buffer_1_1", "interface" : "memory", "bitwidth" : 96, "direction" : "WRITEONLY"} , 
 	{ "Name" : "patch_buffer_1_2", "interface" : "memory", "bitwidth" : 96, "direction" : "WRITEONLY"} , 
 	{ "Name" : "patch_buffer_1_3", "interface" : "memory", "bitwidth" : 96, "direction" : "WRITEONLY"} , 
 	{ "Name" : "patch_buffer_1_4", "interface" : "memory", "bitwidth" : 96, "direction" : "WRITEONLY"} , 
 	{ "Name" : "patch_buffer_1_5", "interface" : "memory", "bitwidth" : 96, "direction" : "WRITEONLY"} , 
 	{ "Name" : "patch_buffer_1_6", "interface" : "memory", "bitwidth" : 96, "direction" : "WRITEONLY"} , 
 	{ "Name" : "patch_buffer_1_7", "interface" : "memory", "bitwidth" : 96, "direction" : "WRITEONLY"} , 
 	{ "Name" : "patch_buffer_1_8", "interface" : "memory", "bitwidth" : 96, "direction" : "WRITEONLY"} , 
 	{ "Name" : "patch_buffer_1_9", "interface" : "memory", "bitwidth" : 96, "direction" : "WRITEONLY"} , 
 	{ "Name" : "patch_buffer_1_10", "interface" : "memory", "bitwidth" : 96, "direction" : "WRITEONLY"} , 
 	{ "Name" : "patch_buffer_1_11", "interface" : "memory", "bitwidth" : 96, "direction" : "WRITEONLY"} , 
 	{ "Name" : "patch_buffer_1_12", "interface" : "memory", "bitwidth" : 96, "direction" : "WRITEONLY"} , 
 	{ "Name" : "patch_buffer_1_13", "interface" : "memory", "bitwidth" : 96, "direction" : "WRITEONLY"} , 
 	{ "Name" : "patch_buffer_1_14", "interface" : "memory", "bitwidth" : 96, "direction" : "WRITEONLY"} , 
 	{ "Name" : "patch_buffer_1_15", "interface" : "memory", "bitwidth" : 96, "direction" : "WRITEONLY"} , 
 	{ "Name" : "patch_buffer_2_0", "interface" : "memory", "bitwidth" : 96, "direction" : "WRITEONLY"} , 
 	{ "Name" : "patch_buffer_2_1", "interface" : "memory", "bitwidth" : 96, "direction" : "WRITEONLY"} , 
 	{ "Name" : "patch_buffer_2_2", "interface" : "memory", "bitwidth" : 96, "direction" : "WRITEONLY"} , 
 	{ "Name" : "patch_buffer_2_3", "interface" : "memory", "bitwidth" : 96, "direction" : "WRITEONLY"} , 
 	{ "Name" : "patch_buffer_2_4", "interface" : "memory", "bitwidth" : 96, "direction" : "WRITEONLY"} , 
 	{ "Name" : "patch_buffer_2_5", "interface" : "memory", "bitwidth" : 96, "direction" : "WRITEONLY"} , 
 	{ "Name" : "patch_buffer_2_6", "interface" : "memory", "bitwidth" : 96, "direction" : "WRITEONLY"} , 
 	{ "Name" : "patch_buffer_2_7", "interface" : "memory", "bitwidth" : 96, "direction" : "WRITEONLY"} , 
 	{ "Name" : "patch_buffer_2_8", "interface" : "memory", "bitwidth" : 96, "direction" : "WRITEONLY"} , 
 	{ "Name" : "patch_buffer_2_9", "interface" : "memory", "bitwidth" : 96, "direction" : "WRITEONLY"} , 
 	{ "Name" : "patch_buffer_2_10", "interface" : "memory", "bitwidth" : 96, "direction" : "WRITEONLY"} , 
 	{ "Name" : "patch_buffer_2_11", "interface" : "memory", "bitwidth" : 96, "direction" : "WRITEONLY"} , 
 	{ "Name" : "patch_buffer_2_12", "interface" : "memory", "bitwidth" : 96, "direction" : "WRITEONLY"} , 
 	{ "Name" : "patch_buffer_2_13", "interface" : "memory", "bitwidth" : 96, "direction" : "WRITEONLY"} , 
 	{ "Name" : "patch_buffer_2_14", "interface" : "memory", "bitwidth" : 96, "direction" : "WRITEONLY"} , 
 	{ "Name" : "patch_buffer_2_15", "interface" : "memory", "bitwidth" : 96, "direction" : "WRITEONLY"} , 
 	{ "Name" : "patch_buffer_3_0", "interface" : "memory", "bitwidth" : 96, "direction" : "WRITEONLY"} , 
 	{ "Name" : "patch_buffer_3_1", "interface" : "memory", "bitwidth" : 96, "direction" : "WRITEONLY"} , 
 	{ "Name" : "patch_buffer_3_2", "interface" : "memory", "bitwidth" : 96, "direction" : "WRITEONLY"} , 
 	{ "Name" : "patch_buffer_3_3", "interface" : "memory", "bitwidth" : 96, "direction" : "WRITEONLY"} , 
 	{ "Name" : "patch_buffer_3_4", "interface" : "memory", "bitwidth" : 96, "direction" : "WRITEONLY"} , 
 	{ "Name" : "patch_buffer_3_5", "interface" : "memory", "bitwidth" : 96, "direction" : "WRITEONLY"} , 
 	{ "Name" : "patch_buffer_3_6", "interface" : "memory", "bitwidth" : 96, "direction" : "WRITEONLY"} , 
 	{ "Name" : "patch_buffer_3_7", "interface" : "memory", "bitwidth" : 96, "direction" : "WRITEONLY"} , 
 	{ "Name" : "patch_buffer_3_8", "interface" : "memory", "bitwidth" : 96, "direction" : "WRITEONLY"} , 
 	{ "Name" : "patch_buffer_3_9", "interface" : "memory", "bitwidth" : 96, "direction" : "WRITEONLY"} , 
 	{ "Name" : "patch_buffer_3_10", "interface" : "memory", "bitwidth" : 96, "direction" : "WRITEONLY"} , 
 	{ "Name" : "patch_buffer_3_11", "interface" : "memory", "bitwidth" : 96, "direction" : "WRITEONLY"} , 
 	{ "Name" : "patch_buffer_3_12", "interface" : "memory", "bitwidth" : 96, "direction" : "WRITEONLY"} , 
 	{ "Name" : "patch_buffer_3_13", "interface" : "memory", "bitwidth" : 96, "direction" : "WRITEONLY"} , 
 	{ "Name" : "patch_buffer_3_14", "interface" : "memory", "bitwidth" : 96, "direction" : "WRITEONLY"} , 
 	{ "Name" : "patch_buffer_3_15", "interface" : "memory", "bitwidth" : 96, "direction" : "WRITEONLY"} , 
 	{ "Name" : "patch_buffer_4_0", "interface" : "memory", "bitwidth" : 96, "direction" : "WRITEONLY"} , 
 	{ "Name" : "patch_buffer_4_1", "interface" : "memory", "bitwidth" : 96, "direction" : "WRITEONLY"} , 
 	{ "Name" : "patch_buffer_4_2", "interface" : "memory", "bitwidth" : 96, "direction" : "WRITEONLY"} , 
 	{ "Name" : "patch_buffer_4_3", "interface" : "memory", "bitwidth" : 96, "direction" : "WRITEONLY"} , 
 	{ "Name" : "patch_buffer_4_4", "interface" : "memory", "bitwidth" : 96, "direction" : "WRITEONLY"} , 
 	{ "Name" : "patch_buffer_4_5", "interface" : "memory", "bitwidth" : 96, "direction" : "WRITEONLY"} , 
 	{ "Name" : "patch_buffer_4_6", "interface" : "memory", "bitwidth" : 96, "direction" : "WRITEONLY"} , 
 	{ "Name" : "patch_buffer_4_7", "interface" : "memory", "bitwidth" : 96, "direction" : "WRITEONLY"} , 
 	{ "Name" : "patch_buffer_4_8", "interface" : "memory", "bitwidth" : 96, "direction" : "WRITEONLY"} , 
 	{ "Name" : "patch_buffer_4_9", "interface" : "memory", "bitwidth" : 96, "direction" : "WRITEONLY"} , 
 	{ "Name" : "patch_buffer_4_10", "interface" : "memory", "bitwidth" : 96, "direction" : "WRITEONLY"} , 
 	{ "Name" : "patch_buffer_4_11", "interface" : "memory", "bitwidth" : 96, "direction" : "WRITEONLY"} , 
 	{ "Name" : "patch_buffer_4_12", "interface" : "memory", "bitwidth" : 96, "direction" : "WRITEONLY"} , 
 	{ "Name" : "patch_buffer_4_13", "interface" : "memory", "bitwidth" : 96, "direction" : "WRITEONLY"} , 
 	{ "Name" : "patch_buffer_4_14", "interface" : "memory", "bitwidth" : 96, "direction" : "WRITEONLY"} , 
 	{ "Name" : "patch_buffer_4_15", "interface" : "memory", "bitwidth" : 96, "direction" : "WRITEONLY"} , 
 	{ "Name" : "latest_patch_index_constprop", "interface" : "wire", "bitwidth" : 2, "direction" : "READWRITE", "extern" : 0} , 
 	{ "Name" : "num_patches_constprop", "interface" : "wire", "bitwidth" : 32, "direction" : "READWRITE", "extern" : 0} ]}
# RTL Port declarations: 
set portNum 347
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
	{ patch_buffer_0_0_address0 sc_out sc_lv 2 signal 3 } 
	{ patch_buffer_0_0_ce0 sc_out sc_logic 1 signal 3 } 
	{ patch_buffer_0_0_we0 sc_out sc_logic 1 signal 3 } 
	{ patch_buffer_0_0_d0 sc_out sc_lv 96 signal 3 } 
	{ patch_buffer_0_1_address0 sc_out sc_lv 2 signal 4 } 
	{ patch_buffer_0_1_ce0 sc_out sc_logic 1 signal 4 } 
	{ patch_buffer_0_1_we0 sc_out sc_logic 1 signal 4 } 
	{ patch_buffer_0_1_d0 sc_out sc_lv 96 signal 4 } 
	{ patch_buffer_0_2_address0 sc_out sc_lv 2 signal 5 } 
	{ patch_buffer_0_2_ce0 sc_out sc_logic 1 signal 5 } 
	{ patch_buffer_0_2_we0 sc_out sc_logic 1 signal 5 } 
	{ patch_buffer_0_2_d0 sc_out sc_lv 96 signal 5 } 
	{ patch_buffer_0_3_address0 sc_out sc_lv 2 signal 6 } 
	{ patch_buffer_0_3_ce0 sc_out sc_logic 1 signal 6 } 
	{ patch_buffer_0_3_we0 sc_out sc_logic 1 signal 6 } 
	{ patch_buffer_0_3_d0 sc_out sc_lv 96 signal 6 } 
	{ patch_buffer_0_4_address0 sc_out sc_lv 2 signal 7 } 
	{ patch_buffer_0_4_ce0 sc_out sc_logic 1 signal 7 } 
	{ patch_buffer_0_4_we0 sc_out sc_logic 1 signal 7 } 
	{ patch_buffer_0_4_d0 sc_out sc_lv 96 signal 7 } 
	{ patch_buffer_0_5_address0 sc_out sc_lv 2 signal 8 } 
	{ patch_buffer_0_5_ce0 sc_out sc_logic 1 signal 8 } 
	{ patch_buffer_0_5_we0 sc_out sc_logic 1 signal 8 } 
	{ patch_buffer_0_5_d0 sc_out sc_lv 96 signal 8 } 
	{ patch_buffer_0_6_address0 sc_out sc_lv 2 signal 9 } 
	{ patch_buffer_0_6_ce0 sc_out sc_logic 1 signal 9 } 
	{ patch_buffer_0_6_we0 sc_out sc_logic 1 signal 9 } 
	{ patch_buffer_0_6_d0 sc_out sc_lv 96 signal 9 } 
	{ patch_buffer_0_7_address0 sc_out sc_lv 2 signal 10 } 
	{ patch_buffer_0_7_ce0 sc_out sc_logic 1 signal 10 } 
	{ patch_buffer_0_7_we0 sc_out sc_logic 1 signal 10 } 
	{ patch_buffer_0_7_d0 sc_out sc_lv 96 signal 10 } 
	{ patch_buffer_0_8_address0 sc_out sc_lv 2 signal 11 } 
	{ patch_buffer_0_8_ce0 sc_out sc_logic 1 signal 11 } 
	{ patch_buffer_0_8_we0 sc_out sc_logic 1 signal 11 } 
	{ patch_buffer_0_8_d0 sc_out sc_lv 96 signal 11 } 
	{ patch_buffer_0_9_address0 sc_out sc_lv 2 signal 12 } 
	{ patch_buffer_0_9_ce0 sc_out sc_logic 1 signal 12 } 
	{ patch_buffer_0_9_we0 sc_out sc_logic 1 signal 12 } 
	{ patch_buffer_0_9_d0 sc_out sc_lv 96 signal 12 } 
	{ patch_buffer_0_10_address0 sc_out sc_lv 2 signal 13 } 
	{ patch_buffer_0_10_ce0 sc_out sc_logic 1 signal 13 } 
	{ patch_buffer_0_10_we0 sc_out sc_logic 1 signal 13 } 
	{ patch_buffer_0_10_d0 sc_out sc_lv 96 signal 13 } 
	{ patch_buffer_0_11_address0 sc_out sc_lv 2 signal 14 } 
	{ patch_buffer_0_11_ce0 sc_out sc_logic 1 signal 14 } 
	{ patch_buffer_0_11_we0 sc_out sc_logic 1 signal 14 } 
	{ patch_buffer_0_11_d0 sc_out sc_lv 96 signal 14 } 
	{ patch_buffer_0_12_address0 sc_out sc_lv 2 signal 15 } 
	{ patch_buffer_0_12_ce0 sc_out sc_logic 1 signal 15 } 
	{ patch_buffer_0_12_we0 sc_out sc_logic 1 signal 15 } 
	{ patch_buffer_0_12_d0 sc_out sc_lv 96 signal 15 } 
	{ patch_buffer_0_13_address0 sc_out sc_lv 2 signal 16 } 
	{ patch_buffer_0_13_ce0 sc_out sc_logic 1 signal 16 } 
	{ patch_buffer_0_13_we0 sc_out sc_logic 1 signal 16 } 
	{ patch_buffer_0_13_d0 sc_out sc_lv 96 signal 16 } 
	{ patch_buffer_0_14_address0 sc_out sc_lv 2 signal 17 } 
	{ patch_buffer_0_14_ce0 sc_out sc_logic 1 signal 17 } 
	{ patch_buffer_0_14_we0 sc_out sc_logic 1 signal 17 } 
	{ patch_buffer_0_14_d0 sc_out sc_lv 96 signal 17 } 
	{ patch_buffer_0_15_address0 sc_out sc_lv 2 signal 18 } 
	{ patch_buffer_0_15_ce0 sc_out sc_logic 1 signal 18 } 
	{ patch_buffer_0_15_we0 sc_out sc_logic 1 signal 18 } 
	{ patch_buffer_0_15_d0 sc_out sc_lv 96 signal 18 } 
	{ patch_buffer_1_0_address0 sc_out sc_lv 2 signal 19 } 
	{ patch_buffer_1_0_ce0 sc_out sc_logic 1 signal 19 } 
	{ patch_buffer_1_0_we0 sc_out sc_logic 1 signal 19 } 
	{ patch_buffer_1_0_d0 sc_out sc_lv 96 signal 19 } 
	{ patch_buffer_1_1_address0 sc_out sc_lv 2 signal 20 } 
	{ patch_buffer_1_1_ce0 sc_out sc_logic 1 signal 20 } 
	{ patch_buffer_1_1_we0 sc_out sc_logic 1 signal 20 } 
	{ patch_buffer_1_1_d0 sc_out sc_lv 96 signal 20 } 
	{ patch_buffer_1_2_address0 sc_out sc_lv 2 signal 21 } 
	{ patch_buffer_1_2_ce0 sc_out sc_logic 1 signal 21 } 
	{ patch_buffer_1_2_we0 sc_out sc_logic 1 signal 21 } 
	{ patch_buffer_1_2_d0 sc_out sc_lv 96 signal 21 } 
	{ patch_buffer_1_3_address0 sc_out sc_lv 2 signal 22 } 
	{ patch_buffer_1_3_ce0 sc_out sc_logic 1 signal 22 } 
	{ patch_buffer_1_3_we0 sc_out sc_logic 1 signal 22 } 
	{ patch_buffer_1_3_d0 sc_out sc_lv 96 signal 22 } 
	{ patch_buffer_1_4_address0 sc_out sc_lv 2 signal 23 } 
	{ patch_buffer_1_4_ce0 sc_out sc_logic 1 signal 23 } 
	{ patch_buffer_1_4_we0 sc_out sc_logic 1 signal 23 } 
	{ patch_buffer_1_4_d0 sc_out sc_lv 96 signal 23 } 
	{ patch_buffer_1_5_address0 sc_out sc_lv 2 signal 24 } 
	{ patch_buffer_1_5_ce0 sc_out sc_logic 1 signal 24 } 
	{ patch_buffer_1_5_we0 sc_out sc_logic 1 signal 24 } 
	{ patch_buffer_1_5_d0 sc_out sc_lv 96 signal 24 } 
	{ patch_buffer_1_6_address0 sc_out sc_lv 2 signal 25 } 
	{ patch_buffer_1_6_ce0 sc_out sc_logic 1 signal 25 } 
	{ patch_buffer_1_6_we0 sc_out sc_logic 1 signal 25 } 
	{ patch_buffer_1_6_d0 sc_out sc_lv 96 signal 25 } 
	{ patch_buffer_1_7_address0 sc_out sc_lv 2 signal 26 } 
	{ patch_buffer_1_7_ce0 sc_out sc_logic 1 signal 26 } 
	{ patch_buffer_1_7_we0 sc_out sc_logic 1 signal 26 } 
	{ patch_buffer_1_7_d0 sc_out sc_lv 96 signal 26 } 
	{ patch_buffer_1_8_address0 sc_out sc_lv 2 signal 27 } 
	{ patch_buffer_1_8_ce0 sc_out sc_logic 1 signal 27 } 
	{ patch_buffer_1_8_we0 sc_out sc_logic 1 signal 27 } 
	{ patch_buffer_1_8_d0 sc_out sc_lv 96 signal 27 } 
	{ patch_buffer_1_9_address0 sc_out sc_lv 2 signal 28 } 
	{ patch_buffer_1_9_ce0 sc_out sc_logic 1 signal 28 } 
	{ patch_buffer_1_9_we0 sc_out sc_logic 1 signal 28 } 
	{ patch_buffer_1_9_d0 sc_out sc_lv 96 signal 28 } 
	{ patch_buffer_1_10_address0 sc_out sc_lv 2 signal 29 } 
	{ patch_buffer_1_10_ce0 sc_out sc_logic 1 signal 29 } 
	{ patch_buffer_1_10_we0 sc_out sc_logic 1 signal 29 } 
	{ patch_buffer_1_10_d0 sc_out sc_lv 96 signal 29 } 
	{ patch_buffer_1_11_address0 sc_out sc_lv 2 signal 30 } 
	{ patch_buffer_1_11_ce0 sc_out sc_logic 1 signal 30 } 
	{ patch_buffer_1_11_we0 sc_out sc_logic 1 signal 30 } 
	{ patch_buffer_1_11_d0 sc_out sc_lv 96 signal 30 } 
	{ patch_buffer_1_12_address0 sc_out sc_lv 2 signal 31 } 
	{ patch_buffer_1_12_ce0 sc_out sc_logic 1 signal 31 } 
	{ patch_buffer_1_12_we0 sc_out sc_logic 1 signal 31 } 
	{ patch_buffer_1_12_d0 sc_out sc_lv 96 signal 31 } 
	{ patch_buffer_1_13_address0 sc_out sc_lv 2 signal 32 } 
	{ patch_buffer_1_13_ce0 sc_out sc_logic 1 signal 32 } 
	{ patch_buffer_1_13_we0 sc_out sc_logic 1 signal 32 } 
	{ patch_buffer_1_13_d0 sc_out sc_lv 96 signal 32 } 
	{ patch_buffer_1_14_address0 sc_out sc_lv 2 signal 33 } 
	{ patch_buffer_1_14_ce0 sc_out sc_logic 1 signal 33 } 
	{ patch_buffer_1_14_we0 sc_out sc_logic 1 signal 33 } 
	{ patch_buffer_1_14_d0 sc_out sc_lv 96 signal 33 } 
	{ patch_buffer_1_15_address0 sc_out sc_lv 2 signal 34 } 
	{ patch_buffer_1_15_ce0 sc_out sc_logic 1 signal 34 } 
	{ patch_buffer_1_15_we0 sc_out sc_logic 1 signal 34 } 
	{ patch_buffer_1_15_d0 sc_out sc_lv 96 signal 34 } 
	{ patch_buffer_2_0_address0 sc_out sc_lv 2 signal 35 } 
	{ patch_buffer_2_0_ce0 sc_out sc_logic 1 signal 35 } 
	{ patch_buffer_2_0_we0 sc_out sc_logic 1 signal 35 } 
	{ patch_buffer_2_0_d0 sc_out sc_lv 96 signal 35 } 
	{ patch_buffer_2_1_address0 sc_out sc_lv 2 signal 36 } 
	{ patch_buffer_2_1_ce0 sc_out sc_logic 1 signal 36 } 
	{ patch_buffer_2_1_we0 sc_out sc_logic 1 signal 36 } 
	{ patch_buffer_2_1_d0 sc_out sc_lv 96 signal 36 } 
	{ patch_buffer_2_2_address0 sc_out sc_lv 2 signal 37 } 
	{ patch_buffer_2_2_ce0 sc_out sc_logic 1 signal 37 } 
	{ patch_buffer_2_2_we0 sc_out sc_logic 1 signal 37 } 
	{ patch_buffer_2_2_d0 sc_out sc_lv 96 signal 37 } 
	{ patch_buffer_2_3_address0 sc_out sc_lv 2 signal 38 } 
	{ patch_buffer_2_3_ce0 sc_out sc_logic 1 signal 38 } 
	{ patch_buffer_2_3_we0 sc_out sc_logic 1 signal 38 } 
	{ patch_buffer_2_3_d0 sc_out sc_lv 96 signal 38 } 
	{ patch_buffer_2_4_address0 sc_out sc_lv 2 signal 39 } 
	{ patch_buffer_2_4_ce0 sc_out sc_logic 1 signal 39 } 
	{ patch_buffer_2_4_we0 sc_out sc_logic 1 signal 39 } 
	{ patch_buffer_2_4_d0 sc_out sc_lv 96 signal 39 } 
	{ patch_buffer_2_5_address0 sc_out sc_lv 2 signal 40 } 
	{ patch_buffer_2_5_ce0 sc_out sc_logic 1 signal 40 } 
	{ patch_buffer_2_5_we0 sc_out sc_logic 1 signal 40 } 
	{ patch_buffer_2_5_d0 sc_out sc_lv 96 signal 40 } 
	{ patch_buffer_2_6_address0 sc_out sc_lv 2 signal 41 } 
	{ patch_buffer_2_6_ce0 sc_out sc_logic 1 signal 41 } 
	{ patch_buffer_2_6_we0 sc_out sc_logic 1 signal 41 } 
	{ patch_buffer_2_6_d0 sc_out sc_lv 96 signal 41 } 
	{ patch_buffer_2_7_address0 sc_out sc_lv 2 signal 42 } 
	{ patch_buffer_2_7_ce0 sc_out sc_logic 1 signal 42 } 
	{ patch_buffer_2_7_we0 sc_out sc_logic 1 signal 42 } 
	{ patch_buffer_2_7_d0 sc_out sc_lv 96 signal 42 } 
	{ patch_buffer_2_8_address0 sc_out sc_lv 2 signal 43 } 
	{ patch_buffer_2_8_ce0 sc_out sc_logic 1 signal 43 } 
	{ patch_buffer_2_8_we0 sc_out sc_logic 1 signal 43 } 
	{ patch_buffer_2_8_d0 sc_out sc_lv 96 signal 43 } 
	{ patch_buffer_2_9_address0 sc_out sc_lv 2 signal 44 } 
	{ patch_buffer_2_9_ce0 sc_out sc_logic 1 signal 44 } 
	{ patch_buffer_2_9_we0 sc_out sc_logic 1 signal 44 } 
	{ patch_buffer_2_9_d0 sc_out sc_lv 96 signal 44 } 
	{ patch_buffer_2_10_address0 sc_out sc_lv 2 signal 45 } 
	{ patch_buffer_2_10_ce0 sc_out sc_logic 1 signal 45 } 
	{ patch_buffer_2_10_we0 sc_out sc_logic 1 signal 45 } 
	{ patch_buffer_2_10_d0 sc_out sc_lv 96 signal 45 } 
	{ patch_buffer_2_11_address0 sc_out sc_lv 2 signal 46 } 
	{ patch_buffer_2_11_ce0 sc_out sc_logic 1 signal 46 } 
	{ patch_buffer_2_11_we0 sc_out sc_logic 1 signal 46 } 
	{ patch_buffer_2_11_d0 sc_out sc_lv 96 signal 46 } 
	{ patch_buffer_2_12_address0 sc_out sc_lv 2 signal 47 } 
	{ patch_buffer_2_12_ce0 sc_out sc_logic 1 signal 47 } 
	{ patch_buffer_2_12_we0 sc_out sc_logic 1 signal 47 } 
	{ patch_buffer_2_12_d0 sc_out sc_lv 96 signal 47 } 
	{ patch_buffer_2_13_address0 sc_out sc_lv 2 signal 48 } 
	{ patch_buffer_2_13_ce0 sc_out sc_logic 1 signal 48 } 
	{ patch_buffer_2_13_we0 sc_out sc_logic 1 signal 48 } 
	{ patch_buffer_2_13_d0 sc_out sc_lv 96 signal 48 } 
	{ patch_buffer_2_14_address0 sc_out sc_lv 2 signal 49 } 
	{ patch_buffer_2_14_ce0 sc_out sc_logic 1 signal 49 } 
	{ patch_buffer_2_14_we0 sc_out sc_logic 1 signal 49 } 
	{ patch_buffer_2_14_d0 sc_out sc_lv 96 signal 49 } 
	{ patch_buffer_2_15_address0 sc_out sc_lv 2 signal 50 } 
	{ patch_buffer_2_15_ce0 sc_out sc_logic 1 signal 50 } 
	{ patch_buffer_2_15_we0 sc_out sc_logic 1 signal 50 } 
	{ patch_buffer_2_15_d0 sc_out sc_lv 96 signal 50 } 
	{ patch_buffer_3_0_address0 sc_out sc_lv 2 signal 51 } 
	{ patch_buffer_3_0_ce0 sc_out sc_logic 1 signal 51 } 
	{ patch_buffer_3_0_we0 sc_out sc_logic 1 signal 51 } 
	{ patch_buffer_3_0_d0 sc_out sc_lv 96 signal 51 } 
	{ patch_buffer_3_1_address0 sc_out sc_lv 2 signal 52 } 
	{ patch_buffer_3_1_ce0 sc_out sc_logic 1 signal 52 } 
	{ patch_buffer_3_1_we0 sc_out sc_logic 1 signal 52 } 
	{ patch_buffer_3_1_d0 sc_out sc_lv 96 signal 52 } 
	{ patch_buffer_3_2_address0 sc_out sc_lv 2 signal 53 } 
	{ patch_buffer_3_2_ce0 sc_out sc_logic 1 signal 53 } 
	{ patch_buffer_3_2_we0 sc_out sc_logic 1 signal 53 } 
	{ patch_buffer_3_2_d0 sc_out sc_lv 96 signal 53 } 
	{ patch_buffer_3_3_address0 sc_out sc_lv 2 signal 54 } 
	{ patch_buffer_3_3_ce0 sc_out sc_logic 1 signal 54 } 
	{ patch_buffer_3_3_we0 sc_out sc_logic 1 signal 54 } 
	{ patch_buffer_3_3_d0 sc_out sc_lv 96 signal 54 } 
	{ patch_buffer_3_4_address0 sc_out sc_lv 2 signal 55 } 
	{ patch_buffer_3_4_ce0 sc_out sc_logic 1 signal 55 } 
	{ patch_buffer_3_4_we0 sc_out sc_logic 1 signal 55 } 
	{ patch_buffer_3_4_d0 sc_out sc_lv 96 signal 55 } 
	{ patch_buffer_3_5_address0 sc_out sc_lv 2 signal 56 } 
	{ patch_buffer_3_5_ce0 sc_out sc_logic 1 signal 56 } 
	{ patch_buffer_3_5_we0 sc_out sc_logic 1 signal 56 } 
	{ patch_buffer_3_5_d0 sc_out sc_lv 96 signal 56 } 
	{ patch_buffer_3_6_address0 sc_out sc_lv 2 signal 57 } 
	{ patch_buffer_3_6_ce0 sc_out sc_logic 1 signal 57 } 
	{ patch_buffer_3_6_we0 sc_out sc_logic 1 signal 57 } 
	{ patch_buffer_3_6_d0 sc_out sc_lv 96 signal 57 } 
	{ patch_buffer_3_7_address0 sc_out sc_lv 2 signal 58 } 
	{ patch_buffer_3_7_ce0 sc_out sc_logic 1 signal 58 } 
	{ patch_buffer_3_7_we0 sc_out sc_logic 1 signal 58 } 
	{ patch_buffer_3_7_d0 sc_out sc_lv 96 signal 58 } 
	{ patch_buffer_3_8_address0 sc_out sc_lv 2 signal 59 } 
	{ patch_buffer_3_8_ce0 sc_out sc_logic 1 signal 59 } 
	{ patch_buffer_3_8_we0 sc_out sc_logic 1 signal 59 } 
	{ patch_buffer_3_8_d0 sc_out sc_lv 96 signal 59 } 
	{ patch_buffer_3_9_address0 sc_out sc_lv 2 signal 60 } 
	{ patch_buffer_3_9_ce0 sc_out sc_logic 1 signal 60 } 
	{ patch_buffer_3_9_we0 sc_out sc_logic 1 signal 60 } 
	{ patch_buffer_3_9_d0 sc_out sc_lv 96 signal 60 } 
	{ patch_buffer_3_10_address0 sc_out sc_lv 2 signal 61 } 
	{ patch_buffer_3_10_ce0 sc_out sc_logic 1 signal 61 } 
	{ patch_buffer_3_10_we0 sc_out sc_logic 1 signal 61 } 
	{ patch_buffer_3_10_d0 sc_out sc_lv 96 signal 61 } 
	{ patch_buffer_3_11_address0 sc_out sc_lv 2 signal 62 } 
	{ patch_buffer_3_11_ce0 sc_out sc_logic 1 signal 62 } 
	{ patch_buffer_3_11_we0 sc_out sc_logic 1 signal 62 } 
	{ patch_buffer_3_11_d0 sc_out sc_lv 96 signal 62 } 
	{ patch_buffer_3_12_address0 sc_out sc_lv 2 signal 63 } 
	{ patch_buffer_3_12_ce0 sc_out sc_logic 1 signal 63 } 
	{ patch_buffer_3_12_we0 sc_out sc_logic 1 signal 63 } 
	{ patch_buffer_3_12_d0 sc_out sc_lv 96 signal 63 } 
	{ patch_buffer_3_13_address0 sc_out sc_lv 2 signal 64 } 
	{ patch_buffer_3_13_ce0 sc_out sc_logic 1 signal 64 } 
	{ patch_buffer_3_13_we0 sc_out sc_logic 1 signal 64 } 
	{ patch_buffer_3_13_d0 sc_out sc_lv 96 signal 64 } 
	{ patch_buffer_3_14_address0 sc_out sc_lv 2 signal 65 } 
	{ patch_buffer_3_14_ce0 sc_out sc_logic 1 signal 65 } 
	{ patch_buffer_3_14_we0 sc_out sc_logic 1 signal 65 } 
	{ patch_buffer_3_14_d0 sc_out sc_lv 96 signal 65 } 
	{ patch_buffer_3_15_address0 sc_out sc_lv 2 signal 66 } 
	{ patch_buffer_3_15_ce0 sc_out sc_logic 1 signal 66 } 
	{ patch_buffer_3_15_we0 sc_out sc_logic 1 signal 66 } 
	{ patch_buffer_3_15_d0 sc_out sc_lv 96 signal 66 } 
	{ patch_buffer_4_0_address0 sc_out sc_lv 2 signal 67 } 
	{ patch_buffer_4_0_ce0 sc_out sc_logic 1 signal 67 } 
	{ patch_buffer_4_0_we0 sc_out sc_logic 1 signal 67 } 
	{ patch_buffer_4_0_d0 sc_out sc_lv 96 signal 67 } 
	{ patch_buffer_4_1_address0 sc_out sc_lv 2 signal 68 } 
	{ patch_buffer_4_1_ce0 sc_out sc_logic 1 signal 68 } 
	{ patch_buffer_4_1_we0 sc_out sc_logic 1 signal 68 } 
	{ patch_buffer_4_1_d0 sc_out sc_lv 96 signal 68 } 
	{ patch_buffer_4_2_address0 sc_out sc_lv 2 signal 69 } 
	{ patch_buffer_4_2_ce0 sc_out sc_logic 1 signal 69 } 
	{ patch_buffer_4_2_we0 sc_out sc_logic 1 signal 69 } 
	{ patch_buffer_4_2_d0 sc_out sc_lv 96 signal 69 } 
	{ patch_buffer_4_3_address0 sc_out sc_lv 2 signal 70 } 
	{ patch_buffer_4_3_ce0 sc_out sc_logic 1 signal 70 } 
	{ patch_buffer_4_3_we0 sc_out sc_logic 1 signal 70 } 
	{ patch_buffer_4_3_d0 sc_out sc_lv 96 signal 70 } 
	{ patch_buffer_4_4_address0 sc_out sc_lv 2 signal 71 } 
	{ patch_buffer_4_4_ce0 sc_out sc_logic 1 signal 71 } 
	{ patch_buffer_4_4_we0 sc_out sc_logic 1 signal 71 } 
	{ patch_buffer_4_4_d0 sc_out sc_lv 96 signal 71 } 
	{ patch_buffer_4_5_address0 sc_out sc_lv 2 signal 72 } 
	{ patch_buffer_4_5_ce0 sc_out sc_logic 1 signal 72 } 
	{ patch_buffer_4_5_we0 sc_out sc_logic 1 signal 72 } 
	{ patch_buffer_4_5_d0 sc_out sc_lv 96 signal 72 } 
	{ patch_buffer_4_6_address0 sc_out sc_lv 2 signal 73 } 
	{ patch_buffer_4_6_ce0 sc_out sc_logic 1 signal 73 } 
	{ patch_buffer_4_6_we0 sc_out sc_logic 1 signal 73 } 
	{ patch_buffer_4_6_d0 sc_out sc_lv 96 signal 73 } 
	{ patch_buffer_4_7_address0 sc_out sc_lv 2 signal 74 } 
	{ patch_buffer_4_7_ce0 sc_out sc_logic 1 signal 74 } 
	{ patch_buffer_4_7_we0 sc_out sc_logic 1 signal 74 } 
	{ patch_buffer_4_7_d0 sc_out sc_lv 96 signal 74 } 
	{ patch_buffer_4_8_address0 sc_out sc_lv 2 signal 75 } 
	{ patch_buffer_4_8_ce0 sc_out sc_logic 1 signal 75 } 
	{ patch_buffer_4_8_we0 sc_out sc_logic 1 signal 75 } 
	{ patch_buffer_4_8_d0 sc_out sc_lv 96 signal 75 } 
	{ patch_buffer_4_9_address0 sc_out sc_lv 2 signal 76 } 
	{ patch_buffer_4_9_ce0 sc_out sc_logic 1 signal 76 } 
	{ patch_buffer_4_9_we0 sc_out sc_logic 1 signal 76 } 
	{ patch_buffer_4_9_d0 sc_out sc_lv 96 signal 76 } 
	{ patch_buffer_4_10_address0 sc_out sc_lv 2 signal 77 } 
	{ patch_buffer_4_10_ce0 sc_out sc_logic 1 signal 77 } 
	{ patch_buffer_4_10_we0 sc_out sc_logic 1 signal 77 } 
	{ patch_buffer_4_10_d0 sc_out sc_lv 96 signal 77 } 
	{ patch_buffer_4_11_address0 sc_out sc_lv 2 signal 78 } 
	{ patch_buffer_4_11_ce0 sc_out sc_logic 1 signal 78 } 
	{ patch_buffer_4_11_we0 sc_out sc_logic 1 signal 78 } 
	{ patch_buffer_4_11_d0 sc_out sc_lv 96 signal 78 } 
	{ patch_buffer_4_12_address0 sc_out sc_lv 2 signal 79 } 
	{ patch_buffer_4_12_ce0 sc_out sc_logic 1 signal 79 } 
	{ patch_buffer_4_12_we0 sc_out sc_logic 1 signal 79 } 
	{ patch_buffer_4_12_d0 sc_out sc_lv 96 signal 79 } 
	{ patch_buffer_4_13_address0 sc_out sc_lv 2 signal 80 } 
	{ patch_buffer_4_13_ce0 sc_out sc_logic 1 signal 80 } 
	{ patch_buffer_4_13_we0 sc_out sc_logic 1 signal 80 } 
	{ patch_buffer_4_13_d0 sc_out sc_lv 96 signal 80 } 
	{ patch_buffer_4_14_address0 sc_out sc_lv 2 signal 81 } 
	{ patch_buffer_4_14_ce0 sc_out sc_logic 1 signal 81 } 
	{ patch_buffer_4_14_we0 sc_out sc_logic 1 signal 81 } 
	{ patch_buffer_4_14_d0 sc_out sc_lv 96 signal 81 } 
	{ patch_buffer_4_15_address0 sc_out sc_lv 2 signal 82 } 
	{ patch_buffer_4_15_ce0 sc_out sc_logic 1 signal 82 } 
	{ patch_buffer_4_15_we0 sc_out sc_logic 1 signal 82 } 
	{ patch_buffer_4_15_d0 sc_out sc_lv 96 signal 82 } 
	{ latest_patch_index_constprop_i sc_in sc_lv 2 signal 83 } 
	{ latest_patch_index_constprop_o sc_out sc_lv 2 signal 83 } 
	{ latest_patch_index_constprop_o_ap_vld sc_out sc_logic 1 outvld 83 } 
	{ num_patches_constprop_i sc_in sc_lv 32 signal 84 } 
	{ num_patches_constprop_o sc_out sc_lv 32 signal 84 } 
	{ num_patches_constprop_o_ap_vld sc_out sc_logic 1 outvld 84 } 
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
 	{ "name": "patch_stream_V_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "patch_stream_V", "role": "write" }} , 
 	{ "name": "patch_buffer_0_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "patch_buffer_0_0", "role": "address0" }} , 
 	{ "name": "patch_buffer_0_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "patch_buffer_0_0", "role": "ce0" }} , 
 	{ "name": "patch_buffer_0_0_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "patch_buffer_0_0", "role": "we0" }} , 
 	{ "name": "patch_buffer_0_0_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":96, "type": "signal", "bundle":{"name": "patch_buffer_0_0", "role": "d0" }} , 
 	{ "name": "patch_buffer_0_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "patch_buffer_0_1", "role": "address0" }} , 
 	{ "name": "patch_buffer_0_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "patch_buffer_0_1", "role": "ce0" }} , 
 	{ "name": "patch_buffer_0_1_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "patch_buffer_0_1", "role": "we0" }} , 
 	{ "name": "patch_buffer_0_1_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":96, "type": "signal", "bundle":{"name": "patch_buffer_0_1", "role": "d0" }} , 
 	{ "name": "patch_buffer_0_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "patch_buffer_0_2", "role": "address0" }} , 
 	{ "name": "patch_buffer_0_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "patch_buffer_0_2", "role": "ce0" }} , 
 	{ "name": "patch_buffer_0_2_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "patch_buffer_0_2", "role": "we0" }} , 
 	{ "name": "patch_buffer_0_2_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":96, "type": "signal", "bundle":{"name": "patch_buffer_0_2", "role": "d0" }} , 
 	{ "name": "patch_buffer_0_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "patch_buffer_0_3", "role": "address0" }} , 
 	{ "name": "patch_buffer_0_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "patch_buffer_0_3", "role": "ce0" }} , 
 	{ "name": "patch_buffer_0_3_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "patch_buffer_0_3", "role": "we0" }} , 
 	{ "name": "patch_buffer_0_3_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":96, "type": "signal", "bundle":{"name": "patch_buffer_0_3", "role": "d0" }} , 
 	{ "name": "patch_buffer_0_4_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "patch_buffer_0_4", "role": "address0" }} , 
 	{ "name": "patch_buffer_0_4_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "patch_buffer_0_4", "role": "ce0" }} , 
 	{ "name": "patch_buffer_0_4_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "patch_buffer_0_4", "role": "we0" }} , 
 	{ "name": "patch_buffer_0_4_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":96, "type": "signal", "bundle":{"name": "patch_buffer_0_4", "role": "d0" }} , 
 	{ "name": "patch_buffer_0_5_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "patch_buffer_0_5", "role": "address0" }} , 
 	{ "name": "patch_buffer_0_5_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "patch_buffer_0_5", "role": "ce0" }} , 
 	{ "name": "patch_buffer_0_5_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "patch_buffer_0_5", "role": "we0" }} , 
 	{ "name": "patch_buffer_0_5_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":96, "type": "signal", "bundle":{"name": "patch_buffer_0_5", "role": "d0" }} , 
 	{ "name": "patch_buffer_0_6_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "patch_buffer_0_6", "role": "address0" }} , 
 	{ "name": "patch_buffer_0_6_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "patch_buffer_0_6", "role": "ce0" }} , 
 	{ "name": "patch_buffer_0_6_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "patch_buffer_0_6", "role": "we0" }} , 
 	{ "name": "patch_buffer_0_6_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":96, "type": "signal", "bundle":{"name": "patch_buffer_0_6", "role": "d0" }} , 
 	{ "name": "patch_buffer_0_7_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "patch_buffer_0_7", "role": "address0" }} , 
 	{ "name": "patch_buffer_0_7_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "patch_buffer_0_7", "role": "ce0" }} , 
 	{ "name": "patch_buffer_0_7_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "patch_buffer_0_7", "role": "we0" }} , 
 	{ "name": "patch_buffer_0_7_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":96, "type": "signal", "bundle":{"name": "patch_buffer_0_7", "role": "d0" }} , 
 	{ "name": "patch_buffer_0_8_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "patch_buffer_0_8", "role": "address0" }} , 
 	{ "name": "patch_buffer_0_8_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "patch_buffer_0_8", "role": "ce0" }} , 
 	{ "name": "patch_buffer_0_8_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "patch_buffer_0_8", "role": "we0" }} , 
 	{ "name": "patch_buffer_0_8_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":96, "type": "signal", "bundle":{"name": "patch_buffer_0_8", "role": "d0" }} , 
 	{ "name": "patch_buffer_0_9_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "patch_buffer_0_9", "role": "address0" }} , 
 	{ "name": "patch_buffer_0_9_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "patch_buffer_0_9", "role": "ce0" }} , 
 	{ "name": "patch_buffer_0_9_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "patch_buffer_0_9", "role": "we0" }} , 
 	{ "name": "patch_buffer_0_9_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":96, "type": "signal", "bundle":{"name": "patch_buffer_0_9", "role": "d0" }} , 
 	{ "name": "patch_buffer_0_10_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "patch_buffer_0_10", "role": "address0" }} , 
 	{ "name": "patch_buffer_0_10_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "patch_buffer_0_10", "role": "ce0" }} , 
 	{ "name": "patch_buffer_0_10_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "patch_buffer_0_10", "role": "we0" }} , 
 	{ "name": "patch_buffer_0_10_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":96, "type": "signal", "bundle":{"name": "patch_buffer_0_10", "role": "d0" }} , 
 	{ "name": "patch_buffer_0_11_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "patch_buffer_0_11", "role": "address0" }} , 
 	{ "name": "patch_buffer_0_11_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "patch_buffer_0_11", "role": "ce0" }} , 
 	{ "name": "patch_buffer_0_11_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "patch_buffer_0_11", "role": "we0" }} , 
 	{ "name": "patch_buffer_0_11_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":96, "type": "signal", "bundle":{"name": "patch_buffer_0_11", "role": "d0" }} , 
 	{ "name": "patch_buffer_0_12_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "patch_buffer_0_12", "role": "address0" }} , 
 	{ "name": "patch_buffer_0_12_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "patch_buffer_0_12", "role": "ce0" }} , 
 	{ "name": "patch_buffer_0_12_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "patch_buffer_0_12", "role": "we0" }} , 
 	{ "name": "patch_buffer_0_12_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":96, "type": "signal", "bundle":{"name": "patch_buffer_0_12", "role": "d0" }} , 
 	{ "name": "patch_buffer_0_13_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "patch_buffer_0_13", "role": "address0" }} , 
 	{ "name": "patch_buffer_0_13_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "patch_buffer_0_13", "role": "ce0" }} , 
 	{ "name": "patch_buffer_0_13_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "patch_buffer_0_13", "role": "we0" }} , 
 	{ "name": "patch_buffer_0_13_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":96, "type": "signal", "bundle":{"name": "patch_buffer_0_13", "role": "d0" }} , 
 	{ "name": "patch_buffer_0_14_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "patch_buffer_0_14", "role": "address0" }} , 
 	{ "name": "patch_buffer_0_14_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "patch_buffer_0_14", "role": "ce0" }} , 
 	{ "name": "patch_buffer_0_14_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "patch_buffer_0_14", "role": "we0" }} , 
 	{ "name": "patch_buffer_0_14_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":96, "type": "signal", "bundle":{"name": "patch_buffer_0_14", "role": "d0" }} , 
 	{ "name": "patch_buffer_0_15_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "patch_buffer_0_15", "role": "address0" }} , 
 	{ "name": "patch_buffer_0_15_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "patch_buffer_0_15", "role": "ce0" }} , 
 	{ "name": "patch_buffer_0_15_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "patch_buffer_0_15", "role": "we0" }} , 
 	{ "name": "patch_buffer_0_15_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":96, "type": "signal", "bundle":{"name": "patch_buffer_0_15", "role": "d0" }} , 
 	{ "name": "patch_buffer_1_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "patch_buffer_1_0", "role": "address0" }} , 
 	{ "name": "patch_buffer_1_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "patch_buffer_1_0", "role": "ce0" }} , 
 	{ "name": "patch_buffer_1_0_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "patch_buffer_1_0", "role": "we0" }} , 
 	{ "name": "patch_buffer_1_0_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":96, "type": "signal", "bundle":{"name": "patch_buffer_1_0", "role": "d0" }} , 
 	{ "name": "patch_buffer_1_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "patch_buffer_1_1", "role": "address0" }} , 
 	{ "name": "patch_buffer_1_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "patch_buffer_1_1", "role": "ce0" }} , 
 	{ "name": "patch_buffer_1_1_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "patch_buffer_1_1", "role": "we0" }} , 
 	{ "name": "patch_buffer_1_1_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":96, "type": "signal", "bundle":{"name": "patch_buffer_1_1", "role": "d0" }} , 
 	{ "name": "patch_buffer_1_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "patch_buffer_1_2", "role": "address0" }} , 
 	{ "name": "patch_buffer_1_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "patch_buffer_1_2", "role": "ce0" }} , 
 	{ "name": "patch_buffer_1_2_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "patch_buffer_1_2", "role": "we0" }} , 
 	{ "name": "patch_buffer_1_2_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":96, "type": "signal", "bundle":{"name": "patch_buffer_1_2", "role": "d0" }} , 
 	{ "name": "patch_buffer_1_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "patch_buffer_1_3", "role": "address0" }} , 
 	{ "name": "patch_buffer_1_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "patch_buffer_1_3", "role": "ce0" }} , 
 	{ "name": "patch_buffer_1_3_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "patch_buffer_1_3", "role": "we0" }} , 
 	{ "name": "patch_buffer_1_3_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":96, "type": "signal", "bundle":{"name": "patch_buffer_1_3", "role": "d0" }} , 
 	{ "name": "patch_buffer_1_4_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "patch_buffer_1_4", "role": "address0" }} , 
 	{ "name": "patch_buffer_1_4_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "patch_buffer_1_4", "role": "ce0" }} , 
 	{ "name": "patch_buffer_1_4_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "patch_buffer_1_4", "role": "we0" }} , 
 	{ "name": "patch_buffer_1_4_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":96, "type": "signal", "bundle":{"name": "patch_buffer_1_4", "role": "d0" }} , 
 	{ "name": "patch_buffer_1_5_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "patch_buffer_1_5", "role": "address0" }} , 
 	{ "name": "patch_buffer_1_5_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "patch_buffer_1_5", "role": "ce0" }} , 
 	{ "name": "patch_buffer_1_5_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "patch_buffer_1_5", "role": "we0" }} , 
 	{ "name": "patch_buffer_1_5_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":96, "type": "signal", "bundle":{"name": "patch_buffer_1_5", "role": "d0" }} , 
 	{ "name": "patch_buffer_1_6_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "patch_buffer_1_6", "role": "address0" }} , 
 	{ "name": "patch_buffer_1_6_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "patch_buffer_1_6", "role": "ce0" }} , 
 	{ "name": "patch_buffer_1_6_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "patch_buffer_1_6", "role": "we0" }} , 
 	{ "name": "patch_buffer_1_6_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":96, "type": "signal", "bundle":{"name": "patch_buffer_1_6", "role": "d0" }} , 
 	{ "name": "patch_buffer_1_7_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "patch_buffer_1_7", "role": "address0" }} , 
 	{ "name": "patch_buffer_1_7_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "patch_buffer_1_7", "role": "ce0" }} , 
 	{ "name": "patch_buffer_1_7_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "patch_buffer_1_7", "role": "we0" }} , 
 	{ "name": "patch_buffer_1_7_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":96, "type": "signal", "bundle":{"name": "patch_buffer_1_7", "role": "d0" }} , 
 	{ "name": "patch_buffer_1_8_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "patch_buffer_1_8", "role": "address0" }} , 
 	{ "name": "patch_buffer_1_8_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "patch_buffer_1_8", "role": "ce0" }} , 
 	{ "name": "patch_buffer_1_8_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "patch_buffer_1_8", "role": "we0" }} , 
 	{ "name": "patch_buffer_1_8_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":96, "type": "signal", "bundle":{"name": "patch_buffer_1_8", "role": "d0" }} , 
 	{ "name": "patch_buffer_1_9_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "patch_buffer_1_9", "role": "address0" }} , 
 	{ "name": "patch_buffer_1_9_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "patch_buffer_1_9", "role": "ce0" }} , 
 	{ "name": "patch_buffer_1_9_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "patch_buffer_1_9", "role": "we0" }} , 
 	{ "name": "patch_buffer_1_9_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":96, "type": "signal", "bundle":{"name": "patch_buffer_1_9", "role": "d0" }} , 
 	{ "name": "patch_buffer_1_10_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "patch_buffer_1_10", "role": "address0" }} , 
 	{ "name": "patch_buffer_1_10_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "patch_buffer_1_10", "role": "ce0" }} , 
 	{ "name": "patch_buffer_1_10_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "patch_buffer_1_10", "role": "we0" }} , 
 	{ "name": "patch_buffer_1_10_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":96, "type": "signal", "bundle":{"name": "patch_buffer_1_10", "role": "d0" }} , 
 	{ "name": "patch_buffer_1_11_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "patch_buffer_1_11", "role": "address0" }} , 
 	{ "name": "patch_buffer_1_11_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "patch_buffer_1_11", "role": "ce0" }} , 
 	{ "name": "patch_buffer_1_11_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "patch_buffer_1_11", "role": "we0" }} , 
 	{ "name": "patch_buffer_1_11_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":96, "type": "signal", "bundle":{"name": "patch_buffer_1_11", "role": "d0" }} , 
 	{ "name": "patch_buffer_1_12_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "patch_buffer_1_12", "role": "address0" }} , 
 	{ "name": "patch_buffer_1_12_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "patch_buffer_1_12", "role": "ce0" }} , 
 	{ "name": "patch_buffer_1_12_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "patch_buffer_1_12", "role": "we0" }} , 
 	{ "name": "patch_buffer_1_12_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":96, "type": "signal", "bundle":{"name": "patch_buffer_1_12", "role": "d0" }} , 
 	{ "name": "patch_buffer_1_13_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "patch_buffer_1_13", "role": "address0" }} , 
 	{ "name": "patch_buffer_1_13_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "patch_buffer_1_13", "role": "ce0" }} , 
 	{ "name": "patch_buffer_1_13_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "patch_buffer_1_13", "role": "we0" }} , 
 	{ "name": "patch_buffer_1_13_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":96, "type": "signal", "bundle":{"name": "patch_buffer_1_13", "role": "d0" }} , 
 	{ "name": "patch_buffer_1_14_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "patch_buffer_1_14", "role": "address0" }} , 
 	{ "name": "patch_buffer_1_14_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "patch_buffer_1_14", "role": "ce0" }} , 
 	{ "name": "patch_buffer_1_14_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "patch_buffer_1_14", "role": "we0" }} , 
 	{ "name": "patch_buffer_1_14_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":96, "type": "signal", "bundle":{"name": "patch_buffer_1_14", "role": "d0" }} , 
 	{ "name": "patch_buffer_1_15_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "patch_buffer_1_15", "role": "address0" }} , 
 	{ "name": "patch_buffer_1_15_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "patch_buffer_1_15", "role": "ce0" }} , 
 	{ "name": "patch_buffer_1_15_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "patch_buffer_1_15", "role": "we0" }} , 
 	{ "name": "patch_buffer_1_15_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":96, "type": "signal", "bundle":{"name": "patch_buffer_1_15", "role": "d0" }} , 
 	{ "name": "patch_buffer_2_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "patch_buffer_2_0", "role": "address0" }} , 
 	{ "name": "patch_buffer_2_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "patch_buffer_2_0", "role": "ce0" }} , 
 	{ "name": "patch_buffer_2_0_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "patch_buffer_2_0", "role": "we0" }} , 
 	{ "name": "patch_buffer_2_0_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":96, "type": "signal", "bundle":{"name": "patch_buffer_2_0", "role": "d0" }} , 
 	{ "name": "patch_buffer_2_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "patch_buffer_2_1", "role": "address0" }} , 
 	{ "name": "patch_buffer_2_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "patch_buffer_2_1", "role": "ce0" }} , 
 	{ "name": "patch_buffer_2_1_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "patch_buffer_2_1", "role": "we0" }} , 
 	{ "name": "patch_buffer_2_1_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":96, "type": "signal", "bundle":{"name": "patch_buffer_2_1", "role": "d0" }} , 
 	{ "name": "patch_buffer_2_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "patch_buffer_2_2", "role": "address0" }} , 
 	{ "name": "patch_buffer_2_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "patch_buffer_2_2", "role": "ce0" }} , 
 	{ "name": "patch_buffer_2_2_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "patch_buffer_2_2", "role": "we0" }} , 
 	{ "name": "patch_buffer_2_2_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":96, "type": "signal", "bundle":{"name": "patch_buffer_2_2", "role": "d0" }} , 
 	{ "name": "patch_buffer_2_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "patch_buffer_2_3", "role": "address0" }} , 
 	{ "name": "patch_buffer_2_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "patch_buffer_2_3", "role": "ce0" }} , 
 	{ "name": "patch_buffer_2_3_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "patch_buffer_2_3", "role": "we0" }} , 
 	{ "name": "patch_buffer_2_3_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":96, "type": "signal", "bundle":{"name": "patch_buffer_2_3", "role": "d0" }} , 
 	{ "name": "patch_buffer_2_4_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "patch_buffer_2_4", "role": "address0" }} , 
 	{ "name": "patch_buffer_2_4_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "patch_buffer_2_4", "role": "ce0" }} , 
 	{ "name": "patch_buffer_2_4_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "patch_buffer_2_4", "role": "we0" }} , 
 	{ "name": "patch_buffer_2_4_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":96, "type": "signal", "bundle":{"name": "patch_buffer_2_4", "role": "d0" }} , 
 	{ "name": "patch_buffer_2_5_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "patch_buffer_2_5", "role": "address0" }} , 
 	{ "name": "patch_buffer_2_5_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "patch_buffer_2_5", "role": "ce0" }} , 
 	{ "name": "patch_buffer_2_5_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "patch_buffer_2_5", "role": "we0" }} , 
 	{ "name": "patch_buffer_2_5_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":96, "type": "signal", "bundle":{"name": "patch_buffer_2_5", "role": "d0" }} , 
 	{ "name": "patch_buffer_2_6_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "patch_buffer_2_6", "role": "address0" }} , 
 	{ "name": "patch_buffer_2_6_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "patch_buffer_2_6", "role": "ce0" }} , 
 	{ "name": "patch_buffer_2_6_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "patch_buffer_2_6", "role": "we0" }} , 
 	{ "name": "patch_buffer_2_6_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":96, "type": "signal", "bundle":{"name": "patch_buffer_2_6", "role": "d0" }} , 
 	{ "name": "patch_buffer_2_7_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "patch_buffer_2_7", "role": "address0" }} , 
 	{ "name": "patch_buffer_2_7_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "patch_buffer_2_7", "role": "ce0" }} , 
 	{ "name": "patch_buffer_2_7_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "patch_buffer_2_7", "role": "we0" }} , 
 	{ "name": "patch_buffer_2_7_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":96, "type": "signal", "bundle":{"name": "patch_buffer_2_7", "role": "d0" }} , 
 	{ "name": "patch_buffer_2_8_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "patch_buffer_2_8", "role": "address0" }} , 
 	{ "name": "patch_buffer_2_8_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "patch_buffer_2_8", "role": "ce0" }} , 
 	{ "name": "patch_buffer_2_8_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "patch_buffer_2_8", "role": "we0" }} , 
 	{ "name": "patch_buffer_2_8_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":96, "type": "signal", "bundle":{"name": "patch_buffer_2_8", "role": "d0" }} , 
 	{ "name": "patch_buffer_2_9_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "patch_buffer_2_9", "role": "address0" }} , 
 	{ "name": "patch_buffer_2_9_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "patch_buffer_2_9", "role": "ce0" }} , 
 	{ "name": "patch_buffer_2_9_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "patch_buffer_2_9", "role": "we0" }} , 
 	{ "name": "patch_buffer_2_9_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":96, "type": "signal", "bundle":{"name": "patch_buffer_2_9", "role": "d0" }} , 
 	{ "name": "patch_buffer_2_10_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "patch_buffer_2_10", "role": "address0" }} , 
 	{ "name": "patch_buffer_2_10_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "patch_buffer_2_10", "role": "ce0" }} , 
 	{ "name": "patch_buffer_2_10_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "patch_buffer_2_10", "role": "we0" }} , 
 	{ "name": "patch_buffer_2_10_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":96, "type": "signal", "bundle":{"name": "patch_buffer_2_10", "role": "d0" }} , 
 	{ "name": "patch_buffer_2_11_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "patch_buffer_2_11", "role": "address0" }} , 
 	{ "name": "patch_buffer_2_11_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "patch_buffer_2_11", "role": "ce0" }} , 
 	{ "name": "patch_buffer_2_11_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "patch_buffer_2_11", "role": "we0" }} , 
 	{ "name": "patch_buffer_2_11_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":96, "type": "signal", "bundle":{"name": "patch_buffer_2_11", "role": "d0" }} , 
 	{ "name": "patch_buffer_2_12_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "patch_buffer_2_12", "role": "address0" }} , 
 	{ "name": "patch_buffer_2_12_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "patch_buffer_2_12", "role": "ce0" }} , 
 	{ "name": "patch_buffer_2_12_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "patch_buffer_2_12", "role": "we0" }} , 
 	{ "name": "patch_buffer_2_12_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":96, "type": "signal", "bundle":{"name": "patch_buffer_2_12", "role": "d0" }} , 
 	{ "name": "patch_buffer_2_13_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "patch_buffer_2_13", "role": "address0" }} , 
 	{ "name": "patch_buffer_2_13_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "patch_buffer_2_13", "role": "ce0" }} , 
 	{ "name": "patch_buffer_2_13_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "patch_buffer_2_13", "role": "we0" }} , 
 	{ "name": "patch_buffer_2_13_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":96, "type": "signal", "bundle":{"name": "patch_buffer_2_13", "role": "d0" }} , 
 	{ "name": "patch_buffer_2_14_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "patch_buffer_2_14", "role": "address0" }} , 
 	{ "name": "patch_buffer_2_14_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "patch_buffer_2_14", "role": "ce0" }} , 
 	{ "name": "patch_buffer_2_14_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "patch_buffer_2_14", "role": "we0" }} , 
 	{ "name": "patch_buffer_2_14_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":96, "type": "signal", "bundle":{"name": "patch_buffer_2_14", "role": "d0" }} , 
 	{ "name": "patch_buffer_2_15_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "patch_buffer_2_15", "role": "address0" }} , 
 	{ "name": "patch_buffer_2_15_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "patch_buffer_2_15", "role": "ce0" }} , 
 	{ "name": "patch_buffer_2_15_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "patch_buffer_2_15", "role": "we0" }} , 
 	{ "name": "patch_buffer_2_15_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":96, "type": "signal", "bundle":{"name": "patch_buffer_2_15", "role": "d0" }} , 
 	{ "name": "patch_buffer_3_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "patch_buffer_3_0", "role": "address0" }} , 
 	{ "name": "patch_buffer_3_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "patch_buffer_3_0", "role": "ce0" }} , 
 	{ "name": "patch_buffer_3_0_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "patch_buffer_3_0", "role": "we0" }} , 
 	{ "name": "patch_buffer_3_0_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":96, "type": "signal", "bundle":{"name": "patch_buffer_3_0", "role": "d0" }} , 
 	{ "name": "patch_buffer_3_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "patch_buffer_3_1", "role": "address0" }} , 
 	{ "name": "patch_buffer_3_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "patch_buffer_3_1", "role": "ce0" }} , 
 	{ "name": "patch_buffer_3_1_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "patch_buffer_3_1", "role": "we0" }} , 
 	{ "name": "patch_buffer_3_1_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":96, "type": "signal", "bundle":{"name": "patch_buffer_3_1", "role": "d0" }} , 
 	{ "name": "patch_buffer_3_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "patch_buffer_3_2", "role": "address0" }} , 
 	{ "name": "patch_buffer_3_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "patch_buffer_3_2", "role": "ce0" }} , 
 	{ "name": "patch_buffer_3_2_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "patch_buffer_3_2", "role": "we0" }} , 
 	{ "name": "patch_buffer_3_2_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":96, "type": "signal", "bundle":{"name": "patch_buffer_3_2", "role": "d0" }} , 
 	{ "name": "patch_buffer_3_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "patch_buffer_3_3", "role": "address0" }} , 
 	{ "name": "patch_buffer_3_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "patch_buffer_3_3", "role": "ce0" }} , 
 	{ "name": "patch_buffer_3_3_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "patch_buffer_3_3", "role": "we0" }} , 
 	{ "name": "patch_buffer_3_3_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":96, "type": "signal", "bundle":{"name": "patch_buffer_3_3", "role": "d0" }} , 
 	{ "name": "patch_buffer_3_4_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "patch_buffer_3_4", "role": "address0" }} , 
 	{ "name": "patch_buffer_3_4_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "patch_buffer_3_4", "role": "ce0" }} , 
 	{ "name": "patch_buffer_3_4_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "patch_buffer_3_4", "role": "we0" }} , 
 	{ "name": "patch_buffer_3_4_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":96, "type": "signal", "bundle":{"name": "patch_buffer_3_4", "role": "d0" }} , 
 	{ "name": "patch_buffer_3_5_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "patch_buffer_3_5", "role": "address0" }} , 
 	{ "name": "patch_buffer_3_5_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "patch_buffer_3_5", "role": "ce0" }} , 
 	{ "name": "patch_buffer_3_5_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "patch_buffer_3_5", "role": "we0" }} , 
 	{ "name": "patch_buffer_3_5_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":96, "type": "signal", "bundle":{"name": "patch_buffer_3_5", "role": "d0" }} , 
 	{ "name": "patch_buffer_3_6_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "patch_buffer_3_6", "role": "address0" }} , 
 	{ "name": "patch_buffer_3_6_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "patch_buffer_3_6", "role": "ce0" }} , 
 	{ "name": "patch_buffer_3_6_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "patch_buffer_3_6", "role": "we0" }} , 
 	{ "name": "patch_buffer_3_6_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":96, "type": "signal", "bundle":{"name": "patch_buffer_3_6", "role": "d0" }} , 
 	{ "name": "patch_buffer_3_7_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "patch_buffer_3_7", "role": "address0" }} , 
 	{ "name": "patch_buffer_3_7_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "patch_buffer_3_7", "role": "ce0" }} , 
 	{ "name": "patch_buffer_3_7_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "patch_buffer_3_7", "role": "we0" }} , 
 	{ "name": "patch_buffer_3_7_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":96, "type": "signal", "bundle":{"name": "patch_buffer_3_7", "role": "d0" }} , 
 	{ "name": "patch_buffer_3_8_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "patch_buffer_3_8", "role": "address0" }} , 
 	{ "name": "patch_buffer_3_8_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "patch_buffer_3_8", "role": "ce0" }} , 
 	{ "name": "patch_buffer_3_8_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "patch_buffer_3_8", "role": "we0" }} , 
 	{ "name": "patch_buffer_3_8_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":96, "type": "signal", "bundle":{"name": "patch_buffer_3_8", "role": "d0" }} , 
 	{ "name": "patch_buffer_3_9_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "patch_buffer_3_9", "role": "address0" }} , 
 	{ "name": "patch_buffer_3_9_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "patch_buffer_3_9", "role": "ce0" }} , 
 	{ "name": "patch_buffer_3_9_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "patch_buffer_3_9", "role": "we0" }} , 
 	{ "name": "patch_buffer_3_9_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":96, "type": "signal", "bundle":{"name": "patch_buffer_3_9", "role": "d0" }} , 
 	{ "name": "patch_buffer_3_10_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "patch_buffer_3_10", "role": "address0" }} , 
 	{ "name": "patch_buffer_3_10_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "patch_buffer_3_10", "role": "ce0" }} , 
 	{ "name": "patch_buffer_3_10_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "patch_buffer_3_10", "role": "we0" }} , 
 	{ "name": "patch_buffer_3_10_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":96, "type": "signal", "bundle":{"name": "patch_buffer_3_10", "role": "d0" }} , 
 	{ "name": "patch_buffer_3_11_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "patch_buffer_3_11", "role": "address0" }} , 
 	{ "name": "patch_buffer_3_11_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "patch_buffer_3_11", "role": "ce0" }} , 
 	{ "name": "patch_buffer_3_11_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "patch_buffer_3_11", "role": "we0" }} , 
 	{ "name": "patch_buffer_3_11_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":96, "type": "signal", "bundle":{"name": "patch_buffer_3_11", "role": "d0" }} , 
 	{ "name": "patch_buffer_3_12_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "patch_buffer_3_12", "role": "address0" }} , 
 	{ "name": "patch_buffer_3_12_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "patch_buffer_3_12", "role": "ce0" }} , 
 	{ "name": "patch_buffer_3_12_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "patch_buffer_3_12", "role": "we0" }} , 
 	{ "name": "patch_buffer_3_12_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":96, "type": "signal", "bundle":{"name": "patch_buffer_3_12", "role": "d0" }} , 
 	{ "name": "patch_buffer_3_13_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "patch_buffer_3_13", "role": "address0" }} , 
 	{ "name": "patch_buffer_3_13_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "patch_buffer_3_13", "role": "ce0" }} , 
 	{ "name": "patch_buffer_3_13_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "patch_buffer_3_13", "role": "we0" }} , 
 	{ "name": "patch_buffer_3_13_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":96, "type": "signal", "bundle":{"name": "patch_buffer_3_13", "role": "d0" }} , 
 	{ "name": "patch_buffer_3_14_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "patch_buffer_3_14", "role": "address0" }} , 
 	{ "name": "patch_buffer_3_14_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "patch_buffer_3_14", "role": "ce0" }} , 
 	{ "name": "patch_buffer_3_14_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "patch_buffer_3_14", "role": "we0" }} , 
 	{ "name": "patch_buffer_3_14_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":96, "type": "signal", "bundle":{"name": "patch_buffer_3_14", "role": "d0" }} , 
 	{ "name": "patch_buffer_3_15_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "patch_buffer_3_15", "role": "address0" }} , 
 	{ "name": "patch_buffer_3_15_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "patch_buffer_3_15", "role": "ce0" }} , 
 	{ "name": "patch_buffer_3_15_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "patch_buffer_3_15", "role": "we0" }} , 
 	{ "name": "patch_buffer_3_15_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":96, "type": "signal", "bundle":{"name": "patch_buffer_3_15", "role": "d0" }} , 
 	{ "name": "patch_buffer_4_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "patch_buffer_4_0", "role": "address0" }} , 
 	{ "name": "patch_buffer_4_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "patch_buffer_4_0", "role": "ce0" }} , 
 	{ "name": "patch_buffer_4_0_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "patch_buffer_4_0", "role": "we0" }} , 
 	{ "name": "patch_buffer_4_0_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":96, "type": "signal", "bundle":{"name": "patch_buffer_4_0", "role": "d0" }} , 
 	{ "name": "patch_buffer_4_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "patch_buffer_4_1", "role": "address0" }} , 
 	{ "name": "patch_buffer_4_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "patch_buffer_4_1", "role": "ce0" }} , 
 	{ "name": "patch_buffer_4_1_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "patch_buffer_4_1", "role": "we0" }} , 
 	{ "name": "patch_buffer_4_1_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":96, "type": "signal", "bundle":{"name": "patch_buffer_4_1", "role": "d0" }} , 
 	{ "name": "patch_buffer_4_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "patch_buffer_4_2", "role": "address0" }} , 
 	{ "name": "patch_buffer_4_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "patch_buffer_4_2", "role": "ce0" }} , 
 	{ "name": "patch_buffer_4_2_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "patch_buffer_4_2", "role": "we0" }} , 
 	{ "name": "patch_buffer_4_2_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":96, "type": "signal", "bundle":{"name": "patch_buffer_4_2", "role": "d0" }} , 
 	{ "name": "patch_buffer_4_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "patch_buffer_4_3", "role": "address0" }} , 
 	{ "name": "patch_buffer_4_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "patch_buffer_4_3", "role": "ce0" }} , 
 	{ "name": "patch_buffer_4_3_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "patch_buffer_4_3", "role": "we0" }} , 
 	{ "name": "patch_buffer_4_3_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":96, "type": "signal", "bundle":{"name": "patch_buffer_4_3", "role": "d0" }} , 
 	{ "name": "patch_buffer_4_4_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "patch_buffer_4_4", "role": "address0" }} , 
 	{ "name": "patch_buffer_4_4_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "patch_buffer_4_4", "role": "ce0" }} , 
 	{ "name": "patch_buffer_4_4_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "patch_buffer_4_4", "role": "we0" }} , 
 	{ "name": "patch_buffer_4_4_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":96, "type": "signal", "bundle":{"name": "patch_buffer_4_4", "role": "d0" }} , 
 	{ "name": "patch_buffer_4_5_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "patch_buffer_4_5", "role": "address0" }} , 
 	{ "name": "patch_buffer_4_5_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "patch_buffer_4_5", "role": "ce0" }} , 
 	{ "name": "patch_buffer_4_5_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "patch_buffer_4_5", "role": "we0" }} , 
 	{ "name": "patch_buffer_4_5_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":96, "type": "signal", "bundle":{"name": "patch_buffer_4_5", "role": "d0" }} , 
 	{ "name": "patch_buffer_4_6_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "patch_buffer_4_6", "role": "address0" }} , 
 	{ "name": "patch_buffer_4_6_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "patch_buffer_4_6", "role": "ce0" }} , 
 	{ "name": "patch_buffer_4_6_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "patch_buffer_4_6", "role": "we0" }} , 
 	{ "name": "patch_buffer_4_6_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":96, "type": "signal", "bundle":{"name": "patch_buffer_4_6", "role": "d0" }} , 
 	{ "name": "patch_buffer_4_7_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "patch_buffer_4_7", "role": "address0" }} , 
 	{ "name": "patch_buffer_4_7_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "patch_buffer_4_7", "role": "ce0" }} , 
 	{ "name": "patch_buffer_4_7_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "patch_buffer_4_7", "role": "we0" }} , 
 	{ "name": "patch_buffer_4_7_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":96, "type": "signal", "bundle":{"name": "patch_buffer_4_7", "role": "d0" }} , 
 	{ "name": "patch_buffer_4_8_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "patch_buffer_4_8", "role": "address0" }} , 
 	{ "name": "patch_buffer_4_8_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "patch_buffer_4_8", "role": "ce0" }} , 
 	{ "name": "patch_buffer_4_8_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "patch_buffer_4_8", "role": "we0" }} , 
 	{ "name": "patch_buffer_4_8_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":96, "type": "signal", "bundle":{"name": "patch_buffer_4_8", "role": "d0" }} , 
 	{ "name": "patch_buffer_4_9_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "patch_buffer_4_9", "role": "address0" }} , 
 	{ "name": "patch_buffer_4_9_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "patch_buffer_4_9", "role": "ce0" }} , 
 	{ "name": "patch_buffer_4_9_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "patch_buffer_4_9", "role": "we0" }} , 
 	{ "name": "patch_buffer_4_9_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":96, "type": "signal", "bundle":{"name": "patch_buffer_4_9", "role": "d0" }} , 
 	{ "name": "patch_buffer_4_10_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "patch_buffer_4_10", "role": "address0" }} , 
 	{ "name": "patch_buffer_4_10_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "patch_buffer_4_10", "role": "ce0" }} , 
 	{ "name": "patch_buffer_4_10_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "patch_buffer_4_10", "role": "we0" }} , 
 	{ "name": "patch_buffer_4_10_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":96, "type": "signal", "bundle":{"name": "patch_buffer_4_10", "role": "d0" }} , 
 	{ "name": "patch_buffer_4_11_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "patch_buffer_4_11", "role": "address0" }} , 
 	{ "name": "patch_buffer_4_11_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "patch_buffer_4_11", "role": "ce0" }} , 
 	{ "name": "patch_buffer_4_11_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "patch_buffer_4_11", "role": "we0" }} , 
 	{ "name": "patch_buffer_4_11_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":96, "type": "signal", "bundle":{"name": "patch_buffer_4_11", "role": "d0" }} , 
 	{ "name": "patch_buffer_4_12_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "patch_buffer_4_12", "role": "address0" }} , 
 	{ "name": "patch_buffer_4_12_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "patch_buffer_4_12", "role": "ce0" }} , 
 	{ "name": "patch_buffer_4_12_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "patch_buffer_4_12", "role": "we0" }} , 
 	{ "name": "patch_buffer_4_12_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":96, "type": "signal", "bundle":{"name": "patch_buffer_4_12", "role": "d0" }} , 
 	{ "name": "patch_buffer_4_13_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "patch_buffer_4_13", "role": "address0" }} , 
 	{ "name": "patch_buffer_4_13_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "patch_buffer_4_13", "role": "ce0" }} , 
 	{ "name": "patch_buffer_4_13_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "patch_buffer_4_13", "role": "we0" }} , 
 	{ "name": "patch_buffer_4_13_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":96, "type": "signal", "bundle":{"name": "patch_buffer_4_13", "role": "d0" }} , 
 	{ "name": "patch_buffer_4_14_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "patch_buffer_4_14", "role": "address0" }} , 
 	{ "name": "patch_buffer_4_14_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "patch_buffer_4_14", "role": "ce0" }} , 
 	{ "name": "patch_buffer_4_14_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "patch_buffer_4_14", "role": "we0" }} , 
 	{ "name": "patch_buffer_4_14_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":96, "type": "signal", "bundle":{"name": "patch_buffer_4_14", "role": "d0" }} , 
 	{ "name": "patch_buffer_4_15_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "patch_buffer_4_15", "role": "address0" }} , 
 	{ "name": "patch_buffer_4_15_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "patch_buffer_4_15", "role": "ce0" }} , 
 	{ "name": "patch_buffer_4_15_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "patch_buffer_4_15", "role": "we0" }} , 
 	{ "name": "patch_buffer_4_15_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":96, "type": "signal", "bundle":{"name": "patch_buffer_4_15", "role": "d0" }} , 
 	{ "name": "latest_patch_index_constprop_i", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "latest_patch_index_constprop", "role": "i" }} , 
 	{ "name": "latest_patch_index_constprop_o", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "latest_patch_index_constprop", "role": "o" }} , 
 	{ "name": "latest_patch_index_constprop_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "latest_patch_index_constprop", "role": "o_ap_vld" }} , 
 	{ "name": "num_patches_constprop_i", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "num_patches_constprop", "role": "i" }} , 
 	{ "name": "num_patches_constprop_o", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "num_patches_constprop", "role": "o" }} , 
 	{ "name": "num_patches_constprop_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "num_patches_constprop", "role": "o_ap_vld" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "22"],
		"CDFG" : "makePatches_ShadowQuilt_fromEdges",
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
					{"ID" : "2", "SubInstance" : "grp_alignedtoline_per_layer_loop3_fu_299", "Port" : "points"}]},
			{"Name" : "num_points", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_alignedtoline_per_layer_loop3_fu_299", "Port" : "num_points"}]},
			{"Name" : "patch_stream_V", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "patch_stream_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "patch_buffer_0_0", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "22", "SubInstance" : "grp_patch_buffer_add_patch_fu_323", "Port" : "patch_buffer_0_0"}]},
			{"Name" : "patch_buffer_0_1", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "22", "SubInstance" : "grp_patch_buffer_add_patch_fu_323", "Port" : "patch_buffer_0_1"}]},
			{"Name" : "patch_buffer_0_2", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "22", "SubInstance" : "grp_patch_buffer_add_patch_fu_323", "Port" : "patch_buffer_0_2"}]},
			{"Name" : "patch_buffer_0_3", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "22", "SubInstance" : "grp_patch_buffer_add_patch_fu_323", "Port" : "patch_buffer_0_3"}]},
			{"Name" : "patch_buffer_0_4", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "22", "SubInstance" : "grp_patch_buffer_add_patch_fu_323", "Port" : "patch_buffer_0_4"}]},
			{"Name" : "patch_buffer_0_5", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "22", "SubInstance" : "grp_patch_buffer_add_patch_fu_323", "Port" : "patch_buffer_0_5"}]},
			{"Name" : "patch_buffer_0_6", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "22", "SubInstance" : "grp_patch_buffer_add_patch_fu_323", "Port" : "patch_buffer_0_6"}]},
			{"Name" : "patch_buffer_0_7", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "22", "SubInstance" : "grp_patch_buffer_add_patch_fu_323", "Port" : "patch_buffer_0_7"}]},
			{"Name" : "patch_buffer_0_8", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "22", "SubInstance" : "grp_patch_buffer_add_patch_fu_323", "Port" : "patch_buffer_0_8"}]},
			{"Name" : "patch_buffer_0_9", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "22", "SubInstance" : "grp_patch_buffer_add_patch_fu_323", "Port" : "patch_buffer_0_9"}]},
			{"Name" : "patch_buffer_0_10", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "22", "SubInstance" : "grp_patch_buffer_add_patch_fu_323", "Port" : "patch_buffer_0_10"}]},
			{"Name" : "patch_buffer_0_11", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "22", "SubInstance" : "grp_patch_buffer_add_patch_fu_323", "Port" : "patch_buffer_0_11"}]},
			{"Name" : "patch_buffer_0_12", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "22", "SubInstance" : "grp_patch_buffer_add_patch_fu_323", "Port" : "patch_buffer_0_12"}]},
			{"Name" : "patch_buffer_0_13", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "22", "SubInstance" : "grp_patch_buffer_add_patch_fu_323", "Port" : "patch_buffer_0_13"}]},
			{"Name" : "patch_buffer_0_14", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "22", "SubInstance" : "grp_patch_buffer_add_patch_fu_323", "Port" : "patch_buffer_0_14"}]},
			{"Name" : "patch_buffer_0_15", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "22", "SubInstance" : "grp_patch_buffer_add_patch_fu_323", "Port" : "patch_buffer_0_15"}]},
			{"Name" : "patch_buffer_1_0", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "22", "SubInstance" : "grp_patch_buffer_add_patch_fu_323", "Port" : "patch_buffer_1_0"}]},
			{"Name" : "patch_buffer_1_1", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "22", "SubInstance" : "grp_patch_buffer_add_patch_fu_323", "Port" : "patch_buffer_1_1"}]},
			{"Name" : "patch_buffer_1_2", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "22", "SubInstance" : "grp_patch_buffer_add_patch_fu_323", "Port" : "patch_buffer_1_2"}]},
			{"Name" : "patch_buffer_1_3", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "22", "SubInstance" : "grp_patch_buffer_add_patch_fu_323", "Port" : "patch_buffer_1_3"}]},
			{"Name" : "patch_buffer_1_4", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "22", "SubInstance" : "grp_patch_buffer_add_patch_fu_323", "Port" : "patch_buffer_1_4"}]},
			{"Name" : "patch_buffer_1_5", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "22", "SubInstance" : "grp_patch_buffer_add_patch_fu_323", "Port" : "patch_buffer_1_5"}]},
			{"Name" : "patch_buffer_1_6", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "22", "SubInstance" : "grp_patch_buffer_add_patch_fu_323", "Port" : "patch_buffer_1_6"}]},
			{"Name" : "patch_buffer_1_7", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "22", "SubInstance" : "grp_patch_buffer_add_patch_fu_323", "Port" : "patch_buffer_1_7"}]},
			{"Name" : "patch_buffer_1_8", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "22", "SubInstance" : "grp_patch_buffer_add_patch_fu_323", "Port" : "patch_buffer_1_8"}]},
			{"Name" : "patch_buffer_1_9", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "22", "SubInstance" : "grp_patch_buffer_add_patch_fu_323", "Port" : "patch_buffer_1_9"}]},
			{"Name" : "patch_buffer_1_10", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "22", "SubInstance" : "grp_patch_buffer_add_patch_fu_323", "Port" : "patch_buffer_1_10"}]},
			{"Name" : "patch_buffer_1_11", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "22", "SubInstance" : "grp_patch_buffer_add_patch_fu_323", "Port" : "patch_buffer_1_11"}]},
			{"Name" : "patch_buffer_1_12", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "22", "SubInstance" : "grp_patch_buffer_add_patch_fu_323", "Port" : "patch_buffer_1_12"}]},
			{"Name" : "patch_buffer_1_13", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "22", "SubInstance" : "grp_patch_buffer_add_patch_fu_323", "Port" : "patch_buffer_1_13"}]},
			{"Name" : "patch_buffer_1_14", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "22", "SubInstance" : "grp_patch_buffer_add_patch_fu_323", "Port" : "patch_buffer_1_14"}]},
			{"Name" : "patch_buffer_1_15", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "22", "SubInstance" : "grp_patch_buffer_add_patch_fu_323", "Port" : "patch_buffer_1_15"}]},
			{"Name" : "patch_buffer_2_0", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "22", "SubInstance" : "grp_patch_buffer_add_patch_fu_323", "Port" : "patch_buffer_2_0"}]},
			{"Name" : "patch_buffer_2_1", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "22", "SubInstance" : "grp_patch_buffer_add_patch_fu_323", "Port" : "patch_buffer_2_1"}]},
			{"Name" : "patch_buffer_2_2", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "22", "SubInstance" : "grp_patch_buffer_add_patch_fu_323", "Port" : "patch_buffer_2_2"}]},
			{"Name" : "patch_buffer_2_3", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "22", "SubInstance" : "grp_patch_buffer_add_patch_fu_323", "Port" : "patch_buffer_2_3"}]},
			{"Name" : "patch_buffer_2_4", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "22", "SubInstance" : "grp_patch_buffer_add_patch_fu_323", "Port" : "patch_buffer_2_4"}]},
			{"Name" : "patch_buffer_2_5", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "22", "SubInstance" : "grp_patch_buffer_add_patch_fu_323", "Port" : "patch_buffer_2_5"}]},
			{"Name" : "patch_buffer_2_6", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "22", "SubInstance" : "grp_patch_buffer_add_patch_fu_323", "Port" : "patch_buffer_2_6"}]},
			{"Name" : "patch_buffer_2_7", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "22", "SubInstance" : "grp_patch_buffer_add_patch_fu_323", "Port" : "patch_buffer_2_7"}]},
			{"Name" : "patch_buffer_2_8", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "22", "SubInstance" : "grp_patch_buffer_add_patch_fu_323", "Port" : "patch_buffer_2_8"}]},
			{"Name" : "patch_buffer_2_9", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "22", "SubInstance" : "grp_patch_buffer_add_patch_fu_323", "Port" : "patch_buffer_2_9"}]},
			{"Name" : "patch_buffer_2_10", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "22", "SubInstance" : "grp_patch_buffer_add_patch_fu_323", "Port" : "patch_buffer_2_10"}]},
			{"Name" : "patch_buffer_2_11", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "22", "SubInstance" : "grp_patch_buffer_add_patch_fu_323", "Port" : "patch_buffer_2_11"}]},
			{"Name" : "patch_buffer_2_12", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "22", "SubInstance" : "grp_patch_buffer_add_patch_fu_323", "Port" : "patch_buffer_2_12"}]},
			{"Name" : "patch_buffer_2_13", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "22", "SubInstance" : "grp_patch_buffer_add_patch_fu_323", "Port" : "patch_buffer_2_13"}]},
			{"Name" : "patch_buffer_2_14", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "22", "SubInstance" : "grp_patch_buffer_add_patch_fu_323", "Port" : "patch_buffer_2_14"}]},
			{"Name" : "patch_buffer_2_15", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "22", "SubInstance" : "grp_patch_buffer_add_patch_fu_323", "Port" : "patch_buffer_2_15"}]},
			{"Name" : "patch_buffer_3_0", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "22", "SubInstance" : "grp_patch_buffer_add_patch_fu_323", "Port" : "patch_buffer_3_0"}]},
			{"Name" : "patch_buffer_3_1", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "22", "SubInstance" : "grp_patch_buffer_add_patch_fu_323", "Port" : "patch_buffer_3_1"}]},
			{"Name" : "patch_buffer_3_2", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "22", "SubInstance" : "grp_patch_buffer_add_patch_fu_323", "Port" : "patch_buffer_3_2"}]},
			{"Name" : "patch_buffer_3_3", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "22", "SubInstance" : "grp_patch_buffer_add_patch_fu_323", "Port" : "patch_buffer_3_3"}]},
			{"Name" : "patch_buffer_3_4", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "22", "SubInstance" : "grp_patch_buffer_add_patch_fu_323", "Port" : "patch_buffer_3_4"}]},
			{"Name" : "patch_buffer_3_5", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "22", "SubInstance" : "grp_patch_buffer_add_patch_fu_323", "Port" : "patch_buffer_3_5"}]},
			{"Name" : "patch_buffer_3_6", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "22", "SubInstance" : "grp_patch_buffer_add_patch_fu_323", "Port" : "patch_buffer_3_6"}]},
			{"Name" : "patch_buffer_3_7", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "22", "SubInstance" : "grp_patch_buffer_add_patch_fu_323", "Port" : "patch_buffer_3_7"}]},
			{"Name" : "patch_buffer_3_8", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "22", "SubInstance" : "grp_patch_buffer_add_patch_fu_323", "Port" : "patch_buffer_3_8"}]},
			{"Name" : "patch_buffer_3_9", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "22", "SubInstance" : "grp_patch_buffer_add_patch_fu_323", "Port" : "patch_buffer_3_9"}]},
			{"Name" : "patch_buffer_3_10", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "22", "SubInstance" : "grp_patch_buffer_add_patch_fu_323", "Port" : "patch_buffer_3_10"}]},
			{"Name" : "patch_buffer_3_11", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "22", "SubInstance" : "grp_patch_buffer_add_patch_fu_323", "Port" : "patch_buffer_3_11"}]},
			{"Name" : "patch_buffer_3_12", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "22", "SubInstance" : "grp_patch_buffer_add_patch_fu_323", "Port" : "patch_buffer_3_12"}]},
			{"Name" : "patch_buffer_3_13", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "22", "SubInstance" : "grp_patch_buffer_add_patch_fu_323", "Port" : "patch_buffer_3_13"}]},
			{"Name" : "patch_buffer_3_14", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "22", "SubInstance" : "grp_patch_buffer_add_patch_fu_323", "Port" : "patch_buffer_3_14"}]},
			{"Name" : "patch_buffer_3_15", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "22", "SubInstance" : "grp_patch_buffer_add_patch_fu_323", "Port" : "patch_buffer_3_15"}]},
			{"Name" : "patch_buffer_4_0", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "22", "SubInstance" : "grp_patch_buffer_add_patch_fu_323", "Port" : "patch_buffer_4_0"}]},
			{"Name" : "patch_buffer_4_1", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "22", "SubInstance" : "grp_patch_buffer_add_patch_fu_323", "Port" : "patch_buffer_4_1"}]},
			{"Name" : "patch_buffer_4_2", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "22", "SubInstance" : "grp_patch_buffer_add_patch_fu_323", "Port" : "patch_buffer_4_2"}]},
			{"Name" : "patch_buffer_4_3", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "22", "SubInstance" : "grp_patch_buffer_add_patch_fu_323", "Port" : "patch_buffer_4_3"}]},
			{"Name" : "patch_buffer_4_4", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "22", "SubInstance" : "grp_patch_buffer_add_patch_fu_323", "Port" : "patch_buffer_4_4"}]},
			{"Name" : "patch_buffer_4_5", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "22", "SubInstance" : "grp_patch_buffer_add_patch_fu_323", "Port" : "patch_buffer_4_5"}]},
			{"Name" : "patch_buffer_4_6", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "22", "SubInstance" : "grp_patch_buffer_add_patch_fu_323", "Port" : "patch_buffer_4_6"}]},
			{"Name" : "patch_buffer_4_7", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "22", "SubInstance" : "grp_patch_buffer_add_patch_fu_323", "Port" : "patch_buffer_4_7"}]},
			{"Name" : "patch_buffer_4_8", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "22", "SubInstance" : "grp_patch_buffer_add_patch_fu_323", "Port" : "patch_buffer_4_8"}]},
			{"Name" : "patch_buffer_4_9", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "22", "SubInstance" : "grp_patch_buffer_add_patch_fu_323", "Port" : "patch_buffer_4_9"}]},
			{"Name" : "patch_buffer_4_10", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "22", "SubInstance" : "grp_patch_buffer_add_patch_fu_323", "Port" : "patch_buffer_4_10"}]},
			{"Name" : "patch_buffer_4_11", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "22", "SubInstance" : "grp_patch_buffer_add_patch_fu_323", "Port" : "patch_buffer_4_11"}]},
			{"Name" : "patch_buffer_4_12", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "22", "SubInstance" : "grp_patch_buffer_add_patch_fu_323", "Port" : "patch_buffer_4_12"}]},
			{"Name" : "patch_buffer_4_13", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "22", "SubInstance" : "grp_patch_buffer_add_patch_fu_323", "Port" : "patch_buffer_4_13"}]},
			{"Name" : "patch_buffer_4_14", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "22", "SubInstance" : "grp_patch_buffer_add_patch_fu_323", "Port" : "patch_buffer_4_14"}]},
			{"Name" : "patch_buffer_4_15", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "22", "SubInstance" : "grp_patch_buffer_add_patch_fu_323", "Port" : "patch_buffer_4_15"}]},
			{"Name" : "get_radiiradii", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_alignedtoline_per_layer_loop3_fu_299", "Port" : "get_radiiradii"}]},
			{"Name" : "lbVal_constprop", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_alignedtoline_per_layer_loop3_fu_299", "Port" : "lbVal_constprop"}]},
			{"Name" : "rbVal_constprop", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_alignedtoline_per_layer_loop3_fu_299", "Port" : "rbVal_constprop"}]},
			{"Name" : "get_trapezoid_edgestrapezoid_edges", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_alignedtoline_per_layer_loop3_fu_299", "Port" : "get_trapezoid_edgestrapezoid_edges"}]},
			{"Name" : "latest_patch_index_constprop", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "22", "SubInstance" : "grp_patch_buffer_add_patch_fu_323", "Port" : "latest_patch_index_constprop"}]},
			{"Name" : "num_patches_constprop", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "22", "SubInstance" : "grp_patch_buffer_add_patch_fu_323", "Port" : "num_patches_constprop"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.init_patch_V_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_alignedtoline_per_layer_loop3_fu_299", "Parent" : "0", "Child" : ["3", "4", "19", "20", "21"],
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
					{"ID" : "4", "SubInstance" : "grp_p_find_boundaries_and_starting_index_and_value4_fu_549", "Port" : "points"}]},
			{"Name" : "num_points", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_p_find_boundaries_and_starting_index_and_value4_fu_549", "Port" : "num_points"}]},
			{"Name" : "init_patch", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "i_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "get_radiiradii", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "lbVal_constprop", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_p_find_boundaries_and_starting_index_and_value4_fu_549", "Port" : "lbVal_constprop"}]},
			{"Name" : "rbVal_constprop", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_p_find_boundaries_and_starting_index_and_value4_fu_549", "Port" : "rbVal_constprop"}]},
			{"Name" : "get_trapezoid_edgestrapezoid_edges", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_p_find_boundaries_and_starting_index_and_value4_fu_549", "Port" : "get_trapezoid_edgestrapezoid_edges"}]}]},
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_alignedtoline_per_layer_loop3_fu_299.get_radiiradii_U", "Parent" : "2"},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_alignedtoline_per_layer_loop3_fu_299.grp_p_find_boundaries_and_starting_index_and_value4_fu_549", "Parent" : "2", "Child" : ["5", "6", "13", "16", "17", "18"],
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
			{"ID" : "5", "Name" : "p_find_boundaries_and_starting_index_and_value_entry25_U0"},
			{"ID" : "6", "Name" : "p_find_left_and_right_boundaries6_U0"},
			{"ID" : "13", "Name" : "p_find_starting_index_and_value5_U0"}],
		"OutputProcess" : [
			{"ID" : "6", "Name" : "p_find_left_and_right_boundaries6_U0"},
			{"ID" : "13", "Name" : "p_find_starting_index_and_value5_U0"}],
		"Port" : [
			{"Name" : "num_points", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "13", "SubInstance" : "p_find_starting_index_and_value5_U0", "Port" : "num_points"},
					{"ID" : "6", "SubInstance" : "p_find_left_and_right_boundaries6_U0", "Port" : "num_points"}]},
			{"Name" : "points", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "13", "SubInstance" : "p_find_starting_index_and_value5_U0", "Port" : "points"},
					{"ID" : "6", "SubInstance" : "p_find_left_and_right_boundaries6_U0", "Port" : "points"}]},
			{"Name" : "left_bound", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "p_find_left_and_right_boundaries6_U0", "Port" : "left_bound"}]},
			{"Name" : "projectionToRow", "Type" : "None", "Direction" : "I"},
			{"Name" : "start_index", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "13", "SubInstance" : "p_find_starting_index_and_value5_U0", "Port" : "start_index"}]},
			{"Name" : "start_value", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "13", "SubInstance" : "p_find_starting_index_and_value5_U0", "Port" : "start_value"}]},
			{"Name" : "i", "Type" : "None", "Direction" : "I"},
			{"Name" : "get_trapezoid_edgestrapezoid_edges", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "p_find_left_and_right_boundaries6_U0", "Port" : "get_trapezoid_edgestrapezoid_edges"}]},
			{"Name" : "lbVal_constprop", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "p_find_left_and_right_boundaries6_U0", "Port" : "lbVal_constprop"}]},
			{"Name" : "rbVal_constprop", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "p_find_left_and_right_boundaries6_U0", "Port" : "rbVal_constprop"}]}]},
	{"ID" : "5", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_alignedtoline_per_layer_loop3_fu_299.grp_p_find_boundaries_and_starting_index_and_value4_fu_549.p_find_boundaries_and_starting_index_and_value_entry25_U0", "Parent" : "4",
		"CDFG" : "p_find_boundaries_and_starting_index_and_value_entry25",
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
			{"Name" : "projectionToRow_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "13", "DependentChan" : "16", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "projectionToRow_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "i_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "6", "DependentChan" : "17", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "i_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "i_out1", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "13", "DependentChan" : "18", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "i_out1_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "6", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_alignedtoline_per_layer_loop3_fu_299.grp_p_find_boundaries_and_starting_index_and_value4_fu_549.p_find_left_and_right_boundaries6_U0", "Parent" : "4", "Child" : ["7", "8", "9", "10", "11", "12"],
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
			{"Name" : "i", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "5", "DependentChan" : "17", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "i_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "get_trapezoid_edgestrapezoid_edges", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "lbVal_constprop", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "rbVal_constprop", "Type" : "OVld", "Direction" : "IO"}]},
	{"ID" : "7", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_alignedtoline_per_layer_loop3_fu_299.grp_p_find_boundaries_and_starting_index_and_value4_fu_549.p_find_left_and_right_boundaries6_U0.get_trapezoid_edgestrapezoid_edges_U", "Parent" : "6"},
	{"ID" : "8", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_alignedtoline_per_layer_loop3_fu_299.grp_p_find_boundaries_and_starting_index_and_value4_fu_549.p_find_left_and_right_boundaries6_U0.faddfsub_32ns_32ns_32_3_full_dsp_1_U6", "Parent" : "6"},
	{"ID" : "9", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_alignedtoline_per_layer_loop3_fu_299.grp_p_find_boundaries_and_starting_index_and_value4_fu_549.p_find_left_and_right_boundaries6_U0.faddfsub_32ns_32ns_32_3_full_dsp_1_U7", "Parent" : "6"},
	{"ID" : "10", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_alignedtoline_per_layer_loop3_fu_299.grp_p_find_boundaries_and_starting_index_and_value4_fu_549.p_find_left_and_right_boundaries6_U0.fsub_32ns_32ns_32_3_full_dsp_1_U8", "Parent" : "6"},
	{"ID" : "11", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_alignedtoline_per_layer_loop3_fu_299.grp_p_find_boundaries_and_starting_index_and_value4_fu_549.p_find_left_and_right_boundaries6_U0.fpext_32ns_64_2_no_dsp_1_U9", "Parent" : "6"},
	{"ID" : "12", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_alignedtoline_per_layer_loop3_fu_299.grp_p_find_boundaries_and_starting_index_and_value4_fu_549.p_find_left_and_right_boundaries6_U0.fpext_32ns_64_2_no_dsp_1_U10", "Parent" : "6"},
	{"ID" : "13", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_alignedtoline_per_layer_loop3_fu_299.grp_p_find_boundaries_and_starting_index_and_value4_fu_549.p_find_starting_index_and_value5_U0", "Parent" : "4", "Child" : ["14", "15"],
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
			{"Name" : "projectionToRow", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "5", "DependentChan" : "16", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "projectionToRow_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "start_index", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "start_value", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "i", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "5", "DependentChan" : "18", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "i_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "14", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_alignedtoline_per_layer_loop3_fu_299.grp_p_find_boundaries_and_starting_index_and_value4_fu_549.p_find_starting_index_and_value5_U0.fsub_32ns_32ns_32_3_full_dsp_1_U21", "Parent" : "13"},
	{"ID" : "15", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_alignedtoline_per_layer_loop3_fu_299.grp_p_find_boundaries_and_starting_index_and_value4_fu_549.p_find_starting_index_and_value5_U0.fcmp_32ns_32ns_1_2_no_dsp_1_U22", "Parent" : "13"},
	{"ID" : "16", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_alignedtoline_per_layer_loop3_fu_299.grp_p_find_boundaries_and_starting_index_and_value4_fu_549.projectionToRow_c_U", "Parent" : "4"},
	{"ID" : "17", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_alignedtoline_per_layer_loop3_fu_299.grp_p_find_boundaries_and_starting_index_and_value4_fu_549.i_c_U", "Parent" : "4"},
	{"ID" : "18", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_alignedtoline_per_layer_loop3_fu_299.grp_p_find_boundaries_and_starting_index_and_value4_fu_549.i_c7_U", "Parent" : "4"},
	{"ID" : "19", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_alignedtoline_per_layer_loop3_fu_299.dcmp_64ns_64ns_1_2_no_dsp_1_U42", "Parent" : "2"},
	{"ID" : "20", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_alignedtoline_per_layer_loop3_fu_299.mul_25ns_46ns_70_1_1_U43", "Parent" : "2"},
	{"ID" : "21", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_alignedtoline_per_layer_loop3_fu_299.mul_70ns_72ns_141_1_1_U44", "Parent" : "2"},
	{"ID" : "22", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_patch_buffer_add_patch_fu_323", "Parent" : "0",
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
	makePatches_ShadowQuilt_fromEdges {
		points {Type I LastRead 16 FirstWrite -1}
		num_points {Type I LastRead 4 FirstWrite -1}
		patch_stream_V {Type O LastRead -1 FirstWrite 13}
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
	p_find_boundaries_and_starting_index_and_value_entry25 {
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
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	points { ap_memory {  { points_address0 mem_address 1 12 }  { points_ce0 mem_ce 1 1 }  { points_q0 mem_dout 0 128 }  { points_address1 MemPortADDR2 1 12 }  { points_ce1 MemPortCE2 1 1 }  { points_q1 MemPortDOUT2 0 128 } } }
	num_points { ap_memory {  { num_points_address0 mem_address 1 3 }  { num_points_ce0 mem_ce 1 1 }  { num_points_q0 mem_dout 0 32 }  { num_points_address1 MemPortADDR2 1 3 }  { num_points_ce1 MemPortCE2 1 1 }  { num_points_q1 MemPortDOUT2 0 32 } } }
	patch_stream_V { ap_fifo {  { patch_stream_V_din fifo_data 1 96 }  { patch_stream_V_full_n fifo_status 0 1 }  { patch_stream_V_write fifo_update 1 1 } } }
	patch_buffer_0_0 { ap_memory {  { patch_buffer_0_0_address0 mem_address 1 2 }  { patch_buffer_0_0_ce0 mem_ce 1 1 }  { patch_buffer_0_0_we0 mem_we 1 1 }  { patch_buffer_0_0_d0 mem_din 1 96 } } }
	patch_buffer_0_1 { ap_memory {  { patch_buffer_0_1_address0 mem_address 1 2 }  { patch_buffer_0_1_ce0 mem_ce 1 1 }  { patch_buffer_0_1_we0 mem_we 1 1 }  { patch_buffer_0_1_d0 mem_din 1 96 } } }
	patch_buffer_0_2 { ap_memory {  { patch_buffer_0_2_address0 mem_address 1 2 }  { patch_buffer_0_2_ce0 mem_ce 1 1 }  { patch_buffer_0_2_we0 mem_we 1 1 }  { patch_buffer_0_2_d0 mem_din 1 96 } } }
	patch_buffer_0_3 { ap_memory {  { patch_buffer_0_3_address0 mem_address 1 2 }  { patch_buffer_0_3_ce0 mem_ce 1 1 }  { patch_buffer_0_3_we0 mem_we 1 1 }  { patch_buffer_0_3_d0 mem_din 1 96 } } }
	patch_buffer_0_4 { ap_memory {  { patch_buffer_0_4_address0 mem_address 1 2 }  { patch_buffer_0_4_ce0 mem_ce 1 1 }  { patch_buffer_0_4_we0 mem_we 1 1 }  { patch_buffer_0_4_d0 mem_din 1 96 } } }
	patch_buffer_0_5 { ap_memory {  { patch_buffer_0_5_address0 mem_address 1 2 }  { patch_buffer_0_5_ce0 mem_ce 1 1 }  { patch_buffer_0_5_we0 mem_we 1 1 }  { patch_buffer_0_5_d0 mem_din 1 96 } } }
	patch_buffer_0_6 { ap_memory {  { patch_buffer_0_6_address0 mem_address 1 2 }  { patch_buffer_0_6_ce0 mem_ce 1 1 }  { patch_buffer_0_6_we0 mem_we 1 1 }  { patch_buffer_0_6_d0 mem_din 1 96 } } }
	patch_buffer_0_7 { ap_memory {  { patch_buffer_0_7_address0 mem_address 1 2 }  { patch_buffer_0_7_ce0 mem_ce 1 1 }  { patch_buffer_0_7_we0 mem_we 1 1 }  { patch_buffer_0_7_d0 mem_din 1 96 } } }
	patch_buffer_0_8 { ap_memory {  { patch_buffer_0_8_address0 mem_address 1 2 }  { patch_buffer_0_8_ce0 mem_ce 1 1 }  { patch_buffer_0_8_we0 mem_we 1 1 }  { patch_buffer_0_8_d0 mem_din 1 96 } } }
	patch_buffer_0_9 { ap_memory {  { patch_buffer_0_9_address0 mem_address 1 2 }  { patch_buffer_0_9_ce0 mem_ce 1 1 }  { patch_buffer_0_9_we0 mem_we 1 1 }  { patch_buffer_0_9_d0 mem_din 1 96 } } }
	patch_buffer_0_10 { ap_memory {  { patch_buffer_0_10_address0 mem_address 1 2 }  { patch_buffer_0_10_ce0 mem_ce 1 1 }  { patch_buffer_0_10_we0 mem_we 1 1 }  { patch_buffer_0_10_d0 mem_din 1 96 } } }
	patch_buffer_0_11 { ap_memory {  { patch_buffer_0_11_address0 mem_address 1 2 }  { patch_buffer_0_11_ce0 mem_ce 1 1 }  { patch_buffer_0_11_we0 mem_we 1 1 }  { patch_buffer_0_11_d0 mem_din 1 96 } } }
	patch_buffer_0_12 { ap_memory {  { patch_buffer_0_12_address0 mem_address 1 2 }  { patch_buffer_0_12_ce0 mem_ce 1 1 }  { patch_buffer_0_12_we0 mem_we 1 1 }  { patch_buffer_0_12_d0 mem_din 1 96 } } }
	patch_buffer_0_13 { ap_memory {  { patch_buffer_0_13_address0 mem_address 1 2 }  { patch_buffer_0_13_ce0 mem_ce 1 1 }  { patch_buffer_0_13_we0 mem_we 1 1 }  { patch_buffer_0_13_d0 mem_din 1 96 } } }
	patch_buffer_0_14 { ap_memory {  { patch_buffer_0_14_address0 mem_address 1 2 }  { patch_buffer_0_14_ce0 mem_ce 1 1 }  { patch_buffer_0_14_we0 mem_we 1 1 }  { patch_buffer_0_14_d0 mem_din 1 96 } } }
	patch_buffer_0_15 { ap_memory {  { patch_buffer_0_15_address0 mem_address 1 2 }  { patch_buffer_0_15_ce0 mem_ce 1 1 }  { patch_buffer_0_15_we0 mem_we 1 1 }  { patch_buffer_0_15_d0 mem_din 1 96 } } }
	patch_buffer_1_0 { ap_memory {  { patch_buffer_1_0_address0 mem_address 1 2 }  { patch_buffer_1_0_ce0 mem_ce 1 1 }  { patch_buffer_1_0_we0 mem_we 1 1 }  { patch_buffer_1_0_d0 mem_din 1 96 } } }
	patch_buffer_1_1 { ap_memory {  { patch_buffer_1_1_address0 mem_address 1 2 }  { patch_buffer_1_1_ce0 mem_ce 1 1 }  { patch_buffer_1_1_we0 mem_we 1 1 }  { patch_buffer_1_1_d0 mem_din 1 96 } } }
	patch_buffer_1_2 { ap_memory {  { patch_buffer_1_2_address0 mem_address 1 2 }  { patch_buffer_1_2_ce0 mem_ce 1 1 }  { patch_buffer_1_2_we0 mem_we 1 1 }  { patch_buffer_1_2_d0 mem_din 1 96 } } }
	patch_buffer_1_3 { ap_memory {  { patch_buffer_1_3_address0 mem_address 1 2 }  { patch_buffer_1_3_ce0 mem_ce 1 1 }  { patch_buffer_1_3_we0 mem_we 1 1 }  { patch_buffer_1_3_d0 mem_din 1 96 } } }
	patch_buffer_1_4 { ap_memory {  { patch_buffer_1_4_address0 mem_address 1 2 }  { patch_buffer_1_4_ce0 mem_ce 1 1 }  { patch_buffer_1_4_we0 mem_we 1 1 }  { patch_buffer_1_4_d0 mem_din 1 96 } } }
	patch_buffer_1_5 { ap_memory {  { patch_buffer_1_5_address0 mem_address 1 2 }  { patch_buffer_1_5_ce0 mem_ce 1 1 }  { patch_buffer_1_5_we0 mem_we 1 1 }  { patch_buffer_1_5_d0 mem_din 1 96 } } }
	patch_buffer_1_6 { ap_memory {  { patch_buffer_1_6_address0 mem_address 1 2 }  { patch_buffer_1_6_ce0 mem_ce 1 1 }  { patch_buffer_1_6_we0 mem_we 1 1 }  { patch_buffer_1_6_d0 mem_din 1 96 } } }
	patch_buffer_1_7 { ap_memory {  { patch_buffer_1_7_address0 mem_address 1 2 }  { patch_buffer_1_7_ce0 mem_ce 1 1 }  { patch_buffer_1_7_we0 mem_we 1 1 }  { patch_buffer_1_7_d0 mem_din 1 96 } } }
	patch_buffer_1_8 { ap_memory {  { patch_buffer_1_8_address0 mem_address 1 2 }  { patch_buffer_1_8_ce0 mem_ce 1 1 }  { patch_buffer_1_8_we0 mem_we 1 1 }  { patch_buffer_1_8_d0 mem_din 1 96 } } }
	patch_buffer_1_9 { ap_memory {  { patch_buffer_1_9_address0 mem_address 1 2 }  { patch_buffer_1_9_ce0 mem_ce 1 1 }  { patch_buffer_1_9_we0 mem_we 1 1 }  { patch_buffer_1_9_d0 mem_din 1 96 } } }
	patch_buffer_1_10 { ap_memory {  { patch_buffer_1_10_address0 mem_address 1 2 }  { patch_buffer_1_10_ce0 mem_ce 1 1 }  { patch_buffer_1_10_we0 mem_we 1 1 }  { patch_buffer_1_10_d0 mem_din 1 96 } } }
	patch_buffer_1_11 { ap_memory {  { patch_buffer_1_11_address0 mem_address 1 2 }  { patch_buffer_1_11_ce0 mem_ce 1 1 }  { patch_buffer_1_11_we0 mem_we 1 1 }  { patch_buffer_1_11_d0 mem_din 1 96 } } }
	patch_buffer_1_12 { ap_memory {  { patch_buffer_1_12_address0 mem_address 1 2 }  { patch_buffer_1_12_ce0 mem_ce 1 1 }  { patch_buffer_1_12_we0 mem_we 1 1 }  { patch_buffer_1_12_d0 mem_din 1 96 } } }
	patch_buffer_1_13 { ap_memory {  { patch_buffer_1_13_address0 mem_address 1 2 }  { patch_buffer_1_13_ce0 mem_ce 1 1 }  { patch_buffer_1_13_we0 mem_we 1 1 }  { patch_buffer_1_13_d0 mem_din 1 96 } } }
	patch_buffer_1_14 { ap_memory {  { patch_buffer_1_14_address0 mem_address 1 2 }  { patch_buffer_1_14_ce0 mem_ce 1 1 }  { patch_buffer_1_14_we0 mem_we 1 1 }  { patch_buffer_1_14_d0 mem_din 1 96 } } }
	patch_buffer_1_15 { ap_memory {  { patch_buffer_1_15_address0 mem_address 1 2 }  { patch_buffer_1_15_ce0 mem_ce 1 1 }  { patch_buffer_1_15_we0 mem_we 1 1 }  { patch_buffer_1_15_d0 mem_din 1 96 } } }
	patch_buffer_2_0 { ap_memory {  { patch_buffer_2_0_address0 mem_address 1 2 }  { patch_buffer_2_0_ce0 mem_ce 1 1 }  { patch_buffer_2_0_we0 mem_we 1 1 }  { patch_buffer_2_0_d0 mem_din 1 96 } } }
	patch_buffer_2_1 { ap_memory {  { patch_buffer_2_1_address0 mem_address 1 2 }  { patch_buffer_2_1_ce0 mem_ce 1 1 }  { patch_buffer_2_1_we0 mem_we 1 1 }  { patch_buffer_2_1_d0 mem_din 1 96 } } }
	patch_buffer_2_2 { ap_memory {  { patch_buffer_2_2_address0 mem_address 1 2 }  { patch_buffer_2_2_ce0 mem_ce 1 1 }  { patch_buffer_2_2_we0 mem_we 1 1 }  { patch_buffer_2_2_d0 mem_din 1 96 } } }
	patch_buffer_2_3 { ap_memory {  { patch_buffer_2_3_address0 mem_address 1 2 }  { patch_buffer_2_3_ce0 mem_ce 1 1 }  { patch_buffer_2_3_we0 mem_we 1 1 }  { patch_buffer_2_3_d0 mem_din 1 96 } } }
	patch_buffer_2_4 { ap_memory {  { patch_buffer_2_4_address0 mem_address 1 2 }  { patch_buffer_2_4_ce0 mem_ce 1 1 }  { patch_buffer_2_4_we0 mem_we 1 1 }  { patch_buffer_2_4_d0 mem_din 1 96 } } }
	patch_buffer_2_5 { ap_memory {  { patch_buffer_2_5_address0 mem_address 1 2 }  { patch_buffer_2_5_ce0 mem_ce 1 1 }  { patch_buffer_2_5_we0 mem_we 1 1 }  { patch_buffer_2_5_d0 mem_din 1 96 } } }
	patch_buffer_2_6 { ap_memory {  { patch_buffer_2_6_address0 mem_address 1 2 }  { patch_buffer_2_6_ce0 mem_ce 1 1 }  { patch_buffer_2_6_we0 mem_we 1 1 }  { patch_buffer_2_6_d0 mem_din 1 96 } } }
	patch_buffer_2_7 { ap_memory {  { patch_buffer_2_7_address0 mem_address 1 2 }  { patch_buffer_2_7_ce0 mem_ce 1 1 }  { patch_buffer_2_7_we0 mem_we 1 1 }  { patch_buffer_2_7_d0 mem_din 1 96 } } }
	patch_buffer_2_8 { ap_memory {  { patch_buffer_2_8_address0 mem_address 1 2 }  { patch_buffer_2_8_ce0 mem_ce 1 1 }  { patch_buffer_2_8_we0 mem_we 1 1 }  { patch_buffer_2_8_d0 mem_din 1 96 } } }
	patch_buffer_2_9 { ap_memory {  { patch_buffer_2_9_address0 mem_address 1 2 }  { patch_buffer_2_9_ce0 mem_ce 1 1 }  { patch_buffer_2_9_we0 mem_we 1 1 }  { patch_buffer_2_9_d0 mem_din 1 96 } } }
	patch_buffer_2_10 { ap_memory {  { patch_buffer_2_10_address0 mem_address 1 2 }  { patch_buffer_2_10_ce0 mem_ce 1 1 }  { patch_buffer_2_10_we0 mem_we 1 1 }  { patch_buffer_2_10_d0 mem_din 1 96 } } }
	patch_buffer_2_11 { ap_memory {  { patch_buffer_2_11_address0 mem_address 1 2 }  { patch_buffer_2_11_ce0 mem_ce 1 1 }  { patch_buffer_2_11_we0 mem_we 1 1 }  { patch_buffer_2_11_d0 mem_din 1 96 } } }
	patch_buffer_2_12 { ap_memory {  { patch_buffer_2_12_address0 mem_address 1 2 }  { patch_buffer_2_12_ce0 mem_ce 1 1 }  { patch_buffer_2_12_we0 mem_we 1 1 }  { patch_buffer_2_12_d0 mem_din 1 96 } } }
	patch_buffer_2_13 { ap_memory {  { patch_buffer_2_13_address0 mem_address 1 2 }  { patch_buffer_2_13_ce0 mem_ce 1 1 }  { patch_buffer_2_13_we0 mem_we 1 1 }  { patch_buffer_2_13_d0 mem_din 1 96 } } }
	patch_buffer_2_14 { ap_memory {  { patch_buffer_2_14_address0 mem_address 1 2 }  { patch_buffer_2_14_ce0 mem_ce 1 1 }  { patch_buffer_2_14_we0 mem_we 1 1 }  { patch_buffer_2_14_d0 mem_din 1 96 } } }
	patch_buffer_2_15 { ap_memory {  { patch_buffer_2_15_address0 mem_address 1 2 }  { patch_buffer_2_15_ce0 mem_ce 1 1 }  { patch_buffer_2_15_we0 mem_we 1 1 }  { patch_buffer_2_15_d0 mem_din 1 96 } } }
	patch_buffer_3_0 { ap_memory {  { patch_buffer_3_0_address0 mem_address 1 2 }  { patch_buffer_3_0_ce0 mem_ce 1 1 }  { patch_buffer_3_0_we0 mem_we 1 1 }  { patch_buffer_3_0_d0 mem_din 1 96 } } }
	patch_buffer_3_1 { ap_memory {  { patch_buffer_3_1_address0 mem_address 1 2 }  { patch_buffer_3_1_ce0 mem_ce 1 1 }  { patch_buffer_3_1_we0 mem_we 1 1 }  { patch_buffer_3_1_d0 mem_din 1 96 } } }
	patch_buffer_3_2 { ap_memory {  { patch_buffer_3_2_address0 mem_address 1 2 }  { patch_buffer_3_2_ce0 mem_ce 1 1 }  { patch_buffer_3_2_we0 mem_we 1 1 }  { patch_buffer_3_2_d0 mem_din 1 96 } } }
	patch_buffer_3_3 { ap_memory {  { patch_buffer_3_3_address0 mem_address 1 2 }  { patch_buffer_3_3_ce0 mem_ce 1 1 }  { patch_buffer_3_3_we0 mem_we 1 1 }  { patch_buffer_3_3_d0 mem_din 1 96 } } }
	patch_buffer_3_4 { ap_memory {  { patch_buffer_3_4_address0 mem_address 1 2 }  { patch_buffer_3_4_ce0 mem_ce 1 1 }  { patch_buffer_3_4_we0 mem_we 1 1 }  { patch_buffer_3_4_d0 mem_din 1 96 } } }
	patch_buffer_3_5 { ap_memory {  { patch_buffer_3_5_address0 mem_address 1 2 }  { patch_buffer_3_5_ce0 mem_ce 1 1 }  { patch_buffer_3_5_we0 mem_we 1 1 }  { patch_buffer_3_5_d0 mem_din 1 96 } } }
	patch_buffer_3_6 { ap_memory {  { patch_buffer_3_6_address0 mem_address 1 2 }  { patch_buffer_3_6_ce0 mem_ce 1 1 }  { patch_buffer_3_6_we0 mem_we 1 1 }  { patch_buffer_3_6_d0 mem_din 1 96 } } }
	patch_buffer_3_7 { ap_memory {  { patch_buffer_3_7_address0 mem_address 1 2 }  { patch_buffer_3_7_ce0 mem_ce 1 1 }  { patch_buffer_3_7_we0 mem_we 1 1 }  { patch_buffer_3_7_d0 mem_din 1 96 } } }
	patch_buffer_3_8 { ap_memory {  { patch_buffer_3_8_address0 mem_address 1 2 }  { patch_buffer_3_8_ce0 mem_ce 1 1 }  { patch_buffer_3_8_we0 mem_we 1 1 }  { patch_buffer_3_8_d0 mem_din 1 96 } } }
	patch_buffer_3_9 { ap_memory {  { patch_buffer_3_9_address0 mem_address 1 2 }  { patch_buffer_3_9_ce0 mem_ce 1 1 }  { patch_buffer_3_9_we0 mem_we 1 1 }  { patch_buffer_3_9_d0 mem_din 1 96 } } }
	patch_buffer_3_10 { ap_memory {  { patch_buffer_3_10_address0 mem_address 1 2 }  { patch_buffer_3_10_ce0 mem_ce 1 1 }  { patch_buffer_3_10_we0 mem_we 1 1 }  { patch_buffer_3_10_d0 mem_din 1 96 } } }
	patch_buffer_3_11 { ap_memory {  { patch_buffer_3_11_address0 mem_address 1 2 }  { patch_buffer_3_11_ce0 mem_ce 1 1 }  { patch_buffer_3_11_we0 mem_we 1 1 }  { patch_buffer_3_11_d0 mem_din 1 96 } } }
	patch_buffer_3_12 { ap_memory {  { patch_buffer_3_12_address0 mem_address 1 2 }  { patch_buffer_3_12_ce0 mem_ce 1 1 }  { patch_buffer_3_12_we0 mem_we 1 1 }  { patch_buffer_3_12_d0 mem_din 1 96 } } }
	patch_buffer_3_13 { ap_memory {  { patch_buffer_3_13_address0 mem_address 1 2 }  { patch_buffer_3_13_ce0 mem_ce 1 1 }  { patch_buffer_3_13_we0 mem_we 1 1 }  { patch_buffer_3_13_d0 mem_din 1 96 } } }
	patch_buffer_3_14 { ap_memory {  { patch_buffer_3_14_address0 mem_address 1 2 }  { patch_buffer_3_14_ce0 mem_ce 1 1 }  { patch_buffer_3_14_we0 mem_we 1 1 }  { patch_buffer_3_14_d0 mem_din 1 96 } } }
	patch_buffer_3_15 { ap_memory {  { patch_buffer_3_15_address0 mem_address 1 2 }  { patch_buffer_3_15_ce0 mem_ce 1 1 }  { patch_buffer_3_15_we0 mem_we 1 1 }  { patch_buffer_3_15_d0 mem_din 1 96 } } }
	patch_buffer_4_0 { ap_memory {  { patch_buffer_4_0_address0 mem_address 1 2 }  { patch_buffer_4_0_ce0 mem_ce 1 1 }  { patch_buffer_4_0_we0 mem_we 1 1 }  { patch_buffer_4_0_d0 mem_din 1 96 } } }
	patch_buffer_4_1 { ap_memory {  { patch_buffer_4_1_address0 mem_address 1 2 }  { patch_buffer_4_1_ce0 mem_ce 1 1 }  { patch_buffer_4_1_we0 mem_we 1 1 }  { patch_buffer_4_1_d0 mem_din 1 96 } } }
	patch_buffer_4_2 { ap_memory {  { patch_buffer_4_2_address0 mem_address 1 2 }  { patch_buffer_4_2_ce0 mem_ce 1 1 }  { patch_buffer_4_2_we0 mem_we 1 1 }  { patch_buffer_4_2_d0 mem_din 1 96 } } }
	patch_buffer_4_3 { ap_memory {  { patch_buffer_4_3_address0 mem_address 1 2 }  { patch_buffer_4_3_ce0 mem_ce 1 1 }  { patch_buffer_4_3_we0 mem_we 1 1 }  { patch_buffer_4_3_d0 mem_din 1 96 } } }
	patch_buffer_4_4 { ap_memory {  { patch_buffer_4_4_address0 mem_address 1 2 }  { patch_buffer_4_4_ce0 mem_ce 1 1 }  { patch_buffer_4_4_we0 mem_we 1 1 }  { patch_buffer_4_4_d0 mem_din 1 96 } } }
	patch_buffer_4_5 { ap_memory {  { patch_buffer_4_5_address0 mem_address 1 2 }  { patch_buffer_4_5_ce0 mem_ce 1 1 }  { patch_buffer_4_5_we0 mem_we 1 1 }  { patch_buffer_4_5_d0 mem_din 1 96 } } }
	patch_buffer_4_6 { ap_memory {  { patch_buffer_4_6_address0 mem_address 1 2 }  { patch_buffer_4_6_ce0 mem_ce 1 1 }  { patch_buffer_4_6_we0 mem_we 1 1 }  { patch_buffer_4_6_d0 mem_din 1 96 } } }
	patch_buffer_4_7 { ap_memory {  { patch_buffer_4_7_address0 mem_address 1 2 }  { patch_buffer_4_7_ce0 mem_ce 1 1 }  { patch_buffer_4_7_we0 mem_we 1 1 }  { patch_buffer_4_7_d0 mem_din 1 96 } } }
	patch_buffer_4_8 { ap_memory {  { patch_buffer_4_8_address0 mem_address 1 2 }  { patch_buffer_4_8_ce0 mem_ce 1 1 }  { patch_buffer_4_8_we0 mem_we 1 1 }  { patch_buffer_4_8_d0 mem_din 1 96 } } }
	patch_buffer_4_9 { ap_memory {  { patch_buffer_4_9_address0 mem_address 1 2 }  { patch_buffer_4_9_ce0 mem_ce 1 1 }  { patch_buffer_4_9_we0 mem_we 1 1 }  { patch_buffer_4_9_d0 mem_din 1 96 } } }
	patch_buffer_4_10 { ap_memory {  { patch_buffer_4_10_address0 mem_address 1 2 }  { patch_buffer_4_10_ce0 mem_ce 1 1 }  { patch_buffer_4_10_we0 mem_we 1 1 }  { patch_buffer_4_10_d0 mem_din 1 96 } } }
	patch_buffer_4_11 { ap_memory {  { patch_buffer_4_11_address0 mem_address 1 2 }  { patch_buffer_4_11_ce0 mem_ce 1 1 }  { patch_buffer_4_11_we0 mem_we 1 1 }  { patch_buffer_4_11_d0 mem_din 1 96 } } }
	patch_buffer_4_12 { ap_memory {  { patch_buffer_4_12_address0 mem_address 1 2 }  { patch_buffer_4_12_ce0 mem_ce 1 1 }  { patch_buffer_4_12_we0 mem_we 1 1 }  { patch_buffer_4_12_d0 mem_din 1 96 } } }
	patch_buffer_4_13 { ap_memory {  { patch_buffer_4_13_address0 mem_address 1 2 }  { patch_buffer_4_13_ce0 mem_ce 1 1 }  { patch_buffer_4_13_we0 mem_we 1 1 }  { patch_buffer_4_13_d0 mem_din 1 96 } } }
	patch_buffer_4_14 { ap_memory {  { patch_buffer_4_14_address0 mem_address 1 2 }  { patch_buffer_4_14_ce0 mem_ce 1 1 }  { patch_buffer_4_14_we0 mem_we 1 1 }  { patch_buffer_4_14_d0 mem_din 1 96 } } }
	patch_buffer_4_15 { ap_memory {  { patch_buffer_4_15_address0 mem_address 1 2 }  { patch_buffer_4_15_ce0 mem_ce 1 1 }  { patch_buffer_4_15_we0 mem_we 1 1 }  { patch_buffer_4_15_d0 mem_din 1 96 } } }
	latest_patch_index_constprop { ap_ovld {  { latest_patch_index_constprop_i in_data 0 2 }  { latest_patch_index_constprop_o out_data 1 2 }  { latest_patch_index_constprop_o_ap_vld out_vld 1 1 } } }
	num_patches_constprop { ap_ovld {  { num_patches_constprop_i in_data 0 32 }  { num_patches_constprop_o out_data 1 32 }  { num_patches_constprop_o_ap_vld out_vld 1 1 } } }
}
