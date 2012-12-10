CFLAGS = -W -Wall -g

all: controller service

controller: controller.o udpNetwork.h udpNetwork.o
	gcc -g -o controller controller.o udpNetwork.o

controller.o: controller.c udpNetwork.o

service: service.o udpNetwork.h udpNetwork.o
	gcc -g -o service service.o udpNetwork.o

service.o: service.c udpNetwork.o

udpNetwork.o: udpNetwork.c udpNetwork.h
	gcc -c udpNetwork.c udpNetwork.h
