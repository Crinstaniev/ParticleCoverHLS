SRC=*.c
HEADERS=*.h
CC=gcc
CFLAGS=-Wall -g

libpatchmaker.so: $(SRC) $(HEADERS)
	$(CC) $(CFLAGS) -shared -fPIC -o libpatchmaker.so $(SRC)

clean:
	rm -f libpatchmaker.so

.PHONY: clean