cmake_minimum_required(VERSION 2.8.3)
project(agv_tcp_velocity)

find_package(catkin REQUIRED COMPONENTS
  roscpp
  rospy
  std_msgs
)

catkin_package(
  INCLUDE_DIRS include

)


include_directories(include)
include_directories(
  ${catkin_INCLUDE_DIRS}
)

add_executable(agv_tcp_velocity_node src/agv_tcp_velocity_publish.cpp src/tcp_client.cpp)

## Add cmake target dependencies of the executable/library
## as an example, message headers may need to be generated before nodes
#add_dependencies(soccer_maxon_node serial_port)

## Specify libraries to link a library or executable target against
target_link_libraries(agv_tcp_velocity_node
  ${catkin_LIBRARIES}
)
