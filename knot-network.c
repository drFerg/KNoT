#include "knot-network.h"

#define SEQNO_START 0
#define SEQNO_LIMIT 255

char *cmdnames[15] = {"", "QUERY", "QACK","CONNECT", "CACK", 
                                 "RESPONSE", "RACK", "DISCONNECT", "DACK",
                                 "ERROR", "ERROR", "PING", "PACK", "SEQNO",
                                 "SACK"};

struct uip_udp_conn *udp_conn;

int init(){
   udp_conn = udp_broadcast_new(UIP_HTONS(LOCAL_PORT),NULL);
   if (udp_conn != NULL){
      udp_bind(udp_conn,UIP_HTONS(LOCAL_PORT));
      printf(">>SET UP NETWORK<<\n");
   } else return 0;
   printf("ipaddr=%d.%d.%d.%d:%u\n", 
      uip_ipaddr_to_quad(&(udp_conn->ripaddr)),
      uip_htons(udp_conn->rport));
   return 1;
}

                          
/**Send a message to the connection in state **/
void send_on_channel(ChannelState *state, DataPayload *dp){
   int dplen = sizeof(PayloadHeader) + sizeof(DataHeader) + uip_ntohs(dp->dhdr.tlen);
   printf("DPLEN %d\n",dplen);
   if (state->seqno >= SEQNO_LIMIT)
      state->seqno = SEQNO_START;
   state->seqno++;
   dp->hdr.seqno = state->seqno;
   uip_udp_packet_sendto(udp_conn, (char*)dp, dplen,
                          &state->remote_addr,state->remote_port);
   printf("Sent %s to ipaddr=%d.%d.%d.%d:%u\n", 
      cmdnames[dp->hdr.cmd], 
      uip_ipaddr_to_quad(&(state->remote_addr)),
      uip_htons(state->remote_port));
   
}

void send(ChannelState *state, DataPayload *dp){
   int dplen = sizeof(PayloadHeader) + sizeof(DataHeader) + uip_ntohs(dp->dhdr.tlen);
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
   
   (new_dp)->hdr.cmd = PACK; 
   (new_dp)->hdr.seqno = uip_htonl(1);
   (new_dp)->dhdr.tlen = 0;
   send_on_channel(state,new_dp);
   state->ticks = 100;
}