#!/bin/bash

M=$1
if [ -z "$M" ]; then M="autosave or troubleshooting"; fi;

DIR=$(pwd)
ROOT_DIR=$(git rev-parse --show-toplevel)

cd "$ROOT_DIR" || exit
git add -A
git stash
git pull
git stash pop
git add -A
git commit -m "$M" 
git push
cd "$DIR" || exit
