#ifndef KNOT_NETWORK
#define KNOT_NETWORK


#include "contiki.h"
#include "contiki-net.h"
#include "contiki-lib.h"
#include "uip.h"
#include <stdio.h>
#include <string.h>

//Sensor type
#define TEMP   1
#define HUM    2
#define SWITCH 3

/* Connection states */
#define STATE_IDLE       0
#define STATE_QUERY      1
#define STATE_QACKED     2
#define STATE_CONNECT    3
#define STATE_CONNECTED  4
#define STATE_DCONNECTED 5
#define STATE_PING       7
/* ===================*/

/* Packet command types */
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
/* =======================*/

#define LOCAL_PORT 5001
#define MAX_DATA_SIZE 32
#define NAME_SIZE     16

#define P_SIZE 1024
#define UDP_DATA_LEN 120
#define UDP_HDR ((struct uip_udpip_hdr *)&uip_buf[UIP_LLH_LEN])

struct uip_udp_conn *udp_conn;

extern char *cmdnames[15];

typedef struct ph {
   uint32_t seqno;   /* sequence number */
   uint8_t src_chan_num;
   uint8_t dst_chan_num;
   uint8_t cmd;	/* message type */
} PayloadHeader;

typedef struct dh {
   uint16_t tlen;	/* total length of the data */
} DataHeader;


typedef struct dp {		/* template for data payload */
   PayloadHeader hdr;
   DataHeader dhdr;
   unsigned char data[MAX_DATA_SIZE];	/* data is address of `len' bytes */
} DataPayload;



/* Message Payloads */

typedef struct query{
   uint8_t type;
   char name[NAME_SIZE];
}QueryMsg;

typedef struct query_response{
   uint8_t type;
   uint16_t freq;
}QueryResponseMsg;

typedef struct connect_message{
   uint8_t accept;
   char name[NAME_SIZE];
}ConnectMsg;

typedef struct cack{
   uint8_t accept;
   char name[NAME_SIZE];
}ConnectACKMsg;

typedef struct response{
   char name[NAME_SIZE];
   uint16_t data;
}ResponseMsg;

typedef struct channel_state{
   uint8_t state;
   uint32_t seqno;
   uip_ipaddr_t remote_addr; //Holds address of remote device
   uint32_t remote_port;
   uint8_t chan_num;
   uint8_t remote_chan_num;
   uint16_t ticks;
   DataPayload packet;
}ChannelState;

/*
 * sends datapayload to the connections default address
 * (good for broadcast)
 */
void send(ChannelState *state, DataPayload *dp);

/*
 * sends datapayload to the address specified in the channel state
 */
void send_on_channel(ChannelState *state, DataPayload *dp);


void ping(ChannelState *state);
void pack_handler(ChannelState *state, DataPayload *dp);
void ping_handler(ChannelState *state, DataPayload *dp);


#endif /*KNOT_NETWORK*/