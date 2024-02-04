cmake_minimum_required(VERSION 3.10)

project("PatchMakerHLS")

set(CMAKE_CXX_STANDARD 11)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

include_directories(${CMAKE_CURRENT_SOURCE_DIR}/include)

add_definitions(-DDEBUG)

file(GLOB SOURCES ${CMAKE_CURRENT_SOURCE_DIR}/src/*.cxx)
set(SOURCES ${SOURCES})

add_executable(PatchMakerHLS ${SOURCES})

add_library(patchmaker SHARED ${SOURCES})
set_target_properties(patchmaker PROPERTIES OUTPUT_NAME libpatchmaker)

enable_testing()

add_executable(test_environment test/test_environment.cxx)
add_test(NAME test_environment COMMAND test_environment)
target_link_libraries(test_environment patchmaker)

# test_file_reader
add_executable(test_file_reader test/test_file_reader.cxx)
add_test(NAME test_file_reader COMMAND test_file_reader)
target_link_libraries(test_file_reader patchmaker)
