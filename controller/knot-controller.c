#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#include "button-sensor.h"

#include "contiki.h"
#include "contiki-net.h"
#include "contiki-lib.h"
#include "../knot-network.h"
#include "../channeltable.h"

#define TIMER_INTERVAL 20

char *state_names[7] = {"IDLE","QUERY","QACKED","CONNECTing",
						"CONNECTED","DisCONNECTED", "PING"};

static ChannelState *mystate;


int init(){
	udp_conn = udp_broadcast_new(UIP_HTONS(LOCAL_PORT),NULL);
	if (udp_conn != NULL){
		udp_bind(udp_conn,UIP_HTONS(LOCAL_PORT));
		printf("SET UP NETWORK\n");
	} else return 0;
	printf("ipaddr=%d.%d.%d.%d:%u\n", 
      uip_ipaddr_to_quad(&(udp_conn->ripaddr)),
      uip_htons(udp_conn->rport));
	return 1;
}

void create_channel(ChannelState *state, DataPayload *dp){
    //DataPayload *new_dp = (DataPayload*)malloc(sizeof(PayloadHeader) + sizeof(DataHeader) + sizeof(ConnectMsg));	//dp_complete(new_dp,10,QACK,1);
	DataPayload *new_dp = &(state->packet);
	memset(new_dp, '\0', sizeof(DataPayload));

	ConnectMsg *cm = (ConnectMsg *)new_dp->data;
	strcpy(cm->name,"Controller");
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


void qack_handler(ChannelState *state, DataPayload *dp){
	if (state->state != STATE_QUERY) {
		printf("Not in Query state\n");
		return;
	}

	QueryResponseMsg *qr = (QueryResponseMsg *)&dp->data;
	printf("Sensor type:%d\n", qr->type);
	state->state = STATE_IDLE;
	
	create_channel(state, dp);
}

void service_search(ChannelState* state){

	DataPayload *new_dp = &(state->packet);
	memset(new_dp, '\0', sizeof(DataPayload));
	//dp_complete(new_dp,10,QACK,1);
	new_dp->hdr.src_chan_num = state->chan_num;
	new_dp->hdr.dst_chan_num = 0;
    (new_dp)->hdr.cmd = QUERY; 
    (new_dp)->dhdr.tlen = uip_htons(sizeof(QueryMsg));
    printf("%d\n", uip_ntohs((new_dp)->dhdr.tlen));
    QueryMsg *q = (QueryMsg *) new_dp->data;
   
    q->type = TEMP;
    strcpy(q->name,"Controller");
	send(state,new_dp);
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
}


void network_handler(ev, data){
	char buf[UIP_BUFSIZE]; // packet data buffer
	unsigned short cmd;    // 
	DataPayload *dp;

	ChannelState *state = NULL;
	uint16_t len = uip_datalen();
	printf("ipaddr=%d.%d.%d.%d\n", uip_ipaddr_to_quad(&(UDP_HDR->srcipaddr)));
	printf("Packet is %d bytes long\n",len);
	printf("Data is   %d bytes long\n",dp->dhdr.tlen);

	memcpy(buf, uip_appdata, len);
	buf[len] = '\0';

	dp = (DataPayload *)buf;
	
	printf("Message for channel %d\n",dp->hdr.dst_chan_num);
	state = get_channel_state(dp->hdr.dst_chan_num);
	if (state == NULL){
		printf("Channel %d doesn't exist\n", dp->hdr.dst_chan_num);
	}
	if (state->seqno > dp->hdr.seqno){
		printf("--Out of sequence--\n");
		printf("--State: %d SeqNo %d--\n--Dropping packet--\n",state->seqno, dp->hdr.seqno);
		return;
	}
	else {
		state->seqno = dp->hdr.seqno;
		printf("--SeqNo %d--\n", dp->hdr.seqno);
	}
	cmd = dp->hdr.cmd;        // only a byte so no reordering :)
	printf("Received a %s command.\n", cmdnames[cmd]);
	
	
  	state->remote_port = UDP_HDR->srcport;
  	uip_ipaddr_copy(&state->remote_addr , &UDP_HDR->srcipaddr);
  	printf("from ipaddr=%d.%d.%d.%d:%u\n", uip_ipaddr_to_quad(&state->remote_addr),uip_htons(state->remote_port));
	

	if      (cmd == QUERY)    printf("I'm a controller, Ignoring QUERY\n");
	else if (cmd == CONNECT)  printf("I'm a controller, Ignoring CONNECT\n");
	else if (cmd == QACK)     qack_handler(state, dp);
	else if (cmd == CACK)     cack_handler(state, dp);
	else if (cmd == RESPONSE) response_handler(state, dp);
	else if (cmd == PING)     ping_handler(state, dp);
	else if (cmd == PACK)     pack_handler(state, dp);
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

PROCESS(knot_controller,"knot_controller");
AUTOSTART_PROCESSES(&knot_controller);

PROCESS_THREAD(knot_controller, ev, data)
{
	static struct etimer et; // temp timer for loop
	static struct etimer clean;

	PROCESS_BEGIN();
	SENSORS_ACTIVATE(button_sensor);

	init_table();
	//mystate = new_channel();
	//mystate->ticks = 10000;
	init();
	etimer_set(&clean,TIMER_INTERVAL);

	while (1){
    	// wait until the timer has expired
    	PROCESS_WAIT_EVENT();
		if (ev == tcpip_event && uip_newdata()) {
			network_handler(ev, data);
		} else if ((ev == PROCESS_EVENT_TIMER)){
			if (data == &clean) {
				cleaner();
				etimer_set(&clean,TIMER_INTERVAL);
			}
		} else if ((ev == sensors_event) && (data == &button_sensor)){
			mystate = new_channel();
			if (mystate == NULL) 
				printf("No more free channels\n");
			else 
				service_search(mystate);
		} 
		//printf("Current state: %s\n",state_names[mystate->state]);
		
	}

	PROCESS_END();

}

