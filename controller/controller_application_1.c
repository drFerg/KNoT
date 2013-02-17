#include "knot-controller.h"

static uint16_t rate = 5;

PROCESS(application1,"Controller APP");
AUTOSTART_PROCESSES(&application1);
static ServiceRecord sc;
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
								 rate, "BOSS", LIGHT));
	
	/* Application do something? */
	while (1){
		PROCESS_WAIT_EVENT();
		if (ev == KNOT_EVENT_SERVICE_FOUND){
			memcpy(&sc,data,sizeof(ServiceRecord));
			printf("EVENT1!!!! %s\n", sc.name); 
			connect_sensor(&sc);
		}
		else printf("EVENT2!!!!\n");
	}

	PROCESS_END();
}
