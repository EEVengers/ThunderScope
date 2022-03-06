# CMakeLists.txt
cmake_minimum_required(VERSION 3.10)
set (PROJECT_VERSION "1.0")
project(thunderscopehwlib VERSION ${PROJECT_VERSION})
set(CMAKE_WINDOWS_EXPORT_ALL_SYMBOLS ON)

add_library(thunderscopehwlib STATIC)

target_sources(thunderscopehwlib
PUBLIC
  ${CMAKE_CURRENT_SOURCE_DIR}/thunderscopehw.c
PRIVATE
  ${CMAKE_CURRENT_SOURCE_DIR}/thunderscopehw_internals.c
  ${CMAKE_CURRENT_SOURCE_DIR}/thunderscopehw_linux.c
  ${CMAKE_CURRENT_SOURCE_DIR}/thunderscopehw_win.c
  ${CMAKE_CURRENT_SOURCE_DIR}/thunderscopehw_adc.c
  ${CMAKE_CURRENT_SOURCE_DIR}/thunderscopehw_pll.c
)
	  

target_include_directories(thunderscopehwlib
	PUBLIC ../include)

# This will name your output .so files "libsomething.1.0" which is pretty useful
set_target_properties(thunderscopehwlib
PROPERTIES
   VERSION ${PROJECT_VERSION}
   SOVERSION ${PROJECT_VERSION}
)

add_library(thunderscopehwtestlib STATIC)
target_sources(thunderscopehwtestlib
PUBLIC
  ${CMAKE_CURRENT_SOURCE_DIR}/thunderscopehw.c
PRIVATE
  ${CMAKE_CURRENT_SOURCE_DIR}/thunderscopehw_internals.c
  ${CMAKE_CURRENT_SOURCE_DIR}/thunderscopehw_adc.c
  ${CMAKE_CURRENT_SOURCE_DIR}/thunderscopehw_pll.c
  ${CMAKE_CURRENT_SOURCE_DIR}/thunderscopehw_simulator.c
)

include(CheckLibraryExists)
check_library_exists(m pow "" LIBM)
if(LIBM)
	target_link_libraries(thunderscopehwlib
		m)
	target_link_libraries(thunderscopehwtestlib
		m)
endif()


target_include_directories(thunderscopehwtestlib
	PUBLIC ../include)


# Let's set compiler-specific flags
if (${CMAKE_CXX_COMPILER_ID} STREQUAL "GNU")
    # G++
    target_compile_options(thunderscopehwlib PRIVATE -Wall -Wextra)
elseif(${CMAKE_CXX_COMPILER_ID} STREQUAL "MSVC")
    # MSVC
    target_compile_options(thunderscopehwlib PRIVATE /EHsc /MTd /W2 /c)
    # Set the DLLEXPORT variable to export symbols
    target_compile_definitions(thunderscopehwlib PRIVATE WIN_EXPORT)
endif()
