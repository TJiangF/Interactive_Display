# CMAKE generated file: DO NOT EDIT!
# Generated by "MinGW Makefiles" Generator, CMake Version 3.25

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

SHELL = cmd.exe

# The CMake executable.
CMAKE_COMMAND = C:\Tools\cmake-3.25.1-windows-x86_64\bin\cmake.exe

# The command to remove a file.
RM = C:\Tools\cmake-3.25.1-windows-x86_64\bin\cmake.exe -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = D:\Project\lidar_control\lidarsdk\SDK-X2\Interactive_Display

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = D:\Project\lidar_control\lidarsdk\SDK-X2\Interactive_Display\build

# Include any dependencies generated for this target.
include demo/CMakeFiles/Interactive_Display_Demo.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include demo/CMakeFiles/Interactive_Display_Demo.dir/compiler_depend.make

# Include the progress variables for this target.
include demo/CMakeFiles/Interactive_Display_Demo.dir/progress.make

# Include the compile flags for this target's objects.
include demo/CMakeFiles/Interactive_Display_Demo.dir/flags.make

demo/CMakeFiles/Interactive_Display_Demo.dir/Interactive_Display_Demo.cpp.obj: demo/CMakeFiles/Interactive_Display_Demo.dir/flags.make
demo/CMakeFiles/Interactive_Display_Demo.dir/Interactive_Display_Demo.cpp.obj: demo/CMakeFiles/Interactive_Display_Demo.dir/includes_CXX.rsp
demo/CMakeFiles/Interactive_Display_Demo.dir/Interactive_Display_Demo.cpp.obj: D:/Project/lidar_control/lidarsdk/SDK-X2/Interactive_Display/demo/Interactive_Display_Demo.cpp
demo/CMakeFiles/Interactive_Display_Demo.dir/Interactive_Display_Demo.cpp.obj: demo/CMakeFiles/Interactive_Display_Demo.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=D:\Project\lidar_control\lidarsdk\SDK-X2\Interactive_Display\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object demo/CMakeFiles/Interactive_Display_Demo.dir/Interactive_Display_Demo.cpp.obj"
	cd /d D:\Project\lidar_control\lidarsdk\SDK-X2\Interactive_Display\build\demo && C:/Tools/mingw64_2/mingw64/bin/ccache.exe C:\Tools\mingw64_2\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT demo/CMakeFiles/Interactive_Display_Demo.dir/Interactive_Display_Demo.cpp.obj -MF CMakeFiles\Interactive_Display_Demo.dir\Interactive_Display_Demo.cpp.obj.d -o CMakeFiles\Interactive_Display_Demo.dir\Interactive_Display_Demo.cpp.obj -c D:\Project\lidar_control\lidarsdk\SDK-X2\Interactive_Display\demo\Interactive_Display_Demo.cpp

demo/CMakeFiles/Interactive_Display_Demo.dir/Interactive_Display_Demo.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Interactive_Display_Demo.dir/Interactive_Display_Demo.cpp.i"
	cd /d D:\Project\lidar_control\lidarsdk\SDK-X2\Interactive_Display\build\demo && C:\Tools\mingw64_2\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E D:\Project\lidar_control\lidarsdk\SDK-X2\Interactive_Display\demo\Interactive_Display_Demo.cpp > CMakeFiles\Interactive_Display_Demo.dir\Interactive_Display_Demo.cpp.i

demo/CMakeFiles/Interactive_Display_Demo.dir/Interactive_Display_Demo.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Interactive_Display_Demo.dir/Interactive_Display_Demo.cpp.s"
	cd /d D:\Project\lidar_control\lidarsdk\SDK-X2\Interactive_Display\build\demo && C:\Tools\mingw64_2\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S D:\Project\lidar_control\lidarsdk\SDK-X2\Interactive_Display\demo\Interactive_Display_Demo.cpp -o CMakeFiles\Interactive_Display_Demo.dir\Interactive_Display_Demo.cpp.s

# Object files for target Interactive_Display_Demo
Interactive_Display_Demo_OBJECTS = \
"CMakeFiles/Interactive_Display_Demo.dir/Interactive_Display_Demo.cpp.obj"

# External object files for target Interactive_Display_Demo
Interactive_Display_Demo_EXTERNAL_OBJECTS =

Interactive_Display_Demo.exe: demo/CMakeFiles/Interactive_Display_Demo.dir/Interactive_Display_Demo.cpp.obj
Interactive_Display_Demo.exe: demo/CMakeFiles/Interactive_Display_Demo.dir/build.make
Interactive_Display_Demo.exe: libydlidar_sdk.a
Interactive_Display_Demo.exe: C:/Tools/SFML-2.6.1/lib/libsfml-graphics.a
Interactive_Display_Demo.exe: C:/Tools/SFML-2.6.1/lib/libsfml-audio.a
Interactive_Display_Demo.exe: C:/Tools/SFML-2.6.1/lib/libsfml-window.a
Interactive_Display_Demo.exe: C:/Tools/SFML-2.6.1/lib/libsfml-system.a
Interactive_Display_Demo.exe: demo/CMakeFiles/Interactive_Display_Demo.dir/linkLibs.rsp
Interactive_Display_Demo.exe: demo/CMakeFiles/Interactive_Display_Demo.dir/objects1
Interactive_Display_Demo.exe: demo/CMakeFiles/Interactive_Display_Demo.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=D:\Project\lidar_control\lidarsdk\SDK-X2\Interactive_Display\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable ..\Interactive_Display_Demo.exe"
	cd /d D:\Project\lidar_control\lidarsdk\SDK-X2\Interactive_Display\build\demo && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\Interactive_Display_Demo.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
demo/CMakeFiles/Interactive_Display_Demo.dir/build: Interactive_Display_Demo.exe
.PHONY : demo/CMakeFiles/Interactive_Display_Demo.dir/build

demo/CMakeFiles/Interactive_Display_Demo.dir/clean:
	cd /d D:\Project\lidar_control\lidarsdk\SDK-X2\Interactive_Display\build\demo && $(CMAKE_COMMAND) -P CMakeFiles\Interactive_Display_Demo.dir\cmake_clean.cmake
.PHONY : demo/CMakeFiles/Interactive_Display_Demo.dir/clean

demo/CMakeFiles/Interactive_Display_Demo.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" D:\Project\lidar_control\lidarsdk\SDK-X2\Interactive_Display D:\Project\lidar_control\lidarsdk\SDK-X2\Interactive_Display\demo D:\Project\lidar_control\lidarsdk\SDK-X2\Interactive_Display\build D:\Project\lidar_control\lidarsdk\SDK-X2\Interactive_Display\build\demo D:\Project\lidar_control\lidarsdk\SDK-X2\Interactive_Display\build\demo\CMakeFiles\Interactive_Display_Demo.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : demo/CMakeFiles/Interactive_Display_Demo.dir/depend
