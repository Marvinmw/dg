# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.15

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
CMAKE_COMMAND = /home/wei/ide/clion-2019.3/bin/cmake/linux/bin/cmake

# The command to remove a file.
RM = /home/wei/ide/clion-2019.3/bin/cmake/linux/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/wei/CLionProjects/Features/dg

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/wei/CLionProjects/Features/dg

# Include any dependencies generated for this target.
include tests/CMakeFiles/dg-test.dir/depend.make

# Include the progress variables for this target.
include tests/CMakeFiles/dg-test.dir/progress.make

# Include the compile flags for this target's objects.
include tests/CMakeFiles/dg-test.dir/flags.make

tests/CMakeFiles/dg-test.dir/dg-test.cpp.o: tests/CMakeFiles/dg-test.dir/flags.make
tests/CMakeFiles/dg-test.dir/dg-test.cpp.o: tests/dg-test.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/wei/CLionProjects/Features/dg/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object tests/CMakeFiles/dg-test.dir/dg-test.cpp.o"
	cd /home/wei/CLionProjects/Features/dg/tests && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/dg-test.dir/dg-test.cpp.o -c /home/wei/CLionProjects/Features/dg/tests/dg-test.cpp

tests/CMakeFiles/dg-test.dir/dg-test.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/dg-test.dir/dg-test.cpp.i"
	cd /home/wei/CLionProjects/Features/dg/tests && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/wei/CLionProjects/Features/dg/tests/dg-test.cpp > CMakeFiles/dg-test.dir/dg-test.cpp.i

tests/CMakeFiles/dg-test.dir/dg-test.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/dg-test.dir/dg-test.cpp.s"
	cd /home/wei/CLionProjects/Features/dg/tests && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/wei/CLionProjects/Features/dg/tests/dg-test.cpp -o CMakeFiles/dg-test.dir/dg-test.cpp.s

# Object files for target dg-test
dg__test_OBJECTS = \
"CMakeFiles/dg-test.dir/dg-test.cpp.o"

# External object files for target dg-test
dg__test_EXTERNAL_OBJECTS =

tests/dg-test: tests/CMakeFiles/dg-test.dir/dg-test.cpp.o
tests/dg-test: tests/CMakeFiles/dg-test.dir/build.make
tests/dg-test: tests/CMakeFiles/dg-test.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/wei/CLionProjects/Features/dg/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable dg-test"
	cd /home/wei/CLionProjects/Features/dg/tests && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/dg-test.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
tests/CMakeFiles/dg-test.dir/build: tests/dg-test

.PHONY : tests/CMakeFiles/dg-test.dir/build

tests/CMakeFiles/dg-test.dir/clean:
	cd /home/wei/CLionProjects/Features/dg/tests && $(CMAKE_COMMAND) -P CMakeFiles/dg-test.dir/cmake_clean.cmake
.PHONY : tests/CMakeFiles/dg-test.dir/clean

tests/CMakeFiles/dg-test.dir/depend:
	cd /home/wei/CLionProjects/Features/dg && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/wei/CLionProjects/Features/dg /home/wei/CLionProjects/Features/dg/tests /home/wei/CLionProjects/Features/dg /home/wei/CLionProjects/Features/dg/tests /home/wei/CLionProjects/Features/dg/tests/CMakeFiles/dg-test.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : tests/CMakeFiles/dg-test.dir/depend

