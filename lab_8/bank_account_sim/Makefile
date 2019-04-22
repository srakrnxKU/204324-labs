
FLAGS = -Wall -pthread
INCLUDES = ./include

all: simulate simulate_multithread

clean:
	rm -f simulate *~
	rm -f simulate_multithread *~

simulate: simulate.c account.c account.h
	gcc -I $(INCLUDES) -o simulate simulate.c account.c $(FLAGS)

simulate_multithread: simulate_multithread.c account_multithread.c account_multithread.h
	gcc -I $(INCLUDES) -o simulate_multithread simulate_multithread.c account_multithread.c $(FLAGS)
