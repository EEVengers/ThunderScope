cmake_minimum_required(VERSION 3.15)

# Name of the c++ project, left as addon for now
project (scope)

# TODO: Confirm this works on windows
set(CMAKE_CXX_STANDARD 17)
#add_compile_options("/std:c++latest")

# Comment out this line if you will try_compile with CMake's boost, for C team's consideration.
set(CMAKE_CXX_STANDARD_REQUIRED ON)

set(CMAKE_EXPORT_COMPILE_COMMANDS ON)

# Boost
if(MSVC)
set(Boost_USE_STATIC_LIBS ON)
else()
set(Boost_USE_STATIC_LIBS OFF) 
endif()

set(Boost_USE_MULTITHREADED ON) 
set(Boost_USE_STATIC_RUNTIME OFF)

if(MSVC)
set(BOOST_ROOT C:/Boost)
endif()
find_package( Boost REQUIRED COMPONENTS system thread log_setup log )


# Declare the location of the source files
file(GLOB SOURCES "scope_link/src/*.cpp")
include_directories(${Boost_INCLUDE_DIRS} scope_link/include)

#include ftdi driver library
#file(GLOB LIBRARIES "C:\\FTDI_DRIVER\\FTD3XX.lib")
file(GLOB LIBRARIES "scope_link/lib/FTD3XXLibrary_v1.3.0.4/x64/FTD3XX.lib")

# Avoid macro name-collision between Boost ERROR and WinGDI ERROR.
# https://stackoverflow.com/a/32952062
if(MSVC)
add_definitions(-DNOGDI)
endif()

#add_definitions(-DNOHARDWARE)

add_executable(${PROJECT_NAME} ${SOURCES})

target_link_libraries(${PROJECT_NAME} ${LIBRARIES} ${Boost_LIBRARIES})
