#include <iostream>
#include <string>
#include <stdlib.h>

#include "Search.h"
using namespace std;

int main(int argc, char* argv[]){
  /*** READ DATA ***/
  if( argc != 6){
    cerr<< "[USAGE]: g++ main.cpp search.cpp points_file adjacencyMatrix_file search_type start_point end_point\n" <<
            "searchTypes: \n" <<
            "Breadth-First Seach: breadth, breadth-first, BFS \n" <<
            "Depth-First Search: depth, depth-first, DFS \n" <<
            "Uniform Search: uniform, U, UNIFORM" <<endl;
    return -1;
  }
  /*** LOAD FILE AND START & END POINTS ***/
  Search search( (int)tolower(argv[4][0])-'a', (int)tolower(argv[5][0])-'a'); // start and end points
  search.loadFile( argv[1], argv[2] ); // points file and adjacency file
  
  /*** TYPE OF SEARCH ***/
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
            searchType == "U" ||
            searchType == "UNIFORM" )
    path = search.uniform();

  /*** PRINT PATH ***/
  for(unsigned int i=0; i<path.size(); i++)
    cout<<path[i]<<" ";
  cout<<endl;

  return 0;
}
