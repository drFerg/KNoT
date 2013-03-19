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


#define SEQNO_START 0
#define SEQNO_LIMIT 255


void increment_seq_no(ChannelState *state, DataPayload *dp){
   if (state->seqno >= SEQNO_LIMIT)
      state->seqno = SEQNO_START;
   else 
      state->seqno++;
   dp->hdr.seqno = state->seqno;
}

int check_seqno(ChannelState *state, DataPayload *dp){
   if (state->seqno > dp->hdr.seqno){
      PRINTF("--Out of sequence--\n");
      PRINTF("--State SeqNo: %d SeqNo %d--\n--Dropping packet--\n",state->seqno, dp->hdr.seqno);
      return 0;
   }
   else {
      state->seqno = dp->hdr.seqno;
      PRINTF("--SeqNo %d--\n", dp->hdr.seqno);
      if (state->seqno >= SEQNO_LIMIT){
         state->seqno = SEQNO_START;
         PRINTF("--Reset SeqNo\n");
      }
      return 1;
   }
}

int init_knot_network(){
   KNOT_EVENT_SERVICE_FOUND = process_alloc_event();
   KNOT_EVENT_DATA_READY    = process_alloc_event();
   init_link_layer();
   return 1;
}


void send_on_knot_channel(ChannelState *state, DataPayload *dp){
   increment_seq_no(state, dp);
   send_on_channel(state, dp);
}

void knot_broadcast(ChannelState *state, DataPayload *dp){
   increment_seq_no(state, dp);
   broadcast(state,dp);
}

void set_broadcast(Address a){
   copy_address_broad(a);
}
void copy_link_address(ChannelState *state){
   copy_address(state);
}

void clean_packet(DataPayload *dp){
   memset(dp, '\0', sizeof(DataPayload));
}

void ping(ChannelState *state){
   DataPayload *new_dp = &(state->packet);
   clean_packet(new_dp);
   new_dp->hdr.src_chan_num = state->chan_num;
   new_dp->hdr.dst_chan_num = state->remote_chan_num;
   (new_dp)->hdr.cmd = PING;
   (new_dp)->dhdr.tlen = 0;
   send_on_knot_channel(state,new_dp);
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
   state->pingOUT = 0;

}

void ping_handler(ChannelState *state,DataPayload *dp){
   if (state->state != STATE_CONNECTED) {
      PRINTF("Not in Connected state\n");
      return;
   }

   DataPayload *new_dp = &(state->packet);
   memset(new_dp, '\0', sizeof(DataPayload));
   new_dp->hdr.src_chan_num = state->chan_num;
   new_dp->hdr.dst_chan_num = state->remote_chan_num;
   (new_dp)->hdr.cmd = PACK; 
   (new_dp)->dhdr.tlen = 0;
   send_on_knot_channel(state,new_dp);
   state->ticks = 100;
}


void close_graceful(ChannelState *state){
   DataPayload *new_dp = &(state->packet);
   clean_packet(new_dp);
   new_dp->hdr.src_chan_num = state->chan_num;
   new_dp->hdr.dst_chan_num = state->remote_chan_num;
   (new_dp)->hdr.cmd = DISCONNECT;
   (new_dp)->dhdr.tlen = 0;
   send_on_knot_channel(state,new_dp);
   state->state = STATE_DCONNECTED;
   state->ticks = 100;
}

void close_handler(ChannelState *state, DataPayload *dp){
   printf("Sending CLOSE ACK...\n");
   DataPayload *new_dp = &(state->packet);
   clean_packet(new_dp);
   new_dp->hdr.src_chan_num = dp->hdr.dst_chan_num;
   new_dp->hdr.dst_chan_num = dp->hdr.src_chan_num;
   (new_dp)->hdr.cmd = DACK;
   (new_dp)->dhdr.tlen = 0;
   send_on_knot_channel(state,new_dp);
}