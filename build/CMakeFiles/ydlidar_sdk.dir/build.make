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
CMAKE_SOURCE_DIR = D:\Project\lidar_control\lidarsdk\SDK-X2\YDLidar-SDK-master

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = D:\Project\lidar_control\lidarsdk\SDK-X2\YDLidar-SDK-master\build

# Include any dependencies generated for this target.
include CMakeFiles/ydlidar_sdk.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/ydlidar_sdk.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/ydlidar_sdk.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/ydlidar_sdk.dir/flags.make

CMakeFiles/ydlidar_sdk.dir/core/base/timer.cpp.obj: CMakeFiles/ydlidar_sdk.dir/flags.make
CMakeFiles/ydlidar_sdk.dir/core/base/timer.cpp.obj: CMakeFiles/ydlidar_sdk.dir/includes_CXX.rsp
CMakeFiles/ydlidar_sdk.dir/core/base/timer.cpp.obj: D:/Project/lidar_control/lidarsdk/SDK-X2/YDLidar-SDK-master/core/base/timer.cpp
CMakeFiles/ydlidar_sdk.dir/core/base/timer.cpp.obj: CMakeFiles/ydlidar_sdk.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=D:\Project\lidar_control\lidarsdk\SDK-X2\YDLidar-SDK-master\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/ydlidar_sdk.dir/core/base/timer.cpp.obj"
	C:/Tools/mingw64_2/mingw64/bin/ccache.exe C:\Tools\mingw64_2\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/ydlidar_sdk.dir/core/base/timer.cpp.obj -MF CMakeFiles\ydlidar_sdk.dir\core\base\timer.cpp.obj.d -o CMakeFiles\ydlidar_sdk.dir\core\base\timer.cpp.obj -c D:\Project\lidar_control\lidarsdk\SDK-X2\YDLidar-SDK-master\core\base\timer.cpp

CMakeFiles/ydlidar_sdk.dir/core/base/timer.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ydlidar_sdk.dir/core/base/timer.cpp.i"
	C:\Tools\mingw64_2\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E D:\Project\lidar_control\lidarsdk\SDK-X2\YDLidar-SDK-master\core\base\timer.cpp > CMakeFiles\ydlidar_sdk.dir\core\base\timer.cpp.i

CMakeFiles/ydlidar_sdk.dir/core/base/timer.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ydlidar_sdk.dir/core/base/timer.cpp.s"
	C:\Tools\mingw64_2\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S D:\Project\lidar_control\lidarsdk\SDK-X2\YDLidar-SDK-master\core\base\timer.cpp -o CMakeFiles\ydlidar_sdk.dir\core\base\timer.cpp.s

CMakeFiles/ydlidar_sdk.dir/core/common/ydlidar_def.cpp.obj: CMakeFiles/ydlidar_sdk.dir/flags.make
CMakeFiles/ydlidar_sdk.dir/core/common/ydlidar_def.cpp.obj: CMakeFiles/ydlidar_sdk.dir/includes_CXX.rsp
CMakeFiles/ydlidar_sdk.dir/core/common/ydlidar_def.cpp.obj: D:/Project/lidar_control/lidarsdk/SDK-X2/YDLidar-SDK-master/core/common/ydlidar_def.cpp
CMakeFiles/ydlidar_sdk.dir/core/common/ydlidar_def.cpp.obj: CMakeFiles/ydlidar_sdk.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=D:\Project\lidar_control\lidarsdk\SDK-X2\YDLidar-SDK-master\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/ydlidar_sdk.dir/core/common/ydlidar_def.cpp.obj"
	C:/Tools/mingw64_2/mingw64/bin/ccache.exe C:\Tools\mingw64_2\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/ydlidar_sdk.dir/core/common/ydlidar_def.cpp.obj -MF CMakeFiles\ydlidar_sdk.dir\core\common\ydlidar_def.cpp.obj.d -o CMakeFiles\ydlidar_sdk.dir\core\common\ydlidar_def.cpp.obj -c D:\Project\lidar_control\lidarsdk\SDK-X2\YDLidar-SDK-master\core\common\ydlidar_def.cpp

CMakeFiles/ydlidar_sdk.dir/core/common/ydlidar_def.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ydlidar_sdk.dir/core/common/ydlidar_def.cpp.i"
	C:\Tools\mingw64_2\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E D:\Project\lidar_control\lidarsdk\SDK-X2\YDLidar-SDK-master\core\common\ydlidar_def.cpp > CMakeFiles\ydlidar_sdk.dir\core\common\ydlidar_def.cpp.i

CMakeFiles/ydlidar_sdk.dir/core/common/ydlidar_def.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ydlidar_sdk.dir/core/common/ydlidar_def.cpp.s"
	C:\Tools\mingw64_2\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S D:\Project\lidar_control\lidarsdk\SDK-X2\YDLidar-SDK-master\core\common\ydlidar_def.cpp -o CMakeFiles\ydlidar_sdk.dir\core\common\ydlidar_def.cpp.s

CMakeFiles/ydlidar_sdk.dir/core/network/ActiveSocket.cpp.obj: CMakeFiles/ydlidar_sdk.dir/flags.make
CMakeFiles/ydlidar_sdk.dir/core/network/ActiveSocket.cpp.obj: CMakeFiles/ydlidar_sdk.dir/includes_CXX.rsp
CMakeFiles/ydlidar_sdk.dir/core/network/ActiveSocket.cpp.obj: D:/Project/lidar_control/lidarsdk/SDK-X2/YDLidar-SDK-master/core/network/ActiveSocket.cpp
CMakeFiles/ydlidar_sdk.dir/core/network/ActiveSocket.cpp.obj: CMakeFiles/ydlidar_sdk.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=D:\Project\lidar_control\lidarsdk\SDK-X2\YDLidar-SDK-master\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/ydlidar_sdk.dir/core/network/ActiveSocket.cpp.obj"
	C:/Tools/mingw64_2/mingw64/bin/ccache.exe C:\Tools\mingw64_2\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/ydlidar_sdk.dir/core/network/ActiveSocket.cpp.obj -MF CMakeFiles\ydlidar_sdk.dir\core\network\ActiveSocket.cpp.obj.d -o CMakeFiles\ydlidar_sdk.dir\core\network\ActiveSocket.cpp.obj -c D:\Project\lidar_control\lidarsdk\SDK-X2\YDLidar-SDK-master\core\network\ActiveSocket.cpp

CMakeFiles/ydlidar_sdk.dir/core/network/ActiveSocket.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ydlidar_sdk.dir/core/network/ActiveSocket.cpp.i"
	C:\Tools\mingw64_2\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E D:\Project\lidar_control\lidarsdk\SDK-X2\YDLidar-SDK-master\core\network\ActiveSocket.cpp > CMakeFiles\ydlidar_sdk.dir\core\network\ActiveSocket.cpp.i

CMakeFiles/ydlidar_sdk.dir/core/network/ActiveSocket.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ydlidar_sdk.dir/core/network/ActiveSocket.cpp.s"
	C:\Tools\mingw64_2\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S D:\Project\lidar_control\lidarsdk\SDK-X2\YDLidar-SDK-master\core\network\ActiveSocket.cpp -o CMakeFiles\ydlidar_sdk.dir\core\network\ActiveSocket.cpp.s

CMakeFiles/ydlidar_sdk.dir/core/network/PassiveSocket.cpp.obj: CMakeFiles/ydlidar_sdk.dir/flags.make
CMakeFiles/ydlidar_sdk.dir/core/network/PassiveSocket.cpp.obj: CMakeFiles/ydlidar_sdk.dir/includes_CXX.rsp
CMakeFiles/ydlidar_sdk.dir/core/network/PassiveSocket.cpp.obj: D:/Project/lidar_control/lidarsdk/SDK-X2/YDLidar-SDK-master/core/network/PassiveSocket.cpp
CMakeFiles/ydlidar_sdk.dir/core/network/PassiveSocket.cpp.obj: CMakeFiles/ydlidar_sdk.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=D:\Project\lidar_control\lidarsdk\SDK-X2\YDLidar-SDK-master\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/ydlidar_sdk.dir/core/network/PassiveSocket.cpp.obj"
	C:/Tools/mingw64_2/mingw64/bin/ccache.exe C:\Tools\mingw64_2\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/ydlidar_sdk.dir/core/network/PassiveSocket.cpp.obj -MF CMakeFiles\ydlidar_sdk.dir\core\network\PassiveSocket.cpp.obj.d -o CMakeFiles\ydlidar_sdk.dir\core\network\PassiveSocket.cpp.obj -c D:\Project\lidar_control\lidarsdk\SDK-X2\YDLidar-SDK-master\core\network\PassiveSocket.cpp

CMakeFiles/ydlidar_sdk.dir/core/network/PassiveSocket.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ydlidar_sdk.dir/core/network/PassiveSocket.cpp.i"
	C:\Tools\mingw64_2\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E D:\Project\lidar_control\lidarsdk\SDK-X2\YDLidar-SDK-master\core\network\PassiveSocket.cpp > CMakeFiles\ydlidar_sdk.dir\core\network\PassiveSocket.cpp.i

CMakeFiles/ydlidar_sdk.dir/core/network/PassiveSocket.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ydlidar_sdk.dir/core/network/PassiveSocket.cpp.s"
	C:\Tools\mingw64_2\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S D:\Project\lidar_control\lidarsdk\SDK-X2\YDLidar-SDK-master\core\network\PassiveSocket.cpp -o CMakeFiles\ydlidar_sdk.dir\core\network\PassiveSocket.cpp.s

CMakeFiles/ydlidar_sdk.dir/core/network/SimpleSocket.cpp.obj: CMakeFiles/ydlidar_sdk.dir/flags.make
CMakeFiles/ydlidar_sdk.dir/core/network/SimpleSocket.cpp.obj: CMakeFiles/ydlidar_sdk.dir/includes_CXX.rsp
CMakeFiles/ydlidar_sdk.dir/core/network/SimpleSocket.cpp.obj: D:/Project/lidar_control/lidarsdk/SDK-X2/YDLidar-SDK-master/core/network/SimpleSocket.cpp
CMakeFiles/ydlidar_sdk.dir/core/network/SimpleSocket.cpp.obj: CMakeFiles/ydlidar_sdk.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=D:\Project\lidar_control\lidarsdk\SDK-X2\YDLidar-SDK-master\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object CMakeFiles/ydlidar_sdk.dir/core/network/SimpleSocket.cpp.obj"
	C:/Tools/mingw64_2/mingw64/bin/ccache.exe C:\Tools\mingw64_2\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/ydlidar_sdk.dir/core/network/SimpleSocket.cpp.obj -MF CMakeFiles\ydlidar_sdk.dir\core\network\SimpleSocket.cpp.obj.d -o CMakeFiles\ydlidar_sdk.dir\core\network\SimpleSocket.cpp.obj -c D:\Project\lidar_control\lidarsdk\SDK-X2\YDLidar-SDK-master\core\network\SimpleSocket.cpp

CMakeFiles/ydlidar_sdk.dir/core/network/SimpleSocket.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ydlidar_sdk.dir/core/network/SimpleSocket.cpp.i"
	C:\Tools\mingw64_2\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E D:\Project\lidar_control\lidarsdk\SDK-X2\YDLidar-SDK-master\core\network\SimpleSocket.cpp > CMakeFiles\ydlidar_sdk.dir\core\network\SimpleSocket.cpp.i

CMakeFiles/ydlidar_sdk.dir/core/network/SimpleSocket.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ydlidar_sdk.dir/core/network/SimpleSocket.cpp.s"
	C:\Tools\mingw64_2\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S D:\Project\lidar_control\lidarsdk\SDK-X2\YDLidar-SDK-master\core\network\SimpleSocket.cpp -o CMakeFiles\ydlidar_sdk.dir\core\network\SimpleSocket.cpp.s

CMakeFiles/ydlidar_sdk.dir/core/serial/serial.cpp.obj: CMakeFiles/ydlidar_sdk.dir/flags.make
CMakeFiles/ydlidar_sdk.dir/core/serial/serial.cpp.obj: CMakeFiles/ydlidar_sdk.dir/includes_CXX.rsp
CMakeFiles/ydlidar_sdk.dir/core/serial/serial.cpp.obj: D:/Project/lidar_control/lidarsdk/SDK-X2/YDLidar-SDK-master/core/serial/serial.cpp
CMakeFiles/ydlidar_sdk.dir/core/serial/serial.cpp.obj: CMakeFiles/ydlidar_sdk.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=D:\Project\lidar_control\lidarsdk\SDK-X2\YDLidar-SDK-master\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object CMakeFiles/ydlidar_sdk.dir/core/serial/serial.cpp.obj"
	C:/Tools/mingw64_2/mingw64/bin/ccache.exe C:\Tools\mingw64_2\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/ydlidar_sdk.dir/core/serial/serial.cpp.obj -MF CMakeFiles\ydlidar_sdk.dir\core\serial\serial.cpp.obj.d -o CMakeFiles\ydlidar_sdk.dir\core\serial\serial.cpp.obj -c D:\Project\lidar_control\lidarsdk\SDK-X2\YDLidar-SDK-master\core\serial\serial.cpp

CMakeFiles/ydlidar_sdk.dir/core/serial/serial.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ydlidar_sdk.dir/core/serial/serial.cpp.i"
	C:\Tools\mingw64_2\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E D:\Project\lidar_control\lidarsdk\SDK-X2\YDLidar-SDK-master\core\serial\serial.cpp > CMakeFiles\ydlidar_sdk.dir\core\serial\serial.cpp.i

CMakeFiles/ydlidar_sdk.dir/core/serial/serial.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ydlidar_sdk.dir/core/serial/serial.cpp.s"
	C:\Tools\mingw64_2\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S D:\Project\lidar_control\lidarsdk\SDK-X2\YDLidar-SDK-master\core\serial\serial.cpp -o CMakeFiles\ydlidar_sdk.dir\core\serial\serial.cpp.s

CMakeFiles/ydlidar_sdk.dir/core/serial/impl/windows/list_ports_win.cpp.obj: CMakeFiles/ydlidar_sdk.dir/flags.make
CMakeFiles/ydlidar_sdk.dir/core/serial/impl/windows/list_ports_win.cpp.obj: CMakeFiles/ydlidar_sdk.dir/includes_CXX.rsp
CMakeFiles/ydlidar_sdk.dir/core/serial/impl/windows/list_ports_win.cpp.obj: D:/Project/lidar_control/lidarsdk/SDK-X2/YDLidar-SDK-master/core/serial/impl/windows/list_ports_win.cpp
CMakeFiles/ydlidar_sdk.dir/core/serial/impl/windows/list_ports_win.cpp.obj: CMakeFiles/ydlidar_sdk.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=D:\Project\lidar_control\lidarsdk\SDK-X2\YDLidar-SDK-master\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building CXX object CMakeFiles/ydlidar_sdk.dir/core/serial/impl/windows/list_ports_win.cpp.obj"
	C:/Tools/mingw64_2/mingw64/bin/ccache.exe C:\Tools\mingw64_2\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/ydlidar_sdk.dir/core/serial/impl/windows/list_ports_win.cpp.obj -MF CMakeFiles\ydlidar_sdk.dir\core\serial\impl\windows\list_ports_win.cpp.obj.d -o CMakeFiles\ydlidar_sdk.dir\core\serial\impl\windows\list_ports_win.cpp.obj -c D:\Project\lidar_control\lidarsdk\SDK-X2\YDLidar-SDK-master\core\serial\impl\windows\list_ports_win.cpp

CMakeFiles/ydlidar_sdk.dir/core/serial/impl/windows/list_ports_win.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ydlidar_sdk.dir/core/serial/impl/windows/list_ports_win.cpp.i"
	C:\Tools\mingw64_2\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E D:\Project\lidar_control\lidarsdk\SDK-X2\YDLidar-SDK-master\core\serial\impl\windows\list_ports_win.cpp > CMakeFiles\ydlidar_sdk.dir\core\serial\impl\windows\list_ports_win.cpp.i

CMakeFiles/ydlidar_sdk.dir/core/serial/impl/windows/list_ports_win.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ydlidar_sdk.dir/core/serial/impl/windows/list_ports_win.cpp.s"
	C:\Tools\mingw64_2\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S D:\Project\lidar_control\lidarsdk\SDK-X2\YDLidar-SDK-master\core\serial\impl\windows\list_ports_win.cpp -o CMakeFiles\ydlidar_sdk.dir\core\serial\impl\windows\list_ports_win.cpp.s

CMakeFiles/ydlidar_sdk.dir/core/serial/impl/windows/win_serial.cpp.obj: CMakeFiles/ydlidar_sdk.dir/flags.make
CMakeFiles/ydlidar_sdk.dir/core/serial/impl/windows/win_serial.cpp.obj: CMakeFiles/ydlidar_sdk.dir/includes_CXX.rsp
CMakeFiles/ydlidar_sdk.dir/core/serial/impl/windows/win_serial.cpp.obj: D:/Project/lidar_control/lidarsdk/SDK-X2/YDLidar-SDK-master/core/serial/impl/windows/win_serial.cpp
CMakeFiles/ydlidar_sdk.dir/core/serial/impl/windows/win_serial.cpp.obj: CMakeFiles/ydlidar_sdk.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=D:\Project\lidar_control\lidarsdk\SDK-X2\YDLidar-SDK-master\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Building CXX object CMakeFiles/ydlidar_sdk.dir/core/serial/impl/windows/win_serial.cpp.obj"
	C:/Tools/mingw64_2/mingw64/bin/ccache.exe C:\Tools\mingw64_2\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/ydlidar_sdk.dir/core/serial/impl/windows/win_serial.cpp.obj -MF CMakeFiles\ydlidar_sdk.dir\core\serial\impl\windows\win_serial.cpp.obj.d -o CMakeFiles\ydlidar_sdk.dir\core\serial\impl\windows\win_serial.cpp.obj -c D:\Project\lidar_control\lidarsdk\SDK-X2\YDLidar-SDK-master\core\serial\impl\windows\win_serial.cpp

CMakeFiles/ydlidar_sdk.dir/core/serial/impl/windows/win_serial.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ydlidar_sdk.dir/core/serial/impl/windows/win_serial.cpp.i"
	C:\Tools\mingw64_2\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E D:\Project\lidar_control\lidarsdk\SDK-X2\YDLidar-SDK-master\core\serial\impl\windows\win_serial.cpp > CMakeFiles\ydlidar_sdk.dir\core\serial\impl\windows\win_serial.cpp.i

CMakeFiles/ydlidar_sdk.dir/core/serial/impl/windows/win_serial.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ydlidar_sdk.dir/core/serial/impl/windows/win_serial.cpp.s"
	C:\Tools\mingw64_2\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S D:\Project\lidar_control\lidarsdk\SDK-X2\YDLidar-SDK-master\core\serial\impl\windows\win_serial.cpp -o CMakeFiles\ydlidar_sdk.dir\core\serial\impl\windows\win_serial.cpp.s

CMakeFiles/ydlidar_sdk.dir/src/CYdLidar.cpp.obj: CMakeFiles/ydlidar_sdk.dir/flags.make
CMakeFiles/ydlidar_sdk.dir/src/CYdLidar.cpp.obj: CMakeFiles/ydlidar_sdk.dir/includes_CXX.rsp
CMakeFiles/ydlidar_sdk.dir/src/CYdLidar.cpp.obj: D:/Project/lidar_control/lidarsdk/SDK-X2/YDLidar-SDK-master/src/CYdLidar.cpp
CMakeFiles/ydlidar_sdk.dir/src/CYdLidar.cpp.obj: CMakeFiles/ydlidar_sdk.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=D:\Project\lidar_control\lidarsdk\SDK-X2\YDLidar-SDK-master\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Building CXX object CMakeFiles/ydlidar_sdk.dir/src/CYdLidar.cpp.obj"
	C:/Tools/mingw64_2/mingw64/bin/ccache.exe C:\Tools\mingw64_2\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/ydlidar_sdk.dir/src/CYdLidar.cpp.obj -MF CMakeFiles\ydlidar_sdk.dir\src\CYdLidar.cpp.obj.d -o CMakeFiles\ydlidar_sdk.dir\src\CYdLidar.cpp.obj -c D:\Project\lidar_control\lidarsdk\SDK-X2\YDLidar-SDK-master\src\CYdLidar.cpp

CMakeFiles/ydlidar_sdk.dir/src/CYdLidar.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ydlidar_sdk.dir/src/CYdLidar.cpp.i"
	C:\Tools\mingw64_2\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E D:\Project\lidar_control\lidarsdk\SDK-X2\YDLidar-SDK-master\src\CYdLidar.cpp > CMakeFiles\ydlidar_sdk.dir\src\CYdLidar.cpp.i

CMakeFiles/ydlidar_sdk.dir/src/CYdLidar.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ydlidar_sdk.dir/src/CYdLidar.cpp.s"
	C:\Tools\mingw64_2\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S D:\Project\lidar_control\lidarsdk\SDK-X2\YDLidar-SDK-master\src\CYdLidar.cpp -o CMakeFiles\ydlidar_sdk.dir\src\CYdLidar.cpp.s

CMakeFiles/ydlidar_sdk.dir/src/ETLidarDriver.cpp.obj: CMakeFiles/ydlidar_sdk.dir/flags.make
CMakeFiles/ydlidar_sdk.dir/src/ETLidarDriver.cpp.obj: CMakeFiles/ydlidar_sdk.dir/includes_CXX.rsp
CMakeFiles/ydlidar_sdk.dir/src/ETLidarDriver.cpp.obj: D:/Project/lidar_control/lidarsdk/SDK-X2/YDLidar-SDK-master/src/ETLidarDriver.cpp
CMakeFiles/ydlidar_sdk.dir/src/ETLidarDriver.cpp.obj: CMakeFiles/ydlidar_sdk.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=D:\Project\lidar_control\lidarsdk\SDK-X2\YDLidar-SDK-master\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_10) "Building CXX object CMakeFiles/ydlidar_sdk.dir/src/ETLidarDriver.cpp.obj"
	C:/Tools/mingw64_2/mingw64/bin/ccache.exe C:\Tools\mingw64_2\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/ydlidar_sdk.dir/src/ETLidarDriver.cpp.obj -MF CMakeFiles\ydlidar_sdk.dir\src\ETLidarDriver.cpp.obj.d -o CMakeFiles\ydlidar_sdk.dir\src\ETLidarDriver.cpp.obj -c D:\Project\lidar_control\lidarsdk\SDK-X2\YDLidar-SDK-master\src\ETLidarDriver.cpp

CMakeFiles/ydlidar_sdk.dir/src/ETLidarDriver.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ydlidar_sdk.dir/src/ETLidarDriver.cpp.i"
	C:\Tools\mingw64_2\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E D:\Project\lidar_control\lidarsdk\SDK-X2\YDLidar-SDK-master\src\ETLidarDriver.cpp > CMakeFiles\ydlidar_sdk.dir\src\ETLidarDriver.cpp.i

CMakeFiles/ydlidar_sdk.dir/src/ETLidarDriver.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ydlidar_sdk.dir/src/ETLidarDriver.cpp.s"
	C:\Tools\mingw64_2\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S D:\Project\lidar_control\lidarsdk\SDK-X2\YDLidar-SDK-master\src\ETLidarDriver.cpp -o CMakeFiles\ydlidar_sdk.dir\src\ETLidarDriver.cpp.s

CMakeFiles/ydlidar_sdk.dir/src/ydlidar_driver.cpp.obj: CMakeFiles/ydlidar_sdk.dir/flags.make
CMakeFiles/ydlidar_sdk.dir/src/ydlidar_driver.cpp.obj: CMakeFiles/ydlidar_sdk.dir/includes_CXX.rsp
CMakeFiles/ydlidar_sdk.dir/src/ydlidar_driver.cpp.obj: D:/Project/lidar_control/lidarsdk/SDK-X2/YDLidar-SDK-master/src/ydlidar_driver.cpp
CMakeFiles/ydlidar_sdk.dir/src/ydlidar_driver.cpp.obj: CMakeFiles/ydlidar_sdk.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=D:\Project\lidar_control\lidarsdk\SDK-X2\YDLidar-SDK-master\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_11) "Building CXX object CMakeFiles/ydlidar_sdk.dir/src/ydlidar_driver.cpp.obj"
	C:/Tools/mingw64_2/mingw64/bin/ccache.exe C:\Tools\mingw64_2\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/ydlidar_sdk.dir/src/ydlidar_driver.cpp.obj -MF CMakeFiles\ydlidar_sdk.dir\src\ydlidar_driver.cpp.obj.d -o CMakeFiles\ydlidar_sdk.dir\src\ydlidar_driver.cpp.obj -c D:\Project\lidar_control\lidarsdk\SDK-X2\YDLidar-SDK-master\src\ydlidar_driver.cpp

CMakeFiles/ydlidar_sdk.dir/src/ydlidar_driver.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ydlidar_sdk.dir/src/ydlidar_driver.cpp.i"
	C:\Tools\mingw64_2\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E D:\Project\lidar_control\lidarsdk\SDK-X2\YDLidar-SDK-master\src\ydlidar_driver.cpp > CMakeFiles\ydlidar_sdk.dir\src\ydlidar_driver.cpp.i

CMakeFiles/ydlidar_sdk.dir/src/ydlidar_driver.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ydlidar_sdk.dir/src/ydlidar_driver.cpp.s"
	C:\Tools\mingw64_2\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S D:\Project\lidar_control\lidarsdk\SDK-X2\YDLidar-SDK-master\src\ydlidar_driver.cpp -o CMakeFiles\ydlidar_sdk.dir\src\ydlidar_driver.cpp.s

CMakeFiles/ydlidar_sdk.dir/src/ydlidar_sdk.cpp.obj: CMakeFiles/ydlidar_sdk.dir/flags.make
CMakeFiles/ydlidar_sdk.dir/src/ydlidar_sdk.cpp.obj: CMakeFiles/ydlidar_sdk.dir/includes_CXX.rsp
CMakeFiles/ydlidar_sdk.dir/src/ydlidar_sdk.cpp.obj: D:/Project/lidar_control/lidarsdk/SDK-X2/YDLidar-SDK-master/src/ydlidar_sdk.cpp
CMakeFiles/ydlidar_sdk.dir/src/ydlidar_sdk.cpp.obj: CMakeFiles/ydlidar_sdk.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=D:\Project\lidar_control\lidarsdk\SDK-X2\YDLidar-SDK-master\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_12) "Building CXX object CMakeFiles/ydlidar_sdk.dir/src/ydlidar_sdk.cpp.obj"
	C:/Tools/mingw64_2/mingw64/bin/ccache.exe C:\Tools\mingw64_2\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/ydlidar_sdk.dir/src/ydlidar_sdk.cpp.obj -MF CMakeFiles\ydlidar_sdk.dir\src\ydlidar_sdk.cpp.obj.d -o CMakeFiles\ydlidar_sdk.dir\src\ydlidar_sdk.cpp.obj -c D:\Project\lidar_control\lidarsdk\SDK-X2\YDLidar-SDK-master\src\ydlidar_sdk.cpp

CMakeFiles/ydlidar_sdk.dir/src/ydlidar_sdk.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ydlidar_sdk.dir/src/ydlidar_sdk.cpp.i"
	C:\Tools\mingw64_2\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E D:\Project\lidar_control\lidarsdk\SDK-X2\YDLidar-SDK-master\src\ydlidar_sdk.cpp > CMakeFiles\ydlidar_sdk.dir\src\ydlidar_sdk.cpp.i

CMakeFiles/ydlidar_sdk.dir/src/ydlidar_sdk.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ydlidar_sdk.dir/src/ydlidar_sdk.cpp.s"
	C:\Tools\mingw64_2\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S D:\Project\lidar_control\lidarsdk\SDK-X2\YDLidar-SDK-master\src\ydlidar_sdk.cpp -o CMakeFiles\ydlidar_sdk.dir\src\ydlidar_sdk.cpp.s

# Object files for target ydlidar_sdk
ydlidar_sdk_OBJECTS = \
"CMakeFiles/ydlidar_sdk.dir/core/base/timer.cpp.obj" \
"CMakeFiles/ydlidar_sdk.dir/core/common/ydlidar_def.cpp.obj" \
"CMakeFiles/ydlidar_sdk.dir/core/network/ActiveSocket.cpp.obj" \
"CMakeFiles/ydlidar_sdk.dir/core/network/PassiveSocket.cpp.obj" \
"CMakeFiles/ydlidar_sdk.dir/core/network/SimpleSocket.cpp.obj" \
"CMakeFiles/ydlidar_sdk.dir/core/serial/serial.cpp.obj" \
"CMakeFiles/ydlidar_sdk.dir/core/serial/impl/windows/list_ports_win.cpp.obj" \
"CMakeFiles/ydlidar_sdk.dir/core/serial/impl/windows/win_serial.cpp.obj" \
"CMakeFiles/ydlidar_sdk.dir/src/CYdLidar.cpp.obj" \
"CMakeFiles/ydlidar_sdk.dir/src/ETLidarDriver.cpp.obj" \
"CMakeFiles/ydlidar_sdk.dir/src/ydlidar_driver.cpp.obj" \
"CMakeFiles/ydlidar_sdk.dir/src/ydlidar_sdk.cpp.obj"

# External object files for target ydlidar_sdk
ydlidar_sdk_EXTERNAL_OBJECTS =

libydlidar_sdk.a: CMakeFiles/ydlidar_sdk.dir/core/base/timer.cpp.obj
libydlidar_sdk.a: CMakeFiles/ydlidar_sdk.dir/core/common/ydlidar_def.cpp.obj
libydlidar_sdk.a: CMakeFiles/ydlidar_sdk.dir/core/network/ActiveSocket.cpp.obj
libydlidar_sdk.a: CMakeFiles/ydlidar_sdk.dir/core/network/PassiveSocket.cpp.obj
libydlidar_sdk.a: CMakeFiles/ydlidar_sdk.dir/core/network/SimpleSocket.cpp.obj
libydlidar_sdk.a: CMakeFiles/ydlidar_sdk.dir/core/serial/serial.cpp.obj
libydlidar_sdk.a: CMakeFiles/ydlidar_sdk.dir/core/serial/impl/windows/list_ports_win.cpp.obj
libydlidar_sdk.a: CMakeFiles/ydlidar_sdk.dir/core/serial/impl/windows/win_serial.cpp.obj
libydlidar_sdk.a: CMakeFiles/ydlidar_sdk.dir/src/CYdLidar.cpp.obj
libydlidar_sdk.a: CMakeFiles/ydlidar_sdk.dir/src/ETLidarDriver.cpp.obj
libydlidar_sdk.a: CMakeFiles/ydlidar_sdk.dir/src/ydlidar_driver.cpp.obj
libydlidar_sdk.a: CMakeFiles/ydlidar_sdk.dir/src/ydlidar_sdk.cpp.obj
libydlidar_sdk.a: CMakeFiles/ydlidar_sdk.dir/build.make
libydlidar_sdk.a: CMakeFiles/ydlidar_sdk.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=D:\Project\lidar_control\lidarsdk\SDK-X2\YDLidar-SDK-master\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_13) "Linking CXX static library libydlidar_sdk.a"
	$(CMAKE_COMMAND) -P CMakeFiles\ydlidar_sdk.dir\cmake_clean_target.cmake
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\ydlidar_sdk.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/ydlidar_sdk.dir/build: libydlidar_sdk.a
.PHONY : CMakeFiles/ydlidar_sdk.dir/build

CMakeFiles/ydlidar_sdk.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles\ydlidar_sdk.dir\cmake_clean.cmake
.PHONY : CMakeFiles/ydlidar_sdk.dir/clean

CMakeFiles/ydlidar_sdk.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" D:\Project\lidar_control\lidarsdk\SDK-X2\YDLidar-SDK-master D:\Project\lidar_control\lidarsdk\SDK-X2\YDLidar-SDK-master D:\Project\lidar_control\lidarsdk\SDK-X2\YDLidar-SDK-master\build D:\Project\lidar_control\lidarsdk\SDK-X2\YDLidar-SDK-master\build D:\Project\lidar_control\lidarsdk\SDK-X2\YDLidar-SDK-master\build\CMakeFiles\ydlidar_sdk.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/ydlidar_sdk.dir/depend

