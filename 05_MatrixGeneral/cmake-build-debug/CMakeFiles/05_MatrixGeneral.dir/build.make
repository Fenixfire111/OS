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
CMAKE_SOURCE_DIR = D:\04_Programming\02_University\MCA\05_MatrixGeneral

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = D:\04_Programming\02_University\MCA\05_MatrixGeneral\cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/05_MatrixGeneral.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/05_MatrixGeneral.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/05_MatrixGeneral.dir/flags.make

CMakeFiles/05_MatrixGeneral.dir/main.cpp.obj: CMakeFiles/05_MatrixGeneral.dir/flags.make
CMakeFiles/05_MatrixGeneral.dir/main.cpp.obj: ../main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=D:\04_Programming\02_University\MCA\05_MatrixGeneral\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/05_MatrixGeneral.dir/main.cpp.obj"
	C:\PROGRA~2\MINGW-~1\I686-8~1.0-P\mingw32\bin\G__~1.EXE  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles\05_MatrixGeneral.dir\main.cpp.obj -c D:\04_Programming\02_University\MCA\05_MatrixGeneral\main.cpp

CMakeFiles/05_MatrixGeneral.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/05_MatrixGeneral.dir/main.cpp.i"
	C:\PROGRA~2\MINGW-~1\I686-8~1.0-P\mingw32\bin\G__~1.EXE $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E D:\04_Programming\02_University\MCA\05_MatrixGeneral\main.cpp > CMakeFiles\05_MatrixGeneral.dir\main.cpp.i

CMakeFiles/05_MatrixGeneral.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/05_MatrixGeneral.dir/main.cpp.s"
	C:\PROGRA~2\MINGW-~1\I686-8~1.0-P\mingw32\bin\G__~1.EXE $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S D:\04_Programming\02_University\MCA\05_MatrixGeneral\main.cpp -o CMakeFiles\05_MatrixGeneral.dir\main.cpp.s

CMakeFiles/05_MatrixGeneral.dir/matrix.cpp.obj: CMakeFiles/05_MatrixGeneral.dir/flags.make
CMakeFiles/05_MatrixGeneral.dir/matrix.cpp.obj: ../matrix.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=D:\04_Programming\02_University\MCA\05_MatrixGeneral\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/05_MatrixGeneral.dir/matrix.cpp.obj"
	C:\PROGRA~2\MINGW-~1\I686-8~1.0-P\mingw32\bin\G__~1.EXE  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles\05_MatrixGeneral.dir\matrix.cpp.obj -c D:\04_Programming\02_University\MCA\05_MatrixGeneral\matrix.cpp

CMakeFiles/05_MatrixGeneral.dir/matrix.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/05_MatrixGeneral.dir/matrix.cpp.i"
	C:\PROGRA~2\MINGW-~1\I686-8~1.0-P\mingw32\bin\G__~1.EXE $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E D:\04_Programming\02_University\MCA\05_MatrixGeneral\matrix.cpp > CMakeFiles\05_MatrixGeneral.dir\matrix.cpp.i

CMakeFiles/05_MatrixGeneral.dir/matrix.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/05_MatrixGeneral.dir/matrix.cpp.s"
	C:\PROGRA~2\MINGW-~1\I686-8~1.0-P\mingw32\bin\G__~1.EXE $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S D:\04_Programming\02_University\MCA\05_MatrixGeneral\matrix.cpp -o CMakeFiles\05_MatrixGeneral.dir\matrix.cpp.s

# Object files for target 05_MatrixGeneral
05_MatrixGeneral_OBJECTS = \
"CMakeFiles/05_MatrixGeneral.dir/main.cpp.obj" \
"CMakeFiles/05_MatrixGeneral.dir/matrix.cpp.obj"

# External object files for target 05_MatrixGeneral
05_MatrixGeneral_EXTERNAL_OBJECTS =

05_MatrixGeneral.exe: CMakeFiles/05_MatrixGeneral.dir/main.cpp.obj
05_MatrixGeneral.exe: CMakeFiles/05_MatrixGeneral.dir/matrix.cpp.obj
05_MatrixGeneral.exe: CMakeFiles/05_MatrixGeneral.dir/build.make
05_MatrixGeneral.exe: CMakeFiles/05_MatrixGeneral.dir/linklibs.rsp
05_MatrixGeneral.exe: CMakeFiles/05_MatrixGeneral.dir/objects1.rsp
05_MatrixGeneral.exe: CMakeFiles/05_MatrixGeneral.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=D:\04_Programming\02_University\MCA\05_MatrixGeneral\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX executable 05_MatrixGeneral.exe"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\05_MatrixGeneral.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/05_MatrixGeneral.dir/build: 05_MatrixGeneral.exe

.PHONY : CMakeFiles/05_MatrixGeneral.dir/build

CMakeFiles/05_MatrixGeneral.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles\05_MatrixGeneral.dir\cmake_clean.cmake
.PHONY : CMakeFiles/05_MatrixGeneral.dir/clean

CMakeFiles/05_MatrixGeneral.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" D:\04_Programming\02_University\MCA\05_MatrixGeneral D:\04_Programming\02_University\MCA\05_MatrixGeneral D:\04_Programming\02_University\MCA\05_MatrixGeneral\cmake-build-debug D:\04_Programming\02_University\MCA\05_MatrixGeneral\cmake-build-debug D:\04_Programming\02_University\MCA\05_MatrixGeneral\cmake-build-debug\CMakeFiles\05_MatrixGeneral.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/05_MatrixGeneral.dir/depend

