#ifndef SEARCH_H
#define SEARCH_H

#include <math.h>
#include <iostream>
#include <fstream>
#include <vector>
#include <queue>
#include <map>

using namespace std;

struct Point{
  float x,y;
};
float dist(Point p1, Point p2)  
{return pow(pow(p1.x-p2.x,2)+pow(p1.y-p2.y,2),.5);}

class Search{
  private:
    map<int,vector<int> > adjMtx;
    vector<Point> points;
  public:
    void loadFile(char* pointFile, char* adjMatrix);

    vector<int> uniform(vector<vector<int> > &frontier);
    vector<int> breadth(vector<vector<int> > &frontier);
    vector<int> depth(vector<vector<int> > &frontier);
    
    searchAlgo(int start, char);
};

#endif
