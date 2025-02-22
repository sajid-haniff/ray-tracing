# Compiler and flags
CXX = g++
CXXFLAGS = -std=c++11 -Wall -Wextra -Wnon-virtual-dtor -Wreorder -Wmaybe-uninitialized -Wunused-variable

# Source files
SRCS = main.cc vec3.h color.h ray.h

# Object files
OBJS = $(SRCS:.cc=.o)

# Executable name
TARGET = raytracer

# Default rule
all: $(TARGET)

# Linking the executable
$(TARGET): $(OBJS)
	$(CXX) $(CXXFLAGS) -o $(TARGET) $(OBJS)

# Compiling source files
%.o: %.cc
	$(CXX) $(CXXFLAGS) -c $< -o $@

# Clean up build files
clean:
	rm -f $(OBJS) $(TARGET)

