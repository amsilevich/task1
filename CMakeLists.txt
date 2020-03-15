cmake_minimum_required(VERSION 3.0)

include_directories(${CMAKE_SOURCE_DIR})

set(CMAKE_BINARY_DIR ${CMAKE_SOURCE_DIR}/bin)
set(EXECUTABLE_OUTPUT_PATH ${CMAKE_BINARY_DIR})
set(LIBRARY_OUTPUT_PATH ${CMAKE_SOURCE_DIR}/lib)
set(INDEX_PATH ${PROJECT_SOURCE_DIR}/A/index.h)

add_custom_command(OUTPUT INDEX_PATH PRE_BUILD COMMAND python3 ${PROJECT_SOURCE_DIR}/A/preparing.py ${PROJECT_SOURCE_DIR}/A/index.h)

add_subdirectory(B)

add_executable(main C/main.cpp INDEX_PATH B/lib.h)

target_link_libraries(main lib)


