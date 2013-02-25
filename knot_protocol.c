#include "knot_protocol.h"

char *cmdnames[15] = {"", "QUERY", "QACK","CONNECT", "CACK", 
                                 "RESPONSE", "RACK", "DISCONNECT", "DACK",
                                 "ERROR", "ERROR", "PING", "PACK", "SEQNO",
                                 "SACK"};