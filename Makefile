CC = gcc
CFLAGS = -Wall -Wextra -std=c11

all: q1 q2 q3

q1: q1_array.c
	$(CC) $(CFLAGS) -o q1 q1_array.c

q2: q2_student.c
	$(CC) $(CFLAGS) -o q2 q2_student.c

q3: q3_bugfix.c
	$(CC) $(CFLAGS) -o q3 q3_bugfix.c

clean:
	rm -f q1 q2 q3
