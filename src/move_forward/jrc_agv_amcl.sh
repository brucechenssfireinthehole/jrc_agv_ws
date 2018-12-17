#!/bin/sh
roslaunch agv_tcp_velocity laser.launch&
sleep 3s
roslaunch ira_laser_tools laserscan_multi_merger.launch&
sleep 2s
roslaunch laser_scan_matcher demo.launch&
sleep 1s
rosrun map_server map_server /home/brucechen/nav_ws/src/map/smooth_test_2.yaml&
sleep 2s
roslaunch amcl amcl_omni.launch&
sleep 2s
rosrun rviz rviz&
sleep 3s
