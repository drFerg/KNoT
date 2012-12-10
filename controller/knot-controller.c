#include <stdio.h>
#include <stdlib.h>

#include "contiki.h"
#include "contiki-net.h"
#include "contiki-lib.h"
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
static struct channel_state *state;

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



int init(struct channel_state * st){
	
	if (st != NULL){
		st->state = STATE_IDLE;
	} else return -1;
	st->udp_conn = udp_broadcast_new(UIP_HTONS(LOCAL_PORT), st);
	if (st->udp_conn != NULL){
		printf("%d.%d.%d.%d:%d\n", uip_ipaddr_to_quad(&(st->udp_conn->ripaddr)),uip_htons(st->udp_conn->rport));
		udp_bind(st->udp_conn,UIP_HTONS(LOCAL_PORT));
		printf("SET UP NETWORK\n");
	} else return 0;
	printf("%d.%d.%d.%d:%d\n", uip_ipaddr_to_quad(&(st->udp_conn->ripaddr)),uip_htons(st->udp_conn->rport));
	uip_udp_packet_send(st->udp_conn, "hello",5);

	return 1;
}

void reply_to_sender(struct channel_state *state){
	uip_udp_packet_sendto(state->udp_conn, "HELLO", 5,
                          &state->src_addr,state->src_port);
	printf("Sent message back to ipaddr=%d.%d.%d.%d:%u\n", uip_ipaddr_to_quad(&(state->src_addr)),uip_htons(state->src_port));
}

void send(struct channel_state *st, uint8_t cmd){
	DataPayload * dp;
	int dplen;
	dp = (DataPayload*)malloc(sizeof(DataPayload));
	dp->hdr.subport = UIP_HTONS(10);
	dp->hdr.seqno   = UIP_HTONS(1);
	dp->hdr.cmd     = cmd;          // only a byte so no reordering :)
	dp->dhdr.tlen   = UIP_HTONS(0);
	//dp->data        = NULL;
	dplen = sizeof(PayloadHeader) + sizeof(DataHeader) +
                       dp->dhdr.tlen;
    uip_ipaddr_t ipaddr;
    uip_ipaddr(&ipaddr, 255,255,255,255);
   // struct uip_udp_conn *udp_conn = udp_broadcast_new(UIP_HTONS(5001), state);
    //udp_bind(udp_conn,UIP_HTONS(LOCAL_PORT));
    printf("Sending to : %d.%d.%d.%d:%d\n", uip_ipaddr_to_quad(&(st->udp_conn->ripaddr)),uip_htons(st->udp_conn->rport));
	uip_udp_packet_send(st->udp_conn, dp,dplen);//, &ipaddr, UIP_HTONS(LOCAL_PORT));
	printf("data is %d long\n",dplen);
	free(dp);
	printf("Packet sent\n");
}
void broadcast(uint8_t cmd){

}

void incoming_data_event(ev, data){
	DataPayload *dp;
	char buf[UIP_BUFSIZE];
	unsigned short cmd;
	((char *)uip_appdata)[uip_datalen()] = '\0';
	//printf("Received: %s\n",(char *)uip_appdata);
	dp = (DataPayload *)uip_appdata;
	cmd = uip_ntohs(dp->hdr.cmd);
	printf("%s\n",cmdnames[cmd]);
	struct channel_state *st = (struct channel_state*)data;
    uip_ipaddr_copy(&st->src_addr , &(UDP_HDR->srcipaddr));
  	st->src_port = UDP_HDR->srcport;
  	printf("ipaddr=%d.%d.%d.%d:%u\n", uip_ipaddr_to_quad(&(st->src_addr)),uip_htons(st->src_port));

	if (st->state == STATE_IDLE){
		printf("IDLE->POLLED\n");
		st->state = STATE_POLLED;
	}
	else if (st->state == STATE_POLLED){
		printf("POLLED->IDLE\n");
		st->state = STATE_IDLE;
	}
	printf("twiddling thumbs : %d.%d.%d.%d:%d\n", uip_ipaddr_to_quad(&(st->udp_conn->ripaddr)),uip_htons(st->udp_conn->rport));
	reply_to_sender(st);

}

PROCESS(udp_controller,"udp_controller");
AUTOSTART_PROCESSES(&udp_controller);

PROCESS_THREAD(udp_controller, ev, data)
{
	static struct etimer et; // temp timer for loop
    
	PROCESS_BEGIN();
	/** malloc here because breaks inside init**/
	state = (struct channel_state*)malloc(sizeof(struct channel_state));
	init(state);

	while (1){
		etimer_set(&et, CLOCK_CONF_SECOND*3);
    	// wait until the timer has expired
    	PROCESS_WAIT_EVENT_UNTIL(ev == PROCESS_EVENT_TIMER);
		send(state, QUERY);
	}

	PROCESS_END();

}

