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
include lib/CMakeFiles/PTA.dir/depend.make

# Include the progress variables for this target.
include lib/CMakeFiles/PTA.dir/progress.make

# Include the compile flags for this target's objects.
include lib/CMakeFiles/PTA.dir/flags.make

lib/CMakeFiles/PTA.dir/analysis/PointsTo/Pointer.cpp.o: lib/CMakeFiles/PTA.dir/flags.make
lib/CMakeFiles/PTA.dir/analysis/PointsTo/Pointer.cpp.o: lib/analysis/PointsTo/Pointer.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/wei/CLionProjects/Features/dg/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object lib/CMakeFiles/PTA.dir/analysis/PointsTo/Pointer.cpp.o"
	cd /home/wei/CLionProjects/Features/dg/lib && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/PTA.dir/analysis/PointsTo/Pointer.cpp.o -c /home/wei/CLionProjects/Features/dg/lib/analysis/PointsTo/Pointer.cpp

lib/CMakeFiles/PTA.dir/analysis/PointsTo/Pointer.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/PTA.dir/analysis/PointsTo/Pointer.cpp.i"
	cd /home/wei/CLionProjects/Features/dg/lib && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/wei/CLionProjects/Features/dg/lib/analysis/PointsTo/Pointer.cpp > CMakeFiles/PTA.dir/analysis/PointsTo/Pointer.cpp.i

lib/CMakeFiles/PTA.dir/analysis/PointsTo/Pointer.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/PTA.dir/analysis/PointsTo/Pointer.cpp.s"
	cd /home/wei/CLionProjects/Features/dg/lib && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/wei/CLionProjects/Features/dg/lib/analysis/PointsTo/Pointer.cpp -o CMakeFiles/PTA.dir/analysis/PointsTo/Pointer.cpp.s

lib/CMakeFiles/PTA.dir/analysis/PointsTo/PointerAnalysis.cpp.o: lib/CMakeFiles/PTA.dir/flags.make
lib/CMakeFiles/PTA.dir/analysis/PointsTo/PointerAnalysis.cpp.o: lib/analysis/PointsTo/PointerAnalysis.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/wei/CLionProjects/Features/dg/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object lib/CMakeFiles/PTA.dir/analysis/PointsTo/PointerAnalysis.cpp.o"
	cd /home/wei/CLionProjects/Features/dg/lib && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/PTA.dir/analysis/PointsTo/PointerAnalysis.cpp.o -c /home/wei/CLionProjects/Features/dg/lib/analysis/PointsTo/PointerAnalysis.cpp

lib/CMakeFiles/PTA.dir/analysis/PointsTo/PointerAnalysis.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/PTA.dir/analysis/PointsTo/PointerAnalysis.cpp.i"
	cd /home/wei/CLionProjects/Features/dg/lib && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/wei/CLionProjects/Features/dg/lib/analysis/PointsTo/PointerAnalysis.cpp > CMakeFiles/PTA.dir/analysis/PointsTo/PointerAnalysis.cpp.i

lib/CMakeFiles/PTA.dir/analysis/PointsTo/PointerAnalysis.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/PTA.dir/analysis/PointsTo/PointerAnalysis.cpp.s"
	cd /home/wei/CLionProjects/Features/dg/lib && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/wei/CLionProjects/Features/dg/lib/analysis/PointsTo/PointerAnalysis.cpp -o CMakeFiles/PTA.dir/analysis/PointsTo/PointerAnalysis.cpp.s

lib/CMakeFiles/PTA.dir/analysis/PointsTo/PointerGraphValidator.cpp.o: lib/CMakeFiles/PTA.dir/flags.make
lib/CMakeFiles/PTA.dir/analysis/PointsTo/PointerGraphValidator.cpp.o: lib/analysis/PointsTo/PointerGraphValidator.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/wei/CLionProjects/Features/dg/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object lib/CMakeFiles/PTA.dir/analysis/PointsTo/PointerGraphValidator.cpp.o"
	cd /home/wei/CLionProjects/Features/dg/lib && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/PTA.dir/analysis/PointsTo/PointerGraphValidator.cpp.o -c /home/wei/CLionProjects/Features/dg/lib/analysis/PointsTo/PointerGraphValidator.cpp

lib/CMakeFiles/PTA.dir/analysis/PointsTo/PointerGraphValidator.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/PTA.dir/analysis/PointsTo/PointerGraphValidator.cpp.i"
	cd /home/wei/CLionProjects/Features/dg/lib && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/wei/CLionProjects/Features/dg/lib/analysis/PointsTo/PointerGraphValidator.cpp > CMakeFiles/PTA.dir/analysis/PointsTo/PointerGraphValidator.cpp.i

lib/CMakeFiles/PTA.dir/analysis/PointsTo/PointerGraphValidator.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/PTA.dir/analysis/PointsTo/PointerGraphValidator.cpp.s"
	cd /home/wei/CLionProjects/Features/dg/lib && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/wei/CLionProjects/Features/dg/lib/analysis/PointsTo/PointerGraphValidator.cpp -o CMakeFiles/PTA.dir/analysis/PointsTo/PointerGraphValidator.cpp.s

lib/CMakeFiles/PTA.dir/analysis/PointsTo/PointsToSet.cpp.o: lib/CMakeFiles/PTA.dir/flags.make
lib/CMakeFiles/PTA.dir/analysis/PointsTo/PointsToSet.cpp.o: lib/analysis/PointsTo/PointsToSet.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/wei/CLionProjects/Features/dg/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object lib/CMakeFiles/PTA.dir/analysis/PointsTo/PointsToSet.cpp.o"
	cd /home/wei/CLionProjects/Features/dg/lib && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/PTA.dir/analysis/PointsTo/PointsToSet.cpp.o -c /home/wei/CLionProjects/Features/dg/lib/analysis/PointsTo/PointsToSet.cpp

lib/CMakeFiles/PTA.dir/analysis/PointsTo/PointsToSet.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/PTA.dir/analysis/PointsTo/PointsToSet.cpp.i"
	cd /home/wei/CLionProjects/Features/dg/lib && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/wei/CLionProjects/Features/dg/lib/analysis/PointsTo/PointsToSet.cpp > CMakeFiles/PTA.dir/analysis/PointsTo/PointsToSet.cpp.i

lib/CMakeFiles/PTA.dir/analysis/PointsTo/PointsToSet.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/PTA.dir/analysis/PointsTo/PointsToSet.cpp.s"
	cd /home/wei/CLionProjects/Features/dg/lib && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/wei/CLionProjects/Features/dg/lib/analysis/PointsTo/PointsToSet.cpp -o CMakeFiles/PTA.dir/analysis/PointsTo/PointsToSet.cpp.s

# Object files for target PTA
PTA_OBJECTS = \
"CMakeFiles/PTA.dir/analysis/PointsTo/Pointer.cpp.o" \
"CMakeFiles/PTA.dir/analysis/PointsTo/PointerAnalysis.cpp.o" \
"CMakeFiles/PTA.dir/analysis/PointsTo/PointerGraphValidator.cpp.o" \
"CMakeFiles/PTA.dir/analysis/PointsTo/PointsToSet.cpp.o"

# External object files for target PTA
PTA_EXTERNAL_OBJECTS =

lib/libPTA.so: lib/CMakeFiles/PTA.dir/analysis/PointsTo/Pointer.cpp.o
lib/libPTA.so: lib/CMakeFiles/PTA.dir/analysis/PointsTo/PointerAnalysis.cpp.o
lib/libPTA.so: lib/CMakeFiles/PTA.dir/analysis/PointsTo/PointerGraphValidator.cpp.o
lib/libPTA.so: lib/CMakeFiles/PTA.dir/analysis/PointsTo/PointsToSet.cpp.o
lib/libPTA.so: lib/CMakeFiles/PTA.dir/build.make
lib/libPTA.so: lib/libDGAnalysis.so
lib/libPTA.so: lib/CMakeFiles/PTA.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/wei/CLionProjects/Features/dg/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Linking CXX shared library libPTA.so"
	cd /home/wei/CLionProjects/Features/dg/lib && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/PTA.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
lib/CMakeFiles/PTA.dir/build: lib/libPTA.so

.PHONY : lib/CMakeFiles/PTA.dir/build

lib/CMakeFiles/PTA.dir/clean:
	cd /home/wei/CLionProjects/Features/dg/lib && $(CMAKE_COMMAND) -P CMakeFiles/PTA.dir/cmake_clean.cmake
.PHONY : lib/CMakeFiles/PTA.dir/clean

lib/CMakeFiles/PTA.dir/depend:
	cd /home/wei/CLionProjects/Features/dg && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/wei/CLionProjects/Features/dg /home/wei/CLionProjects/Features/dg/lib /home/wei/CLionProjects/Features/dg /home/wei/CLionProjects/Features/dg/lib /home/wei/CLionProjects/Features/dg/lib/CMakeFiles/PTA.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : lib/CMakeFiles/PTA.dir/depend

