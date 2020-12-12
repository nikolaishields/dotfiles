#!/bin/bash
B=$(git branch --show-current)
c
git reset "$(git log master.."$B" --oneline | awk '{print $1}' | tail -1)"
git add -A
git stash
# this kills everything
git push -f
# this brings it all back
git stash pop
git add -A
git commit -m "Final Commit"
git push -o merge_request.create -o merge_request.merge_when_pipeline_succeeds -o merge_request.target=master 
git checkout master

