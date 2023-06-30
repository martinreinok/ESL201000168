cmake_minimum_required(VERSION 3.5)
project(light_finder)

set(CMAKE_CXX_STANDARD 11)

# Find OpenCV package
find_package(OpenCV REQUIRED)
include_directories(${OpenCV_INCLUDE_DIRS})

# Add an executable target
add_executable(light_finder assignment10.cpp)

# Link against OpenCV libraries
target_link_libraries(light_finder ${OpenCV_LIBRARIES})