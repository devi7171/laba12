CC = gcc
CFLAGS = -g
LIBS = -lm

calcul: calculate.o main.o
	$(CC) calculate.o main.o -o calcul $(LIBS) && ./calcul

calculate.o: calculate.c calculate.h
	$(CC) -g -c calculate.c $(CFLAGS)

main.o: main.c calculate.h
	$(CC) -g -c main.c $(CFLAGS)

clean:
	-rm calcul *.o *~