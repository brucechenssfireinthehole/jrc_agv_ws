#include <ros/ros.h>
#include <velocity_smooth/smooth_srv.h>
#include <velocity_smooth/smooth_srv_multi.h>
#include <tf/transform_listener.h>
#include <tf/transform_datatypes.h>
#include <geometry_msgs/Pose.h>
#include <map>

using namespace std;
geometry_msgs::Pose point[10];

void  get_point_parameter()
{
//起始点
point[0].position.x = 0.262;  //todo
point[0].position.y = 2.571;
point[0].position.z = 0.0;
point[0].orientation.x = 0.0;
point[0].orientation.y = 0.0;
point[0].orientation.z = -0.689;   //sin(theta/2)
point[0].orientation.w = 0.724;   //cos(theta/2)

//第一个抓取点
point[1].position.x = 0.350; //todo
point[1].position.y = 1.596;
point[1].position.z = 0.0;
point[1].orientation.x = 0.0;
point[1].orientation.y = 0.0;
point[1].orientation.z = -0.687;
point[1].orientation.w = 0.727;

//过渡点
point[2].position.x = 0.237;   //todo
point[2].position.y = 1.598;
point[2].position.z = 0.0;
point[2].orientation.x = 0.0;
point[2].orientation.y = 0.0;
point[2].orientation.z = 0.720;
point[2].orientation.w = 0.694;

//第二抓取点
point[3].position.x = 0.082;  //todo
point[3].position.y = 0.804;
point[3].position.z = 0.0;
point[3].orientation.x = 0.0;
point[3].orientation.y = 0.0;
point[3].orientation.z = 0.708;
point[3].orientation.w = 0.706;

//第三抓取点
point[4].position.x = 0.525;  //todo
point[4].position.y = -2.267;
point[4].position.z = 0.0;
point[4].orientation.x = 0.0;
point[4].orientation.y = 0.0;
point[4].orientation.z = 0.732;
point[4].orientation.w = 0.691;

//过渡点
point[5].position.x = 0.655;  //todo
point[5].position.y = -2.260;
point[5].position.z = 0.0;
point[5].orientation.x = 0.0;
point[5].orientation.y = 0.0;
point[5].orientation.z = -0.685;
point[5].orientation.w = 0.728;

//第四抓取点
point[6].position.x = 0.798;  //todo
point[6].position.y = -1.479;
point[6].position.z = 0.0;
point[6].orientation.x = 0.0;
point[6].orientation.y = 0.0;
point[6].orientation.z = -0.686;
point[6].orientation.w = 0.727;

//过渡点
point[7].position.x = 0.783;  //todo
point[7].position.y = -2.962;
point[7].position.z = 0.0;
point[7].orientation.x = 0.0;
point[7].orientation.y = 0.0;
point[7].orientation.z = -0.685;
point[7].orientation.w = 0.728;

//过渡点
point[8].position.x = 0.780;  //todo
point[8].position.y = -2.960;
point[8].position.z = 0.0;
point[8].orientation.x = 0.0;
point[8].orientation.y = 0.0;
point[8].orientation.z = 0.037;
point[8].orientation.w = 0.999;
//more point...

//倾倒点
point[9].position.x = 0.931;  //todo
point[9].position.y = -3.550;
point[9].position.z = 0.0;
point[9].orientation.x = 0.0;
point[9].orientation.y = 0.0;
point[9].orientation.z = 0.042;
point[9].orientation.w = 0.999;
}



void get_srv(velocity_smooth::smooth_srv& srv, geometry_msgs::Pose& point, float status)
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

void get_srv_multi(velocity_smooth::smooth_srv_multi& srv_multi, std::vector<geometry_msgs::Pose> & points)
{
   // int size;
   //  size=points.size();
   std::vector<geometry_msgs::Quaternion> quats;
   std::vector<geometry_msgs::Pose>::iterator it;
   for (it = points.begin(); it != points.end(); it++)
   {   geometry_msgs::Quaternion quat;
      // cout << *it << endl;
       quat.x = (*it).orientation.x;
       quat.y = (*it).orientation.y;
       quat.z = (*it).orientation.z;
       quat.w = (*it).orientation.w;
       quats.push_back(quat);
       srv_multi.request.x_multi.push_back((*it).position.x);
       srv_multi.request.y_multi.push_back((*it).position.y);
       srv_multi.request.theta_multi.push_back(tf::getYaw(quat));
   }
}

int main(int argc, char** argv)
{
    ros::init(argc, argv, "velocity_smooth_client");
    ros::NodeHandle node;
    ros::ServiceClient client = node.serviceClient<velocity_smooth::smooth_srv>("/Jrc_move"); 
    velocity_smooth::smooth_srv srv;
    get_point_parameter();
    //1,3,4,6,9抓取点
    //2,5,7,8过渡点
    get_srv(srv, point[1], 1);
    if(client.call(srv))
    {
    	ROS_INFO("success");
    	ROS_INFO("the response is %ld", (long int)srv.response.mark);
    }	
    else	
    {	
    	ROS_ERROR("Failed");
    }	
    sleep(3);
    get_srv(srv, point[2], 0);
     if(client.call(srv))
     {
     	ROS_INFO("success");
     	ROS_INFO("the response is %ld", (long int)srv.response.mark);
     }	
     else	
     {	
     	ROS_ERROR("Failed");
     }
     sleep(1);
     get_srv(srv, point[3], 1);
         if(client.call(srv))
         {
         	ROS_INFO("success");
         	ROS_INFO("the response is %ld", (long int)srv.response.mark);
         }	
         else	
         {	
         	ROS_ERROR("Failed");
         }
     sleep(3);
     get_srv(srv, point[4], 1);
          if(client.call(srv))
          {
          	ROS_INFO("success");
          	ROS_INFO("the response is %ld", (long int)srv.response.mark);
          }	
          else	
          {	
          	ROS_ERROR("Failed");
          }
      sleep(3);
      get_srv(srv, point[5], 0);
           if(client.call(srv))
           {
           	ROS_INFO("success");
           	ROS_INFO("the response is %ld", (long int)srv.response.mark);
           }	
           else	
           {	
           	ROS_ERROR("Failed");
           }
           sleep(1);
       get_srv(srv, point[6], 1);
            if(client.call(srv))
            {
            	ROS_INFO("success");
            	ROS_INFO("the response is %ld", (long int)srv.response.mark);
            }	
            else	
            {	
            	ROS_ERROR("Failed");
            }
        sleep(3);
        get_srv(srv, point[7], 0);
             if(client.call(srv))
             {
             	ROS_INFO("success");
             	ROS_INFO("the response is %ld", (long int)srv.response.mark);
             }	
             else	
             {	
             	ROS_ERROR("Failed");
             }
             sleep(1);
         get_srv(srv, point[8], 0);
              if(client.call(srv))
              {
              	ROS_INFO("success");
              	ROS_INFO("the response is %ld", (long int)srv.response.mark);
              }	
              else	
              {	
              	ROS_ERROR("Failed");
              }
              sleep(1);
          get_srv(srv, point[9], 1);
               if(client.call(srv))
               {
               	ROS_INFO("success");
               	ROS_INFO("the response is %ld", (long int)srv.response.mark);
               }	
               else	
               {	
               	ROS_ERROR("Failed");
               }
          //     sleep(1);
          
    return 0;
}	
		