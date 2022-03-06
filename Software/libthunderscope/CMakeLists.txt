# CMakeLists.txt
cmake_minimum_required(VERSION 3.10)
project(thunderscopelibrary)
set (PROJECT_VERSION "1.0")
project(thunderscopelib VERSION ${PROJECT_VERSION})

add_subdirectory(thunderscopehw)
add_subdirectory(examples/thunderscopehwdump)
add_subdirectory(examples/thunderscopehwcalibrate)
add_subdirectory(examples/thunderscopehwcompensate)
add_subdirectory(examples/thunderscopehwbench)
add_subdirectory(examples/thunderscopehwstresstest)

enable_testing()
add_subdirectory(test)

