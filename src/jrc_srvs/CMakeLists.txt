cmake_minimum_required(VERSION 2.8.3)
project(jrc_srvs)

## Compile as C++11, supported in ROS Kinetic and newer
# add_compile_options(-std=c++11)

## Find catkin macros and libraries
## if COMPONENTS list like find_package(catkin REQUIRED COMPONENTS xyz)
## is used, also find other catkin packages
find_package(catkin REQUIRED COMPONENTS
  roscpp
  std_msgs
  rospy
  tf
  message_generation
#  beginner_tutorials
)

add_service_files(
  FILES
  smooth.srv
  smooth_multi.srv
)

generate_messages(
  DEPENDENCIES
  std_msgs
)

catkin_package(
CATKIN_DEPENDS message_runtime
)


include_directories(
${catkin_INCLUDE_DIRS}
)



