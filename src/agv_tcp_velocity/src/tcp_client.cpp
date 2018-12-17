    #include <tcp_client.h>
    #include <errno.h>
    #include <string.h>
    #include <stdio.h>
    #include <unistd.h>
    #include <cstdlib>
    #include <cstring>
    tcp_client::tcp_client(char* server_ip,char* server_port)  
    {  
           if( (socket_fd = socket(AF_INET,SOCK_STREAM,0)) < 0 ) {  
                    printf("create socket error: %s(errno:%d)\n)",strerror(errno),errno);  
                    exit(0);  
            }  
      
            memset(&server_addr,0,sizeof(server_addr));  
            server_addr.sin_family = AF_INET;  
            server_addr.sin_port = htons(atoi(server_port));  
      
            if( inet_pton(AF_INET,server_ip,&server_addr.sin_addr) <=0 ) {  
                    printf("inet_pton error for %s\n",server_ip);  
                    exit(0);  
            }  
      
            if( connect(socket_fd,(struct sockaddr*)&server_addr,sizeof(server_addr))<0) {  
                    printf("connect error: %s(errno: %d)\n",strerror(errno),errno);  
                    exit(0);  
            }  
      }
	
            //printf("send message to server: \n");  
            //fgets(message,4096,stdin);  
      void tcp_client::send_message(char* message_in, int length)
	 {
		memcpy(message,message_in,length);
        std::cout<< (int)message[10] <<std::endl;
        if( send( socket_fd,message,length,0 ) < 0 ) {
                    printf("send message error\n");
                    exit(0);  
            }
	 }
              
      void tcp_client::close_socket()
	{
		close(socket_fd); 	
	}
             
   
      
  
