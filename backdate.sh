#!/bin/bash

for day in {3..22}; do
  total=$((RANDOM % 7 + 1))  # random 1-7
  
  for i in $(seq 1 $total); do
    echo "update day $day - $i" >> log.txt
    
    export GIT_AUTHOR_DATE="2025-05-${day}T0$((8+i)):00:00"
    export GIT_COMMITTER_DATE="2025-05-${day}T0$((8+i)):00:00"
    
    git add . && git commit -m "day $day - update $i"
  done
  
  echo "Day $day: $total commits"
done

unset GIT_AUTHOR_DATE
unset GIT_COMMITTER_DATE

git push origin main