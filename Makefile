EXEC = postmark

SRC = $(wildcard *.c)
OBJ = $(SRC:%.c=%.o)

CC = clang
CFLAGS = -O3 -g

LD = clang
LDFLAGS =

.PHONY: all clean

$(EXEC): $(OBJ)
	$(LD) $(LDFLAGS) -o $@ $^

%.o: %.c
	$(CC) $(CFLAGS) -c $<

clean:
	rm -f $(EXEC) $(OBJ)
