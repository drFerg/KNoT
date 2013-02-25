/*
* author Fergus William Leahy
*/
#ifndef KNOT_UIP_NETWORK_H
#define KNOT_UIP_NETWORK_H

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


typedef void * Address;
/* 
 * returns 1 if successful, 0 otherwise 
 */
int init_link_layer();
/*
 * sends datapayload to the connections default address
 * (good for broadcast)
 */
void send(ChannelState *state, DataPayload *dp);

/*
 * sends datapayload to the address specified in the channel state
 */
void send_on_channel(ChannelState *state, DataPayload *dp);

void broadcast(ChannelState *state, DataPayload *dp);

void copy_address(ChannelState *state);
void copy_address_ab(Address a, Address b);
void copy_address_broad(Address a);

#endif /*KNOT_NETWORK*/