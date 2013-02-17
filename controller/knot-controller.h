#ifndef KNOT_CONTROLLER_H
#define KNOT_CONTROLLER_H
#include "../knot-network.h"
#include "uip.h"
#include "contiki-net.h"

typedef struct service_record{
	uip_ipaddr_t remote_addr;
	char name[NAME_SIZE];
}ServiceRecord;


/* Register a client process with the controller.
 * 
 * Controller will be init'd on first call
 *
 * Callback function to be called back 
 * a later time when data requested from a specified sensor type.
 * Reference knot_callback.h
 * Client process is used to execute the callback function in 
 * its context 
 */
int knot_register_controller(struct process *client_proc, 
							 knot_callback callback, 
							 uint16_t rate, 
							 char controller_name[], 
							 uint8_t device_type);





#endif /* KNOT_CONTROLLER */