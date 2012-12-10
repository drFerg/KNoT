#ifndef UDP_HEADER
#define UDP_HEADER

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