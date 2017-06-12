-include ef.gy/base.mk include/ef.gy/base.mk
NAME:=stitches-vs-noise


CC=g++-4.9

INCLUDEDIR=include/
CFLAGS=-std=c++11 -I$(INCLUDEDIR)

ODIR=obj
SOURCES=src/*.cpp
TARGET=server

all: $(TARGET)

cli: $(SOURCES)
	$(CC) $(CFLAGS) -o pattern src/pattern.cpp



$(TARGET): $(SOURCES)
	$(CC) $(CFLAGS) -o $(TARGET) src/server.cpp
