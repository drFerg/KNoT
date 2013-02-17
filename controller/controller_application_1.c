#include "knot-controller.h"

static uint16_t rate = 5;

PROCESS(application1,"application1");
AUTOSTART_PROCESSES(&application1);

void callback(char name[],void * data){
	printf(">>APP: %s sensor = %d\n", name, uip_ntohs(*(int*)data));
}

void callback2(char name[],void * data){
	printf(">>APP2: %s sensor = %d\n", name, uip_ntohs(*(int*)data));
}

void callback3(char name[],void * data){
	printf(">>APP3: %s sensor = %d\n", name, uip_ntohs(*(int*)data));
}

PROCESS_THREAD(application1,ev,data)
{
	PROCESS_BEGIN();

	printf("LAUNCH SUCCESS: %d\n",
		knot_register_controller(&application1,
								 (knot_callback)&callback, 
								 rate, "BOSS", TEMP));
	
	/* Application do something? */
	while (1){
		PROCESS_WAIT_EVENT();
		if (ev == KNOT_EVENT_SERVICE_FOUND){
			ServiceRecord *sc = data;
			printf("EVENT1!!!! %s\n", sc->name); 
		}
		else printf("EVENT2!!!!\n");
	}

	PROCESS_END();
}
