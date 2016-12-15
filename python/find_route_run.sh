#!/bin/bash

path="../paths/"
if [ $1 ]
  then
  prefix="adv"
  end="H"
else
  prefix="basic"
  end="E"
fi
search="BFS DFS UNIFORM"

./Build.sh
for type in $search; do
  echo ./find_route $path$prefix"_points.txt" $path$prefix"_adjMtx.txt" $type "A" $end
  ./find_route $path$prefix"_points.txt" $path$prefix"_adjMtx.txt" $type "A" $end
done;
