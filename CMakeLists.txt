project("PatchMakerHLS")

set(CMAKE_CXX_STANDARD 11)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

cmake_minimum_required(VERSION 3.10)

include_directories(${CMAKE_CURRENT_SOURCE_DIR}/include)

add_definitions(-DDEBUG)

file(GLOB SOURCES ${CMAKE_CURRENT_SOURCE_DIR}/src/*.cxx)
set(SOURCES ${SOURCES})

add_executable(PatchMakerHLS ${SOURCES})


