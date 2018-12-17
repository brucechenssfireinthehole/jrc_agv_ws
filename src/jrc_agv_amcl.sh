#!/bin/sh
roslaunch agv_tcp_velocity laser.launch&
sleep 1s
roslaunch ira_laser_tools laserscan_multi_merger.launch&
sleep 1s
roslaunch laser_scan_matcher demo.launch&
sleep 1s
rosrun map_server map_server /home/brucechen/nav_ws/src/map/smooth_test_4.yaml&
sleep 1s
roslaunch amcl amcl_omni.launch&
sleep 1s
#rosrun velocity_smooth velocity_smooth_initial&




