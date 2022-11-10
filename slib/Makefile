# See LICENSE file for copyright and license details.

.POSIX:

include config.mk

SRC = my_print.c slib_print.c
OBJ = ${SRC:%.c=%.o}

all: options libslib.a

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

libslib.a: ${OBJ}
	ar -rcs $@ ${OBJ}

clean:
	rm -f libslib.a ${OBJ}

.PHONY: all options clean
