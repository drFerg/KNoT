#include "knot-network.h"

char *cmdnames[15] = {"", "QUERY", "QACK","CONNECT", "CACK", 
                                 "RESPONSE", "RACK", "DISCONNECT", "DACK",
                                 "ERROR", "ERROR", "PING", "PACK", "SEQNO",
                                 "SACK"};
/**Send a message to the connection in state **/
void send_on_channel(ChannelState *state, DataPayload *dp){
   int dplen = sizeof(PayloadHeader) + sizeof(DataHeader) + dp->dhdr.tlen;
   uip_udp_packet_sendto(state->udp_conn, (char*)dp, dplen,
                          &state->remote_addr,state->remote_port);
   printf("Sent %s to ipaddr=%d.%d.%d.%d:%u\n", 
      cmdnames[dp->hdr.cmd], 
      uip_ipaddr_to_quad(&(state->remote_addr)),
      uip_htons(state->remote_port));
}

void send(ChannelState *state, DataPayload *dp){
   //printf("%d\n",UIP_BROADCAST);
   int dplen = sizeof(PayloadHeader) + sizeof(DataHeader) + dp->dhdr.tlen;
   //uip_ipaddr_t addr,netmask; 
   //uip_ipaddr(&addr,172,16,1,0);
   //uip_ipaddr(&netmask,255,255,0,0);
   //uip_ipaddr(&state->udp_conn->ripaddr,224,0,0,1);
   //printf("%d",uip_ipaddr_isbroadcast(&state->udp_conn->ripaddr, &addr, &netmask));
   //printf("%s\n", ((uip_ipaddr_maskcmp(&state->udp_conn->ripaddr, &addr, &netmask)>0)?"in":"out"));
   uip_udp_packet_send(state->udp_conn, (char*)dp, dplen);
   printf("Sent %s to ipaddr=%d.%d.%d.%d:%u\n", 
      cmdnames[dp->hdr.cmd], 
      uip_ipaddr_to_quad(&(state->udp_conn->ripaddr)),
      uip_htons(state->udp_conn->rport));
}