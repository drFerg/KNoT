#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#include "button-sensor.h"

#include "contiki.h"
#include "contiki-net.h"
#include "contiki-lib.h"
#include "knot-controller.h"
#include "../knot_callback.h"
#include "../channeltable.h"

#define TIMER_INTERVAL 20
#define HOMECHANNEL 0

char *state_names[7] = {"IDLE","QUERY","QACKED","CONNECTing",
						"CONNECTED","DisCONNECTED", "PING"};

PROCESS(knot_controller_process,"knot_controller");
char controller_name[16];
static ChannelState home_channel_state;
static ChannelState *mystate;
static uint8_t started = 0;

void init_home_channel(){
	  home_channel_state.chan_num = 0;
      home_channel_state.seqno = 0;
      home_channel_state.remote_port = UIP_HTONS(LOCAL_PORT);
      uip_ipaddr_copy(&(home_channel_state.remote_addr), &broad);
      printf("Port: %d\n",uip_ntohs(home_channel_state.remote_port));
}

void clean_packet(DataPayload *dp){
	memset(dp, '\0', sizeof(DataPayload));
}

void create_channel(ChannelState *state, DataPayload *dp){
	DataPayload *new_dp = &(state->packet);
	clean_packet(new_dp);

	ConnectMsg *cm = (ConnectMsg *)new_dp->data;
	strcpy(cm->name, controller_name);
	new_dp->hdr.dst_chan_num = 0;
	new_dp->hdr.src_chan_num = state->chan_num;
    (new_dp)->hdr.cmd = CONNECT; 
    (new_dp)->dhdr.tlen = uip_htons(sizeof(ConnectMsg));
	send_on_channel(state,new_dp);
	state->state = STATE_CONNECT;
	state->ticks = 10;
}

void cack_handler(ChannelState *state, DataPayload *dp){
	if (state->state != STATE_CONNECT){
		printf("Not in Connecting state\n");
		return;
	}
	ConnectACKMsg *ck = (ConnectACKMsg*)dp->data;
	printf("%s accepts connection request on channel %d\n",ck->name,dp->hdr.src_chan_num);
	state->remote_chan_num = dp->hdr.src_chan_num;

	DataPayload *new_dp = &(state->packet);
	memset(new_dp, '\0', sizeof(DataPayload));
	new_dp->hdr.src_chan_num = state->chan_num;
	new_dp->hdr.dst_chan_num = state->remote_chan_num;
	//dp_complete(new_dp,10,QACK,1);
    (new_dp)->hdr.cmd = CACK; 
    (new_dp)->dhdr.tlen = UIP_HTONS(0);
	send_on_channel(state,new_dp);
	state->state = STATE_CONNECTED;
	state->ticks = 100;
	
}


void qack_handler(ChannelState *state, DataPayload *dp, uip_ipaddr_t *remote_addr){
	if (state->state != STATE_QUERY) {
		printf("Not in Query state\n");
		return;
	}
	state->ticks = 100;
	QueryResponseMsg *qr = (QueryResponseMsg *)&dp->data;
	ServiceRecord sc;

	uip_ipaddr_copy(&(sc.remote_addr), remote_addr);
	strcpy(sc.name,qr->name);
	printf("Sensor name: %s\n",qr->name);
	printf("Sensor type:%d\n", qr->type);
	//state->state = STATE_QUERY;
	process_post(state->ccb.client_process, KNOT_EVENT_SERVICE_FOUND, &sc);

	//create_channel(state, dp);
}

void service_search(ChannelState* state, uint8_t type){

	DataPayload *new_dp = &(state->packet);
	clean_packet(new_dp);
	//dp_complete(new_dp,10,QACK,1);
	new_dp->hdr.src_chan_num = state->chan_num;
	new_dp->hdr.dst_chan_num = 0;
    (new_dp)->hdr.cmd = QUERY; 
    (new_dp)->dhdr.tlen = uip_htons(sizeof(QueryMsg));
    printf("%d\n", uip_ntohs((new_dp)->dhdr.tlen));
    QueryMsg *q = (QueryMsg *) new_dp->data;
   
    q->type = type;
    strcpy(q->name, controller_name);
	broadcast(state,new_dp);
	state->state = STATE_QUERY;
	state->ticks = 100;
}

void response_handler(ChannelState *state, DataPayload *dp){
	if (state->state != STATE_CONNECTED){
		printf("Not connected to device!\n");
		return;
	}
	state->ticks = 100;
	ResponseMsg *rmsg = (ResponseMsg *)dp->data;
	printf("%s %d\n", rmsg->name, uip_ntohs(rmsg->data));
	// ADD CONTEXT SWITCH
	// Maybe event?
	// process_post_synch(state->ccb.client_process,MESSAGE_RECEIVED, &rmsg->data);
	PROCESS_CONTEXT_BEGIN(state->ccb.client_process);
	state->ccb.callback(rmsg->name,&rmsg->data);
	PROCESS_CONTEXT_END();
}


void copy_address(ChannelState *state){
	state->remote_port = UDP_HDR->srcport;
    uip_ipaddr_copy(&(state->remote_addr) , &(UDP_HDR->srcipaddr));
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
	char buf[UIP_BUFSIZE]; // packet data buffer
	unsigned short cmd;    // 
	DataPayload *dp;
	uip_ipaddr_t remote_addr;
	ChannelState *state = NULL;
	uint16_t len = uip_datalen();
	printf("ipaddr=%d.%d.%d.%d\n", uip_ipaddr_to_quad(&(UDP_HDR->srcipaddr)));
	printf("Packet is %d bytes long\n",len);
	uip_ipaddr_copy(&remote_addr,&(UDP_HDR->srcipaddr));
	memcpy(buf, uip_appdata, len);
	buf[len] = '\0';

	dp = (DataPayload *)buf;
	printf("Data is   %d bytes long\n",uip_ntohs(dp->dhdr.tlen));
	cmd = dp->hdr.cmd;        // only a byte so no reordering :)
	printf("Received a %s command.\n", cmdnames[cmd]);
	printf("Message for channel %d\n",dp->hdr.dst_chan_num);
	if (dp->hdr.dst_chan_num == HOMECHANNEL){
		if (cmd == QACK){
			state = &home_channel_state;
			copy_address(state);
  		}
  	}
	else{
		
		state = get_channel_state(dp->hdr.dst_chan_num);
		if (state == NULL){
			printf("Channel %d doesn't exist\n", dp->hdr.dst_chan_num);
		}

		if (check_seqno(state, dp) == 0) 
			return;
		else {
			copy_address(state);
		}
	}
	
  	printf("from ipaddr=%d.%d.%d.%d:%u\n", uip_ipaddr_to_quad(&state->remote_addr),uip_htons(state->remote_port));
	if      (cmd == QUERY)    printf("I'm a controller, Ignoring QUERY\n");
	else if (cmd == CONNECT)  printf("I'm a controller, Ignoring CONNECT\n");
	else if (cmd == QACK)     qack_handler(state, dp, &remote_addr);
	else if (cmd == CACK)     cack_handler(state, dp);
	else if (cmd == RESPONSE) response_handler(state, dp);
	else if (cmd == PING)     ping_handler(state, dp);
	else if (cmd == PACK)     pack_handler(state, dp);
}

void resend(ChannelState *s){
	printf("Sending last packet\n");
	send_on_channel(s, &(s->packet));
}

void check_timer(ChannelState *s){
	if (s == NULL) return; 
		if (s->state % 2 != 0){
			if (s->ticks == 0){
				printf("Retrying\n");
				resend(s);
				s->ticks = 101;
			}
		} else if (s->ticks == 0){
			printf("PING\n");
			ping(s);
			s->ticks = 101;
		}
		s->ticks --;
}
void cleaner(){
	int i;
	ChannelState *s;
	for (i = 1; i < CHANNEL_NUM; i++){
		s = get_channel_state(i);
		check_timer(s);
	}
	check_timer(&home_channel_state);

}


int knot_register_controller(struct process *client_proc, knot_callback callback, uint16_t rate, char controller_name[], uint8_t device_type){
	ChannelState *state = &home_channel_state;
	if (started == 0){
		process_start(&knot_controller_process,NULL);
		PROCESS_CONTEXT_BEGIN(&knot_controller_process);
		init_table();
		init();
		init_home_channel();
		PROCESS_CONTEXT_END();		
		started = 1;
	}
	/* Enter context to call local function */
	// PROCESS_CONTEXT_BEGIN(&knot_controller_process);
	// state = new_channel();
	// PROCESS_CONTEXT_END(&knot_controller_process);

	if (state == NULL) {
		printf("No more free channels\n");
		return -1;
	}
	strcpy(controller_name, controller_name);
	if (callback != NULL){
		state->ccb.callback = callback;
		state->ccb.client_process = client_proc;
		printf("Set callback\n");
	}
	else return -2;

	state->rate = rate;
	service_search(state, device_type);
	printf("Returning control\n");
	/* Asnchronously kickstart channel to do a service search */
	//process_post(&knot_controller_process,PROCESS_EVENT_CONTINUE, state);
	return 1;
}


PROCESS_THREAD(knot_controller_process, ev, data)
{
	static struct etimer clean;

	PROCESS_BEGIN();
	SENSORS_ACTIVATE(button_sensor);

	etimer_set(&clean,TIMER_INTERVAL);

	while (1){
    	PROCESS_WAIT_EVENT();
		if (ev == tcpip_event && uip_newdata()) {
			network_handler(ev, data);
		} else if ((ev == PROCESS_EVENT_TIMER)){
			if (data == &clean) {
				cleaner();
				etimer_set(&clean,TIMER_INTERVAL);
			}
		} 
		
	}

	PROCESS_END();

}

