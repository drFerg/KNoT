/*
* author Fergus William Leahy
*/
#ifndef KNOT_NETWORK_H
#define KNOT_NETWORK_H

#include <stdio.h>
#include <string.h>

#include "contiki.h"
#include "contiki-net.h"
#include "contiki-lib.h"
#include "uip.h"

#include "knot_protocol.h"
#include "knot_callback.h"
#include "knot_channel_state_uip.h"

#define LOCAL_PORT 5001

#define P_SIZE 1024
#define UDP_DATA_LEN 120
#define UDP_HDR ((struct uip_udpip_hdr *)&uip_buf[UIP_LLH_LEN])


extern char *cmdnames[15];

/* 
 * returns 1 if successful, 0 otherwise 
 */
int init();
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