#include <iostream>
#include <fstream>
#include <iomanip>
#include <ros/ros.h>
#include <geometry_msgs/Twist.h>
#include <geometry_msgs/PoseWithCovarianceStamped.h>
#include <tf/transform_listener.h>
#include <tf/transform_datatypes.h>
#include <geometry_msgs/PoseWithCovarianceStamped.h>
#include <jrc_srvs/smooth.h>
#include <jrc_srvs/smooth_multi.h>

using namespace std;

#define PI 3.1415926

class Jrc_move
{
public:
    Jrc_move()
    {
      //>>>>>>>>>>>>>>>>>>>>>>>initializing parameter>>>>>>>>>>>>>>>>>>>>>>>>>>>>//
      amcl_pose_sub = node.subscribe("/amcl_pose", 1, &Jrc_move::callback, this);
      //Server
      service = node.advertiseService("agv_to_final", &Jrc_move::move_to_target, this);  //Jrc_move_multi
      ROS_INFO("start tofinal_service");
      ros::Duration(1).sleep();
    }
    void callback(const geometry_msgs::PoseWithCovarianceStamped::ConstPtr& amcl_pose)
    {
        robot_pose = amcl_pose->pose.pose;
        //ROS_INFO("the robot pose");
    }

    void get_srv(jrc_srvs::smooth& srv, geometry_msgs::Pose& point,float status)
    {
        geometry_msgs::Quaternion quat1;
        quat1.x = point.orientation.x;
        quat1.y = point.orientation.y;
        quat1.z = point.orientation.z;
        quat1.w = point.orientation.w;

        srv.request.x = point.position.x;
        srv.request.y = point.position.y;
        srv.request.theta = tf::getYaw(quat1);
        srv.request.status = status;  //0 for mediate point; 1 for end point.
    }

    bool move_to_target(jrc_srvs::smooth::Request &req,
                           jrc_srvs::smooth::Response &res)
    {
         /*
    	 req.x : x position
    	 req.y : y position
    	 req.theta : theta
    	 req.status : 0 for mediate point; 1 for end point.
    	 */
        geometry_msgs::Pose axis_point[4];
        //出发点
        axis_point[0].position.x = 0.262;  //todo
        axis_point[0].position.y = 2.571;
        axis_point[0].position.z = 0.0;
        axis_point[0].orientation.x = 0.0;
        axis_point[0].orientation.y = 0.0;
        axis_point[0].orientation.z = -0.689;   //sin(theta/2)
        axis_point[0].orientation.w = 0.724;   //cos(theta/2)

       //倾倒过渡点1
        axis_point[1].position.x = 0.783;  //todo
        axis_point[1].position.y = -2.962;
        axis_point[1].position.z = 0.0;
        axis_point[1].orientation.x = 0.0;
        axis_point[1].orientation.y = 0.0;
        axis_point[1].orientation.z = -0.685;
        axis_point[1].orientation.w = 0.728;

        //倾倒过渡点2
        axis_point[2].position.x = 0.780;  //todo
        axis_point[2].position.y = -2.960;
        axis_point[2].position.z = 0.0;
        axis_point[2].orientation.x = 0.0;
        axis_point[2].orientation.y = 0.0;
        axis_point[2].orientation.z = 0.037;
        axis_point[2].orientation.w = 0.999;
        //more point...

        //倾倒点
        axis_point[3].position.x = 0.931;  //todo
        axis_point[3].position.y = -3.550;
        axis_point[3].position.z = 0.0;
        axis_point[3].orientation.x = 0.0;
        axis_point[3].orientation.y = 0.0;
        axis_point[3].orientation.z = 0.042;
        axis_point[3].orientation.w = 0.999;
        double x1 = axis_point[0].position.x;
        double y1 = axis_point[0].position.y;
        double x2 = axis_point[1].position.x;
        double y2 = axis_point[1].position.y;
        if (x2-x1 == 0)
        x2 = x1 +0.001;
        double a = (y2-y1) / (x2-x1);
        double b = (y1*x2 - y2*x1) / (x2 - x1);

        try{
        	listener.waitForTransform("/base_link", "/map", ros::Time(0), ros::Duration(100.0) );
        	listener.lookupTransform("/map", "/base_link", ros::Time(0), transform1);
        }
        catch (tf::TransformException ex)
        {
            ROS_ERROR("%s",ex.what());
            ros::Duration(1.0).sleep();
        }
        geometry_msgs::Quaternion quat1 ;
        quat1.x =  transform1.getRotation().getX();
        quat1.y =  transform1.getRotation().getY();
        quat1.z =  transform1.getRotation().getZ();
        quat1.w =  transform1.getRotation().getW();
        start_theta_ = tf::getYaw(quat1);
        start_x_=transform1.getOrigin().x();
        start_y_=transform1.getOrigin().y();
        mediate_x_ = (start_x_ / a + start_y_ - b) / (a + 1.0/a);
        mediate_y_ = a*mediate_x_ + b;
        mediate_theta_ = start_theta_;
        srv.request.x = mediate_x_;
        srv.request.y = mediate_y_;
        srv.request.theta = mediate_theta_;
        srv.request.status = 1;  //0 for mediate point; 1 for end point.
        if(client00.call(srv))
        {
          ROS_INFO("success");
        //  ROS_INFO("the response is %ld", (long int)srv.response.mark);
        }
        else
        {
          ROS_ERROR("Failed");
          res.mark = 0;
          return true;
        }
        sleep(1);
        geometry_msgs::Pose new_point;
        //new_point: x y is the same as mediate point; theta is the same as axis_point[1].
        new_point.position.x = mediate_x_+0.0001;  //todo
        new_point.position.y = mediate_y_+0.0001;
        new_point.position.z = 0.0;
        new_point.orientation.x = 0.0;
        new_point.orientation.y = 0.0;
        new_point.orientation.z = -0.685;
        new_point.orientation.w = 0.728;
        get_srv(srv, new_point, 1);
        if(client00.call(srv))
        {
          ROS_INFO("success");
        }
        else
        {
          ROS_ERROR("Failed");
          res.mark = 0;
          return true;
        }
        sleep(1);

        get_srv(srv,   axis_point[1], 1);
        if(client00.call(srv))
        {
          ROS_INFO("success");
        //  ROS_INFO("the response is %ld", (long int)srv.response.mark);
        }
        else
        {
          ROS_ERROR("Failed");
          res.mark = 0;
          return true;
        }
        sleep(1);

        get_srv(srv, axis_point[2], 1);
        if(client00.call(srv))
        {
          ROS_INFO("success");
        //  ROS_INFO("the response is %ld", (long int)srv.response.mark);
        }
        else
        {
          ROS_ERROR("Failed");
          res.mark = 0;
          return true;
        }
        sleep(1);

        get_srv(srv, axis_point[3], 1);
        if(client00.call(srv))
        {
         ROS_INFO("success");
        //  ROS_INFO("the response is %ld", (long int)srv.response.mark);
        }
        else
        {
          ROS_ERROR("Failed");
          res.mark = 0;
          return true;
        }
        res.mark = 1;
        return true;
   }

private:
    ros::NodeHandle node;
    tf::TransformListener listener;
    tf::StampedTransform transform;
    tf::StampedTransform transform1;
    ros::Subscriber amcl_pose_sub;
    ros::ServiceServer service;
    ros::ServiceClient client00 = node.serviceClient<jrc_srvs::smooth>("agv_move");
    jrc_srvs::smooth srv;
    geometry_msgs::Pose robot_pose;
    double start_theta_,start_x_,start_y_;
    double mediate_theta_, mediate_x_, mediate_y_;
};

int main(int argc, char **argv)
{
	 ros::init(argc, argv, "agv_to_final");
     Jrc_move Jrc_move_obj;
     ros::spin();
     return 0;
}
