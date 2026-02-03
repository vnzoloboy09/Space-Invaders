cmake_minimum_required(VERSION 3.10)

project(ProjectName)

# FIND PACKAGE 
# Ex:
find_package(sdl3 CONFIG REQUIRED)

file(GLOB_RECURSE SOURCES "src/*.cpp")
add_executable(main ${SOURCES})

# LINK LIB
# Ex:
target_link_libraries(main PRIVATE SDL3::SDL3)
