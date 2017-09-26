cmake_minimum_required(VERSION 3.8)
project(sat_solver)

include_directories(src)
set(GTEST_SRC_DIR tests/lib/gtest)
set(CMAKE_CXX_STANDARD 11)
set(SOURCE_FILES main.cpp src/formulas/formula.cpp src/formulas/formula.hpp src/utils/llist.cpp src/utils/llist.hpp src/utils/prims.hpp src/utils/vartree.cpp src/utils/vartree.hpp)
set(UTILS_TEST_FILES  tests/utils_tests/util_tests_main.cpp tests/utils_tests/vartree_test.cpp
        src/utils/vartree.cpp src/utils/llist.cpp)

add_library(codeToTest ${UTILS_TEST_FILES})

add_executable(sat_solver ${SOURCE_FILES})
add_executable(utils_tests ${UTILS_TEST_FILES})
target_link_libraries(utils_tests gtest gtest_main rt pthread codeToTest)