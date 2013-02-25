#include "knot_uip_network.h"

#define DEBUG 1
#if DEBUG
#include <stdio.h>
#define PRINTF(...) printf(__VA_ARGS__)
#else
#define PRINTF(...)
#endif

#define SEQNO_START 0
#define SEQNO_LIMIT 254



struct uip_udp_conn *udp_conn;
uip_ipaddr_t broad;

int init_link_layer(){
   udp_conn = udp_broadcast_new(UIP_HTONS(LOCAL_PORT),NULL);
   if (udp_conn != NULL){
      udp_bind(udp_conn,UIP_HTONS(LOCAL_PORT));
      PRINTF(">>SET UP NETWORK<<\n");
   } else return 0;
   uip_ipaddr(&broad,255,255,255,255);
   PRINTF("ipaddr=%d.%d.%d.%d:%u\n", 
      uip_ipaddr_to_quad(&(udp_conn->ripaddr)),
      uip_htons(udp_conn->rport));
   return 1;
}


/**Send a message to the connection in state **/
void send_on_channel(ChannelState *state, DataPayload *dp){
   int dplen = sizeof(PayloadHeader) + sizeof(DataHeader) + uip_ntohs(dp->dhdr.tlen);
   PRINTF("DPLEN %d\n",dplen);
   if (state->seqno >= SEQNO_LIMIT)
      state->seqno = SEQNO_START;
   state->seqno++;
   dp->hdr.seqno = state->seqno;
   uip_udp_packet_sendto(udp_conn, (char*)dp, dplen,
                          &state->remote_addr,state->remote_port);
   PRINTF("Sent %s to ipaddr=%d.%d.%d.%d:%u\n", 
      cmdnames[dp->hdr.cmd], 
      uip_ipaddr_to_quad(&(state->remote_addr)),
      uip_htons(state->remote_port));
   
}

void broadcast(ChannelState *state, DataPayload *dp){
   int dplen = sizeof(PayloadHeader) + sizeof(DataHeader) + uip_ntohs(dp->dhdr.tlen);
   uip_udp_packet_sendto(udp_conn, (char*)dp, dplen,
                          &broad,state->remote_port);
   PRINTF("Sent %s to ipaddr=%d.%d.%d.%d:%u\n", 
      cmdnames[dp->hdr.cmd], 
      uip_ipaddr_to_quad(&(udp_conn->ripaddr)),
      uip_htons(udp_conn->rport));
}

void send(ChannelState *state, DataPayload *dp){
   int dplen = sizeof(PayloadHeader) + sizeof(DataHeader) + uip_ntohs(dp->dhdr.tlen);
   uip_udp_packet_send(udp_conn, (char*)dp, dplen);
   PRINTF("Sent %s to ipaddr=%d.%d.%d.%d:%u\n", 
      cmdnames[dp->hdr.cmd], 
      uip_ipaddr_to_quad(&(udp_conn->ripaddr)),
      uip_htons(udp_conn->rport));
}

