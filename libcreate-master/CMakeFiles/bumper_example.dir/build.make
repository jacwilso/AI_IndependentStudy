# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 2.8

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
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/jacwilso/Documents/CSCI404/libcreate-master

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/jacwilso/Documents/CSCI404/libcreate-master

# Include any dependencies generated for this target.
include CMakeFiles/bumper_example.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/bumper_example.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/bumper_example.dir/flags.make

CMakeFiles/bumper_example.dir/examples/bumper_example.cpp.o: CMakeFiles/bumper_example.dir/flags.make
CMakeFiles/bumper_example.dir/examples/bumper_example.cpp.o: examples/bumper_example.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/jacwilso/Documents/CSCI404/libcreate-master/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/bumper_example.dir/examples/bumper_example.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/bumper_example.dir/examples/bumper_example.cpp.o -c /home/jacwilso/Documents/CSCI404/libcreate-master/examples/bumper_example.cpp

CMakeFiles/bumper_example.dir/examples/bumper_example.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/bumper_example.dir/examples/bumper_example.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/jacwilso/Documents/CSCI404/libcreate-master/examples/bumper_example.cpp > CMakeFiles/bumper_example.dir/examples/bumper_example.cpp.i

CMakeFiles/bumper_example.dir/examples/bumper_example.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/bumper_example.dir/examples/bumper_example.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/jacwilso/Documents/CSCI404/libcreate-master/examples/bumper_example.cpp -o CMakeFiles/bumper_example.dir/examples/bumper_example.cpp.s

CMakeFiles/bumper_example.dir/examples/bumper_example.cpp.o.requires:
.PHONY : CMakeFiles/bumper_example.dir/examples/bumper_example.cpp.o.requires

CMakeFiles/bumper_example.dir/examples/bumper_example.cpp.o.provides: CMakeFiles/bumper_example.dir/examples/bumper_example.cpp.o.requires
	$(MAKE) -f CMakeFiles/bumper_example.dir/build.make CMakeFiles/bumper_example.dir/examples/bumper_example.cpp.o.provides.build
.PHONY : CMakeFiles/bumper_example.dir/examples/bumper_example.cpp.o.provides

CMakeFiles/bumper_example.dir/examples/bumper_example.cpp.o.provides.build: CMakeFiles/bumper_example.dir/examples/bumper_example.cpp.o

# Object files for target bumper_example
bumper_example_OBJECTS = \
"CMakeFiles/bumper_example.dir/examples/bumper_example.cpp.o"

# External object files for target bumper_example
bumper_example_EXTERNAL_OBJECTS =

bumper_example: CMakeFiles/bumper_example.dir/examples/bumper_example.cpp.o
bumper_example: /usr/lib/libboost_system-mt.so
bumper_example: /usr/lib/libboost_thread-mt.so
bumper_example: libcreate.a
bumper_example: /usr/lib/libboost_system-mt.so
bumper_example: /usr/lib/libboost_thread-mt.so
bumper_example: CMakeFiles/bumper_example.dir/build.make
bumper_example: CMakeFiles/bumper_example.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX executable bumper_example"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/bumper_example.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/bumper_example.dir/build: bumper_example
.PHONY : CMakeFiles/bumper_example.dir/build

CMakeFiles/bumper_example.dir/requires: CMakeFiles/bumper_example.dir/examples/bumper_example.cpp.o.requires
.PHONY : CMakeFiles/bumper_example.dir/requires

CMakeFiles/bumper_example.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/bumper_example.dir/cmake_clean.cmake
.PHONY : CMakeFiles/bumper_example.dir/clean

CMakeFiles/bumper_example.dir/depend:
	cd /home/jacwilso/Documents/CSCI404/libcreate-master && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/jacwilso/Documents/CSCI404/libcreate-master /home/jacwilso/Documents/CSCI404/libcreate-master /home/jacwilso/Documents/CSCI404/libcreate-master /home/jacwilso/Documents/CSCI404/libcreate-master /home/jacwilso/Documents/CSCI404/libcreate-master/CMakeFiles/bumper_example.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/bumper_example.dir/depend

