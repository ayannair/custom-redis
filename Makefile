CXX = g++
CXXFLAGS = -std=c++11 -Wall -Wextra -O2 -g

SRC_SERVER = server.cpp
SRC_CLIENT = client.cpp

SERVER = server
CLIENT = client

all: $(SERVER) $(CLIENT)

$(SERVER): $(SRC_SERVER)
	$(CXX) $(CXXFLAGS) $(SRC_SERVER) -o $(SERVER)

$(CLIENT): $(SRC_CLIENT)
	$(CXX) $(CXXFLAGS) $(SRC_CLIENT) -o $(CLIENT)

clean:
	rm -f $(SERVER) $(CLIENT)
