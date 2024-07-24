
cmake_minimum_required(VERSION 3.10)
PROJECT(Interactive_Display_Demo)
# add_compile_options(-std=c++11) # Use C++11
set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED True)

#Include directories
INCLUDE_DIRECTORIES(
     ${CMAKE_SOURCE_DIR}
     ${CMAKE_SOURCE_DIR}/../
     ${CMAKE_CURRENT_BINARY_DIR}
)


set(SFML_DIR "C:/Tools/SFML-2.6.1/lib")
find_package(SFML 2.5 COMPONENTS graphics audio REQUIRED)
link_libraries(sfml-graphics)




SET(EXECUTABLE_OUTPUT_PATH ${CMAKE_BINARY_DIR})

set(curdir ${CMAKE_CURRENT_SOURCE_DIR})
FILE(GLOB APP_LIST "${curdir}/*.cpp")
foreach(child ${APP_LIST})
  string(REPLACE "${curdir}/" "" app_main ${child})
  string(REPLACE ".cpp" "" APP_NAME ${app_main})
  ADD_EXECUTABLE(${APP_NAME} ${app_main})
  TARGET_LINK_LIBRARIES(${APP_NAME} ydlidar_sdk)

  INSTALL(TARGETS ${APP_NAME}
    RUNTIME DESTINATION bin
  )
endforeach()

FILE(GLOB C_APP_LIST "${curdir}/*.c")
foreach(child ${C_APP_LIST})
  string(REPLACE "${curdir}/" "" app_main ${child})
  string(REPLACE ".c" "" APP_NAME ${app_main})
  ADD_EXECUTABLE(${APP_NAME} ${app_main})
  TARGET_LINK_LIBRARIES(${APP_NAME} ydlidar_sdk)
  target_link_libraries(${APP_NAME} -lstdc++ -lm)
  INSTALL(TARGETS ${APP_NAME}
    RUNTIME DESTINATION bin
  )
endforeach()

target_link_libraries(${APP_NAME} sfml-graphics sfml-audio)