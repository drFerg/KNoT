#include "knot-actuator.h"
#include "contiki.h"
#include "dev/leds.h"
static uint16_t rate = 5;
static int state = 0;
PROCESS(application1,"Actuator App");
AUTOSTART_PROCESSES(&application1);

void callback(char name[],void * data){
	state = !state;
	printf(">>Actuator APP: %s\n", (state?"ON":"OFF"));
	state?leds_on(LEDS_ALL):leds_off(LEDS_ALL);
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
