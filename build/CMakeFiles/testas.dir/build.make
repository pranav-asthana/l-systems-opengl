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
CMAKE_SOURCE_DIR = /home/nic/original-projects/open-gl

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/nic/original-projects/open-gl/build

# Include any dependencies generated for this target.
include CMakeFiles/testas.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/testas.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/testas.dir/flags.make

CMakeFiles/testas.dir/main.cpp.o: CMakeFiles/testas.dir/flags.make
CMakeFiles/testas.dir/main.cpp.o: ../main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/nic/original-projects/open-gl/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/testas.dir/main.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/testas.dir/main.cpp.o -c /home/nic/original-projects/open-gl/main.cpp

CMakeFiles/testas.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/testas.dir/main.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/nic/original-projects/open-gl/main.cpp > CMakeFiles/testas.dir/main.cpp.i

CMakeFiles/testas.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/testas.dir/main.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/nic/original-projects/open-gl/main.cpp -o CMakeFiles/testas.dir/main.cpp.s

CMakeFiles/testas.dir/main.cpp.o.requires:

.PHONY : CMakeFiles/testas.dir/main.cpp.o.requires

CMakeFiles/testas.dir/main.cpp.o.provides: CMakeFiles/testas.dir/main.cpp.o.requires
	$(MAKE) -f CMakeFiles/testas.dir/build.make CMakeFiles/testas.dir/main.cpp.o.provides.build
.PHONY : CMakeFiles/testas.dir/main.cpp.o.provides

CMakeFiles/testas.dir/main.cpp.o.provides.build: CMakeFiles/testas.dir/main.cpp.o


CMakeFiles/testas.dir/glad.c.o: CMakeFiles/testas.dir/flags.make
CMakeFiles/testas.dir/glad.c.o: ../glad.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/nic/original-projects/open-gl/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object CMakeFiles/testas.dir/glad.c.o"
	/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/testas.dir/glad.c.o   -c /home/nic/original-projects/open-gl/glad.c

CMakeFiles/testas.dir/glad.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/testas.dir/glad.c.i"
	/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/nic/original-projects/open-gl/glad.c > CMakeFiles/testas.dir/glad.c.i

CMakeFiles/testas.dir/glad.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/testas.dir/glad.c.s"
	/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/nic/original-projects/open-gl/glad.c -o CMakeFiles/testas.dir/glad.c.s

CMakeFiles/testas.dir/glad.c.o.requires:

.PHONY : CMakeFiles/testas.dir/glad.c.o.requires

CMakeFiles/testas.dir/glad.c.o.provides: CMakeFiles/testas.dir/glad.c.o.requires
	$(MAKE) -f CMakeFiles/testas.dir/build.make CMakeFiles/testas.dir/glad.c.o.provides.build
.PHONY : CMakeFiles/testas.dir/glad.c.o.provides

CMakeFiles/testas.dir/glad.c.o.provides.build: CMakeFiles/testas.dir/glad.c.o


# Object files for target testas
testas_OBJECTS = \
"CMakeFiles/testas.dir/main.cpp.o" \
"CMakeFiles/testas.dir/glad.c.o"

# External object files for target testas
testas_EXTERNAL_OBJECTS =

testas: CMakeFiles/testas.dir/main.cpp.o
testas: CMakeFiles/testas.dir/glad.c.o
testas: CMakeFiles/testas.dir/build.make
testas: /usr/lib/x86_64-linux-gnu/libGLU.so
testas: /usr/lib/x86_64-linux-gnu/libGL.so
testas: /usr/local/lib/libglfw3.a
testas: /usr/lib/x86_64-linux-gnu/librt.so
testas: /usr/lib/x86_64-linux-gnu/libm.so
testas: /usr/lib/x86_64-linux-gnu/libX11.so
testas: /usr/lib/x86_64-linux-gnu/libXrandr.so
testas: /usr/lib/x86_64-linux-gnu/libXinerama.so
testas: /usr/lib/x86_64-linux-gnu/libXxf86vm.so
testas: /usr/lib/x86_64-linux-gnu/libXcursor.so
testas: CMakeFiles/testas.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/nic/original-projects/open-gl/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX executable testas"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/testas.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/testas.dir/build: testas

.PHONY : CMakeFiles/testas.dir/build

CMakeFiles/testas.dir/requires: CMakeFiles/testas.dir/main.cpp.o.requires
CMakeFiles/testas.dir/requires: CMakeFiles/testas.dir/glad.c.o.requires

.PHONY : CMakeFiles/testas.dir/requires

CMakeFiles/testas.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/testas.dir/cmake_clean.cmake
.PHONY : CMakeFiles/testas.dir/clean

CMakeFiles/testas.dir/depend:
	cd /home/nic/original-projects/open-gl/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/nic/original-projects/open-gl /home/nic/original-projects/open-gl /home/nic/original-projects/open-gl/build /home/nic/original-projects/open-gl/build /home/nic/original-projects/open-gl/build/CMakeFiles/testas.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/testas.dir/depend

