#include "knot-sensor.h"

#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#include "contiki-net.h"
#include "contiki-lib.h"
#include "uip.h"
#include "sys/ctimer.h"

#include "../knot_protocol.h"
#include "../knot_uip_network.h"
#include "../knot_network.h"
#include "../channeltable.h"


#define DEBUG 1

#if DEBUG
#define PRINTF(...) printf(__VA_ARGS__)
#else
#define PRINTF(...)
#endif

#define TIMER_INTERVAL 3
#define DATA_RATE  1
#define PING_RATE  5   // How many data intervals to wait before PING
#define RATE_CHANGE 1

#define HOMECHANNEL 0


#define STATE_IDLE   0
#define STATE_POLLED 1
#define STATE_ACKED  2

#define LOCAL_PORT 5001

#define dp_complete(cp,cmd,sn) {(\(cp)->hdr.cmd=(cmd); \
                                  (cp)->hdr.seqno=uip_htonl(sn); \
                                }

PROCESS(knot_sensor_process,"knot_sensor_process");
char sensor_name[16];
uint8_t sensor_type;
uint8_t started = 0;
/*
&(UIP_IP_BUF->srcipaddr),
UIP_HTONS(UIP_IP_BUF->srcport),
&(UIP_IP_BUF->destipaddr)
UIP_HTONS(UIP_IP_BUF->destport),
*/

static ChannelState home_channel_state;

void init_home_channel(){
	  home_channel_state.chan_num = 0;
      home_channel_state.seqno = 0;
      home_channel_state.remote_port = UIP_HTONS(LOCAL_PORT);
      set_broadcast(&(home_channel_state.remote_addr));
}


void send_handler(ChannelState* state){
    DataPayload *new_dp = &(state->packet);
	ResponseMsg rmsg;
	uint16_t data = 0;
	state->ccb.callback(NULL, &data);
	rmsg.data = uip_htons(data);
	strcpy(rmsg.name,sensor_name);

	new_dp->hdr.src_chan_num = state->chan_num;
	new_dp->hdr.dst_chan_num = state->remote_chan_num;
    new_dp->hdr.cmd = RESPONSE; 
    new_dp->dhdr.tlen = uip_htons(sizeof(ResponseMsg));
    memcpy(&(new_dp->data),&rmsg,sizeof(ResponseMsg));

    send_on_knot_channel(state,new_dp);
	ctimer_reset(&(state->timer));

}

void send_callback(void * s){
	send_handler((ChannelState *)s);
}


void query_handler(ChannelState *state, DataPayload *dp){
	QueryMsg *q = (QueryMsg* )dp->data;
	if (q->type != sensor_type) {PRINTF("Not the right type %d \n", q->type);return;} /* PUT IN DYNAMIC TYPE TO BE CHECKED */
	uip_ipaddr_copy(&(state->remote_addr) , &(UDP_HDR->srcipaddr));
  	state->remote_port = UDP_HDR->srcport;	
	DataPayload *new_dp = &(state->packet);
	
	QueryResponseMsg qr;
	
	qr.type = sensor_type;
	strcpy(qr.name,sensor_name); // copy name
	qr.rate = uip_htons(5);
	//dp_complete(new_dp,uip_htons(10),1,(1));
	new_dp->hdr.dst_chan_num = dp->hdr.src_chan_num; 
    new_dp->hdr.cmd = QACK; 
    new_dp->dhdr.tlen = uip_htons(sizeof(QueryResponseMsg));
    memcpy(new_dp->data,&qr,sizeof(QueryResponseMsg));
	send_on_knot_channel(state,new_dp);

}

void connect_handler(ChannelState *state,DataPayload *dp){
	ConnectMsg *cm = (ConnectMsg*)dp->data;
	PRINTF("%s wants to connect from channel %d\n",cm->name,dp->hdr.src_chan_num);
	PRINTF("Replying on channel %d\n", state->chan_num);
	/* Request src must be saved to message back */
	state->ccb.callback = home_channel_state.ccb.callback;
	state->remote_chan_num = dp->hdr.src_chan_num;
	if (uip_ntohs(cm->rate) > DATA_RATE){
		state->rate = uip_ntohs(cm->rate);
	}else{
		state->rate = DATA_RATE;
		printf("%d\n", uip_ntohs(cm->rate));
	}
	DataPayload *new_dp = &(state->packet);
	ConnectACKMsg ck;
	strcpy(ck.name,sensor_name); // copy name
	ck.accept = 1;
	new_dp->hdr.src_chan_num = state->chan_num;
	new_dp->hdr.dst_chan_num = state->remote_chan_num;

	//dp_complete(new_dp,10,QACK,1);
    (new_dp)->hdr.cmd = CACK; 
    
    (new_dp)->dhdr.tlen = uip_htons(sizeof(ConnectACKMsg));
    memcpy(&(new_dp->data),&ck,sizeof(ConnectACKMsg));
	send_on_knot_channel(state,new_dp);
	state->state = STATE_CONNECT;
}

void cack_handler(ChannelState *state, DataPayload *dp){
	if (state->state != STATE_CONNECT){
		PRINTF("Not in Connecting state\n");
		return;
	}
	state->ticks = state->rate * PING_RATE;
	printf("%d\n", state->rate);
	ctimer_set(&(state->timer),CLOCK_CONF_SECOND * state->rate, send_callback, state); 
	PRINTF(">>CONNECTION FULLY ESTABLISHED<<\n");
	state->state = STATE_CONNECTED;
}




void network_handler(ev, data){
	char buf[UIP_BUFSIZE];
	unsigned short cmd;
	DataPayload *dp;
	
	ChannelState *state = NULL;
	uint16_t len = uip_datalen();
	PRINTF("ipaddr=%d.%d.%d.%d\n", uip_ipaddr_to_quad(&(UDP_HDR->srcipaddr)));
	PRINTF("Packet is %d bytes long\n",len);

	memcpy(buf, uip_appdata, len);
	buf[len] = '\0';

	dp = (DataPayload *)buf;
	PRINTF("Data is   %d bytes long\n", uip_ntohs(dp->dhdr.tlen));
	cmd = dp->hdr.cmd;        // only a byte so no reordering :)
	PRINTF("Received a %s command.\n", cmdnames[cmd]);

	PRINTF("Message for channel %d\n",dp->hdr.dst_chan_num);
	if (dp->hdr.dst_chan_num == HOMECHANNEL || cmd == DISCONNECT){
		if (cmd == QUERY){
			state = &home_channel_state;
			copy_link_address(state);
  			
  		}
  		else if (cmd == CONNECT){
  			state = new_channel();
  			PRINTF("Sensor: New Channel\n");
  			copy_link_address(state);
  		}
  		else if (cmd == DISCONNECT){
  			state = get_channel_state(dp->hdr.dst_chan_num);
			if (state){
				remove_channel(state->chan_num);
			}
			state = &home_channel_state;
			copy_link_address(state);
  		}
  	}else {
		state = get_channel_state(dp->hdr.dst_chan_num);
		if (state == NULL){
			PRINTF("Channel doesn't exist\n");
			return;
		}
		//copy_link_address(state); // CHECK IF RIGHT CONNECTION
		if (check_seqno(state, dp) == 0) 
		return;
	}

	
	
	/* PUT IN QUERY CHECK FOR TYPE */
	
    if      (cmd == QUERY)   query_handler(state,dp);
  	else if (cmd == CONNECT) connect_handler(state,dp);
	else if (cmd == CACK)    cack_handler(state, dp);
	else if (cmd == PING)    ping_handler(state, dp);
	else if (cmd == PACK)    pack_handler(state, dp);
	else if (cmd == DISCONNECT) close_handler(state,dp);
}



void resend(ChannelState *s){
	PRINTF("Sending last packet\n");
	send_on_channel(s, &(s->packet));
}

void cleaner(){
	int i;
	ChannelState *s;
	for (i = 1; i < CHANNEL_NUM; i++){
		s = get_channel_state(i);
		if (s == NULL) continue; 
		if (s->state % 2 != 0){
			if (s->ticks == 0){
				PRINTF("Retrying\n");
				resend(s);
				s->ticks = 11;
			}
		} else if (s->ticks == 0){
			PRINTF("PING\n");
			ping(s);
			s->ticks = 101;
		}
		s->ticks --;
	}

}




int knot_register_sensor(struct process *client_proc, knot_callback sensor, 
						 uint16_t rate, char name[], 
						 uint8_t type){
	if (started == 0){
		process_start(&knot_sensor_process,NULL);
		PROCESS_CONTEXT_BEGIN(&knot_sensor_process);
		init_table();
		init_knot_network();
		init_home_channel();
		PROCESS_CONTEXT_END();		
		started = 1;
		strcpy(sensor_name,name);
		sensor_type = type;
	}
		
	if (sensor != NULL){
		home_channel_state.ccb.callback = sensor;
		home_channel_state.ccb.client_process = client_proc;
		PRINTF("Set callback\n");
	}
	else return -2;

	home_channel_state.rate = rate;
	return 1;
}



PROCESS_THREAD(knot_sensor_process, ev, data)
{

	PROCESS_BEGIN();
	while (1){
    	PROCESS_WAIT_EVENT();
		if (ev == tcpip_event && uip_newdata()) network_handler(ev,data);

		
	}

	PROCESS_END();

}

