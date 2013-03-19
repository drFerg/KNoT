/*
* author Fergus William Leahy
*/
#include "knot_channel_state_uip.h"
#include "knot_uip_network.h"

void init_state(ChannelState *state, uint8_t chan_num){
      state->chan_num = chan_num;
      state->seqno = 0;
      state->remote_port = UIP_HTONS(LOCAL_PORT);
      state->pingOUT = 0;
}

