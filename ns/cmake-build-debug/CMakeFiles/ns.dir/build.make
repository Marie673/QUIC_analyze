# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.19

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
CMAKE_COMMAND = /home/marie673/.local/share/JetBrains/Toolbox/apps/CLion/ch-0/211.7442.42/bin/cmake/linux/bin/cmake

# The command to remove a file.
RM = /home/marie673/.local/share/JetBrains/Toolbox/apps/CLion/ch-0/211.7442.42/bin/cmake/linux/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/marie673/Project/QUIC/ns

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/marie673/Project/QUIC/ns/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/ns.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/ns.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/ns.dir/flags.make

CMakeFiles/ns.dir/main.cpp.o: CMakeFiles/ns.dir/flags.make
CMakeFiles/ns.dir/main.cpp.o: ../main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/marie673/Project/QUIC/ns/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/ns.dir/main.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/ns.dir/main.cpp.o -c /home/marie673/Project/QUIC/ns/main.cpp

CMakeFiles/ns.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ns.dir/main.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/marie673/Project/QUIC/ns/main.cpp > CMakeFiles/ns.dir/main.cpp.i

CMakeFiles/ns.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ns.dir/main.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/marie673/Project/QUIC/ns/main.cpp -o CMakeFiles/ns.dir/main.cpp.s

# Object files for target ns
ns_OBJECTS = \
"CMakeFiles/ns.dir/main.cpp.o"

# External object files for target ns
ns_EXTERNAL_OBJECTS =

ns: CMakeFiles/ns.dir/main.cpp.o
ns: CMakeFiles/ns.dir/build.make
ns: CMakeFiles/ns.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/marie673/Project/QUIC/ns/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable ns"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/ns.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/ns.dir/build: ns

.PHONY : CMakeFiles/ns.dir/build

CMakeFiles/ns.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/ns.dir/cmake_clean.cmake
.PHONY : CMakeFiles/ns.dir/clean

CMakeFiles/ns.dir/depend:
	cd /home/marie673/Project/QUIC/ns/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/marie673/Project/QUIC/ns /home/marie673/Project/QUIC/ns /home/marie673/Project/QUIC/ns/cmake-build-debug /home/marie673/Project/QUIC/ns/cmake-build-debug /home/marie673/Project/QUIC/ns/cmake-build-debug/CMakeFiles/ns.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/ns.dir/depend

