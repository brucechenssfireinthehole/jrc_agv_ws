#include <ros/ros.h>
#include <move_forward/Jrc_move.h>
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
point[1].position.x = 1.207;
point[1].position.y = -0.527;
point[1].position.z = 0.0;
point[1].orientation.x = 0.0;
point[1].orientation.y = 0.0;
point[1].orientation.z = 0.998;
point[1].orientation.w = 0.064;

//第二个抓取点
point[2].position.x = -2.049;
point[2].position.y = -0.130;
point[2].position.z = 0.0;
point[2].orientation.x = 0.0;
point[2].orientation.y = 0.0;
point[2].orientation.z = 0.999;
point[2].orientation.w = 0.045;

//返回过渡点
point[3].position.x = 1.6;  //change here
point[3].position.y = -0.438;
point[3].position.z = 0.0;
point[3].orientation.x = 0.0;
point[3].orientation.y = 0.0;
point[3].orientation.z = 0.662;
point[3].orientation.w = 0.749;
}



void get_srv(move_forward::Jrc_move& srv, geometry_msgs::Pose& point)
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
    ros::init(argc, argv, "Jrc_move_client");
    ros::NodeHandle node;
    ros::ServiceClient client = node.serviceClient<move_forward::Jrc_move>("/Jrc_move");
    move_forward::Jrc_move srv;
    get_point_parameter();
  

//返回过渡
 get_srv(srv, point[3]);

    sleep(40);
    if(client.call(srv))
    {
        ROS_INFO("success");
        ROS_INFO("the response is %ld", (long int)srv.response.mark);
    }
    else
    {
        ROS_ERROR("Failed");
    }


    get_srv(srv, point[0]);

    sleep(2);
    if(client.call(srv))
    {
        ROS_INFO("success");
 ROS_INFO("the response is %ld", (long int)srv.response.mark);
    }
    else
    {
        ROS_ERROR("Failed");
    }



 

    return 0;
}
