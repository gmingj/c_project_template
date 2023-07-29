set(CMAKE_SYSTEM_NAME QNX)

set(CMAKE_SYSTEM_PROCESSOR aarach64)
set(arch gcc_ntoaarch64le)
#set(ARCH_NAME aarach64)

# Suppose you have already set QNX_HOST and QNX_TARGET Add compiler and linker
# flags -std=gnu++14 is needed because QNX header files only cover GNU and POSIX
set(CMAKE_CXX_FLAGS "${CMAKE_EXE_LINKER_FLAGS} -V${arch} -std=gnu++14")

set(CMAKE_C_COMPILER qcc)
set(CMAKE_C_COMPILER_TARGET ${arch})
set(CMAKE_CXX_COMPILER q++)
set(CMAKE_CXX_COMPILER_TARGET ${arch})
