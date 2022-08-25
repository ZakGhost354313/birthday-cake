CC=gcc
CFLAGS=-I.
DEPS = birthday.h

%.o: %.c $(DEPS)
	$(CC) -c -o $@ $< $(CFLAGS)

bake: src/main.cpp
	$(CC) -o birthday-cake src/main.cpp
install: birthday-cake
	mv birthday-cake /usr/bin/birthday-cake
