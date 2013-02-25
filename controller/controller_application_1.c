#include "knot-controller.h"
#include "../knot_events.h"
#include "../knot_protocol.h"
//
static uint16_t rate = 10;
static int found = 0;
PROCESS(application1,"Controller APP");
AUTOSTART_PROCESSES(&application1);
static ServiceRecord sc;
void callback(void * data){
	ResponseMsg * r = data;

	printf(">>APP: %s sensor = %d\n", r->name, uip_ntohs((int)r->data));
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
			printf("Service found: %s\n", sc.name); 
			if (!found){
				connect_sensor(&sc);
				found = 1;
			}
		}
		else if (ev == KNOT_EVENT_DATA_READY){
			callback(data);
		}
	}

	PROCESS_END();
}
