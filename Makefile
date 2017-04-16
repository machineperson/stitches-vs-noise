CC=g++
INCLUDEDIR=include/
CFLAGS=-std=c++11 -I$(INCLUDEDIR)

ODIR=obj
SOURCES=src/*.cpp
TARGET=pattern

all: $(TARGET)

$(TARGET): $(SOURCES)
	$(CC) $(CFLAGS) -o $(TARGET) $(SOURCES)

clean:
	$(RM) $(TARGET)
