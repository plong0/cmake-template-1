cmake_minimum_required(VERSION 3.0)
project(Test01)
set(Test01_VERSION_MAJOR 1)
set(Test01_VERSION_MINOR 0)

set(CMAKE_CXX_STANDARD 11)

set(CMAKE_RUNTIME_OUTPUT_DIRECTORY ${PROJECT_SOURCE_DIR}/bin)

include_directories("${PROJECT_SOURCE_DIR}")
include_directories("${CMAKE_SOURCE_DIR}")

if(BUILD_TESTS)
    enable_testing()
    add_subdirectory(tests)

else()
    add_subdirectory(src)
    add_subdirectory(lib)

endif()
