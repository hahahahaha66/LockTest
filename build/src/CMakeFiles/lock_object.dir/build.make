# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.31

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
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
RM = /usr/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/hahaha/work/LockTest

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/hahaha/work/LockTest/build

# Include any dependencies generated for this target.
include src/CMakeFiles/lock_object.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include src/CMakeFiles/lock_object.dir/compiler_depend.make

# Include the progress variables for this target.
include src/CMakeFiles/lock_object.dir/progress.make

# Include the compile flags for this target's objects.
include src/CMakeFiles/lock_object.dir/flags.make

src/CMakeFiles/lock_object.dir/codegen:
.PHONY : src/CMakeFiles/lock_object.dir/codegen

src/CMakeFiles/lock_object.dir/lock/hash_lock.c.o: src/CMakeFiles/lock_object.dir/flags.make
src/CMakeFiles/lock_object.dir/lock/hash_lock.c.o: /home/hahaha/work/LockTest/src/lock/hash_lock.c
src/CMakeFiles/lock_object.dir/lock/hash_lock.c.o: src/CMakeFiles/lock_object.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/hahaha/work/LockTest/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object src/CMakeFiles/lock_object.dir/lock/hash_lock.c.o"
	cd /home/hahaha/work/LockTest/build/src && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT src/CMakeFiles/lock_object.dir/lock/hash_lock.c.o -MF CMakeFiles/lock_object.dir/lock/hash_lock.c.o.d -o CMakeFiles/lock_object.dir/lock/hash_lock.c.o -c /home/hahaha/work/LockTest/src/lock/hash_lock.c

src/CMakeFiles/lock_object.dir/lock/hash_lock.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing C source to CMakeFiles/lock_object.dir/lock/hash_lock.c.i"
	cd /home/hahaha/work/LockTest/build/src && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/hahaha/work/LockTest/src/lock/hash_lock.c > CMakeFiles/lock_object.dir/lock/hash_lock.c.i

src/CMakeFiles/lock_object.dir/lock/hash_lock.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling C source to assembly CMakeFiles/lock_object.dir/lock/hash_lock.c.s"
	cd /home/hahaha/work/LockTest/build/src && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/hahaha/work/LockTest/src/lock/hash_lock.c -o CMakeFiles/lock_object.dir/lock/hash_lock.c.s

src/CMakeFiles/lock_object.dir/lock/list_lock.c.o: src/CMakeFiles/lock_object.dir/flags.make
src/CMakeFiles/lock_object.dir/lock/list_lock.c.o: /home/hahaha/work/LockTest/src/lock/list_lock.c
src/CMakeFiles/lock_object.dir/lock/list_lock.c.o: src/CMakeFiles/lock_object.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/hahaha/work/LockTest/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object src/CMakeFiles/lock_object.dir/lock/list_lock.c.o"
	cd /home/hahaha/work/LockTest/build/src && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT src/CMakeFiles/lock_object.dir/lock/list_lock.c.o -MF CMakeFiles/lock_object.dir/lock/list_lock.c.o.d -o CMakeFiles/lock_object.dir/lock/list_lock.c.o -c /home/hahaha/work/LockTest/src/lock/list_lock.c

src/CMakeFiles/lock_object.dir/lock/list_lock.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing C source to CMakeFiles/lock_object.dir/lock/list_lock.c.i"
	cd /home/hahaha/work/LockTest/build/src && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/hahaha/work/LockTest/src/lock/list_lock.c > CMakeFiles/lock_object.dir/lock/list_lock.c.i

src/CMakeFiles/lock_object.dir/lock/list_lock.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling C source to assembly CMakeFiles/lock_object.dir/lock/list_lock.c.s"
	cd /home/hahaha/work/LockTest/build/src && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/hahaha/work/LockTest/src/lock/list_lock.c -o CMakeFiles/lock_object.dir/lock/list_lock.c.s

src/CMakeFiles/lock_object.dir/lock/lock.c.o: src/CMakeFiles/lock_object.dir/flags.make
src/CMakeFiles/lock_object.dir/lock/lock.c.o: /home/hahaha/work/LockTest/src/lock/lock.c
src/CMakeFiles/lock_object.dir/lock/lock.c.o: src/CMakeFiles/lock_object.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/hahaha/work/LockTest/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building C object src/CMakeFiles/lock_object.dir/lock/lock.c.o"
	cd /home/hahaha/work/LockTest/build/src && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT src/CMakeFiles/lock_object.dir/lock/lock.c.o -MF CMakeFiles/lock_object.dir/lock/lock.c.o.d -o CMakeFiles/lock_object.dir/lock/lock.c.o -c /home/hahaha/work/LockTest/src/lock/lock.c

src/CMakeFiles/lock_object.dir/lock/lock.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing C source to CMakeFiles/lock_object.dir/lock/lock.c.i"
	cd /home/hahaha/work/LockTest/build/src && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/hahaha/work/LockTest/src/lock/lock.c > CMakeFiles/lock_object.dir/lock/lock.c.i

src/CMakeFiles/lock_object.dir/lock/lock.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling C source to assembly CMakeFiles/lock_object.dir/lock/lock.c.s"
	cd /home/hahaha/work/LockTest/build/src && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/hahaha/work/LockTest/src/lock/lock.c -o CMakeFiles/lock_object.dir/lock/lock.c.s

lock_object: src/CMakeFiles/lock_object.dir/lock/hash_lock.c.o
lock_object: src/CMakeFiles/lock_object.dir/lock/list_lock.c.o
lock_object: src/CMakeFiles/lock_object.dir/lock/lock.c.o
lock_object: src/CMakeFiles/lock_object.dir/build.make
.PHONY : lock_object

# Rule to build all files generated by this target.
src/CMakeFiles/lock_object.dir/build: lock_object
.PHONY : src/CMakeFiles/lock_object.dir/build

src/CMakeFiles/lock_object.dir/clean:
	cd /home/hahaha/work/LockTest/build/src && $(CMAKE_COMMAND) -P CMakeFiles/lock_object.dir/cmake_clean.cmake
.PHONY : src/CMakeFiles/lock_object.dir/clean

src/CMakeFiles/lock_object.dir/depend:
	cd /home/hahaha/work/LockTest/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/hahaha/work/LockTest /home/hahaha/work/LockTest/src /home/hahaha/work/LockTest/build /home/hahaha/work/LockTest/build/src /home/hahaha/work/LockTest/build/src/CMakeFiles/lock_object.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : src/CMakeFiles/lock_object.dir/depend

