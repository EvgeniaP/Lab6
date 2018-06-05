CC=gcc
CFLAGS=-I.

all: client server

server : server.c 
	$(CC) server.c -o server -lpthread -L./lib -lt6 $(CFLAGS)

client : client.c
	$(CC) client.c -o client -lpthread -L./lib -lt6 $(CFLAGS)

clean :
	rm client server core*