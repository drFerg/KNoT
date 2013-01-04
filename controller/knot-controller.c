#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#include "contiki.h"
#include "contiki-net.h"
#include "contiki-lib.h"
#include "../knot-network.h"



#define LOCAL_PORT 5001

char *state_names[6] = {"IDLE","QUERY","QACKED","CONNECTing","CONNECTED","DisCONNECTED"};


int init(ChannelState * st){
	if (st != NULL){
		st->state = STATE_IDLE;
		st->remote_port = LOCAL_PORT;
	} else return -1;
	st->udp_conn = udp_broadcast_new(UIP_HTONS(LOCAL_PORT), st);
	if (st->udp_conn != NULL){
		udp_bind(st->udp_conn,UIP_HTONS(LOCAL_PORT));
		printf("SET UP NETWORK\n");
	} else return 0;
	return 1;
}

void reply_to_sender(ChannelState *state){
	uip_udp_packet_sendto(state->udp_conn, "HELLO", 5,
                          &state->remote_addr,state->remote_port);
	printf("Sent message back to ipaddr=%d.%d.%d.%d:%u\n", uip_ipaddr_to_quad(&(state->remote_addr)),uip_htons(state->remote_port));
}

void create_channel(ChannelState *state, DataPayload *dp){
	DataPayload *new_dp = (DataPayload*)malloc(sizeof(DataPayload));
	//dp_complete(new_dp,10,QACK,1);
	(new_dp)->hdr.subport = uip_htons(10); 
    (new_dp)->hdr.cmd = CONNECT; 
    (new_dp)->hdr.seqno = uip_htonl(1);
    (new_dp)->dhdr.tlen = 0;
	send_on_channel(state,new_dp);
	free(new_dp);
	state->state = STATE_CONNECT;
}

void cack_handler(ChannelState *state, DataPayload *dp){
	if (state->state != STATE_CONNECT){
		printf("Not in Connecting state\n");
		return;
	}
	DataPayload *new_dp = (DataPayload*)malloc(sizeof(DataPayload));
	//dp_complete(new_dp,10,QACK,1);
	(new_dp)->hdr.subport = uip_htons(10); 
    (new_dp)->hdr.cmd = CACK; 
    (new_dp)->hdr.seqno = uip_htonl(1);
    (new_dp)->dhdr.tlen = 0;
	send(state,new_dp);
	free(new_dp);
	state->state = STATE_CONNECTED;

}
void qack_handler(ChannelState *state, DataPayload *dp){
	if (state->state != STATE_QUERY) {
		printf("Not in Query state\n");
		return;
	}
	QueryResponse *qr = &dp->data;
	printf("Sensor type:%d\n", qr->type);
	state->state = STATE_IDLE;
	create_channel(state, dp);
}

void timer_handler(ChannelState* state){
	DataPayload *new_dp = (DataPayload*)malloc(sizeof(DataPayload));
	//dp_complete(new_dp,10,QACK,1);
	(new_dp)->hdr.subport = uip_htons(10); 
    (new_dp)->hdr.cmd = QUERY; 
    (new_dp)->hdr.seqno = uip_htonl(1);
    (new_dp)->dhdr.tlen = 0;
	send(state,new_dp);
	free(new_dp);
	state->state = STATE_QUERY;
}


void network_handler(ev, data){
	char buf[UIP_BUFSIZE]; // packet data buffer
	unsigned short cmd;    // 
	DataPayload *dp;
	uint16_t len = uip_datalen();
	memcpy(buf, uip_appdata, len);
	buf[len] = '\0';

	printf("Data is %d bytes long\n",len);
	dp = (DataPayload *)buf;
	cmd = dp->hdr.cmd;        // only a byte so no reordering :)
	printf("Received a %s command.\n", cmdnames[cmd]);
	
	ChannelState *state =  (ChannelState*) data;
  	state->remote_port = UDP_HDR->srcport;
  	uip_ipaddr_copy(&state->remote_addr , &UDP_HDR->srcipaddr);
  	printf("from ipaddr=%d.%d.%d.%d:%u\n", uip_ipaddr_to_quad(&state->remote_addr),uip_htons(state->remote_port));
	

	if      (cmd == QUERY)    printf("I'm a controller, Ignoring QUERY\n");
	else if (cmd == CONNECT)  printf("I'm a controller, Ignoring CONNECT\n");
	else if (cmd == QACK)     qack_handler(state, dp);
	else if (cmd == CACK)     cack_handler(state, dp);
	else if (cmd == RESPONSE) printf("Recieved sensor message\n");

}

PROCESS(knot_controller,"knot_controller");
AUTOSTART_PROCESSES(&knot_controller);

PROCESS_THREAD(knot_controller, ev, data)
{
	static struct etimer et; // temp timer for loop
    static ChannelState *mystate;
	PROCESS_BEGIN();
	/** malloc here because breaks inside init**/
	mystate = (ChannelState*)malloc(sizeof(ChannelState));
	init(mystate);
	etimer_set(&et, CLOCK_CONF_SECOND*3);
	while (1){
		
    	// wait until the timer has expired
    	PROCESS_WAIT_EVENT();
		if (ev == tcpip_event && uip_newdata()) network_handler(ev, data);
		else if (ev == PROCESS_EVENT_TIMER) timer_handler(mystate);
		printf("Current state: %s\n",state_names[mystate->state]);
		
	}

	PROCESS_END();

}

