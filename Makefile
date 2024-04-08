CC = gcc
CFLAGS = -pedantic -Wall -g -Ilibspnav/src  -I/usr/local/include
LDFLAGS = -Llibspnav -lspnav -lX11 -lm -lpthread

.PHONY: all
all: single_test multi_test

# simple_x11: simple.c
# 	$(CC) $(CFLAGS) -DBUILD_X11 -o $@ $< $(LDFLAGS)

single_test: single_main.cpp
	$(CC) $(CFLAGS) -DBUILD_AF_UNIX -o $@ $< $(LDFLAGS)

multi_test: multi_main.cpp
	$(CC) $(CFLAGS) -DBUILD_AF_UNIX -o $@ $< $(LDFLAGS)

.PHONY: clean
clean:
	rm -f single_test multi_test
