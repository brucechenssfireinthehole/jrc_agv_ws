# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.5

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
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/brucechen/nav_ws/src

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/brucechen/nav_ws/build

# Include any dependencies generated for this target.
include urg_c-master/CMakeFiles/angle_convert_test.dir/depend.make

# Include the progress variables for this target.
include urg_c-master/CMakeFiles/angle_convert_test.dir/progress.make

# Include the compile flags for this target's objects.
include urg_c-master/CMakeFiles/angle_convert_test.dir/flags.make

urg_c-master/CMakeFiles/angle_convert_test.dir/current/samples/angle_convert_test.c.o: urg_c-master/CMakeFiles/angle_convert_test.dir/flags.make
urg_c-master/CMakeFiles/angle_convert_test.dir/current/samples/angle_convert_test.c.o: /home/brucechen/nav_ws/src/urg_c-master/current/samples/angle_convert_test.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/brucechen/nav_ws/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object urg_c-master/CMakeFiles/angle_convert_test.dir/current/samples/angle_convert_test.c.o"
	cd /home/brucechen/nav_ws/build/urg_c-master && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/angle_convert_test.dir/current/samples/angle_convert_test.c.o   -c /home/brucechen/nav_ws/src/urg_c-master/current/samples/angle_convert_test.c

urg_c-master/CMakeFiles/angle_convert_test.dir/current/samples/angle_convert_test.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/angle_convert_test.dir/current/samples/angle_convert_test.c.i"
	cd /home/brucechen/nav_ws/build/urg_c-master && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/brucechen/nav_ws/src/urg_c-master/current/samples/angle_convert_test.c > CMakeFiles/angle_convert_test.dir/current/samples/angle_convert_test.c.i

urg_c-master/CMakeFiles/angle_convert_test.dir/current/samples/angle_convert_test.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/angle_convert_test.dir/current/samples/angle_convert_test.c.s"
	cd /home/brucechen/nav_ws/build/urg_c-master && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/brucechen/nav_ws/src/urg_c-master/current/samples/angle_convert_test.c -o CMakeFiles/angle_convert_test.dir/current/samples/angle_convert_test.c.s

urg_c-master/CMakeFiles/angle_convert_test.dir/current/samples/angle_convert_test.c.o.requires:

.PHONY : urg_c-master/CMakeFiles/angle_convert_test.dir/current/samples/angle_convert_test.c.o.requires

urg_c-master/CMakeFiles/angle_convert_test.dir/current/samples/angle_convert_test.c.o.provides: urg_c-master/CMakeFiles/angle_convert_test.dir/current/samples/angle_convert_test.c.o.requires
	$(MAKE) -f urg_c-master/CMakeFiles/angle_convert_test.dir/build.make urg_c-master/CMakeFiles/angle_convert_test.dir/current/samples/angle_convert_test.c.o.provides.build
.PHONY : urg_c-master/CMakeFiles/angle_convert_test.dir/current/samples/angle_convert_test.c.o.provides

urg_c-master/CMakeFiles/angle_convert_test.dir/current/samples/angle_convert_test.c.o.provides.build: urg_c-master/CMakeFiles/angle_convert_test.dir/current/samples/angle_convert_test.c.o


# Object files for target angle_convert_test
angle_convert_test_OBJECTS = \
"CMakeFiles/angle_convert_test.dir/current/samples/angle_convert_test.c.o"

# External object files for target angle_convert_test
angle_convert_test_EXTERNAL_OBJECTS =

/home/brucechen/nav_ws/devel/lib/urg_c/angle_convert_test: urg_c-master/CMakeFiles/angle_convert_test.dir/current/samples/angle_convert_test.c.o
/home/brucechen/nav_ws/devel/lib/urg_c/angle_convert_test: urg_c-master/CMakeFiles/angle_convert_test.dir/build.make
/home/brucechen/nav_ws/devel/lib/urg_c/angle_convert_test: /home/brucechen/nav_ws/devel/lib/libopen_urg_sensor.so
/home/brucechen/nav_ws/devel/lib/urg_c/angle_convert_test: /home/brucechen/nav_ws/devel/lib/libliburg_c.so
/home/brucechen/nav_ws/devel/lib/urg_c/angle_convert_test: urg_c-master/CMakeFiles/angle_convert_test.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/brucechen/nav_ws/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable /home/brucechen/nav_ws/devel/lib/urg_c/angle_convert_test"
	cd /home/brucechen/nav_ws/build/urg_c-master && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/angle_convert_test.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
urg_c-master/CMakeFiles/angle_convert_test.dir/build: /home/brucechen/nav_ws/devel/lib/urg_c/angle_convert_test

.PHONY : urg_c-master/CMakeFiles/angle_convert_test.dir/build

urg_c-master/CMakeFiles/angle_convert_test.dir/requires: urg_c-master/CMakeFiles/angle_convert_test.dir/current/samples/angle_convert_test.c.o.requires

.PHONY : urg_c-master/CMakeFiles/angle_convert_test.dir/requires

urg_c-master/CMakeFiles/angle_convert_test.dir/clean:
	cd /home/brucechen/nav_ws/build/urg_c-master && $(CMAKE_COMMAND) -P CMakeFiles/angle_convert_test.dir/cmake_clean.cmake
.PHONY : urg_c-master/CMakeFiles/angle_convert_test.dir/clean

urg_c-master/CMakeFiles/angle_convert_test.dir/depend:
	cd /home/brucechen/nav_ws/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/brucechen/nav_ws/src /home/brucechen/nav_ws/src/urg_c-master /home/brucechen/nav_ws/build /home/brucechen/nav_ws/build/urg_c-master /home/brucechen/nav_ws/build/urg_c-master/CMakeFiles/angle_convert_test.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : urg_c-master/CMakeFiles/angle_convert_test.dir/depend

