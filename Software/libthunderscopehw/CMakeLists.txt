# CMakeLists.txt
cmake_minimum_required(VERSION 3.10)
project(thunderscopehwlibrary)
set (PROJECT_VERSION "1.0")
project(thunderscopehwlib VERSION ${PROJECT_VERSION})

add_subdirectory(library)
add_subdirectory(examples/thunderscopehwdump)
add_subdirectory(examples/thunderscopehwcalibrate)
add_subdirectory(examples/thunderscopehwbench)

enable_testing()
add_subdirectory(test)

