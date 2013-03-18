#ifndef KNOT_CONTROLLER_H
#define KNOT_CONTROLLER_H
#include "contiki.h"
#include "contiki-net.h"
#include "uip.h"

#include "../knot_uip_network.h"
#include "../knot_callback.h"

process_event_t KNOT_EVENT_CONNECTED_DEVICE;

#define SENSOR 1
#define ACTUATOR 2

typedef struct service_record{
	uip_ipaddr_t remote_addr;
	char name[NAME_SIZE];
}ServiceRecord;

typedef struct device{
	int channelID;
	char name[NAME_SIZE];
}DeviceInfo;


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
							 char controller_name[], uint8_t device_role,
							 uint8_t device_type);


int connect_device(ServiceRecord *sc);
int command_actuator(int channelID);


#endif /* KNOT_CONTROLLER */