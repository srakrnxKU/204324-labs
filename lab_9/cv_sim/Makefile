FLAGS = -Wall -pthread
INCLUDES = ./include

all: sbuf

clean:
	rm -f client *~

sbuf: sbuf.c client.c
	gcc -I $(INCLUDES) -o client sbuf.c client.c $(FLAGS)
