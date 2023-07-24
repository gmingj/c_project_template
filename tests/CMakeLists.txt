
set(TEST_NAME "testtempl")

include(FetchContent)
FetchContent_Declare(googletest
    URL https://github.com/google/googletest/archive/58d77fa8070e8cec2dc1ed015d66b454c8d78850.zip
    DOWNLOAD_EXTRACT_TIMESTAMP ON
    )
set(gtest_force_shared_crt ON CACHE BOOL "" FORCE)
FetchContent_MakeAvailable(googletest)

include(coverage)
FetchContent_Declare(lcov
    URL https://github.com/linux-test-project/lcov/releases/download/v1.15/lcov-1.15.tar.gz
    DOWNLOAD_EXTRACT_TIMESTAMP ON
    )
append_coverage_compiler_flags()
set(COVERAGE_EXCLUDES
    "/usr/*"
    "${CMAKE_BINARY_DIR}/_deps/googletest-src/googletest/include/*"
    "${CMAKE_SOURCE_DIR}/tests/*"
    )
setup_target_for_coverage_lcov(
    NAME cover
    EXECUTABLE ${CMAKE_BINARY_DIR}/tests/${TEST_NAME}
    NO_DEMANGLE
    )
FetchContent_MakeAvailable(lcov)

add_executable(${TEST_NAME})
target_sources(${TEST_NAME}
    PRIVATE ${CMAKE_SOURCE_DIR}/src/module.cc
    PRIVATE test_module.cc
    )

target_include_directories(${TEST_NAME}
    PRIVATE ${CMAKE_SOURCE_DIR}/include
    )

target_link_libraries(${TEST_NAME}
    PRIVATE gtest_main
    PRIVATE gmock
    )
