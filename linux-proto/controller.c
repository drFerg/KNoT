#include <string.h>
#include <stdio.h>
#include "udpNetwork.h"
#include <sys/socket.h>
#define BUFF 1020
#define NAMELEN 20
#define MULTICASTPORT 5001
#define MULTICASTADDR "224.0.0.22"
#define CONTIKI "172.16.202.239"

int main(int argc, char *argv[])
{	/* check for invalid amount of args */
	if (argc != 2 ){ 
		printf("Usage: chirp \"message\"\nmessage - character string of <=1000 chars\n");
		return -1;
	}
	/* check for correct message size */
	if (strlen(argv[1])> 1000){
		printf("Message too long, needs to be <=1000 characters\n");
		return -1;
	}
	int fd = socket(AF_INET, SOCK_DGRAM, 0);
	send_UDP(fd, MULTICASTPORT, CONTIKI,argv[1]); 
	int servicefd = create_service(5001);
	Packet p;
	while(1)read_UDP(servicefd,argv[1],&p);
	close(fd);

	return 0;
}
