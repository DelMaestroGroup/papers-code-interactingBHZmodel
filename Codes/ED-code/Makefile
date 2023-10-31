CXX:=g++
CXX_FLAGS:=-std=c++11 -ggdb

BIN:=bin
SRC:=src
INCLUDE:=include

LIBRARIES:=
EXECUTABLE:=main

EIGEN_INCLUDE:=/usr/include/eigen3/

all:$(BIN)/$(EXECUTABLE)

run: clean all
	clear
	./$(BIN)/$(EXECUTABLE)

$(BIN)/$(EXECUTABLE): $(SRC)/*.cpp
	$(CXX) $(CXX_FLAGS) -I$(EIGEN_INCLUDE) -I$(INCLUDE) $^ -o $@ $(LIBRARIES)

clean:
		-rm $(BIN)/*