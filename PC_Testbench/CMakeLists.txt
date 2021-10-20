cmake_minimum_required(VERSION 3.10)

# set the project name
project(PC_Testbench)

# set directories
set(HEADER_DIR inc/)
set(SOURCE_DIR src/)

target_include_directories(PC_Testbench PRIVATE
	${HEADER_DIR})

# add executable
add_executable(PC_Testbench
	${SOURCE_DIR}/main.c
	${SOURCE_DIR}/wav.c
	${INLCUDE_DIR}/wav.h
	)
https://stackoverflow.com/questions/13703647/how-to-properly-add-include-directories-with-cmake
