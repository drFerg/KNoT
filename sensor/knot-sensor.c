#include <stdio.h>
#include <stdlib.h>

#include "contiki.h"
#include "contiki-net.h"
#include "contiki-lib.h"
#include "uip.h"
#include "../udp-header.h"

#define CONNECT 1
#define CACK 2
#define QUERY 3
#define QACK 4
#define RESPONSE 5
#define RACK 6
#define DISCONNECT 7
#define DACK 8
#define FRAGMENT 9
#define FACK 10
#define PING 11
#define PACK 12
#define SEQNO 13
#define SACK 14
#define CMD_LOW CONNECT
#define CMD_HIGH SACK		/* change this if commands added */

static const char *cmdnames[] = {"", "CONNECT", "CACK", "QUERY", "QACK",
                                 "RESPONSE", "RACK", "DISCONNECT", "DACK",
                                 "FRAGMENT", "FACK", "PING", "PACK", "SEQNO",
                                 "SACK"};

#define STATE_IDLE   0
#define STATE_POLLED 1
#define STATE_ACKED  2

#define LOCAL_PORT 5001

#define UDP_DATA_LEN 120
#define UDP_HDR ((struct uip_udpip_hdr *)&uip_buf[UIP_LLH_LEN])
/*
&(UIP_IP_BUF->srcipaddr),
UIP_HTONS(UIP_IP_BUF->srcport),
&(UIP_IP_BUF->destipaddr)
UIP_HTONS(UIP_IP_BUF->destport),
*/
struct channel_state{
	u8_t state;
	struct uip_udp_conn *udp_conn;
	uip_ipaddr_t src_addr;
    uint16_t src_port;

};



int init(void){
	struct channel_state *state = (struct channel_state*)malloc(sizeof(struct channel_state));
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
                          &state->src_addr,state->src_port);
	printf("Sent message back to ipaddr=%d.%d.%d.%d:%u\n", uip_ipaddr_to_quad(&(state->src_addr)),uip_htons(state->src_port));
}

void send(struct channel_state *state, uint8_t cmd){
	DataPayload * dp;
	dp = (DataPayload*)malloc(sizeof(DataPayload));
	dp->hdr.subport = UIP_HTONS(10);
	dp->hdr.seqno   = UIP_HTONS(1);
	dp->hdr.cmd     = cmd;          // only a byte so no reordering :)
	dp->dhdr.tlen   = UIP_HTONS(0);
	//dp->data        = NULL;
	uip_udp_packet_sendto(state->udp_conn, (char*)dp, sizeof(dp),
                          &state->src_addr,state->src_port);
}
void broadcast(uint8_t cmd){

}

void incoming_data_event(ev, data){
	printf("doing stuff\n");
	DataPayload *dp;
	char buf[UIP_BUFSIZE];
	unsigned short cmd;
	uint16_t len = uip_datalen();
	printf("Data is %d long\n",len);
	memcpy(buf, uip_appdata, len);
	buf[len] = '\0';
	//printf("Received: %s\n",(char *)uip_appdata);
	dp = (DataPayload *)buf;
	cmd = dp->hdr.cmd;        // only a byte so no reordering :)
	printf("COMMAND: %d %s\n",cmd,cmdnames[cmd]);
	struct channel_state *state = (struct channel_state*)data;
    uip_ipaddr_copy(&state->src_addr , &(UDP_HDR->srcipaddr));
  	state->src_port = UDP_HDR->srcport;
  	printf("ipaddr=%d.%d.%d.%d:%u\n", uip_ipaddr_to_quad(&(state->src_addr)),uip_htons(state->src_port));

	if (state->state == STATE_IDLE){
		printf("IDLE->POLLED\n");
		state->state = STATE_POLLED;
	}
	else if (state->state == STATE_POLLED){
		printf("POLLED->IDLE\n");
		state->state = STATE_IDLE;
	}
	reply_to_sender(state);

}

PROCESS(sky_udp,"sky_udp");
AUTOSTART_PROCESSES(&sky_udp);

PROCESS_THREAD(sky_udp, ev, data)
{
	static struct etimer et;
 
    

	PROCESS_BEGIN();

	// wait 3 second, in order to have the IP addresses well configured
    etimer_set(&et, CLOCK_CONF_SECOND*3);
    // wait until the timer has expired
    PROCESS_WAIT_EVENT_UNTIL(ev == PROCESS_EVENT_TIMER);

	if (init() == 0){
		printf("OH NOES\n");
	}
	while (1){
		PROCESS_WAIT_EVENT_UNTIL(ev == tcpip_event && uip_newdata());
		printf("Packet recv\n");
		incoming_data_event(ev, data);
	}

	PROCESS_END();

}

