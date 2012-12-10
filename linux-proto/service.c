#include <stdio.h>
#include <string.h>
#include <sys/socket.h>
#include <stdlib.h>
#include <unistd.h>
#include "udpNetwork.h"



void ping(int fd, int port, Packet *p){
    while(1){
        send_UDP(fd,port, p->addr,"BEEP");
	sleep(5);
    }		
} 

int main(int argc, char *argv[])
{
    if (argc == 1) return -1;
    int fd = create_service(atoi(argv[2]));
    if (fd == -1) return -2;
    int mfd = socket(AF_INET,SOCK_DGRAM,0);
    Packet p;
    while(1){
	printf("Waiting...\n");
        read_UDP(fd,argv[1],&p);
        
	if (strcmp(p.payload,argv[1]) == 0){
            printf("Service match\n");
            printf("Connecting...\n");
            printf("Address: %s:%d\n",p.addr,5000);
            ping(mfd,5000,&p);

	}else printf("Other device: %s\n",p.payload);
    }
    //close(fd);

}
