#include <iostream>
#include <string>

#include "Search.h"
using namespace std;

int main(int argc, char* argv[]){
  /*** READ DATA ***/
  if( argc != 5 ){
    cerr<< "[USAGE]: g++ main.cpp search.cpp mtxFile pointFile start end searchType\n
            searchTypes:\n
            Breadth-First Seach: breadth, breadth-first, BFS\n
            Depth-First Search: depth, depth-first, DFS\n
            Uniform Search: uniform, U" <<endl;
    return -1;
  }
  Search search( argv[4], argv[5] );
  search.loadFile( argv[1], argv[2] );
  
  /*** SEARCH ***/
  vector<int> path;
  string searchType = argv[3];
  if( searchType == "breadth" || 
      searchType == "breadth-first" || 
      searchType == "BFS")
    path=search.breadth();
  else if(  searchType == "depth" || 
            searchType == "depth-first" || 
            searchType == "DFS")
    path=search.depth();
  else if(  searchType == "uniform" || 
            searchType == "U")
    path = search.uniform()

  for(int i=0; i<path.size(); i++)
    cout<<path[i]<<" ";
  cout<<endl;

  return 0;
}
