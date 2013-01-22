#include "channeltable.h"
#include <stdlib.h>

typedef struct knot_channel{
	ChannelState state;
	struct knot_channel *nextChannel;
	int active;
}Channel;

static Channel channelTable[CHANNEL_NUM];
static Channel *nextFree;
int size;
uip_ipaddr_t broad;

/* 
 * initialise the channel table 
 */
void init_table(){
	printf("Initialising table\n");
	uip_ipaddr(&broad,255,255,255,255);
	int i;
	size = 0;
	nextFree = channelTable;
	for (i = 0; i < CHANNEL_NUM; i++){
		channelTable[i].active = 0;
		channelTable[i].nextChannel = (struct knot_channel *)&(channelTable[(i+1) % CHANNEL_NUM]);
		channelTable[i].state.chan_num = i+1;
		channelTable[i].state.seqno = 0;
		channelTable[i].state.remote_port = UIP_HTONS(LOCAL_PORT);
		uip_ipaddr_copy(&(channelTable[i].state.remote_addr) , &broad);
		printf("Port: %d\n",uip_ntohs(channelTable[i].state.remote_port));
	}
	channelTable[CHANNEL_NUM-1].nextChannel = NULL;
}

/*
 * create a new channel if space available
 * return channel num if successful, 0 otherwise
 */
ChannelState * new_channel(){
	if (size >= CHANNEL_NUM) return NULL;
	Channel *temp = nextFree;
	temp->active = 1;
	nextFree = temp->nextChannel;
	temp->nextChannel = NULL;
	size++;
	printf("New channel created\n");
	return &temp->state;
}

/* 
 * get the channel state for the given channel number
 * return 1 if successful, 0 otherwise
 */
ChannelState * get_channel_state(int channel){
	if (channelTable[channel-1].active){
		return &(channelTable[channel-1].state);
	} else return NULL;
}
/*
 * remove specified channel state from table
 * (scrubs and frees space in table for a new channel)
 */
void remove_channel(int channel){
	channelTable[channel-1].nextChannel = nextFree;
	uip_ipaddr_copy(&channelTable[channel-1].state.remote_addr , &broad);
	channelTable[channel-1].active = 0;
	nextFree = &channelTable[channel-1];
	size--;
}

/* 
 * destroys table 
 */
void destroy_table();

