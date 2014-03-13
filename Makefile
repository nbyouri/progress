CC = cc
PREFIX = /usr/bin

all:
	${CC} progress.c progressbar.c -o progress

install:
	cp progress ${PREFIX}
	cp progress.1 /usr/share/man/man1

clean:
	rm progress

