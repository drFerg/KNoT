#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#include "contiki.h"
#include "contiki-net.h"
#include "contiki-lib.h"
#include "uip.h"
#include "sys/ctimer.h"
#include "../knot-network.h"
#include "../channeltable.h"

#define TIMER_INTERVAL 20
#define DATA_RATE  5
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
uint8_t started = 0;
/*
&(UIP_IP_BUF->srcipaddr),
UIP_HTONS(UIP_IP_BUF->srcport),
&(UIP_IP_BUF->destipaddr)
UIP_HTONS(UIP_IP_BUF->destport),
*/
static ChannelState *mystate;
static ChannelState home_channel_state;

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

    send_on_channel(state,new_dp);
	ctimer_reset(&(state->timer));

}

void send_callback(void * s){
	send_handler((ChannelState *)s);
}


void query_handler(ChannelState *state, DataPayload *dp){
	uip_ipaddr_copy(&(state->remote_addr) , &(UDP_HDR->srcipaddr));
  	state->remote_port = UDP_HDR->srcport;	
	DataPayload *new_dp = &(state->packet);
	QueryResponseMsg qr;
	/* PUT IN DYNAMIC TYPE TO BE CHECKED */
	qr.type = TEMP;
	strcpy(qr.name,sensor_name); // copy name
	qr.rate = uip_htons(5);
	//dp_complete(new_dp,uip_htons(10),1,(1));
	new_dp->hdr.dst_chan_num = dp->hdr.src_chan_num; 
    new_dp->hdr.cmd = QACK; 
    new_dp->dhdr.tlen = uip_htons(sizeof(QueryResponseMsg));
    memcpy(new_dp->data,&qr,sizeof(QueryResponseMsg));
	send_on_channel(state,new_dp);

}

void connect_handler(ChannelState *state,DataPayload *dp){
	ConnectMsg *cm = (ConnectMsg*)dp->data;
	printf("%s wants to connect from channel %d\n",cm->name,dp->hdr.src_chan_num);
	printf("Replying on channel %d\n", state->chan_num);
	/* Request src must be saved to message back */
	state->ccb.callback = home_channel_state.ccb.callback;
	state->remote_chan_num = dp->hdr.src_chan_num;
	state->rate = DATA_RATE;
	// FILL IN RATE CHECK!!!!!
	DataPayload *new_dp = &(state->packet);
	ConnectACKMsg ck;
	strcpy(ck.name,sensor_name); // copy name
	new_dp->hdr.src_chan_num = state->chan_num;
	new_dp->hdr.dst_chan_num = state->remote_chan_num;

	//dp_complete(new_dp,10,QACK,1);
    (new_dp)->hdr.cmd = CACK; 
    
    (new_dp)->dhdr.tlen = uip_htons(sizeof(ConnectACKMsg));
    memcpy(&(new_dp->data),&ck,sizeof(ConnectACKMsg));
	send_on_channel(state,new_dp);
	state->state = STATE_CONNECT;
}

void cack_handler(ChannelState *state, DataPayload *dp){
	if (state->state != STATE_CONNECT){
		printf("Not in Connecting state\n");
		return;
	}
	state->ticks = state->rate * PING_RATE;
	ctimer_set(&(state->timer),CLOCK_CONF_SECOND * state->rate,send_callback,state); 
	printf(">>CONNECTION FULLY ESTABLISHED<<\n");
	state->state = STATE_CONNECTED;
}

void copy_address(ChannelState *state){
	state->remote_port = UDP_HDR->srcport;
    uip_ipaddr_copy(&state->remote_addr , &UDP_HDR->srcipaddr);
}

int check_seqno(ChannelState *state, DataPayload *dp){
	if (state->seqno > dp->hdr.seqno){
		printf("--Out of sequence--\n");
		printf("--State SeqNo: %d SeqNo %d--\n--Dropping packet--\n",state->seqno, dp->hdr.seqno);
		return 0;
	}
	else {
		state->seqno = dp->hdr.seqno;
		printf("--SeqNo %d--\n", dp->hdr.seqno);
		return 1;
	}
}

void network_handler(ev, data){
	char buf[UIP_BUFSIZE];
	unsigned short cmd;
	DataPayload *dp;
	
	ChannelState *state = NULL;
	uint16_t len = uip_datalen();
	printf("ipaddr=%d.%d.%d.%d\n", uip_ipaddr_to_quad(&(UDP_HDR->srcipaddr)));
	printf("Packet is %d bytes long\n",len);

	memcpy(buf, uip_appdata, len);
	buf[len] = '\0';

	dp = (DataPayload *)buf;
	printf("Data is   %d bytes long\n", uip_ntohs(dp->dhdr.tlen));
	cmd = dp->hdr.cmd;        // only a byte so no reordering :)
	printf("Received a %s command.\n", cmdnames[cmd]);

	printf("Message for channel %d\n",dp->hdr.dst_chan_num);
	if (dp->hdr.dst_chan_num == HOMECHANNEL){
		if (cmd == QUERY){
			state = &home_channel_state;
			copy_address(state);
  			
  		}
  		else if (cmd == CONNECT){
  			state = new_channel();
  			printf("Sensor: New Channel\n");
  			copy_address(state);
  		}
  	}else {
		state = get_channel_state(dp->hdr.dst_chan_num);
		copy_address(state);
	}

	if (check_seqno(state, dp) == 0) 
		return;
	
	/* PUT IN QUERY CHECK FOR TYPE */
	
    if      (cmd == QUERY)   query_handler(state,dp);
  	else if (cmd == CONNECT) connect_handler(state,dp);
	else if (cmd == CACK)    cack_handler(state, dp);
	else if (cmd == PING)    ping_handler(state, dp);
	else if (cmd == PACK)    pack_handler(state, dp);
}



void resend(ChannelState *s){
	printf("Sending last packet\n");
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
				printf("Retrying\n");
				resend(s);
				s->ticks = 11;
			}
		} else if (s->ticks == 0){
			printf("PING\n");
			ping(s);
			s->ticks = 101;
		}
		s->ticks --;
	}

}




int knot_register_sensor(struct process *client_proc, knot_callback sensor, 
						 uint16_t rate, char name[], 
						 uint8_t sensor_type){
	if (started == 0){
		process_start(&knot_sensor_process,NULL);
		PROCESS_CONTEXT_BEGIN(&knot_sensor_process);
		init_table();
		init();
		PROCESS_CONTEXT_END();		
		started = 1;
		strcpy(sensor_name,name);
	}
		
	if (sensor != NULL){
		home_channel_state.ccb.callback = sensor;
		home_channel_state.ccb.client_process = client_proc;
		printf("Set callback\n");
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
		else if (ev == PROCESS_EVENT_TIMER) send_handler(mystate);
		
	}

	PROCESS_END();

}

