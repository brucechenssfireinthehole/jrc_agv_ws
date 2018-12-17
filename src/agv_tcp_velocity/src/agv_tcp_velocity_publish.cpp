#include "ros/ros.h"
#include <signal.h>
#include "geometry_msgs/Twist.h"
#include <tcp_client.h>
#define FREQUENCY 10
#define COMMAND_SIZE 11

#define MAXZERONUM 5

char* ip = "10.10.100.254";
char* port = "8899";
tcp_client tc(ip, port);


class DataUpdater
{
public:
    DataUpdater(ros::NodeHandle &nh);
    ~DataUpdater();
    geometry_msgs::Twist getCarVel();

private:
    // callback functions
    void carVelCallback(const geometry_msgs::Twist::ConstPtr& msg);

    // subscribers
    ros::Subscriber carVelSub;
    
    // data
    geometry_msgs::Twist::ConstPtr carVel; //boost::shared_ptr<const geometry_msgs::Twist_<std::allocator<void> > >
    // the latest time that recieve a message
    ros::Time carVelTime;
    int ACCEPTTIME;
};

DataUpdater::DataUpdater(ros::NodeHandle &nh)
{

    carVelSub = nh.subscribe("cmd_vel",1,&DataUpdater::carVelCallback,this);
    ACCEPTTIME = 500000000; // 0.5s, unit: ns(10^-9s) TODO: this may need change
}

DataUpdater::~DataUpdater()
{
}

void DataUpdater::carVelCallback(const geometry_msgs::Twist::ConstPtr& msg)
{
    carVel = msg;
    //ROS_INFO("car_vel: %.4f, %.4f, %.4f", msg->linear.x, msg->linear.y, msg->angular.z);
    carVelTime = ros::Time::now();
}

geometry_msgs::Twist DataUpdater::getCarVel()
{
    ros::Time nowTime = ros::Time::now();
    ros::Duration timediff = nowTime-carVelTime;
    if(carVel && timediff.nsec<ACCEPTTIME && timediff.sec==0 ) // this message is new enough
        return *carVel;
    geometry_msgs::Twist dummyZero;
    //ROS_INFO("RETURN DUMMY");
    return dummyZero;
}


void genCmd(char* cmdData, short vx, short vy, short va)
{
    void* tempP1 = &vx;
    void* tempP2 = &vy;
    void* tempP3 = &va;
    char* velxChar = (char*)tempP1;
    char* velyChar = (char*)tempP2;
    char* velaChar = (char*)tempP3;

    cmdData[0] = (char)0x53;
    cmdData[1] = (char)0x4A;
    cmdData[2] = (char)0x54;
    cmdData[3] = (char)0x55;
    cmdData[4] = velxChar[1]; //swap the high byte and the low byte
    cmdData[5] = velxChar[0];
    cmdData[6] = velyChar[1];
    cmdData[7] = velyChar[0];
    cmdData[8] = velaChar[1];
    cmdData[9] = velaChar[0];
    cmdData[10] = (char)0x01; //

}

void velFilter(short &vx, short &vy, short &va, int &count, short &lastvx, short &lastvy, short &lastva)
{
    if(vx==0 && vy==0 && va==0)
    {
        count++;
        if(count>MAXZERONUM)
        {
            count = MAXZERONUM;
        }
        else
        {
            vx = lastvx;
            vy = lastvy;
            va = lastva;
            ROS_INFO("*****FILT OUT********");
        }
    }
    else
    {
        count = 0;
        lastvx = vx;
        lastvy = vy;
        lastva = va;
    }
}
void shutdown(int sig)
{
    char  cmd_e[COMMAND_SIZE];
    cmd_e[0] = (char)0x53;
    cmd_e[1] = (char)0x4A;
    cmd_e[2] = (char)0x54;
    cmd_e[3] = (char)0x55;
    cmd_e[4] = (char)0x00; //swap the high byte and the low byte
    cmd_e[5] = (char)0x00;
    cmd_e[6] = (char)0x00;
    cmd_e[7] = (char)0x00;
    cmd_e[8] = (char)0x00;
    cmd_e[9] = (char)0x00;
    cmd_e[10] = (char)0x01; //
    tc.send_message(cmd_e, COMMAND_SIZE);
    ros::Duration(1).sleep();
    ROS_INFO("shut down .............");
    ros::shutdown();
    
}

int main(int argc, char* argv[])
{

ros::init(argc, argv, "car_wireless");
ros::NodeHandle nh;
DataUpdater dataUpdater(nh);
char cmd[COMMAND_SIZE];
ros::Rate rate(FREQUENCY);


geometry_msgs::Twist carVelocity;
int zeroCount = 0;
short lastvx=0;
short lastvy=0;
short lastva=0;
short vx,vy,va;
double velx,vely,vela;


signal(SIGINT, shutdown);
while(ros::ok())
   {
       ros::spinOnce();
       rate.sleep();

   // Read the velocity
       carVelocity = dataUpdater.getCarVel();
       velx = carVelocity.linear.x;
       vely = carVelocity.linear.y;
       vela = carVelocity.angular.z;
       vx = (int)(velx*1000.0);
       vy = (int)(vely*1000.0);
       va = (int)(vela*1000.0);

       velFilter(vx,vy,va,zeroCount,lastvx,lastvy,lastva); // filt out single zero

       genCmd(cmd,vx,vy,-va); // adjust the opsite direction
       tc.send_message(cmd, COMMAND_SIZE);
        //ROS_INFO("command size %d", sizeof(cmd));
           ROS_INFO("Send cmd %02x, %02x, %02x, %02x, %02x, %02x.",(unsigned char)cmd[4],(unsigned char)cmd[5],(unsigned char)cmd[6],(unsigned char)cmd[7],(unsigned char)cmd[8],(unsigned char)cmd[9]);
   }

}
