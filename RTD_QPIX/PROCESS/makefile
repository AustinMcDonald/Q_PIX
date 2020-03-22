INCDIR = $(QpixDir)/include
LIBDIR = $(QpixDir)/Library

# Compiler flags
CFLAGS = -std=c++11 -Wall -Wextra -Wno-long-long \
	-O3 -fno-common -c \
	-I$(INCDIR)

LDFLAGS = -L$(LIBDIR) -lQpix

test: PROCESS.cc 
	$(CXX) $(CFLAGS) PROCESS.cc
	$(CXX)  -o PROCESS PROCESS.o $(LDFLAGS)
	rm PROCESS.o

