#ifndef KNOT_CONTROLLER_H
#define KNOT_CONTROLLER_H
#include "../knot-network.h"

int knot_register_controller(struct process *client_proc, knot_callback callback, uint16_t rate, char controller_name[], uint8_t device_type);




#endif /* KNOT_CONTROLLER */