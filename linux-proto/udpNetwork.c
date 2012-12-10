#include <stdio.h>
#include <sys/socket.h>
#include <netdb.h>
#include <arpa/inet.h>
#include <unistd.h>
#include <stdlib.h>
#include <string.h>
#include "udpNetwork.h"

#define BUFF 1024

int create_service(int port){

	int fd = socket(AF_INET, SOCK_DGRAM, 0);
	struct sockaddr_in addr;
	addr.sin_addr.s_addr = INADDR_ANY; /** INADDR_ANY to any network interface **/
	addr.sin_family = AF_INET; /** IPv4 **/
	addr.sin_port = htons(port);


	if ( fd == -1 ){
		printf( "Server: Couldn't create socket\n" );
		return -1;
	}

	if ( bind( fd, (struct sockaddr*) &addr, sizeof(addr)) == -1 ){
		printf("Server:Couldn't bind to port %d\n",addr.sin_port);
		return -1;
	}

	/* Set up IP address for UDP Multicast */
	struct ip_mreq imr;
	inet_pton(AF_INET, "224.0.0.22", &(imr.imr_multiaddr.s_addr));
	imr.imr_interface.s_addr = INADDR_ANY;
	/* Join group */
	if (setsockopt(fd, IPPROTO_IP, IP_ADD_MEMBERSHIP, &imr, sizeof(imr)) < 0) {
		perror("Couldn't joining multicast group\n");
	}
	return fd;

}

int send_UDP(int fd,int destPort,char * destAddr, char *message){
	/* Connect to multicast group on 5010 */
	struct sockaddr_in addr;
	addr.sin_family = AF_INET;
	addr.sin_port = htons(destPort);
	inet_pton(AF_INET, destAddr, &(addr.sin_addr));
	char buffer[BUFF];/* buffer for message and FROM info */
	buffer[0] = '\0';
	/* format message to send */
	sprintf(buffer,"%s",message);
	int buflen = strlen(buffer);
	/* Send */
	if (sendto(fd, buffer, buflen, 0, (struct sockaddr *) &(addr), sizeof(addr)) < 0) {
		perror("Couldn't send message.\n");
	}
	return 1;
}

/* Reads connection */
int read_UDP(int fd,char * dev, Packet* msg){
	char buffer[BUFF];
	struct sockaddr addr;
	socklen_t alen = sizeof(addr);
	int rlen;
	/* Gets data from the connection */
	rlen = recvfrom(fd, buffer, BUFF, 0, &addr, &alen);
	if (rlen < 0) {
		return -1;
	}
	printf("Got Message\n");
	buffer[rlen] = '\0';
	/*char result[TIMEBUF];
	memset(result, 0, TIMEBUF);
	time_t now = time(NULL);
	strftime(result, TIMEBUF, "%d-%m-%Y %T", localtime(&now));
	char * sourceIP = strtok(buffer,",");*/
	struct sockaddr_in* saddr = (struct sockaddr_in*) &addr;
	msg->addr = inet_ntoa(saddr->sin_addr);
	msg->payload = (char *)malloc(sizeof(rlen));
	if (msg->payload == NULL)return 0;
	strcpy(msg->payload,buffer);
	printf("Address: %s\n", inet_ntoa(saddr->sin_addr));
	msg->addr = (char *)malloc(sizeof(20));
	strcpy(msg->addr, inet_ntoa(saddr->sin_addr));
	printf("DevReq: %s\n",msg->payload);
	if (!strcmp(msg->payload, dev)){
		printf("Device Service Match\n");
	}	
	return 1;	
}
