# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.16

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
CMAKE_SOURCE_DIR = /home/xiurui/xdb-LSM-Tree/xdb

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/xiurui/xdb-LSM-Tree/xdb/build

# Include any dependencies generated for this target.
include CMakeFiles/db_test.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/db_test.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/db_test.dir/flags.make

CMakeFiles/db_test.dir/test/db_test.cc.o: CMakeFiles/db_test.dir/flags.make
CMakeFiles/db_test.dir/test/db_test.cc.o: ../test/db_test.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/xiurui/xdb-LSM-Tree/xdb/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/db_test.dir/test/db_test.cc.o"
	/usr/bin/clang++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/db_test.dir/test/db_test.cc.o -c /home/xiurui/xdb-LSM-Tree/xdb/test/db_test.cc

CMakeFiles/db_test.dir/test/db_test.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/db_test.dir/test/db_test.cc.i"
	/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/xiurui/xdb-LSM-Tree/xdb/test/db_test.cc > CMakeFiles/db_test.dir/test/db_test.cc.i

CMakeFiles/db_test.dir/test/db_test.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/db_test.dir/test/db_test.cc.s"
	/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/xiurui/xdb-LSM-Tree/xdb/test/db_test.cc -o CMakeFiles/db_test.dir/test/db_test.cc.s

# Object files for target db_test
db_test_OBJECTS = \
"CMakeFiles/db_test.dir/test/db_test.cc.o"

# External object files for target db_test
db_test_EXTERNAL_OBJECTS =

test/db_test: CMakeFiles/db_test.dir/test/db_test.cc.o
test/db_test: CMakeFiles/db_test.dir/build.make
test/db_test: libxdb.a
test/db_test: lib/libgmock_main.so.1.13.0
test/db_test: libmurmur3.so
test/db_test: third_party/crc32c/libcrc32c.so.1.1.0
test/db_test: third_party/snappy/libsnappy.so.1.1.9
test/db_test: lib/libgmock.so.1.13.0
test/db_test: lib/libgtest.so.1.13.0
test/db_test: CMakeFiles/db_test.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/xiurui/xdb-LSM-Tree/xdb/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable test/db_test"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/db_test.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/db_test.dir/build: test/db_test

.PHONY : CMakeFiles/db_test.dir/build

CMakeFiles/db_test.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/db_test.dir/cmake_clean.cmake
.PHONY : CMakeFiles/db_test.dir/clean

CMakeFiles/db_test.dir/depend:
	cd /home/xiurui/xdb-LSM-Tree/xdb/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/xiurui/xdb-LSM-Tree/xdb /home/xiurui/xdb-LSM-Tree/xdb /home/xiurui/xdb-LSM-Tree/xdb/build /home/xiurui/xdb-LSM-Tree/xdb/build /home/xiurui/xdb-LSM-Tree/xdb/build/CMakeFiles/db_test.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/db_test.dir/depend

