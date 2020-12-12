#!/bin/bash
B=$1
DIR=$(pwd)
git add -A
git stash
git pull
git checkout -b "$B"
git push --set-upstream origin "$B"
git commit --allow-empty -m "Initial Commit"
git push 
git stash pop
cd "$DIR" || exit
