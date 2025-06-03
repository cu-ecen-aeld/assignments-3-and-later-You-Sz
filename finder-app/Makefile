CROSS_COMPILE :=

# Build target
TARGET := writer

# Source and object
SRC := writer.c
OBJ := $(SRC:.c=.o)

# Compiler
# If "CROSS_COMPILER" is not specified, use gcc instead
CC := $(CROSS_COMPILE)gcc
CFLAGS := -Wall -g

# Indicate that "all" and "clean" are not file name
.PHONY: all clean

# Default target
all: $(TARGET)

# Link the object file
$(TARGET): $(OBJ)
	$(CC) $(CFLAGS) -o $@ $^

# Compile .c to .o
writer.o: writer.c
	$(CC) $(CFLAGS) -c $< -o $@

# Clean up
clean:
	rm -f $(TARGET) *.o


