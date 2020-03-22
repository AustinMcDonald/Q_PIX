INCDIR = $(QpixDir)/include
LIBDIR = $(QpixDir)/Library

# Compiler flags
CFLAGS = -std=c++11 -Wall -Wextra -Wno-long-long \
	-O3 -fno-common -c \
	-I$(INCDIR)

LDFLAGS = -L$(LIBDIR) -lQpix

test: devloop.cc 
	$(CXX) $(CFLAGS) devloop.cc
	$(CXX)  -o devloop devloop.o $(LDFLAGS)
	rm devloop.o

