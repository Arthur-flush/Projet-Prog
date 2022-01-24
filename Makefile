CC=gcc
CFLAGS = -Wall -Werror
EXEC = carcassone

.PHONY: clean

debug: main.c f_names.h
	$(CC) $(CFLAGS) -g $? -o $(EXEC)

install: main.c f_names.h
	$(CC) $(CFLAGS) $? -o $(EXEC)

clean: 
	rm $(EXEC)
