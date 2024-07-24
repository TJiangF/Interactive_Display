# This file will be configured to contain variables for CPack. These variables
# should be set in the CMake list file of the project before CPack module is
# included. The list of available CPACK_xxx variables and their associated
# documentation may be obtained using
#  cpack --help-variable-list
#
# Some variables are common to all generators (e.g. CPACK_PACKAGE_NAME)
# and some are specific to a generator
# (e.g. CPACK_NSIS_EXTRA_INSTALL_COMMANDS). The generator specific variables
# usually begin with CPACK_<GENNAME>_xxxx.


set(CPACK_BUILD_SOURCE_DIRS "D:/Project/lidar_control/lidarsdk/SDK-X2/YDLidar-SDK-master;D:/Project/lidar_control/lidarsdk/SDK-X2/YDLidar-SDK-master/build")
set(CPACK_CMAKE_GENERATOR "MinGW Makefiles")
set(CPACK_COMPONENT_UNSPECIFIED_HIDDEN "TRUE")
set(CPACK_COMPONENT_UNSPECIFIED_REQUIRED "TRUE")
set(CPACK_DEBIAN_PACKAGE_DESCRIPTION "YDLIDAR SDK.")
set(CPACK_DEBIAN_PACKAGE_MAINTAINER "Tony Yang")
set(CPACK_DEBIAN_PACKAGE_PRIORITY "optional")
set(CPACK_DEBIAN_PACKAGE_SECTION "devel")
set(CPACK_DEBIAN_PACKAGE_SHLIBDEPS "OFF")
set(CPACK_DEFAULT_PACKAGE_DESCRIPTION_FILE "C:/Tools/cmake-3.25.1-windows-x86_64/share/cmake-3.25/Templates/CPack.GenericDescription.txt")
set(CPACK_DEFAULT_PACKAGE_DESCRIPTION_SUMMARY "ydlidar_sdk built using CMake")
set(CPACK_GENERATOR "ZIP;TBZ2")
set(CPACK_IGNORE_FILES "/CVS/;/\\.svn/;/\\.bzr/;/\\.hg/;/\\.git/;\\.swp\$;\\.#;/#")
set(CPACK_INSTALLED_DIRECTORIES "D:/Project/lidar_control/lidarsdk/SDK-X2/YDLidar-SDK-master;/")
set(CPACK_INSTALL_CMAKE_PROJECTS "")
set(CPACK_INSTALL_PREFIX "C:/Program Files (x86)/ydlidar_sdk")
set(CPACK_MODULE_PATH "D:/Project/lidar_control/lidarsdk/SDK-X2/YDLidar-SDK-master/cmake")
set(CPACK_NSIS_DISPLAY_NAME "ydlidar_sdk-1.0.2 1.0.2")
set(CPACK_NSIS_INSTALLER_ICON_CODE "")
set(CPACK_NSIS_INSTALLER_MUI_ICON_CODE "")
set(CPACK_NSIS_INSTALL_ROOT "$PROGRAMFILES64")
set(CPACK_NSIS_PACKAGE_NAME "ydlidar_sdk-1.0.2 1.0.2")
set(CPACK_NSIS_UNINSTALL_NAME "Uninstall")
set(CPACK_OBJCOPY_EXECUTABLE "C:/Tools/mingw64_2/mingw64/bin/objcopy.exe")
set(CPACK_OBJDUMP_EXECUTABLE "C:/Tools/mingw64_2/mingw64/bin/objdump.exe")
set(CPACK_OUTPUT_CONFIG_FILE "D:/Project/lidar_control/lidarsdk/SDK-X2/YDLidar-SDK-master/build/CPackConfig.cmake")
set(CPACK_OUTPUT_FILE_PREFIX "D:/Project/lidar_control/lidarsdk/SDK-X2/YDLidar-SDK-master/build")
set(CPACK_PACKAGE_DEFAULT_LOCATION "/")
set(CPACK_PACKAGE_DESCRIPTION_FILE "C:/Tools/cmake-3.25.1-windows-x86_64/share/cmake-3.25/Templates/CPack.GenericDescription.txt")
set(CPACK_PACKAGE_DESCRIPTION_SUMMARY "ydlidar_sdk built using CMake")
set(CPACK_PACKAGE_FILE_NAME "ydlidar_sdk-1.0.2")
set(CPACK_PACKAGE_INSTALL_DIRECTORY "ydlidar_sdk-1.0.2 1.0.2")
set(CPACK_PACKAGE_INSTALL_REGISTRY_KEY "ydlidar_sdk-1.0.2 1.0.2")
set(CPACK_PACKAGE_NAME "ydlidar_sdk-1.0.2")
set(CPACK_PACKAGE_RELOCATABLE "true")
set(CPACK_PACKAGE_VENDOR "Humanity")
set(CPACK_PACKAGE_VERSION "1.0.2")
set(CPACK_PACKAGE_VERSION_MAJOR "0")
set(CPACK_PACKAGE_VERSION_MINOR "1")
set(CPACK_PACKAGE_VERSION_PATCH "1")
set(CPACK_PACKAGING_INSTALL_PREFIX "C:/Program Files (x86)/ydlidar_sdk")
set(CPACK_READELF_EXECUTABLE "C:/Tools/mingw64_2/mingw64/bin/readelf.exe")
set(CPACK_RESOURCE_FILE_LICENSE "C:/Tools/cmake-3.25.1-windows-x86_64/share/cmake-3.25/Templates/CPack.GenericLicense.txt")
set(CPACK_RESOURCE_FILE_README "C:/Tools/cmake-3.25.1-windows-x86_64/share/cmake-3.25/Templates/CPack.GenericDescription.txt")
set(CPACK_RESOURCE_FILE_WELCOME "C:/Tools/cmake-3.25.1-windows-x86_64/share/cmake-3.25/Templates/CPack.GenericWelcome.txt")
set(CPACK_RPM_PACKAGE_SOURCES "ON")
set(CPACK_SET_DESTDIR "true")
set(CPACK_SOURCE_GENERATOR "ZIP;TBZ2")
set(CPACK_SOURCE_IGNORE_FILES "/CVS/;/\\.svn/;/\\.bzr/;/\\.hg/;/\\.git/;\\.swp\$;\\.#;/#")
set(CPACK_SOURCE_INSTALLED_DIRECTORIES "D:/Project/lidar_control/lidarsdk/SDK-X2/YDLidar-SDK-master;/")
set(CPACK_SOURCE_OUTPUT_CONFIG_FILE "D:/Project/lidar_control/lidarsdk/SDK-X2/YDLidar-SDK-master/build/CPackSourceConfig.cmake")
set(CPACK_SOURCE_PACKAGE_FILE_NAME "ydlidar_sdk-1.0.2")
set(CPACK_SOURCE_TOPLEVEL_TAG "win64-Source")
set(CPACK_STRIP_FILES "")
set(CPACK_SYSTEM_NAME "win64")
set(CPACK_THREADS "1")
set(CPACK_TOPLEVEL_TAG "win64-Source")
set(CPACK_WIX_SIZEOF_VOID_P "8")

if(NOT CPACK_PROPERTIES_FILE)
  set(CPACK_PROPERTIES_FILE "D:/Project/lidar_control/lidarsdk/SDK-X2/YDLidar-SDK-master/build/CPackProperties.cmake")
endif()

if(EXISTS ${CPACK_PROPERTIES_FILE})
  include(${CPACK_PROPERTIES_FILE})
endif()
