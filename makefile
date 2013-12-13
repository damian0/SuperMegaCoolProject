CFLAGS = -Wall
CC = gcc
EXEC = file1

all: $(EXEC)

file1: file1.o file2.o
	$(CC) -o $@ $^ $(CFLAGS)

.PHONY: clean mrproper

clean:
	$(RM) -rf *.o

mrproper: clean
	$(RM) -rf $(EXEC)
