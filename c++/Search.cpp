#include "Search.h"

Search::Search(int start, int end){
  if(start < 0) start = 0;
  else this->start = start;
  if(end < 0) end = 0;
  else this->end = end;
}

void Search::loadFile(char* pointFile, char* adjMatrix){
  ifstream location(pointFile);
  ifstream adjMtx(adjMatrix);

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

  for(int i=0; i<points.size(); i++)
    adjMtx>>c;
  for(int i=0; i<points.size(); i++){
    adjMtx>>c;
    for(int j=0; j<points.size(); j++){
      int k;
      adjMtx>>k;
      if(k==1)
        adjList[i].push_back(j);
    }
  }
}


vector<int> Search::uniform(){
  vector<vector<int> > frontier;
  set<int> explored;
  vector<int> curr; curr.push_back(start);
  frontier.push_back(curr);
  while(!frontier.empty()){
    float min=0; int index=0;
    for(int j=0; j<frontier[0].size()-1; j++)
      min += dist(points[frontier[0][j]],points[frontier[0][j+1]]);
    for(int i=0; i<frontier.size(); i++){
      float d=0;
      for(int j=0; j<frontier[i].size()-1; j++){
        d+=dist(points[frontier[i][j]],points[frontier[i][j+1]]);
        if(d<min)index=i;
      }
    }
    curr = frontier[index];
/*    cout<<"PATH ";
    for(int i=0; i<curr.size(); i++) cout<<curr[i]<<" ";
    cout<<endl;*/
    explored.insert(curr.back());
    if(curr.back() == end) return curr;
    frontier.erase(frontier.begin()+index);
    vector<int> adj=adjList[curr[curr.size()-1]];
    //cout<<"ADJACENCIES ";
    for(int i=0; i<adj.size(); i++){
      if(explored.find(adj[i])==explored.end()){
        //cout<<adj[i]<<" ";
        curr.push_back(adj[i]);
        frontier.push_back(curr);
        explored.insert(adj[i]);
        curr.erase(curr.end()-1);
      }
    }
    //cout<<endl;
/*  set<int>::iterator it;
    cout<<"EXPLORED: ";
    for(it=explored.begin(); it!=explored.end(); ++it)
      cout<<*it<<" ";
    cout<<endl;*/
  }
  curr.clear();
  return curr;
}


vector<int> Search::breadth(){
  queue<vector<int> > frontier;
  set<int> explored;
  vector<int> curr; curr.push_back(start);
  frontier.push(curr);
  while(!frontier.empty()){
      curr=frontier.front();
/*      cout<<"PATH ";
      for(int i=0; i<curr.size(); i++) cout<<curr[i]<<" ";
      cout<<endl;*/
      explored.insert(curr.back());
      if(curr.back() == end) return curr;
      frontier.pop();
      vector<int> adj=adjList[curr[curr.size()-1]];

//      cout<<"ADJACENCIES ";
      for(int i=0; i<adj.size(); i++){
        if(explored.find(adj[i])==explored.end()){
//          cout<<adj[i]<<" ";
          curr.push_back(adj[i]);
          frontier.push(curr);
          explored.insert(adj[i]);
          curr.erase(curr.end()-1);
        }
      }
//      cout<<endl;
/*    set<int>::iterator it;
    cout<<"EXPLORED: ";
    for(it=explored.begin(); it!=explored.end(); ++it)
      cout<<*it<<" ";
    cout<<endl;*/
  }
  curr.clear();
  return curr;
}


vector<int> Search::depth(){
  stack<vector<int> > frontier;
  set<int> explored;
  vector<int> curr; curr.push_back(start);
  frontier.push(curr);
  while(!frontier.empty()){
      curr=frontier.top();
/*      cout<<"PATH ";
      for(int i=0; i<curr.size(); i++) cout<<curr[i]<<" ";
      cout<<endl;*/
      explored.insert(curr.back());
      if(curr.back() == end) return curr;
      frontier.pop();
      vector<int> adj=adjList[curr[curr.size()-1]];
//      cout<<"ADJACENCIES ";
      for(int i=adj.size()-1; i>=0; i--){
        if(explored.find(adj[i])==explored.end()){
//          cout<<adj[i]<<" ";
          curr.push_back(adj[i]);
          frontier.push(curr);
          explored.insert(adj[i]);
          curr.erase(curr.end()-1);
        }
      }
//      cout<<endl;
/*    set<int>::iterator it;
    cout<<"EXPLORED: ";
    for(it=explored.begin(); it!=explored.end(); ++it)
      cout<<*it<<" ";
    cout<<endl;*/
  }
  curr.clear();
  return curr;
}
