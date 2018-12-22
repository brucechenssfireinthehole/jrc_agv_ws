# jrc_agv_ws
  This is a ros_workspace for navigation and walk-to trajectory planning of an omni-agv which is used on Jingdong company X-Robot Challenge. Our agv use omnidirecional wheel, it has two hoyuko signle line radars.

** Installation**

*(1) cmake install the following packages in your ROS workspace:* 

 **-1.agv_tcp_velocity**
 
** -2.ira_laser_tools **
 
** -3.move_forward**
 
 **-4.navigation-kinetic-devel **
 
 ( If you are not in kinetic env, please pull the specific package from: https://github.com/ros-planning/navigation )
 
 **notice: **In order to add dependencies, please enter:
 
       rosdep install --from-paths src --ignore-src --rosdistro kinetic -y 
       
** -5.urg_node-indigo-devel (this version should be fine if you are in kinetic env.)**
 
 **-6.urg_c-master**
 
*(2) apt-get install the following packages:*

sudo apt-get install ros-%YOUR_ROS_DISTRO%-laser-scan-matcher

*(3) Modify bash file: ~workspace/src/move_forward/jrc_agv_amcl.sh*

line 8 :  rosrun map_server map_server /home/brucechen/nav_ws/src/map/1218_small.yaml& 

Change the path in line 8 to your specific map storage path.



