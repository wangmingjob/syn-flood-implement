CC=g++
#CFLAGS=-O3 -g
CFLAGS=-g

SRC=./main.o ./utility.o ./syn.o
TARGET=syn-flood

.PHONY: all
all: $(TARGET)

$(TARGET): $(SRC)
	$(CC) -o $@ $^

%.o: %.cpp
	$(CC) $(CFLAGS) -c -o $@ $^

%.o: %.o
	$(CC) $(CFLAGS) -c -o $@ $^
	
.PHONY: clean
clean:
	-rm -f $(TARGET) $(SRC)
