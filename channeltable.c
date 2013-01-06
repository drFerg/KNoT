#include "channeltable.h"

typedef struct knot_channel{
	ChannelState state;
	struct knot_channel *nextChannel;
}Channel;

static Channel channelTable[CHANNEL_NUM];
static Channel *nextFree;
int size;
/* 
 * initialise the channel table 
 */
void init_table(){
	printf("Initialising table\n");
	int i;
	size = 0;
	nextFree = channelTable;
	for (i = 0; i < CHANNEL_NUM; i++){
		channelTable[i].nextChannel = (struct knot_channel *)&(channelTable[(i+1) % CHANNEL_NUM]);
		channelTable[i].state.chan_num = i+1;
		channelTable[i].state.remote_port = 10;
		printf("Port: %d\n",channelTable[i].state.remote_port);
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
	return &(channelTable[channel-1].state);
}

/*
 * remove specified channel state from table
 * (scrubs and frees space in table for a new channel)
 */
void remove_channel(int channel){
	channelTable[channel-1].nextChannel = nextFree;
	nextFree = &channelTable[channel-1];
	size--;
}

/* 
 * destroys table 
 */
void destroy_table();

