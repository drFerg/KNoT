#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#include "contiki.h"
#include "contiki-net.h"
#include "contiki-lib.h"
#include "uip.h"
#include "../knot-network.h"
#include "memb.h"

#define SENSORNAME "Temp"



#define STATE_IDLE   0
#define STATE_POLLED 1
#define STATE_ACKED  2

#define LOCAL_PORT 5001

#define dp_complete(cp,cmd,sn) {(\
                                          (cp)->hdr.cmd=(cmd); \
                                          (cp)->hdr.seqno=uip_htonl(sn); \
                                          }

/*
&(UIP_IP_BUF->srcipaddr),
UIP_HTONS(UIP_IP_BUF->srcport),
&(UIP_IP_BUF->destipaddr)
UIP_HTONS(UIP_IP_BUF->destport),
*/
static ChannelState mystate;

int init(ChannelState *state){

	if (state != NULL){
		state->state = STATE_IDLE;
	} else return 0;
	udp_conn = udp_new(NULL,UIP_HTONS(LOCAL_PORT), state);
	if (udp_conn != NULL){
		udp_bind(udp_conn,UIP_HTONS(LOCAL_PORT));
		printf("SET UP NETWORK\n");
	} else return 0;

	return 1;
}


void query_handler(ChannelState *state,DataPayload *dp){	
	DataPayload *new_dp = &(state->packet);
	QueryResponse qr;
	qr.type = TEMP;
	qr.freq = uip_htons(5);
	//dp_complete(new_dp,uip_htons(10),1,(1));
	new_dp->hdr.dst_chan_num = dp->hdr.src_chan_num; 
    new_dp->hdr.cmd = QACK; 
    new_dp->hdr.seqno=uip_htonl(1);
    new_dp->dhdr.tlen = sizeof(QueryResponse);
    memcpy(new_dp->data,&qr,sizeof(QueryResponse));
	send_on_channel(state,new_dp);

}

void connect_handler(ChannelState *state,DataPayload *dp){
	ConnectMsg *cm = (ConnectMsg*)dp->data;
	printf("%s wants to connect on channel %d\n",cm->name,dp->hdr.src_chan_num);
	state->chan_num = dp->hdr.src_chan_num;
	DataPayload *new_dp = &(state->packet);
	CACKMesg ck;
	memcpy(ck.name,SENSORNAME,10);
	new_dp->hdr.src_chan_num = state->chan_num;
	new_dp->hdr.dst_chan_num = dp->hdr.src_chan_num;
	//dp_complete(new_dp,10,QACK,1);
    (new_dp)->hdr.cmd = CACK; 
    (new_dp)->hdr.seqno = uip_htonl(1);
    (new_dp)->dhdr.tlen = sizeof(CACKMesg);
    memcpy(&(new_dp->data),&ck,sizeof(CACKMesg));
	send_on_channel(state,new_dp);
	state->state = STATE_CONNECT;
}

void cack_handler(ChannelState *state, DataPayload *dp){
	if (state->state != STATE_CONNECT){
		printf("Not in Connecting state\n");
		return;
	}
	printf("CONNECTION FULLY ESTABLISHED\n");
	state->state = STATE_CONNECTED;
}

void network_handler(ev, data){
	DataPayload *dp;
	char buf[UIP_BUFSIZE];
	unsigned short cmd;
	uint16_t len = uip_datalen();
	printf("ipaddr=%d.%d.%d.%d\n", uip_ipaddr_to_quad(&(UDP_HDR->srcipaddr)));
	//printf("Data is %d bytes long\n",len);
	memcpy(buf, uip_appdata, len);
	buf[len] = '\0';

	dp = (DataPayload *)buf;
	printf("Message for channel %d\n",dp->hdr.dst_chan_num);
	cmd = dp->hdr.cmd;        // only a byte so no reordering :)
	printf("Received a %s command.\n", cmdnames[cmd]);

	ChannelState *state = (ChannelState*) data;
    uip_ipaddr_copy(&(state->remote_addr) , &(UDP_HDR->srcipaddr));
  	state->remote_port = UDP_HDR->srcport;
  	//printf("ipaddr=%d.%d.%d.%d:%u\n", uip_ipaddr_to_quad(&(state->remote_addr)),uip_htons(state->remote_port));
	

	if      (cmd == QUERY)   query_handler(state,dp);
	else if (cmd == CONNECT) connect_handler(state,dp);
	else if (cmd == CACK)    cack_handler(state, dp);
}

void timer_handler(ChannelState* state){
	printf("Building a packet\n");
    DataPayload *new_dp = &(state->packet);
	ResponseMsg rmsg;
	memcpy(rmsg.name,"Temp\0",5);
	new_dp->hdr.src_chan_num = state->chan_num;
	new_dp->hdr.dst_chan_num = state->chan_num;
	rmsg.data = uip_htons(10);
	//dp_complete(new_dp,10,QACK,1); 
    (new_dp)->hdr.cmd = RESPONSE; 
    (new_dp)->hdr.seqno = uip_htonl(1);
    (new_dp)->dhdr.tlen = sizeof(ResponseMsg);
    memcpy(&(new_dp->data),&rmsg,sizeof(ResponseMsg));
    send_on_channel(state,new_dp);
	printf("Sent data\n");

}


PROCESS(knot_sensor,"knot-sensor");
AUTOSTART_PROCESSES(&knot_sensor);

PROCESS_THREAD(knot_sensor, ev, data)
{
	static struct etimer et;
	PROCESS_BEGIN();


	init(&mystate);

	while (1){
    	// wait until the timer has expired
    	if (mystate.state == STATE_CONNECTED){
    		etimer_set(&et, CLOCK_CONF_SECOND*5);
    	}
    	PROCESS_WAIT_EVENT();
		if (ev == tcpip_event && uip_newdata()) network_handler(ev,data);
		else if (ev == PROCESS_EVENT_TIMER) timer_handler(&mystate);
		
	}

	PROCESS_END();

}

