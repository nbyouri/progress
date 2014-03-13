CC = cc
PREFIX= /usr/pkg
MANPREFIX= ${PREFIX}/man/man1

all:
	${CC} progress.c progressbar.c -o progress

install:
	test -d $(DESTDIR)$(PREFIX)/bin || mkdir -p $(DESTDIR)$(PREFIX)/bin
	test -d $(DESTDIR)$(MANPREFIX)/man1 || mkdir -p $(DESTDIR)$(MANPREFIX)/man1
	cp progress ${DESTDIR}${PREFIX}
	cp progress.1 ${DESTDIR}${MANPREFIX}

uninstall:
	rm $(DESTDIR)$(PREFIX)/bin/progress
	rm ${DESTDIR}${MANPREFIX}/progress.1

clean:
	rm progress

