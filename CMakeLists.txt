cmake_minimum_required(VERSION 3.10)

project(PatchMakerHLS VERSION 1.0 LANGUAGES CXX)

# Use C++11 standard
set(CMAKE_CXX_STANDARD 20)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

# Global compiler options
add_compile_options(-g) # Debugging information

# Generate compile_commands.cjson
set(CMAKE_EXPORT_COMPILE_COMMANDS ON)

# Include directories
include_directories(${CMAKE_CURRENT_SOURCE_DIR}/include)
# include_directories(${CMAKE_CURRENT_SOURCE_DIR}/reference)

# include vitis libraries /home/crinstaniev/opt/Xilinx/Vitis_HLS/2020.2/include
include_directories(/home/crinstaniev/opt/Xilinx/Vitis_HLS/2020.2/include)


# Source files
file(GLOB SOURCES ${CMAKE_CURRENT_SOURCE_DIR}/src/*.cpp)

# PatchMaker Library
add_library(patchmaker SHARED ${SOURCES})
set_target_properties(patchmaker PROPERTIES OUTPUT_NAME patchmaker)

# PatchMakerHLS executable
add_executable(PatchMakerHLS src/system.cpp)
target_link_libraries(PatchMakerHLS PRIVATE patchmaker)

# PatchMakerHLS reference implementation
add_executable(PatchMakerHLSRef reference/tanish_ver/patchmaker.cpp)


enable_testing()

# Helper macro for adding tests
macro(patchmaker_add_test TEST_NAME)
  add_executable(${TEST_NAME} test/${TEST_NAME}.cpp)
  add_test(NAME ${TEST_NAME} COMMAND ${TEST_NAME})
  target_link_libraries(${TEST_NAME} PRIVATE patchmaker)
endmacro()

# Add tests
# patchmaker_add_test(test_system)