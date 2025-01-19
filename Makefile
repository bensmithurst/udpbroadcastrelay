PREFIX	?= /usr/local
CFLAGS	+= -g

all:	udpbroadcastrelay

udpbroadcastrelay: main.c
	$(CC) $(CFLAGS) $? -o $@

clean:
	rm -f udpbroadcastrelay

install:
	install -cm 555 udpbroadcastrelay $(PREFIX)/sbin/

.PHONY: all clean install
