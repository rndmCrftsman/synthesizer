#!/bin/bash
g++ --std=c++14 -I../../audio_station_overview_wrapper/export/audio_station_overview_wrapper/sw/audio_station_overview_wrapper/standalone_ps7_cortexa9_0/bspinclude/include/ \
-o unit_tests $(find . -type f ! \( -name "test_main.cpp" -o ! -name "*.cpp" \)) \
$(find ../src/ -type f ! \( -name "main.cpp" -o -name "audio_subsystem.cpp" -o ! -name "*.cpp" \)) \
test_main.o \
-DUNIT_TEST

./unit_tests $@
