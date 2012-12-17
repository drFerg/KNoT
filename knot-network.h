#ifndef KNOT_NETWORK
#define KNOT_NETWORK


#include "contiki.h"
#include "contiki-net.h"
#include "contiki-lib.h"
#include "uip.h"
#include <stdio.h>
//Sensor type

#define TEMP   1
#define HUM    2
#define SWITCH 3


#define QUERY    1
#define QACK     2
#define CONNECT  3
#define CACK     4
#define RESPONSE 5
#define RACK     6
#define DISCONNECT 7
#define DACK     8
#define PING    11
#define PACK    12
#define SEQNO   13
#define SACK    14
#define CMD_LOW CONNECT
#define CMD_HIGH SACK		/* change this if commands added */
#define P_SIZE 1024
#define UDP_DATA_LEN 120
#define UDP_HDR ((struct uip_udpip_hdr *)&uip_buf[UIP_LLH_LEN])

extern char *cmdnames[15];

typedef struct channel_state{
   u8_t state;
   struct uip_udp_conn *udp_conn;
   uip_ipaddr_t remote_addr; //Holds address of remote device
   uint16_t remote_port;
}ChannelState;

typedef struct ph {
   uint32_t subport;	/* 3rd piece of identifier triple */
   uint32_t seqno;	/* sequence number */
   uint8_t cmd;	/* message type */
} PayloadHeader;

typedef struct dh {
   uint16_t tlen;	/* total length of the data */
} DataHeader;


typedef struct dp {		/* template for data payload */
   PayloadHeader hdr;
   DataHeader dhdr;
   unsigned char data[1];	/* data is address of `len' bytes */
} DataPayload;

typedef struct query_response{
   uint8_t type;
   uint16_t freq;
}QueryResponse;




void send(ChannelState *state, DataPayload *dp);

void send_on_channel(ChannelState *state, DataPayload *dp);



#endif /*KNOT_NETWORK*/