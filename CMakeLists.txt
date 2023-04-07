cmake_minimum_required(VERSION 3.26)

list(APPEND CMAKE_MODULE_PATH ${CMAKE_CURRENT_SOURCE_DIR}/cmake)

project(modules CXX)

set(CMAKE_CXX_STANDARD 20)
set(CMAKE_CXX_STANDARD_REQUIRED ON)
set(CMAKE_CXX_EXTENSIONS OFF)
set(CMAKE_EXPORT_COMPILE_COMMANDS ON)

include(LibCXX)
include(StandardModulesHacks)

add_subdirectory(util)

enable_testing()
add_subdirectory(tests)

