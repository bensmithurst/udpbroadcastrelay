DESTDIR ?=
PREFIX	?= /usr/local
CFLAGS	+= -g

all:	udpbroadcastrelay

udpbroadcastrelay: main.c
	$(CC) $(CFLAGS) $? -o $@ $(LDFLAGS)

clean:
	rm -f udpbroadcastrelay

install:
	install -Dpm0755 -t $(DESTDIR)$(PREFIX)/sbin/ udpbroadcastrelay

.PHONY: all clean install
