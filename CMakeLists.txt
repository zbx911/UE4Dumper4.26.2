cmake_minimum_required(VERSION 3.6.0)
project(UE4Dumper2.6.2)

set(CMAKE_CXX_STANDARD_REQUIRED ON)
set(CMAKE_CXX_STANDARD 11)

set(ABI arm64-v8a)
set(ANDROID_NDK ~/tools/ndk/android-ndk-r16b)

set(CMAKE_SYSTEM_NAME Android)
set(CMAKE_SYSTEM_VERSION 21) # API level
set(CMAKE_ANDROID_ARCH_ABI arm64-v8a)
set(CMAKE_ANDROID_NDK ~/tools/ndk/android-ndk-r16b)
set(CMAKE_ANDROID_STL_TYPE gnustl_static)

include_directories(${ANDROID_NDK}/sysroot/usr/include)

set(SOURCE
    ./src/ELF64/fix.cpp
)

add_executable(${CMAKE_PROJECT_NAME} ./src/core/kmods.cpp ${SOURCE})

target_link_libraries(${CMAKE_PROJECT_NAME} android log z)