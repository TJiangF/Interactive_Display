
SET( YDLIDAR_SDK_LIBRARIES  ydlidar_sdk;Winmm;setupapi;ws2_32 CACHE INTERNAL "YDLIDAR_SDK libraries" FORCE )
SET( YDLIDAR_SDK_INCLUDE_DIRS  C:/Program Files (x86)/ydlidar_sdk/include/src;C:/Program Files (x86)/ydlidar_sdk/include CACHE INTERNAL "YDLIDAR_SDK include directories" FORCE )
SET( YDLIDAR_SDK_LIBRARY_DIRS  CACHE INTERNAL "YDLIDAR_SDK library directories" FORCE )

mark_as_advanced( YDLIDAR_SDK_LIBRARIES )
mark_as_advanced( YDLIDAR_SDK_LIBRARY_DIRS )
mark_as_advanced( YDLIDAR_SDK_INCLUDE_DIRS )


