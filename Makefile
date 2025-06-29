# Compiler and flags
CXX = g++
CXXFLAGS = -std=c++11 -Wall -Wextra -O2 -g

# Source files
SRC_SERVER = server.cpp
SRC_CLIENT = client.cpp

# Output executables
SERVER = server
CLIENT = client

# Default target
all: $(SERVER) $(CLIENT)

# Rule to create the server executable
$(SERVER): $(SRC_SERVER)
	$(CXX) $(CXXFLAGS) $(SRC_SERVER) -o $(SERVER)

# Rule to create the client executable
$(CLIENT): $(SRC_CLIENT)
	$(CXX) $(CXXFLAGS) $(SRC_CLIENT) -o $(CLIENT)

# Clean up object files and executables
clean:
	rm -f $(SERVER) $(CLIENT)
