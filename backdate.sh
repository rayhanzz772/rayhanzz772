#!/bin/bash

# Pastikan sudah di dalam folder repo git
# git init (kalau belum)

for i in {1..5}; do
  echo "update $i" >> log.txt
  
  GIT_AUTHOR_DATE="2025-05-10T0$((8+i)):00:00" \
  GIT_COMMITTER_DATE="2025-05-10T0$((8+i)):00:00" \
  git add . && git commit -m "update $i"
done

git push origin main