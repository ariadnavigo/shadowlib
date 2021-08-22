# Flags
CPPFLAGS = -I./slib -D_POSIX_C_SOURCE=200809L
CFLAGS = -std=c99 -Wpedantic -Wall -Wextra
LDFLAGS = -L./slib
LIBS = -lslib

# Compiler and linker
CC = cc

