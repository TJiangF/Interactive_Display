cmake_minimum_required(VERSION 3.10)

# 设置项目名称和版本
project(Display VERSION 1.0)

# 指定C++标准
set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED True)

# 找到SFML组件
# 如果SFML不在标准路径中，你可能需要设置SFML_DIR变量
# 例如：
set(SFML_DIR "/opt/homebrew/Cellar/sfml/2.6.1")
find_package(SFML 2.5 COMPONENTS graphics audio REQUIRED)

# 添加你的源文件
add_executable(Display X_Display_main.cpp)

# 链接SFML库
target_link_libraries(Display sfml-graphics sfml-audio)

# 针对交叉编译，你可能需要设置目标平台的特定选项
# 例如：
# set_target_properties(MySFMLProject PROPERTIES
#     CROSSCOMPILING_EMULATOR "<path_to_emulator>")
