#ifndef KNOT_ACTUATOR_H
#define KNOT_ACTUATOR_H
#include "contiki.h"
#include "../knot_uip_network.h"
#include "../knot_callback.h"

/* Register a client process with the actuator.
 * 
 * Actuator will be init'd on first call
 *
 * Callback function to be called back 
 * a later time when data requested from a specified actuator type.
 * Reference knot_callback.h
 * Client process is used to execute the callback function in 
 * its context 
 */
int knot_register_actuator(struct process *client_proc, 
							 knot_callback actuator, 
							 uint16_t rate, 
							 char actuator_name[], 
							 uint8_t actuator_type);





#endif /* KNOT_ACTUATOR_H */