CC = cc
PREFIX = /usr/bin
progress:
	${CC} progress.c progressbar.c -o progress
all:
install:
	cp progress ${PREFIX}
	cp progress.1 /usr/share/man/man1
clean:
	rm progress
