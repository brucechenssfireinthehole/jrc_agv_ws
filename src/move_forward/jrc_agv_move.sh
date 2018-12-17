#!/bin/sh
rosrun agv_tcp_velocity agv_tcp_velocity_node& 
sleep 2s
rosrun move_forward jrc_move_server&
sleep 2s
rosrun move_forward jrc_move_client&
sleep 2s
 
