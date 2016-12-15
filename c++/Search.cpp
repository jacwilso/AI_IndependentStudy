#include "Search.h"

Search::Search(int start, int end){
  // set start and end points
  if(start < 0) start = 0;
  else this->start = start;
  if(end < 0) end = 0;
  else this->end = end;
}

void Search::loadFile(char* pointFile, char* adjMatrix){
  // load points and adjacencies
  ifstream location(pointFile);
  ifstream adjMtx(adjMatrix);

  // store the points
  char c;
  while(!location.eof()){
    float x,y;
    location>>c>>x>>c>>y;
    Point p; p.x=x; p.y=y;
    points.push_back(p);
  }
  points.pop_back();
  if(start > points.size()-1) start = points.size()-1;
  if(end > points.size()-1 ) end = points.size()-1;
  if(end == start){
    start = 0;
    end = points.size()-1;
  }

  // store the adjacency matrix as an adjacency list
  for(unsigned int i=0; i<points.size(); i++)
    adjMtx>>c;
  for(unsigned int i=0; i<points.size(); i++){
    adjMtx>>c;
    for(unsigned int j=0; j<points.size(); j++){
      int k;
      adjMtx>>k;
      if(k==1)
        adjList[i].push_back(j);
    }
  }
}

/*** Breadth-First Search***/
vector<int> Search::breadth(){
  // Data structure setup
  queue<vector<int> > frontier; // paths with the last node being an unvisted node that can be visited from the visited node
  set<int> explored; // set of nodes visited -> "explored" 
  vector<int> curr; curr.push_back(start); // current path
  frontier.push(curr);
  while(!frontier.empty()){ // if the frontier empty their is no path to the goal node
    curr=frontier.front(); // get the top path from the frontier
    /* // DEBUG 1
    cout<<"PATH ";
    for(unsigned int i=0; i<curr.size(); i++) cout<<curr[i]<<" ";
    cout<<endl;
    // DEBUG 1 */
    explored.insert(curr.back()); // add the last point in current path to explored
    if(curr.back() == end) return curr; // if the last point in the path is the goal, the algorithm should return the path
    frontier.pop(); // remove the path being analyzed 
    vector<int> adj=adjList[curr.back()]; // get the current adjacencies to the last node
    /* // DEBUG 2a
    cout<<"ADJACENCIES ";
    // DEBUG 2a */
    // For each adjacency of the last node in the path, so long as the next node isn't visited:
    for(unsigned int i=0; i<adj.size(); i++){
      if(explored.find(adj[i])==explored.end()){
        /* // DEBUG 2b
        cout<<adj[i]<<" ";
        // DEBUG 2b */
        curr.push_back(adj[i]); // add the node to the path
        frontier.push(curr); // add a deep copy of the path to the frontier
        explored.insert(adj[i]); // add the node to explored
        curr.erase(curr.end()-1); // remove the node from the path, and check the remaining adjacencies
      }
    }
    /* // DEBUG 2c
    cout<<endl;
    // DEBUG 2c */
    /* // DEBUG 3
    set<int>::iterator it;
    cout<<"EXPLORED: ";
    for(it=explored.begin(); it!=explored.end(); ++it)
    cout<<*it<<" ";
    cout<<endl;
    // DEBUG 3 */
  }
  // If frontier is empty, their is no path from the self.start to the goal, return an empty path
  curr.clear();
  return curr;
}


/*** Depth-First Search***/
vector<int> Search::depth(){
  // Reference BFS for line by line comments
  // Data structure setup
  stack<vector<int> > frontier; // paths are now stored in a stack
  set<int> explored;
  vector<int> curr; curr.push_back(start);
  frontier.push(curr);
  while(!frontier.empty()){
    curr=frontier.top();
// DEBUG 1
    explored.insert(curr.back());
    if(curr.back() == end) return curr;
    frontier.pop();
    vector<int> adj=adjList[curr.back()];
// DEBUG 2a
    for(int i=adj.size()-1; i>=0; i--){
      if(explored.find(adj[i])==explored.end()){
// DEBUG 2b
        curr.push_back(adj[i]);
        frontier.push(curr);
        explored.insert(adj[i]);
        curr.erase(curr.end()-1);
      }
    }
// DEBUG 2c
// DEBUG 3
  }
  curr.clear();
  return curr;
}

/*** Uniform Search***/
vector<int> Search::uniform(){
  // Reference BFS for line by line comments
  // Data structure setup
  vector<vector<int> > frontier; // paths will be stored in a list (not acting like a stack as DFS)
  set<int> explored;
  vector<int> curr; curr.push_back(start);
  frontier.push_back(curr);
  while(!frontier.empty()){
    // Calculate the minimum distance path
    float min=0; int index=0;
    // Basis minimum
    for(unsigned int j=0; j<frontier[0].size()-1; j++)
      min += dist(points[frontier[0][j]],points[frontier[0][j+1]]);
    // Absolute minimum
    for(unsigned int i=0; i<frontier.size(); i++){
      float d=0;
      for(unsigned int j=0; j<frontier[i].size()-1; j++){
        d+=dist(points[frontier[i][j]],points[frontier[i][j+1]]);
        if(d<min)index=i;
      }
    }
    curr = frontier[index]; // current path is the path with the minimum distance
// DEBUG 1
    explored.insert(curr.back());
    if(curr.back() == end) return curr;
    frontier.erase(frontier.begin()+index);
    vector<int> adj=adjList[curr.back()];
// DEBUG 2a
    for(unsigned int i=0; i<adj.size(); i++){
      if(explored.find(adj[i])==explored.end()){
// DEBUG 2b
        curr.push_back(adj[i]);
        frontier.push_back(curr);
        explored.insert(adj[i]);
        curr.erase(curr.end()-1);
      }
    }
// DEBUG 2c
// DEBUG 3
  }
  curr.clear();
  return curr;
}
