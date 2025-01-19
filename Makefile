DESTDIR ?=
PREFIX	?= /usr/local
CFLAGS	+= -g

all:	udpbroadcastrelay

udpbroadcastrelay: main.c
	$(CC) $(CFLAGS) $? -o $@ $(LDFLAGS)

clean:
	rm -f udpbroadcastrelay

install:
	install -pm0755 udpbroadcastrelay $(DESTDIR)$(PREFIX)/sbin/

.PHONY: all clean install
