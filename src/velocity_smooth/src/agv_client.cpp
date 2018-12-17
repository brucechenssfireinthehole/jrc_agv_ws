#include <ros/ros.h>
#include <velocity_smooth/smooth_srv.h>
#include <velocity_smooth/smooth_srv_multi.h>
#include <tf/transform_listener.h>
#include <tf/transform_datatypes.h>
#include <geometry_msgs/Pose.h>

using namespace std;
geometry_msgs::Pose point[4];

void  get_point_parameter()
{
//起始点
point[0].position.x = 2.195;
point[0].position.y = -0.438;
point[0].position.z = 0.0;
point[0].orientation.x = 0.0;
point[0].orientation.y = 0.0;
point[0].orientation.z = 0.662;
point[0].orientation.w = 0.749;

//第一个抓取点
point[1].position.x = -3.154;
point[1].position.y = 0;
point[1].position.z = 0.0;
point[1].orientation.x = 0.0;
point[1].orientation.y = 0.0;
point[1].orientation.z = 0.752;
point[1].orientation.w = 0.659;

//第二个抓取点
point[2].position.x = -3.049;
point[2].position.y = 0.0;
point[2].position.z = 0.0;
point[2].orientation.x = 0.0;
point[2].orientation.y = 0.0;
point[2].orientation.z = 0.752;
point[2].orientation.w = 0.659;

//返回过渡点
point[3].position.x = 1.6;  //change here
point[3].position.y = -0.438;
point[3].position.z = 0.0;
point[3].orientation.x = 0.0;
point[3].orientation.y = 0.0;
point[3].orientation.z = 0.662;
point[3].orientation.w = 0.749;
}



void get_srv(velocity_smooth::smooth_srv& srv, geometry_msgs::Pose& point)
{
    geometry_msgs::Quaternion quat1;
    quat1.x = point.orientation.x;
    quat1.y = point.orientation.y;
    quat1.z = point.orientation.z;
    quat1.w = point.orientation.w;

    srv.request.x = point.position.x;
    srv.request.y = point.position.y;
    srv.request.theta = tf::getYaw(quat1);
}



int main(int argc, char** argv)
{
    ros::init(argc, argv, "velocity_smooth_client");
    ros::NodeHandle node;
//>>>>>>>>>call service start here>>>>>>>>>>>>>>>>>>
    ros::ServiceClient client = node.serviceClient<velocity_smooth::smooth_srv>("/Jrc_move"); 
    velocity_smooth::smooth_srv srv;
    get_point_parameter();
    get_srv(srv, point[2]);
  
      sleep(1);
    if(client.call(srv))
    {
        ROS_INFO("success");
      ROS_INFO("the response is %ld", (long int)srv.response.mark);
    }
    else
    {
        ROS_ERROR("Failed");
    }
//>>>>>>>>call service end here>>>>>>>>>>>>>>>>>>>> 
//the srv.response.mark should be 1 if it success.
    return 0;
}
