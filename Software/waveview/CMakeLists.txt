cmake_minimum_required(VERSION 3.15)

# Name of the c++ project, left as addon for now
project (addon)

# TODO: Confirm this works on windows
set(CMAKE_CXX_STANDARD 17)
#add_compile_options("/std:c++latest")

# Comment out this line if you will try_compile with CMake's boost, for C team's consideration.
set(CMAKE_CXX_STANDARD_REQUIRED ON)

#add flag so that the project compiles for CMAKE
add_definitions(-DCMAKE) 

# Boost
set(Boost_USE_STATIC_LIBS OFF) 
set(Boost_USE_MULTITHREADED ON) 
set(Boost_USE_STATIC_RUNTIME OFF)
find_package( Boost REQUIRED COMPONENTS system thread log_setup log )

# Essential include files to build a node addon,
# you should add this line in every CMake.js based project.
include_directories(${CMAKE_JS_INC} scope_link/include)

# Declare the location of the source files
file(GLOB SOURCE_FILES "scope_link/src/*.cpp" "scope_link/include/*.hpp" "scope_link/include/*.h")

#include ftdi driver library
#file(GLOB LIBRARIES "C:\\FTDI_DRIVER\\FTD3XX.lib")
file(GLOB LIBRARIES "scope_link/lib/FTD3XXLibrary_v1.3.0.4/x64/FTD3XX.lib")

# This line tells CMake that we're building a shared library
# from the above source files
# named after the project's name
add_library(${PROJECT_NAME} SHARED ${SOURCE_FILES} ${CMAKE_JS_SRC})

# This line will give our library file a .node extension without any "lib" prefix
set_target_properties(${PROJECT_NAME} PROPERTIES PREFIX "" SUFFIX ".node")

# Essential library files to link to a node addon,
# you should add this line in every CMake.js based project.
target_link_libraries(${PROJECT_NAME} ${CMAKE_JS_LIB} ${LIBRARIES} ${Boost_LIBRARIES})

# Include N-API wrappers
execute_process(COMMAND node -p "require('node-addon-api').include"
        WORKING_DIRECTORY ${CMAKE_SOURCE_DIR}
        OUTPUT_VARIABLE NODE_ADDON_API_DIR
        )
string(REPLACE "\n" "" NODE_ADDON_API_DIR ${NODE_ADDON_API_DIR})
string(REPLACE "\"" "" NODE_ADDON_API_DIR ${NODE_ADDON_API_DIR})
target_include_directories(${PROJECT_NAME} PRIVATE ${NODE_ADDON_API_DIR} ${Boost_INCLUDE_DIRS})

# Finally adds the C defs to N-API's GYP to enable exports
add_definitions(-DNAPI_VERSION=3)
