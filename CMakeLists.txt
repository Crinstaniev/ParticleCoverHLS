cmake_minimum_required(VERSION 3.10)

project("PatchMakerHLS")

set(CMAKE_CXX_STANDARD 11)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

include_directories(${CMAKE_CURRENT_SOURCE_DIR}/include)

add_definitions(-DDEBUG)

# add -g option for all targets
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -g")

file(GLOB SOURCES ${CMAKE_CURRENT_SOURCE_DIR}/src/*.cxx)
set(SOURCES ${SOURCES})

add_library(patchmaker SHARED ${SOURCES})
set_target_properties(patchmaker PROPERTIES OUTPUT_NAME patchmaker)

add_executable(PatchMakerHLS src/system.cxx)
target_link_libraries(PatchMakerHLS patchmaker)

enable_testing()

# test_environment
add_executable(test_environment test/test_environment.cxx)
add_test(NAME test_environment COMMAND test_environment)
target_link_libraries(test_environment patchmaker)

# test_file_reader
add_executable(test_file_reader test/test_file_reader.cxx)
add_test(NAME test_file_reader COMMAND test_file_reader)
target_link_libraries(test_file_reader patchmaker)

# test_dataset
add_executable(test_dataset test/test_dataset.cxx)
add_test(NAME test_dataset COMMAND test_dataset)
target_link_libraries(test_dataset patchmaker)

# test_superpoint
add_executable(test_superpoint test/test_superpoint.cxx)
add_test(NAME test_superpoint COMMAND test_superpoint)
target_link_libraries(test_superpoint patchmaker)
