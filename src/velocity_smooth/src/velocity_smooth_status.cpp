#include <iostream>
#include <fstream>
#include <iomanip>
#include <ros/ros.h>
#include <geometry_msgs/Twist.h>
#include <geometry_msgs/PoseWithCovarianceStamped.h>
#include <tf/transform_listener.h>
#include <tf/transform_datatypes.h>
#include <geometry_msgs/PoseWithCovarianceStamped.h>
#include <velocity_smooth/smooth_srv.h>

int main(int argc, char** argv)
{
	 ros::init(argc, argv, "velocity_smooth");
	 ros::ServiceServer service;
	 ros::NodeHandle node;
	 ros::Publisher initial_pose_pub;
	 ros::spin();
	     cmd_vel_pub = node.advertise<geometry_msgs::Twist>("/cmd_vel", 1);
	            initial_pose_pub = node.advertise<geometry_msgs::PoseWithCovarianceStamped>("/initialpose", 100);
	            //Topic(amcl_pose) you want to subscribe
	            amcl_pose_sub = node.subscribe("/amcl_pose", 1, &Jrc_move::callback, this);
	            //Server
	            
	            service = node.advertiseService("/Jrc_move", &Jrc_move::move_to_target, this);  //Jrc_move_multi
	            //initial the goal
	            goal_in_map.header.stamp = ros::Time(0);
	            goal_in_map.header.frame_id = "map";
	            goal_in_base.header.stamp = goal_in_map.header.stamp;
	            goal_in_base.header.frame_id = "base_link";

	            //publish the initial pose  
	            geometry_msgs::PoseWithCovarianceStamped initial_pose;
	            initial_pose.header.stamp = ros::Time(0);
	            initial_pose.header.frame_id = "map";
	            initial_pose.pose.pose.position.x = initial_x_;
	            initial_pose.pose.pose.position.y = initial_y_;
	            initial_pose.pose.pose.orientation = tf::createQuaternionMsgFromYaw(initial_angle_);
	            
	            double start_time_point = ros::Time::now().toSec();
	            time_counter = 0;
	            while(time_counter < 2)
	            {
	                time_counter = ros::Time::now().toSec() - start_time_point;
	                ros::spinOnce();
	                initial_pose_pub.publish(initial_pose);
	                ROS_INFO("the robot initial pose");
	            }

	   
	     return 0;
}
