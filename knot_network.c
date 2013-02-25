#include "knot_network.h"
#include <stdio.h>
#include <string.h>

#define DEBUG 1
#if DEBUG
#include <stdio.h>
#define PRINTF(...) printf(__VA_ARGS__)
#else
#define PRINTF(...)
#endif




int init_knot_network(){
   KNOT_EVENT_SERVICE_FOUND = process_alloc_event();
   KNOT_EVENT_DATA_READY    = process_alloc_event();
   init_link_layer();
   return 1;
}





void ping(ChannelState *state){
   DataPayload *new_dp = &(state->packet);
   memset(new_dp, '\0', sizeof(DataPayload));
   new_dp->hdr.dst_chan_num = state->chan_num;

   (new_dp)->hdr.cmd = PING; 
   (new_dp)->hdr.seqno = uip_htonl(1);
   (new_dp)->dhdr.tlen = 0;
   send_on_channel(state,new_dp);
   state->state = STATE_PING;
   state->ticks = 100;
}

void pack_handler(ChannelState *state, DataPayload *dp){
   if (state->state != STATE_PING) {
      PRINTF("%d Not in PING state\n", state->state);
      return;
   }
   state->state = STATE_CONNECTED;
   state->ticks = 100;

}

void ping_handler(ChannelState *state,DataPayload *dp){
   if (state->state != STATE_CONNECTED) {
      PRINTF("Not in Connected state\n");
      return;
   }

   DataPayload *new_dp = &(state->packet);
   memset(new_dp, '\0', sizeof(DataPayload));
   new_dp->hdr.dst_chan_num = state->chan_num;
   
   (new_dp)->hdr.cmd = PACK; 
   (new_dp)->hdr.seqno = uip_htonl(1);
   (new_dp)->dhdr.tlen = 0;
   send_on_channel(state,new_dp);
   state->ticks = 100;
}