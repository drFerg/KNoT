#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#include "contiki.h"
#include "contiki-net.h"
#include "contiki-lib.h"
#include "uip.h"
#include "../knot-network.h"

#define STATE_IDLE   0
#define STATE_POLLED 1
#define STATE_ACKED  2

#define LOCAL_PORT 5001




 
/*
&(UIP_IP_BUF->srcipaddr),
UIP_HTONS(UIP_IP_BUF->srcport),
&(UIP_IP_BUF->destipaddr)
UIP_HTONS(UIP_IP_BUF->destport),
*/


int init(ChannelState *state){
	//uip_over_mesh_make_announced_gateway();

	if (state != NULL){
		state->state = STATE_IDLE;
	} else return 0;
	state->udp_conn = udp_new(NULL,UIP_HTONS(LOCAL_PORT), state);
	if (state->udp_conn != NULL){
		udp_bind(state->udp_conn,UIP_HTONS(LOCAL_PORT));
		printf("SET UP NETWORK\n");
	} else return 0;

	return 1;
}

void broadcast(uint8_t cmd){

}

void query_handler(ChannelState *state,DataPayload *dp){	
	DataPayload *new_dp = (DataPayload*)malloc(sizeof(PayloadHeader) + sizeof(DataHeader) + P_SIZE;);
	//dp_complete(new_dp,10,QACK,1);
	(new_dp)->hdr.subport=uip_htons(10); 
    (new_dp)->hdr.cmd = QACK; 
    (new_dp)->hdr.seqno=uip_htonl(1);
    (new_dp)->dhdr.tlen = 0;
	send_on_channel(state,new_dp);
	free(new_dp);

}

void connect_handler(ChannelState *state,DataPayload *dp){
	printf("COMMAND: %d %s\n",dp->hdr.cmd,cmdnames[dp->hdr.cmd]);
}


void network_handler(ev, data){
	DataPayload *dp;
	char buf[UIP_BUFSIZE];
	unsigned short cmd;
	uint16_t len = uip_datalen();
	printf("ipaddr=%d.%d.%d.%d\n", uip_ipaddr_to_quad(&(UDP_HDR->srcipaddr)));
	printf("Data is %d bytes long\n",len);
	memcpy(buf, uip_appdata, len);
	buf[len] = '\0';

	dp = (DataPayload *)buf;
	cmd = dp->hdr.cmd;        // only a byte so no reordering :)
	printf("Received a %s command.\n", cmdnames[cmd]);

	ChannelState *state = (ChannelState*) data;
    uip_ipaddr_copy(&(state->remote_addr) , &(UDP_HDR->srcipaddr));
  	state->remote_port = UDP_HDR->srcport;
  	printf("ipaddr=%d.%d.%d.%d:%u\n", uip_ipaddr_to_quad(&(state->remote_addr)),uip_htons(state->remote_port));
	

	if (cmd == QUERY) query_handler(state,dp);
	else if (cmd == CONNECT) connect_handler(state,dp);


	if (state->state == STATE_IDLE){
		//printf("IDLE->POLLED\n");
		state->state = STATE_POLLED;
	}
	else if (state->state == STATE_POLLED){
		//printf("POLLED->IDLE\n");
		state->state = STATE_IDLE;
	}
}

void timer_handler(ChannelState* state){
	DataPayload *new_dp = (DataPayload*)malloc(sizeof(DataPayload));
	//dp_complete(new_dp,10,QACK,1);
	(new_dp)->hdr.subport = uip_htons(10); 
    (new_dp)->hdr.cmd = QUERY; 
    (new_dp)->hdr.seqno = uip_htonl(1);
    (new_dp)->dhdr.tlen = 0;

    uip_ipaddr(&state->remote_addr,172,16,202,239);
    state->remote_port = UIP_HTONS(5001);
	send_on_channel(state,new_dp);
	free(new_dp);
}


PROCESS(knot_sensor,"knot-sensor");
AUTOSTART_PROCESSES(&knot_sensor);

PROCESS_THREAD(knot_sensor, ev, data)
{
	static struct etimer et;
	static ChannelState *state;

    
    // wait until the timer has expired
    // PROCESS_WAIT_EVENT_UNTIL(ev == PROCESS_EVENT_TIMER);
    

	PROCESS_BEGIN();
    state = (ChannelState*) malloc(sizeof(ChannelState));

	if (init(state) == 0){
		printf("OH NOES\n");
	}
	while (1){
		etimer_set(&et, CLOCK_CONF_SECOND*3);
    	// wait until the timer has expired
    	PROCESS_WAIT_EVENT();
		if (ev == tcpip_event && uip_newdata()) network_handler(ev,data);
		//else if (ev == PROCESS_EVENT_TIMER) timer_handler(state);
		
	}

	PROCESS_END();

}

