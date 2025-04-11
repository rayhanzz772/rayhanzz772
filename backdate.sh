#!/bin/bash

for day in {11..29}; do
  for i in {1..5}; do
    echo "update day $day - $i" >> log.txt
    
    export GIT_AUTHOR_DATE="2025-04-${day}T0$((8+i)):00:00"
    export GIT_COMMITTER_DATE="2025-04-${day}T0$((8+i)):00:00"
    
    git add . && git commit -m "day $day - update $i"
  done
done

unset GIT_AUTHOR_DATE
unset GIT_COMMITTER_DATE

git push origin main