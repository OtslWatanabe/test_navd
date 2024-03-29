CC = gcc
CFLAGS = -pedantic -Wall -g -Ilibspnav/src  -I/usr/local/include
LDFLAGS = -Llibspnav -lspnav -lX11 -lm

.PHONY: all
# all: simple_x11 simple_af_unix
all: simple_af_unix

# simple_x11: simple.c
# 	$(CC) $(CFLAGS) -DBUILD_X11 -o $@ $< $(LDFLAGS)

simple_af_unix: main.cpp
	$(CC) $(CFLAGS) -DBUILD_AF_UNIX -o $@ $< $(LDFLAGS)

.PHONY: clean
clean:
	rm -f simple_x11 simple_af_unix
