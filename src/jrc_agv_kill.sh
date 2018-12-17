#!/bin/sh
rosnode kill /laser1/urg_node&
sleep 0.1s
rosnode kill /laser2/urg_node&
sleep 0.1s
rosnode kill /laser1/laser1_to_laser&
sleep 0.1s
rosnode kill /laser2/laser2_to_laser&
sleep 0.1s
rosnode kill /base_link_to_laser&
sleep 0.1s
rosnode kill /laserscan_multi_merger&
sleep 0.1s
rosnode kill /laser_scan_matcher_node&
sleep 0.1s
#rosnode kill /map_server_1544841709924513833&
#sleep 0.1s
rosnode kill amcl&
sleep 0.1s
rosnode kill /soccer_maxon_node&
sleep 0.1s
rosnode kill velocity_smooth_initial&
sleep 0.1s
rosnode kill velocity_smooth_service&
sleep 0.1s
rosnode kill velocity_smooth_client&









