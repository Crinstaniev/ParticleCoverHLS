cmake_minimum_required(VERSION 3.10)

project(PatchMakerHLS VERSION 1.0 LANGUAGES CXX)

# Use C++11 standard
set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

# Global compiler options
add_compile_options(-g) # Debugging information

# Generate compile_commands.json
set(CMAKE_EXPORT_COMPILE_COMMANDS ON)

# Include directories
include_directories(${CMAKE_CURRENT_SOURCE_DIR}/include)
include_directories(${CMAKE_CURRENT_SOURCE_DIR}/reference)

# include vitis libraries /home/crinstaniev/opt/Xilinx/Vitis_HLS/2020.2/include
include_directories(/home/crinstaniev/opt/Xilinx/Vitis_HLS/2020.2/include)

# Definition for Debug mode
add_compile_definitions($<$<CONFIG:DEBUG>:DEBUG>)


# Source files
file(GLOB SOURCES ${CMAKE_CURRENT_SOURCE_DIR}/src/*.cxx)

# PatchMaker Library
add_library(patchmaker SHARED ${SOURCES})
set_target_properties(patchmaker PROPERTIES OUTPUT_NAME patchmaker)

# PatchMakerHLS executable
add_executable(PatchMakerHLS src/system.cxx)
target_link_libraries(PatchMakerHLS PRIVATE patchmaker)

# PatchMakerHLS reference implementation
add_executable(PatchMakerHLS_ref ${CMAKE_CURRENT_SOURCE_DIR}/reference/makePatch_alignedtoLIne.cpp)
target_include_directories(PatchMakerHLS_ref PUBLIC ${CMAKE_CURRENT_SOURCE_DIR}/reference)
target_compile_options(PatchMakerHLS_ref PRIVATE -w) # Suppress all warnings

# Reference library
add_library(reference SHARED ${CMAKE_CURRENT_SOURCE_DIR}/reference/makePatch_alignedtoLIne.cpp)
set_target_properties(reference PROPERTIES OUTPUT_NAME reference COMPILE_OPTIONS "-w") # Suppress all warnings

enable_testing()

# Helper macro for adding tests
macro(patchmaker_add_test TEST_NAME)
  add_executable(${TEST_NAME} test/${TEST_NAME}.cxx)
  add_test(NAME ${TEST_NAME} COMMAND ${TEST_NAME})
  target_link_libraries(${TEST_NAME} PRIVATE patchmaker reference)
endmacro()

# Add tests
# patchmaker_add_test(test_environment)
# patchmaker_add_test(test_file_reader)
# patchmaker_add_test(test_dataset)
# patchmaker_add_test(test_superpoint)
# patchmaker_add_test(test_patch)
# patchmaker_add_test(test_file_reader_comp)
# patchmaker_add_test(test_system_hls)
# patchmaker_add_test(test_cover)
# patchmaker_add_test(test_hls_features)
patchmaker_add_test(test_patch_buffer)
patchmaker_add_test(test_system)