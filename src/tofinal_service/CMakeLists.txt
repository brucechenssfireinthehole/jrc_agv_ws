cmake_minimum_required(VERSION 2.8)
add_compile_options(-std=c++11)
project(tofinal_service)

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
  jrc_srvs
)

#add_service_files(
#  FILES
#)

#generate_messages(
#  DEPENDENCIES
#  std_msgs
#)

catkin_package(
CATKIN_DEPENDS message_runtime
)


include_directories(
${catkin_INCLUDE_DIRS}
)



add_executable(tofinal_service src/tofinal_service.cpp)
add_dependencies(tofinal_service jrc_srvs_gencpp)
target_link_libraries(tofinal_service ${catkin_LIBRARIES} )

add_executable(tofinal_client src/tofinal_client.cpp)
add_dependencies(tofinal_client jrc_srvs_gencpp)
target_link_libraries(tofinal_client ${catkin_LIBRARIES} )



#add_executable(test_srv src/test_srv.cpp)
#add_dependencies(test_srv smooth_srv_gencpp)
#target_link_libraries(test_srv ${catkin_LIBRARIES} )

#add_executable(test_client src/test_client.cpp)
#add_dependencies(test_client smooth_srv_gencpp)
#target_link_libraries(test_client ${catkin_LIBRARIES} )
