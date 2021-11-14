# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.21

# Default target executed when no arguments are given to make.
default_target: all
.PHONY : default_target

# Allow only one "make -f Makefile2" at a time, but pass parallelism.
.NOTPARALLEL:

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
CMAKE_SOURCE_DIR = /home/daniil/SimpleChatServer_C_impl

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/daniil/SimpleChatServer_C_impl

#=============================================================================
# Targets provided globally by CMake.

# Special rule for the target rebuild_cache
rebuild_cache:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --cyan "Running CMake to regenerate build system..."
	/usr/bin/cmake --regenerate-during-build -S$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR)
.PHONY : rebuild_cache

# Special rule for the target rebuild_cache
rebuild_cache/fast: rebuild_cache
.PHONY : rebuild_cache/fast

# Special rule for the target edit_cache
edit_cache:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --cyan "Running CMake cache editor..."
	/usr/bin/ccmake -S$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR)
.PHONY : edit_cache

# Special rule for the target edit_cache
edit_cache/fast: edit_cache
.PHONY : edit_cache/fast

# The main all target
all: cmake_check_build_system
	$(CMAKE_COMMAND) -E cmake_progress_start /home/daniil/SimpleChatServer_C_impl/CMakeFiles /home/daniil/SimpleChatServer_C_impl//CMakeFiles/progress.marks
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Makefile2 all
	$(CMAKE_COMMAND) -E cmake_progress_start /home/daniil/SimpleChatServer_C_impl/CMakeFiles 0
.PHONY : all

# The main clean target
clean:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Makefile2 clean
.PHONY : clean

# The main clean target
clean/fast: clean
.PHONY : clean/fast

# Prepare targets for installation.
preinstall: all
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Makefile2 preinstall
.PHONY : preinstall

# Prepare targets for installation.
preinstall/fast:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Makefile2 preinstall
.PHONY : preinstall/fast

# clear depends
depend:
	$(CMAKE_COMMAND) -S$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR) --check-build-system CMakeFiles/Makefile.cmake 1
.PHONY : depend

#=============================================================================
# Target rules for targets named simple_server

# Build rule for target.
simple_server: cmake_check_build_system
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Makefile2 simple_server
.PHONY : simple_server

# fast build rule for target.
simple_server/fast:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/simple_server.dir/build.make CMakeFiles/simple_server.dir/build
.PHONY : simple_server/fast

# target to build an object file
src/client.o:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/simple_server.dir/build.make CMakeFiles/simple_server.dir/src/client.o
.PHONY : src/client.o

# target to preprocess a source file
src/client.i:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/simple_server.dir/build.make CMakeFiles/simple_server.dir/src/client.i
.PHONY : src/client.i

# target to generate assembly for a file
src/client.s:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/simple_server.dir/build.make CMakeFiles/simple_server.dir/src/client.s
.PHONY : src/client.s

# target to build an object file
src/frame.o:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/simple_server.dir/build.make CMakeFiles/simple_server.dir/src/frame.o
.PHONY : src/frame.o

# target to preprocess a source file
src/frame.i:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/simple_server.dir/build.make CMakeFiles/simple_server.dir/src/frame.i
.PHONY : src/frame.i

# target to generate assembly for a file
src/frame.s:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/simple_server.dir/build.make CMakeFiles/simple_server.dir/src/frame.s
.PHONY : src/frame.s

# target to build an object file
src/main.o:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/simple_server.dir/build.make CMakeFiles/simple_server.dir/src/main.o
.PHONY : src/main.o

# target to preprocess a source file
src/main.i:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/simple_server.dir/build.make CMakeFiles/simple_server.dir/src/main.i
.PHONY : src/main.i

# target to generate assembly for a file
src/main.s:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/simple_server.dir/build.make CMakeFiles/simple_server.dir/src/main.s
.PHONY : src/main.s

# target to build an object file
src/vector.o:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/simple_server.dir/build.make CMakeFiles/simple_server.dir/src/vector.o
.PHONY : src/vector.o

# target to preprocess a source file
src/vector.i:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/simple_server.dir/build.make CMakeFiles/simple_server.dir/src/vector.i
.PHONY : src/vector.i

# target to generate assembly for a file
src/vector.s:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/simple_server.dir/build.make CMakeFiles/simple_server.dir/src/vector.s
.PHONY : src/vector.s

# Help Target
help:
	@echo "The following are some of the valid targets for this Makefile:"
	@echo "... all (the default if no target is provided)"
	@echo "... clean"
	@echo "... depend"
	@echo "... edit_cache"
	@echo "... rebuild_cache"
	@echo "... simple_server"
	@echo "... src/client.o"
	@echo "... src/client.i"
	@echo "... src/client.s"
	@echo "... src/frame.o"
	@echo "... src/frame.i"
	@echo "... src/frame.s"
	@echo "... src/main.o"
	@echo "... src/main.i"
	@echo "... src/main.s"
	@echo "... src/vector.o"
	@echo "... src/vector.i"
	@echo "... src/vector.s"
.PHONY : help



#=============================================================================
# Special targets to cleanup operation of make.

# Special rule to run CMake to check the build system integrity.
# No rule that depends on this can have commands that come from listfiles
# because they might be regenerated.
cmake_check_build_system:
	$(CMAKE_COMMAND) -S$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR) --check-build-system CMakeFiles/Makefile.cmake 0
.PHONY : cmake_check_build_system

