/*
* author Fergus William Leahy
*/
#include "contiki-net.h"
#include "uip.h"
#include "knot-network.h"
#include "knot_channel_state_uip.h"



uip_ipaddr_t broad;
int first = 0;
void set_up(){
    uip_ipaddr(&broad,255,255,255,255);
}

void init_state(ChannelState *state, uint8_t chan_num){
      if (first == 0) set_up();
      state->chan_num = chan_num;
      state->seqno = 0;
      state->remote_port = UIP_HTONS(LOCAL_PORT);
      uip_ipaddr_copy(&(state->remote_addr), &broad);
      printf("Port: %d\n",uip_ntohs(state->remote_port));
}

