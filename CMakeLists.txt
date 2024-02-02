cmake_minimum_required(VERSION 3.10)

project("PatchMakerHLS")

set(CMAKE_CXX_STANDARD 11)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

include_directories(${CMAKE_CURRENT_SOURCE_DIR}/include)

add_definitions(-DDEBUG)

file(GLOB SOURCES ${CMAKE_CURRENT_SOURCE_DIR}/src/*.cxx)
set(SOURCES ${SOURCES})

add_executable(PatchMakerHLS ${SOURCES})

# tests
enable_testing()
# test/test_environment.cxx
add_executable(test_environment test/test_environment.cxx)
add_test(NAME test_environment COMMAND test_environment)

# build dynamic library
add_library(patchmaker SHARED ${SOURCES})
# name it libpatchmaker.so
set_target_properties(patchmaker PROPERTIES OUTPUT_NAME libpatchmaker)
# link the library to the test
target_link_libraries(test_environment patchmaker)
