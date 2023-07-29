set(CMAKE_SYSTEM_NAME Linux)

set(__armhf_bin "/opt/gcc-arm-8.2-2018.08-x86_64-arm-linux-gnueabihf/bin")
set(CMAKE_C_COMPILER ${__armhf_bin}/arm-linux-gnueabihf-gcc)
set(CMAKE_CXX_COMPILER ${__armhf_bin}/arm-linux-gnueabihf-g++)
set(CMAKE_LD ${__armhf_bin}/arm-linux-gnueabihf-ld)
set(CMAKE_AR ${__armhf_bin}/arm-linux-gnueabihf-ar)
set(CMAKE_AS ${__armhf_bin}/arm-linux-gnueabihf-as)
set(CMAKE_NM ${__armhf_bin}/arm-linux-gnueabihf-nm)
set(CMAKE_STRIP ${__armhf_bin}/arm-linux-gnueabihf-strip)