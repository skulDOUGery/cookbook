# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.30

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
CMAKE_SOURCE_DIR = /home/doug/projects/cookbook/c-cpp/XMacros/project-1/src

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/doug/projects/cookbook/c-cpp/XMacros/project-1/build

# Include any dependencies generated for this target.
include CMakeFiles/Hello.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/Hello.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/Hello.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/Hello.dir/flags.make

CMakeFiles/Hello.dir/hello.cpp.o: CMakeFiles/Hello.dir/flags.make
CMakeFiles/Hello.dir/hello.cpp.o: /home/doug/projects/cookbook/c-cpp/XMacros/project-1/src/hello.cpp
CMakeFiles/Hello.dir/hello.cpp.o: CMakeFiles/Hello.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/doug/projects/cookbook/c-cpp/XMacros/project-1/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/Hello.dir/hello.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/Hello.dir/hello.cpp.o -MF CMakeFiles/Hello.dir/hello.cpp.o.d -o CMakeFiles/Hello.dir/hello.cpp.o -c /home/doug/projects/cookbook/c-cpp/XMacros/project-1/src/hello.cpp

CMakeFiles/Hello.dir/hello.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/Hello.dir/hello.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/doug/projects/cookbook/c-cpp/XMacros/project-1/src/hello.cpp > CMakeFiles/Hello.dir/hello.cpp.i

CMakeFiles/Hello.dir/hello.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/Hello.dir/hello.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/doug/projects/cookbook/c-cpp/XMacros/project-1/src/hello.cpp -o CMakeFiles/Hello.dir/hello.cpp.s

# Object files for target Hello
Hello_OBJECTS = \
"CMakeFiles/Hello.dir/hello.cpp.o"

# External object files for target Hello
Hello_EXTERNAL_OBJECTS =

Hello: CMakeFiles/Hello.dir/hello.cpp.o
Hello: CMakeFiles/Hello.dir/build.make
Hello: CMakeFiles/Hello.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/home/doug/projects/cookbook/c-cpp/XMacros/project-1/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable Hello"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/Hello.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/Hello.dir/build: Hello
.PHONY : CMakeFiles/Hello.dir/build

CMakeFiles/Hello.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/Hello.dir/cmake_clean.cmake
.PHONY : CMakeFiles/Hello.dir/clean

CMakeFiles/Hello.dir/depend:
	cd /home/doug/projects/cookbook/c-cpp/XMacros/project-1/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/doug/projects/cookbook/c-cpp/XMacros/project-1/src /home/doug/projects/cookbook/c-cpp/XMacros/project-1/src /home/doug/projects/cookbook/c-cpp/XMacros/project-1/build /home/doug/projects/cookbook/c-cpp/XMacros/project-1/build /home/doug/projects/cookbook/c-cpp/XMacros/project-1/build/CMakeFiles/Hello.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : CMakeFiles/Hello.dir/depend

