CC=gcc
CFLAGS=-I.
DEPS = birthday.h

%.o: %.c $(DEPS)
	$(CC) -c -o $@ $< $(CFLAGS)

birthday-cake: main.cpp
	$(CC) -o birthday-cake main.cpp
