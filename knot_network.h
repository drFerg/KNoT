#ifndef KNOT_NETWORK_H
#define KNOT_NETWORK_H

#include "contiki.h"
#include "contiki-net.h"
#include "contiki-lib.h"
#include "uip.h"
#include "knot_protocol.h"
#include "knot_channel_state_uip.h"
#include "knot_events.h"
/*Change include to suit lower layer network */
#include "knot_uip_network.h"



int init_knot_network();
void ping(ChannelState *state);
void pack_handler(ChannelState *state, DataPayload *dp);
void ping_handler(ChannelState *state, DataPayload *dp);



#endif /* KNOT_NETWORK_H */