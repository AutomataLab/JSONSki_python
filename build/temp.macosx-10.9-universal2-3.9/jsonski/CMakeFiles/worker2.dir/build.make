# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.27

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
CMAKE_COMMAND = /Library/Frameworks/Python.framework/Versions/3.11/lib/python3.11/site-packages/cmake/data/bin/cmake

# The command to remove a file.
RM = /Library/Frameworks/Python.framework/Versions/3.11/lib/python3.11/site-packages/cmake/data/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/work/Desktop/JSONSki

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/work/Desktop/JSONSki/build/temp.macosx-10.9-universal2-3.9/jsonski

# Include any dependencies generated for this target.
include CMakeFiles/worker2.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/worker2.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/worker2.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/worker2.dir/flags.make

CMakeFiles/worker2.dir/src/RecordLoader.cpp.o: CMakeFiles/worker2.dir/flags.make
CMakeFiles/worker2.dir/src/RecordLoader.cpp.o: /Users/work/Desktop/JSONSki/src/RecordLoader.cpp
CMakeFiles/worker2.dir/src/RecordLoader.cpp.o: CMakeFiles/worker2.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/work/Desktop/JSONSki/build/temp.macosx-10.9-universal2-3.9/jsonski/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/worker2.dir/src/RecordLoader.cpp.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/worker2.dir/src/RecordLoader.cpp.o -MF CMakeFiles/worker2.dir/src/RecordLoader.cpp.o.d -o CMakeFiles/worker2.dir/src/RecordLoader.cpp.o -c /Users/work/Desktop/JSONSki/src/RecordLoader.cpp

CMakeFiles/worker2.dir/src/RecordLoader.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/worker2.dir/src/RecordLoader.cpp.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/work/Desktop/JSONSki/src/RecordLoader.cpp > CMakeFiles/worker2.dir/src/RecordLoader.cpp.i

CMakeFiles/worker2.dir/src/RecordLoader.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/worker2.dir/src/RecordLoader.cpp.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/work/Desktop/JSONSki/src/RecordLoader.cpp -o CMakeFiles/worker2.dir/src/RecordLoader.cpp.s

# Object files for target worker2
worker2_OBJECTS = \
"CMakeFiles/worker2.dir/src/RecordLoader.cpp.o"

# External object files for target worker2
worker2_EXTERNAL_OBJECTS =

libworker2.a: CMakeFiles/worker2.dir/src/RecordLoader.cpp.o
libworker2.a: CMakeFiles/worker2.dir/build.make
libworker2.a: CMakeFiles/worker2.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/Users/work/Desktop/JSONSki/build/temp.macosx-10.9-universal2-3.9/jsonski/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX static library libworker2.a"
	$(CMAKE_COMMAND) -P CMakeFiles/worker2.dir/cmake_clean_target.cmake
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/worker2.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/worker2.dir/build: libworker2.a
.PHONY : CMakeFiles/worker2.dir/build

CMakeFiles/worker2.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/worker2.dir/cmake_clean.cmake
.PHONY : CMakeFiles/worker2.dir/clean

CMakeFiles/worker2.dir/depend:
	cd /Users/work/Desktop/JSONSki/build/temp.macosx-10.9-universal2-3.9/jsonski && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/work/Desktop/JSONSki /Users/work/Desktop/JSONSki /Users/work/Desktop/JSONSki/build/temp.macosx-10.9-universal2-3.9/jsonski /Users/work/Desktop/JSONSki/build/temp.macosx-10.9-universal2-3.9/jsonski /Users/work/Desktop/JSONSki/build/temp.macosx-10.9-universal2-3.9/jsonski/CMakeFiles/worker2.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : CMakeFiles/worker2.dir/depend

