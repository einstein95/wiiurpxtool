CXXFLAGS+=-lz

SRC=wiiurpxtool.cpp
OBJ=$(SRC:.cpp=.o)
BIN=wiiurpxtool

all: $(ZLIBTARGET) $(BIN)
	@echo Done

$(BIN): $(OBJ)
	$(CXX) -lz -o $(BIN) $^

clean:
	rm -f *.o
	rm $(BIN)
