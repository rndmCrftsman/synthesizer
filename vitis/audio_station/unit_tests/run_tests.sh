#!/bin/bash
#$(shopt -s extglob)

g++ --std=c++14 -o unit_tests $(find . -type f ! \( -name "test_main.cpp" -o ! -name "*.cpp" \)) test_main.o
./unit_tests $@
