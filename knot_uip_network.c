#include "knot_uip_network.h"

#define DEBUG 1
#if DEBUG
#include <stdio.h>
#define PRINTF(...) printf(__VA_ARGS__)
#else
#define PRINTF(...)
#endif




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

void copy_address(ChannelState *state){
   state->remote_port = UDP_HDR->srcport;
   uip_ipaddr_copy(&(state->remote_addr) , &(UDP_HDR->srcipaddr));
}

void copy_address_ab(Address a, Address b){
   
   uip_ipaddr_copy((uip_ipaddr_t *)a , (uip_ipaddr_t *)b);
}

void copy_address_broad(Address a){
   uip_ipaddr_copy((uip_ipaddr_t *)a, &broad);
}


/**Send a message to the connection in state **/
void send_on_channel(ChannelState *state, DataPayload *dp){
   int dplen = sizeof(PayloadHeader) + sizeof(DataHeader) + uip_ntohs(dp->dhdr.tlen);
   PRINTF("DPLEN %d\n",dplen);
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

