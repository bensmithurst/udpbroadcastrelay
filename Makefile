PREFIX	?= /usr/local
CFLAGS	+= -g

all:	udpbroadcastrelay

udpbroadcastrelay: main.c
	$(CC) $(CFLAGS) $? -o $@

clean:
	rm -f udpbroadcastrelay

install: udpbroadcastrelay
	chmod 0755 udpbroadcastrelay
	cp -p udpbroadcastrelay $(PREFIX)/sbin/

install:
	install -cm 555 udpbroadcastrelay /usr/local/sbin/

.PHONY: all clean install
