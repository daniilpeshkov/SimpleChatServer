# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.22

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
CMAKE_SOURCE_DIR = /home/daniil/SimpleChatServer_C_impl

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/daniil/SimpleChatServer_C_impl/build

# Include any dependencies generated for this target.
include CMakeFiles/simple_server.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/simple_server.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/simple_server.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/simple_server.dir/flags.make

CMakeFiles/simple_server.dir/src/client.c.o: CMakeFiles/simple_server.dir/flags.make
CMakeFiles/simple_server.dir/src/client.c.o: ../src/client.c
CMakeFiles/simple_server.dir/src/client.c.o: CMakeFiles/simple_server.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/daniil/SimpleChatServer_C_impl/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/simple_server.dir/src/client.c.o"
	/usr/bin/x86_64-pc-linux-gnu-gcc-11.1.0 $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/simple_server.dir/src/client.c.o -MF CMakeFiles/simple_server.dir/src/client.c.o.d -o CMakeFiles/simple_server.dir/src/client.c.o -c /home/daniil/SimpleChatServer_C_impl/src/client.c

CMakeFiles/simple_server.dir/src/client.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/simple_server.dir/src/client.c.i"
	/usr/bin/x86_64-pc-linux-gnu-gcc-11.1.0 $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/daniil/SimpleChatServer_C_impl/src/client.c > CMakeFiles/simple_server.dir/src/client.c.i

CMakeFiles/simple_server.dir/src/client.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/simple_server.dir/src/client.c.s"
	/usr/bin/x86_64-pc-linux-gnu-gcc-11.1.0 $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/daniil/SimpleChatServer_C_impl/src/client.c -o CMakeFiles/simple_server.dir/src/client.c.s

CMakeFiles/simple_server.dir/src/frame.c.o: CMakeFiles/simple_server.dir/flags.make
CMakeFiles/simple_server.dir/src/frame.c.o: ../src/frame.c
CMakeFiles/simple_server.dir/src/frame.c.o: CMakeFiles/simple_server.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/daniil/SimpleChatServer_C_impl/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object CMakeFiles/simple_server.dir/src/frame.c.o"
	/usr/bin/x86_64-pc-linux-gnu-gcc-11.1.0 $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/simple_server.dir/src/frame.c.o -MF CMakeFiles/simple_server.dir/src/frame.c.o.d -o CMakeFiles/simple_server.dir/src/frame.c.o -c /home/daniil/SimpleChatServer_C_impl/src/frame.c

CMakeFiles/simple_server.dir/src/frame.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/simple_server.dir/src/frame.c.i"
	/usr/bin/x86_64-pc-linux-gnu-gcc-11.1.0 $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/daniil/SimpleChatServer_C_impl/src/frame.c > CMakeFiles/simple_server.dir/src/frame.c.i

CMakeFiles/simple_server.dir/src/frame.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/simple_server.dir/src/frame.c.s"
	/usr/bin/x86_64-pc-linux-gnu-gcc-11.1.0 $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/daniil/SimpleChatServer_C_impl/src/frame.c -o CMakeFiles/simple_server.dir/src/frame.c.s

CMakeFiles/simple_server.dir/src/main.cpp.o: CMakeFiles/simple_server.dir/flags.make
CMakeFiles/simple_server.dir/src/main.cpp.o: ../src/main.cpp
CMakeFiles/simple_server.dir/src/main.cpp.o: CMakeFiles/simple_server.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/daniil/SimpleChatServer_C_impl/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/simple_server.dir/src/main.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/simple_server.dir/src/main.cpp.o -MF CMakeFiles/simple_server.dir/src/main.cpp.o.d -o CMakeFiles/simple_server.dir/src/main.cpp.o -c /home/daniil/SimpleChatServer_C_impl/src/main.cpp

CMakeFiles/simple_server.dir/src/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/simple_server.dir/src/main.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/daniil/SimpleChatServer_C_impl/src/main.cpp > CMakeFiles/simple_server.dir/src/main.cpp.i

CMakeFiles/simple_server.dir/src/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/simple_server.dir/src/main.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/daniil/SimpleChatServer_C_impl/src/main.cpp -o CMakeFiles/simple_server.dir/src/main.cpp.s

CMakeFiles/simple_server.dir/src/message.c.o: CMakeFiles/simple_server.dir/flags.make
CMakeFiles/simple_server.dir/src/message.c.o: ../src/message.c
CMakeFiles/simple_server.dir/src/message.c.o: CMakeFiles/simple_server.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/daniil/SimpleChatServer_C_impl/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building C object CMakeFiles/simple_server.dir/src/message.c.o"
	/usr/bin/x86_64-pc-linux-gnu-gcc-11.1.0 $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/simple_server.dir/src/message.c.o -MF CMakeFiles/simple_server.dir/src/message.c.o.d -o CMakeFiles/simple_server.dir/src/message.c.o -c /home/daniil/SimpleChatServer_C_impl/src/message.c

CMakeFiles/simple_server.dir/src/message.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/simple_server.dir/src/message.c.i"
	/usr/bin/x86_64-pc-linux-gnu-gcc-11.1.0 $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/daniil/SimpleChatServer_C_impl/src/message.c > CMakeFiles/simple_server.dir/src/message.c.i

CMakeFiles/simple_server.dir/src/message.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/simple_server.dir/src/message.c.s"
	/usr/bin/x86_64-pc-linux-gnu-gcc-11.1.0 $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/daniil/SimpleChatServer_C_impl/src/message.c -o CMakeFiles/simple_server.dir/src/message.c.s

CMakeFiles/simple_server.dir/src/name_list.c.o: CMakeFiles/simple_server.dir/flags.make
CMakeFiles/simple_server.dir/src/name_list.c.o: ../src/name_list.c
CMakeFiles/simple_server.dir/src/name_list.c.o: CMakeFiles/simple_server.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/daniil/SimpleChatServer_C_impl/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building C object CMakeFiles/simple_server.dir/src/name_list.c.o"
	/usr/bin/x86_64-pc-linux-gnu-gcc-11.1.0 $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/simple_server.dir/src/name_list.c.o -MF CMakeFiles/simple_server.dir/src/name_list.c.o.d -o CMakeFiles/simple_server.dir/src/name_list.c.o -c /home/daniil/SimpleChatServer_C_impl/src/name_list.c

CMakeFiles/simple_server.dir/src/name_list.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/simple_server.dir/src/name_list.c.i"
	/usr/bin/x86_64-pc-linux-gnu-gcc-11.1.0 $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/daniil/SimpleChatServer_C_impl/src/name_list.c > CMakeFiles/simple_server.dir/src/name_list.c.i

CMakeFiles/simple_server.dir/src/name_list.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/simple_server.dir/src/name_list.c.s"
	/usr/bin/x86_64-pc-linux-gnu-gcc-11.1.0 $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/daniil/SimpleChatServer_C_impl/src/name_list.c -o CMakeFiles/simple_server.dir/src/name_list.c.s

CMakeFiles/simple_server.dir/src/requests.c.o: CMakeFiles/simple_server.dir/flags.make
CMakeFiles/simple_server.dir/src/requests.c.o: ../src/requests.c
CMakeFiles/simple_server.dir/src/requests.c.o: CMakeFiles/simple_server.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/daniil/SimpleChatServer_C_impl/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building C object CMakeFiles/simple_server.dir/src/requests.c.o"
	/usr/bin/x86_64-pc-linux-gnu-gcc-11.1.0 $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/simple_server.dir/src/requests.c.o -MF CMakeFiles/simple_server.dir/src/requests.c.o.d -o CMakeFiles/simple_server.dir/src/requests.c.o -c /home/daniil/SimpleChatServer_C_impl/src/requests.c

CMakeFiles/simple_server.dir/src/requests.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/simple_server.dir/src/requests.c.i"
	/usr/bin/x86_64-pc-linux-gnu-gcc-11.1.0 $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/daniil/SimpleChatServer_C_impl/src/requests.c > CMakeFiles/simple_server.dir/src/requests.c.i

CMakeFiles/simple_server.dir/src/requests.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/simple_server.dir/src/requests.c.s"
	/usr/bin/x86_64-pc-linux-gnu-gcc-11.1.0 $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/daniil/SimpleChatServer_C_impl/src/requests.c -o CMakeFiles/simple_server.dir/src/requests.c.s

CMakeFiles/simple_server.dir/src/vector.c.o: CMakeFiles/simple_server.dir/flags.make
CMakeFiles/simple_server.dir/src/vector.c.o: ../src/vector.c
CMakeFiles/simple_server.dir/src/vector.c.o: CMakeFiles/simple_server.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/daniil/SimpleChatServer_C_impl/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building C object CMakeFiles/simple_server.dir/src/vector.c.o"
	/usr/bin/x86_64-pc-linux-gnu-gcc-11.1.0 $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/simple_server.dir/src/vector.c.o -MF CMakeFiles/simple_server.dir/src/vector.c.o.d -o CMakeFiles/simple_server.dir/src/vector.c.o -c /home/daniil/SimpleChatServer_C_impl/src/vector.c

CMakeFiles/simple_server.dir/src/vector.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/simple_server.dir/src/vector.c.i"
	/usr/bin/x86_64-pc-linux-gnu-gcc-11.1.0 $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/daniil/SimpleChatServer_C_impl/src/vector.c > CMakeFiles/simple_server.dir/src/vector.c.i

CMakeFiles/simple_server.dir/src/vector.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/simple_server.dir/src/vector.c.s"
	/usr/bin/x86_64-pc-linux-gnu-gcc-11.1.0 $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/daniil/SimpleChatServer_C_impl/src/vector.c -o CMakeFiles/simple_server.dir/src/vector.c.s

# Object files for target simple_server
simple_server_OBJECTS = \
"CMakeFiles/simple_server.dir/src/client.c.o" \
"CMakeFiles/simple_server.dir/src/frame.c.o" \
"CMakeFiles/simple_server.dir/src/main.cpp.o" \
"CMakeFiles/simple_server.dir/src/message.c.o" \
"CMakeFiles/simple_server.dir/src/name_list.c.o" \
"CMakeFiles/simple_server.dir/src/requests.c.o" \
"CMakeFiles/simple_server.dir/src/vector.c.o"

# External object files for target simple_server
simple_server_EXTERNAL_OBJECTS =

simple_server: CMakeFiles/simple_server.dir/src/client.c.o
simple_server: CMakeFiles/simple_server.dir/src/frame.c.o
simple_server: CMakeFiles/simple_server.dir/src/main.cpp.o
simple_server: CMakeFiles/simple_server.dir/src/message.c.o
simple_server: CMakeFiles/simple_server.dir/src/name_list.c.o
simple_server: CMakeFiles/simple_server.dir/src/requests.c.o
simple_server: CMakeFiles/simple_server.dir/src/vector.c.o
simple_server: CMakeFiles/simple_server.dir/build.make
simple_server: CMakeFiles/simple_server.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/daniil/SimpleChatServer_C_impl/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Linking CXX executable simple_server"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/simple_server.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/simple_server.dir/build: simple_server
.PHONY : CMakeFiles/simple_server.dir/build

CMakeFiles/simple_server.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/simple_server.dir/cmake_clean.cmake
.PHONY : CMakeFiles/simple_server.dir/clean

CMakeFiles/simple_server.dir/depend:
	cd /home/daniil/SimpleChatServer_C_impl/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/daniil/SimpleChatServer_C_impl /home/daniil/SimpleChatServer_C_impl /home/daniil/SimpleChatServer_C_impl/build /home/daniil/SimpleChatServer_C_impl/build /home/daniil/SimpleChatServer_C_impl/build/CMakeFiles/simple_server.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/simple_server.dir/depend

