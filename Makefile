######################
#Makefile
#Lucas Manker
#COSC 3750 Spring 2020
#Homework #2
#2/15/20
#
#Makefile homework
#####################

CC=gcc
CFLAGS=-ggdb -Wall -Werror
OBJS=prompt.o compute.o display.o

.PHONY: clean tidy

approxe: $(OBJS) approxe.c
	$(CC) $(CFLAGS) -I. $(OBJS) approxe.c -o approxe

#Must have the -I. flag for the include in approxe.c due to angle brackets.

prompt.o: prompt.c prompt.h  
	$(CC) $(CFLAGS) -c prompt.c prompt.h

compute.o: compute.c compute.h 
	$(CC) $(CFLAGS) -c compute.c compute.h


display.o: display.c display.h
	$(CC) $(CFLAGS) -c display.c display.h


tidy:
	/bin/rm -f $(OBJS)
clean: tidy
	/bin/rm -f $(OBJS) approxe
