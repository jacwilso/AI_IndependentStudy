#include <iostream>
#include <fstream>
#include <vector>
#include <map>
#include <math.h>

#include "create/create.h"

using namespace std;

struct Point{
  float x,y;
};
float dist(Point p1, Point p2)  
{return pow(pow(p1.x-p2.x,2)+pow(p1.y-p2.y,2),.5);}

vector<int> uniform(vector<vector<int> > &frontier);
vector<int> breadth(vector<vector<int> > &frontier);
vector<int> depth(vector<vector<int> > &frontier);
vector<int> search(int start,char c);

void move(Point current, Point next);

map<int,vector<int> > adjMtx;
vector<Point> points;
create::Create* robot;
bool drive = false;

int main(int argc, char* argv[]){
  /*** READ DATA ***/
  if(argc!=3){
    cout<<"USAGE: ./search <points> <adj Mtx>"<<endl;
    return 1;
  }
  ifstream location(argv[1]);
  ifstream adjList(argv[2]);

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
  
  /*for(int i=0; i<points.size(); i++){
    for(int j=0; j<adjMtx[i].size(); j++)
      cout<<adjMtx[i][j];
    cout<<endl;
  }*/
  /*** SEARCH ***/
  cout<<"What type of search?"<<endl<<"(a) Uniform-cost"<<endl<<"(b) Breadth-frist"<<endl<<"(c) Depth-first"<<endl;
  do{
    cout<<"Option: ";
    cin>>c;
    c=tolower(c);
  }while(c!='a' && c!='b' && c!='c');
  vector<int> path;
  path=search(0,c);
  cout<<"PATH:"<<endl;
  for(int i=0; i<path.size(); i++)
    cout<<path[i]<<" ";
  cout<<endl;

  /*** ROBOT ***/
  std::string port = "/dev/ttyUSB0";
  int baud = 115200;
  create::RobotModel model = create::RobotModel::CREATE_2;

  if (argc > 1 && std::string(argv[1]) == "create1") {
    model = create::RobotModel::CREATE_1;
    baud = 57600;
    std::cout << "1st generation Create selected" << std::endl;
  }

  robot = new create::Create(model);

  // Attempt to connect to Create
  if (robot->connect(port, baud))
    std::cout << "Successfully connected to Create" << std::endl;
  else {
    std::cout << "Failed to connect to Create on port " << port.c_str() << std::endl;
    return 1;
  }

  // Note: Some functionality does not work as expected in Safe mode
  robot->setMode(create::MODE_FULL);

  std::cout << "battery level: " <<
    robot->getBatteryCharge() / (float) robot->getBatteryCapacity() * 100.0 << "%" << std::endl;


  /***
  // Quit when center "Clean" button pressed
  while (!robot->isCleanButtonPressed()) {
    if (robot->isHourButtonPressed()) {
      std::cout << "hour button press" << std::endl;
      drive = !drive;
    }
    // Check for wheeldrop or cliffs
    if (robot->isWheeldrop() || robot->isCliff()) {
      drive = false;
      robot->setPowerLED(255);
    }
    for(int i=0; i<path.size()-1; i++){
      move(path[i],path[i+1]);
    }
  }
  ***/

  std::cout << "Stopping Create." << std::endl;

  // Turn off lights
  robot->setPowerLED(0, 0);
  robot->enableDebrisLED(false);
  robot->enableCheckRobotLED(false);
  robot->setDigitsASCII(' ', ' ', ' ', ' ');

  // Make sure to disconnect to clean up
  robot->disconnect();
  delete robot;

  return 0;
}

vector<int> breadth(vector<vector<int> > &frontier){
  float min=dist(points[frontier[0][frontier[0].size()-1]],points[frontier[0][frontier[0].size()-2]]);
  float d;
  int index=0;
  for(int i=0; i<frontier.size(); i++){
    if(frontier[i].size()-1>0)
      d=dist(points[frontier[i][frontier[i].size()-1]],points[frontier[i][frontier[i].size()-2]]);
    else continue;
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

vector<int> uniform(vector<vector<int> > &frontier){
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

vector<int> depth(vector<vector<int> > &frontier){
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

vector<int> search(int start,char c){
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
/*    cout<<"FRONTIER"<<endl;
    for(int i=0; i<frontier.size(); i++){
      for(int j=0; j<frontier[i].size(); j++)
        cout<<frontier[i][j]<<", ";
      cout<<endl;
    }
*/  }
  return frontier[0]; 
}

void move(Point current, Point next){
    create::Pose pose = robot->getPose();
    create::Vel vel = robot->getVel();

    Point v;  v.x=next.x-current.x;  v.y=next.y-current.y;
    double distance=dist(current,next);
    float angle=pose.yaw;
    
    // Rotate to 0 angle
    robot->drive(0,-1.0);
    while(fabs(create::util::PI-pose.yaw)>0.1){
      pose = robot->getPose();
      drive=true;
    }
    drive=false;
    robot->drive(0, 0);
    robot->setDigitsASCII('S','T','O','P');
}
