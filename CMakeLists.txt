cmake_minimum_required(VERSION 3.8)
project(sat_solver)

set(CMAKE_CXX_STANDARD 11)

set(SOURCE_FILES main.cpp src/formulas/formula.cpp src/formulas/formula.hpp src/utils/llist.cpp src/utils/llist.hpp src/utils/prims.hpp src/utils/vartree.cpp src/utils/vartree.hpp)
add_executable(sat_solver ${SOURCE_FILES})