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
include CMakeFiles/create.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/create.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/create.dir/flags.make

CMakeFiles/create.dir/src/create.cpp.o: CMakeFiles/create.dir/flags.make
CMakeFiles/create.dir/src/create.cpp.o: src/create.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/jacwilso/Documents/CSCI404/libcreate-master/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/create.dir/src/create.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/create.dir/src/create.cpp.o -c /home/jacwilso/Documents/CSCI404/libcreate-master/src/create.cpp

CMakeFiles/create.dir/src/create.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/create.dir/src/create.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/jacwilso/Documents/CSCI404/libcreate-master/src/create.cpp > CMakeFiles/create.dir/src/create.cpp.i

CMakeFiles/create.dir/src/create.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/create.dir/src/create.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/jacwilso/Documents/CSCI404/libcreate-master/src/create.cpp -o CMakeFiles/create.dir/src/create.cpp.s

CMakeFiles/create.dir/src/create.cpp.o.requires:
.PHONY : CMakeFiles/create.dir/src/create.cpp.o.requires

CMakeFiles/create.dir/src/create.cpp.o.provides: CMakeFiles/create.dir/src/create.cpp.o.requires
	$(MAKE) -f CMakeFiles/create.dir/build.make CMakeFiles/create.dir/src/create.cpp.o.provides.build
.PHONY : CMakeFiles/create.dir/src/create.cpp.o.provides

CMakeFiles/create.dir/src/create.cpp.o.provides.build: CMakeFiles/create.dir/src/create.cpp.o

CMakeFiles/create.dir/src/serial.cpp.o: CMakeFiles/create.dir/flags.make
CMakeFiles/create.dir/src/serial.cpp.o: src/serial.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/jacwilso/Documents/CSCI404/libcreate-master/CMakeFiles $(CMAKE_PROGRESS_2)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/create.dir/src/serial.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/create.dir/src/serial.cpp.o -c /home/jacwilso/Documents/CSCI404/libcreate-master/src/serial.cpp

CMakeFiles/create.dir/src/serial.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/create.dir/src/serial.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/jacwilso/Documents/CSCI404/libcreate-master/src/serial.cpp > CMakeFiles/create.dir/src/serial.cpp.i

CMakeFiles/create.dir/src/serial.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/create.dir/src/serial.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/jacwilso/Documents/CSCI404/libcreate-master/src/serial.cpp -o CMakeFiles/create.dir/src/serial.cpp.s

CMakeFiles/create.dir/src/serial.cpp.o.requires:
.PHONY : CMakeFiles/create.dir/src/serial.cpp.o.requires

CMakeFiles/create.dir/src/serial.cpp.o.provides: CMakeFiles/create.dir/src/serial.cpp.o.requires
	$(MAKE) -f CMakeFiles/create.dir/build.make CMakeFiles/create.dir/src/serial.cpp.o.provides.build
.PHONY : CMakeFiles/create.dir/src/serial.cpp.o.provides

CMakeFiles/create.dir/src/serial.cpp.o.provides.build: CMakeFiles/create.dir/src/serial.cpp.o

CMakeFiles/create.dir/src/serial_stream.cpp.o: CMakeFiles/create.dir/flags.make
CMakeFiles/create.dir/src/serial_stream.cpp.o: src/serial_stream.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/jacwilso/Documents/CSCI404/libcreate-master/CMakeFiles $(CMAKE_PROGRESS_3)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/create.dir/src/serial_stream.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/create.dir/src/serial_stream.cpp.o -c /home/jacwilso/Documents/CSCI404/libcreate-master/src/serial_stream.cpp

CMakeFiles/create.dir/src/serial_stream.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/create.dir/src/serial_stream.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/jacwilso/Documents/CSCI404/libcreate-master/src/serial_stream.cpp > CMakeFiles/create.dir/src/serial_stream.cpp.i

CMakeFiles/create.dir/src/serial_stream.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/create.dir/src/serial_stream.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/jacwilso/Documents/CSCI404/libcreate-master/src/serial_stream.cpp -o CMakeFiles/create.dir/src/serial_stream.cpp.s

CMakeFiles/create.dir/src/serial_stream.cpp.o.requires:
.PHONY : CMakeFiles/create.dir/src/serial_stream.cpp.o.requires

CMakeFiles/create.dir/src/serial_stream.cpp.o.provides: CMakeFiles/create.dir/src/serial_stream.cpp.o.requires
	$(MAKE) -f CMakeFiles/create.dir/build.make CMakeFiles/create.dir/src/serial_stream.cpp.o.provides.build
.PHONY : CMakeFiles/create.dir/src/serial_stream.cpp.o.provides

CMakeFiles/create.dir/src/serial_stream.cpp.o.provides.build: CMakeFiles/create.dir/src/serial_stream.cpp.o

CMakeFiles/create.dir/src/serial_query.cpp.o: CMakeFiles/create.dir/flags.make
CMakeFiles/create.dir/src/serial_query.cpp.o: src/serial_query.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/jacwilso/Documents/CSCI404/libcreate-master/CMakeFiles $(CMAKE_PROGRESS_4)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/create.dir/src/serial_query.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/create.dir/src/serial_query.cpp.o -c /home/jacwilso/Documents/CSCI404/libcreate-master/src/serial_query.cpp

CMakeFiles/create.dir/src/serial_query.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/create.dir/src/serial_query.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/jacwilso/Documents/CSCI404/libcreate-master/src/serial_query.cpp > CMakeFiles/create.dir/src/serial_query.cpp.i

CMakeFiles/create.dir/src/serial_query.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/create.dir/src/serial_query.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/jacwilso/Documents/CSCI404/libcreate-master/src/serial_query.cpp -o CMakeFiles/create.dir/src/serial_query.cpp.s

CMakeFiles/create.dir/src/serial_query.cpp.o.requires:
.PHONY : CMakeFiles/create.dir/src/serial_query.cpp.o.requires

CMakeFiles/create.dir/src/serial_query.cpp.o.provides: CMakeFiles/create.dir/src/serial_query.cpp.o.requires
	$(MAKE) -f CMakeFiles/create.dir/build.make CMakeFiles/create.dir/src/serial_query.cpp.o.provides.build
.PHONY : CMakeFiles/create.dir/src/serial_query.cpp.o.provides

CMakeFiles/create.dir/src/serial_query.cpp.o.provides.build: CMakeFiles/create.dir/src/serial_query.cpp.o

CMakeFiles/create.dir/src/data.cpp.o: CMakeFiles/create.dir/flags.make
CMakeFiles/create.dir/src/data.cpp.o: src/data.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/jacwilso/Documents/CSCI404/libcreate-master/CMakeFiles $(CMAKE_PROGRESS_5)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/create.dir/src/data.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/create.dir/src/data.cpp.o -c /home/jacwilso/Documents/CSCI404/libcreate-master/src/data.cpp

CMakeFiles/create.dir/src/data.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/create.dir/src/data.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/jacwilso/Documents/CSCI404/libcreate-master/src/data.cpp > CMakeFiles/create.dir/src/data.cpp.i

CMakeFiles/create.dir/src/data.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/create.dir/src/data.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/jacwilso/Documents/CSCI404/libcreate-master/src/data.cpp -o CMakeFiles/create.dir/src/data.cpp.s

CMakeFiles/create.dir/src/data.cpp.o.requires:
.PHONY : CMakeFiles/create.dir/src/data.cpp.o.requires

CMakeFiles/create.dir/src/data.cpp.o.provides: CMakeFiles/create.dir/src/data.cpp.o.requires
	$(MAKE) -f CMakeFiles/create.dir/build.make CMakeFiles/create.dir/src/data.cpp.o.provides.build
.PHONY : CMakeFiles/create.dir/src/data.cpp.o.provides

CMakeFiles/create.dir/src/data.cpp.o.provides.build: CMakeFiles/create.dir/src/data.cpp.o

CMakeFiles/create.dir/src/packet.cpp.o: CMakeFiles/create.dir/flags.make
CMakeFiles/create.dir/src/packet.cpp.o: src/packet.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/jacwilso/Documents/CSCI404/libcreate-master/CMakeFiles $(CMAKE_PROGRESS_6)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/create.dir/src/packet.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/create.dir/src/packet.cpp.o -c /home/jacwilso/Documents/CSCI404/libcreate-master/src/packet.cpp

CMakeFiles/create.dir/src/packet.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/create.dir/src/packet.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/jacwilso/Documents/CSCI404/libcreate-master/src/packet.cpp > CMakeFiles/create.dir/src/packet.cpp.i

CMakeFiles/create.dir/src/packet.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/create.dir/src/packet.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/jacwilso/Documents/CSCI404/libcreate-master/src/packet.cpp -o CMakeFiles/create.dir/src/packet.cpp.s

CMakeFiles/create.dir/src/packet.cpp.o.requires:
.PHONY : CMakeFiles/create.dir/src/packet.cpp.o.requires

CMakeFiles/create.dir/src/packet.cpp.o.provides: CMakeFiles/create.dir/src/packet.cpp.o.requires
	$(MAKE) -f CMakeFiles/create.dir/build.make CMakeFiles/create.dir/src/packet.cpp.o.provides.build
.PHONY : CMakeFiles/create.dir/src/packet.cpp.o.provides

CMakeFiles/create.dir/src/packet.cpp.o.provides.build: CMakeFiles/create.dir/src/packet.cpp.o

CMakeFiles/create.dir/src/types.cpp.o: CMakeFiles/create.dir/flags.make
CMakeFiles/create.dir/src/types.cpp.o: src/types.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/jacwilso/Documents/CSCI404/libcreate-master/CMakeFiles $(CMAKE_PROGRESS_7)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/create.dir/src/types.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/create.dir/src/types.cpp.o -c /home/jacwilso/Documents/CSCI404/libcreate-master/src/types.cpp

CMakeFiles/create.dir/src/types.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/create.dir/src/types.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/jacwilso/Documents/CSCI404/libcreate-master/src/types.cpp > CMakeFiles/create.dir/src/types.cpp.i

CMakeFiles/create.dir/src/types.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/create.dir/src/types.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/jacwilso/Documents/CSCI404/libcreate-master/src/types.cpp -o CMakeFiles/create.dir/src/types.cpp.s

CMakeFiles/create.dir/src/types.cpp.o.requires:
.PHONY : CMakeFiles/create.dir/src/types.cpp.o.requires

CMakeFiles/create.dir/src/types.cpp.o.provides: CMakeFiles/create.dir/src/types.cpp.o.requires
	$(MAKE) -f CMakeFiles/create.dir/build.make CMakeFiles/create.dir/src/types.cpp.o.provides.build
.PHONY : CMakeFiles/create.dir/src/types.cpp.o.provides

CMakeFiles/create.dir/src/types.cpp.o.provides.build: CMakeFiles/create.dir/src/types.cpp.o

# Object files for target create
create_OBJECTS = \
"CMakeFiles/create.dir/src/create.cpp.o" \
"CMakeFiles/create.dir/src/serial.cpp.o" \
"CMakeFiles/create.dir/src/serial_stream.cpp.o" \
"CMakeFiles/create.dir/src/serial_query.cpp.o" \
"CMakeFiles/create.dir/src/data.cpp.o" \
"CMakeFiles/create.dir/src/packet.cpp.o" \
"CMakeFiles/create.dir/src/types.cpp.o"

# External object files for target create
create_EXTERNAL_OBJECTS =

libcreate.a: CMakeFiles/create.dir/src/create.cpp.o
libcreate.a: CMakeFiles/create.dir/src/serial.cpp.o
libcreate.a: CMakeFiles/create.dir/src/serial_stream.cpp.o
libcreate.a: CMakeFiles/create.dir/src/serial_query.cpp.o
libcreate.a: CMakeFiles/create.dir/src/data.cpp.o
libcreate.a: CMakeFiles/create.dir/src/packet.cpp.o
libcreate.a: CMakeFiles/create.dir/src/types.cpp.o
libcreate.a: CMakeFiles/create.dir/build.make
libcreate.a: CMakeFiles/create.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX static library libcreate.a"
	$(CMAKE_COMMAND) -P CMakeFiles/create.dir/cmake_clean_target.cmake
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/create.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/create.dir/build: libcreate.a
.PHONY : CMakeFiles/create.dir/build

CMakeFiles/create.dir/requires: CMakeFiles/create.dir/src/create.cpp.o.requires
CMakeFiles/create.dir/requires: CMakeFiles/create.dir/src/serial.cpp.o.requires
CMakeFiles/create.dir/requires: CMakeFiles/create.dir/src/serial_stream.cpp.o.requires
CMakeFiles/create.dir/requires: CMakeFiles/create.dir/src/serial_query.cpp.o.requires
CMakeFiles/create.dir/requires: CMakeFiles/create.dir/src/data.cpp.o.requires
CMakeFiles/create.dir/requires: CMakeFiles/create.dir/src/packet.cpp.o.requires
CMakeFiles/create.dir/requires: CMakeFiles/create.dir/src/types.cpp.o.requires
.PHONY : CMakeFiles/create.dir/requires

CMakeFiles/create.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/create.dir/cmake_clean.cmake
.PHONY : CMakeFiles/create.dir/clean

CMakeFiles/create.dir/depend:
	cd /home/jacwilso/Documents/CSCI404/libcreate-master && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/jacwilso/Documents/CSCI404/libcreate-master /home/jacwilso/Documents/CSCI404/libcreate-master /home/jacwilso/Documents/CSCI404/libcreate-master /home/jacwilso/Documents/CSCI404/libcreate-master /home/jacwilso/Documents/CSCI404/libcreate-master/CMakeFiles/create.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/create.dir/depend

