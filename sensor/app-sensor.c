#include "knot-sensor.h"
#include "light.h"
#include "contiki.h"
static uint16_t rate = 5;

PROCESS(application1,"Sensor App");
AUTOSTART_PROCESSES(&application1);

void callback(char name[],void * data){
	uint16_t *d = data;
	*d = sensors_light2();
	printf(">>SENSOR APP: %d\n", *d);
}


PROCESS_THREAD(application1,ev,data)
{
	PROCESS_BEGIN();
	sensors_light_init();
	printf(">>LAUNCH SUCCESS: %d\n",
		knot_register_sensor(&application1,
								 (knot_callback)&callback, 
								 rate, "Light", LIGHT));	
	
	/* Application do something? */
	while (1){
		PROCESS_WAIT_EVENT();
	}

	PROCESS_END();
}
