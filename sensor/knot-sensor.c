#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#include "contiki.h"
#include "contiki-net.h"
#include "contiki-lib.h"
#include "uip.h"
#include "../udp-header.h"

#define STATE_IDLE   0
#define STATE_POLLED 1
#define STATE_ACKED  2

#define LOCAL_PORT 5001

#define UDP_DATA_LEN 120
#define UDP_HDR ((struct uip_udpip_hdr *)&uip_buf[UIP_LLH_LEN])
#define dp_complete(dp,sp,cmd,sn) {(dp)->hdr.subport=uip_htons(sp); \
                                   (dp)->hdr.cmd=cmd; \
                                   (dp)->hdr.seqno=uip_htonl(sn);}
/*
&(UIP_IP_BUF->srcipaddr),
UIP_HTONS(UIP_IP_BUF->srcport),
&(UIP_IP_BUF->destipaddr)
UIP_HTONS(UIP_IP_BUF->destport),
*/
struct channel_state{
	u8_t state;
	struct uip_udp_conn *udp_conn;
	uip_ipaddr_t remote_addr; //Holds address of remote device
    uint16_t remote_port;

};



int init(struct channel_state *state){
	if (state != NULL){
		state->state = STATE_IDLE;
	} else return 0;
	state->udp_conn = udp_new(NULL,UIP_HTONS(5001), state);
	if (state->udp_conn != NULL){
		udp_bind(state->udp_conn,UIP_HTONS(LOCAL_PORT));
		printf("SET UP NETWORK\n");
	} else return 0;

	return 1;
}


void reply_to_sender(struct channel_state *state){
	uip_udp_packet_sendto(state->udp_conn, "HELLO", 5,
                          &state->remote_addr,state->remote_port);
	printf("Sent message back to ipaddr=%d.%d.%d.%d:%u\n", uip_ipaddr_to_quad(&(state->remote_addr)),uip_htons(state->remote_port));
}


/**Send a message to the connection in state **/
void send(struct channel_state *state, DataPayload *dp){
	int dplen = sizeof(PayloadHeader) + sizeof(DataHeader) + dp->dhdr.tlen;
	uip_udp_packet_sendto(state->udp_conn, (char*)dp, dplen,
                          &state->remote_addr,state->remote_port);
	printf("Sent %s to ipaddr=%d.%d.%d.%d:%u\n", 
		cmdnames[dp->hdr.cmd], 
		uip_ipaddr_to_quad(&(state->remote_addr)),
		uip_htons(state->remote_port));
}

void broadcast(uint8_t cmd){

}

void query_handler(struct channel_state *state,DataPayload *dp){	
	DataPayload *new_dp = (DataPayload*)malloc(sizeof(DataPayload));
	//dp_complete(new_dp,10,QACK,1);
	(new_dp)->hdr.subport=uip_htons(10); 
    (new_dp)->hdr.cmd = QACK; 
    (new_dp)->hdr.seqno=uip_htonl(1);
    (new_dp)->dhdr.tlen = 0;
	send(state,new_dp);
	free(new_dp);

}

void connect_handler(struct channel_state *state,DataPayload *dp){
	printf("COMMAND: %d %s\n",dp->hdr.cmd,cmdnames[dp->hdr.cmd]);
}


void network_handler(ev, data){
	DataPayload *dp;
	char buf[UIP_BUFSIZE];
	unsigned short cmd;
	uint16_t len = uip_datalen();

	printf("Data is %d bytes long\n",len);
	memcpy(buf, uip_appdata, len);
	buf[len] = '\0';

	dp = (DataPayload *)buf;
	cmd = dp->hdr.cmd;        // only a byte so no reordering :)
	printf("Received a %s command.\n", cmdnames[cmd]);

	struct channel_state *state = (struct channel_state*) data;
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



PROCESS(sky_udp,"sky_udp");
AUTOSTART_PROCESSES(&sky_udp);

PROCESS_THREAD(sky_udp, ev, data)
{
	static struct etimer et;
    static struct channel_state *state;
	// wait 3 second, in order to have the IP addresses well configured
    //etimer_set(&et, CLOCK_CONF_SECOND*3);
    // wait until the timer has expired
    // PROCESS_WAIT_EVENT_UNTIL(ev == PROCESS_EVENT_TIMER);
    

	PROCESS_BEGIN();
    state = (struct channel_state*) malloc(sizeof(struct channel_state));

	if (init(state) == 0){
		printf("OH NOES\n");
	}
	while (1){
		PROCESS_WAIT_EVENT();
		if (ev == tcpip_event && uip_newdata()) network_handler(ev,data);
		//else if (ev == PROCESS_EVENT_TIMER) timer_handler(ev,data);
		
	}

	PROCESS_END();

}

