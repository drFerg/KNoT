/*
* author Fergus William Leahy
*/

#include "knot_channel_state.h"

uip_ipaddr_t broad;
int init = 0;
void init(){
    uip_ipaddr(&broad,255,255,255,255);
}

void init_state(ChannelState * state){
      if (init == 0) init();
      state->chan_num = i+1;
      state->seqno = 0;
      state->remote_port = UIP_HTONS(LOCAL_PORT);
      uip_ipaddr_copy(&(state->remote_addr), &broad);
      printf("Port: %d\n",uip_ntohs(state->remote_port));
}

