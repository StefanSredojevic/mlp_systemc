SRC_CPP=$(wildcard *.cpp)
SRC_HPP=$(wildcard *.hpp)
MAIN_TARGET=*main.cpp
TARGET=$(patsubst %.cpp,%,$(wildcard *main.cpp))
all: $(TARGET)
$(TARGET): $(SRC_CPP) $(SRC_HPP)
	g++ -std=c++11 -DSC_INCLUDE_FX -w -g -I /include/ -L/lib-linux64 \
	-l:libsystemc.a -lpthread -o $@ *.cpp
.PHONY: c
c:
	rm $(TARGET)
