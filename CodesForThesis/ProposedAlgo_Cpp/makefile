CC=g++
CFLAGS=-w -O2 -c -std=c++11
LDFLAGS=
SOURCES=starTracking.cpp .//Libs//InOut.cpp .//Libs//Centroider.cpp .//Libs//Algorithm.cpp
OBJECTS=$(SOURCES:.cpp=.o)
OBJECTS=$(SOURCES:.cpp=.o)
EXE=starTracking.exe

all: $(SOURCES) $(EXE)

build:
	make all && ./$(EXE)

run:
	./$(EXE)

$(EXE): $(OBJECTS) 
	$(CC) $(LDFLAGS) $(OBJECTS) -o $@

.cpp.o:
	$(CC) $(CFLAGS) $< -o $@

clean:
	rm -rf $(OBJECTS) $(EXE)
