VERSION=1.1

udpbroadcastrelay: main.c
	$(CC) $(CFLAGS) -g main.c -o udpbroadcastrelay

clean:
	rm -f udpbroadcastrelay

all:
	$(CC) $(CFLAGS) -g main.c -o udpbroadcastrelay

install:
	install -cm 555 udpbroadcastrelay /usr/local/sbin/
