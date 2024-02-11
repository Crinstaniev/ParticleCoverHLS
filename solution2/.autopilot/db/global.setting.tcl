
set TopModule "system_top"
set ClockPeriod 10
set ClockList ap_clk
set HasVivadoClockPeriod 0
set CombLogicFlag 0
set PipelineFlag 0
set DataflowTaskPipelineFlag 1
set TrivialPipelineFlag 0
set noPortSwitchingFlag 0
set FloatingPointFlag 1
set FftOrFirFlag 0
set NbRWValue 0
set intNbAccess 0
set NewDSPMapping 1
set HasDSPModule 1
set ResetLevelFlag 1
set ResetStyle control
set ResetSyncFlag 1
set ResetRegisterFlag 0
set ResetVariableFlag 0
set ResetRegisterNum 0
set FsmEncStyle onehot
set MaxFanout 0
set RtlPrefix {}
set RtlSubPrefix system_top_
set ExtraCCFlags {}
set ExtraCLdFlags {}
set SynCheckOptions {}
set PresynOptions {}
set PreprocOptions {}
set SchedOptions {}
set BindOptions {}
set RtlGenOptions {}
set RtlWriterOptions {}
set CbcGenFlag {}
set CasGenFlag {}
set CasMonitorFlag {}
set AutoSimOptions {}
set ExportMCPathFlag 0
set SCTraceFileName mytrace
set SCTraceFileFormat vcd
set SCTraceOption all
set TargetInfo xcvu11p:-flga2577:-1-e
set SourceFiles {sc {} c {../src/system.cxx ../src/superpoint.cxx ../src/sim_utils.cxx ../src/point.cxx ../src/patch.cxx ../src/file_reader.cxx ../src/event.cxx ../src/environment.cxx ../src/dataset.cxx ../src/cover.cxx}}
set SourceFlags {sc {} c {-IC:/Projects/ParticleCoverHLS/include -IC:/Projects/ParticleCoverHLS/include -IC:/Projects/ParticleCoverHLS/include -IC:/Projects/ParticleCoverHLS/include -IC:/Projects/ParticleCoverHLS/include -IC:/Projects/ParticleCoverHLS/include -IC:/Projects/ParticleCoverHLS/include -IC:/Projects/ParticleCoverHLS/include -IC:/Projects/ParticleCoverHLS/include -IC:/Projects/ParticleCoverHLS/include}}
set DirectiveFile C:/Projects/ParticleCoverHLS/solution2/solution2.directive
set TBFiles {verilog ../test/test_system_hls.cxx bc ../test/test_system_hls.cxx vhdl ../test/test_system_hls.cxx sc ../test/test_system_hls.cxx cas ../test/test_system_hls.cxx c {}}
set SpecLanguage C
set TVInFiles {bc {} c {} sc {} cas {} vhdl {} verilog {}}
set TVOutFiles {bc {} c {} sc {} cas {} vhdl {} verilog {}}
set TBTops {verilog {} bc {} vhdl {} sc {} cas {} c {}}
set TBInstNames {verilog {} bc {} vhdl {} sc {} cas {} c {}}
set XDCFiles {}
set ExtraGlobalOptions {"area_timing" 1 "clock_gate" 1 "impl_flow" map "power_gate" 0}
set TBTVFileNotFound {}
set AppFile ../hls.app
set ApsFile solution2.aps
set AvePath ../..
set DefaultPlatform DefaultPlatform
set multiClockList {}
set SCPortClockMap {}
set intNbAccess 0
set PlatformFiles {{DefaultPlatform {xilinx/Virtex-7/Virtex-7 xilinx/Virtex-7/Virtex-7_fpv7 xilinx/virtexuplus/virtexuplus}}}
set HPFPO 0
