#!/bin/bash

for i in {1..5}; do
  echo "update $i" >> log.txt
  
  export GIT_AUTHOR_DATE="2025-04-10T0$((8+i)):00:00"
  export GIT_COMMITTER_DATE="2025-04-10T0$((8+i)):00:00"
  
  git add . && git commit -m "update $i"
done

unset GIT_AUTHOR_DATE
unset GIT_COMMITTER_DATE

git push origin main