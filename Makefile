CC = cc
PREFIX= /usr/pkg
MANPREFIX= ${PREFIX}/man

all:
	${CC} progress.c progressbar.c -o progress

install:
	test -d $(DESTDIR)$(PREFIX)/bin || mkdir -p $(DESTDIR)$(PREFIX)/bin
	test -d $(DESTDIR)$(MANPREFIX)/man1 || mkdir -p $(DESTDIR)$(MANPREFIX)/man1
	cp progress ${DESTDIR}${PREFIX}/bin
	cp progress.1 ${DESTDIR}${MANPREFIX}/man1

uninstall:
	rm $(DESTDIR)$(PREFIX)/bin/progress
	rm ${DESTDIR}${MANPREFIX}/progress.1

clean:
	rm progress

