#include "knot-controller.h"
#include "../knot_events.h"
#include "../knot_protocol.h"

static uint16_t rate = 10;
static int found = 0;
PROCESS(application1,"Controller APP");
AUTOSTART_PROCESSES(&application1);
static ServiceRecord sc;
static int actuator = 0;
static int lighton = 0;
static char *act = "LightSwitch";
static int sentact = 0;
void callback(void * data){
	ResponseMsg * r = data;
	int value = uip_ntohs((int)r->data);
	printf(">>APP: %s sensor = %d\n", r->name, value);
	if (actuator == 0) return; //NO actuator connected
	if (value > 75  && lighton){
		printf("It's too bright - Turning off light\n");
		command_actuator(&actuator);
		lighton = 0;
	} else if (value <75 && !lighton){
		printf("It's too dark - Turning on light\n");
		command_actuator(&actuator);
		lighton = 1;
	}

}


void add_actuator(){
	found = 0;
	printf("LAUNCH SUCCESS: %d\n",
		knot_register_controller(&application1,
								 NULL, 
								 rate, "BOSS", ACTUATOR, SWITCH));
}

void handle_new_device(void *data){
	if (!sentact){
		sentact = 1;
		add_actuator();
	}
	DeviceInfo *di = (DeviceInfo *)data;
	printf("DEVICE CONNECTED>>>%s\n",di->name);
	if (strcmp(di->name,act) == 0){
		actuator = di->channelID;
		printf("ACTUATOR CONNECTED at %d\n",actuator );
	}
}




PROCESS_THREAD(application1,ev,data)
{
	PROCESS_BEGIN();

	printf("LAUNCH SUCCESS: %d\n",
		knot_register_controller(&application1,
								 NULL, 
								 1, "BOSS", SENSOR, LIGHT));

	
	
	/* Application do something? */
	while (1){
		PROCESS_WAIT_EVENT();
		if (ev == KNOT_EVENT_SERVICE_FOUND){
			memcpy(&sc,data,sizeof(ServiceRecord));
			printf("Service found: %s\n", sc.name); 
			if (!found){
				connect_device(&sc);
				found = 1;

			}
		}
		else if (ev == KNOT_EVENT_DATA_READY){
			callback(data);
		}
		else if (ev == KNOT_EVENT_CONNECTED_DEVICE){
			handle_new_device(data);
		}
	}

	PROCESS_END();
}
