cmake_minimum_required(VERSION 3.15)
project(server)

set(CMAKE_CXX_STANDARD 17)

include(FetchContent)
include(ExternalProject)
find_package(PkgConfig REQUIRED)






#add_executable(server ${SOURCES} src/main.cpp src/utils.cpp src/utils.hpp src/config_manager.cpp src/config_manager.hpp)
add_executable(server ${SOURCES} test.cpp)
target_link_libraries(server ${USED_LIBS})


find_path(HIREDIS_HEADER hiredis)
target_include_directories(server PUBLIC ${HIREDIS_HEADER})

find_library(HIREDIS_LIB hiredis)
target_link_libraries(server ${HIREDIS_LIB})

# <------------ add redis-plus-plus dependency -------------->
# NOTE: this should be *sw* NOT *redis++*
find_path(REDIS_PLUS_PLUS_HEADER sw)
target_include_directories(server PUBLIC ${REDIS_PLUS_PLUS_HEADER})

find_library(REDIS_PLUS_PLUS_LIB redis++)
target_link_libraries(server ${REDIS_PLUS_PLUS_LIB})


