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

# Utility rule file for gitversion.

# Include the progress variables for this target.
include tools/CMakeFiles/gitversion.dir/progress.make

tools/CMakeFiles/gitversion:
	cd /home/wei/CLionProjects/Features/dg/tools && sh /home/wei/CLionProjects/Features/dg/tools/git-version.sh

gitversion: tools/CMakeFiles/gitversion
gitversion: tools/CMakeFiles/gitversion.dir/build.make

.PHONY : gitversion

# Rule to build all files generated by this target.
tools/CMakeFiles/gitversion.dir/build: gitversion

.PHONY : tools/CMakeFiles/gitversion.dir/build

tools/CMakeFiles/gitversion.dir/clean:
	cd /home/wei/CLionProjects/Features/dg/tools && $(CMAKE_COMMAND) -P CMakeFiles/gitversion.dir/cmake_clean.cmake
.PHONY : tools/CMakeFiles/gitversion.dir/clean

tools/CMakeFiles/gitversion.dir/depend:
	cd /home/wei/CLionProjects/Features/dg && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/wei/CLionProjects/Features/dg /home/wei/CLionProjects/Features/dg/tools /home/wei/CLionProjects/Features/dg /home/wei/CLionProjects/Features/dg/tools /home/wei/CLionProjects/Features/dg/tools/CMakeFiles/gitversion.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : tools/CMakeFiles/gitversion.dir/depend

