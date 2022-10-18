CC=g++
CFLAGS=-c -Wall
EXECUTABLE = hello

all: $(EXECUTABLE)

$(EXECUTABLE): main.o factorial.o hello.o
	$(CC) main.o factorial.o hello.o -o $(EXECUTABLE)

main.o: main.cpp
	$(CC) $(CFLAGS) main.cpp

factorial.o: factorial.cpp
	$(CC) $(CFLAGS) factorial.cpp

hello.o: hello.cpp
	$(CC) $(CFLAGS) hello.cpp

clean:
	rm -rf *.o $(EXECUTABLE)