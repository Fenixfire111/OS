cmake_minimum_required(VERSION 3.21)

project(Example)

set(CMAKE_CXX_STANDARD 14)

add_executable(Example main.cpp)



        add_library(Vector SHARED
        ../Vector/cmake-build-debug/libVector.so
        ../Vector/vector.cpp
        )

add_library(Number STATIC
        ../Number/cmake-build-debug/libNumber.a
        ../Number/number.cpp
        )

target_link_libraries(Example PRIVATE Number)
target_link_libraries(Example PRIVATE Vector)