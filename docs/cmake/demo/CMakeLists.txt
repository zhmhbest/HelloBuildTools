# cmake版本要求
cmake_minimum_required(VERSION 3.10)

# 编译标准
set(CMAKE_C_STANDARD 99)
set(CMAKE_C_STANDARD_REQUIRED True)
set(CMAKE_CXX_STANDARD 11)
set(CMAKE_CXX_STANDARD_REQUIRED True)

# 配置
project("HelloCMake")
set(BUILD_PATH "${PROJECT_BINARY_DIR}")
set(OUTPUT_NAME "${PROJECT_NAME}")
set(INCDIR "include")
set(LIBDIR "lib")
set(SRCDIR "src")
set(BINDIR "${BUILD_PATH}/bin")

# 设置头文件目录
include_directories(${INCDIR})

# 设置库文件目录
link_directories(${LIBDIR})

# 添加源码文件
file(GLOB SRC_LIST "${SRCDIR}/*.c" "${SRCDIR}/*.cpp")
add_executable(${OUTPUT_NAME} ${SRC_LIST})

# 设置可执行文件输出目录
SET(EXECUTABLE_OUTPUT_PATH "${BINDIR}")

# 拷贝动态链接库
#

# 添加链接库依赖
#target_link_libraries(${OUTPUT_NAME} "?.a")
