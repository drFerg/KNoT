#ifndef CHANNEL_TABLE
#define CHANNEL_TABLE
#include "knot-network.h"

/* Num of channels available in table */
#define CHANNEL_NUM 10

/* 
 * initialise the channel table 
 */
void init_table();

/*
 * create a new channel if space available
 * return 1 if successful, 0 otherwise
 */
int new_channel(ChannelState *state);

/* 
 * get the channel state for the given channel number
 * return 1 if successful, 0 otherwise
 */
int get_channel_state(int channel, ChannelState *state);

/*
 * remove specified channel state from table
 * (scrubs and frees space in table for a new channel)
 */
void remove_channel(int channel);

/* 
 * destroys table 
 */
void destroy_table();





















#endif /* CHANNEL_TABLE */