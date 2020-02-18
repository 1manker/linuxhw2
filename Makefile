######################
#Makefile
#Lucas Manker
#COSC 3750 Spring 2020
#Homework #2
#2/15/20
#
#Makefile homework
#####################

CC=gcc -c
CFLAGS=-ggdb -Wall

.PHONY: clean

approxe: prompt.o compute.o display.o approxe.c
	$(CC) $(CFLAGS) approxe.c prompt.o compute.o display.o -o approxe

prompt.o: prompt.h prompt.c  
	$(CC) $(CFLAGS) prompt.h prompt.c

compute.o: compute.h compute.c 
	$(CC) $(CFLAGS) compute.h compute.c


display.o: display.h display.c
	$(CC) $(CFLAGS) display.h display.c


tidy:
	/bin/rm -f prompt.o compute.o display.o
clean: tidy
	/bin/rm -f approxe
