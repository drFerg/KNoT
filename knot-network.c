#include "knot-network.h"

char *cmdnames[15] = {"", "QUERY", "QACK","CONNECT", "CACK", 
                                 "RESPONSE", "RACK", "DISCONNECT", "DACK",
                                 "ERROR", "ERROR", "PING", "PACK", "SEQNO",
                                 "SACK"};
/**Send a message to the connection in state **/
void send_on_channel(ChannelState *state, DataPayload *dp){
   int dplen = sizeof(PayloadHeader) + sizeof(DataHeader) + dp->dhdr.tlen;
   uip_udp_packet_sendto(udp_conn, (char*)dp, dplen,
                          &state->remote_addr,state->remote_port);
   printf("Sent %s to ipaddr=%d.%d.%d.%d:%u\n", 
      cmdnames[dp->hdr.cmd], 
      uip_ipaddr_to_quad(&(state->remote_addr)),
      uip_htons(state->remote_port));
   
}

void send(ChannelState *state, DataPayload *dp){
   int dplen = sizeof(PayloadHeader) + sizeof(DataHeader) + dp->dhdr.tlen;
   uip_udp_packet_send(udp_conn, (char*)dp, dplen);
   printf("Sent %s to ipaddr=%d.%d.%d.%d:%u\n", 
      cmdnames[dp->hdr.cmd], 
      uip_ipaddr_to_quad(&(udp_conn->ripaddr)),
      uip_htons(udp_conn->rport));
}

void ping(ChannelState *state){
   DataPayload *new_dp = &(state->packet);
   memset(new_dp, '\0', sizeof(DataPayload));
   new_dp->hdr.dst_chan_num = state->chan_num;
   new_dp->hdr.src_chan_num = state->chan_num;

   (new_dp)->hdr.cmd = PING; 
   (new_dp)->hdr.seqno = uip_htonl(1);
   (new_dp)->dhdr.tlen = 0;
   send_on_channel(state,new_dp);
   state->state = STATE_PING;
   state->ticks = 100;
}

void pack_handler(ChannelState *state, DataPayload *dp){
   if (state->state != STATE_PING) {
      printf("%d Not in PING state\n", state->state);
      return;
   }
   state->state = STATE_CONNECTED;
   state->ticks = 100;

}

void ping_handler(ChannelState *state,DataPayload *dp){
   if (state->state != STATE_CONNECTED) {
      printf("Not in Connected state\n");
      return;
   }

   DataPayload *new_dp = &(state->packet);
   memset(new_dp, '\0', sizeof(DataPayload));
   new_dp->hdr.dst_chan_num = state->chan_num;
   new_dp->hdr.src_chan_num = state->chan_num;
   
   (new_dp)->hdr.cmd = PACK; 
   (new_dp)->hdr.seqno = uip_htonl(1);
   (new_dp)->dhdr.tlen = 0;
   send_on_channel(state,new_dp);
   state->ticks = 100;
}