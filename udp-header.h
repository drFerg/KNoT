#ifndef UDP_HEADER
#define UDP_HEADER

#define QUERY    1
#define QACK     2
#define CONNECT  3
#define CACK     4
#define RESPONSE 5
#define RACK     6
#define DISCONNECT 7
#define DACK     8
#define PING    11
#define PACK    12
#define SEQNO   13
#define SACK    14
#define CMD_LOW CONNECT
#define CMD_HIGH SACK		/* change this if commands added */

const char *cmdnames[] = {"", "QUERY", "QACK","CONNECT", "CACK", 
                                 "RESPONSE", "RACK", "DISCONNECT", "DACK",
                                 "ERROR", "ERROR", "PING", "PACK", "SEQNO",
                                 "SACK"};

typedef struct ph {
   uint32_t subport;	/* 3rd piece of identifier triple */
   uint32_t seqno;	/* sequence number */
   uint8_t cmd;	/* message type */
} PayloadHeader;

typedef struct dh {
   uint16_t tlen;	/* total length of the data */
} DataHeader;


typedef struct dp {		/* template for data payload */
   PayloadHeader hdr;
   DataHeader dhdr;
   unsigned char data[1];	/* data is address of `len' bytes */
} DataPayload;

#endif /*UDP_HEADER*/