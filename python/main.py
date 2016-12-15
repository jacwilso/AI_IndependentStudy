import sys, getopt
from Search import Search

# Usage for user error #
def usage(): 
  print "[USAGE]: python main.py mtxFile pointFile start end searchType\n
          searchTypes:\n
          Breadth-First Seach: breadth, breadth-first, BFS\n
          Depth-First Search: depth, depth-first, DFS\n
          Uniform Search: uniform, U
          "

if __name__ == "__main__":
  if sys.argc != 5:
    usage()
  search = Search( sys.argv(1), sys.argv(2), sys.argv(3), sys.argv(4) ) # pass the arguments, adjacency matrix and point files
  # Type of search to perform
  searchType = sys.argv(5)
  if searchType == "breadth" || searchType == "breadth-first" || searchType == "BFS":
    print search.breadth()
  elif searchType == "depth" || searchType == "depth-first" || searchType == "DFS":
    print search.depth()
  elif searchType == "uniform" || searchType == "U":
    print search.uniform()
