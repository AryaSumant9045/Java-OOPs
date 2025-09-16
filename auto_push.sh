#!/bin/bash

while true
do
  git add .
  git commit -m "auto update $(date '+%Y-%m-%d %H:%M:%S')"
  git push origin main
  sleep 60   # 1 minute ke gap par push karega
done
