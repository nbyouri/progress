CC = cc
DESTDIR= /usr/pkg
PREFIX = bin/
MAN= man/man1/

all:
	${CC} progress.c progressbar.c -o progress

install:
	cp progress ${DESTDIR}/${PREFIX}
	cp progress.1 ${DESTDIR}/${MAN}

clean:
	rm progress

