# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.8

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /home/ben/usr/share/clion-2017.2.2/bin/cmake/bin/cmake

# The command to remove a file.
RM = /home/ben/usr/share/clion-2017.2.2/bin/cmake/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/ben/CLionProjects/sat-solver

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/ben/CLionProjects/sat-solver/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/sat_solver.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/sat_solver.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/sat_solver.dir/flags.make

CMakeFiles/sat_solver.dir/main.cpp.o: CMakeFiles/sat_solver.dir/flags.make
CMakeFiles/sat_solver.dir/main.cpp.o: ../main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ben/CLionProjects/sat-solver/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/sat_solver.dir/main.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/sat_solver.dir/main.cpp.o -c /home/ben/CLionProjects/sat-solver/main.cpp

CMakeFiles/sat_solver.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/sat_solver.dir/main.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ben/CLionProjects/sat-solver/main.cpp > CMakeFiles/sat_solver.dir/main.cpp.i

CMakeFiles/sat_solver.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/sat_solver.dir/main.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ben/CLionProjects/sat-solver/main.cpp -o CMakeFiles/sat_solver.dir/main.cpp.s

CMakeFiles/sat_solver.dir/main.cpp.o.requires:

.PHONY : CMakeFiles/sat_solver.dir/main.cpp.o.requires

CMakeFiles/sat_solver.dir/main.cpp.o.provides: CMakeFiles/sat_solver.dir/main.cpp.o.requires
	$(MAKE) -f CMakeFiles/sat_solver.dir/build.make CMakeFiles/sat_solver.dir/main.cpp.o.provides.build
.PHONY : CMakeFiles/sat_solver.dir/main.cpp.o.provides

CMakeFiles/sat_solver.dir/main.cpp.o.provides.build: CMakeFiles/sat_solver.dir/main.cpp.o


CMakeFiles/sat_solver.dir/src/formulas/formula.cpp.o: CMakeFiles/sat_solver.dir/flags.make
CMakeFiles/sat_solver.dir/src/formulas/formula.cpp.o: ../src/formulas/formula.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ben/CLionProjects/sat-solver/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/sat_solver.dir/src/formulas/formula.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/sat_solver.dir/src/formulas/formula.cpp.o -c /home/ben/CLionProjects/sat-solver/src/formulas/formula.cpp

CMakeFiles/sat_solver.dir/src/formulas/formula.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/sat_solver.dir/src/formulas/formula.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ben/CLionProjects/sat-solver/src/formulas/formula.cpp > CMakeFiles/sat_solver.dir/src/formulas/formula.cpp.i

CMakeFiles/sat_solver.dir/src/formulas/formula.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/sat_solver.dir/src/formulas/formula.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ben/CLionProjects/sat-solver/src/formulas/formula.cpp -o CMakeFiles/sat_solver.dir/src/formulas/formula.cpp.s

CMakeFiles/sat_solver.dir/src/formulas/formula.cpp.o.requires:

.PHONY : CMakeFiles/sat_solver.dir/src/formulas/formula.cpp.o.requires

CMakeFiles/sat_solver.dir/src/formulas/formula.cpp.o.provides: CMakeFiles/sat_solver.dir/src/formulas/formula.cpp.o.requires
	$(MAKE) -f CMakeFiles/sat_solver.dir/build.make CMakeFiles/sat_solver.dir/src/formulas/formula.cpp.o.provides.build
.PHONY : CMakeFiles/sat_solver.dir/src/formulas/formula.cpp.o.provides

CMakeFiles/sat_solver.dir/src/formulas/formula.cpp.o.provides.build: CMakeFiles/sat_solver.dir/src/formulas/formula.cpp.o


CMakeFiles/sat_solver.dir/src/utils/llist.cpp.o: CMakeFiles/sat_solver.dir/flags.make
CMakeFiles/sat_solver.dir/src/utils/llist.cpp.o: ../src/utils/llist.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ben/CLionProjects/sat-solver/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/sat_solver.dir/src/utils/llist.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/sat_solver.dir/src/utils/llist.cpp.o -c /home/ben/CLionProjects/sat-solver/src/utils/llist.cpp

CMakeFiles/sat_solver.dir/src/utils/llist.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/sat_solver.dir/src/utils/llist.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ben/CLionProjects/sat-solver/src/utils/llist.cpp > CMakeFiles/sat_solver.dir/src/utils/llist.cpp.i

CMakeFiles/sat_solver.dir/src/utils/llist.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/sat_solver.dir/src/utils/llist.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ben/CLionProjects/sat-solver/src/utils/llist.cpp -o CMakeFiles/sat_solver.dir/src/utils/llist.cpp.s

CMakeFiles/sat_solver.dir/src/utils/llist.cpp.o.requires:

.PHONY : CMakeFiles/sat_solver.dir/src/utils/llist.cpp.o.requires

CMakeFiles/sat_solver.dir/src/utils/llist.cpp.o.provides: CMakeFiles/sat_solver.dir/src/utils/llist.cpp.o.requires
	$(MAKE) -f CMakeFiles/sat_solver.dir/build.make CMakeFiles/sat_solver.dir/src/utils/llist.cpp.o.provides.build
.PHONY : CMakeFiles/sat_solver.dir/src/utils/llist.cpp.o.provides

CMakeFiles/sat_solver.dir/src/utils/llist.cpp.o.provides.build: CMakeFiles/sat_solver.dir/src/utils/llist.cpp.o


CMakeFiles/sat_solver.dir/src/utils/prims.cpp.o: CMakeFiles/sat_solver.dir/flags.make
CMakeFiles/sat_solver.dir/src/utils/prims.cpp.o: ../src/utils/prims.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ben/CLionProjects/sat-solver/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/sat_solver.dir/src/utils/prims.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/sat_solver.dir/src/utils/prims.cpp.o -c /home/ben/CLionProjects/sat-solver/src/utils/prims.cpp

CMakeFiles/sat_solver.dir/src/utils/prims.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/sat_solver.dir/src/utils/prims.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ben/CLionProjects/sat-solver/src/utils/prims.cpp > CMakeFiles/sat_solver.dir/src/utils/prims.cpp.i

CMakeFiles/sat_solver.dir/src/utils/prims.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/sat_solver.dir/src/utils/prims.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ben/CLionProjects/sat-solver/src/utils/prims.cpp -o CMakeFiles/sat_solver.dir/src/utils/prims.cpp.s

CMakeFiles/sat_solver.dir/src/utils/prims.cpp.o.requires:

.PHONY : CMakeFiles/sat_solver.dir/src/utils/prims.cpp.o.requires

CMakeFiles/sat_solver.dir/src/utils/prims.cpp.o.provides: CMakeFiles/sat_solver.dir/src/utils/prims.cpp.o.requires
	$(MAKE) -f CMakeFiles/sat_solver.dir/build.make CMakeFiles/sat_solver.dir/src/utils/prims.cpp.o.provides.build
.PHONY : CMakeFiles/sat_solver.dir/src/utils/prims.cpp.o.provides

CMakeFiles/sat_solver.dir/src/utils/prims.cpp.o.provides.build: CMakeFiles/sat_solver.dir/src/utils/prims.cpp.o


CMakeFiles/sat_solver.dir/src/utils/vartree.cpp.o: CMakeFiles/sat_solver.dir/flags.make
CMakeFiles/sat_solver.dir/src/utils/vartree.cpp.o: ../src/utils/vartree.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ben/CLionProjects/sat-solver/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object CMakeFiles/sat_solver.dir/src/utils/vartree.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/sat_solver.dir/src/utils/vartree.cpp.o -c /home/ben/CLionProjects/sat-solver/src/utils/vartree.cpp

CMakeFiles/sat_solver.dir/src/utils/vartree.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/sat_solver.dir/src/utils/vartree.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ben/CLionProjects/sat-solver/src/utils/vartree.cpp > CMakeFiles/sat_solver.dir/src/utils/vartree.cpp.i

CMakeFiles/sat_solver.dir/src/utils/vartree.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/sat_solver.dir/src/utils/vartree.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ben/CLionProjects/sat-solver/src/utils/vartree.cpp -o CMakeFiles/sat_solver.dir/src/utils/vartree.cpp.s

CMakeFiles/sat_solver.dir/src/utils/vartree.cpp.o.requires:

.PHONY : CMakeFiles/sat_solver.dir/src/utils/vartree.cpp.o.requires

CMakeFiles/sat_solver.dir/src/utils/vartree.cpp.o.provides: CMakeFiles/sat_solver.dir/src/utils/vartree.cpp.o.requires
	$(MAKE) -f CMakeFiles/sat_solver.dir/build.make CMakeFiles/sat_solver.dir/src/utils/vartree.cpp.o.provides.build
.PHONY : CMakeFiles/sat_solver.dir/src/utils/vartree.cpp.o.provides

CMakeFiles/sat_solver.dir/src/utils/vartree.cpp.o.provides.build: CMakeFiles/sat_solver.dir/src/utils/vartree.cpp.o


# Object files for target sat_solver
sat_solver_OBJECTS = \
"CMakeFiles/sat_solver.dir/main.cpp.o" \
"CMakeFiles/sat_solver.dir/src/formulas/formula.cpp.o" \
"CMakeFiles/sat_solver.dir/src/utils/llist.cpp.o" \
"CMakeFiles/sat_solver.dir/src/utils/prims.cpp.o" \
"CMakeFiles/sat_solver.dir/src/utils/vartree.cpp.o"

# External object files for target sat_solver
sat_solver_EXTERNAL_OBJECTS =

sat_solver: CMakeFiles/sat_solver.dir/main.cpp.o
sat_solver: CMakeFiles/sat_solver.dir/src/formulas/formula.cpp.o
sat_solver: CMakeFiles/sat_solver.dir/src/utils/llist.cpp.o
sat_solver: CMakeFiles/sat_solver.dir/src/utils/prims.cpp.o
sat_solver: CMakeFiles/sat_solver.dir/src/utils/vartree.cpp.o
sat_solver: CMakeFiles/sat_solver.dir/build.make
sat_solver: CMakeFiles/sat_solver.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/ben/CLionProjects/sat-solver/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Linking CXX executable sat_solver"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/sat_solver.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/sat_solver.dir/build: sat_solver

.PHONY : CMakeFiles/sat_solver.dir/build

CMakeFiles/sat_solver.dir/requires: CMakeFiles/sat_solver.dir/main.cpp.o.requires
CMakeFiles/sat_solver.dir/requires: CMakeFiles/sat_solver.dir/src/formulas/formula.cpp.o.requires
CMakeFiles/sat_solver.dir/requires: CMakeFiles/sat_solver.dir/src/utils/llist.cpp.o.requires
CMakeFiles/sat_solver.dir/requires: CMakeFiles/sat_solver.dir/src/utils/prims.cpp.o.requires
CMakeFiles/sat_solver.dir/requires: CMakeFiles/sat_solver.dir/src/utils/vartree.cpp.o.requires

.PHONY : CMakeFiles/sat_solver.dir/requires

CMakeFiles/sat_solver.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/sat_solver.dir/cmake_clean.cmake
.PHONY : CMakeFiles/sat_solver.dir/clean

CMakeFiles/sat_solver.dir/depend:
	cd /home/ben/CLionProjects/sat-solver/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/ben/CLionProjects/sat-solver /home/ben/CLionProjects/sat-solver /home/ben/CLionProjects/sat-solver/cmake-build-debug /home/ben/CLionProjects/sat-solver/cmake-build-debug /home/ben/CLionProjects/sat-solver/cmake-build-debug/CMakeFiles/sat_solver.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/sat_solver.dir/depend
