#include <iostream>
#include <fstream>
#include <iomanip>
#include <ros/ros.h>
#include <tf/transform_listener.h>
#include <tf/transform_datatypes.h>
#include <geometry_msgs/Twist.h>
#include <geometry_msgs/PoseWithCovarianceStamped.h>

using namespace std;

int main(int argc, char **argv)
{    
    ros::init(argc, argv, "velocity_smooth_initial");
    double initial_x_ = 0.262;
    double initial_y_ = 2.571;
    double initial_angle_ = -1.525;
    ros::Publisher initial_pose_pub;
    ros::NodeHandle node;
    initial_pose_pub = node.advertise<geometry_msgs::PoseWithCovarianceStamped>("/initialpose", 100);
    geometry_msgs::PoseWithCovarianceStamped initial_pose;
    initial_pose.header.stamp = ros::Time(0);
    initial_pose.header.frame_id = "map";
    initial_pose.pose.pose.position.x = initial_x_;
    initial_pose.pose.pose.position.y = initial_y_;
    initial_pose.pose.pose.orientation = tf::createQuaternionMsgFromYaw(initial_angle_);
    double start_time_point = ros::Time::now().toSec();
    double time_counter = 0;
    while(time_counter < 2)
    {
       time_counter = ros::Time::now().toSec() - start_time_point;
       ros::spinOnce();
       initial_pose_pub.publish(initial_pose);
       ROS_INFO("sending the robot initial pose");
    }

    // cmd_vel_pub.publish(geometry_msgs::Twist());
    ros::Duration(1).sleep();
    ros::spin();
    return 0;
}

