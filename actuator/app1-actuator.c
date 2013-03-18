#include "knot-actuator.h"
#include "contiki.h"
static uint16_t rate = 5;
static int state = 0;
PROCESS(application1,"Sensor App");
AUTOSTART_PROCESSES(&application1);

void callback(char name[],void * data){
	state = !state;
	printf(">>Actuator APP: %s\n", (state?"ON":"OFF"));

}


PROCESS_THREAD(application1,ev,data)
{
	PROCESS_BEGIN();
	printf(">>LAUNCH SUCCESS: %d\n",
		knot_register_actuator(&application1,
								 (knot_callback)&callback, 
								 rate, "LightSwitch", SWITCH));	
	
	/* Application do something? */
	while (1){
		PROCESS_WAIT_EVENT();
	}

	PROCESS_END();
}
