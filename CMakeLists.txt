
cmake_minimum_required(VERSION 3.20)

project(templ LANGUAGES C CXX)

option(BUILD_EXAMPLE "Build examples programs" OFF)
option(BUILD_DOC "Build documents" OFF)

list(APPEND CMAKE_MODULE_PATH "${CMAKE_SOURCE_DIR}/cmake")
# include(toolchain)
# include(flags)

add_subdirectory(src)

if(BUILD_EXAMPLE)
    add_subdirectory(examples)
endif()

if(CMAKE_BUILD_TYPE STREQUAL "Debug")
    add_subdirectory(tests)
endif()

if(BUILD_DOC)
    add_subdirectory(doc)
endif()
