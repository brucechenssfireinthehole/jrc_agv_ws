cmake_minimum_required(VERSION 2.8.3)
project(move_forward)

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
)

 add_service_files(
  FILES
  Jrc_move.srv
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



#add_executable(jrc_move_server src/jrc_move_server.cpp)
#add_dependencies(jrc_move_server Jrc_move_gencpp)
#target_link_libraries(jrc_move_server ${catkin_LIBRARIES} )

#add_executable(jrc_move_client src/jrc_move_client.cpp)
#add_dependencies(jrc_move_client Jrc_move_gencpp)
#target_link_libraries(jrc_move_client ${catkin_LIBRARIES} )

#add_executable(jrc_move1_client src/jrc_move1_client.cpp)
#add_dependencies(jrc_move1_client Jrc_move_gencpp)
#target_link_libraries(jrc_move1_client ${catkin_LIBRARIES} )

#add_executable(jrc_move2_client src/jrc_move2_client.cpp)
#add_dependencies(jrc_move2_client Jrc_move_gencpp)
#target_link_libraries(jrc_move2_client ${catkin_LIBRARIES} )

#add_executable(jrc_move3_client src/jrc_move3_client.cpp)
#add_dependencies(jrc_move3_client Jrc_move_gencpp)
#target_link_libraries(jrc_move3_client ${catkin_LIBRARIES} )
