#include <iostream>
#include <ros/ros.h>
#include <move_forward/Jrc_move.h>
#include <geometry_msgs/Twist.h>
#include <geometry_msgs/PoseWithCovarianceStamped.h>
#include <tf/transform_listener.h>
#include <tf/transform_datatypes.h>
#include <geometry_msgs/PoseWithCovarianceStamped.h>
using namespace std;

class Jrc_move
{
public:
    Jrc_move()
    {
        //Topic(cmd_vel) you want to publish
        cmd_vel_pub = node.advertise<geometry_msgs::Twist>("/cmd_vel", 1);
        initial_pose_pub = node.advertise<geometry_msgs::PoseWithCovarianceStamped>("/initialpose", 100);
        //Topic(amcl_pose) you want to subscribe
        amcl_pose_sub = node.subscribe("/amcl_pose", 1, &Jrc_move::callback, this);
        //Server
        service = node.advertiseService("/Jrc_move", &Jrc_move::move_to_target, this);
        //initial the goal
        goal_in_map.header.stamp = ros::Time(0);
        goal_in_map.header.frame_id = "map";
        goal_in_base.header.stamp = goal_in_map.header.stamp;
        goal_in_base.header.frame_id = "base_link";

        //publish the initial pose  
        geometry_msgs::PoseWithCovarianceStamped initial_pose;
        initial_pose.header.stamp = ros::Time(0);
        initial_pose.header.frame_id = "map";
        initial_pose.pose.pose.position.x = -2.049;
        initial_pose.pose.pose.position.y = -0.130;
       /* double q1,q2,q3,q4,yaw;
        q1=
        q2=
        q3=
        a4=
        yaw=arctan
*/
        initial_pose.pose.pose.orientation = tf::createQuaternionMsgFromYaw(3.051);
        double start_time_point = ros::Time::now().toSec();
        time_counter = 0;
        while(time_counter < 5)
        {
            time_counter = ros::Time::now().toSec() - start_time_point;
            ros::spinOnce();
            initial_pose_pub.publish(initial_pose);
            ROS_INFO("the robot initial pose");
        }

//        //rotate left and right to get the accuracy amcl pose
//        start_time_point = ros::Time::now().toSec();
//        time_counter = 0;
//        while(time_counter < 4)
//        {
//            time_counter = ros::Time::now().toSec() - sta+rt_time_point;
//            ros::spinOnce();
//            if(time_counter < 2)
//            {
//                velocity = geometry_msgs::Twist();
//                velocity.linear.x = 0.1;
//                cmd_vel_pub.publish(velocity);
//                ROS_INFO("the robot forward");
//            }
//            else
//            {
//                velocity = geometry_msgs::Twist();
//                velocity.linear.x = -0.1;
//                cmd_vel_pub.publish(velocity);
//                ROS_INFO("the robot backward");
//            }
//        }
        cmd_vel_pub.publish(geometry_msgs::Twist());
        ros::Duration(1).sleep();


    }
    void callback(const geometry_msgs::PoseWithCovarianceStamped::ConstPtr& amcl_pose)
    {
        robot_pose = amcl_pose->pose.pose;
        //ROS_INFO("the robot pose");
    }

    bool move_to_target(move_forward::Jrc_move::Request &req,
                        move_forward::Jrc_move::Response &res)
    {
        goal_in_map.pose.position.x = req.x;
        goal_in_map.pose.position.y = req.y;
        geometry_msgs::Quaternion  quat = tf::createQuaternionMsgFromYaw(req.theta);
        goal_in_map.pose.orientation = quat;
        error_x = error_y = 10;
        res.mark= 0;    //the position is not reached!
        while(fabs(error_x) > 0.01 || fabs(error_y) > 0.01 || fabs(error_theta) > 0.1)
        {
            ros::spinOnce();
            try{
               listener.waitForTransform("/base_link", "/map", ros::Time(0), ros::Duration(100.0) );
               listener.lookupTransform("/base_link", "/map", ros::Time(0), transform);
                }
            catch (tf::TransformException ex){
               ROS_ERROR("%s",ex.what());
               ros::Duration(1.0).sleep();
               }
            listener.transformPose("/base_link",ros::Time(0), goal_in_map, "/map", goal_in_base);
            error_x = goal_in_base.pose.position.x;
            error_y = goal_in_base.pose.position.y;
            error_theta = tf::getYaw(goal_in_base.pose.orientation);
            if(fabs(error_x) > 0.01 || fabs(error_y) > 0.01)
            {
                if(fabs(error_x) > 0.3)
                {
                    velocity.linear.x = fabs(error_x)/error_x * 0.3; //speed 
                }
                else if(fabs(error_x)> 0.1)
                {
                    velocity.linear.x = error_x;
                }
                else
                {
                    velocity.linear.x = fabs(error_x)/error_x * 0.03;
                }
                if(fabs(error_y) > 0.3)
                {
                    velocity.linear.y = fabs(error_y)/error_y * 0.3;
                }
                else if(fabs(error_y) > 0.1)
                {
                    velocity.linear.y = error_y;
                }
                else
                {
                    velocity.linear.y = fabs(error_y)/error_y *0.03;
                }
                velocity.angular.z = 0;
                cmd_vel_pub.publish(velocity);
            }
            else
            {
                velocity.linear.x = 0;
                velocity.linear.y = 0;
                if(fabs(error_theta) > 0.2)
                {
                    velocity.angular.z = fabs(error_theta)/error_theta*0.2;
                }
                else
                {
                    velocity.angular.z = error_theta;
                }
                cmd_vel_pub.publish(velocity);
            }

        }
        cmd_vel_pub.publish(geometry_msgs::Twist());
        ros::Duration(1).sleep();
        res.mark = 1;               //the position is reached!!
        return true;
    }



private:
    ros::NodeHandle node;
    tf::TransformListener listener;
    tf::StampedTransform transform;
    geometry_msgs::PoseStamped goal_in_map, goal_in_base;
    ros::Publisher cmd_vel_pub;
    ros::Publisher initial_pose_pub;
    ros::Subscriber amcl_pose_sub;
    ros::ServiceServer service;
    geometry_msgs::Pose robot_pose;
    geometry_msgs::Twist velocity;
    double error_x, error_y, error_theta;
    double time_counter;

};

int main(int argc, char** argv)
{
    ros::init(argc, argv, "Jrc_move");
    Jrc_move Jrc_move_obj;
    ros::spin();
    return 0;
}
