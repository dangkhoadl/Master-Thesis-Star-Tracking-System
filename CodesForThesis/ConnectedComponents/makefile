CC=g++
CFLAGS=-w -O2 -c -std=c++11
LDFLAGS=
SOURCES=main.cpp
OBJECTS=$(SOURCES:.cpp=.o)
EXE=main.exe
INPUT= sample_image.in
OUTPUT = result.out

all: $(SOURCES) $(EXE)

build:
	make all

run:
	make all && ./$(EXE) $(INPUT) $(OUTPUT)

$(EXE): $(OBJECTS) 
	$(CC) $(LDFLAGS) $(OBJECTS) -o $@

.cpp.o:
	$(CC) $(CFLAGS) $< -o $@

clean:
	rm -rf $(OBJECTS) $(EXE)
