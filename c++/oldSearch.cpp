#include "search.h"

void Search::loadFile(char* pointFile, char* adjMatrix){
  ifstream location(pointFile);
  ifstream adjList(adjMatrix);

  char c;
  while(!location.eof()){
    float x,y;
    location>>c>>x>>c>>y;
    Point p; p.x=x; p.y=y;
    points.push_back(p);
  }
  points.pop_back();

  for(int i=0; i<points.size(); i++)
    adjList>>c;
  for(int i=0; i<points.size(); i++){
    adjList>>c;
    for(int j=0; j<points.size(); j++){
      int k;
      adjList>>k;
      if(k==1)
        adjMtx[i].push_back(j);
    }
  }
}

vector<int> Search::uniform(vector<vector<int> > &frontier){
  float min=0;
    for(int j=0; j<frontier[0].size()-1; j++)
      min+=dist(points[frontier[0][j]],points[frontier[0][j+1]]);
  float d;
  int index=0;
  for(int i=0; i<frontier.size(); i++){
    d=0;
    for(int j=0; j<frontier[i].size()-1; j++)
      d+=dist(points[frontier[i][j]],points[frontier[i][j+1]]);
    if(d<min){
      min=d;
      index=i;
    }
  }
  vector<int> tmp=frontier[index];
  frontier.erase(frontier.begin()+index);
//  cout<<"DIST: "<<min<<endl;
  return tmp;
}

vector<int> Search::breadth(vector<vector<int> > &frontier){
  vector<int> tmp=frontier[0];
  frontier.erase(frontier.begin());
//  cout<<"DIST: "<<min<<endl;
  return tmp;
}

vector<int> Search::depth(vector<vector<int> > &frontier){
  float max=dist(points[frontier[0][frontier[0].size()-1]],points[frontier[0][frontier[0].size()-2]]);
  float d;
  int index=0;
  for(int i=0; i<frontier.size(); i++){
    if(frontier[i].size()-1>0)
      d=dist(points[frontier[i][frontier[i].size()-1]],points[frontier[i][frontier[i].size()-2]]);
    else continue;
    if(d>max){
      max=d;
      index=i;
    }
  }
  vector<int> tmp=frontier[index];
  frontier.erase(frontier.begin()+index);
//  cout<<"DIST: "<<max<<endl;
  return tmp;
}

vector<int> Search::searchAlgo(int start,char c){
  vector<vector<int> > frontier; 
  vector<int> explored;
  vector<int> tmp; tmp.push_back(start); frontier.push_back(tmp);
  vector<int> path;
  int s;
  while(!frontier.empty()){
    switch(c){
    case 'a':
      path=uniform(frontier); 
      break;
    case 'b':
      path=breadth(frontier);
      break;
    case 'c':
      path=depth(frontier);
      break;
    }
    cout<<"PATH:"<<endl;
    for(int j=0; j<path.size(); j++)
      cout<<path[j]<<", ";
    cout<<endl;
    s=path[path.size()-1];
/*    cout<<endl<< "S: ";
    cout<<s<<endl;
*/    explored.push_back(s);
    if(s==points.size()-1) // MODIFY
      return path;
    for(int i=0; i<adjMtx[s].size(); i++){
      path.push_back(adjMtx[s][i]);
/*      cout<<"PATH:"<<endl;
      for(int j=0; j<path.size(); j++)
        cout<<path[j]<<", ";
      cout<<endl;
*/      bool add=true;
      
      for(int j=0; j<frontier.size(); j++)
        for(int k=0; k<frontier[j].size(); k++)
          for(int z=0; z<explored.size(); z++){
            if(adjMtx[s][i]==frontier[j][k] || adjMtx[s][i]==explored[z])
              add=false;
          }
     
      if(add)
        frontier.push_back(path);
      path.pop_back();
    }
    cout<<"FRONTIER"<<endl;
    for(int i=0; i<frontier.size(); i++){
      for(int j=0; j<frontier[i].size(); j++)
        cout<<frontier[i][j]<<", ";
      cout<<endl;
    }
  }
  return frontier[0]; 
}

