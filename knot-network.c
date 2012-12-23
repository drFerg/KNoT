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
   int dplen = sizeof(PayloadHeader) + sizeof(DataHeader) + dp->dhdr.tlen;
   uip_udp_packet_send(state->udp_conn, (char*)dp, dplen);
   printf("Sent %s to ipaddr=%d.%d.%d.%d:%u\n", 
      cmdnames[dp->hdr.cmd], 
      uip_ipaddr_to_quad(&(state->udp_conn->ripaddr)),
      uip_htons(state->udp_conn->rport));
}