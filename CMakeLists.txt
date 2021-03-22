cmake_minimum_required(VERSION 3.2)
project(
    TFLM
    VERSION 2.3.1
    LANGUAGES C CXX
)

set(CMAKE_CXX_STANDARD 11)
set(CMAKE_C_STANDARD 99)

if(NOT CMAKE_BUILD_TYPE)
    set(CMAKE_BUILD_TYPE Debug)
endif()

set(CMAKE_CXX_FLAGS "-Wall")
set(CMAKE_CXX_FLAGS_DEBUG "-g")
set(CMAKE_CXX_FLAGS_RELEASE "-O3")

set(CMAKE_C_FLAGS "-Wall")
set(CMAKE_C_FLAGS_DEBUG "-g")
set(CMAKE_C_FLAGS_RELEASE "-O3")

add_compile_definitions(NDEBUG)
add_compile_definitions(TF_LITE_STATIC_MEMORY)

set(MAIN "tensorflow/lite/micro/examples/hello_world/main.cc")

# GLOB_RECURSE is dangerous
file(GLOB_RECURSE C_SOURCES
        "tensorflow/*.c"
)

file(GLOB_RECURSE CXX_SOURCES
        "tensorflow/*.cc"
)

list(REMOVE_ITEM CXX_SOURCES ${MAIN})

include_directories(.)
include_directories(./third_party/gemmlowp)
include_directories(./third_party/flatbuffers/include)
include_directories(./third_party/ruy)

# Build static liberary first then link to executable
# Order of liberary is important, linker rely on it, one rely on another like a chain cannot have circle dependency
# add_library(hello_world_static_c STATIC ${C_SOURCES})
# add_library(hello_world_static_cxx STATIC ${CXX_SOURCES})
# add_executable(hello_world ${MAIN})
# target_link_libraries(hello_world hello_world_static_cxx)
# target_link_libraries(hello_world hello_world_static_c)

# Directly build executable
add_executable(hello_world ${MAIN} ${C_SOURCES} ${CXX_SOURCES})