#ifndef UDPNET
#define UDPNET


typedef struct packet{
    char *addr;
    char *payload;
} Packet;


int create_service(int port);

int send_UDP(int fd,int destPort,char * destAddr, char *message);

int read_UDP(int fd,char * dev, Packet* msg);
#endif

