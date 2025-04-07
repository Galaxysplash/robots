cmake_minimum_required(VERSION 3.8)
project(robots)

find_package(ament_cmake REQUIRED)
find_package(rclcpp REQUIRED)

set(CMAKE_CXX_STANDARD 20)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

include_directories(
  include
)

add_executable(Project
  src/main.cpp
)

ament_target_dependencies(Project rclcpp)

install(TARGETS
  Project
  DESTINATION lib/${PROJECT_NAME}
)

install(DIRECTORY include/${PROJECT_NAME}
  DESTINATION include/${PROJECT_NAME}
)