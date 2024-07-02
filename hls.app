<project xmlns="com.autoesl.autopilot.project" name="ParticleCoverHLS" top="system_top">
    <includePaths/>
    <libraryPaths/>
    <Simulation>
        <SimFlow name="csim" clean="true" csimMode="0" lastCsimMode="0"/>
    </Simulation>
    <files xmlns="">
        <file name="../test/test_system.cpp" sc="0" tb="1" cflags=" -I../include -Wno-unknown-pragmas" csimflags=" -I../include -Wno-unknown-pragmas" blackbox="false"/>
        <file name="ParticleCoverHLS/src/file_reader.cpp" sc="0" tb="false" cflags="-IParticleCoverHLS/include" csimflags="-IParticleCoverHLS/include" blackbox="false"/>
        <file name="ParticleCoverHLS/src/patch_buffer.cpp" sc="0" tb="false" cflags="-IParticleCoverHLS/include" csimflags="-IParticleCoverHLS/include" blackbox="false"/>
        <file name="ParticleCoverHLS/src/system.cpp" sc="0" tb="false" cflags="-IParticleCoverHLS/include" csimflags="-IParticleCoverHLS/include" blackbox="false"/>
        <file name="ParticleCoverHLS/src/types.cpp" sc="0" tb="false" cflags="-IParticleCoverHLS/include" csimflags="-IParticleCoverHLS/include" blackbox="false"/>
    </files>
    <solutions xmlns="">
        <solution name="solution1" status="inactive"/>
        <solution name="solutionOpt01" status="inactive"/>
        <solution name="solutionOpt1_5" status="active"/>
    </solutions>
</project>

