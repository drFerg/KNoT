#ifndef KNOT_SENSOR_H
#define KNOT_SENSOR_H
#include "contiki.h"
#include "../knot_uip_network.h"
#include "../knot_callback.h"

/* Register a client process with the sensor.
 * 
 * Sensor will be init'd on first call
 *
 * Callback function to be called back 
 * a later time when data requested from a specified sensor type.
 * Reference knot_callback.h
 * Client process is used to execute the callback function in 
 * its context 
 */
int knot_register_sensor(struct process *client_proc, 
							 knot_callback sensor, 
							 uint16_t rate, 
							 char sensor_name[], 
							 uint8_t sensor_type);





#endif /* KNOT_CONTROLLER */