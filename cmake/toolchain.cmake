#
# Determins both host and target operating systems and CPU architectures and
# load corresponding toolchain files into `CMAKE_TOOLCHAIN_FILE`.
#
# Following variables will be defined by this script, even when there's no
# cross-compiling:
# 
# * HOST_OS     Host operating system.
# * HOST_ARCH   Host CPU architecture.
# * TARGET_OS   Target operating system.
# * TARGET_ARCH Target CPU architecture.
#

# Get host OS and ARCH
execute_process(
    COMMAND uname -s
    OUTPUT_VARIABLE HOST_OS
    OUTPUT_STRIP_TRAILING_WHITESPACE
)
string(TOLOWER "${HOST_OS}" HOST_OS)
execute_process(
    COMMAND uname -m
    OUTPUT_VARIABLE HOST_ARCH
    OUTPUT_STRIP_TRAILING_WHITESPACE
)
string(TOLOWER "${HOST_ARCH}" HOST_ARCH)

# Get target OS and ARCH
if (NOT TARGET_OS)
    set(TARGET_OS ${HOST_OS})
endif()
if (NOT TARGET_ARCH)
    set(TARGET_ARCH ${HOST_ARCH})
endif()

if (TARGET_OS STREQUAL HOST_OS AND TARGET_ARCH STREQUAL HOST_ARCH)
    # Native compiling
else()
    # Cross compiling
    if (TARGET_OS STREQUAL "linux")
        if (TARGET_ARCH STREQUAL "x86_64")
            set(__toolchain_file cmake/toolchain/x86_64-linux-gnu.cmake)
        elseif (TARGET_ARCH STREQUAL "aarch64")
            set(__toolchain_file cmake/toolchain/aarch64-linux-gnu.cmake)
        elseif (TARGET_ARCH STREQUAL "armhf")
            set(__toolchain_file cmake/toolchain/armhf-linux-gnu.cmake)
        endif()
    elseif(TARGET_OS STREQUAL "android")
        if (TARGET_ARCH STREQUAL "aarch64")
            set(__toolchain_file cmake/toolchain/aarch64-android-clang.cmake)
        endif()
    elseif(TARGET_OS STREQUAL "qnx")
        if (TARGET_ARCH STREQUAL "aarch64")
            set(__toolchain_file cmake/toolchain/aarch64-qnx-qcc.cmake)
        endif()
    endif()
    if (__toolchain_file)
        set(CMAKE_TOOLCHAIN_FILE ${__toolchain_file})
    else()
        message(FATAL_ERROR "Unsupported target OS '${TARGET_OS}' or ARCH '${TARGET_ARCH}'")
    endif()
endif()

message("HOST_OS     = '${HOST_OS}'")
message("HOST_ARCH   = '${HOST_ARCH}'")
message("TARGET_OS   = '${TARGET_OS}'")
message("TARGET_ARCH = '${TARGET_ARCH}'")
