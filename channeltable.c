#include "channeltable.h"

typedef struct knot_channel{
	ChannelState state;
	struct knot_channel *nextChannel;
	int number;
}Channel;

static Channel channelTable[CHANNEL_NUM];
static Channel *nextFree;
int size;
/* 
 * initialise the channel table 
 */
void init_table(){
	int i;
	size = 0;
	nextFree = channelTable;
	for (i = 0; i < CHANNEL_NUM; i++){
		channelTable[i].nextChannel = (struct knot_channel *)&channelTable[(i+1) % CHANNEL_NUM];
		channelTable[i].number = i+1;
	}
	channelTable[CHANNEL_NUM-1].nextChannel = NULL;
}

/*
 * create a new channel if space available
 * return channel num if successful, 0 otherwise
 */
int new_channel(ChannelState *state){
	if (size >= CHANNEL_NUM) return 0;
	Channel *temp = nextFree;
	state = &temp->state;
	nextFree = temp->nextChannel;
	temp->nextChannel = NULL;
	size++;
	return temp->number;
}

/* 
 * get the channel state for the given channel number
 * return 1 if successful, 0 otherwise
 */
int get_channel_state(int channel, ChannelState *state){
	state = &channelTable[channel-1].state;
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

