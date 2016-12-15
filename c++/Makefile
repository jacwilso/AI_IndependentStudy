CC=g++
#LINK=-lcreate -lboost_system -lboost_thread # for iCreate
SOURCE=main.cpp Search.cpp
OBJECTS=main.o Search.o
TARGET=find_route

all: $(TARGET)

basic: all 
	./$(TARGET) ../paths/basic_points.txt ../paths/basic_adjMtx.txt "BFS" "A" "E"
	./$(TARGET) ../paths/basic_points.txt ../paths/basic_adjMtx.txt "DFS" "A" "E"
	./$(TARGET) ../paths/basic_points.txt ../paths/basic_adjMtx.txt "UNIFORM" "A" "E"

adv: all 
	./$(TARGET) ../paths/adv_points.txt ../paths/adv_adjMtx.txt "BFS" "A" "H"
	./$(TARGET) ../paths/adv_points.txt ../paths/adv_adjMtx.txt "DFS" "A" "H"
	./$(TARGET) ../paths/adv_points.txt ../paths/adv_adjMtx.txt "UNIFORM" "A" "H"

clean:
	rm -f $(TARGET) $(OBJECTS)

$(TARGET): $(OBJECTS) 
	$(CC) $(SOURCE) -o $(TARGET) 

