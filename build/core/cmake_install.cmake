# Install script for directory: D:/Project/lidar_control/lidarsdk/SDK-X2/YDLidar-SDK-master/core

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "C:/Program Files (x86)/ydlidar_sdk")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "Debug")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

# Set default install directory permissions.
if(NOT DEFINED CMAKE_OBJDUMP)
  set(CMAKE_OBJDUMP "C:/Tools/mingw64_2/mingw64/bin/objdump.exe")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("D:/Project/lidar_control/lidarsdk/SDK-X2/YDLidar-SDK-master/build/core/base/cmake_install.cmake")
  include("D:/Project/lidar_control/lidarsdk/SDK-X2/YDLidar-SDK-master/build/core/common/cmake_install.cmake")
  include("D:/Project/lidar_control/lidarsdk/SDK-X2/YDLidar-SDK-master/build/core/math/cmake_install.cmake")
  include("D:/Project/lidar_control/lidarsdk/SDK-X2/YDLidar-SDK-master/build/core/network/cmake_install.cmake")
  include("D:/Project/lidar_control/lidarsdk/SDK-X2/YDLidar-SDK-master/build/core/serial/cmake_install.cmake")

endif()

