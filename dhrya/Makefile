CC=gcc
CFLAGS= -W -O3 -lm
LDFLAGS=-O3 -lm
INC=-I./
DEFINES=-DTIMES -DMSC_CLOCK
CPP=g++



DHRY_OBJS=dhry_1.o dhry_2.o times_b.o
WHETSTONE_OBJS=whetstone.o

TARGETS=dhry whetstone

all:$(TARGETS)


dhry:$(DHRY_OBJS)
	$(CC)  $^ -o $@ $(LDFLAGS)

whetstone:$(WHETSTONE_OBJS)
	$(CC)  $^ -o $@ $(LDFLAGS)


%.o:%.c
	$(CC) -c $^ -o $@ $(CFLAGS) $(INC) $(DEFINES)

__arm:
	arm-linux-gcc -Wall -O3 dhry_1.c dhry_2.c times_b.c -S dhry -I./
	arm-linux-gcc -Wall -O3 whetstone.c -S whetstone -lm
__pc:
	gcc -Wall  -O3 dhry_1.c dhry_2.c times_b.c -S dhry.s -I./
	gcc -Wall  -O3 whetstone.c -S whetstone.s -lm
clean:
	rm $(DHRY_OBJS)
	rm $(WHETSTONE_OBJS)
	rm $(TARGETS)
