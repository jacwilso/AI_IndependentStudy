#ifndef SEARCH_H
#define SEARCH_H

#include <math.h>
#include <iostream>
#include <fstream>
#include <vector>
#include <queue>
#include <stack>
#include <set>
#include <map>

using namespace std;

struct Point{
  float x,y;
};

class Search{
  private:
    int start, end;

    map<int,vector<int> > adjList;
    float dist(Point p1, Point p2)  
    {return pow(pow(p1.x-p2.x,2)+pow(p1.y-p2.y,2),.5);}

    vector<int> uniform(vector<vector<int> > &frontier);
    vector<int> breadth(vector<vector<int> > &frontier);
    vector<int> depth(vector<vector<int> > &frontier);
    
  public:
    vector<Point> points;

    Search(int start, int end);
    void loadFile(char* pointFile, char* adjMatrix);

    vector<int> breadth();
    vector<int> depth();
    vector<int> uniform();

    vector<int> searchAlgo(int start, char);
};

#endif
