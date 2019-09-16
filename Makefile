CFLAGS=-std=c11 -g -static
SRCS=$(wildcard *.c)
OBJS=$(SRCS:.c=.o)

72cc: $(OBJS)
	$(CC) -o 72cc $(OBJS) $(LDFLAGS)

$(OBJS): 72cc.h

test: 72cc
	./test.sh

clean:
	rm -f 72cc *.o *~ tmp*

.PHONY: test clean
