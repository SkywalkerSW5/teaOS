CFLAGS=-O2 -Wall -Wextra -lX11 -lpci
PREFIX=$(HOME)/.local
CACHE=$(shell if [ "$$XDG_CACHE_HOME" ]; then echo "$$XDG_CACHE_HOME"; else echo "$$HOME"/.cache; fi)

all: sys-info

clean:
	rm -f sys-info $(CACHE)/sys-info

sys-info: sys-info.c sys-info.h config.h
	$(CC) sys-info.c -o sys-info $(CFLAGS) 
	strip sys-info

