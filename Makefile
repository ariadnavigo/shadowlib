# See LICENSE file for copyright and license details.

.POSIX:

include config.mk

SRC = my_print.c shadowlib.c
OBJ = ${SRC:.c=.o}

all: options shadowlib

options:
	@echo Build options:
	@echo "CPPFLAGS = ${CPPFLAGS}"
	@echo "CFLAGS   = ${CFLAGS}"
	@echo "LDFLAGS  = ${LDFLAGS}"
	@echo "CC       = ${CC}"
	@echo

.c.o:
	${CC} ${CFLAGS} ${CPPFLAGS} -c $<

${OBJ}: config.mk

shadowlib: ${OBJ}
	${CC} -o $@ ${OBJ} ${LDFLAGS} ${LIBS}

clean:
	rm -f shadowlib ${OBJ}

.PHONY: all options clean
