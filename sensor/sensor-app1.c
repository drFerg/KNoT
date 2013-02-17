#include "knot-sensor.h"
#include "light.h"
#include "contiki.h"
static uint16_t rate = 5;

PROCESS(application1,"application1");
AUTOSTART_PROCESSES(&application1);

void callback(char name[],void * data){
	printf(">>APP: %s sensor = %d\n", name, uip_ntohs(*(int*)data));
	uint16_t *d = data;
	*d = sensors_light1();
}


PROCESS_THREAD(application1,ev,data)
{
	PROCESS_BEGIN();
	sensors_light_init();
	printf("LAUNCH SUCCESS: %d\n",
		knot_register_sensor(&application1,
								 (knot_callback)&callback, 
								 rate, "Light", LIGHT));	
	
	/* Application do something? */
	while (1){
		PROCESS_WAIT_EVENT();
	}

	PROCESS_END();
}
