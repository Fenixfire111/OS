# CMAKE generated file: DO NOT EDIT!
# Generated by "MinGW Makefiles" Generator, CMake Version 3.17

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

# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

SHELL = cmd.exe

# The CMake executable.
CMAKE_COMMAND = "C:\Program Files\JetBrains\CLion 2020.2.1\bin\cmake\win\bin\cmake.exe"

# The command to remove a file.
RM = "C:\Program Files\JetBrains\CLion 2020.2.1\bin\cmake\win\bin\cmake.exe" -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = D:\04_Programming\02_University\OS\07_MatrixLin

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = D:\04_Programming\02_University\OS\07_MatrixLin\cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/07_MatrixLin.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/07_MatrixLin.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/07_MatrixLin.dir/flags.make

CMakeFiles/07_MatrixLin.dir/main.cpp.obj: CMakeFiles/07_MatrixLin.dir/flags.make
CMakeFiles/07_MatrixLin.dir/main.cpp.obj: ../main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=D:\04_Programming\02_University\OS\07_MatrixLin\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/07_MatrixLin.dir/main.cpp.obj"
	C:\PROGRA~2\MINGW-~1\I686-8~1.0-P\mingw32\bin\G__~1.EXE  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles\07_MatrixLin.dir\main.cpp.obj -c D:\04_Programming\02_University\OS\07_MatrixLin\main.cpp

CMakeFiles/07_MatrixLin.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/07_MatrixLin.dir/main.cpp.i"
	C:\PROGRA~2\MINGW-~1\I686-8~1.0-P\mingw32\bin\G__~1.EXE $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E D:\04_Programming\02_University\OS\07_MatrixLin\main.cpp > CMakeFiles\07_MatrixLin.dir\main.cpp.i

CMakeFiles/07_MatrixLin.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/07_MatrixLin.dir/main.cpp.s"
	C:\PROGRA~2\MINGW-~1\I686-8~1.0-P\mingw32\bin\G__~1.EXE $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S D:\04_Programming\02_University\OS\07_MatrixLin\main.cpp -o CMakeFiles\07_MatrixLin.dir\main.cpp.s

# Object files for target 07_MatrixLin
07_MatrixLin_OBJECTS = \
"CMakeFiles/07_MatrixLin.dir/main.cpp.obj"

# External object files for target 07_MatrixLin
07_MatrixLin_EXTERNAL_OBJECTS =

07_MatrixLin.exe: CMakeFiles/07_MatrixLin.dir/main.cpp.obj
07_MatrixLin.exe: CMakeFiles/07_MatrixLin.dir/build.make
07_MatrixLin.exe: CMakeFiles/07_MatrixLin.dir/linklibs.rsp
07_MatrixLin.exe: CMakeFiles/07_MatrixLin.dir/objects1.rsp
07_MatrixLin.exe: CMakeFiles/07_MatrixLin.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=D:\04_Programming\02_University\OS\07_MatrixLin\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable 07_MatrixLin.exe"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\07_MatrixLin.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/07_MatrixLin.dir/build: 07_MatrixLin.exe

.PHONY : CMakeFiles/07_MatrixLin.dir/build

CMakeFiles/07_MatrixLin.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles\07_MatrixLin.dir\cmake_clean.cmake
.PHONY : CMakeFiles/07_MatrixLin.dir/clean

CMakeFiles/07_MatrixLin.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" D:\04_Programming\02_University\OS\07_MatrixLin D:\04_Programming\02_University\OS\07_MatrixLin D:\04_Programming\02_University\OS\07_MatrixLin\cmake-build-debug D:\04_Programming\02_University\OS\07_MatrixLin\cmake-build-debug D:\04_Programming\02_University\OS\07_MatrixLin\cmake-build-debug\CMakeFiles\07_MatrixLin.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/07_MatrixLin.dir/depend

