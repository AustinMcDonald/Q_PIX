INCDIR = $(QpixDir)/include
LIBDIR = $(QpixDir)/Library

# Compiler flags
CFLAGS = -std=c++11 -Wall -Wextra -Wno-long-long \
	-O3 -fno-common -c \
	-I$(INCDIR)

LDFLAGS = -L$(LIBDIR) -lQpix

test: dev.cc 
	$(CXX) $(CFLAGS) dev.cc
	$(CXX)  -o dev dev.o $(LDFLAGS)
	rm dev.o

