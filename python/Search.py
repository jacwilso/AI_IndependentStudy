import Queue, copy
from itertools import tee, izip
from collections import defaultdict
# Pairing tool  #
def pairwise(iterable):
  a,b = tee(iterable)
  next(b,None)
  return izip(a,b)

# Cartesian X-Y Point  #
class Point:
  def __init__(self, x=0, y=0):
    self.x = x
    self.y = y
  def __str__(self):
    return "({0}, {1})".format(self.x,self.y)
  # distance formula
  def distance(self, p):
    return pow(pow(p.x-self.x,2)+pow(p.y-self.y,2),0.5)

# Search Algorithms  #
class Search:
  # Requires an adjacency matrix file and a file containing the locations of the points
  def __init__(self, mtxFile, ptFile):
    global adjList # store the matrix in an adjacency list
    global points # store the point locations
    self.adjMtxFile = open(mtxFile,'r')
    self.pointFile = open(ptFile,'r')
    adjList = defaultdict(list)
    points = []
    fromA = 0

    # Read in the adjacency matrix file, store in a dictionary of lists -> adjList[parent] = [child1, child2, ....]
    self.adjMtxFile.readline()
    for line in self.adjMtxFile:
      line = line[1:]
      toB = 0
      for i in line.split(): 
        if i.isdigit():
          if i == '1':
            adjList[fromA].append(toB)
          toB += 1
      fromA+=1

    # Read in the point file, store in a list of points
    for line in self.pointFile:
      line = line[1:]
      tmp=[float(i) for i in line.split(",")]
      points.append(Point(tmp[0],tmp[1]))

  # Breadth-First Search #
  def breadth(self):
    # Data structure setup
    frontier = Queue.Queue() # paths with the last node being an unvisited node that can be visited from the visited nodes
    explored = set() # set of nodes visited -> "explored"
    curr = [0] # current path
    frontier.put(curr) 
    while not frontier.empty(): # if the frontier empty their is no path to the goal node
      curr = frontier.get() # get the top path from the frontier
      #print "PATH", curr
      explored.add(curr[-1]) # add the last point in current path to explored
      # THIS LINE ESTABLISHES WHICH NODE IS THE GOAL -->
      if curr[-1] == len(points)-1: # if the last point in the path is the goal, the algorithm should return the path
        return curr 
      #print "ADJ", adjList[curr[-1]]
      # For each adjacency of the last node in the path, so long as the next node isn't visited:
      for i in adjList[curr[-1]]:
        if i not in explored:
          curr.append( i ) # add the node to the path
          frontier.put( copy.deepcopy(curr) ) # add a deep copy of the path to the frontier
          explored.add( i ) # add the node to explored
          curr.remove( i ) # remove the node from the path, and check the remaining adjacencies
      #print "FRONTIER ", list(frontier.queue)
      #print "EXPLORED ", explored
    # If frontier is empty, their is no path from the start to the goal, return an empty path
    curr = {}
    return curr

  # Depth-First Search #
  def depth(self):
    # Reference BFS for line by line comments
    # Data structure setup
    frontier = []  # paths are now stored in a list which will act as a stack
    explored = set()
    curr = [0]
    frontier.append(curr)
    while frontier:
      curr = frontier.pop() # use the frontier as a stack
      #print "PATH", curr
      explored.add(curr[-1])
      if curr[-1] == len(points)-1: 
        return curr
      #print "ADJ", adjList[curr[-1]]
      for i in adjList[curr[-1]]:
        if i not in explored:
          curr.append( i )
          frontier.append( copy.deepcopy(curr) )
          explored.add( i )
          curr.remove( i )
      #print "FRONTIER ", frontier 
      #print "EXPLORED ", explored
    curr = {}
    return curr

  # Uniform Search #
  def uniform(self):
    # Reference BFS for line by line comments
    # Data structure setup
    frontier = [] # paths will be stored in a list (not acting like a stack as DFS)
    explored = set()
    curr = [0]
    frontier.append(curr)
    while frontier:
      # Calculate the minimum distance path
      minDist = []
      for front in frontier: # iterate through each possible path, storing the distance from start to last node in the path
        d = 0
        if len(front) > 1:
          for v, w in pairwise(front):
            d += dist(points[v],points[w])
        minDist.append( copy.deepcopy(d) )
      curr = frontier.pop(minDist.index(min(minDist))) # current path is the path with the minimum distance
      #print "PATH ", curr
      explored.add(curr[-1])
      if curr[-1] == len(points)-1: 
        return curr
      #print "ADJ", adjList[curr[-1]]
      for i in adjList[curr[-1]]:
        if i not in explored:
          curr.append( i )
          frontier.append( copy.deepcopy(curr) )
          explored.add( i )
          curr.remove( i )
      #print "FRONTIER ", frontier 
      #print "EXPLORED ", explored
    curr = {}
    return curr;
